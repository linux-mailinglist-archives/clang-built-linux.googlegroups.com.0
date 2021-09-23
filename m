Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBYUDWKFAMGQE5LNKBDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A19415FF5
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 15:32:19 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c21-20020ac85195000000b002a540bbf1casf17550583qtn.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 06:32:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632403938; cv=pass;
        d=google.com; s=arc-20160816;
        b=V9XD/hUGljZsdCNGkidMHdKWB6P6rQdmvC+Qe7lo3vhPNXKgM8gn69SKllMSCaPQQY
         4yowNw9rzzl8GP6m8yl+RzTPRC4u9pA67iBIbthx9Xdokj+WUlOPLaRvc7Vyb7pDrVJh
         ZyA1WLFFzwY09CI6iZMWfNyTc/WcuRxNeP0Xr/tyXoJpnor1zKzXSQ5Wm7lAjfySJQUT
         /D8W6PgNRL3Xp2wrfzpc3PYttAwanT8jn5s3lr6OFMVm5cUkxNTcUeT4FiW13oux+q/w
         DbAdXv2BtO/QB+DBtiTMrG+4zB48SzG20SJiHu+tyPOdyJf8m9wFITGUlIExtYsc3o9Z
         KQ6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PQ4hVKNAzLRhkUe3PkgaNf3LT+63hQC0ekW8591T0ic=;
        b=UK0ZyFlAzutf8nKNzvSQwRjnqGYiKyiKNz8kB5zga09+xMC+Yt4HZOAyGXOCEXpcNq
         MfcLVA37ZRm8/YbbgoyNuXoZHYKKYKI9k+jsJ7+TnV9T71Ub5lkwXPRkWUf6ywA4NSPM
         /KugsCc+NT7/ksGCJseEiL6pdkb7f5iO+IahIHz01l2kSdwh2GoY2hTYGkiuzCQ0WIOR
         lAkhXJ6IppFtA0/AqTXxVbJ4y4fxHl+Gs3aGPx0cSDPWDaYVSoPLlH8JTPi4a+TXbIjs
         hGkNjhYHy9/Ild4ezN2e1bQCKGBobHny9yIg6Q7VY5gjYx8COPP/0Tx4kx04es17QzdA
         C2Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b2IdFQ9T;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PQ4hVKNAzLRhkUe3PkgaNf3LT+63hQC0ekW8591T0ic=;
        b=W5+AVsoXet+1khOto8mbpGNo0nGaMwIPwmY9+tbnVpXerv/MdVYP5/4pGBQxSC9pVX
         ZRFgF9OtrmdaQW4dyHZp16QuB49J47zokhDi+2SxaYb9JL/7TtyxPiU/7siUktPgbE3c
         Vdzz5ohPEwTQ+xNAn5f6s3xJpKX99fUsaJXIHQZrEyJdBq74BflrXfKTruKKXzrsruGE
         IVh60IDU2nQ0DrWuhy+uatjHxhjQhQX8ApIWQBujB6nA6AsSd8DQlp9+39rIPYrhMxr3
         zWbJ2GLU9ckfRE78iY37gvF1KTXFBbl7b/dJENCzrCdYqddhU0oMo3OJb6Hq6wPQl+hi
         oqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PQ4hVKNAzLRhkUe3PkgaNf3LT+63hQC0ekW8591T0ic=;
        b=ZvRRVXLORyt77NLu8b3pqy0BsaQHIDENEL4f+bWeyMDl4em4xa7rjTKXsPu/P3FHDN
         PkgX+R/TP+wgnTU+9wIsgrmg3pPF0fOTiPnat4y5VqQ9A77PQ9vT4I6cjx9dMMKxhT3t
         2HrrRHiWGuY4GmCwvgT5yUyQKv8CaKgFXMmHehYoUbEx75bAS8HXIdLorjx8jM/SDHXc
         UOZMCkpQoQLWRj4r7gXNKAdKDdCx/QDTth+GVGzSlgZe9unOmmD4J/8haX0mx/T0/UZr
         1VOxxKK/O3keVMyha64sw6hRMFtUirQ1GHpBci81lbiyI7qifqCrds9hQiuCV4VmPHQC
         T/Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vr6rJU0s4LpS9cyG8lkV9dJRqC3wCmbc5zHdWilK9JZcleblf
	L8tym2jlEgNyWxsHYOTiHyw=
X-Google-Smtp-Source: ABdhPJwTodp58NpimeR0Sg/lxHoY2jy7oow6Mghn+dm5Gm+fcQVclaNIE0JHVmSdKZhxhpTDIRCJYQ==
X-Received: by 2002:a37:f911:: with SMTP id l17mr4590921qkj.513.1632403938300;
        Thu, 23 Sep 2021 06:32:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:a9d3:: with SMTP id c19ls1964910qvb.5.gmail; Thu, 23 Sep
 2021 06:32:17 -0700 (PDT)
X-Received: by 2002:ad4:456c:: with SMTP id o12mr4593131qvu.12.1632403937785;
        Thu, 23 Sep 2021 06:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632403937; cv=none;
        d=google.com; s=arc-20160816;
        b=Gua/NCrRBQeiUvCNKR1CC7X0dX19pE9VIXgIEYBVaM2YK/r14GCY2JWRwq+4bNhphT
         6bvalPnCi2mn06k0ku/AXXEJk9H2uGajNUccPn2aQIiD2HlUfNg5BoYqmfSIMey+vj9B
         3x3saC8P28PUlXX870uDmfetNf3HkbcKU9Lm33IyNS+QoekVrFfRo86vbGR4qrzFh0uE
         wr9mUf2zCKH/TCMy6w9CqoaKbg0/8G9mKz8xEtq4w0qtSPHY5Lw+2EIEaEsaiXsu+pIa
         KNvo7QLzctYeRh04/5NvIf2JYEegGSYGpd3/mKiJoX+R2o5SNZjB5FcYG/LFFFuA/uXf
         AOpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GFu/HKzZ90iLR/PtIP404gtS9uf5i08VMJFu5xg0rxI=;
        b=MqqLuAv9gXfL0tZ4zCJumB6uw+80K3gL5RS/pXQrSe41XWxFLJtqMT23Z1xMdybF1+
         fi2F1/EM8AHDcRHsjAmHHohjtAF+SwMZsvRLuTtFuRcfzhYfaMMvlOvI3XTxUg/tZI7m
         lxIEKQ92pxcUxi0PK8egjOzjGsKJLRahIjK2zBr3dJd6rEv8GHtCYykwXDh+8DsLQIIV
         89MlEQ/oT1o9/hKUiX6kD/wyhn/tpVrG56kAE581XxnkEcB1wbQ7aq58gWo/djPlideZ
         yOF2eoyB9/5Darhy2i76939jtRflMuVJxpdAiR9bb4vnoL0WKySwrO2FHmEzxm2R/opK
         gjTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b2IdFQ9T;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q27si10135qtl.0.2021.09.23.06.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Sep 2021 06:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F05D610D1;
	Thu, 23 Sep 2021 13:32:16 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id C2E50410A1; Thu, 23 Sep 2021 10:32:13 -0300 (-03)
Date: Thu, 23 Sep 2021 10:32:13 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf test: Fix dwarf unwind for optimized builds.
Message-ID: <YUyB3WQzMIw6U77k@kernel.org>
References: <20210922173812.456348-1-irogers@google.com>
 <YUuna3dv+mgkkzqj@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YUuna3dv+mgkkzqj@krava>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=b2IdFQ9T;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Thu, Sep 23, 2021 at 12:00:11AM +0200, Jiri Olsa escreveu:
> On Wed, Sep 22, 2021 at 10:38:12AM -0700, Ian Rogers wrote:
> > To ensure the stack frames are on the stack tail calls optimizations
> > need to be inhibited. If your compiler supports an attribute use it,
> > otherwise use an asm volatile barrier.
> > 
> > The barrier fix was suggested here:
> > https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> > Tested with an optimized clang build and by forcing the asm barrier
> > route with an optimized clang build.
> > 
> > A GCC bug tracking a proper disable_tail_calls is:
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831
> > 
> > Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
> >        attribute")
> > 
> > v2. is a rebase. The original fix patch generated quite a lot of
> >     discussion over the right place for the fix:
> > https://lore.kernel.org/lkml/20201114000803.909530-1-irogers@google.com/
> >     The patch reflects my preference of it being near the use, so that
> >     future code cleanups don't break this somewhat special usage.
> 
> Acked-by: Jiri Olsa <jolsa@redhat.com>

Thanks, applied.

- Arnaldo

 
> thanks,
> jirka
> 
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
> >  1 file changed, 32 insertions(+), 7 deletions(-)
> > 
> > diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
> > index a288035eb362..c756284b3b13 100644
> > --- a/tools/perf/tests/dwarf-unwind.c
> > +++ b/tools/perf/tests/dwarf-unwind.c
> > @@ -20,6 +20,23 @@
> >  /* For bsearch. We try to unwind functions in shared object. */
> >  #include <stdlib.h>
> >  
> > +/*
> > + * The test will assert frames are on the stack but tail call optimizations lose
> > + * the frame of the caller. Clang can disable this optimization on a called
> > + * function but GCC currently (11/2020) lacks this attribute. The barrier is
> > + * used to inhibit tail calls in these cases.
> > + */
> > +#ifdef __has_attribute
> > +#if __has_attribute(disable_tail_calls)
> > +#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
> > +#define NO_TAIL_CALL_BARRIER
> > +#endif
> > +#endif
> > +#ifndef NO_TAIL_CALL_ATTRIBUTE
> > +#define NO_TAIL_CALL_ATTRIBUTE
> > +#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
> > +#endif
> > +
> >  static int mmap_handler(struct perf_tool *tool __maybe_unused,
> >  			union perf_event *event,
> >  			struct perf_sample *sample,
> > @@ -91,7 +108,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
> >  	return strcmp((const char *) symbol, funcs[idx]);
> >  }
> >  
> > -noinline int test_dwarf_unwind__thread(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
> >  {
> >  	struct perf_sample sample;
> >  	unsigned long cnt = 0;
> > @@ -122,7 +139,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
> >  
> >  static int global_unwind_retval = -INT_MAX;
> >  
> > -noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> >  {
> >  	/* Any possible value should be 'thread' */
> >  	struct thread *thread = *(struct thread **)p1;
> > @@ -141,7 +158,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> >  	return p1 - p2;
> >  }
> >  
> > -noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> >  {
> >  	struct thread *array[2] = {thread, thread};
> >  	void *fp = &bsearch;
> > @@ -160,14 +177,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> >  	return global_unwind_retval;
> >  }
> >  
> > -noinline int test_dwarf_unwind__krava_2(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct thread *thread)
> >  {
> > -	return test_dwarf_unwind__krava_3(thread);
> > +	int ret;
> > +
> > +	ret =  test_dwarf_unwind__krava_3(thread);
> > +	NO_TAIL_CALL_BARRIER;
> > +	return ret;
> >  }
> >  
> > -noinline int test_dwarf_unwind__krava_1(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct thread *thread)
> >  {
> > -	return test_dwarf_unwind__krava_2(thread);
> > +	int ret;
> > +
> > +	ret =  test_dwarf_unwind__krava_2(thread);
> > +	NO_TAIL_CALL_BARRIER;
> > +	return ret;
> >  }
> >  
> >  int test__dwarf_unwind(struct test *test __maybe_unused, int subtest __maybe_unused)
> > -- 
> > 2.33.0.464.g1972c5931b-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUyB3WQzMIw6U77k%40kernel.org.
