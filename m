Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBYM6YDWQKGQE5UMLBRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDBFE1431
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:29:22 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id w2sf15403845ybo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:29:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571819361; cv=pass;
        d=google.com; s=arc-20160816;
        b=BGiWUrF5FNxHs/BhDbm/b7XYWdDQJEY44DjgAOtHPBRA+cJ0rGfhpso+C7PCYSuA1V
         E1ga1ZxUyQ28UdmF9pJgqQNITO385qwd3E4Qdo5+CyldaFbyYBQ0vYTMFJuaxtk6lm51
         AE4PQr8mxCpwfhdVeQgZt8LkhcnHJS+GBybaNy2DrY3Rjqck3XMHrBIVlN9n1si0khKl
         8A28egc11jqgwyySyrf07q9/J8Mc2OQX61p9DFoAcQQuuisfI7xo8jK0sgvaMdd4/lbI
         aJ/BEiaUS4lQ32QEhsto9ZUA7+PDs2JiCU8qNiisZRke0/L/4zXhwzRiV6qHmzjjYU//
         Ypkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=It352rVoshuX0J6n0qGEvcmIbd6B3MkhC40oLJL9a48=;
        b=Hr07PJnoKW0UHgl/uoXG+GaRfCgPpxXKO8DSLDjUniOgYfMNNgH2C577UEN06Ll5X4
         wc2E5qgmXb892T/nzHmWJdnK+dPLl2b0v1CfyEnwGW4dx6fD1+qJwulNCaO5vR7dLTeu
         ZQoWpjvzXSAc7HflpNYvbBtnyGqRw6iSfkJys4ebEHJsfK8nt9thP8EDrlB9TnT0tvYA
         cYjEsXJ5ltWKGOlCGiXGBTTQ6t1OFo3QNJtaHEhpMJk+KahAIMgBHXzZx7vrW6AG6FkU
         EfbvWRchq7dQv5EIprIB39b6TCZD25UvUAvvtxH6yNfLmgv3mqNhjrsh7uWpCsyMEPaY
         OJVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aXO7sGnD;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=It352rVoshuX0J6n0qGEvcmIbd6B3MkhC40oLJL9a48=;
        b=lmT/yzq5cuToWVwFEG1HFeY4MFOygv6RG4Wa7mjNHc+2JpcCEvn7mme455nlNkhDdZ
         shiJ2D3ZBmqrX43EdsZE6iYTzGUfHJ/KTlz5vpWKMuhz6xQ4+aeqVWhnJvK+D7iA3QmE
         Q88BdmRXedKaf4iDAZSIcBAv+B+DOvovvjXhDSXrvfVl3KiaXHtx/W3ZIEZSb0t3TasZ
         KoxRe/vhW99tT02S/mWkU39itdspWM4ptjy4QnXpc4bICuHwTJtB6YjOdKg1nlFMUXHD
         WBeds+RS2ZYHfMEhreqICj3eOBQRckAxu+NBDKVxu7GnEerDsN46ceuk50rfErej/I4j
         YETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=It352rVoshuX0J6n0qGEvcmIbd6B3MkhC40oLJL9a48=;
        b=P7dYTU8MlKN66YnTRfXgEznovRICRRbrfrf83BUEqLR19Y2QUtm7VE6RpyNv3L/Nmf
         v0zTYZw7jBWZh3ac04XdC0idNfLjZrbfkMyM6ZnFiNrRIKa64Ggq4gw0OYxEfW8/2SyL
         4L7GkWRloQE409nH33pW7wCaPuuQT3uU1dalCDW5brswbs7dUfhsnS+CkNBlSOFunTEc
         OBnJPh6KMXBzP+C2UU5NIu5Rulz6oBuphIvLdI4H8EkGs6jb1/28Ip90goIbLdOaKb6d
         QM0BjpHvkE9jRg/pVksVGc+WD7KJ2vQaZGXBP4d1u39aefMlJKKNQ8c7RpApHgiab+wF
         i9ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZbK/O4Yjljdj9G/ldLpJMjj2mZRDdqFOOgK2++DqByeUm3KPN
	ruvMTJ+6rQ20v917iNi++xw=
X-Google-Smtp-Source: APXvYqwiejhi6jzhF65A/3oOvEybp4kMXtcMkZxclzcPicI3s9wUXdtEdTQ3KWeK7HO+HLYKkobFkA==
X-Received: by 2002:a81:75d7:: with SMTP id q206mr1702535ywc.288.1571819361625;
        Wed, 23 Oct 2019 01:29:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:ed08:: with SMTP id k8ls235432ywm.10.gmail; Wed, 23 Oct
 2019 01:29:21 -0700 (PDT)
X-Received: by 2002:a0d:e808:: with SMTP id r8mr1769747ywe.275.1571819360978;
        Wed, 23 Oct 2019 01:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571819360; cv=none;
        d=google.com; s=arc-20160816;
        b=wlDnbtZUUdEhIUS1yOGDyOIo0eMhe8SXt7kzY9jBX6COu2QQhAsZxBfqBfwz+jVn5J
         iMc/fHu2AAwx6EOOqelw+0RvlMC+wF2X4wscxaFrDT764o+9Hzq+YS3oLbDQ1G1e0Kxj
         bWuWWsdrvamUX1bXos1yW9PVyOlXlS/Hpjv1+ZgTDlRNES3wumgG2dKu5YYFlOjOYmxN
         yizHOIQDBnVAabvty6yZBFj0/uWLovHUKJbzTk2yFKBvOcRo6+7TVEcxDnhqocwrn1F6
         S/xHg1LRcRUda7/bJqp+AN13RNhLYMmJvqRQATzCjDkys1oYA87pxquxyTVImHYkr1LG
         gBYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=tCBC4uaO7/bSswPqkzkCNJ9n1VLTQ1l10Gg1LHPnh4M=;
        b=bj6bF+MJp6B20bin5rd6oZh46tpQYrsZILSipd6/JpKsVhfS6f0JDanaOhIWwGefgB
         sQTtbmT7Bng2aWseMuGDkES+l5EtGJRtGP4j/4WcETxuk1j7kmUYcBp1JA+8GVMbUN9u
         5/BvVDWdHbqXh8ASg7b3dMPU3s+YreZffvRXI7rAKPK+bNZTsNJSzchVuJumb3ZrM3HI
         Pl/uFXmSp1t7J2JP+UD68QyRgImWag57WcnDhwv5qECQ0OM8lfIB/Y79D9Hfjh0Ji8Ot
         I0oX3ncRrCn0NH5c0vgHFdKyuH+AKpvlvt8Yot6Y6g9N46e/V3tHCGGXnpIsrQyAq64G
         G3kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aXO7sGnD;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id x7si216541ywd.5.2019.10.23.01.29.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-sDomfEK0NrKBUEk1qlS5Vw-1; Wed, 23 Oct 2019 04:29:17 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74390107AD31;
	Wed, 23 Oct 2019 08:29:15 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 2DF6D608C0;
	Wed, 23 Oct 2019 08:29:13 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:29:12 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: He Kuang <hekuang@huawei.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: avoid reading out of scope array
Message-ID: <20191023082912.GB22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191017170531.171244-1-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: sDomfEK0NrKBUEk1qlS5Vw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aXO7sGnD;
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

On Thu, Oct 17, 2019 at 10:05:31AM -0700, Ian Rogers wrote:
> Modify tracepoint name into 2 sys components and assemble at use. This
> avoids the sys_name array being out of scope at the point of use.
> Bug caught with LLVM's address sanitizer with fuzz generated input of
> ":cs\1" to parse_events.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.y | 36 +++++++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 48126ae4cd13..28be39a703c9 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -104,7 +104,8 @@ static void inc_group_count(struct list_head *list,
>  	struct list_head *head;
>  	struct parse_events_term *term;
>  	struct tracepoint_name {
> -		char *sys;
> +		char *sys1;
> +		char *sys2;
>  		char *event;
>  	} tracepoint_name;
>  	struct parse_events_array array;
> @@ -425,9 +426,19 @@ tracepoint_name opt_event_config
>  	if (error)
>  		error->idx = @1.first_column;
>  
> -	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> -					error, $2))
> -		return -1;
> +        if ($1.sys2) {
> +		char sys_name[128];
> +		snprintf(&sys_name, sizeof(sys_name), "%s-%s",
> +			$1.sys1, $1.sys2);
> +		if (parse_events_add_tracepoint(list, &parse_state->idx,
> +						sys_name, $1.event,
> +						error, $2))
> +			return -1;
> +        } else
> +		if (parse_events_add_tracepoint(list, &parse_state->idx,
> +						$1.sys1, $1.event,
> +						error, $2))
> +			return -1;

nice catch, please enclose all multiline condition legs with {}

other than that

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

>  
>  	$$ = list;
>  }
> @@ -435,19 +446,22 @@ tracepoint_name opt_event_config
>  tracepoint_name:
>  PE_NAME '-' PE_NAME ':' PE_NAME
>  {
> -	char sys_name[128];
> -	struct tracepoint_name tracepoint;
> -
> -	snprintf(&sys_name, 128, "%s-%s", $1, $3);
> -	tracepoint.sys = &sys_name;
> -	tracepoint.event = $5;
> +	struct tracepoint_name tracepoint = {
> +		.sys1 = $1,
> +		.sys2 = $3,
> +		.event = $5,
> +	};
>  
>  	$$ = tracepoint;
>  }
>  |
>  PE_NAME ':' PE_NAME
>  {
> -	struct tracepoint_name tracepoint = {$1, $3};
> +	struct tracepoint_name tracepoint = {
> +		.sys1 = $1,
> +		.sys2 = NULL,
> +		.event = $3,
> +	};
>  
>  	$$ = tracepoint;
>  }
> -- 
> 2.23.0.700.g56cf767bdb-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023082912.GB22919%40krava.
