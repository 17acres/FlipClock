/*
 * digit.c
 *
 *  Created on: May 11, 2021
 *      Author: Dan
 */

#include "digit.h"
#include "dtc.h"
#include "iodriver.h"
#include "utils/ledDefs.h"
#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/drivers/GPIO.h>
#include <xdc/runtime/Error.h>

void timerISR(UArg arg0) {
    Event_post(((DigitStruct *) arg0)->eventHandle, Event_Id_01);
}

void calculateStateToApply(DigitStruct* digit, SegState requestedState, SegState lastState, SegState *actualRequestedState, SegState *applyState) {
    //Carry through state of extra in case of a non-extra request,
    //or non-extra in case of extra request.
    *actualRequestedState = unionSegPriority(requestedState, lastState);

    uint32_t currentTime = Clock_getTicks();
    if (currentTime > (digit->lastFullApplyTime + DIGIT_FULL_APPLY_INTERVAL)) {
        *applyState = *actualRequestedState;
        digit->lastFullApplyTime = currentTime;
        System_printf("Full Apply\n");
    } else {
        *applyState = subtractSeg(*actualRequestedState, lastState);
    }
}

void digitTask(UArg arg0, UArg arg1) {
    DigitStruct *digit = (DigitStruct *) arg0;

    SegState lastState = segValOff;

    bool pwmState;
    SegState toneSegmentState1, toneSegmentState2;

    while (1) {
        DigitMail requestMail;

        UInt eventID = Event_pend(digit->eventHandle, Event_Id_NONE, Event_Id_00|Event_Id_01, BIOS_WAIT_FOREVER);    //00 is mailbox, 01 is timer
        if (eventID & Event_Id_00) {
            Mailbox_pend(digit->mailboxHandle, &requestMail, BIOS_NO_WAIT);    //no wait since event
        }

        if (eventID & Event_Id_01) {    //doing tone
            if (pwmState) {
                setSegStateNonBlocking(digit->ioAddr, toneSegmentState1);
            } else {
                setSegStateNonBlocking(digit->ioAddr, toneSegmentState2);
            }
            pwmState = !pwmState;
        }
        else if (requestMail.mode == APPLY_MODE_NO_TONE){
            Timer_stop(digit->timerHandle);
            setSegStateNonBlocking(digit->ioAddr, segValOff);

        }
        else if (requestMail.mode == APPLY_MODE_TONE) {    //must have been mail event
            Timer_setPeriodMicroSecs(digit->timerHandle, (500000.0 / requestMail.toneFrequency));    //Period is half of frequency
            toneSegmentState1 = requestMail.requestedState;
            toneSegmentState2 = invertSegState(requestMail.requestedState);
            Timer_start(digit->timerHandle);
        }
        else {
            Timer_stop(digit->timerHandle);

            uint32_t applyTime;

            uint32_t numFrames = DIGIT_ANIMATION_TIME * LED_FPS / 1000;
            bool segCleared = false;
            SegState actualRequestedState, applyState;
            calculateStateToApply(digit, requestMail.requestedState, lastState, &actualRequestedState, &applyState);

            if (applyState.rawWord == segValShowExtra.rawWord || applyState.rawWord == segValHideExtra.rawWord) {
                applyTime = EXTRA_APPLY_TIME;
            } else {
                applyTime = DIGIT_APPLY_TIME;
            }

            setSegStateNonBlocking(digit->ioAddr, applyState);

            if (requestMail.mode == APPLY_MODE_NORMAL) {
                for (uint32_t i = 0; i < numFrames; i++) {
                    uint8_t fadePosition = i * 255 / numFrames;
                    //System_printf("i: %d, fadepos: %d\n",i,fadePosition);
                    SegmentMaskRequest request = (SegmentMaskRequest ) {
                                    rampSegState(lastState, actualRequestedState, fadePosition),
                                    digit->ledId };
                    requestMaskUpdate(&request, BIOS_NO_WAIT);
                    Task_sleep(1000 / LED_FPS);

                    //Longer animation time than apply time
                    if ((!segCleared) && ((i * 1000 / LED_FPS) > applyTime)) {
                        setSegStateNonBlocking(digit->ioAddr, segValOff);
                        segCleared = true;
                    }
                }

                SegmentMaskRequest request = (SegmentMaskRequest ) {
                                calculateFadedSegState(actualRequestedState),
                                digit->ledId };
                requestMaskUpdate(&request, BIOS_NO_WAIT);

                //Longer apply time than animation time
                if (!segCleared) {
                    Task_sleep(applyTime - DIGIT_ANIMATION_TIME);
                    setSegStateNonBlocking(digit->ioAddr, segValOff);
                }
                lastState = actualRequestedState; //Don't do this if going into sleep mode
            } else { //APPLY_MODE_SLEEP. Don't take off of brake mode. Brake mode is low 5V draw
            }

        }

        //TODO: Do segment load management to manage thermals and monitor overall usage
    }
}

void initDigit(DigitStruct* digit) {

    digit->eventHandle = Event_create(NULL, NULL);

    Mailbox_Params mailboxParams;
    Mailbox_Params_init(&mailboxParams);
    mailboxParams.readerEvent = digit->eventHandle;
    mailboxParams.readerEventId = Event_Id_00;

    digit->mailboxHandle = Mailbox_create(sizeof(DigitMail), 1, &mailboxParams, NULL);

    digit->lastFullApplyTime = digit->fullApplyOffset;

    Timer_Params timerParams;
    Timer_Params_init(&timerParams);
    timerParams.runMode = Timer_RunMode_CONTINUOUS;
    timerParams.startMode = Timer_StartMode_USER;
    timerParams.periodType = Timer_PeriodType_MICROSECS;
    timerParams.extFreq.lo = 80000000;
    timerParams.extFreq.hi = 0;
    timerParams.period = 1000000;
    timerParams.arg = (UArg)digit;

    digit->timerHandle = Timer_create(Timer_ANY, timerISR, &timerParams, NULL);

    Task_Params taskParams;
    Task_Params_init(&taskParams);
    taskParams.arg0 = (UArg)digit;
    taskParams.stackSize = TASKSTACKSIZE;
    taskParams.stack = &digit->taskStack;
    taskParams.priority = DIGIT_TASK_PRIORITY;

    Task_construct(&digit->taskStruct, (Task_FuncPtr) digitTask, &taskParams, NULL);
}

void requestNewDigitStateNormal(DigitStruct* digit, SegState state, uint32_t timeout) {
    DigitMail mail = {
            .mode = APPLY_MODE_NORMAL,
            .requestedState = state };
    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

void requestTone(DigitStruct* digit, SegState toneSegments, float toneFrequency, uint32_t timeout) {
    DigitMail mail = {
            .mode = APPLY_MODE_TONE,
            .requestedState = toneSegments,
            .toneFrequency = toneFrequency };
    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

void requestNoTone(DigitStruct *digit, uint32_t timeout){
    DigitMail mail = {
                .mode = APPLY_MODE_NO_TONE };
        Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

void requestNewExtraState(DigitStruct* digit, bool isShow, uint32_t timeout) {
    if (isShow)
        requestNewDigitStateNormal(digit, segValShowExtra, timeout);
    else
        requestNewDigitStateNormal(digit, segValHideExtra, timeout);
}

void requestSleep(DigitStruct* digit, uint32_t timeout) {
    GPIO_write(digit->hsdDisableAddr, true);
    DigitMail mail = {
            .mode = APPLY_MODE_SLEEP,
            .requestedState = segValBrake };
    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

bool requestWake(DigitStruct* digit) {
    if (getDtcStatus(lookupDtc(IO_0_ADDR)) == DTC_SET) {
        GPIO_write(digit->hsdDisableAddr, true);
        return false;
    }
    else
    {
        GPIO_write(digit->hsdDisableAddr, false);
        return true;
    }
}

DigitStruct hoursTensStruct = {
        .ioAddr = IO_0_ADDR,
        .ledId = SEG_LED_ID_HOURS_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 0,
        .hsdDisableAddr = HSD_DISABLE_0 };
DigitStruct hoursOnesStruct = {
        .ioAddr = IO_1_ADDR,
        .ledId = SEG_LED_ID_HOURS_ONES,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 1,
        .hsdDisableAddr = HSD_DISABLE_1 };
DigitStruct minutesTensStruct = {
        .ioAddr = IO_2_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 2,
        .hsdDisableAddr = HSD_DISABLE_2 };
DigitStruct minutesOnesStruct = {
        .ioAddr = IO_3_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 3,
        .hsdDisableAddr = HSD_DISABLE_3 };
