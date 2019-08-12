Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL7WY7VAKGQE32PYNSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4032C8AB71
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:50:09 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id q16sf87635059otn.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 16:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565653808; cv=pass;
        d=google.com; s=arc-20160816;
        b=KV8yA3I5EA5mNQFmt4wBXV/TJQKHzASITHNxi4kxMUkH4XJzOHO5u60tujuzY1nZWy
         ++iZPhtIS02x086W/ATN23ahDBGKAVZoZFKJnqPq1KGos4WAXFXgHGpCqDBKCe4cnu45
         6eASPkqxgChLK8Bgu0fBupYYpj6eyTftneQ1WZiVDZJse0FiF84H7/rXO7gRhT08yLX7
         PguWkrKvtXsxQCGVDF1vrnLnHMsLd8/6/gkiOc+dBi6FpDjquNw/re88C0yNev0svvQN
         o+1SojyBltsEu90WcFBkoOWdBFY9/A+Y+wP97xyIF6xVzm/llEWQ+x6EjNdBavwIiXxK
         qR0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ei7Li1T/tv/+eq+r9dVW9gc1RwJsyi1CpYIXU4rcO4Q=;
        b=EJoUHyDK2yGdWm5YgjeoUHKPQPLP+NaSctYWhNGiO/XvRz1F6KOIJTgJ5yO8GwkZcU
         CxIDINuuRVJxpubMiVTi6dVO0GUY61gmffXwe5IV6XqljbweboOojCu9zjCBeHhax5eB
         hLXKxwYD/dZeVvROjrZqP0W8+aFMZRgB3GF5KU6v8XSy3n9NyIMItZCgWyrafuSg/F0N
         U7cSNQnbehJIuNVOS1RJTy87C04SA3mJbFqUzYMJYFVzkuo7J9SmMRO66pZpqwpEUoVH
         Izk4KMyqJdgIkL5gPDWwlIXfY7idl8gapwGRmnY3gmpoMAeSJm9aUjX/UnmNqSAr4dtL
         QNOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="R/zhnL0M";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ei7Li1T/tv/+eq+r9dVW9gc1RwJsyi1CpYIXU4rcO4Q=;
        b=l/iak96FioA7q+GDUVnMmAehKmsqxXr8q9wBbYlY+Ftu1slNEPVwEw9ZE8yc44PK0O
         rYj3nuCYLWopYWO3SfZRn+KyKNofGdMLbd+vT+5wmMADNnFR4Ob+p3MfC+dQeQPOvrF7
         pwR843TFnuzq/SPXrMSVwO//w9WvXExknQtRlcMDmYE0Q8aqTug7YIk4I811/kljL1pz
         VYpCdONpO1cZEsyI1S4LPe6AjwmM8gfCvbhB5oO4KB9qhijUKDciTKL3PzOvlFzAvq7g
         RF21czGF3WhGrXBBqwThZsCI+qmypzfHZ4ZANzjvranXfqbelXdxC6Lm8Xb3GqoBZAhx
         /Mjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ei7Li1T/tv/+eq+r9dVW9gc1RwJsyi1CpYIXU4rcO4Q=;
        b=NOstuXyEqxT+/cYnwvlBb270k8AoWtNb1n48V0kLYA/sfDef2JDvhPa71VzjxHwI3t
         Yn1PZDxzmc08yDrXmO7N9NJHaXe5+16XzDah/j97zOBbt5AwsQuILZzerLRlyCmty4Go
         6I+xZ5ddIv9uW1pstjkuWEBgHnCiG6y2CoZWkfFT4hqgzGplOapa+5xo4Yy7tag3s/n3
         LJ0v2ZcVV7EWCBb/qAw+nsr5HlEoFpZr5EbSBFLMBR68mI9NLlo5cQEMZol9RBu2aaNA
         1pJPfaZHa1Y+NEMNx0CdKoOPd7SO+qe+eHKql7omWtrZYHc6G8pop0feYa8XwNLhxVSv
         q3uw==
X-Gm-Message-State: APjAAAUaOH1Rr1hNJnNgwtgQCC5qgCQQN4YwXwizOZsAlMU3L3bGHfF6
	AJwfj8MTkksyhWqr10+az/g=
X-Google-Smtp-Source: APXvYqzzhrZlV8oNr/TloEkhCEDqPOi2Wrglu8HzwgvrYHgY41JW++RKVpbTqgAgGH5vguOUf70k/g==
X-Received: by 2002:a05:6830:458:: with SMTP id d24mr5458443otc.126.1565653807848;
        Mon, 12 Aug 2019 16:50:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1117:: with SMTP id w23ls1595815otq.14.gmail; Mon,
 12 Aug 2019 16:50:07 -0700 (PDT)
X-Received: by 2002:a9d:5d12:: with SMTP id b18mr32165917oti.72.1565653807430;
        Mon, 12 Aug 2019 16:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565653807; cv=none;
        d=google.com; s=arc-20160816;
        b=LtMyI865sgmrTH8zaMzLVlXMzGLICQQj1MLcsDj4sWjRELdryfYggBBTkPWlVxrZSo
         ztNuiczkc2ikdxcrBHWqSqCTNOakJBhuiQekdfKa9pxCnt9XCC3j8OlqDmdNu1k7UeCE
         WgPfmqwQREItqGT84nRydtVosUQkLniYlje3iyuhJG/SXDZEMzkEbGd6E/bLcp+oZWoR
         FfSkCebBTjECoN4q7e864fA4YW1pCd9IlaBheNAG7WObLpMA7zDB/O2u5Min50mTno6c
         FvKF7bo89Y3pQcv9QBzMlTE297OPYG2ErbYB8AhsxfKO+3IJwjKRMNPoTe6yP4bS4ZHX
         Jrmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XOzXkxuzDaSaCrNnzQfIfBKq5vFfoJ+Ut/PxPNA6VMg=;
        b=UzcC7AFbyDvPa3qBWb2vUUfvRA7lORD6fvwzG/7Qesz5qDZ4Og14S7P+aSTrcM8Czx
         4FL6cIkfhyOCaaCw2M31xUz82y9p+4T46EIS9IdVt74XTdxmIymUGOZWGZhbjdyIP84J
         AfMZwKmoDJvIpP3EW4bMQsXeOkHa0V5VINhbm73nm42xcF0c1nNSDxephFWtIXLFFyr/
         XNg1Mv4JxZw2kdK3QTAW3F+pq5cxJ8RXLtOJds4rxOTzMVN2KSTS3rCYdyCxrJfD6o5h
         jAzGPvBXRRVg6snCSaxfvlj7jMlILIGftUt2D+b3q0iBuvtYEQ7hRB1Slob6vXSWBsi9
         bqOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="R/zhnL0M";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p6si6063205otk.5.2019.08.12.16.50.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 16:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g4so2012165plo.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 16:50:07 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr4162381plr.179.1565653806199;
 Mon, 12 Aug 2019 16:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190801231046.105022-1-nhuck@google.com>
In-Reply-To: <20190801231046.105022-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 16:49:54 -0700
Message-ID: <CAKwvOdncQM4i=Xm=fP2teY0qsKfUnL2Tgts-0GjZGH4nVx_JaQ@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="R/zhnL0M";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Thu, Aug 1, 2019 at 4:10 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> The stackframe setup when compiled with clang is different.
> Since the stack unwinder expects the gcc stackframe setup it
> fails to print backtraces. This patch adds support for the
> clang stackframe setup.
>
> Cc: clang-built-linux@googlegroups.com
> Suggested-by: Tri Vo <trong@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Thanks for the patch! This is something definitely useful to have
implemented with Clang.  Some initial thoughts below:

> ---
>  arch/arm/Kconfig.debug   |   4 +-
>  arch/arm/Makefile        |   2 +-
>  arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
>  3 files changed, 128 insertions(+), 12 deletions(-)
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
>
>  config UNCOMPRESS_INCLUDE
>         string
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..a593d9c4e18a 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,7 @@ KBUILD_CFLAGS += $(call cc-option,-mno-unaligned-access)
>  endif
>
>  ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS  +=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
>  endif
>
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> index 1d5210eb4776..fd64eec9f6ae 100644
> --- a/arch/arm/lib/backtrace.S
> +++ b/arch/arm/lib/backtrace.S
> @@ -14,10 +14,7 @@
>  @ fp is 0 or stack frame
>
>  #define frame  r4
> -#define sv_fp  r5
> -#define sv_pc  r6

It looks like sv_fp and sv_pc have the same values for both GCC and
Clang, maybe they don't need to be moved here?

>  #define mask   r7
> -#define offset r8

So GCC has an offset while Clang has sv_lr.

>
>  ENTRY(c_backtrace)
>
> @@ -25,7 +22,8 @@ ENTRY(c_backtrace)
>                 ret     lr
>  ENDPROC(c_backtrace)
>  #else
> -               stmfd   sp!, {r4 - r8, lr}      @ Save an extra register so we have a location...
> +               stmfd   sp!, {r4 - r8, fp, lr}  @ Save an extra register

Not having a preprocessor guard here makes it seem like GCC will
always have to move the additional register, even if it's not using
it?

> +                                               @ so we have a location..
>                 movs    frame, r0               @ if frame pointer is zero
>                 beq     no_frame                @ we have no stack frames
>
> @@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
>   THUMB(                orreq   mask, #0x03             )
>                 movne   mask, #0                @ mask for 32-bit
>
> -1:             stmfd   sp!, {pc}               @ calculate offset of PC stored
> -               ldr     r0, [sp], #4            @ by stmfd for this CPU
> -               adr     r1, 1b
> -               sub     offset, r0, r1
>
> +#if defined(CONFIG_CC_IS_CLANG)

#ifdef CONFIG_CC_IS_CLANG

I'd only use `#if defined(foo)` if there were 2 or more things I
needed to check: `#if defined(foo) || defined(bar)`.

> +/*
> + * Clang does not store pc or sp in function prologues
> + *             so we don't know exactly where the function
> + *             starts.
> + * We can treat the current frame's lr as the saved pc and the
> + *             preceding frame's lr as the lr, but we can't
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
> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *    frame => saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addressses>

s/addressses/addresses/

> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *                 add fp, sp, #x
> + *                 stmfd sp!, {r0 - r3} (optional)
> + */
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define sv_lr   r8
> +               add     frame, sp, #20          @ switch to false frame
> +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> +               bne     no_frame
> +
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp

These two sections seem to differ between GCC and Clang only for the
offsets. Could these be made into preprocessor defines and more code
shared?

> +
> +               teq     sv_fp, #0               @ make sure next frame exists
> +               beq     no_frame
> +
> +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +               //try to find function start

Use either /* c89 comments */ or @arm assembler comments.

> +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +               ldr     r3, .Ldsi+8
> +               and     r2, r3, r0              @ is this a bl call
> +               teq     r2, r3
> +               bne     finished_setup          @ give up if it's not
> +               and     r0, #0xffffff           @ get call offset 24-bit int
> +               lsl     r0, r0, #8              @ sign extend offset
> +               asr     r0, r0, #8
> +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> +               add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> +               b       finished_setup

Do we need an explicit branch to this label? Wouldn't we just fall
through to it?j

> +
> +finished_setup:
> +
> +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> +
> +1004:          mov     r0, sv_pc
> +
> +               mov     r1, sv_lr
> +               mov     r2, frame
> +               bic     r1, r1, mask            @ mask PC/LR for the mode
> +               bl      dump_backtrace_entry
> +
> +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +               ldr     r3, .Ldsi               @ instruction exists,
> +               teq     r3, r1, lsr #11
> +               ldr     r0, [frame]             @ locals are stored in
> +                                               @ the preceding frame
> +               subeq   r0, r0, #4
> +               bleq    dump_backtrace_stm      @ dump saved registers
> +
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
> +no_frame:      ldmfd   sp!, {r4 - r8, fp, pc}
> +ENDPROC(c_backtrace)
> +               .pushsection __ex_table,"a"
> +               .align  3
> +               .long   1001b, 1006b
> +               .long   1002b, 1006b
> +               .long   1003b, 1006b
> +               .long   1004b, 1006b
> +               .popsection
> +
> +.Lbad:         .asciz  "Backtrace aborted due to bad frame pointer <%p>\n"
> +               .align

Probably don't need to duplicate the above (up to ENDPROC), but the
below hunk looks compiler specific.

> +.Ldsi:         .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> +               .word   0x0b000000              @ bl if these bits are set
> +
> +ENDPROC(c_backtrace)

Duplicate ENDPROC?

> +
> +#else
>  /*
>   * Stack frame layout:
>   *             optionally saved caller registers (r4 - r10)
> @@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
>   *                  stmfd sp!, {r0 - r3} (optional)
>   * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
>   */
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define offset r8
> +
> +1:             stmfd   sp!, {pc}               @ calculate offset of PC stored
> +               ldr     r0, [sp], #4            @ by stmfd for this CPU
> +               adr     r1, 1b
> +               sub     offset, r0, r1
> +
>  for_each_frame:        tst     frame, mask             @ Check for address exceptions
>                 bne     no_frame
>
> @@ -98,7 +213,7 @@ for_each_frame:      tst     frame, mask             @ Check for address exceptions
>  1006:          adr     r0, .Lbad
>                 mov     r1, frame
>                 bl      printk
> -no_frame:      ldmfd   sp!, {r4 - r8, pc}
> +no_frame:      ldmfd   sp!, {r4 - r8, fp, pc}

More work for GCC...

>  ENDPROC(c_backtrace)
>
>                 .pushsection __ex_table,"a"
> @@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
>                 .word   0xe92d0000 >> 11        @ stmfd sp!, {}
>
>  #endif
> +#endif

It would be nice to put comments on the end of these #endif's what
condition they're terminating:

#endif /* CONFIG_CC_IS_CLANG
#endif /* !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK) */
Maybe also the #else's above.

Will send more thoughts tomorrow/throughout the week.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdncQM4i%3DXm%3DfP2teY0qsKfUnL2Tgts-0GjZGH4nVx_JaQ%40mail.gmail.com.
