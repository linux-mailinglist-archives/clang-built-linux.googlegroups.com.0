Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBU43T33QKGQEE4XAC4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EC91F9B56
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:03:47 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id c21sf1781256lfg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592233427; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4LZ/7wMqNqipfIAHkQXQ1n3Hc3uQCaNVcJ6IJbSmAXWBjmZep4AdrV/mEPjejUjck
         WxgYKfmDaqHQcNXWfatOZvrpG/PWChirTTAjGsg+y+EG7CImgoYqb1yDuilxwxtT0nkz
         DoWguuAYKdFy1kCFeI6JsmpjxpwOvAH48ds49vxlFFKuHOoVZ/BRiX1y/5BFr/+PizSy
         /lZ8z5Gw2NYc9bsuAraoce438kK0dCcovl0tSSeTFjvf9AFC47LbVm5GRRb1DYIB6UN9
         5IFeqDSXSbWGSjwpj5nL+vDshsvU5ALJRrIM6/HokdAMpIlaVjl7X8gPBvhu6Skstlid
         xuMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=V0aSyXeG2G+ZEYhvQYhtpHplxULhAbyvbvh5zEF+0Ng=;
        b=qldJuc0C0XRK4RGJ2kOyLdQZUawcwKbtdkCpAwaUlbaEVgPmrhDrpj1JExJNsoWErP
         CYbOtH8RHxAQntJbuxpLvETRXq7X7wXlJ9Ko11SsSQofywgKa0ZaMgngbNuR4Iik0pJe
         ynaOCYMUBfCq0A8m92velJFo48yroXBRJP/LXXIGYVKj9HdG8v+1tghDVmJcUgrbtJHh
         P95918QA4+CVUpHunEK9Lle1g4EGZLM5iYmYnAh73BFo8+jj8BBf0O4/bjieuq4G+IsD
         10WaM9+f8lIFFqA1lr8pS4rahcN3HqLS9Iq3NTMsYW+U5sDZHOFPT4ZAahcQhGeLzBX3
         q19Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="SFsU/76c";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V0aSyXeG2G+ZEYhvQYhtpHplxULhAbyvbvh5zEF+0Ng=;
        b=U+CU0iGCajRiGD4//B050Z8d4iwIC3OJfFTZPpwOaPn5+0FMHvtjjQxMfT8Xc2EFzo
         IczZu7SrpLSHh3ECb4ZieP+moAH/9J3NQYDcqNP0iq3R6o5feq3tPaDApdpK2riiV1ie
         q7d3NOFBRQd08M0XflQuZPs7cmmhRJz/it6DU3YsDfypBY9pzImac7mxevZWjQg3sTEs
         VZtHimlEjYIHIjgtUz/+LQVMsbKTdcH5vIbbPyL+bkkDNmURUFN2aN7rpWbHHDDnWYYo
         2LhspOADVjtsgLExptYr8TeOopR0hqxufinXD6e+8InzAXKeRtAgWVAzlOz+r9SERfVQ
         nFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V0aSyXeG2G+ZEYhvQYhtpHplxULhAbyvbvh5zEF+0Ng=;
        b=q8K8ej3zeqy1ubjZweHD8oRBkm7Bcq8mxQMf4yZ8UQxLbGYfLZ1MK21iUEVRDxZ2K8
         /TrXgmq8ctr2Xy5n/94STkA10vhQ3sJQzo8TgBeXaDXTh1dOcaR2XMNM+Nx9gQLc+1v7
         TC6tCXVLuCiuyv3eIe1CutusardtB3ej+3x59eJfn81EVcJfGr84Zya4l9KM6ZM5QFrr
         L/MAzjPGSMnwJaaCf7Pkf/X68fOTR+N+Beo37a1Axd7f+v7S6pyWMHcd8WH1/kMeuYwz
         luwXMhrmoj9MW8QCZlFNQECUOdFWf/6CEw5puTCsHgTNhSAxfVXPSJ7daqaVdYJbItl7
         9Vzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314Y1AI/7dMDIj+kjVRUoh5dd0MgSZ967+9R6LrA0OJmsF3PK7r
	bIoLoosJwlMk4K0RBcpUuwY=
X-Google-Smtp-Source: ABdhPJxgc+n987B6R6HQUV0CDxYEE1aEP6LS7sr86GLsw+LJu917BS3d5KgUOpAU4cNmOBVzn4LNAQ==
X-Received: by 2002:ac2:48b7:: with SMTP id u23mr14141909lfg.86.1592233427401;
        Mon, 15 Jun 2020 08:03:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls119118lff.2.gmail; Mon, 15 Jun
 2020 08:03:46 -0700 (PDT)
X-Received: by 2002:ac2:4886:: with SMTP id x6mr14102106lfc.198.1592233426801;
        Mon, 15 Jun 2020 08:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592233426; cv=none;
        d=google.com; s=arc-20160816;
        b=KzFSQNk1LuohvwRrlQNEUOgGtErFBG7S7AbwlUpC5zfR0aRCy8xLSuJEExBVjvtpI5
         Yoxe9nkAPjzLv5CT56Zi89ATkPtwTPT1AeHcM+uSqCd++DkCo3+u1mKPWdqCrM2b2gpV
         DpNFZK7+pNz8Hy/f0K4uMLrI3cdZPYyrc9sJepUFeCGH/BuN1F4oHmPDN5ky0n5VwGXu
         jd6f/Cj7Gt3SUd4wdpFIomNLTtLmHaqebqtS6V6WEO6cjPE43AgH56aiGKvSG5jvHH0h
         /IHgPRRyxKTzJ/1uFuKbJSQODl5N3SJ7/jl8Jipw8UWny7KwD7IOXgFC4CZhvH5Snyl4
         tepA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jNEVxB8K8qkb0jxDWu2/VVQDIry1tExCa9xuuvd1cs0=;
        b=KsaIsejqdYu7ijlUkodjDNVHtWmojyaVK4wOZNT1F8DArGrHTUf7MGjxxjvpv9H0DQ
         Obaf9pdEf9AP/z425cD/cgg8v1S1fKoYr8DesmXKeKn9JIc4cAHFRrDrYfRAKZj2rQYD
         tuMuMZ7m0p1Da72Teu5qQ8m9Iqj2mwMBE8Qr1hoMVXniRQCQZiDR6Bh8YYRJKXWqabc0
         7jpTvAYg1ChdoJ3aydimNG32/TU5aMIjTCsXgb2rGuHNSr1pfXsAWl5uot03DIXNMoTD
         BQW2xNjZJWHhqtQJBJ2A0rhCHY8cTDhrUIf7U2MXLOCuMo2GfNIelp/wx1li3x9L1syI
         APjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="SFsU/76c";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id f16si1117119lfm.0.2020.06.15.08.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 08:03:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqe1-0007MO-Lu; Mon, 15 Jun 2020 15:03:29 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D85B83003E1;
	Mon, 15 Jun 2020 17:03:27 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BDCF2203C3763; Mon, 15 Jun 2020 17:03:27 +0200 (CEST)
Date: Mon, 15 Jun 2020 17:03:27 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200615150327.GW2531@hirez.programming.kicks-ass.net>
References: <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615145336.GA220132@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b="SFsU/76c";
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

On Mon, Jun 15, 2020 at 04:53:36PM +0200, Marco Elver wrote:
> On Mon, 15 Jun 2020, Peter Zijlstra wrote:
> 
> > On Mon, Jun 15, 2020 at 09:53:06AM +0200, Marco Elver wrote:
> > > 
> > > Disabling KCOV for smp_processor_id now moves the crash elsewhere. In
> > > the case of KASAN into its 'memcpy' wrapper, called after
> > > __this_cpu_read in fixup_bad_iret. This is making me suspicious,
> > > because it shouldn't be called from the noinstr functions.
> > 
> > With your .config, objtool complains about exactly that though:
> > 
> > vmlinux.o: warning: objtool: fixup_bad_iret()+0x8e: call to memcpy() leaves .noinstr.text section
> > 
> > The utterly gruesome thing below 'cures' that.
> 
> Is __memcpy() generally available? I think that bypasses KASAN and
> whatever else.

Yes, I think so. x86_64 needs lib/memcpy_64.S in .noinstr.text then. For
i386 it's an __always_inline inline-asm thing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615150327.GW2531%40hirez.programming.kicks-ass.net.
