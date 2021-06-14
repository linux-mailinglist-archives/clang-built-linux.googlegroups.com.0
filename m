Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBPGJTWDAMGQEGRFBHIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 785113A68CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 16:16:30 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id w4-20020a17090a4f44b029016bab19a594sf11767306pjl.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 07:16:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623680189; cv=pass;
        d=google.com; s=arc-20160816;
        b=rPyPUEPRtnehwXT/pIJcoSlIaVzs10YMfWmpI3TqSt+lRtIqPvLVy9Lhlv4EXp1Vvc
         SJf/ZxonQd8kc2DU9hnKhZdR9OvFhxlQdsFbyigAA7WqcVMPVYFxXo6uhhxcy29pSxVY
         gnSWpSYSr77Ql/dFv0bAIRY2o2kX45YJUPAcuRUxEpEs4/X+0bcYaMDs4O5n4fQpGYaa
         aRmKDBXPbu02BjXqfb7RUvRcBh4DB2Wgff4AxULFaF9dyOr/RD5TSNyZuawLVSKFOJM6
         yzpknLSiSDJsfSFU1XbH+XckYqfMKrrzU8TItx4xTHO1JzclHDpW6I1XlnyXlTsn9XeC
         j6JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EpiRhD0/dXM753VsNl/AtYQcQ93xvWFXr8f02ZbjjAg=;
        b=w9XDgYhJTHgqYQK0RJUQxGfV4NoY/ubtykn+d80gks5JNuPWzTGlMgbXli2OluuiXJ
         6FUYwbswRFE0T49t9aprtQ8sj6szIxzx2mcepip9Iz/OtWpwPrixTVSjNRvAbcJKBrUw
         MK4HuvlXcEJ4RvfnHTRyFxwa+i7ozAP+vh+AbPRL4DF+L+N2COWAyUfIiKWItL1y8Bbi
         ITy9/++zgG1HhUUgiFh8iYgJyprPHyNq6PAZFzmPnN4JAdmBM9J1JCfmGwKFIcXdIs2k
         RZUPepWaIUGrq3oX5AlgwPcMa6uOxXL79gBlH7C1S6pXn32DE2g9svJN5tSu8i0mFOUJ
         P04g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VbC94GJ4;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EpiRhD0/dXM753VsNl/AtYQcQ93xvWFXr8f02ZbjjAg=;
        b=eZXFmfpBrkGm4ovl8GVVuhwwISWEX2H7RD0eAmMmVRtip62PYXbEAAxHj3MKKf2ST6
         rY+R6+yBjVykplpXFGpdXgJy2xGltffVJy/d3lOcWyQnKeoKcwCYw72d5CpTBE6Ssrf0
         gFaPIigZ87D4pos04WuaWugTqJYUFRQ4/1OWEavFiOv3m8yIu7pWgk/NZo8NuwgTsu/z
         v9wMN3hbS2J0/vASZS6FS3VRo6HKJdbOqwmdN70IoE1TS7pLvRpPda7kxceu0hgeFsCO
         cZwOTNu3PLvEa1xaxjME/4s7mLr7POvr+pgzBjQ2D6Ot5pw+2q87mfkCfZxUPidUFq7p
         xK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EpiRhD0/dXM753VsNl/AtYQcQ93xvWFXr8f02ZbjjAg=;
        b=GgNIQWvZ4rkTZexs4LMTJSP32pu1dJxmgR4cByeXJiU37IACkIh7UP9IQJK/lW8p52
         YJ6GASBpCkq8UYSLTEsk4tt1lm+WTFr8paKK4wp7Vbi9MRVk/tQPUnGSlJVALHvfNLQs
         mwzu7qW92qtx9AR+VDfaK4hjSaP7/5JHgkDqI2t5KjS7p2NoMJTSmt22r7vTGCiOdYHW
         SqHKUNNf7A3oKjxw+9Tq6aHegDOI7Oo8pW0oDRPLQMtaI5fDz4Jum2TXrIefcq5ymNe4
         A6Pyst4XfLshYqv2UKrhEECxNGljv0F8up/AkZ6Fm2QGKuLNTp4QGGdmu+NKjYuN8Dkg
         SIew==
X-Gm-Message-State: AOAM5319QlVRucrRqlgUKEeN+RL96C+gUzQ035i65x4gP2q7t1WS2Myr
	hx8+qINH4EQQimi09YzlKkQ=
X-Google-Smtp-Source: ABdhPJzzV3/yCDZXcuTfI91+vyiQgJCKQwoLBXFri++onS0d6idHjE3abrTxLxZysAwVm1RNEeDtzg==
X-Received: by 2002:a17:90b:955:: with SMTP id dw21mr19187430pjb.28.1623680189049;
        Mon, 14 Jun 2021 07:16:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:20d4:: with SMTP id i20ls9789756plb.8.gmail; Mon, 14
 Jun 2021 07:16:28 -0700 (PDT)
X-Received: by 2002:a17:90a:3484:: with SMTP id p4mr19497408pjb.2.1623680188499;
        Mon, 14 Jun 2021 07:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623680188; cv=none;
        d=google.com; s=arc-20160816;
        b=cqsCETAZTHEjBvMR846MibRRwTZq/Q2zdB9P8YsDsC2Fy/8zgSfxw0H+m+u32hQLqI
         +ohDzRII5Q7lorql8rTtAquoKDt3kQ/UPCwr/wuAIQ5YgrpJcWBEYwYrUyabjaScvAo8
         M7vNhbCPNZB/PTnQ0OIfa3iRfuiZl8i8LVMhUVOe7cmmSM5m2Ia4Du8R7SvSfitvQ+Yo
         mJ91kHCjb58m+c/YvAS8zxCfmnJ6Ny984lMQ1xtNGgFDR/DZCC3UUxa5gpNN0ByzIZ5R
         28kE3SZxinEw/yZAesnypIT8Qxlk86haFwvUdiwLMUkStwz4nCpAMyOEmC0z/Zy1aXR0
         reZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FBYjVJRS+b/w4pnsYesBjbYpCL3m16xVdTBky4XS4D0=;
        b=rYl1UX/9cOOGbDo63HXs+pMWSKfvEhUKZNqMCcoWk+q/2AfXK3FDraNCIX45t0KIFy
         RYbdjN7iQrtbn1El6mGAabWa87mghQ+qgWJ1n86hj/d3psbm08TcNYcC0K6LxnjCQteE
         TRtu7RgzmXYNxF0+FtR41x7wj397dda4ehTGSGT0twKRB7mG+MQSJdK5RO7vFleaEbe1
         PR0jVqpo+bLOdjVsvTq591GMHf/VRWO0HaMjf81BKo3KnQowVLizKOzV8Hg59qKofnVJ
         dNmuA9fYC08w1yqCSXWQlNhlrUX6RQ9r5DNzXUXrB6rtQrgsZH5ODZWxg2PjBY48KLVc
         LhXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VbC94GJ4;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id d123si1235204pfa.2.2021.06.14.07.16.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 07:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id j11-20020a9d738b0000b02903ea3c02ded8so10952303otk.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 07:16:28 -0700 (PDT)
X-Received: by 2002:a05:6830:93:: with SMTP id a19mr13523515oto.17.1623680187940;
 Mon, 14 Jun 2021 07:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
In-Reply-To: <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 16:16:16 +0200
Message-ID: <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Bill Wendling <morbo@google.com>, Kees Cook <keescook@google.com>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andrey Konovalov <andreyknvl@gmail.com>, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VbC94GJ4;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as
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

On Mon, 14 Jun 2021 at 12:45, Peter Zijlstra <peterz@infradead.org> wrote:
[...]
> I've also been led to believe that the KCOV data format is not in fact
> dependent on which toolchain is used.

Correct, we use KCOV with both gcc and clang. Both gcc and clang emit
the same instrumentation for -fsanitize-coverage. Thus, the user-space
portion and interface is indeed identical:
https://www.kernel.org/doc/html/latest/dev-tools/kcov.html

> > > I'm thinking it might be about time to build _one_ infrastructure for
> > > that and define a kernel arc format and call it a day.
> > >
> > That may be nice, but it's a rather large request.
>
> Given GCOV just died, perhaps you can look at what KCOV does and see if
> that can be extended to do as you want. KCOV is actively used and
> we actually tripped over all the fun little noinstr bugs at the time.

There might be a subtle mismatch between coverage instrumentation for
testing/fuzzing and for profiling. (Disclaimer: I'm not too familiar
with Clang-PGO's requirements.) For example, while for testing/fuzzing
we may only require information if a code-path has been visited, for
profiling the "hotness" might be of interest. Therefore, the
user-space exported data format can make several trade-offs in
complexity.

In theory, I imagine there's a limit to how generic one could make
profiling information, because one compiler's optimizations are not
another compiler's optimizations. On the other hand, it may be doable
to collect unified profiling information for common stuff, but I guess
there's little motivation for figuring out the common ground given the
producer and consumer of the PGO data is the same compiler by design
(unlike coverage info for testing/fuzzing).

Therefore, if KCOV's exposed information does not match PGO's
requirements today, I'm not sure what realistically can be done
without turning KCOV into a monster. Because KCOV is optimized for
testing/fuzzing coverage, and I'm not sure how complex we can or want
to make it to cater to a new use-case.

My intuition is that the simpler design is to have 2 subsystems for
instrumentation-based coverage collection: one for testing/fuzzing,
and the other for profiling.

Alas, there's the problem of GCOV, which should be replaceable by KCOV
for most use cases. But it would be good to hear from a GCOV user if
there are some.

But as we learned GCOV is broken on x86 now, I see these options:

1. Remove GCOV, make KCOV the de-facto test-coverage collection
subsystem. Introduce PGO-instrumentation subsystem for profile
collection only, and make it _very_ clear that KCOV != PGO data as
hinted above. A pre-requisite is that compiler-support for PGO
instrumentation adds selective instrumentation support, likely just
making attribute no_instrument_function do the right thing.

2. Like (1) but also keep GCOV, given proper support for attribute
no_instrument_function would probably fix it (?).

3. Keep GCOV (and KCOV of course). Somehow extract PGO profiles from KCOV.

4. Somehow extract PGO profiles from GCOV, or modify kernel/gcov to do so.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNnZv7DHYaJBL7knn9P%2B50F%2BSOCvis%3D%3DUtaf-avENnVsw%40mail.gmail.com.
