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
    float mcuTemp;//deg c
    bool qf;
    uint16_t sampleCount;
} analogData;
extern volatile struct processedAdcVals maxAnalogData;
extern volatile struct processedAdcVals filteredAnalogData;
extern volatile struct processedAdcVals analogData;
void adcIsr(UArg arg);
void initAdcHwi();
void clearMaxAdcVals();
#endif /* SOURCE_HSD_H_ */
