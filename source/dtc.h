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
    MISSING_DIGIT_REQUEST,
    DTC_DIGIT_TASK_WDT_FAIL,
    DTC_LED_TASK_WDT_FAIL,
    DTC_OVERTEMPERATURE,
    DTC_DRIVER_0_PLAUSIBILITY,
    DTC_DRIVER_1_PLAUSIBILITY,
    DTC_DRIVER_2_PLAUSIBILITY,
    DTC_DRIVER_3_PLAUSIBILITY,
    DTC_HSD_0_FAULT,
    DTC_HSD_1_FAULT,
    DTC_HSD_2_FAULT,
    DTC_HSD_3_FAULT,
    DTC_HSD_0_AVERAGE_OVERCURRENT,
    DTC_HSD_1_AVERAGE_OVERCURRENT,
    DTC_HSD_2_AVERAGE_OVERCURRENT,
    DTC_HSD_3_AVERAGE_OVERCURRENT,
    DS1307_I2C_FAILURE,
    DTC_COUNT
} Dtc;
typedef enum DtcStatus {
    DTC_UNSET=0,
    DTC_PENDING,
    DTC_SET,
    DTC_HISTORY
} DtcStatus;
#define DTC_ERR_MESSAGE_LENGTH 20

typedef struct DtcStruct {
    DtcStatus status;
    uint8_t count;
    char errMessage[DTC_ERR_MESSAGE_LENGTH];
    uint32_t detailVal;
} DtcStruct;


typedef struct DtcDataFrame{
    DtcStruct dtcStructs[DTC_COUNT];
    uint32_t age;
    uint32_t dataValid;
}DtcDataFrame;

extern DtcDataFrame dtcData;

void setDtc(Dtc code, uint32_t detailVal, String errMessage);
DtcStatus getDtcStatus(Dtc code);
void clearDtc(Dtc code);
void printDtcs();
void saveDtcs();
void ageDtcs();
void countDownDtc(Dtc code);
#endif /* SOURCE_DTC_H_ */
