Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJXJVD3QKGQE6HYETUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5201FD0C4
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 17:20:07 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id d14sf1194712ejt.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 08:20:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592407207; cv=pass;
        d=google.com; s=arc-20160816;
        b=KyPSUM1Mia1IyBFYhs3P7Kiy6/+Dw+6/43P7IxCSLIBRSqsi8k5W+PpVyyGAi3Xmxa
         Gi0FXCH7IgK5NDHtvchCEP8+P5GwXOA1dAV/HBkglxBVc3nLQcJUb3JLB4bDJKCOYkhd
         nevVZuiEy/5BBPYPJF1xVcA/Akckn/aCB50kQ4i4cirWyDA6moEFCIvvnSbAHIbBrHDx
         DNOCRwiyROC3sH8CuvdUeZ9kUmtGTGrza0S/cheoh8X5FtMMu4u20Opeqm7yEG0B23Qh
         2bRP9hIoz6FYTacaxRBU6rWtugd7fIOSe7y0Jzi4J9QHMmp6ghC9FQO7B+J6f1qVVwls
         AP0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qH9+jEPEkIr4P3zwsbwu+OlmYardwU+lkLf/HIfMkLQ=;
        b=K0beHZNzpo5+UO7/rXHgxKOsCVteWid7U9OnUPKrUYnCk2brVA5RNz8+NSLBEsCQgg
         RWQp0HJQahv1RkBnECI13Uv0mKzowRUCeY6/A6qbz5eXsxeLNrdcdc9w0AAhro3BtXR6
         UEJ/L1GpixVP+9Dr8gb4hmn2r58aJG/zzCPuqG8FxKnZgx0u4ut2WAmC/kwsooW/c9v3
         0g9NY94TmvYWOXT2575J39wq/kr1hvkUSOoPFU76btrLF4eoaRAxN8UZ81kPnn1fK0wd
         RbbKhEL7YfnyNMst1haGl5acJ+umEgdjs1yezQqHCjolcDKvxEf7dvXvo+RvrqdKpwEY
         E8ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KHJyeHZ1;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qH9+jEPEkIr4P3zwsbwu+OlmYardwU+lkLf/HIfMkLQ=;
        b=lUStBfZdA+jxtfPdGqw/XSzdEcBF/kq5jfnhymovV5qCmEr+O+/2h6B692Qhnz572P
         gIMeuFJ153h0BDypy++QHvtn3CMlImpo/sTAV2E2fsE1al+mZ7Z/lUc9SXr0xGaBYfDu
         xybSXutmEPMlkJf+gU0wZgyCRXNwzK1u4IIQ36DjlZhyY9ZpEk04HOsCnvqjTeYMj0Di
         hBEKw2jLNzp6+7rpYtXEF8DtYEDwWYSATdqxr5johV7wgFfwA6INMZkiDwka0rQUCREJ
         0qBrxJRGg2HBwPIZddBrEtDcPDU4WgtI+9kZJSndlMdINAoNfcH3R6vRU8Sm13UgIdF0
         vzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qH9+jEPEkIr4P3zwsbwu+OlmYardwU+lkLf/HIfMkLQ=;
        b=gcn1MN3sEj6Pg0xXvP7GX2Pephzv2N3jOhmNhkrvG9kbxCY37teRm31LYR4n96aRaK
         F75oe26njKe1I6bwn5Qvrk0BjdRXYa3s3vUpSduh0ag8aloXYyBsY/ENSW9Z55eHBKZU
         qtZQDQ2saxbJ5wQwt04C4mT/eZTTQp54yeAgMaEpweFhic9VUEtqQZmFx83NQbeHi47j
         sCbUbI7x0pVvZDFkoEXdoav+op7VMvicR6RK/0Wyd6xXp3RjcVZoiYzD4swGDtKZr0Cu
         3OWwPrFVp2Blz1znqJ5qBCe+ZCqGWFgMf1EMmvSluUxhzFNGAKPrEuQBla5BiSit1BBW
         M4kQ==
X-Gm-Message-State: AOAM531O7Bq70a/y3H5UZ4aTEsZQ/O3vt3IwsLWkjBYQQTJqc0jw7zBj
	MOAGqMEKvEzeWYdDMbuf5+4=
X-Google-Smtp-Source: ABdhPJwDOZ0M3Z7FLwNSi0Ub9RSuHR7aIZvqj43MIZYhbjmji1hs+LriUMVRWMJqv9YwvLVhkwp6Vw==
X-Received: by 2002:a17:906:241b:: with SMTP id z27mr7896993eja.267.1592407206972;
        Wed, 17 Jun 2020 08:20:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:43c0:: with SMTP id ok24ls1285901ejb.8.gmail; Wed,
 17 Jun 2020 08:20:06 -0700 (PDT)
X-Received: by 2002:a17:906:fa03:: with SMTP id lo3mr8212332ejb.196.1592407206334;
        Wed, 17 Jun 2020 08:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592407206; cv=none;
        d=google.com; s=arc-20160816;
        b=r74UloqPpXYFycXJ7v2twYMoKLiW9fTYoAPEfenHNtd3Fjf0aBU/QHi4FM6b81UX9+
         IhAaLJ64lER/omS3mwVkDUPrgE9uAYjq/VcMWqlEnpCoHQLmw7no0dCBwCm+1qgmvd5c
         ly6ucnXyT05NCxxK4V3o9CJQ9chKFURo/LqtmjX3Ew8V9A0ezIMVhpckZu/2gWyqbEuC
         mig+IWpmXQAEvGvFQGbhiwdkeZ2AgP1KAj7xToYLECsolJarOTIIDHeMx+H1hYFnRz8A
         z/bwE8akUcr0q7G3Z4ztHuDYCBsFlsA/5pO9iC2D6jBUvPxeriRx/ccedIfM13dP47E9
         L71g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qQ975hNqevvgdpm9NCP0Rb6tLrxCJzAg5/lXYcYf+h8=;
        b=DUU0gtmqrQQe1f+VSRwM5UrYP/WmQaAV1SXFC6DdSwDUPkgAPzhOTJxvAfRmI0EIZ6
         F8+mZ4Swi77mZGkkZuSjx+7ecsT7GlL46v+pnQE4+ae+XeB3Lnk+cNLyng57RHNVb3mQ
         XtSblNEbpksKj6xd0cWpu6pZY5HSJyIXL7cWBnRL6ytZZILjoyhoNN4KsXB2qgUBEk1v
         4HZFr3fktXEbytsC99FSd6wZSVu0EoQJIo3lTUve/dvl3DjbnHZuVhBt+CfBatXLGnXG
         aqxz6Z4nLfgLXhq+ShfYbLDxaemMfjx8aUc1zc9NKrfs969bUhE32+cj63vnmvJrqwbo
         R4hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KHJyeHZ1;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id bt20si13752edb.2.2020.06.17.08.20.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 08:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id d128so2430419wmc.1
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 08:20:06 -0700 (PDT)
X-Received: by 2002:a1c:5fd4:: with SMTP id t203mr8524133wmb.184.1592407205801;
        Wed, 17 Jun 2020 08:20:05 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id y14sm76303wma.25.2020.06.17.08.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 08:20:05 -0700 (PDT)
Date: Wed, 17 Jun 2020 17:19:59 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
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
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617151959.GB56208@elver.google.com>
References: <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
 <20200617144949.GA576905@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617144949.GA576905@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KHJyeHZ1;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::329 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, Jun 17, 2020 at 04:49PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 17, 2020 at 04:32:08PM +0200, Marco Elver wrote:
> > On Mon, Jun 15, 2020 at 05:20PM +0200, Peter Zijlstra wrote:
> > > On Mon, Jun 15, 2020 at 05:03:27PM +0200, Peter Zijlstra wrote:
> > > 
> > > > Yes, I think so. x86_64 needs lib/memcpy_64.S in .noinstr.text then. For
> > > > i386 it's an __always_inline inline-asm thing.
> > > 
> > > Bah, I tried writing it without memcpy, but clang inserts memcpy anyway
> > > :/
> > 
> > Hmm, __builtin_memcpy() won't help either.
> > 
> > Turns out, Clang 11 got __builtin_memcpy_inline(): https://reviews.llvm.org/D73543
> > 
> > The below works, no more crash on either KASAN or KCSAN with Clang. We
> > can test if we have it with __has_feature(__builtin_memcpy_inline)
> > (although that's currently not working as expected, trying to fix :-/).
> > 
> > Would a memcpy_inline() be generally useful? It's not just Clang but
> > also GCC that isn't entirely upfront about which memcpy is inlined and
> > which isn't. If the compiler has __builtin_memcpy_inline(), we can use
> > it, otherwise the arch likely has to provide the implementation.
> > 
> > Thoughts?
> 
> I had the below, except of course that yields another objtool
> complaint, and I was still looking at that.
> 
> Does GCC (8, as per the new KASAN thing) have that
> __builtin_memcpy_inline() ?

No, sadly it doesn't. Only Clang 11. :-/

But using a call to __memcpy() somehow breaks with Clang+KCSAN. Yet,
it's not the memcpy that BUGs, but once again check_preemption_disabled
(which is noinstr!). Just adding calls anywhere here seems to results in
unpredictable behaviour. Are we running out of stack space?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617151959.GB56208%40elver.google.com.
