Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB4HDZLWQKGQEVVPMCRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D369CE45B4
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 10:27:29 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id p66sf1347853yba.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 01:27:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571992048; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/0mCuCy0Qg4JGKXYnn7+KC5TqGIZGG7F4RGRUmkapLxaF1XlKl4Hh2XC0CE0jDA9M
         csruPvqe42g/tkhB6PVqucw6+UKrAFWb397heESOUZajvTKEcib/u9PgWPpgtVh3phBc
         txaMLTolbmRgsHUYmMvLXnvT/ZyTUGR8FTHTb8r7F++XsaVHruSyMVJIbLWtWqkTSWqb
         K8gLijphOjYB0ycixxC9mnCYb6uZDdp0eByY0xzzmE3909v41n0yzDRApVO4R15vMaql
         DII7LTcEO+c/GYB1jyNB7GaNwVh0cpsdJcP0qfxJdFTW/9HGRvQcSzlN3XVh7NP3Sek8
         ajuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=aK0TPIhquO8BZuOgWDNq+sKZYYFVF+eMNafRibQISSE=;
        b=ZdDxSySnNVtlGjl8xkO8a+msooJAT4ZfjzFhcAl6btJzMED+SKAbM2qB1/w+H7LRE7
         LwnxFb2hyYhPYbTcc+i6yBYsVveLEgSQfBCQbAvsC+pniG9em6W4dX6VcvDBmZ0fTzgP
         R7A6HzfHL+H9jipeN+6CMEJta81KNnyEZXPOR3mmsrYCd0LK3URbszEHl7E0VnneVCFg
         Zh32oD3qULE+eGDxSXzby/xLc0U3GykQNJk2ufCJApf2o22Zs3IbzdCt5V+asROYPveW
         PyZYUfvVLj6CFDY+HOn/JWhtXzn5rOBk+S/Y2NUuiF5dt8C8ZXug/WYtM9v5eRkEnDBf
         jWVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JhPv5ImW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aK0TPIhquO8BZuOgWDNq+sKZYYFVF+eMNafRibQISSE=;
        b=AoYY18YrWbc5h/ZHILd6oxK2udmL4WK/hH+0hG2KHsI2v3RMAijcWXJlX0ZbgMIRJZ
         1dbtHX0L3nKn03il1+CPUCS3tYDVQqyGUoplqJVEJcCdDnv00P509fEwsuNnEkVCrrKI
         p2BclxjrJHPnjrhV9XIEFg+i75zV0r8KWhUEI2n/BGiSK8b0sHKBNQHteFRwc3WxOfFQ
         CmCMTLZMeotAy4lx9WtFoZj5aGEjC6KRCD+m2RqYqRqGRR+yc6NLm/osb/VhKUCG0Tmo
         kY7777s/wORa4m3Vv8YJSh5VrUIRcvi/hr0kPgRtO6y2MCN+ou4e/aTqaaL0k62o5H1W
         8Gew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aK0TPIhquO8BZuOgWDNq+sKZYYFVF+eMNafRibQISSE=;
        b=cKS0+t3FVcXtIUWEChVYuyXI42alidSTHsU5xWVWcrkz+FkxQYVF1czzIK0t4zfrRw
         /WanZqFRsR3ScihjThg1NJZ7QP7KPWqci3XmT0os3OWCSPKNwJLq3lvhUtxQb6pzqmZY
         OKtNhxxK/FkjwF2FDZDFM1xQGR5xz3hUAUsxNgXmIMaRF9jPKEkj8ZHzQaAs3CSToPag
         ECwtGDia6fSThmicbmphG9wyFZTlx4gnQQ1i2k7eaHFtPr2JKevwLSWgn7ZSv+AemuZ1
         OlwBx4HeePJjYxiKC0EBd3QrccSx9uiLVgR/K22P8d3lepOBHzj0ThBWd1kD6y9Fy7v8
         0gFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsQ1acgSliGHHVQe1xpYOeYHqpNS3+8TCyBxK87YzIyhdzkiTU
	xY0UEWTQYwdYSokjm54fqb4=
X-Google-Smtp-Source: APXvYqwTIdUE+zwyJJ0oFQaFLJk752Y5kFAvi8tUXB5F5WjL+ybt7MdGnCWrUxRXjVmr4eVkNB5n4A==
X-Received: by 2002:a25:7412:: with SMTP id p18mr2067686ybc.306.1571992048629;
        Fri, 25 Oct 2019 01:27:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c04f:: with SMTP id c76ls1367356ybf.10.gmail; Fri, 25
 Oct 2019 01:27:28 -0700 (PDT)
X-Received: by 2002:a25:1f45:: with SMTP id f66mr2172380ybf.218.1571992048111;
        Fri, 25 Oct 2019 01:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571992048; cv=none;
        d=google.com; s=arc-20160816;
        b=N+Jwv51WKCkJLvyl1NfyyP1k3lICWPuw3XA/5B6v1ogTMCsImNDZnOV/Xsow05XBZ5
         OaOxuaHQcWeCPFiDHHXuwlnuXm88iINvcThvJhgSlku8emXF+xif72a2bBLz7AHcOWrm
         rxk773ERMt0OuaZQrBYINEy1ScPUqmFDwxnb6DJYvz4dpexky1yQTlJH160b5jKp7Xnf
         k/S9Ey0d8SUexd1ufkM/33PeHB9p4mNQgWOsq0nGT4ggZl1zjWF9yh8+NwupmfKAMueY
         M0eL6e9GRVsquC2gVtm8Ym/R+T2P5PW3XQTs8KjfDy6DBegtPZjQbgNXl32XCAUpsuK+
         Nwzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=qcI5t6CsVJQabA12BdZ1TYYosDenntzCg3SsjvCibXY=;
        b=PhYePURO2cNbQipAExSLKSPw4328S8ULOfTXFIDegpFjFI1SQQVesTw+lkrQiFM2HH
         hP8xx21Af2K9vpnQoExIC+yh+T/zRvpm/sI0i/Ho7fj5MKPQdagdGXNEaiuI9UKUfveG
         l4IcchrsZ6cC1ddNMx4rP8mMAnqM/vIyDv5Ns6MLVZvQV6SxJBx+68cYVqD6Y8ANw7r/
         Z8q5u6/xSZcgFpCA2gwW9qmYnTDSmFzia8kWftClb6szUG6J5yXHQtFdus7Sju9e1Tt3
         wq1J7BM6rRQva3+xGcZ8Jnb3WJn1XO+ImWImXS5SWlC6Hw1pGdOVjb+2ScrINJmm9DZs
         Ul2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JhPv5ImW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id r9si112474ybc.0.2019.10.25.01.27.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 01:27:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-5c6reNZEMcu2u6L7u5k0yQ-1; Fri, 25 Oct 2019 04:27:21 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D615B1800E00;
	Fri, 25 Oct 2019 08:27:18 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id B8291194B6;
	Fri, 25 Oct 2019 08:27:14 +0000 (UTC)
Date: Fri, 25 Oct 2019 10:27:14 +0200
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
Subject: Re: [PATCH v3 6/9] perf tools: add destructors for parse event terms
Message-ID: <20191025082714.GH31679@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-7-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191024190202.109403-7-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 5c6reNZEMcu2u6L7u5k0yQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JhPv5ImW;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Oct 24, 2019 at 12:01:59PM -0700, Ian Rogers wrote:
> If parsing fails then destructors are ran to clean the up the stack.
> Rename the head union member to make the term and evlist use cases more
> distinct, this simplifies matching the correct destructor.

nice did not know about this.. looks like it's been in bison for some time, right?

> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
>  1 file changed, 48 insertions(+), 21 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 545ab7cefc20..4725b14b9db4 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -12,6 +12,7 @@
>  #include <stdio.h>
>  #include <linux/compiler.h>
>  #include <linux/types.h>
> +#include <linux/zalloc.h>
>  #include "pmu.h"
>  #include "evsel.h"
>  #include "parse-events.h"
> @@ -37,6 +38,25 @@ static struct list_head* alloc_list()
>  	return list;
>  }
>  
> +static void free_list_evsel(struct list_head* list_evsel)
> +{
> +	struct perf_evsel *pos, *tmp;
> +
> +	list_for_each_entry_safe(pos, tmp, list_evsel, node) {
> +		list_del_init(&pos->node);
> +		perf_evsel__delete(pos);
> +	}
> +	free(list_evsel);

I think you need to iterate 'struct evsel' in here, not 'struct perf_evsel'

should be:

	struct evsel *evsel, *tmp;

	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
		list_del_init(&evsel->core.node);
		evsel__delete(evsel);
	}

thanks,
jirka

> +}
> +
> +static void free_term(struct parse_events_term *term)
> +{
> +	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
> +		free(term->val.str);
> +	zfree(&term->array.ranges);
> +	free(term);
> +}
> +
>  static void inc_group_count(struct list_head *list,
>  		       struct parse_events_state *parse_state)
>  {
> @@ -66,6 +86,7 @@ static void inc_group_count(struct list_head *list,
>  %type <num> PE_VALUE_SYM_TOOL
>  %type <num> PE_RAW
>  %type <num> PE_TERM
> +%type <num> value_sym
>  %type <str> PE_NAME
>  %type <str> PE_BPF_OBJECT
>  %type <str> PE_BPF_SOURCE
> @@ -76,37 +97,43 @@ static void inc_group_count(struct list_head *list,
>  %type <str> PE_EVENT_NAME
>  %type <str> PE_PMU_EVENT_PRE PE_PMU_EVENT_SUF PE_KERNEL_PMU_EVENT
>  %type <str> PE_DRV_CFG_TERM
> -%type <num> value_sym
> -%type <head> event_config
> -%type <head> opt_event_config
> -%type <head> opt_pmu_config
> +%destructor { free ($$); } <str>
>  %type <term> event_term
> -%type <head> event_pmu
> -%type <head> event_legacy_symbol
> -%type <head> event_legacy_cache
> -%type <head> event_legacy_mem
> -%type <head> event_legacy_tracepoint
> +%destructor { free_term ($$); } <term>
> +%type <list_terms> event_config
> +%type <list_terms> opt_event_config
> +%type <list_terms> opt_pmu_config
> +%destructor { parse_events_terms__delete ($$); } <list_terms>
> +%type <list_evsel> event_pmu
> +%type <list_evsel> event_legacy_symbol
> +%type <list_evsel> event_legacy_cache
> +%type <list_evsel> event_legacy_mem
> +%type <list_evsel> event_legacy_tracepoint
> +%type <list_evsel> event_legacy_numeric
> +%type <list_evsel> event_legacy_raw
> +%type <list_evsel> event_bpf_file
> +%type <list_evsel> event_def
> +%type <list_evsel> event_mod
> +%type <list_evsel> event_name
> +%type <list_evsel> event
> +%type <list_evsel> events
> +%type <list_evsel> group_def
> +%type <list_evsel> group
> +%type <list_evsel> groups
> +%destructor { free_list_evsel ($$); } <list_evsel>
>  %type <tracepoint_name> tracepoint_name
> -%type <head> event_legacy_numeric
> -%type <head> event_legacy_raw
> -%type <head> event_bpf_file
> -%type <head> event_def
> -%type <head> event_mod
> -%type <head> event_name
> -%type <head> event
> -%type <head> events
> -%type <head> group_def
> -%type <head> group
> -%type <head> groups
> +%destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
>  %type <array> array
>  %type <array> array_term
>  %type <array> array_terms
> +%destructor { free ($$.ranges); } <array>
>  
>  %union
>  {
>  	char *str;
>  	u64 num;
> -	struct list_head *head;
> +	struct list_head *list_evsel;
> +	struct list_head *list_terms;
>  	struct parse_events_term *term;
>  	struct tracepoint_name {
>  		char *sys;
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025082714.GH31679%40krava.
