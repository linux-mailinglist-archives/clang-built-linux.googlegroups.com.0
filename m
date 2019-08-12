Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBQFJYTVAKGQEIO7ZHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 8456F897BF
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:26:57 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id q9sf64099867pgv.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 00:26:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565594816; cv=pass;
        d=google.com; s=arc-20160816;
        b=pueFa3Px1yF+PINg46vCX9e50Rm+PQ3KuY5KeNa4b0VkJSeN0RhpMZ8+VCi9B+9uv9
         eA3VxGIF1R/3k4iFmdAqcz5HazVrLZ2gqcbbXPpGSJYdpHmAwFKdu+miZmAhQzgFs60E
         SwA9xjXP1huxoumlwzA+xmgHyJXjZ0NlZfotzby2IOdyxhrdPb4r9E6iwhkG1rFgSwW+
         6iMMMYW+bWbXWpVrVkc1q0+qaPSYT/zlZz8XXGD3OiCtdBasffr00V7fcVNeuxy8BVma
         ypq/6xo2B2OP5gN9SZSvSVMnmgGyDz+6BPtB9wnNkDCjbpKXsSa6++M+9QxPxP3qnkyG
         ieEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=GUUNjBxXtsY34ogzwRXFwO3ehXqo9Gq0aFPqkuRBuyo=;
        b=fAsuU2WO7/tRkB1rPePh3KCoeEUbwqjB6GS4fl0y1pBMHW8sgmjERnm4P2joC9fwB2
         tcyNTa4xWNjCrVTWJI7uYU1Fin7Upy5JuXslM0gBWucPfP8csMNK2Y6exPbkteP28x2B
         DKJym0h58PwFAsF6jo0ljKNqK4XJXrsrL/ZigD6sDRRHIgFS4/W14BJ2PKY+VrWreSLu
         mwB62jcde/bge4VwvCo7aHKvldbrwUcIQjZGL19dM5YoefJn7lSSZZs19VyQgXNm8CTf
         Eqa0WeeuY/NzdZpfl1L3/BQQPaQn/cn+QUz49xgBszdOnGZaRwCPANGmtuMrnJzIWgPb
         IvqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GUUNjBxXtsY34ogzwRXFwO3ehXqo9Gq0aFPqkuRBuyo=;
        b=SbIfXOft0b9kZeKmH4ztHd+2MBUEpYy1vk0a6asGkETxTayAcmNsobiFRK0Z75VORZ
         VLO7Pl27LYrSzwfYWhualo+kwEHhnnUzJbeyqjqLsqJfhRA3xNpXn3ZLgwaUvFrohrIF
         Q8N1mUbVk6t87w71co3AcY75HwrhH67keFZETPobWZe/wXPwDHV+82CDHsH/mvtLMJpF
         IKWvwNH1aEbnotxlli75+zwatSE5/GFHAq/IDLvkv8UrG7cwPUAwjn+yWe24h/WBYIhh
         KCgaTRtWuu9VYvGPwSIrn3+4ddKO2FxBYG/x8EhToIdy/kbMu/p7njUojfoe3AnKh9cW
         jBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GUUNjBxXtsY34ogzwRXFwO3ehXqo9Gq0aFPqkuRBuyo=;
        b=NCc5MnvRzHP3rvHUbfMyLafOnb8a2GvWXlQR3wWGdmqz73sSragoRgIVPk2SX3f5I5
         KQ8uDMccPej3zMUlqNEJloI6kDpddPMMTyM+zGV7BE22gZEcDctR+0tvNqEO+xtaVbu6
         rYFJDvKHEgM/+lyZTbzRt5bK82QvuUO2bFdxTFXw6TkGd0fG6eKAoSaNVtro9sJvGwds
         /kYCNpht/U3JX51mT9oA3CUvXVzu6RFgVpwLA+bW9QFHN0EjxGr5HiKKCR2qePDflyFa
         WTjPDIJRJmHyI95/J2NyC2cbqMHoS2wWv4M9J7b9D2vh8z6BNOwk+T1MNi+Q/0L2O+f1
         tH5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2BH42dJyJVa63nGxPN5Lg5VkwmK7Ztfl9XnPjaCNX63ceMmdw
	IOw+8v+ca6+0jhYz1YWJ/bU=
X-Google-Smtp-Source: APXvYqw4JwdZezOyfJ4mtvT4OvgAIf0Fem+LkdS748opGD2dm4ztnhyIfI7jFWKgqWJdhqpaDuV81g==
X-Received: by 2002:a17:902:7281:: with SMTP id d1mr19246160pll.8.1565594816058;
        Mon, 12 Aug 2019 00:26:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2acb:: with SMTP id j69ls28696318plb.9.gmail; Mon,
 12 Aug 2019 00:26:55 -0700 (PDT)
X-Received: by 2002:a17:902:ba8e:: with SMTP id k14mr10786443pls.10.1565594815773;
        Mon, 12 Aug 2019 00:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565594815; cv=none;
        d=google.com; s=arc-20160816;
        b=OEBEkm+NdpPkJlli9PCmgjoyxsqlV83MiHM9t75pji8wevXe6ozNDuIAMQBf07b1Ld
         GFZrOp3DzU63dF4D8Bl1BKThaYVtYw5CBk1i8rSsgTpT91W4SGyXpr2ABAvkUh/FwyaC
         GMsqpL+5Ryk8bD1CtCOt2SbdZM6MICqdKJc6l/L3JLNa6ZzTHwY50gLCxinUwxLnLyID
         H7GFbyuZqeEKnwnknSm4v5Iznx+yHdEn8N17LDwpIEZhxr9rQk0d9WkJQacTyFD9hD1C
         uxygPqPlGT3pH1Vqnh+YUJucTMoiATHpzoQVncODLcff8x4YjISFLqOebBKinjQCk1KB
         FKPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=1JpsGv32j5P8bYJUDHpLygwVqsk7o34v07dm1cxoITY=;
        b=wl1RNJLWBfgA8rDxdaxkTDmJ+XDOcNOSw2EOvC1giBBcgh8ioa0mD+GvzZfGRdPsRJ
         ThO+eXBx4HT46VautRK0E2nu9ieXNtZS/Oz9SFJKzTcckzMMNGR+Z/hCOhs5ZPZGUple
         Af4hJRB9s0ThqkqLkNQWdwQ77yIvU/os9suD3FKkvP53ed6PZC1aZN/bWMlc5mfPYZ2/
         s9uko/qjaPoLxgbRkh90x3GcBljCedNskPI6YXFsUkif8TF8v8zLKiEmcjZEuOl2PkR7
         Fy67g4sk3RLOgXQtB6CFyJ1ClRTnjcUszsZg/Me3LgY3AkRPiKL174fRunZ/IX9QJm2a
         Kg+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c11si177705pjo.1.2019.08.12.00.26.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 00:26:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Aug 2019 00:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; 
   d="scan'208";a="193899225"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122]) ([10.237.72.122])
  by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2019 00:24:28 -0700
Subject: Re: [PATCH v4 1/2] perf machine: Support arch's specific kernel start
 address
To: Leo Yan <leo.yan@linaro.org>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, David Miller <davem@davemloft.net>,
 Milian Wolff <milian.wolff@kdab.com>, Donald Yandt <donald.yandt@gmail.com>,
 Davidlohr Bueso <dave@stgolabs.net>, Wei Li <liwei391@huawei.com>,
 Mark Drayton <mbd@fb.com>,
 "Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20190810072135.27072-1-leo.yan@linaro.org>
 <20190810072135.27072-2-leo.yan@linaro.org>
 <c1818f6f-37df-6971-fddc-6663e5b6ff95@intel.com>
 <20190812070236.GA8062@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <250165c6-908a-c57e-8d83-03da4272f568@intel.com>
Date: Mon, 12 Aug 2019 10:23:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812070236.GA8062@leoy-ThinkPad-X240s>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as
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

On 12/08/19 10:02 AM, Leo Yan wrote:
> On Mon, Aug 12, 2019 at 09:37:33AM +0300, Adrian Hunter wrote:
>> On 10/08/19 10:21 AM, Leo Yan wrote:
>>> machine__get_kernel_start() gives out the kernel start address; some
>>> architectures need to tweak the start address so that can reflect the
>>> kernel start address correctly.  This is not only for x86_64 arch, but
>>> it is also required by other architectures, e.g. arm/arm64 needs to
>>> tweak the kernel start address so can include the kernel memory regions
>>> which are used before the '_stext' symbol.
>>>
>>> This patch refactors machine__get_kernel_start() by adding a weak
>>> arch__fix_kernel_text_start(), any architecture can implement it to
>>> tweak its specific start address; this also allows the arch specific
>>> code to be placed into 'arch' folder.
>>>
>>> Signed-off-by: Leo Yan <leo.yan@linaro.org>
>>> ---
>>>  tools/perf/arch/x86/util/machine.c | 10 ++++++++++
>>>  tools/perf/util/machine.c          | 13 +++++++------
>>>  tools/perf/util/machine.h          |  2 ++
>>>  3 files changed, 19 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/tools/perf/arch/x86/util/machine.c b/tools/perf/arch/x86/util/machine.c
>>> index 1e9ec783b9a1..9f012131534a 100644
>>> --- a/tools/perf/arch/x86/util/machine.c
>>> +++ b/tools/perf/arch/x86/util/machine.c
>>> @@ -101,4 +101,14 @@ int machine__create_extra_kernel_maps(struct machine *machine,
>>>  	return ret;
>>>  }
>>>  
>>> +void arch__fix_kernel_text_start(u64 *start)
>>> +{
>>> +	/*
>>> +	 * On x86_64, PTI entry trampolines are less than the
>>> +	 * start of kernel text, but still above 2^63. So leave
>>> +	 * kernel_start = 1ULL << 63 for x86_64.
>>> +	 */
>>> +	*start = 1ULL << 63;
>>> +}
>>
>> That is needed for reporting x86 data on any arch i.e. it is not specific to
>> the compile-time architecture, it is specific to the perf.data file
>> architecture, which is what machine__is() compares. So, this looks wrong.
> 
> Thanks for reviewing, Adrian.
> 
> If so, I think we should extend the function machine__get_kernel_start()
> as below; for building successfully, will always define the macro
> ARM_PRE_START_SIZE in Makefile.config.
> 
> @Arnaldo, @Adrian, Please let me know if this works for you?

I don't know how you intend to calculate ARM_PRE_START_SIZE, but below is OK
for x86.

> 
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..30a0ff627263 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
>         machine->kernel_start = 1ULL << 63;
>         if (map) {
>                 err = map__load(map);
> +               if (err)
> +                       return err;
> +
>                 /*
>                  * On x86_64, PTI entry trampolines are less than the
>                  * start of kernel text, but still above 2^63. So leave
>                  * kernel_start = 1ULL << 63 for x86_64.
>                  */
> -               if (!err && !machine__is(machine, "x86_64"))
> +               if (!machine__is(machine, "x86_64"))
>                         machine->kernel_start = map->start;
> +
> +               /*
> +                * On arm/arm64, some memory regions are prior to '_stext'
> +                * symbol; to reflect the complete kernel address space,
> +                * compensate these pre-defined regions for kernel start
> +                * address.
> +                */
> +               if (machine__is(machine, "arm64") ||
> +                   machine__is(machine, "arm"))

machine__is() does not normalize the architecture, so you may want to use
perf_env__arch() instead.

> +                       machine->kernel_start -= ARM_PRE_START_SIZE;
>         }
>         return err;
>  }
> 
> Thanks,
> Leo Yan
> 
>>> +
>>>  #endif
>>> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
>>> index f6ee7fbad3e4..603518835692 100644
>>> --- a/tools/perf/util/machine.c
>>> +++ b/tools/perf/util/machine.c
>>> @@ -2671,6 +2671,10 @@ int machine__nr_cpus_avail(struct machine *machine)
>>>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>>>  }
>>>  
>>> +void __weak arch__fix_kernel_text_start(u64 *start __maybe_unused)
>>> +{
>>> +}
>>> +
>>>  int machine__get_kernel_start(struct machine *machine)
>>>  {
>>>  	struct map *map = machine__kernel_map(machine);
>>> @@ -2687,14 +2691,11 @@ int machine__get_kernel_start(struct machine *machine)
>>>  	machine->kernel_start = 1ULL << 63;
>>>  	if (map) {
>>>  		err = map__load(map);
>>> -		/*
>>> -		 * On x86_64, PTI entry trampolines are less than the
>>> -		 * start of kernel text, but still above 2^63. So leave
>>> -		 * kernel_start = 1ULL << 63 for x86_64.
>>> -		 */
>>> -		if (!err && !machine__is(machine, "x86_64"))
>>> +		if (!err)
>>>  			machine->kernel_start = map->start;
>>>  	}
>>> +
>>> +	arch__fix_kernel_text_start(&machine->kernel_start);
>>>  	return err;
>>>  }
>>>  
>>> diff --git a/tools/perf/util/machine.h b/tools/perf/util/machine.h
>>> index ef803f08ae12..9cb459f4bfbc 100644
>>> --- a/tools/perf/util/machine.h
>>> +++ b/tools/perf/util/machine.h
>>> @@ -278,6 +278,8 @@ void machine__get_kallsyms_filename(struct machine *machine, char *buf,
>>>  int machine__create_extra_kernel_maps(struct machine *machine,
>>>  				      struct dso *kernel);
>>>  
>>> +void arch__fix_kernel_text_start(u64 *start);
>>> +
>>>  /* Kernel-space maps for symbols that are outside the main kernel map and module maps */
>>>  struct extra_kernel_map {
>>>  	u64 start;
>>>
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/250165c6-908a-c57e-8d83-03da4272f568%40intel.com.
