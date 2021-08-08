/*
 * digit.c
 *
 *  Created on: May 11, 2021
 *      Author: Dan
 */

#include "digit.h"
#include "utils/ledDefs.h"
#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>

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
    while (1) {
        DigitMail requestMail;
        Mailbox_pend(digit->mailboxHandle, &requestMail, BIOS_WAIT_FOREVER);

        SegState actualRequestedState, applyState;
        calculateStateToApply(digit, requestMail.requestedState, lastState, &actualRequestedState, &applyState);

        uint32_t numFrames = DIGIT_ANIMATION_TIME * LED_FPS / 1000;
        bool segCleared = false;

        if (requestMail.mode == APPLY_MODE_TONE) {

        }
        else {
            setSegStateNonBlocking(digit->ioAddr, applyState);

            if (requestMail.mode == APPLY_MODE_SLEEP)
                    {
                for (uint32_t i = 0; i < numFrames; i++) {
                    uint8_t fadePosition = i * 255 / numFrames;
                    //System_printf("i: %d, fadepos: %d\n",i,fadePosition);
                    SegmentMaskRequest request = (SegmentMaskRequest ) {
                                    rampSegState(lastState, actualRequestedState, fadePosition),
                                    digit->ledId };
                    requestMaskUpdate(&request, BIOS_NO_WAIT);
                    Task_sleep(1000 / LED_FPS);

                    //Longer animation time than apply time
                    if ((!segCleared) && ((i * 1000 / LED_FPS) > DIGIT_APPLY_TIME)) {
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
                    Task_sleep(DIGIT_APPLY_TIME - DIGIT_ANIMATION_TIME);
                    setSegStateNonBlocking(digit->ioAddr, segValOff);
                }
            } else {
                Task_sleep(DIGIT_APPLY_TIME);
                setSegStateNonBlocking(digit->ioAddr, segValOff);
            }
            lastState = actualRequestedState;
        }

        //TODO: Do segment load management to manage thermals and monitor overall usage
    }
}

void initDigit(DigitStruct* digit) {
    Mailbox_Params mailboxParams;
    Mailbox_Params_init(&mailboxParams);
    digit->mailboxHandle = Mailbox_create(sizeof(DigitMail), 1, &mailboxParams, NULL);

    digit->lastFullApplyTime = digit->fullApplyOffset;

    Task_Params taskParams;
    Task_Params_init(&taskParams);
    taskParams.arg0 = digit;
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

void requestNewExtraState(DigitStruct* digit, bool isShow, uint32_t timeout) {
    if (isShow)
        requestNewDigitState(digit, segValShowExtra, timeout);
    else
        requestNewDigitState(digit, segValHideExtra, timeout);
}

void requestSleep(DigitStruct* digit, uint32_t timeout) {
    GPIO_write(digit->hsdDisableAddr, true);
    DigitMail mail = {
            .mode = DigitStruct,
            .requestedState = segValBrake };
    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

void requestWake(DigitStruct* digit) {
    if (getDtcStatus(lookupDtc(IO_0_ADDR)) == DTC_SET) {
        GPIO_write(digit->hsdDisableAddr, true);
    }
    else
    {
        GPIO_write(digit->hsdDisableAddr, false);
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
