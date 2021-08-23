/*
 * hsd.h
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */

#ifndef SOURCE_HSD_H_
#define SOURCE_HSD_H_

volatile struct processedAdcVals {
    float hsdCurrents[4];
    float mcuTemp;
    bool qf;
    uint16_t sampleCount;
} analogData;

void adcIsr(UArg arg);
void initAdcHwi();
void clearMaxAdcVals();
#endif /* SOURCE_HSD_H_ */
