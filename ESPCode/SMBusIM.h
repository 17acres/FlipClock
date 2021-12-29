#ifndef SMBUS_IM_H_
#define SMBUS_IM_H_

#include <stdint.h>
#include <stdbool.h>

#define ESP_SMBus_ADDR 0x4B // NOT shifted

// SMBus command codes
enum SMBusCommandCodes
{
    // Read Byte
    CC_RB_REMOTE_COMMAND_REQUEST = 1,
    CC_RB_REMOTE_COMMAND_RESULT,

    // Write Byte
    CC_WB_REMOTE_COMMAND_RESULT,

    // Block Read
    CC_BR_SET_ALARM_TIME,
    CC_BR_SET_SEGMENT_SLEEP_WAKE_TIMES,
    CC_BR_INITIALIZE_NEW_SEGMENT,
    CC_BR_GET_TIME,

    // Block Write
    CC_BW_READ_ALARM_TIME,
    CC_BR_READ_SEGMENT_SLEEP_WAKE_TIMES,
    CC_BW_READ_SEG_WEAR,
    CC_BW_READ_DTCs,
    CC_BW_READ_STATUS,
    CC_BW_SET_EMAIL_TO_ADDR,
    CC_BW_SET_EMAIL_SUBJECT,
    CC_BW_SET_EMAIL_BODY,

    // No Action (remote command only)
    CC_RC_PAUSE_SEGMENTS,
    CC_RC_ENABLE_SEGMENTS,
    CC_RC_TEST_SEGMENTS,
    CC_RC_SEND_EMAIL,//use email not MQTT cuz its more legible

    CC_COUNT
};

enum SMBusStatusCodes
{
    SC_SUCCESS = 0,
    SC_UNAVAILABLE,
    SC_FAIL,
    SC_EMAIL_TO_ADDR_NOT_SET,
    SC_EMAIL_SUBJECT_NOT_SET,
    SC_EMAIL_BODY_NOT_SET
};

// CC_BR_SET_ALARM_TIME, CC_BW_READ_ALARM_TIME
typedef struct HourMinuteTimeStruct
{
    uint8_t hours;   // 0 to 23
    uint8_t minutes; // 0 to 59
} HourMinuteTimeStruct;

// CC_BR_SET_SEGMENT_SLEEP_WAKE_TIMES, CC_BR_READ_SEGMENT_SLEEP_WAKE_TIMES
typedef struct BR_SetReadSegmentSleepWakeTimesStruct
{
    HourMinuteTimeStruct sleepTime;
    HourMinuteTimeStruct wakeTime;
}BR_SetReadSegmentSleepWakeTimesStruct;

// CC_BR_INITIALIZE_NEW_SEGMENT
typedef struct SegWearItem{ 
    uint8_t serialNumber;
    uint32_t flipCount;
}SegWearItem;

typedef struct SegWearDigit{
    SegWearItem a;
    SegWearItem b;
    SegWearItem c;
    SegWearItem d;
    SegWearItem e;
    SegWearItem f;
    SegWearItem g;
    SegWearItem extra;
}SegWearDigit;

// CC_BW_READ_SEG_WEAR
typedef struct SegWearData{ 
    SegWearDigit hoursTens;
    SegWearDigit hoursOnes;
    SegWearDigit minutesTens;
    SegWearDigit minutesOnes;
    uint32_t dataValidCode;
}SegWearData;

// int64_t used for CC_BR_GET_TIME
#define BR_GET_TIME_UNAVAILABLE_BOOT INT64_MAX            // Sent if time is unavailable because bootup
#define BR_GET_TIME_UNAVAILABLE_NO_INTERNET INT64_MAX - 1 // Sent if time is unavailable because no internet connection

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

// CC_BW_READ_DTCs
typedef struct DtcDataFrame{
    DtcStruct dtcStructs[DTC_COUNT];
    uint32_t age;
    uint32_t dataValid;
}DtcDataFrame;

extern const char *dtcNames[];

//CC_BW_SET_EMAIL_TO_ADDR, CC_BW_SET_EMAIL_SUBJECT, CC_BW_SET_EMAIL_BODY char of variable length (up to 255 max)


// typedef union RemoteCommandRequestData
// {
//     struct RemoteCommandRequestDataStruct
//     {
//         uint8_t remoteCommandCode;
//         uint
//     };
//     uint8_t rawData[];
// } RemoteCommandRequestData;
#endif
