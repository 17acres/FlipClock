/*
 * ds1307Driver.c
 *
 *  Created on: Nov 13, 2021
 *      Author: Dan
 */

#include "ds1307Driver.h"
#include <stdint.h>
#include <stdbool.h>
#include <driverlib/rom.h>
#include <driverlib/rom_map.h>
#include <driverlib/i2c.h>
#include <ti/sysbios/knl/Task.h>
#include <time.h>
#include "timeManager.h"
#include "dtc.h"
//Not reentrant or anything fancy
//https://datasheets.maximintegrated.com/en/ds/DS1307.pdf

//time is stored in UTC
#define RTC_ADDRESS 0x68
bool oscEnabled = false;
bool isRtcValid() {
    return oscEnabled;
}

//TODO: might be in the wrong order, implementation-dependent
typedef union Ds1307Data {
    struct {
        //byte 0
        uint8_t secondsOnes :4;
        uint8_t secondsTens :3;
        uint8_t clockHalt :1;
        //byte 1
        uint8_t minutesOnes :4;
        uint8_t minutesTens :3;
        uint8_t garbage1 :1;
        //byte 2
        uint8_t hoursOnes :4;
        uint8_t hoursTens :2;
        uint8_t twelveHourMode :1;
        uint8_t garbage2 :1;
        //byte 3
        uint8_t dayOfWeek :3;
        uint8_t garbage3 :5;
        //byte 4
        uint8_t dayOfMonthOnes :4;
        uint8_t dayOfMonthTens :4;
        //byte 5
        uint8_t monthOnes :4;
        uint8_t monthTens :1;
        uint8_t garbage6 :3;
        //byte 6
        uint8_t yearOnes :4;
        uint8_t yearTens :4;
        //byte 7
        uint8_t sqwRateSelect :2;
        uint8_t garbage4 :2;
        uint8_t sqwEn :1;
        uint8_t garbage5 :2;
        uint8_t sqwNegativeLogic;
    };
    uint8_t allData[8];
} Ds1307Data;

bool writeDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length);
bool readDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length);

void initDs1307() {
    Ds1307Data data;
    bool result = readDs1307Data(RTC_ADDRESS, 0x00, data.allData, 8);
    if ((!result)) { //bit 7 means it is running and probably has time
        if (!data.clockHalt) {
            oscEnabled = true;
        }
    }
}

bool setDs1307Time(time_t currentTime) { //call this on the second. not sure if it does dst right
    Ds1307Data rtcData;
    rtcData.clockHalt = false;
    rtcData.sqwEn=false;
    rtcData.twelveHourMode=false;
    struct tm time = *gmtime(&currentTime);
    rtcData.secondsOnes = time.tm_sec % 10;
    rtcData.secondsTens = time.tm_sec / 10;
    rtcData.minutesOnes = time.tm_min % 10;
    rtcData.minutesTens = time.tm_min / 10;
    rtcData.hoursOnes = time.tm_hour % 10;
    rtcData.hoursTens = time.tm_hour / 10;
    rtcData.dayOfWeek = time.tm_wday + 1;
    rtcData.dayOfMonthOnes = (time.tm_mday + 1) % 10;
    rtcData.dayOfMonthTens = (time.tm_mday + 1) / 10;
    rtcData.monthOnes = (time.tm_mon + 1) % 10;
    rtcData.monthTens = (time.tm_mon + 1) / 10;
    rtcData.yearOnes = (time.tm_year - 30) % 10;//year relative to 1970
    rtcData.yearTens = (time.tm_year - 30) / 10;
    return writeDs1307Data(RTC_ADDRESS, 0x00, rtcData.allData, 8);
}

time_t readDs1307Time() {
    Ds1307Data rtcData;
    bool result = readDs1307Data(RTC_ADDRESS, 0x00, rtcData.allData, 8);
    if (!result)
        return 0;
    struct tm time;
    time.tm_sec = rtcData.secondsTens * 10 + rtcData.secondsOnes;
    time.tm_min = rtcData.minutesTens * 10 + rtcData.minutesOnes;
    time.tm_hour = rtcData.hoursTens * 10 + rtcData.hoursOnes;
    time.tm_mday = rtcData.dayOfMonthTens * 10 + rtcData.dayOfMonthOnes - 1;
    time.tm_mon = rtcData.monthTens * 10 + rtcData.monthOnes - 1;
    time.tm_year = rtcData.yearTens * 10 + rtcData.yearOnes + 30;
    time.tm_isdst = 0;

    _tz.daylight = false;
    _tz.timezone = 0; //go to UTC
    time_t timestamp = mktime(&time); //wday and yday are ignored but it assumes local time
    initTimeZone();
    return timestamp;
}

bool waitAndCheckOk(String dtcMessage) {
    while (MAP_I2CMasterBusy(I2C0_BASE)) {
        Task_yield();
    }
    if (MAP_I2CMasterErr(I2C0_BASE)) {
        setDtc(DS1307_I2C_FAILURE, MAP_I2CMasterErr(I2C0_BASE), dtcMessage);
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_ERROR_STOP);
        return false;
    }
    return true;
}

bool writeDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length) {
    MAP_I2CMasterSlaveAddrSet(I2C0_BASE, 0x68, false);
    MAP_I2CMasterDataPut(I2C0_BASE, startAddress);
    MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_START);
    bool result = waitAndCheckOk("sending address");
    if (!result)
        return false;
    for (int i = 0; i < length - 1; i++) {
        MAP_I2CMasterDataPut(I2C0_BASE, data[i]);
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_CONT);
        result = waitAndCheckOk("sending bytes");
        if (!result)
            return false;
    }

    MAP_I2CMasterDataPut(I2C0_BASE, data[length - 1]);
    MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_FINISH);
    result = waitAndCheckOk("sending last");
    if (!result)
        return false;
    return true;
}

bool readDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length) {
    MAP_I2CMasterSlaveAddrSet(I2C0_BASE, 0x68, false); //write ptr
    MAP_I2CMasterDataPut(I2C0_BASE, startAddress);
    MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_START);
    bool result = waitAndCheckOk("sending address");
    if (!result)
        return false;
    MAP_I2CMasterSlaveAddrSet(I2C0_BASE, 0x68, true); //read data
    if (length > 1) {
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_RECEIVE_START);
        result = waitAndCheckOk("rx first of multiple");
        if (!result)
            return false;
        data[0] = MAP_I2CMasterDataGet(I2C0_BASE);
        if (length > 2) {
            for (int i = 1; i < length - 1; i++) {
                MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_RECEIVE_CONT);
                result = waitAndCheckOk("rx more of multiple");
                if (!result)
                    return false;
                data[i] = MAP_I2CMasterDataGet(I2C0_BASE);
            }
        }

        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_RECEIVE_FINISH);
        result = waitAndCheckOk("rx last of multiple");
        if (!result)
            return false;
        data[1] = MAP_I2CMasterDataGet(I2C0_BASE);
    } else {
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_SINGLE_RECEIVE);
        result = waitAndCheckOk("rx only byte");
        if (!result)
            return false;
        data[0] = MAP_I2CMasterDataGet(I2C0_BASE);
    }
    return true;
}
