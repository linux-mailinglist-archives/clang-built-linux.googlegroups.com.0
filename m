Return-Path: <clang-built-linux+bncBDEPBSN75UNRB2GMZDZQKGQE5J6ETIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id A11CC189D3F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 14:47:21 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id t193sf10866389vkb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 06:47:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584539240; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tt2erXmm6if9SBeKG7uL5X09gs9IqRYvxy5kiyhzpBzETttO3zq6VuAWEtYLPXGXa/
         N4VoOCIo/HKA9NKO1ephWElPb3GYarJRXpWvnOti5eyspbPuKJ1B1r4BA10k5UK6AZTy
         iiTtu3rjEZPip0aW3OZlfgJ7FrJTXjryLCRqf0vIQ8ywCFyaE+PaIVUqgqQ9Vn39PCuT
         Qg/Z6U/cGZ0kPVNbd6L0CQOumVfzNm0x5bT+Wk3sode0SbeoHdwLNcUgipqWQIYVCX23
         ZHBDyMuEdCy6SuszIeAXFV4p20g1B5b69hmEh/zDG4ItUTm6f1hMV+OpbaYRrbeezBT2
         y46w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=8qVJHZ2NkLet8/Q2GDYvksO+5UfKlZxOMrnueXtVJZU=;
        b=uVO2PhFaUkv0/TnPGgBI3LtvOzFJOzvXSTHQ6KBWVmdH5sxynpo74iCo0WxExEKnxu
         jXLq111zxqSUY2Wb69uWy+mD84rlzi5dJYnOGoyVgHo3/LEte0GJwE5CRV3baMyc2V+i
         4ttZ/ha3mRoN0isk5rfC82CVaPIg9PHrVGUFamBhdFPTwPa3tb13xS1wjvaZVXs1iImH
         jRFNHPPcvb+lbX29xKtqcPC/ArVze2LLcQ0SRa01hcI0lkR0aSDiK5dJXQpIouOJzX2M
         lyUclo+uBdmuJOdcoOgLk5eJqI/AtweCZyfyMAf9OP5QUjMy02jbFACCw/CNiHFQb/FW
         YdEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGbqiKgB;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8qVJHZ2NkLet8/Q2GDYvksO+5UfKlZxOMrnueXtVJZU=;
        b=j9QMOzn8iA8tCkE7aOs9ECAJBcgoL9wy40NMo7vP0ZJDNxeLNKB1DjIcmCg5dyMZzG
         5Vnt0HuhxanNDzEeYoFodiqj/w6O2KNGm/816ESvG80h2tOODweVaHW34ZSB0Y6juIou
         MwDXST/KC2sNXi92sLLLmIosJsR0Sqay8ahhtKq2qfimW8V1v4u4o5jRtiRMq2RTSsfB
         zcuCb9E5spfBt8OYkjL8s4aQkRMD/dxBE5t04619MIWsps+TreQOEsVZJNP3QMXKGgpM
         hvCCm79ppYgzVntlyifUMfH6drAnnh0moaVe4QH29y8/bJIlxARGn3cSaiK24eTtXKg9
         yz7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8qVJHZ2NkLet8/Q2GDYvksO+5UfKlZxOMrnueXtVJZU=;
        b=AkoMTM76bScdmjEyvjFeKE3BOfYlLxjBRR41jNOlMOr/TE8cl3aLkNmk34V347NZ4Q
         tlaUbAOOGcWF6QLgeK83e48cnLkPccHhUva2OuWbZJkzvVb5Ut/UnZf87ti1xJ5kIt9P
         7U0pYhMson/7d6P8kvuGCBKjG/VgU5f+DhbfN4Lqa9epHulxmLaecbN/bFVWFT9ZyNO0
         B0z/vOZc4yL8w/18TIvqkIhKujWj0K0mf3MJnm1JjEgXa15RldbsBY2KLUamm3EQfTXM
         eie6ZLnecPRhNq9lboNzz2J4WTHOGdH32C9OhgycaD54ArWuaAbuSYpsTZx10eL+ON2H
         GmRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8qVJHZ2NkLet8/Q2GDYvksO+5UfKlZxOMrnueXtVJZU=;
        b=Q9E5VjMcDyR2/Jnpf2BPOwNLfazxH+qzHou/ez+zWjBHIP2ViaO17MwQi13S5uAqxk
         FnEbuAJEZQ681Mc7NTfDqb8pPMly8L7qiV8Oh4o+e5Ly9j1bNHGxSesDOCMcgnCCs5z7
         HOTc5vRlZnnEaS5GGiFB6IV6jr+m90HiagEcEOIBbWdBWVaeNivivy89WEevfJdC07Yj
         R8JYyBFHg/WxpQW+0nRjcjuPxXbzVzmNkOKxDTGKxP9d58YMczPZ2FpRD7zWh/RHWZan
         VQuylSCACQ2mKEtFJ+9Q/MQqpAoIS6ANVFtv0p4szQbQwsks/hFSko8xrTwSPHie7vTa
         VrIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1ThRk8KLHSS6Q9Ts2nABSGQVK1BaOtbJqPSTJyRuykmD94IljI
	+yytjkTyRzihzpAQsU/yRLs=
X-Google-Smtp-Source: ADFU+vvOxotO6IBGbklADuAp/AFJ5TA62CxoF2vJJhsNzj+jgUWQvaIJxPSmSj/3/SL/TtfznA2TsA==
X-Received: by 2002:a1f:a9d2:: with SMTP id s201mr3352582vke.92.1584539240337;
        Wed, 18 Mar 2020 06:47:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls3305438vsi.6.gmail; Wed, 18 Mar
 2020 06:47:20 -0700 (PDT)
X-Received: by 2002:a67:2f83:: with SMTP id v125mr3008846vsv.100.1584539239930;
        Wed, 18 Mar 2020 06:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584539239; cv=none;
        d=google.com; s=arc-20160816;
        b=ItuRPA7nCXbHU7fR7noa+A5nEBpmHAAYMgGVEbP0sAWiUzodzm4VIJo/LlyjuorRM7
         nMDK6KsReclG2RHJK2+urVL5W1TqpS216buwskfnzwopi9eF8AMlUXZz4MgDk8Jflhqx
         I2EKyMONJJkayjfUG5ygWmCUC54vAErzwHlTXL41OUA41ydKEnqs1pzlUy1wc23mnKtt
         NY8R5+9C6cCUQRST+gI/9z9Unyq6WZJYisn9vFSWCgpCeSt6dYvvtS/nu6/1xNi4lwCX
         Bc6hgjsFp3CUxwkzJGyYcyfDwXEFkeN4x/MhKMf1kyAMuuxhXKbIdy5HP/BcLcqs7pOE
         hjfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=Ef1D/U85592FyqWL6PuhxvAtbNbUDjLIuJcIAna7dEU=;
        b=c80HskgJYzrmGYjMDH+oj9aFHw2vOCJwqKDXAg41blJB/e0NxMcaQ9AafaGi1BYno+
         9ffC7i50F+fL8lKOGJ5Jk+fDtZ/0VhT96V3kM5Mm+H+Vgi6HiapaNmKF+g31mBnSaDLy
         Ga9QyftDFTOb87DLqEh/iw7A5E5FBQrsD5ChxfHm5e9xlBP+beniA1iv0LVRMp9Iap5J
         74urmmCEov0G3yom/ssWqdZOshSzqy9BKpxWulksEYBEnb+nBgPoU/MnMNylqi4kuz1U
         9ckwwC+KwgSXSwhHDQhOUUjmpNczXz9VfuUC4XKRcojvEbKxQgBoaQJX+0A5TKnq8/we
         x1Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uGbqiKgB;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id z26si258785vsp.1.2020.03.18.06.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 06:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id f3so38727610qkh.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 06:47:19 -0700 (PDT)
X-Received: by 2002:a37:9542:: with SMTP id x63mr4274685qkd.82.1584539239429;
        Wed, 18 Mar 2020 06:47:19 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id u13sm4089617qku.92.2020.03.18.06.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 06:47:18 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id A2703404E4; Wed, 18 Mar 2020 10:47:15 -0300 (-03)
Date: Wed, 18 Mar 2020 10:47:15 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf parse-events: fix 3 use after frees
Message-ID: <20200318134715.GC11531@kernel.org>
References: <20200314170356.62914-1-irogers@google.com>
 <20200318102827.GD821557@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200318102827.GD821557@krava>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uGbqiKgB;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744
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

Em Wed, Mar 18, 2020 at 11:28:27AM +0100, Jiri Olsa escreveu:
> On Sat, Mar 14, 2020 at 10:03:56AM -0700, Ian Rogers wrote:
> > Reproducible with a clang asan build and then running perf test in
> > particular 'Parse event definition strings'.
> > 
> > v2 frees the evsel->pmu_name avoiding a memory leak.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@redhat.com>

Thanks, applied.

- Arnaldo
 
> thanks,
> jirka
> 
> > ---
> >  tools/perf/util/evsel.c        | 1 +
> >  tools/perf/util/parse-events.c | 6 +++---
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> > index 816d930d774e..15ccd193483f 100644
> > --- a/tools/perf/util/evsel.c
> > +++ b/tools/perf/util/evsel.c
> > @@ -1287,6 +1287,7 @@ void perf_evsel__exit(struct evsel *evsel)
> >  	perf_thread_map__put(evsel->core.threads);
> >  	zfree(&evsel->group_name);
> >  	zfree(&evsel->name);
> > +	zfree(&evsel->pmu_name);
> >  	perf_evsel__object.fini(evsel);
> >  }
> >  
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index a14995835d85..593b6b03785d 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1449,7 +1449,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >  		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
> >  				    auto_merge_stats, NULL);
> >  		if (evsel) {
> > -			evsel->pmu_name = name;
> > +			evsel->pmu_name = name ? strdup(name) : NULL;
> >  			evsel->use_uncore_alias = use_uncore_alias;
> >  			return 0;
> >  		} else {
> > @@ -1497,7 +1497,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >  		evsel->snapshot = info.snapshot;
> >  		evsel->metric_expr = info.metric_expr;
> >  		evsel->metric_name = info.metric_name;
> > -		evsel->pmu_name = name;
> > +		evsel->pmu_name = name ? strdup(name) : NULL;
> >  		evsel->use_uncore_alias = use_uncore_alias;
> >  		evsel->percore = config_term_percore(&evsel->config_terms);
> >  	}
> > @@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
> >  				if (!parse_events_add_pmu(parse_state, list,
> >  							  pmu->name, head,
> >  							  true, true)) {
> > -					pr_debug("%s -> %s/%s/\n", config,
> > +					pr_debug("%s -> %s/%s/\n", str,
> >  						 pmu->name, alias->str);
> >  					ok++;
> >  				}
> > -- 
> > 2.25.1.481.gfbce0eb801-goog
> > 
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318134715.GC11531%40kernel.org.
