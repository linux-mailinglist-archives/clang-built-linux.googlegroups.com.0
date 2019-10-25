Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB4WXZLWQKGQEO6MNZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D43E4515
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 10:01:55 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id c189sf1125572ywe.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 01:01:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571990514; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPvGq4SKHTGMD9mwyFfPKNkn985qxdkCku5ZOFGMabVZqw9x4L+fNpc4yyVQs/a37n
         l/qnLQP5hDOjMKCNceAPx0+N/C0MC9xWgdXIKp/PcEGaXU1d1kK9BUuH1/OKOiHFKNO5
         y+w+T33S+w4K59jDdZu3PA7jyaLKREBeGznevWZBxMbgKqlIOE9M1XfnM18PhhzoSUUW
         HGIRyJmC4PPYIhN9tl9cETvyyLLkR/wzI3sw9+9DeqiQYZDwhC0RZ1f+2hRpwSQSLVZ6
         XzyV7QueseDf4NbMNfu6fXOS0w7l3/Rvy5oK8e1oXsiL8FldCt2HKxEFNOUEI80SgB6n
         BlVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=rHByyHKOqjAkQgPCgLV8jo2ubUcBR5c3DmuJRLK+WLE=;
        b=fW3uqfVOjuSCKbTrZ5m9hrjdj5LLGKWaSLPi8g/cYVDYy3HgBi9hjdatI+0dTU2F4g
         G5Iamisr4HnoPMYoJKyyb56XXZF0x26LsUZ0AoM8Npo+paYOZ2fOwM2y4jbA0UTeZJ3z
         E5h0jkA8V3HS6+rYW/uvj2tRV7jI+/cJNT7KkftgCP8IaUnAPh6EyvVIxaU7XuflAwGy
         cOkCu5G2BDy7WkJLOAbvP+MSlUqQue/2gdTpgtYbwJHAPDCPJ5Gw71LO678tt/ovGxL2
         cG6yDFAkts3Zi85YIoxzghXmZ0ySmShzqqDl3P6qBnoIxe7IdhJke5ryTtv7vVETGNZW
         0ljA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AtqC8MCW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rHByyHKOqjAkQgPCgLV8jo2ubUcBR5c3DmuJRLK+WLE=;
        b=D521CBY0L1lLeaIBAARGj3eM3Y1Jqs5uQTKLRJVMENDUq0a/hp7dbOxv5f/Qoz7dLE
         e8beJof0SJncjJfFRFFjDqx/P/bnThWOzBoijDrMhbTQHlTfRUbv6MadjY8EmWlxaQic
         NV5/GVWHH22oSv/rpo6Ed++RiJHB/ov/nW5OOl0sxCe6pRL8dYK+EnxsW05tTbFefuRg
         MnyeOUrJ6KtY68IjO2ZdOWLUkEkZauXeTUIazBMbFz+2leOjeSxpAFKo1WEUOAnsaF8f
         ZlXTN7M0fnJyWvN37nUAlwmPwSJeUaWD309rkdMnrZy1d5DcbJzXez/dCRj+rRQcOHha
         G8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rHByyHKOqjAkQgPCgLV8jo2ubUcBR5c3DmuJRLK+WLE=;
        b=jCc8oXZEpb6tH9WvfFzZX8MfEphZvZw578srcfdy7KIemwJ8vgRyNNHzBZyEjnXSVS
         J5dHiVnI22SzWbgSRcaVZ1LeIsiAKTybXAYuFd9Z0fdEy63TbvcFUr/b9TSKabIJ6ZmK
         pXaR1WsyVImraJ2CHNrOnD9S6gRIKwaY2SlPfpR0j+MDtiHkv/nI2vZe++WKW/2ZdEMw
         /faTQLriR/LOPyVuY5FhwI0zkqXDIKbNkCiFkze+XzgAOTvGO158ajq38o7fFBZelMj4
         F0mQX+6d3SEhM6imWZ5GZM9ptCmq+RaE+mxVvxWZGkLUa9en/zGmBtD9mqr1EtPWWnOT
         cE9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFZfo6+m0uMOd727mu112c2GLWHGEp3VScMPvDMZBAkVswRJ7C
	Eii2w7LiG7fHnMwUTsMI5/0=
X-Google-Smtp-Source: APXvYqyHKpEcaMbSh/9LMGRH0lF9qH49qg9KCNIyDDcMBtincWRroofJ6C+za/uDbZGG4TlBd+4inA==
X-Received: by 2002:a81:4112:: with SMTP id o18mr1168933ywa.7.1571990514589;
        Fri, 25 Oct 2019 01:01:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f686:: with SMTP id g128ls1314464ywf.1.gmail; Fri, 25
 Oct 2019 01:01:54 -0700 (PDT)
X-Received: by 2002:a81:3854:: with SMTP id f81mr1163441ywa.115.1571990514178;
        Fri, 25 Oct 2019 01:01:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571990514; cv=none;
        d=google.com; s=arc-20160816;
        b=bIpYxgcVvZqi7taZ3kxQ4pXMXG+nxWFcziF4AuOIPTfVc92+e/LdIMX1H1uiyagNth
         dlVjRZOiA3OOTBLBxBRDt1ra5YlLNIf+CPsNjsIW6JxXMXPu0blYEcZIwJ8RTs/ECr5r
         O8a3OtbequezP9WpRJrEGY56j0heDsfdQ5fmQE2g9vWG5/caGzR+ZWiAUHxtz9+uwWd3
         w3yqHxVXVFIf/GryfdOG2njQdOCQyXSHrQkT7/zWSUduKRScHxhXI2her0b4neVUUITo
         KsJ9VD+qLsrLzXlDiGZCTGY1YNGWEc4Uoub0LL+LUFMs50klIu2P+vbNMHNhCQ25sPLs
         6O1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=otCDV1QKx3d7IK+sWoEGFb/N0+D+qi80epo1tUZLYdM=;
        b=clTJwyTHBm7ppkGlKUBLy2HPMRO9sN93tmFz4uA6/vruzIe9vzF8sRgORnFsIIN1CU
         K7BcgreyZOJxZeBgThM4brhCYD8vNVFOvzZnbjKfHle5vpS6RTEmRozqUwZ6nXnx+ey4
         KEO4j2fwTqUtSG6RFwl9nEi0k3t9mlfbAjn049sllxExFoLvjxZMh68zQQQzLpPPtBcf
         sPfNjMXyUN3koF5vIujUJeu/d9tUpD7s8caYBqOw+Jx86Y3wU5fFD6tooduPYc60Sxs2
         ZfpvxVDwwNsBI4+8Q/dx65CaIuegpBo4YS2xcXyQAbNEWKfQffYrWWQRHTUQC+G4sOSj
         nPcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AtqC8MCW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id j136si74152ybj.3.2019.10.25.01.01.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 01:01:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-ETcj03UuP5WCRQnyylt_tg-1; Fri, 25 Oct 2019 04:01:50 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DE76107AD31;
	Fri, 25 Oct 2019 08:01:47 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 1BCBF60852;
	Fri, 25 Oct 2019 08:01:42 +0000 (UTC)
Date: Fri, 25 Oct 2019 10:01:42 +0200
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
Subject: Re: [PATCH v3 2/9] perf tools: splice events onto evlist even on
 error
Message-ID: <20191025080142.GF31679@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-3-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191024190202.109403-3-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: ETcj03UuP5WCRQnyylt_tg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AtqC8MCW;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Oct 24, 2019 at 12:01:55PM -0700, Ian Rogers wrote:
> If event parsing fails the event list is leaked, instead splice the list
> onto the out result and let the caller cleanup.
> 
> An example input for parse_events found by libFuzzer that reproduces
> this memory leak is 'm{'.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index edb3ae76777d..f0d50f079d2f 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1968,15 +1968,20 @@ int parse_events(struct evlist *evlist, const char *str,
>  
>  	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
>  	perf_pmu__parse_cleanup();
> +
> +	if (!ret && list_empty(&parse_state.list)) {
> +		WARN_ONCE(true, "WARNING: event parser found nothing\n");
> +		return -1;
> +	}
> +
> +	/*
> +	 * Add list to the evlist even with errors to allow callers to clean up.
> +	 */
> +	perf_evlist__splice_list_tail(evlist, &parse_state.list);

I still dont understand this one.. if there was an error, the list
should be empty, right? also if there's an error and there's something
on the list, what is it? how it gets deleted?

thanks,
jirka

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025080142.GF31679%40krava.
