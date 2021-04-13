Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB77Q26BQMGQEXMBP6SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FE135E760
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 22:01:05 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id h69sf12787898ybg.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 13:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618344064; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKgxT24STZ8Ra/Ruqx720c17HmTEGfQGB7fjEHtBg4Z0FE9xR8laTQGAfmXcz2+bcC
         deawBgJebq0/pDz0r6ZcAEmgNqY2M2qtvB9rmXT9GY8gtQ/BEI2SWslSzqP4Yy1OuMpo
         aX0nbEDiXn21jd3FdeR1CJpfIXdhV+jhzJBEC7NZkGHXGQmKz1RBffIAdykvfLvrJc5i
         AAuqublO8MZ4oKuylw3nA7wle5MWdeE0G6IEX0658fjoBQnVEOyYfxA/s0vgjCsM2sFW
         HRZFwni+FaG1pCDrwJzD3tPsVJ/0TPuC+M52v3/n1OhXZAUkIs80JMNHXVc6g1IM75sC
         1xSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ydRX2oRNiTALYoZlh2+0sf0d+Jp9zI5BTi3D4pmkmew=;
        b=l+Bqz05bxn5DbOVXAr37gTH/sDgudSOSRFbxf/UlmDGgNqd8dKZ3mikYNFt3eTnoZ2
         FptxqlStR3vlWzYOOR8zPWnElyBikORRrDrRiZcZp9rQMeQ9tna436jnR3a0GYXGec5c
         vIRxU03OtJQw5gSLq3b/LhiPJ6+NKo+a447G3NsnLz4Bf5gcYHXodnUr4AKsxAylcEnt
         fdxmJrX7RcEU+qqToy8xZazX9PME5IpLamytwnpKLFW+TaQP7rZzd24REHqYVadfXRuu
         iMJO7iM5nf8xcDcIaRqgK5k153zYbyZxoM8GAWhqvwpdRRLhvsSLp8IdEZaQvfXHPrK6
         i4tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cd5h+DPQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ydRX2oRNiTALYoZlh2+0sf0d+Jp9zI5BTi3D4pmkmew=;
        b=fkMb8+/LPhMHwWAL/aETCTzPk0XG2DM3O+CuHvTUugcZCCa1Xx8nsbjhjQSHTeGFOW
         +NXXEkMHIt4QWHR+uHoXRm05G0PmPnOoA7fDMvJ3v3wnpX1sQFgLavuAyxG15fCjdRVz
         kob4S2vqglHAo9ePu3KPtHxZvmPAYBvC87/YwebndLdZNow4HzJ9pSiQDdbfgOLM7XVa
         6+U66goed/PPa/w3/AykzTmwboYzeP8wh8hD/n0wtC5Vw4dyIqY7I4YSVdNzAFQSJUXB
         ohr5iyLkT9KVk1x9o+5hsQscjqO90AulsPf4cv9jwaGtkA6TC0cBYozcDBXVpRvMEa3j
         rmTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ydRX2oRNiTALYoZlh2+0sf0d+Jp9zI5BTi3D4pmkmew=;
        b=VlCqL2+tCSLl6tV6qjeinXArOKEDtpikYBPpjAQC2340h/tyX2ARNa64I0/77W2lG8
         m5lGjkBDSNwK7dD7lQw2HGB6RZLG/2hTPkR4T4ZpxD/NoofcxZY+2XydgwVen26ZOHz6
         iEVE2lYcJpVzuxXonc0F5CDMU/S3Zne9P0gNlWYTzXiNV/ee0pT9osgkDWpkCOCKgIXy
         oNZKMetdya688W/o44iZ/u67JgLBq8KRczrJwU5/hassyGDEiJmC06Mc6QCPFdYZ6K25
         wNhJKmOfnz6wb0I5ObN1mvX5E/dM/jR58YEDuApPQtlI9E6oSLsW2iDp01t42YpW67XH
         urNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307F/ZtzNBdonoUcRl8k8947MBL2pdpCDH4ITXL1ANBapA3yvyb
	mBHD+p3fgGiXenCgd+wTrSI=
X-Google-Smtp-Source: ABdhPJwT8+L54xY+7P3/piyhFTRRJbjljnGlxyd+j12atAV5XM6ljidwMBjwTi40X5UfOf2lYVViNg==
X-Received: by 2002:a25:dca:: with SMTP id 193mr16516425ybn.434.1618344064091;
        Tue, 13 Apr 2021 13:01:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls9594895ybh.1.gmail; Tue, 13 Apr
 2021 13:01:03 -0700 (PDT)
X-Received: by 2002:a25:2351:: with SMTP id j78mr18583398ybj.312.1618344063651;
        Tue, 13 Apr 2021 13:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618344063; cv=none;
        d=google.com; s=arc-20160816;
        b=pSpgQYk99P/MpZbJ+D98Cw5Waa0GmWThIsICni6UGc9BmbefzLoTgBKizzomCtePj9
         u6+3z0aQBy+2KXW6hrPxyZLvwPaxzb/zlfOeW4BNYcsTwxplDyKZL7T+e8PuI80HFUod
         9xfy1XPzk/jaSTMaNRrV7d2gFBJI9VgVdvaXgxTjyImGJJ8ZtEQbZsH0hTzCkeeQFns1
         fwmgiXAUY0VZ1XXD/B8Nie82JIQc1WEgCdoJq3sHn8fd+Y4JOpzZV64W4w1g9X5aFa9+
         IJzv25GAcLhpVRfGriu5GazhezWgGV9qMdEZGgcE93EGr1nojnEY24zlvAhRtQmydo5q
         Dr8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Eo+GvclQvtnw+CaDv2h/ijg8Q1stG2VDwlnpVI5jYfs=;
        b=jzQyPRpemxaVlgwdRj5RAfPmDHH4NHMwNr9v8+J69yeGCRF3dCtPkXSv5iw/abtefl
         UreLeEjIg0C4yGQyWcKNPN1XD5NGnkMoTKsv+MoHva3Vfqot6FNTqLOieeuW+Zp/kCkM
         BFRWGsm+x4eYAKpjLccK/U+7bUP0H0LYF9cdyPbKoeAzkzTXR5xsTaang4lqutDf4VR7
         9pTjN+s6Zt7U6FdqB7Ii+dRK38MhW9gurTARGyAlry0DYSSNZqpBsYMXXv1lfepdOyC9
         dV+9lVH5W9geUoYxjmULkG5m5MXiPcHc/hex6s+A8cLwkHCMsCxUV02gCWl+tiW/cd9F
         ATYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cd5h+DPQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i1si1214528ybe.2.2021.04.13.13.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 13:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3EB35613C1;
	Tue, 13 Apr 2021 20:01:01 +0000 (UTC)
Date: Tue, 13 Apr 2021 13:00:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Marc Zyngier <maz@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Paolo Bonzini <pbonzini@redhat.com>,
	Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: arch/arm64/kvm/perf.c:58:36: error: implicit declaration of
 function 'perf_num_counters'
Message-ID: <20210413200057.ankb4e26ytgal7ev@archlinux-ax161>
References: <202103262006.nHFq086E-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103262006.nHFq086E-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cd5h+DPQ;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 26, 2021 at 08:27:13PM +0800, kernel test robot wrote:
> Hi Marc,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   db24726bfefa68c606947a86132591568a06bfb4
> commit: 6b5b368fccd7109b052e45af8ba1464c8d140a49 KVM: arm64: Turn kvm_arm_support_pmu_v3() into a static key
> date:   3 weeks ago
> config: arm64-randconfig-r005-20210326 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6b5b368fccd7109b052e45af8ba1464c8d140a49
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 6b5b368fccd7109b052e45af8ba1464c8d140a49
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function 'perf_num_counters' [-Werror,-Wimplicit-function-declaration]
>            if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>                                              ^
>    1 error generated.
> 
> 
> vim +/perf_num_counters +58 arch/arm64/kvm/perf.c
> 
>     50	
>     51	int kvm_perf_init(void)
>     52	{
>     53		/*
>     54		 * Check if HW_PERF_EVENTS are supported by checking the number of
>     55		 * hardware performance counters. This could ensure the presence of
>     56		 * a physical PMU and CONFIG_PERF_EVENT is selected.
>     57		 */
>   > 58		if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>     59			static_branch_enable(&kvm_arm_pmu_available);
>     60	
>     61		return perf_register_guest_info_callbacks(&kvm_guest_cbs);
>     62	}
>     63	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

I just ran into this again. It is not a clang specific issue, it
reproduces quite easily with arm64 defconfig minus CONFIG_PERF_EVENTS
and gcc 10.3.0:

arch/arm64/kvm/perf.c: In function 'kvm_perf_init':
arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function
'perf_num_counters'; did you mean 'dec_mm_counter'?
[-Werror=implicit-function-declaration]
   58 |  if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
      |                                    ^~~~~~~~~~~~~~~~~
      |                                    dec_mm_counter
cc1: some warnings being treated as errors

I am not sure what the cleanest solution would be for providing a static
inline version of perf_num_counters() would be, as only arm64 actually
uses it (sh and s390 define it but it does not appear to be used) but it
is only available through CONFIG_ARM_PMU instead of just
CONFIG_PERF_EVENTS like the other two architectures mentioned above.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210413200057.ankb4e26ytgal7ev%40archlinux-ax161.
