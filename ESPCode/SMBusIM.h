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
    CC_BW_READ_SEG_WEAR,
    CC_BW_READ_DTCs,
    CC_BW_READ_STATUS,
    CC_BW_SEND_MQTT,

    // No Action (remote command only)
    CC_RC_PAUSE_SEGMENTS,
    CC_RC_ENABLE_SEGMENTS,
    CC_RC_TEST_SEGMENTS,

    CC_COUNT
};

enum SMBusStatusCodes
{
    SC_SUCCESS = 0,
    SC_UNAVAILABLE,
    SC_FAIL
};

typedef int64_t SMBusTimeType; // used for CC_BR_SET_ALARM_TIME, CC_BR_GET_TIME

typedef union BR_SetSegmentSleepWakeTimesStruct
{
    struct
    {
        uint8_t wakeHours;   // 0 to 23
        uint8_t wakeMinutes; // 0 to 59
        uint8_t sleepHours;
        uint8_t sleepMinutes;
    }; 
    uint8_t rawData[4];

}


// CC_BR_GET_TIME - just an int64_t
#define BR_GET_TIME_UNAVAILABLE_BOOT INT64_MAX            // Sent if time is unavailable because bootup
#define BR_GET_TIME_UNAVAILABLE_NO_INTERNET INT64_MAX - 1 // Sent if time is unavailable because no internet connection

typedef union RemoteCommandRequestData
{
    struct RemoteCommandRequestDataStruct
    {
        uint8_t remoteCommandCode;
        uint
    };
    uint8_t rawData[];
} RemoteCommandRequestData;
