Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBBQMM2XVAKGQENZK74CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D348EA93
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:47:14 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id n185sf974732vkf.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 04:47:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565869633; cv=pass;
        d=google.com; s=arc-20160816;
        b=FbsQU+uFQgGYbDgsU2sOAImsyQzOmRYB+XXo7sUmET8kRoF6fxV5i04AyCi+7gPl0M
         YVfdBBFoUm/gLRwIN+EUc94cq7Wq+PuE7opB1norcKpTxqQlQq97fyfu5eUVTN8Hi01X
         wrr3EhYP6+nVZc7xulb0c7gK2XqQLM+gyu4brt5ULR+Xr8ZsOgBT2BTAjJnG8XqAkVlP
         tOg187wFo9RejO0hjblQzOKx/tAXA8qx/UZPvrmPJOI+JdNEEnQ7unQ70UIHQiXPJrxp
         3YxUojIeOoyTBQ7AnTaPURzQ487zE4IrxkQsrnUSNNGrYVUjpB4HGTSzfgZ5zaVNxmgb
         UkQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=upZbnkjc5zPVVcnDAFaCJHxK7vXZf69LR4/TMJWFS/Q=;
        b=cxhjaIR8CaTv7Q3PnulESjXx2TNifBpGH0s00+3nPwRPSNuXKKwcYlyUlpXZK3M2TH
         yUEPSncdoA2JbXDTPhKNe0/geMA/qwVkPPwXWuKFBwlIstqtGaTmfqOXhJzPRuyzB2kO
         jsNmYT+lr+XRzABt3H3kJmP3h8sABtAMmzxk+4WjwMkyNfIz3QXLfHnQxtiD4XmuPZu/
         Uaqvdu2SImTVrHu+IVmmr13cxmrTJqOG7PLbARVO9pHTGdPgmkRVquJNucUWpIMfBuf/
         loaypkgc0FKfqgKc3l9PDQzQHaIKS+CtrFUby38EZFvyVxWcihKaBCgUn+NKyoWio9iI
         EmUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upZbnkjc5zPVVcnDAFaCJHxK7vXZf69LR4/TMJWFS/Q=;
        b=pL0LELeHKXhYJxSbql4eV4TbLDjSlrPGc3WZ7FozwKK8pzPcz8vI/8EY047bVXFs47
         gjdprFk7ptKNy+QY3IwpPuETQGXdgi20hX6HaUUMN4aMpOke5CqEFtqEMEGHdXT5EiUl
         SAd2viSOgu0sD1WPeWHdj5K6zwkkEo4SQkTFI2WDqCH1p4IG412h1LfxMqu6eRmkdZW6
         h8ARDZriRuqjIV8lUlKH1ieKF3sRIb00R8qq0uuy3oi0k90A2vvBQ9NhFfFq47VQOdTN
         q28gyJyuq7H/J3MaRHKMPCE9mZKgXIUCMEsvalklGchJ6PUXfBrwi/vRj+lhrk1OYoa+
         EVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upZbnkjc5zPVVcnDAFaCJHxK7vXZf69LR4/TMJWFS/Q=;
        b=dbmAcIVsEK4Nq8G22NfkCSVidgIiGa0T4t123NzDIooGI8BgGT2lUtp2PruPxHAKZz
         IVMlNs9fsR1uJlGbHxx7QAi8dVvUNUKxGbSAwZsw+3Jtafy2Sr2q0NXpApQZjKQ7hv7u
         P8lIDyV9OZ8KWRviYdrr8njwN5XOAuAVqpqzDYmvb6bHs8pKiceg84YPEBi1J8QocXKb
         as877T4/jSpxDIrnzTdRObx+53wIsH/S/5J050aMRndzWAZ1nxow/oAVoYy425CyDUKC
         4YrCQIw5XwF8wrSkzF5mQmQRVniiuCZpkaNpZqtQ1tBzHD4PTZpgGLxN/jokIF7m65tJ
         lkHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1lXUwvmk6v2fNDvYsJMi2i+8e8KABOVHxMulR+aLT4mSbJ9RK
	FoNhDQ3TrNx7QN+F+PPhLqM=
X-Google-Smtp-Source: APXvYqwVt6hSC81HidUmnDJeIyU7JJ7nQT6NlGv5Y8+rxB0fVBNdun0Mx0t7ajYuhHwjnPTEpGtxUg==
X-Received: by 2002:ab0:1c2:: with SMTP id 60mr2921407ual.78.1565869633069;
        Thu, 15 Aug 2019 04:47:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd4e:: with SMTP id n14ls177135vkm.1.gmail; Thu, 15 Aug
 2019 04:47:12 -0700 (PDT)
X-Received: by 2002:ac5:c290:: with SMTP id h16mr1667766vkk.59.1565869632777;
        Thu, 15 Aug 2019 04:47:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565869632; cv=none;
        d=google.com; s=arc-20160816;
        b=L5c7ajfDe5/U6Cuww8tb+pFyUHvXQe4a1zjVrRH9zPv82OzXRiua1EHIV4+kt+Oi+/
         4gGeedXABql09jxXX0o1ow9eId4oZL2DNqaUhkXlYepi6hDqf8HYWXzwT/LvLeJ1UK0W
         XDwqb4XgBgE5yD47WFbZ66AWqh+BTQSjJKekevXtjt4ylH9SjiaGJA+PFPs0A+qZ9yK0
         dqszX+O+DHHVApqhwhfofwrVWbWnwBGiCmfcJYkc0AzTzeXXSX7VcKGxm6ylrvzGyl7D
         X9hm6NhA5ZCCEwwWfwRWttIDRmGx3UfK/+LexvnE/jQxwqiiNUy8W0xHElCq8+ToId/h
         yEGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=GluatZ+AAbTovhwVRIsZCvow8k0rjPfj1kZIL2DOeyQ=;
        b=erpF62n7HrH1ZPAqWqoCux8cdzt91CGj8gfQUayLZ+urCH2fF9hHrdUscnUdwDaI0+
         oBzd9o3GP36G4gflv3qUaBoD9ALJz1wYVHzZH0VInsn6e2zLZW19NwWCbg7zYD/4YaOy
         yTJOyUta0n5vsLrjmt7op/vj6n3Bsu9Ltq4TKNXI9Y+I+jLRW0ikXF9iZqs/HGcc+a8r
         Ap0ge66Bz7miXbA9iQQVVyWLF1gMGcIOjzvwGMxsCvMtZypk5bI2wNYRPU53lENX7icy
         sMQdHH6gw14nIjwrWtXOzsR+UhV/PLkQz8suu0JzlAOPn+XLLPjRQxeoMpYakfPcblhJ
         1QvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id z67si184391vsb.1.2019.08.15.04.47.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 04:47:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 04:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; 
   d="scan'208";a="184600470"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122]) ([10.237.72.122])
  by FMSMGA003.fm.intel.com with ESMTP; 15 Aug 2019 04:47:06 -0700
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
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
Date: Thu, 15 Aug 2019 14:45:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815113242.GA28881@leoy-ThinkPad-X240s>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 192.55.52.115 as
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

On 15/08/19 2:32 PM, Leo Yan wrote:
> Hi Adrian,
> 
> On Thu, Aug 15, 2019 at 11:54:54AM +0300, Adrian Hunter wrote:
> 
> [...]
> 
>>> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
>>> index e4988f49ea79..d7ff839d8b20 100644
>>> --- a/tools/perf/Makefile.config
>>> +++ b/tools/perf/Makefile.config
>>> @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
>>>    NO_PERF_REGS := 0
>>>  endif
>>>  
>>> +ARM_PRE_START_SIZE := 0
>>> +
>>>  ifeq ($(SRCARCH),arm)
>>>    NO_PERF_REGS := 0
>>>    LIBUNWIND_LIBS = -lunwind -lunwind-arm
>>> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
>>> +    # Extract info from lds:
>>> +    #   . = ((0xC0000000)) + 0x00208000;
>>> +    # ARM_PRE_START_SIZE := 0x00208000
>>> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
>>> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
>>> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
>>> +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
>>> +  endif
>>>  endif
>>>  
>>>  ifeq ($(SRCARCH),arm64)
>>> @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
>>>    NO_SYSCALL_TABLE := 0
>>>    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
>>>    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
>>> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
>>> +    # Extract info from lds:
>>> +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
>>> +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
>>> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
>>> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
>>> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
>>> +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
>>> +  endif
>>
>> So, that is not going to work if you take a perf.data file to a non-arm machine?
> 
> Yeah, this patch will only allow perf to work correctly when perf
> run natively on arm/arm64, so it can resolve partial of the issue.
> 
>> How come you cannot use kallsyms to get the information?
> 
> Thanks for pointing out this.  Sorry I skipped your comment "I don't
> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> the patch v3, I should use that chance to elaborate the detailed idea
> and so can get more feedback/guidance before procceed.
> 
> Actually, I have considered to use kallsyms when worked on the previous
> patch set.
> 
> As mentioned in patch set v4's cover letter, I tried to implement
> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> parse kallsyms so can find more kernel maps and thus also can fixup
> the kernel start address.  But I found the 'perf script' tool directly
> calls machine__get_kernel_start() instead of running into the flow for
> machine__create_extra_kernel_maps();

Doesn't it just need to loop through each kernel map to find the lowest
start address?

>                                      so I finally gave up to use
> machine__create_extra_kernel_maps() for tweaking kernel start address
> and went back to use this patch's approach by parsing lds files.
> 
> So for next step, I want to get some guidances:
> 
> - One method is to add a new weak function, e.g.
>   arch__fix_kernel_text_start(), then every arch can implement its own
>   function to fixup the kernel start address;
> 
>   For arm/arm64, can use kallsyms to find the symbols with least
>   address and fixup for kernel start address.
> 
> - Another method is to directly parse kallsyms in the function
>   machine__get_kernel_start(), thus the change can be used for all
>   archs;
> 
> Seems to me the second method is to address this issue as a common
> issue crossing all archs.  But not sure if this is the requirement for
> all archs or just this is only required for arm/arm64.  Please let me
> know what's your preference or other thoughts.  Thanks a lot!
> 
> Leo.
> 
>>>  endif
>>>  
>>> +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
>>> +
>>>  ifeq ($(SRCARCH),csky)
>>>    NO_PERF_REGS := 0
>>>  endif
>>> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
>>> index f6ee7fbad3e4..e993f891bb82 100644
>>> --- a/tools/perf/util/machine.c
>>> +++ b/tools/perf/util/machine.c
>>> @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
>>>  	machine->kernel_start = 1ULL << 63;
>>>  	if (map) {
>>>  		err = map__load(map);
>>> +		if (err)
>>> +			return err;
>>> +
>>>  		/*
>>>  		 * On x86_64, PTI entry trampolines are less than the
>>>  		 * start of kernel text, but still above 2^63. So leave
>>>  		 * kernel_start = 1ULL << 63 for x86_64.
>>>  		 */
>>> -		if (!err && !machine__is(machine, "x86_64"))
>>> +		if (!machine__is(machine, "x86_64"))
>>>  			machine->kernel_start = map->start;
>>> +
>>> +		/*
>>> +		 * On arm/arm64, the kernel uses some memory regions which are
>>> +		 * prior to '_stext' symbol; to reflect the complete kernel
>>> +		 * address space, compensate these pre-defined regions for
>>> +		 * kernel start address.
>>> +		 */
>>> +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
>>> +		    !strcmp(perf_env__arch(machine->env), "arm64"))
>>> +			machine->kernel_start -= ARM_PRE_START_SIZE;
>>>  	}
>>>  	return err;
>>>  }
>>>
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e0919e39-7607-815b-3a12-96f098e45a5f%40intel.com.
