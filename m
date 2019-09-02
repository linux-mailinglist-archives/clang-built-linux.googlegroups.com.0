Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBAWIWTVQKGQELFYP63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA930A58F3
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Sep 2019 16:15:31 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e13sf11837602pff.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 07:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567433730; cv=pass;
        d=google.com; s=arc-20160816;
        b=AbgASNR+9xvlfxiQ6GvYt5vt1CFlbJmLI0n24Jkkl2Aaa4AnReujhdyxYcoZ9yqohl
         s8jM4Ny9t8okSQyrtZnQtfumTimEC6WkdagmlPSdj5axGSTlv7M973yG3vophFdaAfn4
         +UPJVqOoZQqmSgYBw0zuy9RAr1TiIq0I3hXHcIpwjmcOoeEVulX9oWbCwOsSrCZke9+l
         ew+3yEkhP05QHMTURwiBRCf6Pkk446fHqvCPSDkNN5QmuIX8ytLsWkAl5bOZ5tZy85Te
         mmxvmvVh0GtkJgzc/kwdXjnHd/fXfzX5chPhEkge6QgDyeJCdVaDDnk+mTY9B5krj+SW
         7lSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nT6yIVX3sJ4FO5uE72tsaAOAeGrhhuiKK/dYJL6Nqz4=;
        b=lnrdstBQynblF2wj43zD15AtO8PbD44uay3QIhOTPsTU4r4Z9NaP5VTdsFRaDSepzx
         3+rA73+SzQX3Sl/iDBiLoJt53RHkhu1JfQBXEiqmx8NfqOBNeucZgVoZa6xKXKr3umAV
         32o8RNAX8doe5SbSQxzlu1+IRw6ZDTKiBdwX5L1LzOqN/5aFvkFAWE6NRp0GCdVjc/bf
         yJ7TET39OdXL/QKfZnugkfk5Crbzt25Z5AvecoCuDZfEzgyxBTrEEkOwKf8iHuQsCF+n
         ZaQF8iQ2+zGvfG5xKppKJYPRqsXxPcnfsaxukffJJVv9gZ7HucyMoSxDkU5g0xMcLfTJ
         qzUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="mj/Q0Kso";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nT6yIVX3sJ4FO5uE72tsaAOAeGrhhuiKK/dYJL6Nqz4=;
        b=m6G7xgDNWaJ1/iW3ZHAAfAM9/idd2Tzui/x92oMrwEOdwMcuOhMzg2DLUwR0jFWAJG
         Xla5vYanZEc6ftpl20v7ugefshIONa7cqAbJF3aBN1dsVqhlAjLKs75WqcrK7C0Az0Y3
         CCzJv4kxL6uLldstPmKoNsmiP33a3wP+p83xRg4mKPDwrcUFbf0+bfjQa5f3QMO4pfIq
         XFwLvBUHGzblftl7MSbS1KU23GLxOq0Ch5ECi5+zxYOzhEK5oPUIWAWABdaeOSgP04/X
         MRO0AKbFmNf6RMR+9jAV1JD4MSSmcFobcezxx8j3ny3iOxE6Bg6vUrCV4XRU2YtJP2wJ
         Wn1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nT6yIVX3sJ4FO5uE72tsaAOAeGrhhuiKK/dYJL6Nqz4=;
        b=ugZNkiuc3v7zOPJviJqR4wv1TkXzjTR5hpj5A+JDo4Mk4er6KkyC5rCOlS8KflPcRP
         MbgD8JYgwEdsZG4O/u5Q2NmW3wS9UTbWmxqS/1oIPanQxmGDngRL9eXZys5ymbGr19rk
         iQJxDsEXifGozqoACz3pq//0ZRC/QPS/7rv+EE1JWtTKunfT2hxAqxNICvIlZ5CmcStS
         cuMi6ZQ842/nc7QoPopYWFw3XwFmtUocrz7xVuEB9X5Fduq7LLZkmGTFRKlegI3422mh
         QYv5nQeL+ObnbqdtWNd69AZqJuQxhOv0WiRBoTGca6F9Zk/d4PMlFraWqehS52MZkhHs
         X1rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUSelmBRvNa4HKk463UMS26CbbZXzdDnJJ6Es9J1/bCVlGcKGZM
	vOmzLPvSQd88H4QQb1hftns=
X-Google-Smtp-Source: APXvYqzVC5j3GjboyGIjrvi2SB1rl0ihyptW9aUxJ1wv6oqbTOLt7hVfDyNu9zhAC2b7TKDt9jtShg==
X-Received: by 2002:a17:90a:cf0d:: with SMTP id h13mr3648198pju.122.1567433730223;
        Mon, 02 Sep 2019 07:15:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:242:: with SMTP id 60ls4616827plc.1.gmail; Mon, 02
 Sep 2019 07:15:29 -0700 (PDT)
X-Received: by 2002:a17:902:9f97:: with SMTP id g23mr23522049plq.248.1567433729937;
        Mon, 02 Sep 2019 07:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567433729; cv=none;
        d=google.com; s=arc-20160816;
        b=c903KAmgWcH2QPkpZnIkkqmAN9qRbLH8/mOzfKJbaSMBlQ9ffrfcCUEWwm+RotwqaR
         lF9MNHXYsedmO1GengiRU7D6dmDkGwg1V8wesERGRY4RDN8guE6ExoYYhB3zzPkhR9BQ
         du/skV0/SpTFRD2rQzur1CgaeSbSWLRAY48REMfPw8in1+hWpTSSkpJYhuorKWDxLIbA
         3elIcO72cMrMThW6GmnUFlvRYhdGvcH4nSUC83wbb8msySpa6fDiRBsMNNbMyYLQspX5
         fJNM+PoeN/tSaJ9d1p/59mTYkolWqUyTSaiScWCs8Esw6lfBJ87DWhbTMM0OE4qcJ4h4
         9TkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vg5cV8RgYZAUwO4BlUHQDzrdFcjapkG4a4PKGmuKmDk=;
        b=rq9EEBA76K/wJxIZd/JZyjKKVUONXhR4UvGeiKljtbFSyjkwe2yVVaabTn4d6YJ/CN
         vAh9yS3kCG5MPuJ6MrO/cNn3C2mbJl1BgXm4Xo/E1XqTx3gZL9jWh7aR5WeAiw1ys8ca
         CnZUP/VreW1zFCgGQZ8DCGRxlpKrKmZV7G7fV9a2tITK7ill0yr0/mOefpDHELw7Xvvs
         61MbD7J2vChI6MYnUC3DPqlNr8XeRM3MJEsgmrs9op619ZDwRZrT5kExT0+JUD/j3bCk
         fEHGw5WVBVvgEOMXYw55UKekDRQcW18ouJogXQQl83AiMWVl1A4qMdA6ds8O/ibbwYPN
         lt4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="mj/Q0Kso";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id i11si712838pju.1.2019.09.02.07.15.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2019 07:15:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id x134so2470352qkb.0
        for <clang-built-linux@googlegroups.com>; Mon, 02 Sep 2019 07:15:29 -0700 (PDT)
X-Received: by 2002:a37:de14:: with SMTP id h20mr26496247qkj.260.1567433729523;
        Mon, 02 Sep 2019 07:15:29 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com. [45.79.221.244])
        by smtp.gmail.com with ESMTPSA id d45sm3752547qtc.70.2019.09.02.07.15.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Sep 2019 07:15:28 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:15:11 +0800
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
Message-ID: <20190902141511.GF4931@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
 <20190826125105.GA3288@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826125105.GA3288@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="mj/Q0Kso";       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::744
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

On Mon, Aug 26, 2019 at 08:51:05PM +0800, Leo Yan wrote:
> Hi Adrian,
> 
> On Fri, Aug 16, 2019 at 04:00:02PM +0300, Adrian Hunter wrote:
> > On 16/08/19 4:45 AM, Leo Yan wrote:
> > > Hi Adrian,
> > > 
> > > On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
> > > 
> > > [...]
> > > 
> > >>>> How come you cannot use kallsyms to get the information?
> > >>>
> > >>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
> > >>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> > >>> the patch v3, I should use that chance to elaborate the detailed idea
> > >>> and so can get more feedback/guidance before procceed.
> > >>>
> > >>> Actually, I have considered to use kallsyms when worked on the previous
> > >>> patch set.
> > >>>
> > >>> As mentioned in patch set v4's cover letter, I tried to implement
> > >>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> > >>> parse kallsyms so can find more kernel maps and thus also can fixup
> > >>> the kernel start address.  But I found the 'perf script' tool directly
> > >>> calls machine__get_kernel_start() instead of running into the flow for
> > >>> machine__create_extra_kernel_maps();
> > >>
> > >> Doesn't it just need to loop through each kernel map to find the lowest
> > >> start address?
> > > 
> > > Based on your suggestion, I worked out below change and verified it
> > > can work well on arm64 for fixing up start address; please let me know
> > > if the change works for you?
> > 
> > How does that work if take a perf.data file to a machine with a different
> > architecture?
> 
> Sorry I delayed so long to respond to your question; I didn't have
> confidence to give out very reasonale answer and this is the main reason
> for delaying.

Could you take chance to review my below replying?  I'd like to get
your confirmation before I send out offical patch.

Thanks,
Leo Yan

> 
> For your question for taking a perf.data file to a machine with a
> different architecture, we can firstly use command 'perf buildid-list'
> to print out the buildid for kallsyms, based on the dumped buildid we
> can find out the location for the saved kallsyms file; then we can use
> option '--kallsyms' to specify the offline kallsyms file and use the
> offline kallsyms to fixup kernel start address.  The detailed commands
> are listed as below:
> 
> root@debian:~# perf buildid-list
> 7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
> 56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
> 0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
> [...]
> 
> root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms
> 
> The amended patch is as below, please review and always welcome
> any suggestions or comments!
> 
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index 5734460fc89e..593f05cc453f 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>  }
>  
> +static int machine__fixup_kernel_start(void *arg,
> +				       const char *name __maybe_unused,
> +				       char type,
> +				       u64 start)
> +{
> +	struct machine *machine = arg;
> +
> +	type = toupper(type);
> +
> +	/* Fixup for text, weak, data and bss sections. */
> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
> +		machine->kernel_start = min(machine->kernel_start, start);
> +
> +	return 0;
> +}
> +
>  int machine__get_kernel_start(struct machine *machine)
>  {
>  	struct map *map = machine__kernel_map(machine);
> +	char filename[PATH_MAX];
>  	int err = 0;
>  
>  	/*
> @@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
>  		if (!err && !machine__is(machine, "x86_64"))
>  			machine->kernel_start = map->start;
>  	}
> +
> +	if (symbol_conf.kallsyms_name != NULL) {
> +		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
> +	} else {
> +		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
> +
> +		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
> +			goto out;
> +	}
> +
> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
> +
> +out:
>  	return err;
>  }
>  
> 
> Thanks,
> Leo Yan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190902141511.GF4931%40leoy-ThinkPad-X240s.
