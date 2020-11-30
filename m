Return-Path: <clang-built-linux+bncBD63HSEZTUIBBZOSST7AKGQEA2BMD4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 413F42C8AA3
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 18:18:30 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id q80sf4448038ooq.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 09:18:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606756709; cv=pass;
        d=google.com; s=arc-20160816;
        b=k38eFAQkrfqYur9Hyt9Vbl8nwcGBv80lBw0hfWai8VQPm3c7BMRO1WkSw57HGv5Abf
         WGF9umfsdZGPbp0P1/Gam/F8KFGAjub1aUqxoYpOdzRzg9+QTly83gViBXsFrjt+gXIb
         fjZjDO+F+vsrJvas6HrrH3/Y0DVoV8JDsSuy3JcDoQK/FTLq1Q8YLgeJkreA5MjKHpW4
         EGjWrLnm2jTvoIEM5NsRkBBLdyB+mfpyaqOjoRUIFIQPBA1+i6G1vzfoFMKUvqlnPrV0
         D969gO/9ikW6YfQtayfgl4EC5LmWUWzflaSDznplwalnyrADBZwWZBE9reqragN4GJma
         KkbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lpaxdYWxv+u6otTedpWd2Rxw++A2qqWcG8CXuHLnBnc=;
        b=htE/qtuvrW30ttd5eKy2R0EGaUuBJdkLOFRnaFm9ZJC/FK22ZqIf1JEnAc1F7H0Ss8
         O6vK946dMpk0NeBWgrOteb8Z9l7OyweeGbduNltyC3/xIZLWgj8v4Htdk0vyeeMDD84K
         Fxpywjob26nYX/sGOb91w27Ap2Eu4OlibumuV9y9BO4YfSDtChb/wLvugR8l5w1za3jL
         gWflr8/vNtfSbs5+uzVo0HD3bhtLsBl79Ku2HlCq5hQ9kNfZtFP51ZEb1NA60pSQjhRe
         EZ7PD7YZjdwYJH0yhkxjQrhtV7BMqn33yvkAN7xc6uKksc6sXK7NeEgYb13nb5f8/ugf
         dQDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mriswbwe;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lpaxdYWxv+u6otTedpWd2Rxw++A2qqWcG8CXuHLnBnc=;
        b=qCMulHVf1Oj1SW+dp5ks6Q3paYawE5GaBqJjlsYExOPv/wCLeEmKppe1LwIfQVQO+u
         sxVOBKz+YX52wZeypQf0j1u+O1z97nokWEQVCe82v/QtBdGfJmSoGFtdJL6wXihQBye7
         IMTtduqH72FhI0VzbXZ1tt8HN9cYPibds4XE7/ysN6OV/wG7m71G3NOxzTxK/p6jcxU/
         QNMccphXT785CG6G5+u1J1TIWeX7GfuqJRFqvy898EZC6qIJhBmFPewg4tHqM3McdEoR
         4bKSDEIQ5Eq7FtpIxkXxEZzYDeOhf/DDtmp6yW7VbP8Pz00Rc+p6w8XAOYWE9M7N0j5I
         seyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lpaxdYWxv+u6otTedpWd2Rxw++A2qqWcG8CXuHLnBnc=;
        b=VgoAXccGFqiorhAgAs28CRywNteuGjn9d+Vr8ARgftAVAtaQz+Ylpx5dAK8HyL/jQF
         Sz0c0xdgbAtUJ3cR5K0OIz1Yfxby8lTH4pr5mcqT+mfrRgif5QJUwTu9DlpZWsiqnUVC
         aqjovDSSIFFXbPKxvxCRm0INCnWOQgwHZf65GP1dyYYS/AeOMqR7RaRUjx8Dfav/Vse1
         BzCAsmz7RGdkihWBWQfZpSSQk/N0fYDO92c+MH6kXvEpLXPMZ43YPO9vRdrub04jBzdK
         zCfI0+BXYrAGdenodd89fzihbwtqDFjrj0yeHXa4w4E1zBnJ9Aa1iYGx5PhfbFcwtJTB
         7moQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338xhDU9fmuZPS7XjPAQgvcOj/dDGBxjcXi+ZdzaVWgPRl5LKlB
	0WlI0gN10gr2oQbzUVsPK84=
X-Google-Smtp-Source: ABdhPJxKvPceL+9Ah36Y/hx4d4iyDQFw5g8KxDp3NPFmdpJBaUtkY4CtX/i9NpXTpqSmYaXL2aM+vw==
X-Received: by 2002:a9d:6752:: with SMTP id w18mr13365834otm.256.1606756709210;
        Mon, 30 Nov 2020 09:18:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:648d:: with SMTP id g13ls2424609otl.0.gmail; Mon, 30 Nov
 2020 09:18:28 -0800 (PST)
X-Received: by 2002:a9d:7cc1:: with SMTP id r1mr17747444otn.37.1606756708772;
        Mon, 30 Nov 2020 09:18:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606756708; cv=none;
        d=google.com; s=arc-20160816;
        b=q61TMKY+KWWYQQEV4OicI/Gpo2Ip3pgow0i6gj4oaPtuRxiXEIjBiV3LFxyLZaPjbI
         +OOzRFzJAx+FAJuoih/EfIjZoB08R1FjWPQjqDeXx3TbCdztEbEIYG7R+9DZkHJMzHnY
         /pWzUPO5s+b2ojNtYR4TG/RjAVHdo8PWPdMDFmyOWfbR7Fb10NIInoeyL9NTfEg2NqDy
         WZ6iFejI9BOauciJuvGixTD2MZIvqB2tE1Vbu6nu1n3i+6ltTOCLixU3v0GX0c3zoIQu
         gIdfqAk34+TCiSxZoHAPVHOGO5XaRj2cKH6jpQYkOvyV7sEJSjrGUG5AwlhgG/oCBAHO
         fpUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dilebm5yi5PIJeHIOMLRA358LqjOT9EiK3N+YYjyXwE=;
        b=MXbPTWZmLmCbFXIf8z80rqh2OKZi58XwNNDoPfl86FH49u6c3zhd0uCfmNWBE/al3n
         Gukje6Q1Qg4fbtrVg4LLYWjFdFotZddzpqt3tBDnAhFHi5RSi1vRTjNdL6z+cswOmJJi
         prt3lQ8FHGNmr8oFlvNHNF/c7IZuiK0FqTakOpRQs4yRtH+9iexlCzJ8ZmmcmOen+0HQ
         dOE/WNwz6JXO6UTl6YN9yITe2qvIUHCQEe3OX5GmYDXQZHQFvVPLzv3fUWGXGSF2L4m9
         ubQcfMrgwcAPi3GrDfUBQ5vi/D+uRl2t/lGqHKsAHDyIcnLcAirlwNkPN04w91FWbhGW
         bZVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mriswbwe;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si1147825oto.5.2020.11.30.09.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 09:18:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C24F920789
	for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 17:18:27 +0000 (UTC)
Received: by mail-oo1-f43.google.com with SMTP id l10so2848242ooh.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 09:18:27 -0800 (PST)
X-Received: by 2002:a4a:45c3:: with SMTP id y186mr16208144ooa.13.1606756707013;
 Mon, 30 Nov 2020 09:18:27 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com> <89n4o5sp-4432-7r33-r9s-54po13q25pnp@syhkavp.arg>
In-Reply-To: <89n4o5sp-4432-7r33-r9s-54po13q25pnp@syhkavp.arg>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Nov 2020 18:18:15 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGuHw+p5=YPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA@mail.gmail.com>
Message-ID: <CAMj1kXGuHw+p5=YPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Antony Yu <swpenim@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Mriswbwe;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, 30 Nov 2020 at 16:51, Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Mon, 30 Nov 2020, Ard Biesheuvel wrote:
>
> > (+ Nico)
> >
> > On Mon, 30 Nov 2020 at 11:11, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
> > > >
> > > > __do_div64 clobbers the input register r0 in little endian system.
> > > > According to the inline assembly document, if an input operand is
> > > > modified, it should be tied to a output operand. This patch can
> > > > prevent compilers from reusing r0 register after asm statements.
> > > >
> > > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > > ---
> > > >  arch/arm/include/asm/div64.h | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > > > index 898e9c78a7e7..809efc51e90f 100644
> > > > --- a/arch/arm/include/asm/div64.h
> > > > +++ b/arch/arm/include/asm/div64.h
> > > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> > > >         asm(    __asmeq("%0", __xh)
> > > >                 __asmeq("%1", "r2")
> > > >                 __asmeq("%2", "r0")
> > > > -               __asmeq("%3", "r4")
> > > > +               __asmeq("%3", "r0")
> > > > +               __asmeq("%4", "r4")
> > > >                 "bl     __do_div64"
> > > > -               : "=r" (__rem), "=r" (__res)
> > > > +               : "=r" (__rem), "=r" (__res), "=r" (__n)
> > > >                 : "r" (__n), "r" (__base)
> > > >                 : "ip", "lr", "cc");
> > > >         *n = __res;
> > > > --
> > > > 2.23.0
> > > >
> > >
> > > Agree that using r0 as an input operand only is incorrect, and not
> > > only on Clang. The compiler might assume that r0 will retain its value
> > > across the asm() block, which is obviously not the case.
>
> You're right.
>
> This was done like that most likely to work around some stupid code
> generation with "__n >> 32" while using gcc from about 20 years ago. IOW
> I don't exactly remember why I did it like that, but it is certainly
> flawed.
>
> Here's my version of the fix which should be correct. Warning: this
> is completely untested, but should in theory produce the same code on
> modern gcc.
>
> diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> index 898e9c78a7..595e538f5b 100644
> --- a/arch/arm/include/asm/div64.h
> +++ b/arch/arm/include/asm/div64.h
> @@ -21,29 +21,20 @@
>   * assembly implementation with completely non standard calling convention
>   * for arguments and results (beware).
>   */
> -
> -#ifdef __ARMEB__
> -#define __xh "r0"
> -#define __xl "r1"
> -#else
> -#define __xl "r0"
> -#define __xh "r1"
> -#endif
> -
>  static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
>  {
>         register unsigned int __base      asm("r4") = base;
>         register unsigned long long __n   asm("r0") = *n;
>         register unsigned long long __res asm("r2");
> -       register unsigned int __rem       asm(__xh);
> -       asm(    __asmeq("%0", __xh)
> +       unsigned int __rem;
> +       asm(    __asmeq("%0", "r0")
>                 __asmeq("%1", "r2")
> -               __asmeq("%2", "r0")
> -               __asmeq("%3", "r4")
> +               __asmeq("%2", "r4")
>                 "bl     __do_div64"
> -               : "=r" (__rem), "=r" (__res)
> -               : "r" (__n), "r" (__base)
> +               : "+r" (__n), "=r" (__res)
> +               : "r" (__base)
>                 : "ip", "lr", "cc");
> +       __rem = __n >> 32;

This treats {r0, r1} as a {low, high} pair, regardless of endianness,
and so it puts the value of r0 into r1. Doesn't that mean the shift
should only be done on little endian?


>         *n = __res;
>         return __rem;
>  }
>
> I'll submit it if someone confirms it works.
>
>
> Nicolas
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGuHw%2Bp5%3DYPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA%40mail.gmail.com.
