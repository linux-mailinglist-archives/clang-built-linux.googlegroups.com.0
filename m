Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMMW52DAMGQEBGIMZGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C886F3B79AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 23:05:53 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id k21-20020a05651c10b5b029017b0db01e8esf1530767ljn.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 14:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625000753; cv=pass;
        d=google.com; s=arc-20160816;
        b=O6IcU2S2JtfIEIVBaCTaiXny+2usDrr4S/Y0rmJSAgzoWxwRDcJySXscasBEqZQcNe
         1+dio5q7IYL6+tarp7B4V+rmg2bG3BJLYEgaw/9c3wmQSlPk3CJM2bXniY1JhwtfSmQv
         MrXBypyCadwmMLYFN1HolKX0P6h/+Zq5LdTprLUoxC/qmRO0vAr8y9ZHmsmHdfFgVoxm
         6tiDQm0rcIC66iU/6HLHla5UodjXddcHZQi8AIHh52uazE5yd+zqclo4BPJZlEdZGrDH
         lQvtFi0zQiUT9TvTvc4WdyQESO1h358uKOsaYzppPqnX+WJKNdkzDfBqBT6Y01ZkwQaf
         Zzzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ix2znlsQyL3IIboVTDHmj7BeJKJJIAEql4HteeYqRK0=;
        b=xWe74ngUkKz4TB1JsQSlIblWcS8/b5ONkA9wCO2GQCWmf2GG9wnvVDwIvZHE1SS2il
         x5AyeRI7Y++NNu/0oPhWRXjkKQ5UOtGzDenGG/JDKMwDmDMrkbJRpA3MF1Y3hCdwjGEJ
         5awAid3ubfy4INFy7364M53hObpoPYKMEVJ6bYQRzpt5Dtm6AfLJZfr8vS4YU+M5ASu0
         EiyoXbrbY0lOfPsarWtUXUDG/sw9HjFIduvMQG24TXrF8tYU5k54ON7h6FEOSYHwNjhN
         PqVBrElaWYhMbO3wWTn1rALYK+f9W8PZfwr2gyIP5HSPh5cJxgVgRpvfpMj6wlT99EEO
         kxQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AZ/qR6zw";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ix2znlsQyL3IIboVTDHmj7BeJKJJIAEql4HteeYqRK0=;
        b=pscxpi9i3A7Y4sycgWjY41n4pmVQtkuvZ//UMnbA4REfs49KTY+OlP4HnUNMGPGhAV
         qyl9ZSmXtdpAPyF0X//DhE/pAVQfE65wsPypIPUV0eMCjvuGOxReqHH+qAU1PbljEAJv
         IMZsnyriYc+jvCU2WBv3QkeVcyWo0Sukb27mohZ7RLhxRkjWNR9lFmWfgIjf7/HEq+2/
         8zGXxbngA3qxxmIdT4v0WVb0mrKNGfjtFWk4IQ5nuLFJE9F/xgb2rE7zFS9UeZ3Nc++m
         UkAgsiYVsAj53Mp1mj4M3qYd2A12gWAEEjj2Gcxvj6Od9nz73rIGHAmAVr8NRvyINerF
         Bg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ix2znlsQyL3IIboVTDHmj7BeJKJJIAEql4HteeYqRK0=;
        b=oIvHCGcsRMxhOXXOp37m6h/O5a788OgNHqh40xEoLjHjXZKye+CR3IgdT3euTY1FoQ
         56FGfOD+6QP6Y+8ztY4yYyXCg0OXJBBDDaAPTx07i3LNPBlSluLspxED4BhyOZrVetof
         c3Z/uYejaDxhwYkHghOjLKL/ZNe1Wd0d88W0pOLyJVFNRs6CfsCS0TXOYLAT8qZsQ2Qs
         wGwfWM2Uh6q582AJMjngHkbpYHnMiPNHsYEK7SQ0cNwr2ywOpIXHZHdccBKifzs/OBwc
         0J4y1ZMRt4NdGq5zzFDS9uD0PM9JNDdPPVJVEYtHY9JzG1Po0JRjAYNXcEfWIZMUJQWO
         Vj9g==
X-Gm-Message-State: AOAM5313fmzCx5rXzYRemYaHVSaneNA/fz/pHa9lMUNgVkMGK8xl1JZq
	0ZKKWs66JZpqxJoog7fCVtc=
X-Google-Smtp-Source: ABdhPJzKhZisuEuo2YKFrtL1R7DzwIBiHNqnPtavM2XFJ+Ua5OYIIRmXXA9j9rPjVvSsiFZlHECMkg==
X-Received: by 2002:a19:f505:: with SMTP id j5mr25309179lfb.126.1625000753388;
        Tue, 29 Jun 2021 14:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls57185lfm.2.gmail; Tue, 29 Jun
 2021 14:05:52 -0700 (PDT)
X-Received: by 2002:a05:6512:3ca8:: with SMTP id h40mr24762837lfv.302.1625000752378;
        Tue, 29 Jun 2021 14:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625000752; cv=none;
        d=google.com; s=arc-20160816;
        b=ta9G0lo1FWznUa5lI0tOvwqaoB1bGyirmLBwV/S99vqgtKdU6/pmjPUCkpC6gETJ/g
         kH1QqS9q4kgkySsHCmqdhK/vbTH9fxu7HiDD9oH40bixejacICoy9UhXevyJWMz1QwRs
         P8o2VM1qWVDWpVY/nAUqZxYbBOmx2nANOYGaDuMTq1tKJeMDhgD4k8x0ZNx8Wz8soBnS
         T2Lb2qnVJIOVa87LuWXZIbnzhcH6M9PJ3E1+foyKvzdcd/8o2ByIqJZD4RxF+4rWZz1F
         /3PEMFEOC/hDvgoNG89JUrB5tzb4TWZ3qSWpDxsyhBqs6gNSGVCEDcw8JrPEI3gDuPh8
         w27A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=at0ZjCEHdnjAbauppHO6g8ow1KqhQCXYe0Z+hJPVLYA=;
        b=mGr+JrLZOXv3XkhBAwqWzjjcYkbCBDeKrCNnT76+XbcVHgBcveX9bkNrVdx6vRGw7L
         mgIIYo+GJQh8C4mqLnJWGRteLbOrwhtPcQzzwhafwqJkE9P/G7aT5tetkkyxGoaG1qkL
         tOnjngWtKL8i5vnIH/4XEO3ElIapLOS2YngX3LeXtrcjTWGEU0ihYIx7DMEI6/o1/PgS
         I+nj54nSGjgRqxBTTMYLeD5kQa2w50NRpZ10ax6ul2txs4dYiUYAXCo2HBd46ZdZjI4k
         MZeZNzyHe1YinyltxiszJHQw8aiez1hnd3S7JQFWf74INn9bIcSm71Cq0AiZ6FOLysEo
         rGEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="AZ/qR6zw";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id b35si671801lfv.5.2021.06.29.14.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 14:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id t17so900053lfq.0
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 14:05:52 -0700 (PDT)
X-Received: by 2002:a05:6512:3e24:: with SMTP id i36mr23461870lfv.368.1625000751708;
 Tue, 29 Jun 2021 14:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <20210629131400.GA24514@C02TD0UTHF1T.local>
In-Reply-To: <20210629131400.GA24514@C02TD0UTHF1T.local>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Jun 2021 14:05:40 -0700
Message-ID: <CAKwvOd=BRD8Yrq6QvLiZq-_GL-JdDPvx6ghO4ROCo+AtisTJvw@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Bill Wendling <morbo@google.com>, Bill Wendling <wcw@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, clang-built-linux@googlegroups.com, 
	Fangrui Song <maskray@google.com>, Heiko Carstens <hca@linux.ibm.com>, 
	Jarmo Tiitto <jarmo.tiitto@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="AZ/qR6zw";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Tue, Jun 29, 2021 at 6:14 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Kees,
>
> I thought the PGO stuff was on hold given Peter had open concerns, e.g.
>
> https://lore.kernel.org/r/20210614154639.GB68749@worktop.programming.kicks-ass.net
>
> ... and there didn't seem to be a strong conclusion to the contrary.

Hi Mark,
If I could rephrase Peter's concerns in my own words to see if I
understood the intent correctly, I'd summarize the concerns as:
1. How does instrumentation act in regards to noinstr?

https://lore.kernel.org/linux-doc/20210614153545.GA68749@worktop.programming.kicks-ass.net/
https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/

2. How much of this code can be reused with GCC?

https://lore.kernel.org/linux-doc/20210614154639.GB68749@worktop.programming.kicks-ass.net/

3. Can we avoid proliferation of compiler specific code in the kernel?

https://lore.kernel.org/linux-doc/YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net/

---

Regarding point 1, I believe that was addressed by this series, which
Peter Ack'ed, and is based on work I did in LLVM based on Peter's
feedback, while collaborating with GCC developers on the semantics in
regards to inlining.  I notice you weren't explicitly cc'ed on that
thread, that's my fault and I apologize.  It wasn't intentional; once
a cc list as recommended by get_maintainer.pl gets too long, I start
to forget who was on previous threads and might be interested in
updates.

https://lore.kernel.org/lkml/YNGQV09E9xAvvppO@hirez.programming.kicks-ass.net/
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223

---

Regarding point 2, I believe I addressed that in my response.  Similar
to GCOV, we need the runtime hooks which are compiler specific in
order to capture the profiling data. Exporting such data to userspace
via sysfs can be easily shared though, as is done currently for GCOV.

https://lore.kernel.org/linux-doc/CAKwvOd=aAo72j-iE2PNE5Os8BPc0y-Zs7ZoMzd21ck+QNeboBA@mail.gmail.com/

---

Regarding point 3, I agree. There's currently 2 big places in the
kernel where we have very compiler specific code, IMO:
1. frame pointer based unwinding on 32b ARM (especially but not
limited to THUMB).
2. GCOV
This series does ask to add a third.

At the same time, there are differences between compilers that are
unlikely to converge without great need.  Compiler IR is generally not
interchangeable between compilers; the compiler runtimes (ie. symbols
typically provided by libgcc_s or compiler-rt) are (generally) tightly
coupled to their respective compilers.  Since PGO relies on the
respective compiler runtimes, we wind up with compiler specific
runtime support for this feature.  For a semi-freestanding environment
like the Linux kernel, that means duplicating the ABI for these
compiler runtime libraries, with additional code for kernel specific
synchronization, memory management, and data retrieval (sysfs).

Further, asking compiler vendors to break their existing ABIs with
their compiler runtimes to support a shared interface for profiling
data is also a hard sell. That's a major issue regarding frame pointer
based unwinding on 32b ARM as well; existing unwinders must change to
support the latest spec, yet not all code will be recompiled to match
it as the same time the unwinder support is added or updated.  Unless
the compiler runtime was statically linked, then upgrading that shared
object might break binaries when they are run next.  I'm not saying
it's impossible, but is it worth it? Do the compiler vendors agree?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DBRD8Yrq6QvLiZq-_GL-JdDPvx6ghO4ROCo%2BAtisTJvw%40mail.gmail.com.
