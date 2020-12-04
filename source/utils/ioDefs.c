/*
 * ioDefs.c
 *
 *  Created on: Dec 3, 2020
 *      Author: Dan
 *
 *      https://en.wikipedia.org/wiki/Seven-segment_display
 */
#include "ioDefs.h"
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
		.c=SEG_HIDE,
		.d=SEG_SHOW,
		.e=SEG_SHOW,
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

const SegState segVal_c{
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

const SegState segValH={
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
