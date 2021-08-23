/*
 * dtc.h
 *
 *  Created on: Aug 30, 2020
 *      Author: Dan
 */

#ifndef SOURCE_DTC_H_
#define SOURCE_DTC_H_
#include <xdc/std.h>

typedef enum Dtc {
    IO_0_FAIL_DTC = 0,
    IO_1_FAIL_DTC,
    IO_2_FAIL_DTC,
    IO_3_FAIL_DTC,
    IO_GENERIC_FAIL_DTC,
    DIGIT_TIMER_TIMEOUT,
    DTC_COUNT
} Dtc;
typedef enum DtcStatus {
    DTC_UNSET,
    DTC_PENDING,
    DTC_SET
} DtcStatus;

typedef struct DtcStruct {
    DtcStatus status;
    uint8_t count;
    String errMessage;
    uint32_t detailVal;
} DtcStruct;

void setDtc(Dtc code, uint32_t detailVal, String errMessage);
DtcStatus getDtcStatus(Dtc code);
void clearDtc(Dtc code);
void printDtcs();
#endif /* SOURCE_DTC_H_ */
