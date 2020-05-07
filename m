Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXXEZ72QKGQEGEFW24A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id E707E1C8860
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 13:34:57 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id v17sf2278180uao.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 04:34:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588851296; cv=pass;
        d=google.com; s=arc-20160816;
        b=ME2JNaUMCwQWFN4lCUG9pqerb4TYsoze6xP3eoUlnqD/QcjlhuxUN0Pwf/0jNJKh2Z
         yhaj6CWvcVF4UP7xcYM3VsKXCeTAEGI/HkY1RiUx4yknwqhUMAw/yLg4xzTomaDis2EO
         Z2BpOzC70yyx6klrupe1BgdBkAANMCOsgLktT/i4LRDOVN5eft7te4EO9BoEXVsyxMuE
         Q3FY7ivr3GRfNMLRpS8ixz6w4CGPlPPlYPz7hn7VKrm+oQGlxEFEM2ezqMZvxS7njsHK
         CGqZC/0ejBATjWgDw0DzwU24zow2nN1wN2EiHZIfVwyJblQqGHRUWYvU2F39tf/fsyMx
         lKPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B5cOUxRkps61HX4sdisqqOeTQdY0XuqnrxZ/eS85CT8=;
        b=z3rYTnXAEV5jzYUlY/ZwTLIBUgc2KmaXl10KZiopOiXzOCGnZ6cDgWRi6bisJw9zeL
         VwMfNBfspfQRXSEaO7XWTZePSzY1awLNaPBa+RQDMnmVfp7RBrZSdTApNrpbJ7JiMvIn
         zKMYP4iCDv3sZ5jEUqYyrEwPeiKyPVVALgsa20DUfC4qiZOnvrcAPyuTKoZ1bo//gXOF
         lF7qAjAaAkx6OZfC8BnqTg6wtQDU9gmu/iCpHMjj8d4APEU54/RkX3An3/pPXbNMaMdX
         6LEMBh0qRNvjmapd4nQDuTjTJ9/jaFm5ZzYZfDo9qf3gULFIShaqIgwyglrXFOtmi7WE
         ZlKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZRgcchoy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5cOUxRkps61HX4sdisqqOeTQdY0XuqnrxZ/eS85CT8=;
        b=K27hk95e2GldIlfZk/58poaowD1N24RhxkgMxvhuS096HykoaWngRre6oYaxRQKZ3u
         ROJKQgpSqt4Plb7q540a9F5t5Q8xA/J34yYqDpNcg021p7Yt3F0vCCjlmB3Uq4qRmpsg
         uSE5HQhhHGuhsCeMS7wkJEWW5XG/t5Idmp5lqHPqaD6UzWkv+/UlkEnJOH8X69sB5rl4
         Q5YMFaVJmtyL+BbErbna56u1Z//Wb4bLxR93yVy62yTtyWQ56BEAmgEhOQyhHCapdHsw
         JjUK13xecuY6+hiE3oalCAq5b0s2P20UACfJEmgAyrC4NbL2z97QvYlUuQ8VSnbUWGkU
         MAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5cOUxRkps61HX4sdisqqOeTQdY0XuqnrxZ/eS85CT8=;
        b=OVeenFoW1oX46lUPVO4q4zSXm5b8QUNR+JkwwoUbDSK2n5BgWtSa0vAZJKlQCt8N9s
         /66UTOvsZ+VwPrwRrNltSjop9mNKqs6j+GC78AhAFcLYctc0kYfQAgiYGOLb1YzsUL9v
         Fskjxtn2F73tApbBnNXe16UJ8GLYxEJfUqf1gFXTE7FvGnWyjQdy+1vkp/ep7y2fSVaJ
         1qqRKKcJ9b+EFTQwfvKzKLHh7Mj/g9Ys2z982FVJccr5m8L6UFdDMEqW6lW9U3cWOlr5
         BcApZLL39AR93O7vcoIsMtcml25GKNmVC41eZpfP4t565I8XPUUG6QHOAg5JMtevZvNc
         1raw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubzVsMOCj12d+IQDazpmra+DxpKP8mnw/rrfq0bA1t7ayAx4MBZ
	MyLa9Bh1kZzO3w5OJoRVdcQ=
X-Google-Smtp-Source: APiQypKrXpZEERAXFGwxpODF8eksY5EFsnidDoJGnwQRrJgSoJSW87eEniBiQGX30BPXW/rFO65HrA==
X-Received: by 2002:a67:d43:: with SMTP id 64mr11777716vsn.142.1588851294602;
        Thu, 07 May 2020 04:34:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:98cf:: with SMTP id a198ls215207vke.9.gmail; Thu, 07 May
 2020 04:34:54 -0700 (PDT)
X-Received: by 2002:a1f:9182:: with SMTP id t124mr10824275vkd.38.1588851294190;
        Thu, 07 May 2020 04:34:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588851294; cv=none;
        d=google.com; s=arc-20160816;
        b=ySLkXISy7y6voRNt3UI4ZT5tTz1AbJZxhTnUN41bHvCbnWO4Whv0IQ7e3GXi7sBqOT
         WqUqcm8EvlXmPKrQyoVu2dbgavTAs3yDpTeYaLHkTq6tu9sw8lBB4q2YxjBuL8J9yFe8
         Pt0oD4s8S44tu2gmokpAlYSZXwDpCeyKX+RWGfHUJrt5PWQfX3YA2URQcDhE0yIcahek
         qHfTKqicQulHKQE60TfdamUn8Y4F1hXZfAhEH7s6J8urI484gi0aHCdlaZ+W6+0ab+CR
         4BY/4dZAMaLd4mvPoX7iUZpujOqiarPY9MuAgqzg9LvR8y5YcE1kEs46Q0oOG+wCr5cg
         tVBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=S7/JCtjp/SFUzAPa+/rhOyd9q2ucCeuwYbzZwtk3H3w=;
        b=vmvhZIiBIZD9G9F+lBOyljgfHhP395gdmnupacMIx5minh4w0g3qM80M0p/RyF0vHr
         S5CME2drjqxd3xutmjHKAcZFdvn65RhJE2Y7dSPLHauILdwh1yZehR7b2t5zRpet6o04
         WGAerFPLTwirgFioYv6GuTT/XpgZ5zZsb+v6+NQbLWJ+EOZXPiU4QAmALQweiG54arcb
         PZftHMyrDMAkw3owBx6tCTuYkvGElb5gD/hBNHYIsUX7InZ77mPAO3zLpkyEro8CjgLv
         7w6unprMM3pop+KWgypE7YaliiMWDX1prFQMP42MYUkAINDKB5GH82FUxoCPPTDFrwpg
         lMUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZRgcchoy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id c14si101390uam.0.2020.05.07.04.34.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 04:34:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWenK-0007kR-AC; Thu, 07 May 2020 11:34:26 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 22976303DA8;
	Thu,  7 May 2020 13:34:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 00BCA2B51366A; Thu,  7 May 2020 13:34:22 +0200 (CEST)
Date: Thu, 7 May 2020 13:34:22 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: hpa@zytor.com
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Sedat Dilek <sedat.dilek@gmail.com>, stable@vger.kernel.org,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
	Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Daniel Axtens <dja@axtens.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: bitops: fix build regression
Message-ID: <20200507113422.GA3762@hirez.programming.kicks-ass.net>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ZRgcchoy;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, May 05, 2020 at 11:07:24AM -0700, hpa@zytor.com wrote:
> On May 5, 2020 10:44:22 AM PDT, Nick Desaulniers <ndesaulniers@google.com> wrote:

> >@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> > 	if (__builtin_constant_p(nr)) {
> > 		asm volatile(LOCK_PREFIX "orb %1,%0"
> > 			: CONST_MASK_ADDR(nr, addr)
> >-			: "iq" (CONST_MASK(nr) & 0xff)
> >+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
> > 			: "memory");
> > 	} else {
> > 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> >@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> > 	if (__builtin_constant_p(nr)) {
> > 		asm volatile(LOCK_PREFIX "andb %1,%0"
> > 			: CONST_MASK_ADDR(nr, addr)
> >-			: "iq" (CONST_MASK(nr) ^ 0xff));
> >+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> > 	} else {
> > 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> > 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> 
> Drop & 0xff and change ^ 0xff to ~.

But then we're back to sparse being unhappy, no? The thing with ~ is
that it will set high bits which will be truncated, which makes sparse
sad.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507113422.GA3762%40hirez.programming.kicks-ass.net.
