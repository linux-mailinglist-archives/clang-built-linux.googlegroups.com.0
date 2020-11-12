Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3EVWL6QKGQEM722HDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E242AFBE1
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 02:07:57 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id k6sf2204046pls.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 17:07:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605143276; cv=pass;
        d=google.com; s=arc-20160816;
        b=HLRWhya1jTwaVeKAUFUSknK4VlseUEymmNVO4qJxrMkuBtOa9cWJYxLq3G0Ax8M6wg
         fkuBooAav7yyLk+MxkYXQjh35BYRndCsubYnZFodTvY54mEzn//5MWaAaadK8srBoDIC
         G5YXIQWm95UqoPaYoAIxftunw/Zx43HeHMvG5gsfudPHFZMOimZRsijaWXkmoBkP3Kub
         RbIFR5or48d1MDwdbLr/imzc6rvF6V0Dv2kufGpQpBHZEGHoKIcD9CjPjlXrza07qqK4
         7cuM3oSUbiDssPRnma7dzLDKo4dcwsTvnl83mKf8hUw8JCe2y0mUF9YiWSTXufAN5Ssv
         t5iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Lhu86bS2EATquev0ThBWNY0T2wq2gh1iT6Jf3Xsvbtg=;
        b=RFruVZS7hMJNbalCi0RxOXioXqA1ulBfvAUOiWd5ccRfRCgRmYQwjphFGEYkPtmJAr
         IqONauMubgYXwXwGFvvJtfbe49U+yyZkOJ09895PZgu8SzV+BdbhGNSs0M5benf2SJzl
         UvFOk7M38FzVTocesamhU1Y9gmZWL03G2Yr1vuat++zzwk5VTExacry37O0EgDg28UiT
         MVMQzXdeJsj/W+FwNqYN784LPVC18GT+ZRYKdMm/1EfcudzDFWqf802fgPgUtTv0ASJs
         TGreOqRVFiDNSuaLUswPX1INfcwHexo9cKZJgRhLNHwhpcJSw8WFkcWCL6a97OkuAd9N
         DvmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+wrGPWN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lhu86bS2EATquev0ThBWNY0T2wq2gh1iT6Jf3Xsvbtg=;
        b=EBTluk/VVLc9ZZun1yLRsmVZa0CgW/QLicMvBkOYsrQJHBJnRkynuA7OVmtL/JaEjF
         rSZYBB2m4/PzjwTMR6YMGQZAtdm18JtMomJV+Lb5iYv1C4e0DByrGV6EPBCyaMtivLJd
         1tkyegeI9v9vFQN+e1pKxLnu2RYpz/rb9vtQLXvIkPPFRQP5ZeqsZ5/BUoyIWSSIx3ZG
         bGMWqaG8gdo8vLqO14ngW+7pa4I+JHqPt14KJ9l9W6hM/S/GkOOi1nsN09KjCP8a9JfW
         tTePx+05cTCaIALTkN/vz9wOdtK2wtUaGWAcXpnrY2YqDzBHrnq8u5q7HQ6E540seB34
         p/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lhu86bS2EATquev0ThBWNY0T2wq2gh1iT6Jf3Xsvbtg=;
        b=aEDU4pqrF1NPp4CUGjaw0dYBJrtKjbn62/AxNe8X1vri4OLtM6eIj4UrtDBK2s2SUb
         9SFUtNxBE8tyreNVaDiYsqKoAuqxBsiGYHJcuKt8anKICbXPa45pC/gZPqJ77P4YNv/G
         AaGoh5PLcoVTnt8giVi2/MAiYcD0nN0E19Nu87fFXlGAUKD80WmO67nw8FeObPFxt4rH
         1fuKScWJeure85TlapCNOQejKGLPHR1+azqF4SJjvOR4YJ8Vp0oqs+InRgVxE5Ny/28R
         fjKtWhGb4bP7AVVyQQ2KlH3VNYZfFfvJU8/pxFKOPFFWjA7mobilyFEhgnoj6kUZqsed
         XNAQ==
X-Gm-Message-State: AOAM531aJfvVYY50LXHr5PFuy1xPq/LmTdk7oPQmn/NS/UxzSc0NfuuS
	wJbOZZ6p3YN9hhR3ruGlw/g=
X-Google-Smtp-Source: ABdhPJw4+cVCs8uhe58Sv18uRZKm7Geb+EHLguYxj2cloT4G6KQH9IwsV0jNNBSMIVqSqxWuc5IMWQ==
X-Received: by 2002:a63:34c1:: with SMTP id b184mr4196076pga.173.1605143276520;
        Wed, 11 Nov 2020 17:07:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls403121pfd.5.gmail; Wed, 11 Nov
 2020 17:07:56 -0800 (PST)
X-Received: by 2002:aa7:80c9:0:b029:164:4ca1:fff with SMTP id a9-20020aa780c90000b02901644ca10fffmr270275pfn.11.1605143275896;
        Wed, 11 Nov 2020 17:07:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605143275; cv=none;
        d=google.com; s=arc-20160816;
        b=f6otC/Kj7CZtxcsXtzI7VOjkG4HrcjJ9EkfnDCTWk0Y+fdjnZAXV8qkHMHAQJRR8Ne
         2jbg/bvcC1lR9cPYrWNunWaGph5tOZL88bP8ysjHPWAC9+lyyOpHrajFWw1Nm6zkfGoh
         2w3mpp4HrpiEbC2OWMRtNqM7JYrT3Qt0d4AH11QOzXM1gtpsPk5BFTshPwQfnqjojhpD
         cAC0Z5iF+4prvpu6yczgDbtruAOSVizRiSVLlFKjIhVn2whxvbVctgB13z7vt2P0Fwmz
         S44J5ToXD+cHuncfAdGBqRI49MCGbRIUUWf3OIG9gqQ4IVf3F529mMtXJDFHx2uDdive
         iYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9NZ0aQFtfOVaYs8Nc62sAlLU9M6tq2Y/pS+9Ya5s6B4=;
        b=GEF92MSY6Lu+QjTp39JheGVbHdeS79SlMJW5dAsF7CE+If4DAdYWsFOhofUURZvczf
         xK0wcem3J9/32VPLpGHTFyOtwQHYWS1tPpH8F9hPAOz2FyoxYDKC/ObObzBmXbBLeXdU
         FJDz/8rRqCP/FjNcx8xRoH+ix4GsjZlAr+wGErn+QN0GdU3gEO5Oe3//nOrn+gPml8GL
         4WHt+BF6xG+SOLThP8VebCkR99I/lUVmueNY1GE5iuOadtLcIy0+HJvg21q3GNkTjIoA
         OKNx3EvXTrWMGpgINDnt1HcWFml4D93y6XFr2JlUGUyq3b3U2zJKx9OvUHq33S/bQfZo
         Y3JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+wrGPWN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id ne10si679538pjb.0.2020.11.11.17.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 17:07:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id v12so2908161pfm.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 17:07:55 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr6595892pjh.32.1605143275383;
 Wed, 11 Nov 2020 17:07:55 -0800 (PST)
MIME-Version: 1.0
References: <20201112001422.340449-1-willmcvicker@google.com> <CAKwvOdkDG2wt=ZT93GT7r60_qXn=tdW_zWiJ1Gr5JVdRvcU8uw@mail.gmail.com>
In-Reply-To: <CAKwvOdkDG2wt=ZT93GT7r60_qXn=tdW_zWiJ1Gr5JVdRvcU8uw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 17:07:43 -0800
Message-ID: <CAKwvOdnaJrcg-3Z6vCcwoRfUCrETo6HaPrqdyhm+eCook6LXQA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Andrei Vagin <avagin@gmail.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k+wrGPWN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Wed, Nov 11, 2020 at 5:00 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Nov 11, 2020 at 4:14 PM Will McVicker <willmcvicker@google.com> wrote:
> >
> > Depending on your host nm version, the generated header
> > `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> > thumb vdso offset addresses (as observed when using llvm-nm). This
>
> Sorry, the commit message seems to imply a bug in llvm-nm, but I don't
> think that's the case.  If it is, please, send us a bugreport.
>
> $ aarch64-linux-gnu-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000968 T __kernel_rt_sigreturn_thumb
> 00000960 T __kernel_sigreturn_thumb
> 00000968 t VDSO_compat_rt_sigreturn_thumb
> 00000960 t VDSO_compat_sigreturn_thumb
> $ llvm-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000968 t VDSO_compat_rt_sigreturn_thumb
> 00000960 t VDSO_compat_sigreturn_thumb
> 00000968 T __kernel_rt_sigreturn_thumb
> 00000960 T __kernel_sigreturn_thumb
> $ /usr/bin/nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
> 00000969 T __kernel_rt_sigreturn_thumb
> 00000961 T __kernel_sigreturn_thumb
> 00000969 t VDSO_compat_rt_sigreturn_thumb
> 00000961 t VDSO_compat_sigreturn_thumb
> $ /usr/bin/nm --version
> GNU nm (GNU Binutils for Debian) 2.35.1

(Noting that my host's GNU binutils are configured to target x86):
$ /usr/bin/nm -h
...
elf64-x86-64 elf32-i386 elf32-iamcu elf32-x86-64 pei-i386 pei-x86-64
elf64-l1om elf64-k1om elf64-little elf64-big elf32-little elf32-big
pe-x86-64 pe-bigobj-x86-64 pe-i386 srec symbolsrec verilog tekhex
binary ihex plugin

So it would seem when binutils is configured for x86, then it will
mistakenly decode thumb instructions as being off by one.

(Note to no one in particular: verilog? really?)

>
> Would you mind amending the commit message to not imply that llvm-nm is broken?
>
> It might be of interest to find out why the host `nm` was invoked,
> rather than $(NM)/$(CROSS_COMPILE)nm.
>
> > results in an additional +1 for thumb vdso trampoline return values
> > since compat_setup_return() already includes `vdso_trampoline + thumb`.
> > As a result, I see a SIGBUS error when running the LTP test
> > syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> > vdso_offset in the VDSO_SYMBOL macro.
> >
> > Test: LTP test syscalls.rt_sigaction01
> > Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  arch/arm64/include/asm/vdso.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> > index f99dcb94b438..a7384379e8e1 100644
> > --- a/arch/arm64/include/asm/vdso.h
> > +++ b/arch/arm64/include/asm/vdso.h
> > @@ -23,7 +23,7 @@
> >
> >  #define VDSO_SYMBOL(base, name)                                                   \
> >  ({                                                                        \
> > -       (void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> > +       (void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
> >  })
> >
> >  #endif /* !__ASSEMBLY__ */
> > --
> > 2.29.2.299.gdc1121823c-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnaJrcg-3Z6vCcwoRfUCrETo6HaPrqdyhm%2BeCook6LXQA%40mail.gmail.com.
