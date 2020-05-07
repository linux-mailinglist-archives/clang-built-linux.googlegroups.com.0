Return-Path: <clang-built-linux+bncBC25XUMBOQIPZKGQ6UCRUBDMTTNRW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 621951C8D2A
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 16:00:29 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id r14sf7001673ybk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 07:00:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588860028; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKw870ULUzGhbgQB5HCMD0CdRsJa04ad4yCS1HI8y0cdTFR9t2sFVt+EyIdrnGgq2R
         iJe2Tlo3bn48a5B0fBAzWn42ylL/ukSq09Ao6XYoF31n1kjVS67XJWiCvMIEdu+T+9t1
         vU/YfQJMMKJtoSKltXvJ0ZY427e+JJMtNJjjY+uk8AIx5L14btd4V3LyjBRWnqkFweAy
         9etH6j8Lqx/dooWaT8scrKqeR9s0gq/FTaNW69WeYrAOBi0cw7d2wvmWtOAghIyR3y+N
         LhGC00NqSC+FlnSWqQ4CTYlIpWka3TUigot/8HJ+X1LYJyNxNEaKod8hCrr/l8G1KpEX
         88oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2XDoUvS4BS0Tory5NJHLTCsN/G5M16AaN0O2qIjMVsc=;
        b=BuMq+/MHB6QMMrCuGZgrXcK8TsRoNpSjJM/vMOlJNXYTJGVkciNPX/IxLUfRiOlWv+
         Ghl8B71BdI88xUKafBfSicQp/YfO9Vf2NoZxE1TA40SgYDsDzECfwSnvHMQUHC329bgI
         dwb3pAD8EO583YSqN9d2Dce8XwD6J59a7lN8ahI/n3EQBPe6vWlQ1+v8SkmIU+WI64/u
         HsecdDsp0vRw33i8yYKa29M+oDsE4VikzljLVXixP146EWFGf2Yn4Eo8X1fxM1AjyHrU
         vOvYnw0+/B11NOyBFCr1i8B/b/HWFUh15plbnlWy4FymCFLFcBvBmYrE+QPaloytik2b
         Mt8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JC3IYpfp;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2XDoUvS4BS0Tory5NJHLTCsN/G5M16AaN0O2qIjMVsc=;
        b=ZeDz2+fCZPiepPJlkXwOi0vcTvW6bqKisP/S6Iba07rfPGTGM0FhZZ8e+mjkakd9CT
         iINh9ncwFypPeN3X9ZbUC0FQIEE6+RI0nhZ3o/gXq3zpjFZ/z64VdZltIjdEnvKfHAof
         ZjBbLr2WRocSRpH4IhO2ogVSFcCVR7yXVWNfjzucPcAPxyENagtl35qCSZ4hJlf7wufU
         HvbZmb1++NcApNeRS31xudqviM1o6uoYpPzE147s/Yxrbtlt2J3DMeZzfckvEBdNbCmn
         OgjEwrkwfMvdl/7DZZRd2M1HF9Je3KPmM9jGRG7I8KE0i2ChQ+WI7ZyCo4XJrrAClVYG
         XweQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2XDoUvS4BS0Tory5NJHLTCsN/G5M16AaN0O2qIjMVsc=;
        b=ZuTxcRPoFtjfiiK1QE2CVw7Eu2a/cilkrhV7JUzHQAUEUWrE1WfyBV3ADg3LOz3tk4
         JWzvIZydShjrr6BsivWVq7q+nnAON6SxhZfZwQu1PPe8FU3sty4T55J7KjToolZ7BjlL
         JBNXUhYhpGJmn+WxDbaVg41qzKEtu1Zh/MheJebuLyKBEvkYLwBzBnJKW6l/QdnTBhgn
         02aP0vLUOOCqmrD0viXuY51G0/hURpmiU9J9szWyasIgnnYdrj1u/GL8Z2dF3Elp0TxA
         pJ2IeBRerpNW0vatm/fU+xu7Q7qIjg9buv7L26waC9TmiHK4vjT7hJq8WrQui10IlgCx
         Bt4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2XDoUvS4BS0Tory5NJHLTCsN/G5M16AaN0O2qIjMVsc=;
        b=MwupfqYoop0QTRit7UpI3OM1+wcxEUW5l5O4gIUkwatrX/pNFJM9A0DAjB8bqGKzkF
         Dv8MDudlAd21UiMbKzXc7rOgvn/J+GsKyQsGfEZncH9VftLDHVdQutvpSombrfUn3m61
         I1V1V8brV4gN/akRjDlJzD9eukqmTF/1I2vFqR3USLlW8HKb4c29vSu+aYQbq5i9EUbL
         1ISAfHeJ5uLsw72zMbUU2roGpjQjy2+rIZAYYOPo6VAiXODlIBl1RokfvF/gWgpse4ZU
         6gNZFh84OzldyjM41qCbOzv2185IMqfdrR9JEdXVR7IDADHbcNJzTwu7zouAnvbr3LNT
         rQJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ0kJzpcJ9YIcqkkb3O4KPnBXzi2TRgrc83mw65EZSmD4yYPHoX
	v0Skyys/6TZqZjPjc60UZ3M=
X-Google-Smtp-Source: APiQypKPKL4K0iFqhm2dUnh2xHTiqpZ3n6W+CSsTWvXqyPVSAf+23pCb/E2t+kYTty/VaRmPZWe2fw==
X-Received: by 2002:a25:ba81:: with SMTP id s1mr22336616ybg.508.1588860028307;
        Thu, 07 May 2020 07:00:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e706:: with SMTP id e6ls1346705ybh.10.gmail; Thu, 07 May
 2020 07:00:27 -0700 (PDT)
X-Received: by 2002:a25:bb4e:: with SMTP id b14mr16735871ybk.293.1588860027730;
        Thu, 07 May 2020 07:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588860027; cv=none;
        d=google.com; s=arc-20160816;
        b=bJc/zuKIV+HrFxfquMWXx5SfTKuZuFYYii7NjwqQl0fTZ2KM1R9HTvlhBkEJ07Tj1u
         8Oc0MKINhbHXZuY130YAtD5UEPeLyodk9Uo8jTYw8WTNZlsCtFHHQymC5PE88y02JJKs
         VBNQeRrpmALhJ3ihCo9f3ZOrN4W0BxFgGUVY9RIipv6kBKjW+hqlK2gqrWJZIt9cszB1
         mTKbpMTmnZ3oZckaWqHaSk6uMLMBx0Ae/Hp99hP3pxFfrLtMuaNvptEd7TDL6EG6h8K+
         5p+C+2rDErrNMUyXVmlCJyNt/1AsfR9o+NsA2F4+7acTCw09OI340DLAb4JFTZvJLXUQ
         xxSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qCROg/3G32jM70VIbenT2kiJn/D6JsTc3S4qZv2ZxH8=;
        b=GRy+aJ11bBQyCZXQjuZnoL9GNY+ei8q+vqZ3zOIZzGvGmCmPm6Hx9x9OTqEVJqdobA
         Y9+EMpWQ6M3pfAQOiWix3vkNbrr5L9/Qno3ycCucTGw5cjivmEPYU6IHHBe4mr0BY59S
         e/sirFUhBZyz3+AsiLZzBZr+ZeteiR3P/r0Wq+bImlfkgjT95C1EpB9fUzPkoUtP2x7v
         2B9NcwSYp80m+aoiPasYmsg0+bVsf9P74uQiKjoh8BzPJ51qkQVVkYR3ntbaMKlSqk1w
         BAdqqnCd2zbLnIDAk2K73AudQWSaBIA2kcgiQLBzIaXe2JWLIICuA1H/LGwl2OUcejeN
         +hrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JC3IYpfp;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id m9si322647ybc.3.2020.05.07.07.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 07:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y26so1394371ioj.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 07:00:27 -0700 (PDT)
X-Received: by 2002:a05:6638:f0f:: with SMTP id h15mr14465368jas.142.1588860027498;
 Thu, 07 May 2020 07:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
In-Reply-To: <20200507113422.GA3762@hirez.programming.kicks-ass.net>
From: Brian Gerst <brgerst@gmail.com>
Date: Thu, 7 May 2020 10:00:16 -0400
Message-ID: <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Peter Zijlstra <peterz@infradead.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Daniel Axtens <dja@axtens.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JC3IYpfp;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 7, 2020 at 7:38 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, May 05, 2020 at 11:07:24AM -0700, hpa@zytor.com wrote:
> > On May 5, 2020 10:44:22 AM PDT, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > >@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> > >     if (__builtin_constant_p(nr)) {
> > >             asm volatile(LOCK_PREFIX "orb %1,%0"
> > >                     : CONST_MASK_ADDR(nr, addr)
> > >-                    : "iq" (CONST_MASK(nr) & 0xff)
> > >+                    : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> > >                     : "memory");
> > >     } else {
> > >             asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> > >@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> > >     if (__builtin_constant_p(nr)) {
> > >             asm volatile(LOCK_PREFIX "andb %1,%0"
> > >                     : CONST_MASK_ADDR(nr, addr)
> > >-                    : "iq" (CONST_MASK(nr) ^ 0xff));
> > >+                    : "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> > >     } else {
> > >             asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> > >                     : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> >
> > Drop & 0xff and change ^ 0xff to ~.
>
> But then we're back to sparse being unhappy, no? The thing with ~ is
> that it will set high bits which will be truncated, which makes sparse
> sad.

This change will make sparse happy and allow these cleanups:
#define CONST_MASK(nr)                 ((u8)1 << ((nr) & 7))

Tested with GCC 9.3.1.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g%40mail.gmail.com.
