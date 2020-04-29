Return-Path: <clang-built-linux+bncBDEPBSN75UNRBKH2U32QKGQENRIGPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E96D1BE592
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:45:14 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id v198sf2176389oia.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:45:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588182313; cv=pass;
        d=google.com; s=arc-20160816;
        b=UtWNpI87WnF/uJLTq4OniC1HD4df0Vwv4AEzK8gh8B+53Suf5CxSEuUTrfHchUheSF
         r6lWRG/vhfIp4bLVa2VAT8e12OOujhdWqVLPAfsoRbEIj8Fc1yqaMaMRSQGzCcpclnFC
         Wz5RdACkVgCb/vtbLrVMX86Ts+UhF3vgv2KEGiBjkgK+SLlp9e8QVoSezbxOxqSLblaJ
         pKzCZ5+rqhsWcqyZNot9VGol1rJ8VBavFvLRDAEdHgJWuSUXePcAsD/uy4Qct85Rvtur
         TsO0MYuZeiu3awjOmDUvJB0SwLRUzRX8YZd52K7xHAxcnaNwL3XU2XNVyrE+vzd4vEjt
         bKnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=uNk7mpx6Ef5HiVcshcniqMaoFqXn9++w/eylIl1rfkU=;
        b=nc6Y0g07J7e9Aq7paws1e0ccj0i9+vUYW6EZS7d1E7e1E+8wYQZr6yDIisZeCM/UzR
         6BOFIO3zGoxB28e0ZcvO1cHEC4srZGUWVozIkrZZWrQy+x4sKtPQYG20dexvesnahny/
         weLVFUnoZsQxAPKOE2OMvsianUMIQtsyBT1ACnVeqCXDchncoDEtP6AZZ5EmCGh/kuey
         VQHN1yU5Hi25XJV+gxmqO7X/1vzX4CefZ6ZrpQGicOaEoir4wA7zpR66A+naltQOCYgS
         AqfslTKvSna1psNRePgF8g3mVnBOF3iPnwAVNG+h75Uqq14R0F67TefWRey6BJm7i2m+
         0v1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JZBa6d/p";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uNk7mpx6Ef5HiVcshcniqMaoFqXn9++w/eylIl1rfkU=;
        b=DcMgroqjVvGUbo6Z1bc41mem80kPIxiVonv+vpjyhB3teyFTcMIqdyF58KKc0jelIp
         l7veoEmjCs0cPZ+F6dwWyfVgAcMI4/tLjFaxdnuRXOL/+IHr/hBaLGpT5uhdtGM+PPlK
         GVbSEUkJruTOO772ntjQssyWAZs9VaKK/HtjJ6MYUmaKuOAmonCTNYd90PgyUVgtAR98
         MY39DODKbB753NImS7/eCQbABJd4YpjRgSz1LPV3VfMtkPznMZ4M7VrSnQm3tb6yMHQI
         f6atuNn70+AlJUd6xzCJQXYlRkBWqyxaCPrVNqXChTutdIhSPQiFKGZey2sFUb3I5J8k
         /gtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uNk7mpx6Ef5HiVcshcniqMaoFqXn9++w/eylIl1rfkU=;
        b=DUEGrdnnYd0sI+9A5MHwSysJKt3Vu5SNhJiauiZEHDcz3E2cxfIA6jO8slGvhgFM3H
         f3K05f1WIKUQhUhkuNnLaASujy4Ssk5IYEd4nqPCh/MQyGSBSMzq3uGzVxRkUrmfYJ13
         8WPst6b23uFdmO0MlFhG5KGFQDmBZIOUtkqy23Lq8VbByIP+dRaU/qUtMrCB+NYxThYt
         kL9uW/JonaNsjCqtr1BhPIEtaijVmBmmNKSOJ8PeowQk+N6fs/lcXjDVDB+3bVP8Acke
         CY/D6qSvgdlA9d5NF+RJYITWBYvl5KlVb9jsZq3dAyu7J/+VF6T5sZFIsZ1p1BJ5davJ
         PICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uNk7mpx6Ef5HiVcshcniqMaoFqXn9++w/eylIl1rfkU=;
        b=FSDjKr4PhuOkd894gnwsvHsPyzXtbvhqAyrFvU2jYd8Q5LsWEmMYvK7gfoYmnpC7HC
         oXQrusZ16H6TcEg4RUUrJpmJEEMbkUxb8pDdeAlRPLfH2XECcSjZxj0kqoLylQg9YD13
         7f2x0F+m+eqV9VuFcCdAFwsaMniYr02nXiTWxwldYAy4cKuEGbGLSayvG7ES+wbzl91z
         +KHJUo8v1NECwopWN3SpEHr9vwRGHr5siJeQ2p/MzJr5OtRfx41T3HGXAAuDKQ7sr2au
         Krv5TqOTu50MsHU0zHKbseg6kNX+DuyyVY8kjiGGrxQd6k+XdyvoXSWjQsog+1x0gYsn
         SNFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuabAmUk8k7UBfPGmefn8PFd2dmaYTBIIfw7/sNf8y1wz01AB9X6
	F+Bf1CrEVGEUz15AZSqrOoc=
X-Google-Smtp-Source: APiQypJ0KpJjzUq0MF5sF9pBpbgiythZbAMwBgAFkZXNYTNDj0CkdPr8q/4HT6uGgGXb/MB31qY4Lw==
X-Received: by 2002:a9d:6d12:: with SMTP id o18mr4488222otp.370.1588182312859;
        Wed, 29 Apr 2020 10:45:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:30bc:: with SMTP id g28ls6988129ots.4.gmail; Wed,
 29 Apr 2020 10:45:12 -0700 (PDT)
X-Received: by 2002:a9d:7a98:: with SMTP id l24mr28522984otn.79.1588182312392;
        Wed, 29 Apr 2020 10:45:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588182312; cv=none;
        d=google.com; s=arc-20160816;
        b=uziC7sx/C2uNCDOis4Jtn2ZaZgmB1IKu6wHFBr643P4J6DHd2fXRsFT2BRLgeYZL89
         sL4+oc+n8YaGsr8KoWEWscFObqYjmYK8H5J40X3fe/Ol2kNdaxLDIooxGKZEeB8m7LrX
         4sVBMCp2JzEo9b1qtRsiLHvoYCbERtkFWDDtXor1EICBaU8HNhuYfCLTCH/Xs6FtGHlF
         oFbZBolcezPGZG/2jTu7cgOnjKHeW5AxO9F4/fd+MUpqraE815J/vpUBdgvtmpmo9luN
         3WsYweglpiJuWhg5MJpR+KQSMV9IuD+CmfAvrDxCtr/YJJZ2I05dE/o2bpa+N1rbJB8Q
         PIFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=pNOTE8azPZYAJ5CF5910AMNX6/C9i6fDy25Mv94mhz4=;
        b=BGpAs+DDHsXw8vJUdG9AjMt2dwkqUl9krlWPke4UQwc7EkolQGF9Uiq9ekE/OxsmhQ
         AlGgVKGPE70blCr2lCqkp8/QWgyzr/Lvl9gOwB+x0Ytm9D9sh44vNjYw9A4Gci+YIKy1
         gMVkcdoMQmBtvel0fQMwsHIxQtw6R5LI7lDZatzQ9CXBo09g/zlngMqPYJSJ7+7yoww4
         0omAThQ3I+ECMb9FFwxQyKZxR+XJFt3BoKTRk02mywaQ/HOoGXsfIoeBrJS40XEMmMHy
         /gEmvGktlmBMjldANAf8NMPhAC8tC4ODsDM8sNj1dy0mop6uJo7/pulKAo0wDJqAvrJa
         Ociw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JZBa6d/p";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id w196si156756oif.4.2020.04.29.10.45.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 10:45:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id i68so2602095qtb.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 10:45:12 -0700 (PDT)
X-Received: by 2002:ac8:189c:: with SMTP id s28mr35452140qtj.65.1588182311757;
        Wed, 29 Apr 2020 10:45:11 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id u7sm15862418qkj.51.2020.04.29.10.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 10:45:10 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id E7226409A3; Wed, 29 Apr 2020 14:45:08 -0300 (-03)
Date: Wed, 29 Apr 2020 14:45:08 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf mem2node: avoid double free related to realloc
Message-ID: <20200429174508.GC30487@kernel.org>
References: <20200320182347.87675-1-irogers@google.com>
 <CAP-5=fVM4bDJ3bTjvEfBi5oQnaev=9yZN+NwS9Rp2HoLsR0Auw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fVM4bDJ3bTjvEfBi5oQnaev=9yZN+NwS9Rp2HoLsR0Auw@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="JZBa6d/p";       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Wed, Apr 29, 2020 at 10:40:06AM -0700, Ian Rogers escreveu:
> Ping. This is missing an Acked-by:
> v2 addressed Jiri's review comments:
> https://lore.kernel.org/lkml/20200315093013.GC492969@krava/

Jiri?
 
> Thanks,
> Ian
> 
> 
> On Fri, Mar 20, 2020 at 11:23 AM Ian Rogers <irogers@google.com> wrote:
> >
> > Realloc of size zero is a free not an error, avoid this causing a double
> > free. Caught by clang's address sanitizer:
> >
> > ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
> >     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
> >     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
> >     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
> >     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
> >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> > freed by thread T0 here:
> >     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
> >     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
> >     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> >     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #7 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > previously allocated by thread T0 here:
> >     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
> >     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
> >     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
> >     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > v2: add a WARN_ON_ONCE when the free condition arises.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/mem2node.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> > index 797d86a1ab09..c84f5841c7ab 100644
> > --- a/tools/perf/util/mem2node.c
> > +++ b/tools/perf/util/mem2node.c
> > @@ -1,5 +1,6 @@
> >  #include <errno.h>
> >  #include <inttypes.h>
> > +#include <asm/bug.h>
> >  #include <linux/bitmap.h>
> >  #include <linux/kernel.h>
> >  #include <linux/zalloc.h>
> > @@ -95,7 +96,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
> >
> >         /* Cut unused entries, due to merging. */
> >         tmp_entries = realloc(entries, sizeof(*entries) * j);
> > -       if (tmp_entries)
> > +       if (tmp_entries || WARN_ON_ONCE(j == 0))
> >                 entries = tmp_entries;
> >
> >         for (i = 0; i < j; i++) {
> > --
> > 2.25.1.696.g5e7596f4ac-goog
> >

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200429174508.GC30487%40kernel.org.
