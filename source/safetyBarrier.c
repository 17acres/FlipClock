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
    uint32_t ftti; //ms. If the task is periodic it has a rate here else disable the WDT if the rate of feeding is unknown
    uint32_t count;
    uint32_t lastCheckedCount;
    uint32_t lastCheckedTime;
    bool enableWDT; //disable WDT checking if not periodic
} SafetyBarrierTaskParams;

SafetyBarrierTaskParams barrierTaskParams[SAFETY_BARRIER_TASK_LIST_SIZE];
uint32_t checkTime;

static uint32_t calculateWDTPeriod() { //ms
    uint32_t calculatedPeriod = 20;

    for (int i = 0; i < SAFETY_BARRIER_TASK_LIST_SIZE; i++) {
        if ((barrierTaskParams[i].enableWDT) && (barrierTaskParams[i].ftti < calculatedPeriod)) {
            calculatedPeriod = barrierTaskParams[i].ftti;
        }
    }
    return calculatedPeriod;
}

bool checkAnalogValsOk();
bool checkAllDriversOk();

void safetyBarrier(UArg arg0, UArg arg1) {
    //TODO: check current constantly and disable stuff if current continues, feed watchdog.
    EK_TM4C123GXL_initWatchdog();

    Watchdog_Handle wdtHandle;
    Watchdog_Params wdtParams;
    Watchdog_Params_init(&wdtParams);

    if (ENABLE_WDT) {
        wdtParams.resetMode = Watchdog_RESET_ON;
        wdtParams.debugStallMode = Watchdog_DEBUG_STALL_ON;//TODO: Watchdog_DEBUG_STALL_OFF;
    } else {
        wdtParams.resetMode = Watchdog_RESET_OFF;
        wdtParams.debugStallMode = Watchdog_DEBUG_STALL_ON;
    }

    wdtHandle = Watchdog_open(0, &wdtParams);
    uint32_t lastSampleTime = 0;
    while (true) {
        uint32_t key = Hwi_disable();
        bool wdtOk = true;

        checkTime = Clock_getTicks();
        //TODO: log as DTCs
        for (int i = 0; i < SAFETY_BARRIER_TASK_LIST_SIZE; i++) {
            SafetyBarrierTaskParams * thisTask = &barrierTaskParams[i];
            if (thisTask->enableWDT) {
                if (thisTask->count == (thisTask->lastCheckedCount + 1)) { //better be incremented or else task is bad
                    thisTask->lastCheckedCount = thisTask->count;
                    thisTask->lastCheckedTime = checkTime;
                } else if (checkTime > (thisTask->lastCheckedTime + thisTask->ftti)){
                    wdtOk = false;
                    switch (i) {
                        case SAFETY_BARRIER_TASK_DIGIT:
                            setDtc(DTC_DIGIT_TASK_WDT_FAIL, checkTime - thisTask->lastCheckedTime, "");
                            break;
                        case SAFETY_BARRIER_TASK_LEDS:
                            setDtc(DTC_LED_TASK_WDT_FAIL, checkTime - thisTask->lastCheckedTime, "");
                            break;
                    }

                    break;
                }
            }
        }

        if (!checkAnalogValsOk())
            wdtOk = false;

        if (wdtOk) {
            Watchdog_clear(wdtHandle);
            Watchdog_setReload(wdtHandle, calculateWDTPeriod() * 80000); //wdt times out twice before resetting
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

void setSafetyBarrierTaskFtti(SafetyBarrierTask task, uint32_t ftti) {
    uint32_t key = Hwi_disable();
    barrierTaskParams[task].ftti = ftti;
    Hwi_restore(key);
}
void feedSafetyBarrierWDT(SafetyBarrierTask task) {
    uint32_t key = Hwi_disable();
    if(barrierTaskParams[task].count==barrierTaskParams[task].lastCheckedCount)
        barrierTaskParams[task].count = barrierTaskParams[task].count + 1;//WDT will fail if overfed
    Hwi_restore(key);
}
void setSafetyBarrierWDTMode(SafetyBarrierTask task, bool enableWDT) {
    uint32_t key = Hwi_disable();
    barrierTaskParams[task].enableWDT = enableWDT;
    feedSafetyBarrierWDT(task); //Don't declare failure as soon as turned on
    Hwi_restore(key);

}

bool checkAnalogValsOk() {
    static uint16_t lastCheckedSample=0;
    if(analogData.sampleCount==lastCheckedSample)
        return true;
    else
        ++lastCheckedSample;

    if (!analogData.qf)
        return true;

    if (analogData.mcuTemp > 80)
        return false;

    if (!checkAllDriversOk())
        return false;
    return true;
}

bool isHsdOrMotorDriverOk(DigitStruct *digit) {
    bool isSegmentCoastOrBrake= (unionSeg((SegState) *getLastWrittenState(digit->ioAddr), (SegState) *getLastWrittenState(digit->ioAddr)).rawWord
            == segValOff.rawWord);

    if ((isSegmentCoastOrBrake || GPIO_read(digit->hsdDisableAddr)) &&analogData.hsdCurrents[digit->hsdCurrentIndex] > 0.2) {
        setDtc(digit->driverPlausibilityDtc, analogData.hsdCurrents[digit->hsdCurrentIndex] * 1000, "mA when driver off, short circuit");
    } else if(!isSegmentCoastOrBrake && !GPIO_read(digit->hsdDisableAddr) && analogData.hsdCurrents[digit->hsdCurrentIndex] < 0.2) {
        setDtc(digit->driverPlausibilityDtc, analogData.hsdCurrents[digit->hsdCurrentIndex] * 1000, "mA when driver on, open circuit");
    }

    if (analogData.hsdCurrents[digit->hsdCurrentIndex] > 7) {
        setDtc(digit->hsdFaultDtc, analogData.hsdCurrents[digit->hsdCurrentIndex] * 1000, "mA equivalent V_fault");
    } else {
        countDownDtc(digit->hsdFaultDtc);
        //nest so we don't set both DTCs in fault
        if (filteredAnalogData.hsdCurrents[digit->hsdCurrentIndex] > 1) { //will this work with alarm ringing
            setDtc(digit->overcurrentAverageDtc, filteredAnalogData.hsdCurrents[digit->hsdCurrentIndex] * 1000, "mA average current");
        } else {
            countDownDtc(digit->overcurrentAverageDtc);
        }
    }

    if (getDtcStatus(digit->driverPlausibilityDtc) == DTC_SET)
        return false;

    if (getDtcStatus(digit->hsdFaultDtc) == DTC_SET)
        return false; //v_fault

    if (getDtcStatus(digit->overcurrentAverageDtc) == DTC_SET)
        return false; //average overcurrent
    return true;
}

bool checkAllDriversOk() { //Reboot if for two samples the requested state is no current but there is current. True means OK

    if (!isHsdOrMotorDriverOk(&hoursTensStruct))
        return false;

    if (!isHsdOrMotorDriverOk(&hoursOnesStruct))
        return false;

    if (!isHsdOrMotorDriverOk(&minutesTensStruct))
        return false;

    if (!isHsdOrMotorDriverOk(&minutesOnesStruct))
        return false;

    return true;
}

