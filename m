Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBY7CST7AKGQE5ZU7EYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA372C8BBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 18:52:35 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id h3sf7273168ljk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 09:52:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606758755; cv=pass;
        d=google.com; s=arc-20160816;
        b=dOgiMhqImpc/Uh9s3nazIjwk1ygn7eUNLfpd81DovboYE6e+U+W/EjF3BIbr7usbsz
         nE01jBQeZCuMJwjd/pkAhL0Qm1AyWURM6xa9NU1fdF0M3een1UZ6NlfSH0LYF7x54XDS
         FkmkZcNL0Izev7c6hf0GG9RUANNz3olOmU+7oHUxTrl3ntDuIwrVBKJIBQOh/iXWZ3cA
         gAtGKdZFyfWViCuwgJ0Yf/gprP2e4AUIQsGu/CJ4OQ4WibVEdWFG75oZD+K+nhw6x4yx
         TkTSK4ghjZD+eiegUmlhBSpCfswTXXYaJxIAci2iM5m/5MVkQ8hOWuSWP4OXl4WQJ4pw
         7Gjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=bZFU0XbIjkLCpumU9XqWz9gVaCy6wE9/qLfqGc9vlso=;
        b=UcxeLtEcWXIk/QaM5uF7In1J8odjTb2Hv7IwsL8zIqeJUhNlv4R/7Fcb3nZXvNoB5E
         BSVUvawLc0nximxdqqCW2NSA2HHvyRec+EJQTlZDSMPJ00+5gLvL1hlx4tc0YTLQ6euz
         DfPXQ+JRlZrMBEGfJbv2k4oDcT/4+4wsHkTakmdsdUGvy2y7XjswLYXSujMKPb0koywp
         +8Y6Bcyg4PMut/dsGGijoAf5yJ/FBGiZPyyw27zaOsKu8XhaY9pVXWP/dGnGQ6RjEsqS
         GQObKjnq+9xK/iX/9ZcdUh0yaNfIMxeyo9zeAOXQFm+PUcLhEKC0Zjtua9yH2f9UTEaS
         5maw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=tWINt5Tu;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DVPLUnJe;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZFU0XbIjkLCpumU9XqWz9gVaCy6wE9/qLfqGc9vlso=;
        b=fYESLFW1ND2Hlv65ExLD2S75lR+hdaDkBXxn1zju1B03ezKzy5CfivchFZEZh0tkba
         iMDTtXKzZ1MoxmYvL/xvrAXp7HQnmGiELMqh2jzvegqR8LtRILoi65YGqS5rn7faEVlF
         jQAXr/SzrtasC/JnNjqAA8hgTS7HaBHtASVFd/Zh5sCpQOkQocSH+/fNEIO5YWQ798MS
         YwWds7AzmEO1icGjJ4vz8g127Pfj3NtNl65T541YcxxKgpQD5F6LrLUn4PXQM4LzUHcW
         DjPyJLkUEM2qmrR1v8W5qtGMgdkDHFJZRz5S3DE66aBXbi+Ru5Q2v4w80+WWHYTvELLg
         w3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZFU0XbIjkLCpumU9XqWz9gVaCy6wE9/qLfqGc9vlso=;
        b=rdhIBnhcFzlgVflFcXhBkQZvxL8TOO/kNUQIXeLHgRdtCEDI8DnR5sdapJX5nUIaYi
         KSnRSvpoXiPkuJrW2OFbQhY1rneCyA7BmZrV7MxHoeAF/g4O1x8CogDuzrbaOxAhBUbK
         inkHuNwUqu8ab7lVhYHxvqVzeWlaU/iSskA1Y1vK1YcW86FT3ZBV7dLbwWl0pjrbha6Z
         RFOnWGdN+OQln3dGVaS59vL0RSBdz2SXegzbpZV1dvPe8gKXH9yyrcY8GrwZMQ9jLFxU
         Q2eNZeelyRWbE+dEbX+oDa4uPy2HV+TkY2OpN7h1gT+70BjpXZhG5Njr0nYdHBltJ87z
         8Dbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ITVrpm43J58MQ98zSThcBUj6U4OfdpTJJbDgjkbd+xZUlJ3kw
	E4w6MmphfhEl6oVinZw/4To=
X-Google-Smtp-Source: ABdhPJxjA/kqLDicqMY23HPhP76BefqBtl4sjvlWUD/WIT3YPRq2eWJagp1K0uIAKkuApypn1t3D6g==
X-Received: by 2002:a19:cd6:: with SMTP id 205mr9665339lfm.117.1606758755315;
        Mon, 30 Nov 2020 09:52:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58ed:: with SMTP id v13ls4230142lfo.2.gmail; Mon, 30 Nov
 2020 09:52:34 -0800 (PST)
X-Received: by 2002:a19:98d:: with SMTP id 135mr10227217lfj.357.1606758754192;
        Mon, 30 Nov 2020 09:52:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606758754; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9olWNywC66KE+H1H4NFdQYD8MMbgZSSoQh1bYPcZfqwzRcWsPDXUMnuDyzQdlixfi
         +pl92uH6020J15FpX9MZHCuK+gs1/Y9YmlQV9sai0gmzt+ZYGo0nIeGzOHKLTaXtQ3zx
         CwdE2GNbv4DUFomljb6z6zAwVDQ230R6plw8BFhQVxupOldrU9O+ESHvKKNRk7Jb2z1G
         wFtww22dCAuaKIuFnqDnp/RsKZC38xdLf1TNSB9EZBK7j6nM4NpuvKL/0sY0yhyDmBgs
         JEhNo6GHNYiWJT+XrKxUWF3tzYvU1w6kmhEU74rKrqFL7fDzl2WhI2mqldsoWNgTY7WB
         foKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=10FTgstS0mxQI30NpyhVnSaZJBf+QKf6w3/M3K6wKE0=;
        b=k9+9+sJz+J6uUqWyZQInqBA3irUsrJ+xUB3nsWO0pFFVZ1VsVLSnCLdQOCb1nYQvf5
         RH0EbOxLjt4FObnhhlGhaF6F7uLQHboUNThvL71Y74+sfr6fnPhDM4nZRWP6HHayzk7Q
         n2s46JUQhqiOpeXDsGtJWRLmVkiGOV5EEifpayyl1fQ/0e+G8cE8IDZrzsHenr/y5CZ0
         kvfewBJbKycQV8c9CYQjtjPWgk1SY43wAhPGTCJwwQDUEGGqLLq/kshG2YZXM2gji9vb
         550cjUWEdbYnvtbSOH0QoY7UkXjhxBjo28AfiPmZ+LQFDmAw5fDa48bBD5grSHf/5buo
         CTWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=tWINt5Tu;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DVPLUnJe;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com. [173.228.157.53])
        by gmr-mx.google.com with ESMTPS id o13si474782lfo.5.2020.11.30.09.52.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 09:52:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.53 as permitted sender) client-ip=173.228.157.53;
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 09CEF10B342;
	Mon, 30 Nov 2020 12:52:31 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 0221210B341;
	Mon, 30 Nov 2020 12:52:31 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id ECD6710B340;
	Mon, 30 Nov 2020 12:52:27 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 1A1B92DA09EC;
	Mon, 30 Nov 2020 12:52:26 -0500 (EST)
Date: Mon, 30 Nov 2020 12:52:25 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Ard Biesheuvel <ardb@kernel.org>
cc: Antony Yu <swpenim@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
    Russell King <linux@armlinux.org.uk>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
In-Reply-To: <CAMj1kXGuHw+p5=YPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA@mail.gmail.com>
Message-ID: <85p0oop-5pq-p6o-7560-297sn1np3os@syhkavp.arg>
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com> <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com> <89n4o5sp-4432-7r33-r9s-54po13q25pnp@syhkavp.arg>
 <CAMj1kXGuHw+p5=YPrVwaHjp5hQ9uxsp7hbA0Vk-ppZ3_qHDVrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: CFA3A43E-3334-11EB-831A-D609E328BF65-78420484!pb-smtp21.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=tWINt5Tu;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=DVPLUnJe;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 173.228.157.53 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Mon, 30 Nov 2020, Ard Biesheuvel wrote:

> On Mon, 30 Nov 2020 at 16:51, Nicolas Pitre <nico@fluxnic.net> wrote:
> 
> > Here's my version of the fix which should be correct. Warning: this
> > is completely untested, but should in theory produce the same code on
> > modern gcc.
> >
> > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > index 898e9c78a7..595e538f5b 100644
> > --- a/arch/arm/include/asm/div64.h
> > +++ b/arch/arm/include/asm/div64.h
> > @@ -21,29 +21,20 @@
> >   * assembly implementation with completely non standard calling convention
> >   * for arguments and results (beware).
> >   */
> > -
> > -#ifdef __ARMEB__
> > -#define __xh "r0"
> > -#define __xl "r1"
> > -#else
> > -#define __xl "r0"
> > -#define __xh "r1"
> > -#endif
> > -
> >  static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> >  {
> >         register unsigned int __base      asm("r4") = base;
> >         register unsigned long long __n   asm("r0") = *n;
> >         register unsigned long long __res asm("r2");
> > -       register unsigned int __rem       asm(__xh);
> > -       asm(    __asmeq("%0", __xh)
> > +       unsigned int __rem;
> > +       asm(    __asmeq("%0", "r0")
> >                 __asmeq("%1", "r2")
> > -               __asmeq("%2", "r0")
> > -               __asmeq("%3", "r4")
> > +               __asmeq("%2", "r4")
> >                 "bl     __do_div64"
> > -               : "=r" (__rem), "=r" (__res)
> > -               : "r" (__n), "r" (__base)
> > +               : "+r" (__n), "=r" (__res)
> > +               : "r" (__base)
> >                 : "ip", "lr", "cc");
> > +       __rem = __n >> 32;
> 
> This treats {r0, r1} as a {low, high} pair, regardless of endianness,
> and so it puts the value of r0 into r1. Doesn't that mean the shift
> should only be done on little endian?

Not quite. r0-r1 = low-high is for little endian. Then "__n >> 32" is 
actually translated into "mov r0, r1" to move it into __rem and returned 
through r0.

On big endial it is r0-r1 = high-low. Here "__n >> 32" picks r0 and 
moves it to __rem which is returned through r0 so no extra instruction 
needed.

Of course the function is inlined so r0 can be anything, or optimized 
away if__rem is not used.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/85p0oop-5pq-p6o-7560-297sn1np3os%40syhkavp.arg.
