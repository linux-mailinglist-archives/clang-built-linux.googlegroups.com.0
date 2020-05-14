Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCVR672QKGQE3XS7YUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id A64EB1D41D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 01:47:23 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id y1sf368338oog.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 16:47:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589500042; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHNSjqv27BX52a4ycP9S8ljjCoEJjzCHsr2xYgrdoXdR2ow5DFGrcWyDXBXGwYuGQx
         Gnq30hVqe4RaH8qh218EhsgrkPXsGMPLu8JsMc+c9DZbGAojaMlcqIQyZzcYJcLE9+dg
         LavtuF0ttlgH7JslxynyUTATtFjfj/2LrtMmcw5QDHGOhBvYLreUKheSMA13O3oqbtzf
         ammHomQ3TOU4Q4QIACmvhd70O0axfN4Aro9xlIcVjk3Hbz+Xk1UYNbKEeCDNLq80LQMy
         zGdnDiZr2nr5pKcU5TAMFoRw5p2bAkM6C35KTTd7ppalxOSIOmLGe5b5QlS7qAAKMzOP
         TP7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iJhUs+Tp66kX/ZVploYEirXf265n5yCJomo7LQI1V5Y=;
        b=brJxq9+d6Pu0Mon4NOk/b6qfXPc+v3wmNjMy/5+rnEvOtcwMV0rYJK+0e4lE6RoldS
         5ARDSKOxxRFn/UcjKF+at13ggTbXQwr1GBiBZKzBgysN/G+k1FPuTtxvtOKNyzivdMO2
         krzzaCs3JeLN0gTfJC51tUOYZFBY2boe6dCP/K6XAsPDtV1gb9E/IXsbbDV9Z1Bnu1WQ
         diELFtmWbPHBEAowUPYoZXrEei5VVi/eFQB0NvrnWjX8LYobo2/H8fKgnGt5rBB6/iLL
         WzBsT+OHHD0KKGZJUYD85hn0fUyu2Uuv/soaWpBTspBGcc+dEFR33ToE3AwLir2PDqdS
         eSXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SEYPs998;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iJhUs+Tp66kX/ZVploYEirXf265n5yCJomo7LQI1V5Y=;
        b=HomghanCxeWkLQIWVfavGerzTYZFfsh77jSkAGnQY9vzcTuREwqYhUTizO3V56yidW
         OLcQSTpw+BdiVVpzhKbHJEWO78sW9waDY2f5D+ybXA976fH3g+FpSnQI4zqJs262sQMR
         oaZ2rMIITUtI44EAWJsrkofMTyXoMtf5yyz1QKDV74WS8eXA3RkdESRDk6ufxXaq2iqE
         8EHbupDsMD8kJ9cef2pFhAgaM1sZR4v2PePlXBB7kZUOcV3+lBOJhI/DLVzQJFlu6Erw
         Q2ydNtXpd1zUraDQdCinmS97AnBH7vZG9GCrwM6Db64k8lHeGQDTXLKGmWHwp3FgeSfS
         E3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iJhUs+Tp66kX/ZVploYEirXf265n5yCJomo7LQI1V5Y=;
        b=cK18NGhsQM687QzJLdon8jQLR9TKlK92otZUg74A/jqPdp8XwAJVE/cGqmh2Y/ArCw
         9NYikCXi840eZJTGwKpOJes2IK5TpQ7ZKUmOPaAJnncw5Vojp7QH3id78NlPsMaqq3Zb
         r22IMTzs+xbA+omzY2l11vUHXyvi8WajIxUE4qtAx9NUn/VAmFMpSKzH+7xyaP7OA8w5
         s16aWrBEH3VS43mP6JdRld+gA1WwBbztxhZViFG85FOJmktsGThyqUTkCPn/YbCWOr++
         NrQAenKxp9PuD8Gj07fM7QOU6vGvsg5/JCf3seVXmG3p92fLZ57u+wgaBw4QVJG3pGhl
         lJPQ==
X-Gm-Message-State: AOAM5308HvEoxrOb0IdUazRNDXpowa29OaZzOpN2+0O1K6AvnkF+m6eL
	uO1b7ShxItnPM+xDH67Urt8=
X-Google-Smtp-Source: ABdhPJweNn4OcGb519251VJCnNdkdEZgU7cX6ce9HjwHV3LUMQeyE5am/boV3d5Sz+vfHLzm0+ot4g==
X-Received: by 2002:a05:6830:1292:: with SMTP id z18mr288860otp.333.1589500042154;
        Thu, 14 May 2020 16:47:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c648:: with SMTP id w69ls123552oif.7.gmail; Thu, 14 May
 2020 16:47:21 -0700 (PDT)
X-Received: by 2002:aca:c5cb:: with SMTP id v194mr320414oif.26.1589500041820;
        Thu, 14 May 2020 16:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589500041; cv=none;
        d=google.com; s=arc-20160816;
        b=jqs/accjBUs7Sy2JIliNoCCxJkCuvTnMdGHv8WDbcE2xIZWIV4ZmuyZCTpNkeFMqZO
         +p71Cx6gZAn6Il2nDsHwtTW8xdP8ogKAH07TrpPz7CkUYxxzhaP0WJfVl66T65ueMRz+
         QDNlfqts0HXqYNUuvn7xv8kmRMQh+borC9Fzyii/IsSR+5mKRkPBJ+nKAKZV2qyIHE2m
         crC6STIPEfsIvwWjZy6CSVd/RsaF/dkySU57YF+DfHCRwtlOhiUrCMXTDtU8kuTIqHw0
         +ToZPrWBzzWA4+2ZJ/1DeErlkzRNbRYj/lxMFgf7xOQjD5/bAgVhQuZYE/bxEAhx3Pzl
         TirQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KJ319p+W05TbtIHodnmslKmxvaislCF8XQX/X/cRrWQ=;
        b=kazalJoBXRAn0g0ioIlljSzOpLtpZ0F8fvYz+yW9UPq9P29qvI+vRdYUwje/5f9HkK
         GlP1i+RJHtODajpz826WzwwkVt2/Io2nG5D12V2sTIwAV+9ILyMww3JaIZP8t53E7tLk
         N3Xb9Fb47VURe3Pw+5E9Z6LJC0u34DeMLVbm8GJKB0EF4pBkjD5s7hwS7ieDn0/6kJAz
         Q335ttsMtbHbd8eumMD/Mrh1F/8pZpz8D0m2mNCaSgSUapkHFPTNirqgLJ+3Q+ROeu0i
         HWWWu2h2TjdLZwFqIhmWLuzQ9E2QDFyAi21pYtOLllG9hMEuS9/hBVX+5KkMRGNHjv0p
         Tcfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SEYPs998;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w196si62374oif.4.2020.05.14.16.47.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 16:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b8so174658plm.11
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 16:47:21 -0700 (PDT)
X-Received: by 2002:a17:902:c3c1:: with SMTP id j1mr960276plj.179.1589500040518;
 Thu, 14 May 2020 16:47:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com> <CAMzpN2hUQwGoYQnsKZJHFY=p-=-zXTwhRnCejhoztCvPX8e=CA@mail.gmail.com>
In-Reply-To: <CAMzpN2hUQwGoYQnsKZJHFY=p-=-zXTwhRnCejhoztCvPX8e=CA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 16:47:08 -0700
Message-ID: <CAKwvOdmPEVAVkKUYwojnvANCFJ27WF8Z3W75fC3OaWMDBL=7-g@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Brian Gerst <brgerst@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SEYPs998;       spf=pass
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

Bumping for this to get reviewed+picked up.  Fixes a regression I
would prefer didn't ship in 5.7.

On Mon, May 11, 2020 at 11:52 AM Brian Gerst <brgerst@gmail.com> wrote:
>
> On Fri, May 8, 2020 at 2:32 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
> >
> > It turns out that if your config tickles __builtin_constant_p via
> > differences in choices to inline or not, these statements produce
> > invalid assembly:
> >
> > $ cat foo.c
> > long a(long b, long c) {
> >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >   return c;
> > }
> > $ gcc foo.c
> > foo.c: Assembler messages:
> > foo.c:2: Error: `%rax' not allowed with `orb'
> >
> > Use the `%b` "x86 Operand Modifier" to instead force register allocation
> > to select a lower-8-bit GPR operand.
> >
> > The "q" constraint only has meaning on -m32 otherwise is treated as
> > "r". Not all GPRs have low-8-bit aliases for -m32.
> >
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/961
> > Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> > Link: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> > Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > Suggested-by: Brian Gerst <brgerst@gmail.com>
> > Suggested-by: H. Peter Anvin <hpa@zytor.com>
> > Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Reviewed-By: Brian Gerst <brgerst@gmail.com>



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPEVAVkKUYwojnvANCFJ27WF8Z3W75fC3OaWMDBL%3D7-g%40mail.gmail.com.
