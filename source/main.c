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
#define TASKSTACKSIZE   512

#include "Leds.h"

extern void updateLeds(UArg arg0, UArg arg1);

Task_Struct heartbeatStruct;
Char heartbeatStack[TASKSTACKSIZE];

Task_Struct updateLEDsStruct;
Char updateLEDsStack[TASKSTACKSIZE];

Task_Struct sysMonitorStruct;
Char sysMonitorStack[TASKSTACKSIZE];

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
	GPIO_write(HSD_DISABLE_0, FALSE);
	int loopCount = 0;
	Task_sleep(100);
	clearMaxAdcVals();

	SegState stateList[] = {
			segVal0,
			segVal1,
			segVal2,
			segVal3,
			segVal4,
			segVal5,
			segVal6,
			segVal7,
			segVal8,
			segVal9,
			segVal9,
			segVal_A,
			segVal_b,
			segVal_C,
			segVal_c,
			segVal_d,
			segVal_E,
			segVal_F,
			segVal_G,
			segVal_H,
			segVal_h,
			segVal_I,
			segVal_i,
			segVal_J,
			segVal_L,
			segVal_n,
			segVal_O,
			segVal_o,
			segVal_P,
			segVal_q,
			segVal_r,
			segVal_S,
			segVal_t,
			segVal_U,
			segVal_u,
			segVal_y,
			segValQuestion,
			segValBlank,
			segValAll };

	SegState lastState = segValBlank;
	while (1) {
		checkIOPresence(IO_0_ADDR);
		printDtcs();

		if (getDtcStatus(lookupDtc(IO_0_ADDR)) == DTC_SET) {
			GPIO_write(HSD_DISABLE_0, true);
		} else {
			GPIO_write(HSD_DISABLE_0, false);
		}

		SegState thisState = stateList[loopCount % 39];
		applySegDelta(IO_0_ADDR, lastState, thisState, 300);

		SegState nextState = stateList[(loopCount+1) % 39];
		SegState lastThisDiff=subtractSeg(thisState,lastState);
		SegState thisNextDiff=subtractSeg(nextState,thisState);
		SegState diffUnion=unionSeg(lastThisDiff, thisNextDiff);
		SegState diffDiff=subtractSeg(thisNextDiff,lastThisDiff);

		/*diffUnion will be 00 if a segment was set to something different last time than if it was this time.
		 * But it will return 00 if a segment was floating in both cases.
		 * If the difference between the differences is nonzero then that means the segment changed,
		 * or that the segment was off before. So it is only a problem to flip quickly if diffDiff-diffUnion is nonzero
		 * since that means that in the next cycle we will be changing a segment at the next interval and we changed it
		 * differently at the last interval. If it changed from 00 to something then diffDiff and diffUnion will be the same.
		 * But if it changed from 01 to 10 then diffUnion will be 00 and diffDiff will be 10 which is not OK.
		 */
		SegState diffSuperDelta=subtractSeg(diffDiff,diffUnion);

		if(diffSuperDelta.rawWord!=0){
			Task_sleep(10000);
		}else{
			Task_sleep(5000);
		}

		lastState = thisState;
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
	Task_construct(&heartbeatStruct, (Task_FuncPtr) heartBeatFxn, &heartBeatParams, NULL);

	/* Construct updateLEDs Task  thread */
	Task_Params updateLEDsParams;
	Task_Params_init(&updateLEDsParams);
	updateLEDsParams.stackSize = TASKSTACKSIZE;
	updateLEDsParams.stack = &updateLEDsStack;
	updateLEDsParams.priority = 6;
	Task_construct(&updateLEDsStruct, (Task_FuncPtr) updateLeds, &updateLEDsParams, NULL);

	/* Construct sysMonitor Task  thread */
	Task_Params sysMonitorParams;
	Task_Params_init(&sysMonitorParams);
	sysMonitorParams.stackSize = TASKSTACKSIZE;
	sysMonitorParams.stack = &sysMonitorStack;
	sysMonitorParams.priority = 7;
	Task_construct(&sysMonitorStruct, (Task_FuncPtr) sysMonitor, &sysMonitorParams, NULL);

	System_printf("Starting the example\nSystem provider is set to SysMin. "
			"Halt the target to view any SysMin contents in ROV.\n");
	/* SysMin will only print to the console when you call flush or exit */
	System_flush();

	GPIO_toggle(LAUNCHPAD_LED_GREEN);

	/* Start BIOS */
	BIOS_start();

	return (0);
}
