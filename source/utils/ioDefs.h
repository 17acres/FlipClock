#include <stdint.h>
#include <stdbool.h>

#include <xdc/std.h>
#include <xdc/runtime/Error.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/family/arm/m3/Hwi.h>

#include <inc/hw_ints.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include <inc/hw_gpio.h>

#ifndef SOURCE_IODEFS_H_
#define SOURCE_IODEFS_H_

#include <ti/drivers/I2C.h>

#define IO_BITRATE I2C_400kHz

//AD0, AD1 (AD0 is MSB)
#define IO_0_ADDR (0x48>>1)
#define IO_1_ADDR (0x4C>>1)
#define IO_2_ADDR (0x4A>>1)
#define IO_3_ADDR (0x4E>>1)

#define DRV_FWD 0x2
#define DRV_REV 0x1
#define DRV_BRAKE 0x3
#define DRV_COAST 0x0

#define SEG_SHOW DRV_FWD
#define SEG_HIDE DRV_REV
#define SEG_OFF DRV_COAST //no need for brake mode

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

/* Segment Mapping
 * Pins of IO Expander in IO Expander order, Motor Driver, Physical Location (from board side) Segment Assignment
 * P00	S7F Bottom		D
 * P01 	S7R
 * P02	S6F	Right Bot	E
 * P03	S6R
 * P04	S5F	Right Mid	G
 * P05	S5R
 * P06	S4F	Right Top	F
 * P07	S4R
 * P10	S3F	Top			A
 * P11	S3R
 * P12	S2F	Left Top	B
 * P13	S2R
 * P14	S1F	Left Mid	Extra
 * P15	S1R
 * P16	S0F	Left Bot	C
 * P17	S0R
 */

typedef union SegState {
	struct { //right ordering for io driver
		uint16_t d :2;
		uint16_t e :2;
		uint16_t g :2;
		uint16_t f :2;
		uint16_t a :2;
		uint16_t b :2;
		uint16_t extra :2;
		uint16_t c :2;
	};
	uint16_t rawWord;
} SegState;

extern const SegState segVal0;
extern const SegState segVal1;
extern const SegState segVal2;
extern const SegState segVal3;
extern const SegState segVal4;
extern const SegState segVal5;
extern const SegState segVal6;
extern const SegState segVal7;
extern const SegState segVal8;
extern const SegState segVal9;
extern const SegState segVal9;
extern const SegState segVal_A;
extern const SegState segVal_b;
extern const SegState segVal_C;
extern const SegState segVal_c;
extern const SegState segVal_d;
extern const SegState segVal_E;
extern const SegState segVal_F;
extern const SegState segVal_G;
extern const SegState segVal_H;
extern const SegState segVal_h;
extern const SegState segVal_I;
extern const SegState segVal_i;
extern const SegState segVal_J;
extern const SegState segVal_L;
extern const SegState segVal_n;
extern const SegState segVal_O;
extern const SegState segVal_o;
extern const SegState segVal_P;
extern const SegState segVal_q;
extern const SegState segVal_r;
extern const SegState segVal_S;
extern const SegState segVal_t;
extern const SegState segVal_U;
extern const SegState segVal_u;
extern const SegState segVal_y;
extern const SegState segValQuestion;

extern const SegState segValBlank;
extern const SegState segValAll;

extern const SegState segValShowExtra;
extern const SegState segValHideExtra;

//if any conflict or brake, do coast
SegState unionSeg(SegState s0, SegState s1) {
	s0.rawWord |= s1.rawWord;

	if (s0.a == DRV_BRAKE)
		s0.a = DRV_COAST;

	if (s0.b == DRV_BRAKE)
		s0.b = DRV_COAST;

	if (s0.c == DRV_BRAKE)
		s0.c = DRV_COAST;

	if (s0.d == DRV_BRAKE)
		s0.d = DRV_COAST;

	if (s0.e == DRV_BRAKE)
		s0.e = DRV_COAST;

	if (s0.f == DRV_BRAKE)
		s0.f = DRV_COAST;

	if (s0.g == DRV_BRAKE)
		s0.g = DRV_COAST;

	if (s0.extra == DRV_BRAKE)
		s0.extra = DRV_COAST;

	return s0;
}

//Return new state or 0 if new state is the same is old. Does not care if anything is set to brake. Only periodically do a full set, usually just delta segments
SegState segDifference(SegState s0, SegState s1) {

	if (s0.a == s1.a)
		s1.a = DRV_COAST;

	if (s0.b == s1.b)
		s1.b = DRV_COAST;

	if (s0.c == s1.c)
		s1.c = DRV_COAST;

	if (s0.d == s1.d)
		s1.d = DRV_COAST;

	if (s0.e == s1.e)
		s1.e = DRV_COAST;

	if (s0.f == s1.f)
		s1.f = DRV_COAST;

	if (s0.g == s1.g)
		s1.h = DRV_COAST;

	if (s0.extra == s1.extra)
		s1.extra = DRV_COAST;

	return s1;
}

#endif
