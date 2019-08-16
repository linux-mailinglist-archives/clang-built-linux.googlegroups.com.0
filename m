Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBPWS3LVAKGQE6ELE3BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFB090252
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 15:01:52 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id s23sf5235961qkg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 06:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565960511; cv=pass;
        d=google.com; s=arc-20160816;
        b=vAmGmiCasNeEB4lEQ+C4x5kLWWd/7brsHRji2xtwXeK/e8GtQtaUvckoA8cD/x/mZY
         7R12FcCxTp4B3zINxBdkU4cFv8sS4fx4iZJB2AF05a0HLN4qLACiJ3o++t7OapkSiA53
         Olrjt33sPXVOhx1VrHdMDQPKjntCezaDA/A5WXNUBFX73MIgYLslT7b/+vrQXZkR35El
         URiT1R8T68NjeNrbzKZTbIorOlS9gWtUp+/qwIEW5G8/bsJIqGVZdM8eWj5q2Xc91UDU
         z3LKi2ra+nARAs4MTOCf0LgGIOfCp8kem/TeD9mLrAzC6SepII8NUEQU6FEuCkH5HApg
         mfEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=DmTxqU/GceSOAb01CLSVaVZ5nt92y91nuGSKuYyh4FE=;
        b=G6Xt9B5HN5L7p/HCTC377hEtW9Pbn5QeCi9wPj5ukN7RVar0TsqQ7h3jX3EZC96XqB
         xXb71d3TG17Qyl27lyBksrWWiP+7hE3u2dEl+fVCvO6u31HW7Tlzr1IgxbmmJ96FGvb1
         +xSPxR9uLx0ovE3AGVT4VuzjJUtSF8vyWn/uyeGBLhbhgMHIqJp01RWuPNSPE7iH9zNS
         gMDGjpAFx0yc/PIFCPria5UGr8w208+YXhGpYymJvV5yfvt5LsMwft0MDL9jMhY0OZkR
         T+Mj1DbP277+Lx3P6BlGrmVbUvxtiIh10FlEGjzzeZNs0xLsMhC5trjLX9ShaOJ6qeLa
         wkuA==
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
        bh=DmTxqU/GceSOAb01CLSVaVZ5nt92y91nuGSKuYyh4FE=;
        b=rfavumtUI/d7px0VVyAM0GXvK8FzMAyh+yQWdysQcaPlL5ENmMSB/PeZMPhauunWQ8
         6b764EJdpMJP0DbU1bTQdhhnN07w0qC13OG+8BycUqUeMv6S8XkRNzJPzjVPtE+AvJfz
         Z8UqdwWUILgUDmUpuc514QweV2WMoPfplb7bxhQW8OrQOkjV3KoZESF6l928JH7dQqWc
         Zi8aJ/CWnxqDrNYZG9ZLrm6fO80fGwUiVR8NpYJRTYFETUdkDipouEYkLVXazFn1Fkga
         UBkqEPPfGwdxLM1xeBQF8iBu3isOYMe907UKErSguCVWv+CL/xSBgk72E0HNSjM4z+zb
         ZrUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DmTxqU/GceSOAb01CLSVaVZ5nt92y91nuGSKuYyh4FE=;
        b=rKZlGS3Qq4/jAEF9ZokbC8N8kMdvur0MMTVxSWJfeItXojbEuVwU675xgILmfhLpMM
         dxs7UWl9mB+v+ohZPelpRWQBiV/Z6soQ4DuuwiBXJk1e5L+lDh/X0xsL5smoCz0YoI44
         /ApX/JBH/N+jUlS3TAh2sY024gYGUhZoLNvzJN3vIimNMFkj6TzLjNOOTv4PYyi7Lc6b
         /7oot7gVQBWLzHD1T94Eflh3a8YjbXMXInFBKiQktL1RS4r1BIwHBfft31G7KShWSrWI
         TKU1HsmVWvDEmU8mrU8leSwQkTQgsQSqyF6/fQsdQzHhi7Bv05IB3iYHX8/mog1Rm35T
         yxNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhVDErk56JOJ5dS7M+P90FSqGr7zaqTCjOZ90zmfBBKTLpaeUr
	CmOIbqNoS0Qx6rIlnldydTQ=
X-Google-Smtp-Source: APXvYqyMKDeqd+QDAJLlc+9/wVwN9aGP3FDxFgpoAvhrlIkJ7SAmojvty2A+Lr3hJkHulVe/+pY+Sw==
X-Received: by 2002:ac8:6109:: with SMTP id a9mr8530098qtm.151.1565960510425;
        Fri, 16 Aug 2019 06:01:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15f6:: with SMTP id p22ls1589831qkm.8.gmail; Fri,
 16 Aug 2019 06:01:50 -0700 (PDT)
X-Received: by 2002:a05:620a:786:: with SMTP id 6mr8852820qka.307.1565960510197;
        Fri, 16 Aug 2019 06:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565960510; cv=none;
        d=google.com; s=arc-20160816;
        b=JxMgiSzHzcG5iSOvgcpxgcpy3pGNHOidqNMGo81xx72h0ZfSZYWj3bWCMubRHeDII6
         0qNY9pplYQOmjuUhdJPXfpq3ULEvTdeP6zfCBjVn0Yc3kwnaeI9nDoLAOE82kMWN89k7
         8BwQNJfm3nlJXlz9H4si9wZDbVFNoGsvdrH+j/InsYANU6mIRVJ0s9gyd6iFmO+kDej2
         JlUIONJFohSEMyIsYF/7wy9Gh8vDZQ+GOcGZv31320vn46KjuYTWli/8OLppwFk+N2yt
         bEU+EteVQi2MV0jOlYeYfyknw6xxfZ678nphEXSdn/Gy8LqjdUtOhMEjtQLKMJ0A565K
         Qe4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=/G6/z0bAsOuLQWoF455VhFno04GiJKItgRPHdSCul/g=;
        b=JtwKjQ0QQazGMKGHLeO24aRcqgkuQykO6dqbJ3LKTGDp8T7zK+SNanvMaypPwbriLL
         Q2LjbEZNhKjpQQU0UAtc9vn4KFvpmxtH8fIHVlRieL+n/cEliGy3JaNlpb87se9SgHQu
         gO9hC1LU/QyvOH53aHkcVz5YfT/RkAhYlZS5ES5zcrmegxO+Uibj8yfRxwLQk/7owq70
         vWtpQ9Gqifk3HFyVYzRLisQL7Pq57kNLSrabxr3dQx/eio7W+FlJbQQdyYUFUnKbkG2P
         ssis8elTFm3wNzybeKaUPXXUlHwiSOEWfGgCU5r0AGL7wDlT9rFrZBzML2dCD0hfH1Ty
         0Mqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id p24si404676qtq.5.2019.08.16.06.01.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 06:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Aug 2019 06:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; 
   d="scan'208";a="171409585"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122]) ([10.237.72.122])
  by orsmga008.jf.intel.com with ESMTP; 16 Aug 2019 06:01:12 -0700
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
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
Date: Fri, 16 Aug 2019 16:00:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816014541.GA17960@leoy-ThinkPad-X240s>
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

On 16/08/19 4:45 AM, Leo Yan wrote:
> Hi Adrian,
> 
> On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
> 
> [...]
> 
>>>> How come you cannot use kallsyms to get the information?
>>>
>>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
>>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
>>> the patch v3, I should use that chance to elaborate the detailed idea
>>> and so can get more feedback/guidance before procceed.
>>>
>>> Actually, I have considered to use kallsyms when worked on the previous
>>> patch set.
>>>
>>> As mentioned in patch set v4's cover letter, I tried to implement
>>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
>>> parse kallsyms so can find more kernel maps and thus also can fixup
>>> the kernel start address.  But I found the 'perf script' tool directly
>>> calls machine__get_kernel_start() instead of running into the flow for
>>> machine__create_extra_kernel_maps();
>>
>> Doesn't it just need to loop through each kernel map to find the lowest
>> start address?
> 
> Based on your suggestion, I worked out below change and verified it
> can work well on arm64 for fixing up start address; please let me know
> if the change works for you?

How does that work if take a perf.data file to a machine with a different
architecture?

> 
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..51d78313dca1 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2671,9 +2671,26 @@ int machine__nr_cpus_avail(struct machine *machine)
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
> @@ -2687,6 +2704,7 @@ int machine__get_kernel_start(struct machine *machine)
>  	machine->kernel_start = 1ULL << 63;
>  	if (map) {
>  		err = map__load(map);
>  		/*
>  		 * On x86_64, PTI entry trampolines are less than the
>  		 * start of kernel text, but still above 2^63. So leave
> @@ -2695,6 +2713,16 @@ int machine__get_kernel_start(struct machine *machine)
>  		if (!err && !machine__is(machine, "x86_64"))
>  			machine->kernel_start = map->start;
>  	}
> +
> +	machine__get_kallsyms_filename(machine, filename, PATH_MAX);
> +
> +	if (symbol__restricted_filename(filename, "/proc/kallsyms"))
> +		goto out;
> +
> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
> +
> +out:
>  	return err;
>  }
> 
> Thanks,
> Leo Yan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/363577f1-097e-eddd-a6ca-b23f644dd8ce%40intel.com.
