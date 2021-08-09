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
#include "utils/ioDefs.h"
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Mailbox.h>
#include <ti/sysbios/knl/Event.h>
#include <ti/sysbios/hal/Timer.h>

#define DIGIT_APPLY_TIME 300u //ms motor is on
#define EXTRA_APPLY_TIME 500u
#define DIGIT_ANIMATION_TIME 200u //ms
#define DIGIT_FULL_APPLY_INTERVAL (30u*60u*1000u) //ms between applying all digits to ensure they are placed correctly
#define DIGIT_FULL_APPLY_OFFSET (DIGIT_FULL_APPLY_INTERVAL/4u)

typedef struct DigitStruct {
    uint8_t ioAddr;
    uint8_t ledId;
    uint32_t fullApplyOffset;
    uint32_t lastFullApplyTime;
    EK_TM4C123GXL_GPIOName hsdDisableAddr;
    Task_Params taskParams;
    Task_Struct taskStruct;
    Char taskStack[TASKSTACKSIZE];
    Mailbox_Handle mailboxHandle;
    Event_Handle eventHandle;
    Timer_Handle timerHandle;
} DigitStruct;

typedef enum ApplyMode{
    APPLY_MODE_NORMAL,
    APPLY_MODE_TONE,
    APPLY_MODE_SLEEP
} ApplyMode;

typedef struct DigitMail {
    SegState requestedState;
    ApplyMode mode = 0;
    float toneFrequency;
} DigitMail;

extern DigitStruct hoursTensStruct;
extern DigitStruct hoursOnesStruct;
extern DigitStruct minutesTensStruct;
extern DigitStruct minutesOnesStruct;

void initDigit(DigitStruct* digit);

//Safe to be called from any thread
void requestNewDigitState(DigitStruct* digit, SegState state, uint32_t timeout);
void requestNewExtraState(DigitStruct* digit, bool isShow, uint32_t timeout);

//Disable HSD maybe
void requestSleep(DigitStruct* digit);

#endif /* SOURCE_DIGIT_H_ */
