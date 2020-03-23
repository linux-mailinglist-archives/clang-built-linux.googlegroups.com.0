Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBKVN4LZQKGQEMSN5HPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id E320F18F341
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:59:55 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id n28sf10476784pgb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:59:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584961194; cv=pass;
        d=google.com; s=arc-20160816;
        b=V99fsuc8psGydtxs0WoJ1wcQDW6RU6U9GwRaC1bgLYoyHWjANPn0IGVEoV4tC6G4GG
         obMKZEn7SWBkg0RAhiWANMttWFJNy9PtGI4v2i/HhVmDamKLrO1epWI69IeaPT1jjE1K
         uLm4U9eXI2BG8pgw32NQ54p5Aq3pwbW+3CjqBECVisqJ6pWSUkmX95YrCHPCiZh0mxO1
         cqVUSTzyni7KwesVCkIxBdwGWzpCL1ngHc4TZ9q1S1dwnekBMOpmy75E5kGNxMXiJLS3
         A51RnDK2bv9m1rrDN7zXIKL7X+mFeHlX4c4MVLWRBCbiW9mDVP42U0zQdORu4e5yo8kD
         T+Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nDJYJOWd72Lu1eYP/nv1rMHuv3AB2IQUeE3IJCXgdXU=;
        b=o9trOaUKTkC7I2vWMIjVzTLmE88R2Gqz2KfBRIa+HXEMRIJPamni4l8RFFdxgHqUo7
         B6LKyjKBA/kvkqp/cPo+9Ulz9hlmypPynJJsjcb0u1L7JDmspPQpD4IMxByvyfrICNCF
         rm9JTVh4Js+wo4bJBMm4cTe5TXBsghxFRqAXZoFbLpvPPjj9VAH2GiwO1h5hCDcVxqgR
         uBgcSuJxizpZaGJAWYJqHBlFtY58774S65aS0cCViAlWyFXgqJluQApz4xc5HIb2RAvP
         iiN/EQnQC4t4oeWPukOCy4xFzy+UQvhzG4HThDgqp0dYjX8CH4aLXXzOTpTS9mxve/60
         bisw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HHdDwcAh;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nDJYJOWd72Lu1eYP/nv1rMHuv3AB2IQUeE3IJCXgdXU=;
        b=b86bjWWbA0WSdMBvC+D9lUiIvra/33/0e2nM7qw50vfHTQ7Orj+1G3Yv9xX0/nWNGn
         Gl3hgOCUvUL9dzqADxA8U/3KiiFMhrlnPaZ+5xxBO04a1EWVYS5xqAOEfUUyH0rf1K5u
         YQC9C1rriPUjbd30PWnitFCZo/iIAGI9zvRGKjLJ8p5lsuDeRO+tL3A2LSex+0zq6TwG
         QmgPqJqWaFlUi8NuYvTmMAS/DrnRBPmyuHk0II4gJ5xoG7rayLcZ4nXmi3NED/yRkYAB
         Osze6KmgtulsSc1k3VH7SHh+vmBuJeLV0t4hxoFNOtyD1Vyn9L5PecHqxOUBYKtSEH2s
         9SVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nDJYJOWd72Lu1eYP/nv1rMHuv3AB2IQUeE3IJCXgdXU=;
        b=kmLqI/hYe19eOsXlattyQiqi5fyxqYVfk/MEKbZUgsXKqc5LsjP8I5BULEalTx64rU
         KrN8fexcraOWecDdsJF6E0811bOq7cU4jiPJ4agVjWV6sGLJKizU1AQLAjXGThf5RBqy
         1sj/I656myWPkvGKa5WLF1guj7foD8avtgia3h4UbZf4wXEshVsDoz6DgdvIfCSpH07k
         pcHUhp9Q/gwFWq0fY1UF72DEQDsDt6sastMYyADSm45nuz6WlmdG/Ec06ngzex6YSOAf
         LgVVzzXE7Sh05oPlkynqISwaE2HM0nwVsVUYWBFI9/8iiybOpCZ0PtZBfD12rVlXw85k
         yFWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1RLc5moumJYRS+tZj6Pgm3WahuZVeZlYZESSI1zKTrSD5DloqC
	xxKjt+IM3K7iGQDjIvB6sEE=
X-Google-Smtp-Source: ADFU+vsFixAMGfEUr3vodcPpJzxw0D+yOG29bvB37p8T+JptR7ky25iYf43bJ98kPM5h94MZhwxb2g==
X-Received: by 2002:a17:902:7488:: with SMTP id h8mr2877710pll.264.1584961194447;
        Mon, 23 Mar 2020 03:59:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls8153566plo.8.gmail; Mon, 23
 Mar 2020 03:59:54 -0700 (PDT)
X-Received: by 2002:a17:90b:11d0:: with SMTP id gv16mr25165386pjb.106.1584961193971;
        Mon, 23 Mar 2020 03:59:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584961193; cv=none;
        d=google.com; s=arc-20160816;
        b=0SoOlNgyhohFFRX7ox1RMC2jeo1Dtqt4Nkt4gmLgg4C5zFJKNuQm0YC+BVXtBD/qg7
         R5v4gopmyfltcGXyDGKDTNTO+6NtXZmVbiYKXrxrOJoxUuB7qbVd6Bl0YHff02TrKHiX
         2SARkyfdcqIvK1Cgxy6irluoVTaB46ESMgo87flCzkmRbveU6bb8of9rr7xFttgJ137L
         x7pycg4sF8PgwyHOoOcVODJeMlD3u9XkEeEhMIReWbaISBKmD6OsVVlzVLf62Bbf5ejO
         NLByt/Mx0+rfTVHtgv/eCGJlyh+MKs7rHUDf9e9ShaPNYpWxEgV4NwqbWdQhYSu/qmkQ
         1EjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KiOvjRY1B4DOm2CDtGluY3HQ7dbfJlmV+cUNUxWfNwY=;
        b=RcPdcNzIOWkVDnQID7wE/4itWarkXxvB6Uv4BpBHjVHlqbwVZfie7aNgK2dqIZ5Sx2
         mmpMXtLKPQL6MWIIOpTGBJeEUyPbwo4I1MR7nxyBIu5HLb6sz664VDaUQ8tPJuQFL6qE
         6ZACgv6+P1B9Am7+8CV8bdhOKe/Z4TKWNykTB1L8ihMtXr5BX13utjsiScWsPRQZlRLZ
         7GPOzylgHt9s2Xfntfnv+nXQIvhRRRanjUT+vLR8PR7cS+c+vBxHdFf1EXG+ABn3yisN
         WYugR8FQ4Xes12zspOxvRYOYhMD6slWsnufghsmOU3B0chrftTUURfeh4WeW6zhRl+iS
         INqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HHdDwcAh;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id bt7si655770pjb.2.2020.03.23.03.59.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-dtCx0_2-MTaQjECBgwo9yg-1; Mon, 23 Mar 2020 06:59:49 -0400
X-MC-Unique: dtCx0_2-MTaQjECBgwo9yg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C3401005514;
	Mon, 23 Mar 2020 10:59:47 +0000 (UTC)
Received: from krava (unknown [10.40.192.119])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B0D5DA81;
	Mon, 23 Mar 2020 10:59:42 +0000 (UTC)
Date: Mon, 23 Mar 2020 11:59:39 +0100
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
Subject: Re: [PATCH v2 1/2] perf parse-events: fix memory leaks found on
 parse_events
Message-ID: <20200323105939.GE1534489@krava>
References: <20200319023101.82458-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319023101.82458-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HHdDwcAh;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Wed, Mar 18, 2020 at 07:31:00PM -0700, Ian Rogers wrote:
> Memory leaks found by applying LLVM's libfuzzer on the parse_events
> function.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.c | 2 ++
>  tools/perf/util/parse-events.y | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 593b6b03785d..1e0bec5c0846 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  
>  		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
>  			list_del_init(&pos->list);
> +			if (pos->free_str)
> +				free(pos->val.str);
>  			free(pos);
>  		}
>  		return -EINVAL;
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 94f8bcd83582..8212cc771667 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
>  
>  	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
>  		list_del_init(&evsel->core.node);
> -		perf_evsel__delete(evsel);
> +		evsel__delete(evsel);
>  	}
>  	free(list_evsel);
>  }
> @@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
>  	}
>  	parse_events_terms__delete($2);
>  	parse_events_terms__delete(orig_terms);
> +	free(pattern);
>  	free($1);
>  	$$ = list;
>  #undef CLEANUP_YYABORT
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323105939.GE1534489%40krava.
