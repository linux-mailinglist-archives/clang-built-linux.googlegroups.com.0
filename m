Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMNYV75QKGQEMMX4DNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F422764A6
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 01:37:22 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id d15sf1262918ybk.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 16:37:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600904241; cv=pass;
        d=google.com; s=arc-20160816;
        b=l8mv1ZWIraKqSq9z9hjEJ480M9bRHDkl074oaZAvhjeoRBcvWooerO3GbTkvfoGr81
         K4oA0s5Izv3w7nkrZBLW3msYFQc87kdOV3IDugG5z47ldgmyYNFvZkIs96mUXLAjsxvy
         Xu+nP77XzUvNmUWAx1EJQ4UtxHsaDNfQFGQvHkk8MTmeXpZKjpgD4CTHrf5QyI5ed9wh
         JsjR52zsFWHx2lxSc570IDiCafAat8n2bQf4/D2hw2pHiguSs+BODT175RZMpr0chYYh
         RIh97kaMGTEPHg29UQJ0glTQkTkxpy7J7rhWc2bDupi5a3ALeRYS1/CO40y+9lwxAkyF
         lfig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RS0xsIOTQ+gZnUVO84TMpghX+iLHLL79+SzLdUHIReg=;
        b=pRVEe/wwiEybc4b4DFZgAXdCZL0Y0RGTRH8eGMzD7nrgHhy1zemRd+ceR3W+zDoOw6
         f2V9oLNo18GMYP8Y7to5+q9Tz969tPe5vSK5HWP/qOLTcfAP/rv+Yjh1rxoV/p+m4+h/
         CE2j1PXJDNwDbeVmVAYwBX+WlcrY7PyiKbib0ib/8Xj88NFK34C4oe10A24edTua2ooA
         GlNoSE0S4MB4AsTvyDoGaKjKcHuzFX+o8VttfSMWfdWqR0toRrDi00AbpXDINegAtE9t
         HV6FjL+YttDY8vZGtm14YLeEVx/JBjjw+hVM1FkpqHzfBbq3tNPfEKmpQ1mdbusIT+Eq
         0kVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CJ4nRQsN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RS0xsIOTQ+gZnUVO84TMpghX+iLHLL79+SzLdUHIReg=;
        b=WJ/pV/arspCEXDwVjEk8A1e+dL8STmvV7nvaFkA03O646EDhY9rwgdVZSySgDNFQCA
         1ePSUmlnYEdc4R+4pBUyISoEJdQYAWjCHGIBJob4+Z1o67ozNWh5hBrof9/ZsRuU90zA
         fF5wliEo0nlZWrnbTfjx7O9Oc8b68pYCgi1uA1MDUGIKd6EVFDwdfpGmKzRlC3vgKsBq
         +5kF/bNfci1+RdaLfFkwBE7OkUcP55NDI+Uoczaw1/81p914B0Ydw9Aa73xVJbNIxxNx
         RyAI1lpmIwd1WTJFknyAPp+fBERpYO8MpTKTbKzMlyI42Y9qZlDtaF8yexYvhGR4O7Qy
         gYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RS0xsIOTQ+gZnUVO84TMpghX+iLHLL79+SzLdUHIReg=;
        b=ad0/D9H2/cLyyEDwGLds4WpqQwTJgOKwhMmYa7WWEs45aqpbkkThHh07edTXDvXjsB
         TmjlFDirY4fbMAM4Z6dsxcImyatlwifPmZl+C0DsXuZ+ShzaguuI844Q2Z6CWfSCf9Kb
         l7QDVs49K1yiVBm9HFrdqtFOFIF1bXE2fO1AFkQYwd+Mfn7M2KVb9/xm/ezBwgM4fugs
         CSFBXybysK1do6ri9c3TFSfq/83eWpYuG8iypwqyJZV+eHdBMvkRCw1cLeRs0A4qMo0f
         UNaZcnctVCtnJyQW6ucg9txw70HqMh94SExZYfBuA9YZbk6VJvPJNtXeYpNSoeRo6hZz
         4s4A==
X-Gm-Message-State: AOAM530GxZAmAG+Vf6OnzVc+Q+1rQAK+qvm2K4mQXJFTihhMgVHXsYrK
	m/KcLMTrdO8TLNVS4w8Y/LU=
X-Google-Smtp-Source: ABdhPJzd/eYOurZG4kKoz0GwphZjoacSD4BM53BrOLNn6H1LE4Of40lUdphXtkQF+tZRhmjIekUiWA==
X-Received: by 2002:a25:d8b:: with SMTP id 133mr3418895ybn.294.1600904241210;
        Wed, 23 Sep 2020 16:37:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6d05:: with SMTP id i5ls782180ybc.1.gmail; Wed, 23 Sep
 2020 16:37:20 -0700 (PDT)
X-Received: by 2002:a25:e710:: with SMTP id e16mr3536749ybh.358.1600904240721;
        Wed, 23 Sep 2020 16:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600904240; cv=none;
        d=google.com; s=arc-20160816;
        b=hZQEYKXGXZeENMyRgRwkAcvVaV5ItINcYnqXvAwdZoH2bDdOImS3AlA4lUiAn04Lhb
         6Ki14bKOWFONzgpPmZL9+BDWLj0w2fKaSjrmLh3WsJNEBHog0ZyxfY+tVUtHIgl4/5jH
         C4msgJ0+SVbZKRPGWWuL50DqzMOm06EA1aQypgWSujjp6ght1A3hYBEIhdJ3GpZyHv3i
         2UyByOA6vlH8BQOKhGt4vZDiKxET28pcR0NKrUQ2iBhqbvhd7Gbs/Q4PfAPh4Z/i1FzI
         vYltlQPNfl8ZC7cjN40csElL0cSSbp42Ooqf6akh4/sJveQRfPh5cvTwIqSb6pU4bF7u
         eJug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3kSPJ43fJuwiBvEdY81hpG9H6DNbf9OCk668utuncwk=;
        b=q1enIBlOZq61UbXY4GLVsCQdDGTsfpTB2U6xm7y+jpmo2vpPSxoL4ra9V5TRH0vOwQ
         n7x0Qxg09aCmutOYjTu3K67tQny3mA5CSc1v0/mj56fo0oKX2W8Ru1p3yqV1Kxl3K1QF
         QprlOJ7A9YgKcfBdl8qhhdWLJK7k/NiqzwpaW9CVvj3uUx758GpshMxWQz0XZMTXf+Ld
         JicJJTpm/A8mDOJHH7ucL012OKaUcre9ozhPy29YADJkRjc0+u2cjkDq5ER2p/Id2Sbn
         HjG+7p10ap9+9IT9ilC+sNNbs0o7CioK1Myp8RggQCWNp9dCAbID7IEKXkmNOzDDNMQd
         OX/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CJ4nRQsN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s69si159798ybc.4.2020.09.23.16.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 16:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s19so601180plp.3
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 16:37:20 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr1504260pjb.32.1600904239727;
 Wed, 23 Sep 2020 16:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200923210655.4143682-1-irogers@google.com>
In-Reply-To: <20200923210655.4143682-1-irogers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 16:37:08 -0700
Message-ID: <CAKwvOd=V6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix msan uninitialized use.
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CJ4nRQsN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Wed, Sep 23, 2020 at 2:07 PM 'Ian Rogers' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Ensure 'st' is initialized before an error branch is taken.
> Fixes test "67: Parse and process metrics" with LLVM msan:
> ==6757==WARNING: MemorySanitizer: use-of-uninitialized-value
>     #0 0x5570edae947d in rblist__exit tools/perf/util/rblist.c:114:2
>     #1 0x5570edb1c6e8 in runtime_stat__exit tools/perf/util/stat-shadow.c:141:2
>     #2 0x5570ed92cfae in __compute_metric tools/perf/tests/parse-metric.c:187:2
>     #3 0x5570ed92cb74 in compute_metric tools/perf/tests/parse-metric.c:196:9
>     #4 0x5570ed92c6d8 in test_recursion_fail tools/perf/tests/parse-metric.c:318:2
>     #5 0x5570ed92b8c8 in test__parse_metric tools/perf/tests/parse-metric.c:356:2
>     #6 0x5570ed8de8c1 in run_test tools/perf/tests/builtin-test.c:410:9
>     #7 0x5570ed8ddadf in test_and_print tools/perf/tests/builtin-test.c:440:9
>     #8 0x5570ed8dca04 in __cmd_test tools/perf/tests/builtin-test.c:661:4
>     #9 0x5570ed8dbc07 in cmd_test tools/perf/tests/builtin-test.c:807:9
>     #10 0x5570ed7326cc in run_builtin tools/perf/perf.c:313:11
>     #11 0x5570ed731639 in handle_internal_command tools/perf/perf.c:365:8
>     #12 0x5570ed7323cd in run_argv tools/perf/perf.c:409:2
>     #13 0x5570ed731076 in main tools/perf/perf.c:539:3
>
> Fixes: commit f5a56570a3f2 ("perf test: Fix memory leaks in parse-metric test")
> Signed-off-by: Ian Rogers <irogers@google.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Orthogonal:
The case where metricgroup__parse_groups_test() can fail in
__compute_metric() also looks curious. Should &metric_events be passed
to metricgroup__rblist_exit() in that case?

> ---
>  tools/perf/tests/parse-metric.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/tests/parse-metric.c b/tools/perf/tests/parse-metric.c
> index aea4f970fccc..7c1bde01cb50 100644
> --- a/tools/perf/tests/parse-metric.c
> +++ b/tools/perf/tests/parse-metric.c
> @@ -157,6 +157,7 @@ static int __compute_metric(const char *name, struct value *vals,
>         }
>
>         perf_evlist__set_maps(&evlist->core, cpus, NULL);
> +       runtime_stat__init(&st);
>
>         /* Parse the metric into metric_events list. */
>         err = metricgroup__parse_groups_test(evlist, &map, name,
> @@ -170,7 +171,6 @@ static int __compute_metric(const char *name, struct value *vals,
>                 goto out;
>
>         /* Load the runtime stats with given numbers for events. */
> -       runtime_stat__init(&st);
>         load_runtime_stat(&st, evlist, vals);
>
>         /* And execute the metric */
> --
> 2.28.0.681.g6f77f65b4e-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923210655.4143682-1-irogers%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DV6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g%40mail.gmail.com.
