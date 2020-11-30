Return-Path: <clang-built-linux+bncBD63HSEZTUIBBH7KST7AKGQENDD2QQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB9F2C8C2B
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:08:32 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id g19sf7130116oib.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:08:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606759711; cv=pass;
        d=google.com; s=arc-20160816;
        b=upqmCoySxEv6TvzftAKBm5ouZuaC3RjVDWhbHIl9hestIbfog9hExHYjrqNWsCYokO
         CtkdHoUl7Va7EaVaJLeHisTQx0WfDb41uxBYFtNGWHzoeqI+MNUHMaN0DaMxYfJ+UtCW
         f50tpWuqUb50giYifeHFeaQJTZPhZtA1IreLsDW02mIAR1s2SGyqiOBfBHzFpZtpE3kR
         G11/mw+89Boo2ZDvzWd9lzqysB05L4d9fKiWl3AOdyqJwXhSNGsY38B0gabE4okNR+/K
         k3ezNa9nLDEwII4O7orOS2oNL1eSC2mtN2/I0g2yIanF7LPVQ38hSTYSTFexzMkLYBBy
         GFOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8uZLNMZ0QSd00wLzmtT7OI+hA/Q20f1w/9xqZ6Y3QRM=;
        b=nZELKOzi70jEsF+M80T720fTSxYbPtK+zArC3XCRwaMsXsMFq0KyW1o2tuFNyfQCpd
         56Wp/LLLEq/9Lfb1p/hQQ2xCjFTJX9L+fLX81UHyMjXBuE5Qx4/Cr+BpPn7E9+iNVAwr
         uC3DM4Dl4L6gFrjRYxUlp+AxYQA6+oSVgWZQyS7XDyFaUVIiQlM87KSHeVFyBue25otO
         2kFu3HyZx+8QmOt2N12f27PiCOD3ZT1p1Tj3skTmzWljJK8bUNiSRyE1LLtWrr2rO2un
         9g0eJWg6heR1a3mhuRLnHg4V/D4GEJkruyyAxluVpVxAi6proqtttGIffCjv7q9n6PBs
         R5gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qd583t3m;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8uZLNMZ0QSd00wLzmtT7OI+hA/Q20f1w/9xqZ6Y3QRM=;
        b=A74yyEGkMyYAWbWxErafl1j48ZFK4JaqMzh8Kv4mRGFWi7+Hof4GC2XZtZXMDBentv
         4Zy97kCbiWaQNh76RKBgY8+0SHx6dbO84I8tJ74NvEvnBXMrNsyXCHRHVGyxjww+8Kgh
         VLABweM6Bxs3st+UHlo1n+3LmqSrIH/8rSwUaQjUoRDDraTSugp01zqXY8NzbayaVmNe
         GXBhsA9Jxxwfh9UZthePiHh7bSRaiwU254uppu7rO5pIA1a/59+hKubqUI5gWCtTQOU9
         jJCSPBir6wjdDxdd9n26fb4vrigHIRkDVg6buig2nLPwn1pZ/3DEwZh8Um2jRepO1GQ0
         lQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8uZLNMZ0QSd00wLzmtT7OI+hA/Q20f1w/9xqZ6Y3QRM=;
        b=CI7D9hG46te9U4En75iZoyu6ppUZzoY5UtXIMQy/0VEUD8A4RlAsNF/Sv8LgJ94qoy
         g9LAVI9Vyjp1TqOBjb+71T0ylhj5T+aL8rJsV5YwZbiMThOb5gxj40ZwDyPKRrxuApHJ
         eGl5JDIzb3SFvX6fseB2j6phdP40tsBVByDODQCz5jLSDHXwuhuJT0kD1UMvbCZTnbcD
         sDYEq9URQ4/IFDWlhrxuhjIpyyhxXai/xnmr2CsVtxnyi3ivh7x/6JQy8YQalptUJhco
         /WcEAPBBLSoaxdK2IGVSK8uL+jCtAwG0UL1Puq5Fhw16NsBc50xJb7SvvP0weVXUllH2
         awoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sLR4d6fOt9CzaFTHNoJS5OI1xD5Dtbs2SLumTcfzNG7D5BJcF
	WM9OYq5GCSNNfttovPK/RDM=
X-Google-Smtp-Source: ABdhPJy1iK7MpiYWsyTZ69FzQuVt8nwHvHJAPjfQIpQ0ATdInzYPHZxXSl3m2hgqG8pkKAxLVWnKBA==
X-Received: by 2002:a4a:9711:: with SMTP id u17mr16357748ooi.57.1606759711630;
        Mon, 30 Nov 2020 10:08:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e5d8:: with SMTP id r24ls775249oov.11.gmail; Mon, 30 Nov
 2020 10:08:31 -0800 (PST)
X-Received: by 2002:a4a:8158:: with SMTP id p24mr16328715oog.75.1606759711200;
        Mon, 30 Nov 2020 10:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606759711; cv=none;
        d=google.com; s=arc-20160816;
        b=PgEgW7MydgyWEIcpPhB6nKcshQoKe3rLzqi1Tl1CTftT76Nldn+5zbCaNEdlUmZJ9+
         wIOpMJO5glmM/tL+GpE/wp3vgPHoJJCq4bVwwIBJbxNwneZOmNMTQ4BtREoifjJ4MF9g
         kc4Wygj4RC/0rxbGpvaZ9GzaWaEfv4GpHK9mJWi81Y5pt/D2ngFwzg1rYC+9TOu/nncp
         8OhE6ROP8t+pgf/4nBGtmgmwq2CKgHIcYQFLS9hdBE4/pwA4gLp2yDBUZ+QcvVHqQKZ7
         33Rcn8JjrygxhJO0HyIPrxvAI35H/ddPAQrxJR4Uabqlac5kgFRQqIMJx7X3CKskpJ1z
         Et0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lQthpxR6aOUvdrJTW7YGr1RQFGmPRuGoyPUYjvX1emE=;
        b=HqTOidsjnCAooOWtFgw4EzXDquitIzUidkAvmoRCs2GC6KpWiHbjLokqNf1ieEs7DG
         VE1qqLA54KtRm/+sqgAfMt5/why+8N2dChQNuSd40pEUCRIuSAKT9L+nJJrjMBYuiFNg
         WXA24D2wdNHV4buhmPjzknPju2hk2FNPHAkty/uE+JEPYvgAgdU1fCndTU8xC3CN9mBR
         VsjPall16oWjkvknh6RAC/RyKVrq0xi7QkMnw0sWQQdieN5gr27Dt+AklAdlVaHKj11j
         Bdgl6jzFEcCvhQuC5Oht3rT8tTK2VqTMjiy5CqD+MxhaDSmWsDcAv/OT8yxTS94P04cy
         tPFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qd583t3m;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si1238838otn.1.2020.11.30.10.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 169352074A
	for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 18:08:30 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id l206so15110535oif.12
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:08:30 -0800 (PST)
X-Received: by 2002:aca:5ec2:: with SMTP id s185mr30062oib.33.1606759709386;
 Mon, 30 Nov 2020 10:08:29 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
 <89n4o5sp-4432-7r33-r9s-54po13q25pnp@syhkavp.arg> <CAMj1kXGuHw+p5=YPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA@mail.gmail.com>
 <85p0oop-5pq-p6o-7560-297sn1np3os@syhkavp.arg>
In-Reply-To: <85p0oop-5pq-p6o-7560-297sn1np3os@syhkavp.arg>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Nov 2020 19:08:18 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFyi9uc1bNuHrmBBqgW34tUU_mxV0BqVbrihsG_HMzMCA@mail.gmail.com>
Message-ID: <CAMj1kXFyi9uc1bNuHrmBBqgW34tUU_mxV0BqVbrihsG_HMzMCA@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=qd583t3m;       spf=pass
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

On Mon, 30 Nov 2020 at 18:52, Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Mon, 30 Nov 2020, Ard Biesheuvel wrote:
>
> > On Mon, 30 Nov 2020 at 16:51, Nicolas Pitre <nico@fluxnic.net> wrote:
> >
> > > Here's my version of the fix which should be correct. Warning: this
> > > is completely untested, but should in theory produce the same code on
> > > modern gcc.
> > >
> > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > > index 898e9c78a7..595e538f5b 100644
> > > --- a/arch/arm/include/asm/div64.h
> > > +++ b/arch/arm/include/asm/div64.h
> > > @@ -21,29 +21,20 @@
> > >   * assembly implementation with completely non standard calling convention
> > >   * for arguments and results (beware).
> > >   */
> > > -
> > > -#ifdef __ARMEB__
> > > -#define __xh "r0"
> > > -#define __xl "r1"
> > > -#else
> > > -#define __xl "r0"
> > > -#define __xh "r1"
> > > -#endif
> > > -
> > >  static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> > >  {
> > >         register unsigned int __base      asm("r4") = base;
> > >         register unsigned long long __n   asm("r0") = *n;
> > >         register unsigned long long __res asm("r2");
> > > -       register unsigned int __rem       asm(__xh);
> > > -       asm(    __asmeq("%0", __xh)
> > > +       unsigned int __rem;
> > > +       asm(    __asmeq("%0", "r0")
> > >                 __asmeq("%1", "r2")
> > > -               __asmeq("%2", "r0")
> > > -               __asmeq("%3", "r4")
> > > +               __asmeq("%2", "r4")
> > >                 "bl     __do_div64"
> > > -               : "=r" (__rem), "=r" (__res)
> > > -               : "r" (__n), "r" (__base)
> > > +               : "+r" (__n), "=r" (__res)
> > > +               : "r" (__base)
> > >                 : "ip", "lr", "cc");
> > > +       __rem = __n >> 32;
> >
> > This treats {r0, r1} as a {low, high} pair, regardless of endianness,
> > and so it puts the value of r0 into r1. Doesn't that mean the shift
> > should only be done on little endian?
>
> Not quite. r0-r1 = low-high is for little endian. Then "__n >> 32" is
> actually translated into "mov r0, r1" to move it into __rem and returned
> through r0.
>
> On big endial it is r0-r1 = high-low.  Here "__n >> 32" picks r0 and
> moves it to __rem which is returned through r0 so no extra instruction
> needed.
>
> Of course the function is inlined so r0 can be anything, or optimized
> away if__rem is not used.
>

OK, you're right. I got myself confused there, but a quick test with
GCC confirms your explanation:

$ arm-linux-gnueabihf-gcc -mbig-endian -O2 -S -o - \
   -xc - <<<"long f(long long l) { return l >> 32; }"

just produces

bx lr

whereas removing the -mbig-endian gives

mov r0, r1
bx lr


I tested the change and it builds and runs fine (although I am not
sure how much coverage this code gets on an ordinary boot):

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFyi9uc1bNuHrmBBqgW34tUU_mxV0BqVbrihsG_HMzMCA%40mail.gmail.com.
