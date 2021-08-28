/*
 * ledDefs.h
 *
 *  Created on: Dec 22, 2020
 *      Author: Dan
 */

#ifndef SOURCE_UTILS_LEDDEFS_H_
#define SOURCE_UTILS_LEDDEFS_H_
#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

#include <xdc/std.h>
#include <xdc/runtime/Error.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/family/arm/m3/Hwi.h>
#include <ti/sysbios/knl/Mailbox.h>

#include <inc/hw_ints.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include <inc/hw_gpio.h>
#include "iodefs.h"

    /* Segment Arrangement https://en.wikipedia.org/wiki/Seven-segment_display#/media/File:7_Segment_Display_with_Labeled_Segments.svg
     *    A
     *  F   B
     *    G
     *  E   C
     *    D
     *
     * MIRRORED ALONG Z:
     *    A
     *  B   F
     *    G
     *  C   E
     *    D
     */

    /* LED Ordering
     * Segment Index, Direction (increasing index)
     * C		up
     * Extra	??
     * B		up
     * A		left
     * F		down
     * G		left
     * E		down
     * D		left
     */

#define NUM_LEDS_NO_EXTRA 21
#define MAX_EXRTA_LEDS 2
#define MAX_LEDS_PER_DIGIT NUM_LEDS_NO_EXTRA+MAX_EXRTA_LEDS

#define SEG_LED_ID_MINUTES_ONES 0
#define SEG_LED_ID_MINUTES_TENS 1
#define SEG_LED_ID_HOURS_ONES 2
#define SEG_LED_ID_HOURS_TENS 3

//default to on
#define MASK_LED_OFF true
#define MASK_LED_ON false

//#define GEN_LED_STRING_STRUCT_ELEMENTS(TYPE)\
	struct{ /*Overall ordering*/\
        TYPE amPm[6];\
        TYPE alarm[8];\
        TYPE minutesOnes[NUM_LEDS_NO_EXTRA+2];/*using extra segment for moving part of ampm*/\
		TYPE minutesTens[NUM_LEDS_NO_EXTRA];\
		TYPE dots[2];\
		TYPE hoursOnes[NUM_LEDS_NO_EXTRA];\
		TYPE hoursTens[NUM_LEDS_NO_EXTRA];\
    }


#define GEN_LED_STRING_STRUCT_ELEMENTS(TYPE)\
   struct{ /*Overall ordering*/\
   TYPE hoursTens[NUM_LEDS_NO_EXTRA];\
   TYPE hoursTensExtras[3];\
   }

//plain-c version of CRGB from FastLED
    typedef struct CRGB_C {
        union {
            struct {
                union {
                    uint8_t r;
                    uint8_t red;
                };
                union {
                    uint8_t g;
                    uint8_t green;
                };
                union {
                    uint8_t b;
                    uint8_t blue;
                };
            };
            uint8_t raw[3];
        };
    }CRGB_C;

    typedef union LedStringVals {
        GEN_LED_STRING_STRUCT_ELEMENTS(CRGB_C);
        CRGB_C fullArray[0]; //https://stackoverflow.com/questions/23525861/get-sizeof-anonymous-struct-inside-union
    }LedStringVals;

//255 means on
    typedef union LedStringMasks {
        GEN_LED_STRING_STRUCT_ELEMENTS(uint8_t);
        uint8_t fullArray[0];
    }LedStringMasks;

    typedef struct SegmentMaskRequest {
        SegStateFade segState;
        uint8_t segmentLedId;
    }SegmentMaskRequest;

    void calculateMask(SegStateFade segState, uint8_t returnMaskArray[], bool isExtraInSeries, uint8_t extraMaskArray[], uint8_t numExtraLeds); //returnMaskArray of appropriate size
    void requestMaskUpdate(SegmentMaskRequest *request, uint32_t timeout);

#define NUM_LEDS (sizeof(LedStringVals)/sizeof(CRGB_C))

    extern Mailbox_Handle maskRequestMailbox;
#ifdef __cplusplus
}
#endif
#endif /* SOURCE_UTILS_LEDDEFS_H_ */
