Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT5G46AAMGQEYSO6KYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 461BB30CEEA
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 23:33:53 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id p13sf10885196oos.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 14:33:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612305232; cv=pass;
        d=google.com; s=arc-20160816;
        b=s88MkJBgt8ZA7uCBaqhgFAWxbCF/M4K26fu+qDzbu4FVIKik+H1U8MxRurDraDVZ1c
         DSPKdCK88s2yOU7nL7vuhezAz2tno7OMjMhbJiJf79jvmBFTrHtwnoirqoHcl2UULXZH
         qArontLncHx1pD11xdUgAik9K9IAItbaAGmJsf/5vTc1PD8b+ZZnV8WrQbCyzjjdcqK/
         uWnb1HpogXw6/g9lHmR1qoear67tR9BUTOLhfVaOgJJPkp9XZqxVX03fcCZ9+jUn6VWf
         vRNgndro73u9z2QwCqoRJGGVUSdVki5Io9xpU9ZXI0/wf4pqAstvjxzNUZU6RtSfoOne
         qntw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6VFlKBKaiF4ppeTw1It5v7jpT/HFV/u5dXD9AEuYP/Y=;
        b=DX/uDO9XnjereuSPjmY1J6zIdJw4HlChpn1OJ4dGLhCL2Z1MdCIuJrm3fO5iDuWGVq
         /A1jStnZ6/mRYzDE3aEPxYjzOe0LPyrhy45Wg1bVJ1ecLTjKZGnMep2szUUcqQkJaLZv
         e/cdWi8Do4neQL6uq2WWCJpMOUMMyaewVSAe89DbLgDydfhxxelqBXIfnjv2PUN4wfRI
         U6Tv2hSGW19HZa22PFnFRDJ35z3yCRN+0QhEmeX88lcuoLYoKhbXD9IA7HSR6+41uM3N
         CjMRJdVp7VgwM7PVz3moPFREfLZ+gCKep1U7pjon5LAgL+STVdvN9RcYudEQBIY0g28i
         euPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gnJJdDK5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6VFlKBKaiF4ppeTw1It5v7jpT/HFV/u5dXD9AEuYP/Y=;
        b=WV3C0O8d3LKdn/iaYAhWFpCvmBKJvBumLxUKv8G6f4UfwH4Y4FW25Rm7UNYZW/FliT
         xhoXbRhdm501HLJsWqmkYDYEZA+KK4WC+HKqSB/KuHq1hu9nab6iTpnwwiqqhmPXnsQ3
         yDpXLkEcMd8gIzggfOqX4IHaAcE4w0W9pGwDlDXap7ibU2Cr9JHDLfsfrlVEN/rn7RQ4
         dvznVkThWowItJldmHm/hBhwfea8nevd5ZGNLGc8tRExX/5DQz7hFgZuxgD+eHHeyJ3T
         Xndx/hiLQtTsE68VCA0SvYGNhGVKGtCwtYcHkw7/UybVUUOmjrfS6dnYSrv0gTokOgHR
         aPTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6VFlKBKaiF4ppeTw1It5v7jpT/HFV/u5dXD9AEuYP/Y=;
        b=Uxb6rsGMBW/Gl9XngOZDPemxmzzk75mERXn/3XnV9rgc/T7aMkJbT5Qsg7LKKM6wPM
         CcuCwVMtO6mpOwk8zvIJki+hqCAic8MtoYas2QZ2dImaMFvhye6OAMJziDZxQMkfVeUh
         SaMONBhQDYQqoGgQCCrRAD8MbMaOftqLbrAQSOpo9YiLEetSZ175mmWji0tD/V0+V7Np
         bqAd/592Nu2t8CjKf7+ijmmDEOoxUJnB9jFSEfAMui1zUqL+3zIQ0yWHX6vMifLB65s8
         sr/qovsvTC4az7CR/HP3HZUTO0XQUp2S+DYk2AjZmW1PMBnsqAFoiwM85PF6phdTcW1f
         PJZA==
X-Gm-Message-State: AOAM532HdJCimLbMgSHrG2ILBy/r/dzogY91lfWxCHIvpIRANVtBniKv
	qfk0ReafJKT6q49FeeIcHxY=
X-Google-Smtp-Source: ABdhPJy4qGMg67H149CPFTUVY1boVtREhPznREcirmY8pMhPjhEEpK6BZxodHaXn05ZZh7tY7/UzyQ==
X-Received: by 2002:aca:f4c6:: with SMTP id s189mr5943oih.169.1612305231897;
        Tue, 02 Feb 2021 14:33:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1105:: with SMTP id 5ls57578oir.7.gmail; Tue, 02 Feb
 2021 14:33:51 -0800 (PST)
X-Received: by 2002:aca:3fd5:: with SMTP id m204mr52321oia.0.1612305231507;
        Tue, 02 Feb 2021 14:33:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612305231; cv=none;
        d=google.com; s=arc-20160816;
        b=tGa4fqS9Z+TbX4Ch/DlBChai1RZyUb7tsDT0Fg3fpAVuBZtonO6Ve+P7q/pkt5+mO6
         EKhPKc9StKIWCt2b0uTUCLhLkHeNh5L5lpROKuFyzPvlSSZXJI7bVxDCsUFq1834eSqx
         R9SNaWwv+66iuJXIuUVXTC8Wgf72lOnhx0ffzlG/jTVkcI44T2+DnjaLJrszH1JUzTfw
         6F+3U13JRUiDVYrSzJZCUn4DB5xgSQgbf168rWvjF0gRuNJKVRRPKTi+xs/W0T+3nxNS
         Phow/mQ1tqczcYwFQERBQmGD1jZuWGDrsaZJwsdfH/7n19J90cBVVPrdsrqB9LzFqDoA
         n5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=df6pAHxeS3aJ78xgSJShNmAjNRSNKmi3Vx/fq6dvolA=;
        b=TFmDpcFJ+b81ReVoqkxXXofexTLTD7vatM9orOI3Qg5F4iUyDI9G8s0E4Iu6PVPHyo
         /yyVeMH63NQWDhznG+T7zYDncEZYfx/IkDhBmI9yVb8q5MUJG4QRKS5F2MlwmnPBrOi2
         jWJX/Zb6yJU8LcTOfwEQ5Z5remZW4N/bFBkBHHP+8prtpnp4Irx0zYRrXHrWA0stqZ8Q
         yYYZObsXKSRrn4R1vB0SdbT+5RMbVazpBwABEJlt/ek0UUlSsBBQecFDFepduYZRDRT3
         rnCk7U3Fw4Oh1lNmuen4pXsIc6/uDTo1lOEt+IUaFcTsWrVAPjNLberlY3IoB53xHUBq
         5b5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gnJJdDK5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id m7si4555otq.5.2021.02.02.14.33.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 14:33:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id a16so1698903plh.8
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 14:33:51 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr10799pjn.25.1612305230632;
 Tue, 02 Feb 2021 14:33:50 -0800 (PST)
MIME-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com> <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble> <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <20210202000203.rk7lh5mx4aflgkwr@treble>
In-Reply-To: <20210202000203.rk7lh5mx4aflgkwr@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Feb 2021 14:33:38 -0800
Message-ID: <CAKwvOd=R_ELec5Q3+oe9zuYXrwSGfLkqomAPOTr=UH=SZPtKUw@mail.gmail.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, swine@google.com, 
	yonghyun@google.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gnJJdDK5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e
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

On Mon, Feb 1, 2021 at 4:02 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Mon, Feb 01, 2021 at 03:17:40PM -0800, Nick Desaulniers wrote:
> > On the earlier thread, Julien writes:
> >
> > >> I think most people interested in livepatching are using GCC built
> > >> kernels, but I could be mistaken (althought in the long run, both
> > >> compilers should be supported, and yes, I realize the objtool solution
> > >> currently only would support GCC).
> >
> > Google's production kernels are using livepatching and are built with
> > Clang.  Getting similar functionality working for arm64 would be of
> > interest.
>
> Well, that's cool.  I had no idea.
>
> I'm curious how they're generating livepatch modules?  Because
> kpatch-build doesn't support Clang (AFAIK), and if they're not using
> kpatch-build then there are some traps to look out for.

Ok, I just met with a bunch of folks that are actively working on
this.  Let me intro
Yonghyun Hwang <yonghyun@google.com>
Pete Swain <swine@google.com>
who will be the folks on point for this from Google.

My understanding after some clarifications today is that Google is
currently using a proprietary kernel patching mechanism that developed
around a decade ago, "pre-ksplice Oracle acquisition."  But we are
looking to transition to kpatch, and help towards supporting arm64.
Live patching is important for deploying kernel fixes faster than
predetermined scheduled draining of jobs in clusters.

The first steps for kpatch transition is supporting builds with Clang.
Yonghyun is working on that and my hope is he will have patches for
you for that soon.

Curiously, the proprietary mechanism doesn't rely on stack validation.
I think that such dependency was questioned on the cover letter
patch's thread as well.  Maybe there's "some traps to look out for"
you're referring to there?  I'm not privy to the details, though I
would guess it has to do with ensuring kernel threads aren't executing
(or planning to return through) code regions that are trying to be
patched/unpatched.  I am curious about frame pointers never being
omitted for arm64; is frame pointer chasing is unreliable in certain
contexts?

The internal functionality has been used heavily in production for
almost a decade, though without it being public or supporting arm64;
I'm not sure precisely how they solve such issues (or how others might
review such an approach).

Either way, the dependencies for live patching are less important, so
long as they are toolchain portable.  The ability to live patch kernel
images is ___important___ to Google.

> > Objtool support on arm64 is interesting to me though, because it has
> > found bugs in LLVM codegen. That alone is extremely valuable.  But not
> > it's not helpful if it's predicated or tightly coupled to GCC, as this
> > series appears to do.
>
> I agree 100%, if there are actual Clang livepatch users (which it sounds
> like there are) then we should target both compilers.

Or will be. (Sorry, I didn't know we hadn't completed the transition
to kpatch yet.  It is "the opposite side of the house" from where I
work; I literally have 8 bosses, not kidding).

Though if kpatch moves to requiring GCC plugins for architectures we
use extensively or would like to use more of, that's probably going to
throw a wrench in multiple transition plans.  (The fleet's transition
to Clang is done, I'm not worried about that).

> And yes, objtool has been pretty good at finding compiler bugs, so the
> more coverage the better.
> > The idea of rebuilding control flow from binary analysis and using
> > that to find codegen bugs is a really cool idea (novel, even? idk),
> > and I wish we had some analog for userspace binaries that could
> > perform similar checks.
>
> Objtool is generic in many ways -- in fact I recently heard from a PhD
> candidate who used it successfully on another kernel for an ORC
> unwinder.

That's pretty cool!  Reuse outside the initial context is always a
good sign that something was designed right.

> It could probably be used on user space without much effort.  That was
> an early original stated goal but I definitely don't have the bandwidth
> or incentive to work on it.

Heh.  I'm a big fan of game theory; carrot or stick, right?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DR_ELec5Q3%2Boe9zuYXrwSGfLkqomAPOTr%3DUH%3DSZPtKUw%40mail.gmail.com.
