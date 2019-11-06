Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBFVPRPXAKGQEX7XZ5RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5CDF1868
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:24:24 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id l20sf19099596pff.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:24:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050262; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgEk8x/PkcdLqePnNfv4kJEI3aPJ+5ZDEmvC4ucFFaQrgJ41NJwR18HFkiuZXlV+dd
         li4pHx9u2CSzp84OB/7dZegxRXKDcBS2mppUBhbH8Q7/Tg4CFecxe1DdCUG92bqReRy2
         uZRJQEZdHzV/byFNm5pxYIaLiPqBjmVE3f1nOzvfig/nR+VJICtJtwqrHlOmpgnmNeMD
         YWXL2HR4kNDKtZIdWvP8AkSq1CfEN9L0Gwkt9gaAoJJF6wFMetAM8J0epxuD0zJ/rGmQ
         /5XE8pa9kj3hqeCVYfvRS+r3v3h+l9AoHYIoS6KBQ14fiLG031Uww8tzqujtUm9VB09K
         7wuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=IVEruM77SzenXrsVneK4AqREKfeYJGoKQq/5NaZO7X0=;
        b=fbAAxmgmj0S4V4a/Ug3JLYtJGieh+Tuq0O2XflMFoIjAcpNL1HvhYNT7WmsyQUSjyx
         na41MRn6wDpqibhckgck7Njb4QCVPxUZ/IKqsbW7Q3j5ZiRjH84u8bwAu3CCvFZ7WYmq
         J1l3HzqaxHDytVqvH3/YeICJZcLulod4AD1pxtEwq2cL7f9e66Vdau46JrNse9EwnauO
         SZYPvhqYvVeHMD+2ZqW+tnHr60bfTMcIU577N1PR8Lj5rvgkOOI3Vag3PuXVgo9iHEnW
         /T59FSUMCQwcYBFxk2Jhc/YS0ML/Ict5QOtQy1Wk20mo7yQX71eIyCYjfxsHzDQs9YPP
         Asbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PHprarRW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IVEruM77SzenXrsVneK4AqREKfeYJGoKQq/5NaZO7X0=;
        b=BAjnGiQfDEawRwllN6/RIFnFsCxA+dXiNHioD2zoNxM+dX+mmOtEAj2WEEDa+84/6q
         SSv9owtXfBeLv2PWzJBUd6oImmzrdkrGPTW0j1E1IiZB38BLDZwJe22lILVtd+neOEgn
         Kg/oBYYz7JjirZsCOlRMd46YU7xKMq/nAldidRnAivHhxjw4oW8ROXQVdJhv1jEonKGw
         v2PDjfdLyYtngy+JIWJ3clzRY2xYdcy9cvrn6Gfqc1guFrCYmq4SNkZPCbBuDxVq/5u/
         8nGDCSpGqBsGHCCIE1AOx7xNkooctiB5w1kw2iGMlF0NtHlv39VcZ5hRrhR9GM9c7CI8
         CRNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IVEruM77SzenXrsVneK4AqREKfeYJGoKQq/5NaZO7X0=;
        b=kBfCr7R1bqGtElPp6zwFS439cXb21t8W4fWfXg7DLrgwHoKyqejRgnUCOXtuGd2S7u
         FJ5dVDZxiPZ0GDLdhtBi4XSD3UrWNuY2uS9nCE8Dhh26hKhJxmT4TW7TYnve6AxltqJU
         91hKCvMjDDxeZUkzbboMwwcPcZjr4TcBxOMhfGvvmYnE4V9qBfiFuIPrbQO41CRtrnvF
         K430gSVEQyNEFuwyYV1CkGK7eQKCLrTh1GsvZWC35zWE22kiUAsK565Z0qDgocWGzZ2k
         jZRicKTKPB+UCpycY6jZuiL9u1Z+3k8uosFz/gqjwPeHjJ+Dq6Pi3rVgexpzXKiSYIYZ
         rJYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkk/ANoyN09NqD0qhyWcokBmOVY6vh8mDBU28fzjbYfpO91vgA
	qJ+bxxFzsgrQD12iQFQR238=
X-Google-Smtp-Source: APXvYqwoPgOtkspBAJlgORZ0VVaG1FAG15Dnv52Vq4cOAgRYYhsj/IasiYLsm5874wVUIzOC2pcJiA==
X-Received: by 2002:a17:902:7887:: with SMTP id q7mr2886977pll.112.1573050262361;
        Wed, 06 Nov 2019 06:24:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5992:: with SMTP id p18ls634541pli.16.gmail; Wed, 06
 Nov 2019 06:24:21 -0800 (PST)
X-Received: by 2002:a17:902:44d:: with SMTP id 71mr2838976ple.22.1573050261834;
        Wed, 06 Nov 2019 06:24:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050261; cv=none;
        d=google.com; s=arc-20160816;
        b=e1uiLYXhYqDVU4h5Lzc4xdFbZBLKgtyYrKhui2loVwuRBPUvb/DczZcWPMMEZzcvnv
         njk4slfv8JsBf48YZsLI+bjsuc6uxjnZOtg1wMiRSKPrldFD8BvnXdBJtk7Xe7tuhpMW
         Zplz+HLqCfV+B71tb1Uf+YIjxXUPAh6l8/NkHCkG41ggE/efqEmo3FVQV5PmxUuyFQ1M
         rPwntWVuxgViBAHI1SOzeVt9boIEi/S7y3mOL196hzh3clc9jcnNi1OWss9CW8T81GU8
         JA6zMkGJRf167uVp+NVlzsSUwCr1MNazOJsgE24DwkyK3XIg81JCkZIiTynA06Z7YAxF
         Tt3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=Flm1vJLqrcBnxQjlITmfF1YMq+3fPfsxFYeiifRPFwo=;
        b=w0fDmOy8bvO99rwz4ljZA45qOpl7f87ZtGCAMb5VcCve3VPulCb35pO8KwBx0wmnu0
         KJdtmunMk2bdW2b3njEdvwjOJsqG8HLuN8IkVHiXQCg+1IXyw3OFregdYF9TEuhqVRX+
         CnqE86EMwf/IlBOhcD71U+Opsk9zB0wotPhJfSdi55x2XfR/fe6DQ/Mq9GzLQP15Zyx9
         Kh8D6qQTsAiIb6A+dMC++s1ERHQZwxTsNZVF3fJFNqCzLIZelUiPJY0lUYD7LP3aYmy9
         /G1AWAauI7mgAKEwJIcaNLm7fFaza+7vMw0aA3Zc/owcJ3U0MvTBzsrufrehEMFDJAPh
         NiIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PHprarRW;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id l7si81411pjy.0.2019.11.06.06.24.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:24:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-2UVS68OJOFikukoLMDiSDA-1; Wed, 06 Nov 2019 09:24:17 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8202A800C72;
	Wed,  6 Nov 2019 14:24:14 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 9C7B060BF4;
	Wed,  6 Nov 2019 14:24:09 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:24:08 +0100
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
Subject: Re: [PATCH v5 08/10] perf tools: if pmu configuration fails free
 terms
Message-ID: <20191106142408.GF30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-9-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-9-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: 2UVS68OJOFikukoLMDiSDA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PHprarRW;
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

On Wed, Oct 30, 2019 at 03:34:46PM -0700, Ian Rogers wrote:
> Avoid a memory leak when the configuration fails.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 578288c94d2a..a0a80f4e7038 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1388,8 +1388,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  	if (get_config_terms(head_config, &config_terms))
>  		return -ENOMEM;
>  
> -	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
> +	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
> +		struct perf_evsel_config_term *pos, *tmp;
> +
> +		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
> +			list_del_init(&pos->list);
> +			free(pos);
> +		}
>  		return -EINVAL;
> +	}
>  
>  	evsel = __add_event(list, &parse_state->idx, &attr,
>  			    get_config_name(head_config), pmu,
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142408.GF30214%40krava.
