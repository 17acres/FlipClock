/*
 * hsd.c
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */
#include <driverlib/adc.h>
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>

#include "hsd.h"

uint32_t adcValuesHSD[4];

void updateADCValues(void){
	MAP_ADCSequenceDataGet(ADC0_BASE, 2, adcValuesHSD);
}
