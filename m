Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBSGGWPZQKGQETMQXZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B31D1855CE
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 14:59:37 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id k194sf11567239qke.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 06:59:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584194376; cv=pass;
        d=google.com; s=arc-20160816;
        b=hn711hFM7CxtTrFLAMguA9iYpaqcwBzLj0siYvjo441aQsCc88eCxBK+Zz5t19vET4
         nomtBHoZaqcCiNvSsDpitS7LykIRcITZZ262wuXWT+p2dmj2CnNa2DTnkR15OYWjKe8A
         Gv78YkVbgiMFBeXbCNjY7oZGnorwuzulljoeam86s1XRMdX0k/YKWsYlyFB7Ac1bJNPh
         uebLe8IJX20NtbjIYEIt660e6XfAoMlZebP37qRu+bCrU+M/5RT7hA5A8P6l5oEqYotB
         FUAaCIlwk4rio1zAIrOO4YZiR1fTUiM03xGQxMQzaCDnTNXEr8EqGx8u0vOj1x6pi0xD
         RZcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=csm1ZaJtr8peAkkFJo0N++x8m7GR80YAjUnSCTldGnk=;
        b=QIGIo1XhECg3T2Ja0kaCk7taf4umcxEa0MUz6/r+gnz4QtgLk65I1N5aStm2KheWX4
         rpln/red5mykv/XhaBvRBb8cuUMdFOxFK4MpMhEOJFvm0kG0WqpO6zluoAwZIxy9nms2
         jtgcX042wchKc+hV/rDigyoTY8pS+16VoTmARoTEo2PYLhO3znt6lvEhQTZmX0lfvuJC
         V/6WyJjGm+tayD+lZtuS3AIv319ljfgAKw1G8Fjr5m6JKfMB8Vji+C0NxhDiuZk6WnXA
         u8/YTjVnAZXYSm+A4ZKwBTlBDleBnvvEZ0vsPLBKfBfkrJ1yJyaV/GYHuS4GkWIrxcoJ
         iptA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Rpej72kS;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=csm1ZaJtr8peAkkFJo0N++x8m7GR80YAjUnSCTldGnk=;
        b=myksqmfywhd30maA1/FsVW1FgAsXw8SLQ0oBhdtE7yoYhAxtES1yzsd+CFKEvo7awe
         oq8CPHDDH2NJPK9Wv+zuh1KV1ouaKW58mK9lOo/vx3S85vOr7sOuBH9vKFs0ESPLboCN
         IDuCPIld3H9Kx9WRCIL+rvOWkkJnfszgmVp0j0GMyZTPzpUhd3Orte9aYR1YfuB9yKG7
         VNjFxBJLwz7WvbeCzh1mXEKPY/FVnfp0U8+f6Z1FaIJq1TbdRz5OvEh7/PQtCISWKwzt
         s/foQC4x15vsJCgM8GvJhv6WMcb34Bf0MIEM85LJttoAO9wf+VrRWZmozs/qPqlwsxlb
         6UFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=csm1ZaJtr8peAkkFJo0N++x8m7GR80YAjUnSCTldGnk=;
        b=hOuBzMX833ujjBjlXuEe+qiGReQVVpCrVFn8MGVyhkD9OpRz+52m+DUoZ0qHCeQ40Q
         Kt/wTp6mp4JGWKD/I2E4dgZaex2ULwLOuoir1MY/XucL2nvhJgPODTvpg7j3+TRBDXQw
         QnHC8mVU/TUORj5Q0FvMMFIe1s5PqLR+Djlbo75ZTLtXOdlIuVH1/ad7ESuYByDzr/QR
         WmOmxQdDSmXVBtWo4A1IjmacQFV09XxhD6QXMIkg8hyvnka8mlW/62sAmksQ799u0P92
         6WTMSm5rhxMKbn4Bvy4n0yZX4cYkqQ7GXheFMgKRfQyQ1H7y7AEfXZoq9JxlDzAb/ZEB
         HD5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ22SU6BKN5OhJqhO/bHs5Xbuib3TLCZ97xGdE/LXiGip627YukD
	2Fz8/seSQS7uJlbbFsyu5Ec=
X-Google-Smtp-Source: ADFU+vu9movJCCci5BGTq4h55Po50T9awGBZZtJmpM3Hkreo6mtPso4tjVtT19kSuL/zzoPzeIpU4A==
X-Received: by 2002:a37:a93:: with SMTP id 141mr14337580qkk.244.1584194376526;
        Sat, 14 Mar 2020 06:59:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8e46:: with SMTP id w6ls2530383qvb.6.gmail; Sat, 14 Mar
 2020 06:59:36 -0700 (PDT)
X-Received: by 2002:a05:6214:84b:: with SMTP id dg11mr14570498qvb.205.1584194376172;
        Sat, 14 Mar 2020 06:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584194376; cv=none;
        d=google.com; s=arc-20160816;
        b=z1y0T9nyGAwY3x4Lljl+JYpJP33UFIGVVf+2p3JpNf4gz9387oYQuYOLmesWR6+Kgi
         TPJS91RbnDwxXwXumLdshYZT7W9i70OA+6fYwitddKid4cFudaWgxTLb1mLSuaS1S4S0
         M1csucfbeb1QpTVAeZL3BpwbjEkJbn6yKEARlPs3bIAR8tPcgxYLJI7QilcZ3ZqYWHK4
         S7YQL+ba8wRbXWUPZ4TmR8Or0Zep5UOnQGUVTXyMKTl47PvZNkPFyC3rshDfPCc057QS
         30WXMn+3XjUrxc53b5ISqt2WXIMShdLEsJNgY71Ujr8tuMahgb1jVHjz1hFQvDeB1js7
         betQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Eqzcg40TBoSMhAurr5qREzKJZ7xEUxgoofqeeoS/NZ4=;
        b=FbDsowL36gWljMPDGAaJR4GTxTmGlAxCZ9+j6BDBJqZRfA3zYqZrd/kEZ78IW3gPCI
         UVamvM4pRJPAhe3QtZ+OpEp3nEftWO3373+mq5BjLRrjWueBOIHYmSbvxv9TvrRf9R88
         s0Mf1wPn17oPBSuY6Fk7NZglNLqvpvMyaoCeh+ghTP8EzkH9id65F8B3i9LFMM1w/Zfi
         rQDacaRNLYysuVTd8M5rWdMiHzEA9ldzABzh2QCrA2BXUurdojQnN/CPzlsTz6CQbuE7
         VczdzKqVb6XyXqORH7ms1rb/5s7UpkHL7bky/rNpx5N8iSabTcnETH5H3P6XJWH5LpJh
         zJsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Rpej72kS;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id c2si542532qtn.0.2020.03.14.06.59.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 06:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-a7j_hPgqOiu76FN7ROwQpw-1; Sat, 14 Mar 2020 09:59:34 -0400
X-MC-Unique: a7j_hPgqOiu76FN7ROwQpw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C60EC18CA241;
	Sat, 14 Mar 2020 13:59:31 +0000 (UTC)
Received: from krava (ovpn-204-34.brq.redhat.com [10.40.204.34])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6DBA73861;
	Sat, 14 Mar 2020 13:59:27 +0000 (UTC)
Date: Sat, 14 Mar 2020 14:59:25 +0100
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
Subject: Re: [PATCH] perf parse-events: fix 3 use after frees
Message-ID: <20200314135925.GA492969@krava>
References: <20200313230249.78825-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313230249.78825-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Rpej72kS;
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

On Fri, Mar 13, 2020 at 04:02:49PM -0700, Ian Rogers wrote:
> Reproducible with a clang asan build and then running perf test in
> particular 'Parse event definition strings'.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
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

so it's pmu->name pointer.. does pmu get destroyed before the evsel?
also should we free that then like below?

>  		evsel->use_uncore_alias = use_uncore_alias;
>  		evsel->percore = config_term_percore(&evsel->config_terms);
>  	}
> @@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  				if (!parse_events_add_pmu(parse_state, list,
>  							  pmu->name, head,
>  							  true, true)) {
> -					pr_debug("%s -> %s/%s/\n", config,
> +					pr_debug("%s -> %s/%s/\n", str,

nice catch ;-)

>  						 pmu->name, alias->str);
>  					ok++;
>  				}
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

thanks,
jirka


---
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 816d930d774e..15ccd193483f 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1287,6 +1287,7 @@ void perf_evsel__exit(struct evsel *evsel)
 	perf_thread_map__put(evsel->core.threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314135925.GA492969%40krava.
