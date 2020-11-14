Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBSUNYH6QKGQEKZXMZ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3E62B30E7
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 22:06:19 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id dp12sf2450190qvb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 13:06:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605387978; cv=pass;
        d=google.com; s=arc-20160816;
        b=bliqBqTKMkB9e5J8IcYVqmVTRoY0TPUYSZeEvVS0kFCLTxOiQmNNsRpvWs5GRRJ0iV
         AIiPNsUXzW35vLUU0XDjJihyqYYrNNB4ReYZ51BQzyyA0RLNDfMwgiSaedIjNceg65Iv
         EjgkcThknVyoqcShv6M2yGovONRa1YB/+OXJY/IeeRdJnKXki36a7IdwiurSv7MyO8/F
         41pmndOayqxTii4jZvGMXnWj2RYa8p60w6XRJkuC6OvYSf6jC92efy8b1cv3clJS7Oy9
         757MHFUPM1EFp78+Q3X9b8MU0PyrTHYdkwZED0A3og6wJ19yRufvu0TThcF2IXFzmljf
         bm4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mCnI8tD0H39FsLgJHelU0kygjZxxvVXMWCAlPASt92w=;
        b=lo4yTqcv3nuPHqQKUllJoaBFQdW4v/kdxvh4wKt/k/3NKE2MEz8WyCqq9O2ZGEfpEZ
         GIi/wF+1T0PltYu6QkCh6nPtnZ4aJBk6HOD1h6HZjRkt9i52gjcMHDV8V+P+P6WZSz1a
         /iSxAO+v5Q0HQiGmPCZs83ZrqBUWFxo7h4u24haGxCXD0hHsJOjq3BDRNRPKk+v8FS4/
         /emSpbjSx76ey8kbzXKLMZg9MbC7KvyLouL1zO9x8Y3oZ/mqQyXYkvURm8GAJoCuzjho
         a1wSvr0FnHrP4vIHwldKFTXVlSDRJ2AWDevV6JMkMpbUCYQeV3uTpaKXwrLFOvFbnUGN
         AycA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i5eoqHnS;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mCnI8tD0H39FsLgJHelU0kygjZxxvVXMWCAlPASt92w=;
        b=CYuNY7TZ7Datvxlet88Mc2aCsvTSQ0WT3SrLkqWkvOgBR6JGxuTrjHw3tI0zRKvQoU
         qVRowp2RLeP/1HmFnCMlR6qi1/T+0Srb50UisoY2kGBNk9dX29LoiAF95OH6HTJOu3gV
         QUmHqhAn9nv1mMZeoFg+qzAEn0PLuSaMCo0xubaZPmzi/r1TosxnP81S1EpQtlquDQ8f
         tUXJnnFJpQ0RAggC/ZbeSYz0O4tj83RLJJVxoMnkFw5KHX3MqKE+xup4E/9AUd9gxy9k
         kLkWT+QNgSmp1FJ7PrJxJD1UjEsQPRo3Amj75wsWSCtfas7ND9LlN0WazOnTJffET6bo
         9d4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mCnI8tD0H39FsLgJHelU0kygjZxxvVXMWCAlPASt92w=;
        b=TAh6UtmnsSwXqGG9JzkfXAwa4QTvAUtD2Ce2Pci1me33zPkhbxGR1sIDKlP+1WhxIm
         4+FJE7EV+alHN21CDfWcVDX2BfzUvex/lPIqTTgFGVRiwxw+YugIVoHPNy+zPf/iG83L
         ls5O97ghqb+cISIjEDcauHHLYcH5HjOIW35ElnvutfjM5scFaMcZfe4yVQcmBw/jdf6y
         BEW3EbQ15BW6zdoNUeUqcIinxMP2y8NXfZqtlCS2AunNpHDBZgmE7mzj/fX0Mh5N9vGt
         v8grzaE2tcrYtrb6e+fFpvWgjELH0VxfeZcko/yzTyK3Us38tNuN8WnvJ181LVA47IS6
         N+Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uldvIDBpo0zRNfL3sMv8uWCibEjnFcrPjMreN2C9xsH1Tno+B
	UPIgYhdhZWj4XhN9kxiO1x4=
X-Google-Smtp-Source: ABdhPJxJr+zlXQdWawiPlBf8+1i1xxR6IFrDjGrVfQRw74zUQZfq71vIS+x8lTa9wRVNtewwRsD4qg==
X-Received: by 2002:a37:af81:: with SMTP id y123mr8041975qke.50.1605387978394;
        Sat, 14 Nov 2020 13:06:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f74d:: with SMTP id e13ls2359000qvo.3.gmail; Sat, 14 Nov
 2020 13:06:17 -0800 (PST)
X-Received: by 2002:a0c:82c4:: with SMTP id i62mr8669017qva.28.1605387977832;
        Sat, 14 Nov 2020 13:06:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605387977; cv=none;
        d=google.com; s=arc-20160816;
        b=vwHAHdUaEs7kNygdAhBJxPEIrSCk8pYr58I6ZtniDMwSgZqskGjIkW9n2HvEMP+Vm/
         Yrkah8ujeG/fiAPqy+xuTpC1ee+hXh4XBEvcOwS34468GHr/l97VX9v/Y0qFaZtMun6g
         TlBc0Tw6qgdiafQaE0w6Mjs9n9acOWFGceTDJd6EQPZij/wMEioFLbUFFnh85DnYUZ0A
         jv8BcETj+7J7O4ZlKFP1BkyEW5GpmxXkbQSy65xfWGt5xoOLZtJYTZ4QFCyWYW2b3qKl
         YAC7oQW2Bgth1Nr5E96Q1w0d5QFDBOuKg3bFr8d4pKuYRyIOSejv7uOuKKu5a8YNOV7x
         o1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iDqPoFmTP4ds0d2GMoMz+XMW5r3umHX/Yp3qFx9m9x0=;
        b=rtiJSpE1oe4xy5n//wH56CExAzF0D+o87aBVYwJAA6xY9lWjwIp31B9pxA2T2BFd8K
         5jLBPkXEsIeueIlcpb24x7pI+M+MF1kXWsonP3P+o0138Nf/yaXclfOCJ18qk/vUMQzM
         cMENsKAXTdk/0A+v4wI9xHhS6L5GMWQXtUtt6QONTTGgFx7KCIZWya9jRuyMv13jrwRp
         wq5TvOLYl0ZQRgAut7cAub8moBBN7mJs2i7DGUysC0lHbmUWM8tJTPu4ubyFIjWRxDEH
         w4zjMeBkMSrmzcwyzk/PH9rSA6b+97djhQWrXfq+fn3L25slMhJ9cdv3KmJpisJ3apb4
         +hkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i5eoqHnS;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x21si586094qtx.1.2020.11.14.13.06.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 13:06:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-Yi7BwOQyMGafghng6LQrYA-1; Sat, 14 Nov 2020 16:06:15 -0500
X-MC-Unique: Yi7BwOQyMGafghng6LQrYA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E0A3804024;
	Sat, 14 Nov 2020 21:06:13 +0000 (UTC)
Received: from krava (unknown [10.40.192.25])
	by smtp.corp.redhat.com (Postfix) with SMTP id E1CAD6B8D4;
	Sat, 14 Nov 2020 21:06:10 +0000 (UTC)
Date: Sat, 14 Nov 2020 22:06:09 +0100
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
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
Message-ID: <20201114210609.GC903902@krava>
References: <20201114000803.909530-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201114000803.909530-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=i5eoqHnS;
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

On Fri, Nov 13, 2020 at 04:08:03PM -0800, Ian Rogers wrote:
> To ensure the stack frames are on the stack tail calls optimizations
> need to be inhibited. If your compiler supports an attribute use it,
> otherwise use an asm volatile barrier.
> 
> The barrier fix was suggested here:
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> 
> Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
>        attribute")

missing SOB

LGTM and test is passing for me ;-)

Tested-by: Jiri Olsa <jolsa@redhat.com>

jirka

> ---
>  tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 7 deletions(-)
> 
> diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
> index 83638097c3bc..c8ce86bceea8 100644
> --- a/tools/perf/tests/dwarf-unwind.c
> +++ b/tools/perf/tests/dwarf-unwind.c
> @@ -24,6 +24,23 @@
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
> @@ -95,7 +112,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
>  	return strcmp((const char *) symbol, funcs[idx]);
>  }
>  
> -noinline int test_dwarf_unwind__thread(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
>  {
>  	struct perf_sample sample;
>  	unsigned long cnt = 0;
> @@ -126,7 +143,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
>  
>  static int global_unwind_retval = -INT_MAX;
>  
> -noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
>  {
>  	/* Any possible value should be 'thread' */
>  	struct thread *thread = *(struct thread **)p1;
> @@ -145,7 +162,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
>  	return p1 - p2;
>  }
>  
> -noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
>  {
>  	struct thread *array[2] = {thread, thread};
>  	void *fp = &bsearch;
> @@ -164,14 +181,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
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
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114210609.GC903902%40krava.
