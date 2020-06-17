Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB4HZVD3QKGQE5CXTCYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FF51FD158
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 17:55:29 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id y24sf1183027ool.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 08:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592409328; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqDPC3x9Qj9e7HyAxEqoUemug9JXh5emzg7IsDwxwVGBCGmcQjhLxBvMmx7HPjOkRS
         YXryy+XdDiJ7/ldHZQBqa6JOua1GmKBfmaEtWua2jth5+LRrBtRgTcUjytP52PkyGNHa
         wFKve6OoYPTtExMTR3Jvu9X/pVGkATtldE+YS8AaCAhCPEbLivNkIXSK7oBts8GkqZ5s
         /S6klyzpuyKWctQytRoh2doLPcMEpIX1c3m9jZaxl5bfC6mW7Feb2sR14lZd1xKBUQZZ
         axeEQEfvRnt/Fe1KeFOEqCeTYL4ufx3Emf4ru/ehEJeuqE8zfL7xPDvg8akgCkhBx7Ph
         MCJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lgncgcPt4/UYRfCI2W4TsWtv1Lss8c1KKYNYDkqz0pA=;
        b=qy/9wIZF2oOCYxT0n2U0GYQpfdF9ghR+7cB6h6Wssd601sBqRSg7JiOsnhuQ/CP+la
         RRY2wOZFHVwmmuG93KPODauPQC5GoLAmTByF8fgsYEx6NvYnYUlQbNv4nDljuW74ZSdo
         ybkI+GB//tci1nnMomR2w+KDOmSz+adxVhBUwopDqhbwv/7+aq8/1fbhOgEcCbj7Sds6
         2QUiHIM7ZVEGPj875DDSRzmObooG/rujc6nMRVPJei6diEYiWcYcZ4j8O4vhuRvKA7HI
         /b0BcF3IYF+Mp/GR+KyfIP/QtMNffrcxuLEY9iNnEzcuVrkHkH8euFIFKGXadqJ8E9i0
         L1GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QJorX77s;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lgncgcPt4/UYRfCI2W4TsWtv1Lss8c1KKYNYDkqz0pA=;
        b=NqEqUSBGZoxrZfEgeatSDiJqkAO0cZoBpps68fdXaGzBpkE+ekWQ790E4elI5E+Dar
         VxxDgY9S53sk/HQY0R5q8n0O7+40PagJOAAHnRHnGAWTu+3n7N/j9CWqhzMNpi6dnga/
         /vb0i6NxKqQFYzU/VTJTQdAs0b3Q+y34XW1P/PMlyjOttPGtT9HxG4ba5lwydBhliRds
         90B/vesJJbZ+DNuxcDfGA8pLMQhtLX+xtSBAJF5dLkACYqwNUgSqTV56HYlakrK/livs
         OtEgICIyKczUKi6UmJYxn6zubTAgXISlx06dXXM/PWjSGVIc94Js38oz0mSbSMiTvX/l
         Sxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lgncgcPt4/UYRfCI2W4TsWtv1Lss8c1KKYNYDkqz0pA=;
        b=kr7pZw6d1ymMcJxUHfR9P3k5hIEnl3cWkrsn0b/UsuESOCJswN/nrMY6FlR3Ywt1ET
         7yysc9XZKdHOOe6NbqoStwdoX8m6XYKPwOa/OaE743iDgu/vI+cLAIqt/ZrBGkFoAteT
         KorfPQIKFK6kZcBGHhEIoPGEytsLcj+BxyUbYsLAPNqMh/M1fXk+hBagcdqToJFCH/US
         jR94ehbSdS/gBb+30sdHdj3vd3KmQEA0EKbp5pE+chkAbqF/Ohth54cgHMNa66eb6GpQ
         aMK3J9hWU3nO+bKcDA/M2fkO0quX+vJkJPQGDKBuWhyp4Qw1IZ0AEmD4TzkuZ2cp/NAu
         qUoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Trqtzf+uR8kzXgFGsiZ+6oEMvPFH2CQjb3CV/bCCK2bwDm1oD
	GpT6Qx1sXU0NPviDMLWBdp4=
X-Google-Smtp-Source: ABdhPJwco3LtHPNSoTRfBgXY0NTf9iHJW8GdLkWErTNTOvYu/g9xap35tqtt0F+E/ONi347cIOUbXw==
X-Received: by 2002:a05:6808:7c8:: with SMTP id f8mr7615856oij.51.1592409328559;
        Wed, 17 Jun 2020 08:55:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls521229oif.10.gmail; Wed, 17
 Jun 2020 08:55:28 -0700 (PDT)
X-Received: by 2002:aca:f141:: with SMTP id p62mr8144156oih.136.1592409328154;
        Wed, 17 Jun 2020 08:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592409328; cv=none;
        d=google.com; s=arc-20160816;
        b=DDyYdovdBQUJHRPFYC4rfNh6bg3x1IfEbEvbKuOc7JhZx7n4H+1ABWGaEWy5X+iRHh
         zWfUQ7cSLz1yYBrkS+X8/3ik1mq4dkoZsiD9VWzsvOPtcTfp4ypbo4EjMGyyFa7dzHLG
         K7xaqdiTSj+AlfKtP/QYG8YWFWzXqCO6y6/pO8HGMX7f69OgXeV7ySveycUm823cmm8Z
         d76MicvXSqOceJrdSlEBVvBJy8uC9jXkCRO6y+IZ2VXdSwd0eGVM0g94urRlDi22ihw5
         89kT1QKvU10oJbpeX7S7hFoP4CzqAbsGuTsG4XQSp4snCclj4GuXiFLuyUB/JXpVxsNP
         JKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZSPAp3VauC2iLtFOlqrXko5KarTwOTs5rDR2BqCF0EQ=;
        b=Nk/dm62s81DE+0pCnadGnQeHQF5v0CYBtVjVyJ+Kk+SDYPJHLQOZHJFn8aVsS56WQ4
         daePKQf4VMUEppvdFwGInC+UjIILclF/ifEvaPR0PobI02Ch70DUvO82kQt7/fYzgqNR
         1nt4roXnyrtEZoWV7bolPf83Y9Msg71x5YT5aBC/gLNUKtgNMu0ZTmzaz57Vku84YVcu
         Hu2a5YWyxwALnXMJlWXcbRWNsqYR/5BhM9O52dkQbHQMhn0z7IrJmzxXZj69G5JuJK0K
         rcG7fo5X2BNH4v2y5BG20hH0o4NXPXmwrAWopAVhb5ArBa9WKwFL4F39gX8EF5/8IuAA
         uKvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QJorX77s;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id y198si5169oie.1.2020.06.17.08.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 08:55:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlaPI-0007Fz-27; Wed, 17 Jun 2020 15:55:20 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A1FFD30018A;
	Wed, 17 Jun 2020 17:55:17 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 91CC620707D49; Wed, 17 Jun 2020 17:55:17 +0200 (CEST)
Date: Wed, 17 Jun 2020 17:55:17 +0200
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
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com,
	Andy Lutomirski <luto@amacapital.net>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617155517.GB576905@hirez.programming.kicks-ass.net>
References: <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
 <20200617144949.GA576905@hirez.programming.kicks-ass.net>
 <20200617151959.GB56208@elver.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617151959.GB56208@elver.google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=QJorX77s;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 17, 2020 at 05:19:59PM +0200, Marco Elver wrote:

> > Does GCC (8, as per the new KASAN thing) have that
> > __builtin_memcpy_inline() ?
> 
> No, sadly it doesn't. Only Clang 11. :-/
> 
> But using a call to __memcpy() somehow breaks with Clang+KCSAN. Yet,
> it's not the memcpy that BUGs, but once again check_preemption_disabled
> (which is noinstr!). Just adding calls anywhere here seems to results in
> unpredictable behaviour. Are we running out of stack space?

Very likely, bad_iret is running on that entry_stack you found, and as
you found, it is puny.

Andy wanted to make it a full page a while ago, so I suppose the
question is do we do that now?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617155517.GB576905%40hirez.programming.kicks-ass.net.
