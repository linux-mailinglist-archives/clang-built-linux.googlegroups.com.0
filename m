Return-Path: <clang-built-linux+bncBD26TVH6RINBB4FOSKEQMGQEIEHMFRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C693F5882
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 08:53:38 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id n42-20020a9d202d0000b02904fc72900a74sf11801814ota.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 23:53:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629788016; cv=pass;
        d=google.com; s=arc-20160816;
        b=ah60I/ObE3x4vpiOT1QueyAOCC0a7te3lp19vOiViNjeSnQmu2fQdpTLLj+1FNe0KM
         yborAhZf+Un+3i7guUHk8kbplYlJuH7emeQJWx6SIHjFXP/9V63qBltqhQ2BmZ+19HuI
         nFOpEKdklm6JjkU6n+kff1cLiJrKS45INQn7LAWxcX3SGyYEcOvEec6RQnGOuNSDtV3h
         ZUwcCHvovTdbaVyuM3BSc4PIR/UQqqtYpKeYVyTR+JQyfniyNfOyXut7CWuMp78QIsU/
         WSgf3nRhUr5c98boDAwczD+NjNyuIllbdU1mr0lkr/eE1MZi54+DIjRpTZ+X6wa41jE+
         Dmmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3kt1GlaIjWEA8G4bEN/+6+R90Eps+vZQoCYcJrcWqOA=;
        b=Qo6R6PO+qh9C2uFRN8T4mJKIpcfYEE5/Gb81j8sKWT71Tgg05hbytj7lPqe5c0yMRD
         toEXdpnUVaTgU8bLs7tAHdfqX0ke//CfuHZDMKR76/zyrXfRP34iOonitSy3ayOGkxhX
         +jtbKLXZdEfMFZoyhS3WhLbuyLT7WNxQ7+FWFlDsv78bTwPpxfDYPyYBVVps7I7GphB6
         LBLIbI6a5UBU25WZLycgI1mfEZZpVgg7uAxhhoxcH6YR9AMLlnWwLeRZQDeK81lYHfWE
         BNEmbZQe4cCBzG0Efn2BuEbthDnM3ZT4wzh/Xow3gmjWUZ+bcoZb1hKg3m/iI2cP0cvF
         fjsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3kt1GlaIjWEA8G4bEN/+6+R90Eps+vZQoCYcJrcWqOA=;
        b=DaNXU7g63DF8EQbVMzJk9Xn25yMzB0AuJNlLuRAfdSlJ8jNTD5Dtab3rsKNptcRJxL
         34m4thly0Xqf2LwPIyPLiJvOiGI5wByVydE3hpX8hF8e2GsAsllE7o3DToAAOt1prK0f
         qD1XRNdldRyb81vCKtDA9HvHRO0qkGxumnmtUlGVTZMWty7mLfPb3/wNcMLIjWYq7UnL
         +iISIfiISZ0czR7gcZnmS3c4nXsWHGdKp5UPBEgBckbXS7qCWgmOhmEqnAK7mejkktbC
         dYUgB3yHkzIy5kIiyih2OBoK7+8QPE/eqLwHOCONeMlwxyXDP1/VlCDJEKL+bXZ62dbM
         rxsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3kt1GlaIjWEA8G4bEN/+6+R90Eps+vZQoCYcJrcWqOA=;
        b=kf33AugUvYNOLp3MnEzJvyr0h6h8PbQ8cBOEatG6UqM26lX96HXX2+J9KCKFcSw9r6
         7lEpeJqrKk/ja96lx2+Yg/IdO69G4uI94XuxQDjbEdAjTSh+QM/x79yeMtwzyb9sIwUV
         JLL3VqEfiTxD4jf7U6I2YIyjmoNtuZEt3NF2Qeu8nk/L5iMmDrBoflUbHw+hCpq+kXJr
         3gE2lvZtulngE07AoVtihrprk4DompR7VSAtZRlhuu8tCX4Ffx/29m6vX+SkAVPWIGez
         d/F0HkJmOciel9thwP9Jmm1G9bMj0FAneLpYu/3+QDPpGwt10rZK/WWoxeMR29qRe7Hc
         qwaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315xbpwehbj7KPCSVUlFQ1Ytdqfd8TVSRcr+Noa+lJg5T1jr1L7
	otZpgNKG0+t6sD0ZZ54Hmwk=
X-Google-Smtp-Source: ABdhPJzS9EQ+OGx+yFPQ2TqorlKZJHXq9bsqPpjV5DqhBYWKbiKi2At9DhaPwbUg9Sympd4fyzw8ZQ==
X-Received: by 2002:aca:3885:: with SMTP id f127mr1712686oia.77.1629788016228;
        Mon, 23 Aug 2021 23:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c4:: with SMTP id t4ls5049651otm.5.gmail; Mon, 23 Aug
 2021 23:53:35 -0700 (PDT)
X-Received: by 2002:a05:6830:2105:: with SMTP id i5mr21825508otc.360.1629788015850;
        Mon, 23 Aug 2021 23:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629788015; cv=none;
        d=google.com; s=arc-20160816;
        b=VMk7SLj17IWkxy5lhQGPVeKwMRWx3/Q+4k/oedLTzK8qqjhtCEFfS2i6WEuilyohUA
         jAerRSPvKkd2lS3joJM0GUQx0NPPMSxeWy5SVlbLd/7NJ9gWHoRt1VcvcbqnEcji/0bo
         2vmpkhqucc5gDmfNxJ7BLf+OI30yWvE/vfW0Xg+CO1WbIdgGb6pWEkkCMzona3h5KFnS
         ujzHxDiUtabvyE2IeJfUadCeooltFL3RD7Z7l7ZHQVFz7dDtRQZyFW6LO9hGaoGJ0BMq
         GCapjI1yf6ImBv8EtVD6JE446KxgYZwxit9zB0TidpGQizMpFj4valyn5BuhoMmAnmrT
         5RmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=3T3xV9+Fn3QgKJuFPwWQHaatRK2YyQd3qlmNL7G8LKg=;
        b=S+Eiplf41hEhM3xiSddqYPno0Cp9QI4J0K00hEc9cridRtaZheYodZA6sof+R1UNr8
         GICPjFIsPrDrIIEDbXg+KYixra4NZE0ke+acn2Pmhn3mom7GaFz23DYMdgHMKSJS8lcx
         Fxk4sjJodejJm2FodD+T+XCHx3fyuV/u8tkRORgn33tIt0FRF37EJLO/RtRARtpKwQCT
         UWqCHzjNS6aIgxCF12jd+MSNPuHoe4uSX5XkFD7Ro0jXjJXj7vzV7fGueIU6RUzBp0kD
         X9wZvtwDLcDf+HKN0YxsyjZetPnpE1TUtgt9Jdyu2m/MMnYyzB6u1JGRJu89FKLvfXPI
         0pug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b26si1091815oti.1.2021.08.23.23.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 23:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="214124812"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="214124812"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 23:53:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="526500559"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.172.62]) ([10.249.172.62])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 23:53:30 -0700
Subject: Re: [linux-next:master 8440/9522]
 drivers/cpufreq/qcom-cpufreq-hw.c:294:3: warning: Value stored to 'opp' is
 never read [clang-analyzer-deadcode.DeadStores]
To: Viresh Kumar <viresh.kumar@linaro.org>, kernel test robot <lkp@intel.com>
Cc: Thara Gopinath <thara.gopinath@linaro.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202108221933.WIgFqDfv-lkp@intel.com>
 <20210823065211.mzagmzexavwxu4vy@vireshk-i7>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <38f16bcf-40bc-c400-ef64-da8e43b1135f@intel.com>
Date: Tue, 24 Aug 2021 14:53:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210823065211.mzagmzexavwxu4vy@vireshk-i7>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
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



On 8/23/2021 2:52 PM, Viresh Kumar wrote:
> On 22-08-21, 19:41, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
>> commit: 86afc1df661a99dcd6b8d264cae171f1ead2b7b8 [8440/9522] cpufreq: qcom-cpufreq-hw: Add dcvs interrupt support
>> config: arm-randconfig-c002-20210822 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project a83d99c55ebb14532c414066a5aa3bdb65389965)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install arm cross compiling tool for clang build
>>          # apt-get install binutils-arm-linux-gnueabi
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=86afc1df661a99dcd6b8d264cae171f1ead2b7b8
>>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>          git fetch --no-tags linux-next master
>>          git checkout 86afc1df661a99dcd6b8d264cae171f1ead2b7b8
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
> 
> This doesn't look right, it says issues are with cpufreq-hw driver but
> points at hid-core ?

Hi Viresh,

The warning with the prefix ">>" is pointed to this commit,
others are only for reference.

Best Regards,
Rong Chen

>   
>> clang-analyzer warnings: (new ones prefixed by >>)

<snip>

>>>> drivers/cpufreq/qcom-cpufreq-hw.c:294:3: warning: Value stored to 'opp' is never read [clang-analyzer-deadcode.DeadStores]
>>                     opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>>                     ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     drivers/cpufreq/qcom-cpufreq-hw.c:294:3: note: Value stored to 'opp' is never read
>>                     opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>>                     ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     7 warnings generated.
>>     Suppressed 7 warnings (7 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     3 warnings generated.
>>     Suppressed 3 warnings (3 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     3 warnings generated.
>>     Suppressed 3 warnings (3 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     3 warnings generated.
>>     Suppressed 3 warnings (3 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     3 warnings generated.
>>     Suppressed 3 warnings (3 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     6 warnings generated.
>>     Suppressed 6 warnings (6 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     2 warnings generated.
>>     Suppressed 2 warnings (2 in non-user code).
>>     Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>>     7 warnings generated.
>>     drivers/dma/xgene-dma.c:445:36: warning: The result of the left shift is undefined due to shifting by '32', which is greater or equal to the width of type 'int' [clang-analyzer-core.UndefinedBinaryOperatorResult]
>>                     desc1->m2 |= cpu_to_le64((scf[i] << ((i + 1) * 8)));
>>                                                      ^
>>     include/linux/byteorder/generic.h:86:21: note: expanded from macro 'cpu_to_le64'
>>     #define cpu_to_le64 __cpu_to_le64
>>                         ^
>>     drivers/dma/xgene-dma.c:895:15: note: Assuming 'dchan' is non-null
>>             if (unlikely(!dchan || !len))
>>                          ^
>>     include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>>     # define unlikely(x)    __builtin_expect(!!(x), 0)
>>                                                 ^
>>     drivers/dma/xgene-dma.c:895:15: note: Left side of '||' is false
>>             if (unlikely(!dchan || !len))
>>                          ^
>>     drivers/dma/xgene-dma.c:895:25: note: Assuming 'len' is not equal to 0
>>             if (unlikely(!dchan || !len))
>>                                    ^
>>     include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>>     # define unlikely(x)    __builtin_expect(!!(x), 0)
>>                                                 ^
>>     drivers/dma/xgene-dma.c:895:2: note: Taking false branch
>>             if (unlikely(!dchan || !len))
>>             ^
>>     drivers/dma/xgene-dma.c:898:9: note: Left side of '&&' is false
>>             chan = to_dma_chan(dchan);
>>                    ^
>>     drivers/dma/xgene-dma.c:191:2: note: expanded from macro 'to_dma_chan'
>>             container_of(dchan, struct xgene_dma_chan, dma_chan)
>>             ^
>>     include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
>>             BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
>>                                                                        ^
>>     drivers/dma/xgene-dma.c:898:9: note: Taking false branch
>>             chan = to_dma_chan(dchan);
>>                    ^
>>     drivers/dma/xgene-dma.c:191:2: note: expanded from macro 'to_dma_chan'
>>             container_of(dchan, struct xgene_dma_chan, dma_chan)
>>             ^
>>     include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
>>             BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
>>             ^
>>     include/linux/build_bug.h:39:37: note: expanded from macro 'BUILD_BUG_ON_MSG'
>>     #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                         ^
>>     include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
>>             _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>             ^
>>     include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
>>             __compiletime_assert(condition, msg, prefix, suffix)
>>             ^
>>     include/linux/compiler_types.h:308:3: note: expanded from macro '__compiletime_assert'
>>                     if (!(condition))                                       \
>>
>> vim +/opp +294 drivers/cpufreq/qcom-cpufreq-hw.c
>>
>>     275	
>>     276	static void qcom_lmh_dcvs_notify(struct qcom_cpufreq_data *data)
>>     277	{
>>     278		unsigned long max_capacity, capacity, freq_hz, throttled_freq;
>>     279		struct cpufreq_policy *policy = data->policy;
>>     280		int cpu = cpumask_first(policy->cpus);
>>     281		struct device *dev = get_cpu_device(cpu);
>>     282		struct dev_pm_opp *opp;
>>     283		unsigned int freq;
>>     284	
>>     285		/*
>>     286		 * Get the h/w throttled frequency, normalize it using the
>>     287		 * registered opp table and use it to calculate thermal pressure.
>>     288		 */
>>     289		freq = qcom_lmh_get_throttle_freq(data);
>>     290		freq_hz = freq * HZ_PER_KHZ;
>>     291	
>>     292		opp = dev_pm_opp_find_freq_floor(dev, &freq_hz);
>>     293		if (IS_ERR(opp) && PTR_ERR(opp) == -ERANGE)
>>   > 294			opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>>     295	
>>     296		throttled_freq = freq_hz / HZ_PER_KHZ;
>>     297	
>>     298		/* Update thermal pressure */
>>     299	
>>     300		max_capacity = arch_scale_cpu_capacity(cpu);
>>     301		capacity = mult_frac(max_capacity, throttled_freq, policy->cpuinfo.max_freq);
>>     302	
>>     303		/* Don't pass boost capacity to scheduler */
>>     304		if (capacity > max_capacity)
>>     305			capacity = max_capacity;
>>     306	
>>     307		arch_set_thermal_pressure(policy->cpus, max_capacity - capacity);
>>     308	
>>     309		/*
>>     310		 * In the unlikely case policy is unregistered do not enable
>>     311		 * polling or h/w interrupt
>>     312		 */
>>     313		mutex_lock(&data->throttle_lock);
>>     314		if (data->cancel_throttle)
>>     315			goto out;
>>     316	
>>     317		/*
>>     318		 * If h/w throttled frequency is higher than what cpufreq has requested
>>     319		 * for, then stop polling and switch back to interrupt mechanism.
>>     320		 */
>>     321		if (throttled_freq >= qcom_cpufreq_hw_get(cpu))
>>     322			enable_irq(data->throttle_irq);
>>     323		else
>>     324			mod_delayed_work(system_highpri_wq, &data->throttle_work,
>>     325					 msecs_to_jiffies(10));
>>     326	
>>     327	out:
>>     328		mutex_unlock(&data->throttle_lock);
>>     329	}
>>     330	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/38f16bcf-40bc-c400-ef64-da8e43b1135f%40intel.com.
