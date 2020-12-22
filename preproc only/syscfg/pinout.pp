# 1 "syscfg/pinout.c"
//*****************************************************************************
//
// Configure the device pins for different signals
//
// Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/ 
// 
// 
//  Redistribution and use in source and binary forms, with or without 
//  modification, are permitted provided that the following conditions 
//  are met:
//
//    Redistributions of source code must retain the above copyright 
//    notice, this list of conditions and the following disclaimer.
//
//    Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the 
//    documentation and/or other materials provided with the   
//    distribution.
//
//    Neither the name of Texas Instruments Incorporated nor the names of
//    its contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************

// This file was automatically generated on 2020-12-22 at 16:27:40
// by TI PinMux version 1.3.1030
//
//*****************************************************************************

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdbool.h"
/*
 * Copyright (c) 2000 Jeroen Ruigrok van der Werven <asmodai@FreeBSD.org>
 * All rights reserved.
 *
 * Copyright (c) 2014-2014 Texas Instruments Incorporated
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD: release/10.0.0/include/stdbool.h 228878 2011-12-25 20:15:41Z ed $
 */

/* If this file is included in C99 mode, _Bool is a builtin, so no definition. */
/* If this is C89 mode and this file is included, _Bool is pre-defined in C89 */
/* relaxed mode by the EDG parser, so it needs to be defined in strict mode. */



# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"
/*****************************************************************************/
/* _ti_config.h                                                              */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/




/*Unsupported pragmas are omitted */

# pragma diag_push
# pragma CHECK_MISRA("-19.7")
# pragma CHECK_MISRA("-19.4")
# pragma CHECK_MISRA("-19.1")
# pragma CHECK_MISRA("-19.15")

# pragma diag_pop




_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.1\")")
_Pragma("CHECK_MISRA(\"-19.6\")")

/* Hide uses of the TI proprietary macros behind other macros.
    Implementations that don't implement these features should leave
    these macros undefined. */
# 68 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"







# 85 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"

/* Common definitions */

# 100 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"
/* C */

 /* C11 */
# 110 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"



















/* _TI_NOEXCEPT_CPP14 is defined to noexcept only when compiling for C++14. It
   is intended to be used for functions like abort and atexit that are supposed
   to be declared noexcept only in C++14 mode. */








/* Target-specific definitions */
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/linkage.h"
/*****************************************************************************/
/* linkage.h                                                                 */
/*                                                                           */
/* Copyright (c) 1998 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/




#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */

/* No modifiers are needed to access code or data */





/*--------------------------------------------------------------------------*/
/* Define _IDECL ==> how inline functions are declared                      */
/*--------------------------------------------------------------------------*/
# 60 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/linkage.h"

#pragma diag_pop

# 142 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"

_Pragma("diag_pop")

# 38 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdbool.h"

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.11\")")













_Pragma("diag_pop")

# 44 "syscfg/pinout.c"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
/*****************************************************************************/
/* STDINT.H                                                                  */
/*                                                                           */
/* Copyright (c) 2002 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/





_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.1\")") /* no code before #include */
_Pragma("CHECK_MISRA(\"-19.7\")") /* prefer functions to macros */

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"
/*****************************************************************************/
/* _STDINT40.H                                                               */
/*                                                                           */
/* Copyright (c) 2018 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/



_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.7\")") /* prefer functions to macros */

# 53 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"

/*
   According to footnotes in the 1999 C standard, "C++ implementations
   should define these macros only when __STDC_LIMIT_MACROS is defined
   before <stdint.h> is included."
*/


# 77 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"



_Pragma("diag_pop")

# 47 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */






# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"
/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 * $FreeBSD$
 */







_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"none\")")


/*
 * Testing against Clang-specific extensions.
 */
# 66 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 74 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * This code has been put in place to help reduce the addition of
 * compiler specific defines in FreeBSD code.  It helps to aid in
 * having a compiler-agnostic source tree.
 */

# 140 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"


















/*
 * Macro to test if we're using a specific version of gcc or later.
 */
# 167 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * The __CONCAT macro is used to concatenate parts of symbol names, e.g.
 * with "#define OLD(foo) __CONCAT(old,foo)", OLD(foo) produces oldfoo.
 * The __CONCAT macro is a bit tricky to use if it must work in non-ANSI
 * mode -- there must be no spaces between its arguments, and for nested
 * __CONCAT's, all the __CONCAT's must be at the left.  __CONCAT can also
 * concatenate double-quoted strings produced by the __STRING macro, but
 * this only works with ANSI C.
 *
 * __XSTRING is like __STRING, but it expands any macros in its argument
 * first.  It is only available with ANSI C.
 */
# 186 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 197 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 224 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Compiler-dependent macros to help declare dead (non-returning) and
 * pure (no side effects) functions, and unused variables.  They are
 * null except for versions of gcc that are known to support the features
 * properly (old versions of gcc-2 supported the dead and pure features
 * in a different (wrong) way).  If we do not provide an implementation
 * for a given compiler, let the compile fail if it is told to use
 * a feature that we cannot live without.
 */
# 240 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * TI ADD - check that __GNUC__ is defined before referencing it to avoid
 *          generating an error when __GNUC__ treated as zero warning is
 *          promoted to an error via -pdse195 option.
 */
# 252 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 272 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







/*
 * Keywords added in C11.
 */

# 347 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Emulation of C11 _Generic().  Unlike the previously defined C11
 * keywords, it is not possible to implement this using exactly the same
 * syntax.  Therefore implement something similar under the name
 * __generic().  Unlike _Generic(), this macro can only distinguish
 * between a single type, so it requires nested invocations to
 * distinguish multiple cases.
 */

# 366 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * C99 Static array indices in function parameter declarations.  Syntax such as:
 * void bar(int myArray[static 10]);
 * is allowed in C99 but not in C++.  Define __min_size appropriately so
 * headers using it can be compiled in either language.  Use like this:
 * void bar(int myArray[__min_size(10)]);
 */
# 381 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 389 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













# 409 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













/* XXX: should use `#if __STDC_VERSION__ < 199901'. */









/* C++11 exposes a load of C99 stuff */
# 442 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * GCC 2.95 provides `__restrict' as an extension to C90 to support the
 * C99-specific `restrict' type qualifier.  We happen to use `__restrict' as
 * a way to define the `restrict' type qualifier without disturbing older
 * software that is unaware of C99 keywords.
 * The TI compiler supports __restrict in all compilation modes.
 */
# 459 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * GNU C version 2.96 adds explicit branch prediction so that
 * the CPU back-end can hint the processor and also so that
 * code blocks can be reordered such that the predicted path
 * sees a more linear flow, thus improving cache behavior, etc.
 *
 * The following two macros provide us with a way to utilize this
 * compiler feature.  Use __predict_true() if you expect the expression
 * to evaluate to true, and __predict_false() if you expect the
 * expression to evaluate to false.
 *
 * A few notes about usage:
 *
 *	* Generally, __predict_false() error condition checks (unless
 *	  you have some _strong_ reason to do otherwise, in which case
 *	  document it), and/or __predict_true() `no-error' condition
 *	  checks, assuming you want to optimize for the no-error case.
 *
 *	* Other than that, if you don't know the likelihood of a test
 *	  succeeding from empirical or other `hard' evidence, don't
 *	  make predictions.
 *
 *	* These are meant to be used in places that are run `a lot'.
 *	  It is wasteful to make predictions in code that is run
 *	  seldomly (e.g. at subsystem initialization time) as the
 *	  basic block reordering that this affects can often generate
 *	  larger code.
 */
# 495 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 505 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * We define this here since <stddef.h>, <sys/queue.h>, and <sys/types.h>
 * require it.
 */
# 525 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Given the pointer x to the member m of the struct s, return
 * a pointer to the containing structure.  When using GCC, we first
 * assign pointer x to a local variable, to check that its type is
 * compatible with member m.
 */
# 541 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Compiler-dependent macros to declare that functions take printf-like
 * or scanf-like arguments.  They are null except for versions of gcc
 * that are known to support the features properly (old versions of gcc-2
 * didn't permit keeping the keywords out of the application namespace).
 */
# 565 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* Compiler-dependent macros that rely on FreeBSD-specific extensions. */
# 574 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 606 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







/*
 * The following definition might not work well if used in header files,
 * but it should be better than nothing.  If you want a "do nothing"
 * version, then it should generate some harmless declaration, such as:
 *    #define	__IDSTRING(name,string)	struct __hack
 */








/*
 * Embed the rcs id of a source file in the resulting library.  Note that in
 * more recent ELF binutils, we use .ident allowing the ID to be stripped.
 * Usage:
 *	__FBSDID("$FreeBSD$");
 */
# 640 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 648 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 656 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 664 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 672 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













/*-
 * The following definitions are an extension of the behavior originally
 * implemented in <sys/_posix.h>, but with a different level of granularity.
 * POSIX.1 requires that the macros we test be defined before any standard
 * header file is included.
 *
 * Here's a quick run-down of the versions:
 *  defined(_POSIX_SOURCE)		1003.1-1988
 *  _POSIX_C_SOURCE == 1		1003.1-1990
 *  _POSIX_C_SOURCE == 2		1003.2-1992 C Language Binding Option
 *  _POSIX_C_SOURCE == 199309		1003.1b-1993
 *  _POSIX_C_SOURCE == 199506		1003.1c-1995, 1003.1i-1995,
 *					and the omnibus ISO/IEC 9945-1: 1996
 *  _POSIX_C_SOURCE == 200112		1003.1-2001
 *  _POSIX_C_SOURCE == 200809		1003.1-2008
 *
 * In addition, the X/Open Portability Guide, which is now the Single UNIX
 * Specification, defines a feature-test macro which indicates the version of
 * that specification, and which subsumes _POSIX_C_SOURCE.
 *
 * Our macros begin with two underscores to avoid namespace screwage.
 */

/* Deal with IEEE Std. 1003.1-1990, in which _POSIX_C_SOURCE == 1. */





/* Deal with IEEE Std. 1003.2-1992, in which _POSIX_C_SOURCE == 2. */





/* Deal with various X/Open Portability Guides and Single UNIX Spec. */
# 736 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Deal with all versions of POSIX.  The ordering relative to the tests above is
 * important.
 */
# 768 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"
/*-
 * Deal with _ANSI_SOURCE:
 * If it is defined, and no other compilation environment is explicitly
 * requested, then define our internal feature-test macros to zero.  This
 * makes no difference to the preprocessor (undefined symbols in preprocessing
 * expressions are defined to have value zero), but makes it more convenient for
 * a test program to print out the values.
 *
 * If a program mistakenly defines _ANSI_SOURCE and some other macro such as
 * _POSIX_C_SOURCE, we will assume that it wants the broader compilation
 * environment (and in fact we will never get here).
 */
# 806 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* User override __EXT1_VISIBLE */
# 816 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"





/*
 * Old versions of GCC use non-standard ARM arch symbols; acle-compat.h
 * translates them to __ARM_ARCH and the modern feature symbols defined by ARM.
 */




/*
 * Nullability qualifiers: currently only supported by Clang.
 */
# 843 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Type Safety Checking
 *
 * Clang provides additional attributes to enable checking type safety
 * properties that cannot be enforced by the C type system. 
 */

# 861 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Lock annotations.
 *
 * Clang provides support for doing basic thread-safety tests at
 * compile-time, by marking which locks will/should be held when
 * entering/leaving a functions.
 *
 * Furthermore, it is also possible to annotate variables and structure
 * members to enforce that they are only accessed when certain locks are
 * held.
 */







/* Structure implements a lock. */


/* Function acquires an exclusive or shared lock. */





/* Function attempts to acquire an exclusive or shared lock. */





/* Function releases a lock. */


/* Function asserts that an exclusive or shared lock is held. */





/* Function requires that an exclusive or shared lock is or is not held. */
# 911 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* Function should not be analyzed. */


/* Guard variables and structure members by lock. */




_Pragma("diag_pop")


# 37 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */




# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"
/*-
 * SPDX-License-Identifier: BSD-4-Clause
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by the University of
 *	California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	From: @(#)ansi.h	8.2 (Berkeley) 1/4/94
 *	From: @(#)types.h	8.3 (Berkeley) 1/5/94
 * $FreeBSD$
 */











_Pragma("diag_push")
/* This file is required to use base types */
_Pragma("CHECK_MISRA(\"-6.3\")")


# 70 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"

/*
 * Basic types upon which most other types are built.
 */
typedef	signed char		__int8_t;
typedef	unsigned char		__uint8_t;
typedef	short			__int16_t;
typedef	unsigned short		__uint16_t;
typedef	int			__int32_t;
typedef	unsigned int		__uint32_t;



/* LONGLONG */
typedef	long long		__int64_t;



/* LONGLONG */
typedef	unsigned long long	__uint64_t;

/*
 * Standard type definitions.
 */
typedef	__uint32_t	__clock_t;		/* clock()... */
typedef	__int32_t	__critical_t;
typedef	double		__double_t;
typedef	float		__float_t;
typedef	__int32_t	__intfptr_t;
typedef	__int64_t	__intmax_t;
typedef	__int32_t	__intptr_t;
typedef	__int32_t	__int_fast8_t;
typedef	__int32_t	__int_fast16_t;
typedef	__int32_t	__int_fast32_t;
typedef	__int64_t	__int_fast64_t;
typedef	__int8_t	__int_least8_t;
typedef	__int16_t	__int_least16_t;
typedef	__int32_t	__int_least32_t;
typedef	__int64_t	__int_least64_t;
typedef	__int32_t	__ptrdiff_t;		/* ptr1 - ptr2 */
typedef	__int32_t	__register_t;
typedef	__int32_t	__segsz_t;		/* segment size (in pages) */
typedef	__uint32_t	__size_t;		/* sizeof() */
typedef	__int32_t	__ssize_t;		/* byte count or error */




typedef __uint32_t      __time_t;

typedef	__uint32_t	__uintfptr_t;
typedef	__uint64_t	__uintmax_t;
typedef	__uint32_t	__uintptr_t;
typedef	__uint32_t	__uint_fast8_t;
typedef	__uint32_t	__uint_fast16_t;
typedef	__uint32_t	__uint_fast32_t;
typedef	__uint64_t	__uint_fast64_t;
typedef	__uint8_t	__uint_least8_t;
typedef	__uint16_t	__uint_least16_t;
typedef	__uint32_t	__uint_least32_t;
typedef	__uint64_t	__uint_least64_t;
typedef	__uint32_t	__u_register_t;
typedef	__uint32_t	__vm_offset_t;
typedef	__uint32_t	__vm_paddr_t;
typedef	__uint32_t	__vm_size_t;




typedef	unsigned short ___wchar_t;



# 153 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"

/*
 * POSIX target specific _off_t type definition
 */
typedef long _off_t;

/*
 * Unusual type definitions.
 */

typedef struct __va_list_t {
    void * __ap;
} __va_list;
# 176 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"


_Pragma("diag_pop")


# 36 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"



_Pragma("diag_push")
/* This file is required to use types without size and signedness */
_Pragma("CHECK_MISRA(\"-6.3\")")


/*
 * Standard type definitions.
 */
typedef	__int32_t	__blksize_t;	/* file block size */
typedef	__int64_t	__blkcnt_t;	/* file block count */
typedef	__int32_t	__clockid_t;	/* clock_gettime()... */
typedef	__uint32_t	__fflags_t;	/* file flags */
typedef	__uint64_t	__fsblkcnt_t;
typedef	__uint64_t	__fsfilcnt_t;
typedef	__uint32_t	__gid_t;
typedef	__int64_t	__id_t;		/* can hold a gid_t, pid_t, or uid_t */
typedef	__uint64_t	__ino_t;	/* inode number */
typedef	long		__key_t;	/* IPC key (for Sys V IPC) */
typedef	__int32_t	__lwpid_t;	/* Thread ID (a.k.a. LWP) */
typedef	__uint16_t	__mode_t;	/* permissions */
typedef	int		__accmode_t;	/* access permissions */
typedef	int		__nl_item;
typedef	__uint64_t	__nlink_t;	/* link count */
typedef	_off_t	        __off_t;	/* file offset (target-specific)  */
typedef	__int64_t	__off64_t;	/* file offset (always 64-bit)    */
typedef	__int32_t	__pid_t;	/* process [group] */
typedef	__int64_t	__rlim_t;	/* resource limit - intentionally */
					/* signed, because of legacy code */
					/* that uses -1 for RLIM_INFINITY */



typedef	__uint8_t	__sa_family_t;

typedef	__uint32_t	__socklen_t;
typedef	long		__suseconds_t;	/* microseconds (signed) */
typedef	struct __timer	*__timer_t;	/* timer_gettime()... */
typedef	struct __mq	*__mqd_t;	/* mq_open()... */
typedef	__uint32_t	__uid_t;
typedef	unsigned int	__useconds_t;	/* microseconds (unsigned) */
typedef	int		__cpuwhich_t;	/* which parameter for cpuset. */
typedef	int		__cpulevel_t;	/* level parameter for cpuset. */
typedef int		__cpusetid_t;	/* cpuset identifier. */

/*
 * Unusual type definitions.
 */
/*
 * rune_t is declared to be an ``int'' instead of the more natural
 * ``unsigned long'' or ``long''.  Two things are happening here.  It is not
 * unsigned so that EOF (-1) can be naturally assigned to it and used.  Also,
 * it looks like 10646 will be a 31 bit standard.  This means that if your
 * ints cannot hold 32 bits, you will be in trouble.  The reason an int was
 * chosen over a long is that the is*() and to*() routines take ints (says
 * ANSI C), but they use __ct_rune_t instead of int.
 *
 * NOTE: rune_t is not covered by ANSI nor other standards, and should not
 * be instantiated outside of lib/libc/locale.  Use wchar_t.  wint_t and
 * rune_t must be the same type.  Also, wint_t should be able to hold all
 * members of the largest character set plus one extra value (WEOF), and
 * must be at least 16 bits.
 */




typedef	int		__ct_rune_t;	/* arg type for ctype funcs */


typedef	__ct_rune_t	__rune_t;	/* rune_t (see above) */
typedef	__ct_rune_t	__wint_t;	/* wint_t (see above) */

/* Clang already provides these types as built-ins, but only in C++ mode. */

typedef	__uint_least16_t __char16_t;
typedef	__uint_least32_t __char32_t;

/* In C++11, char16_t and char32_t are built-in types. */





typedef struct {
	long long __max_align1 __attribute__((aligned(_Alignof(long long))));
	long double __max_align2 __attribute__((aligned(_Alignof(long double))));
} __max_align_t;

typedef	__uint64_t	__dev_t;	/* device number */

typedef	__uint32_t	__fixpt_t;	/* fixed point number */

/*
 * mbstate_t is an opaque object to keep conversion state during multibyte
 * stream conversions.
 */

# 143 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"
typedef int _Mbstatet;


typedef _Mbstatet __mbstate_t;
# 153 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"

typedef __uintmax_t     __rman_res_t;

/*
 * When the following macro is defined, the system uses 64-bit inode numbers.
 * Programs can use this to avoid including <sys/param.h>, with its associated
 * namespace pollution.
 */



_Pragma("diag_pop")


# 38 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-NetBSD
 *
 * Copyright (c) 2001, 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 2001 The NetBSD Foundation, Inc.
 * All rights reserved.
 *
 * This code is derived from software contributed to The NetBSD Foundation
 * by Klaus Klein.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * $FreeBSD$
 */






_Pragma("diag_push")
/* 19.4 is issued for macros that are defined in terms of other macros. */
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.7\")")
_Pragma("CHECK_MISRA(\"-19.13\")")




















/*
 * ISO/IEC 9899:1999
 * 7.18.2.1 Limits of exact-width integer types
 */
/* Minimum values of exact-width signed integer types. */





/* Maximum values of exact-width signed integer types. */





/* Maximum values of exact-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.2  Limits of minimum-width integer types
 */
/* Minimum values of minimum-width signed integer types. */





/* Maximum values of minimum-width signed integer types. */





/* Maximum values of minimum-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.3  Limits of fastest minimum-width integer types
 */
/* Minimum values of fastest minimum-width signed integer types. */





/* Maximum values of fastest minimum-width signed integer types. */





/* Maximum values of fastest minimum-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.4  Limits of integer types capable of holding object pointers
 */




/*
 * ISO/IEC 9899:1999
 * 7.18.2.5  Limits of greatest-width integer types
 */




/*
 * ISO/IEC 9899:1999
 * 7.18.3  Limits of other integer types
 */
/* Limits of ptrdiff_t. */



/* Limits of sig_atomic_t. */



/* Limit of size_t. */


/* Limits of wint_t. */





_Pragma("diag_pop")

# 40 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2011 David E. O'Brien <obrien@FreeBSD.org>
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */






typedef	__int8_t		int8_t;





typedef	__int16_t		int16_t;




typedef	__int32_t		int32_t;




typedef	__int64_t		int64_t;





typedef	__uint8_t		uint8_t;





typedef	__uint16_t		uint16_t;




typedef	__uint32_t		uint32_t;




typedef	__uint64_t		uint64_t;




typedef	__intptr_t		intptr_t;



typedef	__uintptr_t		uintptr_t;



typedef	__intmax_t		intmax_t;



typedef	__uintmax_t		uintmax_t;



# 41 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"

typedef	__int_least8_t		int_least8_t;
typedef	__int_least16_t		int_least16_t;
typedef	__int_least32_t		int_least32_t;
typedef	__int_least64_t		int_least64_t;

typedef	__uint_least8_t		uint_least8_t;
typedef	__uint_least16_t	uint_least16_t;
typedef	__uint_least32_t	uint_least32_t;
typedef	__uint_least64_t	uint_least64_t;

typedef	__int_fast8_t		int_fast8_t;
typedef	__int_fast16_t		int_fast16_t;
typedef	__int_fast32_t		int_fast32_t;
typedef	__int_fast64_t		int_fast64_t;

typedef	__uint_fast8_t		uint_fast8_t;
typedef	__uint_fast16_t		uint_fast16_t;
typedef	__uint_fast32_t		uint_fast32_t;
typedef	__uint_fast64_t		uint_fast64_t;

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-10.1\")")
/* GNU and Darwin define this and people seem to think it's portable */





_Pragma("diag_pop")

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
/* Limits of wchar_t. */


_Pragma("diag_pop")


/* ISO/IEC 9899:2011 K.3.4.4 */





# 49 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
# 485 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"

_Pragma("diag_pop")

# 45 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"
//*****************************************************************************
//
// hw_gpio.h - Defines and Macros for GPIO hardware.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the GPIO register offsets.
//
//*****************************************************************************
# 79 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"

//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_IM register.
//
//*****************************************************************************

                                            // Enable



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_RIS register.
//
//*****************************************************************************

                                            // Status



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_MIS register.
//
//*****************************************************************************

                                            // Status



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_ICR register.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_LOCK register.
//
//*****************************************************************************


                                            // and may be modified

                                            // and may not be modified


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_SI register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_DR12R register.
//
//*****************************************************************************


                                            // 12-mA drive. This encoding is
                                            // only valid if the GPIOPP EDE bit
                                            // is set and the appropriate
                                            // GPIOPC EDM bit field is
                                            // programmed to 0x3

//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKEPEN register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKELVL register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKESTAT
// register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_PP register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_PC register.
//
//*****************************************************************************
# 194 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"
                                            // are maintained. GPIO n Drive
                                            // Select (GPIODRnR) registers
                                            // function as normal

                                            // provided

                                            // setting the corresponding
                                            // GPIODR4R register bit adds 2 mA
                                            // and setting the corresponding
                                            // GPIODR8R of GPIODR12R register
                                            // bit adds an additional 4 mA
# 212 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"

# 46 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
//*****************************************************************************
//
// hw_memmap.h - Macros defining the memory map of the device.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the base address of the memories and
// peripherals.
//
//*****************************************************************************
# 116 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
                                            // (GPIOs)

                                            // (GPIOs)

                                            // (GPIOs)
# 141 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
                                            // Hardware-Accelerated Module

                                            // Accelerator (DES)
# 150 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"

# 47 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_types.h"
//*****************************************************************************
//
// hw_types.h - Common types and macros.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// Macros for hardware access, both direct and via the bit-band region.
//
//*****************************************************************************
# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_types.h"

//*****************************************************************************
//
// Helper Macros for determining silicon revisions, etc.
//
// These macros will be used by Driverlib at "run-time" to create necessary
// conditional code blocks that will allow a single version of the Driverlib
// "binary" code to support multiple(all) Tiva silicon revisions.
//
// It is expected that these macros will be used inside of a standard 'C'
// conditional block of code, e.g.
//
//     if(CLASS_IS_TM4C123)
//     {
//         do some TM4C123-class specific code here.
//     }
//
// By default, these macros will be defined as run-time checks of the
// appropriate register(s) to allow creation of run-time conditional code
// blocks for a common DriverLib across the entire Tiva family.
//
// However, if code-space optimization is required, these macros can be "hard-
// coded" for a specific version of Tiva silicon.  Many compilers will then
// detect the "hard-coded" conditionals, and appropriately optimize the code
// blocks, eliminating any "unreachable" code.  This would result in a smaller
// Driverlib, thus producing a smaller final application size, but at the cost
// of limiting the Driverlib binary to a specific Tiva silicon revision.
//
//*****************************************************************************










































//*****************************************************************************
//
// For TivaWare 2.1, we removed all references to Tiva IC codenames from the
// source.  To ensure that existing customer code doesn't break as a result
// of this change, make sure that the old definitions are still available at
// least for the time being.
//
//*****************************************************************************





# 48 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"
//*****************************************************************************
//
// gpio.h - Defines and Macros for GPIO API.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Peripheral Driver Library.
//
//*****************************************************************************




//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************





//*****************************************************************************
//
// The following values define the bit field for the ui8Pins argument to
// several of the APIs.
//
//*****************************************************************************
# 68 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"

//*****************************************************************************
//
// Values that can be passed to GPIODirModeSet as the ui32PinIO parameter, and
// returned from GPIODirModeGet.
//
//*****************************************************************************




//*****************************************************************************
//
// Values that can be passed to GPIOIntTypeSet as the ui32IntType parameter,
// and returned from GPIOIntTypeGet.
//
//*****************************************************************************
# 91 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"

//*****************************************************************************
//
// Values that can be passed to GPIOPadConfigSet as the ui32Strength parameter,
// and returned by GPIOPadConfigGet in the *pui32Strength parameter.
//
//*****************************************************************************
# 105 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"

//*****************************************************************************
//
// Values that can be passed to GPIOPadConfigSet as the ui32PadType parameter,
// and returned by GPIOPadConfigGet in the *pui32PadType parameter.
//
//*****************************************************************************
# 119 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"

//*****************************************************************************
//
// Values that can be passed to GPIOIntEnable() and GPIOIntDisable() functions
// in the ui32IntFlags parameter.
//
//*****************************************************************************
# 135 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/gpio.h"

//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, _Bool bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 49 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"
//*****************************************************************************
//
// pin_map.h - Mapping of peripherals to pins for all parts.
//
// Copyright (c) 2007-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Peripheral Driver Library.
//
//*****************************************************************************




//*****************************************************************************
//
// TM4C1230C3PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 213 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1230D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 384 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1230E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 555 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1230H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 726 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231C3PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 875 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 1024 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231D5PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 1250 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 1399 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231E6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 1625 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 1774 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231H6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2000 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1232C3PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2171 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1232D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2342 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1232E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2513 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1232H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2684 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233C3PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2833 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 2982 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233D5PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 3208 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 3357 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233E6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 3583 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 3732 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233H6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 3958 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1236D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 4136 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1236E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 4314 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1236H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 4492 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237D5PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 4646 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237D5PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 4880 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237E6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 5034 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237E6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 5268 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237H6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 5422 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237H6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 5656 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123AE6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 5880 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123AH6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 6104 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BE6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 6288 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BE6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 6593 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BH6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 6777 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BH6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 7082 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123FE6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 7313 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123FH6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 7544 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GE6PM Port/Pin Mapping Definitions
//
//*****************************************************************************
# 7733 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GE6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 8046 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GH6PM Port/Pin Mapping Definitions
//
//*****************************************************************************



































































# 8125 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

# 8132 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"










# 8148 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

# 8155 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"













































# 8208 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

# 8216 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"




















//*****************************************************************************
//
// TM4C123GH6PZ Port/Pin Mapping Definitions
//
//*****************************************************************************
# 8548 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1231H6PGE Port/Pin Mapping Definitions
//
//*****************************************************************************
# 8857 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1233H6PGE Port/Pin Mapping Definitions
//
//*****************************************************************************
# 9166 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1237H6PGE Port/Pin Mapping Definitions
//
//*****************************************************************************
# 9483 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BH6PGE Port/Pin Mapping Definitions
//
//*****************************************************************************
# 9886 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123BH6ZRB Port/Pin Mapping Definitions
//
//*****************************************************************************
# 10338 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GH6PGE Port/Pin Mapping Definitions
//
//*****************************************************************************
# 10749 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GH6ZRB Port/Pin Mapping Definitions
//
//*****************************************************************************
# 11209 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C123GH6ZXR Port/Pin Mapping Definitions
//
//*****************************************************************************
# 11669 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1290NCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 12041 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1290NCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 12536 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1292NCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 12930 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1292NCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 13455 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1294KCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 13811 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1294NCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 14167 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1294NCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 14671 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1297NCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 15197 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1299KCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 15732 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C1299NCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 16267 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129CNCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 16639 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129CNCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 17134 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129DNCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 17528 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129DNCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 18053 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129EKCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 18409 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129ENCPDT Port/Pin Mapping Definitions
//
//*****************************************************************************
# 18765 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129ENCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 19269 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129LNCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 19804 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129XKCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 20378 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

//*****************************************************************************
//
// TM4C129XNCZAD Port/Pin Mapping Definitions
//
//*****************************************************************************
# 20952 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pin_map.h"

# 50 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"
//*****************************************************************************
//
// rom.h - Macros to facilitate calling functions in the ROM.
//
// Copyright (c) 2007-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Peripheral Driver Library.
//
//*****************************************************************************





//*****************************************************************************
//
// ROM selection labels changed between TivaWare 2.0.1 and 2.1.  The following
// labels are intended to ensure backwards compatibility for applications
// which have not yet been updated to use the replacement labels.
//
//*****************************************************************************
# 76 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Pointers to the main API tables.
//
//*****************************************************************************
# 117 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the ADC API.
//
//*****************************************************************************
# 432 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the AES API.
//
//*****************************************************************************
# 607 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the CAN API.
//
//*****************************************************************************
# 785 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Comparator API.
//
//*****************************************************************************
# 863 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the CRC API.
//
//*****************************************************************************
# 906 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the DES API.
//
//*****************************************************************************
# 1025 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the EEPROM API.
//
//*****************************************************************************
# 1182 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the EPI API.
//
//*****************************************************************************
# 1427 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the EMAC API.
//
//*****************************************************************************
# 1860 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Flash API.
//
//*****************************************************************************
# 1979 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the FPU API.
//
//*****************************************************************************
# 2066 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the GPIO API.
//
//*****************************************************************************
# 2406 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Hibernate API.
//
//*****************************************************************************
# 2764 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the I2C API.
//
//*****************************************************************************
# 3138 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Interrupt API.
//
//*****************************************************************************
# 3264 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the LCD API.
//
//*****************************************************************************
# 3477 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the MPU API.
//
//*****************************************************************************
# 3550 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the OneWire API.
//
//*****************************************************************************
# 3640 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the PWM API.
//
//*****************************************************************************
# 3978 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the QEI API.
//
//*****************************************************************************
# 4128 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SHAMD5 API.
//
//*****************************************************************************
# 4255 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SMBus API.
//
//*****************************************************************************
# 4855 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SPIFlash API.
//
//*****************************************************************************
# 5044 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SSI API.
//
//*****************************************************************************
# 5252 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SysCtl API.
//
//*****************************************************************************
# 5608 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SysExc API.
//
//*****************************************************************************
# 5650 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the SysTick API.
//
//*****************************************************************************
# 5719 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Timer API.
//
//*****************************************************************************
# 6038 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the UART API.
//
//*****************************************************************************
# 6455 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the uDMA API.
//
//*****************************************************************************
# 6687 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the USB API.
//
//*****************************************************************************
# 7564 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Watchdog API.
//
//*****************************************************************************
# 7717 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

//*****************************************************************************
//
// Macros for calling ROM functions in the Software API.
//
//*****************************************************************************
# 7783 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom.h"

# 51 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"
//*****************************************************************************
//
// rom_map.h - Macros to facilitate calling functions in the ROM when they are
//             available and in flash otherwise.
//
// Copyright (c) 2008-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Peripheral Driver Library.
//
//*****************************************************************************




//*****************************************************************************
//
// Macros for the ADC API.
//
//*****************************************************************************
# 280 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the AES API.
//
//*****************************************************************************
# 447 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the CAN API.
//
//*****************************************************************************
# 572 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Comparator API.
//
//*****************************************************************************
# 627 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the CRC API.
//
//*****************************************************************************
# 668 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the DES API.
//
//*****************************************************************************
# 786 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the EEPROM API.
//
//*****************************************************************************
# 918 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the EPI API.
//
//*****************************************************************************
# 1148 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the EMAC API.
//
//*****************************************************************************
# 1651 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Flash API.
//
//*****************************************************************************
# 1741 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the FPU API.
//
//*****************************************************************************
# 1810 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the GPIO API.
//
//*****************************************************************************
# 2068 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Hibernate API.
//
//*****************************************************************************
# 2396 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the I2C API.
//
//*****************************************************************************
# 2759 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Interrupt API.
//
//*****************************************************************************
# 2863 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the LCD API.
//
//*****************************************************************************
# 3065 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the MPU API.
//
//*****************************************************************************
# 3120 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the OneWire API.
//
//*****************************************************************************
# 3210 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the PWM API.
//
//*****************************************************************************
# 3440 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the QEI API.
//
//*****************************************************************************
# 3551 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SHAMD5 API.
//
//*****************************************************************************
# 3676 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SMBus API.
//
//*****************************************************************************
# 4102 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SPIFlash API.
//
//*****************************************************************************
# 4255 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SSI API.
//
//*****************************************************************************
# 4408 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SysCtl API.
//
//*****************************************************************************
# 4729 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SysExc API.
//
//*****************************************************************************
# 4763 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the SysTick API.
//
//*****************************************************************************
# 4818 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Timer API.
//
//*****************************************************************************
# 5069 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the UART API.
//
//*****************************************************************************
# 5383 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the uDMA API.
//
//*****************************************************************************
# 5557 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the USB API.
//
//*****************************************************************************
# 6249 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Watchdog API.
//
//*****************************************************************************
# 6367 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

//*****************************************************************************
//
// Macros for the Software API.
//
//*****************************************************************************
# 6408 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/rom_map.h"

# 52 "syscfg/pinout.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"
//*****************************************************************************
//
// sysctl.h - Prototypes for the system control driver.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Peripheral Driver Library.
//
//*****************************************************************************




//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************





//*****************************************************************************
//
// The following are values that can be passed to the
// SysCtlPeripheralPresent(), SysCtlPeripheralEnable(),
// SysCtlPeripheralDisable(), and SysCtlPeripheralReset() APIs as the
// ui32Peripheral parameter.  The peripherals in the fourth group (upper nibble
// is 3) can only be used with the SysCtlPeripheralPresent() API.
//
//*****************************************************************************
# 140 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlLDOSleepSet() and
// SysCtlLDODeepSleepSet() APIs as the ui32Voltage value, or returned by the
// SysCtlLDOSleepGet() and SysCtlLDODeepSleepGet() APIs.
//
//*****************************************************************************
# 155 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlIntEnable(),
// SysCtlIntDisable(), and SysCtlIntClear() APIs, or returned in the bit mask
// by the SysCtlIntStatus() API.
//
//*****************************************************************************
# 171 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlResetCauseClear()
// API or returned by the SysCtlResetCauseGet() API.
//
//*****************************************************************************
# 185 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"
                                            // Watchdog reset(Deprecated)





//*****************************************************************************
//
// The following are values that can be passed to the SysCtlBrownOutConfigSet()
// API as the ui32Config parameter.
//
//*****************************************************************************



//*****************************************************************************
//
// The following are values that can be passed to the SysCtlPWMClockSet() API
// as the ui32Config parameter, and can be returned by the SysCtlPWMClockGet()
// API.
//
//*****************************************************************************
# 214 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlClockSet() API as
// the ui32Config parameter.
//
//*****************************************************************************
# 385 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlDeepSleepClockSet()
// API as the ui32Config parameter.
//
//*****************************************************************************
# 462 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlPIOSCCalibrate()
// API as the ui32Type parameter.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are values that can be passed to the SysCtlMOSCConfigSet() API
// as the ui32Config parameter.
//
//*****************************************************************************
# 486 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The following are values that can be passed to the SysCtlSleepPowerSet() and
// SysCtlDeepSleepPowerSet() APIs as the ui32Config parameter.
//
//*****************************************************************************

                                            // (Deep Sleep Only)

                                            // (Deep Sleep Only)






//*****************************************************************************
//
// Defines for the SysCtlResetBehaviorSet() and SysCtlResetBehaviorGet() APIs.
//
//*****************************************************************************
# 516 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// Values used with the SysCtlVoltageEventConfig() API.
//
//*****************************************************************************
# 535 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// Values used with the SysCtlVoltageEventStatus() and
// SysCtlVoltageEventClear() APIs.
//
//*****************************************************************************



//*****************************************************************************
//
// Values used with the SysCtlNMIStatus() API.
//
//*****************************************************************************
# 556 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/sysctl.h"

//*****************************************************************************
//
// The defines for the SysCtlClockOutConfig() API.
//
//*****************************************************************************






//*****************************************************************************
//
// The following defines are used with the SysCtlAltClkConfig() function.
//
//*****************************************************************************




//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern _Bool SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern _Bool SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(_Bool bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(_Bool bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(_Bool bEnable);
extern void SysCtlMOSCVerificationSet(_Bool bEnable);
extern void SysCtlPLLVerificationSet(_Bool bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 53 "syscfg/pinout.c"
# 1 "syscfg\\pinout.h"
//*****************************************************************************
// pinout.h
//
// configure the device pins for different signals
//
// Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/ 
// 
// 
//  Redistribution and use in source and binary forms, with or without 
//  modification, are permitted provided that the following conditions 
//  are met:
//
//    Redistributions of source code must retain the above copyright 
//    notice, this list of conditions and the following disclaimer.
//
//    Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the 
//    documentation and/or other materials provided with the   
//    distribution.
//
//    Neither the name of Texas Instruments Incorporated nor the names of
//    its contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************

// This file was automatically generated on 2020-12-22 at 16:27:40
// by TI PinMux version 1.3.1030
//
//*****************************************************************************




//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************





//*****************************************************************************
//
// Prototypes.
//
//*****************************************************************************
extern void PinoutSet(void);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 54 "syscfg/pinout.c"

//*****************************************************************************
//
//! \addtogroup pinout_api
//! @{
//
//*****************************************************************************

//*****************************************************************************
//
//! Configures the device pins for the customer specific usage.
//!
//! \return None.
//
//*****************************************************************************
void
PinoutSet(void)
{
    //
    // Enable Peripheral Clocks 
    //
	SysCtlPeripheralEnable(0xf0000800);
	SysCtlPeripheralEnable(0xf0000801);
	SysCtlPeripheralEnable(0xf0000802);
	SysCtlPeripheralEnable(0xf0000803);
	SysCtlPeripheralEnable(0xf0000804);
	SysCtlPeripheralEnable(0xf0000805);

    //
    // Configure the GPIO Pin Mux for PE3
	// for AIN0_1
    //
	GPIOPinTypeADC(0x40024000, 0x00000008);

    //
    // Configure the GPIO Pin Mux for PD3
	// for AIN4_1
    //
	GPIOPinTypeADC(0x40007000, 0x00000008);

    //
    // Configure the GPIO Pin Mux for PE2
	// for AIN1_1
    //
	GPIOPinTypeADC(0x40024000, 0x00000004);

    //
    // Configure the GPIO Pin Mux for PE1
	// for AIN2_1
    //
	GPIOPinTypeADC(0x40024000, 0x00000002);

    //
    // Configure the GPIO Pin Mux for PB6
	// for GPIO_PB6
    //
	GPIOPinTypeGPIOOutputOD(0x40005000, 0x00000040);

    //
    // Configure the GPIO Pin Mux for PB7
	// for GPIO_PB7
    //
	GPIOPinTypeGPIOOutputOD(0x40005000, 0x00000080);

	//
	// Unlock the Port Pin and Set the Commit Bit
	//
	(*((volatile uint32_t *)(0x40007000+0x00000520))) = 0x4C4F434B;
	(*((volatile uint32_t *)(0x40007000+0x00000524)))   |= 0x00000080;
	(*((volatile uint32_t *)(0x40007000+0x00000520))) = 0x0;
	
    //
    // Configure the GPIO Pin Mux for PD7
	// for GPIO_PD7
    //
	GPIOPinTypeGPIOOutputOD(0x40007000, 0x00000080);

    //
    // Configure the GPIO Pin Mux for PC7
	// for GPIO_PC7
    //
	GPIOPinTypeGPIOOutputOD(0x40006000, 0x00000080);

    //
    // Configure the GPIO Pin Mux for PC6
	// for GPIO_PC6
    //
	GPIOPinTypeGPIOOutputOD(0x40006000, 0x00000040);

    //
    // Configure the GPIO Pin Mux for PF2
	// for GPIO_PF2
    //
	GPIOPinTypeGPIOOutput(0x40025000, 0x00000004);

    //
    // Configure the GPIO Pin Mux for PF3
	// for GPIO_PF3
    //
	GPIOPinTypeGPIOOutput(0x40025000, 0x00000008);

	//
	// Unlock the Port Pin and Set the Commit Bit
	//
	(*((volatile uint32_t *)(0x40025000+0x00000520))) = 0x4C4F434B;
	(*((volatile uint32_t *)(0x40025000+0x00000524)))   |= 0x00000001;
	(*((volatile uint32_t *)(0x40025000+0x00000520))) = 0x0;
	
    //
    // Configure the GPIO Pin Mux for PF0
	// for GPIO_PF0
    //
	GPIOPinTypeGPIOInput(0x40025000, 0x00000001);
	GPIOPadConfigSet(0x40025000, 0x00000001, 0x00000001, 0x0000000A);

    //
    // Configure the GPIO Pin Mux for PF4
	// for GPIO_PF4
    //
	GPIOPinTypeGPIOInput(0x40025000, 0x00000010);
	GPIOPadConfigSet(0x40025000, 0x00000010, 0x00000001, 0x0000000A);

    //
    // Configure the GPIO Pin Mux for PC5
	// for GPIO_PC5
    //
	GPIOPinTypeGPIOOutputOD(0x40006000, 0x00000020);

    //
    // Configure the GPIO Pin Mux for PC4
	// for GPIO_PC4
    //
	GPIOPinTypeGPIOInput(0x40006000, 0x00000010);
	GPIOPadConfigSet(0x40006000, 0x00000010, 0x00000001, 0x0000000A);

    //
    // Configure the GPIO Pin Mux for PA2
	// for GPIO_PA2
    //
	GPIOPinTypeGPIOOutputOD(0x40004000, 0x00000004);

    //
    // Configure the GPIO Pin Mux for PE4
	// for I2C2SCL
    //
	GPIOPinConfigure(0x00041003);
	GPIOPinTypeI2CSCL(0x40024000, 0x00000010);

    //
    // Configure the GPIO Pin Mux for PE5
	// for I2C2SDA
    //
	GPIOPinConfigure(0x00041403);
	GPIOPinTypeI2C(0x40024000, 0x00000020);

    //
    // Configure the GPIO Pin Mux for PA6
	// for I2C1SCL
    //
	GPIOPinConfigure(0x00001803);
	GPIOPinTypeI2CSCL(0x40004000, 0x00000040);

    //
    // Configure the GPIO Pin Mux for PA7
	// for I2C1SDA
    //
	GPIOPinConfigure(0x00001C03);
	GPIOPinTypeI2C(0x40004000, 0x00000080);

    //
    // Configure the GPIO Pin Mux for PB2
	// for I2C0SCL
    //
	GPIOPinConfigure(0x00010803);
	GPIOPinTypeI2CSCL(0x40005000, 0x00000004);

    //
    // Configure the GPIO Pin Mux for PB3
	// for I2C0SDA
    //
	GPIOPinConfigure(0x00010C03);
	GPIOPinTypeI2C(0x40005000, 0x00000008);

    //
    // Configure the GPIO Pin Mux for PF1
	// for SSI1TX
    //
	GPIOPinConfigure(0x00050402);
	GPIOPinTypeSSI(0x40025000, 0x00000002);

    //
    // Configure the GPIO Pin Mux for PD0
	// for SSI1CLK
    //
	GPIOPinConfigure(0x00030002);
	GPIOPinTypeSSI(0x40007000, 0x00000001);

    //
    // Configure the GPIO Pin Mux for PA0
	// for U0RX
    //
	GPIOPinConfigure(0x00000001);
	GPIOPinTypeUART(0x40004000, 0x00000001);

    //
    // Configure the GPIO Pin Mux for PA1
	// for U0TX
    //
	GPIOPinConfigure(0x00000401);
	GPIOPinTypeUART(0x40004000, 0x00000002);

}

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

