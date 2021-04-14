Return-Path: <clang-built-linux+bncBD62HAUXZQPRBX4B3OBQMGQEVJKHFIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D20935F15A
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 12:16:00 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id c21-20020a0568300015b029021f290ef945sf974732otp.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 03:16:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618395359; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9iAhBo98NO9yRRPLBOCPi6ppCGUag5E2XHAaWfzHzY/srV+vpFJb1iY2oZyePcMdR
         UmdfUEGZMokch/bn/mVquUeDoZ7a0sLaJtoePoK7qVJL0g6FF9Uxb9+dHRXsX1sGbSlo
         GkV3sjGdSboOjt1Anh5mKhcJZIgg8ofRmchPnfRr+tR4qKpYT8p7x65dglYnP2PTpv38
         x8vj6lWm6pvWp/+itzD1cju8NIb2Ca3eIOqsu6E4dQjnEZk7wznRrHdePaLrckE0hMD0
         sB/C3p/3quobwZwhurmk/gDcTSwXvg22SbysLOzciAMOwf5IX+qjna07d2FY5gnvsc5i
         lrxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=USs2g1gSnulNbSWbt1+pk26Uo80/DGSVrH4w7yCoOV4=;
        b=jz4nw83XxAJHf2MrtYBnx+Bl4f9Lf550LL0yVWQH1SybRbGbRnAVLx9rU6I1u5LDRY
         ljhucgN0R8mZHVzmoj7DQfQu3RTvhUvYceETZw3c6qVOgxULrzMSEerMgWw0injrfM9Q
         BpVoTXviYbpei53kAIx9WIYkrFgl/iytqsijiV4C7r61rc2eB/N0Gr/B3twOeASKtaEz
         FZ0oMocKXIgXX7bAavyW+xV+1DMny0eNy+iSSo3KpkkxsTaB1WWI+CeKnon3/DP0xbXo
         nY8+9n+zS/2piwn+gccqtnUzWpdomy2ANTKzOZSNN6hvtlXZtBo7jZCeYZ2hKlzyVRCB
         QAog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=alexandru.elisei@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USs2g1gSnulNbSWbt1+pk26Uo80/DGSVrH4w7yCoOV4=;
        b=sW1I+o21TkYLMrcHp44Qazx/P2fQ/n0IQxFxcDV/ZBMxWCdXH3LKK8Gir1Aj7LFeQF
         7oAqoX0ZrlkFcrfahFDgiGMQh26sO+itO0Vxjyu0LCopeEwiF0eaNHDzOqnL80XSNM+b
         n+Un2Vn7NxYgHEMkaKnmbOLafvralHDqeuQlxC7PBiS5KUQShYSTXRAFFU5fBxmEHX6c
         H1xa+s87ByJFTGEhWnfiPsyAbpmLhNJw0zyp0e+aWGWpG0LbR+w+jnz3yEBSVDhrWOtO
         sdNHwIoV0D/bGP4uuvkVyj/qzngIED8wB/XL5MzJOSlvkge59ByPp3kvGcuhsK/Es1kV
         iX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=USs2g1gSnulNbSWbt1+pk26Uo80/DGSVrH4w7yCoOV4=;
        b=pUsCS1EkzYFdpG1NLOcjjW1GfqIw1iEYoLCG9/1wgpLBSI1vVH/fMx3jjwt3nJbuoZ
         I4FsNRZv4j9Z6j99GfugFlV9fubQ9iRXDaSMo0tWDsBdfbHAV2klInmNB/+OVqyV/NK/
         uahS+HWQxfzDDxMEsWbOliMkrFP3Xe11lSsR3BYVxYVzhNd2i8mcMrSvrStzO3DAcjH2
         T5l9eOSEftGrIrjbGBFJ2656kd6YN8tynuf2qB1bcEt86SUJ8EkrwfRMws1etenDkg9/
         ysiLVpKUxogzQJNpJZvOzy0GFZV0hxhTraFyLqxdI7nrn3Exizx5ml35AF9INqh6/Z7Y
         xZww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CFsrO/X95B14ldfqhnLluY1VVRhvoDotKM0Erg/DyqzNTsxq8
	L0j6OCZhCRohhoE1L3qad4E=
X-Google-Smtp-Source: ABdhPJzWCG5VTso4fILvzbJo1x2RtvjU+r7wZHdxr9eypH8i5FT1ckzJFTiZ4+ZWeb2qH4OKZcU5tg==
X-Received: by 2002:aca:a9d3:: with SMTP id s202mr1830772oie.2.1618395359359;
        Wed, 14 Apr 2021 03:15:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls454261ots.0.gmail; Wed, 14
 Apr 2021 03:15:59 -0700 (PDT)
X-Received: by 2002:a05:6830:2241:: with SMTP id t1mr11046798otd.126.1618395358991;
        Wed, 14 Apr 2021 03:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618395358; cv=none;
        d=google.com; s=arc-20160816;
        b=QuuESRgZ06SYBtRDF/RMKDzG7IhB9342DAPFcTvrZ/s8n3527/mrCPTGLVV5bl7dR8
         D9QEKBXOj4Zr62BoXDB0setcyr1YyX8F/vjeHLjtoP330t0NO6F7EegNznqgMyRv5AyL
         hQ5Dt/YnYDL99Md+Plixsc79iqchYBtOL/8+t4aPRs3gdOdtfjTJFptYt1R0V5ty/T7+
         6l323q/6pnCH+ovd6mUHbLTgmAA9pqDKyQQGkNaJLdJcKFJbgtupTyYTdIKcL6EGU8KY
         OAR0bL5F8j+EyEEBGrv/2LbpWMWwfC9ZmSDq1f3g95vLtVHEzvhOY4l24Rp9O6IvYyFq
         XJWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=u4q84vLftTREFcVRS5SEwD57BRCh25Hg4AhvD/lUS0c=;
        b=vqIJMD5DRjS/2Dy/KOgY9vU+87naIj3JkFzbRQmCierDCfwwtZvA7M0DSEpkTKtQ3L
         Jfd5VpkmE84PzTAK1IFpsaw8hpqOoE72Vx+NZHSlXXAJfUgrz3AYkN4FE7018e9AW8T5
         OI6LYL+wlEeIWOI5IHL0A6nOi9hHtSUkxPP4tUThQ0oQGFb/knqeboMwd0hq6CaChwMe
         H5oMpcC+8J+olLFHvpkTOSoiV5iB0vu7Q0jk6qkuoKU9ACHHqaf4Xq3P+CUm4rA1FjhO
         +PvXFtqNnKelHY8e1Qx8axpm5KoXZPR4ENEn8kyOwYQNfjzzcqrhjKg4ERDUV3TPQs2F
         VgTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=alexandru.elisei@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r27si154650otc.0.2021.04.14.03.15.58
        for <clang-built-linux@googlegroups.com>;
        Wed, 14 Apr 2021 03:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E88611B3;
	Wed, 14 Apr 2021 03:15:58 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91D153F73B;
	Wed, 14 Apr 2021 03:15:57 -0700 (PDT)
Subject: Re: arch/arm64/kvm/perf.c:58:36: error: implicit declaration of
 function 'perf_num_counters'
To: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>
Cc: Marc Zyngier <maz@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>
References: <202103262006.nHFq086E-lkp@intel.com>
 <20210413200057.ankb4e26ytgal7ev@archlinux-ax161>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <9bdf177a-8fe2-effc-be88-3b65fe175292@arm.com>
Date: Wed, 14 Apr 2021 11:16:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210413200057.ankb4e26ytgal7ev@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: alexandru.elisei@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandru.elisei@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=alexandru.elisei@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi,

On 4/13/21 9:00 PM, Nathan Chancellor wrote:
> On Fri, Mar 26, 2021 at 08:27:13PM +0800, kernel test robot wrote:
>> Hi Marc,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   db24726bfefa68c606947a86132591568a06bfb4
>> commit: 6b5b368fccd7109b052e45af8ba1464c8d140a49 KVM: arm64: Turn kvm_arm_support_pmu_v3() into a static key
>> date:   3 weeks ago
>> config: arm64-randconfig-r005-20210326 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm64 cross compiling tool for clang build
>>         # apt-get install binutils-aarch64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6b5b368fccd7109b052e45af8ba1464c8d140a49
>>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>         git fetch --no-tags linus master
>>         git checkout 6b5b368fccd7109b052e45af8ba1464c8d140a49
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function 'perf_num_counters' [-Werror,-Wimplicit-function-declaration]
>>            if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>>                                              ^
>>    1 error generated.
>>
>>
>> vim +/perf_num_counters +58 arch/arm64/kvm/perf.c
>>
>>     50	
>>     51	int kvm_perf_init(void)
>>     52	{
>>     53		/*
>>     54		 * Check if HW_PERF_EVENTS are supported by checking the number of
>>     55		 * hardware performance counters. This could ensure the presence of
>>     56		 * a physical PMU and CONFIG_PERF_EVENT is selected.
>>     57		 */
>>   > 58		if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>>     59			static_branch_enable(&kvm_arm_pmu_available);
>>     60	
>>     61		return perf_register_guest_info_callbacks(&kvm_guest_cbs);
>>     62	}
>>     63	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> I just ran into this again. It is not a clang specific issue, it
> reproduces quite easily with arm64 defconfig minus CONFIG_PERF_EVENTS
> and gcc 10.3.0:
>
> arch/arm64/kvm/perf.c: In function 'kvm_perf_init':
> arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function
> 'perf_num_counters'; did you mean 'dec_mm_counter'?
> [-Werror=implicit-function-declaration]
>    58 |  if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>       |                                    ^~~~~~~~~~~~~~~~~
>       |                                    dec_mm_counter
> cc1: some warnings being treated as errors

I was also able to reproduce it with gcc 10.2.0. I think the problem is that the
perf_num_counters() declaration is guarded by CONFIG_PERF_EVENTS (in
include/linux/perf_event.h), the implementation is in drivers/perf/arm_pmu.c,
which depends on CONFIG_ARM_PMU, but CONFIG_ARM_PMU=y doesn't select
CONFIG_PERF_EVENTS. So we end up in a situation where we have the implementation
of perf_num_counters(), but no prototype (CONFIG_ARM_PMU=y, CONFIG_PERF_EVENTS is
not set).

Thanks,

Alex

>
> I am not sure what the cleanest solution would be for providing a static
> inline version of perf_num_counters() would be, as only arm64 actually
> uses it (sh and s390 define it but it does not appear to be used) but it
> is only available through CONFIG_ARM_PMU instead of just
> CONFIG_PERF_EVENTS like the other two architectures mentioned above.
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9bdf177a-8fe2-effc-be88-3b65fe175292%40arm.com.
