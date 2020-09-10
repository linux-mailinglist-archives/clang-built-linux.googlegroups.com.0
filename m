Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDO45H5AKGQEDZ4Z63Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 875BB264CAC
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 20:18:54 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id e6sf4762417qtg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 11:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599761933; cv=pass;
        d=google.com; s=arc-20160816;
        b=qrGVW0ZMR3XbUtBet5TCFS3NEz3f9QQQhGBvfX3+hxjmx4h5syEcCJjeN4Gj+fnYGb
         N/w+d5qFfVFIDQitBHtdLLthLxk0Tm3E7qUmnbKsQnWiIbXEvjJzhUDa+Bz9qsPQZUnk
         SAX6oajwyNxWJL8ZTjTU5frGwraVf4gKkvOscs5vVThfVQjpLWmEdodLGr4CHt+kIHnJ
         fJhAaChDl1IgpD2eXruvVfdqxuHtYVGKB7gVqpqYkYA6DA+B6UMNRsloxbC5JCVZ9P5c
         oK6oDy9XqsZi/HibPi85l4fTXGgjuHR00yOGOBtL305ZB47uOUv1agiZwNazkDJLOqRv
         XiQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iI+wFSVE9DpF2sZMV/TvjbKDa2ojZ1Lm53+4cpWCz8I=;
        b=VHBPPUCfU7mur9eUHO9WbqUVqPcSkcnQ+GCNq28tYAiCA8YS8ferCcwU0DYX8ZVFK3
         DWX1BbF2uov8V3uwk66IbB8vcffKpBcp/mLXQms+a2Quah0RowShZ76bu6fz1v70TTk3
         yIRKocyKzGUNL/plqDBcJKi173nc70KqUs+LHQ7ZdinxxRy1rIobHqdMVU6FF7WvHal7
         fEf6ijU8Fo70mi0PvQalrj8zmGATq44cAKXUHuSEdpJFH9DeZAWCVeXPg5EokDUf3ADy
         IcZzWwxMODxdYF/hVWfHMsodWYSYPNtBHA5EAbbIQY5tOMCfkAgZpTQWivX6bmxpL6M/
         a9/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HLvuaRMW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iI+wFSVE9DpF2sZMV/TvjbKDa2ojZ1Lm53+4cpWCz8I=;
        b=qQv1grPGToZwMhrXcZMjvaHOkoJgqZ3xSBOY8S8hOBNpmf/Te98BDcKOXefeBXwWwd
         DCgPdMHA2L8xj7aKMHZIOA5etIU0+wdazHEIWQ6Af1hHLdlzRyROVCtkYf6eAW9Qlaqu
         W0lFzHeg5NnClpcn9gIhro1SgGB/aH95g9EQoS+BsWXggVcqxqXQRL1BUsKe5aubhsbi
         cGK7Bf7N3upgmm9g9xh6o9gsLjT4/a2q14189LLmRONxdGRbheFRKlprUVg5tlXSAKy/
         fDWxzXhIb2LAgcC7ifHR3szpXQbUP4w02PANBq6v5igpT9fkqQq6Re3G6K8cPCg3bRqy
         NEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iI+wFSVE9DpF2sZMV/TvjbKDa2ojZ1Lm53+4cpWCz8I=;
        b=gMVMjWsePd06AD68FpmeqIDdoj/DUv4Dfe1+iODTPJ4asNnaQQyYET5gxvFY3Q0b9s
         piKa2CW4qTA+31Jwp0yH6k/zuLFOfaiBVFpNmUvL2T2eAs4HyOuAdzGQMW086ClUGX96
         A95bGaEgh5MgK+ltXOtxxzrkq9jwPf/ldo7pUmkJqxe7z0Z+0nd7jRAnb+beiC7y28cY
         9Ky8EDRX+kOk20pvMN2pXlMSzr3Zxg+kf0AnYa32EPTDeCfpLc+urvMn+r5UfEXt3XD8
         zp1n5ND5QGpCoRnA1vJKFJm3CNj5Ag8822O0MtlZBR8FfDHYmUC/MJK5EvC8BXGVnGew
         LXJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YW4enpTb3ZLaiIqw6ZfOs+WVyX2qqxulj9k2dvg/fNNKlAcLj
	Mqq74GWDZFepeGMiFWKRvGo=
X-Google-Smtp-Source: ABdhPJz3njzzYeOWiGRK6DM7RKTvRGBrWsh35XV5dDMFZoW2g4QhMi+Bb6nn9Ia7eMdVSnFCyngrIg==
X-Received: by 2002:a0c:c2d0:: with SMTP id c16mr7997956qvi.94.1599761933630;
        Thu, 10 Sep 2020 11:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls2853952qta.3.gmail; Thu, 10 Sep
 2020 11:18:53 -0700 (PDT)
X-Received: by 2002:aed:3a42:: with SMTP id n60mr9193678qte.125.1599761933103;
        Thu, 10 Sep 2020 11:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599761933; cv=none;
        d=google.com; s=arc-20160816;
        b=h96wrm0HbP1PtHOPj6WUcio/FBbSJsCoLxAqB+XezJU8kn3NABDm9B3viUBbOSCWCr
         /IIkMl/sygeXu7zyiPKMfZ8kHfYqr8RvuPhhs0DsnP3/YU1Vxx76iiqgPrrvMjuugW9x
         AfVqHrMc+2Um7di9baC1PmOWiUYGeOIU+getKp+310J30JGKV2FKchs3zd7wvoJ5TMHu
         8fYGkl5feUBB5CMOy7Hpk+WhnirLFEtSIp8fCEHIB/tK5xn6a9jqpXTpyM0eIQ96NQvq
         99vH01Htkk5N4uhRTZnLqtBLWJdSm2Nz6ZgpxaFuxlKVhrTO8HUsoDcQdCEhAhreA9fc
         wNyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NNmcHwO+Iwg+rMeH3STh9feD6/hRsrC6t3t7wQ2j07g=;
        b=QLG0QKa4ljRctADngzuGr6GW7OLNoRhEEwU8d0ambff3+9WBuvZBsY1pwi6bYGhBCY
         T2Xk97fo3IOREWG1JBcSvqHkIE3+b6MJFqGTANOVOl2EvOx0rqJLdXG+ymkNiYjSXl3/
         315tt9O/PexEVg0D3b3IrFXm444veLo0mhncs/7KnBACBZ36AJ5JuOgF4IgFebqFT4nR
         Ne4MXV30frg7QQRxEJI4ajPA3AQ+6ezO7p1hgEIWTWWQGNR+z9s1EDibZqgvNNtBzHxM
         zAoiAg0G2Mhu7TMNsEWnUIWJXASXibiMgCPg2byFYyfZrQyNc/6NNirZtb4hi0VV4VOD
         +VIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HLvuaRMW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h17si450060qtu.2.2020.09.10.11.18.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 11:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b124so5077610pfg.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 11:18:53 -0700 (PDT)
X-Received: by 2002:a63:6cc4:: with SMTP id h187mr5452054pgc.129.1599761932269;
        Thu, 10 Sep 2020 11:18:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k3sm6784065pfp.41.2020.09.10.11.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 11:18:51 -0700 (PDT)
Date: Thu, 10 Sep 2020 11:18:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <202009101057.1CCEB434@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
 <20200908234643.GF1060586@google.com>
 <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HLvuaRMW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 10, 2020 at 10:18:05AM +0900, Masahiro Yamada wrote:
> On Wed, Sep 9, 2020 at 8:46 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Sun, Sep 06, 2020 at 09:24:38AM +0900, Masahiro Yamada wrote:
> > > On Fri, Sep 4, 2020 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > > >
> > > > This patch series adds support for building x86_64 and arm64 kernels
> > > > with Clang's Link Time Optimization (LTO).
> > > [...]
> > > One more thing, could you teach me
> > > how Clang LTO optimizes the code against
> > > relocatable objects?
> > >
> > > When I learned Clang LTO first, I read this document:
> > > https://llvm.org/docs/LinkTimeOptimization.html
> > >
> > > It is easy to confirm the final executable
> > > does not contain foo2, foo3...
> > >
> > > In contrast to userspace programs,
> > > kernel modules are basically relocatable objects.
> > >
> > > Does Clang drop unused symbols from relocatable objects?
> > > If so, how?
> >
> > I don't think the compiler can legally drop global symbols from
> > relocatable objects, but it can rename and possibly even drop static
> > functions.
> 
> Compilers can drop static functions without LTO.
> Rather, it is a compiler warning
> (-Wunused-function), so the code should be cleaned up.

Right -- I think you're both saying the same thing. Unused static
functions can be dropped (modulo a warning) in both regular and LTO
builds.

> At first, I thought the motivation of LTO
> was to remove unused global symbols, and
> to perform further optimization.

One of LTO's benefits is the performance optimizations, but that's not
the driving motivation for it here. The performance optimizations are
possible because LTO provides the compiler with a view of the entire
built-in portion of the kernel (i.e. not shared objects). That "visible
all at once" state is the central concern because CFI (Control Flow
Integrity, the driving motivation for this series) needs it in the same
way that the performance optimization passes need it.

i.e. to gain CFI coverage, LTO is required. Since LTO is a distinct
first step independent of CFI, it was split out to be upstreamed while
fixes for CFI continued to land independently[1]. Once LTO is landed,
CFI comes next.

> In contrast, this patch set produces a bigger kernel
> because LTO cannot remove any unused symbol.
> 
> So, I do not understand what the benefit is.
> 
> Is inlining beneficial?
> I am not sure.

This is just a side-effect of LTO. As Sami mentions, it's entirely
tunable, and that tuning was chosen based on measurements made for the
kernel being built with LTO[2].

> As a whole, I still do not understand
> the motivation of this patch set.

It is a prerequisite for CFI, and CFI has been protecting *mumble*billion
Android device kernels against code-reuse attacks for the last 2ish
years[3]. I want this available for the entire Linux ecosystem, not just
Android; it is a strong security flaw mitigation technique.

I hope that helps explain it!

-Kees


[1] for example, these are some:
    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=Control+Flow+Integrity

[2] https://lore.kernel.org/lkml/20200624203200.78870-1-samitolvanen@google.com/T/#m6b576c3af79bdacada10f21651a2b02d33a4e32e

[3] https://android-developers.googleblog.com/2018/10/control-flow-integrity-in-android-kernel.html

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009101057.1CCEB434%40keescook.
