Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBX4F63VAKGQEHVJFX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DEB981A5
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:44:00 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id x1sf2093433pfq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 10:44:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566409439; cv=pass;
        d=google.com; s=arc-20160816;
        b=lohsJG+s88mHYytNt+x3ulKzG5eMJsNKyW/Yym2lT7TmWo52ZCR2YPfqh4CUDwQD28
         okP0baKQ3C9OToHO6lmgQD5hCdn2SP3rCgH45NstfkoYE9UgmS3K5W0AdqPWrbB7dUlB
         CYmhcNqNZVO1wUTThgpsh/J/ga8agVNoKyHs2XVxAyB1WZzVJknbaIRjgp6wBbVLaGne
         N32dwkXqyMdTtV8Yn+f+AJBgL9tdRPItTlzdfSMyJfxiSI08Sn2M5h6pjtNNf5Gommoe
         uTwjmlBbKw1z7AQ0tg90vApfgWQzqejZASO0nkALzlDdO/8R9FfqXD25gC+X7RJ5j7D3
         ocyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=15vl9QMCfeT1ifxmqyIHfsUYMqZXDfCmQlmPshVfPdo=;
        b=PdH/EYukPQGJCF5Ck6lwjoSftH2mO9B6Tgawg666+T8tsaOFj4be+4jjQFtdMCy+7g
         TdIvTxHc1Q3EfZBdYVV5EndZxnhIIOFrL2AN/jhLvGaDfWJ0wnOHZK2mxlOtXgHovgby
         9OIeSVIRYim6SPKkqQxCdgydfExaH4AJY/+PAC91v18UyjjU6BviI2wpdL17f6ZEG4VF
         TzVpVRzEZEph0A6LHTBlreyTbD89boLWkGRWDHbmjm7FJjUrA8hztueDCd+DcXBf+vsU
         Q3/earHtsODLW6KDu/jrocWCwsQj9xDn1fRcJ6YRW/GSM+BSvgb7Nc/fzqabPJRhK2ZH
         o0jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SPCa6Sjc;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15vl9QMCfeT1ifxmqyIHfsUYMqZXDfCmQlmPshVfPdo=;
        b=jIPdhIcyKAWIs5zggMYtyrdfvGM08gbXhwZKx/fIaIkszq/ks8sc/8o5/aR9t6Jhk+
         lgCNq5SQDSo65l9jG/IzKvg86ES0wiz81mHLrQPQ3T7K+NFjQZmqGv8y/WC15PdnnkZZ
         lh8eKk1Ws9royyWwRFkH2FtVoloawHc34KARLaRLb/vpUDsr7v+W4PWato3UZi9JEoL5
         JbHG2Gz6fW0vBGONmVw3vtpRWhtIG6BuqSL07p06DQy6cjGO6uhoISSu1zVPmAR6+4q1
         xxwjQHtfSMj02WPzHu68bDa73mGpLn8hy+KceNVGz+qZWCf8lmCq07QQ4ja51nAZVghy
         Ffcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15vl9QMCfeT1ifxmqyIHfsUYMqZXDfCmQlmPshVfPdo=;
        b=hkp7yBbNP7LHPhix6xvCcfHuN+5iLML/P61dAWBlFlMTYA6tLWCXG5SzmXdGfHxAfv
         vlmwvCRslae70RZseyJahk9+bJBYI1J6ZNimvf6aLM9UjMzIioN0R8DCvFc6KR0ad2UB
         n4p87fmtG7ZW1atzclZxBQRpTKKV8kGq8zndNHCKmpdgJWgPy416P6FE8cM3NpriDM58
         TTvEyy68ei9NqZC+eDY7vJ4Qwb3Vq5iNZ9RnkEK+VEbjpe/LeHbU+mpF5FdaOkADWkGX
         I6Qdf+bB3s/JnUw10rwF5Hq7udCKGxc77+6q3u1gdyn4EVm392vFosQFMm2Lfq4Ph5v3
         a0Ug==
X-Gm-Message-State: APjAAAW0oW3faCYTLm5an/swacSNw5weXkGfMfu/DaiJK79LwcByBag3
	5J8Yaj++XBZY8bwBiGwkEus=
X-Google-Smtp-Source: APXvYqzvrA4hHwMJEYmrGiNg2dafL6JuOrLF3J9Raw5AiegAsTLY60x1UG8J2mQY6YPaY6DsW5rJnw==
X-Received: by 2002:a17:902:7108:: with SMTP id a8mr3944627pll.1.1566409439540;
        Wed, 21 Aug 2019 10:43:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8209:: with SMTP id x9ls885605pln.3.gmail; Wed, 21
 Aug 2019 10:43:59 -0700 (PDT)
X-Received: by 2002:a17:90a:d3d6:: with SMTP id d22mr1173261pjw.5.1566409439087;
        Wed, 21 Aug 2019 10:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566409439; cv=none;
        d=google.com; s=arc-20160816;
        b=pB21CWdNBa5/Thrr+ANII+AW/cIp/YLH5IVCmhZJu+YvxLd/CjGyMKH0pZorcxVoZh
         4WmWpYdoM588p3Fwfv3KK998EeaRZ2ct8+3sTM1fGSOyzY7Ch/noQnlTaJUsNTH2We1E
         nImkHmspLVEP0dbj67NeVQG6Gak4cushxMfNhZQSNb5qo5XdWhH1kAomcpRxMR6efOcW
         TsosyQ6xCw7XegPhp7wgnz1wsOd3TCR3b4DJD1/iJIWCSDyt8PXvtjYhZY6FP+Ex8e/h
         LDhd05UDHfzSOTxbLsFUuRCMhxBLFSJO44kjqoeKNEMWtIzU7PhANZa1rdtILLRJcBb8
         Nxnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P7oJ/OCmlk0Qs0pfRpZmkhAcu01BAL6U4WS47xIOsJo=;
        b=FtuYgnGxdqefjRtxzbWTdc3tMg5+jGiNiLAUQu6qbh8diJU61lo53AdEcv11sux7GC
         Xovx0KiAtGuDE0rJhGukFHjdPJHpWWx2eji3NNtaNWxECAHE+TO1z58hu4jVPBPihGKv
         H/PXniPUykA34sGKxaANBymyZNqmWVkbYdXOejpjVgjisRmtTM3bd+3aXRzXs9gVBA69
         PsuDV+JGiPH/NxOwN96WUEX2vGBh0cLXv07dp4e0tG5rO+LvNt3r90E/Hr+KQXWbMYLl
         l2pH+oyiDSJPScWQD9ZOBQjYN3O33AsiR8wjoBrfXFPXvIWG0SapL0TO22v2cjk9Heto
         WBlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SPCa6Sjc;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id ck6si930670plb.4.2019.08.21.10.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 10:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id u34so4086193qte.2
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 10:43:59 -0700 (PDT)
X-Received: by 2002:ac8:23d6:: with SMTP id r22mr2178545qtr.76.1566409437921;
 Wed, 21 Aug 2019 10:43:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194351.107486-1-nhuck@google.com> <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
In-Reply-To: <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 10:43:47 -0700
Message-ID: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SPCa6Sjc;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

On Tue, Aug 20, 2019 at 2:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 20, 2019 at 12:44 PM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > The stackframe setup when compiled with clang is different.
> > Since the stack unwinder expects the gcc stackframe setup it
> > fails to print backtraces. This patch adds support for the
> > clang stackframe setup.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > Cc: clang-built-linux@googlegroups.com
> > Suggested-by: Tri Vo <trong@google.com>
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> > Changes from RFC
> > * Push extra register to satisfy 8 byte alignment requirement
> > * Add clarifying comments
> > * Separate code into its own file
>
> Thanks for the patch! The added comments and moving the implementation
> to its own file make it easier to review.
>
> >
> >  arch/arm/Kconfig.debug         |   4 +-
> >  arch/arm/Makefile              |   5 +-
> >  arch/arm/lib/Makefile          |   8 +-
> >  arch/arm/lib/backtrace-clang.S | 224 +++++++++++++++++++++++++++++++++
> >  4 files changed, 237 insertions(+), 4 deletions(-)
> >  create mode 100644 arch/arm/lib/backtrace-clang.S
> >
> > diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> > index 85710e078afb..92fca7463e21 100644
> > --- a/arch/arm/Kconfig.debug
> > +++ b/arch/arm/Kconfig.debug
> > @@ -56,7 +56,7 @@ choice
> >
> >  config UNWINDER_FRAME_POINTER
> >         bool "Frame pointer unwinder"
> > -       depends on !THUMB2_KERNEL && !CC_IS_CLANG
> > +       depends on !THUMB2_KERNEL
> >         select ARCH_WANT_FRAME_POINTERS
> >         select FRAME_POINTER
> >         help
> > @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
> >           When this option is set, the selected DEBUG_LL output method
> >           will be re-used for normal decompressor output on multiplatform
> >           kernels.
> > -
> > +
>
> Probably can drop the added newline?
>
> >
> >  config UNCOMPRESS_INCLUDE
> >         string
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index c3624ca6c0bc..729e223b83fe 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -36,7 +36,10 @@ KBUILD_CFLAGS        += $(call cc-option,-mno-unaligned-access)
> >  endif
> >
> >  ifeq ($(CONFIG_FRAME_POINTER),y)
> > -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> > +KBUILD_CFLAGS  +=-fno-omit-frame-pointer
> > +  ifeq ($(CONFIG_CC_IS_GCC),y)
> > +  KBUILD_CFLAGS += -mapcs -mno-sched-prolog
> > +  endif
>
> While I can appreciate the indentation, it's unusual to indent
> additional depths of kernel Makefiles.  At least the rest of this file
> does not do so.  Of course, the other Makefile you touch below does
> two spaces.  At least try to keep the file internally consistent, even
> if the kernel itself is inconsistent.
>
> >  endif
> >
> >  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > index b25c54585048..e10a769c72ec 100644
> > --- a/arch/arm/lib/Makefile
> > +++ b/arch/arm/lib/Makefile
> > @@ -5,7 +5,7 @@
> >  # Copyright (C) 1995-2000 Russell King
> >  #
> >
> > -lib-y          := backtrace.o changebit.o csumipv6.o csumpartial.o   \
> > +lib-y          := changebit.o csumipv6.o csumpartial.o               \
> >                    csumpartialcopy.o csumpartialcopyuser.o clearbit.o \
> >                    delay.o delay-loop.o findbit.o memchr.o memcpy.o   \
> >                    memmove.o memset.o setbit.o                        \
> > @@ -19,6 +19,12 @@ lib-y                := backtrace.o changebit.o csumipv6.o csumpartial.o   \
> >  mmu-y          := clear_user.o copy_page.o getuser.o putuser.o       \
> >                    copy_from_user.o copy_to_user.o
> >
> > +ifdef CONFIG_CC_IS_CLANG
> > +  lib-y += backtrace-clang.o
> > +else
> > +  lib-y += backtrace.o
> > +endif
>
> The indentation should match the above (from this file).  Looks like 1
> tab after lib-y.  See L34(CONFIG_CPU_32v3) for what I would have
> expected.
>
> > +
> >  # using lib_ here won't override already available weak symbols
> >  obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
> >
> > diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> > new file mode 100644
> > index 000000000000..2b02014dbdd1
> > --- /dev/null
> > +++ b/arch/arm/lib/backtrace-clang.S
> > @@ -0,0 +1,224 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + *  linux/arch/arm/lib/backtrace-clang.S
> > + *
> > + *  Copyright (C) 2019 Nathan Huckleberry
> > + *
> > + */
> > +#include <linux/kern_levels.h>
> > +#include <linux/linkage.h>
> > +#include <asm/assembler.h>
> > +               .text
> > +
> > +/* fp is 0 or stack frame */
>
> ah, I see that the reference implementation uses an assembly comment
> here. Ok (sorry for the noise).
>
> > +
> > +#define frame  r4
> > +#define sv_fp  r5
> > +#define sv_pc  r6
> > +#define mask   r7
> > +#define sv_lr   r8
> > +
> > +ENTRY(c_backtrace)
> > +
> > +#if !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK)
> > +               ret     lr
> > +ENDPROC(c_backtrace)
> > +#else
> > +
> > +
> > +/*
> > + * Clang does not store pc or sp in function prologues
> > + *             so we don't know exactly where the function
> > + *             starts.
> > + * We can treat the current frame's lr as the saved pc and the
> > + *             preceding frame's lr as the lr, but we can't
>
> preceding frame's lr as the current frame's lr, ...
>
> > + *             trace the most recent call.
> > + * Inserting a false stack frame allows us to reference the
> > + *             function called last in the stacktrace.
> > + * If the call instruction was a bl we can look at the callers
> > + *             branch instruction to calculate the saved pc.
> > + * We can recover the pc in most cases, but in cases such as
> > + *             calling function pointers we cannot. In this
> > + *             case, default to using the lr. This will be
> > + *             some address in the function, but will not
> > + *             be the function start.
> > + * Unfortunately due to the stack frame layout we can't dump
> > + *              r0 - r3, but these are less frequently saved.
>
> The use of tabs vs spaces in these comments is inconsistent.  Not that
> I can see whitespace, but:
> https://github.com/nickdesaulniers/dotfiles/blob/37359525f5a403b4ed2d3f9d1bbbee2da8ec8115/.vimrc#L35-L41
> Also, I don't think you need to tab indent every line after the first.
> Where did that format come from?
>
> > + *
> > + * Stack frame layout:
> > + *             <larger addresses>
> > + *             saved lr
> > + *    frame => saved fp
> > + *             optionally saved caller registers (r4 - r10)
> > + *             optionally saved arguments (r0 - r3)
> > + *             <top of stack frame>
> > + *             <smaller addresses>
> > + *
> > + * Functions start with the following code sequence:
> > + * corrected pc =>  stmfd sp!, {..., fp, lr}
> > + *                 add fp, sp, #x
> > + *                 stmfd sp!, {r0 - r3} (optional)
> > + *
> > + *
> > + *
> > + *
> > + *
> > + *
> > + * The diagram below shows an example stack setup
> > + *     for dump_stack.
> > + *
> > + * The frame for c_backtrace has pointers to the
> > + *     code of dump_stack. This is why the frame of
> > + *     c_backtrace is used to for the pc calculation
> > + *     of dump_stack. This is why we must move back
> > + *     a frame to print dump_stack.
> > + *
> > + * The stored locals for dump_stack are in dump_stack's
> > + *     frame. This means that to fully print dump_stack's frame
> > + *     we need the both the frame for dump_stack (for locals) and the
>
> we need both the ...
> (There's an extra `the` in the sentence).
>
> > + *     frame that was called by dump_stack (for pc).
> > + *
> > + * To print locals we must know where the function start is. If
> > + *     we read the function prologue opcodes we can determine
> > + *     which variables are stored in the stack frame.
> > + *
> > + * To find the function start of dump_stack we can look at the
> > + *     stored LR of show_stack. It points at the instruction
> > + *     directly after the bl dump_stack. We can then read the
> > + *     offset from the bl opcode to determine where the branch takes us.
> > + *     The address calculated must be the start of dump_stack.
> > + *
> > + * c_backtrace frame           dump_stack:
> > + * {[LR]    }  ============|   ...
> > + * {[FP]    }  =======|    |   bl c_backtrace
> > + *                    |    |=> ...
> > + * {[R4-R10]}         |
> > + * {[R0-R3] }         |        show_stack:
> > + * dump_stack frame   |        ...
> > + * {[LR]    } =============|   bl dump_stack
> > + * {[FP]    } <=======|    |=> ...
> > + * {[R4-R10]}
> > + * {[R0-R3] }
> > + */
> > +
> > +stmfd   sp!, {r4 - r9, fp, lr} @ Save an extra register
> > +                               @ to ensure 8 byte alignment
> > +movs   frame, r0               @ if frame pointer is zero
> > +beq    no_frame                @ we have no stack frames
> > +
> > +tst    r1, #0x10               @ 26 or 32-bit mode?
> > +moveq  mask, #0xfc000003
>
> Should we be using different masks for ARM vs THUMB as per the
> reference implementation?
The change that introduces the arm/thumb code looked like a script
that was run over all arm in the kernel. Neither this code nor the
reference solution is compatible with arm, so there's no need for the
change.
>
> > +movne  mask, #0                @ mask for 32-bit
> > +
> > +/*
> > + * Switches the current frame to be the frame for dump_stack.
> > + */
> > +               add     frame, sp, #24          @ switch to false frame
> > +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> > +               bne     no_frame
> > +
> > +/*
> > + * sv_fp is the stack frame with the locals for the current considered
> > + *     function.
> > + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> > + *     code address within the current considered function, but
> > + *     it is not the function start. This value gets updated to be
> > + *     the function start later if it is possible.
> > + */
> > +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
>
> The reference implementation applies the mask to sv_pc and sv_fp.  I
> assume we want to, too?
The mask is already applied to both. See for_each_frame:
>
> > +
> > +               teq     sv_fp, #0               @ make sure next frame exists
> > +               beq     no_frame
> > +
> > +/*
> > + * sv_lr is the lr from the function that called the current function. This
> > + *     is a pointer to a code address in the current function's caller.
> > + *     sv_lr-4 is the instruction used to call the current function.
> > + * This sv_lr can be used to calculate the function start if the function
> > + *     was called using a bl instruction. If the function start
> > + *     can be recovered sv_pc is overwritten with the function start.
> > + * If the current function was called using a function pointer we cannot
> > + *     recover the function start and instead continue with sv_pc as
> > + *     an arbitrary value within the current function. If this is the case
> > + *     we cannot print registers for the current function, but the stacktrace
> > + *     is still printed properly.
> > + */
> > +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> > +
> > +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> > +               ldr     r3, .Ldsi+8
>
> I wonder what `dsi` stands for, it could use a better name.  Maybe put
> that mask in a more descriptively named section and use that instead
> of `.Ldsi+8`?
>
> > +               and     r2, r3, r0              @ is this a bl call
> > +               teq     r2, r3
> > +               bne     finished_setup          @ give up if it's not
> > +               and     r0, #0xffffff           @ get call offset 24-bit int
> > +               lsl     r0, r0, #8              @ sign extend offset
> > +               asr     r0, r0, #8
>
> It's too bad this should work for older ARM versions, v6 added
> dedicated instructions for this:
> http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0489c/Cihfifdd.html
>
> > +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> > +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> > +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> > +               add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> > +
> > +finished_setup:
> > +
> > +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> > +
> > +/*
> > + * Print the function (sv_pc) and where it was called
> > + *     from (sv_lr).
> > + */
> > +1004:          mov     r0, sv_pc
> > +
> > +               mov     r1, sv_lr
> > +               mov     r2, frame
> > +               bic     r1, r1, mask            @ mask PC/LR for the mode
> > +               bl      dump_backtrace_entry
> > +
> > +/*
> > + * Test if the function start is a stmfd instruction
> > + *     to determine which registers were stored in the function
> > + *     prologue.
> > + * If we could not recover the sv_pc because we were called through
> > + *     a function pointer the comparison will fail and no registers
> > + *     will print.
> > + */
> > +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> > +               ldr     r3, .Ldsi               @ instruction exists,
> > +               teq     r3, r1, lsr #11
> > +               ldr     r0, [frame]             @ locals are stored in
> > +                                               @ the preceding frame
> > +               subeq   r0, r0, #4
> > +               bleq    dump_backtrace_stm      @ dump saved registers
>
> Do we need to do anything to test .Ldsi+4? Otherwise looks like we
> define it but don't use it?
>
> > +
> > +/*
> > + * If we are out of frames or if the next frame
> > + *     is invalid.
> > + */
> > +               teq     sv_fp, #0               @ zero saved fp means
> > +               beq     no_frame                @ no further frames
> > +
> > +               cmp     sv_fp, frame            @ next frame must be
> > +               mov     frame, sv_fp            @ above the current frame
> > +               bhi     for_each_frame
> > +
> > +1006:          adr     r0, .Lbad
> > +               mov     r1, frame
> > +               bl      printk
> > +no_frame:      ldmfd   sp!, {r4 - r9, fp, pc}
> > +ENDPROC(c_backtrace)
> > +               .pushsection __ex_table,"a"
> > +               .align  3
> > +               .long   1001b, 1006b
> > +               .long   1002b, 1006b
> > +               .long   1003b, 1006b
> > +               .long   1004b, 1006b
> > +               .long   1005b, 1006b
> > +               .popsection
> > +
> > +.Lbad:         .asciz  "Backtrace aborted due to bad frame pointer <%p>\n"
> > +               .align
> > +.Ldsi:         .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> > +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> > +               .word   0x0b000000              @ bl if these bits are set
> > +
> > +#endif
> > --
> > 2.23.0.rc1.153.gdeed80330f-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
Thanks for the review, will send a v2 with your suggestions.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY4cHz%2Bi8kYg2i1Krs-32nh7-WQU%2BpsT%3DDRGYnTje6yj4Q%40mail.gmail.com.
