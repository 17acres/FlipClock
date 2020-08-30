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

#include "hsd.h"

volatile uint32_t rawAdcValues[5];
volatile struct processedAdcVals analogData;

Hwi_Handle hwiHandle;

//do with interrupt and mailbox or smth
void adcIsr(UArg arg) {
	MAP_ADCIntClear(ADC0_BASE, 0);
	MAP_ADCSequenceDataGet(ADC0_BASE, 0, rawAdcValues);
	processRawAdcValues();
	MAP_ADCProcessorTrigger(ADC0_BASE, 0);
}

void initAdcHwi() {
	MAP_ADCIntEnable(ADC0_BASE, 0);
	hwiHandle = Hwi_create(INT_ADC0SS0, adcIsr, NULL, NULL);
}

void processRawAdcValues() {
	analogData.mcuTemp = 147.5 - (247.5 * ((double) rawAdcValues[4]) / 4096.0);
	analogData.hsdCurrents[0] = ((double) rawAdcValues[0]) * 3.3 / 4096;
	analogData.hsdCurrents[1] = ((double) rawAdcValues[1]) * 3.3 / 4096;
	analogData.hsdCurrents[2] = ((double) rawAdcValues[2]) * 3.3 / 4096;
	analogData.hsdCurrents[3] = ((double) rawAdcValues[3]) * 3.3 / 4096;
}
