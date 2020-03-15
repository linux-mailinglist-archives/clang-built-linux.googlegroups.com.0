Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBXHLW7ZQKGQEBNG2CZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 85223185B81
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 10:31:09 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id b189sf4559471vkg.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 02:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584264668; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5H4u6yLcm+nBAPUyc0tV3c+aLoFYRatVoHHKZhjCk7UqeAYmxmOr+MU0W0J+SCa4o
         d8Y2QSX4FCW0lU4L0N71K3kTgW2wcD+VapiFsRehkmbCsn9UvKG+QP+cCBp2A136GH/V
         oshCmeYLcQHc0PiJMJKuRJTmQ5g3fIXrx+Ntw6NtUpCSNT+mDcvGBHWEh4O49asuzDqN
         DyWUGJf8lvRfRfNwpFpv1FMute5akQKDLhzUV30TMkRnxdrFDzp2GOuRhyHrrqP7u1yD
         OznD3qVYW2OPZwx6dp0sB9zDuhnWab2NbysFCAxamYCEG1NF20atGPXbHiXzLrtaO7Dr
         5/DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+Ni1I1VEhymQoe4beFte+mjfLuS4Yu6E+grLbHT4pRg=;
        b=uDJCdAI8EHATdfVsPjcE7E++f0kRXiCdDAjFyPSjPUh7hKgmbRPWvKJcKTaJT0vQNr
         UTiP31F3TXkpoP70AKofxAH/j9eWHqD1WiJWriS8Lo7EckdKjdnnePv+0AihgU/I446J
         /Ht8Gonygtxv0I2+P+iFHj8AT8bAmRbDQdFEPuSjmEM5hpu17YzYN6sFsrNs8hV69XiO
         zKlV4NT/WoBzf7pd5H1nxUmOY0DEwu0L63lkupY/tomrCZH419D6dL6I55sTO2GOucgR
         N1vB2ozZBcCjPYXS4+miYewC8sRYJvaA04dzSHVY7sDTv73OdgddvauoZ2PIVAtMnvqz
         CbZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PNI4nE8e;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Ni1I1VEhymQoe4beFte+mjfLuS4Yu6E+grLbHT4pRg=;
        b=Dx/n/bG4f/Zr9ApQlWsiimXiaX1+DT3oBxO6chFMa8MexmQ2GLOgs1KX+oAt2Jw7sQ
         d5pDhRF8YkfJyJiM1f/10SNGlfNVy8w8//N+0fZBjIfqGk39YoC1ECeyloraro9Nzn+k
         gSX6m4vz1fHLCZp8TarZX+Hw+/Rop/RtOQG7qvYE/TWX45jGoOW9rLMpldzAtRYtRLLe
         QDTasdaB5tPB/g2sOyjjCrMWXmNnbgH0NkyR78wki6bR7suyJdwRIXhHphRW9Ec77Qez
         YKUyPHFQ1u4i2qNAcUbfJfgh1TOLUW2c1Ujh6TJBf8nz5tQn2bkpAI05vpIwcPAi9UCY
         XN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Ni1I1VEhymQoe4beFte+mjfLuS4Yu6E+grLbHT4pRg=;
        b=ZtzdMiMmOlF90yz2BmTNmxY0SlGTQnHbBLjkl0xCCy3oSQHXCAYFwEgAbvdfFsrGgv
         ZvnUuOhR//i8sNbIatVIi8Pf3ZNR+bdbn5/JLMDcTkhCZ7l1nJbliN4C2+uz+sdK0cMD
         nx/YQQy21Ijk2yJ08F5ZUNH+LmXhGysUS4yTF8bd+CjdWQF6+HVISkxsN/VNKJAOjFq0
         ZKWsJY7hab7432czYktDxAJe8pF6D5muioQo44xxgNbLIYEaT/UJ62Fghthdin7FWJAW
         stW4l5MY1ib6kVhRz+9VsoD/aSHIPxxi8htSYLeOI5eiB4ze/pTYDKErhvPgouFuSPkb
         DmPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2YJOwtL6rOcg3q9wplGB2X9BiHLTmNlYWHQrAnWhbetAok9TMD
	UrH9iK/vGcH15ovCHPfjar0=
X-Google-Smtp-Source: ADFU+vvOHB0sNBvmTBrVRxPxXBRDkYp2iiKQhVIViqsrcqevgWZ2vHSnspgGfwNN1y+ONTGBnwnpmQ==
X-Received: by 2002:a1f:b6d7:: with SMTP id g206mr13908884vkf.8.1584264668362;
        Sun, 15 Mar 2020 02:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:a83:: with SMTP id d3ls1095602uak.2.gmail; Sun, 15 Mar
 2020 02:31:07 -0700 (PDT)
X-Received: by 2002:a9f:3fcf:: with SMTP id m15mr1991659uaj.37.1584264667936;
        Sun, 15 Mar 2020 02:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584264667; cv=none;
        d=google.com; s=arc-20160816;
        b=dKyRUxiLk0j2Ih9fLpY04lPT4LDzkYsc6t/nFVlkPe0EvXCAWOuUDphmv4AjnUVYCm
         Qwanav7TshxGStfKh9KPMJTKcxCSwoXsX1NuQhvduVSi1HgX+ytIwnTU4EZeoQQMSUoM
         hR5TXvw5eZv3odF9UW9V5/1RY67sV4qhNdJCAK9wnAkao4tqZFBIhwmyyDClrNddh89k
         Fsz20Il5a6op8nsgA9PT6zjKPvNCqkG1Sr5HFKTo6UVvHFOizbLcefuRM/taByQymK8J
         4o4YYX2N+5pk1He6fuf7q8tBgR5qagrCDw63VfaA719XdFpAktqSxmCN9rtBUWdbs2Wf
         bG7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NskdIeesjzIp9l2WHfY+vsEAmi7voX22LG95jDKnurM=;
        b=i5YnRc3NVuQ/s6z76OiNSqK8IbAIR2uckKY4Y3AsxA848td15kLjv+cZRhKDN132/B
         bxbWkYnT3rPUNx4sYFdyFX5keusznGfXxUHhbmVj/DZnlmknp5O3zJCVvFSfUjt3EPny
         GCchXCODjavOJ+Wd1+3Nnhu6gAATaklNBGisO6QmRLP2c09fZycIFUPukNpDeHDC/qQE
         WamdOEpYafya8z4H9fdKiHsC1Ov+ftEbnvwzw7iSnnx1CSEs1Bj0x1aMy+xFUl0sqinl
         Sa4yS/Pu/IW30XDSer7OY6R25wsPWe/qWu4PSyPBGzsmR2yDRrS0NUBWjAG+VrFJQjOE
         URAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PNI4nE8e;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id w4si884979vse.2.2020.03.15.02.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 02:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-opja8U-XMLS4so4aBi8vrQ-1; Sun, 15 Mar 2020 05:31:03 -0400
X-MC-Unique: opja8U-XMLS4so4aBi8vrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D2E98017CC;
	Sun, 15 Mar 2020 09:31:01 +0000 (UTC)
Received: from krava (ovpn-204-71.brq.redhat.com [10.40.204.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 205785DA76;
	Sun, 15 Mar 2020 09:30:57 +0000 (UTC)
Date: Sun, 15 Mar 2020 10:30:55 +0100
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
Message-ID: <20200315093055.GD492969@krava>
References: <20200314170356.62914-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200314170356.62914-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PNI4nE8e;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> 
> Signed-off-by: Ian Rogers <irogers@google.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315093055.GD492969%40krava.
