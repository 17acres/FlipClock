/*
 * hsd.c
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */
#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include <driverlib/adc.h>
#include <inc/hw_ints.h>
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <ti/sysbios/hal/Hwi.h>
#include "config/gpioConfig.h"
#include <ti/drivers/GPIO.h>

#include "defs.h"
#include "hsd.h"
#include "safetyBarrier.h"

static volatile uint32_t rawAdcValues[5];
volatile struct processedAdcVals analogData;
volatile uint16_t recentSelectedRawValue[1024];
volatile size_t valArrIdx;
volatile struct processedAdcVals maxAnalogData;
volatile struct processedAdcVals filteredAnalogData;
void processRawAdcValues();
void updateMaxVals();
void calculateFilteredVals();
static Hwi_Handle hwiHandle;

//TODO: do with interrupt and mailbox or smth
void adcIsr(UArg arg) {
    MAP_ADCIntClear(ADC0_BASE, 0);
    MAP_ADCSequenceDataGet(ADC0_BASE, 0, rawAdcValues);
    processRawAdcValues();
    updateMaxVals();
    calculateFilteredVals();
    //MAP_ADCProcessorTrigger(ADC0_BASE, 0);
    GPIO_toggle(LAUNCHPAD_LED_BLUE);
}

void initAdcHwi() {
    MAP_ADCIntEnable(ADC0_BASE, 0);
    hwiHandle = Hwi_create(INT_ADC0SS0, adcIsr, NULL, NULL);
}

void processRawAdcValues() {
    analogData.mcuTemp = 147.5 - (247.5 * ((float) rawAdcValues[4]) / 4096.0);
    analogData.hsdCurrents[0] = ((float) rawAdcValues[0]) * 3.3 / 4096 * HSD_VOLTS_PER_AMP;
    analogData.hsdCurrents[1] = ((float) rawAdcValues[1]) * 3.3 / 4096 * HSD_VOLTS_PER_AMP;
    analogData.hsdCurrents[2] = ((float) rawAdcValues[2]) * 3.3 / 4096 * HSD_VOLTS_PER_AMP;
    analogData.hsdCurrents[3] = ((float) rawAdcValues[3]) * 3.3 / 4096 * HSD_VOLTS_PER_AMP;

    recentSelectedRawValue[valArrIdx] = rawAdcValues[0];
    valArrIdx = (valArrIdx + 1) % 1024;
    if (++analogData.sampleCount == 3) {
        analogData.qf = true;
        clearMaxAdcVals();
    }

}

void updateMaxVals() {
    bool newMaxFound = false;
    for (int i = 0; i < 4; i++) {
        if (analogData.hsdCurrents[i] > maxAnalogData.hsdCurrents[i]) {
            maxAnalogData.hsdCurrents[i] = analogData.hsdCurrents[i];
            newMaxFound = true;
        }
    }
    if (analogData.mcuTemp > maxAnalogData.mcuTemp) {
        maxAnalogData.mcuTemp = analogData.mcuTemp;
        newMaxFound = true;
    }
    if (newMaxFound)
        maxAnalogData.sampleCount = analogData.sampleCount;
}

void calculateFilteredVals() {
    const float alpha=0.05;//10hz sampling rate
    const float oldFactor=1-alpha;
    for (int i = 0; i < 4; i++) {
        filteredAnalogData.hsdCurrents[i] = alpha*analogData.hsdCurrents[i]+oldFactor*filteredAnalogData.hsdCurrents[i];
    }

    filteredAnalogData.mcuTemp = alpha*analogData.mcuTemp+oldFactor*filteredAnalogData.mcuTemp;

}

void clearMaxAdcVals() {
    UInt key = Hwi_disable();

    maxAnalogData.hsdCurrents[0] = analogData.hsdCurrents[0];
    maxAnalogData.hsdCurrents[1] = analogData.hsdCurrents[1];
    maxAnalogData.hsdCurrents[2] = analogData.hsdCurrents[2];
    maxAnalogData.hsdCurrents[3] = analogData.hsdCurrents[3];
    maxAnalogData.mcuTemp = analogData.mcuTemp;
    maxAnalogData.sampleCount = analogData.sampleCount;
    maxAnalogData.qf = analogData.qf;

    Hwi_restore(key);
}
