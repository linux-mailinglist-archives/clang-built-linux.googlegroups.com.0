Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBZNV4P3AKGQEUZSEYAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A990C1EE369
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 13:28:38 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 14sf4870984pgm.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 04:28:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591270117; cv=pass;
        d=google.com; s=arc-20160816;
        b=GmP03/9p5i4q3sXcZObCfi3Qhn9jU3GvI3VorKuOlGXtTmaHRSOLfTLlf3lISpthPQ
         09GMZgvYdxBOeQ/Otm1Kdyi44RLpOvCAwvp7oMaAHMCVbpx2x7mzPeN5s5reyMS/Iz3N
         5iBlFFw8EG3bAsi4cvmu5O6ypZi/eMmGS+18shoF7b1cTBgyHkqTetI6wuV8SzxSd1lG
         IfDzQlMvVT8PXv7fu4dq07ETsQCoOvJOtxkh0b0QzTZDU7vHnAW9cG1W4gKyO0LTQbxo
         hrOUcE4lGoLYiYNjsCq0JEQZfMnCVIoJzYKXbuYu/KB/3U3hvCTZD+YF03nLSazaBejv
         tQBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0or46WiDs7g4AI5rt2bi6kP82o3f+YzYY/b0kobm/kY=;
        b=ZbPm+Qw4mVj5KuM0Au2INXTaFjHfCivK5iyw2yHqhiH0d7jcK/Sqr2LlUc5nOk5nVg
         uBLUHRhYb0dENnn6N1m9Jwkj3DU5AMnEe9tnJNoMuoUKRZ/WZAeIOKsUi/YAIwbZR0f3
         AATBoQt/DFetMTCnvhxqxZfYqQZvSQI/wy4+tSM8seXTF+x1HfDQZ8x3YvZ8ZZyVNion
         DgXgyv/M4q3jPYs8zTElrwaFnABm+O04XWfLxdb7mJX7WgXcdYP6bkCkNFykp3eFMBZF
         18yMvEUnkT1uMcVB2Vnrsq+3dDmdKt6zI31yi4t1bW3ea0SSNIbE+fGfoWF6qql1ROI4
         VOcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRQAvggw;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0or46WiDs7g4AI5rt2bi6kP82o3f+YzYY/b0kobm/kY=;
        b=d/rpE8sLHXZncrWCHGtmSkrhoA3bIH7SE7khgT2FSdTcwKtt+FWekHg/s2nn45nBxZ
         GTajZWJBKb6l5EZM/pvzrzxLFBTkFcP8Hzi2805c093OW+8heKUfcoIhpITwqJwQ5bgu
         8qt1wIwXfhSSQARzGTFRDKitQ7InqFX9RK8TH/Hy1LtplaGsrK2B7hqQbTNFUuhuQy0l
         14M9zFQ4r3WnzkTS2GHZGEceHRl73XDjKl8/twQj1c10Ck+7UeRZRou1aHjfQYixA17j
         2oA0r8k7ZwGw7SEWR38JfCQdbMQtefLwbJwv0YTMS8jgVAhICE0Gk7Lgkha2qsS4UjMU
         jl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0or46WiDs7g4AI5rt2bi6kP82o3f+YzYY/b0kobm/kY=;
        b=PqY4+oY4PymyiHlwxfDc6iRg5/ArYD2k8cwFsl4ntBNBQdMl8FayGSX9LV6nKhDaPc
         ZlPcPb+vrAQWPFJ+mr2ve3t6aWmK4zgqQ8XpE8u6e4rk5JFfmadCpl+dS+oc8P/sDl5k
         fpCaGFfi5qjIceKwlk3lqb4MATvDkFtMJa1LDjXSNy5uofeBgj8rQITd8iwHOaU0CkA7
         Gjq18RYUwojpBSjqXzG8GNujdq7cshrGo2IjnEGRU1xDqw23Axdodx7IHh483PfL4dJw
         h0J46HGmYUsIHrzrTw86WLVsJ0YH64USPV8/GP2TXUfh6UOxeamO6uSwVNCJ+462djzq
         ijxg==
X-Gm-Message-State: AOAM532CbUDsLxdGkVIoGDS/4u4NHwzwmVHZ66Uml5C+HS32crGhjTEr
	3MSwq/IzsV9vjZWSadzkTik=
X-Google-Smtp-Source: ABdhPJyxkfjlDK9EREfU8wugpiGIdR8tBVYq9NPQPt+bB28Z8nbTi4zNygkzJgG8xoHBvh2kBRaNRA==
X-Received: by 2002:a17:90a:930b:: with SMTP id p11mr5481112pjo.230.1591270117441;
        Thu, 04 Jun 2020 04:28:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fcd6:: with SMTP id e205ls302pfh.10.gmail; Thu, 04 Jun
 2020 04:28:36 -0700 (PDT)
X-Received: by 2002:aa7:96e7:: with SMTP id i7mr3810133pfq.217.1591270116782;
        Thu, 04 Jun 2020 04:28:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591270116; cv=none;
        d=google.com; s=arc-20160816;
        b=p0vPV99O6sRitpuituYkqs++m6p0A3CszHIi4I6vVmdwrQRpSZWAo7ka8aeS4NvwH2
         IdAbGWehAInIH3sII4ErZJ8TUzv96WhSoBiZdyMExhogcXq+i10LR5bcePV+A7PCvQpo
         ONVDSHDWmggMAetcmg3G0wzK5/xKClR7N62IaasuXgtBFfUcWaXMkxhxCIAfSR3PMsmG
         mzxsP9bWHTAk8A9dQFyyyR1HTi0vf3t5cXuyyY+WpOc8IGXo14nWhPsqn05B6hrUt17T
         16toflDR/Sr5JZmj8EEu/1EqD1eTu92ta/1H0CZCofgIIoWcyB7yH37QRlEUJGj84QNA
         53Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0Wd046SRnNXPmZWQmANFyPx5YHXn43TLrkGNrhSkVE8=;
        b=n4GvzDRhbUf1YcOw9KzllnTYrzVWwH/towGJyAOrzwxulAAhfH5fnkADpm7KIS4vme
         tHY+RDXshGZ4tHDh8ZBhsM6Zd+suKDVQvG4YppFWSiLCrGiIf+cHhmwCA8tKi0vyh2rd
         KrN1V4rXtoDOMkZFYVTG0g2HWjAKyyjauNbwXzFlhYKi8MYzzKGgS5ovJyvZMQx4KaaK
         ZgRbWn36JWGnbTkAA5jDILuraGVp6aUEQYXrgWFPDH10k8dGa0ULvMz7C4K3p99zygac
         GiGhL+D4gCjDIwyvZZCpLCEX3XSh1DhwjlG9LRtZchKwnlqQPlqDI08uU/iE1xIGa+Li
         3hqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRQAvggw;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id o9si262556plk.0.2020.06.04.04.28.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 04:28:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id c194so4755172oig.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 04:28:36 -0700 (PDT)
X-Received: by 2002:a05:6808:3ac:: with SMTP id n12mr2720496oie.172.1591270115850;
 Thu, 04 Jun 2020 04:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200604095057.259452-1-elver@google.com> <20200604110918.GA2750@hirez.programming.kicks-ass.net>
In-Reply-To: <20200604110918.GA2750@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 13:28:24 +0200
Message-ID: <CANpmjNPgqjZaz9R9dq_4xiRShcFTX0APyqfsX1JhBZo9ON-kCg@mail.gmail.com>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
To: Peter Zijlstra <peterz@infradead.org>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JRQAvggw;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as
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

On Thu, 4 Jun 2020 at 13:09, Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Jun 04, 2020 at 11:50:57AM +0200, Marco Elver wrote:
> > The KCOV runtime is very minimal, only updating a field in 'current',
> > and none of __sanitizer_cov-functions generates reports nor calls any
> > other external functions.
>
> Not quite true; it writes to t->kcov_area, and we need to make
> absolutely sure that doesn't take faults or triggers anything else
> untowards.

Ah, right.

> > Therefore we can make the KCOV runtime noinstr-compatible by:
> >
> >   1. always-inlining internal functions and marking
> >      __sanitizer_cov-functions noinstr. The function write_comp_data() is
> >      now guaranteed to be inlined into __sanitize_cov_trace_*cmp()
> >      functions, which saves a call in the fast-path and reduces stack
> >      pressure due to the first argument being a constant.
> >
> >   2. For Clang, correctly pass -fno-stack-protector via a separate
> >      cc-option, as -fno-conserve-stack does not exist on Clang.
> >
> > The major benefit compared to adding another attribute to 'noinstr' to
> > not collect coverage information, is that we retain coverage visibility
> > in noinstr functions. We also currently lack such an attribute in both
> > GCC and Clang.
> >
>
> > -static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> > +static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> >  {
> >       struct task_struct *t;
> >       u64 *area;
> > @@ -231,59 +231,59 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> >       }
> >  }
>
> This thing; that appears to be the meat of it, right?
>
> I can't find where t->kcov_area comes from.. is that always
> kcov_mmap()'s vmalloc_user() ?

Yeah, looks like it.

> That whole kcov_remote stuff confuses me.
>
> KCOV_ENABLE() has kcov_fault_in_area(), which supposedly takes the
> vmalloc faults for the current task, but who does it for the remote?
>
> Now, luckily Joerg went and ripped out the vmalloc faults, let me check
> where those patches are... w00t, they're upstream in this merge window.
>
> So no #PF from writing to t->kcov_area then, under the assumption that
> the vmalloc_user() is the only allocation site.
>
> But then there's hardware watchpoints, if someone goes and sets a data
> watchpoint in the kcov_area we're screwed. Nothing actively prevents
> that from happening. Then again, the same is currently true for much of
> current :/
>
> Also, I think you need __always_inline on kaslr_offset()
>
>
> And, unrelated to this patch in specific, I suppose I'm going to have to
> extend objtool to look for data that is used from noinstr, to make sure
> we exclude it from inspection and stuff, like that kaslr offset crud for
> example.
>
> Anyway, yes, it appears you're lucky (for having Joerg remove vmalloc
> faults) and this mostly should work as is.

Hmm, looks like this doesn't generally work then. :-/

An alternative would be to check if '__noinstr_text_start <= _RET_IP_
< __noinstr_text_end' in __sanitizer_cov-functions and return if
that's the case. This could be #ifdef'd when we get a compiler that
can do __no_sanitize_coverage. At least that way we get working KCOV
for now.

Would that work?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPgqjZaz9R9dq_4xiRShcFTX0APyqfsX1JhBZo9ON-kCg%40mail.gmail.com.
