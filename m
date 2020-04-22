Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRFGQL2QKGQEHBO6GTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id BD93F1B4CEC
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 20:56:05 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id o18sf3414346qvu.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 11:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587581764; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQj+AQ6oIOxvowu7xTBJyX82qxO7UTlQ6c3z06ll7TivJ15wVW7M43ynzvMK2WvwQe
         lUiFyhJM6Md+FZGTQyKa9G83mWlbc/Lg6xRZXKAytyDr9WTc/x+mny2PNk2lqZdihn6j
         /Ct+HK3SP+m+X/f3Zk5IH98TCFD8d3nqvdGsb220J/LiSwELLtBTjWfTx9/8wx4leRaM
         lQxYn2OXB9p90O1sURq1/PDr9qUOYvFKId6IZpzUy8HcCuKKDEp1YEJjcENtbItjud1q
         8RYwgTpX3gUz6aRGdvRlImOgd2nwnpj4Rp6CeGqq7jfNVvQEeswAgfEkS46npnZ/JHNG
         v9dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V7/WBW/nf9u6SNupn2cCHe65n9feU5I2SSsMm3e1bnE=;
        b=wvwxYR5aun6PrAz+pfd+TON8CYEzi39kYD2b/kAj5rz5ZDMlrjRc/mega4IDJvnBka
         W6iPfTJkjDThT6GZp9hC/dEzpY6gKY7wO1ivisZZFaUtcGi7Q1vIGpqraF3C350WC0vx
         KtUdwmHdKtmFLIA0yJh3W2+0ijGKhZ1pp58W/Ofe/yh2YghltzKg8bHduIpfgF0xUR6d
         0Ts7PxA5i6AKSRHaXSiT2HTBiZfwGZqmz7xArGFliqnxxf20G9l1Mu/j7fhfQyC4vVEg
         K20Vwx4FSf+1ZGv04GzLAgGar3OSQA4eD+KmFEM39Hkce6EVDFe4khTJfpZNBx0aCwQ+
         4Kyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TeTZHVtr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7/WBW/nf9u6SNupn2cCHe65n9feU5I2SSsMm3e1bnE=;
        b=S9vc/7M24E/avBl+4UqMTep3ujo3jgNUtEuEp1MNEVFPV8jp33cT2/UTtPeZZ2o+5d
         r9h4QD7q17nA+YymuwCNQD+XHMUZy7VDGR2x8bK6Af+u+YduQM8kOa6SEB2i6xmdTo9v
         g7vqxfwzKjfUF/hPaMdVYBWLY2cyo7p6f0Vp761kdHMANboB1QXihyLRiSUNy1TbGeN0
         GRkU/F22rspNPXqIhMicoalTnaZrmKXifaeU8kNOTNw0Tvf3MMTrQrnMhDagKVdAPD9w
         Fvsmx9ei+DOjAgmkYR0F0xtwpZzcIYMpfvLpiPNNA9oejuBT5tDTBGPVE+qm54BPK2BL
         jhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7/WBW/nf9u6SNupn2cCHe65n9feU5I2SSsMm3e1bnE=;
        b=nPXoP+X33pQHvWc/VMpjV6EZk3HOhvn7fVgnbcLT05/8BC98OokmBeuwzg0GH3FlWU
         wp6YCDz+iZ1TR2X50Ne3ADVAeDSACWWtgME3viWryd2eLyu+UC8jwLMX+foGLitw9msC
         R9UTKxFmqIu10FlOiaBZ6m4clrhv0RIhSE0aiH/pkre7je6ZtMmrzV2IxM5PVy86tU9A
         yaIMpWR/6YEZ0ZkYOEQ8sgABcdCit3vdOTcnNgL1bl+htLTIHkA4X7GSAAcAQeN9qokJ
         hzjYKUK8pKrU7hpna5ShT5EGmf65tqiHgI77JQfHZr3KVWn+O/lLhfm8H7E70Tbsaz1Y
         oDBQ==
X-Gm-Message-State: AGi0PuZaRvacSQQy4TjjlklLUwhW/w+NBhhSuizN9swcG2YhH9u7jVwX
	V4K5ao86fm3QaoTszRUIPiU=
X-Google-Smtp-Source: APiQypIvOObNji1SpqvL8HX5q9D2G7VKbjEJJXh94O/tY307kl5w8jfWtcwZonAVvTJdTIAb4+C7Ew==
X-Received: by 2002:a0c:e204:: with SMTP id q4mr426085qvl.16.1587581764837;
        Wed, 22 Apr 2020 11:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2208:: with SMTP id o8ls1673432qto.10.gmail; Wed, 22 Apr
 2020 11:56:04 -0700 (PDT)
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr21044qtt.165.1587581764466;
        Wed, 22 Apr 2020 11:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587581764; cv=none;
        d=google.com; s=arc-20160816;
        b=0EvHXxL4H7xr8nzUGWlNAZXob4Lx6FTk2rpuWWhonAqqaKQbhAZihCAwfx/QZK7kMB
         iO97yDQ5OhTx9ojYXbB4j3Rx0AovAhPJaZel3Z6x74gnlMAGXQladTCEuhfUSu4z3WfX
         U4roQmSIjzQlx95vz/0+UwxPler5kh5aNHrLZY4Ard8Gh2UDLeZ9KltTkpidTPRml3Mu
         noNz7fcXG3Y938O7KPllYGShPfDSA7r+lxqmx0L/xIEy7aiFRJOhfMQUOKCYv2HePNbM
         DUXI3nHZ5c0gFvmtzMeZqVTe6tU6Q17kc3GMggTc92iGDtA50W5ycZreZbiKVOkc8qOJ
         z6ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3sa/gVNaip+9XRbdoEuhfmV9mpmTLztLhq1CX0xqZKM=;
        b=UsD8sfYnpgPP0YdeftOMDcMkcPwbkmIoiO6Y3/E8tPg2HHId4gNMzbfhkjyRn8QEsu
         w5CM4novdiABkK4BTVpewHa/WqCremOgKo65qHPna4DgtTnpgGcU8qG2eRIMSTwqAgeJ
         Hc38V3LV02EbK9kUBWiWzHI0BZg7XaGkiFLdDU6yW4YwKCIq/OhP9ftb07SJ+O07mVfM
         Z4w/LmdlMXyl5DCDcdbr9Gx0Xs4IpRqPQgp/q/TAxEhsDmBHpF/rAH0xctjDrK7L206v
         phsbj1/6bcyqVlOaanGICZEx/oah3Ulc5EH7Epk0Gc1F1VXMngQYvH2NKrNYEttzt8Hh
         wZBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TeTZHVtr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id j11si9230qkl.6.2020.04.22.11.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 11:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h12so725860pjz.1
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 11:56:04 -0700 (PDT)
X-Received: by 2002:a17:902:b20e:: with SMTP id t14mr69738plr.223.1587581763189;
 Wed, 22 Apr 2020 11:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200417075739.GA7322@zn.tnic> <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic> <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak> <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic>
In-Reply-To: <20200422102309.GA26846@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Apr 2020 11:55:50 -0700
Message-ID: <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Borislav Petkov <bp@alien8.de>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>, 
	Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TeTZHVtr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, Apr 22, 2020 at 3:23 AM Borislav Petkov <bp@alien8.de> wrote:
>
> Ok,
>
> let's try the simple and clean fix first. Nick, would that work on LLVM
> too?
>
> And I hope this will remain working and the compiler won't jump over an
> inline asm and go nuts.
>
> Thx.
>
> ---
> diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
> index 3b9bf8c7e29d..06d2e16bedbb 100644
> --- a/arch/x86/kernel/smpboot.c
> +++ b/arch/x86/kernel/smpboot.c
> @@ -266,6 +266,13 @@ static void notrace start_secondary(void *unused)
>
>         wmb();
>         cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
> +
> +       /*
> +        * Prevent tail call to cpu_startup_entry() because the stack protector
> +        * guard has been changed in the middle of this function and must not be
> +        * checked before tail calling another function.

Can you add by whom?  It's not clear to me which function call in
start_secondary modifies the stack protector guard.

Another question.  Do we not want a stack protector at all in this
function?  I'm not super familiar with how they work; do we not want
them at all, or simply not to check the guard?

But if we're not going to check it, I think
__attribute__((no_stack_protector)) applied to start_secondary might
be a more precise fix.  Though the empty asm statement may be the most
portable at this time, and with a well specified comment, I can live
with it.

> +        */
> +        asm ("");
>  }
>
>  /**
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DDza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg%40mail.gmail.com.
