Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBA5MY75QKGQE7JJUL7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A32F27ADAE
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:24:36 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id o18sf585192ilm.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 05:24:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601295875; cv=pass;
        d=google.com; s=arc-20160816;
        b=xF+LFbWbHEfFBnDj6y7ZU+0+Qm2qCbD5lBidNxyMgjZpT7cnrD+7Ifwpbd+b2UtBak
         DOmQQsqCe2C0AmXkqjw0Yh21a/pPCGWHAXzYmEG/C0htD/i5MJdSMfKEHw2zRdyHT82V
         whJnNRl1EH2hLgM6dKiFlGBUqB4oxMGU7NuJI3faCiAKyrwf3c2wWOZFs8bylFwsyWd2
         2AlHVHEoiBn/STZjf3knu1NSKXM4rq+SY77qkitNa7jIMmrt0B0Tr2F1TVvDxDYqvRNu
         k/biYWKaBOuqSGM1MNEUKTVaupEJ0mkdVxk7Tc5z+dmxkSYUF5ZG2F84gFNn71KAzxwm
         BuUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2xG0XN8HMzo0nQqC2KD6LbSfvxSaSpCBBfZ/su9YBF0=;
        b=cRnRtnvlv7vQMHzvHbc5xxh7gnLuXxRxYcfRFiE5O9GGkV9o497ZP3PbO/ZfRzFlLX
         D4cRvickyVCBBOuJmvUOhyrKeRq+9DBOg9s2woQ8+hjs9kOQP4CiQkGPMk1d31q/JFPL
         5X1io3uzsVxTb6aNlFF4mrz6Z/DoNf92qXKpPgSqkRz4cyPNCAHYFTS3fUdA0k7MZQAz
         RVj/1ii7EwyYoSnGEiem/mrzKeDQ452hJLc3D+x/0CG8MtLkPsNJ8ATdJja8ArPF2m8W
         89xx5wSBebY85Cw1lCTkMyhAQ3RVfH6t4lH6yqhZOeHWXPttUd9APuB7rXfHht+Hxt+F
         rxLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="tW6aT/rO";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2xG0XN8HMzo0nQqC2KD6LbSfvxSaSpCBBfZ/su9YBF0=;
        b=i9kvHHnbjn/YmMfMgPcscBC46dbEiJJ/HPFh872waafpX/scNW5M9eb0qBV2xTyUi2
         4kVjvFcmGDRj1Izg0sjJqAqqk51UE2NjxFupEpdjADcbdIAstwbSyMcWfW6sYq0PXjaD
         PQYl+39gHPGiqLRt2c3NBVe9Xoo37Wpw49M1Q+gzMK3sheyOCelXqxU4Q2dMUtWbSkDm
         hdXrM/uwkV7AB+M6VhWkmdWhEHVHs3y+8MrBmf0Vz4xgqAqBkvgFlQBk4IAE98gTDzBp
         5NX7R9/95stJFYkSh6ofCJLagGdYK+4OXbm5Q3g8DjSCemcBFFT+VYoMKsLyNszk9t7L
         Xu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2xG0XN8HMzo0nQqC2KD6LbSfvxSaSpCBBfZ/su9YBF0=;
        b=IpWnwaJgy+GegvNfqcMmJn6l+ErKjPwRQuBhEDN/h4qsLethKTkcVVkV+BjIJr3c6F
         Lt0nf3owTMrjRSE3T9jjRrNBrThLTNxyKBNNGQ3iFdGG3oymYs6xS9NkU+YLJ3cxmU50
         E7OYfpl5upLeMZieSOTE0xoM9pwSq1fW5zLMW4Dva06V+dU+1p1TecZ/yi7AlWHBbAv6
         5449Vn+bsJxtTSguPtpBStI8lTcrwI3onp9JG0wcgr0YDnI1ZbyaIGvowGHJYvfLbL8r
         YGBK141dGlJqizya8E44MolWDNb3/ern294xIJm8oBvHk4nEW8HPYCx30c7YxjVhq3hm
         R7sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VDtnE9Okkemhd+XHxaNeL3Vv6dMaFxe554TyDJ6Yfa7/Puh9v
	JBLFBbzh4UNpIDurLDtzcgo=
X-Google-Smtp-Source: ABdhPJxHqiOpLMdu0klsTDrLoFkzCDcep1iq8xFF0tRGiWh4MYhjpuo/m5uxQFZRrtfPdP5bcmCFcg==
X-Received: by 2002:a6b:8dc7:: with SMTP id p190mr6922992iod.209.1601295875412;
        Mon, 28 Sep 2020 05:24:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f910:: with SMTP id j16ls118681iog.6.gmail; Mon, 28 Sep
 2020 05:24:35 -0700 (PDT)
X-Received: by 2002:a6b:db1a:: with SMTP id t26mr6983974ioc.152.1601295875099;
        Mon, 28 Sep 2020 05:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601295875; cv=none;
        d=google.com; s=arc-20160816;
        b=UeqWi38ipNQmGOUEuEd8fXVqzR8XkdlLVBdugioOUtrQwR0oOwyZo2+zeIfVLZFq6e
         Pxp9Xko44vhk5yc+xHlWBJZApY1tSHNCjvDsfY3TO0ujPCWX+9wQfH5uN9qQb76EZloI
         ZLNt8W4akqVmPgBDEI3zyoLm/22vuAk7aprReLVPBT5JHjMbhOakzi1c+0ShwBpQPHts
         aFhznPNTPvlVB09EKp7WH4qRaD+73gNjkML6Dpju1IeGRHoR4hjpuNxraTVWeDLgNbiE
         nGVLgV/OICZ9JKxHYQGf67EmeT5T42xgYz574Iy/RydLEbx3QeYrKPTz+QWTllIEN1bd
         bIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o2KB2wIyMPpGD8kyZABBrfltbvLpcDp1dD/IQvof59Q=;
        b=QKHoyuhWpK9PAZgH4Jjo50XZ4iRR8gbhjvQeRg8HfqpE8UZPr7XZJhmfNB+QdyTDAk
         g+U8CTgnBPYp7Q5uv8ol/G5eD/WE6bNGU/mjxcYSlMJD8/BFwv8VdLswmo5Q7SqZstWs
         Wc46d2qlYAIm9zpkyW8i5Uy/ye+TiYXNVJUbt20F8b1ftnV26iAicZgYcMJAMWigXJ42
         J7t0SFBCANCszUzKMnnPB1V0F0fDsRM7LZdyUhXxbetqHu8Z5xNV4iziORUevU9mlo6k
         CQugZccXf5X1Ahcjfew1aejKXUiKOj9dJiYB/lb6RYvG2v4RT19XRQaJtGnMF9Sqpzsq
         0XQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="tW6aT/rO";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z85si59894ilk.1.2020.09.28.05.24.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 05:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 299FD2083B;
	Mon, 28 Sep 2020 12:24:34 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 0E39C400E9; Mon, 28 Sep 2020 09:24:32 -0300 (-03)
Date: Mon, 28 Sep 2020 09:24:31 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf test: Fix msan uninitialized use.
Message-ID: <20200928122431.GD3087422@kernel.org>
References: <20200923210655.4143682-1-irogers@google.com>
 <CAKwvOd=V6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=V6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="tW6aT/rO";       spf=pass
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

Em Wed, Sep 23, 2020 at 04:37:08PM -0700, Nick Desaulniers escreveu:
> On Wed, Sep 23, 2020 at 2:07 PM 'Ian Rogers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Ensure 'st' is initialized before an error branch is taken.
> > Fixes test "67: Parse and process metrics" with LLVM msan:
> > ==6757==WARNING: MemorySanitizer: use-of-uninitialized-value
> >     #0 0x5570edae947d in rblist__exit tools/perf/util/rblist.c:114:2
> >     #1 0x5570edb1c6e8 in runtime_stat__exit tools/perf/util/stat-shadow.c:141:2
> >     #2 0x5570ed92cfae in __compute_metric tools/perf/tests/parse-metric.c:187:2
> >     #3 0x5570ed92cb74 in compute_metric tools/perf/tests/parse-metric.c:196:9
> >     #4 0x5570ed92c6d8 in test_recursion_fail tools/perf/tests/parse-metric.c:318:2
> >     #5 0x5570ed92b8c8 in test__parse_metric tools/perf/tests/parse-metric.c:356:2
> >     #6 0x5570ed8de8c1 in run_test tools/perf/tests/builtin-test.c:410:9
> >     #7 0x5570ed8ddadf in test_and_print tools/perf/tests/builtin-test.c:440:9
> >     #8 0x5570ed8dca04 in __cmd_test tools/perf/tests/builtin-test.c:661:4
> >     #9 0x5570ed8dbc07 in cmd_test tools/perf/tests/builtin-test.c:807:9
> >     #10 0x5570ed7326cc in run_builtin tools/perf/perf.c:313:11
> >     #11 0x5570ed731639 in handle_internal_command tools/perf/perf.c:365:8
> >     #12 0x5570ed7323cd in run_argv tools/perf/perf.c:409:2
> >     #13 0x5570ed731076 in main tools/perf/perf.c:539:3
> >
> > Fixes: commit f5a56570a3f2 ("perf test: Fix memory leaks in parse-metric test")
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks, applied.

- Arnaldo

 
> Orthogonal:
> The case where metricgroup__parse_groups_test() can fail in
> __compute_metric() also looks curious. Should &metric_events be passed
> to metricgroup__rblist_exit() in that case?
> 
> > ---
> >  tools/perf/tests/parse-metric.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/tests/parse-metric.c b/tools/perf/tests/parse-metric.c
> > index aea4f970fccc..7c1bde01cb50 100644
> > --- a/tools/perf/tests/parse-metric.c
> > +++ b/tools/perf/tests/parse-metric.c
> > @@ -157,6 +157,7 @@ static int __compute_metric(const char *name, struct value *vals,
> >         }
> >
> >         perf_evlist__set_maps(&evlist->core, cpus, NULL);
> > +       runtime_stat__init(&st);
> >
> >         /* Parse the metric into metric_events list. */
> >         err = metricgroup__parse_groups_test(evlist, &map, name,
> > @@ -170,7 +171,6 @@ static int __compute_metric(const char *name, struct value *vals,
> >                 goto out;
> >
> >         /* Load the runtime stats with given numbers for events. */
> > -       runtime_stat__init(&st);
> >         load_runtime_stat(&st, evlist, vals);
> >
> >         /* And execute the metric */
> > --
> > 2.28.0.681.g6f77f65b4e-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923210655.4143682-1-irogers%40google.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928122431.GD3087422%40kernel.org.
