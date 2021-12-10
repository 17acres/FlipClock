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
#include "config/serialConfig.h"
#include <inc/hw_types.h>
#include <inc/hw_i2c.h>
//Not reentrant or anything fancy
//https://datasheets.maximintegrated.com/en/ds/DS1307.pdf

//time is stored in UTC
#define RTC_ADDRESS 0x68
bool dataValid = false;
bool isRtcValid() {
    return dataValid;
}

bool writeDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length);
bool readDs1307Data(uint8_t rtcAddress, uint8_t startAddress, uint8_t *data, uint8_t length);

void initDs1307() {
    Ds1307Data data;
    bool result = readDs1307Data(RTC_ADDRESS, 0x00, data.allData, 8);
}

bool setDs1307Time(time_t currentTime) { //call this on the second. not sure if it does dst right
    Ds1307Data rtcData;
    rtcData.clockHalt = false;
    rtcData.sqwEn = false;
    rtcData.twelveHourMode = false;
    struct tm time = convertToGmtTime(currentTime);
    rtcData.secondsOnes = time.tm_sec % 10;
    rtcData.secondsTens = time.tm_sec / 10;
    rtcData.minutesOnes = time.tm_min % 10;
    rtcData.minutesTens = time.tm_min / 10;
    rtcData.hoursOnes = time.tm_hour % 10;
    rtcData.hoursTens = time.tm_hour / 10;
    rtcData.dayOfWeek = time.tm_wday + 1;
    rtcData.dayOfMonthOnes = (time.tm_mday ) % 10;
    rtcData.dayOfMonthTens = (time.tm_mday ) / 10;
    rtcData.monthOnes = (time.tm_mon + 1) % 10;
    rtcData.monthTens = (time.tm_mon + 1) / 10;
    rtcData.yearOnes = (time.tm_year - 100) % 10; //convert to 2000 epoch
    rtcData.yearTens = (time.tm_year - 100) / 10;
    return writeDs1307Data(RTC_ADDRESS, 0x00, rtcData.allData, 8);
}

time_t readDs1307Time() {
    Ds1307Data rtcData;
    bool result = readDs1307Data(RTC_ADDRESS, 0x00, rtcData.allData, 8);
    if (!result) {
        dataValid = false;
        return 0;
    }

    struct tm time;
    time.tm_sec = rtcData.secondsTens * 10 + rtcData.secondsOnes;
    time.tm_min = rtcData.minutesTens * 10 + rtcData.minutesOnes;
    time.tm_hour = rtcData.hoursTens * 10 + rtcData.hoursOnes;
    time.tm_mday = rtcData.dayOfMonthTens * 10 + rtcData.dayOfMonthOnes;
    time.tm_mon = rtcData.monthTens * 10 + rtcData.monthOnes - 1;
    time.tm_year = rtcData.yearTens * 10 + rtcData.yearOnes + 100;//convert to 1900 epoch
    time.tm_isdst = 0;
    dataValid = (!rtcData.clockHalt) && (time.tm_year > 30); //bit 7 being cleared means it is running and probably has time, also check if year is above 0

    time_t timestamp=mkgmtime(time);

    return timestamp;
}



bool waitAndCheckOk(String dtcMessage) {
    while (MAP_I2CMasterBusy(I2C0_BASE)) {
        Task_yield();
    }
    if (MAP_I2CMasterErr(I2C0_BASE)||(HWREG(I2C0_BASE + I2C_O_MCS)&I2C_MCS_CLKTO)) {//error or timeout
        setDtc(DS1307_I2C_FAILURE, HWREG(I2C0_BASE + I2C_O_MCS), dtcMessage);
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_BURST_SEND_ERROR_STOP);
        if ((getDtcStatus(DS1307_I2C_FAILURE) == DTC_PENDING) || (getDtcStatus(DS1307_I2C_FAILURE) == DTC_SET)) {
            resetDs1307I2C();
        }
        return false;
    }
    countDownDtc(DS1307_I2C_FAILURE);
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
        data[length - 1] = MAP_I2CMasterDataGet(I2C0_BASE);
    } else {
        MAP_I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_SINGLE_RECEIVE);
        result = waitAndCheckOk("rx only byte");
        if (!result)
            return false;
        data[0] = MAP_I2CMasterDataGet(I2C0_BASE);
    }
    return true;
}
