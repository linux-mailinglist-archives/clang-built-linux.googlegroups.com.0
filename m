Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSXJ7PVAKGQESO2AJRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9139A0A4
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 22:02:20 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id o2sf3696804ota.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 13:02:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566504139; cv=pass;
        d=google.com; s=arc-20160816;
        b=pk+8J3fEyKVg4xqUvin1z3mG+PmoQUc6SwvJA8v5/JptByVPcQRw67wIKBO+rVfq3H
         J7IerSzL7mFKbB6CJwtCI47tz8vbrxbX+DzGGUcsbhMGIQcdAMwhoHGSCogvJj8UDJV4
         QH3SxqOW4hqrSY69in+ijJ1IIyZstOL9tr/qZ0hCtDtp3vDCcb0RGrQcVteUfkG+qywF
         6n70X20Vy/XtDDNbp79bXnUGytHcpEEJExMD+Y+Fan8heoSrI1SFQdr2LYfcF6WOXlJw
         UtMHc0EPykxfXjq0OnqH2VjVGuEhhP7bhIbfvHJEo6FHx3pf95tV2ZIUWhKJ8T2Ngio/
         CEtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yUZJOCQFfSybgsGjOmdUNC3cYsOHMhcPhD9ZCvTtBLA=;
        b=LoZ8BDMD76H9wYlx6R91O0paAcjNOIxNfU7cznuYr3xAM9Sx/32W6TchuRY68MLXXe
         PzrMy2by89+T+uKBlTq9gj6ff97Pjtp/NQ9oYmSX4hQ95FP3DBEcsSRYF3W/7Oue2lH2
         3wks/le/+sQPaqaXnSsT2ZeShE55IabIJammxZrm6TCI40JA4eNxRH+b8T3cSTZHWV7g
         gyKiPT6U2tWZRqYfLaI1W535VIq+0WNJS+7CXO7sK1jg64HDVMRVWEvGoGF0m+hBTB7j
         jwAkKxtI3ELrj435g5R0VmgbH/Nghkw3LT5MDok1o+jE2CttaUt6vSXuga0fJXy7oYse
         6NYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wA70pSly;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yUZJOCQFfSybgsGjOmdUNC3cYsOHMhcPhD9ZCvTtBLA=;
        b=W/LLOLjpYGS51Q/0PwNLSI31JFeRT4h97KM6F6FE9ZXg4GoHQ1xPiJYCap6JA2b9cl
         izbrM8iKNn0hvvlGBbterO1GVkLco22LcdOhZ02juykDR30isEEEfUqyKj135i1QPN8z
         0sxBDlxnFUpq2gTw6q3PFTbtmu47b/kNIzJFtdgU4Tp0rEMxVxaq8HwoQFtcUfo5UxlL
         63xEoE5meLc6Q8hpnlG/txFE2ZBwjQ7Ruu4KMgQGuk9fnqQqmtTQ001pX21gzaYe0Qqd
         oK+FH8ARKre7Wa5uurvihAB26IbdE8mQx4N9MwfIgGZAbjRah3BCHcH3k3kBuq7SYqwk
         WopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yUZJOCQFfSybgsGjOmdUNC3cYsOHMhcPhD9ZCvTtBLA=;
        b=P3yzEUW4yf0bhw+WJFUfSPRKEVo2NijGpvm/uTwWDSjpKnG/hNRfvyWq5a85e8SctV
         ZMnljqwmpSUkrCjrVN2xMlEZoGha3sApnQdIfWHiVfoAYloNhZFN5aEQrhqpoyA3FDy4
         dAzspINAMgGwxpqce+iUAJif3wRYAwL7602pJEsgOtxZjoikK564n6DkUQY2Ew6DVjkY
         BVsD107i4iVK4dCMv3Mgo70E7UB80MeYkWATdAD8Igg7O+N+HFwANHDwk4QNYr8RBcUB
         1Bu1BzeqIpx0umwfVgiEtVZJDu0NvLDKBoMvYu7FTHTJqMc9WlkCzsZhWYGjMxvu1egq
         QkGQ==
X-Gm-Message-State: APjAAAW4YkHNhqWgYaYnzmonTJsMNuD0ovqo0Q92tWTE2qa3ofycDsgA
	If18VJo+6dVmvYVXa2oHk4g=
X-Google-Smtp-Source: APXvYqyS6VdtF4OPW0cyq3RXb3wylYxfKd8FQSoyh8Nw5Dkw9KtdKp1RVTJ4IChbCtQMZUTgZ7xQHg==
X-Received: by 2002:aca:4c44:: with SMTP id z65mr632166oia.113.1566504138909;
        Thu, 22 Aug 2019 13:02:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2061:: with SMTP id n88ls739485ota.4.gmail; Thu, 22 Aug
 2019 13:02:18 -0700 (PDT)
X-Received: by 2002:a05:6830:148e:: with SMTP id s14mr1249517otq.152.1566504138529;
        Thu, 22 Aug 2019 13:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566504138; cv=none;
        d=google.com; s=arc-20160816;
        b=tB6roKec/rBQPNy/qGllCcfus+X0XajjlXRz3KY7qd+fnEsOEqv2bFIaVJRDb2XvW7
         ZmAESJYEBbxdwb34TVv9rffHFFcUUk2LaYB2TkyK7HK2eW7HLp5u2FPM2MtzDRmcObHd
         vRcFqKhoNgnz3O7EA0yf5z/vQbTg9SwtOb92MKoCzb4uY7w88vXKIzJJs3yxmmNNVLWQ
         CUGahe941l4li6Et/Pmltqc/J7E3AH7MtIYJozdzysrRqTW4nwGjhH2DCXKFFEwqAq+C
         Lji+nwf029VGOkyic89VYVfBk9Yn6zqTgj6EEgyQsVUlsRCVGVS9tOZUgd/auNIbIQW2
         z2Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6M0MCfExdShtaBNC5rUsoqRluAjvGaMj1xK+AyvQMYQ=;
        b=dOVaNwXLECbR0SYMuhTSYOttr64kDYjbT1cX68FgF92t+gybzV4Axuo2QmU3XfIyQ7
         4+PU1OtwIoyoXiFoLowotfDK051Z0cghyzvWY6kkvaPDBTGUMuP6JyySIg3WbWsD2CJG
         ww0AZy3FZdv+/RFy7UG4813iqexlI/KcHkxJzofvuY7whNyxFb/lC9+OJ1+Mv+cd27Gc
         i2j8lVOqdnC00++rTChGW/Ex2YVeZZBf3UOGWW31TZzzMChBcfg4ozqkE7LbA/zdZVht
         3dJz26vScaIEygkrEIDIyJHAPbIwiFvwmXIGdNzdNq+d8MsqirfYXHyX+xEM1tmMVOBI
         zeRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wA70pSly;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y188si34619oig.3.2019.08.22.13.02.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 13:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y1so4053540plp.9
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 13:02:18 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr569679plo.223.1566504137158;
 Thu, 22 Aug 2019 13:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
 <20190822183022.130790-1-nhuck@google.com>
In-Reply-To: <20190822183022.130790-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Aug 2019 13:02:05 -0700
Message-ID: <CAKwvOdn6av8bX4xUtuuKeJQdiQU+_Ty2aM8wtjP9+teU0Gt6Yg@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wA70pSly;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Aug 22, 2019 at 11:30 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> The stackframe setup when compiled with clang is different.
> Since the stack unwinder expects the gcc stackframe setup it
> fails to print backtraces. This patch adds support for the
> clang stackframe setup.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Cc: clang-built-linux@googlegroups.com
> Suggested-by: Tri Vo <trong@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Great, thanks for following up on the suggestions from code review.
Since this is going to go up via the arm tree, which has its own
process, please add my:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
to the commit message, then submit the patch to the maintainer's patch
tracking system:
https://www.armlinux.org.uk/developer/patches/info.php
(create a login, sign in, then visit:
https://www.armlinux.org.uk/developer/patches/add.php . I think the
correct thing is to put the first line of the commit in the summary
field, next/master as the kernel version (I applied/tested off of
-next), then the rest of the commit message body in the Patch Notes
field.  Make sure to attach the patch file.  Finally, it should appear
at https://www.armlinux.org.uk/developer/patches/section.php?section=0
I think within 24hrs).

> ---
> Changes from v2->v3
> * Fix indentation on code
> * Fix comment formatting
>
>  arch/arm/Kconfig.debug         |   2 +-
>  arch/arm/Makefile              |   5 +-
>  arch/arm/lib/Makefile          |   8 +-
>  arch/arm/lib/backtrace-clang.S | 217 +++++++++++++++++++++++++++++++++
>  4 files changed, 229 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/lib/backtrace-clang.S
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..b9c674ec19e0 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -56,7 +56,7 @@ choice
>
>  config UNWINDER_FRAME_POINTER
>         bool "Frame pointer unwinder"
> -       depends on !THUMB2_KERNEL && !CC_IS_CLANG
> +       depends on !THUMB2_KERNEL
>         select ARCH_WANT_FRAME_POINTERS
>         select FRAME_POINTER
>         help
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..6f251c201db0 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,10 @@ KBUILD_CFLAGS        += $(call cc-option,-mno-unaligned-access)
>  endif
>
>  ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS  +=-fno-omit-frame-pointer
> +ifeq ($(CONFIG_CC_IS_GCC),y)
> +KBUILD_CFLAGS += -mapcs -mno-sched-prolog
> +endif
>  endif
>
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index b25c54585048..6d2ba454f25b 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -5,7 +5,7 @@
>  # Copyright (C) 1995-2000 Russell King
>  #
>
> -lib-y          := backtrace.o changebit.o csumipv6.o csumpartial.o   \
> +lib-y          := changebit.o csumipv6.o csumpartial.o               \
>                    csumpartialcopy.o csumpartialcopyuser.o clearbit.o \
>                    delay.o delay-loop.o findbit.o memchr.o memcpy.o   \
>                    memmove.o memset.o setbit.o                        \
> @@ -19,6 +19,12 @@ lib-y                := backtrace.o changebit.o csumipv6.o csumpartial.o   \
>  mmu-y          := clear_user.o copy_page.o getuser.o putuser.o       \
>                    copy_from_user.o copy_to_user.o
>
> +ifdef CONFIG_CC_IS_CLANG
> +  lib-y        += backtrace-clang.o
> +else
> +  lib-y        += backtrace.o
> +endif
> +
>  # using lib_ here won't override already available weak symbols
>  obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> new file mode 100644
> index 000000000000..2ff375144b55
> --- /dev/null
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -0,0 +1,217 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + *  linux/arch/arm/lib/backtrace-clang.S
> + *
> + *  Copyright (C) 2019 Nathan Huckleberry
> + *
> + */
> +#include <linux/kern_levels.h>
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +               .text
> +
> +/* fp is 0 or stack frame */
> +
> +#define frame  r4
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define mask   r7
> +#define sv_lr  r8
> +
> +ENTRY(c_backtrace)
> +
> +#if !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK)
> +               ret     lr
> +ENDPROC(c_backtrace)
> +#else
> +
> +
> +/*
> + * Clang does not store pc or sp in function prologues so we don't know exactly
> + * where the function starts.
> + *
> + * We can treat the current frame's lr as the saved pc and the preceding
> + * frame's lr as the current frame's lr, but we can't trace the most recent
> + * call.  Inserting a false stack frame allows us to reference the function
> + * called last in the stacktrace.
> + *
> + * If the call instruction was a bl we can look at the callers branch
> + * instruction to calculate the saved pc.  We can recover the pc in most cases,
> + * but in cases such as calling function pointers we cannot. In this case,
> + * default to using the lr. This will be some address in the function, but will
> + * not be the function start.
> + *
> + * Unfortunately due to the stack frame layout we can't dump r0 - r3, but these
> + * are less frequently saved.
> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *     frame=> saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addresses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *             add fp, sp, #x
> + *             stmfd sp!, {r0 - r3} (optional)
> + *
> + *
> + *
> + *
> + *
> + *
> + * The diagram below shows an example stack setup for dump_stack.
> + *
> + * The frame for c_backtrace has pointers to the code of dump_stack. This is
> + * why the frame of c_backtrace is used to for the pc calculation of
> + * dump_stack. This is why we must move back a frame to print dump_stack.
> + *
> + * The stored locals for dump_stack are in dump_stack's frame. This means that
> + * to fully print dump_stack's frame we need both the frame for dump_stack (for
> + * locals) and the frame that was called by dump_stack (for pc).
> + *
> + * To print locals we must know where the function start is. If we read the
> + * function prologue opcodes we can determine which variables are stored in the
> + * stack frame.
> + *
> + * To find the function start of dump_stack we can look at the stored LR of
> + * show_stack. It points at the instruction directly after the bl dump_stack.
> + * We can then read the offset from the bl opcode to determine where the branch
> + * takes us.  The address calculated must be the start of dump_stack.
> + *
> + * c_backtrace frame           dump_stack:
> + * {[LR]    }  ============|   ...
> + * {[FP]    }  =======|    |   bl c_backtrace
> + *                    |    |=> ...
> + * {[R4-R10]}         |
> + * {[R0-R3] }         |        show_stack:
> + * dump_stack frame   |        ...
> + * {[LR]    } =============|   bl dump_stack
> + * {[FP]    } <=======|    |=> ...
> + * {[R4-R10]}
> + * {[R0-R3] }
> + */
> +
> +               stmfd   sp!, {r4 - r9, fp, lr}  @ Save an extra register
> +                                               @ to ensure 8 byte alignment
> +               movs    frame, r0               @ if frame pointer is zero
> +               beq     no_frame                @ we have no stack frames
> +               tst     r1, #0x10               @ 26 or 32-bit mode?
> +               moveq   mask, #0xfc000003
> +               movne   mask, #0                @ mask for 32-bit
> +
> +/*
> + * Switches the current frame to be the frame for dump_stack.
> + */
> +               add     frame, sp, #24          @ switch to false frame
> +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> +               bne     no_frame
> +
> +/*
> + * sv_fp is the stack frame with the locals for the current considered
> + * function.
> + *
> + * sv_pc is the saved lr frame the frame above. This is a pointer to a code
> + * address within the current considered function, but it is not the function
> + * start. This value gets updated to be the function start later if it is
> + * possible.
> + */
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> +
> +               teq     sv_fp, mask             @ make sure next frame exists
> +               beq     no_frame
> +
> +/*
> + * sv_lr is the lr from the function that called the current function. This is
> + * a pointer to a code address in the current function's caller.  sv_lr-4 is
> + * the instruction used to call the current function.
> + *
> + * This sv_lr can be used to calculate the function start if the function was
> + * called using a bl instruction. If the function start can be recovered sv_pc
> + * is overwritten with the function start.
> + *
> + * If the current function was called using a function pointer we cannot
> + * recover the function start and instead continue with sv_pc as an arbitrary
> + * value within the current function. If this is the case we cannot print
> + * registers for the current function, but the stacktrace is still printed
> + * properly.
> + */
> +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +               ldr     r3, .Lopcode+4
> +               and     r2, r3, r0              @ is this a bl call
> +               teq     r2, r3
> +               bne     finished_setup          @ give up if it's not
> +               and     r0, #0xffffff           @ get call offset 24-bit int
> +               lsl     r0, r0, #8              @ sign extend offset
> +               asr     r0, r0, #8
> +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> +               add     sv_pc, sv_pc, r0, lsl #2@ find function start
> +
> +finished_setup:
> +
> +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> +
> +/*
> + * Print the function (sv_pc) and where it was called from (sv_lr).
> + */
> +1004:          mov     r0, sv_pc
> +
> +               mov     r1, sv_lr
> +               mov     r2, frame
> +               bic     r1, r1, mask            @ mask PC/LR for the mode
> +               bl      dump_backtrace_entry
> +
> +/*
> + * Test if the function start is a stmfd instruction to determine which
> + * registers were stored in the function prologue.
> + *
> + * If we could not recover the sv_pc because we were called through a function
> + * pointer the comparison will fail and no registers will print. Unwinding will
> + * continue as if there had been no registers stored in this frame.
> + */
> +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +               ldr     r3, .Lopcode            @ instruction exists,
> +               teq     r3, r1, lsr #11
> +               ldr     r0, [frame]             @ locals are stored in
> +                                               @ the preceding frame
> +               subeq   r0, r0, #4
> +               bleq    dump_backtrace_stm      @ dump saved registers
> +
> +/*
> + * If we are out of frames or if the next frame is invalid.
> + */
> +               teq     sv_fp, #0               @ zero saved fp means
> +               beq     no_frame                @ no further frames
> +
> +               cmp     sv_fp, frame            @ next frame must be
> +               mov     frame, sv_fp            @ above the current frame
> +               bhi     for_each_frame
> +
> +1006:          adr     r0, .Lbad
> +               mov     r1, frame
> +               bl      printk
> +no_frame:      ldmfd   sp!, {r4 - r9, fp, pc}
> +ENDPROC(c_backtrace)
> +               .pushsection __ex_table,"a"
> +               .align  3
> +               .long   1001b, 1006b
> +               .long   1002b, 1006b
> +               .long   1003b, 1006b
> +               .long   1004b, 1006b
> +               .long   1005b, 1006b
> +               .popsection
> +
> +.Lbad:         .asciz  "Backtrace aborted due to bad frame pointer <%p>\n"
> +               .align
> +.Lopcode:      .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> +               .word   0x0b000000              @ bl if these bits are set
> +
> +#endif
> --
> 2.23.0.187.g17f5b7556c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6av8bX4xUtuuKeJQdiQU%2B_Ty2aM8wtjP9%2BteU0Gt6Yg%40mail.gmail.com.
