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
#include "utils/eepromManager.h"

DtcStruct dtcStructs[DTC_COUNT];

const String dtcNames[DTC_COUNT] = {
        "Remote IO Module 0 I2C Failure",
        "Remote IO Module 1 I2C Failure",
        "Remote IO Module 2 I2C Failure",
        "Remote IO Module 3 I2C Failure",
        "Generic Remote IO Module I2C Failure",
        "Digit Timer Timeout. Stop request not sent?",
        "Missing digit request. Event arrived but no message",
        "Digit task WDT not fed",
        "LED task WDT not fed",
        "Temperature limit exceeded",
        "High-Side Driver or Motor Driver Plausibility Fail 0",
        "High-Side Driver or Motor Driver Plausibility Fail 1",
        "High-Side Driver or Motor Driver Plausibility Fail 2",
        "High-Side Driver or Motor Driver Plausibility Fail 3",
        "HSD 0 Multisense Fault Voltage Detected",
        "HSD 1 Multisense Fault Voltage Detected",
        "HSD 2 Multisense Fault Voltage Detected",
        "HSD 3 Multisense Fault Voltage Detected",
        "HSD 0 Average current limit exceeded",
        "HSD 1 Average current limit exceeded",
        "HSD 2 Average current limit exceeded",
        "HSD 3 Average current limit exceeded",
        "EXTRA. THIS MUST GET A WARNING" };
const uint8_t dtcMaturityThresholds[DTC_COUNT] = {
        3,
        3,
        3,
        3,
        3,
        2,
        1,
        1,
        1,
        1,
        2,
        2,
        2,
        2,
        2,
        2,
        2,
        2,
        3,
        3,
        3,
        3,
        1 }; //EXTRA. THIS MUST BE A WARNING

void setDtc(Dtc code, uint32_t detailVal, String errMessage) {
    if (dtcStructs[code].count++ == 0) {
        dtcStructs[code].status = DTC_PENDING;
    }

    if ((dtcStructs[code].count >= dtcMaturityThresholds[code]) && dtcStructs[code].status != DTC_SET) {
        dtcStructs[code].status = DTC_SET;
        //snapshot from first time fault occur
        dtcStructs[code].errMessage = errMessage;
        dtcStructs[code].detailVal = detailVal;
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

void countDownDtc(Dtc code) {
    if (dtcStructs[code].count > 1)
        --dtcStructs[code].count;

    if (dtcStructs[code].count == 0) {
        dtcStructs[code].errMessage = "";
        dtcStructs[code].detailVal = 0;
        dtcStructs[code].status = DTC_PENDING;
    } else if (dtcStructs[code].count < dtcMaturityThresholds[code]) {
        dtcStructs[code].status = DTC_UNSET;
    }
}

void printDtcs() {
    GPIO_write(LAUNCHPAD_LED_RED, FALSE);
    System_printf("Current");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcStructs[i].status == DTC_SET) {
            System_printf("DTC \"%s\" : %d set, count %u. Message: \"%s\"\n", dtcNames[i], dtcStructs[i].detailVal, dtcStructs[i].count,
                          dtcStructs[i].errMessage);
            GPIO_write(LAUNCHPAD_LED_RED, TRUE);
        }
    }

    uint32_t dtcAge;
    readEEPROM(&dtcAge, EEPROMBLOCK_DTC_HISTORY_AGE);
    System_printf("History: Age %d\n", dtcAge);
    DtcStruct oldDtcStructs[DTC_COUNT];
    readEEPROM((uint32_t *) &oldDtcStructs, EEPROMBLOCK_DTC_HISTORY);
    for (int i = 0; i < DTC_COUNT; i++) {
        if (oldDtcStructs[i].status == DTC_SET) {
            System_printf("DTC \"%s\" : %d set, count %u. Message: \"%s\"\n", dtcNames[i], oldDtcStructs[i].detailVal, oldDtcStructs[i].count,
                          oldDtcStructs[i].errMessage);
            GPIO_write(LAUNCHPAD_LED_RED, TRUE);
        }
    }
    System_flush();
}
void saveDtcs() {
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcStructs[i].status == DTC_SET) {
            writeEEPROM((uint32_t *) &dtcStructs, EEPROMBLOCK_DTC_HISTORY);
            uint32_t dtcAge = 0;
            writeEEPROM(&dtcAge, EEPROMBLOCK_DTC_HISTORY_AGE);
            break;
        }
    }
}

void ageDtcs() {
    uint32_t dtcAge;
    readEEPROM(&dtcAge, EEPROMBLOCK_DTC_HISTORY_AGE);
    dtcAge = dtcAge + 1;
    writeEEPROM(&dtcAge, EEPROMBLOCK_DTC_HISTORY_AGE);
}
