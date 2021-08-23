/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* XDCtools Header files */

#include <xdc/std.h>
#include <xdc/runtime/System.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

/* TI-RTOS Header files */
#include <ti/drivers/GPIO.h>
// #include <ti/drivers/I2C.h>
// #include <ti/drivers/SDSPI.h>
// #include <ti/drivers/SPI.h>
// #include <ti/drivers/UART.h>
// #include <ti/drivers/Watchdog.h>
// #include <ti/drivers/WiFi.h>

#include "boardInit.h"
#include "config/gpioConfig.h"
#include "config/serialConfig.h"
#include "config/adcConfig.h"
#include "defs.h"
#include "ioDriver.h"
#include "hsd.h"
#include "dtc.h"
#include "utils/ledDefs.h"
#include "digit.h"
#include "Leds.h"

#include "safetyBarrier.h"

extern void updateLeds(); //Leds.h needed for C linkage

Task_Struct heartbeatStruct;
Char heartbeatStack[TASKSTACKSIZE];

Task_Struct updateLEDsStruct;
Char updateLEDsStack[TASKSTACKSIZE * 2];

Task_Struct sysMonitorStruct;
Char sysMonitorStack[TASKSTACKSIZE];

Task_Struct safetyBarrierStruct;
Char safetyBarrierStack[TASKSTACKSIZE];

/*
 *  ======== heartBeatFxn ========
 *  Toggle the Board_LED0. The Task_sleep is determined by arg0 which
 *  is configured for the heartBeat Task instance.
 */
void heartBeatFxn(UArg arg0, UArg arg1) {
    while (1) {
        Task_sleep((UInt) arg0);
        GPIO_toggle(LAUNCHPAD_LED_GREEN);
    }
}

void sysMonitor(UArg arg0, UArg arg1) {
    GPIO_write(IO_RESET, FALSE);
    GPIO_write(ESP_ENABLE, TRUE);
    GPIO_write(BUF_DISABLE, FALSE);
    //GPIO_write(HSD_DISABLE_0, FALSE);

    int loopCount = 0;
    Task_sleep(100);
    clearMaxAdcVals();
//segValAOnly, segValBOnly, segValCOnly, segValDOnly,segValEOnly, segValFOnly, segValGOnly,segValShowExtra,
//    SegState stateList[] = { segVal0, segVal1, segVal2, segVal3, segVal4,
//                             segVal5, segVal6, segVal7, segVal8, segVal9,
//                             segVal_A, segVal_b, segVal_C, segVal_c, segVal_d,
//                             segVal_E, segVal_F, segVal_G, segVal_H, segVal_h,
//                             segVal_I, segVal_i, segVal_J, segVal_L, segVal_n,
//                             segVal_O, segVal_o, segVal_P, segVal_q, segVal_r,
//                             segVal_S, segVal_t, segVal_U, segVal_u, segVal_y,
//                             segValQuestion, segValBlank, segValAll };
    //SegState stateList[] = { segVal0, segVal1, segVal2, segVal3, segVal4, segVal5, segVal6, segVal7, segVal8, segVal9 };
    SegState stateList[] = {
            segVal1,
            segVal_I };
//	SegState
//	stateList[]= {
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		segValBlank,
//		(SegState) {.a=SEG_SHOW},
//		(SegState) {.b=SEG_SHOW},
//		(SegState) {.c=SEG_SHOW},
//		(SegState) {.d=SEG_SHOW},
//		(SegState) {.e=SEG_SHOW},
//		(SegState) {.f=SEG_SHOW},
//		(SegState) {.g=SEG_SHOW},
//		(SegState) {.a=SEG_HIDE},
//		(SegState) {.b=SEG_HIDE},
//		(SegState) {.c=SEG_HIDE},
//		(SegState) {.d=SEG_HIDE},
//		(SegState) {.e=SEG_HIDE},
//		(SegState) {.f=SEG_HIDE},
//		(SegState) {.g=SEG_HIDE},
//		(SegState) {.a=SEG_SHOW},
//		(SegState) {.b=SEG_SHOW},
//		(SegState) {.c=SEG_SHOW},
//		(SegState) {.d=SEG_SHOW},
//		(SegState) {.e=SEG_SHOW},
//		(SegState) {.f=SEG_SHOW},
//		(SegState) {.g=SEG_SHOW},
//		(SegState) {.a=SEG_HIDE},
//		(SegState) {.b=SEG_HIDE},
//		(SegState) {.c=SEG_HIDE},
//		(SegState) {.d=SEG_HIDE},
//		(SegState) {.e=SEG_HIDE},
//		(SegState) {.f=SEG_HIDE},
//		(SegState) {.g=SEG_HIDE},
//		segVal0, segVal1, segVal2, segVal3, segVal4, segVal5, segVal6, segVal7, segVal8, segVal9,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//		segVal0,
//	};
    uint32_t numStates = sizeof(stateList) / sizeof(stateList[0]);

    while (1) {
        checkIOPresence(IO_0_ADDR);
        printDtcs();
        requestWake(&hoursTensStruct);

        //SegState thisState = stateList[loopCount % numStates];

        //requestNewDigitStateNormal(&hoursTensStruct, thisState, BIOS_WAIT_FOREVER);

        for(int i=0;i<=10;i++){
            requestDigitPWM(&hoursTensStruct, segValShowExtra,100,10,i,BIOS_WAIT_FOREVER);
            Task_sleep(1000);
        }
        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        requestTone(&hoursTensStruct, segValShowExtra, 329.63, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 415.3, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 369.99, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 246.94, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//
//        requestTone(&hoursTensStruct, segValShowExtra, 329.63, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 369.99, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 415.3, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 329.63, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//
//        requestTone(&hoursTensStruct, segValShowExtra, 415.3, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 329.63, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 369.99, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 246.94, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//
//        requestTone(&hoursTensStruct, segValShowExtra, 246.94, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 369.99, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 415.3, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//        requestTone(&hoursTensStruct, segValShowExtra, 329.63, BIOS_WAIT_FOREVER);
//        Task_sleep(800);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(200);
//
//        requestTone(&hoursTensStruct, segValShowExtra, 164.81, BIOS_WAIT_FOREVER);
//        Task_sleep(4000);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(1000);
//        requestTone(&hoursTensStruct, segValShowExtra, 164.81, BIOS_WAIT_FOREVER);
//        Task_sleep(4000);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(1000);
//        requestTone(&hoursTensStruct, segValShowExtra, 164.81, BIOS_WAIT_FOREVER);
//        Task_sleep(4000);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);
//        Task_sleep(1000);
//        requestDisableDigitTimer(&hoursTensStruct, BIOS_WAIT_FOREVER);

        Task_sleep(10000);
//        if (loopCount % 2 == 0)
//        {
//            requestNewExtraState(&hoursTensStruct, false, BIOS_WAIT_FOREVER);
//        }
//
//        Task_sleep(1000);

        ++loopCount;
    }
}

/*
 *  ======== main ========
 */
int main(void) {

    init();

    /* Construct heartBeat Task  thread */
    Task_Params heartBeatParams;
    Task_Params_init(&heartBeatParams);
    heartBeatParams.arg0 = 1000;
    heartBeatParams.stackSize = TASKSTACKSIZE;
    heartBeatParams.stack = &heartbeatStack;
    heartBeatParams.priority = 1;
    heartBeatParams.instance->name = "Heartbeat";
    Task_construct(&heartbeatStruct, (Task_FuncPtr) heartBeatFxn, &heartBeatParams, NULL);

    /* Construct updateLEDs Task  thread */
    Task_Params updateLEDsParams;
    Task_Params_init(&updateLEDsParams);
    updateLEDsParams.stackSize = TASKSTACKSIZE * 2;
    updateLEDsParams.stack = &updateLEDsStack;
    updateLEDsParams.priority = LED_TASK_PRIORITY;
    updateLEDsParams.instance->name = "updateLEDs";
    Task_construct(&updateLEDsStruct, (Task_FuncPtr) updateLeds, &updateLEDsParams, NULL);

    /* Construct sysMonitor Task  thread */
    Task_Params sysMonitorParams;
    Task_Params_init(&sysMonitorParams);
    sysMonitorParams.stackSize = TASKSTACKSIZE;
    sysMonitorParams.stack = &sysMonitorStack;
    sysMonitorParams.priority = SYS_MONITOR_PRIORITY;
    sysMonitorParams.instance->name = "sysMonitor";
    Task_construct(&sysMonitorStruct, (Task_FuncPtr) sysMonitor, &sysMonitorParams, NULL);

    Task_Params safetyBarrierParams;
    Task_Params_init(&safetyBarrierParams);
    safetyBarrierParams.stackSize = TASKSTACKSIZE;
    safetyBarrierParams.stack = &safetyBarrierStack;
    safetyBarrierParams.priority = SAFETY_BARRIER_PRIORITY;
    safetyBarrierParams.instance->name = "safetyBarrier";
    Task_construct(&safetyBarrierStruct, (Task_FuncPtr) safetyBarrier, &safetyBarrierParams, NULL);

    System_printf("Starting the example\nSystem provider is set to SysMin. "
                  "Halt the target to view any SysMin contents in ROV.\n");
    /* SysMin will only print to the console when you call flush or exit */
    System_flush();

    GPIO_toggle(LAUNCHPAD_LED_GREEN);

    /* Start BIOS */
    BIOS_start();

    return (0);
}
