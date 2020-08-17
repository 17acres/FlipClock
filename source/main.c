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
#include "defs.h"

#define TASKSTACKSIZE   512

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
		GPIO_toggle(LAUNCHPAD_LED_BLUE);
	}
}


void updateLEDs(UArg arg0, UArg arg1){
	while (1) {
		GPIO_toggle(LAUNCHPAD_LED_GREEN);
		Task_sleep(1000/LED_FPS);
	}
}

void sysMonitor(UArg arg0, UArg arg1){
	GPIO_write(IO_RESET, TRUE);
	GPIO_write(ESP_ENABLE, TRUE);
	GPIO_write(BUF_DISABLE, FALSE);

	while (1) {
		Task_sleep(1000);
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
	Task_Params_init (&updateLEDsParams);
	updateLEDsParams.stackSize = TASKSTACKSIZE;
	updateLEDsParams.stack = &updateLEDsStack;
	updateLEDsParams.priority = 6;
	Task_construct(&updateLEDsStruct, (Task_FuncPtr) updateLEDs, &updateLEDsParams, NULL);


	/* Construct sysMonitor Task  thread */
		Task_Params sysMonitorParams;
		Task_Params_init (&sysMonitorParams);
		sysMonitorParams.stackSize = TASKSTACKSIZE;
		sysMonitorParams.stack = &sysMonitorStack;
		sysMonitorParams.priority = 15;
		Task_construct(&sysMonitorStruct, (Task_FuncPtr) sysMonitor, &sysMonitorParams, NULL);





	System_printf("Starting the example\nSystem provider is set to SysMin. "
			"Halt the target to view any SysMin contents in ROV.\n");
	/* SysMin will only print to the console when you call flush or exit */
	System_flush();

	/* Start BIOS */
	BIOS_start();

	return (0);
}
