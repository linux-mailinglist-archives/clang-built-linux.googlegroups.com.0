Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBE64ZLWQKGQEHL2QU4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 17576E4545
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 10:11:02 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id w11sf1339225pfd.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 01:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571991060; cv=pass;
        d=google.com; s=arc-20160816;
        b=PI6YRGuaLBLQIun/JK7JK3kJjrBIK9D+0GpKmmiTG/azQR6OHlTYtEUyZKcDUD88OA
         Wz9zXJ4L5p6E5z38eTzqIV87yg2UWyLi3Jian6uHH1E4OM1xztVkQrnRkKgAmCmAip+e
         exCqjp7iYSJlH7/wSU7PZ17aR0fTu5AifIA+EURUAdGb4HXjH6jwjmwm4nHb9Kb3KMUc
         StkfTDfOvoNNy5A6sugq5y2SEOaj8grZZe3l8eTkP8K37aRejh6KGM3jjWEWm0DYZxJt
         KfFqUS32++UgKHE6Q0eS75v43eozZYQC5zco2SEtoHqKokmH860tGxYW59YZa83C9PzL
         1yHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=ZmLTKARNGk2GWFbfGkn0XUzCQZj/tFWAmm/biWjeUTo=;
        b=emV+zcvOtmiKN8kkd9H9k1mLeaYzMY4AY9HdXBDHc7HRYrYLNfPEoWOgQ2pXHeXWTV
         7J+Yw1TjaYng2LrzIvInAkiX4sZ17x6jZ9pl4ojrrwiWQLHVNqzecfFqM8JqfqGfJItk
         gms35EEzRziqp2OipOZskS6zBSGH9FagIfU9sRTsaMum8eGfQw7+/BF7bLfuVv/NlTHT
         zyvqPTJ9oGGOaegBCB/KLUxj6xYNfREvpDroctWb+0GDhRyKZP+wbpeknakMX1UpaQ36
         UFMDi0okXS90pW+Twsm6NAsA3Oq4w1da1LTNL8EH8tCncomAcWW9bJ+ZgU4low3pS74g
         /LYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bj3nTKvG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZmLTKARNGk2GWFbfGkn0XUzCQZj/tFWAmm/biWjeUTo=;
        b=mQS6lFQXReQ06I1crhaNpSbrM/yqcI9MDtQW2Yu8+LDFULsv2/LPDcYF3jHKAbNivT
         jW82y7fqIHhEsjHA9RMs6TbTM/wioshkB1XFsNkedjzaRGXKDYDlr0d9uF2Hk3b/8+eo
         TpW8hkIYbdNfROUF6ZWmmuvwm8vXSGCDa86R2DEuhSs0aOoImgekO4thZTDMjWNSTjGn
         vO6Ih+kqxgvLp35DMwbQKtBYSV+xw/TT2Iu+HhgKESu/Owzx9y/40/IOK9pn/VXakjWB
         ZN4A1j4TnZNm1Kvb5+7S9xnAnIktbjXCn4iT/YBGSqlPR2mdRlCBk9zeOLVGJ0Dy+AgV
         G7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZmLTKARNGk2GWFbfGkn0XUzCQZj/tFWAmm/biWjeUTo=;
        b=S2JeYaLeTalmBI6+rjXRwGybu9Iu8jzk3JG26bxQfDSU8RAmr0QSbi756UxGenWRQs
         Wvnc5JvwxPe9+x3CdgwexQlcJoooGosseqAnjTEeixAdVkt8U3ZXKKgqGqCmJ7tozHIw
         x5IU+aCxQ53Y2V1vMKYGLbxYfoyE97Si12LWlmtLKzlfMv/Rh9zO63+ztlHwCZVucpxm
         /Nfr82pRIiREh7oNXsMLKK0B6GuKyZWGX+FWguYxYYAqwSgyU9HQNHGy08VpWcWHAta9
         HRo/wGAbmWfXSBFVVqvqrSFbTv1KsyTauELbNFkRHG16/Td8G7WyXHkjm96VKwVFgUoH
         sX0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhYFidw5XH/qc23WafwiCZxJIKd7dxgHlDMU4ucTzJGRSpRs4E
	/juPhaleMuhDQ/T/XfLqGvM=
X-Google-Smtp-Source: APXvYqy4OVVHEOtyKUiaXuYKuroCRcJHdaX2Ja/H/DJr2VnlZV3E0j7IIZmu7yqDC2jlQi7xVXmkcg==
X-Received: by 2002:aa7:9a95:: with SMTP id w21mr2760154pfi.173.1571991059272;
        Fri, 25 Oct 2019 01:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9611:: with SMTP id q17ls2633566pfg.16.gmail; Fri, 25
 Oct 2019 01:10:58 -0700 (PDT)
X-Received: by 2002:a63:b907:: with SMTP id z7mr2860266pge.142.1571991058114;
        Fri, 25 Oct 2019 01:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571991058; cv=none;
        d=google.com; s=arc-20160816;
        b=N16n1crfqecUWwa037HDmBUkYS51NqGiyawXV/q4vDTLx+2JE+eQ1papvUN7gNVz0S
         Z7+CoIj7gl7VYOuwbNmWQyTgIz6cpNfo0GqZ16/C/92InXAdnSReHYXwvi3NLQAYNFnH
         kRpsFrybRwDWgUpv4MscXcWe2ZIEUfAq0yxGEj1uB/z4q14F4bGrb44MiUp2WV3sLl3I
         IQKtePZshqSLm0Ga/bO+/faMyFr1lCVPCuR6nx7kRNEjw7mPMTmGlavKMA1DDD5Rdq9K
         h/b3cIKlo8VBi1vZQmje8lIW9UlPRRTJAdBYBaT1aVc3MaikpyEthTNGJ8we9r4hcujS
         CLpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=2GGf2kVG8CsLtd6hgKY+4sDM4eKzor9fLrdBz5qU+cg=;
        b=OEfQt6OQebHDry8o7I/TMx/wGH/PeyNKSGL9Wv2tJ/R5/sL0MNijHoVbYgJUD1Nbjy
         /5EzchN87YICT11yFXpY/LOQ0QbvIIuT5rhb1BemfcOsQgKjtOYTZHmBLVRZouL0pdBp
         8dpq80h6V1DwrRszyuU7Svd3Yp6XaN+oB5BouBNWcNffLUh7BfPxuplrv3jDAfd4HMIv
         g4BT+IGHpFGLXvYvuhMUk30HV+Lz0OzMR/EcnQSlF8SaPWH11TfYLR4T0fJ1tEGq+wpU
         dfr3y5tXyNOVDYl9Z3bTx9JqM0lw1mM/BMAupZEQ6yoa70GWY1sKh+RNrC1oepRIvAzM
         hCtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bj3nTKvG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id v16si32164pjy.3.2019.10.25.01.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 01:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-SakRCyxTNi2Z0gepaWe5QA-1; Fri, 25 Oct 2019 04:10:53 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 104BD1005500;
	Fri, 25 Oct 2019 08:10:51 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 0F03B5D712;
	Fri, 25 Oct 2019 08:10:46 +0000 (UTC)
Date: Fri, 25 Oct 2019 10:10:46 +0200
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
Subject: Re: [PATCH v3 3/9] perf tools: ensure config and str in terms are
 unique
Message-ID: <20191025081046.GG31679@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-4-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191024190202.109403-4-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: SakRCyxTNi2Z0gepaWe5QA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Bj3nTKvG;
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

On Thu, Oct 24, 2019 at 12:01:56PM -0700, Ian Rogers wrote:
> Make it easier to release memory associated with parse event terms by
> duplicating the string for the config name and ensuring the val string
> is a duplicate.
> 
> Currently the parser may memory leak terms and this is addressed in a
> later patch.

please move that patch before this one 

thanks,
jirka

> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 51 ++++++++++++++++++++++++++++------
>  tools/perf/util/parse-events.y |  4 ++-
>  2 files changed, 45 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index f0d50f079d2f..dc5862a663b5 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1430,7 +1430,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  			       char *str, struct list_head **listp)
>  {
> -	struct list_head *head;
>  	struct parse_events_term *term;
>  	struct list_head *list;
>  	struct perf_pmu *pmu = NULL;
> @@ -1447,19 +1446,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  
>  		list_for_each_entry(alias, &pmu->aliases, list) {
>  			if (!strcasecmp(alias->name, str)) {
> +				struct list_head *head;
> +				char *config;
> +
>  				head = malloc(sizeof(struct list_head));
>  				if (!head)
>  					return -1;
>  				INIT_LIST_HEAD(head);
> -				if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -							   str, 1, false, &str, NULL) < 0)
> +				config = strdup(str);
> +				if (!config)
> +					return -1;
> +				if (parse_events_term__num(&term,
> +						   PARSE_EVENTS__TERM_TYPE_USER,
> +						   config, 1, false, &config,
> +						   NULL) < 0) {
> +					free(list);
> +					free(config);
>  					return -1;
> +				}
>  				list_add_tail(&term->list, head);
>  
>  				if (!parse_events_add_pmu(parse_state, list,
>  							  pmu->name, head,
>  							  true, true)) {
> -					pr_debug("%s -> %s/%s/\n", str,
> +					pr_debug("%s -> %s/%s/\n", config,
>  						 pmu->name, alias->str);
>  					ok++;
>  				}
> @@ -1468,8 +1478,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  			}
>  		}
>  	}
> -	if (!ok)
> +	if (!ok) {
> +		free(list);
>  		return -1;
> +	}
>  	*listp = list;
>  	return 0;
>  }
> @@ -2764,30 +2776,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
>  			      char *config, unsigned idx)
>  {
>  	struct event_symbol *sym;
> +	char *str;
>  	struct parse_events_term temp = {
>  		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
>  		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
> -		.config    = config ?: (char *) "event",
> +		.config    = config,
>  	};
>  
> +	if (!temp.config) {
> +		temp.config = strdup("event");
> +		if (!temp.config)
> +			return -ENOMEM;
> +	}
>  	BUG_ON(idx >= PERF_COUNT_HW_MAX);
>  	sym = &event_symbols_hw[idx];
>  
> -	return new_term(term, &temp, (char *) sym->symbol, 0);
> +	str = strdup(sym->symbol);
> +	if (!str)
> +		return -ENOMEM;
> +	return new_term(term, &temp, str, 0);
>  }
>  
>  int parse_events_term__clone(struct parse_events_term **new,
>  			     struct parse_events_term *term)
>  {
> +	char *str;
>  	struct parse_events_term temp = {
>  		.type_val  = term->type_val,
>  		.type_term = term->type_term,
> -		.config    = term->config,
> +		.config    = NULL,
>  		.err_term  = term->err_term,
>  		.err_val   = term->err_val,
>  	};
>  
> -	return new_term(new, &temp, term->val.str, term->val.num);
> +	if (term->config) {
> +		temp.config = strdup(term->config);
> +		if (!temp.config)
> +			return -ENOMEM;
> +	}
> +	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
> +		return new_term(new, &temp, NULL, term->val.num);
> +
> +	str = strdup(term->val.str);
> +	if (!str)
> +		return -ENOMEM;
> +	return new_term(new, &temp, str, 0);
>  }
>  
>  int parse_events_copy_term_list(struct list_head *old,
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 48126ae4cd13..27d6b187c9b1 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -644,9 +644,11 @@ PE_NAME array '=' PE_VALUE
>  PE_DRV_CFG_TERM
>  {
>  	struct parse_events_term *term;
> +	char *config = strdup($1);
>  
> +	ABORT_ON(!config);
>  	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> -					$1, $1, &@1, NULL));
> +					config, $1, &@1, NULL));
>  	$$ = term;
>  }
>  
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025081046.GG31679%40krava.
