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
#include "safetyBarrier.h"
#include "utils/segWearManager.h"

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
        if (!digit->doFullApplyExtra)
            applyState->extra = SEG_OFF;    //Don't destroy extra seg if it is the big motor
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
    bool flipInhibit = true;
    SegState timerSegmentStateHigh, timerSegmentStateLow;
    uint8_t pwmCycleIndex, pwmOnIdx, pwmCycleMax;
    uint32_t timerStartTime = 0;
    uint32_t timerApplyTimeout = 0;
    while (1) {
        DigitMail requestMail;
        bool mailValid = false;

        UInt eventID = Event_pend(digit->eventHandle, Event_Id_NONE, Event_Id_00 | Event_Id_01, BIOS_WAIT_FOREVER);    //00 is mailbox, 01 is timer
        if (eventID & Event_Id_00) { //mail
            mailValid = Mailbox_pend(digit->mailboxHandle, &requestMail, BIOS_NO_WAIT);    //no wait since event
            if (mailValid) {
                //TODO: move this to the bottom part?
                if (requestMail.mode == APPLY_MODE_PWM) {    //handle degenerate cases of PWM
                    if (requestMail.pwmStepsOn >= requestMail.pwmStepsPerCycle) {
                        requestMail.mode = APPLY_MODE_NONSTOP; //stay in that requested state
                    } else if (requestMail.pwmStepsOn == 0) {
                        requestMail.mode = APPLY_MODE_NONSTOP; //stay in that state
                        requestMail.requestedState = segValOff;
                    }
                }
            } else {
                setDtc(MISSING_DIGIT_REQUEST, digit->hsdCurrentIndex, "digit.c mail event but no message in mailbox");
            }

        }

        bool timeoutFault = (timerRunning && ((Clock_getTicks() - timerStartTime) > timerApplyTimeout));

        if ((mailValid && (requestMail.mode == APPLY_MODE_NO_TIMER)) || timeoutFault) {
            Timer_stop(digit->timerHandle);
            setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, false);
            timerRunning = false;
            if (!flipInhibit)
                setSegStateNonBlocking(digit->ioAddr, segValOff);
            if (isPWMNotTone) {
                SegState actualRequestedState;
                actualRequestedState = unionSegPriority(timerSegmentStateHigh, lastState); //basically OR of requested state and other last state
                SegmentMaskRequest request = (SegmentMaskRequest ) {
                                calculateFadedSegState(actualRequestedState),
                                digit->ledId };
                requestMaskUpdate(&request, BIOS_NO_WAIT);
                lastState = actualRequestedState; //actually save the state
            }

        } else if (eventID & Event_Id_01) {    //Tone/PWM
            if (isPWMNotTone) {
                if (pwmCycleIndex == pwmOnIdx) { //see file in calculation stuff. Turning on at the end of the nth count and off at the end of the 0th makes n steps with downcounting.
                    if (!flipInhibit)
                        setSegStateNonBlocking(digit->ioAddr, timerSegmentStateHigh);
                    --pwmCycleIndex;
                } else if (pwmCycleIndex == 0) {
                    if (!flipInhibit)
                        setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                    pwmCycleIndex = pwmCycleMax;
                } else {
                    --pwmCycleIndex;
                }
            } else {
                if (pwmState) {
                    if (!flipInhibit)
                        setSegStateNonBlocking(digit->ioAddr, timerSegmentStateHigh);
                } else {
                    if (!flipInhibit)
                        setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                }
                pwmState = !pwmState;
            }
            feedSafetyBarrierWDT(SAFETY_BARRIER_TASK_DIGIT);
        }

        if (mailValid && (eventID & Event_Id_00)) { //Mail
            if (requestMail.mode == APPLY_MODE_TONE) {    //must have been mail event
                setSafetyBarrierTaskFtti(SAFETY_BARRIER_TASK_DIGIT, 5000 / requestMail.cycleFrequency);    //5 periods
                setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, true);
                Timer_setPeriodMicroSecs(digit->timerHandle, (500000.0 / requestMail.cycleFrequency));    //Period is half of 1/frequency
                logSegWear(digit, requestMail.requestedState);
                timerSegmentStateHigh = requestMail.requestedState;
                timerSegmentStateLow = invertSegState(requestMail.requestedState);
                timerStartTime = Clock_getTicks();
                timerApplyTimeout = requestMail.timerApplyTimeout;
                timerRunning = true;
                isPWMNotTone = false;
                Timer_start(digit->timerHandle);
            } else if (requestMail.mode == APPLY_MODE_PWM) {
                setSafetyBarrierTaskFtti(SAFETY_BARRIER_TASK_DIGIT, 5000 / requestMail.cycleFrequency);    //5 periods
                setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, true);
                Timer_setPeriodMicroSecs(digit->timerHandle, (1000000.0 / (requestMail.cycleFrequency * requestMail.pwmStepsPerCycle)));
                logSegWear(digit, requestMail.requestedState);
                timerSegmentStateHigh = requestMail.requestedState;
                timerSegmentStateLow = replaceNonOffWithBrake(timerSegmentStateHigh);
                timerStartTime = Clock_getTicks();
                timerRunning = true;
                pwmCycleMax = requestMail.pwmStepsPerCycle - 1;
                pwmCycleIndex = pwmCycleMax;
                pwmOnIdx = requestMail.pwmStepsOn;
                timerApplyTimeout = requestMail.timerApplyTimeout;
                isPWMNotTone = true;
                if(!flipInhibit)
                    setSegStateNonBlocking(digit->ioAddr, timerSegmentStateLow);
                Timer_start(digit->timerHandle);
            } else if (requestMail.mode == APPLY_MODE_NORMAL) {
                Timer_stop(digit->timerHandle);
                setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, false);
                uint32_t applyTime;

                uint32_t numFrames = DIGIT_ANIMATION_TIME * LED_FPS / 1000;
                SegState actualRequestedState, applyState;
                calculateStateToApply(digit, requestMail.requestedState, lastState, &actualRequestedState, &applyState);
                logSegWear(digit, applyState);
                if (applyState.rawWord == segValShowExtra.rawWord || applyState.rawWord == segValHideExtra.rawWord) {
                    applyTime = EXTRA_APPLY_TIME;
                } else {
                    applyTime = DIGIT_APPLY_TIME;
                }
                setSafetyBarrierTaskFtti(SAFETY_BARRIER_TASK_DIGIT, applyTime * 2);
                setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, true);
                if(!flipInhibit)
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
                        if(!flipInhibit)
                            setSegStateNonBlocking(digit->ioAddr, segValOff);
                        setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, false);
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
                    if(!flipInhibit)
                        setSegStateNonBlocking(digit->ioAddr, segValOff);
                    setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, false);
                }
                lastState = actualRequestedState;
            } else if (requestMail.mode == APPLY_MODE_SLEEP || requestMail.mode == APPLY_MODE_WAKE || requestMail.mode == APPLY_MODE_NONSTOP) { //APPLY_MODE_SLEEP. Don't go to off after. Brake mode is low 5V draw
                Timer_stop(digit->timerHandle);
                setSafetyBarrierWDTMode(SAFETY_BARRIER_TASK_DIGIT, false);
                if(!flipInhibit)
                    setSegStateNonBlocking(digit->ioAddr, requestMail.requestedState);
                if (requestMail.mode == APPLY_MODE_SLEEP) {
                    flipInhibit = true;
                } else if (requestMail.mode == APPLY_MODE_WAKE) {
                    flipInhibit = false;
                }
            }
            //do nothing if NO_TIMER
        }
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

void requestTone(DigitStruct* digit, SegState toneSegments, float toneFrequency, uint32_t timerApplyTimeout, uint32_t requestTimeout) {
    DigitMail mail = {
            .mode = APPLY_MODE_TONE,
            .requestedState = toneSegments,
            .cycleFrequency = toneFrequency,
            .timerApplyTimeout = timerApplyTimeout };
    Mailbox_post(digit->mailboxHandle, &mail, requestTimeout);
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

void requestDigitPWM(DigitStruct* digit, SegState pwmGoalState, float cycleFrequency, uint8_t pwmStepsPerCycle, uint8_t pwmStepsOn, uint32_t timerApplyTimeout,
                     uint32_t requestTimeout) {
    uint8_t gcd = calculateGCD(pwmStepsOn, pwmStepsPerCycle);

    DigitMail mail = {
            .mode = APPLY_MODE_PWM,
            .requestedState = pwmGoalState,
            .cycleFrequency = cycleFrequency,
            .pwmStepsOn = pwmStepsOn / gcd,
            .pwmStepsPerCycle = pwmStepsPerCycle / gcd,
            .timerApplyTimeout = timerApplyTimeout };

    Mailbox_post(digit->mailboxHandle, &mail, requestTimeout);
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
                .mode = APPLY_MODE_WAKE,
                .requestedState = segValOff }; //go back to enhanced-safety mode?
        Mailbox_post(digit->mailboxHandle, &mail, timeout);
        return true;
    }
}

DigitStruct hoursTensStruct = {
        .ioAddr = IO_0_ADDR,
        .ledId = SEG_LED_ID_HOURS_TENS,
        .hsdCurrentIndex = 0,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 0,
        .hsdDisableAddr = HSD_DISABLE_0,
        .name = "hoursTens",
        .doFullApplyExtra = false, //set true for AP but not alarm icon
        .driverPlausibilityDtc = DTC_DRIVER_0_PLAUSIBILITY,
        .hsdFaultDtc = DTC_HSD_0_FAULT,
        .overcurrentAverageDtc = DTC_HSD_0_AVERAGE_OVERCURRENT };
DigitStruct hoursOnesStruct = {
        .ioAddr = IO_1_ADDR,
        .ledId = SEG_LED_ID_HOURS_ONES,
        .hsdCurrentIndex = 1,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 1,
        .hsdDisableAddr = HSD_DISABLE_1,
        .name = "hoursTens",
        .doFullApplyExtra = false,
        .driverPlausibilityDtc = DTC_DRIVER_1_PLAUSIBILITY,
        .hsdFaultDtc = DTC_HSD_1_FAULT,
        .overcurrentAverageDtc = DTC_HSD_1_AVERAGE_OVERCURRENT };
DigitStruct minutesTensStruct = {
        .ioAddr = IO_2_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .hsdCurrentIndex = 2,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 2,
        .hsdDisableAddr = HSD_DISABLE_2,
        .name = "minutesTens",
        .doFullApplyExtra = false,
        .driverPlausibilityDtc = DTC_DRIVER_2_PLAUSIBILITY,
        .hsdFaultDtc = DTC_HSD_2_FAULT,
        .overcurrentAverageDtc = DTC_HSD_2_AVERAGE_OVERCURRENT };
DigitStruct minutesOnesStruct = {
        .ioAddr = IO_3_ADDR,
        .ledId = SEG_LED_ID_MINUTES_TENS,
        .hsdCurrentIndex = 3,
        .fullApplyOffset = DIGIT_FULL_APPLY_OFFSET * 3,
        .hsdDisableAddr = HSD_DISABLE_3,
        .name = "minutesOnes",
        .doFullApplyExtra = false,
        .driverPlausibilityDtc = DTC_DRIVER_3_PLAUSIBILITY,
        .hsdFaultDtc = DTC_HSD_3_FAULT,
        .overcurrentAverageDtc = DTC_HSD_3_AVERAGE_OVERCURRENT };
