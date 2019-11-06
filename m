Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBQ5PRPXAKGQECBXHGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAAF1883
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:25:08 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id z17sf2538704oti.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:25:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050307; cv=pass;
        d=google.com; s=arc-20160816;
        b=Og/j402TUGMawK2HSYwQFAouaKTC1ypsiUFKqHP3/qc4IZClor46S0qiR3nua/CfEF
         U+D/9bgQiH6aSvlg88uREuXg38SvZEXjh+5VnpMqN20oCtCrYoebIrZ28isDjuvlbqsr
         BK3Nkf4xY4YkLWEXgI+dlFe4YFkJGdOZjycRUEnhh+JnMQa/vXOx3du57mTsNktex5oL
         +fG/C+FaRTSZUbBuIzWywgQd1vOQc4FAQNt//jRV4zS73OvxOsZRNH4SbynKEAJZYBXo
         WCJKPERbRRFT+USwf96CN9gbyJ6b5gE0LEIpEW3TeExniQpCPKYTg6gmD5NmBT7TUfb0
         c/vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=JPyeKpfqxBCYDBD9EbZTW0HzWkbAxfZPscVsbpNR10U=;
        b=CFHRqo0PzfwzCRvETEmH542Az03BSMg4J8ZpvTN+Ql7X6G84HXmegm+3khOmhodG1x
         vB50Q0dJhGFjOv7LM27kJYpFxRqBHccv0NMIvuG/Wy7Yp8ZcYsyHacWPZhqLDLL/OWAR
         wptgwucv1h9oCmogI+B5Wm/ElW8Zi3UsAberw2g6b8fSVqzzCcEDcg2pshThxdpmzYpj
         tuPMFRrFPC55OVqWE730L4z8O8HPwAi4kD84hXHvfix+19HF65xYrSvwPAcWKGUV1v22
         r8tor6AnviMVq60E5p/2GNYcTtdBROx+q6DiDwrZESEOJYHVBDdKa7Ri2yYkP+nQMqJs
         P00g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Jd/m9MvQ";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JPyeKpfqxBCYDBD9EbZTW0HzWkbAxfZPscVsbpNR10U=;
        b=SkbN2YSg7wCqENcAtPybnAyWIbTMZTfcx/lbdcJ0jtZqHrDTWpe0i26lzrNGL+X+KQ
         69bqVRI08PxUoKDBTikKP8q/oVdpvoOP+Ja5TpAAYjuk4YaWR7EzND6vKl5DiHNyeyyY
         4BOIVp/RCIicB+CI/4tVU+vB5g2AJ/WgZJ1warOQcO5QSjguvXxxDFbg+mtuwUCQAqsf
         cWAQfButFrZKRKVTAihlHEOcwgcsbLWshbwdme7APqZgmII6uUkLXXnLkSJjS5o9qsK+
         +3oOC++O3xuoqqsXGL0W76dwQbmhJVQjGBj1uUKd3JEPNH7qVSGO0jxM/8ZGVjTTnKWp
         /VrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JPyeKpfqxBCYDBD9EbZTW0HzWkbAxfZPscVsbpNR10U=;
        b=ruePi91+o3cAOltrov8Cbsf2xxFV0PRTh2gX6UquSxyOhSuHorVQpvbBhgR+02sWNh
         K+MrAfF3sRAF8nivfoLrK50eskHFfQYwFv61O2h26nTp+3R+lP2aLn17jXCVx1NRk+E2
         CgyGB2fpDUu5BuYBXE2cJof7gd1SNh8bbIphrc8RlwaJavB7sk/x9F/kMFwZyzMkW/xv
         rtnHLPz16n62rrQNEwV8RoVYdF6+iUPI/IQqmP9rSi4c1iLl4hzP+LTzqCL5O+g4RjPg
         b8ic58E0E45kTmwqJG8wpj3XPVzWn3nRuXRr1iFlb0d/WIN92Da6fVRJOqfisAHRjz3P
         IDbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVQlkYUuU+9PyRsQ/wOLNJ8WicUb2D7hlF1/QT3g7cZt50mBew
	ZowXN0Rc/Qds8No9gCt0Yl8=
X-Google-Smtp-Source: APXvYqxHfyutoLQOh1DUyJTe2OcZ7kp/CSo8KfNo6nMaq2Q1DA5+R5kz8LvP8Jrh4+XD0L63h3Eo8g==
X-Received: by 2002:aca:3a41:: with SMTP id h62mr2562128oia.97.1573050307311;
        Wed, 06 Nov 2019 06:25:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6f85:: with SMTP id h5ls746611otq.4.gmail; Wed, 06 Nov
 2019 06:25:06 -0800 (PST)
X-Received: by 2002:a9d:5e10:: with SMTP id d16mr2053604oti.191.1573050306538;
        Wed, 06 Nov 2019 06:25:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050306; cv=none;
        d=google.com; s=arc-20160816;
        b=0bd+3H/+WnZM2vLQ1ZGXQtAEeQusJ73kXQgFlXD2eSNCqwq/J3JYz4JsjE6dAMUDHG
         EOfjL3rWDKUdiyXuGUrVQspusGzWQwhDi5vbZhkLJW474Z9vNA/Y3zMtafqYi3h9tHZh
         eHAE8V0sVhceKZaUmPFhVHBhujpxcF0TOxTOq4HyYikZUZx3ymx21Sz7gkyx0dKRcasY
         kS8vJQdHrPmoN5o1SZuwcDnZ+I8sWUtOgEg4jMJ9asYXdVBFQWz4dP1wrMuT6IUtcxZy
         PieTfFh01xuQILPSlkIAEpWAp2gnnoFrVXk8z4Iw2JC9ZYV6mj+EdDSqptGcZlfoTuTL
         eLmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=THCNNAU8gRrT/xl1j5Vg1FRnKMnJZ0K3FA07OJ+QdjY=;
        b=y3bv6JSEbLQfdvCbdwMdkzjEZTbLIXC/PNhy/J5dLQuwKqwjMM7ggifXbOqiZoWXea
         5PRgu6J+TZT/vCbg4Fo7cuphwzVJT+hDTg06ShIAJQiFrWos5LSN8MKjZgyk660TINAz
         rdAmuQ7x3DAkVsuQpb7HaYSFNznVzTqamyvpUr9ayl7fjA4Y5rPn0KD+xweUQ3cSxQlV
         rNfpcpe+esYbfN8FAkI43XBp76KEwN+oz9yzoehN4+kvu8LDCl/t7BPAC1y5HqXwhI6m
         mX0Q4m6RgX9rzGzRL2LuNneWSz26Y00pu6fuQ51c/arrO/K+0qmylEGGbqcCbv9uUczk
         uIjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Jd/m9MvQ";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id m23si1257386oic.1.2019.11.06.06.25.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-raBciwtxODqln0VbGDGgvw-1; Wed, 06 Nov 2019 09:25:01 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52D55800C72;
	Wed,  6 Nov 2019 14:24:59 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 60E6C5D713;
	Wed,  6 Nov 2019 14:24:55 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:24:54 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v5 07/10] perf tools: before yyabort-ing free components
Message-ID: <20191106142454.GJ30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-8-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-8-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: raBciwtxODqln0VbGDGgvw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Jd/m9MvQ";
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

On Wed, Oct 30, 2019 at 03:34:45PM -0700, Ian Rogers wrote:
> Yyabort doesn't destruct inputs and so this must be done manually before
> using yyabort.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.y | 252 ++++++++++++++++++++++++++-------
>  1 file changed, 197 insertions(+), 55 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 035edfa8d42e..376b19855470 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -152,6 +152,7 @@ start_events: groups
>  {
>  	struct parse_events_state *parse_state = _parse_state;
>  
> +	/* frees $1 */
>  	parse_events_update_lists($1, &parse_state->list);
>  }
>  
> @@ -161,6 +162,7 @@ groups ',' group
>  	struct list_head *list  = $1;
>  	struct list_head *group = $3;
>  
> +	/* frees $3 */
>  	parse_events_update_lists(group, list);
>  	$$ = list;
>  }
> @@ -170,6 +172,7 @@ groups ',' event
>  	struct list_head *list  = $1;
>  	struct list_head *event = $3;
>  
> +	/* frees $3 */
>  	parse_events_update_lists(event, list);
>  	$$ = list;
>  }
> @@ -182,8 +185,14 @@ group:
>  group_def ':' PE_MODIFIER_EVENT
>  {
>  	struct list_head *list = $1;
> +	int err;
>  
> -	ABORT_ON(parse_events__modifier_group(list, $3));
> +	err = parse_events__modifier_group(list, $3);
> +	free($3);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -196,6 +205,7 @@ PE_NAME '{' events '}'
>  
>  	inc_group_count(list, _parse_state);
>  	parse_events__set_leader($1, list, _parse_state);
> +	free($1);
>  	$$ = list;
>  }
>  |
> @@ -214,6 +224,7 @@ events ',' event
>  	struct list_head *event = $3;
>  	struct list_head *list  = $1;
>  
> +	/* frees $3 */
>  	parse_events_update_lists(event, list);
>  	$$ = list;
>  }
> @@ -226,13 +237,19 @@ event_mod:
>  event_name PE_MODIFIER_EVENT
>  {
>  	struct list_head *list = $1;
> +	int err;
>  
>  	/*
>  	 * Apply modifier on all events added by single event definition
>  	 * (there could be more events added for multiple tracepoint
>  	 * definitions via '*?'.
>  	 */
> -	ABORT_ON(parse_events__modifier_event(list, $2, false));
> +	err = parse_events__modifier_event(list, $2, false);
> +	free($2);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -241,8 +258,14 @@ event_name
>  event_name:
>  PE_EVENT_NAME event_def
>  {
> -	ABORT_ON(parse_events_name($2, $1));
> +	int err;
> +
> +	err = parse_events_name($2, $1);
>  	free($1);
> +	if (err) {
> +		free_list_evsel($2);
> +		YYABORT;
> +	}
>  	$$ = $2;
>  }
>  |
> @@ -262,23 +285,33 @@ PE_NAME opt_pmu_config
>  {
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct parse_events_error *error = parse_state->error;
> -	struct list_head *list, *orig_terms, *terms;
> +	struct list_head *list = NULL, *orig_terms = NULL, *terms= NULL;
> +	char *pattern = NULL;
> +
> +#define CLEANUP_YYABORT					\
> +	do {						\
> +		parse_events_terms__delete($2);		\
> +		parse_events_terms__delete(orig_terms);	\
> +		free($1);				\
> +		free(pattern);				\
> +		YYABORT;				\
> +	} while(0)
>  
>  	if (parse_events_copy_term_list($2, &orig_terms))
> -		YYABORT;
> +		CLEANUP_YYABORT;
>  
>  	if (error)
>  		error->idx = @1.first_column;
>  
>  	list = alloc_list();
> -	ABORT_ON(!list);
> +	if (!list)
> +		CLEANUP_YYABORT;
>  	if (parse_events_add_pmu(_parse_state, list, $1, $2, false, false)) {
>  		struct perf_pmu *pmu = NULL;
>  		int ok = 0;
> -		char *pattern;
>  
>  		if (asprintf(&pattern, "%s*", $1) < 0)
> -			YYABORT;
> +			CLEANUP_YYABORT;
>  
>  		while ((pmu = perf_pmu__scan(pmu)) != NULL) {
>  			char *name = pmu->name;
> @@ -287,31 +320,32 @@ PE_NAME opt_pmu_config
>  			    strncmp($1, "uncore_", 7))
>  				name += 7;
>  			if (!fnmatch(pattern, name, 0)) {
> -				if (parse_events_copy_term_list(orig_terms, &terms)) {
> -					free(pattern);
> -					YYABORT;
> -				}
> +				if (parse_events_copy_term_list(orig_terms, &terms))
> +					CLEANUP_YYABORT;
>  				if (!parse_events_add_pmu(_parse_state, list, pmu->name, terms, true, false))
>  					ok++;
>  				parse_events_terms__delete(terms);
>  			}
>  		}
>  
> -		free(pattern);
> -
>  		if (!ok)
> -			YYABORT;
> +			CLEANUP_YYABORT;
>  	}
>  	parse_events_terms__delete($2);
>  	parse_events_terms__delete(orig_terms);
> +	free($1);
>  	$$ = list;
> +#undef CLEANUP_YYABORT
>  }
>  |
>  PE_KERNEL_PMU_EVENT sep_dc
>  {
>  	struct list_head *list;
> +	int err;
>  
> -	if (parse_events_multi_pmu_add(_parse_state, $1, &list) < 0)
> +	err = parse_events_multi_pmu_add(_parse_state, $1, &list);
> +	free($1);
> +	if (err < 0)
>  		YYABORT;
>  	$$ = list;
>  }
> @@ -322,6 +356,8 @@ PE_PMU_EVENT_PRE '-' PE_PMU_EVENT_SUF sep_dc
>  	char pmu_name[128];
>  
>  	snprintf(&pmu_name, 128, "%s-%s", $1, $3);
> +	free($1);
> +	free($3);
>  	if (parse_events_multi_pmu_add(_parse_state, pmu_name, &list) < 0)
>  		YYABORT;
>  	$$ = list;
> @@ -338,11 +374,16 @@ value_sym '/' event_config '/'
>  	struct list_head *list;
>  	int type = $1 >> 16;
>  	int config = $1 & 255;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, $3));
> +	err = parse_events_add_numeric(_parse_state, list, type, config, $3);
>  	parse_events_terms__delete($3);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -374,11 +415,19 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT '-' PE_NAME_CACHE_OP_RESULT opt_e
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6));
> +	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6);
>  	parse_events_terms__delete($6);
> +	free($1);
> +	free($3);
> +	free($5);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -387,11 +436,18 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT opt_event_config
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4));
> +	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4);
>  	parse_events_terms__delete($4);
> +	free($1);
> +	free($3);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -400,11 +456,17 @@ PE_NAME_CACHE_TYPE opt_event_config
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2));
> +	err = parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2);
>  	parse_events_terms__delete($2);
> +	free($1);
> +	if (err) {
> +		free_list_evsel(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  
> @@ -413,11 +475,17 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE ':' PE_MODIFIER_BP sep_dc
>  {
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> -					     (void *) $2, $6, $4));
> +	err = parse_events_add_breakpoint(list, &parse_state->idx,
> +					(void *) $2, $6, $4);
> +	free($6);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -428,8 +496,11 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE sep_dc
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> -					     (void *) $2, NULL, $4));
> +	if (parse_events_add_breakpoint(list, &parse_state->idx,
> +						(void *) $2, NULL, $4)) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -437,11 +508,17 @@ PE_PREFIX_MEM PE_VALUE ':' PE_MODIFIER_BP sep_dc
>  {
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> -					     (void *) $2, $4, 0));
> +	err = parse_events_add_breakpoint(list, &parse_state->idx,
> +					(void *) $2, $4, 0);
> +	free($4);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
> @@ -452,8 +529,11 @@ PE_PREFIX_MEM PE_VALUE sep_dc
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> -					     (void *) $2, NULL, 0));
> +	if (parse_events_add_breakpoint(list, &parse_state->idx,
> +						(void *) $2, NULL, 0)) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  
> @@ -463,29 +543,35 @@ tracepoint_name opt_event_config
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
>  	if (error)
>  		error->idx = @1.first_column;
>  
> -	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> -					error, $2))
> -		return -1;
> +	err = parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> +					error, $2);
>  
> +	parse_events_terms__delete($2);
> +	free($1.sys);
> +	free($1.event);
> +	if (err) {
> +		free(list);
> +		return -1;
> +	}
>  	$$ = list;
>  }
>  
>  tracepoint_name:
>  PE_NAME '-' PE_NAME ':' PE_NAME
>  {
> -	char sys_name[128];
>  	struct tracepoint_name tracepoint;
>  
> -	snprintf(&sys_name, 128, "%s-%s", $1, $3);
> -	tracepoint.sys = &sys_name;
> +	ABORT_ON(asprintf(&tracepoint.sys, "%s-%s", $1, $3) < 0);
>  	tracepoint.event = $5;
> -
> +	free($1);
> +	free($3);
>  	$$ = tracepoint;
>  }
>  |
> @@ -500,11 +586,16 @@ event_legacy_numeric:
>  PE_VALUE ':' PE_VALUE opt_event_config
>  {
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4));
> +	err = parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4);
>  	parse_events_terms__delete($4);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  
> @@ -512,11 +603,16 @@ event_legacy_raw:
>  PE_RAW opt_event_config
>  {
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2));
> +	err = parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2);
>  	parse_events_terms__delete($2);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  
> @@ -525,22 +621,33 @@ PE_BPF_OBJECT opt_event_config
>  {
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_load_bpf(parse_state, list, $1, false, $2));
> +	err = parse_events_load_bpf(parse_state, list, $1, false, $2);
>  	parse_events_terms__delete($2);
> +	free($1);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  |
>  PE_BPF_SOURCE opt_event_config
>  {
>  	struct list_head *list;
> +	int err;
>  
>  	list = alloc_list();
>  	ABORT_ON(!list);
> -	ABORT_ON(parse_events_load_bpf(_parse_state, list, $1, true, $2));
> +	err = parse_events_load_bpf(_parse_state, list, $1, true, $2);
>  	parse_events_terms__delete($2);
> +	if (err) {
> +		free(list);
> +		YYABORT;
> +	}
>  	$$ = list;
>  }
>  
> @@ -573,6 +680,10 @@ opt_pmu_config:
>  start_terms: event_config
>  {
>  	struct parse_events_state *parse_state = _parse_state;
> +	if (parse_state->terms) {
> +		parse_events_terms__delete ($1);
> +		YYABORT;
> +	}
>  	parse_state->terms = $1;
>  }
>  
> @@ -582,7 +693,10 @@ event_config ',' event_term
>  	struct list_head *head = $1;
>  	struct parse_events_term *term = $3;
>  
> -	ABORT_ON(!head);
> +	if (!head) {
> +		free_term(term);
> +		YYABORT;
> +	}
>  	list_add_tail(&term->list, head);
>  	$$ = $1;
>  }
> @@ -603,8 +717,12 @@ PE_NAME '=' PE_NAME
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -					$1, $3, &@1, &@3));
> +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> +					$1, $3, &@1, &@3)) {
> +		free($1);
> +		free($3);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  |
> @@ -612,8 +730,11 @@ PE_NAME '=' PE_VALUE
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -					$1, $3, false, &@1, &@3));
> +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> +					$1, $3, false, &@1, &@3)) {
> +		free($1);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  |
> @@ -622,7 +743,10 @@ PE_NAME '=' PE_VALUE_SYM_HW
>  	struct parse_events_term *term;
>  	int config = $3 & 255;
>  
> -	ABORT_ON(parse_events_term__sym_hw(&term, $1, config));
> +	if (parse_events_term__sym_hw(&term, $1, config)) {
> +		free($1);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  |
> @@ -630,8 +754,11 @@ PE_NAME
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -					$1, 1, true, &@1, NULL));
> +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> +					$1, 1, true, &@1, NULL)) {
> +		free($1);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  |
> @@ -648,7 +775,10 @@ PE_TERM '=' PE_NAME
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3));
> +	if (parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3)) {
> +		free($3);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  |
> @@ -672,9 +802,13 @@ PE_NAME array '=' PE_NAME
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -					$1, $4, &@1, &@4));
> -
> +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> +					$1, $4, &@1, &@4)) {
> +		free($1);
> +		free($4);
> +		free($2.ranges);
> +		YYABORT;
> +	}
>  	term->array = $2;
>  	$$ = term;
>  }
> @@ -683,8 +817,12 @@ PE_NAME array '=' PE_VALUE
>  {
>  	struct parse_events_term *term;
>  
> -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -					$1, $4, false, &@1, &@4));
> +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> +					$1, $4, false, &@1, &@4)) {
> +		free($1);
> +		free($2.ranges);
> +		YYABORT;
> +	}
>  	term->array = $2;
>  	$$ = term;
>  }
> @@ -695,8 +833,12 @@ PE_DRV_CFG_TERM
>  	char *config = strdup($1);
>  
>  	ABORT_ON(!config);
> -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> -					config, $1, &@1, NULL));
> +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> +					config, $1, &@1, NULL)) {
> +		free($1);
> +		free(config);
> +		YYABORT;
> +	}
>  	$$ = term;
>  }
>  
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142454.GJ30214%40krava.
