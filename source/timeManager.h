/*
 * timeUtils.h
 *
 *  Created on: Nov 13, 2021
 *      Author: Dan
 */

#ifndef SOURCE_UTILS_TIMEMANAGER_H_
#define SOURCE_UTILS_TIMEMANAGER_H_
#include <time.h>
#include <xdc/std.h>
void initTimeZone();
void timeThread(UArg arg0, UArg arg1);
struct tm convertToGmtTime(time_t timestamp);
time_t mkgmtime(struct tm time);
#endif /* SOURCE_UTILS_TIMEMANAGER_H_ */
