/*
 * digit.h
 *
 *  Created on: May 11, 2021
 *      Author: Dan
 */

#ifndef SOURCE_DIGIT_H_
#define SOURCE_DIGIT_H_

#include <xdc/std.h>
#include "defs.h"
#include "dtc.h"
#include "config/gpioConfig.h"
#include "utils/ioDefs.h"
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Mailbox.h>
#include <ti/sysbios/knl/Event.h>
#include <ti/sysbios/hal/Timer.h>

#define DIGIT_APPLY_TIME 500u //ms motor is on
#define EXTRA_APPLY_TIME 500u
#define DIGIT_ANIMATION_TIME 200u //ms
#define DIGIT_FULL_APPLY_INTERVAL (30u*60u*1000u) //ms between applying all digits to ensure they are placed correctly
#define DIGIT_FULL_APPLY_OFFSET (DIGIT_FULL_APPLY_INTERVAL/4u)

typedef struct DigitStruct {
    uint8_t ioAddr;
    uint8_t ledId;
    uint8_t hsdCurrentIndex;
    uint32_t fullApplyOffset;
    uint32_t lastFullApplyTime;
    EK_TM4C123GXL_GPIOName hsdDisableAddr;
    Task_Params taskParams;
    Task_Struct taskStruct;
    Char taskStack[TASKSTACKSIZE];
    Mailbox_Handle mailboxHandle;
    Event_Handle eventHandle;
    Timer_Handle timerHandle;
    xdc_String name;
    bool doFullApplyExtra;
    Dtc driverPlausibilityDtc;
    Dtc hsdFaultDtc;
    Dtc overcurrentAverageDtc;
    SegInvertMask invertMask;
} DigitStruct;

typedef enum ApplyMode{
    APPLY_MODE_INVALID=0,
    APPLY_MODE_NORMAL,
    APPLY_MODE_TONE,
    APPLY_MODE_PWM,
    APPLY_MODE_SLEEP,
    APPLY_MODE_WAKE,
    APPLY_MODE_NONSTOP,
    APPLY_MODE_NO_TIMER
} ApplyMode;

typedef struct DigitMail {
    SegState requestedState;
    ApplyMode mode;
    float cycleFrequency;
    uint8_t pwmStepsPerCycle;
    uint8_t pwmStepsOn;//4 steps on cycle of 8 is 50%
    uint32_t timerApplyTimeout;
} DigitMail;

extern DigitStruct hoursTensStruct;
extern DigitStruct hoursOnesStruct;
extern DigitStruct minutesTensStruct;
extern DigitStruct minutesOnesStruct;

void initDigit(DigitStruct* digit);

//Safe to be called from any thread
void requestNewDigitStateNormal(DigitStruct* digit, SegState state, uint32_t timeout);
void requestNewExtraState(DigitStruct* digit, bool isShow, uint32_t timeout);
void requestTone(DigitStruct* digit, SegState toneSegments, float toneFrequency, uint32_t timerApplyTimeout, uint32_t requestTimeout);
void requestDigitPWM(DigitStruct* digit, SegState pwmGoalState, float cycleFrequency, uint8_t pwmStepsPerCycle, uint8_t pwmStepsOn, uint32_t timerApplyTimeout, uint32_t requestTimeout);
void requestDisableDigitTimer(DigitStruct *digit, uint32_t timeout);
void requestSleep(DigitStruct* digit, uint32_t timeout);
bool requestWake(DigitStruct* digit, uint32_t timeout);

#endif /* SOURCE_DIGIT_H_ */
