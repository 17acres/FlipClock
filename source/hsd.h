/*
 * hsd.h
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */

#ifndef SOURCE_HSD_H_
#define SOURCE_HSD_H_

#include "../ESPCode/SMBusIM.h"

//processedAdcVals in SMBusIM

extern volatile ProcessedAdcVals maxAnalogData;
extern volatile ProcessedAdcVals filteredAnalogData;
extern volatile ProcessedAdcVals analogData;
void adcIsr(UArg arg);
void initAdcHwi();
void clearMaxAdcVals();
#endif /* SOURCE_HSD_H_ */
