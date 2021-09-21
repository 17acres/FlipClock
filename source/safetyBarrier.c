/*
 * safetyBarrier.c
 *
 *  Created on: Aug 22, 2021
 *      Author: jnich
 */

#include "dtc.h"
#include "iodriver.h"
#include "utils/ledDefs.h"
#include <xdc/runtime/System.h>
#include "defs.h"
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/drivers/GPIO.h>
#include <xdc/runtime/Error.h>
#include <driverlib/adc.h>
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include "inc/hw_memmap.h"
#include <ti/drivers/watchdog/WatchdogTiva.h>
#include <ti/drivers/watchdog.h>
#include "config/watchdogConfig.h"
#include "safetyBarrier.h"
#include "hsd.h"
#include "dtc.h"
#include "ioDriver.h"
#include "digit.h"

typedef struct SafetyBarrierTaskParams {
    uint8_t ftti; //ms. If the task is periodic it has a rate here else disable the WDT if the rate of feeding is unknown
    uint32_t count;
    uint32_t lastCheckedCount;
    uint32_t lastCheckedTime;
    bool enableWDT; //disable WDT checking if not periodic
} SafetyBarrierTaskParams;

static SafetyBarrierTaskParams barrierTaskParams[SAFETY_BARRIER_TASK_LIST_SIZE];

static uint32_t calculateWDTPeriod() { //ms
    uint32_t calculatedPeriod = 0;

    for (int i = 0; i < SAFETY_BARRIER_TASK_LIST_SIZE; i++) {
        if ((barrierTaskParams[i].enableWDT) && (barrierTaskParams[i].ftti > calculatedPeriod)) {
            calculatedPeriod = barrierTaskParams[i].ftti;
        }
    }

    if (calculatedPeriod > 20) {
        return 20;
    } else {
        return calculatedPeriod;
    }
}

bool checkAnalogVals();
bool checkStuckDrivers();

void safetyBarrier(UArg arg0, UArg arg1) {
    //TODO: check current constantly and disable stuff if current continues, feed watchdog.
    EK_TM4C123GXL_initWatchdog();

    Watchdog_Handle wdtHandle;
    Watchdog_Params wdtParams;
    Watchdog_Params_init(&wdtParams);

    if (ENABLE_WDT) {
        wdtParams.resetMode = Watchdog_RESET_ON;
        wdtParams.debugStallMode = Watchdog_DEBUG_STALL_OFF;
    } else {
        wdtParams.resetMode = Watchdog_RESET_OFF;
        wdtParams.debugStallMode = Watchdog_DEBUG_STALL_ON;
    }

    wdtHandle = Watchdog_open(0, &wdtParams);
    uint32_t lastSampleTime = 0;
    while (true) {
        uint32_t key = Hwi_disable();
        bool wdtOk = true;

        uint32_t checkTime = Clock_getTicks();
        //TODO: log as DTCs
        for (int i = 0; i < SAFETY_BARRIER_TASK_LIST_SIZE; i++) {
            SafetyBarrierTaskParams * thisTask = &barrierTaskParams[i];
            if (thisTask->enableWDT) {
                if ((checkTime > (thisTask->lastCheckedTime + thisTask->ftti)) && (thisTask->count == thisTask->lastCheckedCount + 1)) { //better be incremented or else task is bad
                    thisTask->lastCheckedCount = thisTask->count;
                    thisTask->lastCheckedTime = checkTime;
                } else {
                    wdtOk = false;
                    switch (i) {
                        case SAFETY_BARRIER_TASK_DIGIT:
                            setDtc(DTC_DIGIT_TASK_WDT_FAIL, checkTime - thisTask->lastCheckedTime, "");
                            break;
                        case SAFETY_BARRIER_TASK_LEDS:
                            setDtc(DTC_DIGIT_TASK_WDT_FAIL, checkTime - thisTask->lastCheckedTime, "");
                            break;
                    }

                    break;
                }
            }
        }

        if (!checkAnalogVals())
            wdtOk = false;

        if (wdtOk) {
            Watchdog_clear(wdtHandle);
            Watchdog_setReload(wdtHandle, calculateWDTPeriod() * 80000 / 2); //wdt times out twice before resetting
        } else {
            printDtcs();
            saveDtcs();
            Watchdog_setReload(wdtHandle, 0); //reset now
        }
        Hwi_restore(key);

        if (checkTime > lastSampleTime + 100) {
            MAP_ADCProcessorTrigger(ADC0_BASE, 0); //collect new current data
            lastSampleTime = checkTime;
        }

        Task_sleep(calculateWDTPeriod() / 2);
    }
}

void setSafetyBarrierTaskFtti(SafetyBarrierTask task, uint8_t ftti) {
    uint32_t key = Hwi_disable();
    barrierTaskParams[task].ftti = ftti;
    Hwi_restore(key);
}
void feedSafetyBarrierWDT(SafetyBarrierTask task) {
    uint32_t key = Hwi_disable();
    barrierTaskParams[task].count = barrierTaskParams[task].count + 1;
    Hwi_restore(key);
}
void setSafetyBarrierWDTMode(SafetyBarrierTask task, bool enableWDT) {
    uint32_t key = Hwi_disable();
    barrierTaskParams[task].enableWDT = enableWDT;
    feedSafetyBarrierWDT(task); //Don't declare failure as soon as turned on
    Hwi_restore(key);

}

bool checkAnalogVals() {
    if (!analogData.qf)
        return true;

    if (analogData.mcuTemp > 80)
        return false;

    for (int i = 0; i < 3; i++) {
        if (analogData.hsdCurrents[i] > 8) {
            char detail[20];
            System_sprintf(detail, "Current %f A", analogData.hsdCurrents[i]);
            setDtc(DTC_HSD_FAULT, i, detail);
            return false; //vfault
        }

        if (filteredAnalogData.hsdCurrents[i] > 2) { //will this work with alarm ringing
            char detail[20];
            System_sprintf(detail, "Current %f A", filteredAnalogData.hsdCurrents[i]);
            setDtc(DTC_HSD_FAULT, i, detail);
            return false;
        }
    }
    if (!checkStuckDrivers())
        return false;
    return true;
}

bool checkStuckDriver(DigitStruct *digit) {

    if (((unionSeg((SegState) *getLastWrittenState(digit->ioAddr), (SegState) *getLastWrittenState(digit->ioAddr)).rawWord == segValOff.rawWord) || GPIO_read(
            digit->hsdDisableAddr))
        && analogData.hsdCurrents[digit->hsdCurrentIndex] > 0.2) {
        setDtc(digit->stuckDriverDtc, analogData.hsdCurrents[digit->hsdCurrentIndex] * 1000, "");
    }

    if (getDtcStatus(digit->stuckDriverDtc) == DTC_SET) {
        return false;
    } else {
        return true;
    }
}

bool checkStuckDrivers() { //Reboot if for two samples the requested state is no current but there is current. True means OK

    if (checkStuckDriver(&hoursTensStruct))
        return false;

    if (checkStuckDriver(&hoursOnesStruct))
        return false;

    if (checkStuckDriver(&minutesTensStruct))
        return false;

    if (checkStuckDriver(&minutesOnesStruct))
        return false;

    return true;
}

