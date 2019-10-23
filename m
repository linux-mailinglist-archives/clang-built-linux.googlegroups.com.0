Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBENEYDWQKGQEKSHZY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4FE147C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:40:50 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id l14sf15363368ybm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:40:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571820049; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxYfgNW4rkUr4g+ektXnVCVsskzxq47s7ARpHl872b7SW8O0MYg3rPbB5bgMsqsESk
         Bnh6YkxssWQmlmAowpW5WcyxTJ25Hr+HC+bvC+5KljZERnuESHPD6W6VVokcbreOrYBC
         z+C74xfYCXJd0WkDSK9X7mIASL3k553JUSa32YlrFXKqzwn5Sobub5WuWJKdde+MC49o
         OMc7fu3DIfDVMifJemybeeDUrnBEQ6SKAhv4LNE1eiw86WqyhWsSOu1P78dWEpggG+JJ
         wIQICHfdKwNMFbrduRTwsAnQ1ZlYd/FVsDkUN76w6kkuf6E8Q1qcYcmrwAB4XDy5U3QJ
         Yt9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=OPEu1WVz92mEPj80sIYLdbjyez7mYHp+7la8+jNz+LM=;
        b=Ha5CY8C/c8GGUNrQi1X6OVnCyCVw0VL48cLxMgVEwTEzvnhQ0b797b7GClwaNhGYcK
         85tCGQQGwxMKKPuCKQr27v8jDaCvkNGAWzbh0Kc3qpbYssKi6UuIWk6AbHRlyyMiPD9a
         eAa8lUBDAYDuUJ8sfbvxeL/6P8qGIQvvsLPtwqB0HMViRHGgGkFbQvxZrD9pDr8D6vut
         n71BLMvf+ltbCN7r6OQJ5MgMbrtXKXy8I860ds9iYKS6mf7CuF9JxUn+F0yqEoxh3yEZ
         2VdTS8UTtRMBVv4Ab1ve4oR1e0nVI8Y8gV7U+tCTvfGO5ayXco6qwFpUdBSmmLc9H88L
         +lbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M6N6cVNY;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OPEu1WVz92mEPj80sIYLdbjyez7mYHp+7la8+jNz+LM=;
        b=LYsWxRjEqFSRjp8MA78EZoESUW9leTfX4Bbomi8oAEMk5poLq0+6LQfbmFXr8Uc/WJ
         U9wiU7RZR2+zybm0oP4Ybq6uW6TV9+FlUDeDR32EjMVIe3Q3C225sLmJU3i0o6rvbiGJ
         DoGtU193MDlkdGkqRH0iWAH1SIVrnoOEuPKrbUQwSp6t01ewDuyqPcP2jFkeVyf1lN6p
         LIgdRlfhCafa0RPnrmF1XqoCYTzLKk2olc9sVLuugSJ78SHUOQZq6wKW2LSbxkM18X/Y
         wF1MYrxXsjHWYw0tqD9BHMEmDcY46+iXheyV2s3upU0Pg+2z2U5oLlduIhqtDPnHZNmL
         KQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OPEu1WVz92mEPj80sIYLdbjyez7mYHp+7la8+jNz+LM=;
        b=iMqhbNAR9O2K47cIWtQdu03CEx65/nNn78WVtFk59Nsiv3gvx56uwhJNXafMXyLeYR
         yZKpzFe6YrRNdh8emhsXScPuxRDar05S/3AontBKnQdx3Wp0iMwIP4H5fFdvpcdperEi
         y/MFVYMF5qeWp9z8COUiXQbmHeq7YHPWCkiWo9ocxbqiS0QpdgHDTSon5+Jxbf4R292A
         pnTZrvjgg2q/HK5mEu1m8N5btVU30hKUzXmfLpjmeTxTBAjuA1wtHXMjgwml/zgy4SMU
         w+Fzk1X6B+YLnJ8YHhM8zE8ZX6GvU+B+WZP7fp0idorKvQErsk0Zy7rNyqv3fv+ZKOiT
         3ktg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpv/0DvDzoUQVAGXe+jMX/0+eIVQk+Ze69Au9LRJn486WPc5yr
	14Ffq5a+aymWHNeQkmK0o4I=
X-Google-Smtp-Source: APXvYqwuJN6/s0SinT3KxxV16BJpWMpfyCzMcsiXWKeuvJpgBtfhtor5NQFQA0zHRCTIwCr8cr+i7g==
X-Received: by 2002:a0d:d307:: with SMTP id v7mr1934338ywd.507.1571820049682;
        Wed, 23 Oct 2019 01:40:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8410:: with SMTP id u16ls248947ybk.0.gmail; Wed, 23 Oct
 2019 01:40:49 -0700 (PDT)
X-Received: by 2002:a25:bc49:: with SMTP id d9mr5654987ybk.293.1571820049216;
        Wed, 23 Oct 2019 01:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571820049; cv=none;
        d=google.com; s=arc-20160816;
        b=pD84FLujlhEPp2rug5rIlCEz+yU88RvchW10RRSNaX2FHMKGpNlij067nyJk16cE6L
         Crca/D7P8eBKsn0LntuZRJncsItE4AoJfwb3HOCv/uIntNnep2JO6QMMcScD4cfs+OcA
         J278iSwTxKhReMm8zoILSF2vDyxH1UgdSkHKvpuyEYkD30LoQtZRxKRLnfqzgOHkiCKh
         rDOLWl2a8FhJC0CzxCyFueKDmfIJgWVs4IF8t7dF+X6senoA/TIFwwtCFwbpLYplGBcj
         5K/GP8ma6S8idUF1GMxMbZ15zbrZmraDYV3+b9kGxcGlk5pmwN9sQUCnk9emi1beWk38
         LM0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=Leo1i+YgTzOAxyY1K0L+NX63hVj5HiYTBpizOFvje2U=;
        b=VjPshY0MPEvYWqNwoQDeOf4kkapC2tgD30s18pMuIhn9DUDRxRGORdKSjOkUeyx7F5
         NxYrZ3lspFCM3rkZ0nkKPGxATVzZ/ojtq6AN+nvISqItDe3tqlAcJ7BKvNuk7IYcb3aH
         K/gRGpoh/tbcgRVzjjkyFczT812gA1zB+JUNjoM9ZZRJ5u2h3KI023MMFdYLT4YkToyB
         8LbIMr10Y3esH2ErQjGzDKzFrhTqAlSwzdxEoVNPkJesmAYMO4sm7R83dBpyBgM5ZXPu
         AKVVRk1VyRu3AwpxKHtKqJ4OYZNfaYYlrP/Ygzb9ibe9RE0XPKtF3J60r62lLvR5ir1G
         vsPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M6N6cVNY;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id j136si1103743ybj.3.2019.10.23.01.40.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-apkC9BGkO-e0K5zNBfDeLA-1; Wed, 23 Oct 2019 04:40:46 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44F761800D6B;
	Wed, 23 Oct 2019 08:40:44 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 1FEE360BE1;
	Wed, 23 Oct 2019 08:40:39 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:40:39 +0200
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
Subject: Re: [PATCH v2 2/9] perf tools: splice events onto evlist even on
 error
Message-ID: <20191023084039.GD22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-3-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-3-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: apkC9BGkO-e0K5zNBfDeLA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M6N6cVNY;
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

On Tue, Oct 22, 2019 at 05:53:30PM -0700, Ian Rogers wrote:
> If event parsing fails the event list is leaked, instead splice the list
> onto the out result and let the caller cleanup.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 4d42344698b8..a8f8801bd127 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1962,15 +1962,20 @@ int parse_events(struct evlist *evlist, const char *str,
>  
>  	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
>  	perf_pmu__parse_cleanup();
> +

I dont understand.. is there something on the list in case we fail?

> +	if (list_empty(&parse_state.list)) {
> +		WARN_ONCE(true, "WARNING: event parser found nothing\n");
> +		return -1;
> +	}

this will display extra warning message for fail case:

[jolsa@krava perf]$ ./perf record -e krava ls
WARNING: event parser found nothing
event syntax error: 'krava'
                     \___ parser error

we don't want that

jirka

> +
> +	/*
> +	 * Add list to the evlist even with errors to allow callers to clean up.
> +	 */
> +	perf_evlist__splice_list_tail(evlist, &parse_state.list);
> +
>  	if (!ret) {
>  		struct evsel *last;
>  
> -		if (list_empty(&parse_state.list)) {
> -			WARN_ONCE(true, "WARNING: event parser found nothing\n");
> -			return -1;
> -		}
> -
> -		perf_evlist__splice_list_tail(evlist, &parse_state.list);
>  		evlist->nr_groups += parse_state.nr_groups;
>  		last = evlist__last(evlist);
>  		last->cmdline_group_boundary = true;
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023084039.GD22919%40krava.
