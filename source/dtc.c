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
#include <string.h>
#include "ioDriver.h"
#include "config/gpioConfig.h"
#include "utils/eepromManager.h"

DtcDataFrame dtcData;
static DtcDataFrame oldDtcData;
static bool hasReadDtcsOnStartup = false;

//dtcNames in SMBusIM.h

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
        4,
        4,
        4,
        4,
        5,
        5,
        5,
        5,
        5,
        5,
        5,
        5,
        3,
        1 }; //EXTRA. THIS MUST BE A WARNING

void initDtc(){
    dtcData.dataValid=DATA_VALID_DTC;
}

void setDtc(Dtc code, uint32_t detailVal, String errMessage) {
    if (dtcData.dtcStructs[code].count++ == 0) {
        dtcData.dtcStructs[code].status = DTC_PENDING;
    }

    if ((dtcData.dtcStructs[code].count >= dtcMaturityThresholds[code]) && dtcData.dtcStructs[code].status != DTC_SET) {
        dtcData.dtcStructs[code].status = DTC_SET;
        //snapshot from first time fault occur
        strncpy(dtcData.dtcStructs[code].errMessage, errMessage, DTC_ERR_MESSAGE_LENGTH);
        dtcData.dtcStructs[code].detailVal = detailVal;
        //TODO: add snapshot data
    }
}

DtcStatus getDtcStatus(Dtc code) {
    return dtcData.dtcStructs[code].status;
}
void clearDtc(Dtc code) {
    dtcData.dtcStructs[code].count = 0;
    dtcData.dtcStructs[code].status = DTC_HISTORY;
}

void countDownDtc(Dtc code) {
    if (dtcData.dtcStructs[code].count >= 1) {
        --dtcData.dtcStructs[code].count;
        if (dtcData.dtcStructs[code].count == 0) {
            dtcData.dtcStructs[code].status = DTC_HISTORY;
        } else if (dtcData.dtcStructs[code].count < dtcMaturityThresholds[code]) {
            dtcData.dtcStructs[code].status = DTC_PENDING;
        }
    }
}

void printDtcs() {
    GPIO_write(LAUNCHPAD_LED_RED, FALSE);
    System_printf("\n*************DTC STATUS**************\n**********Current**********\n");
    System_printf("Set:\n");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcData.dtcStructs[i].status == DTC_SET) {
            System_printf("DTC \"%s\" (%u) set, count %u, detail value %d. Message: \"%s\"\n", dtcNames[i], i, dtcData.dtcStructs[i].count, dtcData.dtcStructs[i].detailVal,
                          dtcData.dtcStructs[i].errMessage);
        }
    }
    System_printf("\nPending:\n");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcData.dtcStructs[i].status == DTC_PENDING) {
            System_printf("DTC \"%s\" (%u) pending, count %u, detail value %d. Message: \"%s\"\n", dtcNames[i], i, dtcData.dtcStructs[i].count, dtcData.dtcStructs[i].detailVal,
                          dtcData.dtcStructs[i].errMessage);
        }
    }
    System_printf("\nHistory:\n");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcData.dtcStructs[i].status == DTC_HISTORY) {
            System_printf("DTC \"%s\" (%u) in history, count %u, detail value %d. Message: \"%s\"\n", dtcNames[i], i, dtcData.dtcStructs[i].count,
                          dtcData.dtcStructs[i].detailVal, dtcData.dtcStructs[i].errMessage);
        }
    }

    if (!hasReadDtcsOnStartup) {
        readEEPROM((uint32_t *) &oldDtcData, EEPROMBLOCK_DTC);

        if(oldDtcData.dataValid!=DATA_VALID_DTC){
            System_printf("Saved DTC Data Invalid, resetting\n");
            System_flush();
            memset(&oldDtcData, 0, sizeof(DtcDataFrame));
            oldDtcData.dataValid=DATA_VALID_DTC;
            writeEEPROM((uint32_t *) &oldDtcData, EEPROMBLOCK_DTC);
        }

        hasReadDtcsOnStartup = true;
    }
    System_printf("\n*******Previous Boot: Age %d*****\n", oldDtcData.age);
    System_printf("Set:\n");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (oldDtcData.dtcStructs[i].status == DTC_SET) {
            System_printf("DTC \"%s\" (%u) set, count %u, detail value %d. Message: \"%s\"\n", dtcNames[i], i, oldDtcData.dtcStructs[i].count,
                          oldDtcData.dtcStructs[i].detailVal, oldDtcData.dtcStructs[i].errMessage);
        }
    }
    System_printf("\nPending:\n");
    for (int i = 0; i < DTC_COUNT; i++) {
        if (oldDtcData.dtcStructs[i].status == DTC_PENDING) {
            System_printf("DTC \"%s\" (%u) pending, count %u, detail value %d. Message: \"%s\"\n", dtcNames[i], i, oldDtcData.dtcStructs[i].count,
                          oldDtcData.dtcStructs[i].detailVal, oldDtcData.dtcStructs[i].errMessage);
        }
    }
    System_flush();
}
void saveDtcs() {
    for (int i = 0; i < DTC_COUNT; i++) {
        if (dtcData.dtcStructs[i].status == DTC_SET || dtcData.dtcStructs[i].status == DTC_PENDING) {
            dtcData.age=0;
            writeEEPROM((uint32_t *) &dtcData, EEPROMBLOCK_DTC);
            break;
        }
    }
}

void ageDtcs() {

    readEEPROM((uint32_t *)&oldDtcData, EEPROMBLOCK_DTC);
    oldDtcData.age = oldDtcData.age + 1;
    writeEEPROM((uint32_t *)&oldDtcData, EEPROMBLOCK_DTC);
}
