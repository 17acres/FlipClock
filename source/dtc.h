/*
 * dtc.h
 *
 *  Created on: Aug 30, 2020
 *      Author: Dan
 */

#ifndef SOURCE_DTC_H_
#define SOURCE_DTC_H_
#include <xdc/std.h>

#include "../../ESPCode/SMBusIM.h" //DTC structs there

extern DtcDataFrame dtcData;

void setDtc(Dtc code, uint32_t detailVal, char *errMessage);
DtcStatus getDtcStatus(Dtc code);
void clearDtc(Dtc code);
void printDtcs();
void saveDtcs();
void ageDtcs();
void countDownDtc(Dtc code);
#endif /* SOURCE_DTC_H_ */
