Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS6RUDVQKGQE4U4Y2CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDBCA2758
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 21:34:36 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id t16sf2717533edt.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 12:34:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567107275; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfEd/iamBAPSHAMi4ktVtHuuRJzOWphNSGxJ5iy+HNzt/UtxdcJYfyPbk2Irb2gaqn
         86dIy04nQHHdEPfR/lPXKggxYUUwMC7AcmfKO9lQABKdYwr8J1F1RqLhqZy+SfkMme0I
         hxWJWGdHOaKwXnYx9Xj4I1VmoqV4OO9vENNlG8SO+TEBeI/Xj7ox1cAI1rS8nYdAFZAg
         54a0FqpWwF+rssfPipLYA22XrOI13+Ix9V5euHVCz/YVsIRUm8Am5krgYwKC23oPTuu4
         nmpRQjmVfSjZVxZ3bgF7cm03gGfigQ1zNBj9OS9pyfHVzqaxEInECyWDqx/zVpJpswNr
         ocwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=FY3R462LU4QF4pE8mUvB9Bc19VK34fxW/UmedDcrPhg=;
        b=lqnQvnxPMhLWEo3wwNbgfCkvVYkJ2xzdW7LxiR8W9IKg1iHrZtUya7JzSdhx0Sz0ri
         kZGXlwPRC+ub/pfeKcVaRHPsWHKETgc2RLpQ6ehZnEoR7x+cSexmXA3lYeQrFMmj2d14
         dsKEZGQgImy6vM/LEdhibikL7xKlujrhd4GW77FhaV2ivuomFTQP5+yXD/fPfG8PngOb
         yiBU9wWrLTG+LhthwX9onb5w1T7fQceR3SGnyjrj88s4DPRfVaF3nklBxl1y0YZfdNH1
         LT+BLx71J6t5y7G/J1xJaMMVWPxVSSfla9QsIqRsoxLssaYVDlVtmZgsOE8aLE7ueo2q
         2y3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=om9rfD3r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FY3R462LU4QF4pE8mUvB9Bc19VK34fxW/UmedDcrPhg=;
        b=nSDnT4/sikUltdq7WMDQjQBqpOKnNyEUc8lP/uzhdyL6RtvSrDVbdxFAeukZM45RrN
         D4t9e1UricOrYier2KzDUp9DQjJIPiFOpikFis7yHM+dgE4XwIS8gYgMNRHwmwj3W0F4
         Q7aIrfKwLS+DJ5TDaQnOQWPIyktDt2VZHG/9Qnx9ErW4MHk4EPy9nYeoA1pVX89gia1V
         06Wrknz+IT3vpdU8CYCf8gim3kCuf6WfYj8ET9jMXkZ9eBZ+5KGaT7hkeDMWicO91N8Q
         pMHmmxa/ULRX3tfZ8cLvFIgDYqWywDnynE1nFgUWi4ISwrD8G7BVpzWvy/BITIstGg5F
         fiCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FY3R462LU4QF4pE8mUvB9Bc19VK34fxW/UmedDcrPhg=;
        b=mJKakXUANR/ww28XsRPASMnZA4dtH3muiWUSTcB+kTG2nqhJ+wuBAzema+WqowjVlk
         LXpcue3Z7dNXJ5d99FFixO1stAQPSBAyD1176kRarThfSJCmc04abSkXwdeTJlY0AQSR
         Vzb/mCFF4Urgv6Q8sz//6yfmqndc/7fjx1DdfkaRE7ZF14iq8x6cR7jwgU50n/qYIxuV
         i78QryfOmHZNHANBAglveUZLmRCiPJyrUKdSk6tRAblJlLx1icE+AglBxRXcL5o5t9WS
         vo3XPFK8RgsVHE43Pax/3okJMESesACN129tcRKVtYC1QfKbxPzSURP7EWIrYi5JGw2J
         uDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FY3R462LU4QF4pE8mUvB9Bc19VK34fxW/UmedDcrPhg=;
        b=AwZqcnW8WN+T12tlDHXs+z2vRJVLgqXKLHw1anejkbiX5G9OaO8E/QHsizcGuOqL5B
         IbQSTR+VA7OfhILehOPORw1PxnBmb5dGrWkQNp/82VdKfSdO0HlLiKQwHeh9/je+JKo4
         HU15Eg+Q2N0G4NRNii7pbH3TsjXAgxbepQLtZCe0qDEKygkHgU0dkRPbYsXvykIEQ5tT
         wwlWM/DafipEw70FBsXOIbxF6Nk4lfDsybz7Q/d1HkTU+CyRpJuumOhapBz8hGgwFnvy
         3H4ruGw2Fc293AHJD2iNpSz8qxaWQox5v2vzVDvSXoCKl4qZZPtIdugGn/0sbzXhmlNG
         trCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZ77DztxNTpFYLkJWZbCdWlAvyEY14tLpOvlrXx82SqDjdiCoK
	7NFSigFt88bXJkWSsRcyDxU=
X-Google-Smtp-Source: APXvYqz2ZO/TZyFTGg2GQ1pzFpc4x4cL+EsHMk4NsfGLPd5+ILzvL9C4ynvW1N433OewFTqhV/9q4g==
X-Received: by 2002:a50:f19a:: with SMTP id x26mr11552424edl.144.1567107275767;
        Thu, 29 Aug 2019 12:34:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:80d4:: with SMTP id a20ls1066738ejx.11.gmail; Thu,
 29 Aug 2019 12:34:35 -0700 (PDT)
X-Received: by 2002:a17:906:5789:: with SMTP id k9mr10126437ejq.56.1567107275376;
        Thu, 29 Aug 2019 12:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567107275; cv=none;
        d=google.com; s=arc-20160816;
        b=uVC4/pHJuTapPQuFmc+PvI9QioUZhM0RjqzmQWmqGFHJ/F60OrBEfgyFy4ba8g6p1o
         866jVgHHzb+XqYKtcEalQTqKCfRXtvlE14f8POtoVtkNcVYTsyUyHdIYbz0e4k30yNr8
         YYIrlPJziKHtKbzeGhjCcUxnuB4psCV/zUftK0qdrDKQ+rr6CpwTGriSky3+FTJJ6fXh
         EMpfuYHGYH5ChkpYNcNNwWczqQPbtsBzPMF7ZhWhHY+uhPCk8Q2XX+XAuzP9u3+ndOt8
         NmSllDJX5Zw4f2Q7OB1oobvlwzod95pJ0cD8eybfw8tzzH6ANEaoN5I57udldLcJyJqj
         iWIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wITCcu1aUHRsjm7ofKS0hPTgotk+bgOxAXtcBSapAng=;
        b=XLZx6jyWpzDUDPYIxvPdmf9Da7yh6vDcCBUTQVL0qsvHVMKFnR2SA5eCu1bTjl/ZOk
         p6aahQSJ08Xt9o7/zQElF5N6ZQDB/V/Z7qgJeqmh6UvG5t3Et7K4EfUsTHDs+lasQ6n2
         HTLMpNleKv5Lw7omjfe/TIIzD5BOqgz0iMUnF2sG1ybk8+vwGbCVji4jYVbc4lUGBJNr
         IDWxBNFAsEs7bHY5KXeRQe3B3NunJyiQhyTF3go3AV6lLL0995UyQ+xfijJ7Wv9EqOim
         KdmqADi70vR7Ce9xfcZEKVgie9gnAdiAPgYGpomF3uzBLj8Vo0VTqJRb8s+lESSaIq88
         +haQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=om9rfD3r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f20si149754edx.1.2019.08.29.12.34.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 12:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id b16so4584229wrq.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 12:34:35 -0700 (PDT)
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr10775791wrn.62.1567107274840;
        Thu, 29 Aug 2019 12:34:34 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c201sm7320983wmd.33.2019.08.29.12.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 12:34:34 -0700 (PDT)
Date: Thu, 29 Aug 2019 12:34:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
	Stefan Agner <stefan@agner.ch>,
	Matthias Kaehlcke <mka@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
Message-ID: <20190829193432.GA10138@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=om9rfD3r;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> > with clang:
> >
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> > softirq.c:(.text+0x504): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> > softirq.c:(.text+0x840): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> >
> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> > broken and caused the kernel not to boot because the calling
> > convention was not correct. Now that it is fixed, add this to
> > the command line when clang is 10.0.0 or newer so everything
> > works properly.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/arm/Makefile | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index c3624ca6c0bc..7b5a26a866fc 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >  CFLAGS_ABI     +=-funwind-tables
> >  endif
> >
> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> > +CFLAGS_ABI     +=-meabi gnu
> > +endif
> > +endif
> > +
> 
> Thanks for the patch!  I think this is one of the final issues w/ 32b
> ARM configs when building w/ Clang.
> 
> I'm not super enthused about the version check.  The flag is indeed
> not recognized by GCC, but I think it would actually be more concise
> with $(cc-option) and no compiler or version check.
> 
> Further, I think that the working __gnu_mcount_nc in Clang would
> better be represented as marking the arch/arm/KConfig option for
> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> than or equal to Clang 10, not conditionally adding this flag. (We
> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> calling convention being broken is orthogonal to the choice of
> __gnu_mcount_nc vs mcount, and it's the former's that should be
> checked, not the latter as in this patch.

I will test with or without CONFIG_AEABI like Matthias asked and I will
implement your Kconfig suggestion if it passes all of my tests. The
reason that I did it this way is because I didn't want a user to end up
with a non-booting kernel since -meabi gnu works with older versions of
clang at build time, the issue happens at boot time but the Kconfig
suggestion + cc-option should fix that.

I should have a v2 out this evening.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829193432.GA10138%40archlinux-threadripper.
