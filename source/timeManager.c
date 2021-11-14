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

struct tm getLocalTime() {
    time_t timestamp = Seconds_get();
    return *localtime(&timestamp); //not reentrant
}

struct tm getGmtTime() {
    time_t timestamp = Seconds_get();
    return *gmtime(&timestamp); //not reentrant
}

void setTime(time_t timestamp) {
    Seconds_set(timestamp);
}

SegState getTimeSegState(DigitStruct *digit, struct tm timeStruct);

void timeThread(UArg arg0, UArg arg1) {
    initTimeZone();
    bool firstBoot = true;
    struct tm time;
    uint8_t lastRanSeconds;
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
    for (;;) {
        time = getLocalTime();

        if (time.tm_sec == (lastRanSeconds + 10) % 60) {
            lastRanSeconds = time.tm_sec;

            if (time.tm_sec == 0 || firstBoot) {
                requestNewDigitStateNormal(&hoursTensStruct, getTimeSegState(&hoursTensStruct, time), 100);
                requestNewDigitStateNormal(&hoursOnesStruct, getTimeSegState(&hoursOnesStruct, time), 100);
                requestNewDigitStateNormal(&minutesTensStruct, getTimeSegState(&minutesTensStruct, time), 100);
                requestNewDigitStateNormal(&minutesOnesStruct, getTimeSegState(&minutesOnesStruct, time), 100);

                if (time.tm_min == 0 || firstBoot) {
                    if (time.tm_hour == 12 || time.tm_hour == 0 || firstBoot) {
                        requestNewExtraState(&minutesOnesStruct, (time.tm_hour < 12), 100); //AM/PM
                    }
                }
                //TODO: westminster chime
            }
            if (time.tm_sec % 10 == 0) {
                //indicate tens of seconds on backlight or maybe extra hourstens
            }
            firstBoot = false;
        }

        Task_sleep(100); //100ms
    }
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
