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

struct tm convertToLocalTime(time_t timestamp) {
    uint32_t key = Hwi_disable();
    struct tm ret = *localtime(&timestamp); //not reentrant
    Hwi_restore(key);
    return ret;
}

struct tm convertToGmtTime(time_t timestamp) {
    uint32_t key = Hwi_disable();
    struct tm ret = *gmtime(&timestamp); //not reentrant
    Hwi_restore(key);
    return ret;
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

void timeThread(UArg arg0, UArg arg1) {
    initTimeZone();
    bool firstBoot = true;
    struct tm time;
    uint8_t lastRanSeconds = 0;
    uint8_t lastRanMinutes = 0;
    uint8_t lastRanHour = 0;
    time_t lastRanHourTimestamp=0;
    //TODO:init time
    initDs1307();
    time_t currentTime = 1636925690;
    for (;;) {
        setDs1307Time(currentTime);
        time_t returnTime = readDs1307Time();
        if (currentTime != returnTime) {
            System_printf("Source Time %d, Return time %d", currentTime, returnTime);
            System_flush();
        }
        currentTime += 5000000;
    }

    return; //TODO: do the rest of it

    //actual logic

    time_t returnTime = readDs1307Time();
    if (isRtcValid()) {
        setTime(returnTime);
    }
    //TODO:try to get ntp time, if NTP time is valid, program RTC

    for (;;) {
        time_t currentTimestamp = getTimestamp();
        time = convertToLocalTime(currentTimestamp);
        if (time.tm_year < 1971) { //clock is not set
            //TODO:log fault or something
            time_t returnTime = readDs1307Time();
            if (isRtcValid()) {
                setTime(returnTime);
            }
            //TODO:try to get ntp time, if NTP time is valid, program RTC
            //TODO:need some kind of exponential backoff strategy.

        } else if (time.tm_sec >= ((lastRanSeconds + 10) % 60)) { //if we are on the 0,10,20,30,...
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
            lastRanSeconds = time.tm_sec = (time.tm_sec / 10) * 10;

            /*
             * This block will run every 10 seconds. In some cases it might run twice in a row real-world time,
             * but as long as the RTC time does not change by more than 10 seconds,
             * it will capture every 10 second interval of RTC time
             */

            //TODO: Check for NTP and program RTC if valid, if NTP has not been learned this operation cycle

            //TODO: do light stuff. Unless this is for weeks indication. Unmask partially chunks of the outline every 10 seconds or whatever like left side, top left, top right, right, bot right, bot left

            //no reason not to call this every 10 seconds since it will only do anything if there's a change
            requestNewDigitStateNormal(&hoursTensStruct, getTimeSegState(&hoursTensStruct, time), 100);
            requestNewDigitStateNormal(&hoursOnesStruct, getTimeSegState(&hoursOnesStruct, time), 100);
            requestNewDigitStateNormal(&minutesTensStruct, getTimeSegState(&minutesTensStruct, time), 100);
            requestNewDigitStateNormal(&minutesOnesStruct, getTimeSegState(&minutesOnesStruct, time), 100);
            requestNewExtraState(&minutesOnesStruct, (time.tm_hour < 12), 100); //AM/PM

            //TODO:Save alarm by unix timestamp and check all the time like here if we are past or at the target timestamp
            if (time.tm_min >= ((lastRanMinutes + 15) % 60)) {
                /*
                 * For minutes, if it goes from 1:06:59 to 1:07:01, we will run this at 1:07:10
                 * If it goes from 1:07:01 to 1:06:59, then it won't run at 1:07:00,
                 * since lastRanMinutes is already 7
                 */

                lastRanMinutes = time.tm_min = (time.tm_min / 15) * 15;
                //TODO: quarter-hour chimes

                if ((time.tm_hour >= ((lastRanHour + 1) % 24)) || ((time.tm_hour == lastRanHour) && (currentTimestamp >= (lastRanHourTimestamp + 3600)))) {
                    /*
                     * Only difference here is that DST means we go from 1:59:59 to 1:00:00 at 1636264800
                     * and from 1:59:59 to 3:00:00 at 1615705200
                     * So run if either we are at the next (or more) hour OR we are at the same hour but an hour of time has passed
                     */
                    lastRanHourTimestamp = (currentTimestamp / 3600) * 3600; //round to start of this hour if we caught this late
                    lastRanHour = time.tm_hour;
                    //TODO: hourly chimes
                    //TODO: Check for NTP and program RTC if valid
                } //end hourly
            } //end 15minutely
        } //end 10secondly
        Task_sleep(100); //100ms
    } //end for
}

void initTimeZone() { //probably doesn't work
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
        return *segValNumberArray[timeStruct.tm_hour / 10];
    } else if (digit == &hoursOnesStruct) {
        return *segValNumberArray[timeStruct.tm_hour % 10];
    } else if (digit == &minutesTensStruct) {
        return *segValNumberArray[timeStruct.tm_min / 10];
    } else {
        return *segValNumberArray[timeStruct.tm_min % 10];
    }
}
