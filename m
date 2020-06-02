Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBUOM3L3AKGQEQG4R2PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B76C1EC29A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:19:47 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id d9sf3136326pll.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:19:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591125586; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVkA4vbVGvs8XdAWHbOJYwZOE9xQw+H3a84c7/dcys9sACXfcs4BeMbI4opCHvWe+A
         4ARIOtQ46ou3txX0mOEKgm4BkzZ9/ErXNONhfukMDoZvfbzp6hi/NjkAwTMkHaJnusTC
         eeo6z6T15e0qV52Dg/FKosgzFMJi0vhS0v+BhVj8WodgelRN1mHuu0sxfKabYj87z4kj
         /P9x8B0gaXxFhctNEWcBqRKl9yfTJK+y50OQ8RMFcP5CgJVvsxsi1GFn4Cs7s6XwgxZG
         CBFwkEgsrRpSvXyV7WH4PIxH6dRJtnw6S/QlW8hUV7wV4DBpNxwc40bLMAP70esH6Nhv
         mDdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ieVcWfHPfK75wiazH+WrG7OH3NVCnwDPug5eWxYCvw0=;
        b=KppsQ/f8TMbYl4/Rjnq8H2PP3Meq5+r9z9j5QNwa2lE8Sk61j0DYTXlmq7J6P2PyMI
         eRgPA0spGvlS8UOJyGTm/L6E0N6FObZnWNcViSebBJv34Exjbbh9aa8b4QbFvT06UnhW
         CZxf2bqXznWHaqc6slM2lmtwAJokeaDV4H5+KWUiUHrKTguxSgaEXF49MjzfWdtb6pQT
         ssZS6Hsubn8GX/0I1IfRZDFJdYQsEiAgW7zvjBbAe8doUaOE7d9v4xGuW6WxsjrYiYOQ
         WiBEUBIF5eZfxS0hENjIdq6hs6y05AztbsfIgR8Df7PhQyPAemzu+aZo3aA9yFupU1yp
         lamQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=A7zYw3qK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ieVcWfHPfK75wiazH+WrG7OH3NVCnwDPug5eWxYCvw0=;
        b=TNIj7Dcm97sGtXBYiO8IxWRlgS8qLr5hZhK2/mdxwE81O925QPxPtaUCSY0scRxmZh
         T8K72QxN5irGOMRbJ1qhKfF4LuRAzO24Lmuq8LNDg0D9cn9gzohAdAAKUaWLAUqxWLfu
         zQF0TpAG8xnFdV7f2rfy0+aGEa0iWERrKH/7Wa4xjMC0T10JGTIFVsNpxRFx+RkjtVsF
         Z/PvQgFHegHX0RQej/BwtxuofysfqNqn/34kUia/PPCoY3Rn8wb229ehV1Kj9gXZLZIb
         bgeBJ8+wreGiBCRZj9cmCI2A8LONRbS2QXpevOlkgU35rSlHcd0FDjeKgL5TXDMi9AxE
         5vGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ieVcWfHPfK75wiazH+WrG7OH3NVCnwDPug5eWxYCvw0=;
        b=hj17t/3wYxQRItfUmF0z1uk7kFEtQl/hyq+nZy3ji9R61ziS35gjil/bopYBel1BsI
         IBXvo6d1dK1jD/RubLMova8NIGk4ARMznEv3QKb8iI5qO4+1hksgmG/NGFBzcvYxJzdQ
         qs8WLUyxrXs21oiR6UjTI5KW49scjEPlP4d3REbR8vlM1gGyPtJV7WJUAB9OORMf1Heo
         UDBK7ZBLbxPb6qVdPLSH+RyOe+ly7oBMDey8JKboM84+rwfKGMJAUSjMwTkATnzi73oZ
         kpCr2d0ySu4cnRLP31bDIjn1WrlzyaZrFni4Rl4xGJ9Mn+ev8I17PF3/ypeG7yrXUc1d
         hvuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ON8MwYkr1/f2tKTd0WAn7R5BorZFT+yYhBFssYcPcXluLpOKR
	DeoRvY/wT7Wfmw9DZ+NloEU=
X-Google-Smtp-Source: ABdhPJy6wLHA7x1EUQg0rhcWeqTEMPpELrNGHJUL6hlZiwm2+ZZpFAWR34wbi7ULcUwMXNwPJiY9Uw==
X-Received: by 2002:a17:90b:28d:: with SMTP id az13mr755883pjb.67.1591125585785;
        Tue, 02 Jun 2020 12:19:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls2052467pjb.0.canary-gmail;
 Tue, 02 Jun 2020 12:19:45 -0700 (PDT)
X-Received: by 2002:a17:90a:734b:: with SMTP id j11mr731288pjs.114.1591125585441;
        Tue, 02 Jun 2020 12:19:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591125585; cv=none;
        d=google.com; s=arc-20160816;
        b=YxsHlSAlcGP2KPrwHnpLgkmpxqAANNzCMfeQwdIDNWD8ac4FJvGoLBmPTksYpKFjoj
         cBuka3gYLI3DXjxHSkh9mb4gB4Y1i7vYZ89fhQtgImcolGSjPkturbTa6ztrGZswAgOf
         ktcVDft6O+ZBs/RySHJWK21ow2aWsxPaq15R6uR7M3fa4jpeLYAofIqKmZPdy26uXJkL
         T6nl1wEvb5bi7Q5F5SMs0r1uwYbjtU6kJI1vRm+VSJPGtv5Ln8r02LlK/BP3EQ35qrr+
         ciOVl5bfJKv5XTxpCfpN8c2ny+lzEJpgORseyb13xxxo5D2K0kU8jATIqZ9n+hMHMe7z
         eVEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mG+CJQG33NKFFc3Wsgq89KyUGRH2llxotrBKMYPSKBw=;
        b=TilbFhyH6K6MLRAwgxOE81WI9ppxXc+qyZ9nTqrDQHev01oVCJyo69Wh+ItCEbm4Au
         bUYCBqC6/H4IiM6gEWzEQEv+pv8hLfCcIKUWx5458qdXFsu/GHdfr5EDbHEx34osDj0Z
         YMvnEI+jVmbJD+XfQz54NFkZlcrpQ1ye0hW/XUh2gsDFXsxIpuagQFpCtSgASASErOLp
         Hnia8LZ8CQo0XQSg/dJAwus8T+XXxgemZhXz06cDzB5wvgBTg/qlyZtVx8oml6eKv7Mf
         3Q9pw3QhzpyA9AKbr1vR08kdbxHU/olE9pi70q4SJCQOoABt0hFUkH46bE8NCwrwswQD
         wM2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=A7zYw3qK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id ds21si178319pjb.3.2020.06.02.12.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 12:19:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCRn-0002rw-If; Tue, 02 Jun 2020 19:19:39 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 40F5930047A;
	Tue,  2 Jun 2020 21:19:36 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 323CF202436F2; Tue,  2 Jun 2020 21:19:36 +0200 (CEST)
Date: Tue, 2 Jun 2020 21:19:36 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of
 KASAN and UBSAN
Message-ID: <20200602191936.GE2604@hirez.programming.kicks-ass.net>
References: <20200602184409.22142-1-elver@google.com>
 <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=A7zYw3qK;
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

On Tue, Jun 02, 2020 at 11:57:15AM -0700, Nick Desaulniers wrote:
> On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > have a compiler that does not fail builds due to no_sanitize functions.
> > This does not yet mean they work as intended, but for automated
> > build-tests, this is the minimum requirement.
> >
> > For example, we require that __always_inline functions used from
> > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > fails to build entirely, therefore we make the minimum version GCC 8.
> >
> > For KCSAN this is a non-functional change, however, we should add it in
> > case this variable changes in future.
> >
> > Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Marco Elver <elver@google.com>
> 
> Is this a problem only for x86?  If so, that's quite a jump in minimal
> compiler versions for a feature that I don't think is currently
> problematic for other architectures?  (Based on
> https://lore.kernel.org/lkml/20200529171104.GD706518@hirez.programming.kicks-ass.net/
> )

Currently x86 only, but I know other arch maintainers are planning to
have a hard look at their code based on our findings.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602191936.GE2604%40hirez.programming.kicks-ass.net.
