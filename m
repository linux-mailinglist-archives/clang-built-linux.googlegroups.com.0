Return-Path: <clang-built-linux+bncBC4IFTUFXEFBB27ZXXVQKGQE3J2L55I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id A5502A7E98
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 10:59:24 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id l63sf15420771ywg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 01:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567587563; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+b2GHW+7iRg5T5URE8AAJLg/9hk5AMISVtqn+zf1FuUJOGPV5T+4EFtyhX4hQB+bF
         buHsH7TN+7J3J+6NhePGBr0+wUZHMQO3wEV4XG33B0M4gCqDknboxLFHNFjQ5eaJAXGN
         2bgRbIAJe/pIBFkztvAXiYHAEAC3sCpXV8FUmAQ3plXw2s2zWh98IjmRfxNfz/3AJg6Z
         hx0OPCf2N3GD07ndix+fDpzFfDmgfEUmtopJ3RufVIKNfdGPVfaFFgCVu3+HKlFtCJgU
         /2LWIQtI4yI5ThsLyhYWjxFwlP3k/UURniil3cNFrtXAvTEYjJcoVMbpcBGCoY/retPQ
         +q8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Iu+1UFjbiQFWGfIZGTJd7kqt6VfUdQ0qZh8ElO//LIM=;
        b=JBoTnt2/jtbCjfHzOLi+1pB0vWHjuRzttWxtqegZdv0NKAJtZZSOz26ti+oTQv/pZ3
         61y0O0/rCpfm223I9zjtmUSJjMlsTb305ZqEametJCHNRdt6lMhDl0W1voCgTsRSp8PZ
         KbMV29U8lVXXpDeUigfsCP09AFnz779SRh2BpUl60i9R2MAajWG+Ce46KNA09mWqfEBD
         zRQo3hGcOwW6IMUPzsgAoyiS9O8phZ6rFeeUKg/7zH3VDpEJlGToC6lUzhVzpTxzGUj1
         7WOdlEfVqnh34LPOQioygkjeYdV5b9llURIYjHnTQG2iqiGskp9APcg4LXpp01WABS7J
         hqsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OrwA+4vK;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iu+1UFjbiQFWGfIZGTJd7kqt6VfUdQ0qZh8ElO//LIM=;
        b=nnb3bppijznRDq1MpDfgTnro/eMy6SqKDeBR5niDjVhWqeYwXkPqJX28SDgoY/oT2H
         jC6AhxN86z1bAxBSCsohJ8Co5KhkGrzLR+MaEmTVAKSscDscGtY4BXIDgjKxzzLn0Gc4
         TS8EAJxhTf+FMtdCTTkh0Lg40coNprHVQK4ypWMWAFV+27Ui3jfjQSyy/ZlplHs2DiQ2
         pYW1JwlNbojLff1Esq9IzS0nIEJzGH4iv5l28AwkFx6cQh3WBbx9Lh1iN11YXO/Qq/CZ
         ZV4NDmj5gnFNIYx2o9KRXYhUuEsV5jSd4Gll7qK6KtcmdqRxcSyO5VELDNphDWkiWx6G
         cZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Iu+1UFjbiQFWGfIZGTJd7kqt6VfUdQ0qZh8ElO//LIM=;
        b=o5qI+KUzMMxLQ9B6G9DSSO0DoTjTEnlkdJZnzFzbYTuh/tYDRYWfzb27u9anLqqkkI
         EkHJuMJhKOWWcUfDH4sc4PbQQuwyRrenX4Ws0ccSZlD6eeBmAPeqJlMubraNvC2nEXHL
         nFOlFEQG/iMDqp2e/kHIfCSnIFTPrw0TYNHNLTYXOj9u5W5hEO2QiEO+2wZzYb17SYTh
         Jvia8BDZSxRVsUlwGXlPyYkU3Q00/PS1zbVSZH3pdOdnPT3WYdJ7T+a4CW59oktsV8TM
         tcuFwpTaSNOfgo3CE0VmNuIDtiixHTqUxJHzkvLVhLyIMX+/+c7VXONBWw2WFDN1FyrF
         A8JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0UbclFqCnFgskJ4zsoynkTjHELCmtI5dDjtP2lylXa2HxFoEq
	RSk1KEmFjw4r2VHJie9nq3A=
X-Google-Smtp-Source: APXvYqzAeHS1hvlkf7u9uh23ZcX+SvriQSlrpskXegP7PeKYJ8kbSVL6HbW9hZLl74OeVIYRDk7TOg==
X-Received: by 2002:a25:3402:: with SMTP id b2mr28997946yba.173.1567587563660;
        Wed, 04 Sep 2019 01:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls2842010ybh.2.gmail; Wed, 04 Sep
 2019 01:59:23 -0700 (PDT)
X-Received: by 2002:a25:bbcb:: with SMTP id c11mr29027429ybk.282.1567587563381;
        Wed, 04 Sep 2019 01:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567587563; cv=none;
        d=google.com; s=arc-20160816;
        b=pxoSbfjDUTiLyu8chhjcJsmWjFO56/wbRoob1chP/Mgk+7c+7QDd0/Jnn3BUgkjr9L
         sbHr27qpgfH4NgZN0hUXE6J2YNcseU41fs9Zu3cofU9YLazjj1Lb8EaXdzWygfM05waZ
         MtZYeNYIOd3A5AlgvCUSwVNW+GWlXRWG4aA3vNGefL+Zb4U03FnzyIoRpcnGdPqxrECi
         FSWiJIlQelh2u46NqrfeGcTsHvptIxx5vbZUAe14TRZiXjzoXj9DlFh2GdZn31b7Gz/5
         xDoii6VyMCXJsfNlTSdKqlmdDNgrNDTNmc29va7RL62cJbE+11d1+GPASKROtVldWD3G
         hJqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jFVKdea45mJrNywU948vMYq5u5WRFPo01K8iIYZKsrw=;
        b=q87dtcfo2D004ucQnnXXvlMQQDa8ncivwN0q+aMUMplFqVNQWId01IrzdS5nH1gE5s
         CZN9pLS1A8t3pJsoMHxtXD98VGqf8d+BklRV/+pxF0kfNyz+INne7uyrbJTUo1Gju1HW
         lQuvOdMB+AXqr2kLRGJtqoGIKW9Ls6WC62u2ntTQ7krAZG6asNz9zQ5HZexAW3U9N/Mu
         gcs55cm8FeFkBiuyKqFH9hMFaFcN9G/J1c+MYFfikilEai99CNUjRMIv78xy+HGCbiK/
         P8ie6iU22KrDcaMCWebqIc8cXzpIUkBxClBVMyTrnF5WmuIM+8UUfatV4f3qVE1MdVyz
         Domw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OrwA+4vK;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id j72si1354548ybg.0.2019.09.04.01.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 01:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id v11so2581677qto.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 01:59:23 -0700 (PDT)
X-Received: by 2002:ac8:3a84:: with SMTP id x4mr14802700qte.334.1567587562863;
        Wed, 04 Sep 2019 01:59:22 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com. [45.79.221.244])
        by smtp.gmail.com with ESMTPSA id c1sm665566qkm.70.2019.09.04.01.59.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 04 Sep 2019 01:59:22 -0700 (PDT)
Date: Wed, 4 Sep 2019 16:59:12 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Suzuki Poulouse <suzuki.poulose@arm.com>,
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190904085912.GA27922@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
 <20190826125105.GA3288@leoy-ThinkPad-X240s>
 <20190902141511.GF4931@leoy-ThinkPad-X240s>
 <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OrwA+4vK;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Adrian,

On Wed, Sep 04, 2019 at 10:26:13AM +0300, Adrian Hunter wrote:

[...]

> > Could you take chance to review my below replying?  I'd like to get
> > your confirmation before I send out offical patch.
> 
> It is not necessary to do kallsyms__parse for x86_64, so it would be better
> to check the arch before calling that.

Thanks for suggestion, will do it in the formal patch.

> However in general, having to copy and use kallsyms with perf.data if on a
> different arch does not seem very user friendly.

Agree.  Seems it's more reasonable to save related info in
perf.data; TBH, I have no idea for how to do that.

> But really that is up to Arnaldo.

@Arnaldo, if possible could you take a look for below change?

If you don't think below code is the right thing and it's not a common
issue, then maybe it's more feasible to resolve this issue only for
Arm CoreSight specific.

Please let me know how about you think for this?

Thanks,
Leo Yan

> >> For your question for taking a perf.data file to a machine with a
> >> different architecture, we can firstly use command 'perf buildid-list'
> >> to print out the buildid for kallsyms, based on the dumped buildid we
> >> can find out the location for the saved kallsyms file; then we can use
> >> option '--kallsyms' to specify the offline kallsyms file and use the
> >> offline kallsyms to fixup kernel start address.  The detailed commands
> >> are listed as below:
> >>
> >> root@debian:~# perf buildid-list
> >> 7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
> >> 56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
> >> 0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
> >> [...]
> >>
> >> root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms
> >>
> >> The amended patch is as below, please review and always welcome
> >> any suggestions or comments!
> >>
> >> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> >> index 5734460fc89e..593f05cc453f 100644
> >> --- a/tools/perf/util/machine.c
> >> +++ b/tools/perf/util/machine.c
> >> @@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
> >>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
> >>  }
> >>  
> >> +static int machine__fixup_kernel_start(void *arg,
> >> +				       const char *name __maybe_unused,
> >> +				       char type,
> >> +				       u64 start)
> >> +{
> >> +	struct machine *machine = arg;
> >> +
> >> +	type = toupper(type);
> >> +
> >> +	/* Fixup for text, weak, data and bss sections. */
> >> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
> >> +		machine->kernel_start = min(machine->kernel_start, start);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  int machine__get_kernel_start(struct machine *machine)
> >>  {
> >>  	struct map *map = machine__kernel_map(machine);
> >> +	char filename[PATH_MAX];
> >>  	int err = 0;
> >>  
> >>  	/*
> >> @@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
> >>  		if (!err && !machine__is(machine, "x86_64"))
> >>  			machine->kernel_start = map->start;
> >>  	}
> >> +
> >> +	if (symbol_conf.kallsyms_name != NULL) {
> >> +		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
> >> +	} else {
> >> +		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
> >> +
> >> +		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
> >> +			goto out;
> >> +	}
> >> +
> >> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
> >> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
> >> +
> >> +out:
> >>  	return err;
> >>  }
> >>  
> >>
> >> Thanks,
> >> Leo Yan
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904085912.GA27922%40leoy-ThinkPad-X240s.
