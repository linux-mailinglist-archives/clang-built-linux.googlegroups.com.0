Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBV6V3L3AKGQEHIS7DUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F11A1EC2E8
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:39:05 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id p11sf12629396iln.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:39:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591126744; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rd5VWt2kfhgg14X9l9ypT3+h4NrgJm3BM5NKQ5mhb/dYCmXJZDA5WMnlfvtvn3YimN
         OzVflhKeoTo6QOWnCfb0kF1eBIdFhGhsP2T3km//EpuduGPrHmFIPY8VTHM+Umxr4+H5
         o8tRNnCeAT/309CS2hrkftVgy76/MCrG3yXDoiWwfpP4nGcigAn34IwBsJ7nUXXvKjv7
         PqAfGbhpoLudYg3ecfg0It0YMk6z+IpzIgTKaZzUXTOg8g4H2PQ8NUozkdOvb/yJYSu+
         t8ONjjSUDAtKcZgvuVFKZzFaY+LxQGKk1l11mj34cGm4ZwzCZsD+Dt1md1mz+r5L9MmG
         ZUoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=piqQGSlrQW1lc3NHLk3kdJwLzLBpZuvIetk5yrObX8A=;
        b=OEkFoV9xE1+pr1h6+zRZjjRvsrO4n6Dk0fPPtAzi51ny8h0XdAGBQHxZpQy6m1quXM
         AJSbRrsFqmL/879AiLElI7Pbb8xg6lqK8pmG5Qg/ifMc2nmFZmKWMyAv8rNuaIfSSPP+
         8FGvgXg235Yjhe/EF/OhwquSnw9usvZWA3gfsZ1B7bP2wAxKCd5dt71Pb5lBICXEI2//
         szkZ2Xvuq9nNuFM2GD780UzK6gonxZkAfP4Ea0Vm7zubQR5JDd/vgYl7C45VKvQ8nDO/
         IOMoML5iIOj/2eBzqgJhojkXPb50jWqMvU30E9qaFE9vLd/YzPCg6ObW/vORnqEgSSY7
         SbgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Y97cQnPw;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=piqQGSlrQW1lc3NHLk3kdJwLzLBpZuvIetk5yrObX8A=;
        b=KFr6AZ/Nf1ca4zqJgyCh5BwHYj2yVbrjuIqapIhV6mmmjW1d/uITAj1tchwhU2ZzAK
         dOLXEoQ6l5HrCPTxEno1NPRtGUXGJRhVLAfmT4GNRW6ipLa26jLrqZ1ysDQNzG5O+R0p
         7FX59eYmsIOqwRh/0RmgTRVW5nDnKUmMyInUdcnFHzf+PxCpc+JBsSUHC0+onC2nPPR2
         8uEanHlb9koMT/f78yOXa1RD7V5326Z7ACEKuRAZ2x2GQ2bB7S34jxaFOwZwGc23M0NE
         Ocrtitd7Pv6mW8BnE1eHbkUd3tFdRuXWOUcUZ+esjKE6HMSll/oOGllRTx6uGep/0Qzp
         ji/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=piqQGSlrQW1lc3NHLk3kdJwLzLBpZuvIetk5yrObX8A=;
        b=bVVNVJLMg6D0IE9JNwxIl1r0pihAkggiRA3JLpcPceCLYxlgPsntogzhrokILcJp3F
         jlkj1UwClwr89kwdjb8BYk5Iz554tJscyhGa90ExuT5Qa7+7BD0lxjMQXH9YdUQ0dKiM
         XisxBfx9E2KjVi51SZSkAQ4wzJS+7RGRsfMfloM/Jo4lQ0Z4bRP37h6MA0z0KIt6ZDMs
         1z/0JawNBhEyV6m9hfcWIAi5DmrnHeDNU7iqTb8zW+gjtEadsUEl4gNLMumFhj8vsMW6
         cuk3oNS2HIZWJb9I6QOwgPuaksOrC63wkgcQsXULFlFjeRxUxFJZpStsjcaaxuPadaVt
         ooFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qBjbBj1ChuRPZ5ETyYxUft1ecmWCWPdmcHAUTiKcAKYfzNJQi
	eebqaCNLp8QHrwLfkcYVvTs=
X-Google-Smtp-Source: ABdhPJx8FwtqMW7ZmwgHl1rs493HD2lD5b4bdR+YYZLAoE7dFNoP3JKlCSZc89o/KPBfRhS0Lx/fdQ==
X-Received: by 2002:a6b:7515:: with SMTP id l21mr812992ioh.82.1591126743817;
        Tue, 02 Jun 2020 12:39:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:228b:: with SMTP id y11ls2488366jas.10.gmail; Tue,
 02 Jun 2020 12:39:03 -0700 (PDT)
X-Received: by 2002:a05:6638:cb2:: with SMTP id x18mr27602889jad.6.1591126743460;
        Tue, 02 Jun 2020 12:39:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591126743; cv=none;
        d=google.com; s=arc-20160816;
        b=yxtdocqfcVlodm6DZdiRJxewxKoI5Yw2oXHvTDJ9l46DWlfOh8f1MU0gYPHz7m+Cws
         7OCdlC+A1DhiNjGRSuH2QEoC+H8rAX+u7FmRogBKm1it6M5cdLhSPtbkMKoYezPW7tq/
         1K63RzrfJiGoqaX86Nvy51fgxnDxaTKeG4Sq/XswN9uMi4JNqGwn+3sDFnV2fD9Tdc9U
         tpHyu7YlNYGHpeok6KkrptqbcOqtCwW22plzzHRCbcLBKhgy/xx/XZVoZG7w2h+7eC/8
         F+x1Mi9rIVaJAhtJR1a73I8qivdYK3VgqOVPd6aPi/1sf7AfLENGoXPXbUfJq/EhC8IC
         H4rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=07uMamPsL7K8+1SyUHisvSOhlqTxoE0W90sdhD4QMmw=;
        b=dOpiSHalD0ff2s75ZYRhrCRmQ+15zTEByEplQSis0jrodjE+qbBFrWcF337+Qd+nlY
         JNTJHTfPxOa0z/sTteOHop3/QGPzABZ7O9Q8Z4sc0BddzG4SkOHhuIXfBigk3EYuEe6L
         FrI/LtfNUO3m5oh14uUHGfhblxpPA2rOFDpP/QpUPykhRii6iPCUaH3vP0+M2ZnYyFHL
         e0pVkEBNOTaBnLeQQbCXlPhP4OM0PXLs8ZKkBMqGMGK8NTrJ8LpCtaP88PhSIqlmBNSX
         3EhN9sP/zU/QEOz7MuIGIYqJf/3hM74nDZrhaAffLeVSdGBJgOC73YuGO/lCScJIP0eE
         JcWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Y97cQnPw;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v16si315945ilj.1.2020.06.02.12.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 12:39:03 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCkQ-0003KJ-JB; Tue, 02 Jun 2020 19:38:54 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1B30A30081A;
	Tue,  2 Jun 2020 21:38:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0EB462020B7BF; Tue,  2 Jun 2020 21:38:53 +0200 (CEST)
Date: Tue, 2 Jun 2020 21:38:53 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@alien8.de>,
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
Message-ID: <20200602193853.GF2604@hirez.programming.kicks-ass.net>
References: <20200602184409.22142-1-elver@google.com>
 <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net>
 <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=Y97cQnPw;
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

On Tue, Jun 02, 2020 at 09:25:47PM +0200, Marco Elver wrote:
> On Tue, 2 Jun 2020 at 21:19, Peter Zijlstra <peterz@infradead.org> wrote:

> > Currently x86 only, but I know other arch maintainers are planning to
> > have a hard look at their code based on our findings.
> 
> I've already spotted a bunch of 'noinstr' outside arch/x86 e.g. in
> kernel/{locking,rcu}, and a bunch of these functions use atomic_*, all
> of which are __always_inline. The noinstr uses outside arch/x86 would
> break builds on all architecture with GCC <= 7 when using sanitizers.
> At least that's what led me to conclude we need this for all
> architectures.

True; but !x86 could, probably, get away with not fully respecting
noinstr at this time. But that'd make a mess of things again, so my
preference is as you did, unilaterally raise the min version for *SAN.

That said; noinstr's __no_sanitize combined with atomic_t might be
'interesting', because the regular atomic things have explicit
annotations in them. That should give validation warnings for the right
.config, I'll have to go try -- so far I've made sure to never enable
the *SAN stuff.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602193853.GF2604%40hirez.programming.kicks-ass.net.
