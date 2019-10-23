Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBQVMYDWQKGQEHDTMMUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id D591AE14DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:58:43 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id b187sf11425644oii.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:58:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571821122; cv=pass;
        d=google.com; s=arc-20160816;
        b=vC1SqKMpKsmx5A9wyWdoPLxeCpgfpF8BR43sETCfpeTarFPyE5xr47hFGpwJlwJHqe
         zd+t5vjEDdhnOt1u1r9EjPp3tDlyuXYWaARND/XvQ4ZrfQrT23rVP8i/DoZXsCmVHcn9
         oFD018HmE8rYmiJuC36ykYG+Fi32z32Ulska/TiJJG/cSSuo4iLc7I2wgV8Q5hoQF2Wz
         lSk0LMowUjNBkBkUxhly7KAsBtcf1c64Si651F6EBvzR2prZ1X2xqSqBdqiB/+A79MXZ
         tw+DWt0+xRS/xO6uQHj10nfjp8zeHb5C7iBsK7lQqTMRqGHE6W5mcHfIfoMIBeNrNrJn
         yDEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=dTAvPahVMqQr38KQwfoxMHoP42sqvP1mKqie8evY79k=;
        b=nHcpzcVORa6F3ajv24FA+CMQLC3dWnGf1qiC3NEerBzQk8T2g5tT7lNaRkuXp6LPQH
         yUcQ0/G/V+nBledHdqlgE/X/8NxsIKk6O3Djx2IazX9GsfnohCdQVkxy7Z0UC+f0JVvX
         jD1ef0B8dSZX6tKmnACeZCv1xDnf7g9uu77Ooh3RJJOYX3UHAvDmR1m9BkNMuV2KRdfY
         uVFIkiyXsj6IQiLBsODSJMEXqd1r2Z+mzJLN7E+SM48eyGxIfYEptv13Q8gm07OB0OO1
         vev2qzCOcikGM07XXKhA1VIcANsmp93rFRDd5uPOKSXF//+jpJo1nj6CMQqQ+1HJBnvW
         EyVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Qm8MTGj6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dTAvPahVMqQr38KQwfoxMHoP42sqvP1mKqie8evY79k=;
        b=BLrzN+s0OO+HMK3p7Idgezuvfr17JHUSQ4hfBRsEhIt4k4OdsESQfRPNkU+rPR8q/h
         lklBUpJ91KpaRHIBYjVwhhH8zgE+ku2WaWXoKfJa9/q9mSx0Kb/U05h3IMUBvZLHQ8AX
         4WVpdbq/xqU+jbQXssMWM2X+BJvdIWRt3mSfWG7FlNkVvvLRPAZjSh5474ZzVQs1Z3u6
         ta9SPAo15jXmeFCGLMhS2p3XcyQ8p+4JU5Os6WFfdrW4KFLYXcOWYFunDneNoquQ7jwQ
         1+BYp6oV4leLU53DK4pbHvsgHqmqPN5veCbTLbnRTU0l4jM6M+XIw8mwgqnKmILI/w7K
         qCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dTAvPahVMqQr38KQwfoxMHoP42sqvP1mKqie8evY79k=;
        b=KVr1ul+Y4FGh0M3l59EhGEl0K70j2ZOEXWM5Iy64KlQlg7T0U3deBVNurKmKkVzVyJ
         NcKcBD6LSYDR+2pWsGcYWfzUEMN3QQv0njrV9SjIuKn4jjeze6mGsMR4zPKa8uXrMD/c
         5NrUtNVQRcCa2viVB5eMaQtOBAsR7E46wLX94+tlRAxR3/iDPd+wNj3SDATJGj8Dn9mY
         4ume9/hw7fUmP9HwyTMagQzoQzKlF8vVMwdGR2EgE1T/mzf2DTKuhc5zlu2HImapi+X3
         /uW5SgvcKtnhiNN99x5D4jHHj2WbZLrDY9IRLCDTmdIgIdNcrV7HuWS9KufACu1IZ4Qn
         Frzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXL7C6A+/HoXn+fa0+W+O5Nmyb+kM4ikKFVUWfQy1fAVHWgYVCh
	26gtHRrmWGaaq/LbJpPKrr8=
X-Google-Smtp-Source: APXvYqy1tG+0KTWBRV6PMW+/weA6Znkw9gCsmbKUc/T695LFkesAYhyyCP+jTRO2HLPYCIU9wRXRdg==
X-Received: by 2002:a54:4e83:: with SMTP id c3mr6823862oiy.170.1571821122439;
        Wed, 23 Oct 2019 01:58:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:63d9:: with SMTP id e25ls548537otl.2.gmail; Wed, 23 Oct
 2019 01:58:42 -0700 (PDT)
X-Received: by 2002:a9d:66d:: with SMTP id 100mr6335791otn.302.1571821121995;
        Wed, 23 Oct 2019 01:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571821121; cv=none;
        d=google.com; s=arc-20160816;
        b=DQgqMdlgOUtokzVfkVCe1SuK1U1vxyHfhbXATc9gaISTT317lKMZAZvqbDcd/VQZlg
         e/h4CzlTcE99Ul/UkPIfN8UXYmeoJlPhCegM9MQa0fiY8EUqEsjbVDJktaFk1tp+1uBw
         +P5HCZRQl5fcJkP6enz3rm9iUtabSsJCFDXJKA5ZfW+sFuXFcuheYAouP+BpmW+JLqIk
         BS0jwSBS0l4cRfoDcvrPUZ+rDeUX/mZWs/CotmtGSKrKKXUUmunH5U/gjtL2mXh2bsk+
         viA+eTCLUq8RASO3/lHnZE3ovT0CyPUb2b1ukK4aoMcI1lSMbkRuu7fkeLZvNGbZlPmN
         +uuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=ddQIqKhInCWjNW7paFtNB6th72sw/WUL6Px5vuUxikI=;
        b=lHx9ricP2UhxjS7rCO20QNL1dvolygHNQezS6TPmT4faY6GCvWOlSxec6m6XPoAmtF
         gFW9qyInMq4MZe+jB6Zww9NNXLFKDngOeGn8hFgfjOoL4IpeMjK7hYqnCx3zgN66P55g
         O8kO75YS687Lw6fKcnMGclBjNVzZLdeB9tZplzp8SySHxMkzEbx/ktMtybxM/xCBrq8J
         CWnepfQNhtp82X+RJKfo0P0NoFvN2JGysN+fYNYiMF0xxLKzUw8wMtB3VmKypWUq1YJf
         ZubHs0LAN644qKVvX9EYrv1LfvAXFkd3FZP5Vi4Ude0uNVU9D/H60ZKBFDzNbiVOHk8v
         PIAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Qm8MTGj6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id l141si70866oib.4.2019.10.23.01.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-qMdmUyVdML2CtfDDqCaM7g-1; Wed, 23 Oct 2019 04:58:37 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23A48476;
	Wed, 23 Oct 2019 08:58:35 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 4B27A5D6C8;
	Wed, 23 Oct 2019 08:58:31 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:58:30 +0200
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
Subject: Re: [PATCH v2 5/9] perf tools: avoid a malloc for array events
Message-ID: <20191023085830.GG22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-6-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-6-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: qMdmUyVdML2CtfDDqCaM7g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Qm8MTGj6;
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

On Tue, Oct 22, 2019 at 05:53:33PM -0700, Ian Rogers wrote:
> Use realloc rather than malloc+memcpy to possibly avoid a memory
> allocation when appending array elements.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.y | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 26cb65798522..545ab7cefc20 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -691,14 +691,12 @@ array_terms ',' array_term
>  	struct parse_events_array new_array;
>  
>  	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
> -	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
> -				  new_array.nr_ranges);
> +	new_array.ranges = realloc($1.ranges,
> +				sizeof(new_array.ranges[0]) *
> +				new_array.nr_ranges);
>  	ABORT_ON(!new_array.ranges);
> -	memcpy(&new_array.ranges[0], $1.ranges,
> -	       $1.nr_ranges * sizeof(new_array.ranges[0]));
>  	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
>  	       $3.nr_ranges * sizeof(new_array.ranges[0]));
> -	free($1.ranges);
>  	free($3.ranges);
>  	$$ = new_array;
>  }
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023085830.GG22919%40krava.
