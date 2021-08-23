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
#include <ti/sysbios/hal/Timer.h>
#include <ti/drivers/GPIO.h>
#include <xdc/runtime/Error.h>
#include <math.h>

static void timerISR(UArg arg0) {
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

    bool pwmState = false;
    bool timerRunning = false;
    bool isPWMNotTone = false;
    SegState timerSegmentStateHigh, timerSegmentStateLow;
    uint8_t pwmCycleIndex, pwmOnIdx, pwmCycleMax;
    uint32_t timerStartTime = 0;
    while (1) {
        DigitMail requestMail;
        bool mailValid = false;

        UInt eventID = Event_pend(digit->eventHandle, Event_Id_NONE, Event_Id_00 | Event_Id_01, BIOS_WAIT_FOREVER);    //00 is mailbox, 01 is timer
        if (eventID & Event_Id_00) { //mail
            mailValid = Mailbox_pend(digit->mailboxHandle, &requestMail, BIOS_NO_WAIT);    //no wait since event
            if (mailValid) {
                if (requestMail.mode == APPLY_MODE_PWM) {    //handle degenerate cases of PWM
                    if (requestMail.pwmStepsOn >= requestMail.pwmStepsPerCycle) {
                        requestMail.mode = APPLY_MODE_NORMAL;
                    } else if (requestMail.pwmStepsOn == 0) {
                        requestMail.mode = APPLY_MODE_NORMAL;
                        requestMail.requestedState = segValOff;
                    }
                }
            } else {
                setDtc(MISSING_DIGIT_REQUEST, 0, "digit.c mail event but no message in mailbox");
            }

        }

        bool timeoutFault = (timerRunning && ((Clock_getTicks() - timerStartTime) > DIGIT_TIMER_FUNCTION_MAX_DURATION));

        if ((mailValid && (requestMail.mode == APPLY_MODE_NO_TIMER)) || timeoutFault) {
            Timer_stop(digit->timerHandle);
            timerRunning = false;
            setSegStateNonBlocking(digit->ioAddr, segValOff);
            if (timeoutFault) {
                setDtc(DIGIT_TIMER_TIMEOUT, 0, "Caught by digit.c timerStartTime check");
            }
        } else if (eventID & Event_Id_01) {    //Tone/PWM
            if (isPWMNotTone) {
                if (pwmCycleIndex == pwmOnIdx) { //see file in calculation stuff. Turning on at the end of the nth count and off at the end of the 0th makes n steps with downcounting.
                    setSegStateNonBlocking(digit->ioAddr, timerSegmentStateHigh);
                } else if (pwmCycleIndex == 0) {
                    setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                    pwmCycleIndex = pwmCycleMax;
                }
                --pwmCycleIndex;
            } else {
                if (pwmState) {
                    setSegStateNonBlocking(digit->ioAddr, timerSegmentStateHigh);
                } else {
                    setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                }
                pwmState = !pwmState;
            }
        }

        if (mailValid && (eventID & Event_Id_00)) { //Mail
            if (requestMail.mode == APPLY_MODE_TONE) {    //must have been mail event
                Timer_setPeriodMicroSecs(digit->timerHandle, (500000.0 / requestMail.cycleFrequency));    //Period is half of 1/frequency
                timerSegmentStateHigh = requestMail.requestedState;
                timerSegmentStateLow = invertSegState(requestMail.requestedState);
                timerStartTime = Clock_getTicks();
                timerRunning = true;
                isPWMNotTone = false;
                Timer_start(digit->timerHandle);
            } else if (requestMail.mode == APPLY_MODE_PWM) {
                Timer_setPeriodMicroSecs(digit->timerHandle, (1000000.0 / (requestMail.cycleFrequency * requestMail.pwmStepsPerCycle)));
                timerSegmentStateHigh = requestMail.requestedState;
                timerSegmentStateLow = replaceNonOffWithBrake(timerSegmentStateHigh);
                timerStartTime = Clock_getTicks();
                timerRunning = true;
                pwmCycleMax = requestMail.pwmStepsPerCycle - 1;
                pwmCycleIndex = pwmCycleMax;
                pwmOnIdx = requestMail.pwmStepsOn;
                isPWMNotTone = true;
                setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                Timer_start(digit->timerHandle);
            } else if (requestMail.mode == APPLY_MODE_NORMAL) {
                Timer_stop(digit->timerHandle);

                uint32_t applyTime;

                uint32_t numFrames = DIGIT_ANIMATION_TIME * LED_FPS / 1000;
                SegState actualRequestedState, applyState;
                calculateStateToApply(digit, requestMail.requestedState, lastState, &actualRequestedState, &applyState);

                if (applyState.rawWord == segValShowExtra.rawWord || applyState.rawWord == segValHideExtra.rawWord) {
                    applyTime = EXTRA_APPLY_TIME;
                } else {
                    applyTime = DIGIT_APPLY_TIME;
                }

                setSegStateNonBlocking(digit->ioAddr, applyState);

                bool segCleared = false;
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
                lastState = actualRequestedState;

            } else if (requestMail.mode == APPLY_MODE_SLEEP) { //APPLY_MODE_SLEEP. Don't go to off after. Brake mode is low 5V draw
                Timer_stop(digit->timerHandle);
                setSegStateNonBlocking(digit->ioAddr, requestMail.requestedState);
            }
            //do nothing if NO_TIMER
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
    timerParams.arg = (UArg) digit;

    digit->timerHandle = Timer_create(Timer_ANY, timerISR, &timerParams, NULL);

    Task_Params taskParams;
    Task_Params_init(&taskParams);
    taskParams.arg0 = (UArg) digit;
    taskParams.stackSize = TASKSTACKSIZE;
    taskParams.stack = &digit->taskStack;
    taskParams.priority = DIGIT_TASK_PRIORITY;
    taskParams.instance->name = digit->name;
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
            .cycleFrequency = toneFrequency };
    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

static uint8_t calculateGCD(uint8_t a, uint8_t b) { //positive values only

    while (b != 0) {
        uint16_t tmp;
        tmp = b;
        b = a % b;
        a = tmp;
    }
    return a;
}

void requestDigitPWM(DigitStruct* digit, SegState pwmGoalState, float cycleFrequency, uint8_t pwmStepsPerCycle, uint8_t pwmStepsOn, uint32_t timeout) {
    uint8_t gcd = calculateGCD(pwmStepsOn, pwmStepsPerCycle);

    DigitMail mail = {
            .mode = APPLY_MODE_TONE,
            .requestedState = pwmGoalState,
            .cycleFrequency = cycleFrequency,
            .pwmStepsOn = pwmStepsOn / gcd,
            .pwmStepsPerCycle = pwmStepsPerCycle / gcd };

    Mailbox_post(digit->mailboxHandle, &mail, timeout);
}

void requestDisableDigitTimer(DigitStruct *digit, uint32_t timeout) {
    DigitMail mail = {
            .mode = APPLY_MODE_NO_TIMER };
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

bool requestWake(DigitStruct* digit, uint32_t timeout) {
    if (getDtcStatus(lookupDtc(IO_0_ADDR)) == DTC_SET) {
        GPIO_write(digit->hsdDisableAddr, true);
        return false;
    } else {
        GPIO_write(digit->hsdDisableAddr, false);
        DigitMail mail = {
                .mode = APPLY_MODE_SLEEP,
                .requestedState = segValOff }; //go back to enhanced-safety mode?
        Mailbox_post(digit->mailboxHandle, &mail, timeout);
        return true;
    }
}

DigitStruct hoursTensStruct = {
        .ioAddr = IO_0_ADDR,
        .ledId = SEG_LED_ID_HOURS_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 0,
        .hsdDisableAddr = HSD_DISABLE_0,
        .name = "hoursTens" };
DigitStruct hoursOnesStruct = {
        .ioAddr = IO_1_ADDR,
        .ledId = SEG_LED_ID_HOURS_ONES,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 1,
        .hsdDisableAddr = HSD_DISABLE_1,
        .name = "hoursTens" };
DigitStruct minutesTensStruct = {
        .ioAddr = IO_2_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 2,
        .hsdDisableAddr = HSD_DISABLE_2,
        .name = "minutesTens" };
DigitStruct minutesOnesStruct = {
        .ioAddr = IO_3_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 3,
        .hsdDisableAddr = HSD_DISABLE_3,
        .name = "minutesOnes" };
