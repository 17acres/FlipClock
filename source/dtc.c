/*
 * dtc.c
 *
 *  Created on: Aug 30, 2020
 *      Author: Dan
 */

#include "dtc.h"
#include <stdint.h>
#include <stdbool.h>
#include <xdc/std.h>
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/BIOS.h>
#include <inc/hw_ints.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include <driverlib/gpio.h>
#include <ti/drivers/GPIO.h>
#include "ioDriver.h"
#include "config/gpioConfig.h"

DtcStruct dtcStructs[DTC_COUNT];

const String dtcNames[DTC_COUNT] = {
		"Remote IO Module 0 Failure",
		"Remote IO Module 1 Failure",
		"Remote IO Module 2 Failure",
		"Remote IO Module 3 Failure",
		"Generic IO Failure" };
const uint8_t dtcMaturityThresholds[DTC_COUNT] = { 3, 3, 3, 3 };

void setDtc(Dtc code, uint32_t detailVal, String errMessage) {
	if (dtcStructs[code].count++ == 0) {
		dtcStructs[code].status = DTC_PENDING;
	}

	dtcStructs[code].errMessage = errMessage;
	if (dtcStructs[code].count == dtcMaturityThresholds[code]) {
		dtcStructs[code].status = DTC_SET;
	}
}
DtcStatus getDtcStatus(Dtc code) {
	return dtcStructs[code].status;
}
void clearDtc(Dtc code) {
	dtcStructs[code].count = 0;
	dtcStructs[code].status = DTC_UNSET;
	dtcStructs[code].errMessage = "";
	dtcStructs[code].detailVal = 0;
}
void printDtcs() {
	GPIO_write(LAUNCHPAD_LED_RED, FALSE);

	for (int i = 0; i < DTC_COUNT; i++) {
		if (dtcStructs[i].status == DTC_SET) {
			System_printf("DTC \"%s\" : %d set, count %u. Message: \"%s\"\n", dtcNames[i], dtcStructs[i].detailVal, dtcStructs[i].count,
					dtcStructs[i].errMessage);
			GPIO_write(LAUNCHPAD_LED_RED, TRUE);
		}
	}
	System_flush();
}
