# 1 "../source/config/serialConfig.c"
/*
 * spiConfig.c
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */

/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

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

# 41 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"

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

# 41 "../source/config/serialConfig.c"
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





_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.11\")")













_Pragma("diag_pop")

# 42 "../source/config/serialConfig.c"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */




# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdarg.h"
/*****************************************************************************/
/* stdarg.h                                                                  */
/*                                                                           */
/* Copyright (c) 1996 Texas Instruments Incorporated                         */
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
#pragma CHECK_MISRA("-19.7") /* need function-like macros */
#pragma CHECK_MISRA("-19.10") /* need types as macro arguments */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */





typedef __va_list va_list;










# 75 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdarg.h"





#pragma diag_pop



# 18 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"
/*****************************************************************************/
/* stddef.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
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
_Pragma("CHECK_MISRA(\"-19.7\")") /* macros required for implementation */
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */
_Pragma("CHECK_MISRA(\"-20.2\")") /* standard headers must define standard names */









typedef int ptrdiff_t;







typedef unsigned size_t;


# 73 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"

typedef unsigned short wchar_t;




/*----------------------------------------------------------------------------*/
/* C++11 and C11 required max_align_t to be defined. The libc++ cstddef       */
/* header expects the macro __DEFINED_max_align_t to be defined if it is to   */
/* use the definintion of max_align_t from stddef.h. Only define it if        */
/* compiling for C11 or we're in non strict ansi mode.                        */
/*----------------------------------------------------------------------------*/



typedef long double max_align_t;



_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.10\")") /* need types as macro arguments */

# 106 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"

_Pragma("diag_pop")





_Pragma("diag_pop")

# 19 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* macros to simplify "stringification" and computed includes */




/* TitleCase standard types */



typedef char            xdc_Char;
typedef unsigned char   xdc_UChar;
typedef short           xdc_Short;
typedef unsigned short  xdc_UShort;
typedef int             xdc_Int;
typedef unsigned int    xdc_UInt;
typedef long            xdc_Long;
typedef unsigned long   xdc_ULong;
typedef float           xdc_Float;
typedef double          xdc_Double;
typedef long double     xdc_LDouble;
typedef size_t          xdc_SizeT;
typedef va_list         xdc_VaList;

/* Generic Extended Types */

typedef unsigned short  xdc_Bool;       /* boolean flag */
typedef void            *xdc_Ptr;       /* data pointer */
typedef const void      *xdc_CPtr;      /* data pointer */
typedef char            *xdc_String;    /* null terminated string */
typedef const char      *xdc_CString;   /* null terminated immutable string */



/* we intentionally omit arguments from Fxn to indicate that it can have
 * any (or none).  Unfortunately this causes gcc to emit warnings when
 * -Wstrict-prototypes is used.  Newer gcc's (4.6 or later) support a pragma
 * that works around this:
 *
 *    #pragma GCC diagnostic ignored "-Wstrict-prototypes"
 */
# 70 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
  typedef int             (*xdc_Fxn)();   /* function pointer */


/*
 * Import the target-specific std.h
 */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments and others.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 *  Contributors:
 *      Texas Instruments - initial implementation
 * 
 * */
/*
 *  ======== ti/targets/arm/elf/std.h ========
 *  Standard types for supported TI Arm compilers for ELF
 */




/*  Define target-specific "portable" macros
 *
 *  The build command-line define xdc_target_name__ to be the value
 *  of the target's name config parameter.  We use this to include the
 *  target-specific definitions for the required target-independent
 *  xdc_target* macros.
 */
# 1 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"
/*
 *  ======== M4F.h ========
 *  DO NOT MODIFY: This header is generated from stddef.xdt
 *
 *  This header contains target-specific definitions of target-independent
 *  macros required by the ITarget interface.  These definitions allow C/C++
 *  sources to portably compile for multiple targets (using #ifdef ...).
 */



/*
 *  ======== ti_targets_arm_elf_M4F ========
 *  This macro identifies the specific target being used.  This macro should
 *  probably be avoided in portable sources.
 */


/*
 *  ======== xdc_target__arraytype_VaList ========
 *  The following macro specifies whether or not a VaList is an 
 *  array type; e.g., struct __va_list_tag (*)[1] verses a simple char *.  
 *  This affects how va_list variables are passed to functions (by value
 *  or by address).
 */


/*
 *  ======== xdc_target__isaCompatible_* macros ========
 *  The following definitions enable clients to conditionally compile for any
 *  compatible subset of the actual target ISA.
 */



/*
 *  ======== xdc_target__isa_v7M4 ========
 *  This macro identifies the specific target ISA for which we are being
 *  compiled.
 */


/*
 *  ======== xdc_target__{big|little}Endian ========
 *  The following macro enables clients to portably compile for big or little
 *  endian targets.
 */


/*
 *  ======== xdc_target__{...}Code ========
 *  The following macro enables clients to portably compile for target specific
 *  code models; e.g., near, far, ...
 */


/*
 *  ======== xdc_target__os_undefined ========
 *  The following macro enables clients to portably compile for target specific
 *  OS; e.g., Linux, Solaris, Windows, undefined.
 */


/*
 *  ======== xdc_target__sizeof_ ========
 *  The following macros enable clients to portably determine type sizes
 *  within #ifdef blocks; sizeof() can't be used and the definitions in
 *  stdint.h are not available to C++ clients (unless the special macro
 *  __STDC_LIMIT_MACROS is defined).
 */
# 87 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"

/*
 *  ======== xdc_target__alignof_ ========
 *  The following macros enable clients to portably determine type alignment
 *  within #ifdef blocks; even if provided by the compiler, alignof() can't
 *  be used in pre-processor statements.
 */
# 110 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"

/*
 *  ======== xdc_target__bitsPerChar ========
 *  The number of bits in a char.  This macro allow one to determine the
 *  precise number of bits in any of the standard types (whose sizes are
 *  expressed as a number of chars).
 */


# 29 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"


/* "inherit" (i.e., include) all ti.targets standard types */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments and others.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 *  Contributors:
 *      Texas Instruments - initial implementation
 * 
 * */
/*
 *  ======== ti/targets/std.h ========
 *  Standard types for supported TI compilers
 *
 */




/* allow _TI_STD_TYPES like 'Uns' and 'Uint8' */




/* include target-specific "portable" macros */






# 42 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 * xdc__LONGLONG__ indicates if compiler supports 'long long' type
 * xdc__BITS<n> __ indicates if compiler supports 'uint<n>_t' type
 */
# 73 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

# 92 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 *  ======== [U]Int<n> ========
 */
typedef int_least8_t    xdc_Int8;
typedef uint_least8_t   xdc_UInt8;
typedef int_least16_t   xdc_Int16;
typedef uint_least16_t  xdc_UInt16;
typedef int_least32_t   xdc_Int32;
typedef uint_least32_t  xdc_UInt32;


    typedef int_least64_t   xdc_Int64;
    typedef uint_least64_t   xdc_UInt64;


# 120 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 *  ======== Bits<n> ========
 */

    typedef uint8_t     xdc_Bits8;


    typedef uint16_t    xdc_Bits16;


    typedef uint32_t    xdc_Bits32;


    typedef uint64_t    xdc_Bits64;


/*
 *  ======== [UI]Arg ========
 */
typedef intptr_t        xdc_IArg;
typedef uintptr_t       xdc_UArg;

/*
 *  ======== restrict ========
 */



/*
 *  ======== ti_targets_mkPragma ========
 */


/*
 *  ======== xdc__META ========
 */




/*
 *  ======== __ti__ ========
 *  These symbols are used by RTSC tools to indicate presence/absence of
 *  assorted #pragma options in TI compiler.
 */




# 181 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"


/*
 *  @(#) ti.targets; 1, 0, 3,0; 1-29-2016 16:37:07; /db/ztree/library/trees/xdctargets/xdctargets-k09/src/ xlibrary

 */

# 33 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"


/*
 *  @(#) ti.targets.arm.elf; 1, 0, 0,0; 1-29-2016 16:37:09; /db/ztree/library/trees/xdctargets/xdctargets-k09/src/ xlibrary

 */

# 81 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
# 113 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* Each modules' internal header file defines 'module' as 
 * xdc__MODOBJADDR__(Module__state__V), where Module__state__V is the actual
 * object where the module state is kept. For most targets, the default macro
 * given here results in the construct '(&Module__state__V)->field', when the
 * expression 'module->field' is used. Compilers then generate the code that
 * doesn't dereference a pointer, but puts the address of the field in the
 * code.
 * The targets that need to do something different can define
 * xdc__MODOBJADDR__ in std.h for their target package.
 */




/* Long Long Types */


typedef long long               xdc_LLong;
typedef unsigned long long      xdc_ULLong;

# 147 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* Arg to Ptr and Fxn conversion operators
 *
 * Individual targets may override these definitions in the event
 * that compilers issue warnings about shortening of an Arg to a pointer,
 * for example.
 */

static inline xdc_Ptr xdc_iargToPtr(xdc_IArg a) { return ((xdc_Ptr)a); }
static inline xdc_Ptr xdc_uargToPtr(xdc_UArg a) { return ((xdc_Ptr)a); }



static inline xdc_Fxn xdc_iargToFxn(xdc_IArg a) { return ((xdc_Fxn)a); }
static inline xdc_Fxn xdc_uargToFxn(xdc_UArg a) { return ((xdc_Fxn)a); }



/*
 * functions to efficiently convert a single precision float to an IArg
 * and vice-versa while maintaining client type safety
 * 
 * Here the assumption is that sizeof(Float) <= sizeof(IArg);
 */
typedef union {
    xdc_Float f;
    xdc_IArg  a;
} xdc_FloatData;

static inline xdc_IArg xdc_floatToArg(xdc_Float f)
{
     xdc_FloatData u;
     u.f = f;

     return (u.a);
}

static inline xdc_Float xdc_argToFloat(xdc_IArg a)
{
     xdc_FloatData u;
     u.a = a;

     return (u.f);
}


/* restrict keyword */




/* Unprefixed Aliases */



# 208 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"



typedef xdc_Char        Char;
typedef xdc_UChar       UChar;
typedef xdc_Short       Short;
typedef xdc_UShort      UShort;
typedef xdc_Int         Int;
typedef xdc_UInt        UInt;
typedef xdc_Long        Long;
typedef xdc_ULong       ULong;
typedef xdc_LLong       LLong;
typedef xdc_ULLong      ULLong;
typedef xdc_Float       Float;
typedef xdc_Double      Double;
typedef xdc_LDouble     LDouble;
typedef xdc_SizeT       SizeT;
typedef xdc_VaList      VaList;

typedef xdc_IArg        IArg;
typedef xdc_UArg        UArg;
typedef xdc_Bool        Bool;
typedef xdc_Int8        Int8;
typedef xdc_Int16       Int16;
typedef xdc_Int32       Int32;
typedef xdc_Fxn         Fxn;
typedef xdc_Ptr         Ptr;

typedef xdc_String      String;

typedef xdc_CString     CString;

typedef xdc_UInt8       UInt8;
typedef xdc_UInt16      UInt16;
typedef xdc_UInt32      UInt32;

/* DEPRECATED Aliases */



/* xdc_Arg is defined only in ti/targets/std.h; use IArg and UArg instead */




typedef xdc_UInt8       Uint8;
typedef xdc_UInt16      Uint16;
typedef xdc_UInt32      Uint32;
typedef xdc_UInt        Uns;


/*
 *  ======== optional types ========
 *  The following types are not always defined for all targets
 */

typedef xdc_Int64       Int64;
typedef xdc_UInt64      UInt64;


/* The following exact size types are not required by C99 and may not be
 * supported by some compiler/processor environments.  For greater
 * portability, use the IntN or UIntN types above.
 */

typedef xdc_Bits8       Bits8;



typedef xdc_Bits16      Bits16;



typedef xdc_Bits32      Bits32;



typedef xdc_Bits64      Bits64;




/* Standard Constants */

/* NULL must be 0 for C++ and is set to 0 in C to allow legacy code to
 * compile without warnings.
 *
 * If xdc__strict is defined, NULL is defined to be a pointer to allow
 * maximal type checking in "modern" C sources
 */
# 304 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"







/* Declaration Qualifiers */





/*
 *  ======== xdc__CODESECT ========
 *  Code-Section Directive
 *
 *  Targets can optionally #define xdc__CODESECT in their specific
 *  std.h files.  This directive is placed in front of all
 *  "extern" function declarations, and specifies a section-name in
 *  which to place this function.  This approach
 *  provides more control on combining/organizing groups of
 *  related functions into a single named sub-section (e.g.,
 *  "init-code")  If this macro is not defined by the target, an
 *  empty definition is used instead.
 */ 




/*
 *  ======== xdc__META ========
 *  Embed unreferenced string in the current file
 *
 *  Strings emebdded via xdc__META can be placed in a section that is
 *  _not_ loaded on the target but are, nevertheless, part of the
 *  executable and available to loaders.
 *
 *  Different targets may define this macro in a way that places these
 *  strings in an output section that is not loaded (and therefore does
 *  not takeup space on the target).  Unless the target provides a
 *  definition of xdc__META, the definition below simply defines
 *  as string constant in the current file.
 */





/*
 *  @(#) xdc; 1, 1, 1,0; 12-9-2015 17:34:58; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 44 "../source/config/serialConfig.c"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/xdc.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 * ======== xdc.h ========
 *  All generated public module headers include this file
 */




/*
 *  ======== __CONC__ ========
 *  Concatenate the specified tokens to create a new single token
 */



/*
 *  ======== __STR__ ========
 *  Stringify the specified arguement
 */



/*
 *  ======== xdc_FILE__ ========
 *  Alternative to __FILE__ which defaults to NULL
 *
 *  We define our own symbol in lieu of the standard __FILE__
 *  so we can avoid embedding lots of static strings in applications
 *  that use Error and Assert.
 *
 *  Both Error and Assert use xdc_FILE__ and ALL module internal headers
 *  redefine xdc_FILE__ to be NULL, unless xdc_FILE is defined.  If xdc_FILE
 *  is defined, xdc-FILE__ has the same value assigned to xdc_FILE.  So, by
 *  default, Error and Asserts in modules do *not* provide a file name.
 *
 *  Since this header in included in all module public headers, "non-module"
 *  clients of Error and Assert *will*, by default, provide a file name
 *  string.  To eliminate these embedded strings, add the following line
 *  before all module headers:
 *      #define xdc_FILE    NULL
 *
 *  Module creators may opt to define xdc_FILE as the string to use in
 *  Error and Assert messages.  For example, adding the following line
 *  to a module's implementation (before the inclusion of the module's
 *  internal header) will cause the standard __FILE__ to be
 *  used in lieu of NULL in Error and Assert calls:
 *      #define xdc_FILE    __FILE__
 *
 */
# 69 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/xdc.h"

/*
 *  ======== xdc_LINE ========
 *  Standard file-line-number string for identifying a call site
 */













/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:50; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Types__prologue.h ========
 *  Hand crafted definitions for Types.xdc
 */
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== interface xdc.runtime.IModule ========
 */

typedef struct xdc_runtime_IModule_Fxns__ xdc_runtime_IModule_Fxns__;
typedef const xdc_runtime_IModule_Fxns__* xdc_runtime_IModule_Module;

/*
 * ======== module xdc.runtime.Assert ========
 */


/*
 * ======== module xdc.runtime.Core ========
 */

typedef struct xdc_runtime_Core_ObjDesc xdc_runtime_Core_ObjDesc;

/*
 * ======== module xdc.runtime.Defaults ========
 */


/*
 * ======== module xdc.runtime.Diags ========
 */

typedef struct xdc_runtime_Diags_DictElem xdc_runtime_Diags_DictElem;

/*
 * ======== module xdc.runtime.Error ========
 */

typedef struct xdc_runtime_Error_Data xdc_runtime_Error_Data;
typedef struct xdc_runtime_Error_Block xdc_runtime_Error_Block;
typedef struct xdc_runtime_Error_Module_State xdc_runtime_Error_Module_State;

/*
 * ======== module xdc.runtime.Gate ========
 */


/*
 * ======== interface xdc.runtime.IGateProvider ========
 */

typedef struct xdc_runtime_IGateProvider_Fxns__ xdc_runtime_IGateProvider_Fxns__;
typedef const xdc_runtime_IGateProvider_Fxns__* xdc_runtime_IGateProvider_Module;
typedef struct xdc_runtime_IGateProvider_Params xdc_runtime_IGateProvider_Params;
typedef struct xdc_runtime_IGateProvider___Object { xdc_runtime_IGateProvider_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IGateProvider_Handle;

/*
 * ======== module xdc.runtime.GateNull ========
 */

typedef struct xdc_runtime_GateNull_Fxns__ xdc_runtime_GateNull_Fxns__;
typedef const xdc_runtime_GateNull_Fxns__* xdc_runtime_GateNull_Module;
typedef struct xdc_runtime_GateNull_Params xdc_runtime_GateNull_Params;
typedef struct xdc_runtime_GateNull_Object xdc_runtime_GateNull_Object;
typedef struct xdc_runtime_GateNull_Struct xdc_runtime_GateNull_Struct;
typedef xdc_runtime_GateNull_Object* xdc_runtime_GateNull_Handle;
typedef struct xdc_runtime_GateNull_Object__ xdc_runtime_GateNull_Instance_State;
typedef xdc_runtime_GateNull_Object* xdc_runtime_GateNull_Instance;

/*
 * ======== module xdc.runtime.Log ========
 */

typedef struct xdc_runtime_Log_EventRec xdc_runtime_Log_EventRec;

/*
 * ======== interface xdc.runtime.ILogger ========
 */

typedef struct xdc_runtime_ILogger_Fxns__ xdc_runtime_ILogger_Fxns__;
typedef const xdc_runtime_ILogger_Fxns__* xdc_runtime_ILogger_Module;
typedef struct xdc_runtime_ILogger_Params xdc_runtime_ILogger_Params;
typedef struct xdc_runtime_ILogger___Object { xdc_runtime_ILogger_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_ILogger_Handle;

/*
 * ======== interface xdc.runtime.IFilterLogger ========
 */

typedef struct xdc_runtime_IFilterLogger_Fxns__ xdc_runtime_IFilterLogger_Fxns__;
typedef const xdc_runtime_IFilterLogger_Fxns__* xdc_runtime_IFilterLogger_Module;
typedef struct xdc_runtime_IFilterLogger_Params xdc_runtime_IFilterLogger_Params;
typedef struct xdc_runtime_IFilterLogger___Object { xdc_runtime_IFilterLogger_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IFilterLogger_Handle;

/*
 * ======== module xdc.runtime.LoggerBuf ========
 */

typedef struct xdc_runtime_LoggerBuf_Entry xdc_runtime_LoggerBuf_Entry;
typedef struct xdc_runtime_LoggerBuf_Module_State xdc_runtime_LoggerBuf_Module_State;
typedef struct xdc_runtime_LoggerBuf_Fxns__ xdc_runtime_LoggerBuf_Fxns__;
typedef const xdc_runtime_LoggerBuf_Fxns__* xdc_runtime_LoggerBuf_Module;
typedef struct xdc_runtime_LoggerBuf_Params xdc_runtime_LoggerBuf_Params;
typedef struct xdc_runtime_LoggerBuf_Object xdc_runtime_LoggerBuf_Object;
typedef struct xdc_runtime_LoggerBuf_Struct xdc_runtime_LoggerBuf_Struct;
typedef xdc_runtime_LoggerBuf_Object* xdc_runtime_LoggerBuf_Handle;
typedef struct xdc_runtime_LoggerBuf_Object__ xdc_runtime_LoggerBuf_Instance_State;
typedef xdc_runtime_LoggerBuf_Object* xdc_runtime_LoggerBuf_Instance;

/*
 * ======== module xdc.runtime.LoggerCallback ========
 */

typedef struct xdc_runtime_LoggerCallback_Fxns__ xdc_runtime_LoggerCallback_Fxns__;
typedef const xdc_runtime_LoggerCallback_Fxns__* xdc_runtime_LoggerCallback_Module;
typedef struct xdc_runtime_LoggerCallback_Params xdc_runtime_LoggerCallback_Params;
typedef struct xdc_runtime_LoggerCallback_Object xdc_runtime_LoggerCallback_Object;
typedef struct xdc_runtime_LoggerCallback_Struct xdc_runtime_LoggerCallback_Struct;
typedef xdc_runtime_LoggerCallback_Object* xdc_runtime_LoggerCallback_Handle;
typedef struct xdc_runtime_LoggerCallback_Object__ xdc_runtime_LoggerCallback_Instance_State;
typedef xdc_runtime_LoggerCallback_Object* xdc_runtime_LoggerCallback_Instance;

/*
 * ======== module xdc.runtime.LoggerSys ========
 */

typedef struct xdc_runtime_LoggerSys_Fxns__ xdc_runtime_LoggerSys_Fxns__;
typedef const xdc_runtime_LoggerSys_Fxns__* xdc_runtime_LoggerSys_Module;
typedef struct xdc_runtime_LoggerSys_Params xdc_runtime_LoggerSys_Params;
typedef struct xdc_runtime_LoggerSys_Object xdc_runtime_LoggerSys_Object;
typedef struct xdc_runtime_LoggerSys_Struct xdc_runtime_LoggerSys_Struct;
typedef xdc_runtime_LoggerSys_Object* xdc_runtime_LoggerSys_Handle;
typedef struct xdc_runtime_LoggerSys_Object__ xdc_runtime_LoggerSys_Instance_State;
typedef xdc_runtime_LoggerSys_Object* xdc_runtime_LoggerSys_Instance;

/*
 * ======== module xdc.runtime.Main ========
 */


/*
 * ======== module xdc.runtime.Memory ========
 */

typedef struct xdc_runtime_Memory_Stats xdc_runtime_Memory_Stats;
typedef struct xdc_runtime_Memory_Module_State xdc_runtime_Memory_Module_State;

/*
 * ======== interface xdc.runtime.IHeap ========
 */

typedef struct xdc_runtime_IHeap_Fxns__ xdc_runtime_IHeap_Fxns__;
typedef const xdc_runtime_IHeap_Fxns__* xdc_runtime_IHeap_Module;
typedef struct xdc_runtime_IHeap_Params xdc_runtime_IHeap_Params;
typedef struct xdc_runtime_IHeap___Object { xdc_runtime_IHeap_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IHeap_Handle;

/*
 * ======== module xdc.runtime.HeapMin ========
 */

typedef struct xdc_runtime_HeapMin_Fxns__ xdc_runtime_HeapMin_Fxns__;
typedef const xdc_runtime_HeapMin_Fxns__* xdc_runtime_HeapMin_Module;
typedef struct xdc_runtime_HeapMin_Params xdc_runtime_HeapMin_Params;
typedef struct xdc_runtime_HeapMin_Object xdc_runtime_HeapMin_Object;
typedef struct xdc_runtime_HeapMin_Struct xdc_runtime_HeapMin_Struct;
typedef xdc_runtime_HeapMin_Object* xdc_runtime_HeapMin_Handle;
typedef struct xdc_runtime_HeapMin_Object__ xdc_runtime_HeapMin_Instance_State;
typedef xdc_runtime_HeapMin_Object* xdc_runtime_HeapMin_Instance;

/*
 * ======== module xdc.runtime.HeapStd ========
 */

typedef struct xdc_runtime_HeapStd_Module_State xdc_runtime_HeapStd_Module_State;
typedef struct xdc_runtime_HeapStd_Fxns__ xdc_runtime_HeapStd_Fxns__;
typedef const xdc_runtime_HeapStd_Fxns__* xdc_runtime_HeapStd_Module;
typedef struct xdc_runtime_HeapStd_Params xdc_runtime_HeapStd_Params;
typedef struct xdc_runtime_HeapStd_Object xdc_runtime_HeapStd_Object;
typedef struct xdc_runtime_HeapStd_Struct xdc_runtime_HeapStd_Struct;
typedef xdc_runtime_HeapStd_Object* xdc_runtime_HeapStd_Handle;
typedef struct xdc_runtime_HeapStd_Object__ xdc_runtime_HeapStd_Instance_State;
typedef xdc_runtime_HeapStd_Object* xdc_runtime_HeapStd_Instance;

/*
 * ======== module xdc.runtime.Registry ========
 */

typedef struct xdc_runtime_Registry_Module_State xdc_runtime_Registry_Module_State;

/*
 * ======== module xdc.runtime.Rta ========
 */

typedef struct xdc_runtime_Rta_CommandPacket xdc_runtime_Rta_CommandPacket;
typedef struct xdc_runtime_Rta_ResponsePacket xdc_runtime_Rta_ResponsePacket;

/*
 * ======== module xdc.runtime.Startup ========
 */

typedef struct xdc_runtime_Startup_IdMap xdc_runtime_Startup_IdMap;
typedef struct xdc_runtime_Startup_Module_State xdc_runtime_Startup_Module_State;

/*
 * ======== module xdc.runtime.System ========
 */

typedef struct xdc_runtime_System_ParseData xdc_runtime_System_ParseData;
typedef struct xdc_runtime_System_Module_State xdc_runtime_System_Module_State;

/*
 * ======== interface xdc.runtime.ISystemSupport ========
 */

typedef struct xdc_runtime_ISystemSupport_Fxns__ xdc_runtime_ISystemSupport_Fxns__;
typedef const xdc_runtime_ISystemSupport_Fxns__* xdc_runtime_ISystemSupport_Module;

/*
 * ======== module xdc.runtime.SysCallback ========
 */

typedef struct xdc_runtime_SysCallback_Fxns__ xdc_runtime_SysCallback_Fxns__;
typedef const xdc_runtime_SysCallback_Fxns__* xdc_runtime_SysCallback_Module;

/*
 * ======== module xdc.runtime.SysMin ========
 */

typedef struct xdc_runtime_SysMin_Module_State xdc_runtime_SysMin_Module_State;
typedef struct xdc_runtime_SysMin_Fxns__ xdc_runtime_SysMin_Fxns__;
typedef const xdc_runtime_SysMin_Fxns__* xdc_runtime_SysMin_Module;

/*
 * ======== module xdc.runtime.SysStd ========
 */

typedef struct xdc_runtime_SysStd_Fxns__ xdc_runtime_SysStd_Fxns__;
typedef const xdc_runtime_SysStd_Fxns__* xdc_runtime_SysStd_Module;

/*
 * ======== module xdc.runtime.Text ========
 */

typedef struct xdc_runtime_Text_Node xdc_runtime_Text_Node;
typedef struct xdc_runtime_Text_MatchVisState xdc_runtime_Text_MatchVisState;
typedef struct xdc_runtime_Text_PrintVisState xdc_runtime_Text_PrintVisState;
typedef struct xdc_runtime_Text_Module_State xdc_runtime_Text_Module_State;

/*
 * ======== interface xdc.runtime.ITimestampClient ========
 */

typedef struct xdc_runtime_ITimestampClient_Fxns__ xdc_runtime_ITimestampClient_Fxns__;
typedef const xdc_runtime_ITimestampClient_Fxns__* xdc_runtime_ITimestampClient_Module;

/*
 * ======== module xdc.runtime.Timestamp ========
 */

typedef struct xdc_runtime_Timestamp_Fxns__ xdc_runtime_Timestamp_Fxns__;
typedef const xdc_runtime_Timestamp_Fxns__* xdc_runtime_Timestamp_Module;

/*
 * ======== interface xdc.runtime.ITimestampProvider ========
 */

typedef struct xdc_runtime_ITimestampProvider_Fxns__ xdc_runtime_ITimestampProvider_Fxns__;
typedef const xdc_runtime_ITimestampProvider_Fxns__* xdc_runtime_ITimestampProvider_Module;

/*
 * ======== module xdc.runtime.TimestampNull ========
 */

typedef struct xdc_runtime_TimestampNull_Fxns__ xdc_runtime_TimestampNull_Fxns__;
typedef const xdc_runtime_TimestampNull_Fxns__* xdc_runtime_TimestampNull_Module;

/*
 * ======== module xdc.runtime.TimestampStd ========
 */

typedef struct xdc_runtime_TimestampStd_Fxns__ xdc_runtime_TimestampStd_Fxns__;
typedef const xdc_runtime_TimestampStd_Fxns__* xdc_runtime_TimestampStd_Module;

/*
 * ======== module xdc.runtime.Types ========
 */

typedef struct xdc_runtime_Types_CordAddr__ xdc_runtime_Types_CordAddr__;
typedef struct xdc_runtime_Types_GateRef__ xdc_runtime_Types_GateRef__;
typedef struct xdc_runtime_Types_Label xdc_runtime_Types_Label;
typedef struct xdc_runtime_Types_Site xdc_runtime_Types_Site;
typedef struct xdc_runtime_Types_Timestamp64 xdc_runtime_Types_Timestamp64;
typedef struct xdc_runtime_Types_FreqHz xdc_runtime_Types_FreqHz;
typedef struct xdc_runtime_Types_RegDesc xdc_runtime_Types_RegDesc;
typedef struct xdc_runtime_Types_Vec xdc_runtime_Types_Vec;
typedef struct xdc_runtime_Types_Link xdc_runtime_Types_Link;
typedef struct xdc_runtime_Types_InstHdr xdc_runtime_Types_InstHdr;
typedef struct xdc_runtime_Types_PrmsHdr xdc_runtime_Types_PrmsHdr;
typedef struct xdc_runtime_Types_Base xdc_runtime_Types_Base;
typedef struct xdc_runtime_Types_SysFxns xdc_runtime_Types_SysFxns;
typedef struct xdc_runtime_Types_SysFxns2 xdc_runtime_Types_SysFxns2;

/*
 * ======== interface xdc.runtime.IInstance ========
 */

typedef struct xdc_runtime_IInstance_Fxns__ xdc_runtime_IInstance_Fxns__;
typedef const xdc_runtime_IInstance_Fxns__* xdc_runtime_IInstance_Module;
typedef struct xdc_runtime_IInstance_Params xdc_runtime_IInstance_Params;
typedef struct xdc_runtime_IInstance___Object { xdc_runtime_IInstance_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IInstance_Handle;

/*
 * ======== module xdc.runtime.LoggerBuf_TimestampProxy ========
 */

typedef struct xdc_runtime_LoggerBuf_TimestampProxy_Fxns__ xdc_runtime_LoggerBuf_TimestampProxy_Fxns__;
typedef const xdc_runtime_LoggerBuf_TimestampProxy_Fxns__* xdc_runtime_LoggerBuf_TimestampProxy_Module;

/*
 * ======== module xdc.runtime.LoggerBuf_Module_GateProxy ========
 */

typedef struct xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__ xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__;
typedef const xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__* xdc_runtime_LoggerBuf_Module_GateProxy_Module;
typedef struct xdc_runtime_LoggerBuf_Module_GateProxy_Params xdc_runtime_LoggerBuf_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_LoggerBuf_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.LoggerSys_TimestampProxy ========
 */

typedef struct xdc_runtime_LoggerSys_TimestampProxy_Fxns__ xdc_runtime_LoggerSys_TimestampProxy_Fxns__;
typedef const xdc_runtime_LoggerSys_TimestampProxy_Fxns__* xdc_runtime_LoggerSys_TimestampProxy_Module;

/*
 * ======== module xdc.runtime.Main_Module_GateProxy ========
 */

typedef struct xdc_runtime_Main_Module_GateProxy_Fxns__ xdc_runtime_Main_Module_GateProxy_Fxns__;
typedef const xdc_runtime_Main_Module_GateProxy_Fxns__* xdc_runtime_Main_Module_GateProxy_Module;
typedef struct xdc_runtime_Main_Module_GateProxy_Params xdc_runtime_Main_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_Main_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.Memory_HeapProxy ========
 */

typedef struct xdc_runtime_Memory_HeapProxy_Fxns__ xdc_runtime_Memory_HeapProxy_Fxns__;
typedef const xdc_runtime_Memory_HeapProxy_Fxns__* xdc_runtime_Memory_HeapProxy_Module;
typedef struct xdc_runtime_Memory_HeapProxy_Params xdc_runtime_Memory_HeapProxy_Params;
typedef struct xdc_runtime_IHeap___Object *xdc_runtime_Memory_HeapProxy_Handle;

/*
 * ======== module xdc.runtime.System_SupportProxy ========
 */

typedef struct xdc_runtime_System_SupportProxy_Fxns__ xdc_runtime_System_SupportProxy_Fxns__;
typedef const xdc_runtime_System_SupportProxy_Fxns__* xdc_runtime_System_SupportProxy_Module;

/*
 * ======== module xdc.runtime.System_Module_GateProxy ========
 */

typedef struct xdc_runtime_System_Module_GateProxy_Fxns__ xdc_runtime_System_Module_GateProxy_Fxns__;
typedef const xdc_runtime_System_Module_GateProxy_Fxns__* xdc_runtime_System_Module_GateProxy_Module;
typedef struct xdc_runtime_System_Module_GateProxy_Params xdc_runtime_System_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_System_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.Timestamp_SupportProxy ========
 */

typedef struct xdc_runtime_Timestamp_SupportProxy_Fxns__ xdc_runtime_Timestamp_SupportProxy_Fxns__;
typedef const xdc_runtime_Timestamp_SupportProxy_Fxns__* xdc_runtime_Timestamp_SupportProxy_Module;


# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* ModuleId */
typedef xdc_Bits16 xdc_runtime_Types_ModuleId;

/* DiagsMask */
typedef xdc_Bits16 xdc_runtime_Types_DiagsMask;

/* Event */
typedef xdc_Bits32 xdc_runtime_Types_Event;

/* EventId */
typedef xdc_runtime_Types_Event xdc_runtime_Types_EventId;

/* CordAddr__ */
struct xdc_runtime_Types_CordAddr__;

/* CordAddr */
typedef xdc_runtime_Types_CordAddr__ *xdc_runtime_Types_CordAddr;

/* GateRef__ */
struct xdc_runtime_Types_GateRef__;

/* GateRef */
typedef xdc_runtime_Types_GateRef__ *xdc_runtime_Types_GateRef;

/* RopeId */
typedef xdc_Bits16 xdc_runtime_Types_RopeId;

/* CreatePolicy */
enum xdc_runtime_Types_CreatePolicy {
    xdc_runtime_Types_STATIC_POLICY,
    xdc_runtime_Types_CREATE_POLICY,
    xdc_runtime_Types_DELETE_POLICY
};
typedef enum xdc_runtime_Types_CreatePolicy xdc_runtime_Types_CreatePolicy;

/* OutputPolicy */
enum xdc_runtime_Types_OutputPolicy {
    xdc_runtime_Types_COMMON_FILE,
    xdc_runtime_Types_SEPARATE_FILE,
    xdc_runtime_Types_NO_FILE
};
typedef enum xdc_runtime_Types_OutputPolicy xdc_runtime_Types_OutputPolicy;

/* Label */
struct xdc_runtime_Types_Label {
    xdc_Ptr handle;
    xdc_runtime_Types_ModuleId modId;
    xdc_String iname;
    xdc_Bool named;
};

/* Site */
struct xdc_runtime_Types_Site {
    xdc_runtime_Types_ModuleId mod;
    xdc_CString file;
    xdc_Int line;
};

/* Timestamp64 */
struct xdc_runtime_Types_Timestamp64 {
    xdc_Bits32 hi;
    xdc_Bits32 lo;
};

/* FreqHz */
struct xdc_runtime_Types_FreqHz {
    xdc_Bits32 hi;
    xdc_Bits32 lo;
};

/* RegDesc */
struct xdc_runtime_Types_RegDesc {
    xdc_runtime_Types_RegDesc *next;
    xdc_CString modName;
    xdc_runtime_Types_ModuleId id;
    xdc_runtime_Types_DiagsMask mask;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* LogEvent */
typedef xdc_Bits32 xdc_runtime_Types_LogEvent;

/* LoggerFxn0 */
typedef void (*xdc_runtime_Types_LoggerFxn0)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId);

/* LoggerFxn1 */
typedef void (*xdc_runtime_Types_LoggerFxn1)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg);

/* LoggerFxn2 */
typedef void (*xdc_runtime_Types_LoggerFxn2)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg);

/* LoggerFxn4 */
typedef void (*xdc_runtime_Types_LoggerFxn4)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg);

/* LoggerFxn8 */
typedef void (*xdc_runtime_Types_LoggerFxn8)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg);

/* Vec */
struct xdc_runtime_Types_Vec {
    xdc_Int len;
    xdc_Ptr arr;
};

/* Link */
struct xdc_runtime_Types_Link {
    xdc_runtime_Types_Link *next;
    xdc_runtime_Types_Link *prev;
};

/* InstHdr */
struct xdc_runtime_Types_InstHdr {
    xdc_runtime_Types_Link link;
};

/* PrmsHdr */
struct xdc_runtime_Types_PrmsHdr {
    xdc_SizeT size;
    xdc_Ptr self;
    xdc_Ptr modFxns;
    xdc_Ptr instPrms;
};

/* Base */
struct xdc_runtime_Types_Base {
    xdc_runtime_Types_Base *base;
};

/* SysFxns */
struct xdc_runtime_Types_SysFxns {
    xdc_Ptr (*__create)(xdc_Ptr, xdc_SizeT, xdc_Ptr, const xdc_Ptr, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*__delete)(xdc_Ptr);
    xdc_runtime_Types_Label *(*__label)(xdc_Ptr, xdc_runtime_Types_Label*);
    xdc_runtime_Types_ModuleId __mid;
};

/* SysFxns2 */
struct xdc_runtime_Types_SysFxns2 {
    xdc_Ptr (*__create)(xdc_Ptr, xdc_SizeT, xdc_Ptr, const xdc_UChar*, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*__delete)(xdc_Ptr);
    xdc_runtime_Types_Label *(*__label)(xdc_Ptr, xdc_runtime_Types_Label*);
    xdc_runtime_Types_ModuleId __mid;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Types_Module__diagsEnabled;
extern  const CT__xdc_runtime_Types_Module__diagsEnabled xdc_runtime_Types_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Types_Module__diagsIncluded;
extern  const CT__xdc_runtime_Types_Module__diagsIncluded xdc_runtime_Types_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Types_Module__diagsMask;
extern  const CT__xdc_runtime_Types_Module__diagsMask xdc_runtime_Types_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__gateObj;
extern  const CT__xdc_runtime_Types_Module__gateObj xdc_runtime_Types_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__gatePrms;
extern  const CT__xdc_runtime_Types_Module__gatePrms xdc_runtime_Types_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Types_Module__id;
extern  const CT__xdc_runtime_Types_Module__id xdc_runtime_Types_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Types_Module__loggerDefined;
extern  const CT__xdc_runtime_Types_Module__loggerDefined xdc_runtime_Types_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__loggerObj;
extern  const CT__xdc_runtime_Types_Module__loggerObj xdc_runtime_Types_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Types_Module__loggerFxn0;
extern  const CT__xdc_runtime_Types_Module__loggerFxn0 xdc_runtime_Types_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Types_Module__loggerFxn1;
extern  const CT__xdc_runtime_Types_Module__loggerFxn1 xdc_runtime_Types_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Types_Module__loggerFxn2;
extern  const CT__xdc_runtime_Types_Module__loggerFxn2 xdc_runtime_Types_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Types_Module__loggerFxn4;
extern  const CT__xdc_runtime_Types_Module__loggerFxn4 xdc_runtime_Types_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Types_Module__loggerFxn8;
extern  const CT__xdc_runtime_Types_Module__loggerFxn8 xdc_runtime_Types_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Types_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Types_Module__startupDoneFxn xdc_runtime_Types_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Types_Object__count;
extern  const CT__xdc_runtime_Types_Object__count xdc_runtime_Types_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Types_Object__heap;
extern  const CT__xdc_runtime_Types_Object__heap xdc_runtime_Types_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Types_Object__sizeof;
extern  const CT__xdc_runtime_Types_Object__sizeof xdc_runtime_Types_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Types_Object__table;
extern  const CT__xdc_runtime_Types_Object__table xdc_runtime_Types_Object__table__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Types_Module__startupDone__S( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Types_Module__id xdc_runtime_Types_Module_id( void ) 
{
    return xdc_runtime_Types_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Types_Module_hasMask( void ) 
{
    return xdc_runtime_Types_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Types_Module_getMask( void ) 
{
    return xdc_runtime_Types_Module__diagsMask__C != 0 ? *xdc_runtime_Types_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Types_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Types_Module__diagsMask__C != 0) *xdc_runtime_Types_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Types__epilogue.h ========
 *  Hand crafted macros for Types.xdc
 */

/*
 *  ======== xdc_runtime_Types_getEventId ========
 */



/*
 *  ======== xdc_runtime_Types_makeEvent ========
 */



/*
 *  ======== xdc_runtime_Types_getModuleId ========
 */

/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 341 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"



/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IInstance_Params {
    size_t __size;
    xdc_String name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IInstance_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base xdc_runtime_IInstance_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern xdc_runtime_IInstance_Handle xdc_runtime_IInstance_create(xdc_runtime_IInstance_Module, const xdc_runtime_IInstance_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern void xdc_runtime_IInstance_delete(xdc_runtime_IInstance_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IInstance_Module xdc_runtime_IInstance_Handle_to_Module( xdc_runtime_IInstance_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IInstance_Handle_label( xdc_runtime_IInstance_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IInstance_Module_id( xdc_runtime_IInstance_Module mod )
{
    return mod->__sysp->__mid;
}


/*
 * ======== FUNCTION SELECTORS ========
 */


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled xdc_runtime_Memory_HeapProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded xdc_runtime_Memory_HeapProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask xdc_runtime_Memory_HeapProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__gateObj;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__gateObj xdc_runtime_Memory_HeapProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms xdc_runtime_Memory_HeapProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Memory_HeapProxy_Module__id;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__id xdc_runtime_Memory_HeapProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined xdc_runtime_Memory_HeapProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj xdc_runtime_Memory_HeapProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0 xdc_runtime_Memory_HeapProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1 xdc_runtime_Memory_HeapProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2 xdc_runtime_Memory_HeapProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4 xdc_runtime_Memory_HeapProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8;
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8 xdc_runtime_Memory_HeapProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Memory_HeapProxy_Object__count;
extern  const CT__xdc_runtime_Memory_HeapProxy_Object__count xdc_runtime_Memory_HeapProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_HeapProxy_Object__heap;
extern  const CT__xdc_runtime_Memory_HeapProxy_Object__heap xdc_runtime_Memory_HeapProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Memory_HeapProxy_Object__sizeof;
extern  const CT__xdc_runtime_Memory_HeapProxy_Object__sizeof xdc_runtime_Memory_HeapProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Object__table;
extern  const CT__xdc_runtime_Memory_HeapProxy_Object__table xdc_runtime_Memory_HeapProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_Memory_HeapProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_Memory_HeapProxy_Struct {
    const xdc_runtime_Memory_HeapProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_Memory_HeapProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*alloc)(xdc_runtime_Memory_HeapProxy_Handle, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*free)(xdc_runtime_Memory_HeapProxy_Handle, xdc_Ptr, xdc_SizeT);
    xdc_Bool (*isBlocking)(xdc_runtime_Memory_HeapProxy_Handle);
    void (*getStats)(xdc_runtime_Memory_HeapProxy_Handle, xdc_runtime_Memory_Stats*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const xdc_runtime_Memory_HeapProxy_Fxns__ xdc_runtime_Memory_HeapProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *xdc_runtime_Memory_HeapProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Memory_HeapProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern xdc_runtime_Memory_HeapProxy_Handle xdc_runtime_Memory_HeapProxy_create( const xdc_runtime_Memory_HeapProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void xdc_runtime_Memory_HeapProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void xdc_runtime_Memory_HeapProxy_delete(xdc_runtime_Memory_HeapProxy_Handle *instp);

/* Object__destruct__S */

extern void xdc_runtime_Memory_HeapProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void xdc_runtime_Memory_HeapProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool xdc_runtime_Memory_HeapProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr xdc_runtime_Memory_HeapProxy_Proxy__delegate__S( void );

/* alloc__E */


extern xdc_Ptr xdc_runtime_Memory_HeapProxy_alloc__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* free__E */


extern void xdc_runtime_Memory_HeapProxy_free__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_Ptr block, xdc_SizeT size );

/* isBlocking__E */


extern xdc_Bool xdc_runtime_Memory_HeapProxy_isBlocking__E( xdc_runtime_Memory_HeapProxy_Handle __inst );

/* getStats__E */


extern void xdc_runtime_Memory_HeapProxy_getStats__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_runtime_Memory_Stats *stats );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IHeap_Module xdc_runtime_Memory_HeapProxy_Module_upCast( void )
{
    return (xdc_runtime_IHeap_Module)xdc_runtime_Memory_HeapProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IHeap */


/* Handle_upCast */
static inline xdc_runtime_IHeap_Handle xdc_runtime_Memory_HeapProxy_Handle_upCast( xdc_runtime_Memory_HeapProxy_Handle i )
{
    return (xdc_runtime_IHeap_Handle)i;
}

/* Handle_to_xdc_runtime_IHeap */


/* Handle_downCast */
static inline xdc_runtime_Memory_HeapProxy_Handle xdc_runtime_Memory_HeapProxy_Handle_downCast( xdc_runtime_IHeap_Handle i )
{
    xdc_runtime_IHeap_Handle i2 = (xdc_runtime_IHeap_Handle)i;
if (xdc_runtime_Memory_HeapProxy_Proxy__abstract__S()) return (xdc_runtime_Memory_HeapProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_Memory_HeapProxy_Proxy__delegate__S() ? (xdc_runtime_Memory_HeapProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IHeap */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Memory_HeapProxy_Module__id xdc_runtime_Memory_HeapProxy_Module_id( void ) 
{
    return xdc_runtime_Memory_HeapProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_Memory_HeapProxy_Params_init( xdc_runtime_Memory_HeapProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_Memory_HeapProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_Memory_HeapProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_Memory_HeapProxy_Params_copy(xdc_runtime_Memory_HeapProxy_Params *dst, const xdc_runtime_Memory_HeapProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_Memory_HeapProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_Memory_HeapProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Size */
typedef xdc_UArg xdc_runtime_Memory_Size;

/* Stats */
struct xdc_runtime_Memory_Stats {
    xdc_runtime_Memory_Size totalSize;
    xdc_runtime_Memory_Size totalFreeSize;
    xdc_runtime_Memory_Size largestFreeSize;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Memory_Module__diagsEnabled;
extern  const CT__xdc_runtime_Memory_Module__diagsEnabled xdc_runtime_Memory_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Memory_Module__diagsIncluded;
extern  const CT__xdc_runtime_Memory_Module__diagsIncluded xdc_runtime_Memory_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Memory_Module__diagsMask;
extern  const CT__xdc_runtime_Memory_Module__diagsMask xdc_runtime_Memory_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__gateObj;
extern  const CT__xdc_runtime_Memory_Module__gateObj xdc_runtime_Memory_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__gatePrms;
extern  const CT__xdc_runtime_Memory_Module__gatePrms xdc_runtime_Memory_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Memory_Module__id;
extern  const CT__xdc_runtime_Memory_Module__id xdc_runtime_Memory_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Memory_Module__loggerDefined;
extern  const CT__xdc_runtime_Memory_Module__loggerDefined xdc_runtime_Memory_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__loggerObj;
extern  const CT__xdc_runtime_Memory_Module__loggerObj xdc_runtime_Memory_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Memory_Module__loggerFxn0;
extern  const CT__xdc_runtime_Memory_Module__loggerFxn0 xdc_runtime_Memory_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Memory_Module__loggerFxn1;
extern  const CT__xdc_runtime_Memory_Module__loggerFxn1 xdc_runtime_Memory_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Memory_Module__loggerFxn2;
extern  const CT__xdc_runtime_Memory_Module__loggerFxn2 xdc_runtime_Memory_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Memory_Module__loggerFxn4;
extern  const CT__xdc_runtime_Memory_Module__loggerFxn4 xdc_runtime_Memory_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Memory_Module__loggerFxn8;
extern  const CT__xdc_runtime_Memory_Module__loggerFxn8 xdc_runtime_Memory_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Memory_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Memory_Module__startupDoneFxn xdc_runtime_Memory_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Memory_Object__count;
extern  const CT__xdc_runtime_Memory_Object__count xdc_runtime_Memory_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_Object__heap;
extern  const CT__xdc_runtime_Memory_Object__heap xdc_runtime_Memory_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Memory_Object__sizeof;
extern  const CT__xdc_runtime_Memory_Object__sizeof xdc_runtime_Memory_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Memory_Object__table;
extern  const CT__xdc_runtime_Memory_Object__table xdc_runtime_Memory_Object__table__C;

/* defaultHeapInstance */

typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_defaultHeapInstance;
extern  const CT__xdc_runtime_Memory_defaultHeapInstance xdc_runtime_Memory_defaultHeapInstance__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Memory_Module__startupDone__S( void );

/* alloc__E */


extern xdc_Ptr xdc_runtime_Memory_alloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* calloc__E */


extern xdc_Ptr xdc_runtime_Memory_calloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* free__E */


extern void xdc_runtime_Memory_free__E( xdc_runtime_IHeap_Handle heap, xdc_Ptr block, xdc_SizeT size );

/* getStats__E */


extern void xdc_runtime_Memory_getStats__E( xdc_runtime_IHeap_Handle heap, xdc_runtime_Memory_Stats *stats );

/* query__E */


extern xdc_Bool xdc_runtime_Memory_query__E( xdc_runtime_IHeap_Handle heap, xdc_Int qual );

/* getMaxDefaultTypeAlign__E */


extern xdc_SizeT xdc_runtime_Memory_getMaxDefaultTypeAlign__E( void );

/* valloc__E */


extern xdc_Ptr xdc_runtime_Memory_valloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_Char value, xdc_runtime_Error_Block *eb );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Memory_Module__id xdc_runtime_Memory_Module_id( void ) 
{
    return xdc_runtime_Memory_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Memory_Module_hasMask( void ) 
{
    return xdc_runtime_Memory_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Memory_Module_getMask( void ) 
{
    return xdc_runtime_Memory_Module__diagsMask__C != 0 ? *xdc_runtime_Memory_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Memory_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Memory_Module__diagsMask__C != 0) *xdc_runtime_Memory_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 283 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 322 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:48; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IHeap_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IHeap_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*alloc)(void*, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*free)(void*, xdc_Ptr, xdc_SizeT);
    xdc_Bool (*isBlocking)(void*);
    void (*getStats)(void*, xdc_runtime_Memory_Stats*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base xdc_runtime_IHeap_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern xdc_runtime_IHeap_Handle xdc_runtime_IHeap_create(xdc_runtime_IHeap_Module, const xdc_runtime_IHeap_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern void xdc_runtime_IHeap_delete(xdc_runtime_IHeap_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IHeap_Module xdc_runtime_IHeap_Handle_to_Module( xdc_runtime_IHeap_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IHeap_Handle_label( xdc_runtime_IHeap_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IHeap_Module_id( xdc_runtime_IHeap_Module mod )
{
    return mod->__sysp->__mid;
}

/* alloc */
static inline xdc_Ptr xdc_runtime_IHeap_alloc( xdc_runtime_IHeap_Handle __inst, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb )
{
    return __inst->__fxns->alloc((void*)__inst, size, align, eb);
}

/* free */
static inline void xdc_runtime_IHeap_free( xdc_runtime_IHeap_Handle __inst, xdc_Ptr block, xdc_SizeT size )
{
    __inst->__fxns->free((void*)__inst, block, size);
}

/* isBlocking */
static inline xdc_Bool xdc_runtime_IHeap_isBlocking( xdc_runtime_IHeap_Handle __inst )
{
    return __inst->__fxns->isBlocking((void*)__inst);
}

/* getStats */
static inline void xdc_runtime_IHeap_getStats( xdc_runtime_IHeap_Handle __inst, xdc_runtime_Memory_Stats *stats )
{
    __inst->__fxns->getStats((void*)__inst, stats);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* alloc_{FxnT,fxnP} */
typedef xdc_Ptr (*xdc_runtime_IHeap_alloc_FxnT)(void *, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
static inline xdc_runtime_IHeap_alloc_FxnT xdc_runtime_IHeap_alloc_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_alloc_FxnT)__inst->__fxns->alloc;
}

/* free_{FxnT,fxnP} */
typedef void (*xdc_runtime_IHeap_free_FxnT)(void *, xdc_Ptr, xdc_SizeT);
static inline xdc_runtime_IHeap_free_FxnT xdc_runtime_IHeap_free_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_free_FxnT)__inst->__fxns->free;
}

/* isBlocking_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_IHeap_isBlocking_FxnT)(void *);
static inline xdc_runtime_IHeap_isBlocking_FxnT xdc_runtime_IHeap_isBlocking_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_isBlocking_FxnT)__inst->__fxns->isBlocking;
}

/* getStats_{FxnT,fxnP} */
typedef void (*xdc_runtime_IHeap_getStats_FxnT)(void *, xdc_runtime_Memory_Stats*);
static inline xdc_runtime_IHeap_getStats_FxnT xdc_runtime_IHeap_getStats_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_getStats_FxnT)__inst->__fxns->getStats;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IModule_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base xdc_runtime_IModule_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IModule_Module_id( xdc_runtime_IModule_Module mod )
{
    return mod->__sysp->__mid;
}


/*
 * ======== FUNCTION SELECTORS ========
 */


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IGateProvider_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IGateProvider_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(void*);
    void (*leave)(void*, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base xdc_runtime_IGateProvider_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern xdc_runtime_IGateProvider_Handle xdc_runtime_IGateProvider_create(xdc_runtime_IGateProvider_Module, const xdc_runtime_IGateProvider_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern void xdc_runtime_IGateProvider_delete(xdc_runtime_IGateProvider_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_IGateProvider_Handle_to_Module( xdc_runtime_IGateProvider_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IGateProvider_Handle_label( xdc_runtime_IGateProvider_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IGateProvider_Module_id( xdc_runtime_IGateProvider_Module mod )
{
    return mod->__sysp->__mid;
}

/* query */
static inline xdc_Bool xdc_runtime_IGateProvider_query( xdc_runtime_IGateProvider_Module __inst, xdc_Int qual )
{
    return __inst->query(qual);
}

/* enter */
static inline xdc_IArg xdc_runtime_IGateProvider_enter( xdc_runtime_IGateProvider_Handle __inst )
{
    return __inst->__fxns->enter((void*)__inst);
}

/* leave */
static inline void xdc_runtime_IGateProvider_leave( xdc_runtime_IGateProvider_Handle __inst, xdc_IArg key )
{
    __inst->__fxns->leave((void*)__inst, key);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* query_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_IGateProvider_query_FxnT)(xdc_Int);
static inline xdc_runtime_IGateProvider_query_FxnT xdc_runtime_IGateProvider_query_fxnP( xdc_runtime_IGateProvider_Module __inst )
{
    return (xdc_runtime_IGateProvider_query_FxnT)__inst->query;
}

/* enter_{FxnT,fxnP} */
typedef xdc_IArg (*xdc_runtime_IGateProvider_enter_FxnT)(void *);
static inline xdc_runtime_IGateProvider_enter_FxnT xdc_runtime_IGateProvider_enter_fxnP( xdc_runtime_IGateProvider_Handle __inst )
{
    return (xdc_runtime_IGateProvider_enter_FxnT)__inst->__fxns->enter;
}

/* leave_{FxnT,fxnP} */
typedef void (*xdc_runtime_IGateProvider_leave_FxnT)(void *, xdc_IArg);
static inline xdc_runtime_IGateProvider_leave_FxnT xdc_runtime_IGateProvider_leave_fxnP( xdc_runtime_IGateProvider_Handle __inst )
{
    return (xdc_runtime_IGateProvider_leave_FxnT)__inst->__fxns->leave;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask xdc_runtime_Main_Module_GateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj xdc_runtime_Main_Module_GateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms xdc_runtime_Main_Module_GateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Main_Module_GateProxy_Module__id;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__id xdc_runtime_Main_Module_GateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined xdc_runtime_Main_Module_GateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj xdc_runtime_Main_Module_GateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Main_Module_GateProxy_Object__count;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Object__count xdc_runtime_Main_Module_GateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Main_Module_GateProxy_Object__heap;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Object__heap xdc_runtime_Main_Module_GateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof xdc_runtime_Main_Module_GateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Object__table;
extern  const CT__xdc_runtime_Main_Module_GateProxy_Object__table xdc_runtime_Main_Module_GateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_Main_Module_GateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_Main_Module_GateProxy_Struct {
    const xdc_runtime_Main_Module_GateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_Main_Module_GateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(xdc_runtime_Main_Module_GateProxy_Handle);
    void (*leave)(xdc_runtime_Main_Module_GateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const xdc_runtime_Main_Module_GateProxy_Fxns__ xdc_runtime_Main_Module_GateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *xdc_runtime_Main_Module_GateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Main_Module_GateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern xdc_runtime_Main_Module_GateProxy_Handle xdc_runtime_Main_Module_GateProxy_create( const xdc_runtime_Main_Module_GateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void xdc_runtime_Main_Module_GateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void xdc_runtime_Main_Module_GateProxy_delete(xdc_runtime_Main_Module_GateProxy_Handle *instp);

/* Object__destruct__S */

extern void xdc_runtime_Main_Module_GateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void xdc_runtime_Main_Module_GateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool xdc_runtime_Main_Module_GateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S( void );

/* query__E */


extern xdc_Bool xdc_runtime_Main_Module_GateProxy_query__E( xdc_Int qual );

/* enter__E */


extern xdc_IArg xdc_runtime_Main_Module_GateProxy_enter__E( xdc_runtime_Main_Module_GateProxy_Handle __inst );

/* leave__E */


extern void xdc_runtime_Main_Module_GateProxy_leave__E( xdc_runtime_Main_Module_GateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_Main_Module_GateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle xdc_runtime_Main_Module_GateProxy_Handle_upCast( xdc_runtime_Main_Module_GateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline xdc_runtime_Main_Module_GateProxy_Handle xdc_runtime_Main_Module_GateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (xdc_runtime_Main_Module_GateProxy_Proxy__abstract__S()) return (xdc_runtime_Main_Module_GateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S() ? (xdc_runtime_Main_Module_GateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Main_Module_GateProxy_Module__id xdc_runtime_Main_Module_GateProxy_Module_id( void ) 
{
    return xdc_runtime_Main_Module_GateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_Main_Module_GateProxy_Params_init( xdc_runtime_Main_Module_GateProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_Main_Module_GateProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_Main_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_Main_Module_GateProxy_Params_copy(xdc_runtime_Main_Module_GateProxy_Params *dst, const xdc_runtime_Main_Module_GateProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_Main_Module_GateProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_Main_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module__diagsEnabled;
extern  const CT__xdc_runtime_Main_Module__diagsEnabled xdc_runtime_Main_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module__diagsIncluded;
extern  const CT__xdc_runtime_Main_Module__diagsIncluded xdc_runtime_Main_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Main_Module__diagsMask;
extern  const CT__xdc_runtime_Main_Module__diagsMask xdc_runtime_Main_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__gateObj;
extern  const CT__xdc_runtime_Main_Module__gateObj xdc_runtime_Main_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__gatePrms;
extern  const CT__xdc_runtime_Main_Module__gatePrms xdc_runtime_Main_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Main_Module__id;
extern  const CT__xdc_runtime_Main_Module__id xdc_runtime_Main_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Main_Module__loggerDefined;
extern  const CT__xdc_runtime_Main_Module__loggerDefined xdc_runtime_Main_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__loggerObj;
extern  const CT__xdc_runtime_Main_Module__loggerObj xdc_runtime_Main_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Main_Module__loggerFxn0;
extern  const CT__xdc_runtime_Main_Module__loggerFxn0 xdc_runtime_Main_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Main_Module__loggerFxn1;
extern  const CT__xdc_runtime_Main_Module__loggerFxn1 xdc_runtime_Main_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Main_Module__loggerFxn2;
extern  const CT__xdc_runtime_Main_Module__loggerFxn2 xdc_runtime_Main_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Main_Module__loggerFxn4;
extern  const CT__xdc_runtime_Main_Module__loggerFxn4 xdc_runtime_Main_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Main_Module__loggerFxn8;
extern  const CT__xdc_runtime_Main_Module__loggerFxn8 xdc_runtime_Main_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Main_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Main_Module__startupDoneFxn xdc_runtime_Main_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Main_Object__count;
extern  const CT__xdc_runtime_Main_Object__count xdc_runtime_Main_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Main_Object__heap;
extern  const CT__xdc_runtime_Main_Object__heap xdc_runtime_Main_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Main_Object__sizeof;
extern  const CT__xdc_runtime_Main_Object__sizeof xdc_runtime_Main_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Main_Object__table;
extern  const CT__xdc_runtime_Main_Object__table xdc_runtime_Main_Object__table__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Main_Module__startupDone__S( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Main_Module__id xdc_runtime_Main_Module_id( void ) 
{
    return xdc_runtime_Main_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Main_Module_hasMask( void ) 
{
    return xdc_runtime_Main_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Main_Module_getMask( void ) 
{
    return xdc_runtime_Main_Module__diagsMask__C != 0 ? *xdc_runtime_Main_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Main_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Main_Module__diagsMask__C != 0) *xdc_runtime_Main_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 14 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__prologue.h"

/*
 *  ======== xdc_runtime_Error_Id ========
 */
typedef xdc_Bits32 xdc_runtime_Error_Id;








/*
 *  ======== Module__MID ========
 *  This definition allows non-module code to
 *  use the Error module.  This symbol is normally defined in each
 *  module internal header (i.e., package/internal/<mod>.xdc.h).
 *
 *  Only do this if this file is not one that will be included in the Registry.
 *  This check ensures that Registry.h (which similarly defines these Module__*
 *  symbols) can be included in any order relative to other xdc.runtime 
 *  headers.
 */






/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Policy */
enum xdc_runtime_Error_Policy {
    xdc_runtime_Error_TERMINATE,
    xdc_runtime_Error_UNWIND
};
typedef enum xdc_runtime_Error_Policy xdc_runtime_Error_Policy;

/* Id */

/* HookFxn */
typedef void (*xdc_runtime_Error_HookFxn)(xdc_runtime_Error_Block*);

/* NUMARGS */


/* Data */
typedef xdc_IArg __T1_xdc_runtime_Error_Data__arg;
typedef xdc_IArg __ARRAY1_xdc_runtime_Error_Data__arg[2];
typedef __ARRAY1_xdc_runtime_Error_Data__arg __TA_xdc_runtime_Error_Data__arg;
struct xdc_runtime_Error_Data {
    __TA_xdc_runtime_Error_Data__arg arg;
};

/* Block */
typedef xdc_IArg __T1_xdc_runtime_Error_Block__xtra;
typedef xdc_IArg __ARRAY1_xdc_runtime_Error_Block__xtra[4];
typedef __ARRAY1_xdc_runtime_Error_Block__xtra __TA_xdc_runtime_Error_Block__xtra;
struct xdc_runtime_Error_Block {
    xdc_UInt16 unused;
    xdc_runtime_Error_Data data;
    xdc_runtime_Error_Id id;
    xdc_String msg;
    xdc_runtime_Types_Site site;
    __TA_xdc_runtime_Error_Block__xtra xtra;
};

/* PolicyFxn */
typedef void (*xdc_runtime_Error_PolicyFxn)(xdc_runtime_Error_Block*, xdc_runtime_Types_ModuleId, xdc_CString, xdc_Int, xdc_runtime_Error_Id, xdc_IArg, xdc_IArg);


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Error_Module__diagsEnabled;
extern  const CT__xdc_runtime_Error_Module__diagsEnabled xdc_runtime_Error_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Error_Module__diagsIncluded;
extern  const CT__xdc_runtime_Error_Module__diagsIncluded xdc_runtime_Error_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Error_Module__diagsMask;
extern  const CT__xdc_runtime_Error_Module__diagsMask xdc_runtime_Error_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__gateObj;
extern  const CT__xdc_runtime_Error_Module__gateObj xdc_runtime_Error_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__gatePrms;
extern  const CT__xdc_runtime_Error_Module__gatePrms xdc_runtime_Error_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Error_Module__id;
extern  const CT__xdc_runtime_Error_Module__id xdc_runtime_Error_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Error_Module__loggerDefined;
extern  const CT__xdc_runtime_Error_Module__loggerDefined xdc_runtime_Error_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__loggerObj;
extern  const CT__xdc_runtime_Error_Module__loggerObj xdc_runtime_Error_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Error_Module__loggerFxn0;
extern  const CT__xdc_runtime_Error_Module__loggerFxn0 xdc_runtime_Error_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Error_Module__loggerFxn1;
extern  const CT__xdc_runtime_Error_Module__loggerFxn1 xdc_runtime_Error_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Error_Module__loggerFxn2;
extern  const CT__xdc_runtime_Error_Module__loggerFxn2 xdc_runtime_Error_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Error_Module__loggerFxn4;
extern  const CT__xdc_runtime_Error_Module__loggerFxn4 xdc_runtime_Error_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Error_Module__loggerFxn8;
extern  const CT__xdc_runtime_Error_Module__loggerFxn8 xdc_runtime_Error_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Error_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Error_Module__startupDoneFxn xdc_runtime_Error_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Error_Object__count;
extern  const CT__xdc_runtime_Error_Object__count xdc_runtime_Error_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Error_Object__heap;
extern  const CT__xdc_runtime_Error_Object__heap xdc_runtime_Error_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Error_Object__sizeof;
extern  const CT__xdc_runtime_Error_Object__sizeof xdc_runtime_Error_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Error_Object__table;
extern  const CT__xdc_runtime_Error_Object__table xdc_runtime_Error_Object__table__C;

/* policyFxn */

typedef xdc_runtime_Error_PolicyFxn CT__xdc_runtime_Error_policyFxn;
extern  const CT__xdc_runtime_Error_policyFxn xdc_runtime_Error_policyFxn__C;

/* E_generic */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_generic;
extern  const CT__xdc_runtime_Error_E_generic xdc_runtime_Error_E_generic__C;

/* E_memory */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_memory;
extern  const CT__xdc_runtime_Error_E_memory xdc_runtime_Error_E_memory__C;

/* E_msgCode */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_msgCode;
extern  const CT__xdc_runtime_Error_E_msgCode xdc_runtime_Error_E_msgCode__C;

/* policy */

typedef xdc_runtime_Error_Policy CT__xdc_runtime_Error_policy;
extern  const CT__xdc_runtime_Error_policy xdc_runtime_Error_policy__C;

/* raiseHook */

typedef xdc_runtime_Error_HookFxn CT__xdc_runtime_Error_raiseHook;
extern  const CT__xdc_runtime_Error_raiseHook xdc_runtime_Error_raiseHook__C;

/* maxDepth */




typedef xdc_UInt16 CT__xdc_runtime_Error_maxDepth;
extern  const CT__xdc_runtime_Error_maxDepth xdc_runtime_Error_maxDepth__C;



/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Error_Module__startupDone__S( void );

/* check__E */


extern xdc_Bool xdc_runtime_Error_check__E( xdc_runtime_Error_Block *eb );

/* getData__E */


extern xdc_runtime_Error_Data *xdc_runtime_Error_getData__E( xdc_runtime_Error_Block *eb );

/* getCode__E */


extern xdc_UInt16 xdc_runtime_Error_getCode__E( xdc_runtime_Error_Block *eb );

/* getId__E */


extern xdc_runtime_Error_Id xdc_runtime_Error_getId__E( xdc_runtime_Error_Block *eb );

/* getMsg__E */


extern xdc_String xdc_runtime_Error_getMsg__E( xdc_runtime_Error_Block *eb );

/* getSite__E */


extern xdc_runtime_Types_Site *xdc_runtime_Error_getSite__E( xdc_runtime_Error_Block *eb );

/* init__E */


extern void xdc_runtime_Error_init__E( xdc_runtime_Error_Block *eb );

/* print__E */


extern void xdc_runtime_Error_print__E( xdc_runtime_Error_Block *eb );

/* policyDefault__E */


extern void xdc_runtime_Error_policyDefault__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* policySpin__E */


extern void xdc_runtime_Error_policySpin__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* raiseX__E */


extern void xdc_runtime_Error_raiseX__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* setX__E */


extern void xdc_runtime_Error_setX__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Error_Module__id xdc_runtime_Error_Module_id( void ) 
{
    return xdc_runtime_Error_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Error_Module_hasMask( void ) 
{
    return xdc_runtime_Error_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Error_Module_getMask( void ) 
{
    return xdc_runtime_Error_Module__diagsMask__C != 0 ? *xdc_runtime_Error_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Error_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Error_Module__diagsMask__C != 0) *xdc_runtime_Error_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== xdc_runtime_Error_raise ========
 *  Call underlying error handler with current module ID, file name, and
 *  line number.
 *
 *  Note use of xdc_FILE__ in lieu of __FILE__; this is done
 *  to prevent accumulation of file name strings in the application.  See
 *  xdc.h for details.
 */




/*
 *  ======== xdc_runtime_Error_idToCode ========
 */



/*
 *  ======== xdc_runtime_Error_idToUid ========
 */


/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 341 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 422 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"



/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 45 "../source/config/serialConfig.c"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Assert__prologue.h ========
 */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 17 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== Diags__prologue.h ========
 *
 *  This header defines Module__* symbols for every Module__* value used
 *  by the Diags module's headers.  This allows non-module code to
 *  use the Diags module.  These symbols are normally defined in
 *  module internal headers (i.e., package/internal/<mod>.xdc.h) and they
 *  define a "current module context".
 */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 24 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__prologue.h"

/* 
 * Only define these symbols for xdc.runtime.Main if this file is not one that
 * will be included in the Registry. This check ensures that Registry.h (which
 * similarly defines these Module__* symbols) can be included in any order
 * relative to other xdc.runtime headers.
 */


/*
 *  ======== Module__DGSINCL ========
 *  The set of diags categories that are runtime controllable _or_ always on
 *
 *  This costant is computed at config time and enables us to eliminate
 *  expensive runtime time checks and unnecessary data (the module's diags 
 *  mask) when whole program optimization is used.
 */



/*
 *  ======== Module__DGSENAB ========
 *  The set of diags categories that are _always_ enabled
 *
 *  This costant is computed at config time and enables us to eliminate
 *  expensive runtime time checks and unnecessary data (the module's diags 
 *  mask) when whole program optimization is used.
 */



/*
 *  ======== Module__DGSMASK ========
 *  Pointer to the set of diags categories that are runtime controllable 
 */



/*
 *  ======== Module__MID ========
 */




/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Mask */
typedef xdc_runtime_Types_DiagsMask xdc_runtime_Diags_Mask;

/* ENTRY */


/* EXIT */


/* LIFECYCLE */


/* INTERNAL */


/* ASSERT */


/* STATUS */


/* LEVEL */


/* USER1 */


/* USER2 */


/* USER3 */


/* USER4 */


/* USER5 */


/* USER6 */


/* USER7 */


/* INFO */


/* USER8 */


/* ANALYSIS */


/* ALL */


/* ALL_LOGGING */


/* EventLevel */
enum xdc_runtime_Diags_EventLevel {
    xdc_runtime_Diags_LEVEL1 = 0x0,
    xdc_runtime_Diags_LEVEL2 = 0x20,
    xdc_runtime_Diags_LEVEL3 = 0x40,
    xdc_runtime_Diags_LEVEL4 = 0x60
};
typedef enum xdc_runtime_Diags_EventLevel xdc_runtime_Diags_EventLevel;

/* EMERGENCY */


/* CRITICAL */


/* ERROR */


/* WARNING */



/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* DictElem */
struct xdc_runtime_Diags_DictElem {
    xdc_runtime_Types_ModuleId modId;
    xdc_runtime_Diags_Mask *maskAddr;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Diags_Module__diagsEnabled;
extern  const CT__xdc_runtime_Diags_Module__diagsEnabled xdc_runtime_Diags_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Diags_Module__diagsIncluded;
extern  const CT__xdc_runtime_Diags_Module__diagsIncluded xdc_runtime_Diags_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Diags_Module__diagsMask;
extern  const CT__xdc_runtime_Diags_Module__diagsMask xdc_runtime_Diags_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__gateObj;
extern  const CT__xdc_runtime_Diags_Module__gateObj xdc_runtime_Diags_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__gatePrms;
extern  const CT__xdc_runtime_Diags_Module__gatePrms xdc_runtime_Diags_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Diags_Module__id;
extern  const CT__xdc_runtime_Diags_Module__id xdc_runtime_Diags_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Diags_Module__loggerDefined;
extern  const CT__xdc_runtime_Diags_Module__loggerDefined xdc_runtime_Diags_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__loggerObj;
extern  const CT__xdc_runtime_Diags_Module__loggerObj xdc_runtime_Diags_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Diags_Module__loggerFxn0;
extern  const CT__xdc_runtime_Diags_Module__loggerFxn0 xdc_runtime_Diags_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Diags_Module__loggerFxn1;
extern  const CT__xdc_runtime_Diags_Module__loggerFxn1 xdc_runtime_Diags_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Diags_Module__loggerFxn2;
extern  const CT__xdc_runtime_Diags_Module__loggerFxn2 xdc_runtime_Diags_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Diags_Module__loggerFxn4;
extern  const CT__xdc_runtime_Diags_Module__loggerFxn4 xdc_runtime_Diags_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Diags_Module__loggerFxn8;
extern  const CT__xdc_runtime_Diags_Module__loggerFxn8 xdc_runtime_Diags_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Diags_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Diags_Module__startupDoneFxn xdc_runtime_Diags_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Diags_Object__count;
extern  const CT__xdc_runtime_Diags_Object__count xdc_runtime_Diags_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Diags_Object__heap;
extern  const CT__xdc_runtime_Diags_Object__heap xdc_runtime_Diags_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Diags_Object__sizeof;
extern  const CT__xdc_runtime_Diags_Object__sizeof xdc_runtime_Diags_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Diags_Object__table;
extern  const CT__xdc_runtime_Diags_Object__table xdc_runtime_Diags_Object__table__C;

/* setMaskEnabled */




typedef xdc_Bool CT__xdc_runtime_Diags_setMaskEnabled;
extern  const CT__xdc_runtime_Diags_setMaskEnabled xdc_runtime_Diags_setMaskEnabled__C;


/* dictBase */

typedef xdc_runtime_Diags_DictElem *CT__xdc_runtime_Diags_dictBase;
extern  const CT__xdc_runtime_Diags_dictBase xdc_runtime_Diags_dictBase__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Diags_Module__startupDone__S( void );

/* setMask__E */


extern void xdc_runtime_Diags_setMask__E( xdc_CString control );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Diags_Module__id xdc_runtime_Diags_Module_id( void ) 
{
    return xdc_runtime_Diags_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Diags_Module_hasMask( void ) 
{
    return xdc_runtime_Diags_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Diags_Module_getMask( void ) 
{
    return xdc_runtime_Diags_Module__diagsMask__C != 0 ? *xdc_runtime_Diags_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Diags_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Diags_Module__diagsMask__C != 0) *xdc_runtime_Diags_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== xdc_runtime_Diags_query ========
 *  Returns true iff: 
 *      1. the current module's included diags intersect evt's mask, and
 *      2. either the permanently enabled diags intersect evt's mask or
 *         the runtime controllable diags intersect evt's mask.
 *
 *  This macro relies on three "internal" macros which are defined in each
 *  module's internal header (e.g., package/internal/System.xdc.h):
 *      Module__DGSINCL - a const bit mask of bits that are _not_ ALWAYS_OFF
 *      Module__DGSENAB - a const bit mask of bits that are ALWAYS_ON
 *      Module__DGSMASK - a const pointer to a bit mask of currently enabled
 *                        diagnostics
 *  These macros reference module-specific variables generated at config
 *  time, when we know the value of these constants.
 *
 */




/*
 *  ======== xdc_runtime_Diags_getLevel ========
 *  Returns the event level set in the given diags mask. The level is a value
 *  stored using two bits of the diags mask.
 */



/*
 *  ======== xdc_runtime_Diags_compareLevels ========
 *  The definition of the diags levels assigns the value '0' to the highest
 *  priority events and '3' to the lowest, so the comparison is done backwards.
 *  For example, for (LEVEL4 (0), LEVEL1 (3)) this must return false.
 */


/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 309 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 18 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"

/*
 *  ======== xdc_runtime_Assert_Id ========
 */
typedef xdc_Bits32 xdc_runtime_Assert_Id;

/*
 *  ======== Module__MID ========
 *  This definition allows non-module code to
 *  use the Assert module.  This symbol is normally defined in each
 *  module internal header (i.e., package/internal/<mod>.xdc.h).
 *
 *  Only do this if this file is not one that will be included in the Registry.
 *  This check ensures that Registry.h (which similarly defines these Module__*
 *  symbols) can be included in any order relative to other xdc.runtime 
 *  headers.
 */

 




/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:44; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Id */


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Assert_Module__diagsEnabled;
extern  const CT__xdc_runtime_Assert_Module__diagsEnabled xdc_runtime_Assert_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Assert_Module__diagsIncluded;
extern  const CT__xdc_runtime_Assert_Module__diagsIncluded xdc_runtime_Assert_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Assert_Module__diagsMask;
extern  const CT__xdc_runtime_Assert_Module__diagsMask xdc_runtime_Assert_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__gateObj;
extern  const CT__xdc_runtime_Assert_Module__gateObj xdc_runtime_Assert_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__gatePrms;
extern  const CT__xdc_runtime_Assert_Module__gatePrms xdc_runtime_Assert_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Assert_Module__id;
extern  const CT__xdc_runtime_Assert_Module__id xdc_runtime_Assert_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Assert_Module__loggerDefined;
extern  const CT__xdc_runtime_Assert_Module__loggerDefined xdc_runtime_Assert_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__loggerObj;
extern  const CT__xdc_runtime_Assert_Module__loggerObj xdc_runtime_Assert_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Assert_Module__loggerFxn0;
extern  const CT__xdc_runtime_Assert_Module__loggerFxn0 xdc_runtime_Assert_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Assert_Module__loggerFxn1;
extern  const CT__xdc_runtime_Assert_Module__loggerFxn1 xdc_runtime_Assert_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Assert_Module__loggerFxn2;
extern  const CT__xdc_runtime_Assert_Module__loggerFxn2 xdc_runtime_Assert_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Assert_Module__loggerFxn4;
extern  const CT__xdc_runtime_Assert_Module__loggerFxn4 xdc_runtime_Assert_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Assert_Module__loggerFxn8;
extern  const CT__xdc_runtime_Assert_Module__loggerFxn8 xdc_runtime_Assert_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Assert_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Assert_Module__startupDoneFxn xdc_runtime_Assert_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Assert_Object__count;
extern  const CT__xdc_runtime_Assert_Object__count xdc_runtime_Assert_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Assert_Object__heap;
extern  const CT__xdc_runtime_Assert_Object__heap xdc_runtime_Assert_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Assert_Object__sizeof;
extern  const CT__xdc_runtime_Assert_Object__sizeof xdc_runtime_Assert_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Assert_Object__table;
extern  const CT__xdc_runtime_Assert_Object__table xdc_runtime_Assert_Object__table__C;

/* E_assertFailed */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Assert_E_assertFailed;
extern  const CT__xdc_runtime_Assert_E_assertFailed xdc_runtime_Assert_E_assertFailed__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Assert_Module__startupDone__S( void );

/* raise__I */


extern void xdc_runtime_Assert_raise__I( xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Assert_Id id );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Assert_Module__id xdc_runtime_Assert_Module_id( void ) 
{
    return xdc_runtime_Assert_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Assert_Module_hasMask( void ) 
{
    return xdc_runtime_Assert_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Assert_Module_getMask( void ) 
{
    return xdc_runtime_Assert_Module__diagsMask__C != 0 ? *xdc_runtime_Assert_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Assert_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Assert_Module__diagsMask__C != 0) *xdc_runtime_Assert_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== xdc_runtime_Assert_getMask ========
 *  Convert an id into a mask
 */





/*
 *  ======== xdc_runtime_Assert_isTrue ========
 */
# 36 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__epilogue.h"














/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:44; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 217 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_ISystemSupport_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    void (*abort)(xdc_CString);
    void (*exit)(xdc_Int);
    void (*flush)(void);
    void (*putch)(xdc_Char);
    xdc_Bool (*ready)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base xdc_runtime_ISystemSupport_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_ISystemSupport_Module_id( xdc_runtime_ISystemSupport_Module mod )
{
    return mod->__sysp->__mid;
}

/* abort */
static inline void xdc_runtime_ISystemSupport_abort( xdc_runtime_ISystemSupport_Module __inst, xdc_CString str )
{
    __inst->abort(str);
}

/* exit */
static inline void xdc_runtime_ISystemSupport_exit( xdc_runtime_ISystemSupport_Module __inst, xdc_Int stat )
{
    __inst->exit(stat);
}

/* flush */
static inline void xdc_runtime_ISystemSupport_flush( xdc_runtime_ISystemSupport_Module __inst )
{
    __inst->flush();
}

/* putch */
static inline void xdc_runtime_ISystemSupport_putch( xdc_runtime_ISystemSupport_Module __inst, xdc_Char ch )
{
    __inst->putch(ch);
}

/* ready */
static inline xdc_Bool xdc_runtime_ISystemSupport_ready( xdc_runtime_ISystemSupport_Module __inst )
{
    return __inst->ready();
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* abort_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_abort_FxnT)(xdc_CString);
static inline xdc_runtime_ISystemSupport_abort_FxnT xdc_runtime_ISystemSupport_abort_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_abort_FxnT)__inst->abort;
}

/* exit_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_exit_FxnT)(xdc_Int);
static inline xdc_runtime_ISystemSupport_exit_FxnT xdc_runtime_ISystemSupport_exit_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_exit_FxnT)__inst->exit;
}

/* flush_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_flush_FxnT)(void);
static inline xdc_runtime_ISystemSupport_flush_FxnT xdc_runtime_ISystemSupport_flush_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_flush_FxnT)__inst->flush;
}

/* putch_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_putch_FxnT)(xdc_Char);
static inline xdc_runtime_ISystemSupport_putch_FxnT xdc_runtime_ISystemSupport_putch_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_putch_FxnT)__inst->putch;
}

/* ready_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_ISystemSupport_ready_FxnT)(void);
static inline xdc_runtime_ISystemSupport_ready_FxnT xdc_runtime_ISystemSupport_ready_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_ready_FxnT)__inst->ready;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 211 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 179 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 211 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled;
extern  const CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled xdc_runtime_System_SupportProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded;
extern  const CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded xdc_runtime_System_SupportProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_SupportProxy_Module__diagsMask;
extern  const CT__xdc_runtime_System_SupportProxy_Module__diagsMask xdc_runtime_System_SupportProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__gateObj;
extern  const CT__xdc_runtime_System_SupportProxy_Module__gateObj xdc_runtime_System_SupportProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__gatePrms;
extern  const CT__xdc_runtime_System_SupportProxy_Module__gatePrms xdc_runtime_System_SupportProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_SupportProxy_Module__id;
extern  const CT__xdc_runtime_System_SupportProxy_Module__id xdc_runtime_System_SupportProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_SupportProxy_Module__loggerDefined;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerDefined xdc_runtime_System_SupportProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__loggerObj;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerObj xdc_runtime_System_SupportProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0 xdc_runtime_System_SupportProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1 xdc_runtime_System_SupportProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2 xdc_runtime_System_SupportProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4 xdc_runtime_System_SupportProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8;
extern  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8 xdc_runtime_System_SupportProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn xdc_runtime_System_SupportProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_SupportProxy_Object__count;
extern  const CT__xdc_runtime_System_SupportProxy_Object__count xdc_runtime_System_SupportProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_SupportProxy_Object__heap;
extern  const CT__xdc_runtime_System_SupportProxy_Object__heap xdc_runtime_System_SupportProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_SupportProxy_Object__sizeof;
extern  const CT__xdc_runtime_System_SupportProxy_Object__sizeof xdc_runtime_System_SupportProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Object__table;
extern  const CT__xdc_runtime_System_SupportProxy_Object__table xdc_runtime_System_SupportProxy_Object__table__C;


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_System_SupportProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    void (*abort)(xdc_CString);
    void (*exit)(xdc_Int);
    void (*flush)(void);
    void (*putch)(xdc_Char);
    xdc_Bool (*ready)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const xdc_runtime_System_SupportProxy_Fxns__ xdc_runtime_System_SupportProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *xdc_runtime_System_SupportProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_System_SupportProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr xdc_runtime_System_SupportProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void xdc_runtime_System_SupportProxy_Object__delete__S( xdc_Ptr instp );

/* Object__destruct__S */

extern void xdc_runtime_System_SupportProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr xdc_runtime_System_SupportProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr xdc_runtime_System_SupportProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr xdc_runtime_System_SupportProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void xdc_runtime_System_SupportProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool xdc_runtime_System_SupportProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr xdc_runtime_System_SupportProxy_Proxy__delegate__S( void );

/* abort__E */


extern void xdc_runtime_System_SupportProxy_abort__E( xdc_CString str );

/* exit__E */


extern void xdc_runtime_System_SupportProxy_exit__E( xdc_Int stat );

/* flush__E */


extern void xdc_runtime_System_SupportProxy_flush__E( void );

/* putch__E */


extern void xdc_runtime_System_SupportProxy_putch__E( xdc_Char ch );

/* ready__E */


extern xdc_Bool xdc_runtime_System_SupportProxy_ready__E( void );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_ISystemSupport_Module xdc_runtime_System_SupportProxy_Module_upCast( void )
{
    return (xdc_runtime_ISystemSupport_Module)xdc_runtime_System_SupportProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_ISystemSupport */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_SupportProxy_Module__id xdc_runtime_System_SupportProxy_Module_id( void ) 
{
    return xdc_runtime_System_SupportProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */



/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled xdc_runtime_System_Module_GateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded xdc_runtime_System_Module_GateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask xdc_runtime_System_Module_GateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__gateObj;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__gateObj xdc_runtime_System_Module_GateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms xdc_runtime_System_Module_GateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_Module_GateProxy_Module__id;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__id xdc_runtime_System_Module_GateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined xdc_runtime_System_Module_GateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj xdc_runtime_System_Module_GateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0 xdc_runtime_System_Module_GateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1 xdc_runtime_System_Module_GateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2 xdc_runtime_System_Module_GateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4 xdc_runtime_System_Module_GateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8;
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8 xdc_runtime_System_Module_GateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_Module_GateProxy_Object__count;
extern  const CT__xdc_runtime_System_Module_GateProxy_Object__count xdc_runtime_System_Module_GateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_Module_GateProxy_Object__heap;
extern  const CT__xdc_runtime_System_Module_GateProxy_Object__heap xdc_runtime_System_Module_GateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_Module_GateProxy_Object__sizeof;
extern  const CT__xdc_runtime_System_Module_GateProxy_Object__sizeof xdc_runtime_System_Module_GateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Object__table;
extern  const CT__xdc_runtime_System_Module_GateProxy_Object__table xdc_runtime_System_Module_GateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_System_Module_GateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_System_Module_GateProxy_Struct {
    const xdc_runtime_System_Module_GateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_System_Module_GateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(xdc_runtime_System_Module_GateProxy_Handle);
    void (*leave)(xdc_runtime_System_Module_GateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const xdc_runtime_System_Module_GateProxy_Fxns__ xdc_runtime_System_Module_GateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *xdc_runtime_System_Module_GateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_System_Module_GateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern xdc_runtime_System_Module_GateProxy_Handle xdc_runtime_System_Module_GateProxy_create( const xdc_runtime_System_Module_GateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void xdc_runtime_System_Module_GateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void xdc_runtime_System_Module_GateProxy_delete(xdc_runtime_System_Module_GateProxy_Handle *instp);

/* Object__destruct__S */

extern void xdc_runtime_System_Module_GateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void xdc_runtime_System_Module_GateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool xdc_runtime_System_Module_GateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr xdc_runtime_System_Module_GateProxy_Proxy__delegate__S( void );

/* query__E */


extern xdc_Bool xdc_runtime_System_Module_GateProxy_query__E( xdc_Int qual );

/* enter__E */


extern xdc_IArg xdc_runtime_System_Module_GateProxy_enter__E( xdc_runtime_System_Module_GateProxy_Handle __inst );

/* leave__E */


extern void xdc_runtime_System_Module_GateProxy_leave__E( xdc_runtime_System_Module_GateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_System_Module_GateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)xdc_runtime_System_Module_GateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle xdc_runtime_System_Module_GateProxy_Handle_upCast( xdc_runtime_System_Module_GateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline xdc_runtime_System_Module_GateProxy_Handle xdc_runtime_System_Module_GateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (xdc_runtime_System_Module_GateProxy_Proxy__abstract__S()) return (xdc_runtime_System_Module_GateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_System_Module_GateProxy_Proxy__delegate__S() ? (xdc_runtime_System_Module_GateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_Module_GateProxy_Module__id xdc_runtime_System_Module_GateProxy_Module_id( void ) 
{
    return xdc_runtime_System_Module_GateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_System_Module_GateProxy_Params_init( xdc_runtime_System_Module_GateProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_System_Module_GateProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_System_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_System_Module_GateProxy_Params_copy(xdc_runtime_System_Module_GateProxy_Params *dst, const xdc_runtime_System_Module_GateProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_System_Module_GateProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_System_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 62 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* AtexitHandler */
typedef void (*xdc_runtime_System_AtexitHandler)(xdc_Int);

/* STATUS_UNKNOWN */


/* AbortFxn */
typedef void (*xdc_runtime_System_AbortFxn)(void);

/* ExitFxn */
typedef void (*xdc_runtime_System_ExitFxn)(xdc_Int);


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* ParseData */
struct xdc_runtime_System_ParseData {
    xdc_Int width;
    xdc_Bool lFlag;
    xdc_Bool lJust;
    xdc_Int precis;
    xdc_Int len;
    xdc_Int zpad;
    xdc_Char *end;
    xdc_Bool aFlag;
    xdc_Char *ptr;
};

/* ExtendFxn */
typedef xdc_Int (*xdc_runtime_System_ExtendFxn)(xdc_Char**, xdc_CString*, xdc_VaList*, xdc_runtime_System_ParseData*);

/* Module_State */
typedef xdc_runtime_System_AtexitHandler __T1_xdc_runtime_System_Module_State__atexitHandlers;
typedef xdc_runtime_System_AtexitHandler *__ARRAY1_xdc_runtime_System_Module_State__atexitHandlers;
typedef __ARRAY1_xdc_runtime_System_Module_State__atexitHandlers __TA_xdc_runtime_System_Module_State__atexitHandlers;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_Module__diagsEnabled;
extern  const CT__xdc_runtime_System_Module__diagsEnabled xdc_runtime_System_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_Module__diagsIncluded;
extern  const CT__xdc_runtime_System_Module__diagsIncluded xdc_runtime_System_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_Module__diagsMask;
extern  const CT__xdc_runtime_System_Module__diagsMask xdc_runtime_System_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module__gateObj;
extern  const CT__xdc_runtime_System_Module__gateObj xdc_runtime_System_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_Module__gatePrms;
extern  const CT__xdc_runtime_System_Module__gatePrms xdc_runtime_System_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_Module__id;
extern  const CT__xdc_runtime_System_Module__id xdc_runtime_System_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_Module__loggerDefined;
extern  const CT__xdc_runtime_System_Module__loggerDefined xdc_runtime_System_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module__loggerObj;
extern  const CT__xdc_runtime_System_Module__loggerObj xdc_runtime_System_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_Module__loggerFxn0;
extern  const CT__xdc_runtime_System_Module__loggerFxn0 xdc_runtime_System_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_Module__loggerFxn1;
extern  const CT__xdc_runtime_System_Module__loggerFxn1 xdc_runtime_System_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_Module__loggerFxn2;
extern  const CT__xdc_runtime_System_Module__loggerFxn2 xdc_runtime_System_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_Module__loggerFxn4;
extern  const CT__xdc_runtime_System_Module__loggerFxn4 xdc_runtime_System_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_Module__loggerFxn8;
extern  const CT__xdc_runtime_System_Module__loggerFxn8 xdc_runtime_System_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_System_Module__startupDoneFxn xdc_runtime_System_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_Object__count;
extern  const CT__xdc_runtime_System_Object__count xdc_runtime_System_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_Object__heap;
extern  const CT__xdc_runtime_System_Object__heap xdc_runtime_System_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_Object__sizeof;
extern  const CT__xdc_runtime_System_Object__sizeof xdc_runtime_System_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_Object__table;
extern  const CT__xdc_runtime_System_Object__table xdc_runtime_System_Object__table__C;

/* A_cannotFitIntoArg */

typedef xdc_runtime_Assert_Id CT__xdc_runtime_System_A_cannotFitIntoArg;
extern  const CT__xdc_runtime_System_A_cannotFitIntoArg xdc_runtime_System_A_cannotFitIntoArg__C;

/* maxAtexitHandlers */




typedef xdc_Int CT__xdc_runtime_System_maxAtexitHandlers;
extern  const CT__xdc_runtime_System_maxAtexitHandlers xdc_runtime_System_maxAtexitHandlers__C;


/* abortFxn */

typedef xdc_runtime_System_AbortFxn CT__xdc_runtime_System_abortFxn;
extern  const CT__xdc_runtime_System_abortFxn xdc_runtime_System_abortFxn__C;

/* exitFxn */

typedef xdc_runtime_System_ExitFxn CT__xdc_runtime_System_exitFxn;
extern  const CT__xdc_runtime_System_exitFxn xdc_runtime_System_exitFxn__C;

/* extendFxn */

typedef xdc_runtime_System_ExtendFxn CT__xdc_runtime_System_extendFxn;
extern  const CT__xdc_runtime_System_extendFxn xdc_runtime_System_extendFxn__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int xdc_runtime_System_Module_startup__E( xdc_Int state );

extern xdc_Int xdc_runtime_System_Module_startup__F( xdc_Int state );

/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_System_Module__startupDone__S( void );

/* abort__E */


extern void xdc_runtime_System_abort__E( xdc_CString str );

/* abortStd__E */


extern void xdc_runtime_System_abortStd__E( void );

/* abortSpin__E */


extern void xdc_runtime_System_abortSpin__E( void );

/* atexit__E */


extern xdc_Bool xdc_runtime_System_atexit__E( xdc_runtime_System_AtexitHandler handler );

/* exit__E */


extern void xdc_runtime_System_exit__E( xdc_Int stat );

/* exitStd__E */


extern void xdc_runtime_System_exitStd__E( xdc_Int stat );

/* exitSpin__E */


extern void xdc_runtime_System_exitSpin__E( xdc_Int stat );

/* processAtExit__E */


extern void xdc_runtime_System_processAtExit__E( xdc_Int stat );

/* putch__E */


extern void xdc_runtime_System_putch__E( xdc_Char ch );

/* flush__E */


extern void xdc_runtime_System_flush__E( void );

/* printf__E */


extern xdc_Int xdc_runtime_System_printf__E( xdc_CString fmt, ... );

extern xdc_Int xdc_runtime_System_printf_va__E( xdc_CString fmt, va_list _va );

extern xdc_Int xdc_runtime_System_printf_va__F( xdc_CString fmt, va_list _va );

/* aprintf__E */


extern xdc_Int xdc_runtime_System_aprintf__E( xdc_CString fmt, ... );

extern xdc_Int xdc_runtime_System_aprintf_va__E( xdc_CString fmt, va_list _va );

extern xdc_Int xdc_runtime_System_aprintf_va__F( xdc_CString fmt, va_list _va );

/* sprintf__E */


extern xdc_Int xdc_runtime_System_sprintf__E( xdc_Char buf[], xdc_CString fmt, ... );

extern xdc_Int xdc_runtime_System_sprintf_va__E( xdc_Char buf[], xdc_CString fmt, va_list _va );

extern xdc_Int xdc_runtime_System_sprintf_va__F( xdc_Char buf[], xdc_CString fmt, va_list _va );

/* asprintf__E */


extern xdc_Int xdc_runtime_System_asprintf__E( xdc_Char buf[], xdc_CString fmt, ... );

extern xdc_Int xdc_runtime_System_asprintf_va__E( xdc_Char buf[], xdc_CString fmt, va_list _va );

extern xdc_Int xdc_runtime_System_asprintf_va__F( xdc_Char buf[], xdc_CString fmt, va_list _va );

/* vprintf__E */


extern xdc_Int xdc_runtime_System_vprintf__E( xdc_CString fmt, xdc_VaList va );

/* avprintf__E */


extern xdc_Int xdc_runtime_System_avprintf__E( xdc_CString fmt, xdc_VaList va );

/* vsprintf__E */


extern xdc_Int xdc_runtime_System_vsprintf__E( xdc_Char buf[], xdc_CString fmt, xdc_VaList va );

/* avsprintf__E */


extern xdc_Int xdc_runtime_System_avsprintf__E( xdc_Char buf[], xdc_CString fmt, xdc_VaList va );

/* snprintf__E */


extern xdc_Int xdc_runtime_System_snprintf__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, ... );

extern xdc_Int xdc_runtime_System_snprintf_va__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, va_list _va );

extern xdc_Int xdc_runtime_System_snprintf_va__F( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, va_list _va );

/* vsnprintf__E */


extern xdc_Int xdc_runtime_System_vsnprintf__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, xdc_VaList va );

/* printfExtend__I */


extern xdc_Int xdc_runtime_System_printfExtend__I( xdc_Char **bufp, xdc_CString *fmt, xdc_VaList *va, xdc_runtime_System_ParseData *parse );

/* doPrint__I */


extern xdc_Int xdc_runtime_System_doPrint__I( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, xdc_VaList *pva, xdc_Bool aFlag );

/* lastFxn__I */


extern void xdc_runtime_System_lastFxn__I( void );

/* putchar__I */


extern void xdc_runtime_System_putchar__I( xdc_Char **bufp, xdc_Char ch, xdc_SizeT *n );

/* rtsExit__I */


extern void xdc_runtime_System_rtsExit__I( void );

/* atexitDone__I */


extern xdc_Bool xdc_runtime_System_atexitDone__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_Module__id xdc_runtime_System_Module_id( void ) 
{
    return xdc_runtime_System_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_System_Module_hasMask( void ) 
{
    return xdc_runtime_System_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_System_Module_getMask( void ) 
{
    return xdc_runtime_System_Module__diagsMask__C != 0 ? *xdc_runtime_System_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_System_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_System_Module__diagsMask__C != 0) *xdc_runtime_System_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 507 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"

/* proxies */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 287 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 317 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"

# 510 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"

/* proxies */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 404 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"

# 513 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"



/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 46 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.family.arm.m3.Clobber ========
 */


/*
 * ======== module ti.sysbios.family.arm.m3.Hwi ========
 */

typedef struct ti_sysbios_family_arm_m3_Hwi_CCR ti_sysbios_family_arm_m3_Hwi_CCR;
typedef struct ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_NVIC;
typedef struct ti_sysbios_family_arm_m3_Hwi_ExcContext ti_sysbios_family_arm_m3_Hwi_ExcContext;
typedef struct ti_sysbios_family_arm_m3_Hwi_Module_State ti_sysbios_family_arm_m3_Hwi_Module_State;
typedef struct ti_sysbios_family_arm_m3_Hwi_Fxns__ ti_sysbios_family_arm_m3_Hwi_Fxns__;
typedef const ti_sysbios_family_arm_m3_Hwi_Fxns__* ti_sysbios_family_arm_m3_Hwi_Module;
typedef struct ti_sysbios_family_arm_m3_Hwi_Params ti_sysbios_family_arm_m3_Hwi_Params;
typedef struct ti_sysbios_family_arm_m3_Hwi_Object ti_sysbios_family_arm_m3_Hwi_Object;
typedef struct ti_sysbios_family_arm_m3_Hwi_Struct ti_sysbios_family_arm_m3_Hwi_Struct;
typedef ti_sysbios_family_arm_m3_Hwi_Object* ti_sysbios_family_arm_m3_Hwi_Handle;
typedef struct ti_sysbios_family_arm_m3_Hwi_Object__ ti_sysbios_family_arm_m3_Hwi_Instance_State;
typedef ti_sysbios_family_arm_m3_Hwi_Object* ti_sysbios_family_arm_m3_Hwi_Instance;

/*
 * ======== module ti.sysbios.family.arm.m3.IntrinsicsSupport ========
 */

typedef struct ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__ ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__;
typedef const ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__* ti_sysbios_family_arm_m3_IntrinsicsSupport_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.TaskSupport ========
 */

typedef struct ti_sysbios_family_arm_m3_TaskSupport_Fxns__ ti_sysbios_family_arm_m3_TaskSupport_Fxns__;
typedef const ti_sysbios_family_arm_m3_TaskSupport_Fxns__* ti_sysbios_family_arm_m3_TaskSupport_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.Timer ========
 */

typedef struct ti_sysbios_family_arm_m3_Timer_Module_State ti_sysbios_family_arm_m3_Timer_Module_State;
typedef struct ti_sysbios_family_arm_m3_Timer_Fxns__ ti_sysbios_family_arm_m3_Timer_Fxns__;
typedef const ti_sysbios_family_arm_m3_Timer_Fxns__* ti_sysbios_family_arm_m3_Timer_Module;
typedef struct ti_sysbios_family_arm_m3_Timer_Params ti_sysbios_family_arm_m3_Timer_Params;
typedef struct ti_sysbios_family_arm_m3_Timer_Object ti_sysbios_family_arm_m3_Timer_Object;
typedef struct ti_sysbios_family_arm_m3_Timer_Struct ti_sysbios_family_arm_m3_Timer_Struct;
typedef ti_sysbios_family_arm_m3_Timer_Object* ti_sysbios_family_arm_m3_Timer_Handle;
typedef struct ti_sysbios_family_arm_m3_Timer_Object__ ti_sysbios_family_arm_m3_Timer_Instance_State;
typedef ti_sysbios_family_arm_m3_Timer_Object* ti_sysbios_family_arm_m3_Timer_Instance;

/*
 * ======== module ti.sysbios.family.arm.m3.TimestampProvider ========
 */

typedef struct ti_sysbios_family_arm_m3_TimestampProvider_Module_State ti_sysbios_family_arm_m3_TimestampProvider_Module_State;
typedef struct ti_sysbios_family_arm_m3_TimestampProvider_Fxns__ ti_sysbios_family_arm_m3_TimestampProvider_Fxns__;
typedef const ti_sysbios_family_arm_m3_TimestampProvider_Fxns__* ti_sysbios_family_arm_m3_TimestampProvider_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.Power ========
 */

typedef struct ti_sysbios_family_arm_m3_Power_Fxns__ ti_sysbios_family_arm_m3_Power_Fxns__;
typedef const ti_sysbios_family_arm_m3_Power_Fxns__* ti_sysbios_family_arm_m3_Power_Module;


# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 14 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 15 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 16 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"

/*
 *  ======== xdc_runtime_Log_Event ========
 *  Log_Event is an encoded type.  Log Events are encoded on the target as
 *  a 32-bit value:
 *
 *      | format rope | module ID or mask |
 *      | 31 ----- 16 | 15 ------------ 0 |
 *
 *  The lower 16-bits contain either a mask or a module ID; when the event
 *  is statically declared this field has a mask, when the event is passed
 *  to an ILogger this field is the module ID of the module that generated
 *  the event.
 *
 *  The upper 16-bits are an ID (rope) that that identifies the format
 *  string to use to render the event (and its arguments).
 */
typedef xdc_Bits32 xdc_runtime_Log_Event;

/*
 *  The following macros establish xdc.runtime.Main as the "default"
 *  module for all sources files not part of a module.
 *
 *      Module__MID     - the module's ID (see Text.xs)
 *      Module__LOGOBJ  - the module's logger object
 *      Module__LOGFXN0 - the module's logger's write0 function
 *      Module__LOGFXN1 - the module's logger's write1 function
 *      Module__LOGFXN2 - the module's logger's write2 function
 *      Module__LOGFXN4 - the module's logger's write4 function
 *      Module__LOGFXN8 - the module's logger's write8 function
 *      Module__LOGDEF  - 0 if the module has a logger, non-zero otherwise
 *
 *  Only define these symbols for xdc.runtime.Main if this file is not one that
 *  will be included in the Registry. This check ensures that Registry.h (which
 *  similarly defines these Module__* symbols) can be included in any order
 *  relative to other xdc.runtime headers.
 */

 
# 69 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"





/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* CordAddr */
typedef xdc_runtime_Types_CordAddr xdc_runtime_Text_CordAddr;

/* Label */
typedef xdc_runtime_Types_Label xdc_runtime_Text_Label;

/* RopeId */
typedef xdc_runtime_Types_RopeId xdc_runtime_Text_RopeId;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* Node */
struct xdc_runtime_Text_Node {
    xdc_runtime_Types_RopeId left;
    xdc_runtime_Types_RopeId right;
};

/* RopeVisitor */
typedef xdc_Bool (*xdc_runtime_Text_RopeVisitor)(xdc_Ptr, xdc_String);

/* MatchVisState */
struct xdc_runtime_Text_MatchVisState {
    xdc_CString pat;
    xdc_Int *lenp;
    xdc_Int res;
};

/* PrintVisState */
struct xdc_runtime_Text_PrintVisState {
    xdc_Char **bufp;
    xdc_Int len;
    xdc_Int res;
};

/* VisitRopeFxn */
typedef void (*xdc_runtime_Text_VisitRopeFxn)(xdc_runtime_Text_RopeId, xdc_Fxn, xdc_Ptr);

/* VisitRopeFxn2 */
typedef void (*xdc_runtime_Text_VisitRopeFxn2)(xdc_runtime_Text_RopeId, xdc_Fxn, xdc_Ptr, xdc_String[]);


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Text_Module__diagsEnabled;
extern  const CT__xdc_runtime_Text_Module__diagsEnabled xdc_runtime_Text_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Text_Module__diagsIncluded;
extern  const CT__xdc_runtime_Text_Module__diagsIncluded xdc_runtime_Text_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Text_Module__diagsMask;
extern  const CT__xdc_runtime_Text_Module__diagsMask xdc_runtime_Text_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__gateObj;
extern  const CT__xdc_runtime_Text_Module__gateObj xdc_runtime_Text_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__gatePrms;
extern  const CT__xdc_runtime_Text_Module__gatePrms xdc_runtime_Text_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Text_Module__id;
extern  const CT__xdc_runtime_Text_Module__id xdc_runtime_Text_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Text_Module__loggerDefined;
extern  const CT__xdc_runtime_Text_Module__loggerDefined xdc_runtime_Text_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__loggerObj;
extern  const CT__xdc_runtime_Text_Module__loggerObj xdc_runtime_Text_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Text_Module__loggerFxn0;
extern  const CT__xdc_runtime_Text_Module__loggerFxn0 xdc_runtime_Text_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Text_Module__loggerFxn1;
extern  const CT__xdc_runtime_Text_Module__loggerFxn1 xdc_runtime_Text_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Text_Module__loggerFxn2;
extern  const CT__xdc_runtime_Text_Module__loggerFxn2 xdc_runtime_Text_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Text_Module__loggerFxn4;
extern  const CT__xdc_runtime_Text_Module__loggerFxn4 xdc_runtime_Text_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Text_Module__loggerFxn8;
extern  const CT__xdc_runtime_Text_Module__loggerFxn8 xdc_runtime_Text_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Text_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Text_Module__startupDoneFxn xdc_runtime_Text_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Text_Object__count;
extern  const CT__xdc_runtime_Text_Object__count xdc_runtime_Text_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Text_Object__heap;
extern  const CT__xdc_runtime_Text_Object__heap xdc_runtime_Text_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Text_Object__sizeof;
extern  const CT__xdc_runtime_Text_Object__sizeof xdc_runtime_Text_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Text_Object__table;
extern  const CT__xdc_runtime_Text_Object__table xdc_runtime_Text_Object__table__C;

/* nameUnknown */

typedef xdc_String CT__xdc_runtime_Text_nameUnknown;
extern  const CT__xdc_runtime_Text_nameUnknown xdc_runtime_Text_nameUnknown__C;

/* nameEmpty */

typedef xdc_String CT__xdc_runtime_Text_nameEmpty;
extern  const CT__xdc_runtime_Text_nameEmpty xdc_runtime_Text_nameEmpty__C;

/* nameStatic */

typedef xdc_String CT__xdc_runtime_Text_nameStatic;
extern  const CT__xdc_runtime_Text_nameStatic xdc_runtime_Text_nameStatic__C;

/* isLoaded */




typedef xdc_Bool CT__xdc_runtime_Text_isLoaded;
extern  const CT__xdc_runtime_Text_isLoaded xdc_runtime_Text_isLoaded__C;


/* charTab */

typedef xdc_Char __T1_xdc_runtime_Text_charTab;
typedef xdc_Char *__ARRAY1_xdc_runtime_Text_charTab;
typedef __ARRAY1_xdc_runtime_Text_charTab __TA_xdc_runtime_Text_charTab;
typedef __TA_xdc_runtime_Text_charTab CT__xdc_runtime_Text_charTab;
extern  const CT__xdc_runtime_Text_charTab xdc_runtime_Text_charTab__C;

/* nodeTab */

typedef xdc_runtime_Text_Node __T1_xdc_runtime_Text_nodeTab;
typedef xdc_runtime_Text_Node *__ARRAY1_xdc_runtime_Text_nodeTab;
typedef __ARRAY1_xdc_runtime_Text_nodeTab __TA_xdc_runtime_Text_nodeTab;
typedef __TA_xdc_runtime_Text_nodeTab CT__xdc_runtime_Text_nodeTab;
extern  const CT__xdc_runtime_Text_nodeTab xdc_runtime_Text_nodeTab__C;

/* charCnt */




typedef xdc_Int16 CT__xdc_runtime_Text_charCnt;
extern  const CT__xdc_runtime_Text_charCnt xdc_runtime_Text_charCnt__C;


/* nodeCnt */




typedef xdc_Int16 CT__xdc_runtime_Text_nodeCnt;
extern  const CT__xdc_runtime_Text_nodeCnt xdc_runtime_Text_nodeCnt__C;


/* unnamedModsLastId */




typedef xdc_UInt16 CT__xdc_runtime_Text_unnamedModsLastId;
extern  const CT__xdc_runtime_Text_unnamedModsLastId xdc_runtime_Text_unnamedModsLastId__C;


/* registryModsLastId */




typedef xdc_UInt16 CT__xdc_runtime_Text_registryModsLastId;
extern  const CT__xdc_runtime_Text_registryModsLastId xdc_runtime_Text_registryModsLastId__C;


/* visitRopeFxn */

typedef xdc_runtime_Text_VisitRopeFxn CT__xdc_runtime_Text_visitRopeFxn;
extern  const CT__xdc_runtime_Text_visitRopeFxn xdc_runtime_Text_visitRopeFxn__C;

/* visitRopeFxn2 */

typedef xdc_runtime_Text_VisitRopeFxn2 CT__xdc_runtime_Text_visitRopeFxn2;
extern  const CT__xdc_runtime_Text_visitRopeFxn2 xdc_runtime_Text_visitRopeFxn2__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Text_Module__startupDone__S( void );

/* cordText__E */


extern xdc_String xdc_runtime_Text_cordText__E( xdc_runtime_Text_CordAddr cord );

/* ropeText__E */


extern xdc_String xdc_runtime_Text_ropeText__E( xdc_runtime_Text_RopeId rope );

/* matchRope__E */


extern xdc_Int xdc_runtime_Text_matchRope__E( xdc_runtime_Text_RopeId rope, xdc_CString pat, xdc_Int *lenp );

/* putLab__E */


extern xdc_Int xdc_runtime_Text_putLab__E( xdc_runtime_Types_Label *lab, xdc_Char **bufp, xdc_Int len );

/* putMod__E */


extern xdc_Int xdc_runtime_Text_putMod__E( xdc_runtime_Types_ModuleId mid, xdc_Char **bufp, xdc_Int len );

/* putSite__E */


extern xdc_Int xdc_runtime_Text_putSite__E( xdc_runtime_Types_Site *site, xdc_Char **bufp, xdc_Int len );

/* matchVisFxn__I */


extern xdc_Bool xdc_runtime_Text_matchVisFxn__I( xdc_Ptr p, xdc_CString s );

/* printVisFxn__I */


extern xdc_Bool xdc_runtime_Text_printVisFxn__I( xdc_Ptr p, xdc_CString s );

/* visitRope__I */


extern void xdc_runtime_Text_visitRope__I( xdc_runtime_Text_RopeId rope, xdc_Fxn visFxn, xdc_Ptr visState );

/* visitRope2__I */


extern void xdc_runtime_Text_visitRope2__I( xdc_runtime_Text_RopeId rope, xdc_Fxn visFxn, xdc_Ptr visState, xdc_String stack[] );

/* xprintf__I */


extern xdc_Int xdc_runtime_Text_xprintf__I( xdc_Char **bufp, xdc_SizeT len, xdc_CString fmt, ... );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Text_Module__id xdc_runtime_Text_Module_id( void ) 
{
    return xdc_runtime_Text_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Text_Module_hasMask( void ) 
{
    return xdc_runtime_Text_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Text_Module_getMask( void ) 
{
    return xdc_runtime_Text_Module__diagsMask__C != 0 ? *xdc_runtime_Text_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Text_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Text_Module__diagsMask__C != 0) *xdc_runtime_Text_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 408 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 460 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* NUMARGS */


/* PRINTFID */


/* EventRec */
typedef xdc_IArg __T1_xdc_runtime_Log_EventRec__arg;
typedef xdc_IArg __ARRAY1_xdc_runtime_Log_EventRec__arg[8];
typedef __ARRAY1_xdc_runtime_Log_EventRec__arg __TA_xdc_runtime_Log_EventRec__arg;
struct xdc_runtime_Log_EventRec {
    xdc_runtime_Types_Timestamp64 tstamp;
    xdc_Bits32 serial;
    xdc_runtime_Types_Event evt;
    __TA_xdc_runtime_Log_EventRec__arg arg;
};

/* Event */

/* EventId */
typedef xdc_runtime_Types_RopeId xdc_runtime_Log_EventId;


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Log_Module__diagsEnabled;
extern  const CT__xdc_runtime_Log_Module__diagsEnabled xdc_runtime_Log_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Log_Module__diagsIncluded;
extern  const CT__xdc_runtime_Log_Module__diagsIncluded xdc_runtime_Log_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Log_Module__diagsMask;
extern  const CT__xdc_runtime_Log_Module__diagsMask xdc_runtime_Log_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__gateObj;
extern  const CT__xdc_runtime_Log_Module__gateObj xdc_runtime_Log_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__gatePrms;
extern  const CT__xdc_runtime_Log_Module__gatePrms xdc_runtime_Log_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Log_Module__id;
extern  const CT__xdc_runtime_Log_Module__id xdc_runtime_Log_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Log_Module__loggerDefined;
extern  const CT__xdc_runtime_Log_Module__loggerDefined xdc_runtime_Log_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__loggerObj;
extern  const CT__xdc_runtime_Log_Module__loggerObj xdc_runtime_Log_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Log_Module__loggerFxn0;
extern  const CT__xdc_runtime_Log_Module__loggerFxn0 xdc_runtime_Log_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Log_Module__loggerFxn1;
extern  const CT__xdc_runtime_Log_Module__loggerFxn1 xdc_runtime_Log_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Log_Module__loggerFxn2;
extern  const CT__xdc_runtime_Log_Module__loggerFxn2 xdc_runtime_Log_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Log_Module__loggerFxn4;
extern  const CT__xdc_runtime_Log_Module__loggerFxn4 xdc_runtime_Log_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Log_Module__loggerFxn8;
extern  const CT__xdc_runtime_Log_Module__loggerFxn8 xdc_runtime_Log_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Log_Module__startupDoneFxn)(void);
extern  const CT__xdc_runtime_Log_Module__startupDoneFxn xdc_runtime_Log_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Log_Object__count;
extern  const CT__xdc_runtime_Log_Object__count xdc_runtime_Log_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Log_Object__heap;
extern  const CT__xdc_runtime_Log_Object__heap xdc_runtime_Log_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Log_Object__sizeof;
extern  const CT__xdc_runtime_Log_Object__sizeof xdc_runtime_Log_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Log_Object__table;
extern  const CT__xdc_runtime_Log_Object__table xdc_runtime_Log_Object__table__C;

/* L_construct */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_construct;
extern  const CT__xdc_runtime_Log_L_construct xdc_runtime_Log_L_construct__C;

/* L_create */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_create;
extern  const CT__xdc_runtime_Log_L_create xdc_runtime_Log_L_create__C;

/* L_destruct */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_destruct;
extern  const CT__xdc_runtime_Log_L_destruct xdc_runtime_Log_L_destruct__C;

/* L_delete */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_delete;
extern  const CT__xdc_runtime_Log_L_delete xdc_runtime_Log_L_delete__C;

/* L_error */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_error;
extern  const CT__xdc_runtime_Log_L_error xdc_runtime_Log_L_error__C;

/* L_warning */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_warning;
extern  const CT__xdc_runtime_Log_L_warning xdc_runtime_Log_L_warning__C;

/* L_info */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_info;
extern  const CT__xdc_runtime_Log_L_info xdc_runtime_Log_L_info__C;

/* L_start */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_start;
extern  const CT__xdc_runtime_Log_L_start xdc_runtime_Log_L_start__C;

/* L_stop */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_stop;
extern  const CT__xdc_runtime_Log_L_stop xdc_runtime_Log_L_stop__C;

/* L_startInstance */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_startInstance;
extern  const CT__xdc_runtime_Log_L_startInstance xdc_runtime_Log_L_startInstance__C;

/* L_stopInstance */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_stopInstance;
extern  const CT__xdc_runtime_Log_L_stopInstance xdc_runtime_Log_L_stopInstance__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool xdc_runtime_Log_Module__startupDone__S( void );

/* doPrint__E */


extern void xdc_runtime_Log_doPrint__E( xdc_runtime_Log_EventRec *evRec );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Log_Module__id xdc_runtime_Log_Module_id( void ) 
{
    return xdc_runtime_Log_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Log_Module_hasMask( void ) 
{
    return xdc_runtime_Log_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Log_Module_getMask( void ) 
{
    return xdc_runtime_Log_Module__diagsMask__C != 0 ? *xdc_runtime_Log_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Log_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Log_Module__diagsMask__C != 0) *xdc_runtime_Log_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== Log__epilogue.h ========
 *  Implementation of the Log_* macros
 *
 *  The implementation below relies on eight symbols defined by every module
 *  header.  Each of these symbols is a reference to a constant defined in a
 *  separate compilation unit.  The values of these constants are as follows:
 *
 *      Module__MID     - the module's ID (see Text.xs)
 *      Module__LOGOBJ  - the module's logger instance object
 *      Module__LOGFXN0 - the module's logger's write0 function
 *      Module__LOGFXN1 - the module's logger's write1 function 
 *      Module__LOGFXN2 - the module's logger's write2 function
 *      Module__LOGFXN4 - the module's logger's write4 function
 *      Module__LOGFXN8 - the module's logger's write8 function
 *      Module__LOGDEF  - 0 if the module has a logger, non-zero otherwise
 */

/*
 *  Define flags for compiling out all Log calls
 *
 *  The intent of these flags is to allow users to completely optimize logging
 *  out of their code even when not using whole program optimization. This is
 *  implemented by controlling the definitions of the Log macros. This will
 *  only affect code compiled with the flag(s) set, so it will not disable 
 *  logging in any precompiled libraries.
 *
 *  The DISABLE_ALL flag will have the effect of disabling all Log put, write, 
 *  print, error, warning, and info log calls. The flag just has to be defined,
 *  we give it a value of zero or one to use in the macros.
 *
 *  There are additional flags which can be used to disable all log calls
 *  "except for". We use the presence of the DISABLE_ALL flag and the presence
 *  of any ENABLE_ERROR, ENABLE_INFO, or ENABLE_WARNING flags to compute the
 *  value of ENABLE_ERROR, etc., as zero or one.
 *
 *  We ensure that all of the flags are ultimately defined and given a zero or
 *  one value. Then the macro definitions are conditional on the value of the
 *  appropriate flag.
 */

/* 
 * If DISABLE_ALL is defined, give it the value 1, and assign values to all
 * of the ENABLE flags based on whether they've been defined or not.
 */
# 91 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_getMask ========
 */


/*
 *  ======== xdc_runtime_Log_getRope ========
 */


/*
 *  ======== xdc_runtime_Log_getEventId ========
 */



/*
 *  ======== xdc_runtime_Log_doPut* ========
 *  The 'doPut' macros are the real implementation of the Log_put* APIs.
 *  The Log_put* macros are just stubs which point to these definitions. We do
 *  this so that we can disable the Log_put* APIs but still leave their
 *  functionality available for any other Log macros which use them. 
 *
 *  For example, if the flags DISABLE_ALL and ENABLE_ERROR are set, we want
 *  to disable the Log_put* macros, but not the Log_error* macros which are
 *  also built on top of these 'doPut' macros.
 */















   
/*
 *  ======== xdc_runtime_Log_put* ========
 *  See Log_doPut*
 */

















# 165 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_doWrite* ========
 *  The real implementations of the Log_write* APIs. See Log_doPut* for an
 *  explanation of why we stub-out the Log_put* and Log_write* APIs.
 */





    




     




    









# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"







/*
 *  ======== xdc_runtime_Log_write* ========
 *  See Log_doWrite*
 */

 


    


    


    








    


    





    
# 255 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
  
/*
 *  ======== xdc_runtime_Log_print* ========
 *  Since "print" events do not have a rope, we use 0 (an invalid rope value)
 *  as the event Id and construct a Log_Event to pass to Log_put. This has the 
 *  benefit that the Log_Event is equal to just the mask: (0 | mask). For this 
 *  reason, we simply pass the 'mask' as the first argument to 'put'.
 *
 *  Each print function is mapped to a call to appropriate 'put' function.
 *  print0 -> put1
 *  print1 -> put2
 *  print2 -> print3 -> put4
 *  print3 -> put4
 *  print4 -> print6 -> put8
 *  print5 -> print6 -> put8
 *  print6 -> put8
 */

 




    




    




















# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_error* ========
 *  Log an error event
 */

 


        





    
# 337 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 344 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 355 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
/*
 *  ======== xdc_runtime_Log_warning* ========
 *  Log a warning event
 */

 


    





    
# 377 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 384 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 395 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
/*
 *  ======== xdc_runtime_Log_info* ========
 *  Log an informational event
 */




    





    
# 417 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 424 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 435 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 287 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.BIOS ========
 */

typedef struct ti_sysbios_BIOS_intSize ti_sysbios_BIOS_intSize;
typedef struct ti_sysbios_BIOS_Module_State ti_sysbios_BIOS_Module_State;

/*
 * ======== module ti.sysbios.BIOS_RtsGateProxy ========
 */

typedef struct ti_sysbios_BIOS_RtsGateProxy_Fxns__ ti_sysbios_BIOS_RtsGateProxy_Fxns__;
typedef const ti_sysbios_BIOS_RtsGateProxy_Fxns__* ti_sysbios_BIOS_RtsGateProxy_Module;
typedef struct ti_sysbios_BIOS_RtsGateProxy_Params ti_sysbios_BIOS_RtsGateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *ti_sysbios_BIOS_RtsGateProxy_Handle;


# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__gateObj;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__gateObj ti_sysbios_BIOS_RtsGateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_BIOS_RtsGateProxy_Module__id;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__id ti_sysbios_BIOS_RtsGateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_BIOS_RtsGateProxy_Object__count;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__count ti_sysbios_BIOS_RtsGateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_BIOS_RtsGateProxy_Object__heap;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__heap ti_sysbios_BIOS_RtsGateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_BIOS_RtsGateProxy_Object__sizeof;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__sizeof ti_sysbios_BIOS_RtsGateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Object__table;
extern  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__table ti_sysbios_BIOS_RtsGateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_BIOS_RtsGateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_BIOS_RtsGateProxy_Struct {
    const ti_sysbios_BIOS_RtsGateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_BIOS_RtsGateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(ti_sysbios_BIOS_RtsGateProxy_Handle);
    void (*leave)(ti_sysbios_BIOS_RtsGateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_BIOS_RtsGateProxy_Fxns__ ti_sysbios_BIOS_RtsGateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_BIOS_RtsGateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_BIOS_RtsGateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_BIOS_RtsGateProxy_Handle ti_sysbios_BIOS_RtsGateProxy_create( const ti_sysbios_BIOS_RtsGateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_BIOS_RtsGateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_BIOS_RtsGateProxy_delete(ti_sysbios_BIOS_RtsGateProxy_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_BIOS_RtsGateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_BIOS_RtsGateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool ti_sysbios_BIOS_RtsGateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S( void );

/* query__E */


extern xdc_Bool ti_sysbios_BIOS_RtsGateProxy_query__E( xdc_Int qual );

/* enter__E */


extern xdc_IArg ti_sysbios_BIOS_RtsGateProxy_enter__E( ti_sysbios_BIOS_RtsGateProxy_Handle __inst );

/* leave__E */


extern void ti_sysbios_BIOS_RtsGateProxy_leave__E( ti_sysbios_BIOS_RtsGateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module ti_sysbios_BIOS_RtsGateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle ti_sysbios_BIOS_RtsGateProxy_Handle_upCast( ti_sysbios_BIOS_RtsGateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline ti_sysbios_BIOS_RtsGateProxy_Handle ti_sysbios_BIOS_RtsGateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (ti_sysbios_BIOS_RtsGateProxy_Proxy__abstract__S()) return (ti_sysbios_BIOS_RtsGateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S() ? (ti_sysbios_BIOS_RtsGateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_BIOS_RtsGateProxy_Module__id ti_sysbios_BIOS_RtsGateProxy_Module_id( void ) 
{
    return ti_sysbios_BIOS_RtsGateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void ti_sysbios_BIOS_RtsGateProxy_Params_init( ti_sysbios_BIOS_RtsGateProxy_Params *prms ) 
{
    if (prms) {
        ti_sysbios_BIOS_RtsGateProxy_Params__init__S(prms, 0, sizeof(ti_sysbios_BIOS_RtsGateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_BIOS_RtsGateProxy_Params_copy(ti_sysbios_BIOS_RtsGateProxy_Params *dst, const ti_sysbios_BIOS_RtsGateProxy_Params *src) 
{
    if (dst) {
        ti_sysbios_BIOS_RtsGateProxy_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_BIOS_RtsGateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* ThreadType */
enum ti_sysbios_BIOS_ThreadType {
    ti_sysbios_BIOS_ThreadType_Hwi,
    ti_sysbios_BIOS_ThreadType_Swi,
    ti_sysbios_BIOS_ThreadType_Task,
    ti_sysbios_BIOS_ThreadType_Main
};
typedef enum ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_ThreadType;

/* RtsLockType */
enum ti_sysbios_BIOS_RtsLockType {
    ti_sysbios_BIOS_NoLocking,
    ti_sysbios_BIOS_GateHwi,
    ti_sysbios_BIOS_GateSwi,
    ti_sysbios_BIOS_GateMutex,
    ti_sysbios_BIOS_GateMutexPri
};
typedef enum ti_sysbios_BIOS_RtsLockType ti_sysbios_BIOS_RtsLockType;

/* LibType */
enum ti_sysbios_BIOS_LibType {
    ti_sysbios_BIOS_LibType_Instrumented,
    ti_sysbios_BIOS_LibType_NonInstrumented,
    ti_sysbios_BIOS_LibType_Custom,
    ti_sysbios_BIOS_LibType_Debug
};
typedef enum ti_sysbios_BIOS_LibType ti_sysbios_BIOS_LibType;

/* WAIT_FOREVER */


/* NO_WAIT */


/* StartupFuncPtr */
typedef void (*ti_sysbios_BIOS_StartupFuncPtr)(void);

/* version */



/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* intSize */
struct ti_sysbios_BIOS_intSize {
    xdc_Int intSize;
};

/* StartFuncPtr */
typedef void (*ti_sysbios_BIOS_StartFuncPtr)(void);

/* ExitFuncPtr */
typedef void (*ti_sysbios_BIOS_ExitFuncPtr)(xdc_Int);

/* Module_State */
typedef ti_sysbios_BIOS_ThreadType __T1_ti_sysbios_BIOS_Module_State__smpThreadType;
typedef ti_sysbios_BIOS_ThreadType *__ARRAY1_ti_sysbios_BIOS_Module_State__smpThreadType;
typedef __ARRAY1_ti_sysbios_BIOS_Module_State__smpThreadType __TA_ti_sysbios_BIOS_Module_State__smpThreadType;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_Module__diagsEnabled;
extern  const CT__ti_sysbios_BIOS_Module__diagsEnabled ti_sysbios_BIOS_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_Module__diagsIncluded;
extern  const CT__ti_sysbios_BIOS_Module__diagsIncluded ti_sysbios_BIOS_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_BIOS_Module__diagsMask;
extern  const CT__ti_sysbios_BIOS_Module__diagsMask ti_sysbios_BIOS_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__gateObj;
extern  const CT__ti_sysbios_BIOS_Module__gateObj ti_sysbios_BIOS_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__gatePrms;
extern  const CT__ti_sysbios_BIOS_Module__gatePrms ti_sysbios_BIOS_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_BIOS_Module__id;
extern  const CT__ti_sysbios_BIOS_Module__id ti_sysbios_BIOS_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_BIOS_Module__loggerDefined;
extern  const CT__ti_sysbios_BIOS_Module__loggerDefined ti_sysbios_BIOS_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__loggerObj;
extern  const CT__ti_sysbios_BIOS_Module__loggerObj ti_sysbios_BIOS_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_BIOS_Module__loggerFxn0;
extern  const CT__ti_sysbios_BIOS_Module__loggerFxn0 ti_sysbios_BIOS_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_BIOS_Module__loggerFxn1;
extern  const CT__ti_sysbios_BIOS_Module__loggerFxn1 ti_sysbios_BIOS_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_BIOS_Module__loggerFxn2;
extern  const CT__ti_sysbios_BIOS_Module__loggerFxn2 ti_sysbios_BIOS_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_BIOS_Module__loggerFxn4;
extern  const CT__ti_sysbios_BIOS_Module__loggerFxn4 ti_sysbios_BIOS_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_BIOS_Module__loggerFxn8;
extern  const CT__ti_sysbios_BIOS_Module__loggerFxn8 ti_sysbios_BIOS_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_BIOS_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_BIOS_Module__startupDoneFxn ti_sysbios_BIOS_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_BIOS_Object__count;
extern  const CT__ti_sysbios_BIOS_Object__count ti_sysbios_BIOS_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_BIOS_Object__heap;
extern  const CT__ti_sysbios_BIOS_Object__heap ti_sysbios_BIOS_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_BIOS_Object__sizeof;
extern  const CT__ti_sysbios_BIOS_Object__sizeof ti_sysbios_BIOS_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Object__table;
extern  const CT__ti_sysbios_BIOS_Object__table ti_sysbios_BIOS_Object__table__C;

/* smpEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_smpEnabled;
extern  const CT__ti_sysbios_BIOS_smpEnabled ti_sysbios_BIOS_smpEnabled__C;


/* cpuFreq */

typedef xdc_runtime_Types_FreqHz CT__ti_sysbios_BIOS_cpuFreq;
extern  const CT__ti_sysbios_BIOS_cpuFreq ti_sysbios_BIOS_cpuFreq__C;

/* runtimeCreatesEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_runtimeCreatesEnabled;
extern  const CT__ti_sysbios_BIOS_runtimeCreatesEnabled ti_sysbios_BIOS_runtimeCreatesEnabled__C;


/* taskEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_taskEnabled;
extern  const CT__ti_sysbios_BIOS_taskEnabled ti_sysbios_BIOS_taskEnabled__C;


/* swiEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_swiEnabled;
extern  const CT__ti_sysbios_BIOS_swiEnabled ti_sysbios_BIOS_swiEnabled__C;


/* clockEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_clockEnabled;
extern  const CT__ti_sysbios_BIOS_clockEnabled ti_sysbios_BIOS_clockEnabled__C;


/* heapSize */




typedef xdc_SizeT CT__ti_sysbios_BIOS_heapSize;
extern  const CT__ti_sysbios_BIOS_heapSize ti_sysbios_BIOS_heapSize__C;


/* heapSection */

typedef xdc_String CT__ti_sysbios_BIOS_heapSection;
extern  const CT__ti_sysbios_BIOS_heapSection ti_sysbios_BIOS_heapSection__C;

/* heapTrackEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_heapTrackEnabled;
extern  const CT__ti_sysbios_BIOS_heapTrackEnabled ti_sysbios_BIOS_heapTrackEnabled__C;


/* setupSecureContext */




typedef xdc_Bool CT__ti_sysbios_BIOS_setupSecureContext;
extern  const CT__ti_sysbios_BIOS_setupSecureContext ti_sysbios_BIOS_setupSecureContext__C;


/* useSK */




typedef xdc_Bool CT__ti_sysbios_BIOS_useSK;
extern  const CT__ti_sysbios_BIOS_useSK ti_sysbios_BIOS_useSK__C;


/* installedErrorHook */

typedef void (*CT__ti_sysbios_BIOS_installedErrorHook)(xdc_runtime_Error_Block*);
extern  const CT__ti_sysbios_BIOS_installedErrorHook ti_sysbios_BIOS_installedErrorHook__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_BIOS_Module__startupDone__S( void );

/* start__E */


extern void ti_sysbios_BIOS_start__E( void );

/* exit__E */


extern void ti_sysbios_BIOS_exit__E( xdc_Int stat );

/* getThreadType__E */


extern ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_getThreadType__E( void );

/* setThreadType__E */


extern ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_setThreadType__E( ti_sysbios_BIOS_ThreadType ttype );

/* setCpuFreq__E */


extern void ti_sysbios_BIOS_setCpuFreq__E( xdc_runtime_Types_FreqHz *freq );

/* getCpuFreq__E */


extern void ti_sysbios_BIOS_getCpuFreq__E( xdc_runtime_Types_FreqHz *freq );

/* errorRaiseHook__I */


extern void ti_sysbios_BIOS_errorRaiseHook__I( xdc_runtime_Error_Block *eb );

/* startFunc__I */


extern void ti_sysbios_BIOS_startFunc__I( void );

/* atExitFunc__I */


extern void ti_sysbios_BIOS_atExitFunc__I( xdc_Int stat );

/* exitFunc__I */


extern void ti_sysbios_BIOS_exitFunc__I( xdc_Int stat );

/* registerRTSLock__I */


extern void ti_sysbios_BIOS_registerRTSLock__I( void );

/* removeRTSLock__I */


extern void ti_sysbios_BIOS_removeRTSLock__I( void );

/* rtsLock__I */


extern void ti_sysbios_BIOS_rtsLock__I( void );

/* rtsUnlock__I */


extern void ti_sysbios_BIOS_rtsUnlock__I( void );

/* nullFunc__I */


extern void ti_sysbios_BIOS_nullFunc__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_BIOS_Module__id ti_sysbios_BIOS_Module_id( void ) 
{
    return ti_sysbios_BIOS_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_BIOS_Module_hasMask( void ) 
{
    return ti_sysbios_BIOS_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_BIOS_Module_getMask( void ) 
{
    return ti_sysbios_BIOS_Module__diagsMask__C != 0 ? *ti_sysbios_BIOS_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_BIOS_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_BIOS_Module__diagsMask__C != 0) *ti_sysbios_BIOS_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS__epilogue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */







# 433 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 468 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== interface ti.sysbios.interfaces.ICore ========
 */

typedef struct ti_sysbios_interfaces_ICore_Fxns__ ti_sysbios_interfaces_ICore_Fxns__;
typedef const ti_sysbios_interfaces_ICore_Fxns__* ti_sysbios_interfaces_ICore_Module;

/*
 * ======== interface ti.sysbios.interfaces.IHwi ========
 */

typedef struct ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_interfaces_IHwi_HookSet;
typedef struct ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_interfaces_IHwi_StackInfo;
typedef struct ti_sysbios_interfaces_IHwi_Fxns__ ti_sysbios_interfaces_IHwi_Fxns__;
typedef const ti_sysbios_interfaces_IHwi_Fxns__* ti_sysbios_interfaces_IHwi_Module;
typedef struct ti_sysbios_interfaces_IHwi_Params ti_sysbios_interfaces_IHwi_Params;
typedef struct ti_sysbios_interfaces_IHwi___Object { ti_sysbios_interfaces_IHwi_Fxns__* __fxns; xdc_Bits32 __label; } *ti_sysbios_interfaces_IHwi_Handle;

/*
 * ======== interface ti.sysbios.interfaces.ITaskSupport ========
 */

typedef struct ti_sysbios_interfaces_ITaskSupport_Fxns__ ti_sysbios_interfaces_ITaskSupport_Fxns__;
typedef const ti_sysbios_interfaces_ITaskSupport_Fxns__* ti_sysbios_interfaces_ITaskSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ITimer ========
 */

typedef struct ti_sysbios_interfaces_ITimer_Fxns__ ti_sysbios_interfaces_ITimer_Fxns__;
typedef const ti_sysbios_interfaces_ITimer_Fxns__* ti_sysbios_interfaces_ITimer_Module;
typedef struct ti_sysbios_interfaces_ITimer_Params ti_sysbios_interfaces_ITimer_Params;
typedef struct ti_sysbios_interfaces_ITimer___Object { ti_sysbios_interfaces_ITimer_Fxns__* __fxns; xdc_Bits32 __label; } *ti_sysbios_interfaces_ITimer_Handle;

/*
 * ======== interface ti.sysbios.interfaces.ITimerSupport ========
 */

typedef struct ti_sysbios_interfaces_ITimerSupport_Fxns__ ti_sysbios_interfaces_ITimerSupport_Fxns__;
typedef const ti_sysbios_interfaces_ITimerSupport_Fxns__* ti_sysbios_interfaces_ITimerSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ITimestamp ========
 */

typedef struct ti_sysbios_interfaces_ITimestamp_Fxns__ ti_sysbios_interfaces_ITimestamp_Fxns__;
typedef const ti_sysbios_interfaces_ITimestamp_Fxns__* ti_sysbios_interfaces_ITimestamp_Module;

/*
 * ======== interface ti.sysbios.interfaces.IIntrinsicsSupport ========
 */

typedef struct ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__ ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__;
typedef const ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__* ti_sysbios_interfaces_IIntrinsicsSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ICache ========
 */

typedef struct ti_sysbios_interfaces_ICache_Fxns__ ti_sysbios_interfaces_ICache_Fxns__;
typedef const ti_sysbios_interfaces_ICache_Fxns__* ti_sysbios_interfaces_ICache_Module;

/*
 * ======== interface ti.sysbios.interfaces.IPower ========
 */

typedef struct ti_sysbios_interfaces_IPower_Fxns__ ti_sysbios_interfaces_IPower_Fxns__;
typedef const ti_sysbios_interfaces_IPower_Fxns__* ti_sysbios_interfaces_IPower_Module;

/*
 * ======== interface ti.sysbios.interfaces.IRomDevice ========
 */

typedef struct ti_sysbios_interfaces_IRomDevice_Fxns__ ti_sysbios_interfaces_IRomDevice_Fxns__;
typedef const ti_sysbios_interfaces_IRomDevice_Fxns__* ti_sysbios_interfaces_IRomDevice_Module;

/*
 * ======== interface ti.sysbios.interfaces.ISeconds ========
 */

typedef struct ti_sysbios_interfaces_ISeconds_Time ti_sysbios_interfaces_ISeconds_Time;
typedef struct ti_sysbios_interfaces_ISeconds_Fxns__ ti_sysbios_interfaces_ISeconds_Fxns__;
typedef const ti_sysbios_interfaces_ISeconds_Fxns__* ti_sysbios_interfaces_ISeconds_Module;


# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_IHwi_FuncPtr)(xdc_UArg);

/* Irp */
typedef xdc_UArg ti_sysbios_interfaces_IHwi_Irp;

/* HookSet */
struct ti_sysbios_interfaces_IHwi_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_interfaces_IHwi_Handle, xdc_runtime_Error_Block*);
    void (*beginFxn)(ti_sysbios_interfaces_IHwi_Handle);
    void (*endFxn)(ti_sysbios_interfaces_IHwi_Handle);
    void (*deleteFxn)(ti_sysbios_interfaces_IHwi_Handle);
};

/* MaskingOption */
enum ti_sysbios_interfaces_IHwi_MaskingOption {
    ti_sysbios_interfaces_IHwi_MaskingOption_NONE,
    ti_sysbios_interfaces_IHwi_MaskingOption_ALL,
    ti_sysbios_interfaces_IHwi_MaskingOption_SELF,
    ti_sysbios_interfaces_IHwi_MaskingOption_BITMASK,
    ti_sysbios_interfaces_IHwi_MaskingOption_LOWER
};
typedef enum ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_interfaces_IHwi_MaskingOption;

/* StackInfo */
struct ti_sysbios_interfaces_IHwi_StackInfo {
    xdc_SizeT hwiStackPeak;
    xdc_SizeT hwiStackSize;
    xdc_Ptr hwiStackBase;
};


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_interfaces_IHwi_Args__create {
    xdc_Int intNum;
    ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn;
} ti_sysbios_interfaces_IHwi_Args__create;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_interfaces_IHwi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_IHwi_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*getStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
    xdc_Bool (*getCoreStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
    void (*startup)(void);
    xdc_UInt (*disable)(void);
    xdc_UInt (*enable)(void);
    void (*restore)(xdc_UInt);
    void (*switchFromBootStack)(void);
    void (*post)(xdc_UInt);
    xdc_Char *(*getTaskSP)(void);
    xdc_UInt (*disableInterrupt)(xdc_UInt);
    xdc_UInt (*enableInterrupt)(xdc_UInt);
    void (*restoreInterrupt)(xdc_UInt, xdc_UInt);
    void (*clearInterrupt)(xdc_UInt);
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(void*, xdc_UArg*);
    void (*setFunc)(void*, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(void*, xdc_Int);
    void (*setHookContext)(void*, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(void*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base ti_sysbios_interfaces_IHwi_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern ti_sysbios_interfaces_IHwi_Handle ti_sysbios_interfaces_IHwi_create(ti_sysbios_interfaces_IHwi_Module, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_interfaces_IHwi_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern void ti_sysbios_interfaces_IHwi_delete(ti_sysbios_interfaces_IHwi_Handle *);

/* Handle_to_Module */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_interfaces_IHwi_Handle_to_Module( ti_sysbios_interfaces_IHwi_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_interfaces_IHwi_Handle_label( ti_sysbios_interfaces_IHwi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_IHwi_Module_id( ti_sysbios_interfaces_IHwi_Module mod )
{
    return mod->__sysp->__mid;
}

/* getStackInfo */
static inline xdc_Bool ti_sysbios_interfaces_IHwi_getStackInfo( ti_sysbios_interfaces_IHwi_Module __inst, ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth )
{
    return __inst->getStackInfo(stkInfo, computeStackDepth);
}

/* getCoreStackInfo */
static inline xdc_Bool ti_sysbios_interfaces_IHwi_getCoreStackInfo( ti_sysbios_interfaces_IHwi_Module __inst, ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId )
{
    return __inst->getCoreStackInfo(stkInfo, computeStackDepth, coreId);
}

/* startup */
static inline void ti_sysbios_interfaces_IHwi_startup( ti_sysbios_interfaces_IHwi_Module __inst )
{
    __inst->startup();
}

/* disable */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_disable( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->disable();
}

/* enable */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_enable( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->enable();
}

/* restore */
static inline void ti_sysbios_interfaces_IHwi_restore( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt key )
{
    __inst->restore(key);
}

/* switchFromBootStack */
static inline void ti_sysbios_interfaces_IHwi_switchFromBootStack( ti_sysbios_interfaces_IHwi_Module __inst )
{
    __inst->switchFromBootStack();
}

/* post */
static inline void ti_sysbios_interfaces_IHwi_post( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    __inst->post(intNum);
}

/* getTaskSP */
static inline xdc_Char *ti_sysbios_interfaces_IHwi_getTaskSP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->getTaskSP();
}

/* disableInterrupt */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_disableInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    return __inst->disableInterrupt(intNum);
}

/* enableInterrupt */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_enableInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    return __inst->enableInterrupt(intNum);
}

/* restoreInterrupt */
static inline void ti_sysbios_interfaces_IHwi_restoreInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum, xdc_UInt key )
{
    __inst->restoreInterrupt(intNum, key);
}

/* clearInterrupt */
static inline void ti_sysbios_interfaces_IHwi_clearInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    __inst->clearInterrupt(intNum);
}

/* getFunc */
static inline ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_interfaces_IHwi_getFunc( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_UArg *arg )
{
    return __inst->__fxns->getFunc((void*)__inst, arg);
}

/* setFunc */
static inline void ti_sysbios_interfaces_IHwi_setFunc( ti_sysbios_interfaces_IHwi_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg )
{
    __inst->__fxns->setFunc((void*)__inst, fxn, arg);
}

/* getHookContext */
static inline xdc_Ptr ti_sysbios_interfaces_IHwi_getHookContext( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_Int id )
{
    return __inst->__fxns->getHookContext((void*)__inst, id);
}

/* setHookContext */
static inline void ti_sysbios_interfaces_IHwi_setHookContext( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_Int id, xdc_Ptr hookContext )
{
    __inst->__fxns->setHookContext((void*)__inst, id, hookContext);
}

/* getIrp */
static inline ti_sysbios_interfaces_IHwi_Irp ti_sysbios_interfaces_IHwi_getIrp( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return __inst->__fxns->getIrp((void*)__inst);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* getStackInfo_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_IHwi_getStackInfo_FxnT)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
static inline ti_sysbios_interfaces_IHwi_getStackInfo_FxnT ti_sysbios_interfaces_IHwi_getStackInfo_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getStackInfo_FxnT)__inst->getStackInfo;
}

/* getCoreStackInfo_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT ti_sysbios_interfaces_IHwi_getCoreStackInfo_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT)__inst->getCoreStackInfo;
}

/* startup_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_startup_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_startup_FxnT ti_sysbios_interfaces_IHwi_startup_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_startup_FxnT)__inst->startup;
}

/* disable_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_disable_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_disable_FxnT ti_sysbios_interfaces_IHwi_disable_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_disable_FxnT)__inst->disable;
}

/* enable_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_enable_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_enable_FxnT ti_sysbios_interfaces_IHwi_enable_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_enable_FxnT)__inst->enable;
}

/* restore_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_restore_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_restore_FxnT ti_sysbios_interfaces_IHwi_restore_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_restore_FxnT)__inst->restore;
}

/* switchFromBootStack_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT ti_sysbios_interfaces_IHwi_switchFromBootStack_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT)__inst->switchFromBootStack;
}

/* post_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_post_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_post_FxnT ti_sysbios_interfaces_IHwi_post_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_post_FxnT)__inst->post;
}

/* getTaskSP_{FxnT,fxnP} */
typedef xdc_Char *(*ti_sysbios_interfaces_IHwi_getTaskSP_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_getTaskSP_FxnT ti_sysbios_interfaces_IHwi_getTaskSP_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getTaskSP_FxnT)__inst->getTaskSP;
}

/* disableInterrupt_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT ti_sysbios_interfaces_IHwi_disableInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT)__inst->disableInterrupt;
}

/* enableInterrupt_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT ti_sysbios_interfaces_IHwi_enableInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT)__inst->enableInterrupt;
}

/* restoreInterrupt_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT)(xdc_UInt, xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT ti_sysbios_interfaces_IHwi_restoreInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT)__inst->restoreInterrupt;
}

/* clearInterrupt_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT ti_sysbios_interfaces_IHwi_clearInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT)__inst->clearInterrupt;
}

/* getFunc_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_IHwi_FuncPtr (*ti_sysbios_interfaces_IHwi_getFunc_FxnT)(void *, xdc_UArg*);
static inline ti_sysbios_interfaces_IHwi_getFunc_FxnT ti_sysbios_interfaces_IHwi_getFunc_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getFunc_FxnT)__inst->__fxns->getFunc;
}

/* setFunc_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_setFunc_FxnT)(void *, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
static inline ti_sysbios_interfaces_IHwi_setFunc_FxnT ti_sysbios_interfaces_IHwi_setFunc_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_setFunc_FxnT)__inst->__fxns->setFunc;
}

/* getHookContext_{FxnT,fxnP} */
typedef xdc_Ptr (*ti_sysbios_interfaces_IHwi_getHookContext_FxnT)(void *, xdc_Int);
static inline ti_sysbios_interfaces_IHwi_getHookContext_FxnT ti_sysbios_interfaces_IHwi_getHookContext_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getHookContext_FxnT)__inst->__fxns->getHookContext;
}

/* setHookContext_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_setHookContext_FxnT)(void *, xdc_Int, xdc_Ptr);
static inline ti_sysbios_interfaces_IHwi_setHookContext_FxnT ti_sysbios_interfaces_IHwi_setHookContext_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_setHookContext_FxnT)__inst->__fxns->setHookContext;
}

/* getIrp_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_IHwi_Irp (*ti_sysbios_interfaces_IHwi_getIrp_FxnT)(void *);
static inline ti_sysbios_interfaces_IHwi_getIrp_FxnT ti_sysbios_interfaces_IHwi_getIrp_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getIrp_FxnT)__inst->__fxns->getIrp;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 68 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_family_arm_m3_Hwi_FuncPtr;

/* Irp */
typedef ti_sysbios_interfaces_IHwi_Irp ti_sysbios_family_arm_m3_Hwi_Irp;

/* HookSet */
typedef ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_family_arm_m3_Hwi_HookSet;

/* MaskingOption */
typedef ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_family_arm_m3_Hwi_MaskingOption;

/* StackInfo */
typedef ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_family_arm_m3_Hwi_StackInfo;

/* VectorFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_VectorFuncPtr)(void);

/* ExceptionHookFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr)(ti_sysbios_family_arm_m3_Hwi_ExcContext*);

/* CCR */
struct ti_sysbios_family_arm_m3_Hwi_CCR {
    xdc_Bits8 STKALIGN;
    xdc_Bits8 BFHFNMIGN;
    xdc_Bits8 DIV_0_TRP;
    xdc_Bits8 UNALIGN_TRP;
    xdc_Bits8 USERSETMPEND;
    xdc_Bits8 NONEBASETHRDENA;
};

/* NVIC */
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20[56];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320[56];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR;
typedef xdc_UInt8 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR[240];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0[516];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR;
typedef xdc_UInt8 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR[12];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74[5];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C[93];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04[12];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48[34];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48;
struct ti_sysbios_family_arm_m3_Hwi_NVIC {
    xdc_UInt32 RES_00;
    xdc_UInt32 ICTR;
    xdc_UInt32 RES_08;
    xdc_UInt32 RES_0C;
    xdc_UInt32 STCSR;
    xdc_UInt32 STRVR;
    xdc_UInt32 STCVR;
    xdc_UInt32 STCALIB;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20 RES_20;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER ISER;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120 RES_120;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER ICER;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0 RES_1A0;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR ISPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220 RES_220;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR ICPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0 RES_2A0;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR IABR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320 RES_320;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR IPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0 RES_4F0;
    xdc_UInt32 CPUIDBR;
    xdc_UInt32 ICSR;
    xdc_UInt32 VTOR;
    xdc_UInt32 AIRCR;
    xdc_UInt32 SCR;
    xdc_UInt32 CCR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR SHPR;
    xdc_UInt32 SHCSR;
    xdc_UInt8 MMFSR;
    xdc_UInt8 BFSR;
    xdc_UInt16 UFSR;
    xdc_UInt32 HFSR;
    xdc_UInt32 DFSR;
    xdc_UInt32 MMAR;
    xdc_UInt32 BFAR;
    xdc_UInt32 AFSR;
    xdc_UInt32 PFR0;
    xdc_UInt32 PFR1;
    xdc_UInt32 DFR0;
    xdc_UInt32 AFR0;
    xdc_UInt32 MMFR0;
    xdc_UInt32 MMFR1;
    xdc_UInt32 MMFR2;
    xdc_UInt32 MMFR3;
    xdc_UInt32 ISAR0;
    xdc_UInt32 ISAR1;
    xdc_UInt32 ISAR2;
    xdc_UInt32 ISAR3;
    xdc_UInt32 ISAR4;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74 RES_D74;
    xdc_UInt32 CPACR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C RES_D8C;
    xdc_UInt32 STI;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04 RES_F04;
    xdc_UInt32 FPCCR;
    xdc_UInt32 FPCAR;
    xdc_UInt32 FPDSCR;
    xdc_UInt32 MVFR0;
    xdc_UInt32 MVFR1;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48 RES_F48;
    xdc_UInt32 PID4;
    xdc_UInt32 PID5;
    xdc_UInt32 PID6;
    xdc_UInt32 PID7;
    xdc_UInt32 PID0;
    xdc_UInt32 PID1;
    xdc_UInt32 PID2;
    xdc_UInt32 PID3;
    xdc_UInt32 CID0;
    xdc_UInt32 CID1;
    xdc_UInt32 CID2;
    xdc_UInt32 CID3;
};

/* nvic */

extern volatile ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_nvic;

/* vnvic */

extern volatile ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_vnvic;

/* ExcContext */
struct ti_sysbios_family_arm_m3_Hwi_ExcContext {
    ti_sysbios_BIOS_ThreadType threadType;
    xdc_Ptr threadHandle;
    xdc_Ptr threadStack;
    xdc_SizeT threadStackSize;
    xdc_Ptr r0;
    xdc_Ptr r1;
    xdc_Ptr r2;
    xdc_Ptr r3;
    xdc_Ptr r4;
    xdc_Ptr r5;
    xdc_Ptr r6;
    xdc_Ptr r7;
    xdc_Ptr r8;
    xdc_Ptr r9;
    xdc_Ptr r10;
    xdc_Ptr r11;
    xdc_Ptr r12;
    xdc_Ptr sp;
    xdc_Ptr lr;
    xdc_Ptr pc;
    xdc_Ptr psr;
    xdc_Ptr ICSR;
    xdc_Ptr MMFSR;
    xdc_Ptr BFSR;
    xdc_Ptr UFSR;
    xdc_Ptr HFSR;
    xdc_Ptr DFSR;
    xdc_Ptr MMAR;
    xdc_Ptr BFAR;
    xdc_Ptr AFSR;
};

/* ExcHandlerFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_ExcHandlerFuncPtr)(xdc_UInt*, xdc_UInt);

/* MaskingOption_NONE */


/* MaskingOption_ALL */


/* MaskingOption_SELF */


/* MaskingOption_BITMASK */


/* MaskingOption_LOWER */



/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_family_arm_m3_Hwi_Args__create {
    xdc_Int intNum;
    ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn;
} ti_sysbios_family_arm_m3_Hwi_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* HandlerFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_HandlerFuncPtr)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_UInt);

/* Instance_State */
typedef xdc_Ptr __T1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv __TA_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;

/* Module_State */
typedef xdc_Bool __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef xdc_Bool *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef ti_sysbios_family_arm_m3_Hwi_ExcContext *__T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef ti_sysbios_family_arm_m3_Hwi_ExcContext **__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef xdc_Ptr __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef xdc_UInt8 *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef xdc_UInt32 *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks __T2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef xdc_UInt32 **__ARRAY2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef __ARRAY2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsMask;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsMask ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__gateObj;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__gateObj ti_sysbios_family_arm_m3_Hwi_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__gatePrms;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__gatePrms ti_sysbios_family_arm_m3_Hwi_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_family_arm_m3_Hwi_Module__id;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__id ti_sysbios_family_arm_m3_Hwi_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerObj;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerObj ti_sysbios_family_arm_m3_Hwi_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_Object__count;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Object__count ti_sysbios_family_arm_m3_Hwi_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_family_arm_m3_Hwi_Object__heap;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Object__heap ti_sysbios_family_arm_m3_Hwi_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_family_arm_m3_Hwi_Object__sizeof;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Object__sizeof ti_sysbios_family_arm_m3_Hwi_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Object__table;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_Object__table ti_sysbios_family_arm_m3_Hwi_Object__table__C;

/* dispatcherAutoNestingSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport__C;


/* dispatcherSwiSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport__C;


/* dispatcherTaskSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport__C;


/* dispatcherIrpTrackingSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport__C;


/* NUM_INTERRUPTS */




typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS__C;


/* NUM_PRIORITIES */




typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES__C;


/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_family_arm_m3_Hwi_LM_begin;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_LM_begin ti_sysbios_family_arm_m3_Hwi_LM_begin__C;

/* LD_end */

typedef xdc_runtime_Log_Event CT__ti_sysbios_family_arm_m3_Hwi_LD_end;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_LD_end ti_sysbios_family_arm_m3_Hwi_LD_end__C;

/* A_unsupportedMaskingOption */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption__C;

/* E_alreadyDefined */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined__C;

/* E_hwiLimitExceeded */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded__C;

/* E_exception */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_exception;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_exception ti_sysbios_family_arm_m3_Hwi_E_exception__C;

/* E_noIsr */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_noIsr;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_noIsr ti_sysbios_family_arm_m3_Hwi_E_noIsr__C;

/* E_NMI */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_NMI;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_NMI ti_sysbios_family_arm_m3_Hwi_E_NMI__C;

/* E_hardFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_hardFault;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_hardFault ti_sysbios_family_arm_m3_Hwi_E_hardFault__C;

/* E_memFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_memFault;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_memFault ti_sysbios_family_arm_m3_Hwi_E_memFault__C;

/* E_busFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_busFault;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_busFault ti_sysbios_family_arm_m3_Hwi_E_busFault__C;

/* E_usageFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_usageFault;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_usageFault ti_sysbios_family_arm_m3_Hwi_E_usageFault__C;

/* E_svCall */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_svCall;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_svCall ti_sysbios_family_arm_m3_Hwi_E_svCall__C;

/* E_debugMon */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_debugMon;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_debugMon ti_sysbios_family_arm_m3_Hwi_E_debugMon__C;

/* E_reserved */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_reserved;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_E_reserved ti_sysbios_family_arm_m3_Hwi_E_reserved__C;

/* nullIsrFunc */

typedef ti_sysbios_family_arm_m3_Hwi_VectorFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_nullIsrFunc;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_nullIsrFunc ti_sysbios_family_arm_m3_Hwi_nullIsrFunc__C;

/* excHandlerFunc */

typedef ti_sysbios_family_arm_m3_Hwi_ExcHandlerFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_excHandlerFunc;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_excHandlerFunc ti_sysbios_family_arm_m3_Hwi_excHandlerFunc__C;

/* excHookFunc */

typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_excHookFunc;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_excHookFunc ti_sysbios_family_arm_m3_Hwi_excHookFunc__C;

/* excHookFuncs */

typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr __T1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs __TA_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef __TA_ti_sysbios_family_arm_m3_Hwi_excHookFuncs CT__ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_excHookFuncs ti_sysbios_family_arm_m3_Hwi_excHookFuncs__C;

/* disablePriority */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_disablePriority;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_disablePriority ti_sysbios_family_arm_m3_Hwi_disablePriority__C;


/* priGroup */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_priGroup;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_priGroup ti_sysbios_family_arm_m3_Hwi_priGroup__C;


/* numSparseInterrupts */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts__C;


/* swiDisable */

typedef xdc_UInt (*CT__ti_sysbios_family_arm_m3_Hwi_swiDisable)(void);
extern  const CT__ti_sysbios_family_arm_m3_Hwi_swiDisable ti_sysbios_family_arm_m3_Hwi_swiDisable__C;

/* swiRestoreHwi */

typedef void (*CT__ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi)(xdc_UInt);
extern  const CT__ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi__C;

/* taskDisable */

typedef xdc_UInt (*CT__ti_sysbios_family_arm_m3_Hwi_taskDisable)(void);
extern  const CT__ti_sysbios_family_arm_m3_Hwi_taskDisable ti_sysbios_family_arm_m3_Hwi_taskDisable__C;

/* taskRestoreHwi */

typedef void (*CT__ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi)(xdc_UInt);
extern  const CT__ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi__C;

/* ccr */




typedef xdc_UInt32 CT__ti_sysbios_family_arm_m3_Hwi_ccr;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_ccr ti_sysbios_family_arm_m3_Hwi_ccr__C;


/* hooks */

typedef ti_sysbios_family_arm_m3_Hwi_HookSet __T1_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef struct { int length; ti_sysbios_family_arm_m3_Hwi_HookSet *elem; } __ARRAY1_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_hooks __TA_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef __TA_ti_sysbios_family_arm_m3_Hwi_hooks CT__ti_sysbios_family_arm_m3_Hwi_hooks;
extern  const CT__ti_sysbios_family_arm_m3_Hwi_hooks ti_sysbios_family_arm_m3_Hwi_hooks__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_family_arm_m3_Hwi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
    xdc_Bool useDispatcher;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_family_arm_m3_Hwi_Struct {
    const ti_sysbios_family_arm_m3_Hwi_Fxns__ *__fxns;
    xdc_UArg __f0;
    ti_sysbios_family_arm_m3_Hwi_FuncPtr __f1;
    ti_sysbios_family_arm_m3_Hwi_Irp __f2;
    xdc_UInt8 __f3;
    xdc_Int16 __f4;
    __TA_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv __f5;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_family_arm_m3_Hwi_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*getStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
    xdc_Bool (*getCoreStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
    void (*startup)(void);
    xdc_UInt (*disable)(void);
    xdc_UInt (*enable)(void);
    void (*restore)(xdc_UInt);
    void (*switchFromBootStack)(void);
    void (*post)(xdc_UInt);
    xdc_Char *(*getTaskSP)(void);
    xdc_UInt (*disableInterrupt)(xdc_UInt);
    xdc_UInt (*enableInterrupt)(xdc_UInt);
    void (*restoreInterrupt)(xdc_UInt, xdc_UInt);
    void (*clearInterrupt)(xdc_UInt);
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_family_arm_m3_Hwi_Handle, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_Int);
    void (*setHookContext)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(ti_sysbios_family_arm_m3_Hwi_Handle);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_family_arm_m3_Hwi_Fxns__ ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int ti_sysbios_family_arm_m3_Hwi_Module_startup__E( xdc_Int state );

extern xdc_Int ti_sysbios_family_arm_m3_Hwi_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern xdc_Int ti_sysbios_family_arm_m3_Hwi_Instance_init__E(ti_sysbios_family_arm_m3_Hwi_Object *, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern void ti_sysbios_family_arm_m3_Hwi_Instance_finalize__E( ti_sysbios_family_arm_m3_Hwi_Object* , int );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_family_arm_m3_Hwi_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_family_arm_m3_Hwi_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_create( xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_family_arm_m3_Hwi_construct( ti_sysbios_family_arm_m3_Hwi_Struct *__obj, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_family_arm_m3_Hwi_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_family_arm_m3_Hwi_delete(ti_sysbios_family_arm_m3_Hwi_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_family_arm_m3_Hwi_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_family_arm_m3_Hwi_destruct(ti_sysbios_family_arm_m3_Hwi_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_family_arm_m3_Hwi_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getStackInfo__E */


extern xdc_Bool ti_sysbios_family_arm_m3_Hwi_getStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth );

/* getCoreStackInfo__E */


extern xdc_Bool ti_sysbios_family_arm_m3_Hwi_getCoreStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId );

/* startup__E */


extern void ti_sysbios_family_arm_m3_Hwi_startup__E( void );

/* switchFromBootStack__E */


extern void ti_sysbios_family_arm_m3_Hwi_switchFromBootStack__E( void );

/* post__E */


extern void ti_sysbios_family_arm_m3_Hwi_post__E( xdc_UInt intNum );

/* getTaskSP__E */


extern xdc_Char *ti_sysbios_family_arm_m3_Hwi_getTaskSP__E( void );

/* disableInterrupt__E */


extern xdc_UInt ti_sysbios_family_arm_m3_Hwi_disableInterrupt__E( xdc_UInt intNum );

/* enableInterrupt__E */


extern xdc_UInt ti_sysbios_family_arm_m3_Hwi_enableInterrupt__E( xdc_UInt intNum );

/* restoreInterrupt__E */


extern void ti_sysbios_family_arm_m3_Hwi_restoreInterrupt__E( xdc_UInt intNum, xdc_UInt key );

/* clearInterrupt__E */


extern void ti_sysbios_family_arm_m3_Hwi_clearInterrupt__E( xdc_UInt intNum );

/* getFunc__E */


extern ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_family_arm_m3_Hwi_getFunc__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern void ti_sysbios_family_arm_m3_Hwi_setFunc__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg );

/* getHookContext__E */


extern xdc_Ptr ti_sysbios_family_arm_m3_Hwi_getHookContext__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern void ti_sysbios_family_arm_m3_Hwi_setHookContext__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* getIrp__E */


extern ti_sysbios_interfaces_IHwi_Irp ti_sysbios_family_arm_m3_Hwi_getIrp__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst );

/* disableFxn__E */


extern xdc_UInt ti_sysbios_family_arm_m3_Hwi_disableFxn__E( void );

/* enableFxn__E */


extern xdc_UInt ti_sysbios_family_arm_m3_Hwi_enableFxn__E( void );

/* restoreFxn__E */


extern void ti_sysbios_family_arm_m3_Hwi_restoreFxn__E( xdc_UInt key );

/* plug__E */


extern void ti_sysbios_family_arm_m3_Hwi_plug__E( xdc_UInt intNum, void *fxn );

/* getHandle__E */


extern ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_getHandle__E( xdc_UInt intNum );

/* setPriority__E */


extern void ti_sysbios_family_arm_m3_Hwi_setPriority__E( xdc_UInt intNum, xdc_UInt priority );

/* excSetBuffers__E */


extern void ti_sysbios_family_arm_m3_Hwi_excSetBuffers__E( xdc_Ptr excContextBuffer, xdc_Ptr excStackBuffer );

/* initNVIC__E */


extern void ti_sysbios_family_arm_m3_Hwi_initNVIC__E( void );

/* initStacks__E */


extern void ti_sysbios_family_arm_m3_Hwi_initStacks__E( xdc_Ptr hwiStack );

/* flushVnvic__E */


extern void ti_sysbios_family_arm_m3_Hwi_flushVnvic__E( void );

/* reconfig__E */


extern void ti_sysbios_family_arm_m3_Hwi_reconfig__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, ti_sysbios_family_arm_m3_Hwi_FuncPtr fxn, const ti_sysbios_family_arm_m3_Hwi_Params *params );

/* postInit__I */


extern xdc_Int ti_sysbios_family_arm_m3_Hwi_postInit__I( ti_sysbios_family_arm_m3_Hwi_Object *hwi, xdc_runtime_Error_Block *eb );

/* updateNvic__I */


extern void ti_sysbios_family_arm_m3_Hwi_updateNvic__I( xdc_UInt intNum );

/* excHandlerAsm__I */


extern void ti_sysbios_family_arm_m3_Hwi_excHandlerAsm__I( void );

/* excHandler__I */


extern void ti_sysbios_family_arm_m3_Hwi_excHandler__I( xdc_UInt *excStack, xdc_UInt lr );

/* excHandlerMin__I */


extern void ti_sysbios_family_arm_m3_Hwi_excHandlerMin__I( xdc_UInt *excStack, xdc_UInt lr );

/* excHandlerMax__I */


extern void ti_sysbios_family_arm_m3_Hwi_excHandlerMax__I( xdc_UInt *excStack, xdc_UInt lr );

/* excFillContext__I */


extern void ti_sysbios_family_arm_m3_Hwi_excFillContext__I( xdc_UInt *excStack );

/* excNmi__I */


extern void ti_sysbios_family_arm_m3_Hwi_excNmi__I( xdc_UInt *excStack );

/* excHardFault__I */


extern void ti_sysbios_family_arm_m3_Hwi_excHardFault__I( xdc_UInt *excStack );

/* excMemFault__I */


extern void ti_sysbios_family_arm_m3_Hwi_excMemFault__I( xdc_UInt *excStack );

/* excBusFault__I */


extern void ti_sysbios_family_arm_m3_Hwi_excBusFault__I( xdc_UInt *excStack );

/* excUsageFault__I */


extern void ti_sysbios_family_arm_m3_Hwi_excUsageFault__I( xdc_UInt *excStack );

/* excSvCall__I */


extern void ti_sysbios_family_arm_m3_Hwi_excSvCall__I( xdc_UInt *excStack );

/* excDebugMon__I */


extern void ti_sysbios_family_arm_m3_Hwi_excDebugMon__I( xdc_UInt *excStack );

/* excReserved__I */


extern void ti_sysbios_family_arm_m3_Hwi_excReserved__I( xdc_UInt *excStack, xdc_UInt excNum );

/* excNoIsr__I */


extern void ti_sysbios_family_arm_m3_Hwi_excNoIsr__I( xdc_UInt *excStack, xdc_UInt excNum );

/* excDumpRegs__I */


extern void ti_sysbios_family_arm_m3_Hwi_excDumpRegs__I( xdc_UInt lr );

/* pendSV__I */


extern void ti_sysbios_family_arm_m3_Hwi_pendSV__I( void );

/* dispatch__I */


extern void ti_sysbios_family_arm_m3_Hwi_dispatch__I( void );

/* cc26xxRomInitNVIC__I */


extern void ti_sysbios_family_arm_m3_Hwi_cc26xxRomInitNVIC__I( void );

/* dispatchC__I */


extern xdc_UInt ti_sysbios_family_arm_m3_Hwi_dispatchC__I( ti_sysbios_family_arm_m3_Hwi_Irp irp, xdc_UInt32 dummy1, xdc_UInt32 dummy2, ti_sysbios_family_arm_m3_Hwi_Object *hwi );

/* doSwiRestore__I */


extern void ti_sysbios_family_arm_m3_Hwi_doSwiRestore__I( xdc_UInt tskKey );

/* doTaskRestore__I */


extern void ti_sysbios_family_arm_m3_Hwi_doTaskRestore__I( xdc_UInt tskKey );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_family_arm_m3_Hwi_Module_upCast( void )
{
    return (ti_sysbios_interfaces_IHwi_Module)&ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C;
}

/* Module_to_ti_sysbios_interfaces_IHwi */


/* Handle_upCast */
static inline ti_sysbios_interfaces_IHwi_Handle ti_sysbios_family_arm_m3_Hwi_Handle_upCast( ti_sysbios_family_arm_m3_Hwi_Handle i )
{
    return (ti_sysbios_interfaces_IHwi_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_IHwi */


/* Handle_downCast */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Handle_downCast( ti_sysbios_interfaces_IHwi_Handle i )
{
    ti_sysbios_interfaces_IHwi_Handle i2 = (ti_sysbios_interfaces_IHwi_Handle)i;
    return (void*)i2->__fxns == (void*)&ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C ? (ti_sysbios_family_arm_m3_Hwi_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_IHwi */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_family_arm_m3_Hwi_Module__id ti_sysbios_family_arm_m3_Hwi_Module_id( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_family_arm_m3_Hwi_Module_hasMask( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_family_arm_m3_Hwi_Module_getMask( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0 ? *ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_family_arm_m3_Hwi_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0) *ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_family_arm_m3_Hwi_Params_init( ti_sysbios_family_arm_m3_Hwi_Params *prms ) 
{
    if (prms) {
        ti_sysbios_family_arm_m3_Hwi_Params__init__S(prms, 0, sizeof(ti_sysbios_family_arm_m3_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_family_arm_m3_Hwi_Params_copy(ti_sysbios_family_arm_m3_Hwi_Params *dst, const ti_sysbios_family_arm_m3_Hwi_Params *src) 
{
    if (dst) {
        ti_sysbios_family_arm_m3_Hwi_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_family_arm_m3_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_get(ti_sysbios_family_arm_m3_Hwi_Instance_State *oarr, int i) 
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_first( void )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_next( ti_sysbios_family_arm_m3_Hwi_Object *obj )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_family_arm_m3_Hwi_Handle_label( ti_sysbios_family_arm_m3_Hwi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_family_arm_m3_Hwi_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_family_arm_m3_Hwi_Handle_name( ti_sysbios_family_arm_m3_Hwi_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_family_arm_m3_Hwi_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_handle( ti_sysbios_family_arm_m3_Hwi_Struct *str )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)str;
}

/* struct */
static inline ti_sysbios_family_arm_m3_Hwi_Struct *ti_sysbios_family_arm_m3_Hwi_struct( ti_sysbios_family_arm_m3_Hwi_Handle inst )
{
    return (ti_sysbios_family_arm_m3_Hwi_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__epilogue.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */







/* Use function call implementations */

/*
 *  ======== Hwi_disable ========
 */


/*
 *  ======== Hwi_enable ========
 */


/*
 *  ======== Hwi_restore ========
 */


# 138 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__epilogue.h"

# 1156 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 1341 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"

# 47 "../source/config/serialConfig.c"

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
//*****************************************************************************
//
// hw_ints.h - Macros that define the interrupt assignment on Tiva C Series
// MCUs.
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
// The following are defines for the fault assignments.
//
//*****************************************************************************
# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C123 Class Interrupts
//
//*****************************************************************************
# 94 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
                                            // Control
# 170 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C129 Class Interrupts
//
//*****************************************************************************
# 244 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
                                            // (imprecise)
# 283 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C123 Interrupt Class Definition
//
//*****************************************************************************
# 318 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C129 Interrupt Class Definition
//
//*****************************************************************************
# 339 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// Macros to resolve the INT_PERIPH_CLASS name to a common INT_PERIPH name.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the interrupt assignments.
//
//*****************************************************************************
# 475 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// The following are defines for the total number of interrupts.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the total number of priority levels.
//
//*****************************************************************************



# 49 "../source/config/serialConfig.c"
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

# 50 "../source/config/serialConfig.c"
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





# 51 "../source/config/serialConfig.c"
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

# 52 "../source/config/serialConfig.c"

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

# 54 "../source/config/serialConfig.c"
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

# 55 "../source/config/serialConfig.c"
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




# 56 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"
//*****************************************************************************
//
// i2c.h - Prototypes for the I2C Driver.
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
// Defines for the API.
//
//*****************************************************************************

//*****************************************************************************
//
// Interrupt defines.
//
//*****************************************************************************



//*****************************************************************************
//
// I2C Master commands.
//
//*****************************************************************************
# 119 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// I2C Master glitch filter configuration.
//
//*****************************************************************************
# 141 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// I2C Master error status.
//
//*****************************************************************************






//*****************************************************************************
//
// I2C Slave action requests
//
//*****************************************************************************
# 165 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// Miscellaneous I2C driver definitions.
//
//*****************************************************************************


//*****************************************************************************
//
// I2C Master interrupts.
//
//*****************************************************************************
# 197 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// I2C Slave interrupts.
//
//*****************************************************************************
# 218 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// I2C Slave FIFO configuration macros.
//
//*****************************************************************************





//*****************************************************************************
//
// I2C FIFO configuration macros.
//
//*****************************************************************************
# 264 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// I2C FIFO status.
//
//*****************************************************************************
# 278 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/i2c.h"

//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern void I2CIntRegister(uint32_t ui32Base, void(pfnHandler)(void));
extern void I2CIntUnregister(uint32_t ui32Base);
extern void I2CTxFIFOConfigSet(uint32_t ui32Base, uint32_t ui32Config);
extern void I2CTxFIFOFlush(uint32_t ui32Base);
extern void I2CRxFIFOConfigSet(uint32_t ui32Base, uint32_t ui32Config);
extern void I2CRxFIFOFlush(uint32_t ui32Base);
extern uint32_t I2CFIFOStatus(uint32_t ui32Base);
extern void I2CFIFODataPut(uint32_t ui32Base, uint8_t ui8Data);
extern uint32_t I2CFIFODataPutNonBlocking(uint32_t ui32Base,
                                          uint8_t ui8Data);
extern uint32_t I2CFIFODataGet(uint32_t ui32Base);
extern uint32_t I2CFIFODataGetNonBlocking(uint32_t ui32Base,
                                          uint8_t *pui8Data);
extern void I2CMasterBurstLengthSet(uint32_t ui32Base,
                                    uint8_t ui8Length);
extern uint32_t I2CMasterBurstCountGet(uint32_t ui32Base);
extern void I2CMasterGlitchFilterConfigSet(uint32_t ui32Base,
                                           uint32_t ui32Config);
extern void I2CSlaveFIFOEnable(uint32_t ui32Base, uint32_t ui32Config);
extern void I2CSlaveFIFODisable(uint32_t ui32Base);
extern _Bool I2CMasterBusBusy(uint32_t ui32Base);
extern _Bool I2CMasterBusy(uint32_t ui32Base);
extern void I2CMasterControl(uint32_t ui32Base, uint32_t ui32Cmd);
extern uint32_t I2CMasterDataGet(uint32_t ui32Base);
extern void I2CMasterDataPut(uint32_t ui32Base, uint8_t ui8Data);
extern void I2CMasterDisable(uint32_t ui32Base);
extern void I2CMasterEnable(uint32_t ui32Base);
extern uint32_t I2CMasterErr(uint32_t ui32Base);
extern void I2CMasterInitExpClk(uint32_t ui32Base, uint32_t ui32I2CClk,
                                _Bool bFast);
extern void I2CMasterIntClear(uint32_t ui32Base);
extern void I2CMasterIntDisable(uint32_t ui32Base);
extern void I2CMasterIntEnable(uint32_t ui32Base);
extern _Bool I2CMasterIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void I2CMasterIntEnableEx(uint32_t ui32Base,
                                 uint32_t ui32IntFlags);
extern void I2CMasterIntDisableEx(uint32_t ui32Base,
                                  uint32_t ui32IntFlags);
extern uint32_t I2CMasterIntStatusEx(uint32_t ui32Base,
                                       _Bool bMasked);
extern void I2CMasterIntClearEx(uint32_t ui32Base,
                                uint32_t ui32IntFlags);
extern void I2CMasterTimeoutSet(uint32_t ui32Base, uint32_t ui32Value);
extern void I2CSlaveACKOverride(uint32_t ui32Base, _Bool bEnable);
extern void I2CSlaveACKValueSet(uint32_t ui32Base, _Bool bACK);
extern uint32_t I2CMasterLineStateGet(uint32_t ui32Base);
extern void I2CMasterSlaveAddrSet(uint32_t ui32Base,
                                  uint8_t ui8SlaveAddr,
                                  _Bool bReceive);
extern uint32_t I2CSlaveDataGet(uint32_t ui32Base);
extern void I2CSlaveDataPut(uint32_t ui32Base, uint8_t ui8Data);
extern void I2CSlaveDisable(uint32_t ui32Base);
extern void I2CSlaveEnable(uint32_t ui32Base);
extern void I2CSlaveInit(uint32_t ui32Base, uint8_t ui8SlaveAddr);
extern void I2CSlaveAddressSet(uint32_t ui32Base, uint8_t ui8AddrNum,
                                 uint8_t ui8SlaveAddr);
extern void I2CSlaveIntClear(uint32_t ui32Base);
extern void I2CSlaveIntDisable(uint32_t ui32Base);
extern void I2CSlaveIntEnable(uint32_t ui32Base);
extern void I2CSlaveIntClearEx(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void I2CSlaveIntDisableEx(uint32_t ui32Base,
                                 uint32_t ui32IntFlags);
extern void I2CSlaveIntEnableEx(uint32_t ui32Base, uint32_t ui32IntFlags);
extern _Bool I2CSlaveIntStatus(uint32_t ui32Base, _Bool bMasked);
extern uint32_t I2CSlaveIntStatusEx(uint32_t ui32Base,
                                      _Bool bMasked);
extern uint32_t I2CSlaveStatus(uint32_t ui32Base);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 57 "../source/config/serialConfig.c"
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

# 58 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"
//*****************************************************************************
//
// pwm.h - API function protoypes for Pulse Width Modulation (PWM) ports
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
// The following defines are passed to PWMGenConfigure() as the ui32Config
// parameter and specify the configuration of the PWM generator.
//
//*****************************************************************************
# 78 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"
                                            // immediately


                                            // synchronized


                                            // synchronized


                                            // immediately


                                            // synchronized


                                            // synchronized

//*****************************************************************************
//
// Defines for enabling, disabling, and clearing PWM generator interrupts and
// triggers.
//
//*****************************************************************************
# 113 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines for enabling, disabling, and clearing PWM interrupts.
//
//*****************************************************************************
# 128 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines to identify the generators within a module.
//
//*****************************************************************************















//*****************************************************************************
//
// Defines to identify the outputs within a module.
//
//*****************************************************************************
# 162 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

# 171 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines to identify each of the possible fault trigger conditions in
// PWM_FAULT_GROUP_0.
//
//*****************************************************************************


# 187 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines to identify each of the possible fault trigger conditions in
// PWM_FAULT_GROUP_1.
//
//*****************************************************************************


# 204 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines to identify the sense of each of the external FAULTn signals
//
//*****************************************************************************
# 218 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines that can be passed to the PWMClockSet() API as the ui32Config
// parameter, and can be returned by the PWMClockGet() API.
//
//*****************************************************************************
# 232 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/pwm.h"

//*****************************************************************************
//
// Defines passed to PWMOutputUpdateMode() to identify the synchronization mode
// to use when enabling or disabling outputs using PWMOutputState().
//
//*****************************************************************************






//*****************************************************************************
//
// API Function prototypes
//
//*****************************************************************************
extern void PWMGenConfigure(uint32_t ui32Base, uint32_t ui32Gen,
                            uint32_t ui32Config);
extern void PWMGenPeriodSet(uint32_t ui32Base, uint32_t ui32Gen,
                            uint32_t ui32Period);
extern uint32_t PWMGenPeriodGet(uint32_t ui32Base,
                                uint32_t ui32Gen);
extern void PWMGenEnable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMGenDisable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMPulseWidthSet(uint32_t ui32Base, uint32_t ui32PWMOut,
                             uint32_t ui32Width);
extern uint32_t PWMPulseWidthGet(uint32_t ui32Base,
                                 uint32_t ui32PWMOut);
extern void PWMDeadBandEnable(uint32_t ui32Base, uint32_t ui32Gen,
                              uint16_t ui16Rise, uint16_t ui16Fall);
extern void PWMDeadBandDisable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMSyncUpdate(uint32_t ui32Base, uint32_t ui32GenBits);
extern void PWMSyncTimeBase(uint32_t ui32Base, uint32_t ui32GenBits);
extern void PWMOutputState(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                           _Bool bEnable);
extern void PWMOutputInvert(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                            _Bool bInvert);
extern void PWMOutputFaultLevel(uint32_t ui32Base,
                                uint32_t ui32PWMOutBits,
                                _Bool bDriveHigh);
extern void PWMOutputFault(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                           _Bool bFaultSuppress);
extern void PWMGenIntRegister(uint32_t ui32Base, uint32_t ui32Gen,
                              void (*pfnIntHandler)(void));
extern void PWMGenIntUnregister(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMFaultIntRegister(uint32_t ui32Base,
                                void (*pfnIntHandler)(void));
extern void PWMFaultIntUnregister(uint32_t ui32Base);
extern void PWMGenIntTrigEnable(uint32_t ui32Base, uint32_t ui32Gen,
                                uint32_t ui32IntTrig);
extern void PWMGenIntTrigDisable(uint32_t ui32Base, uint32_t ui32Gen,
                                 uint32_t ui32IntTrig);
extern uint32_t PWMGenIntStatus(uint32_t ui32Base, uint32_t ui32Gen,
                                _Bool bMasked);
extern void PWMGenIntClear(uint32_t ui32Base, uint32_t ui32Gen,
                           uint32_t ui32Ints);
extern void PWMIntEnable(uint32_t ui32Base, uint32_t ui32GenFault);
extern void PWMIntDisable(uint32_t ui32Base, uint32_t ui32GenFault);
extern void PWMFaultIntClear(uint32_t ui32Base);
extern uint32_t PWMIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void PWMFaultIntClearExt(uint32_t ui32Base,
                                uint32_t ui32FaultInts);
extern void PWMGenFaultConfigure(uint32_t ui32Base, uint32_t ui32Gen,
                                 uint32_t ui32MinFaultPeriod,
                                 uint32_t ui32FaultSenses);
extern void PWMGenFaultTriggerSet(uint32_t ui32Base, uint32_t ui32Gen,
                                  uint32_t ui32Group,
                                  uint32_t ui32FaultTriggers);
extern uint32_t PWMGenFaultTriggerGet(uint32_t ui32Base,
                                      uint32_t ui32Gen,
                                      uint32_t ui32Group);
extern uint32_t PWMGenFaultStatus(uint32_t ui32Base,
                                  uint32_t ui32Gen,
                                  uint32_t ui32Group);
extern void PWMGenFaultClear(uint32_t ui32Base, uint32_t ui32Gen,
                             uint32_t ui32Group,
                             uint32_t ui32FaultTriggers);
extern void PWMClockSet(uint32_t ui32Base, uint32_t ui32Config);
extern uint32_t PWMClockGet(uint32_t ui32Base);
extern void PWMOutputUpdateMode(uint32_t ui32Base,
                                uint32_t ui32PWMOutBits,
                                uint32_t ui32Mode);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 59 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/ssi.h"
//*****************************************************************************
//
// ssi.h - Prototypes for the Synchronous Serial Interface Driver.
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
// Values that can be passed to SSIIntEnable, SSIIntDisable, and SSIIntClear
// as the ui32IntFlags parameter, and returned by SSIIntStatus.
//
//*****************************************************************************
# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/ssi.h"

//*****************************************************************************
//
// Values that can be passed to SSIConfigSetExpClk.
//
//*****************************************************************************
# 79 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/ssi.h"





//*****************************************************************************
//
// Values that can be passed to SSIDMAEnable() and SSIDMADisable().
//
//*****************************************************************************



//*****************************************************************************
//
// Values that can be passed to SSIClockSourceSet() or returned from
// SSIClockSourceGet().
//
//*****************************************************************************



//*****************************************************************************
//
// Values that can be passed to SSIAdvModeSet().
//
//*****************************************************************************
# 113 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/ssi.h"

//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern void SSIConfigSetExpClk(uint32_t ui32Base, uint32_t ui32SSIClk,
                               uint32_t ui32Protocol, uint32_t ui32Mode,
                               uint32_t ui32BitRate,
                               uint32_t ui32DataWidth);
extern void SSIDataGet(uint32_t ui32Base, uint32_t *pui32Data);
extern int32_t SSIDataGetNonBlocking(uint32_t ui32Base,
                                  uint32_t *pui32Data);
extern void SSIDataPut(uint32_t ui32Base, uint32_t ui32Data);
extern int32_t SSIDataPutNonBlocking(uint32_t ui32Base, uint32_t ui32Data);
extern void SSIDisable(uint32_t ui32Base);
extern void SSIEnable(uint32_t ui32Base);
extern void SSIIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern uint32_t SSIIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void SSIIntUnregister(uint32_t ui32Base);
extern void SSIDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void SSIDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern _Bool SSIBusy(uint32_t ui32Base);
extern void SSIClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t SSIClockSourceGet(uint32_t ui32Base);
extern void SSIAdvModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern void SSIAdvDataPutFrameEnd(uint32_t ui32Base, uint32_t ui32Data);
extern int32_t SSIAdvDataPutFrameEndNonBlocking(uint32_t ui32Base,
                                             uint32_t ui32Data);
extern void SSIAdvFrameHoldEnable(uint32_t ui32Base);
extern void SSIAdvFrameHoldDisable(uint32_t ui32Base);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 60 "../source/config/serialConfig.c"
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




# 61 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/uart.h"
//*****************************************************************************
//
// uart.h - Defines and Macros for the UART.
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
// Values that can be passed to UARTIntEnable, UARTIntDisable, and UARTIntClear
// as the ui32IntFlags parameter, and returned from UARTIntStatus.
//
//*****************************************************************************
# 74 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/uart.h"

//*****************************************************************************
//
// Values that can be passed to UARTConfigSetExpClk as the ui32Config parameter
// and returned by UARTConfigGetExpClk in the pui32Config parameter.
// Additionally, the UART_CONFIG_PAR_* subset can be passed to
// UARTParityModeSet as the ui32Parity parameter, and are returned by
// UARTParityModeGet.
//
//*****************************************************************************
# 98 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/uart.h"

//*****************************************************************************
//
// Values that can be passed to UARTFIFOLevelSet as the ui32TxLevel parameter
// and returned by UARTFIFOLevelGet in the pui32TxLevel.
//
//*****************************************************************************






//*****************************************************************************
//
// Values that can be passed to UARTFIFOLevelSet as the ui32RxLevel parameter
// and returned by UARTFIFOLevelGet in the pui32RxLevel.
//
//*****************************************************************************






//*****************************************************************************
//
// Values that can be passed to UARTDMAEnable() and UARTDMADisable().
//
//*****************************************************************************




//*****************************************************************************
//
// Values returned from UARTRxErrorGet().
//
//*****************************************************************************





//*****************************************************************************
//
// Values that can be passed to UARTHandshakeOutputsSet() or returned from
// UARTHandshakeOutputGet().
//
//*****************************************************************************



//*****************************************************************************
//
// Values that can be returned from UARTHandshakeInputsGet().
//
//*****************************************************************************





//*****************************************************************************
//
// Values that can be passed to UARTFlowControl() or returned from
// UARTFlowControlGet().
//
//*****************************************************************************




//*****************************************************************************
//
// Values that can be passed to UARTTxIntModeSet() or returned from
// UARTTxIntModeGet().
//
//*****************************************************************************



//*****************************************************************************
//
// Values that can be passed to UARTClockSourceSet() or returned from
// UARTClockSourceGet().
//
//*****************************************************************************



//*****************************************************************************
//
// API Function prototypes
//
//*****************************************************************************
extern void UARTParityModeSet(uint32_t ui32Base, uint32_t ui32Parity);
extern uint32_t UARTParityModeGet(uint32_t ui32Base);
extern void UARTFIFOLevelSet(uint32_t ui32Base, uint32_t ui32TxLevel,
                             uint32_t ui32RxLevel);
extern void UARTFIFOLevelGet(uint32_t ui32Base, uint32_t *pui32TxLevel,
                             uint32_t *pui32RxLevel);
extern void UARTConfigSetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t ui32Baud, uint32_t ui32Config);
extern void UARTConfigGetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t *pui32Baud, uint32_t *pui32Config);
extern void UARTEnable(uint32_t ui32Base);
extern void UARTDisable(uint32_t ui32Base);
extern void UARTFIFOEnable(uint32_t ui32Base);
extern void UARTFIFODisable(uint32_t ui32Base);
extern void UARTEnableSIR(uint32_t ui32Base, _Bool bLowPower);
extern void UARTDisableSIR(uint32_t ui32Base);
extern _Bool UARTCharsAvail(uint32_t ui32Base);
extern _Bool UARTSpaceAvail(uint32_t ui32Base);
extern int32_t UARTCharGetNonBlocking(uint32_t ui32Base);
extern int32_t UARTCharGet(uint32_t ui32Base);
extern _Bool UARTCharPutNonBlocking(uint32_t ui32Base, unsigned char ucData);
extern void UARTCharPut(uint32_t ui32Base, unsigned char ucData);
extern void UARTBreakCtl(uint32_t ui32Base, _Bool bBreakState);
extern _Bool UARTBusy(uint32_t ui32Base);
extern void UARTIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void UARTIntUnregister(uint32_t ui32Base);
extern void UARTIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t UARTIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void UARTIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void UARTDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern uint32_t UARTRxErrorGet(uint32_t ui32Base);
extern void UARTRxErrorClear(uint32_t ui32Base);
extern void UARTSmartCardEnable(uint32_t ui32Base);
extern void UARTSmartCardDisable(uint32_t ui32Base);
extern void UARTModemControlSet(uint32_t ui32Base, uint32_t ui32Control);
extern void UARTModemControlClear(uint32_t ui32Base, uint32_t ui32Control);
extern uint32_t UARTModemControlGet(uint32_t ui32Base);
extern uint32_t UARTModemStatusGet(uint32_t ui32Base);
extern void UARTFlowControlSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTFlowControlGet(uint32_t ui32Base);
extern void UARTTxIntModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTTxIntModeGet(uint32_t ui32Base);
extern void UARTClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t UARTClockSourceGet(uint32_t ui32Base);
extern void UART9BitEnable(uint32_t ui32Base);
extern void UART9BitDisable(uint32_t ui32Base);
extern void UART9BitAddrSet(uint32_t ui32Base, uint8_t ui8Addr,
                            uint8_t ui8Mask);
extern void UART9BitAddrSend(uint32_t ui32Base, uint8_t ui8Addr);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 62 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"
//*****************************************************************************
//
// udma.h - Prototypes and macros for the uDMA controller.
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
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************





//*****************************************************************************
//
//! \addtogroup udma_api
//! @{
//
//*****************************************************************************

//*****************************************************************************
//
// A structure that defines an entry in the channel control table.  These
// fields are used by the uDMA controller and normally it is not necessary for
// software to directly read or write fields in the table.
//
//*****************************************************************************
typedef struct
{
    //
    // The ending source address of the data transfer.
    //
    volatile void *pvSrcEndAddr;

    //
    // The ending destination address of the data transfer.
    //
    volatile void *pvDstEndAddr;

    //
    // The channel control mode.
    //
    volatile uint32_t ui32Control;

    //
    // An unused location.
    //
    volatile uint32_t ui32Spare;
}
tDMAControlTable;

//*****************************************************************************
//
//! A helper macro for building scatter-gather task table entries.
//!
//! \param ui32TransferCount is the count of items to transfer for this task.
//! \param ui32ItemSize is the bit size of the items to transfer for this task.
//! \param ui32SrcIncrement is the bit size increment for source data.
//! \param pvSrcAddr is the starting address of the data to transfer.
//! \param ui32DstIncrement is the bit size increment for destination data.
//! \param pvDstAddr is the starting address of the destination data.
//! \param ui32ArbSize is the arbitration size to use for the transfer task.
//! \param ui32Mode is the transfer mode for this task.
//!
//! This macro is intended to be used to help populate a table of uDMA tasks
//! for a scatter-gather transfer.  This macro will calculate the values for
//! the fields of a task structure entry based on the input parameters.
//!
//! There are specific requirements for the values of each parameter.  No
//! checking is done so it is up to the caller to ensure that correct values
//! are used for the parameters.
//!
//! The \e ui32TransferCount parameter is the number of items that will be
//! transferred by this task.  It must be in the range 1-1024.
//!
//! The \e ui32ItemSize parameter is the bit size of the transfer data.  It
//! must be one of \b UDMA_SIZE_8, \b UDMA_SIZE_16, or \b UDMA_SIZE_32.
//!
//! The \e ui32SrcIncrement parameter is the increment size for the source
//! data.  It must be one of \b UDMA_SRC_INC_8, \b UDMA_SRC_INC_16,
//! \b UDMA_SRC_INC_32, or \b UDMA_SRC_INC_NONE.
//!
//! The \e pvSrcAddr parameter is a void pointer to the beginning of the source
//! data.
//!
//! The \e ui32DstIncrement parameter is the increment size for the destination
//! data.  It must be one of \b UDMA_DST_INC_8, \b UDMA_DST_INC_16,
//! \b UDMA_DST_INC_32, or \b UDMA_DST_INC_NONE.
//!
//! The \e pvDstAddr parameter is a void pointer to the beginning of the
//! location where the data will be transferred.
//!
//! The \e ui32ArbSize parameter is the arbitration size for the transfer, and
//! must be one of \b UDMA_ARB_1, \b UDMA_ARB_2, \b UDMA_ARB_4, and so on
//! up to \b UDMA_ARB_1024.  This is used to select the arbitration size in
//! powers of 2, from 1 to 1024.
//!
//! The \e ui32Mode parameter is the mode to use for this transfer task.  It
//! must be one of \b UDMA_MODE_BASIC, \b UDMA_MODE_AUTO,
//! \b UDMA_MODE_MEM_SCATTER_GATHER, or \b UDMA_MODE_PER_SCATTER_GATHER.  Note
//! that normally all tasks will be one of the scatter-gather modes while the
//! last task is a task list will be AUTO or BASIC.
//!
//! This macro is intended to be used to initialize individual entries of
//! a structure of tDMAControlTable type, like this:
//!
//! \verbatim
//!     tDMAControlTable MyTaskList[] =
//!     {
//!         uDMATaskStructEntry(Task1Count, UDMA_SIZE_8,
//!                             UDMA_SRC_INC_8, MySourceBuf,
//!                             UDMA_DST_INC_8, MyDestBuf,
//!                             UDMA_ARB_8, UDMA_MODE_MEM_SCATTER_GATHER),
//!         uDMATaskStructEntry(Task2Count, ...),
//!     }
//! \endverbatim
//!
//! \return Nothing; this is not a function.
//
//*****************************************************************************
# 183 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

//*****************************************************************************
//
// Flags that can be passed to uDMAChannelAttributeEnable(),
// uDMAChannelAttributeDisable(), and returned from uDMAChannelAttributeGet().
//
//*****************************************************************************






//*****************************************************************************
//
// DMA control modes that can be passed to uDMAModeSet() and returned
// uDMAModeGet().
//
//*****************************************************************************
# 218 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// Channel configuration values that can be passed to uDMAControlSet().
//
//*****************************************************************************
# 249 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// Channel numbers to be passed to API functions that require a channel number
// ID.
//
//*****************************************************************************
# 283 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// Flags to be OR'd with the channel ID to indicate if the primary or alternate
// control structure should be used.
//
//*****************************************************************************



//*****************************************************************************
//
// uDMA interrupt sources, to be passed to uDMAIntRegister() and
// uDMAIntUnregister().
//
//*****************************************************************************



//*****************************************************************************
//
// Channel numbers to be passed to API functions that require a channel number
// ID.  These are for secondary peripheral assignments.
//
//*****************************************************************************
# 345 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// Values that can be passed to uDMAChannelAssign() to select peripheral
// mapping for each channel.  The channels named RESERVED may be assigned
// to a peripheral in future parts.
//
//*****************************************************************************
//
// Channel 0
//
# 365 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 1
//
# 378 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 2
//
# 391 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 3
//
# 404 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 4
//
# 417 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 5
//
# 430 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 6
//
# 444 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 7
//
# 458 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 8
//
# 471 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 9
//
# 484 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 10
//
# 497 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 11
//
# 510 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 12
//
# 523 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 13
//
# 536 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 14
//
# 549 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 15
//
# 562 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 16
//
# 575 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 17
//
# 588 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 18
//
# 601 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 19
//
# 614 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 20
//
# 628 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 21
//
# 642 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 22
//
# 655 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 23
//
# 668 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 24
//
# 681 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 25
//
# 694 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 26
//
# 707 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 27
//
# 720 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 28
//
# 733 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 29
//
# 746 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 30
//
# 759 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//
// Channel 31
//
# 772 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

//*****************************************************************************
//
// API Function prototypes
//
//*****************************************************************************
extern void uDMAEnable(void);
extern void uDMADisable(void);
extern uint32_t uDMAErrorStatusGet(void);
extern void uDMAErrorStatusClear(void);
extern void uDMAChannelEnable(uint32_t ui32ChannelNum);
extern void uDMAChannelDisable(uint32_t ui32ChannelNum);
extern _Bool uDMAChannelIsEnabled(uint32_t ui32ChannelNum);
extern void uDMAControlBaseSet(void *pControlTable);
extern void *uDMAControlBaseGet(void);
extern void *uDMAControlAlternateBaseGet(void);
extern void uDMAChannelRequest(uint32_t ui32ChannelNum);
extern void uDMAChannelAttributeEnable(uint32_t ui32ChannelNum,
                                       uint32_t ui32Attr);
extern void uDMAChannelAttributeDisable(uint32_t ui32ChannelNum,
                                        uint32_t ui32Attr);
extern uint32_t uDMAChannelAttributeGet(uint32_t ui32ChannelNum);
extern void uDMAChannelControlSet(uint32_t ui32ChannelStructIndex,
                                  uint32_t ui32Control);
extern void uDMAChannelTransferSet(uint32_t ui32ChannelStructIndex,
                                   uint32_t ui32Mode, void *pvSrcAddr,
                                   void *pvDstAddr, uint32_t ui32TransferSize);
extern void uDMAChannelScatterGatherSet(uint32_t ui32ChannelNum,
                                        uint32_t ui32TaskCount,
                                        void *pvTaskList,
                                        uint32_t ui32IsPeriphSG);
extern uint32_t uDMAChannelSizeGet(uint32_t ui32ChannelStructIndex);
extern uint32_t uDMAChannelModeGet(uint32_t ui32ChannelStructIndex);
extern void uDMAIntRegister(uint32_t ui32IntChannel, void (*pfnHandler)(void));
extern void uDMAIntUnregister(uint32_t ui32IntChannel);
extern uint32_t uDMAIntStatus(void);
extern void uDMAIntClear(uint32_t ui32ChanMask);
extern void uDMAChannelAssign(uint32_t ui32Mapping);

//*****************************************************************************
//
// The following functions and definitions are deprecated and will be removed
// from the API in the future.  Use uDMAChannelAssign() instead to accomplish
// the same end.
//
//*****************************************************************************

//*****************************************************************************
//
// uDMA default/secondary peripheral selections, to be passed to
// uDMAChannelSelectSecondary() and uDMAChannelSelectDefault().
//
//*****************************************************************************
# 885 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/udma.h"

extern void uDMAChannelSelectDefault(uint32_t ui32DefPeriphs);
extern void uDMAChannelSelectSecondary(uint32_t ui32SecPeriphs);


//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 63 "../source/config/serialConfig.c"
# 1 "C:/Users/Dan/Documents/GitHub/FlipClock/source/config/serialConfig.h"
/*
 * spiConfig.h
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */




# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       SPI.h
 *
 *  @brief      SPI driver interface
 *
 *  The SPI header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/SPI.h>
 *  @endcode
 *
 *  # Operation #
 *  The SPI driver in TI-RTOS is designed to serve a means to move data
 *  between SPI peripherals. This driver does not interpret any of the data sent
 *  to or received from this peripheral.
 *
 *  The APIs in this driver serve as an interface to a typical TI-RTOS
 *  application. The specific peripheral implementations are responsible to
 *  create all the SYS/BIOS specific primitives to allow for thread-safe
 *  operation.
 *
 *  The SPI driver operates on some key definitions and assumptions:
 *  - The driver operates transparent from the chip select. Some SPI controllers
 *    feature a hardware chip select to assert SPI slave peripherals. See the
 *    specific peripheral implementations on chip select requirements.
 *
 *  - The SPI protocol does not account for a built-in handshaking mechanism and
 *    neither does this SPI driver. Therefore, when operating in ::SPI_SLAVE
 *    mode, the application must provide such a mechanism to ensure that the
 *    SPI slave is ready for the SPI master. The SPI slave must call
 *    SPI_transfer() *before* the SPI master starts transmitting. Some example
 *    application mechanisms could include:
 *    - Timed delays on the SPI master to guarantee the SPI slave is be ready
 *      for a SPI transaction.
 *    - A form of GPIO flow control from the slave to the SPI master to notify
 *      the master when ready.
 *
 *  ## Opening the driver #
 *
 *  @code
 *  SPI_Handle      handle;
 *  SPI_Params      params;
 *  SPI_Transaction spiTransaction;
 *
 *  SPI_Params_init(&params);
 *  params.bitRate  = someNewBitRate;
 *  handle = SPI_open(someSPI_configIndexValue, &params);
 *  if (!handle) {
 *      System_printf("SPI did not open");
 *  }
 *  @endcode
 *
 *  ## Transferring data #
 *  Data transmitted and received by the SPI peripheral is performed using
 *  SPI_transfer(). SPI_transfer() accepts a pointer to a SPI_Transaction
 *  structure that dictates what quantity of data is sent and received.
 *
 *  @code
 *  SPI_Transaction spiTransaction;
 *
 *  spiTransaction.count = someIntegerValue;
 *  spiTransaction.txBuf = transmitBufferPointer;
 *  spiTransaction.rxBuf = receiveBufferPointer;
 *
 *  ret = SPI_transfer(handle, &spiTransaction);
 *  if (!ret) {
 *      System_printf("Unsuccessful SPI transfer");
 *  }
 *  @endcode
 *
 *  ## Canceling a transaction #
 *  SPI_transferCancel() is used to cancel a SPI transaction when the driver is
 *  used in ::SPI_MODE_CALLBACK mode.
 *
 *  Calling this API while no transfer is in progress has no effect. If a
 *  transfer is in progress, it canceled and a callback on the ::SPI_CallbackFxn
 *  is performed. The ::SPI_Status status field in the ::SPI_Transaction struct
 *  can be examined within the callback to determine if the transaction was
 *  successful.
 *
 *  @code
 *  SPI_transferCancel(handle);
 *  @endcode
 *
 *  # Implementation #
 *
 *  This module serves as the main interface for TI-RTOS applications. Its
 *  purpose is to redirect the module's APIs to specific peripheral
 *  implementations which are specified using a pointer to a SPI_FxnTable.
 *
 *  The SPI driver interface module is joined (at link time) to a
 *  NULL-terminated array of SPI_Config data structures named *SPI_config*.
 *  *SPI_config* is implemented in the application with each entry being an
 *  instance of a SPI peripheral. Each entry in *SPI_config* contains a:
 *  - (SPI_FxnTable *) to a set of functions that implement a SPI peripheral
 *  - (void *) data object that is associated with the SPI_FxnTable
 *  - (void *) hardware attributes that are associated to the SPI_FxnTable
 *
 *  # Instrumentation #
 *
 *  The SPI driver interface produces log statements if instrumentation is
 *  enabled.
 *
 *  Diagnostics Mask | Log details |
 *  ---------------- | ----------- |
 *  Diags_USER1      | basic operations performed |
 *  Diags_USER2      | detailed operations performed |
 *
 *  ============================================================================
 */












/**
 *  @defgroup SPI_CONTROL SPI_control command and status codes
 *  These SPI macros are reservations for SPI.h
 *  @{
 */

/*!
 * Common SPI_control command code reservation offset.
 * SPI driver implementations should offset command codes with SPI_CMD_RESERVED
 * growing positively
 *
 * Example implementation specific command codes:
 * @code
 * #define SPIXYZ_CMD_COMMAND0     SPI_CMD_RESERVED + 0
 * #define SPIXYZ_CMD_COMMAND1     SPI_CMD_RESERVED + 1
 * @endcode
 */


/*!
 * Common SPI_control status code reservation offset.
 * SPI driver implementations should offset status codes with
 * SPI_STATUS_RESERVED growing negatively.
 *
 * Example implementation specific status codes:
 * @code
 * #define SPIXYZ_STATUS_ERROR0    SPI_STATUS_RESERVED - 0
 * #define SPIXYZ_STATUS_ERROR1    SPI_STATUS_RESERVED - 1
 * #define SPIXYZ_STATUS_ERROR2    SPI_STATUS_RESERVED - 2
 * @endcode
 */


/**
 *  @defgroup SPI_STATUS Status Codes
 *  SPI_STATUS_* macros are general status codes returned by SPI_control()
 *  @{
 *  @ingroup SPI_CONTROL
 */

/*!
 * @brief   Successful status code returned by SPI_control().
 *
 * SPI_control() returns SPI_STATUS_SUCCESS if the control code was executed
 * successfully.
 */


/*!
 * @brief   Generic error status code returned by SPI_control().
 *
 * SPI_control() returns SPI_STATUS_ERROR if the control code was not executed
 * successfully.
 */


/*!
 * @brief   An error status code returned by SPI_control() for undefined
 * command codes.
 *
 * SPI_control() returns SPI_STATUS_UNDEFINEDCMD if the control code is not
 * recognized by the driver implementation.
 */

/** @}*/

/**
 *  @defgroup SPI_CMD Command Codes
 *  SPI_CMD_* macros are general command codes for SPI_control(). Not all SPI
 *  driver implementations support these command codes.
 *  @{
 *  @ingroup SPI_CONTROL
 */

/* Add SPI_CMD_<commands> here */

/** @}*/

/** @}*/

/*!
 *  @brief    Wait forever define
 */


/*!
 *  @brief      A handle that is returned from a SPI_open() call.
 */
typedef struct SPI_Config      *SPI_Handle;

/*!
 *  @brief      Status codes that are set by the SPI driver.
 */
typedef enum SPI_Status {
    SPI_TRANSFER_COMPLETED = 0,
    SPI_TRANSFER_STARTED,
    SPI_TRANSFER_CANCELED,
    SPI_TRANSFER_FAILED,
    SPI_TRANSFER_CSN_DEASSERT
} SPI_Status;

/*!
 *  @brief
 *  A ::SPI_Transaction data structure is used with SPI_transfer(). It indicates
 *  how many ::SPI_FrameFormat frames are sent and received from the buffers
 *  pointed to txBuf and rxBuf.
 *  The arg variable is an user-definable argument which gets passed to the
 *  ::SPI_CallbackFxn when the SPI driver is in ::SPI_MODE_CALLBACK.
 */
typedef struct SPI_Transaction {
    /* User input (write-only) fields */
    size_t     count;      /*!< Number of frames for this transaction */
    void      *txBuf;      /*!< void * to a buffer with data to be transmitted */
    void      *rxBuf;      /*!< void * to a buffer to receive data */
    void      *arg;        /*!< Argument to be passed to the callback function */

    /* User output (read-only) fields */
    SPI_Status status;     /*!< Status code set by SPI_transfer */

    /* Driver-use only fields */
} SPI_Transaction;

/*!
 *  @brief      The definition of a callback function used by the SPI driver
 *              when used in ::SPI_MODE_CALLBACK
 *
 *  @param      SPI_Handle          SPI_Handle
 *  @param      SPI_Transaction*    SPI_Transaction*
 */
typedef void        (*SPI_CallbackFxn) (SPI_Handle handle,
                                        SPI_Transaction * transaction);
/*!
 *  @brief
 *  Definitions for various SPI modes of operation.
 */
typedef enum SPI_Mode {
    SPI_MASTER      = 0,    /*!< SPI in master mode */
    SPI_SLAVE       = 1     /*!< SPI in slave mode */
} SPI_Mode;

/*!
 *  @brief
 *  Definitions for various SPI data frame formats.
 */
typedef enum SPI_FrameFormat {
    SPI_POL0_PHA0   = 0,    /*!< SPI mode Polarity 0 Phase 0 */
    SPI_POL0_PHA1   = 1,    /*!< SPI mode Polarity 0 Phase 1 */
    SPI_POL1_PHA0   = 2,    /*!< SPI mode Polarity 1 Phase 0 */
    SPI_POL1_PHA1   = 3,    /*!< SPI mode Polarity 1 Phase 1 */
    SPI_TI          = 4,    /*!< TI mode */
    SPI_MW          = 5     /*!< Micro-wire mode */
} SPI_FrameFormat;

/*!
 *  @brief
 *
 *  SPI transfer mode determines the whether the SPI controller operates
 *  synchronously or asynchronously. In ::SPI_MODE_BLOCKING mode SPI_transfer()
 *  blocks code execution until the SPI transaction has completed. In
 *  ::SPI_MODE_CALLBACK SPI_transfer() does not block code execution and instead
 *  calls a ::SPI_CallbackFxn callback function when the transaction has
 *  completed.
 */
typedef enum SPI_TransferMode {
    /*!
     * SPI_transfer() blocks execution. This mode can only be used when called
     * within a Task context
     */
    SPI_MODE_BLOCKING,
    /*!
     * SPI_transfer() does not block code execution and will call a
     * ::SPI_CallbackFxn. This mode can be used in a Task, Swi, or Hwi context.
     */
    SPI_MODE_CALLBACK
} SPI_TransferMode;

/*!
 *  @brief SPI Parameters
 *
 *  SPI Parameters are used to with the SPI_open() call. Default values for
 *  these parameters are set using SPI_Params_init().
 *
 *  @sa         SPI_Params_init()
 */
typedef struct SPI_Params {
    SPI_TransferMode    transferMode;       /*!< Blocking or Callback mode */
    uint32_t            transferTimeout;    /*!< Transfer timeout in system
                                                 ticks (Not supported with all
                                                 implementations */
    SPI_CallbackFxn     transferCallbackFxn;/*!< Callback function pointer */
    SPI_Mode            mode;               /*!< Master or Slave mode */
    uint32_t            bitRate;            /*!< SPI bit rate in Hz */
    uint32_t            dataSize;           /*!< SPI data frame size in bits */
    SPI_FrameFormat     frameFormat;        /*!< SPI frame format */
    uintptr_t           custom;             /*!< Custom argument used by driver
                                                 implementation */
} SPI_Params;

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_close().
 */
typedef void        (*SPI_CloseFxn)          (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_control().
 */
typedef int         (*SPI_ControlFxn)        (SPI_Handle handle,
                                              unsigned int cmd,
                                              void *arg);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_init().
 */
typedef void        (*SPI_InitFxn)           (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_open().
 */
typedef SPI_Handle  (*SPI_OpenFxn)           (SPI_Handle handle,
                                              SPI_Params *params);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_serviceISR().
 */
typedef void        (*SPI_ServiceISRFxn)     (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_transfer().
 */
typedef _Bool        (*SPI_TransferFxn)       (SPI_Handle handle,
                                              SPI_Transaction *transaction);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_transferCancel().
 */
typedef void        (*SPI_TransferCancelFxn) (SPI_Handle handle);

/*!
 *  @brief      The definition of a SPI function table that contains the
 *              required set of functions to control a specific SPI driver
 *              implementation.
 */
typedef struct SPI_FxnTable {
    /*! Function to close the specified peripheral */
    SPI_CloseFxn            closeFxn;

    /*! Function to implementation specific control function */
    SPI_ControlFxn          controlFxn;

    /*! Function to initialize the given data object */
    SPI_InitFxn             initFxn;

    /*! Function to open the specified peripheral */
    SPI_OpenFxn             openFxn;

    /*! Function to initiate a SPI data transfer */
    SPI_TransferFxn         transferFxn;

    /*! Function to cancel SPI data transfer */
    SPI_TransferCancelFxn   transferCancelFxn;

    /*! Function to service the SPI instance */
    SPI_ServiceISRFxn       serviceISRFxn;
} SPI_FxnTable;

/*!
 *  @brief SPI Global configuration
 *
 *  The SPI_Config structure contains a set of pointers used to characterize
 *  the SPI driver implementation.
 *
 *  This structure needs to be defined before calling SPI_init() and it must
 *  not be changed thereafter.
 *
 *  @sa     SPI_init()
 */
typedef struct SPI_Config {
    /*! Pointer to a table of driver-specific implementations of SPI APIs */
    SPI_FxnTable const *fxnTablePtr;

    /*! Pointer to a driver specific data object */
    void               *object;

    /*! Pointer to a driver specific hardware attributes structure */
    void         const *hwAttrs;
} SPI_Config;

/*!
 *  @brief  Function to close a SPI peripheral specified by the SPI handle
 *
 *  @pre    SPI_open() has to be called first.
 *
 *  @param  handle A SPI handle returned from SPI_open()
 *
 *  @sa     SPI_open()
 */
extern void SPI_close(SPI_Handle handle);

/*!
 *  @brief  Function performs implementation specific features on a given
 *          SPI_Handle.
 *
 *  Commands for SPI_control can originate from SPI.h or from implementation
 *  specific SPI*.h (_SPICC26XX.h_, _SPITiva.h_, etc.. ) files.
 *  While commands from SPI.h are API portable across driver implementations,
 *  not all implementations may support all these commands.
 *  Conversely, commands from driver implementation specific SPI*.h files add
 *  unique driver capabilities but are not API portable across all SPI driver
 *  implementations.
 *
 *  Commands supported by SPI.h follow a SPI_CMD_\<cmd\> naming
 *  convention.<br>
 *  Commands supported by SPI*.h follow a SPI*_CMD_\<cmd\> naming
 *  convention.<br>
 *  Each control command defines @b arg differently. The types of @b arg are
 *  documented with each command.
 *
 *  See @ref SPI_CMD "SPI_control command codes" for command codes.
 *
 *  See @ref SPI_STATUS "SPI_control return status codes" for status codes.
 *
 *  @pre    SPI_open() has to be called first.
 *
 *  @param  handle      A SPI handle returned from SPI_open()
 *
 *  @param  cmd         SPI.h or SPI*.h commands.
 *
 *  @param  arg         An optional R/W (read/write) command argument
 *                      accompanied with cmd
 *
 *  @return Implementation specific return codes. Negative values indicate
 *          unsuccessful operations.
 *
 *  @sa     SPI_open()
 */
extern int SPI_control(SPI_Handle handle, unsigned int cmd, void *arg);

/*!
 *  @brief  This function initializes the SPI module.
 *
 *  @pre    The SPI_config structure must exist and be persistent before this
 *          function can be called. This function must also be called before
 *          any other SPI driver APIs. This function call does not modify any
 *          peripheral registers.
 */
extern void SPI_init(void);

/*!
 *  @brief  This function opens a given SPI peripheral.
 *
 *  @pre    SPI controller has been initialized using SPI_init()
 *
 *  @param  index         Logical peripheral number for the SPI indexed into
 *                        the SPI_config table
 *
 *  @param  params        Pointer to an parameter block, if NULL it will use
 *                        default values. All the fields in this structure are
 *                        RO (read-only).
 *
 *  @return A SPI_Handle on success or a NULL on an error or if it has been
 *          opened already.
 *
 *  @sa     SPI_init()
 *  @sa     SPI_close()
 */
extern SPI_Handle SPI_open(unsigned int index, SPI_Params *params);

/*!
 *  @brief  Function to initialize the SPI_Params struct to its defaults
 *
 *  @param  params      An pointer to SPI_Params structure for
 *                      initialization
 *
 *  Defaults values are:
 *      transferMode        = SPI_MODE_BLOCKING
 *      transferTimeout     = SPI_WAIT_FOREVER
 *      transferCallbackFxn = NULL
 *      mode                = SPI_MASTER
 *      bitRate             = 1000000 (Hz)
 *      dataSize            = 8 (bits)
 *      frameFormat         = SPI_POL0_PHA0
 */
extern void SPI_Params_init(SPI_Params *params);

/*!
 *  @brief  Function to service the SPI module's interrupt service routine
 *
 *  This function is not supported on all driver implementations.  Refer to
 *  implementation specific documentation for details.
 *
 *  @param  handle      A SPI_Handle
 */
extern void SPI_serviceISR(SPI_Handle handle);

/*!
 *  @brief  Function to perform SPI transactions
 *
 *  If the SPI is in ::SPI_MASTER mode, it will immediately start the
 *  transaction. If the SPI is in ::SPI_SLAVE mode, it prepares itself for a
 *  transaction with a SPI master.
 *
 *  In ::SPI_MODE_BLOCKING, SPI_transfer will block task execution until the
 *  transaction has completed.
 *
 *  In ::SPI_MODE_CALLBACK, SPI_transfer() does not block task execution and
 *  calls a ::SPI_CallbackFxn. This makes the SPI_tranfer() safe to be used
 *  within a Task, Swi, or Hwi context. The ::SPI_Transaction structure must
 *  stay persistent until the SPI_transfer function has completed!
 *
 *  @param  handle      A SPI_Handle
 *
 *  @param  transaction A pointer to a SPI_Transaction. All of the fields within
 *                      transaction except SPI_Transaction.count and
 *                      SPI_Transaction.status are WO (write-only) unless
 *                      otherwise noted in the driver implementations. If a
 *                      transaction timeout has occured, SPI_Transaction.count
 *                      will contain the number of frames that were transferred.
 *
 *  @return true if started successfully; else false
 *
 *  @sa     SPI_open
 *  @sa     SPI_transferCancel
 */
extern _Bool SPI_transfer(SPI_Handle handle, SPI_Transaction *transaction);

/*!
 *  @brief  Function to cancel SPI transactions
 *
 *  In ::SPI_MODE_BLOCKING, SPI_transferCancel has no effect.
 *
 *  In ::SPI_MODE_CALLBACK, SPI_transferCancel() will stop an SPI transfer if
 *  if one is in progress.
 *  If a transaction was in progress, its callback function will be called
 *  in context from which this API is called from. The ::SPI_CallbackFxn
 *  function can determine if the transaction was successful or not by reading
 *  the ::SPI_Status status value in the ::SPI_Transaction structure.
 *
 *  @param  handle      A SPI_Handle
 *
 *  @sa     SPI_open
 *  @sa     SPI_transfer
 */
extern void SPI_transferCancel(SPI_Handle handle);





# 12 "C:/Users/Dan/Documents/GitHub/FlipClock/source/config/serialConfig.h"

SPI_Handle ledSPIHandle;

extern void initSPI();
extern void initI2C();

# 64 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/spi/SPITivaDMA.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       SPITivaDMA.h
 *
 *  @brief      SPI driver implementation for a TivaSPIcontroller using
 *              the micro DMA controller.
 *
 *  The SPI header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/SPI.h>
 *  #include <ti/drivers/spi/SPITivaDMA.h>
 *  @endcode
 *
 *  Refer to @ref SPI.h for a complete description of APIs & example of use.
 *
 *  This SPI driver implementation is designed to operate on a Tiva SPI
 *  controller using a micro DMA controller.
 *
 *  ## SPI Chip Select #
 *  This SPI controller supports a hardware chip select pin. Refer to the
 *  device's user manual on how this hardware chip select pin behaves in regards
 *  to the SPI frame format.
 *
 *  <table>
 *  <tr>
 *  <th>Chip select type</th>
 *  <th>SPI_MASTER mode</th>
 *  <th>SPI_SLAVE mode</th>
 *  </tr>
 *  <tr>
 *  <td>Hardware chip select</td>
 *  <td>No action is needed by the application to select the peripheral.</td>
 *  <td>See the device documentation on it's chip select requirements.</td>
 *  </tr>
 *  <tr>
 *  <td>Software chip select</td>
 *  <td>The application is responsible to ensure that correct SPI slave is
 *      selected before performing a SPI_transfer().</td>
 *  <td>See the device documentation on it's chip select requirements.</td>
 *  </tr>
 *  </table>
 *
 *  ## DMA Interrupts #
 *  This driver is designed to operation on a micro DMA. The micro DMA generates
 *  IRQ on the perpheral's interrupt vector. This implementation automatically
 *  installs a DMA aware Hwi (interrupt) to service the assigned micro DMA
 *  channels.
 *
 *  ## Scratch Buffers #
 *  A uint32_t scratch buffer is used to allow SPI_transfers where txBuf or rxBuf
 *  are NULL. Rather than requiring txBuf or rxBuf to have a dummy buffer of size
 *  of the transfer count, a single DMA accessible uint32_t scratch buffer is used.
 *  When rxBuf is NULL, the uDMA will transfer all the SPI data receives into the
 *  scratch buffer as a "bit-bucket".
 *  When rxBuf is NULL, the scratch buffer is initialized to defaultTxBufValue
 *  so the uDMA will send some known value.
 *  Each SPI driver instance should uses its own scratch buffer.
 *
 *  ## SPI data frames #
 *
 *  SPI data frames can be any size from 4-bits to 16-bits. If the dataSize in
 *  ::SPI_Params is greater that 8-bits, then the SPITivaDMA driver
 *  implementation will assume that the ::SPI_Transaction txBuf and rxBuf
 *  point to an array of 16-bit uint16_t elements.
 *
 *  dataSize  | buffer element size |
 *  --------  | ------------------- |
 *  4-8 bits  | uint8_t             |
 *  9-16 bits | uint16_t            |
 *
 *  ## DMA transfer size limit #
 *
 *  The Tiva micro DMA contoller only supports data transfers of upto 1024
 *  data frames. A data frame can be 4 to 16 bits in length.
 *
 *  ## DMA accessible memory #
 *
 *  As this driver uses uDMA to transfer data/from data buffers, it is the
 *  responsibility of the application to ensure that theses buffers reside in
 *  memory that is accessible by the DMA.
 *
 *  For example, on Concerto devices local SRAM C0 and C1 are NOT accessible the
 *  DMA.
 *
 *  ============================================================================
 */











# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.knl.Clock ========
 */

typedef struct ti_sysbios_knl_Clock_Module_State ti_sysbios_knl_Clock_Module_State;
typedef struct ti_sysbios_knl_Clock_Params ti_sysbios_knl_Clock_Params;
typedef struct ti_sysbios_knl_Clock_Object ti_sysbios_knl_Clock_Object;
typedef struct ti_sysbios_knl_Clock_Struct ti_sysbios_knl_Clock_Struct;
typedef ti_sysbios_knl_Clock_Object* ti_sysbios_knl_Clock_Handle;
typedef struct ti_sysbios_knl_Clock_Object__ ti_sysbios_knl_Clock_Instance_State;
typedef ti_sysbios_knl_Clock_Object* ti_sysbios_knl_Clock_Instance;

/*
 * ======== module ti.sysbios.knl.Idle ========
 */


/*
 * ======== module ti.sysbios.knl.Intrinsics ========
 */

typedef struct ti_sysbios_knl_Intrinsics_Fxns__ ti_sysbios_knl_Intrinsics_Fxns__;
typedef const ti_sysbios_knl_Intrinsics_Fxns__* ti_sysbios_knl_Intrinsics_Module;

/*
 * ======== module ti.sysbios.knl.Event ========
 */

typedef struct ti_sysbios_knl_Event_PendElem ti_sysbios_knl_Event_PendElem;
typedef struct ti_sysbios_knl_Event_Params ti_sysbios_knl_Event_Params;
typedef struct ti_sysbios_knl_Event_Object ti_sysbios_knl_Event_Object;
typedef struct ti_sysbios_knl_Event_Struct ti_sysbios_knl_Event_Struct;
typedef ti_sysbios_knl_Event_Object* ti_sysbios_knl_Event_Handle;
typedef struct ti_sysbios_knl_Event_Object__ ti_sysbios_knl_Event_Instance_State;
typedef ti_sysbios_knl_Event_Object* ti_sysbios_knl_Event_Instance;

/*
 * ======== module ti.sysbios.knl.Mailbox ========
 */

typedef struct ti_sysbios_knl_Mailbox_MbxElem ti_sysbios_knl_Mailbox_MbxElem;
typedef struct ti_sysbios_knl_Mailbox_Params ti_sysbios_knl_Mailbox_Params;
typedef struct ti_sysbios_knl_Mailbox_Object ti_sysbios_knl_Mailbox_Object;
typedef struct ti_sysbios_knl_Mailbox_Struct ti_sysbios_knl_Mailbox_Struct;
typedef ti_sysbios_knl_Mailbox_Object* ti_sysbios_knl_Mailbox_Handle;
typedef struct ti_sysbios_knl_Mailbox_Object__ ti_sysbios_knl_Mailbox_Instance_State;
typedef ti_sysbios_knl_Mailbox_Object* ti_sysbios_knl_Mailbox_Instance;

/*
 * ======== module ti.sysbios.knl.Queue ========
 */

typedef struct ti_sysbios_knl_Queue_Elem ti_sysbios_knl_Queue_Elem;
typedef struct ti_sysbios_knl_Queue_Params ti_sysbios_knl_Queue_Params;
typedef struct ti_sysbios_knl_Queue_Object ti_sysbios_knl_Queue_Object;
typedef struct ti_sysbios_knl_Queue_Struct ti_sysbios_knl_Queue_Struct;
typedef ti_sysbios_knl_Queue_Object* ti_sysbios_knl_Queue_Handle;
typedef struct ti_sysbios_knl_Queue_Object__ ti_sysbios_knl_Queue_Instance_State;
typedef ti_sysbios_knl_Queue_Object* ti_sysbios_knl_Queue_Instance;

/*
 * ======== module ti.sysbios.knl.Semaphore ========
 */

typedef struct ti_sysbios_knl_Semaphore_PendElem ti_sysbios_knl_Semaphore_PendElem;
typedef struct ti_sysbios_knl_Semaphore_Params ti_sysbios_knl_Semaphore_Params;
typedef struct ti_sysbios_knl_Semaphore_Object ti_sysbios_knl_Semaphore_Object;
typedef struct ti_sysbios_knl_Semaphore_Struct ti_sysbios_knl_Semaphore_Struct;
typedef ti_sysbios_knl_Semaphore_Object* ti_sysbios_knl_Semaphore_Handle;
typedef struct ti_sysbios_knl_Semaphore_Object__ ti_sysbios_knl_Semaphore_Instance_State;
typedef ti_sysbios_knl_Semaphore_Object* ti_sysbios_knl_Semaphore_Instance;

/*
 * ======== module ti.sysbios.knl.Swi ========
 */

typedef struct ti_sysbios_knl_Swi_HookSet ti_sysbios_knl_Swi_HookSet;
typedef struct ti_sysbios_knl_Swi_Module_State ti_sysbios_knl_Swi_Module_State;
typedef struct ti_sysbios_knl_Swi_Params ti_sysbios_knl_Swi_Params;
typedef struct ti_sysbios_knl_Swi_Object ti_sysbios_knl_Swi_Object;
typedef struct ti_sysbios_knl_Swi_Struct ti_sysbios_knl_Swi_Struct;
typedef ti_sysbios_knl_Swi_Object* ti_sysbios_knl_Swi_Handle;
typedef struct ti_sysbios_knl_Swi_Object__ ti_sysbios_knl_Swi_Instance_State;
typedef ti_sysbios_knl_Swi_Object* ti_sysbios_knl_Swi_Instance;

/*
 * ======== module ti.sysbios.knl.Task ========
 */

typedef struct ti_sysbios_knl_Task_Stat ti_sysbios_knl_Task_Stat;
typedef struct ti_sysbios_knl_Task_HookSet ti_sysbios_knl_Task_HookSet;
typedef struct ti_sysbios_knl_Task_PendElem ti_sysbios_knl_Task_PendElem;
typedef struct ti_sysbios_knl_Task_Module_State ti_sysbios_knl_Task_Module_State;
typedef struct ti_sysbios_knl_Task_RunQEntry ti_sysbios_knl_Task_RunQEntry;
typedef struct ti_sysbios_knl_Task_Module_StateSmp ti_sysbios_knl_Task_Module_StateSmp;
typedef struct ti_sysbios_knl_Task_Params ti_sysbios_knl_Task_Params;
typedef struct ti_sysbios_knl_Task_Object ti_sysbios_knl_Task_Object;
typedef struct ti_sysbios_knl_Task_Struct ti_sysbios_knl_Task_Struct;
typedef ti_sysbios_knl_Task_Object* ti_sysbios_knl_Task_Handle;
typedef struct ti_sysbios_knl_Task_Object__ ti_sysbios_knl_Task_Instance_State;
typedef ti_sysbios_knl_Task_Object* ti_sysbios_knl_Task_Instance;

/*
 * ======== module ti.sysbios.knl.Clock_TimerProxy ========
 */

typedef struct ti_sysbios_knl_Clock_TimerProxy_Fxns__ ti_sysbios_knl_Clock_TimerProxy_Fxns__;
typedef const ti_sysbios_knl_Clock_TimerProxy_Fxns__* ti_sysbios_knl_Clock_TimerProxy_Module;
typedef struct ti_sysbios_knl_Clock_TimerProxy_Params ti_sysbios_knl_Clock_TimerProxy_Params;
typedef struct ti_sysbios_interfaces_ITimer___Object *ti_sysbios_knl_Clock_TimerProxy_Handle;

/*
 * ======== module ti.sysbios.knl.Intrinsics_SupportProxy ========
 */

typedef struct ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__ ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__;
typedef const ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__* ti_sysbios_knl_Intrinsics_SupportProxy_Module;

/*
 * ======== module ti.sysbios.knl.Task_SupportProxy ========
 */

typedef struct ti_sysbios_knl_Task_SupportProxy_Fxns__ ti_sysbios_knl_Task_SupportProxy_Fxns__;
typedef const ti_sysbios_knl_Task_SupportProxy_Fxns__* ti_sysbios_knl_Task_SupportProxy_Module;


# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Elem */
struct ti_sysbios_knl_Queue_Elem {
    ti_sysbios_knl_Queue_Elem *volatile next;
    ti_sysbios_knl_Queue_Elem *volatile prev;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Queue_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Queue_Module__diagsEnabled ti_sysbios_knl_Queue_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Queue_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Queue_Module__diagsIncluded ti_sysbios_knl_Queue_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Queue_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Queue_Module__diagsMask ti_sysbios_knl_Queue_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__gateObj;
extern  const CT__ti_sysbios_knl_Queue_Module__gateObj ti_sysbios_knl_Queue_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Queue_Module__gatePrms ti_sysbios_knl_Queue_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Queue_Module__id;
extern  const CT__ti_sysbios_knl_Queue_Module__id ti_sysbios_knl_Queue_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Queue_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerDefined ti_sysbios_knl_Queue_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerObj ti_sysbios_knl_Queue_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Queue_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerFxn0 ti_sysbios_knl_Queue_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Queue_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerFxn1 ti_sysbios_knl_Queue_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Queue_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerFxn2 ti_sysbios_knl_Queue_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Queue_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerFxn4 ti_sysbios_knl_Queue_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Queue_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Queue_Module__loggerFxn8 ti_sysbios_knl_Queue_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Queue_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Queue_Module__startupDoneFxn ti_sysbios_knl_Queue_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Queue_Object__count;
extern  const CT__ti_sysbios_knl_Queue_Object__count ti_sysbios_knl_Queue_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Queue_Object__heap;
extern  const CT__ti_sysbios_knl_Queue_Object__heap ti_sysbios_knl_Queue_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Queue_Object__sizeof;
extern  const CT__ti_sysbios_knl_Queue_Object__sizeof ti_sysbios_knl_Queue_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Object__table;
extern  const CT__ti_sysbios_knl_Queue_Object__table ti_sysbios_knl_Queue_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Queue_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Queue_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Instance_init__E */

extern void ti_sysbios_knl_Queue_Instance_init__E(ti_sysbios_knl_Queue_Object *, const ti_sysbios_knl_Queue_Params *);

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Queue_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Queue_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Queue_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_create( const ti_sysbios_knl_Queue_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Queue_construct( ti_sysbios_knl_Queue_Struct *__obj, const ti_sysbios_knl_Queue_Params *__prms );

/* Object__delete__S */

extern void ti_sysbios_knl_Queue_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Queue_delete(ti_sysbios_knl_Queue_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Queue_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Queue_destruct(ti_sysbios_knl_Queue_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Queue_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Queue_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Queue_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Queue_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* elemClear__E */


extern void ti_sysbios_knl_Queue_elemClear__E( ti_sysbios_knl_Queue_Elem *qelem );

/* insert__E */


extern void ti_sysbios_knl_Queue_insert__E( ti_sysbios_knl_Queue_Elem *qelem, ti_sysbios_knl_Queue_Elem *elem );

/* next__E */


extern xdc_Ptr ti_sysbios_knl_Queue_next__E( ti_sysbios_knl_Queue_Elem *qelem );

/* prev__E */


extern xdc_Ptr ti_sysbios_knl_Queue_prev__E( ti_sysbios_knl_Queue_Elem *qelem );

/* remove__E */


extern void ti_sysbios_knl_Queue_remove__E( ti_sysbios_knl_Queue_Elem *qelem );

/* isQueued__E */


extern xdc_Bool ti_sysbios_knl_Queue_isQueued__E( ti_sysbios_knl_Queue_Elem *qelem );

/* dequeue__E */


extern xdc_Ptr ti_sysbios_knl_Queue_dequeue__E( ti_sysbios_knl_Queue_Handle __inst );

/* empty__E */


extern xdc_Bool ti_sysbios_knl_Queue_empty__E( ti_sysbios_knl_Queue_Handle __inst );

/* enqueue__E */


extern void ti_sysbios_knl_Queue_enqueue__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );

/* get__E */


extern xdc_Ptr ti_sysbios_knl_Queue_get__E( ti_sysbios_knl_Queue_Handle __inst );

/* getTail__E */


extern xdc_Ptr ti_sysbios_knl_Queue_getTail__E( ti_sysbios_knl_Queue_Handle __inst );

/* head__E */


extern xdc_Ptr ti_sysbios_knl_Queue_head__E( ti_sysbios_knl_Queue_Handle __inst );

/* put__E */


extern void ti_sysbios_knl_Queue_put__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );

/* putHead__E */


extern void ti_sysbios_knl_Queue_putHead__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Queue_Module__id ti_sysbios_knl_Queue_Module_id( void ) 
{
    return ti_sysbios_knl_Queue_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Queue_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Queue_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Queue_Module_getMask( void ) 
{
    return ti_sysbios_knl_Queue_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Queue_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Queue_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Queue_Module__diagsMask__C != 0) *ti_sysbios_knl_Queue_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Queue_Params_init( ti_sysbios_knl_Queue_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Queue_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Queue_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Queue_Params_copy(ti_sysbios_knl_Queue_Params *dst, const ti_sysbios_knl_Queue_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Queue_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Queue_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_get(ti_sysbios_knl_Queue_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_first( void )
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_next( ti_sysbios_knl_Queue_Object *obj )
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Queue_Handle_label( ti_sysbios_knl_Queue_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Queue_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Queue_Handle_name( ti_sysbios_knl_Queue_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Queue_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_handle( ti_sysbios_knl_Queue_Struct *str )
{
    return (ti_sysbios_knl_Queue_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Queue_Struct *ti_sysbios_knl_Queue_struct( ti_sysbios_knl_Queue_Handle inst )
{
    return (ti_sysbios_knl_Queue_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_ITaskSupport_FuncPtr)(void);


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_ITaskSupport_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*start)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
    void (*swap)(xdc_Ptr*, xdc_Ptr*);
    xdc_Bool (*checkStack)(xdc_Char*, xdc_SizeT);
    xdc_SizeT (*stackUsed)(xdc_Char*, xdc_SizeT);
    xdc_UInt (*getStackAlignment)(void);
    xdc_SizeT (*getDefaultStackSize)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base ti_sysbios_interfaces_ITaskSupport_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_ITaskSupport_Module_id( ti_sysbios_interfaces_ITaskSupport_Module mod )
{
    return mod->__sysp->__mid;
}

/* start */
static inline xdc_Ptr ti_sysbios_interfaces_ITaskSupport_start( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Ptr curTask, ti_sysbios_interfaces_ITaskSupport_FuncPtr enter, ti_sysbios_interfaces_ITaskSupport_FuncPtr exit, xdc_runtime_Error_Block *eb )
{
    return __inst->start(curTask, enter, exit, eb);
}

/* swap */
static inline void ti_sysbios_interfaces_ITaskSupport_swap( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Ptr *oldtskContext, xdc_Ptr *newtskContext )
{
    __inst->swap(oldtskContext, newtskContext);
}

/* checkStack */
static inline xdc_Bool ti_sysbios_interfaces_ITaskSupport_checkStack( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Char *stack, xdc_SizeT size )
{
    return __inst->checkStack(stack, size);
}

/* stackUsed */
static inline xdc_SizeT ti_sysbios_interfaces_ITaskSupport_stackUsed( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Char *stack, xdc_SizeT size )
{
    return __inst->stackUsed(stack, size);
}

/* getStackAlignment */
static inline xdc_UInt ti_sysbios_interfaces_ITaskSupport_getStackAlignment( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return __inst->getStackAlignment();
}

/* getDefaultStackSize */
static inline xdc_SizeT ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return __inst->getDefaultStackSize();
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* start_{FxnT,fxnP} */
typedef xdc_Ptr (*ti_sysbios_interfaces_ITaskSupport_start_FxnT)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
static inline ti_sysbios_interfaces_ITaskSupport_start_FxnT ti_sysbios_interfaces_ITaskSupport_start_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_start_FxnT)__inst->start;
}

/* swap_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITaskSupport_swap_FxnT)(xdc_Ptr*, xdc_Ptr*);
static inline ti_sysbios_interfaces_ITaskSupport_swap_FxnT ti_sysbios_interfaces_ITaskSupport_swap_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_swap_FxnT)__inst->swap;
}

/* checkStack_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT)(xdc_Char*, xdc_SizeT);
static inline ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT ti_sysbios_interfaces_ITaskSupport_checkStack_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT)__inst->checkStack;
}

/* stackUsed_{FxnT,fxnP} */
typedef xdc_SizeT (*ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT)(xdc_Char*, xdc_SizeT);
static inline ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT ti_sysbios_interfaces_ITaskSupport_stackUsed_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT)__inst->stackUsed;
}

/* getStackAlignment_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT)(void);
static inline ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT ti_sysbios_interfaces_ITaskSupport_getStackAlignment_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT)__inst->getStackAlignment;
}

/* getDefaultStackSize_{FxnT,fxnP} */
typedef xdc_SizeT (*ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT)(void);
static inline ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT)__inst->getDefaultStackSize;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 68 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_ITimer_FuncPtr)(xdc_UArg);

/* ANY */


/* StartMode */
enum ti_sysbios_interfaces_ITimer_StartMode {
    ti_sysbios_interfaces_ITimer_StartMode_AUTO,
    ti_sysbios_interfaces_ITimer_StartMode_USER
};
typedef enum ti_sysbios_interfaces_ITimer_StartMode ti_sysbios_interfaces_ITimer_StartMode;

/* RunMode */
enum ti_sysbios_interfaces_ITimer_RunMode {
    ti_sysbios_interfaces_ITimer_RunMode_CONTINUOUS,
    ti_sysbios_interfaces_ITimer_RunMode_ONESHOT,
    ti_sysbios_interfaces_ITimer_RunMode_DYNAMIC
};
typedef enum ti_sysbios_interfaces_ITimer_RunMode ti_sysbios_interfaces_ITimer_RunMode;

/* Status */
enum ti_sysbios_interfaces_ITimer_Status {
    ti_sysbios_interfaces_ITimer_Status_INUSE,
    ti_sysbios_interfaces_ITimer_Status_FREE
};
typedef enum ti_sysbios_interfaces_ITimer_Status ti_sysbios_interfaces_ITimer_Status;

/* PeriodType */
enum ti_sysbios_interfaces_ITimer_PeriodType {
    ti_sysbios_interfaces_ITimer_PeriodType_MICROSECS,
    ti_sysbios_interfaces_ITimer_PeriodType_COUNTS
};
typedef enum ti_sysbios_interfaces_ITimer_PeriodType ti_sysbios_interfaces_ITimer_PeriodType;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_interfaces_ITimer_Args__create {
    xdc_Int id;
    ti_sysbios_interfaces_ITimer_FuncPtr tickFxn;
} ti_sysbios_interfaces_ITimer_Args__create;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_interfaces_ITimer_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_ITimer_RunMode runMode;
    ti_sysbios_interfaces_ITimer_StartMode startMode;
    xdc_UArg arg;
    xdc_UInt32 period;
    ti_sysbios_interfaces_ITimer_PeriodType periodType;
    xdc_runtime_Types_FreqHz extFreq;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_ITimer_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_UInt (*getNumTimers)(void);
    ti_sysbios_interfaces_ITimer_Status (*getStatus)(xdc_UInt);
    void (*startup)(void);
    xdc_UInt32 (*getMaxTicks)(void*);
    void (*setNextTick)(void*, xdc_UInt32);
    void (*start)(void*);
    void (*stop)(void*);
    void (*setPeriod)(void*, xdc_UInt32);
    xdc_Bool (*setPeriodMicroSecs)(void*, xdc_UInt32);
    xdc_UInt32 (*getPeriod)(void*);
    xdc_UInt32 (*getCount)(void*);
    void (*getFreq)(void*, xdc_runtime_Types_FreqHz*);
    ti_sysbios_interfaces_ITimer_FuncPtr (*getFunc)(void*, xdc_UArg*);
    void (*setFunc)(void*, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
    void (*trigger)(void*, xdc_UInt32);
    xdc_UInt32 (*getExpiredCounts)(void*);
    xdc_UInt32 (*getExpiredTicks)(void*, xdc_UInt32);
    xdc_UInt32 (*getCurrentTick)(void*, xdc_Bool);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern const xdc_runtime_Types_Base ti_sysbios_interfaces_ITimer_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern ti_sysbios_interfaces_ITimer_Handle ti_sysbios_interfaces_ITimer_create(ti_sysbios_interfaces_ITimer_Module, xdc_Int id, ti_sysbios_interfaces_ITimer_FuncPtr tickFxn, const ti_sysbios_interfaces_ITimer_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern void ti_sysbios_interfaces_ITimer_delete(ti_sysbios_interfaces_ITimer_Handle *);

/* Handle_to_Module */
static inline ti_sysbios_interfaces_ITimer_Module ti_sysbios_interfaces_ITimer_Handle_to_Module( ti_sysbios_interfaces_ITimer_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_interfaces_ITimer_Handle_label( ti_sysbios_interfaces_ITimer_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_ITimer_Module_id( ti_sysbios_interfaces_ITimer_Module mod )
{
    return mod->__sysp->__mid;
}

/* getNumTimers */
static inline xdc_UInt ti_sysbios_interfaces_ITimer_getNumTimers( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return __inst->getNumTimers();
}

/* getStatus */
static inline ti_sysbios_interfaces_ITimer_Status ti_sysbios_interfaces_ITimer_getStatus( ti_sysbios_interfaces_ITimer_Module __inst, xdc_UInt id )
{
    return __inst->getStatus(id);
}

/* startup */
static inline void ti_sysbios_interfaces_ITimer_startup( ti_sysbios_interfaces_ITimer_Module __inst )
{
    __inst->startup();
}

/* getMaxTicks */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getMaxTicks( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getMaxTicks((void*)__inst);
}

/* setNextTick */
static inline void ti_sysbios_interfaces_ITimer_setNextTick( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 ticks )
{
    __inst->__fxns->setNextTick((void*)__inst, ticks);
}

/* start */
static inline void ti_sysbios_interfaces_ITimer_start( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    __inst->__fxns->start((void*)__inst);
}

/* stop */
static inline void ti_sysbios_interfaces_ITimer_stop( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    __inst->__fxns->stop((void*)__inst);
}

/* setPeriod */
static inline void ti_sysbios_interfaces_ITimer_setPeriod( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 period )
{
    __inst->__fxns->setPeriod((void*)__inst, period);
}

/* setPeriodMicroSecs */
static inline xdc_Bool ti_sysbios_interfaces_ITimer_setPeriodMicroSecs( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 microsecs )
{
    return __inst->__fxns->setPeriodMicroSecs((void*)__inst, microsecs);
}

/* getPeriod */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getPeriod( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getPeriod((void*)__inst);
}

/* getCount */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getCount( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getCount((void*)__inst);
}

/* getFreq */
static inline void ti_sysbios_interfaces_ITimer_getFreq( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_runtime_Types_FreqHz *freq )
{
    __inst->__fxns->getFreq((void*)__inst, freq);
}

/* getFunc */
static inline ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_interfaces_ITimer_getFunc( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UArg *arg )
{
    return __inst->__fxns->getFunc((void*)__inst, arg);
}

/* setFunc */
static inline void ti_sysbios_interfaces_ITimer_setFunc( ti_sysbios_interfaces_ITimer_Handle __inst, ti_sysbios_interfaces_ITimer_FuncPtr fxn, xdc_UArg arg )
{
    __inst->__fxns->setFunc((void*)__inst, fxn, arg);
}

/* trigger */
static inline void ti_sysbios_interfaces_ITimer_trigger( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 cycles )
{
    __inst->__fxns->trigger((void*)__inst, cycles);
}

/* getExpiredCounts */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getExpiredCounts( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getExpiredCounts((void*)__inst);
}

/* getExpiredTicks */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getExpiredTicks( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 tickPeriod )
{
    return __inst->__fxns->getExpiredTicks((void*)__inst, tickPeriod);
}

/* getCurrentTick */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getCurrentTick( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_Bool save )
{
    return __inst->__fxns->getCurrentTick((void*)__inst, save);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* getNumTimers_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_ITimer_getNumTimers_FxnT)(void);
static inline ti_sysbios_interfaces_ITimer_getNumTimers_FxnT ti_sysbios_interfaces_ITimer_getNumTimers_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_getNumTimers_FxnT)__inst->getNumTimers;
}

/* getStatus_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_ITimer_Status (*ti_sysbios_interfaces_ITimer_getStatus_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_ITimer_getStatus_FxnT ti_sysbios_interfaces_ITimer_getStatus_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_getStatus_FxnT)__inst->getStatus;
}

/* startup_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_startup_FxnT)(void);
static inline ti_sysbios_interfaces_ITimer_startup_FxnT ti_sysbios_interfaces_ITimer_startup_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_startup_FxnT)__inst->startup;
}

/* getMaxTicks_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT ti_sysbios_interfaces_ITimer_getMaxTicks_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT)__inst->__fxns->getMaxTicks;
}

/* setNextTick_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setNextTick_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setNextTick_FxnT ti_sysbios_interfaces_ITimer_setNextTick_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setNextTick_FxnT)__inst->__fxns->setNextTick;
}

/* start_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_start_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_start_FxnT ti_sysbios_interfaces_ITimer_start_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_start_FxnT)__inst->__fxns->start;
}

/* stop_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_stop_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_stop_FxnT ti_sysbios_interfaces_ITimer_stop_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_stop_FxnT)__inst->__fxns->stop;
}

/* setPeriod_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setPeriod_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setPeriod_FxnT ti_sysbios_interfaces_ITimer_setPeriod_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setPeriod_FxnT)__inst->__fxns->setPeriod;
}

/* setPeriodMicroSecs_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT)__inst->__fxns->setPeriodMicroSecs;
}

/* getPeriod_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getPeriod_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getPeriod_FxnT ti_sysbios_interfaces_ITimer_getPeriod_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getPeriod_FxnT)__inst->__fxns->getPeriod;
}

/* getCount_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getCount_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getCount_FxnT ti_sysbios_interfaces_ITimer_getCount_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getCount_FxnT)__inst->__fxns->getCount;
}

/* getFreq_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_getFreq_FxnT)(void *, xdc_runtime_Types_FreqHz*);
static inline ti_sysbios_interfaces_ITimer_getFreq_FxnT ti_sysbios_interfaces_ITimer_getFreq_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getFreq_FxnT)__inst->__fxns->getFreq;
}

/* getFunc_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_ITimer_FuncPtr (*ti_sysbios_interfaces_ITimer_getFunc_FxnT)(void *, xdc_UArg*);
static inline ti_sysbios_interfaces_ITimer_getFunc_FxnT ti_sysbios_interfaces_ITimer_getFunc_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getFunc_FxnT)__inst->__fxns->getFunc;
}

/* setFunc_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setFunc_FxnT)(void *, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
static inline ti_sysbios_interfaces_ITimer_setFunc_FxnT ti_sysbios_interfaces_ITimer_setFunc_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setFunc_FxnT)__inst->__fxns->setFunc;
}

/* trigger_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_trigger_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_trigger_FxnT ti_sysbios_interfaces_ITimer_trigger_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_trigger_FxnT)__inst->__fxns->trigger;
}

/* getExpiredCounts_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT ti_sysbios_interfaces_ITimer_getExpiredCounts_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT)__inst->__fxns->getExpiredCounts;
}

/* getExpiredTicks_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT ti_sysbios_interfaces_ITimer_getExpiredTicks_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT)__inst->__fxns->getExpiredTicks;
}

/* getCurrentTick_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT)(void *, xdc_Bool);
static inline ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT ti_sysbios_interfaces_ITimer_getCurrentTick_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT)__inst->__fxns->getCurrentTick;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_knl_Swi_FuncPtr)(xdc_UArg, xdc_UArg);

/* HookSet */
struct ti_sysbios_knl_Swi_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_knl_Swi_Handle, xdc_runtime_Error_Block*);
    void (*readyFxn)(ti_sysbios_knl_Swi_Handle);
    void (*beginFxn)(ti_sysbios_knl_Swi_Handle);
    void (*endFxn)(ti_sysbios_knl_Swi_Handle);
    void (*deleteFxn)(ti_sysbios_knl_Swi_Handle);
};


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Swi_Args__create {
    ti_sysbios_knl_Swi_FuncPtr swiFxn;
} ti_sysbios_knl_Swi_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* Instance_State */
typedef xdc_Ptr __T1_ti_sysbios_knl_Swi_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_knl_Swi_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_knl_Swi_Instance_State__hookEnv __TA_ti_sysbios_knl_Swi_Instance_State__hookEnv;

/* Module_State */
typedef ti_sysbios_knl_Queue_Instance_State __T1_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef ti_sysbios_knl_Queue_Instance_State *__ARRAY1_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef __ARRAY1_ti_sysbios_knl_Swi_Module_State__readyQ __TA_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef ti_sysbios_knl_Swi_Handle __T1_ti_sysbios_knl_Swi_Module_State__constructedSwis;
typedef ti_sysbios_knl_Swi_Handle *__ARRAY1_ti_sysbios_knl_Swi_Module_State__constructedSwis;
typedef __ARRAY1_ti_sysbios_knl_Swi_Module_State__constructedSwis __TA_ti_sysbios_knl_Swi_Module_State__constructedSwis;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Swi_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Swi_Module__diagsEnabled ti_sysbios_knl_Swi_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Swi_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Swi_Module__diagsIncluded ti_sysbios_knl_Swi_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Swi_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Swi_Module__diagsMask ti_sysbios_knl_Swi_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__gateObj;
extern  const CT__ti_sysbios_knl_Swi_Module__gateObj ti_sysbios_knl_Swi_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Swi_Module__gatePrms ti_sysbios_knl_Swi_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Swi_Module__id;
extern  const CT__ti_sysbios_knl_Swi_Module__id ti_sysbios_knl_Swi_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Swi_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerDefined ti_sysbios_knl_Swi_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerObj ti_sysbios_knl_Swi_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Swi_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerFxn0 ti_sysbios_knl_Swi_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Swi_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerFxn1 ti_sysbios_knl_Swi_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Swi_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerFxn2 ti_sysbios_knl_Swi_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Swi_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerFxn4 ti_sysbios_knl_Swi_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Swi_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Swi_Module__loggerFxn8 ti_sysbios_knl_Swi_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Swi_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Swi_Module__startupDoneFxn ti_sysbios_knl_Swi_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Swi_Object__count;
extern  const CT__ti_sysbios_knl_Swi_Object__count ti_sysbios_knl_Swi_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Swi_Object__heap;
extern  const CT__ti_sysbios_knl_Swi_Object__heap ti_sysbios_knl_Swi_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Swi_Object__sizeof;
extern  const CT__ti_sysbios_knl_Swi_Object__sizeof ti_sysbios_knl_Swi_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Object__table;
extern  const CT__ti_sysbios_knl_Swi_Object__table ti_sysbios_knl_Swi_Object__table__C;

/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LM_begin;
extern  const CT__ti_sysbios_knl_Swi_LM_begin ti_sysbios_knl_Swi_LM_begin__C;

/* LD_end */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LD_end;
extern  const CT__ti_sysbios_knl_Swi_LD_end ti_sysbios_knl_Swi_LD_end__C;

/* LM_post */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LM_post;
extern  const CT__ti_sysbios_knl_Swi_LM_post ti_sysbios_knl_Swi_LM_post__C;

/* A_swiDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Swi_A_swiDisabled;
extern  const CT__ti_sysbios_knl_Swi_A_swiDisabled ti_sysbios_knl_Swi_A_swiDisabled__C;

/* A_badPriority */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Swi_A_badPriority;
extern  const CT__ti_sysbios_knl_Swi_A_badPriority ti_sysbios_knl_Swi_A_badPriority__C;

/* numPriorities */




typedef xdc_UInt CT__ti_sysbios_knl_Swi_numPriorities;
extern  const CT__ti_sysbios_knl_Swi_numPriorities ti_sysbios_knl_Swi_numPriorities__C;


/* hooks */

typedef ti_sysbios_knl_Swi_HookSet __T1_ti_sysbios_knl_Swi_hooks;
typedef struct { int length; ti_sysbios_knl_Swi_HookSet *elem; } __ARRAY1_ti_sysbios_knl_Swi_hooks;
typedef __ARRAY1_ti_sysbios_knl_Swi_hooks __TA_ti_sysbios_knl_Swi_hooks;
typedef __TA_ti_sysbios_knl_Swi_hooks CT__ti_sysbios_knl_Swi_hooks;
extern  const CT__ti_sysbios_knl_Swi_hooks ti_sysbios_knl_Swi_hooks__C;

/* taskDisable */

typedef xdc_UInt (*CT__ti_sysbios_knl_Swi_taskDisable)(void);
extern  const CT__ti_sysbios_knl_Swi_taskDisable ti_sysbios_knl_Swi_taskDisable__C;

/* taskRestore */

typedef void (*CT__ti_sysbios_knl_Swi_taskRestore)(xdc_UInt);
extern  const CT__ti_sysbios_knl_Swi_taskRestore ti_sysbios_knl_Swi_taskRestore__C;

/* numConstructedSwis */




typedef xdc_UInt CT__ti_sysbios_knl_Swi_numConstructedSwis;
extern  const CT__ti_sysbios_knl_Swi_numConstructedSwis ti_sysbios_knl_Swi_numConstructedSwis__C;



/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Swi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_UArg arg0;
    xdc_UArg arg1;
    xdc_UInt priority;
    xdc_UInt trigger;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Swi_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    ti_sysbios_knl_Swi_FuncPtr __f1;
    xdc_UArg __f2;
    xdc_UArg __f3;
    xdc_UInt __f4;
    xdc_UInt __f5;
    xdc_Bool __f6;
    xdc_UInt __f7;
    xdc_UInt __f8;
    ti_sysbios_knl_Queue_Handle __f9;
    __TA_ti_sysbios_knl_Swi_Instance_State__hookEnv __f10;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int ti_sysbios_knl_Swi_Module_startup__E( xdc_Int state );

extern xdc_Int ti_sysbios_knl_Swi_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern xdc_Int ti_sysbios_knl_Swi_Instance_init__E(ti_sysbios_knl_Swi_Object *, ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern void ti_sysbios_knl_Swi_Instance_finalize__E( ti_sysbios_knl_Swi_Object* , int );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Swi_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Swi_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Swi_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_create( ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Swi_construct( ti_sysbios_knl_Swi_Struct *__obj, ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_knl_Swi_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Swi_delete(ti_sysbios_knl_Swi_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Swi_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Swi_destruct(ti_sysbios_knl_Swi_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Swi_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Swi_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Swi_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Swi_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* startup__E */


extern void ti_sysbios_knl_Swi_startup__E( void );

/* enabled__E */


extern xdc_Bool ti_sysbios_knl_Swi_enabled__E( void );

/* unlockSched__E */


extern void ti_sysbios_knl_Swi_unlockSched__E( void );

/* disable__E */


extern xdc_UInt ti_sysbios_knl_Swi_disable__E( void );

/* enable__E */


extern void ti_sysbios_knl_Swi_enable__E( void );

/* restore__E */


extern void ti_sysbios_knl_Swi_restore__E( xdc_UInt key );

/* restoreHwi__E */


extern void ti_sysbios_knl_Swi_restoreHwi__E( xdc_UInt key );

/* self__E */


extern ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_self__E( void );

/* getTrigger__E */


extern xdc_UInt ti_sysbios_knl_Swi_getTrigger__E( void );

/* raisePri__E */


extern xdc_UInt ti_sysbios_knl_Swi_raisePri__E( xdc_UInt priority );

/* restorePri__E */


extern void ti_sysbios_knl_Swi_restorePri__E( xdc_UInt key );

/* andn__E */


extern void ti_sysbios_knl_Swi_andn__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UInt mask );

/* dec__E */


extern void ti_sysbios_knl_Swi_dec__E( ti_sysbios_knl_Swi_Handle __inst );

/* getHookContext__E */


extern xdc_Ptr ti_sysbios_knl_Swi_getHookContext__E( ti_sysbios_knl_Swi_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern void ti_sysbios_knl_Swi_setHookContext__E( ti_sysbios_knl_Swi_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* getPri__E */


extern xdc_UInt ti_sysbios_knl_Swi_getPri__E( ti_sysbios_knl_Swi_Handle __inst );

/* getFunc__E */


extern ti_sysbios_knl_Swi_FuncPtr ti_sysbios_knl_Swi_getFunc__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UArg *arg0, xdc_UArg *arg1 );

/* getAttrs__E */


extern void ti_sysbios_knl_Swi_getAttrs__E( ti_sysbios_knl_Swi_Handle __inst, ti_sysbios_knl_Swi_FuncPtr *swiFxn, ti_sysbios_knl_Swi_Params *params );

/* setAttrs__E */


extern void ti_sysbios_knl_Swi_setAttrs__E( ti_sysbios_knl_Swi_Handle __inst, ti_sysbios_knl_Swi_FuncPtr swiFxn, ti_sysbios_knl_Swi_Params *params );

/* inc__E */


extern void ti_sysbios_knl_Swi_inc__E( ti_sysbios_knl_Swi_Handle __inst );

/* or__E */


extern void ti_sysbios_knl_Swi_or__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UInt mask );

/* post__E */


extern void ti_sysbios_knl_Swi_post__E( ti_sysbios_knl_Swi_Handle __inst );

/* schedule__I */


extern void ti_sysbios_knl_Swi_schedule__I( void );

/* runLoop__I */


extern void ti_sysbios_knl_Swi_runLoop__I( void );

/* run__I */


extern void ti_sysbios_knl_Swi_run__I( ti_sysbios_knl_Swi_Object *swi );

/* postInit__I */


extern xdc_Int ti_sysbios_knl_Swi_postInit__I( ti_sysbios_knl_Swi_Object *swi, xdc_runtime_Error_Block *eb );

/* restoreSMP__I */


extern void ti_sysbios_knl_Swi_restoreSMP__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Swi_Module__id ti_sysbios_knl_Swi_Module_id( void ) 
{
    return ti_sysbios_knl_Swi_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Swi_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Swi_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Swi_Module_getMask( void ) 
{
    return ti_sysbios_knl_Swi_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Swi_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Swi_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Swi_Module__diagsMask__C != 0) *ti_sysbios_knl_Swi_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Swi_Params_init( ti_sysbios_knl_Swi_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Swi_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Swi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Swi_Params_copy(ti_sysbios_knl_Swi_Params *dst, const ti_sysbios_knl_Swi_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Swi_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Swi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_get(ti_sysbios_knl_Swi_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_first( void )
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_next( ti_sysbios_knl_Swi_Object *obj )
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Swi_Handle_label( ti_sysbios_knl_Swi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Swi_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Swi_Handle_name( ti_sysbios_knl_Swi_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Swi_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_handle( ti_sysbios_knl_Swi_Struct *str )
{
    return (ti_sysbios_knl_Swi_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Swi_Struct *ti_sysbios_knl_Swi_struct( ti_sysbios_knl_Swi_Handle inst )
{
    return (ti_sysbios_knl_Swi_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 647 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"


# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 450 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_knl_Clock_TimerProxy_FuncPtr;

/* ANY */


/* StartMode */
typedef ti_sysbios_interfaces_ITimer_StartMode ti_sysbios_knl_Clock_TimerProxy_StartMode;

/* RunMode */
typedef ti_sysbios_interfaces_ITimer_RunMode ti_sysbios_knl_Clock_TimerProxy_RunMode;

/* Status */
typedef ti_sysbios_interfaces_ITimer_Status ti_sysbios_knl_Clock_TimerProxy_Status;

/* PeriodType */
typedef ti_sysbios_interfaces_ITimer_PeriodType ti_sysbios_knl_Clock_TimerProxy_PeriodType;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Clock_TimerProxy_Args__create {
    xdc_Int id;
    ti_sysbios_interfaces_ITimer_FuncPtr tickFxn;
} ti_sysbios_knl_Clock_TimerProxy_Args__create;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__gateObj;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__gateObj ti_sysbios_knl_Clock_TimerProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Clock_TimerProxy_Module__id;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__id ti_sysbios_knl_Clock_TimerProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Clock_TimerProxy_Object__count;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__count ti_sysbios_knl_Clock_TimerProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Clock_TimerProxy_Object__heap;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__heap ti_sysbios_knl_Clock_TimerProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Clock_TimerProxy_Object__sizeof;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__sizeof ti_sysbios_knl_Clock_TimerProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Object__table;
extern  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__table ti_sysbios_knl_Clock_TimerProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Clock_TimerProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_ITimer_RunMode runMode;
    ti_sysbios_interfaces_ITimer_StartMode startMode;
    xdc_UArg arg;
    xdc_UInt32 period;
    ti_sysbios_interfaces_ITimer_PeriodType periodType;
    xdc_runtime_Types_FreqHz extFreq;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Clock_TimerProxy_Struct {
    const ti_sysbios_knl_Clock_TimerProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_knl_Clock_TimerProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_UInt (*getNumTimers)(void);
    ti_sysbios_interfaces_ITimer_Status (*getStatus)(xdc_UInt);
    void (*startup)(void);
    xdc_UInt32 (*getMaxTicks)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*setNextTick)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    void (*start)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*stop)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*setPeriod)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_Bool (*setPeriodMicroSecs)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getPeriod)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    xdc_UInt32 (*getCount)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*getFreq)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_runtime_Types_FreqHz*);
    ti_sysbios_interfaces_ITimer_FuncPtr (*getFunc)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_knl_Clock_TimerProxy_Handle, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
    void (*trigger)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getExpiredCounts)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    xdc_UInt32 (*getExpiredTicks)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getCurrentTick)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_Bool);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_knl_Clock_TimerProxy_Fxns__ ti_sysbios_knl_Clock_TimerProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Clock_TimerProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Clock_TimerProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_TimerProxy_create( xdc_Int id, ti_sysbios_interfaces_ITimer_FuncPtr tickFxn, const ti_sysbios_knl_Clock_TimerProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_knl_Clock_TimerProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Clock_TimerProxy_delete(ti_sysbios_knl_Clock_TimerProxy_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Clock_TimerProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Clock_TimerProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool ti_sysbios_knl_Clock_TimerProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S( void );

/* getNumTimers__E */


extern xdc_UInt ti_sysbios_knl_Clock_TimerProxy_getNumTimers__E( void );

/* getStatus__E */


extern ti_sysbios_interfaces_ITimer_Status ti_sysbios_knl_Clock_TimerProxy_getStatus__E( xdc_UInt id );

/* startup__E */


extern void ti_sysbios_knl_Clock_TimerProxy_startup__E( void );

/* getMaxTicks__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getMaxTicks__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* setNextTick__E */


extern void ti_sysbios_knl_Clock_TimerProxy_setNextTick__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 ticks );

/* start__E */


extern void ti_sysbios_knl_Clock_TimerProxy_start__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* stop__E */


extern void ti_sysbios_knl_Clock_TimerProxy_stop__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* setPeriod__E */


extern void ti_sysbios_knl_Clock_TimerProxy_setPeriod__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 period );

/* setPeriodMicroSecs__E */


extern xdc_Bool ti_sysbios_knl_Clock_TimerProxy_setPeriodMicroSecs__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 microsecs );

/* getPeriod__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getPeriod__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getCount__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getCount__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getFreq__E */


extern void ti_sysbios_knl_Clock_TimerProxy_getFreq__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_runtime_Types_FreqHz *freq );

/* getFunc__E */


extern ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_knl_Clock_TimerProxy_getFunc__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern void ti_sysbios_knl_Clock_TimerProxy_setFunc__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, ti_sysbios_interfaces_ITimer_FuncPtr fxn, xdc_UArg arg );

/* trigger__E */


extern void ti_sysbios_knl_Clock_TimerProxy_trigger__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 cycles );

/* getExpiredCounts__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getExpiredCounts__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getExpiredTicks__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getExpiredTicks__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 tickPeriod );

/* getCurrentTick__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getCurrentTick__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_Bool save );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_ITimer_Module ti_sysbios_knl_Clock_TimerProxy_Module_upCast( void )
{
    return (ti_sysbios_interfaces_ITimer_Module)ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S();
}

/* Module_to_ti_sysbios_interfaces_ITimer */


/* Handle_upCast */
static inline ti_sysbios_interfaces_ITimer_Handle ti_sysbios_knl_Clock_TimerProxy_Handle_upCast( ti_sysbios_knl_Clock_TimerProxy_Handle i )
{
    return (ti_sysbios_interfaces_ITimer_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_ITimer */


/* Handle_downCast */
static inline ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_TimerProxy_Handle_downCast( ti_sysbios_interfaces_ITimer_Handle i )
{
    ti_sysbios_interfaces_ITimer_Handle i2 = (ti_sysbios_interfaces_ITimer_Handle)i;
if (ti_sysbios_knl_Clock_TimerProxy_Proxy__abstract__S()) return (ti_sysbios_knl_Clock_TimerProxy_Handle)i;
    return (void*)i2->__fxns == (void*)ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S() ? (ti_sysbios_knl_Clock_TimerProxy_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_ITimer */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Clock_TimerProxy_Module__id ti_sysbios_knl_Clock_TimerProxy_Module_id( void ) 
{
    return ti_sysbios_knl_Clock_TimerProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void ti_sysbios_knl_Clock_TimerProxy_Params_init( ti_sysbios_knl_Clock_TimerProxy_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Clock_TimerProxy_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Clock_TimerProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Clock_TimerProxy_Params_copy(ti_sysbios_knl_Clock_TimerProxy_Params *dst, const ti_sysbios_knl_Clock_TimerProxy_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Clock_TimerProxy_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Clock_TimerProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* TickSource */
enum ti_sysbios_knl_Clock_TickSource {
    ti_sysbios_knl_Clock_TickSource_TIMER,
    ti_sysbios_knl_Clock_TickSource_USER,
    ti_sysbios_knl_Clock_TickSource_NULL
};
typedef enum ti_sysbios_knl_Clock_TickSource ti_sysbios_knl_Clock_TickSource;

/* TickMode */
enum ti_sysbios_knl_Clock_TickMode {
    ti_sysbios_knl_Clock_TickMode_PERIODIC,
    ti_sysbios_knl_Clock_TickMode_DYNAMIC
};
typedef enum ti_sysbios_knl_Clock_TickMode ti_sysbios_knl_Clock_TickMode;

/* FuncPtr */
typedef void (*ti_sysbios_knl_Clock_FuncPtr)(xdc_UArg);


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Clock_Args__create {
    ti_sysbios_knl_Clock_FuncPtr clockFxn;
    xdc_UInt timeout;
} ti_sysbios_knl_Clock_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Clock_Module__diagsEnabled ti_sysbios_knl_Clock_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Clock_Module__diagsIncluded ti_sysbios_knl_Clock_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Clock_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Clock_Module__diagsMask ti_sysbios_knl_Clock_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__gateObj;
extern  const CT__ti_sysbios_knl_Clock_Module__gateObj ti_sysbios_knl_Clock_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Clock_Module__gatePrms ti_sysbios_knl_Clock_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Clock_Module__id;
extern  const CT__ti_sysbios_knl_Clock_Module__id ti_sysbios_knl_Clock_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Clock_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerDefined ti_sysbios_knl_Clock_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerObj ti_sysbios_knl_Clock_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Clock_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerFxn0 ti_sysbios_knl_Clock_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Clock_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerFxn1 ti_sysbios_knl_Clock_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Clock_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerFxn2 ti_sysbios_knl_Clock_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Clock_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerFxn4 ti_sysbios_knl_Clock_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Clock_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Clock_Module__loggerFxn8 ti_sysbios_knl_Clock_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Clock_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Clock_Module__startupDoneFxn ti_sysbios_knl_Clock_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Clock_Object__count;
extern  const CT__ti_sysbios_knl_Clock_Object__count ti_sysbios_knl_Clock_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Clock_Object__heap;
extern  const CT__ti_sysbios_knl_Clock_Object__heap ti_sysbios_knl_Clock_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Clock_Object__sizeof;
extern  const CT__ti_sysbios_knl_Clock_Object__sizeof ti_sysbios_knl_Clock_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Object__table;
extern  const CT__ti_sysbios_knl_Clock_Object__table ti_sysbios_knl_Clock_Object__table__C;

/* LW_delayed */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LW_delayed;
extern  const CT__ti_sysbios_knl_Clock_LW_delayed ti_sysbios_knl_Clock_LW_delayed__C;

/* LM_tick */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LM_tick;
extern  const CT__ti_sysbios_knl_Clock_LM_tick ti_sysbios_knl_Clock_LM_tick__C;

/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LM_begin;
extern  const CT__ti_sysbios_knl_Clock_LM_begin ti_sysbios_knl_Clock_LM_begin__C;

/* A_clockDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Clock_A_clockDisabled;
extern  const CT__ti_sysbios_knl_Clock_A_clockDisabled ti_sysbios_knl_Clock_A_clockDisabled__C;

/* A_badThreadType */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Clock_A_badThreadType;
extern  const CT__ti_sysbios_knl_Clock_A_badThreadType ti_sysbios_knl_Clock_A_badThreadType__C;

/* serviceMargin */




typedef xdc_UInt32 CT__ti_sysbios_knl_Clock_serviceMargin;
extern  const CT__ti_sysbios_knl_Clock_serviceMargin ti_sysbios_knl_Clock_serviceMargin__C;


/* tickSource */

typedef ti_sysbios_knl_Clock_TickSource CT__ti_sysbios_knl_Clock_tickSource;
extern  const CT__ti_sysbios_knl_Clock_tickSource ti_sysbios_knl_Clock_tickSource__C;

/* tickMode */

typedef ti_sysbios_knl_Clock_TickMode CT__ti_sysbios_knl_Clock_tickMode;
extern  const CT__ti_sysbios_knl_Clock_tickMode ti_sysbios_knl_Clock_tickMode__C;

/* timerId */




typedef xdc_UInt CT__ti_sysbios_knl_Clock_timerId;
extern  const CT__ti_sysbios_knl_Clock_timerId ti_sysbios_knl_Clock_timerId__C;


/* tickPeriod */




typedef xdc_UInt32 CT__ti_sysbios_knl_Clock_tickPeriod;
extern  const CT__ti_sysbios_knl_Clock_tickPeriod ti_sysbios_knl_Clock_tickPeriod__C;


/* doTickFunc */

typedef void (*CT__ti_sysbios_knl_Clock_doTickFunc)(xdc_UArg);
extern  const CT__ti_sysbios_knl_Clock_doTickFunc ti_sysbios_knl_Clock_doTickFunc__C;

/* triggerClock */

typedef ti_sysbios_knl_Clock_Handle CT__ti_sysbios_knl_Clock_triggerClock;
extern  const CT__ti_sysbios_knl_Clock_triggerClock ti_sysbios_knl_Clock_triggerClock__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Clock_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_Bool startFlag;
    xdc_UInt32 period;
    xdc_UArg arg;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Clock_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    xdc_UInt32 __f1;
    xdc_UInt32 __f2;
    xdc_UInt32 __f3;
    volatile xdc_Bool __f4;
    ti_sysbios_knl_Clock_FuncPtr __f5;
    xdc_UArg __f6;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int ti_sysbios_knl_Clock_Module_startup__E( xdc_Int state );

extern xdc_Int ti_sysbios_knl_Clock_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern void ti_sysbios_knl_Clock_Instance_init__E(ti_sysbios_knl_Clock_Object *, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *);

/* Instance_finalize__E */

extern void ti_sysbios_knl_Clock_Instance_finalize__E( ti_sysbios_knl_Clock_Object* );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Clock_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Clock_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Clock_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_create( ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Clock_construct( ti_sysbios_knl_Clock_Struct *__obj, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *__prms );

/* Object__delete__S */

extern void ti_sysbios_knl_Clock_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Clock_delete(ti_sysbios_knl_Clock_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Clock_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Clock_destruct(ti_sysbios_knl_Clock_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Clock_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Clock_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Clock_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Clock_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getTicks__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getTicks__E( void );

/* getTimerHandle__E */


extern ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_getTimerHandle__E( void );

/* setTicks__E */


extern void ti_sysbios_knl_Clock_setTicks__E( xdc_UInt32 ticks );

/* tickStop__E */


extern void ti_sysbios_knl_Clock_tickStop__E( void );

/* tickReconfig__E */


extern xdc_Bool ti_sysbios_knl_Clock_tickReconfig__E( void );

/* tickStart__E */


extern void ti_sysbios_knl_Clock_tickStart__E( void );

/* tick__E */


extern void ti_sysbios_knl_Clock_tick__E( void );

/* workFunc__E */


extern void ti_sysbios_knl_Clock_workFunc__E( xdc_UArg arg0, xdc_UArg arg1 );

/* workFuncDynamic__E */


extern void ti_sysbios_knl_Clock_workFuncDynamic__E( xdc_UArg arg0, xdc_UArg arg1 );

/* logTick__E */


extern void ti_sysbios_knl_Clock_logTick__E( void );

/* getCompletedTicks__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getCompletedTicks__E( void );

/* getTickPeriod__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getTickPeriod__E( void );

/* getTicksUntilInterrupt__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getTicksUntilInterrupt__E( void );

/* getTicksUntilTimeout__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getTicksUntilTimeout__E( void );

/* walkQueueDynamic__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_walkQueueDynamic__E( xdc_Bool service, xdc_UInt32 tick );

/* walkQueuePeriodic__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_walkQueuePeriodic__E( void );

/* scheduleNextTick__E */


extern void ti_sysbios_knl_Clock_scheduleNextTick__E( xdc_UInt32 deltaTicks, xdc_UInt32 absTick );

/* addI__E */


extern void ti_sysbios_knl_Clock_addI__E( ti_sysbios_knl_Clock_Handle __inst, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt32 timeout, xdc_UArg arg );

/* removeI__E */


extern void ti_sysbios_knl_Clock_removeI__E( ti_sysbios_knl_Clock_Handle __inst );

/* start__E */


extern void ti_sysbios_knl_Clock_start__E( ti_sysbios_knl_Clock_Handle __inst );

/* startI__E */


extern void ti_sysbios_knl_Clock_startI__E( ti_sysbios_knl_Clock_Handle __inst );

/* stop__E */


extern void ti_sysbios_knl_Clock_stop__E( ti_sysbios_knl_Clock_Handle __inst );

/* setPeriod__E */


extern void ti_sysbios_knl_Clock_setPeriod__E( ti_sysbios_knl_Clock_Handle __inst, xdc_UInt32 period );

/* setTimeout__E */


extern void ti_sysbios_knl_Clock_setTimeout__E( ti_sysbios_knl_Clock_Handle __inst, xdc_UInt32 timeout );

/* setFunc__E */


extern void ti_sysbios_knl_Clock_setFunc__E( ti_sysbios_knl_Clock_Handle __inst, ti_sysbios_knl_Clock_FuncPtr fxn, xdc_UArg arg );

/* getPeriod__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getPeriod__E( ti_sysbios_knl_Clock_Handle __inst );

/* getTimeout__E */


extern xdc_UInt32 ti_sysbios_knl_Clock_getTimeout__E( ti_sysbios_knl_Clock_Handle __inst );

/* isActive__E */


extern xdc_Bool ti_sysbios_knl_Clock_isActive__E( ti_sysbios_knl_Clock_Handle __inst );

/* doTick__I */


extern void ti_sysbios_knl_Clock_doTick__I( xdc_UArg arg );

/* triggerFunc__I */


extern void ti_sysbios_knl_Clock_triggerFunc__I( xdc_UArg arg );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Clock_Module__id ti_sysbios_knl_Clock_Module_id( void ) 
{
    return ti_sysbios_knl_Clock_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Clock_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Clock_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Clock_Module_getMask( void ) 
{
    return ti_sysbios_knl_Clock_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Clock_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Clock_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Clock_Module__diagsMask__C != 0) *ti_sysbios_knl_Clock_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Clock_Params_init( ti_sysbios_knl_Clock_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Clock_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Clock_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Clock_Params_copy(ti_sysbios_knl_Clock_Params *dst, const ti_sysbios_knl_Clock_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Clock_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Clock_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_get(ti_sysbios_knl_Clock_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_first( void )
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_next( ti_sysbios_knl_Clock_Object *obj )
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Clock_Handle_label( ti_sysbios_knl_Clock_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Clock_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Clock_Handle_name( ti_sysbios_knl_Clock_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Clock_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_handle( ti_sysbios_knl_Clock_Struct *str )
{
    return (ti_sysbios_knl_Clock_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Clock_Struct *ti_sysbios_knl_Clock_struct( ti_sysbios_knl_Clock_Handle inst )
{
    return (ti_sysbios_knl_Clock_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 670 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 69 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"


# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 197 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_ITaskSupport_FuncPtr ti_sysbios_knl_Task_SupportProxy_FuncPtr;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsMask ti_sysbios_knl_Task_SupportProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__gateObj;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__gateObj ti_sysbios_knl_Task_SupportProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__gatePrms ti_sysbios_knl_Task_SupportProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Task_SupportProxy_Module__id;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__id ti_sysbios_knl_Task_SupportProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerObj ti_sysbios_knl_Task_SupportProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Task_SupportProxy_Object__count;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Object__count ti_sysbios_knl_Task_SupportProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_SupportProxy_Object__heap;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Object__heap ti_sysbios_knl_Task_SupportProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Task_SupportProxy_Object__sizeof;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Object__sizeof ti_sysbios_knl_Task_SupportProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Object__table;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_Object__table ti_sysbios_knl_Task_SupportProxy_Object__table__C;

/* defaultStackSize */




typedef xdc_SizeT CT__ti_sysbios_knl_Task_SupportProxy_defaultStackSize;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_defaultStackSize ti_sysbios_knl_Task_SupportProxy_defaultStackSize__C;


/* stackAlignment */




typedef xdc_UInt CT__ti_sysbios_knl_Task_SupportProxy_stackAlignment;
extern  const CT__ti_sysbios_knl_Task_SupportProxy_stackAlignment ti_sysbios_knl_Task_SupportProxy_stackAlignment__C;



/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_knl_Task_SupportProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*start)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
    void (*swap)(xdc_Ptr*, xdc_Ptr*);
    xdc_Bool (*checkStack)(xdc_Char*, xdc_SizeT);
    xdc_SizeT (*stackUsed)(xdc_Char*, xdc_SizeT);
    xdc_UInt (*getStackAlignment)(void);
    xdc_SizeT (*getDefaultStackSize)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_knl_Task_SupportProxy_Fxns__ ti_sysbios_knl_Task_SupportProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Task_SupportProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Task_SupportProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_knl_Task_SupportProxy_Object__delete__S( xdc_Ptr instp );

/* Object__destruct__S */

extern void ti_sysbios_knl_Task_SupportProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Task_SupportProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool ti_sysbios_knl_Task_SupportProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Proxy__delegate__S( void );

/* start__E */


extern xdc_Ptr ti_sysbios_knl_Task_SupportProxy_start__E( xdc_Ptr curTask, ti_sysbios_interfaces_ITaskSupport_FuncPtr enter, ti_sysbios_interfaces_ITaskSupport_FuncPtr exit, xdc_runtime_Error_Block *eb );

/* swap__E */


extern void ti_sysbios_knl_Task_SupportProxy_swap__E( xdc_Ptr *oldtskContext, xdc_Ptr *newtskContext );

/* checkStack__E */


extern xdc_Bool ti_sysbios_knl_Task_SupportProxy_checkStack__E( xdc_Char *stack, xdc_SizeT size );

/* stackUsed__E */


extern xdc_SizeT ti_sysbios_knl_Task_SupportProxy_stackUsed__E( xdc_Char *stack, xdc_SizeT size );

/* getStackAlignment__E */


extern xdc_UInt ti_sysbios_knl_Task_SupportProxy_getStackAlignment__E( void );

/* getDefaultStackSize__E */


extern xdc_SizeT ti_sysbios_knl_Task_SupportProxy_getDefaultStackSize__E( void );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_ITaskSupport_Module ti_sysbios_knl_Task_SupportProxy_Module_upCast( void )
{
    return (ti_sysbios_interfaces_ITaskSupport_Module)ti_sysbios_knl_Task_SupportProxy_Proxy__delegate__S();
}

/* Module_to_ti_sysbios_interfaces_ITaskSupport */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Task_SupportProxy_Module__id ti_sysbios_knl_Task_SupportProxy_Module_id( void ) 
{
    return ti_sysbios_knl_Task_SupportProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */



/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 70 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_knl_Task_FuncPtr)(xdc_UArg, xdc_UArg);

/* AllBlockedFuncPtr */
typedef void (*ti_sysbios_knl_Task_AllBlockedFuncPtr)(void);

/* Mode */
enum ti_sysbios_knl_Task_Mode {
    ti_sysbios_knl_Task_Mode_RUNNING,
    ti_sysbios_knl_Task_Mode_READY,
    ti_sysbios_knl_Task_Mode_BLOCKED,
    ti_sysbios_knl_Task_Mode_TERMINATED,
    ti_sysbios_knl_Task_Mode_INACTIVE
};
typedef enum ti_sysbios_knl_Task_Mode ti_sysbios_knl_Task_Mode;

/* Stat */
struct ti_sysbios_knl_Task_Stat {
    xdc_Int priority;
    xdc_Ptr stack;
    xdc_SizeT stackSize;
    xdc_runtime_IHeap_Handle stackHeap;
    xdc_Ptr env;
    ti_sysbios_knl_Task_Mode mode;
    xdc_Ptr sp;
    xdc_SizeT used;
};

/* HookSet */
struct ti_sysbios_knl_Task_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_knl_Task_Handle, xdc_runtime_Error_Block*);
    void (*readyFxn)(ti_sysbios_knl_Task_Handle);
    void (*switchFxn)(ti_sysbios_knl_Task_Handle, ti_sysbios_knl_Task_Handle);
    void (*exitFxn)(ti_sysbios_knl_Task_Handle);
    void (*deleteFxn)(ti_sysbios_knl_Task_Handle);
};

/* AFFINITY_NONE */



/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Task_Args__create {
    ti_sysbios_knl_Task_FuncPtr fxn;
} ti_sysbios_knl_Task_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* PendElem */
struct ti_sysbios_knl_Task_PendElem {
    ti_sysbios_knl_Queue_Elem qElem;
    ti_sysbios_knl_Task_Handle task;
    ti_sysbios_knl_Clock_Handle clock;
};

/* Instance_State */
typedef xdc_Char __T1_ti_sysbios_knl_Task_Instance_State__stack;
typedef xdc_Char *__ARRAY1_ti_sysbios_knl_Task_Instance_State__stack;
typedef __ARRAY1_ti_sysbios_knl_Task_Instance_State__stack __TA_ti_sysbios_knl_Task_Instance_State__stack;
typedef xdc_Ptr __T1_ti_sysbios_knl_Task_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_knl_Task_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_knl_Task_Instance_State__hookEnv __TA_ti_sysbios_knl_Task_Instance_State__hookEnv;

/* Module_State */
typedef ti_sysbios_knl_Queue_Instance_State __T1_ti_sysbios_knl_Task_Module_State__readyQ;
typedef ti_sysbios_knl_Queue_Instance_State *__ARRAY1_ti_sysbios_knl_Task_Module_State__readyQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__readyQ __TA_ti_sysbios_knl_Task_Module_State__readyQ;
typedef volatile xdc_UInt __T1_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef volatile xdc_UInt *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurSet __TA_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef volatile xdc_UInt __T1_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef volatile xdc_UInt *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurMask __TA_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurTask __TA_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef ti_sysbios_knl_Queue_Handle __T1_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef ti_sysbios_knl_Queue_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpReadyQ __TA_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__idleTask;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__idleTask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__idleTask __TA_ti_sysbios_knl_Task_Module_State__idleTask;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__constructedTasks;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__constructedTasks;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__constructedTasks __TA_ti_sysbios_knl_Task_Module_State__constructedTasks;

/* RunQEntry */
struct ti_sysbios_knl_Task_RunQEntry {
    ti_sysbios_knl_Queue_Elem elem;
    xdc_UInt coreId;
    xdc_Int priority;
};

/* Module_StateSmp */
typedef volatile ti_sysbios_knl_Task_RunQEntry __T1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
typedef volatile ti_sysbios_knl_Task_RunQEntry *__ARRAY1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ __TA_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
struct ti_sysbios_knl_Task_Module_StateSmp {
    ti_sysbios_knl_Queue_Object *sortedRunQ;
    __TA_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ smpRunQ;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Task_Module__diagsEnabled ti_sysbios_knl_Task_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Task_Module__diagsIncluded ti_sysbios_knl_Task_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Task_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Task_Module__diagsMask ti_sysbios_knl_Task_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__gateObj;
extern  const CT__ti_sysbios_knl_Task_Module__gateObj ti_sysbios_knl_Task_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Task_Module__gatePrms ti_sysbios_knl_Task_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Task_Module__id;
extern  const CT__ti_sysbios_knl_Task_Module__id ti_sysbios_knl_Task_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Task_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Task_Module__loggerDefined ti_sysbios_knl_Task_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Task_Module__loggerObj ti_sysbios_knl_Task_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Task_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Task_Module__loggerFxn0 ti_sysbios_knl_Task_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Task_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Task_Module__loggerFxn1 ti_sysbios_knl_Task_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Task_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Task_Module__loggerFxn2 ti_sysbios_knl_Task_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Task_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Task_Module__loggerFxn4 ti_sysbios_knl_Task_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Task_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Task_Module__loggerFxn8 ti_sysbios_knl_Task_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Task_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Task_Module__startupDoneFxn ti_sysbios_knl_Task_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Task_Object__count;
extern  const CT__ti_sysbios_knl_Task_Object__count ti_sysbios_knl_Task_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_Object__heap;
extern  const CT__ti_sysbios_knl_Task_Object__heap ti_sysbios_knl_Task_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Task_Object__sizeof;
extern  const CT__ti_sysbios_knl_Task_Object__sizeof ti_sysbios_knl_Task_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Object__table;
extern  const CT__ti_sysbios_knl_Task_Object__table ti_sysbios_knl_Task_Object__table__C;

/* LM_switch */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_switch;
extern  const CT__ti_sysbios_knl_Task_LM_switch ti_sysbios_knl_Task_LM_switch__C;

/* LM_sleep */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_sleep;
extern  const CT__ti_sysbios_knl_Task_LM_sleep ti_sysbios_knl_Task_LM_sleep__C;

/* LD_ready */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_ready;
extern  const CT__ti_sysbios_knl_Task_LD_ready ti_sysbios_knl_Task_LD_ready__C;

/* LD_block */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_block;
extern  const CT__ti_sysbios_knl_Task_LD_block ti_sysbios_knl_Task_LD_block__C;

/* LM_yield */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_yield;
extern  const CT__ti_sysbios_knl_Task_LM_yield ti_sysbios_knl_Task_LM_yield__C;

/* LM_setPri */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_setPri;
extern  const CT__ti_sysbios_knl_Task_LM_setPri ti_sysbios_knl_Task_LM_setPri__C;

/* LD_exit */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_exit;
extern  const CT__ti_sysbios_knl_Task_LD_exit ti_sysbios_knl_Task_LD_exit__C;

/* LM_setAffinity */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_setAffinity;
extern  const CT__ti_sysbios_knl_Task_LM_setAffinity ti_sysbios_knl_Task_LM_setAffinity__C;

/* LM_schedule */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_schedule;
extern  const CT__ti_sysbios_knl_Task_LM_schedule ti_sysbios_knl_Task_LM_schedule__C;

/* LM_noWork */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_noWork;
extern  const CT__ti_sysbios_knl_Task_LM_noWork ti_sysbios_knl_Task_LM_noWork__C;

/* E_stackOverflow */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_stackOverflow;
extern  const CT__ti_sysbios_knl_Task_E_stackOverflow ti_sysbios_knl_Task_E_stackOverflow__C;

/* E_spOutOfBounds */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_spOutOfBounds;
extern  const CT__ti_sysbios_knl_Task_E_spOutOfBounds ti_sysbios_knl_Task_E_spOutOfBounds__C;

/* E_deleteNotAllowed */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_deleteNotAllowed;
extern  const CT__ti_sysbios_knl_Task_E_deleteNotAllowed ti_sysbios_knl_Task_E_deleteNotAllowed__C;

/* A_badThreadType */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badThreadType;
extern  const CT__ti_sysbios_knl_Task_A_badThreadType ti_sysbios_knl_Task_A_badThreadType__C;

/* A_badTaskState */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badTaskState;
extern  const CT__ti_sysbios_knl_Task_A_badTaskState ti_sysbios_knl_Task_A_badTaskState__C;

/* A_noPendElem */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_noPendElem;
extern  const CT__ti_sysbios_knl_Task_A_noPendElem ti_sysbios_knl_Task_A_noPendElem__C;

/* A_taskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_taskDisabled;
extern  const CT__ti_sysbios_knl_Task_A_taskDisabled ti_sysbios_knl_Task_A_taskDisabled__C;

/* A_badPriority */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badPriority;
extern  const CT__ti_sysbios_knl_Task_A_badPriority ti_sysbios_knl_Task_A_badPriority__C;

/* A_badTimeout */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badTimeout;
extern  const CT__ti_sysbios_knl_Task_A_badTimeout ti_sysbios_knl_Task_A_badTimeout__C;

/* A_badAffinity */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badAffinity;
extern  const CT__ti_sysbios_knl_Task_A_badAffinity ti_sysbios_knl_Task_A_badAffinity__C;

/* A_sleepTaskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_sleepTaskDisabled;
extern  const CT__ti_sysbios_knl_Task_A_sleepTaskDisabled ti_sysbios_knl_Task_A_sleepTaskDisabled__C;

/* A_invalidCoreId */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_invalidCoreId;
extern  const CT__ti_sysbios_knl_Task_A_invalidCoreId ti_sysbios_knl_Task_A_invalidCoreId__C;

/* numPriorities */




typedef xdc_UInt CT__ti_sysbios_knl_Task_numPriorities;
extern  const CT__ti_sysbios_knl_Task_numPriorities ti_sysbios_knl_Task_numPriorities__C;


/* defaultStackSize */




typedef xdc_SizeT CT__ti_sysbios_knl_Task_defaultStackSize;
extern  const CT__ti_sysbios_knl_Task_defaultStackSize ti_sysbios_knl_Task_defaultStackSize__C;


/* defaultStackHeap */

typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_defaultStackHeap;
extern  const CT__ti_sysbios_knl_Task_defaultStackHeap ti_sysbios_knl_Task_defaultStackHeap__C;

/* allBlockedFunc */

typedef ti_sysbios_knl_Task_AllBlockedFuncPtr CT__ti_sysbios_knl_Task_allBlockedFunc;
extern  const CT__ti_sysbios_knl_Task_allBlockedFunc ti_sysbios_knl_Task_allBlockedFunc__C;

/* initStackFlag */




typedef xdc_Bool CT__ti_sysbios_knl_Task_initStackFlag;
extern  const CT__ti_sysbios_knl_Task_initStackFlag ti_sysbios_knl_Task_initStackFlag__C;


/* checkStackFlag */




typedef xdc_Bool CT__ti_sysbios_knl_Task_checkStackFlag;
extern  const CT__ti_sysbios_knl_Task_checkStackFlag ti_sysbios_knl_Task_checkStackFlag__C;


/* deleteTerminatedTasks */




typedef xdc_Bool CT__ti_sysbios_knl_Task_deleteTerminatedTasks;
extern  const CT__ti_sysbios_knl_Task_deleteTerminatedTasks ti_sysbios_knl_Task_deleteTerminatedTasks__C;


/* hooks */

typedef ti_sysbios_knl_Task_HookSet __T1_ti_sysbios_knl_Task_hooks;
typedef struct { int length; ti_sysbios_knl_Task_HookSet *elem; } __ARRAY1_ti_sysbios_knl_Task_hooks;
typedef __ARRAY1_ti_sysbios_knl_Task_hooks __TA_ti_sysbios_knl_Task_hooks;
typedef __TA_ti_sysbios_knl_Task_hooks CT__ti_sysbios_knl_Task_hooks;
extern  const CT__ti_sysbios_knl_Task_hooks ti_sysbios_knl_Task_hooks__C;

/* numConstructedTasks */




typedef xdc_UInt CT__ti_sysbios_knl_Task_numConstructedTasks;
extern  const CT__ti_sysbios_knl_Task_numConstructedTasks ti_sysbios_knl_Task_numConstructedTasks__C;


/* startupHookFunc */

typedef void (*CT__ti_sysbios_knl_Task_startupHookFunc)(void);
extern  const CT__ti_sysbios_knl_Task_startupHookFunc ti_sysbios_knl_Task_startupHookFunc__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Task_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_UArg arg0;
    xdc_UArg arg1;
    xdc_Int priority;
    xdc_Ptr stack;
    xdc_SizeT stackSize;
    xdc_runtime_IHeap_Handle stackHeap;
    xdc_Ptr env;
    xdc_Bool vitalTaskFlag;
    xdc_UInt affinity;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Task_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    volatile xdc_Int __f1;
    xdc_UInt __f2;
    xdc_Ptr __f3;
    ti_sysbios_knl_Task_Mode __f4;
    ti_sysbios_knl_Task_PendElem *__f5;
    xdc_SizeT __f6;
    __TA_ti_sysbios_knl_Task_Instance_State__stack __f7;
    xdc_runtime_IHeap_Handle __f8;
    ti_sysbios_knl_Task_FuncPtr __f9;
    xdc_UArg __f10;
    xdc_UArg __f11;
    xdc_Ptr __f12;
    __TA_ti_sysbios_knl_Task_Instance_State__hookEnv __f13;
    xdc_Bool __f14;
    ti_sysbios_knl_Queue_Handle __f15;
    xdc_UInt __f16;
    xdc_UInt __f17;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int ti_sysbios_knl_Task_Module_startup__E( xdc_Int state );

extern xdc_Int ti_sysbios_knl_Task_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern xdc_Int ti_sysbios_knl_Task_Instance_init__E(ti_sysbios_knl_Task_Object *, ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern void ti_sysbios_knl_Task_Instance_finalize__E( ti_sysbios_knl_Task_Object* , int );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Task_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Task_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Task_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_create( ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Task_construct( ti_sysbios_knl_Task_Struct *__obj, ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_knl_Task_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Task_delete(ti_sysbios_knl_Task_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Task_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Task_destruct(ti_sysbios_knl_Task_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Task_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Task_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Task_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Task_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* startup__E */


extern void ti_sysbios_knl_Task_startup__E( void );

/* enabled__E */


extern xdc_Bool ti_sysbios_knl_Task_enabled__E( void );

/* unlockSched__E */


extern void ti_sysbios_knl_Task_unlockSched__E( void );

/* disable__E */


extern xdc_UInt ti_sysbios_knl_Task_disable__E( void );

/* enable__E */


extern void ti_sysbios_knl_Task_enable__E( void );

/* restore__E */


extern void ti_sysbios_knl_Task_restore__E( xdc_UInt key );

/* restoreHwi__E */


extern void ti_sysbios_knl_Task_restoreHwi__E( xdc_UInt key );

/* self__E */


extern ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_self__E( void );

/* checkStacks__E */


extern void ti_sysbios_knl_Task_checkStacks__E( ti_sysbios_knl_Task_Handle oldTask, ti_sysbios_knl_Task_Handle newTask );

/* exit__E */


extern void ti_sysbios_knl_Task_exit__E( void );

/* sleep__E */


extern void ti_sysbios_knl_Task_sleep__E( xdc_UInt32 nticks );

/* yield__E */


extern void ti_sysbios_knl_Task_yield__E( void );

/* getIdleTask__E */


extern ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_getIdleTask__E( void );

/* getIdleTaskHandle__E */


extern ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_getIdleTaskHandle__E( xdc_UInt coreId );

/* startCore__E */


extern void ti_sysbios_knl_Task_startCore__E( xdc_UInt coreId );

/* getArg0__E */


extern xdc_UArg ti_sysbios_knl_Task_getArg0__E( ti_sysbios_knl_Task_Handle __inst );

/* getArg1__E */


extern xdc_UArg ti_sysbios_knl_Task_getArg1__E( ti_sysbios_knl_Task_Handle __inst );

/* getEnv__E */


extern xdc_Ptr ti_sysbios_knl_Task_getEnv__E( ti_sysbios_knl_Task_Handle __inst );

/* getFunc__E */


extern ti_sysbios_knl_Task_FuncPtr ti_sysbios_knl_Task_getFunc__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg *arg0, xdc_UArg *arg1 );

/* getHookContext__E */


extern xdc_Ptr ti_sysbios_knl_Task_getHookContext__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int id );

/* getPri__E */


extern xdc_Int ti_sysbios_knl_Task_getPri__E( ti_sysbios_knl_Task_Handle __inst );

/* setArg0__E */


extern void ti_sysbios_knl_Task_setArg0__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg arg );

/* setArg1__E */


extern void ti_sysbios_knl_Task_setArg1__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg arg );

/* setEnv__E */


extern void ti_sysbios_knl_Task_setEnv__E( ti_sysbios_knl_Task_Handle __inst, xdc_Ptr env );

/* setHookContext__E */


extern void ti_sysbios_knl_Task_setHookContext__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* setPri__E */


extern xdc_UInt ti_sysbios_knl_Task_setPri__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int newpri );

/* stat__E */


extern void ti_sysbios_knl_Task_stat__E( ti_sysbios_knl_Task_Handle __inst, ti_sysbios_knl_Task_Stat *statbuf );

/* getMode__E */


extern ti_sysbios_knl_Task_Mode ti_sysbios_knl_Task_getMode__E( ti_sysbios_knl_Task_Handle __inst );

/* setAffinity__E */


extern xdc_UInt ti_sysbios_knl_Task_setAffinity__E( ti_sysbios_knl_Task_Handle __inst, xdc_UInt coreId );

/* getAffinity__E */


extern xdc_UInt ti_sysbios_knl_Task_getAffinity__E( ti_sysbios_knl_Task_Handle __inst );

/* block__E */


extern void ti_sysbios_knl_Task_block__E( ti_sysbios_knl_Task_Handle __inst );

/* unblock__E */


extern void ti_sysbios_knl_Task_unblock__E( ti_sysbios_knl_Task_Handle __inst );

/* blockI__E */


extern void ti_sysbios_knl_Task_blockI__E( ti_sysbios_knl_Task_Handle __inst );

/* unblockI__E */


extern void ti_sysbios_knl_Task_unblockI__E( ti_sysbios_knl_Task_Handle __inst, xdc_UInt hwiKey );

/* schedule__I */


extern void ti_sysbios_knl_Task_schedule__I( void );

/* enter__I */


extern void ti_sysbios_knl_Task_enter__I( void );

/* sleepTimeout__I */


extern void ti_sysbios_knl_Task_sleepTimeout__I( xdc_UArg arg );

/* postInit__I */


extern xdc_Int ti_sysbios_knl_Task_postInit__I( ti_sysbios_knl_Task_Object *task, xdc_runtime_Error_Block *eb );

/* allBlockedFunction__I */


extern void ti_sysbios_knl_Task_allBlockedFunction__I( void );

/* deleteTerminatedTasksFunc__I */


extern void ti_sysbios_knl_Task_deleteTerminatedTasksFunc__I( void );

/* processVitalTaskFlag__I */


extern void ti_sysbios_knl_Task_processVitalTaskFlag__I( ti_sysbios_knl_Task_Object *task );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Task_Module__id ti_sysbios_knl_Task_Module_id( void ) 
{
    return ti_sysbios_knl_Task_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Task_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Task_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Task_Module_getMask( void ) 
{
    return ti_sysbios_knl_Task_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Task_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Task_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Task_Module__diagsMask__C != 0) *ti_sysbios_knl_Task_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Task_Params_init( ti_sysbios_knl_Task_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Task_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Task_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Task_Params_copy(ti_sysbios_knl_Task_Params *dst, const ti_sysbios_knl_Task_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Task_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Task_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_get(ti_sysbios_knl_Task_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_first( void )
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_next( ti_sysbios_knl_Task_Object *obj )
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Task_Handle_label( ti_sysbios_knl_Task_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Task_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Task_Handle_name( ti_sysbios_knl_Task_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Task_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_handle( ti_sysbios_knl_Task_Struct *str )
{
    return (ti_sysbios_knl_Task_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Task_Struct *ti_sysbios_knl_Task_struct( ti_sysbios_knl_Task_Handle inst )
{
    return (ti_sysbios_knl_Task_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task__epilogue.h"
/*
 * Copyright (c) 2012-2014, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */





/*
 *  ======== Task_selfMacro ========
 */



# 882 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 959 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 620 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 670 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 620 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 670 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 888 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 959 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Id_00 */


/* Id_01 */


/* Id_02 */


/* Id_03 */


/* Id_04 */


/* Id_05 */


/* Id_06 */


/* Id_07 */


/* Id_08 */


/* Id_09 */


/* Id_10 */


/* Id_11 */


/* Id_12 */


/* Id_13 */


/* Id_14 */


/* Id_15 */


/* Id_16 */


/* Id_17 */


/* Id_18 */


/* Id_19 */


/* Id_20 */


/* Id_21 */


/* Id_22 */


/* Id_23 */


/* Id_24 */


/* Id_25 */


/* Id_26 */


/* Id_27 */


/* Id_28 */


/* Id_29 */


/* Id_30 */


/* Id_31 */


/* Id_NONE */



/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* PendState */
enum ti_sysbios_knl_Event_PendState {
    ti_sysbios_knl_Event_PendState_TIMEOUT = 0,
    ti_sysbios_knl_Event_PendState_POSTED = 1,
    ti_sysbios_knl_Event_PendState_CLOCK_WAIT = 2,
    ti_sysbios_knl_Event_PendState_WAIT_FOREVER = 3
};
typedef enum ti_sysbios_knl_Event_PendState ti_sysbios_knl_Event_PendState;

/* PendElem */
struct ti_sysbios_knl_Event_PendElem {
    ti_sysbios_knl_Task_PendElem tpElem;
    ti_sysbios_knl_Event_PendState pendState;
    xdc_UInt matchingEvents;
    xdc_UInt andMask;
    xdc_UInt orMask;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Event_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Event_Module__diagsEnabled ti_sysbios_knl_Event_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Event_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Event_Module__diagsIncluded ti_sysbios_knl_Event_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Event_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Event_Module__diagsMask ti_sysbios_knl_Event_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Event_Module__gateObj;
extern  const CT__ti_sysbios_knl_Event_Module__gateObj ti_sysbios_knl_Event_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Event_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Event_Module__gatePrms ti_sysbios_knl_Event_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Event_Module__id;
extern  const CT__ti_sysbios_knl_Event_Module__id ti_sysbios_knl_Event_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Event_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Event_Module__loggerDefined ti_sysbios_knl_Event_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Event_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Event_Module__loggerObj ti_sysbios_knl_Event_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Event_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Event_Module__loggerFxn0 ti_sysbios_knl_Event_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Event_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Event_Module__loggerFxn1 ti_sysbios_knl_Event_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Event_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Event_Module__loggerFxn2 ti_sysbios_knl_Event_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Event_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Event_Module__loggerFxn4 ti_sysbios_knl_Event_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Event_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Event_Module__loggerFxn8 ti_sysbios_knl_Event_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Event_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Event_Module__startupDoneFxn ti_sysbios_knl_Event_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Event_Object__count;
extern  const CT__ti_sysbios_knl_Event_Object__count ti_sysbios_knl_Event_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Event_Object__heap;
extern  const CT__ti_sysbios_knl_Event_Object__heap ti_sysbios_knl_Event_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Event_Object__sizeof;
extern  const CT__ti_sysbios_knl_Event_Object__sizeof ti_sysbios_knl_Event_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Event_Object__table;
extern  const CT__ti_sysbios_knl_Event_Object__table ti_sysbios_knl_Event_Object__table__C;

/* LM_post */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Event_LM_post;
extern  const CT__ti_sysbios_knl_Event_LM_post ti_sysbios_knl_Event_LM_post__C;

/* LM_pend */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Event_LM_pend;
extern  const CT__ti_sysbios_knl_Event_LM_pend ti_sysbios_knl_Event_LM_pend__C;

/* A_nullEventMasks */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Event_A_nullEventMasks;
extern  const CT__ti_sysbios_knl_Event_A_nullEventMasks ti_sysbios_knl_Event_A_nullEventMasks__C;

/* A_nullEventId */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Event_A_nullEventId;
extern  const CT__ti_sysbios_knl_Event_A_nullEventId ti_sysbios_knl_Event_A_nullEventId__C;

/* A_eventInUse */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Event_A_eventInUse;
extern  const CT__ti_sysbios_knl_Event_A_eventInUse ti_sysbios_knl_Event_A_eventInUse__C;

/* A_badContext */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Event_A_badContext;
extern  const CT__ti_sysbios_knl_Event_A_badContext ti_sysbios_knl_Event_A_badContext__C;

/* A_pendTaskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Event_A_pendTaskDisabled;
extern  const CT__ti_sysbios_knl_Event_A_pendTaskDisabled ti_sysbios_knl_Event_A_pendTaskDisabled__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Event_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Event_Struct {
    volatile xdc_UInt __f0;
    ti_sysbios_knl_Queue_Struct __f1;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Instance_init__E */

extern void ti_sysbios_knl_Event_Instance_init__E(ti_sysbios_knl_Event_Object *, const ti_sysbios_knl_Event_Params *);

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Event_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Event_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Event_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Event_Handle ti_sysbios_knl_Event_create( const ti_sysbios_knl_Event_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Event_construct( ti_sysbios_knl_Event_Struct *__obj, const ti_sysbios_knl_Event_Params *__prms );

/* Object__delete__S */

extern void ti_sysbios_knl_Event_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Event_delete(ti_sysbios_knl_Event_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Event_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Event_destruct(ti_sysbios_knl_Event_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Event_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Event_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Event_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Event_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* pend__E */


extern xdc_UInt ti_sysbios_knl_Event_pend__E( ti_sysbios_knl_Event_Handle __inst, xdc_UInt andMask, xdc_UInt orMask, xdc_UInt32 timeout );

/* post__E */


extern void ti_sysbios_knl_Event_post__E( ti_sysbios_knl_Event_Handle __inst, xdc_UInt eventMask );

/* getPostedEvents__E */


extern xdc_UInt ti_sysbios_knl_Event_getPostedEvents__E( ti_sysbios_knl_Event_Handle __inst );

/* sync__E */


extern void ti_sysbios_knl_Event_sync__E( ti_sysbios_knl_Event_Handle __inst, xdc_UInt eventId, xdc_UInt count );

/* pendTimeout__I */


extern void ti_sysbios_knl_Event_pendTimeout__I( xdc_UArg arg );

/* checkEvents__I */


extern xdc_UInt ti_sysbios_knl_Event_checkEvents__I( ti_sysbios_knl_Event_Object *event, xdc_UInt andMask, xdc_UInt orMask );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Event_Module__id ti_sysbios_knl_Event_Module_id( void ) 
{
    return ti_sysbios_knl_Event_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Event_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Event_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Event_Module_getMask( void ) 
{
    return ti_sysbios_knl_Event_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Event_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Event_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Event_Module__diagsMask__C != 0) *ti_sysbios_knl_Event_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Event_Params_init( ti_sysbios_knl_Event_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Event_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Event_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Event_Params_copy(ti_sysbios_knl_Event_Params *dst, const ti_sysbios_knl_Event_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Event_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Event_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Event_Handle ti_sysbios_knl_Event_Object_get(ti_sysbios_knl_Event_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Event_Handle)ti_sysbios_knl_Event_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Event_Handle ti_sysbios_knl_Event_Object_first( void )
{
    return (ti_sysbios_knl_Event_Handle)ti_sysbios_knl_Event_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Event_Handle ti_sysbios_knl_Event_Object_next( ti_sysbios_knl_Event_Object *obj )
{
    return (ti_sysbios_knl_Event_Handle)ti_sysbios_knl_Event_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Event_Handle_label( ti_sysbios_knl_Event_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Event_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Event_Handle_name( ti_sysbios_knl_Event_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Event_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Event_Handle ti_sysbios_knl_Event_handle( ti_sysbios_knl_Event_Struct *str )
{
    return (ti_sysbios_knl_Event_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Event_Struct *ti_sysbios_knl_Event_struct( ti_sysbios_knl_Event_Handle inst )
{
    return (ti_sysbios_knl_Event_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event__epilogue.h"
/*
 * Copyright (c) 2012-2014, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */





# 75 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event__epilogue.h"

# 530 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 563 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Event.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Mode */
enum ti_sysbios_knl_Semaphore_Mode {
    ti_sysbios_knl_Semaphore_Mode_COUNTING = 0x0,
    ti_sysbios_knl_Semaphore_Mode_BINARY = 0x1,
    ti_sysbios_knl_Semaphore_Mode_COUNTING_PRIORITY = 0x2,
    ti_sysbios_knl_Semaphore_Mode_BINARY_PRIORITY = 0x3
};
typedef enum ti_sysbios_knl_Semaphore_Mode ti_sysbios_knl_Semaphore_Mode;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Semaphore_Args__create {
    xdc_Int count;
} ti_sysbios_knl_Semaphore_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* PendState */
enum ti_sysbios_knl_Semaphore_PendState {
    ti_sysbios_knl_Semaphore_PendState_TIMEOUT = 0,
    ti_sysbios_knl_Semaphore_PendState_POSTED = 1,
    ti_sysbios_knl_Semaphore_PendState_CLOCK_WAIT = 2,
    ti_sysbios_knl_Semaphore_PendState_WAIT_FOREVER = 3
};
typedef enum ti_sysbios_knl_Semaphore_PendState ti_sysbios_knl_Semaphore_PendState;

/* PendElem */
struct ti_sysbios_knl_Semaphore_PendElem {
    ti_sysbios_knl_Task_PendElem tpElem;
    ti_sysbios_knl_Semaphore_PendState pendState;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Semaphore_Module__diagsEnabled;
extern  const CT__ti_sysbios_knl_Semaphore_Module__diagsEnabled ti_sysbios_knl_Semaphore_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Semaphore_Module__diagsIncluded;
extern  const CT__ti_sysbios_knl_Semaphore_Module__diagsIncluded ti_sysbios_knl_Semaphore_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Semaphore_Module__diagsMask;
extern  const CT__ti_sysbios_knl_Semaphore_Module__diagsMask ti_sysbios_knl_Semaphore_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Semaphore_Module__gateObj;
extern  const CT__ti_sysbios_knl_Semaphore_Module__gateObj ti_sysbios_knl_Semaphore_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Semaphore_Module__gatePrms;
extern  const CT__ti_sysbios_knl_Semaphore_Module__gatePrms ti_sysbios_knl_Semaphore_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Semaphore_Module__id;
extern  const CT__ti_sysbios_knl_Semaphore_Module__id ti_sysbios_knl_Semaphore_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Semaphore_Module__loggerDefined;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerDefined ti_sysbios_knl_Semaphore_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Semaphore_Module__loggerObj;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerObj ti_sysbios_knl_Semaphore_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Semaphore_Module__loggerFxn0;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerFxn0 ti_sysbios_knl_Semaphore_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Semaphore_Module__loggerFxn1;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerFxn1 ti_sysbios_knl_Semaphore_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Semaphore_Module__loggerFxn2;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerFxn2 ti_sysbios_knl_Semaphore_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Semaphore_Module__loggerFxn4;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerFxn4 ti_sysbios_knl_Semaphore_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Semaphore_Module__loggerFxn8;
extern  const CT__ti_sysbios_knl_Semaphore_Module__loggerFxn8 ti_sysbios_knl_Semaphore_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Semaphore_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_knl_Semaphore_Module__startupDoneFxn ti_sysbios_knl_Semaphore_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Semaphore_Object__count;
extern  const CT__ti_sysbios_knl_Semaphore_Object__count ti_sysbios_knl_Semaphore_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Semaphore_Object__heap;
extern  const CT__ti_sysbios_knl_Semaphore_Object__heap ti_sysbios_knl_Semaphore_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Semaphore_Object__sizeof;
extern  const CT__ti_sysbios_knl_Semaphore_Object__sizeof ti_sysbios_knl_Semaphore_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Semaphore_Object__table;
extern  const CT__ti_sysbios_knl_Semaphore_Object__table ti_sysbios_knl_Semaphore_Object__table__C;

/* LM_post */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Semaphore_LM_post;
extern  const CT__ti_sysbios_knl_Semaphore_LM_post ti_sysbios_knl_Semaphore_LM_post__C;

/* LM_pend */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Semaphore_LM_pend;
extern  const CT__ti_sysbios_knl_Semaphore_LM_pend ti_sysbios_knl_Semaphore_LM_pend__C;

/* A_noEvents */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Semaphore_A_noEvents;
extern  const CT__ti_sysbios_knl_Semaphore_A_noEvents ti_sysbios_knl_Semaphore_A_noEvents__C;

/* A_invTimeout */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Semaphore_A_invTimeout;
extern  const CT__ti_sysbios_knl_Semaphore_A_invTimeout ti_sysbios_knl_Semaphore_A_invTimeout__C;

/* A_badContext */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Semaphore_A_badContext;
extern  const CT__ti_sysbios_knl_Semaphore_A_badContext ti_sysbios_knl_Semaphore_A_badContext__C;

/* A_overflow */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Semaphore_A_overflow;
extern  const CT__ti_sysbios_knl_Semaphore_A_overflow ti_sysbios_knl_Semaphore_A_overflow__C;

/* A_pendTaskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Semaphore_A_pendTaskDisabled;
extern  const CT__ti_sysbios_knl_Semaphore_A_pendTaskDisabled ti_sysbios_knl_Semaphore_A_pendTaskDisabled__C;

/* supportsEvents */




typedef xdc_Bool CT__ti_sysbios_knl_Semaphore_supportsEvents;
extern  const CT__ti_sysbios_knl_Semaphore_supportsEvents ti_sysbios_knl_Semaphore_supportsEvents__C;


/* supportsPriority */




typedef xdc_Bool CT__ti_sysbios_knl_Semaphore_supportsPriority;
extern  const CT__ti_sysbios_knl_Semaphore_supportsPriority ti_sysbios_knl_Semaphore_supportsPriority__C;


/* eventPost */

typedef void (*CT__ti_sysbios_knl_Semaphore_eventPost)(ti_sysbios_knl_Event_Handle, xdc_UInt);
extern  const CT__ti_sysbios_knl_Semaphore_eventPost ti_sysbios_knl_Semaphore_eventPost__C;

/* eventSync */

typedef void (*CT__ti_sysbios_knl_Semaphore_eventSync)(ti_sysbios_knl_Event_Handle, xdc_UInt, xdc_UInt);
extern  const CT__ti_sysbios_knl_Semaphore_eventSync ti_sysbios_knl_Semaphore_eventSync__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Semaphore_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_knl_Event_Handle event;
    xdc_UInt eventId;
    ti_sysbios_knl_Semaphore_Mode mode;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Semaphore_Struct {
    ti_sysbios_knl_Event_Handle __f0;
    xdc_UInt __f1;
    ti_sysbios_knl_Semaphore_Mode __f2;
    volatile xdc_UInt16 __f3;
    ti_sysbios_knl_Queue_Struct __f4;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Instance_init__E */

extern void ti_sysbios_knl_Semaphore_Instance_init__E(ti_sysbios_knl_Semaphore_Object *, xdc_Int count, const ti_sysbios_knl_Semaphore_Params *);

/* Instance_finalize__E */

extern void ti_sysbios_knl_Semaphore_Instance_finalize__E( ti_sysbios_knl_Semaphore_Object* );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_knl_Semaphore_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_knl_Semaphore_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_knl_Semaphore_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_knl_Semaphore_Handle ti_sysbios_knl_Semaphore_create( xdc_Int count, const ti_sysbios_knl_Semaphore_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_knl_Semaphore_construct( ti_sysbios_knl_Semaphore_Struct *__obj, xdc_Int count, const ti_sysbios_knl_Semaphore_Params *__prms );

/* Object__delete__S */

extern void ti_sysbios_knl_Semaphore_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_knl_Semaphore_delete(ti_sysbios_knl_Semaphore_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_knl_Semaphore_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_knl_Semaphore_destruct(ti_sysbios_knl_Semaphore_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_knl_Semaphore_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_knl_Semaphore_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_knl_Semaphore_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_knl_Semaphore_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getCount__E */


extern xdc_Int ti_sysbios_knl_Semaphore_getCount__E( ti_sysbios_knl_Semaphore_Handle __inst );

/* pend__E */


extern xdc_Bool ti_sysbios_knl_Semaphore_pend__E( ti_sysbios_knl_Semaphore_Handle __inst, xdc_UInt32 timeout );

/* post__E */


extern void ti_sysbios_knl_Semaphore_post__E( ti_sysbios_knl_Semaphore_Handle __inst );

/* registerEvent__E */


extern void ti_sysbios_knl_Semaphore_registerEvent__E( ti_sysbios_knl_Semaphore_Handle __inst, ti_sysbios_knl_Event_Handle event, xdc_UInt eventId );

/* reset__E */


extern void ti_sysbios_knl_Semaphore_reset__E( ti_sysbios_knl_Semaphore_Handle __inst, xdc_Int count );

/* pendTimeout__I */


extern void ti_sysbios_knl_Semaphore_pendTimeout__I( xdc_UArg arg );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Semaphore_Module__id ti_sysbios_knl_Semaphore_Module_id( void ) 
{
    return ti_sysbios_knl_Semaphore_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Semaphore_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Semaphore_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Semaphore_Module_getMask( void ) 
{
    return ti_sysbios_knl_Semaphore_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Semaphore_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Semaphore_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Semaphore_Module__diagsMask__C != 0) *ti_sysbios_knl_Semaphore_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Semaphore_Params_init( ti_sysbios_knl_Semaphore_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Semaphore_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Semaphore_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Semaphore_Params_copy(ti_sysbios_knl_Semaphore_Params *dst, const ti_sysbios_knl_Semaphore_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Semaphore_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Semaphore_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Semaphore_Handle ti_sysbios_knl_Semaphore_Object_get(ti_sysbios_knl_Semaphore_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Semaphore_Handle)ti_sysbios_knl_Semaphore_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Semaphore_Handle ti_sysbios_knl_Semaphore_Object_first( void )
{
    return (ti_sysbios_knl_Semaphore_Handle)ti_sysbios_knl_Semaphore_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Semaphore_Handle ti_sysbios_knl_Semaphore_Object_next( ti_sysbios_knl_Semaphore_Object *obj )
{
    return (ti_sysbios_knl_Semaphore_Handle)ti_sysbios_knl_Semaphore_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Semaphore_Handle_label( ti_sysbios_knl_Semaphore_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Semaphore_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Semaphore_Handle_name( ti_sysbios_knl_Semaphore_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Semaphore_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Semaphore_Handle ti_sysbios_knl_Semaphore_handle( ti_sysbios_knl_Semaphore_Struct *str )
{
    return (ti_sysbios_knl_Semaphore_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Semaphore_Struct *ti_sysbios_knl_Semaphore_struct( ti_sysbios_knl_Semaphore_Handle inst )
{
    return (ti_sysbios_knl_Semaphore_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 520 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 593 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"

# 129 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/spi/SPITivaDMA.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 1162 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 131 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/spi/SPITivaDMA.h"

/**
 *  @addtogroup SPI_STATUS
 *  SPITivaDMA_STATUS_* macros are command codes only defined in the
 *  SPITivaDMA.h driver implementation and need to:
 *  @code
 *  #include <ti/drivers/spi/SPITivaDMA.h>
 *  @endcode
 *  @{
 */

/* Add SPITivaDMA_STATUS_* macros here */

/** @}*/

/**
 *  @addtogroup SPI_CMD
 *  SPITivaDMA_CMD_* macros are command codes only defined in the
 *  SPITivaDMA.h driver implementation and need to:
 *  @code
 *  #include <ti/drivers/spi/SPITivaDMA.h>
 *  @endcode
 *  @{
 */

/* Add SPITivaDMA_CMD_* macros here */

/** @}*/


/* c99 types required by TivaWare */

typedef uint32_t            SPIBaseAddrType;
typedef uint32_t            SPIDataType;





/* SPI function table pointer */
extern const SPI_FxnTable SPITivaDMA_fxnTable;

/*!
 *  @brief
 *  SPITivaDMA data frame size is used to determine how to configure the
 *  DMA data transfers. This field is to be only used internally.
 *
 *  SPITivaDMA_8bit:  txBuf and rxBuf are arrays of uint8_t elements
 *  SPITivaDMA_16bit: txBuf and rxBuf are arrays of uint16_t elements
 */
typedef enum SPITivaDMA_FrameSize {
    SPITivaDMA_8bit  = 0,
    SPITivaDMA_16bit = 1
} SPITivaDMA_FrameSize;

/*!
 *  @brief  SPITivaDMA Hardware attributes
 *
 *  These fields, with the exception of intPriority,
 *  are used by driverlib APIs and therefore must be populated by
 *  driverlib macro definitions. For TivaWare these definitions are found in:
 *      - inc/hw_memmap.h
 *      - inc/hw_ints.h
 *      - driverlib/udma.h
 *
 *  intPriority is the SPI peripheral's interrupt priority, as defined by the
 *  underlying OS.  It is passed unmodified to the underlying OS's interrupt
 *  handler creation code, so you need to refer to the OS documentation
 *  for usage.  For example, for SYS/BIOS applications, refer to the
 *  ti.sysbios.family.arm.m3.Hwi documentation for SYS/BIOS usage of
 *  interrupt priorities.  If the driver uses the ti.drivers.ports interface
 *  instead of making OS calls directly, then the HwiP port handles the
 *  interrupt priority in an OS specific way.  In the case of the SYS/BIOS
 *  port, intPriority is passed unmodified to Hwi_create().
 *
 *  A sample structure is shown below:
 *  @code
 *  uint32_t spiTivaDMAscratchBuf;
 *  const SPITivaDMA_HWAttrs spiTivaDMAobjects[] = {
 *      {
 *          .baseAddr = SSI0_BASE,
 *          .intNum = INT_SSI0,
 *          .intPriority = (~0),
 *          .scratchBufPtr = &spiTivaDMAscratchBuf,
 *          .defaultTxBufValue = 0,
 *          .rxChannelIndex = UDMA_CHANNEL_SSI0RX,
 *          .txChannelIndex = UDMA_CHANNEL_SSI0TX,
 *          .channelMappingFxn = uDMAChannelAssign,
 *          .rxChannelMappingFxnArg = UDMA_CH10_SSI0RX,
 *          .txChannelMappingFxnArg = UDMA_CH11_SSI0TX
 *      },
 *  };
 *  @endcode
 */
typedef struct SPITivaDMA_HWAttrs {
    /*! SSI Peripheral's base address */
    SPIBaseAddrType   baseAddr;
    /*! SSI TivaDMA Peripheral's interrupt vector */
    unsigned int      intNum;

    /*! SPITivaDMA Peripheral's interrupt priority */
    uint32_t          intPriority;

    /*! Address of a scratch buffer of size uint32_t */
    uint32_t         *scratchBufPtr;
    /*! Default TX value if txBuf == NULL */
    uint32_t          defaultTxBufValue;
    /*! uDMA controlTable channel index */
    uint32_t          rxChannelIndex;
    /*! uDMA controlTable channel index */
    uint32_t          txChannelIndex;

    /*! uDMA mapping function that maps the SPI trigger to the DMA channel */
    void  (*channelMappingFxn)(SPIDataType);
    /*! uDMA MappingFxn arg to map the Tx channel */
    uint32_t          rxChannelMappingFxnArg;
    /*! uDMA MappingFxn arg to map the Rx channel */
    uint32_t          txChannelMappingFxnArg;
} SPITivaDMA_HWAttrs;

/*!
 *  @brief  SPITivaDMA Object
 *
 *  The application must not access any member variables of this structure!
 */
typedef struct SPITivaDMA_Object {
    ti_sysbios_knl_Semaphore_Struct      transferComplete;    /* Notify finished SPITivaDMA transfer */
    ti_sysbios_family_arm_m3_Hwi_Struct hwi;   /* Hwi object handle */

    SPI_TransferMode      transferMode;        /* SPITivaDMA transfer mode */
    SPI_CallbackFxn       transferCallbackFxn; /* Callback fxn in CALLBACK mode */
    uint32_t              transferTimeout;     /* Transfer timeout in system ticks */

    SPI_Transaction      *transaction;         /* void * to the current transaction*/

    SPITivaDMA_FrameSize  frameSize;           /* Data frame size variable */

    _Bool                  isOpen;              /* flag to indicate module is open */
} SPITivaDMA_Object, *SPITivaDMA_Handle;

/* Do not interfere with the app if they include the family Hwi module */






# 65 "../source/config/serialConfig.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/i2c/I2CTiva.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       I2CTiva.h
 *
 *  @brief      I2C driver implementation for a Tiva I2C controller.
 *
 *  The I2C header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/I2C.h>
 *  #include <ti/drivers/i2c/I2CTiva.h>
 *  @endcode
 *
 *  Refer to @ref I2C.h for a complete description of APIs & example of use.
 *
 *  ============================================================================
 */








# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/I2C.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       I2C.h
 *
 *  @brief      I2C driver interface
 *
 *  The I2C header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/I2C.h>
 *  @endcode
 *
 *  # Operation #
 *  The I2C driver operates as a master on a single-master I2C bus in either
 *  I2C_MODE_BLOCKING or I2C_MODE_CALLBACK.
 *  In blocking mode, the task's execution is blocked during the I2C
 *  transaction. When the transfer has completed, code execution will resume.
 *  In callback mode, the task's execution is not blocked, allowing for other
 *  transactions to be queued up or to process some other code. When the
 *  transfer has completed, the I2C driver will call a user-specified callback
 *  function (from a HWI or SWI context, depending on the device).
 *
 *  The APIs in this driver serve as an interface to a typical TI-RTOS
 *  application. The specific peripheral implementations are responsible to
 *  create all the SYS/BIOS specific primitives to allow for thread-safe
 *  operation.
 *
 *  ## Opening the driver #
 *
 *  @code
 *  I2C_Handle      handle;
 *  I2C_Params      params;
 *  I2C_Transaction i2cTransaction;
 *
 *  I2C_Params_init(&params);
 *  params.transferMode  = I2C_MODE_CALLBACK;
 *  params.transferCallbackFxn = someI2CCallbackFunction;
 *  handle = I2C_open(someI2C_configIndexValue, &params);
 *  if (!handle) {
 *      System_printf("I2C did not open");
 *  }
 *  @endcode
 *
 *  ## Transferring data #
 *  A I2C transaction with a I2C peripheral is started by calling
 *  I2C_transfer(). The details of the I2C transaction is specified with a
 *  I2C_Transaction data structure. This structure allows for any of the three
 *  types of transactions: Write, Read, or Write/Read. Each transfer is
 *  performed atomically with the I2C slave peripheral.
 *
 *  @code
 *  I2C_Transaction i2cTransaction;
 *
 *  i2cTransaction.writeBuf = someWriteBuffer;
 *  i2cTransaction.writeCount = numOfBytesToWrite;
 *
 *  i2cTransaction.readBuf = someReadBuffer;
 *  i2cTransaction.readCount = numOfBytesToRead;
 *
 *  i2cTransaction.slaveAddress = some7BitI2CSlaveAddress;
 *
 *  ret = I2C_transfer(handle, &i2cTransaction);
 *  if (!ret) {
 *      System_printf("Unsuccessful I2C transfer");
 *  }
 *  @endcode
 *
 *  # Implementation #
 *
 *  This module serves as the main interface for TI-RTOS
 *  applications. Its purpose is to redirect the module's APIs to specific
 *  peripheral implementations which are specified using a pointer to a
 *  I2C_FxnTable.
 *
 *  The I2C driver interface module is joined (at link time) to a
 *  NULL-terminated array of I2C_Config data structures named *I2C_config*.
 *  *I2C_config* is implemented in the application with each entry being an
 *  instance of a I2C peripheral. Each entry in *I2C_config* contains a:
 *  - (I2C_FxnTable *) to a set of functions that implement a I2C peripheral
 *  - (void *) data object that is associated with the I2C_FxnTable
 *  - (void *) hardware attributes that are associated to the I2C_FxnTable
 *
 *  # Instrumentation #
 *  The I2C driver interface produces log statements if instrumentation is
 *  enabled.
 *
 *  Diagnostics Mask | Log details |
 *  ---------------- | ----------- |
 *  Diags_USER1      | basic operations performed |
 *  Diags_USER2      | detailed operations performed |
 *
 *  ============================================================================
 */












/**
 *  @defgroup I2C_CONTROL I2C_control command and status codes
 *  These I2C macros are reservations for I2C.h
 *  @{
 */

/*!
 * Common I2C_control command code reservation offset.
 * I2C driver implementations should offset command codes with I2C_CMD_RESERVED
 * growing positively
 *
 * Example implementation specific command codes:
 * @code
 * #define I2CXYZ_CMD_COMMAND0      I2C_CMD_RESERVED + 0
 * #define I2CXYZ_CMD_COMMAND1      I2C_CMD_RESERVED + 1
 * @endcode
 */


/*!
 * Common I2C_control status code reservation offset.
 * I2C driver implementations should offset status codes with
 * I2C_STATUS_RESERVED growing negatively.
 *
 * Example implementation specific status codes:
 * @code
 * #define I2CXYZ_STATUS_ERROR0     I2C_STATUS_RESERVED - 0
 * #define I2CXYZ_STATUS_ERROR1     I2C_STATUS_RESERVED - 1
 * #define I2CXYZ_STATUS_ERROR2     I2C_STATUS_RESERVED - 2
 * @endcode
 */


/**
 *  @defgroup I2C_STATUS Status Codes
 *  I2C_STATUS_* macros are general status codes returned by I2C_control()
 *  @{
 *  @ingroup I2C_CONTROL
 */

/*!
 * @brief   Successful status code returned by I2C_control().
 *
 * I2C_control() returns I2C_STATUS_SUCCESS if the control code was executed
 * successfully.
 */


/*!
 * @brief   Generic error status code returned by I2C_control().
 *
 * I2C_control() returns I2C_STATUS_ERROR if the control code was not executed
 * successfully.
 */


/*!
 * @brief   An error status code returned by I2C_control() for undefined
 * command codes.
 *
 * I2C_control() returns I2C_STATUS_UNDEFINEDCMD if the control code is not
 * recognized by the driver implementation.
 */

/** @}*/

/**
 *  @defgroup I2C_CMD Command Codes
 *  I2C_CMD_* macros are general command codes for I2C_control(). Not all I2C
 *  driver implementations support these command codes.
 *  @{
 *  @ingroup I2C_CONTROL
 */

/* Add I2C_CMD_<commands> here */

/** @}*/

/** @}*/

/*!
 *  @brief      A handle that is returned from a I2C_open() call.
 */
typedef struct I2C_Config      *I2C_Handle;

/*!
 *  @brief  I2C transaction
 *
 *  This structure defines the nature of the I2C transaction. This structure
 *  specifies the buffer and buffer's size that is to be written to or read from
 *  the I2C slave peripheral.
 *  arg is an optional user supplied argument that will be passed
 *  to the callback function when the I2C driver is in I2C_MODE_CALLBACK.
 *  nextPtr is to be only used by the I2C driver.
 */
typedef struct I2C_Transaction {
    void    *writeBuf;    /*!< buffer containing data to be written */
    size_t  writeCount;   /*!< Number of bytes to be written to the slave */

    void    *readBuf;     /*!< buffer to which data is to be read into */
    size_t  readCount;    /*!< Number of bytes to be read from the slave */

    unsigned char slaveAddress; /*!< Address of the I2C slave device */

    void    *arg;         /*!< argument to be passed to the callback function */
    void    *nextPtr;     /*!< used for queuing in I2C_MODE_CALLBACK mode */
} I2C_Transaction;

/*!
 *  @brief  I2C transfer mode
 *
 *  I2C_MODE_BLOCKING block task execution while a I2C transfer is in progress
 *  I2C_MODE_CALLBACK does not block task execution; but calls a callback
 *  function when the I2C transfer has completed
 */
typedef enum I2C_TransferMode {
    I2C_MODE_BLOCKING,  /*!< I2C_transfer blocks execution*/
    I2C_MODE_CALLBACK   /*!< I2C_transfer queues transactions and does not block */
} I2C_TransferMode;

/*!
 *  @brief  I2C callback function
 *
 *  User definable callback function prototype. The I2C driver will call the
 *  defined function and pass in the I2C driver's handle, the pointer to the I2C
 *  transaction that just completed, and the return value of I2C_transfer.
 *
 *  @param  I2C_Handle          I2C_Handle

 *  @param  I2C_Transaction*    Address of the I2C_Transaction performed

 *  @param  bool                Results of the I2C transaction
 */
typedef void (*I2C_CallbackFxn)(I2C_Handle, I2C_Transaction *, _Bool);

/*!
 *  @brief  I2C bitRate
 *
 *  Specify one of the standardized I2C bus bit rates for I2C communications.
 *  The default is I2C_100kHz.
 */
typedef enum I2C_BitRate {
    I2C_100kHz = 0,
    I2C_400kHz = 1
} I2C_BitRate;

/*!
 *  @brief  I2C Parameters
 *
 *  I2C parameters are used to with the I2C_open() call. Default values for
 *  these parameters are set using I2C_Params_init().
 *
 *  If I2C_TransferMode is set to I2C_MODE_BLOCKING then I2C_transfer function
 *  calls will block thread execution until the transaction has completed.
 *
 *  If I2C_TransferMode is set to I2C_MODE_CALLBACK then I2C_transfer will not
 *  block thread execution and it will call the function specified by
 *  transferCallbackFxn. Sequential calls to I2C_transfer in I2C_MODE_CALLBACK
 *  mode will put the designated transaction onto an internal queue that
 *  automatically starts queued transactions after the previous transaction has
 *  completed. (regardless of error state).
 *
 *  I2C_BitRate specifies the I2C bus rate used for I2C communications.
 *
 *  @sa     I2C_Params_init()
 */
typedef struct I2C_Params {
    I2C_TransferMode    transferMode; /*!< Blocking or Callback mode */
    I2C_CallbackFxn     transferCallbackFxn; /*!< Callback function pointer */
    I2C_BitRate         bitRate; /*!< I2C bus bit rate */
    uintptr_t           custom;  /*!< Custom argument used by driver
                                      implementation */
} I2C_Params;

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_close().
 */
typedef void        (*I2C_CloseFxn)    (I2C_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_control().
 */
typedef int         (*I2C_ControlFxn)  (I2C_Handle handle,
                                        unsigned int cmd,
                                        void *arg);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_init().
 */
typedef void        (*I2C_InitFxn)     (I2C_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_open().
 */
typedef I2C_Handle  (*I2C_OpenFxn)     (I2C_Handle handle,
                                        I2C_Params *params);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_transfer().
 */
typedef _Bool        (*I2C_TransferFxn) (I2C_Handle handle,
                                        I2C_Transaction *transaction);

/*!
 *  @brief      The definition of a I2C function table that contains the
 *              required set of functions to control a specific I2C driver
 *              implementation.
 */
typedef struct I2C_FxnTable {
    /*! Function to close the specified peripheral */
    I2C_CloseFxn        closeFxn;

    /*! Function to implementation specific control function */
    I2C_ControlFxn      controlFxn;

    /*! Function to initialize the given data object */
    I2C_InitFxn         initFxn;

    /*! Function to open the specified peripheral */
    I2C_OpenFxn         openFxn;

    /*! Function to initiate a I2C data transfer */
    I2C_TransferFxn     transferFxn;
} I2C_FxnTable;

/*!
 *  @brief  I2C Global configuration
 *
 *  The I2C_Config structure contains a set of pointers used to characterize
 *  the I2C driver implementation.
 *
 *  This structure needs to be defined before calling I2C_init() and it must
 *  not be changed thereafter.
 *
 *  @sa     I2C_init()
 */
typedef struct I2C_Config {
    /*! Pointer to a table of driver-specific implementations of I2C APIs */
    I2C_FxnTable const *fxnTablePtr;

    /*! Pointer to a driver specific data object */
    void               *object;

    /*! Pointer to a driver specific hardware attributes structure */
    void         const *hwAttrs;
} I2C_Config;


/*!
 *  @brief  Function to close a I2C peripheral specified by the I2C handle
 *
 *  @pre    I2C_open() had to be called first.
 *
 *  @param  handle  A I2C_Handle returned from I2C_open
 *
 *  @sa     I2C_open()
 */
extern void I2C_close(I2C_Handle handle);

/*!
 *  @brief  Function performs implementation specific features on a given
 *          I2C_Handle.
 *
 *  Commands for I2C_control can originate from I2C.h or from implementation
 *  specific I2C*.h (_I2CCC26XX.h_, _I2CTiva.h_, etc.. ) files.
 *  While commands from I2C.h are API portable across driver implementations,
 *  not all implementations may support all these commands.
 *  Conversely, commands from driver implementation specific I2C*.h files add
 *  unique driver capabilities but are not API portable across all I2C driver
 *  implementations.
 *
 *  Commands supported by I2C.h follow a I2C_CMD_\<cmd\> naming
 *  convention.<br>
 *  Commands supported by I2C*.h follow a I2C*_CMD_\<cmd\> naming
 *  convention.<br>
 *  Each control command defines @b arg differently. The types of @b arg are
 *  documented with each command.
 *
 *  See @ref I2C_CMD "I2C_control command codes" for command codes.
 *
 *  See @ref I2C_STATUS "I2C_control return status codes" for status codes.
 *
 *  @pre    I2C_open() has to be called first.
 *
 *  @param  handle      A I2C handle returned from I2C_open()
 *
 *  @param  cmd         I2C.h or I2C*.h commands.
 *
 *  @param  arg         An optional R/W (read/write) command argument
 *                      accompanied with cmd
 *
 *  @return Implementation specific return codes. Negative values indicate
 *          unsuccessful operations.
 *
 *  @sa     I2C_open()
 */
extern int I2C_control(I2C_Handle handle, unsigned int cmd, void *arg);

/*!
 *  @brief  Function to initializes the I2C module
 *
 *  @pre    The I2C_config structure must exist and be persistent before this
 *          function can be called. This function must also be called before
 *          any other I2C driver APIs. This function call does not modify any
 *          peripheral registers.
 */
extern void I2C_init(void);

/*!
 *  @brief  Function to initialize a given I2C peripheral specified by the
 *          particular index value. The parameter specifies which mode the I2C
 *          will operate.
 *
 *  @pre    I2C controller has been initialized
 *
 *  @param  index         Logical peripheral number for the I2C indexed into
 *                        the I2C_config table
 *
 *  @param  params        Pointer to an parameter block, if NULL it will use
 *                        default values. All the fields in this structure are
 *                        RO (read-only).
 *
 *  @return A I2C_Handle on success or a NULL on an error or if it has been
 *          opened already.
 *
 *  @sa     I2C_init()
 *  @sa     I2C_close()
 */
extern I2C_Handle I2C_open(unsigned int index, I2C_Params *params);

/*!
 *  @brief  Function to initialize the I2C_Params struct to its defaults
 *
 *  @param  params      An pointer to I2C_Params structure for
 *                      initialization
 *
 *  Defaults values are:
 *      transferMode = I2C_MODE_BLOCKING
 *      transferCallbackFxn = NULL
 *      bitRate = I2C_100kHz
 */
extern void I2C_Params_init(I2C_Params *params);

/*!
 *  @brief  Function to perform an I2C transaction with an I2C slave peripheral.
 *
 *  This function will start a I2C transfer and can only be called from a Task
 *  context when in I2C_MODE_BLOCKING.
 *  The I2C transfer procedure starts with evaluating how many bytes are to be
 *  written and how many are to be read from the I2C peripheral. Due to common
 *  I2C data transfer processes, to be written will always sent before any data
 *  is read.
 *
 *  The data written to the peripheral is preceded with the peripheral's 7-bit
 *  I2C slave address (with the Write bit set).
 *  After all the data has been transmitted, the driver will evaluate if any
 *  data needs to be read from the device.
 *  If so, a Re-START bit is sent, along with the same 7-bit I2C slave address
 *  (with the Read bit). Else, the transfer is concluded with a STOP bit.
 *  After the specified number of bytes have been read by the I2C, the transfer
 *  is ended with a NACK and STOP bit.
 *
 *  In I2C_MODE_BLOCKING, I2C_transfer will block task execution until the
 *  transaction has completed.
 *
 *  In I2C_MODE_CALLBACK, I2C_transfer does not block task execution and calls a
 *  callback function specified by transferCallbackFxn when the transfer
 *  completed. Success or failure of the transaction is determined via the
 *  callback function's bool argument. If a transfer is already taking place,
 *  the transaction is put on an internal queue. The queue is serviced in a
 *  first come first served basis.
 *  The I2C_Transaction structure must stay persistent until the I2C_transfer
 *  function has completed!
 *
 *  @param  handle      A I2C_Handle
 *
 *  @param  transaction A pointer to a I2C_Transaction. All of the fields within
 *                      transaction are WO (write-only) unless otherwise noted
 *                      in the driver implementations.
 *
 *  @return In I2C_MODE_BLOCKING: true on successful transfer; false on an
 *          error, such as an I2C bus fault (NACK).
 *          In I2C_MODE_CALLBACK: always true. The transferCallbackFxn's bool
 *          argument will be true if successful; false on an error, such as an
 *          I2C bus fault (NACK).
 *
 *  @sa     I2C_open
 */
extern _Bool I2C_transfer(I2C_Handle handle, I2C_Transaction *transaction);





# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/i2c/I2CTiva.h"

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 490 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 520 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/i2c/I2CTiva.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 1162 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/i2c/I2CTiva.h"

/**
 *  @addtogroup I2C_STATUS
 *  I2CTiva_STATUS_* macros are command codes only defined in the
 *  I2CTiva.h driver implementation and need to:
 *  @code
 *  #include <ti/drivers/i2c/I2CTiva.h>
 *  @endcode
 *  @{
 */

/* Add I2CTiva_STATUS_* macros here */

/** @}*/

/**
 *  @addtogroup I2C_CMD
 *  I2CTiva_CMD_* macros are command codes only defined in the
 *  I2CTiva.h driver implementation and need to:
 *  @code
 *  #include <ti/drivers/i2c/I2CTiva.h>
 *  @endcode
 *  @{
 */

/* Add I2CTiva_CMD_* macros here */

/** @}*/

/* I2C function table pointer */
extern const I2C_FxnTable I2CTiva_fxnTable;

/*!
 *  @brief  I2CTiva mode
 *
 *  This enum defines the state of the I2C driver's state-machine. Do not
 *  modify.
 */
typedef enum I2CTiva_Mode {
    I2CTiva_IDLE_MODE = 0,  /* I2C is not performing a transaction */
    I2CTiva_WRITE_MODE,     /* I2C is currently performing write operations */
    I2CTiva_READ_MODE,      /* I2C is currently performing read operations */
    I2CTiva_ERROR = 0xFF    /* I2C error has occurred, exit gracefully */
} I2CTiva_Mode;

/*!
 *  @brief  I2CTiva Hardware attributes
 *
 *  The baseAddr and intNum fields are used by driverlib APIs and therefore must
 *  be populated by driverlib macro definitions. For TivaWare these definitions
 *  are found in:
 *      - inc/hw_memmap.h
 *      - inc/hw_ints.h
 *
 *  intPriority is the I2C peripheral's interrupt priority, as defined by the
 *  underlying OS.  It is passed unmodified to the underlying OS's interrupt
 *  handler creation code, so you need to refer to the OS documentation
 *  for usage.  For example, for SYS/BIOS applications, refer to the
 *  ti.sysbios.family.arm.m3.Hwi documentation for SYS/BIOS usage of
 *  interrupt priorities.  If the driver uses the ti.drivers.ports interface
 *  instead of making OS calls directly, then the HwiP port handles the
 *  interrupt priority in an OS specific way.  In the case of the SYS/BIOS
 *  port, intPriority is passed unmodified to Hwi_create().
 *
 *  A sample structure is shown below:
 *  @code
 *  const I2CTiva_HWAttrs i2cTivaHWAttrs[] = {
 *      {
 *          .baseAddr = I2C1_BASE,
 *          .intNum = INT_I2C1,
 *          .intPriority = (~0)
 *      },
 *      {
 *          .baseAddr = I2C3_BASE,
 *          .intNum = INT_I2C3,
 *          .intPriority = (~0)
 *      },
 *  };
 *  @endcode
 */
typedef struct I2CTiva_HWAttrs {
    /*! I2C Peripheral's base address */
    unsigned int baseAddr;
    /*! I2C Peripheral's interrupt vector */
    unsigned int intNum;
    /*! I2C Peripheral's interrupt priority */
    unsigned int intPriority;
} I2CTiva_HWAttrs;

/*!
 *  @brief  I2CTiva Object
 *
 *  The application must not access any member variables of this structure!
 */
typedef struct I2CTiva_Object {
    ti_sysbios_knl_Semaphore_Struct    mutex;            /* Grants exclusive access to I2C */
    ti_sysbios_knl_Semaphore_Struct    transferComplete; /* Notify finished I2C transfer */

    I2C_TransferMode    transferMode;        /* Blocking or Callback mode */
    I2C_CallbackFxn     transferCallbackFxn; /* Callback function pointer */

    ti_sysbios_family_arm_m3_Hwi_Struct hwi;  /* Hwi object handle */

    volatile I2CTiva_Mode mode;         /* Stores the I2C state */

    I2C_Transaction    *currentTransaction; /* Pointer to current I2C transaction */

    uint8_t            *writeBufIdx;    /* Internal inc. writeBuf index */
    size_t              writeCountIdx;  /* Internal dec. writeCounter */

    uint8_t            *readBufIdx;     /* Internal inc. readBuf index */
    size_t              readCountIdx;   /* Internal dec. readCounter */

    /* I2C transaction pointers for I2C_MODE_CALLBACK */
    I2C_Transaction    *headPtr;        /* Head ptr for queued transactions */
    I2C_Transaction    *tailPtr;        /* Tail ptr for queued transactions */

    _Bool                isOpen;         /* flag to indicate module is open */
} I2CTiva_Object;

/* Do not interfere with the app if they include the family Hwi module */






# 66 "../source/config/serialConfig.c"
# 1 "..\\source\\config\\../defs.h"
/*
 * defs.h
 *
 *  Created on: Aug 16, 2020
 *      Author: Dan
 */




# 1 "..\\source\\config\\..\\utils/ioDefs.h"



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 6 "..\\source\\config\\..\\utils/ioDefs.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 426 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 516 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 7 "..\\source\\config\\..\\utils/ioDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 1162 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 8 "..\\source\\config\\..\\utils/ioDefs.h"













//AD0, AD1 (AD0 is MSB)














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

typedef union SegState
{
    struct
    { //right ordering for io driver
        uint16_t a :2;
        uint16_t b :2;
        uint16_t extra :2;
        uint16_t c :2;
        uint16_t d :2;
        uint16_t e :2;
        uint16_t g :2;
        uint16_t f :2;
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
extern const SegState segValOff;

extern const SegState segValShowExtra;
extern const SegState segValHideExtra;

extern const SegState segValAOnly;
extern const SegState segValBOnly;
extern const SegState segValCOnly;
extern const SegState segValDOnly;
extern const SegState segValEOnly;
extern const SegState segValFOnly;
extern const SegState segValGOnly;

//if any conflict or brake, do coast
SegState unionSeg(SegState s0, SegState s1);

//Return new state or 0 if new state is the same is old. Does not care if anything is set to brake. Only periodically do a full set, usually just delta segments
SegState subtractSeg(SegState newState, SegState oldState);

//set state then turn off after delayms
_Bool applySegState(uint8_t slaveAddress, SegState state, uint32_t onTimeMs);
_Bool applySegDelta(uint8_t slaveAddress, SegState oldState, SegState newState,
                   uint32_t onTimeMs);

# 12 "..\\source\\config\\../defs.h"






# 67 "../source/config/serialConfig.c"
# 1 "..\\source\\config\\../ioDriver.h"
/*
 * ioDriver.h
 *
 *  Created on: Aug 21, 2020
 *      Author: Dan
 */




# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 490 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 520 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Semaphore.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 14 "..\\source\\config\\../ioDriver.h"
# 1 "..\\source\\config\\..\\dtc.h"
/*
 * dtc.h
 *
 *  Created on: Aug 30, 2020
 *      Author: Dan
 */





typedef enum Dtc {
	IO_0_FAIL_DTC = 0, IO_1_FAIL_DTC, IO_2_FAIL_DTC, IO_3_FAIL_DTC, IO_GENERIC_FAIL_DTC, DTC_COUNT
} Dtc;
typedef enum DtcStatus {
	DTC_UNSET, DTC_PENDING, DTC_SET
} DtcStatus;

typedef struct DtcStruct {
	DtcStatus status;
	uint8_t count;
	String errMessage;
	uint32_t detailVal;
} DtcStruct;

void setDtc(Dtc code, uint32_t detailVal, String errMessage);
DtcStatus getDtcStatus(Dtc code);
void clearDtc(Dtc code);
void printDtcs();
# 15 "..\\source\\config\\../ioDriver.h"

ti_sysbios_knl_Semaphore_Handle ioSemaphore;

_Bool checkIOPresence(uint8_t slaveAddress);
void initIOSemaphore();
void initIOHwi();
_Bool writeData(uint8_t slaveAddress, uint16_t data);
Dtc lookupDtc(uint8_t slaveAddress);

# 68 "../source/config/serialConfig.c"

SPI_Handle ledSPIHandle;

//void spiCallback(SPI_Handle handle, SPI_Transaction *transaction) {
//
//	System_printf("SPI Callback: Frame index %d, status %d", (uint32_t) transaction->arg, transaction->status);
//}

/*
 *  =============================== DMA ===============================
 */

#pragma DATA_ALIGN(dmaControlTable, 1024)

static tDMAControlTable dmaControlTable[32];
static _Bool dmaInitialized = 0;

/* Hwi_Struct used in the initDMA Hwi_construct call */
static ti_sysbios_family_arm_m3_Hwi_Struct dmaHwiStruct;

/*
 *  ======== dmaErrorHwi ========
 */
static void dmaErrorHwi(UArg arg) {
	xdc_runtime_System_printf__E("DMA error code: %d\n", uDMAErrorStatusGet());
	uDMAErrorStatusClear();
	xdc_runtime_System_abort__E("DMA error!!");
}

void initDMA(void) {
	xdc_runtime_Error_Block eb;
	ti_sysbios_family_arm_m3_Hwi_Params hwiParams;

	if (!dmaInitialized) {
		xdc_runtime_Error_init__E(&eb);
		ti_sysbios_family_arm_m3_Hwi_Params_init(&hwiParams);
		ti_sysbios_family_arm_m3_Hwi_construct(&(dmaHwiStruct), 63, dmaErrorHwi, &hwiParams, &eb);
		if (xdc_runtime_Error_check__E(&eb)) {
			xdc_runtime_System_abort__E("Couldn't construct DMA error hwi");
		}

		SysCtlPeripheralEnable(0xf0000c00);
		uDMAEnable();
		uDMAControlBaseSet(dmaControlTable);

		dmaInitialized = 1;
	}
}



SPITivaDMA_Object spiTivaDMAObject;

#pragma DATA_ALIGN(spiTivaDMAscratchBuf, 32)

uint32_t spiTivaDMAscratchBuf;

const SPITivaDMA_HWAttrs spiTivaDMAHWAttr = {
		.baseAddr = 0x40009000,
		.intNum = 50,
		.intPriority = (~0),
		.scratchBufPtr = &spiTivaDMAscratchBuf,
		.defaultTxBufValue = 0,
		.rxChannelIndex = 24,
		.txChannelIndex = 25,
		.channelMappingFxn = uDMAChannelAssign,
		.rxChannelMappingFxnArg = 0x0001000A,
		.txChannelMappingFxnArg = 0x0001000B };

const SPI_Config SPI_config[] = { { .fxnTablePtr = &SPITivaDMA_fxnTable, .object = &spiTivaDMAObject, .hwAttrs = &spiTivaDMAHWAttr }, { 0, 0, 0 } };

void initSPI(void) {
	initDMA();

	SysCtlPeripheralEnable(0xf0001c01);

	GPIOPinConfigure(0x00050402);
	GPIOPinTypeSSI(0x40025000, 0x00000002);

	GPIOPinConfigure(0x00030002);
	GPIOPinTypeSSI(0x40007000, 0x00000001);

	GPIOPadConfigSet(0x40025000, 0x00000002, 0x00000001, 0x0000000A);
	GPIOPadConfigSet(0x40007000, 0x00000001, 0x00000001, 0x0000000A);

	SPI_Params params;
	SPI_Params_init(&params);
	params.bitRate = 1000000;
	params.dataSize = 8; //bits
	params.frameFormat = SPI_POL1_PHA0;
	params.mode = SPI_MASTER;
	params.transferMode = SPI_MODE_BLOCKING;

	ledSPIHandle = SPI_open(0, &params);
	if (!ledSPIHandle)
		xdc_runtime_System_printf__E("Failed to open SPI");
}

void initI2C(void) {
	SysCtlPeripheralEnable(0xf0002002);

	GPIOPinConfigure(0x00041403);
	GPIOPinTypeI2C(0x40024000, 0x00000020);

	GPIOPinConfigure(0x00041003);
	GPIOPinTypeI2CSCL(0x40024000, 0x00000010);

	GPIOPadConfigSet(0x40024000, 0x00000020, 0x00000066, 0x00000009);
	GPIOPadConfigSet(0x40024000, 0x00000010, 0x00000066, 0x0000000A);

	I2CMasterInitExpClk(0x40022000, SysCtlClockGet(), 1);
	I2CMasterTimeoutSet(0x40022000, (10*400)/16);//10ms timeout
	initIOSemaphore();
	initIOHwi();
}
