/*
 * timeUtils.c
 *
 *  Created on: Nov 13, 2021
 *      Author: Dan
 */

#include "timeManager.h"
#include "utils/ioDefs.h"
#include "digit.h"
#include "ds1307Driver.h"
#include <stdint.h>
#include <time.h>
#include <string.h>
#include  <ti/sysbios/hal/Seconds.h>
#include <xdc/std.h>
#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

//since Seconds is a uint32 that means you have until 2106 not 2038

time_t getTimestamp() {
    return Seconds_get();
}

struct tm convertToLocalTime(time_t timestamp) { //tm year is relative to 1970
    uint32_t key = Hwi_disable();

    //Account for DST
    long baseTz = _tz.timezone;
    struct tm rawLocal = *__localtime64(&timestamp); //current localtime without DST
    //see DST math.xlsx
    if (rawLocal.tm_mon == 2) {    //in March
        uint8_t dstStartDay = ((rawLocal.tm_mday - rawLocal.tm_wday + 6) % 7) + 8;//second sunday
        if (rawLocal.tm_mday == dstStartDay) {    //on the first day of DST
            if (rawLocal.tm_hour >= 2) {
                _tz.timezone -= 60 * 60;
            }
        } else if (rawLocal.tm_mday > dstStartDay) {    //after DST started
            _tz.timezone -= 60 * 60;
        }
    } else if (rawLocal.tm_mon > 2) {    //after month DST started
        _tz.timezone -= 60 * 60;
    }

    //Account for end of DST
    if (rawLocal.tm_mon == 10) {    //in November
        uint8_t dstEndDay = ((rawLocal.tm_mday - rawLocal.tm_wday + 6) % 7) + 1;//first sunday
        if (rawLocal.tm_mday == dstEndDay) {    //on the last day of DST
            if (rawLocal.tm_hour >= 2-1) {//subtract extra hour since 2AM EDT is 1AM EST
                _tz.timezone += 60 * 60;
            }
        } else if (rawLocal.tm_mday > dstEndDay) {    //after DST ended
            _tz.timezone += 60 * 60;
        }
    } else if (rawLocal.tm_mon > 10) {    //after month DST ended
        _tz.timezone += 60 * 60;
    }

    struct tm ret = *__localtime64(&timestamp); //not reentrant
    _tz.timezone = baseTz;
    Hwi_restore(key);
    return ret;
}

struct tm convertToGmtTime(time_t timestamp) { //tm year is relative to 1970
    uint32_t key = Hwi_disable();
    struct tm ret = *__gmtime64(&timestamp); //not reentrant
    Hwi_restore(key);
    return ret;
}

time_t mkgmtime(struct tm time) {
    uint32_t key = Hwi_disable();
    _tz.daylight = false;
    _tz.timezone = 0; //go to UTC
    time_t timestamp = __mktime64(&time); //wday and yday are ignored but it assumes local time
    initTimeZone();
    Hwi_restore(key);
    return timestamp;
}

struct tm getLocalTime() {
    return convertToLocalTime(getTimestamp());
}

struct tm getGmtTime() {
    return convertToGmtTime(getTimestamp());
}

void setTime(time_t timestamp) {
    if (timestamp > UINT32_MAX) {
        System_printf("It is past year 2106, good luck");
        System_flush();
    }
    Seconds_set(timestamp);
}

SegState getTimeSegState(DigitStruct *digit, struct tm timeStruct);

struct tm currentTimeStruct;
struct tm currentGmTimeStruct;
time_t currentTimestamp;

void timeThread(UArg arg0, UArg arg1) {
    initTimeZone();

    time_t ds1307ReturnTimestamp;
    uint8_t lastRanSeconds = 0;
    uint8_t lastRanMinutes = 0;
    uint8_t lastRanHour = 0;
    time_t lastRanHourTimestamp = 0;
    //TODO:init time
    initDs1307();
    //actual logic

    ds1307ReturnTimestamp = readDs1307Time();
    if (isRtcValid()) {
        setTime(ds1307ReturnTimestamp);
    } else { //TODO:try to get ntp time, if NTP time is valid, program RTC
             //setDs1307Time(1637985571);//Friday 11/26/2021 10:59:31PM EST
        //setDs1307Time(1627359643);        //Tuesday 07/27/2021 12:20:43AM EST
        //setDs1307Time(1615705183); //Sunday, March 14, 2021 1:59:43 AM GMT-05:00 (DST start)
        setDs1307Time(1636264783); //Sunday, November 7, 2021 1:59:43 AM GMT-04:00 (DST end)
    }

    for (;;) {
        currentTimestamp = getTimestamp();
        currentTimeStruct = convertToLocalTime(currentTimestamp);
        currentGmTimeStruct = convertToGmtTime(currentTimestamp);
        if (currentTimeStruct.tm_year < 77) { //clock is not set
            //TODO:log fault or something
            ds1307ReturnTimestamp = readDs1307Time();
            if (isRtcValid()) {
                setTime(ds1307ReturnTimestamp);
            }
            //TODO:try to get ntp time, if NTP time is valid, program RTC and Seconds
            //TODO:need some kind of exponential backoff strategy.

        } else if (currentTimeStruct.tm_sec >= ((lastRanSeconds + 10) % 60)) { //if we are on the 0,10,20,30,...
            /*
             * If the time jumps from 19 to 21,
             * round last ran time to the most recent multiple of 10.
             * This will also work if you go from 59 to 01, so you will capture the minute guaranteed.
             *
             * If the time jumps from 21 to 19 then we will do this twice,
             * but that should be OK.
             *
             * This will also correct us for first boot
             *
             * The actual real-world time in seconds or minutes will never go backwards except rollover (but hours will with DST)
             */

            //correct the time to the time which was missed and also save back into the struct, so we can use simpler logic below
            lastRanSeconds = currentTimeStruct.tm_sec = (currentTimeStruct.tm_sec / 10) * 10;

            /*
             * This block will run every 10 seconds. In some cases it might run twice in a row real-world time,
             * but as long as the RTC time does not change by more than 10 seconds,
             * it will capture every 10 second interval of RTC time
             */

            //TODO: Check for NTP and program RTC and Seconds if valid, if NTP has not been learned this operation cycle
            //TODO: do light stuff. Unless this is for weeks indication. Unmask partially chunks of the outline every 10 seconds or whatever like left side, top left, top right, right, bot right, bot left
            //no reason not to call this every 10 seconds since it will only do anything if there's a change
            requestNewDigitStateNormal(&hoursTensStruct, getTimeSegState(&hoursTensStruct, currentTimeStruct), 100);
            requestNewDigitStateNormal(&hoursOnesStruct, getTimeSegState(&hoursOnesStruct, currentTimeStruct), 100);
            requestNewDigitStateNormal(&minutesTensStruct, getTimeSegState(&minutesTensStruct, currentTimeStruct), 100);
            requestNewDigitStateNormal(&minutesOnesStruct, getTimeSegState(&minutesOnesStruct, currentTimeStruct), 100);
            requestNewExtraState(&minutesOnesStruct, (currentTimeStruct.tm_hour < 12), 100); //AM/PM

            //TODO:Save alarm by unix timestamp and check all the time like here if we are past or at the target timestamp
            if (currentTimeStruct.tm_min >= ((lastRanMinutes + 15) % 60)) {
                /*
                 * For minutes, if it goes from 1:06:59 to 1:07:01, we will run this at 1:07:10
                 * If it goes from 1:07:01 to 1:06:59, then it won't run at 1:07:00,
                 * since lastRanMinutes is already 7
                 */

                lastRanMinutes = currentTimeStruct.tm_min = (currentTimeStruct.tm_min / 15) * 15;
                //TODO: quarter-hour chimes

                if ((currentTimeStruct.tm_hour >= ((lastRanHour + 1) % 24)) || ((currentTimeStruct.tm_hour == lastRanHour)
                        && (currentTimestamp >= (lastRanHourTimestamp + 3600)))) {
                    /*
                     * Only difference here is that DST means we go from 1:59:59 to 1:00:00 at 1636264800
                     * and from 1:59:59 to 3:00:00 at 1615705200
                     * So run if either we are at the next (or more) hour OR we are at the same hour but an hour of time has passed
                     */
                    lastRanHourTimestamp = (currentTimestamp / 3600) * 3600; //round to start of this hour if we caught this late
                    lastRanHour = currentTimeStruct.tm_hour;
                    //TODO: hourly chimes
                    //TODO: Check for NTP and program RTC if valid
                } //end hourly
            } //end 15minutely
        } //end 10secondly
        Task_sleep(100); //100ms
    } //end for
}

void initTimeZone() { //TODO: doesn't do dst probably doesn't work
    _tz.daylight = true;
    strcpy(_tz.dstname, "EDT");
    strcpy(_tz.tzname, "EST");
    _tz.timezone = 5 * 60 * 60;
}

SegState getTimeSegState(DigitStruct *digit, struct tm timeStruct) {
    if (timeStruct.tm_hour > 12) {
        timeStruct.tm_hour = timeStruct.tm_hour - 12;
    }
    if (digit == &hoursTensStruct) {
        if ((timeStruct.tm_hour / 10) == 0)
            return segValBlank;
        else
            return *segValNumberArray[timeStruct.tm_hour / 10];
    } else if (digit == &hoursOnesStruct) {
        return *segValNumberArray[timeStruct.tm_hour % 10];
    } else if (digit == &minutesTensStruct) {
        return *segValNumberArray[timeStruct.tm_min / 10];
    } else {
        return *segValNumberArray[timeStruct.tm_min % 10];
    }
}
