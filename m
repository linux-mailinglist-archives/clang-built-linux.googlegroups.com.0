Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFOR6HVAKGQEYQFM27A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id F002696B99
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 23:39:34 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 71sf107465otl.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 14:39:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566337174; cv=pass;
        d=google.com; s=arc-20160816;
        b=m/UZQQnToy/nHGmw8LraJtcvd7QZ0sGm6eMKuAUK9HqBt6+PCpyvBaEtrDY9lUn3P8
         TDJDffs3ntT1UXJndphCeWq5yNhwyUGlIlP1UZw4+rxb9+N/RaOSrF7CqqBFJUlNI7be
         BUzuBg/pZOftyqUNLGWEMkSvYDh0o3vi9BZkGOFrxVKQyiB9Qmu7o6zGBKbVo34TwYyy
         FQ9V5KUWwcBRKqy8o6LFzP4FqLe5Z0sGPqhvDWT1sJUbrRKHvEtImR1nlihzdmDHZSFJ
         9lDB58noLC+eurzEFl2/FDB1sQIBYRRxjW6LpUdF5e+Zwdr4B7uL0hsCTaVs21Alioj0
         MEZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XhDaR6F5J5Q2aLbep+L0PG5rD64QQtFLqVSlDT4JOyQ=;
        b=jYrtQj5BuC727MS+x2kpTuEDfgebxJfSLymNOhNR0aiOAvBMqtecQJvpkbufyJFBAe
         DFJ7aEHPk1YLMq+opYOWfxReasiZ5uD7rBl4XcMZ2krCB1gSeUploM3WMQtpR+3+5plN
         AxaiNwV48/VZQRPigNWPMx7bpM7ANETcWI5T/kbcyFMe+sj4XbV8bLiNdZCqBSZOmUzk
         gkAx4Xq9TexgkBIM9B8mvp0jfl+PCPwEn5rQMdKNVBqDbWEmYE06vKv05cjONaUoF4H6
         BwdYIP1TR8CXYxXe9Pjq3x2oSRBO82MMjMQCUXZYm2wZ/cnYFon8FUeXnjKL9yFGVeDa
         Uxww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TKI8yRBq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XhDaR6F5J5Q2aLbep+L0PG5rD64QQtFLqVSlDT4JOyQ=;
        b=dalCwWtLljMQKBgv9WzaeBM9psqCiSy/6+DNmGR+2Exx7DHy7/kKlJTcHCMGS+LlYo
         BCOZVwLVQ/dh07J/dL8FFlyecaOUCmX6Dd8OdatoBpzPjzLEC90sYys2W1jsxbndVPNC
         WX9Rv9irE5BNKF/WldMdTcmEc2w2H85AaYO5J+jHoDROnLNCCcLDkXuhIKqX4t8IlX9Z
         Ifa2xmlW9ass5uEQy1cbzo4jLetNnHhSh+K6H3apYhpcQUe32gsutgBrp5OhbQxe4mS+
         t5Kl/cctRdUia6x4C698Gdp62FeNeyeZLVnVdzItx+WqNDyTmSUH7zDqT4zqMtscw90E
         ugYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XhDaR6F5J5Q2aLbep+L0PG5rD64QQtFLqVSlDT4JOyQ=;
        b=Kr9ck8qM3msIlCMRt4zOxwithkSox/BOrAO3fOT3iXzAs9qp85AddN9g3xnLe4PDHV
         gEDZ3yOLFgXu4ZLazJIJsg9fYUOXeVxrIs/PoMkZVrwTsLzOcje2IT3+P1Qi493BgD+8
         9WBduG1IZk1uBqluO1EDtuShB6wUO07lG0cgao1bTkG6VL6pieFrYxM79/6PS1Hzd/Tk
         Kp/vv1cOJiktiqttjXtp+IlpswsK7Dd7KQNKj/cYmJI5X29QeTMbScCmV8z33iwDSLlT
         pJrmfb1N6FDiD8rWKTLDPC0URt11kPLbN6aW1s8SEDC6qvcN/LkKz7ZXsjKq3lWBBmRv
         jXbQ==
X-Gm-Message-State: APjAAAVlQR+ULY9rAtFTzxzNLcUGx9j0avGIW135jncMbCHgabmz3eVW
	Udayt5ho6qEoBheXfqlOzBI=
X-Google-Smtp-Source: APXvYqw4kedOv0ENfYdbyCjBsYxabCdEhYjlSDexVDnyYRr+v3ZbREROp546+OweIJ+YodUhmOlHUQ==
X-Received: by 2002:a05:6830:134a:: with SMTP id r10mr2358360otq.17.1566337173803;
        Tue, 20 Aug 2019 14:39:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d14:: with SMTP id a20ls17651oib.0.gmail; Tue, 20 Aug
 2019 14:39:33 -0700 (PDT)
X-Received: by 2002:a54:4712:: with SMTP id k18mr1579289oik.97.1566337173379;
        Tue, 20 Aug 2019 14:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566337173; cv=none;
        d=google.com; s=arc-20160816;
        b=yp7FsQAh2iXUdkL/BVXvLzf7zgsHIQ4nbomSGgPqZ1/pH2reEmnttc1UegX70dxWZo
         FApbt6uktFkK/JFux02QaiIfwrmBJjhgE5XapcXHiNmtRPLVBmiWr1PG7M7sAeGixSLl
         kJbsjvxvAYitdlD7H0Tv3ddqmnHvwm25HjFIgcrtfSxUs3WXNCLAeWO8Owpzjc7tXxsB
         4vQ69dKsrM29XYkPpLQIlUO+N9SG/n4PnsOQHHM1YQSOgHps3T17hfjJRjbB2DUopcQq
         RYVa4Gk/uFdMVWz/FNlK9dODWTx7KaYJ1vI6fqcG25X9Y2s7gAuz2/41Tmw3uVFL8ppQ
         /Q/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BPT2HMqCJmLk/KSZfJZIK7XyZlgmy8I3ISOqOedYMYI=;
        b=IaIJGpGoWqsKFtICMSFSxcUSNwz1NTnTPM+V8y6tlfBq0O4HHwwiJTSoIYhhMpfX2V
         jFfoEKXlPxLY0oJvetytQE38BeUdsCS+J+XaP1J+sCYTEQL0S85cr7ojcWHqEWUiRLZn
         V9sGXG84aXYoA5VgIWcRfI6NXwTejQafpRpkNGQg7dvUnICjuouLoN6hxB/ZaTlrUDSz
         bQiYHA87gMIEP9357eEXiYYj+YgKrn7eFI27m/gHl110igfjiqex4quwYjk2ntXIrgjL
         yomOxyu+xPZvssPXIQTgD40Td05Zrsx6hi25Wic3fM+Drdyhcoc35xNav0zTuJp+2zlE
         /lgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TKI8yRBq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i5si823734otp.4.2019.08.20.14.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 14:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i18so37133pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 14:39:33 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr32511807pff.165.1566337171932;
 Tue, 20 Aug 2019 14:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194351.107486-1-nhuck@google.com>
In-Reply-To: <20190820194351.107486-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 14:39:20 -0700
Message-ID: <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
Subject: Re: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TKI8yRBq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Aug 20, 2019 at 12:44 PM Nathan Huckleberry <nhuck@google.com> wrote:
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
> ---
> Changes from RFC
> * Push extra register to satisfy 8 byte alignment requirement
> * Add clarifying comments
> * Separate code into its own file

Thanks for the patch! The added comments and moving the implementation
to its own file make it easier to review.

>
>  arch/arm/Kconfig.debug         |   4 +-
>  arch/arm/Makefile              |   5 +-
>  arch/arm/lib/Makefile          |   8 +-
>  arch/arm/lib/backtrace-clang.S | 224 +++++++++++++++++++++++++++++++++
>  4 files changed, 237 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/lib/backtrace-clang.S
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..92fca7463e21 100644
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
> @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
>           When this option is set, the selected DEBUG_LL output method
>           will be re-used for normal decompressor output on multiplatform
>           kernels.
> -
> +

Probably can drop the added newline?

>
>  config UNCOMPRESS_INCLUDE
>         string
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..729e223b83fe 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,10 @@ KBUILD_CFLAGS        += $(call cc-option,-mno-unaligned-access)
>  endif
>
>  ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS  +=-fno-omit-frame-pointer
> +  ifeq ($(CONFIG_CC_IS_GCC),y)
> +  KBUILD_CFLAGS += -mapcs -mno-sched-prolog
> +  endif

While I can appreciate the indentation, it's unusual to indent
additional depths of kernel Makefiles.  At least the rest of this file
does not do so.  Of course, the other Makefile you touch below does
two spaces.  At least try to keep the file internally consistent, even
if the kernel itself is inconsistent.

>  endif
>
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index b25c54585048..e10a769c72ec 100644
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
> +  lib-y += backtrace-clang.o
> +else
> +  lib-y += backtrace.o
> +endif

The indentation should match the above (from this file).  Looks like 1
tab after lib-y.  See L34(CONFIG_CPU_32v3) for what I would have
expected.

> +
>  # using lib_ here won't override already available weak symbols
>  obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> new file mode 100644
> index 000000000000..2b02014dbdd1
> --- /dev/null
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -0,0 +1,224 @@
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

ah, I see that the reference implementation uses an assembly comment
here. Ok (sorry for the noise).

> +
> +#define frame  r4
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define mask   r7
> +#define sv_lr   r8
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
> + * Clang does not store pc or sp in function prologues
> + *             so we don't know exactly where the function
> + *             starts.
> + * We can treat the current frame's lr as the saved pc and the
> + *             preceding frame's lr as the lr, but we can't

preceding frame's lr as the current frame's lr, ...

> + *             trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + *             function called last in the stacktrace.
> + * If the call instruction was a bl we can look at the callers
> + *             branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + *             calling function pointers we cannot. In this
> + *             case, default to using the lr. This will be
> + *             some address in the function, but will not
> + *             be the function start.
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.

The use of tabs vs spaces in these comments is inconsistent.  Not that
I can see whitespace, but:
https://github.com/nickdesaulniers/dotfiles/blob/37359525f5a403b4ed2d3f9d1bbbee2da8ec8115/.vimrc#L35-L41
Also, I don't think you need to tab indent every line after the first.
Where did that format come from?

> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *    frame => saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addresses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *                 add fp, sp, #x
> + *                 stmfd sp!, {r0 - r3} (optional)
> + *
> + *
> + *
> + *
> + *
> + *
> + * The diagram below shows an example stack setup
> + *     for dump_stack.
> + *
> + * The frame for c_backtrace has pointers to the
> + *     code of dump_stack. This is why the frame of
> + *     c_backtrace is used to for the pc calculation
> + *     of dump_stack. This is why we must move back
> + *     a frame to print dump_stack.
> + *
> + * The stored locals for dump_stack are in dump_stack's
> + *     frame. This means that to fully print dump_stack's frame
> + *     we need the both the frame for dump_stack (for locals) and the

we need both the ...
(There's an extra `the` in the sentence).

> + *     frame that was called by dump_stack (for pc).
> + *
> + * To print locals we must know where the function start is. If
> + *     we read the function prologue opcodes we can determine
> + *     which variables are stored in the stack frame.
> + *
> + * To find the function start of dump_stack we can look at the
> + *     stored LR of show_stack. It points at the instruction
> + *     directly after the bl dump_stack. We can then read the
> + *     offset from the bl opcode to determine where the branch takes us.
> + *     The address calculated must be the start of dump_stack.
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
> +stmfd   sp!, {r4 - r9, fp, lr} @ Save an extra register
> +                               @ to ensure 8 byte alignment
> +movs   frame, r0               @ if frame pointer is zero
> +beq    no_frame                @ we have no stack frames
> +
> +tst    r1, #0x10               @ 26 or 32-bit mode?
> +moveq  mask, #0xfc000003

Should we be using different masks for ARM vs THUMB as per the
reference implementation?

> +movne  mask, #0                @ mask for 32-bit
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
> + *     function.
> + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> + *     code address within the current considered function, but
> + *     it is not the function start. This value gets updated to be
> + *     the function start later if it is possible.
> + */
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp

The reference implementation applies the mask to sv_pc and sv_fp.  I
assume we want to, too?

> +
> +               teq     sv_fp, #0               @ make sure next frame exists
> +               beq     no_frame
> +
> +/*
> + * sv_lr is the lr from the function that called the current function. This
> + *     is a pointer to a code address in the current function's caller.
> + *     sv_lr-4 is the instruction used to call the current function.
> + * This sv_lr can be used to calculate the function start if the function
> + *     was called using a bl instruction. If the function start
> + *     can be recovered sv_pc is overwritten with the function start.
> + * If the current function was called using a function pointer we cannot
> + *     recover the function start and instead continue with sv_pc as
> + *     an arbitrary value within the current function. If this is the case
> + *     we cannot print registers for the current function, but the stacktrace
> + *     is still printed properly.
> + */
> +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +               ldr     r3, .Ldsi+8

I wonder what `dsi` stands for, it could use a better name.  Maybe put
that mask in a more descriptively named section and use that instead
of `.Ldsi+8`?

> +               and     r2, r3, r0              @ is this a bl call
> +               teq     r2, r3
> +               bne     finished_setup          @ give up if it's not
> +               and     r0, #0xffffff           @ get call offset 24-bit int
> +               lsl     r0, r0, #8              @ sign extend offset
> +               asr     r0, r0, #8

It's too bad this should work for older ARM versions, v6 added
dedicated instructions for this:
http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0489c/Cihfifdd.html

> +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> +               add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> +
> +finished_setup:
> +
> +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> +
> +/*
> + * Print the function (sv_pc) and where it was called
> + *     from (sv_lr).
> + */
> +1004:          mov     r0, sv_pc
> +
> +               mov     r1, sv_lr
> +               mov     r2, frame
> +               bic     r1, r1, mask            @ mask PC/LR for the mode
> +               bl      dump_backtrace_entry
> +
> +/*
> + * Test if the function start is a stmfd instruction
> + *     to determine which registers were stored in the function
> + *     prologue.
> + * If we could not recover the sv_pc because we were called through
> + *     a function pointer the comparison will fail and no registers
> + *     will print.
> + */
> +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +               ldr     r3, .Ldsi               @ instruction exists,
> +               teq     r3, r1, lsr #11
> +               ldr     r0, [frame]             @ locals are stored in
> +                                               @ the preceding frame
> +               subeq   r0, r0, #4
> +               bleq    dump_backtrace_stm      @ dump saved registers

Do we need to do anything to test .Ldsi+4? Otherwise looks like we
define it but don't use it?

> +
> +/*
> + * If we are out of frames or if the next frame
> + *     is invalid.
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
> +.Ldsi:         .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> +               .word   0x0b000000              @ bl if these bits are set
> +
> +#endif
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2BsGyKfAMNbL10ME%3DDrG5%3D4d5kvzdMxjNC22JLLr1h%3Dg%40mail.gmail.com.
