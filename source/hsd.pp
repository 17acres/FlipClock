# 1 "../source/hsd.c"
/*
 * hsd.c
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */
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

# 8 "../source/hsd.c"
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

# 9 "../source/hsd.c"
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

# 10 "../source/hsd.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"
//*****************************************************************************
//
// adc.h - ADC headers for using the ADC driver functions.
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
// Values that can be passed to ADCSequenceConfigure as the ui32Trigger
// parameter.
//
//*****************************************************************************
# 74 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

//*****************************************************************************
//
// Values that can be passed to ADCSequenceStepConfigure as the ui32Config
// parameter.
//
//*****************************************************************************
# 124 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

//*****************************************************************************
//
// Values that can be passed to ADCComparatorConfigure as part of the
// ui32Config parameter.
//
//*****************************************************************************
# 148 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

# 155 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"
                                            // (Hysteresis)
# 165 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"
                                            // (Hysteresis)



//*****************************************************************************
//
// Values that can be used to modify the sequence number passed to
// ADCProcessorTrigger in order to get cross-module synchronous processor
// triggers.
//
//*****************************************************************************



//*****************************************************************************
//
// Values that can be passed to ADCPhaseDelaySet as the ui32Phase parameter and
// returned from ADCPhaseDelayGet.
//
//*****************************************************************************
# 201 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

//*****************************************************************************
//
// Values that can be passed to ADCReferenceSet as the ui32Ref parameter.
//
//*****************************************************************************




//*****************************************************************************
//
// Values that can be passed to ADCIntDisableEx(), ADCIntEnableEx(),
// ADCIntClearEx() and ADCIntStatusEx().
//
//*****************************************************************************
# 229 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

//*****************************************************************************
//
// Values that can be passed to ADCClockConfigSet() and ADCClockConfigGet().
//
//*****************************************************************************
# 243 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/driverlib/adc.h"

//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern void ADCIntRegister(uint32_t ui32Base, uint32_t ui32SequenceNum,
                           void (*pfnHandler)(void));
extern void ADCIntUnregister(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCIntDisable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCIntEnable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern uint32_t ADCIntStatus(uint32_t ui32Base, uint32_t ui32SequenceNum,
                             _Bool bMasked);
extern void ADCIntClear(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCSequenceEnable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCSequenceDisable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCSequenceConfigure(uint32_t ui32Base, uint32_t ui32SequenceNum,
                                 uint32_t ui32Trigger, uint32_t ui32Priority);
extern void ADCSequenceStepConfigure(uint32_t ui32Base,
                                     uint32_t ui32SequenceNum,
                                     uint32_t ui32Step, uint32_t ui32Config);
extern int32_t ADCSequenceOverflow(uint32_t ui32Base,
                                   uint32_t ui32SequenceNum);
extern void ADCSequenceOverflowClear(uint32_t ui32Base,
                                     uint32_t ui32SequenceNum);
extern int32_t ADCSequenceUnderflow(uint32_t ui32Base,
                                    uint32_t ui32SequenceNum);
extern void ADCSequenceUnderflowClear(uint32_t ui32Base,
                                      uint32_t ui32SequenceNum);
extern int32_t ADCSequenceDataGet(uint32_t ui32Base, uint32_t ui32SequenceNum,
                                  uint32_t *pui32Buffer);
extern void ADCProcessorTrigger(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCSoftwareOversampleConfigure(uint32_t ui32Base,
                                           uint32_t ui32SequenceNum,
                                           uint32_t ui32Factor);
extern void ADCSoftwareOversampleStepConfigure(uint32_t ui32Base,
                                               uint32_t ui32SequenceNum,
                                               uint32_t ui32Step,
                                               uint32_t ui32Config);
extern void ADCSoftwareOversampleDataGet(uint32_t ui32Base,
                                         uint32_t ui32SequenceNum,
                                         uint32_t *pui32Buffer,
                                         uint32_t ui32Count);
extern void ADCHardwareOversampleConfigure(uint32_t ui32Base,
                                           uint32_t ui32Factor);
extern void ADCClockConfigSet(uint32_t ui32Base, uint32_t ui32Config,
                              uint32_t ui32ClockDiv);
extern uint32_t ADCClockConfigGet(uint32_t ui32Base, uint32_t *pui32ClockDiv);

extern void ADCComparatorConfigure(uint32_t ui32Base, uint32_t ui32Comp,
                                   uint32_t ui32Config);
extern void ADCComparatorRegionSet(uint32_t ui32Base, uint32_t ui32Comp,
                                   uint32_t ui32LowRef, uint32_t ui32HighRef);
extern void ADCComparatorReset(uint32_t ui32Base, uint32_t ui32Comp,
                               _Bool bTrigger, _Bool bInterrupt);
extern void ADCComparatorIntDisable(uint32_t ui32Base,
                                    uint32_t ui32SequenceNum);
extern void ADCComparatorIntEnable(uint32_t ui32Base,
                                   uint32_t ui32SequenceNum);
extern uint32_t ADCComparatorIntStatus(uint32_t ui32Base);
extern void ADCComparatorIntClear(uint32_t ui32Base, uint32_t ui32Status);
extern void ADCIntDisableEx(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void ADCIntEnableEx(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t ADCIntStatusEx(uint32_t ui32Base, _Bool bMasked);
extern void ADCIntClearEx(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void ADCSequenceDMAEnable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern void ADCSequenceDMADisable(uint32_t ui32Base, uint32_t ui32SequenceNum);
extern _Bool ADCBusy(uint32_t ui32Base);
extern void ADCReferenceSet(uint32_t ui32Base, uint32_t ui32Ref);
extern uint32_t ADCReferenceGet(uint32_t ui32Base);
extern void ADCPhaseDelaySet(uint32_t ui32Base, uint32_t ui32Phase);
extern uint32_t ADCPhaseDelayGet(uint32_t ui32Base);
extern void ADCSampleRateSet(uint32_t ui32Base, uint32_t ui32ADCClock,
                             uint32_t ui32Rate);
extern uint32_t ADCSampleRateGet(uint32_t ui32Base);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************




# 11 "../source/hsd.c"
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



# 12 "../source/hsd.c"
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

# 13 "../source/hsd.c"
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

# 14 "../source/hsd.c"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
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

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"

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

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
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

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
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

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__prologue.h"
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
# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.hal.Cache ========
 */

typedef struct ti_sysbios_hal_Cache_Fxns__ ti_sysbios_hal_Cache_Fxns__;
typedef const ti_sysbios_hal_Cache_Fxns__* ti_sysbios_hal_Cache_Module;

/*
 * ======== module ti.sysbios.hal.CacheNull ========
 */

typedef struct ti_sysbios_hal_CacheNull_Fxns__ ti_sysbios_hal_CacheNull_Fxns__;
typedef const ti_sysbios_hal_CacheNull_Fxns__* ti_sysbios_hal_CacheNull_Module;

/*
 * ======== module ti.sysbios.hal.Core ========
 */

typedef struct ti_sysbios_hal_Core_Fxns__ ti_sysbios_hal_Core_Fxns__;
typedef const ti_sysbios_hal_Core_Fxns__* ti_sysbios_hal_Core_Module;

/*
 * ======== module ti.sysbios.hal.CoreNull ========
 */

typedef struct ti_sysbios_hal_CoreNull_Fxns__ ti_sysbios_hal_CoreNull_Fxns__;
typedef const ti_sysbios_hal_CoreNull_Fxns__* ti_sysbios_hal_CoreNull_Module;

/*
 * ======== module ti.sysbios.hal.Hwi ========
 */

typedef struct ti_sysbios_hal_Hwi_Fxns__ ti_sysbios_hal_Hwi_Fxns__;
typedef const ti_sysbios_hal_Hwi_Fxns__* ti_sysbios_hal_Hwi_Module;
typedef struct ti_sysbios_hal_Hwi_Params ti_sysbios_hal_Hwi_Params;
typedef struct ti_sysbios_hal_Hwi_Object ti_sysbios_hal_Hwi_Object;
typedef struct ti_sysbios_hal_Hwi_Struct ti_sysbios_hal_Hwi_Struct;
typedef ti_sysbios_hal_Hwi_Object* ti_sysbios_hal_Hwi_Handle;
typedef struct ti_sysbios_hal_Hwi_Object__ ti_sysbios_hal_Hwi_Instance_State;
typedef ti_sysbios_hal_Hwi_Object* ti_sysbios_hal_Hwi_Instance;

/*
 * ======== module ti.sysbios.hal.Power ========
 */

typedef struct ti_sysbios_hal_Power_Fxns__ ti_sysbios_hal_Power_Fxns__;
typedef const ti_sysbios_hal_Power_Fxns__* ti_sysbios_hal_Power_Module;

/*
 * ======== module ti.sysbios.hal.PowerNull ========
 */

typedef struct ti_sysbios_hal_PowerNull_Fxns__ ti_sysbios_hal_PowerNull_Fxns__;
typedef const ti_sysbios_hal_PowerNull_Fxns__* ti_sysbios_hal_PowerNull_Module;

/*
 * ======== module ti.sysbios.hal.Seconds ========
 */

typedef struct ti_sysbios_hal_Seconds_Fxns__ ti_sysbios_hal_Seconds_Fxns__;
typedef const ti_sysbios_hal_Seconds_Fxns__* ti_sysbios_hal_Seconds_Module;

/*
 * ======== module ti.sysbios.hal.SecondsCallback ========
 */

typedef struct ti_sysbios_hal_SecondsCallback_Fxns__ ti_sysbios_hal_SecondsCallback_Fxns__;
typedef const ti_sysbios_hal_SecondsCallback_Fxns__* ti_sysbios_hal_SecondsCallback_Module;

/*
 * ======== module ti.sysbios.hal.SecondsClock ========
 */

typedef struct ti_sysbios_hal_SecondsClock_Module_State ti_sysbios_hal_SecondsClock_Module_State;
typedef struct ti_sysbios_hal_SecondsClock_Fxns__ ti_sysbios_hal_SecondsClock_Fxns__;
typedef const ti_sysbios_hal_SecondsClock_Fxns__* ti_sysbios_hal_SecondsClock_Module;

/*
 * ======== module ti.sysbios.hal.Timer ========
 */

typedef struct ti_sysbios_hal_Timer_Fxns__ ti_sysbios_hal_Timer_Fxns__;
typedef const ti_sysbios_hal_Timer_Fxns__* ti_sysbios_hal_Timer_Module;
typedef struct ti_sysbios_hal_Timer_Params ti_sysbios_hal_Timer_Params;
typedef struct ti_sysbios_hal_Timer_Object ti_sysbios_hal_Timer_Object;
typedef struct ti_sysbios_hal_Timer_Struct ti_sysbios_hal_Timer_Struct;
typedef ti_sysbios_hal_Timer_Object* ti_sysbios_hal_Timer_Handle;
typedef struct ti_sysbios_hal_Timer_Object__ ti_sysbios_hal_Timer_Instance_State;
typedef ti_sysbios_hal_Timer_Object* ti_sysbios_hal_Timer_Instance;

/*
 * ======== module ti.sysbios.hal.TimerNull ========
 */

typedef struct ti_sysbios_hal_TimerNull_Fxns__ ti_sysbios_hal_TimerNull_Fxns__;
typedef const ti_sysbios_hal_TimerNull_Fxns__* ti_sysbios_hal_TimerNull_Module;
typedef struct ti_sysbios_hal_TimerNull_Params ti_sysbios_hal_TimerNull_Params;
typedef struct ti_sysbios_hal_TimerNull_Object ti_sysbios_hal_TimerNull_Object;
typedef struct ti_sysbios_hal_TimerNull_Struct ti_sysbios_hal_TimerNull_Struct;
typedef ti_sysbios_hal_TimerNull_Object* ti_sysbios_hal_TimerNull_Handle;
typedef struct ti_sysbios_hal_TimerNull_Object__ ti_sysbios_hal_TimerNull_Instance_State;
typedef ti_sysbios_hal_TimerNull_Object* ti_sysbios_hal_TimerNull_Instance;

/*
 * ======== module ti.sysbios.hal.Cache_CacheProxy ========
 */

typedef struct ti_sysbios_hal_Cache_CacheProxy_Fxns__ ti_sysbios_hal_Cache_CacheProxy_Fxns__;
typedef const ti_sysbios_hal_Cache_CacheProxy_Fxns__* ti_sysbios_hal_Cache_CacheProxy_Module;

/*
 * ======== module ti.sysbios.hal.Core_CoreProxy ========
 */

typedef struct ti_sysbios_hal_Core_CoreProxy_Fxns__ ti_sysbios_hal_Core_CoreProxy_Fxns__;
typedef const ti_sysbios_hal_Core_CoreProxy_Fxns__* ti_sysbios_hal_Core_CoreProxy_Module;

/*
 * ======== module ti.sysbios.hal.Hwi_HwiProxy ========
 */

typedef struct ti_sysbios_hal_Hwi_HwiProxy_Fxns__ ti_sysbios_hal_Hwi_HwiProxy_Fxns__;
typedef const ti_sysbios_hal_Hwi_HwiProxy_Fxns__* ti_sysbios_hal_Hwi_HwiProxy_Module;
typedef struct ti_sysbios_hal_Hwi_HwiProxy_Params ti_sysbios_hal_Hwi_HwiProxy_Params;
typedef struct ti_sysbios_interfaces_IHwi___Object *ti_sysbios_hal_Hwi_HwiProxy_Handle;

/*
 * ======== module ti.sysbios.hal.Power_PowerProxy ========
 */

typedef struct ti_sysbios_hal_Power_PowerProxy_Fxns__ ti_sysbios_hal_Power_PowerProxy_Fxns__;
typedef const ti_sysbios_hal_Power_PowerProxy_Fxns__* ti_sysbios_hal_Power_PowerProxy_Module;

/*
 * ======== module ti.sysbios.hal.Seconds_SecondsProxy ========
 */

typedef struct ti_sysbios_hal_Seconds_SecondsProxy_Fxns__ ti_sysbios_hal_Seconds_SecondsProxy_Fxns__;
typedef const ti_sysbios_hal_Seconds_SecondsProxy_Fxns__* ti_sysbios_hal_Seconds_SecondsProxy_Module;

/*
 * ======== module ti.sysbios.hal.Timer_TimerProxy ========
 */

typedef struct ti_sysbios_hal_Timer_TimerProxy_Fxns__ ti_sysbios_hal_Timer_TimerProxy_Fxns__;
typedef const ti_sysbios_hal_Timer_TimerProxy_Fxns__* ti_sysbios_hal_Timer_TimerProxy_Module;
typedef struct ti_sysbios_hal_Timer_TimerProxy_Params ti_sysbios_hal_Timer_TimerProxy_Params;
typedef struct ti_sysbios_interfaces_ITimer___Object *ti_sysbios_hal_Timer_TimerProxy_Handle;


# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"

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

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


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

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
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

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"
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

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"
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

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"


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

# 446 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_hal_Hwi_HwiProxy_FuncPtr;

/* Irp */
typedef ti_sysbios_interfaces_IHwi_Irp ti_sysbios_hal_Hwi_HwiProxy_Irp;

/* HookSet */
typedef ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_hal_Hwi_HwiProxy_HookSet;

/* MaskingOption */
typedef ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_hal_Hwi_HwiProxy_MaskingOption;

/* StackInfo */
typedef ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_hal_Hwi_HwiProxy_StackInfo;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_hal_Hwi_HwiProxy_Args__create {
    xdc_Int intNum;
    ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn;
} ti_sysbios_hal_Hwi_HwiProxy_Args__create;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsEnabled;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsEnabled ti_sysbios_hal_Hwi_HwiProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsIncluded;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsIncluded ti_sysbios_hal_Hwi_HwiProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsMask;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__diagsMask ti_sysbios_hal_Hwi_HwiProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_HwiProxy_Module__gateObj;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__gateObj ti_sysbios_hal_Hwi_HwiProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_HwiProxy_Module__gatePrms;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__gatePrms ti_sysbios_hal_Hwi_HwiProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_hal_Hwi_HwiProxy_Module__id;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__id ti_sysbios_hal_Hwi_HwiProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerDefined;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerDefined ti_sysbios_hal_Hwi_HwiProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerObj;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerObj ti_sysbios_hal_Hwi_HwiProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn0;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn0 ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn1;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn1 ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn2;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn2 ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn4;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn4 ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn8;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn8 ti_sysbios_hal_Hwi_HwiProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_hal_Hwi_HwiProxy_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Module__startupDoneFxn ti_sysbios_hal_Hwi_HwiProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_hal_Hwi_HwiProxy_Object__count;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Object__count ti_sysbios_hal_Hwi_HwiProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_hal_Hwi_HwiProxy_Object__heap;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Object__heap ti_sysbios_hal_Hwi_HwiProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_hal_Hwi_HwiProxy_Object__sizeof;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Object__sizeof ti_sysbios_hal_Hwi_HwiProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_HwiProxy_Object__table;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_Object__table ti_sysbios_hal_Hwi_HwiProxy_Object__table__C;

/* dispatcherAutoNestingSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherAutoNestingSupport;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherAutoNestingSupport ti_sysbios_hal_Hwi_HwiProxy_dispatcherAutoNestingSupport__C;


/* dispatcherSwiSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherSwiSupport;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherSwiSupport ti_sysbios_hal_Hwi_HwiProxy_dispatcherSwiSupport__C;


/* dispatcherTaskSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherTaskSupport;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherTaskSupport ti_sysbios_hal_Hwi_HwiProxy_dispatcherTaskSupport__C;


/* dispatcherIrpTrackingSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherIrpTrackingSupport;
extern  const CT__ti_sysbios_hal_Hwi_HwiProxy_dispatcherIrpTrackingSupport ti_sysbios_hal_Hwi_HwiProxy_dispatcherIrpTrackingSupport__C;



/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_hal_Hwi_HwiProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_hal_Hwi_HwiProxy_Struct {
    const ti_sysbios_hal_Hwi_HwiProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_hal_Hwi_HwiProxy_Fxns__ {
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
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(ti_sysbios_hal_Hwi_HwiProxy_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_hal_Hwi_HwiProxy_Handle, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(ti_sysbios_hal_Hwi_HwiProxy_Handle, xdc_Int);
    void (*setHookContext)(ti_sysbios_hal_Hwi_HwiProxy_Handle, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(ti_sysbios_hal_Hwi_HwiProxy_Handle);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_hal_Hwi_HwiProxy_Fxns__ ti_sysbios_hal_Hwi_HwiProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_hal_Hwi_HwiProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_hal_Hwi_HwiProxy_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_hal_Hwi_HwiProxy_Handle ti_sysbios_hal_Hwi_HwiProxy_create( xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_hal_Hwi_HwiProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_hal_Hwi_HwiProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_hal_Hwi_HwiProxy_delete(ti_sysbios_hal_Hwi_HwiProxy_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_hal_Hwi_HwiProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_hal_Hwi_HwiProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern xdc_Bool ti_sysbios_hal_Hwi_HwiProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_Proxy__delegate__S( void );

/* getStackInfo__E */


extern xdc_Bool ti_sysbios_hal_Hwi_HwiProxy_getStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth );

/* getCoreStackInfo__E */


extern xdc_Bool ti_sysbios_hal_Hwi_HwiProxy_getCoreStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId );

/* startup__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_startup__E( void );

/* disable__E */


extern xdc_UInt ti_sysbios_hal_Hwi_HwiProxy_disable__E( void );

/* enable__E */


extern xdc_UInt ti_sysbios_hal_Hwi_HwiProxy_enable__E( void );

/* restore__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_restore__E( xdc_UInt key );

/* switchFromBootStack__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_switchFromBootStack__E( void );

/* post__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_post__E( xdc_UInt intNum );

/* getTaskSP__E */


extern xdc_Char *ti_sysbios_hal_Hwi_HwiProxy_getTaskSP__E( void );

/* disableInterrupt__E */


extern xdc_UInt ti_sysbios_hal_Hwi_HwiProxy_disableInterrupt__E( xdc_UInt intNum );

/* enableInterrupt__E */


extern xdc_UInt ti_sysbios_hal_Hwi_HwiProxy_enableInterrupt__E( xdc_UInt intNum );

/* restoreInterrupt__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_restoreInterrupt__E( xdc_UInt intNum, xdc_UInt key );

/* clearInterrupt__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_clearInterrupt__E( xdc_UInt intNum );

/* getFunc__E */


extern ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_hal_Hwi_HwiProxy_getFunc__E( ti_sysbios_hal_Hwi_HwiProxy_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_setFunc__E( ti_sysbios_hal_Hwi_HwiProxy_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg );

/* getHookContext__E */


extern xdc_Ptr ti_sysbios_hal_Hwi_HwiProxy_getHookContext__E( ti_sysbios_hal_Hwi_HwiProxy_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern void ti_sysbios_hal_Hwi_HwiProxy_setHookContext__E( ti_sysbios_hal_Hwi_HwiProxy_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* getIrp__E */


extern ti_sysbios_interfaces_IHwi_Irp ti_sysbios_hal_Hwi_HwiProxy_getIrp__E( ti_sysbios_hal_Hwi_HwiProxy_Handle __inst );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_hal_Hwi_HwiProxy_Module_upCast( void )
{
    return (ti_sysbios_interfaces_IHwi_Module)ti_sysbios_hal_Hwi_HwiProxy_Proxy__delegate__S();
}

/* Module_to_ti_sysbios_interfaces_IHwi */


/* Handle_upCast */
static inline ti_sysbios_interfaces_IHwi_Handle ti_sysbios_hal_Hwi_HwiProxy_Handle_upCast( ti_sysbios_hal_Hwi_HwiProxy_Handle i )
{
    return (ti_sysbios_interfaces_IHwi_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_IHwi */


/* Handle_downCast */
static inline ti_sysbios_hal_Hwi_HwiProxy_Handle ti_sysbios_hal_Hwi_HwiProxy_Handle_downCast( ti_sysbios_interfaces_IHwi_Handle i )
{
    ti_sysbios_interfaces_IHwi_Handle i2 = (ti_sysbios_interfaces_IHwi_Handle)i;
if (ti_sysbios_hal_Hwi_HwiProxy_Proxy__abstract__S()) return (ti_sysbios_hal_Hwi_HwiProxy_Handle)i;
    return (void*)i2->__fxns == (void*)ti_sysbios_hal_Hwi_HwiProxy_Proxy__delegate__S() ? (ti_sysbios_hal_Hwi_HwiProxy_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_IHwi */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_hal_Hwi_HwiProxy_Module__id ti_sysbios_hal_Hwi_HwiProxy_Module_id( void ) 
{
    return ti_sysbios_hal_Hwi_HwiProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void ti_sysbios_hal_Hwi_HwiProxy_Params_init( ti_sysbios_hal_Hwi_HwiProxy_Params *prms ) 
{
    if (prms) {
        ti_sysbios_hal_Hwi_HwiProxy_Params__init__S(prms, 0, sizeof(ti_sysbios_hal_Hwi_HwiProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_hal_Hwi_HwiProxy_Params_copy(ti_sysbios_hal_Hwi_HwiProxy_Params *dst, const ti_sysbios_hal_Hwi_HwiProxy_Params *src) 
{
    if (dst) {
        ti_sysbios_hal_Hwi_HwiProxy_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_hal_Hwi_HwiProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_hal_Hwi_FuncPtr;

/* Irp */
typedef ti_sysbios_interfaces_IHwi_Irp ti_sysbios_hal_Hwi_Irp;

/* HookSet */
typedef ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_hal_Hwi_HookSet;

/* MaskingOption */
typedef ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_hal_Hwi_MaskingOption;

/* StackInfo */
typedef ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_hal_Hwi_StackInfo;

/* MaskingOption_NONE */


/* MaskingOption_ALL */


/* MaskingOption_SELF */


/* MaskingOption_BITMASK */


/* MaskingOption_LOWER */



/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_hal_Hwi_Args__create {
    xdc_Int intNum;
    ti_sysbios_hal_Hwi_FuncPtr hwiFxn;
} ti_sysbios_hal_Hwi_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_hal_Hwi_Module__diagsEnabled;
extern  const CT__ti_sysbios_hal_Hwi_Module__diagsEnabled ti_sysbios_hal_Hwi_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_hal_Hwi_Module__diagsIncluded;
extern  const CT__ti_sysbios_hal_Hwi_Module__diagsIncluded ti_sysbios_hal_Hwi_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_hal_Hwi_Module__diagsMask;
extern  const CT__ti_sysbios_hal_Hwi_Module__diagsMask ti_sysbios_hal_Hwi_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_Module__gateObj;
extern  const CT__ti_sysbios_hal_Hwi_Module__gateObj ti_sysbios_hal_Hwi_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_Module__gatePrms;
extern  const CT__ti_sysbios_hal_Hwi_Module__gatePrms ti_sysbios_hal_Hwi_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_hal_Hwi_Module__id;
extern  const CT__ti_sysbios_hal_Hwi_Module__id ti_sysbios_hal_Hwi_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_hal_Hwi_Module__loggerDefined;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerDefined ti_sysbios_hal_Hwi_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_Module__loggerObj;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerObj ti_sysbios_hal_Hwi_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_hal_Hwi_Module__loggerFxn0;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerFxn0 ti_sysbios_hal_Hwi_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_hal_Hwi_Module__loggerFxn1;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerFxn1 ti_sysbios_hal_Hwi_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_hal_Hwi_Module__loggerFxn2;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerFxn2 ti_sysbios_hal_Hwi_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_hal_Hwi_Module__loggerFxn4;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerFxn4 ti_sysbios_hal_Hwi_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_hal_Hwi_Module__loggerFxn8;
extern  const CT__ti_sysbios_hal_Hwi_Module__loggerFxn8 ti_sysbios_hal_Hwi_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_hal_Hwi_Module__startupDoneFxn)(void);
extern  const CT__ti_sysbios_hal_Hwi_Module__startupDoneFxn ti_sysbios_hal_Hwi_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_hal_Hwi_Object__count;
extern  const CT__ti_sysbios_hal_Hwi_Object__count ti_sysbios_hal_Hwi_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_hal_Hwi_Object__heap;
extern  const CT__ti_sysbios_hal_Hwi_Object__heap ti_sysbios_hal_Hwi_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_hal_Hwi_Object__sizeof;
extern  const CT__ti_sysbios_hal_Hwi_Object__sizeof ti_sysbios_hal_Hwi_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_hal_Hwi_Object__table;
extern  const CT__ti_sysbios_hal_Hwi_Object__table ti_sysbios_hal_Hwi_Object__table__C;

/* dispatcherAutoNestingSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_dispatcherAutoNestingSupport;
extern  const CT__ti_sysbios_hal_Hwi_dispatcherAutoNestingSupport ti_sysbios_hal_Hwi_dispatcherAutoNestingSupport__C;


/* dispatcherSwiSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_dispatcherSwiSupport;
extern  const CT__ti_sysbios_hal_Hwi_dispatcherSwiSupport ti_sysbios_hal_Hwi_dispatcherSwiSupport__C;


/* dispatcherTaskSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_dispatcherTaskSupport;
extern  const CT__ti_sysbios_hal_Hwi_dispatcherTaskSupport ti_sysbios_hal_Hwi_dispatcherTaskSupport__C;


/* dispatcherIrpTrackingSupport */




typedef xdc_Bool CT__ti_sysbios_hal_Hwi_dispatcherIrpTrackingSupport;
extern  const CT__ti_sysbios_hal_Hwi_dispatcherIrpTrackingSupport ti_sysbios_hal_Hwi_dispatcherIrpTrackingSupport__C;


/* E_stackOverflow */

typedef xdc_runtime_Error_Id CT__ti_sysbios_hal_Hwi_E_stackOverflow;
extern  const CT__ti_sysbios_hal_Hwi_E_stackOverflow ti_sysbios_hal_Hwi_E_stackOverflow__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_hal_Hwi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_hal_Hwi_Struct {
    const ti_sysbios_hal_Hwi_Fxns__ *__fxns;
    ti_sysbios_hal_Hwi_HwiProxy_Handle __f0;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_hal_Hwi_Fxns__ {
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
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(ti_sysbios_hal_Hwi_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_hal_Hwi_Handle, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(ti_sysbios_hal_Hwi_Handle, xdc_Int);
    void (*setHookContext)(ti_sysbios_hal_Hwi_Handle, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(ti_sysbios_hal_Hwi_Handle);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern const ti_sysbios_hal_Hwi_Fxns__ ti_sysbios_hal_Hwi_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern xdc_Int ti_sysbios_hal_Hwi_Module_startup__E( xdc_Int state );

extern xdc_Int ti_sysbios_hal_Hwi_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern xdc_Int ti_sysbios_hal_Hwi_Instance_init__E(ti_sysbios_hal_Hwi_Object *, xdc_Int intNum, ti_sysbios_hal_Hwi_FuncPtr hwiFxn, const ti_sysbios_hal_Hwi_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern void ti_sysbios_hal_Hwi_Instance_finalize__E( ti_sysbios_hal_Hwi_Object* , int );

/* Handle__label__S */

extern xdc_runtime_Types_Label *ti_sysbios_hal_Hwi_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern xdc_Bool ti_sysbios_hal_Hwi_Module__startupDone__S( void );

/* Object__create__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_create( xdc_Int intNum, ti_sysbios_hal_Hwi_FuncPtr hwiFxn, const ti_sysbios_hal_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern void ti_sysbios_hal_Hwi_construct( ti_sysbios_hal_Hwi_Struct *__obj, xdc_Int intNum, ti_sysbios_hal_Hwi_FuncPtr hwiFxn, const ti_sysbios_hal_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern void ti_sysbios_hal_Hwi_Object__delete__S( xdc_Ptr instp );

/* delete */

extern void ti_sysbios_hal_Hwi_delete(ti_sysbios_hal_Hwi_Handle *instp);

/* Object__destruct__S */

extern void ti_sysbios_hal_Hwi_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern void ti_sysbios_hal_Hwi_destruct(ti_sysbios_hal_Hwi_Struct *obj);

/* Object__get__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_Object__first__S( void );

/* Object__next__S */

extern xdc_Ptr ti_sysbios_hal_Hwi_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern void ti_sysbios_hal_Hwi_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getStackInfo__E */


extern xdc_Bool ti_sysbios_hal_Hwi_getStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth );

/* getCoreStackInfo__E */


extern xdc_Bool ti_sysbios_hal_Hwi_getCoreStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId );

/* startup__E */


extern void ti_sysbios_hal_Hwi_startup__E( void );

/* switchFromBootStack__E */


extern void ti_sysbios_hal_Hwi_switchFromBootStack__E( void );

/* post__E */


extern void ti_sysbios_hal_Hwi_post__E( xdc_UInt intNum );

/* getTaskSP__E */


extern xdc_Char *ti_sysbios_hal_Hwi_getTaskSP__E( void );

/* disableInterrupt__E */


extern xdc_UInt ti_sysbios_hal_Hwi_disableInterrupt__E( xdc_UInt intNum );

/* enableInterrupt__E */


extern xdc_UInt ti_sysbios_hal_Hwi_enableInterrupt__E( xdc_UInt intNum );

/* restoreInterrupt__E */


extern void ti_sysbios_hal_Hwi_restoreInterrupt__E( xdc_UInt intNum, xdc_UInt key );

/* clearInterrupt__E */


extern void ti_sysbios_hal_Hwi_clearInterrupt__E( xdc_UInt intNum );

/* getFunc__E */


extern ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_hal_Hwi_getFunc__E( ti_sysbios_hal_Hwi_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern void ti_sysbios_hal_Hwi_setFunc__E( ti_sysbios_hal_Hwi_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg );

/* getIrp__E */


extern ti_sysbios_interfaces_IHwi_Irp ti_sysbios_hal_Hwi_getIrp__E( ti_sysbios_hal_Hwi_Handle __inst );

/* getHookContext__E */


extern xdc_Ptr ti_sysbios_hal_Hwi_getHookContext__E( ti_sysbios_hal_Hwi_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern void ti_sysbios_hal_Hwi_setHookContext__E( ti_sysbios_hal_Hwi_Handle __inst, xdc_Int id, xdc_Ptr hookContext );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_hal_Hwi_Module_upCast( void )
{
    return (ti_sysbios_interfaces_IHwi_Module)&ti_sysbios_hal_Hwi_Module__FXNS__C;
}

/* Module_to_ti_sysbios_interfaces_IHwi */


/* Handle_upCast */
static inline ti_sysbios_interfaces_IHwi_Handle ti_sysbios_hal_Hwi_Handle_upCast( ti_sysbios_hal_Hwi_Handle i )
{
    return (ti_sysbios_interfaces_IHwi_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_IHwi */


/* Handle_downCast */
static inline ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_Handle_downCast( ti_sysbios_interfaces_IHwi_Handle i )
{
    ti_sysbios_interfaces_IHwi_Handle i2 = (ti_sysbios_interfaces_IHwi_Handle)i;
    return (void*)i2->__fxns == (void*)&ti_sysbios_hal_Hwi_Module__FXNS__C ? (ti_sysbios_hal_Hwi_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_IHwi */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_hal_Hwi_Module__id ti_sysbios_hal_Hwi_Module_id( void ) 
{
    return ti_sysbios_hal_Hwi_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_hal_Hwi_Module_hasMask( void ) 
{
    return ti_sysbios_hal_Hwi_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_hal_Hwi_Module_getMask( void ) 
{
    return ti_sysbios_hal_Hwi_Module__diagsMask__C != 0 ? *ti_sysbios_hal_Hwi_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_hal_Hwi_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_hal_Hwi_Module__diagsMask__C != 0) *ti_sysbios_hal_Hwi_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_hal_Hwi_Params_init( ti_sysbios_hal_Hwi_Params *prms ) 
{
    if (prms) {
        ti_sysbios_hal_Hwi_Params__init__S(prms, 0, sizeof(ti_sysbios_hal_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_hal_Hwi_Params_copy(ti_sysbios_hal_Hwi_Params *dst, const ti_sysbios_hal_Hwi_Params *src) 
{
    if (dst) {
        ti_sysbios_hal_Hwi_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_hal_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_Object_get(ti_sysbios_hal_Hwi_Instance_State *oarr, int i) 
{
    return (ti_sysbios_hal_Hwi_Handle)ti_sysbios_hal_Hwi_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_Object_first( void )
{
    return (ti_sysbios_hal_Hwi_Handle)ti_sysbios_hal_Hwi_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_Object_next( ti_sysbios_hal_Hwi_Object *obj )
{
    return (ti_sysbios_hal_Hwi_Handle)ti_sysbios_hal_Hwi_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_hal_Hwi_Handle_label( ti_sysbios_hal_Hwi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_hal_Hwi_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_hal_Hwi_Handle_name( ti_sysbios_hal_Hwi_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_hal_Hwi_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_hal_Hwi_Handle ti_sysbios_hal_Hwi_handle( ti_sysbios_hal_Hwi_Struct *str )
{
    return (ti_sysbios_hal_Hwi_Handle)str;
}

/* struct */
static inline ti_sysbios_hal_Hwi_Struct *ti_sysbios_hal_Hwi_struct( ti_sysbios_hal_Hwi_Handle inst )
{
    return (ti_sysbios_hal_Hwi_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__epilogue.h"
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





/* 
 * Use intrinsics for ALL C6x and ARM 32bit targets (excluding arm M3)
 */





# 93 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__epilogue.h"



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

# 446 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"


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

# 97 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__epilogue.h"



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


# 199 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__epilogue.h"

# 599 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi__epilogue.h"





# 583 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 609 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 693 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"

/* proxies */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"
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

# 499 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 579 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/package/Hwi_HwiProxy.h"

# 696 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/hal/Hwi.h"

# 15 "../source/hsd.c"

# 1 "..\\source\\hsd.h"
/*
 * hsd.h
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */





volatile uint32_t rawAdcValues[5];

volatile struct processedAdcVals {
	float hsdCurrents[4];
	float mcuTemp;
	_Bool qf;
	uint16_t sampleCount;
} analogData;


void adcIsr(UArg arg);
void initAdcHwi();
void clearMaxAdcVals();
# 17 "../source/hsd.c"

volatile uint32_t rawAdcValues[5];
volatile struct processedAdcVals analogData;
volatile struct processedAdcVals maxAnalogData;
void processRawAdcValues();
void updateMaxVals();

ti_sysbios_hal_Hwi_Handle hwiHandle;

//do with interrupt and mailbox or smth
void adcIsr(UArg arg) {
	ADCIntClear(0x40038000, 0);
	ADCSequenceDataGet(0x40038000, 0, rawAdcValues);
	processRawAdcValues();
	updateMaxVals();
	ADCProcessorTrigger(0x40038000, 0);
}

void initAdcHwi() {
	ADCIntEnable(0x40038000, 0);
	hwiHandle = ti_sysbios_hal_Hwi_create(30, adcIsr, 0, 0);
}

void processRawAdcValues() {
	analogData.mcuTemp = 147.5 - (247.5 * ((float) rawAdcValues[4]) / 4096.0);
	analogData.hsdCurrents[0] = ((float) rawAdcValues[0]) * 3.3 / 4096;
	analogData.hsdCurrents[1] = ((float) rawAdcValues[1]) * 3.3 / 4096;
	analogData.hsdCurrents[2] = ((float) rawAdcValues[2]) * 3.3 / 4096;
	analogData.hsdCurrents[3] = ((float) rawAdcValues[3]) * 3.3 / 4096;
	if (++analogData.sampleCount == 3) {
		analogData.qf = 1;
		clearMaxAdcVals();
	}

}

void updateMaxVals() {
	_Bool newMaxFound = 0;
	for (int i = 0; i < 4; i++) {
		if (analogData.hsdCurrents[i] > maxAnalogData.hsdCurrents[i]) {
			maxAnalogData.hsdCurrents[i] = analogData.hsdCurrents[i];
			newMaxFound = 1;
		}
	}
	if (analogData.mcuTemp > maxAnalogData.mcuTemp) {
		maxAnalogData.mcuTemp = analogData.mcuTemp;
		newMaxFound = 1;
	}
	if (newMaxFound)
		maxAnalogData.sampleCount = analogData.sampleCount;
}

void clearMaxAdcVals() {
	UInt key = ti_sysbios_family_arm_m3_Hwi_disableFxn__E();

	maxAnalogData.hsdCurrents[0] = analogData.hsdCurrents[0];
	maxAnalogData.hsdCurrents[1] = analogData.hsdCurrents[1];
	maxAnalogData.hsdCurrents[2] = analogData.hsdCurrents[2];
	maxAnalogData.hsdCurrents[3] = analogData.hsdCurrents[3];
	maxAnalogData.mcuTemp = analogData.mcuTemp;
	maxAnalogData.sampleCount = analogData.sampleCount;
	maxAnalogData.qf = analogData.qf;

	ti_sysbios_family_arm_m3_Hwi_restoreFxn__E(key);
}
