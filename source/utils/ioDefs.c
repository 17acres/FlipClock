/*
 * ioDefs.c
 *
 *  Created on: Dec 3, 2020
 *      Author: Dan
 *
 *      https://en.wikipedia.org/wiki/Seven-segment_display
 */
#include "ioDefs.h"
#include "../ioDriver.h"
#include <xdc/std.h>
#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

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

SegState subtractSeg(SegState newState, SegState oldState) {

	if (oldState.a == newState.a)
		newState.a = DRV_COAST;

	if (oldState.b == newState.b)
		newState.b = DRV_COAST;

	if (oldState.c == newState.c)
		newState.c = DRV_COAST;

	if (oldState.d == newState.d)
		newState.d = DRV_COAST;

	if (oldState.e == newState.e)
		newState.e = DRV_COAST;

	if (oldState.f == newState.f)
		newState.f = DRV_COAST;

	if (oldState.g == newState.g)
		newState.g = DRV_COAST;

	if (oldState.extra == newState.extra)
		newState.extra = DRV_COAST;

	return newState;
}

bool applySegState(uint8_t slaveAddress, SegState state, uint32_t onTimeMs){
	writeData(slaveAddress, state.rawWord);
	Task_sleep(onTimeMs);
	return writeData(slaveAddress, segValOff.rawWord);
}

bool applySegDelta(uint8_t slaveAddress, SegState oldState, SegState newState, uint32_t onTimeMs){
	return applySegState(slaveAddress,subtractSeg(newState,oldState),onTimeMs);
}

const SegState segVal0={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal1={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_HIDE,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal2={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal3={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_HIDE,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal4={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal5={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal6={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal7={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_HIDE,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal8={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal9={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_A={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_b={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_C={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_c={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_d={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_E={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_F={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_G={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_H={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_h={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_I={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_i={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_J={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_L={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_n={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_O={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_o={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_P={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_q={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_HIDE,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_r={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_S={
		.a=SEG_SHOW,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_t={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segVal_U={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_u={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segVal_y={
		.a=SEG_HIDE,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_HIDE,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segValQuestion={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_SHOW,
		.f=SEG_HIDE,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};


const SegState segValBlank={
		.a=SEG_HIDE,
		.b=SEG_HIDE,
		.c=SEG_HIDE,
		.d=SEG_HIDE,
		.e=SEG_HIDE,
		.f=SEG_HIDE,
		.g=SEG_HIDE,
		.extra=SEG_OFF
};

const SegState segValAll={
		.a=SEG_SHOW,
		.b=SEG_SHOW,
		.c=SEG_SHOW,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
		.f=SEG_SHOW,
		.g=SEG_SHOW,
		.extra=SEG_OFF
};

const SegState segValOff={
		.a=SEG_OFF,
		.b=SEG_OFF,
		.c=SEG_OFF,
		.d=SEG_OFF,
		.e=SEG_OFF,
		.f=SEG_OFF,
		.g=SEG_OFF,
		.extra=SEG_OFF
};

const SegState segValShowExtra={
		.a=SEG_OFF,
		.b=SEG_OFF,
		.c=SEG_OFF,
		.d=SEG_OFF,
		.e=SEG_OFF,
		.f=SEG_OFF,
		.g=SEG_OFF,
		.extra=SEG_SHOW
};

const SegState segValHideExtra={
		.a=SEG_OFF,
		.b=SEG_OFF,
		.c=SEG_OFF,
		.d=SEG_OFF,
		.e=SEG_OFF,
		.f=SEG_OFF,
		.g=SEG_OFF,
		.extra=SEG_HIDE
};

const SegState segValAOnly={
        .a=SEG_SHOW,
        .b=SEG_HIDE,
        .c=SEG_HIDE,
        .d=SEG_HIDE,
        .e=SEG_HIDE,
        .f=SEG_HIDE,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValBOnly={
        .a=SEG_HIDE,
        .b=SEG_SHOW,
        .c=SEG_HIDE,
        .d=SEG_HIDE,
        .e=SEG_HIDE,
        .f=SEG_HIDE,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValCOnly={
        .a=SEG_HIDE,
        .b=SEG_HIDE,
        .c=SEG_SHOW,
        .d=SEG_HIDE,
        .e=SEG_HIDE,
        .f=SEG_HIDE,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValDOnly={
        .a=SEG_HIDE,
        .b=SEG_HIDE,
        .c=SEG_HIDE,
        .d=SEG_SHOW,
        .e=SEG_HIDE,
        .f=SEG_HIDE,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValEOnly={
        .a=SEG_HIDE,
        .b=SEG_HIDE,
        .c=SEG_HIDE,
        .d=SEG_HIDE,
        .e=SEG_SHOW,
        .f=SEG_HIDE,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValFOnly={
        .a=SEG_HIDE,
        .b=SEG_HIDE,
        .c=SEG_HIDE,
        .d=SEG_HIDE,
        .e=SEG_HIDE,
        .f=SEG_SHOW,
        .g=SEG_HIDE,
        .extra=SEG_OFF
};

const SegState segValGOnly={
        .a=SEG_HIDE,
        .b=SEG_HIDE,
        .c=SEG_HIDE,
        .d=SEG_HIDE,
        .e=SEG_HIDE,
        .f=SEG_HIDE,
        .g=SEG_SHOW,
        .extra=SEG_OFF
};
