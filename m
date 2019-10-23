Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBKVLYDWQKGQEE2ZVNYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB60E14CF
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:56:11 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id t2sf11442460ywd.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:56:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571820971; cv=pass;
        d=google.com; s=arc-20160816;
        b=rnmE0nSenVEMh2wzZmKGF4LAX0q6OdQzf8EE7olmdg+mYmolRCQB0UMGQqjQ9xWfhr
         eL/HIpohTVXVdPnMf/wiUI0iqrKe7qnGWsnGsIHdk4tXvV9KalxTPm0qw8KLU1wS7Cwv
         Ne+ZOIq9iMtza8aPQ39g4upie01HlD4J1AyX3nhcBZ7caWl99S0iQmFFjDfVVMk+zdY+
         Hv0gI1nbmHhYJzyGgpk3b6aQZjlTKeAevPoB8aHdZYUwDyCqmftVc/b4NU+TcHkSJSuG
         /wQyJJjrL96kpjLs6qhoE5/9lStS1pQ7QxRCrxaI9Cv18dAJlTxxlDJoLA7z1sBVFTd8
         9qfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=s6FWbgegZkAEgZsEliAtWufyqJBsb1runWsUOOxzSyk=;
        b=GuWMWobnmKgbOc2HTAfa/ekNVoJI3xSLJbiFDsN10AWVNeUaK34V9PptRPh0k9yhgT
         lS/ivTG7iLZxcAUS3GpPV7CyOuLcWkVTwn4yCRGNF2kF/ue21MMH+gxqtDAUIQvSfIo9
         ln23FmSu5fyOE0CxqN8lWXIS4QMUwBKDzHIVR9HbQy2NvsX1O+xswVERoHk9sgbjKkL0
         jf4rkQ0lajEdb/DmGSAkD5xGr2UqykfW/X0afFRYkJOcNO2z5KzQorknZb0lrf48tTqc
         vOYOyfQ7jD9yBO9hpCvr507aEYK2c8zZjq7kTHdX4hgBpOJpZd0zIJx8WLxZMBPSHS16
         Jnvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NfnvSqXN;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s6FWbgegZkAEgZsEliAtWufyqJBsb1runWsUOOxzSyk=;
        b=WjBpb70aG4mV58JdktvCcpUjBGYmNvFsC2FMC27wCa3rjPqZsTWhf6pjd4s6vOks/f
         5FeadXcfgoM3eZpKVh9gQ+BHD2D2CvlJ71fI4yV9GUrVG4OSAMbsklGwRLNigfsFC8L6
         IpsQ9p9f6lL78d+YrQT6HdljxEyud8MtBpKljOYyGkPLa3uhab5d4U7gwZIXnjyCFbMC
         pXurDYqZPbtCfjNC24IVpWqglyEUL3xwIntEfjZkLsKH8IpKa3+ljoC7zLkqDd7+Xi8n
         h6CpC6J5c6j1M5vUgK0O+uygUGkWDl29OSms58+lnXha2xHCNk7U0bwmzwbDrsAkFjDd
         2pPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s6FWbgegZkAEgZsEliAtWufyqJBsb1runWsUOOxzSyk=;
        b=lI59nGFnUVSrGWjahJsZPjXebmdTDIttoijws8vQ/5qFbzBvzvPbD0MRP8hy0+rT6W
         /7NwQM10zGazw2A1Z3ArsuVHWDAp8y0dpcZNycU24KEMlwx6DmjY2AHP1kV9YxM5EjMF
         K29wJdb2WXiRMI+vP/HZCRVGT/1zty2yu/XJb+lljAyUvLOT6qXvoH4YfJmsm7H1TEi+
         SWUtXVNuWlFrKkZEz6+9EEjE/B1jbP6+kdMMZq1yInbLenAYQ3gOuXPNGd5F6LXEH+bW
         SfQwGnCh6/rgBsRc8ZJBobjnxxLLN54SndT4ifnWeFB+21U5H7JCmfwSy60tTmHltgFd
         oI7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWX0nsDIgptXSNbFY+kbhv/QJ6ZD942W6Lz0yDa9tvxgqh+uChE
	JLJ1ljdD6YXv1J/mkwc8vSA=
X-Google-Smtp-Source: APXvYqzA49B19WFg5FnN7DwTsxEpAlgSmQy32wZz6G1WvyghGRMPqC553Rv7IHB7LXcg7uv/GTGneg==
X-Received: by 2002:a81:4801:: with SMTP id v1mr1921687ywa.329.1571820970898;
        Wed, 23 Oct 2019 01:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7496:: with SMTP id p144ls254552ybc.1.gmail; Wed, 23 Oct
 2019 01:56:10 -0700 (PDT)
X-Received: by 2002:a25:7495:: with SMTP id p143mr5832100ybc.83.1571820970559;
        Wed, 23 Oct 2019 01:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571820970; cv=none;
        d=google.com; s=arc-20160816;
        b=fIfulip6r49vjEBp4OsKGCT/grEE/vKyxmFKU+TI4pp6gYdbrl2L71tmhitbgoEcj7
         L+xcOtfqJVCPJyM4S4lzkVVd544LuofautMwjct9CeqjPYjNISX6qa4TVE+H52gGiRb2
         rUeFFcdU8EuA1+StfPKYewwIH1sL6OXnb2dAX6Jx0rv4BLOlDQkwfDkVQIIks30nJN7c
         QeIZ5e9tZYFL/rkSoMxv1tQHbZsf3uY4lityKan+J5gs1xYmJ5eHFWxbBuLzeo/POUA4
         mqcUiQ3l1wu/shoiGKon92yLZ7hgO5fEwigJmqsJBTy4J14ZAB7LIFa75P2XDWqBkyqk
         Za2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=EvCbYNTh8y91QToWpilpaNg9PeqSBs8+413OMwilG5k=;
        b=eV7VsMeBKsukylvY/DHRQ0PNusxi7trFnDCxSuB5RwuBFiLrYzkZXwj2IgbaJmFlYD
         iTRYBhR3RQKyg3eGrY515PCCLIZx7rkg5ekVUypKV5wPWnrWcFC/qZRhwApw/lYX1bXH
         7l+k3kEHAdoKWD/8bJzgvC/cUE9pePWbB9Fq8L7vD4hVGxNcqkBSMACrq7AYx/2uOg2w
         diHiCOeh96G8/6Wq7pF3LFevwGukfnfAZmccY+5gmbNWoX/H6Dm4SmZlQ0gkSUL5S21e
         mBK7gYom5Lc3aLriZzHEc9NQnQ3K3WiLsLnZG6T61ihwzWcwugJxHJwRYo66tBUoiiR0
         SMYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NfnvSqXN;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id u8si1333551ybc.2.2019.10.23.01.56.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-ql5HWQknOC-Kj9qZDxUaIA-1; Wed, 23 Oct 2019 04:56:06 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 462DC1800DBE;
	Wed, 23 Oct 2019 08:56:04 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 495EE60BE1;
	Wed, 23 Oct 2019 08:56:00 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:55:59 +0200
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
Subject: Re: [PATCH v2 4/9] perf tools: move ALLOC_LIST into a function
Message-ID: <20191023085559.GF22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-5-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-5-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: ql5HWQknOC-Kj9qZDxUaIA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NfnvSqXN;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Oct 22, 2019 at 05:53:32PM -0700, Ian Rogers wrote:
> Having a YYABORT in a macro makes it hard to free memory for components
> of a rule. Separate the logic out.

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.y | 65 ++++++++++++++++++++++------------
>  1 file changed, 43 insertions(+), 22 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 27d6b187c9b1..26cb65798522 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -25,12 +25,17 @@ do { \
>  		YYABORT; \
>  } while (0)
>  
> -#define ALLOC_LIST(list) \
> -do { \
> -	list = malloc(sizeof(*list)); \
> -	ABORT_ON(!list);              \
> -	INIT_LIST_HEAD(list);         \
> -} while (0)
> +static struct list_head* alloc_list()
> +{
> +	struct list_head *list;
> +
> +	list = malloc(sizeof(*list));
> +	if (!list)
> +		return NULL;
> +
> +	INIT_LIST_HEAD(list);
> +	return list;
> +}
>  
>  static void inc_group_count(struct list_head *list,
>  		       struct parse_events_state *parse_state)
> @@ -238,7 +243,8 @@ PE_NAME opt_pmu_config
>  	if (error)
>  		error->idx = @1.first_column;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	if (parse_events_add_pmu(_parse_state, list, $1, $2, false, false)) {
>  		struct perf_pmu *pmu = NULL;
>  		int ok = 0;
> @@ -306,7 +312,8 @@ value_sym '/' event_config '/'
>  	int type = $1 >> 16;
>  	int config = $1 & 255;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, $3));
>  	parse_events_terms__delete($3);
>  	$$ = list;
> @@ -318,7 +325,8 @@ value_sym sep_slash_slash_dc
>  	int type = $1 >> 16;
>  	int config = $1 & 255;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, NULL));
>  	$$ = list;
>  }
> @@ -327,7 +335,8 @@ PE_VALUE_SYM_TOOL sep_slash_slash_dc
>  {
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_tool(_parse_state, list, $1));
>  	$$ = list;
>  }
> @@ -339,7 +348,8 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT '-' PE_NAME_CACHE_OP_RESULT opt_e
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6));
>  	parse_events_terms__delete($6);
>  	$$ = list;
> @@ -351,7 +361,8 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT opt_event_config
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4));
>  	parse_events_terms__delete($4);
>  	$$ = list;
> @@ -363,7 +374,8 @@ PE_NAME_CACHE_TYPE opt_event_config
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2));
>  	parse_events_terms__delete($2);
>  	$$ = list;
> @@ -375,7 +387,8 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE ':' PE_MODIFIER_BP sep_dc
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
>  					     (void *) $2, $6, $4));
>  	$$ = list;
> @@ -386,7 +399,8 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE sep_dc
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
>  					     (void *) $2, NULL, $4));
>  	$$ = list;
> @@ -397,7 +411,8 @@ PE_PREFIX_MEM PE_VALUE ':' PE_MODIFIER_BP sep_dc
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
>  					     (void *) $2, $4, 0));
>  	$$ = list;
> @@ -408,7 +423,8 @@ PE_PREFIX_MEM PE_VALUE sep_dc
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
>  					     (void *) $2, NULL, 0));
>  	$$ = list;
> @@ -421,7 +437,8 @@ tracepoint_name opt_event_config
>  	struct parse_events_error *error = parse_state->error;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	if (error)
>  		error->idx = @1.first_column;
>  
> @@ -457,7 +474,8 @@ PE_VALUE ':' PE_VALUE opt_event_config
>  {
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4));
>  	parse_events_terms__delete($4);
>  	$$ = list;
> @@ -468,7 +486,8 @@ PE_RAW opt_event_config
>  {
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2));
>  	parse_events_terms__delete($2);
>  	$$ = list;
> @@ -480,7 +499,8 @@ PE_BPF_OBJECT opt_event_config
>  	struct parse_events_state *parse_state = _parse_state;
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_load_bpf(parse_state, list, $1, false, $2));
>  	parse_events_terms__delete($2);
>  	$$ = list;
> @@ -490,7 +510,8 @@ PE_BPF_SOURCE opt_event_config
>  {
>  	struct list_head *list;
>  
> -	ALLOC_LIST(list);
> +	list = alloc_list();
> +	ABORT_ON(!list);
>  	ABORT_ON(parse_events_load_bpf(_parse_state, list, $1, true, $2));
>  	parse_events_terms__delete($2);
>  	$$ = list;
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023085559.GF22919%40krava.
