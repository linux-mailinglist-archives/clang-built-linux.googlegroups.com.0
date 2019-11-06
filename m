Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBOFPRPXAKGQEU7H4OUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 72135F187E
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:24:58 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 9sf14693492otc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:24:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050297; cv=pass;
        d=google.com; s=arc-20160816;
        b=TXJ56mwd0iQt2Tn1MKYhgI/1GnjN+iyZ6trUMAcjTg9jgVAXJIkfFJbdzja7nNWu6l
         x+Jc1yAfB92ccs/3awGGwE7njiTWFT4jKqB2tJ2nqrV/bALmDFLWQS0FfsiCv4quc62c
         daHL1D4wXnfoiCnPSzAXO4eLTOkCL4tYdbaZtFkurcQGtmiI3XqJ+7zvkVn8/9Jnuc3w
         6lQnxpV/zGT2izUVm7tlxmbcoKQ5THXzu4jjoVIacW+coX4bkcK30b2MxKoz6ynDmkYS
         p3BDIuFUwfjr+ogidw17jcFNDGqrr2e+OzxX8ffd7vKU/U4b01h3NeZmPVnpCF2WKg3t
         zh5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=ReRYblWqWOF382B6wZO9l6OfEmgnALWbSmdKECAc/sU=;
        b=bz9JN7UfTimbleFkQWBgh8mcEsBvIIkFe1287pJGNGeGwPQcLZguypQL2Z2il6ShD5
         M0+NmivNX813+Nuk8I0ZGXD0A/IEqO3uT3dPupl9SOvNQSWY7qJduD8vCwF57SzxajQz
         wwkccgsIaHyR3B7YooP1GmiwMo/XmO/mUaS8XzhO65bEquwRd58pXobFOJI/VXwhws7g
         MFzDkeh5p4LDsIpp9LJs5eVBm4Y0uNGhYWxizZeXcZ5l2Bp39Xfv1qNYEm7hzsKYusw/
         k6BvoXY+1/ihBOP1TW9yW0vK3H71iMA7mGzxeuP0Lrk8+o2H3N8f5NgXTI7TJxeieGIi
         t4UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f3ZDQ0yn;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ReRYblWqWOF382B6wZO9l6OfEmgnALWbSmdKECAc/sU=;
        b=O2LbvyJig2gI38BdVqg49NnTnPDrXH/AWetl1Y4m5Vhx/vFwTfwJ7qSU+a46IutTeE
         TgJCmERtBOi5mcwpACWA7ThknZ/KGOjKqQF7Ksos/7CUhiMqXJanFMBji+U9+G/wQ/gc
         LmzvdtwcFsj6WCEWwAEnOk9PNq7FeK22eJRiOET3ZOOo1UB7gU4QNCtjkt856LIx3fjG
         J1vT213+foc2vUQviMs6Ia56dnP7Bt+bwkSiwS45ox03wvVCF/ZmCxLJbYKdMoyagM5r
         RwPCOqL9KladMNm2HOaK08mFOHHCEJqkRQSNAWWufLIMY1wQlDAahGWIhyu2MsMGx2hB
         5xKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ReRYblWqWOF382B6wZO9l6OfEmgnALWbSmdKECAc/sU=;
        b=KJGhvsdQXvb//zpUPkgERTUUCk1kJLiGnvq/uiZZtQDZiAdJrsPNwwaCLm9iS0ZZOu
         BnmxO3Szi/l2fezMjVo2rvyODcssSeg3DW/RxEZg1b7uKV2/UD/ge8dopWopivqFG2bX
         6V0AbobLDdpLGY+61RAy8iG6zAkwpHZmMTgN0rihSg9WUQ07sAso6PXvL/jlKDu7dg/R
         tS38h3xpVj8c1Xu7ZpPws1rzzuCrcczmBGKdNV9slr46YOXguW8PGuHj9P2J0ySmRkiF
         UGho903fSo4fN9W8gr0ePq0bCFixxOE2eQJe4pNg83jz0REI8mZEzYEOJKwr5fvk52R4
         2SNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbrvLeZe7eGVqQHlH5qeRucLB35RmlaHhPM7PPSk10uyABg2Bo
	tLvsvkIGuRaD0tf60ge/Ht8=
X-Google-Smtp-Source: APXvYqySzbY09+A3yvDkDpGkZdJMSzYirXVZKNZlrrBvVUxP3iRhQLGU33rY/5mEiwplz5Krl0RIPA==
X-Received: by 2002:a9d:7642:: with SMTP id o2mr2048902otl.66.1573050297012;
        Wed, 06 Nov 2019 06:24:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3408:: with SMTP id b8ls672137oia.16.gmail; Wed, 06 Nov
 2019 06:24:56 -0800 (PST)
X-Received: by 2002:aca:578e:: with SMTP id l136mr2523431oib.132.1573050296616;
        Wed, 06 Nov 2019 06:24:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050296; cv=none;
        d=google.com; s=arc-20160816;
        b=pxKcHXFLOl8js5qIomH0HIWhTD4An13tUdmoM6C56F8r9Bjj2/5P1RNX78PjIYhrpG
         j764GoFaYXLCnr3OP2I5zpPVFSrSBL6ZXuL26gSstGBLJMzbZTnJ2V5/E5jVStZln8Du
         D2GKUsZEWmdY2qT19DDzQEsXNvF8kcRK6WjRqPrak4ISD81nAKQ/On048HfPnHHKcbi9
         nKfLI+5pd/GRzX8XNVGpMgLQkR+BoBcQheX/BkZTfdG6AVS5f3i893defSUPyqJL7tuf
         AwAWZVp/Dts4yxjppm/bIKqOOLYVf5zwS/FMZfO+ix97xnrmXDFxh3C7ZsC2IB1zPlF1
         lzFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=RhHobyYh9ijzE4wvXVCIndEt3fY4MLi6qpg7E+Jssrw=;
        b=etfZsQDhSTeOwbLPjKA1A8N6hQWE34ZFuEuR37fe7eYrP2n6rwiZBcwnxal7x2kBee
         ChXZRZy7nexNCqf0V+F7VnJxruNiHKDbqpuptMXGgp0xlevGEtmRDa+ig+9KvI6hDbC/
         oWHBaxfqf5KdrjtC5oFCrD9iS5HAd0TzrlX4iHBiHaIfwyaYFi7BoNrkWuEZXBhKwHDd
         7/piuw9BiC6beTHhw79IpDkPkEH5z3RTo89HIpFdhl8dw+paxqBjAN1ywSlYDh1d4xj0
         C9rFaMZF2ajNud7Ak9eFI7YKlHK2ktWA4kaxyFbTHbMIEXveXI0FCi769I3KCm/iF17W
         pFeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f3ZDQ0yn;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id j190si891301oib.0.2019.11.06.06.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-5yIztn3xMxCHo9k_wo72PQ-1; Wed, 06 Nov 2019 09:24:51 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B6E31800D63;
	Wed,  6 Nov 2019 14:24:49 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 83D0919488;
	Wed,  6 Nov 2019 14:24:45 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:24:44 +0100
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
Subject: Re: [PATCH v5 09/10] perf tools: add a deep delete for parse event
 terms
Message-ID: <20191106142444.GI30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-10-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-10-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 5yIztn3xMxCHo9k_wo72PQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=f3ZDQ0yn;
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

On Wed, Oct 30, 2019 at 03:34:47PM -0700, Ian Rogers wrote:
> Add a parse_events_term deep delete function so that owned strings and
> arrays are freed.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.c | 16 +++++++++++++---
>  tools/perf/util/parse-events.h |  1 +
>  tools/perf/util/parse-events.y | 12 ++----------
>  tools/perf/util/pmu.c          |  2 +-
>  4 files changed, 17 insertions(+), 14 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index a0a80f4e7038..6d18ff9bce49 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -2812,6 +2812,18 @@ int parse_events_term__clone(struct parse_events_term **new,
>  	return new_term(new, &temp, str, 0);
>  }
>  
> +void parse_events_term__delete(struct parse_events_term *term)
> +{
> +	if (term->array.nr_ranges)
> +		zfree(&term->array.ranges);
> +
> +	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
> +		zfree(&term->val.str);
> +
> +	zfree(&term->config);
> +	free(term);
> +}
> +
>  int parse_events_copy_term_list(struct list_head *old,
>  				 struct list_head **new)
>  {
> @@ -2842,10 +2854,8 @@ void parse_events_terms__purge(struct list_head *terms)
>  	struct parse_events_term *term, *h;
>  
>  	list_for_each_entry_safe(term, h, terms, list) {
> -		if (term->array.nr_ranges)
> -			zfree(&term->array.ranges);
>  		list_del_init(&term->list);
> -		free(term);
> +		parse_events_term__delete(term);
>  	}
>  }
>  
> diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
> index 34f58d24a06a..5ee8ac93840c 100644
> --- a/tools/perf/util/parse-events.h
> +++ b/tools/perf/util/parse-events.h
> @@ -139,6 +139,7 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
>  			      char *config, unsigned idx);
>  int parse_events_term__clone(struct parse_events_term **new,
>  			     struct parse_events_term *term);
> +void parse_events_term__delete(struct parse_events_term *term);
>  void parse_events_terms__delete(struct list_head *terms);
>  void parse_events_terms__purge(struct list_head *terms);
>  void parse_events__clear_array(struct parse_events_array *a);
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 376b19855470..4cac830015be 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -49,14 +49,6 @@ static void free_list_evsel(struct list_head* list_evsel)
>  	free(list_evsel);
>  }
>  
> -static void free_term(struct parse_events_term *term)
> -{
> -	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
> -		free(term->val.str);
> -	zfree(&term->array.ranges);
> -	free(term);
> -}
> -
>  static void inc_group_count(struct list_head *list,
>  		       struct parse_events_state *parse_state)
>  {
> @@ -99,7 +91,7 @@ static void inc_group_count(struct list_head *list,
>  %type <str> PE_DRV_CFG_TERM
>  %destructor { free ($$); } <str>
>  %type <term> event_term
> -%destructor { free_term ($$); } <term>
> +%destructor { parse_events_term__delete ($$); } <term>
>  %type <list_terms> event_config
>  %type <list_terms> opt_event_config
>  %type <list_terms> opt_pmu_config
> @@ -694,7 +686,7 @@ event_config ',' event_term
>  	struct parse_events_term *term = $3;
>  
>  	if (!head) {
> -		free_term(term);
> +		parse_events_term__delete(term);
>  		YYABORT;
>  	}
>  	list_add_tail(&term->list, head);
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index f9f427d4c313..db1e57113f4b 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -1260,7 +1260,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
>  		info->metric_name = alias->metric_name;
>  
>  		list_del_init(&term->list);
> -		free(term);
> +		parse_events_term__delete(term);
>  	}
>  
>  	/*
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142444.GI30214%40krava.
