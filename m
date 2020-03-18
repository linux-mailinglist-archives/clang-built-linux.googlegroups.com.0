Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBWHPY7ZQKGQERWS4GWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C2F18994D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:28:42 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id w3sf14628564plz.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 03:28:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584527321; cv=pass;
        d=google.com; s=arc-20160816;
        b=X8Y86ePp67GkhKWuKc6DsLlblLz00/3YiqmX9zmkJD3amxLklDv6O7v1LaCxossie8
         xL0WNmzXoUMiB95gxEywLnsBz1u5tq+IvROb5h/bBG9F2p6iegyZCp3ItCEzHTiCulMg
         0A/lw6l7lkDWf4GbTcieuiQwyQllrt8NY9/Fy7j/hOM4ApStYLMV8592xn4qCNwQvUCf
         NuMsD1rN0bTRmdxzmOJZWO42EuxNur3xX8vMaGIVjYalFBW4N/GDWtJIKuq839GhNpc9
         SlfQWlD6+1LTsqK18cmfIeEhaK+N+9SmPTNOCD2IJ/Yx35YJIpG3LPSwJKyRwcNkpNxF
         Z4zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0AWgzENxBmxNh+UY9j+PDHlvco/XMXMj1pmb8htlbvw=;
        b=ZkiLf7zwdwOaK3VkEnTbbeWEQa5l/3e0JYanrcNAir7B7Z/XrhxNNPf9bCYDpUxBor
         0kFQM8q18bu4nmsUgCF9QpCcSz8jjCu5z9pH23SK49SwOBfSTfeqPdVeD7X0uAXVqIFk
         8m6DJO8cI9eeqag9QDJza8GTcRxyUhdfkGRyY9auOK/7K7YKmOCgfxPLSnQu9RweSw8V
         4WSwDZxzoIUaLx3hcYZOI5Nmpnr43Xz5FxArEfJjVCEy6GrssBfqwbUlfOfggZBp7/Uy
         fPMIrQfb4HKzDkg/IbMKgZZr5KpTKOSnCGSQbYJoYqU8K7iF2ME0KVTno2R0yY+0EPNO
         DMPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YwI3ICDB;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0AWgzENxBmxNh+UY9j+PDHlvco/XMXMj1pmb8htlbvw=;
        b=Q/qyL5v+4OPDlSB9zAM1RUDY3ZlXMhB/Ed4YcScOj+0gRJLZzop7NGRMSk6lfAVg28
         rvI15apbKL5l3cp2M1idPejRD63UqWkmsd7LRpQkDCUYK4lU0SHRnUra0cpWMQBiiiJg
         EwsCYmMc8mjXOfSawKz1Sql5kmltRCqbRNT8pgQaITsLpQeVfanSpQ2XMt4Gh0LgHGKi
         suESOSpU9HY/+h8wFV07EupVX+5iIXn5vpfj+HoHepZKwRt3eDmW9XSqlj5k6DPX03GS
         fQsJZBeAXyDwWIbPysYuwO6WjoSz2gbPR01W8hkod5XoBRKhuE4bL+yRRDZxzt81p04g
         R2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0AWgzENxBmxNh+UY9j+PDHlvco/XMXMj1pmb8htlbvw=;
        b=B8jAJrvbTv1BFBX46yqFqLVt96X417H1oac49657w9QfMEhqAdhyXY+njaqKCOaiOS
         vQ9EDuotHd6Q7zc7f+yCOOxlr88HLTO19bnuNg+YL3lo/ENOmvmuM0IZ6RRNPep5H1RK
         uxf3G9zpCj2JpzuJOXfqtAUf0XslDG1/P77NO7dC2ACUQUoWAWjJwBeHo453S9AXlThc
         j408eizjoYbf1ncmQ/jV+ZmNJcE+pyMyQRHKYTAG5zxJYEnHlOela6LDs1uGJJlijlQH
         9OiJ2crw3ikljl80GbxyuoGzXY6t9kHiYA2qe0bKTYgFKspeGaYVS1hpBWxT6ncZZs5c
         hwcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ13oJdANuByDiCItd4tEV6g5dWrEzy6q2WomhjFPD3p/6hGPDrM
	tLajVy/kAwoi5evBU8Lhhzw=
X-Google-Smtp-Source: ADFU+vtXsULGmOkikaWlkAiD5/OR2owMWeXu3x+yON2GkriO52rAkaRd+plzHGvGo83ke3LDQ8Lnog==
X-Received: by 2002:a17:90a:2ec7:: with SMTP id h7mr4031856pjs.107.1584527320691;
        Wed, 18 Mar 2020 03:28:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls1937105pjo.2.canary-gmail;
 Wed, 18 Mar 2020 03:28:40 -0700 (PDT)
X-Received: by 2002:a17:902:8bc3:: with SMTP id r3mr3209084plo.220.1584527319999;
        Wed, 18 Mar 2020 03:28:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584527319; cv=none;
        d=google.com; s=arc-20160816;
        b=omSd/5Lvp0Pfy4INMkC4esn5GBoMmrL0l5aACRpezR/B8gCTeZHfGviy4cSpBasJQd
         OCB8umWzmnBmyXgyxOMguR3gu5nAbygmYtBrQrafOVkTP+d2VY1ZtA5P6M/4yya72xmI
         nZsc+tZJ8CvHnGoweWaJRPP0kF9/B+ZNADmxS1P+nvb0UmJOfiW9tZ2GUHPtkF1XZfU9
         2FEu/iy593uYPFj05GZc6CN3dQiL/tWWcqkj7660PKvXFGra4SteQqzs/00UU363kdc8
         xRVFRddD+rhugFCo0NTPeDe2BU8u53KHIr/nxBY/h9JFwLf7xovrFfcZ3YiPj4hrM5N3
         4Chg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PGKLclenbI39quMEPl05MorFbpQyKzJYu66lEEU5Ra4=;
        b=n5LH6DWU6lvWz/EUjfiXaA3ikZ2XNew+qaj5L+6gpwzlO4PNCzA/6THF3vl19KDcr/
         cmV3jmztnG82c9Nrq1+qit82VXMMt+EUGUfYCJY2M65FkzPC5kjBdvBbadsLPr2Fj1+B
         ZMFkaW9mDWxvqR2j0pGG8dTKu0Esde22MIta2LCgkGTOEK11wMyvtlUm1ad5gETNToJY
         uE9aHqkaJljQDSRT3llFI2FpCVGBZggaEjni/KnC9QVitLAER3FFHzurDeAhl4ajuecE
         oQm44OK7xqz6av1RuSx6hgetSenpiw6npHyjmRAsxOBgdkwBilvXaulXjA36r3sZS0Rk
         Y3+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YwI3ICDB;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id x128si393066pgx.2.2020.03.18.03.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 03:28:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-eEmGDc06PfSY7KkeWDVF1g-1; Wed, 18 Mar 2020 06:28:34 -0400
X-MC-Unique: eEmGDc06PfSY7KkeWDVF1g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2BD9A0CBF;
	Wed, 18 Mar 2020 10:28:32 +0000 (UTC)
Received: from krava (unknown [10.40.195.82])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3263219C58;
	Wed, 18 Mar 2020 10:28:30 +0000 (UTC)
Date: Wed, 18 Mar 2020 11:28:27 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf parse-events: fix 3 use after frees
Message-ID: <20200318102827.GD821557@krava>
References: <20200314170356.62914-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200314170356.62914-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YwI3ICDB;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Sat, Mar 14, 2020 at 10:03:56AM -0700, Ian Rogers wrote:
> Reproducible with a clang asan build and then running perf test in
> particular 'Parse event definition strings'.
> 
> v2 frees the evsel->pmu_name avoiding a memory leak.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> ---
>  tools/perf/util/evsel.c        | 1 +
>  tools/perf/util/parse-events.c | 6 +++---
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index 816d930d774e..15ccd193483f 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -1287,6 +1287,7 @@ void perf_evsel__exit(struct evsel *evsel)
>  	perf_thread_map__put(evsel->core.threads);
>  	zfree(&evsel->group_name);
>  	zfree(&evsel->name);
> +	zfree(&evsel->pmu_name);
>  	perf_evsel__object.fini(evsel);
>  }
>  
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index a14995835d85..593b6b03785d 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1449,7 +1449,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
>  				    auto_merge_stats, NULL);
>  		if (evsel) {
> -			evsel->pmu_name = name;
> +			evsel->pmu_name = name ? strdup(name) : NULL;
>  			evsel->use_uncore_alias = use_uncore_alias;
>  			return 0;
>  		} else {
> @@ -1497,7 +1497,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  		evsel->snapshot = info.snapshot;
>  		evsel->metric_expr = info.metric_expr;
>  		evsel->metric_name = info.metric_name;
> -		evsel->pmu_name = name;
> +		evsel->pmu_name = name ? strdup(name) : NULL;
>  		evsel->use_uncore_alias = use_uncore_alias;
>  		evsel->percore = config_term_percore(&evsel->config_terms);
>  	}
> @@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  				if (!parse_events_add_pmu(parse_state, list,
>  							  pmu->name, head,
>  							  true, true)) {
> -					pr_debug("%s -> %s/%s/\n", config,
> +					pr_debug("%s -> %s/%s/\n", str,
>  						 pmu->name, alias->str);
>  					ok++;
>  				}
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318102827.GD821557%40krava.
