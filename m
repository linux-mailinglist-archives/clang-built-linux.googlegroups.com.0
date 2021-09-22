Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB5OOV2FAMGQEHCRDILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB01415328
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 00:00:23 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id a16-20020a63d410000000b00268ebc7f4fasf2539970pgh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 15:00:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632348022; cv=pass;
        d=google.com; s=arc-20160816;
        b=ein6Oo5yxN2K4RfwaQpyNCpoRV29yMxPuwH0lalqYhyUo4FlPtNbnSNWc7LyDGQN4s
         wymfhvUuGgY5y2315IjDuLfAVj6Tss+3XytR15efOynnn0pqiVRCXVQbyZ66XTS3e5ea
         /Oq8z+gPOy7Ai1IzcVuU4m0OTru6uTF8ZftVcsQjhSd4kSP+RW4KeXvGhODlF7zQHqjD
         /NqLKH6FwdfCc+B4WRtxV+2BopCMAeMh+PncpeQcMyTb/nTWbEX14knM3bj30SnzhwIi
         Z508PujUKnDArCRUjJkastaN1Q8TZmI5SWypbAv2Rvz8Oss+QZs3jlvxFFoeKPbXdDJo
         p6Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kIs5SrVWweR+511eRSpYdv9/AG37FKz+uxR0tLNnMY0=;
        b=S2DUqPSBvjtDJ2d6FH5+77e+C8C0BtUUySoYjy5imshXPQYvWbi3VxIxsTSvfAC74L
         A3uVaVTZQ1Q4Kd1NeRmzUm/+SVX4Vd5bip1//Bf0cAUnSI43DOKAKZbJNGkpsl94HuA9
         gKCM2V2ohfRX41cg3X1kSv3xw/JNQh+FKtZNOv6GyE5IW27cMO38hpJIfrrzc9HyRcPt
         1MWU/IQ+N8mq7xX5Sh2UGLGGnlE+hd5vvOm5kvxvQK/HaNIezC4+Jo8Z5rtpqUOfFfCw
         zswYP7KjLJ5ta5+dYsAeaPQasEOGa5gTOuoOb3rjXUM89f0C8tf9wXmoSo4np/fhrCSO
         jtCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="U4ift/Em";
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kIs5SrVWweR+511eRSpYdv9/AG37FKz+uxR0tLNnMY0=;
        b=IKkKn5sad44XN2DzMF8FsiKrPh5NdqH+NaDna+ujDOzxF5PqlVXHQAOarCmJpDPVuq
         IgvE1Mk9cFonrO0vDBPUBvwpbPfJZfVZVNogZVN08zeB615C5PsH4ckisiQN1acxA2GA
         Oiwr2LHlz/76cvOCz0FKsOqYoSsMM36hlfebetrqi4ZLF5MerNXcHyjY6PjOuchcx5uJ
         qI2bL22SXp6gQOkGjRl3tRejy3bscN1b3NKXpYhryILVK34gGqZXNN0HziiYMhlzOjGg
         3rE8dnUwpx3/w8XZa02SV4yj5ZzW1ZFGLqmnNw9Q3FSzFNzvU2rpHMDNHtziUnmmFq0q
         nYBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kIs5SrVWweR+511eRSpYdv9/AG37FKz+uxR0tLNnMY0=;
        b=XkSTWiAdk456Zifpesgs0g9cpuYanNu192gs8SoLFhSBYVZ7O9zUOt69SXNFlJCzHZ
         WTMGEs5tj8Qsq5SvRp+kpt2brZwiS8g6CWFF7YYHQXQNtMlyNHnMmy8Z4e6tVPVouaAC
         wIT/L7bEYmghh7R+3FBVb8sHXu9KvAtG2eragSxzWZ7YLA8fdwlcprTkJVBcJ8HPBNlH
         WsbCZsUGdtdEtbEjVkHfYyDRc6cRGgPBze30eD/rhsg7+Q5sMPD1YjMJtpJMnIWxc8sd
         3+glMzMyN6UHPQFQqQKMkL7nMDpoAZqu0IuNMtC0OjpbJs5YE1P6C+4R15Ent+8mdwnq
         wI1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ikyR7HQFI4Qxh+aiGht3n9RMXANgrFl0D6Gx6CUtOwbiANuCJ
	fj5BYrEKxQOqAm6y6n7cN+8=
X-Google-Smtp-Source: ABdhPJxaEjUkM5p47t/0kkVu6vpXYeNnbNyOhfutrgnDxx9ZDuCbJ+jp23Rx2aeYwzB7ATqiUaiyNg==
X-Received: by 2002:a17:90a:8912:: with SMTP id u18mr1355730pjn.69.1632348022075;
        Wed, 22 Sep 2021 15:00:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5b52:: with SMTP id l18ls1522295pgm.1.gmail; Wed, 22 Sep
 2021 15:00:19 -0700 (PDT)
X-Received: by 2002:a63:6981:: with SMTP id e123mr1018854pgc.419.1632348019359;
        Wed, 22 Sep 2021 15:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632348019; cv=none;
        d=google.com; s=arc-20160816;
        b=Dpe0ckfRGDnCMQfuOnLvOWeJv60wLbp+0Ysw86JBLtIlhjW6OrpLpwBSDKpIZU43Ke
         4EFtkHPnBEv7Bs49ZZMQUsD9eozhG7dxC+YlEzD1Lf8j7CeuU8JdWlYqI2r82xClHdCs
         hBvNlePq6/Ruu/v4Or7ORYuxqzmG+1HwmrgJ7mPPwJf099SEJDWFloDP4lfh+aSOuEGU
         uBvy/twDuHM0oaIEHHw5p1vsYs2QK8DK9PbEuq1CUgIKGRNHv0fkYv0lAt3ugdEA9psW
         PP08IP4Kop3bLuZn7VtGJhgS+DIILAIDbd0GsEvtdFtbJnTq6jMVaBS3oYW+ITWhCJTG
         SIdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MSufQgcqxvHFrHlhUjYOqfQRYT76lvHJVVdac9iuZ2k=;
        b=nbyJf5mRJsgqYoB7yL/s4lNemJhy52yy42+FpWwlRKGnFdYK99ZVrpywOrMz/n1OFA
         CW2GvUApFqpsTWpxmgE0aK/ZuqzitDfacgME6XTMalUCc/CHLZLFf+hO4farbRS18sjY
         +IxBKySVQyhn9aPeXUpR4dj9rGaF+26LONAGtXBeBhAF+CogsrD/MbrmgsK92qgwnYTo
         5OM01CRKkKzN3yzv3k/byuxsnw1bFKSmf7a+CiUFDu6WVXkKJHAVZSvFKu/bzsjBAOiw
         eoIXkA1D8nxnFW4xxzXsyJRYxTMF1jeV9X8fNKNDjtfxD32QYIgQNl9Z/jmrsd7regu7
         lzLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="U4ift/Em";
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r14si356109pgv.3.2021.09.22.15.00.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Sep 2021 15:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-28mOCb65NsiHqxkyu8pNMg-1; Wed, 22 Sep 2021 18:00:15 -0400
X-MC-Unique: 28mOCb65NsiHqxkyu8pNMg-1
Received: by mail-wr1-f69.google.com with SMTP id r15-20020adfce8f000000b0015df1098ccbso3436632wrn.4
        for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 15:00:15 -0700 (PDT)
X-Received: by 2002:a1c:7714:: with SMTP id t20mr12669549wmi.163.1632348014293;
        Wed, 22 Sep 2021 15:00:14 -0700 (PDT)
X-Received: by 2002:a1c:7714:: with SMTP id t20mr12669531wmi.163.1632348014097;
        Wed, 22 Sep 2021 15:00:14 -0700 (PDT)
Received: from krava ([83.240.63.48])
        by smtp.gmail.com with ESMTPSA id c7sm3462958wmq.13.2021.09.22.15.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 15:00:13 -0700 (PDT)
Date: Thu, 23 Sep 2021 00:00:11 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf test: Fix dwarf unwind for optimized builds.
Message-ID: <YUuna3dv+mgkkzqj@krava>
References: <20210922173812.456348-1-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20210922173812.456348-1-irogers@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="U4ift/Em";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Sep 22, 2021 at 10:38:12AM -0700, Ian Rogers wrote:
> To ensure the stack frames are on the stack tail calls optimizations
> need to be inhibited. If your compiler supports an attribute use it,
> otherwise use an asm volatile barrier.
> 
> The barrier fix was suggested here:
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> Tested with an optimized clang build and by forcing the asm barrier
> route with an optimized clang build.
> 
> A GCC bug tracking a proper disable_tail_calls is:
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831
> 
> Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
>        attribute")
> 
> v2. is a rebase. The original fix patch generated quite a lot of
>     discussion over the right place for the fix:
> https://lore.kernel.org/lkml/20201114000803.909530-1-irogers@google.com/
>     The patch reflects my preference of it being near the use, so that
>     future code cleanups don't break this somewhat special usage.

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 7 deletions(-)
> 
> diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
> index a288035eb362..c756284b3b13 100644
> --- a/tools/perf/tests/dwarf-unwind.c
> +++ b/tools/perf/tests/dwarf-unwind.c
> @@ -20,6 +20,23 @@
>  /* For bsearch. We try to unwind functions in shared object. */
>  #include <stdlib.h>
>  
> +/*
> + * The test will assert frames are on the stack but tail call optimizations lose
> + * the frame of the caller. Clang can disable this optimization on a called
> + * function but GCC currently (11/2020) lacks this attribute. The barrier is
> + * used to inhibit tail calls in these cases.
> + */
> +#ifdef __has_attribute
> +#if __has_attribute(disable_tail_calls)
> +#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
> +#define NO_TAIL_CALL_BARRIER
> +#endif
> +#endif
> +#ifndef NO_TAIL_CALL_ATTRIBUTE
> +#define NO_TAIL_CALL_ATTRIBUTE
> +#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
> +#endif
> +
>  static int mmap_handler(struct perf_tool *tool __maybe_unused,
>  			union perf_event *event,
>  			struct perf_sample *sample,
> @@ -91,7 +108,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
>  	return strcmp((const char *) symbol, funcs[idx]);
>  }
>  
> -noinline int test_dwarf_unwind__thread(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
>  {
>  	struct perf_sample sample;
>  	unsigned long cnt = 0;
> @@ -122,7 +139,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
>  
>  static int global_unwind_retval = -INT_MAX;
>  
> -noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
>  {
>  	/* Any possible value should be 'thread' */
>  	struct thread *thread = *(struct thread **)p1;
> @@ -141,7 +158,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
>  	return p1 - p2;
>  }
>  
> -noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
>  {
>  	struct thread *array[2] = {thread, thread};
>  	void *fp = &bsearch;
> @@ -160,14 +177,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
>  	return global_unwind_retval;
>  }
>  
> -noinline int test_dwarf_unwind__krava_2(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct thread *thread)
>  {
> -	return test_dwarf_unwind__krava_3(thread);
> +	int ret;
> +
> +	ret =  test_dwarf_unwind__krava_3(thread);
> +	NO_TAIL_CALL_BARRIER;
> +	return ret;
>  }
>  
> -noinline int test_dwarf_unwind__krava_1(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct thread *thread)
>  {
> -	return test_dwarf_unwind__krava_2(thread);
> +	int ret;
> +
> +	ret =  test_dwarf_unwind__krava_2(thread);
> +	NO_TAIL_CALL_BARRIER;
> +	return ret;
>  }
>  
>  int test__dwarf_unwind(struct test *test __maybe_unused, int subtest __maybe_unused)
> -- 
> 2.33.0.464.g1972c5931b-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUuna3dv%2Bmgkkzqj%40krava.
