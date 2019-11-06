Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBJFPRPXAKGQE3APJWFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5D5F1869
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:24:37 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id n6sf10759213vke.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:24:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050276; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQ/p6YjszNLgDxCRsPWWZah2Nc6RaOllsd4K1RI6lc6enuFzZkVDjOOUBVS1CYE60q
         s1rgzaXjkFXHHXxokOxYotLbH2MmthOyzfDPmz/9/d8Hz7tDPNkN1vDj2kco6o9BAG0r
         YmN9WXoe/9CUzE8RZFbCEHkl8FnJL3rBAzhQVjSu3ywyygxBWL7pVgK+yjvsOPRAY585
         3792bquRQwaS7C38RVxGtj6Fw5sb6YGTkHckN+OF8WroXj05Pivg7L5wVKLzQUA0tTJZ
         KU3UccAEdWOZyrXFPwH7Bb6ALNPzJ5LeIE46attSc+YMT5DNDWt/3/DcXR2C6Is6ZiJQ
         nptw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=VPKv++alh1TlruFfFfrie8svYdONU5NvUxDdoVjbgEQ=;
        b=kPxjdHo9qct686L8nR7J1twQ9Xt052kyj9jqSzckxt/UHClb2nYmyM6KiFnvn/tdKK
         VBON+NjY5b1U4odVKrDPPQWSmGIPw3+tby9XyS53/pczDe2c2Tmr7xyXcy1o/yzlFVI9
         a6GqRlF18I+tUsxH/IWBCXx2+4i76+6ETZ5NsRlKTHjISw1nRJgqMD7BbhNRxjGKu5eE
         7KDuixqgTCo3uAOR7/kKfAiGhD1s15+a/GNRifSOpSh+laE5b3SZi1ikkpf3rLKtNV5i
         j5yqZc22ejmooQK/ZwTjW7AD0quPAP9xhg/+A7/SxSeamSjSgmlsv7zrZCO3sVoWcESi
         CjBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ecF98z04;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VPKv++alh1TlruFfFfrie8svYdONU5NvUxDdoVjbgEQ=;
        b=fo+Yn5wH6TLxfm+BlCQm/o3eYZdr2xqkKCj4R1JgxA9v0/8n18bMdY/qrdpQ8U5fa6
         +OGQ9vhbFJfvDPhucq85feKZ4SWT4TM6KEwE1nYKUsSIfj3KOG1JcDj3vu3J9Ry+Kn4d
         bn0Pa/RsuQahfTt8nwIBnDITPfdkpYwdOUNFJS+8dFwkY8E2slvvqJ/XcR5/zwuRnO9P
         fSVdLp32nQiGVTgoZ7P8tZswfsWnw4ZuykqY5nfzPKbjrCOB/aZfReZd3XIUNmG4zBQu
         reIS2GtX2UghnkzIy4LwOM6rOuS+YG+SBKFGjSxUEaWcaKEmNZevZkbk9ZHNRIgHjxPQ
         dvdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VPKv++alh1TlruFfFfrie8svYdONU5NvUxDdoVjbgEQ=;
        b=OIX0zTL7MB9Ig7yIQxC84LyoHBypCoDmm7dkmNlU4n+C+4ha3E1BfbiHoYDtPLHRgy
         fqtAtZEUJj7fiMjgSUDIsfuQIwfsOYQs0M0hbDKDWRYXsgHhTumeDMfS9Elx/wUfB+eV
         xuWO/QCpNY84Dk4iyeRYJIRGeTJSS5VG9NL+vhxbA2zLbZPe2he9RgmYXqJQnhvyFPYj
         CLwJqW4zr46reIk68XALWxi9DldclxcEMdigXdH0vVyy5qxvbzQTohA1BTSaGp8RD0O8
         kWc4W5zSop8EQeUH04TYNL+WfR0vkUnPCxQnGRv4bp224tqiwPq/FGB9GIjvBMXkT5L5
         dJPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXV6PTSCBK8Pp+tAXBDu2t4Z4GSa4ECeA2lbDK4ElDXFLDdsb9
	X9sWYiUgm7kLczv03EqmV7c=
X-Google-Smtp-Source: APXvYqwrZ3HjsUJ6gRHSL4hjTxjdw6C3fN5Ntk37W2qd5KQPbrZs0aCtnyNQd95w+vaWKEkjdEh4ZQ==
X-Received: by 2002:a1f:f24b:: with SMTP id q72mr1433556vkh.94.1573050276212;
        Wed, 06 Nov 2019 06:24:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c387:: with SMTP id t129ls90259vkf.12.gmail; Wed, 06 Nov
 2019 06:24:35 -0800 (PST)
X-Received: by 2002:a1f:c441:: with SMTP id u62mr1392263vkf.88.1573050275810;
        Wed, 06 Nov 2019 06:24:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050275; cv=none;
        d=google.com; s=arc-20160816;
        b=nigShonKT1VROccsxoWoD9wDiZ4LoKC44lKEkm7CG9jf5bQbxmEbjnTOHyyvB7ggYB
         qj5btb85+ueJ4VumXu+xRR1yDHAJBx3vR9ZxcqYajw4E2nF13JcmrDqo3s9kFEAwtvJL
         mGrcPsFgNHeHa9hgF8w5q1mzXXHa1/sMLKG3/lAcrjKMA1S9uBvSJfu0nOjEFeZEGDJc
         egViBUUuFNe8tC4nFOWToJBOVSK9ur0m1jgZqzbFuQ2WPHMFppSGNWMMnFRVPeHbWFFo
         uOI489Yz3L6+YoiOlMSNEvSIcDNle+CPqfvSvoYi2rqGtXF+hqfGGdecFOg8JYpkdLmS
         tS1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=2vQG6Eler41ffZXEqOq6i7VFXxaSF0Gaziph9yLSU/4=;
        b=P+9LlxQzdR3RimHTslCsoDMxihzmKqoVY5WB+nVxD2uyZH+DysC7cMIJ8pxPMqoSXu
         BlSFQYNrmQGnZMRVDFG4PPAYWoAugs8wrCcjfBAXxpfHia8SsYnBSqUNdzoxkXfchJ0n
         P+eRoMKcMXbnwBXYybT9swMIzDp6eatc9nIXbB3PMn9L0ejeSf+my7zUKzaDN81xuB0Z
         bQgDoQAVGJ3Ko27Jb1yZr7g1SBToWI8fycWlcrRRMrFCRQ+5uSdQ3BuAnb42xKO6tcWb
         M4o/JLnnaCgJ2U4Wr88oL4T1Q6PQexK4wbgepGKKGgPce1kprV7YBaGKOIDgy66OsiNu
         RdVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ecF98z04;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id s19si1208022vsj.0.2019.11.06.06.24.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:24:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-z9fAWbnJOnqhnrZPRk5xTQ-1; Wed, 06 Nov 2019 09:24:31 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CFFB1800D53;
	Wed,  6 Nov 2019 14:24:29 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id B4B1D600C4;
	Wed,  6 Nov 2019 14:24:24 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:24:24 +0100
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
Subject: Re: [PATCH v5 06/10] perf tools: add destructors for parse event
 terms
Message-ID: <20191106142424.GG30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-7-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-7-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: z9fAWbnJOnqhnrZPRk5xTQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ecF98z04;
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

On Wed, Oct 30, 2019 at 03:34:44PM -0700, Ian Rogers wrote:
> If parsing fails then destructors are ran to clean the up the stack.
> Rename the head union member to make the term and evlist use cases more
> distinct, this simplifies matching the correct destructor.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
>  1 file changed, 48 insertions(+), 21 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 545ab7cefc20..035edfa8d42e 100644
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
> +	struct evsel *evsel, *tmp;
> +
> +	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
> +		list_del_init(&evsel->core.node);
> +		perf_evsel__delete(evsel);
> +	}
> +	free(list_evsel);
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
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142424.GG30214%40krava.
