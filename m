Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBX6OXXVQKGQEE3MXRTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3B2A7CC1
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 09:27:28 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id n3sf5118873ywh.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 00:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567582047; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wVBG6dXMjtJT3Das8rXBwZCr1eOxkfJxvAUMu39ffFLzZe7UXdb82Lwpb35kCLhwT
         MefjsWth7uJ+tAPBcNA2ZXEJpP6Z9zKZXAtzidEJhMRlqXhOnuzzRa7Q9KRyYkKKtASe
         2Qh29d4no+V0rBp9smXbvFK5jDw4fBtXdKu5Rzvty11mTCxvVVzvynQEf2IjTC8rmvn4
         l2NNOkWs2DgFV3VjCiTd+a7veok9CtGssNkA0Azhfadbg+TI3pevRvIDPMmrEtuCe2Oj
         8qTlabTFMnHSRE+Gj/ZBHOXMo1gh/K5x7PmFPR18v4wS234MyxFqeKAtH2h0MuEsZeHg
         Ip/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=S7Z0UFxfYt73D9bWYaRBBy7S35TcFiiw0hNKLCVqIac=;
        b=zKfe7Zco/pS0pSfoH0oEqTPj5laXXdKe+P9lUFZm02sMk1TOBb4Alr9gwgZcLaQORF
         0GSfBNWRyGGGgX7gb++gheh2Cb/9F5NYCd+cH+MjaAXqyv9p9AscbJhtPUjdSQ0CfiHb
         zeoPWyOg5f6OthUGQccUoIcP4zuwcJmEbXgdit8WxivuizhQhXI9PZFJew7zIsrSywUI
         xZDvZ08greAWOCBCawXGR+RasHX13cAp8aNp+AFapBpU8WVfjQ1D10TJ5hDzhOgaHCXv
         2fxT0RiiFWoqpa+/3Stz20RbBtSWCXl+z9atNRR06hWvRvt5XIYYUIxoY0NDKol4RZIG
         2e1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7Z0UFxfYt73D9bWYaRBBy7S35TcFiiw0hNKLCVqIac=;
        b=D5ImefcymCeOp4oHO9/VqQXCHiqyIDQGx/GO5mDzNslkWHsftQCwTF3SYmtgkdJEfz
         YbxFSJ8Dsef27L5424vzNogoMPEAIfF5BcxgLkhw4bGhimlrARF57AVk3cYyPZls2zja
         QAQa8EoOj00/k46JgwtiunoHielKP5h3LQOlBSq0TqWbGiP1FaDmSj+9r1F4e+db8QNi
         usGzWPh8ZZtiapNygouLp4EeSHbMAPYXbd2y1EMk7PEwgLkAyZkOvzw98VhWFZYM86nR
         DVjGTJEm9evUtSB7WtJJdvse9e6CrgjcAr9EwQAXpZqIoS5hCnCi1Rx0OIbFo6zESAg5
         tdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7Z0UFxfYt73D9bWYaRBBy7S35TcFiiw0hNKLCVqIac=;
        b=cDvcuvb9BgeEEhukLMeduzXR5k/UzD9Ryon7XB2nIj/xXV8wIlYjS5Izf1gL6NOCFZ
         /pHei+WKrB30HOuSECSLStSpfSfH9a+jsRo4O1qu9N6H3wGLCe1chesIiC9It1/hUH1W
         gCb0EhycykjE2Drvy09I5TTb0lDUHToV/IKRDHQgkB2nAFwM8rnW48qTSYlRTnQQcWSU
         /onIeR4Q0iexbbbNnM/L9nlYM0/3LTpwYqFNUZ7NkqmnEGAIlKCcu9GdxJMIH5RZhC1k
         /azEVFzRQcCy1Wl/O5h5aWOVQCB7j05jBwLHLa4PiLPoeTc4d06IRUFaNQAC0IKiuVYs
         p5Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5D66tgl+l/Yhv57AK9vAhXHL/Gv+7tq8hA4b48eO7E1688s51
	wS/CymMij0wVAKLaeVgCMRE=
X-Google-Smtp-Source: APXvYqxwri2GHopQRfPCu8eEF9AFd7lnyIizA/1EFkcim2hbVxpRwbjXYlqiU+6Kz1tplMm9bL5Nlg==
X-Received: by 2002:a25:2d0f:: with SMTP id t15mr26570073ybt.210.1567582047452;
        Wed, 04 Sep 2019 00:27:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2fcd:: with SMTP id v196ls1130256ybv.15.gmail; Wed, 04
 Sep 2019 00:27:27 -0700 (PDT)
X-Received: by 2002:a25:e016:: with SMTP id x22mr29178730ybg.9.1567582047202;
        Wed, 04 Sep 2019 00:27:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567582047; cv=none;
        d=google.com; s=arc-20160816;
        b=KjJk8lnic3qrf9f/+kFsHVN8mWAMbo6nlNmxAERtePHJrhluRt7pC6GLeFQV0N4kyR
         N0Mvl5AKzxZ/PY7XIOl+OOZhS2tD6GsihJ/RqYr4hHUmX3nWDp3BpTAd/LWe4MM5mQau
         cCTumAuMoY7WqS8KwRNEQA5Ik2qdGyR0fkNEAOefVIdWMBKgBZABibWlexbheCDAmndN
         lHUvOAD+eVXSUn1E83DCX9gc5jEpNKXUn/809fWlGRJuJ3L/QjDjet6HZEaILQynd1Zl
         Isz7poG//QHOic1Z4NqpfLcUbNMmnYYzfzjgXKRCwe52GTAZ8MWUP7iGi1BnYNRmgtkq
         7PKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=SXRGdw134erf5qC303Z4x2L5e9b4o2B2wfLDKsvzaEQ=;
        b=r2mwE2gx08dnbaeJDBMfDyQJNsHAMrV6h+isOfjEKTgrUboYx8irFOObMolh3K9HF7
         ejtQj6OaKEPFHYjgF23akTPS93q10YMt4Bmlit0oSVfazdhtZRdfnPOIwCi6Oe7XMnfz
         lkzS0pC76A9d+Z+cL6WGNp/G3uO7dOPkfUJwC+aa4+IZnlMUttIcHZDbC2Xp2SxGYJs4
         4uzklyD5Mf6vMHkuESsyQ/Sdw8oj8vxgiguwoxCQ7HdeWD0peOyRz0CHZ4ZTqGWTOqAU
         5scX1vMQVMBzk30lJFXqsfvsGtcWLMqUfrzP1Rdy0702Xd0XztwD8Ysy+G64KEds4Fft
         kfXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id c76si1198356ybf.3.2019.09.04.00.27.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 00:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Sep 2019 00:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; 
   d="scan'208";a="198965380"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.66]) ([10.237.72.66])
  by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 00:27:21 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
 <20190826125105.GA3288@leoy-ThinkPad-X240s>
 <20190902141511.GF4931@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
Date: Wed, 4 Sep 2019 10:26:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902141511.GF4931@leoy-ThinkPad-X240s>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 2/09/19 5:15 PM, Leo Yan wrote:
> Hi Adrian,
> 
> On Mon, Aug 26, 2019 at 08:51:05PM +0800, Leo Yan wrote:
>> Hi Adrian,
>>
>> On Fri, Aug 16, 2019 at 04:00:02PM +0300, Adrian Hunter wrote:
>>> On 16/08/19 4:45 AM, Leo Yan wrote:
>>>> Hi Adrian,
>>>>
>>>> On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
>>>>
>>>> [...]
>>>>
>>>>>>> How come you cannot use kallsyms to get the information?
>>>>>>
>>>>>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
>>>>>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
>>>>>> the patch v3, I should use that chance to elaborate the detailed idea
>>>>>> and so can get more feedback/guidance before procceed.
>>>>>>
>>>>>> Actually, I have considered to use kallsyms when worked on the previous
>>>>>> patch set.
>>>>>>
>>>>>> As mentioned in patch set v4's cover letter, I tried to implement
>>>>>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
>>>>>> parse kallsyms so can find more kernel maps and thus also can fixup
>>>>>> the kernel start address.  But I found the 'perf script' tool directly
>>>>>> calls machine__get_kernel_start() instead of running into the flow for
>>>>>> machine__create_extra_kernel_maps();
>>>>>
>>>>> Doesn't it just need to loop through each kernel map to find the lowest
>>>>> start address?
>>>>
>>>> Based on your suggestion, I worked out below change and verified it
>>>> can work well on arm64 for fixing up start address; please let me know
>>>> if the change works for you?
>>>
>>> How does that work if take a perf.data file to a machine with a different
>>> architecture?
>>
>> Sorry I delayed so long to respond to your question; I didn't have
>> confidence to give out very reasonale answer and this is the main reason
>> for delaying.
> 
> Could you take chance to review my below replying?  I'd like to get
> your confirmation before I send out offical patch.

It is not necessary to do kallsyms__parse for x86_64, so it would be better
to check the arch before calling that.

However in general, having to copy and use kallsyms with perf.data if on a
different arch does not seem very user friendly.  But really that is up to
Arnaldo.

> 
> Thanks,
> Leo Yan
> 
>>
>> For your question for taking a perf.data file to a machine with a
>> different architecture, we can firstly use command 'perf buildid-list'
>> to print out the buildid for kallsyms, based on the dumped buildid we
>> can find out the location for the saved kallsyms file; then we can use
>> option '--kallsyms' to specify the offline kallsyms file and use the
>> offline kallsyms to fixup kernel start address.  The detailed commands
>> are listed as below:
>>
>> root@debian:~# perf buildid-list
>> 7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
>> 56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
>> 0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
>> [...]
>>
>> root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms
>>
>> The amended patch is as below, please review and always welcome
>> any suggestions or comments!
>>
>> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
>> index 5734460fc89e..593f05cc453f 100644
>> --- a/tools/perf/util/machine.c
>> +++ b/tools/perf/util/machine.c
>> @@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
>>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>>  }
>>  
>> +static int machine__fixup_kernel_start(void *arg,
>> +				       const char *name __maybe_unused,
>> +				       char type,
>> +				       u64 start)
>> +{
>> +	struct machine *machine = arg;
>> +
>> +	type = toupper(type);
>> +
>> +	/* Fixup for text, weak, data and bss sections. */
>> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
>> +		machine->kernel_start = min(machine->kernel_start, start);
>> +
>> +	return 0;
>> +}
>> +
>>  int machine__get_kernel_start(struct machine *machine)
>>  {
>>  	struct map *map = machine__kernel_map(machine);
>> +	char filename[PATH_MAX];
>>  	int err = 0;
>>  
>>  	/*
>> @@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
>>  		if (!err && !machine__is(machine, "x86_64"))
>>  			machine->kernel_start = map->start;
>>  	}
>> +
>> +	if (symbol_conf.kallsyms_name != NULL) {
>> +		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
>> +	} else {
>> +		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
>> +
>> +		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
>> +			goto out;
>> +	}
>> +
>> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
>> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
>> +
>> +out:
>>  	return err;
>>  }
>>  
>>
>> Thanks,
>> Leo Yan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c16ee888-73cc-588d-6156-bb5528d635cf%40intel.com.
