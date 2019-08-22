Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3MW7DVAKGQEA5RBHQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0FA989CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 05:26:38 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id a9sf2411281pga.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 20:26:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566444397; cv=pass;
        d=google.com; s=arc-20160816;
        b=MobpsoxUFRgs3G6x0K5SV5zRLe2G5RjmWUzbWcfmKNniLb3Wfqz9DGj27+vUiN6CoS
         K3qpOgMTKZGhbopNrmlwFjGFNFOXvdppkPqBc7pk2jcGB+Jc+fFomKe7plQ89lJxgx1l
         t+hH+5q7NuWsKldOUzJ1pp1EYyUnZxnvOD539AlX6EB65Z0k9HkCkLn1yvTRW8qoZN/v
         BD6/meHoyjobZatTu9ffRg1DjMs0atn6NELWYaHKyhQSvdjFNfZIkpjIjTE/ZsK1MuyY
         0IpBhBDX+xk56VUHp1d9FUk/sO6pgmfwk9hRTBOxF6hHSvWS6wVY1VbdGeEygFQTTvpF
         DnkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3L7Kzzps+SoASu/nqf51QFovKEfwirgEwV0q0QpFs5Y=;
        b=IfZCJGd3twsd1zNvLUarlzOu5xaYKRBzCRt34r4Hi8GzzYjPs7mgHxmiydNI46R8QE
         EsZUmJTbsoNDvmovTXwFknKh8VBE+O7rg91M0M5Y2agFqifT0WmdsIgMFGPGSGcT+pHt
         6FVelIvxp/GSdYuRJ4/vSeuLnRBe/oIiiv0tlwSQh9yeu4+cc6fLzITOmpg/ZnDt/BZb
         h/vig+DlXj0VXjWoqLVRIW3jswb4TWpMPHZW4Pe5SpyCysxDLMvHV3QjAvdV5tqocDmZ
         riPgX8LFqdZAf5rc8oQwl0xfqIeChnGGvxO3tRUustZ2D8aGNKpNJHnxIwQX1aX9zZq6
         N1HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cf9CApzJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3L7Kzzps+SoASu/nqf51QFovKEfwirgEwV0q0QpFs5Y=;
        b=Z4RhZdwwqGigRmA5NBEpPtKRfoJ/lUxI77TsDIYx2ECSe7zhj1OdlehRn40fKXJvCs
         Nc+otPGAOgy0G34REsaSolTFmiyfpkpM6BYU0vHMHZ/PivY5JWXJdWavffg0/SqkMo3Z
         Kg+ehmS6B963POhWW8le5dDkvG4dDjBzyGUP7XjhcscHXOP1gN4GdEAGun42lpxtr0Kk
         AwIJO2wiyR7EsUnzKdMSMRboJF4Xkf5wlGO+cf8bu30N9xF8ms2BDfAcefol8PTRVnfk
         v9hQY04LTKdv1q98BinU386korbKwvQvRLxXyEX4vsFe5zdXMw0oyhJSTyR0wur/pcAY
         vIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3L7Kzzps+SoASu/nqf51QFovKEfwirgEwV0q0QpFs5Y=;
        b=PcLasiZnlvXi9X6TCoo7gaAwdykz2guzwmfbNTpf6Vvd0nQiLKaDNs2LmuIYerxb4d
         KiX5fv8zEVuyxW07mm/WDqyjF5Y8n78cZErE5cngNUBFisBjb7EHDOb+ixl7mV6JcMPU
         b9dojs3pVvT2BvMtQb7wFW0KLG45K5tkAZ1g/pJG9rxa0qdUv5TRjgcKioiLS3m9+l78
         E8YJ0sWebZnqoFgmmbYEBNqR0DaGqN56iSHQufYQ5+FFxdAEEZKZngZvqA3FUCGMeHCQ
         OpLtG1UfGBtax4K6jo8X40uNVDLjxvBMNKK/0X3BOMizqq/ll9lkGeT8SJmAs5EORr8t
         SbHw==
X-Gm-Message-State: APjAAAUtbarNtsFPZbQSQdJ993/8XYH9QxqZS6LUY0RQOYkz7ayC2Dyk
	7r8Z6Yc9VRp6cOzEShl6zdc=
X-Google-Smtp-Source: APXvYqySCYoR7075yXPukqAOheiQXUNys9qv3Q/L+7fRBCXWYWCLCbsjbsqu5uAEvmuBU5uMH3uaNw==
X-Received: by 2002:a17:902:be15:: with SMTP id r21mr35952592pls.293.1566444397042;
        Wed, 21 Aug 2019 20:26:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2ba9:: with SMTP id l38ls1249338plb.9.gmail; Wed, 21
 Aug 2019 20:26:36 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr3259428pjq.104.1566444396716;
        Wed, 21 Aug 2019 20:26:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566444396; cv=none;
        d=google.com; s=arc-20160816;
        b=DsTSgF64lFJnuxikvgwQBKj8tTo6ZkvMR14/4jDHQ8og0swddwRT8tarFEKthB+DPR
         LRyplUBMYfZVn+m7ZLY4YZGuCsvs2yt5xa+oZ2rv8NxwbAfl10lFvtRVLF4RGcrLcVtl
         pGJynR/e/SKRKXvMHGburE+1Qx3yhCJEjZ1zjpNJpblwXsYwlMLWvqt7dDLgv8HFElyj
         rcUdZNcLZgNyGVDIqSNDQ6ctm9EejdHvUAhfausoJaNULQB5WKLG6RBXLOq0dK25fYAe
         S1AOC54lB9MIaUc3WE8ED3Hkd306l3DowZ03NVQY2jBtwkuXQG7jVDwYoPUC+z1NUjD5
         8+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MCCskUXcrLlS5LTvVhURJAIX531PoVJ3wIvkbzzRBQk=;
        b=yEpcZmBF57x6XmKEwSWoro+fFK4bpIGTQf/cQcqDH4AfxlkRLnvRUK+hhOD2KFnMay
         3a9CE7aPB5o4gdHk+UC1lOCS+tmPjCrXP1U6lfFkbaKpbc2LrzYpfgduH85UZKjPY/Pu
         3A7GzXC0NaSxKjCGYLhAldkhS5f/nirqm6B490v7lJWHDQq+g2D473F1n7II4V7VVe1f
         4mg5fULVnaKSTcFvc1GVIKE7UkSJqXosB6KW38AT/GAR4iUgFrukSzgCg1+E43/DgwyK
         1463XhaYT+nilrUvOo+YoFeQlgMgcHVtiZ7rTRt13P0b+KkbXGvZ5QN7m99CecHFT/i/
         zGnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cf9CApzJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b23si659396plz.1.2019.08.21.20.26.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 20:26:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n4so2630683pgv.2
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 20:26:36 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr27819692pgq.10.1566444395734;
 Wed, 21 Aug 2019 20:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
 <20190821174619.21935-1-nhuck@google.com>
In-Reply-To: <20190821174619.21935-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 20:26:23 -0700
Message-ID: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Tri Vo <trong@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cf9CApzJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Aug 21, 2019 at 10:46 AM Nathan Huckleberry <nhuck@google.com> wrote:
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
> Changes from v1->v2
> * Fix indentation in various files
> * Swap spaces for tabs
> * Rename Ldsi to Lopcode
> * Remove unused Ldsi entry
>
>  arch/arm/Kconfig.debug         |   2 +-
>  arch/arm/Makefile              |   5 +-
>  arch/arm/lib/Makefile          |   8 +-
>  arch/arm/lib/backtrace-clang.S | 229 +++++++++++++++++++++++++++++++++
>  4 files changed, 241 insertions(+), 3 deletions(-)
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
> index 000000000000..6f2a8a57d0fb
> --- /dev/null
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -0,0 +1,229 @@
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
> + * Clang does not store pc or sp in function prologues
> + * so we don't know exactly where the function
> + * starts.

To quickly re-wrap text (if you're using vim) such as with comments like these:
shift+v (VISUAL LINE MODE)
j or k to highlight lines
gq (to rewrap)
You may need `set cc=80` (not sure).

> + *
> + * We can treat the current frame's lr as the saved pc and the
> + * preceding frame's lr as the current frame's lr,
> + * but we can't trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + * function called last in the stacktrace.
> + *
> + * If the call instruction was a bl we can look at the callers
> + * branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + * calling function pointers we cannot. In this
> + * case, default to using the lr. This will be
> + * some address in the function, but will not
> + * be the function start.
> + *
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.

I guess if they were spilled, but I'm ok with this; I'd rather have a
working unwinder than disabled config.  The printing is a debug
feature that's nice to have, but the main focus should be unwinding.
We can always revisit improving support.

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
> + * The diagram below shows an example stack setup
> + * for dump_stack.
> + *
> + * The frame for c_backtrace has pointers to the
> + * code of dump_stack. This is why the frame of
> + * c_backtrace is used to for the pc calculation
> + * of dump_stack. This is why we must move back
> + * a frame to print dump_stack.
> + *
> + * The stored locals for dump_stack are in dump_stack's
> + * frame. This means that to fully print dump_stack's frame
> + * we need both the frame for dump_stack (for locals) and the
> + * frame that was called by dump_stack (for pc).
> + *
> + * To print locals we must know where the function start is. If
> + * we read the function prologue opcodes we can determine
> + * which variables are stored in the stack frame.
> + *
> + * To find the function start of dump_stack we can look at the
> + * stored LR of show_stack. It points at the instruction
> + * directly after the bl dump_stack. We can then read the
> + * offset from the bl opcode to determine where the branch takes us.
> + * The address calculated must be the start of dump_stack.
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

===>

> +stmfd   sp!, {r4 - r9, fp, lr} @ Save an extra register
> +                               @ to ensure 8 byte alignment
> +movs   frame, r0               @ if frame pointer is zero
> +beq    no_frame                @ we have no stack frames
> +
> +tst    r1, #0x10               @ 26 or 32-bit mode?
> +moveq  mask, #0xfc000003
> +movne  mask, #0                @ mask for 32-bit

<== this section of the patch has weird indentation. The rest uses 2
tabs, this has none.

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
> + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> + * code address within the current considered function, but
> + * it is not the function start. This value gets updated to be
> + * the function start later if it is possible.
> + */
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> +
> +               teq     sv_fp, mask             @ make sure next frame exists
> +               beq     no_frame
> +
> +/*
> + * sv_lr is the lr from the function that called the current function. This
> + * is a pointer to a code address in the current function's caller.
> + * sv_lr-4 is the instruction used to call the current function.
> + *
> + * This sv_lr can be used to calculate the function start if the function
> + * was called using a bl instruction. If the function start
> + * can be recovered sv_pc is overwritten with the function start.
> + *
> + * If the current function was called using a function pointer we cannot
> + * recover the function start and instead continue with sv_pc as
> + * an arbitrary value within the current function. If this is the case
> + * we cannot print registers for the current function, but the stacktrace
> + * is still printed properly.
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
> + * Print the function (sv_pc) and where it was called
> + * from (sv_lr).
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
> + * to determine which registers were stored in the function
> + * prologue.
> + *
> + * If we could not recover the sv_pc because we were called through
> + * a function pointer the comparison will fail and no registers
> + * will print.

Will we still unwind though?

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
> 2.23.0.rc1.153.gdeed80330f-goog
>

OK, with you patch applied on today's Linux next,
CONFIG_UNWINDER_FRAME_POINTER, and ToT Clang:

$ qemu-system-arm -kernel arch/arm/boot/zImage -nographic -m 2048
--append "console=ttyAMA0 root=/dev/ram0" -machine virt
[    0.000000] Linux version 5.3.0-rc5-07709-gac2d7d4a10c1-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 10.0.0
(https://github.com/llvm/llvm-project.git
da648ab8de3638ff82d6b9349c603b854a0224d6)) #53 SMP Wed Aug 21 20:05:15
PDT 2019
...
[    0.957046] Kernel panic - not syncing: VFS: Unable to mount root
fs on unknown-block(1,0)
[    0.957490] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.3.0-rc5-07709-gac2d7d4a10c1-dirty #53
[    0.957808] Hardware name: Generic DT based system
[    0.958046] Backtrace:
[    0.958504] [<c030da98>] (dump_backtrace) from [<c030da94>]
(show_stack+0x14/0x18)
[    0.958844]  r10:c16f585c r6:00000000 r5:c198c7e4 r4:600000d3
[    0.959085] [<c030da80>] (show_stack) from [<c106c2c8>]
(dump_stack+0xac/0xd8)
[    0.959358] [<c106c21c>] (dump_stack) from [<c03504a0>] (panic+0x118/0x354)
[    0.959568]  r5:c19a61b5 r4:c1427ce5
[    0.959722] [<c0350388>] (panic) from [<c1601624>]
(mount_block_root+0x13c/0x1f0)
[    0.959947] [<c16014e8>] (mount_block_root) from [<c1601a48>]
(mount_root+0xb0/0xb4)
[    0.960210]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
r6:00000000 r5:00100000
[    0.960492]  r4:c1427d49
[    0.960600] [<c1601998>] (mount_root) from [<c1601d0c>]
(prepare_namespace+0x1ec/0x1f0)
[    0.960886]  r5:c19a3d30 r4:c16f5868
[    0.961021] [<c1601b20>] (prepare_namespace) from [<c16011ac>]
(kernel_init_freeable+0xe0/0xf4)
[    0.961330]  r5:00000000 r4:c19a3d1c
[    0.961468] [<c16010cc>] (kernel_init_freeable) from [<c10868d8>]
(kernel_init+0xc/0x2ac)
[    0.961761]  r5:c10868cc r4:00000000
[    0.961913] [<c10868d8>] (kernel_init) from [<c03010e8>]
(ret_from_fork+0x14/0x2c)
[    0.962210] Exception stack(0xea09bf94 to 0xea09bfdc)
[    0.962490] bf80:
c10868d8 00000000 c10868cc
[    0.962883] bfa0: 00000000 00000000 00000000 c03010e8 00000000
00000000 00000000 00000000
[    0.963202] bfc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000
[    0.963936] ---[ end Kernel panic - not syncing: VFS: Unable to
mount root fs on unknown-block(1,0) ]---

For comparison, the reference implementation:
[    0.000000] Linux version 5.3.0-rc5-07709-gac2d7d4a10c1-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (gcc version 8.2.0
(Debian 8.2.0-14+build1)) #54 SMP Wed Aug 21 20:15:27 PDT 2019
...
[    1.048134] Kernel panic - not syncing: VFS: Unable to mount root
fs on unknown-block(1,0)
[    1.048617] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.3.0-rc5-07709-gac2d7d4a10c1-dirty #54
[    1.048935] Hardware name: Generic DT based system
[    1.049191] Backtrace:
[    1.049663] [<c030dff8>] (dump_backtrace) from [<c030e368>]
(show_stack+0x18/0x1c)
[    1.050038]  r7:c16ed85c r6:600000d3 r5:00000000 r4:c198f804
[    1.050292] [<c030e350>] (show_stack) from [<c0f550bc>]
(dump_stack+0xbc/0xd0)
[    1.050581] [<c0f55000>] (dump_stack) from [<c0349fe8>] (panic+0x118/0x330)
[    1.050834]  r7:c16ed85c r6:c13404fc r5:00000000 r4:c19a5870
[    1.051078] [<c0349ed4>] (panic) from [<c16017dc>]
(mount_block_root+0x264/0x284)
[    1.051344]  r3:0ed1c175 r2:0ed1c175 r1:ea09be84 r0:c13404fc
[    1.051553]  r7:c16ed85c
[    1.051661] [<c1601578>] (mount_block_root) from [<c1601a64>]
(mount_root+0x124/0x140)
[    1.051936]  r10:ffffe000 r9:c16ed858 r8:c19a3400 r7:c1809100
r6:00000008 r5:c1804c48
[    1.052238]  r4:00100000
[    1.052351] [<c1601940>] (mount_root) from [<c1601c04>]
(prepare_namespace+0x184/0x1cc)
[    1.052638]  r10:ffffe000 r9:c16ed858 r8:c19a3400 r7:c19a3400
r6:00000008 r5:c19a3430
[    1.052915]  r4:c16ed85c
[    1.053025] [<c1601a80>] (prepare_namespace) from [<c1601308>]
(kernel_init_freeable+0x2f8/0x308)
[    1.053337]  r6:00000008 r5:c177b7c0 r4:c16ed838
[    1.053507] [<c1601010>] (kernel_init_freeable) from [<c0f6ceb0>]
(kernel_init+0x10/0x118)
[    1.053798]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
r6:00000000 r5:c0f6cea0
[    1.054083]  r4:00000000
[    1.054190] [<c0f6cea0>] (kernel_init) from [<c03010e8>]
(ret_from_fork+0x14/0x2c)
[    1.054501] Exception stack(0xea09bfb0 to 0xea09bff8)
[    1.054792] bfa0:                                     00000000
00000000 00000000 00000000
[    1.055169] bfc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    1.055526] bfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    1.055795]  r5:c0f6cea0 r4:00000000
[    1.056410] ---[ end Kernel panic - not syncing: VFS: Unable to
mount root fs on unknown-block(1,0) ]---

So the stack traces look comparable (same unwind "path").  Looks like
GCC spilled r0-r3 in panic(), but not much else.  I guess Clang could
have spilled these anywhere and we simply wont be able to print them.
Maybe making the comment about this in you patch ALL CAPS might draw
attention to it in case someone ever notices a difference between the
unwind printout and the disassembly, but I assume that's unlikely, but
I also don't know if this functionality is relied upon heavily for
debugging.

In that sense:
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
(you can carry that on to v3)
With the above suggestions, I'd be happy to then add my reviewed by
tag.  Thanks for all of the work that went into this.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwKUhnWr4UhVvgn6NYh%2B%3DzQOpMmKG9d_zEqaKLa4_9FA%40mail.gmail.com.
