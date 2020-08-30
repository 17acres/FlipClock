/*
 * hsd.h
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */

#ifndef SOURCE_HSD_H_
#define SOURCE_HSD_H_


volatile uint32_t rawAdcValues[5];

volatile struct processedAdcVals {
	double hsdCurrents[4];
	double mcuTemp;
} analogData;


void adcIsr(UArg arg);
void initAdcHwi();
void processRawAdcValues();

#endif /* SOURCE_HSD_H_ */
