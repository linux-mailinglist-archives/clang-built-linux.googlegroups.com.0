Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNOFVOJQMGQERD3D7HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E4969513BDD
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 20:53:42 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id g3-20020a7bc4c3000000b0039409519611sf1730783wmk.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 11:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651172022; cv=pass;
        d=google.com; s=arc-20160816;
        b=X68i92EHqo52RSXyySWj+Kibgxkc3QV/j+oCLl4+uKERsAhiZQbhCLLdJBL1Z0bXDV
         hH/g69VlmItALzB6P8eJrtCcjGEpGlwrLZKmdDK92BgCmWf7JdtTDO1lN88bhJ/jlOff
         NFEBboTBpqf8ou4KakxVhlI2pXzg6hocXUur1WOt40zIiL3+8K94PARKpzNUAODFtAYZ
         fZ60EnW627+GnRXQ2ibo1rornVGtuCNsOPpujuUEKEeueNfzZVTNnoDkJrQzXQACfV7M
         vvAMs/JVT7tP2SS6gD4eAbUtrhetFe1PY89wFz1H4YQabNietF7mInaqFLT54SbFtMCv
         liOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KkvqfFnDRj4/YPgfBysFHJraEJyjozwU2FGgQKS2vOM=;
        b=BabExIElcrIX66ExK+ICiTYLYAFadM4YKbJ8EKrSsG1OdSbVytyzNPFg/z8n5nBAFi
         +X8bfWvDpyIP5z7uBctbhM03PMCZUXvLQ8B79Gt4qA7sLARwdtvMWBOwK59nrTKv+iea
         QWlOW1J8hchoaIOSplNSgQdNrSfeC06zo1mibJdL7PtvHCh27KPcDhQU76x8K6dCXAdq
         rZVqK4OlyeaYCc7EL7NZJNbdrxP2z1/S8PqHW7HBwP0buH6KK0YTRebZIPkziCQuhqFW
         bjafqIhz/glMxmvjauXB7UWNcr+sbHhSET2y5HSVMg016FPFW7huJ8f7lReToHZ0afvm
         KwbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mLBj1+92;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkvqfFnDRj4/YPgfBysFHJraEJyjozwU2FGgQKS2vOM=;
        b=sk7c19JOnKvQOX6NOOi3itcLQF2KO+YdXwnJnGg7oqtdPESvF58pZge3vAd2aDkztA
         fLHGOzWbBvLMiVZY/6/tPc7nuHhbLjVemg5vggairXcxP+NMpZzMc7vWtVdhdGA3efNK
         njH+7c1Xcn/VX6PD8WfZOK4BGKNaunlxLdqNyWJbPzHNcPiLqsYdZdQlxr7taSPxgz7q
         HN2gWJ+PuiFSd3gIaFGO212p7gMhktoQHbWZ0gaoTGUce3LYXiUfIQRb2DQtxq7dGKwk
         LpN7Z0KRtCiWcnfUT44C5e0spaMfPYrjGumCWu6Ku0/iQQB6zkXLRPCd1Cpd1yum90YF
         S8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkvqfFnDRj4/YPgfBysFHJraEJyjozwU2FGgQKS2vOM=;
        b=Wt3T8wSP0Aa+GAUE7jjD9fREDc6FLjc0e3wcK4+GDywb0hkZVC+OuvasA9z6n7OLc1
         KQziGi6Sv6vFVmY65Syy0++H9UBXNWT5yQokK3x9goTtGdvpKEjcAKN362Tn5Ip6vQVb
         E0mbCxD2UsfalByPe6PVQIkzUZ41Q6OF/xzePm2BzeAtdZIapoOuEefqjbjQaFRbIOSf
         fVobKZJWTios4qT5baTLP25oDydh2PPUq73TLdm4wfilOKvA0BDKf3yhYKQCJAQ0L8RJ
         0m/j2mGR7docWGf32VnNP+LO07YAewDop38GDz51QPcXkigz6ARS9Rbvt+twZ6jK2FaI
         Hmzw==
X-Gm-Message-State: AOAM5338UvC0LecEZpfQgo4lT8vkirmZI2a52+83MXbC7q82lAmUUp6E
	zTmIN3Lb3fkgjUEpadP1dU0=
X-Google-Smtp-Source: ABdhPJzl7HwxvN6zEc92qcykxqnu7auq2WKCCpuyfBsfUcFoQo61kFOolX/QfYSpWJIYSZ4zbeEMZw==
X-Received: by 2002:a05:600c:34c7:b0:392:8d86:b148 with SMTP id d7-20020a05600c34c700b003928d86b148mr43545734wmq.117.1651172022439;
        Thu, 28 Apr 2022 11:53:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1ace:b0:20c:3dff:8284 with SMTP id
 i14-20020a0560001ace00b0020c3dff8284ls1166629wry.1.gmail; Thu, 28 Apr 2022
 11:53:41 -0700 (PDT)
X-Received: by 2002:a5d:528b:0:b0:203:d928:834c with SMTP id c11-20020a5d528b000000b00203d928834cmr28799558wrv.500.1651172021145;
        Thu, 28 Apr 2022 11:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651172021; cv=none;
        d=google.com; s=arc-20160816;
        b=rl3SN4uQny1Y2h3eBnOwqjvAHMWHxaUL8foJd1daSDkbsCO52Qii9A+nIR1j+d8hiQ
         jmjUo/Cnlh/9n/HJjISkqMVvtfxTZ3jky/XBfISf0vC19O37Ze78wZiTcF4PRjff3tFO
         A729/R67jZgsrh/OhKVN4vxn6aioabbu/RGpPFvzIVc66ArjIGEON9+Gve9mkD34p1XI
         7pg4mo92MhP5ljo9jO1z8Dp0uUW69rDsdd5r5/nC2mq+kQviM2SJqL14zWUzhODEgQKg
         Nb8HhPqIVjStaIwnBOwDGxvuj18hyKESs+v67RnZHF//KPnySp3xDsRKIJMXPb6/c6pt
         6opg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NMrFp8p0zrYnbKITLvi2J+WdYltlTcLgSIB2A23dm+Y=;
        b=stwJicRIgbTesvz3NYDEUmU9FcUOr4j2PPxVup7Uj5J2GNiAtELEQCIQERMI532hkw
         YlhqTrxuFsd8S6Y9IITZ9R8M24gOTIjB1moo6q5SG3+Up6Mg7sGPo8XQPVfFU3C43c3o
         IslucXAN6guw7g9DoRAc3dJQYJNd+18AVIq9SgniZKAYm0hoccUquLfI/ANDymM5ZASO
         RXvePgOtN5RMST0ipYVV1AIvjPrDjJTElC36ygLqVRsBPPGJ4wMgZLwgnyDWDw/O93AS
         nF3ms5Q+HdvxfMQoRH0Sx/LzelnPDrXBuw/yowBdWhN4sEwdZjR47lVQJop8hZ8yiEMA
         lAZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mLBj1+92;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id p21-20020a05600c1d9500b00393e98f67a1si285625wms.1.2022.04.28.11.53.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 11:53:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id x33so10281334lfu.1
        for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 11:53:41 -0700 (PDT)
X-Received: by 2002:a05:6512:1288:b0:472:34e9:ee31 with SMTP id
 u8-20020a056512128800b0047234e9ee31mr4246009lfs.190.1651172020663; Thu, 28
 Apr 2022 11:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com> <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com>
In-Reply-To: <20220428065742.rl3w5rz2ni2fhngl@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Apr 2022 11:53:28 -0700
Message-ID: <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
To: Fangrui Song <maskray@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=mLBj1+92;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Wed, Apr 27, 2022 at 11:57 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2022-04-28, Ard Biesheuvel wrote:
> >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
> >>
> >> On 2022-04-27, Ard Biesheuvel wrote:
> >> >Fortunately, we can convince the compiler to handle this in a way that
> >> >is a bit more suitable for freestanding binaries such as the kernel, by
> >> >setting the 'hidden' visibility #pragma, which informs the compiler that
> >> >symbol preemption or CoW footprint are of no concern to us, and so
> >> >PC-relative references that are resolved at link time are perfectly
> >> >fine.
> >>
> >> Agree
> >>
> >
> >The only unfortunate thing is that -fvisibility=hidden does not give
> >us the behavior we want, and we are forced to use the #pragma instead.
>
> Right. For a very long time there had been no option controlling the
> access mode for undefined symbols (-fvisibility= is for defined
> symbols).
>
> I added -fdirect-access-external-data to Clang which supports
> many architectures (x86, aarch64, arm, riscv, ...).
> GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
>
> The use of `#pragma GCC visibility push(hidden)` looks good as a
> portable solution.

Portable, sure, which is fine for now.

But there's just something about injecting a header into ever TU via
-include in order to set a pragma and that there's such pragmas
effecting codegen that makes my skin crawl.

Perhaps we can come up with a formal feature request for toolchain
vendors for an actual command line flag?

Does the pragma have the same effect as
`-fdirect-access-external-data`/`-mdirect-extern-access`, or would
this feature request look like yet another distinct flag?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7%2BZODKQ%40mail.gmail.com.
