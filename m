Return-Path: <clang-built-linux+bncBCPILY4NUAFBBRVI2GBQMGQE2PPC72A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7230735C856
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 16:08:07 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id v19sf816403vso.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 07:08:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618236486; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cdp3uUkk9rRUqTyzb8LkcYQ/ZKuIDWPifsuEqB5HK37tvUkrHmELgyuo/a2ralzZfP
         BJfHuueanrSaUQ+gswZGhwtP4PW19yN30ey++K3FrweiGE0BlFE/n658anRP91g0Vpia
         R8pVU+DOvIXKa8iTzrFhIRw+6EyJYWSwLwpGitRJVRLdBVbEJlja4pPtp+66Yg3bnQg4
         TLGYZeOe2kYi1CVROR+nNLjosIH77z5baYS4wGd8uGsxmzFkehTPjWjQ0xx2w/Cyz6lA
         M1R+EOXCrYK21Z6rXD7cmbuy+wNPZpUBrRrGExSHS8LalkHkeid/cK2GD2XWhsCSxuJS
         ZO4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=PLSd/LYecsXvWqvNyl6+fqsbsDQVEh7TgjH1DnC/rEY=;
        b=bKc4KpxNScmsjkH5rhRO2pmPjL96gSxnr3o2/KIR5cGKGUv6SASmV3+zlYB2tmmTh1
         agikkz/7vMPGjdA65tqlVK7AgLnLBPAYBcWHGjwlZkEB5QpCPKHl9X8DjQVst4rabARq
         tIo/mSjLhrcyzVW01Zn5culvHQYKzwE5V4Lz7do2htTuqpliiATY8JqFaN0svy/x8CCm
         IhZ/VFwVzSih9UlPU2raZ366OwEq/X+MjYVHM7IZXTr0XCVV/VrchmJCJ8QKDdat20dz
         oDRahaZiZqCbHZjhPj7wp6TaKv/Tnm38/ZnVsuSm6wsYU4b48GGF8dItLEqCulvIqg/K
         7g0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dqc28l+T;
       spf=pass (google.com: domain of llong@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=llong@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PLSd/LYecsXvWqvNyl6+fqsbsDQVEh7TgjH1DnC/rEY=;
        b=VWhEOcZc/B4iFdhffg6lEDMWLR4ajjoIw84O44NhnmBUQtZ3I8tBt6apJTGP6fYjHO
         e1UYgu0EpVgULTumAgZaTU9Lc4YVEnmCcjqitrtdB58NlAB/DwH+HVEyg0gcp18agsOu
         +BIHwK+moc6nLq3p5CrC5SFg6q8ibUKd6YAEZW6X6ghoY5yEr/IYcqLv605YBwumf9F6
         qnP1uFuANT7hdx6OruxNI+XktdsfqtAy6OQH9uUhWTJW3Z6CnpE0j/Khy77zKKLy8ExU
         LHdcPrSqkqWtp8Dmq6k/lOZeAJ0L+RB0EkttvspmCUNSFie3T24bFhw6OibA2aX0qh6s
         npWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PLSd/LYecsXvWqvNyl6+fqsbsDQVEh7TgjH1DnC/rEY=;
        b=oYDL4Swy3xnDdeNm5xN5iz+ctFtGv6v4jgfYDaNpEseWi5XAj9/a9FYNannSsarLt0
         EOeBpqu1iEz6wTKJzwpOOxZQ5xQ5wz8VZ8YUG+yemKRLflWtyQz1qmwVRnqFPCJhhmgs
         rie3/OHlXZXYH2ZGB/9qv6YayqPWF7fWUA3XI02LKOe8a0bGJtq6+VdxiaYPYwHscC6Q
         TJtzGWIrlPYmXEADwPFYe3jpJDqLV3EcoPbmQvPbb4Gl2ftkCVpNVTvlOja8kbvs9uCB
         tbE14YOtqISn8PkWklu3lUtcRRPnppI536v5HPUaLrJnlxx3+utU/uxjh/BmHqUR15JV
         9lhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U5cy4HplJECsks5z2fDuWXXyGhbPFWOs7FvaPJmmVHIg3qpLQ
	jQHegus4MWJlcs28AyqjyYM=
X-Google-Smtp-Source: ABdhPJyxh6r0ojlu/4uPWPsrGijYjnkCQQ+GGfyS3qjNrIDep511mu3rDRswgHZEv+DgiePEL6Iakg==
X-Received: by 2002:ab0:13d2:: with SMTP id n18mr2016247uae.87.1618236486517;
        Mon, 12 Apr 2021 07:08:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:96c8:: with SMTP id y191ls724468vkd.6.gmail; Mon, 12 Apr
 2021 07:08:06 -0700 (PDT)
X-Received: by 2002:a05:6122:2ee:: with SMTP id b14mr5951217vko.18.1618236485987;
        Mon, 12 Apr 2021 07:08:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618236485; cv=none;
        d=google.com; s=arc-20160816;
        b=UugmNgBgaiBZjEsqGMZe8r643h66R0vD0LU5CQlxajYJ1YXDHS45aD2dE4F62P4+NX
         tDJxJ8qsvojSPZnpGUA3QDIL15u08KoxzZueNGKcJoYi7Cuboavzr9sscb2oclErRbWe
         Qd+NBP7yG4QNM/Qa6Fqg0vYVGbVEJ7VDid/0z16oo4WmbwuUK47CrYb3/UsO6+eAoZQ/
         zp0o+gLhRtzeXGweMqbLL8TndhmixoaArC5wfS1f71ufd/4Y69KKWk7cAsmWKofObthE
         eeJfmx6vBarvx8djL23ygemQgm0lFxqIg28kTtSRNBMlhJD+Xd2zwF5z+J+PxmL1/8ft
         CqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature;
        bh=HTcpSq1zGOhEeBa9hsl3KO1A3Uftt0XI2Pr0NmWLNbI=;
        b=H7dott0M6rWluRN5qMjOnpF/Kro2YzHj0ofSV4vdpH8HGD8o0PzcPUcmncMnVFUEgj
         Pas2YijKYBQVPAw8o+iqXNEnXmfRBL2GfyTypsVKOeMWjz7JbS55WBmcpYLTboWPgTbb
         +3kSRODtbERMTl7pDkUTnG4NQJKhZEguJ7TWiFYtIi/lcXRhJZRiV+CSNyaJUFBqBUAe
         WtE3pJCeuNpWI4kHKY/MSej8dSYsiPsdIdpJZ9XCC3mwLhphbxCSXcpwJz/r1LGHPpKd
         3Zh92MInFCCxe/zcvzx0gKDkp8oPCr4w0KWXT82v3P0CawoHpjrubt0zQYfqXcuU28XZ
         a9YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dqc28l+T;
       spf=pass (google.com: domain of llong@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=llong@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u13si747250vkl.5.2021.04.12.07.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of llong@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-77-zaRS02XGNrmwD8F69J5AnQ-1; Mon, 12 Apr 2021 10:07:59 -0400
X-MC-Unique: zaRS02XGNrmwD8F69J5AnQ-1
Received: by mail-qk1-f198.google.com with SMTP id 142so3797126qkj.1
        for <clang-built-linux@googlegroups.com>; Mon, 12 Apr 2021 07:07:59 -0700 (PDT)
X-Received: by 2002:a05:622a:148f:: with SMTP id t15mr25286429qtx.106.1618236479207;
        Mon, 12 Apr 2021 07:07:59 -0700 (PDT)
X-Received: by 2002:a05:622a:148f:: with SMTP id t15mr25286405qtx.106.1618236478996;
        Mon, 12 Apr 2021 07:07:58 -0700 (PDT)
Received: from llong.remote.csb ([2601:191:8500:76c0::cdbc])
        by smtp.gmail.com with ESMTPSA id i5sm1847951qka.126.2021.04.12.07.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:07:58 -0700 (PDT)
From: Waiman Long <llong@redhat.com>
Subject: Re: [PATCH 5/5] mm/memcg: Optimize user context object stock access
To: kernel test robot <lkp@intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Michal Hocko <mhocko@kernel.org>, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Tejun Heo <tj@kernel.org>,
 Christoph Lameter <cl@linux-foundation.org>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>
References: <20210409231842.8840-6-longman@redhat.com>
 <202104101336.WgwS18rl-lkp@intel.com>
Message-ID: <6eb573b6-313e-6a3b-a37b-1df2ce55c58d@redhat.com>
Date: Mon, 12 Apr 2021 10:07:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <202104101336.WgwS18rl-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: llong@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dqc28l+T;
       spf=pass (google.com: domain of llong@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=llong@redhat.com;
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

On 4/10/21 2:07 AM, kernel test robot wrote:
> Hi Waiman,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on dennis-percpu/for-next]
> [also build test WARNING on linus/master v5.12-rc6 next-20210409]
> [cannot apply to hnaz-linux-mm/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Waiman-Long/mm-memcg-Reduce-kmemcache-memory-accounting-overhead/20210410-071958
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/dennis/percpu.git for-next
> config: arm64-randconfig-r031-20210409 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dd453a1389b6a7e6d9214b449d3c54981b1a89b6)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/1f4e22fce44599095a55535301ca83adc5d3a4fe
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Waiman-Long/mm-memcg-Reduce-kmemcache-memory-accounting-overhead/20210410-071958
>          git checkout 1f4e22fce44599095a55535301ca83adc5d3a4fe
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> mm/memcontrol.c:3234:10: warning: variable 'stock' is uninitialized when used here [-Wuninitialized]
>             stock = get_obj_stock(flags);
>                     ^~~~~~~~~~~~~~~~~~~~
>     mm/memcontrol.c:2284:16: note: expanded from macro 'get_obj_stock'
>                     obj_stock = &stock->task_obj;   \
>                                  ^~~~~
>     mm/memcontrol.c:3234:10: note: variable 'stock' is declared here
>     mm/memcontrol.c:2278:2: note: expanded from macro 'get_obj_stock'
>             struct memcg_stock_pcp *stock;          \
>             ^
>     mm/memcontrol.c:3329:2: warning: variable 'stock' is uninitialized when used here [-Wuninitialized]
>             get_obj_stock(flags);
>             ^~~~~~~~~~~~~~~~~~~~
>     mm/memcontrol.c:2284:16: note: expanded from macro 'get_obj_stock'
>                     obj_stock = &stock->task_obj;   \
>                                  ^~~~~
>     mm/memcontrol.c:3329:2: note: variable 'stock' is declared here
>     mm/memcontrol.c:2278:2: note: expanded from macro 'get_obj_stock'
>             struct memcg_stock_pcp *stock;          \
>             ^
>     mm/memcontrol.c:3371:2: warning: variable 'stock' is uninitialized when used here [-Wuninitialized]
>             get_obj_stock(flags);
>             ^~~~~~~~~~~~~~~~~~~~
>     mm/memcontrol.c:2284:16: note: expanded from macro 'get_obj_stock'
>                     obj_stock = &stock->task_obj;   \
>                                  ^~~~~
>     mm/memcontrol.c:3371:2: note: variable 'stock' is declared here
>     mm/memcontrol.c:2278:2: note: expanded from macro 'get_obj_stock'
>             struct memcg_stock_pcp *stock;          \
>             ^
>     mm/memcontrol.c:3426:2: warning: variable 'stock' is uninitialized when used here [-Wuninitialized]
>             get_obj_stock(flags);
>             ^~~~~~~~~~~~~~~~~~~~
>     mm/memcontrol.c:2284:16: note: expanded from macro 'get_obj_stock'
>                     obj_stock = &stock->task_obj;   \
>                                  ^~~~~
>     mm/memcontrol.c:3426:2: note: variable 'stock' is declared here
>     mm/memcontrol.c:2278:2: note: expanded from macro 'get_obj_stock'
>             struct memcg_stock_pcp *stock;          \
>             ^
>     4 warnings generated.
>
>
> vim +/stock +3234 mm/memcontrol.c
>
>    3227	
>    3228	static bool consume_obj_stock(struct obj_cgroup *objcg, unsigned int nr_bytes)
>    3229	{
>    3230		struct obj_stock *stock;
>    3231		unsigned long flags;
>    3232		bool ret = false;
>    3233	
>> 3234		stock = get_obj_stock(flags);
>    3235	
>    3236		stock = current_obj_stock();
>    3237		if (objcg == stock->cached_objcg && stock->nr_bytes >= nr_bytes) {
>    3238			stock->nr_bytes -= nr_bytes;
>    3239			ret = true;
>    3240		}
>    3241	
>    3242		put_obj_stock(flags);
>    3243	
>    3244		return ret;
>    3245	}
>    3246	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

My bad, I somehow missed it. I will fix that in the version.

Thanks,
Longman

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6eb573b6-313e-6a3b-a37b-1df2ce55c58d%40redhat.com.
