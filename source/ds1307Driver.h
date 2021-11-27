/*
 * ds1307Driver.h
 *
 *  Created on: Nov 13, 2021
 *      Author: Dan
 */

#ifndef SOURCE_DS1307DRIVER_H_
#define SOURCE_DS1307DRIVER_H_
#include <xdc/std.h>
#include "defs.h"
#include <time.h>
bool isRtcValid();
void initDs1307();
bool setDs1307Time(time_t currentTime);
time_t readDs1307Time();
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
        uint8_t dayOfMonthTens :2;
        uint8_t garbage7:2;
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
        uint8_t sqwNegativeLogic:1;
    };
    uint8_t allData[8];
} Ds1307Data;
#endif /* SOURCE_DS1307DRIVER_H_ */
