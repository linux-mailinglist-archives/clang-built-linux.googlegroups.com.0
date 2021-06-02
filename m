Return-Path: <clang-built-linux+bncBAABB25F36CQMGQE6W2ZRWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEDF3992D5
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 20:50:21 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id b23-20020a17090ae397b0290163949acb4dsf3890755pjz.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 11:50:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622659820; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzCTJ66ZvOGeUogRlj7U7vjC7sxmzz2WwGzevUCR3k1VqAtGr64ys6Xy16mpQLi0nQ
         kw7ZmwPw0mexYLHAvYE6oGqv2AtaQpmA/1Zazl7z6bVSuG68GoYXZFPBhUbFVIOrFgxG
         ryIROV9OEI6ZC0x7/YS0nBhDr5nKgzE23za6FWNdS+cb0oRpmg7zOjzf6kClZFflo6BW
         13431Wd9OW2WF7NKcT6afs3FQyBfZ5DtmTyU/MD1+d3cwpikf/yBYVE7nw6mQt8xP7Eg
         /2VLznLO4WqbB+I6Bbcpoxy4bQgx+DKQS5J8PSXFaV0pinkhqizi2j8RhELmq4kiswaQ
         4RXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Sah+4R6Vh0AarCAPVk7juHuwa2ajnGnFoJlLUjk4jOs=;
        b=GFKWZzoIKqvsxsg8oUWPCHE8sfH92YOd+gNmOzDU8hOJpDo61gjVDDQsguJ+iopdYb
         Efn4bFhQ8DcVMrUtgR2ydiK6mgIMCj+3zx8gZIQxY341IaN/qBAXm9ZjRv48qJmwpLcq
         C5WIDRoBSRfFzG6dQ1iPrFt+Y9Q/PVc37r6kL+IEKo6SGfmo0MNxP7TQoAFsqhd6Hr9X
         RdvTCOs0zUS/SNFmhM14gWNLTUf0XEBUR9pSN1NzTos4x93YP5IC/AEH3DcszlIE0EAG
         bj0vf9VkPrpGiXs9aZgW/iP+gnkuHrfW3/FmaW+LQX+yz2nvVNM0zg489f2XhSe2Jv/z
         fGKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZBPRmuaF;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sah+4R6Vh0AarCAPVk7juHuwa2ajnGnFoJlLUjk4jOs=;
        b=HEDOu8QLpNIJscr5MIBNuDknoeZ9kAUqvzEjX+65l945RwcRNcoVySLSmfME4Fs9Mm
         ErQu5Eb4Z4YKSDJwddgxJJMf1ebYvBHICju70BWvDmlEku3Ux8svEfYu8dfd5JntFIj+
         kPw3GGlvYIu585cQiUu6vsYktClBTqK6ExHAcasWb3DDa0EEUOUzH6TvuwrK8XvsQEJA
         VSwpNSDgC3AuoTN9em5D2/668NCc1OtN7XRT5gCwPIURpGe1m+03G5vYHbgb8hdisIuF
         t26FkkmIw/N4FB1xnZwkfGOY0xS76AdXGH1QJBuc0a3uar96v3Xfh1miaTPocANkoahH
         Bahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sah+4R6Vh0AarCAPVk7juHuwa2ajnGnFoJlLUjk4jOs=;
        b=bWP1IB9o7+eG0hMl2XKWyYsRiPynHAFQjYy3UBVD+Yxsljui7ZnXa+ojyEofUgs6wr
         INEEpsmyGLUAd6+ZEekHAplL+BnFGusmlkNKYdLKzlgfQC0B0o3yi14mjPgXr9WrgeJV
         2Kf4THvcGL0ojq77IdEr5eCuvCsrE7XhkgXRB9C1bh306+Wba+Ns1nwzZaPmFv8jojey
         A5xVNAlQ8T8wH4vDfJQcgO29/+obRaJFZAMzAUueev/6RrF3AxkyfQ0gmblj5tJ580AT
         Z43I2d9F3JhDKN55OgqmW3nXkVWHsyO/J8pqd9hF5R3mMF4PbIa+iu4qXphqL1werRpo
         wuKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323Fh71yZ+GUl7m2Gd+lGmnfquqhKw7oQ7kcXYQ8Qk9HaUD0ILI
	zXnEEvao5CEgLF1bOu+zBcw=
X-Google-Smtp-Source: ABdhPJxEAzAzDPfSRyTCPcB3vBjTlVFGO2rJngCUgnErQAs4RFSGedHRO1j1JYFlzrPbLq3PMGm9aQ==
X-Received: by 2002:a17:902:820a:b029:10c:a12b:e524 with SMTP id x10-20020a170902820ab029010ca12be524mr2276746pln.79.1622659820083;
        Wed, 02 Jun 2021 11:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls332258plr.5.gmail; Wed, 02
 Jun 2021 11:50:19 -0700 (PDT)
X-Received: by 2002:a17:902:b707:b029:108:f49b:8236 with SMTP id d7-20020a170902b707b0290108f49b8236mr8223970pls.80.1622659819614;
        Wed, 02 Jun 2021 11:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622659819; cv=none;
        d=google.com; s=arc-20160816;
        b=Hu5d1dhMDRP6VTeebmToze6MHEFFmkdwEGNE1AWUdbVb1NzZEpTq21qg3/IM8hYpBE
         VkhLFbq0X3UGGZIsL3Crr4BAXibTZAYRfG6cTBQEEokS+K6qMAbsr/cZHGR4mLV4gyjO
         Qsanx1vpwFoU28WFe6PK13c8N/5Uq8iTL2WbJrv6ahEGzGCum+5HwdyDy/YqJTB36z15
         jQxbSFoxDEGQiB7q8oivxfOp54JRPy0tZEc3EugsGyNEMxaVvyBM3uk6L8pLZxC/5xt8
         Wwr3E8KDsuuaMkkhP8+Yy90+vZXeB8bjL9y1HpMINOsb6kIfEEkHdZQfmsv0MBt/gU72
         n3Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MU6e7cDF1JMKTrKBfv7EwKDXdcyIXC/Lt0G8U1Un3Gk=;
        b=PUnpxGqGGCfBWBh0Cn8Jt1eAl4lP7p/cIKBzY/voOAD2x40T4/QghZj35o0t2JP1pQ
         AFAcZqPNJ6rLWiT/lV5D/OPAd/msp7mNba0XRxaZTeoEmtP/IQAk+x+Qr4f9j0mn9quQ
         iJ1F74rRE/jEeRCqtVfse945YBlEE65szcqfb6RaUhbvXbJwRfFKl6FhjjUaWPXkpOKX
         oPmfWnzZ5Bzpnl1BgpWPzqUMzIeWGq8HKCbLZWfI3vOcpjfjoPQznYGSXPqNkwNwhYXI
         v55moJ90MeeVte+f5qnq2zMXGIzbO3v/mvgF2qDTTNgLrPr2qHkRah1DxF7dyO7lI1/t
         IQ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZBPRmuaF;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k78si59246pfd.5.2021.06.02.11.50.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 11:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55B1D6139A
	for <clang-built-linux@googlegroups.com>; Wed,  2 Jun 2021 18:50:19 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id z137-20020a1c7e8f0000b02901774f2a7dc4so1721220wmc.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 11:50:19 -0700 (PDT)
X-Received: by 2002:a1c:7210:: with SMTP id n16mr6290898wmc.75.1622659817854;
 Wed, 02 Jun 2021 11:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <26f81a61-e2eb-47e9-b6e0-3989582bb955n@googlegroups.com> <CAKwvOdmSV34MqtU+3xLSp-7gx4fnnirbsqDCenCXx=f=Tp-2tA@mail.gmail.com>
In-Reply-To: <CAKwvOdmSV34MqtU+3xLSp-7gx4fnnirbsqDCenCXx=f=Tp-2tA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 2 Jun 2021 20:48:38 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1BsNEy_Jf18-oxSjU24DPwrwzeLaT7zeujdvpW0B-0Kg@mail.gmail.com>
Message-ID: <CAK8P3a1BsNEy_Jf18-oxSjU24DPwrwzeLaT7zeujdvpW0B-0Kg@mail.gmail.com>
Subject: Re: Building an existing .config (provided for gcc) with clang?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mathieu Acher <mathieu.acher@gmail.com>, 
	Clang Built Linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZBPRmuaF;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jun 2, 2021 at 8:31 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Wed, Jun 2, 2021 at 3:13 AM Mathieu Acher <mathieu.acher@gmail.com> wrote:
> >
> > tldr; some "fixes" seem needed to build an arbitrary .config with gcc *and* clang
> >
> > I'm investigating a build scenario where I already have a .config typically generated with randconfig and originally set up for building with gcc...
> > And I want to use clang instead to build it.
> > My experience so far is that the --syncconfig Kconfig asks me to fix some options' values
> > first, to choose between INIT_STACK_NONE and INIT_STACK_ALL... and then to choose KCSAN: dynamic data race detector (KCSAN)  or not...
>
> Hi Professor,
> It's a good question, one I don't really have a satisfactory answer for.
>
> I think it's impossible (but would love to be corrected) to reuse
> exactly the same .config with two different compilers (even different
> versions of the same compiler can have differences).  This is because
> KConfig also encodes not just various kernel drivers and features, but
> whether the toolchain supports certain features.  So you can't force
> one compiler to claim to support some compiler flag, then actually use
> it.  If at Kconfig time we detect the compiler has support for say a
> -fsanitize= flag, we encode that in the .config, then during the
> actual build just look that up in the .config and use the -fsanitze=
> flag.
>
> Probably the closest to what you're trying to do is the `olddefconfig`
> make target.

Agreed. In particular, there is no guarantee of ABI compatibility between
kernel modules that are built in a different environment, whether that is
a different compiler (version) or different configuration.

For the purpose of build testing, it is better to run the same commands for
configuring the kernel (defconfig, tinyconfig, allmodconfig, randconfig, ...)
rather than relying on an imported .config file.

> > Two examples below, on Linux kernel 5.8.
> >
> > First, with tinyconfig
> >
> > make CC=gcc tinyconfig
> > gcc --version
> > gcc (Debian 10.2.1-6) 10.2.1 20210110
> >
> > make CC=clang-11
> > scripts/kconfig/conf  --syncconfig Kconfig

side note: when build testing, I would recommend using the '-s' flag to make
in order to have more readable output (no output on success), and using
separate object directories per target/compiler/config tuple.

> > * Restart config...
> > *
> > *
> > * Memory initialization
> > *
> > Initialize kernel stack variables at function entry
> > > 1. no automatic initialization (weakest) (INIT_STACK_NONE)
> >   2. 0xAA-init everything on the stack (strongest) (INIT_STACK_ALL) (NEW)
> > choice[1-2?]: 2
> > Enable heap memory zeroing on allocation by default (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
> > Enable heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) [N/y/?] n
> >
> > and then the build proceeds...
> >
> > Maybe it's my setup/build environment, but I got errors:
> > CC      arch/x86/events/amd/core.o
> > In file included from arch/x86/events/amd/core.c:12:
> > arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for constraint '=q'
> >         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
> >                            ^
> > ./include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
> >         raw_cpu_read(pcp);                                              \
> >         ^
> > ./include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> > #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
> >                                         ^
> > ./include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
> >         case 1: pscr_ret__ = stem##1(variable); break;                  \
> >                              ^

This is a known bug that has since been fixed.

> > Can we envision to have a generic procedure that would "fix" a .config (gcc oriented) in such a way clang can be used?
> > if it's "just" taking a .config and fixing INIT_STACK and KCSAN, I'm fine :)
>
> I think if you run `make CC=clang olddefconfig` that will reuse as
> much as possible from the previous .config, no matter which toolchain
> it was built with.

Yes, this should always result in a clean kernel build, if it does
not, that is a bug
we have to fix.

However, this does not necessarily result in the intended kernel: a 'tinyconfig'
may be larger, and an 'allmodconfig' or 'randconfig' may produce less build
coverage because it builds only the common subset of the available options.


> -CC_HAS_ASM_GOTO_OUTPUT y

This was added in gcc-11

> -CC_HAS_AUTO_VAR_INIT y
> -CC_HAS_KASAN_SW_TAGS y
> -INIT_STACK_ALL y
>  INIT_STACK_NONE n -> y
> -HAVE_KCSAN_COMPILER y
> -KCSAN n
These depend on the compiler version as well as the target architecture

> -CC_IS_CLANG y
> +CC_IS_GCC y
>  CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian 10.2.1-6) 10.2.1 20210110"
>  CLANG_VERSION 110001 -> 0
>  GCC_VERSION 0 -> 100201

These are obviously unavoidable

>  LD_VERSION 235020000 -> 235010000

This one could be avoided by using the same binutils

>  KASAN_STACK 0 -> 1

This is a workaround for known problems in some compilers

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1BsNEy_Jf18-oxSjU24DPwrwzeLaT7zeujdvpW0B-0Kg%40mail.gmail.com.
