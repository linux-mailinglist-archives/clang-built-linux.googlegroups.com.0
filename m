Return-Path: <clang-built-linux+bncBDIK5VOGT4GRBVWS4SDAMGQEQ57KBDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1603B56E0
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 03:43:51 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id i33-20020ab042240000b029020adb6e9ffcsf3140126uai.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 18:43:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624844631; cv=pass;
        d=google.com; s=arc-20160816;
        b=0R+M2OfZjilYDCk0dz+8RAqvupF/8acYi1oDAoCqiWfeWZUQKYGyTG0xO7PRdLm4V5
         GMgZRgx6SQCRwplfQsbSO0f2sIUNIu5dmbAVTHpmoRyhifEM1fmOTiGeFaT97Cg7oAy6
         /LGjWE5J/F3MmwdGO1LVy+RcRQwHW943QpGDoP4p6F/vMA/bvq0mi16Ij8gzePN7bUCU
         I/123y9Mj83PgIYV2MLfC+BKTDYQHZgQUlymNhMipGj1zRpFS0iJhPanaZCtz3dxX649
         xr/9FQuhWPfgXGAQv7IVsOhwlHqOs0+O1LPG3Fb7Z5kgUj0xCknv7TcegcOX7TL1LXK3
         xhLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bw7ZWj2BVkh8QGp8OXW10QDUs4nGjQJ27kWrRDaodgg=;
        b=JeJBp3ppnv5RTiT6ewlzwI3URbK2cwVT53j7o+k1wIM1CHkvWKCO0abSSXl8Xl0nBi
         b4MuqjH5RRmHl5jZE/al+fbN5N3wcuuq+IAEQ7kIF5z3/jMME/4dgJ4C8FITFrQfKJUY
         V9yKUsbuunIody67mmAQ9kgJ3UgU+lajsLI1KE75yj2djXWFjgaB2YYsLmcADweyvlPB
         pOCHiPMV3tgn1iY2WD8hyhmO1K+HQxnuuQ9STVV6jodyOfvcLdeEmPGDv5UGtUgUXESg
         LoyabjuGdx5WzaqXKWcCn02qfE+EWIq48CbA2CFU2XtSuTPH/UW6IzyMux7tVqAu9142
         VhAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bw7ZWj2BVkh8QGp8OXW10QDUs4nGjQJ27kWrRDaodgg=;
        b=dMxeviP3ejjpB759gDr/Snx6TX6lsT031ZH8OZLecBJV99z2srIv9Aegp/HWF5zQMk
         FzSJAg60YAbxmtiFzhTWOoQeYL3Wg/esxbUOHfBXJsxBTdoUGSRvrlnxfq+Vq4PoQqce
         OjbpTf/30cPGwl88fD2Vhhn4ihmARjQiP6NhMxd0nV8qBjNH+55czlm/wAYodc5AYJKy
         BXBenKvtB96Nk22xXHbq7zQa+uvqVKS1S8O0X4YY+nfKDsBuHtcAItDEy6MM5MRMDFsw
         TjoA5KVGjxmFElRAq66T+hOZ9GuWY0FpDlfOqXjVsbigGp4IMOyfrMjOhwhQZu4eQsQj
         oD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bw7ZWj2BVkh8QGp8OXW10QDUs4nGjQJ27kWrRDaodgg=;
        b=D/qEHJHy1ZhgJWuD2TaocAdPBXV3QtraTg5GOTf49tIvOl9HXsza3Rc9MNOIZQcD6P
         lvjWVYUKQaqSwqJF99fgjmHDhpCRT/E+5ZD0a1cFBPA7c/y5Wr1i94m1xlu6INXlOTV5
         42kLJ9yaxLZpEgDIr5DyqdgZ21G85Nv9h3zu69BN/ko5/jskh1veeQ38bq4bLsV50CpG
         iZHuphPB07alayIdsEQWANmsoUIOEnIIcSej/wcncNxcBvCrtO5C8/7ldCXz7Z0szG6d
         cgCBd+UcjeYzlKsO9/Jm6sA/hBzv7blo1lVCoVDosrrt75qKZzMAwEIyXUOGWmLx5/Gm
         egNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mc+iGKWlN/fOMmxRI4s7vZfYMTgz0nb+GLccaSaujwJYPUKdl
	QRzlT2uRPlKlBNekgvlZHSQ=
X-Google-Smtp-Source: ABdhPJxtBHK8zfsfo/kyrnZxIaUDN5ea7PGq/DAn3yH1Fof6+xjxWrDl+QnIdWcTHDOAgVtiSsE5Kg==
X-Received: by 2002:ab0:5e04:: with SMTP id z4mr19890989uag.12.1624844630944;
        Sun, 27 Jun 2021 18:43:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:1c86:: with SMTP id c128ls3706945vsc.2.gmail; Sun, 27
 Jun 2021 18:43:50 -0700 (PDT)
X-Received: by 2002:a67:7908:: with SMTP id u8mr16625967vsc.10.1624844630250;
        Sun, 27 Jun 2021 18:43:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624844630; cv=none;
        d=google.com; s=arc-20160816;
        b=vl9TfI8DmloDF0HNwT0e27MfigVfDZW1j8u6phuYRW8MDnxpqsjHg+C6PrsyZlbzkN
         k5ayHTK7OAldDuT6vlFm7ZX+IHno/6X2bQkPrZqEY1AO6L+8MPfCgnIw6TPynH0mzNTX
         PUDYjt7KOW5/oJU8942Dj3abN46MnEcMiBEv9GPJgrlM7EuiDI6N+HmnQMIU8fKkVZ5s
         bk77HygNBn7Ws6pomDykFsMGGiquHS0G2RHkGhHYCSVtKCpN2whHRh87QYx1OE1yWTSU
         5cKzGoij3povR2TJW8lo6B4E+H8/bs1rwPPFH2eSiZ1t9XE6mFhkcBEiM6MxqRSrfa8T
         E/JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=cvUxkEdUxN5dPyvYvFgo6KJf8ZzBBJNP9lk3aCLVK+A=;
        b=b94LfIfBp9bD1a+99FfD9KzmHul5fqzKVqwbhwx2eYEiyd3WYrSc2VbRN1yAZUjnvY
         zbjxFgWHtr+SX3PSK9IywAm+GRhZNihCzcwgXOaw7v0K15gDAtuhyQHdMZO5UMRv2iho
         5W4+xvMJvB9AS0c7+nOw/Ki42AlTizt+TrtgPhcYYBkeebcyRg+lESv/SsprwzFfZs8g
         pMkxT/yqm1IgPIeSzpS+2gOVt9Hxqek8kW4hgOL/ZnmBWwQA8YnAGJjLGeJjsTEMqAX4
         //8zofP2uO4SFDFW3i25MrP6jux2U1uRLP9mKTj4j6u0X3/WaZPtD2+/QhYHb8I7/0oE
         sgDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id g20si1294024vso.1.2021.06.27.18.43.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 18:43:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4GCqxy3TK5z1BSX0;
	Mon, 28 Jun 2021 09:38:30 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 28 Jun 2021 09:43:46 +0800
Received: from [127.0.0.1] (10.174.179.0) by dggpemm500006.china.huawei.com
 (7.185.36.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 28 Jun
 2021 09:43:46 +0800
Subject: Re: [PATCH RFC 5/8] iommu/arm-smmu-v3: Add support for ECMDQ register
 mode
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <20210626110130.2416-6-thunder.leizhen@huawei.com>
 <202106262309.9LHyHely-lkp@intel.com>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <1e49dbc4-8ef8-388e-db4a-186f2fde3351@huawei.com>
Date: Mon, 28 Jun 2021 09:43:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <202106262309.9LHyHely-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.179.0]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
X-Original-Sender: thunder.leizhen@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.255
 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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



On 2021/6/26 23:49, kernel test robot wrote:
> Hi Zhen,
> 
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on iommu/next]
> [also build test WARNING on arm-perf/for-next/perf v5.13-rc7 next-20210625]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in

OK, these patches is based on the latest linux-next.

> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Zhen-Lei/iommu-arm-smmu-v3-add-support-for-ECMDQ-register-mode/20210626-190316
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next
> config: arm64-randconfig-r032-20210622 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/fb36a6675f695ca24d94d461a7a6521e4d798226
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Zhen-Lei/iommu-arm-smmu-v3-add-support-for-ECMDQ-register-mode/20210626-190316
>         git checkout fb36a6675f695ca24d94d461a7a6521e4d798226
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c:3578:39: warning: variable 'pre_addr' is uninitialized when used here [-Wuninitialized]
>                    if (i && ((val & ECMDQ_CP_ADDR) != (pre_addr + ECMDQ_CP_RRESET_SIZE))) {
>                                                        ^~~~~~~~
>    drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c:3569:20: note: initialize the variable 'pre_addr' to silence this warning
>                    u64 val, pre_addr;
>                                     ^
>                                      = 0
>    1 warning generated.
> 
> 
> vim +/pre_addr +3578 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> 
>   3547	
>   3548	static int arm_smmu_ecmdq_probe(struct arm_smmu_device *smmu)
>   3549	{
>   3550		int ret, cpu;
>   3551		u32 i, nump, numq, gap;
>   3552		u32 reg, shift_increment;
>   3553		u64 addr, smmu_dma_base;
>   3554		void __iomem *cp_regs, *cp_base;
>   3555	
>   3556		/* IDR6 */
>   3557		reg = readl_relaxed(smmu->base + ARM_SMMU_IDR6);
>   3558		nump = 1 << FIELD_GET(IDR6_LOG2NUMP, reg);
>   3559		numq = 1 << FIELD_GET(IDR6_LOG2NUMQ, reg);
>   3560		smmu->nr_ecmdq = nump * numq;
>   3561		gap = ECMDQ_CP_RRESET_SIZE >> FIELD_GET(IDR6_LOG2NUMQ, reg);
>   3562	
>   3563		smmu_dma_base = (vmalloc_to_pfn(smmu->base) << PAGE_SHIFT);
>   3564		cp_regs = ioremap(smmu_dma_base + ARM_SMMU_ECMDQ_CP_BASE, PAGE_SIZE);
>   3565		if (!cp_regs)
>   3566			return -ENOMEM;
>   3567	
>   3568		for (i = 0; i < nump; i++) {
>   3569			u64 val, pre_addr;
>   3570	
>   3571			val = readq_relaxed(cp_regs + 32 * i);
>   3572			if (!(val & ECMDQ_CP_PRESET)) {
>   3573				iounmap(cp_regs);
>   3574				dev_err(smmu->dev, "ecmdq control page %u is memory mode\n", i);
>   3575				return -EFAULT;
>   3576			}
>   3577	
>> 3578			if (i && ((val & ECMDQ_CP_ADDR) != (pre_addr + ECMDQ_CP_RRESET_SIZE))) {

The condition 'i' ensures that 'pre_addr' is not used in the first cycle(i==0).
It seems necessary to add "= 0" to initialize 'pre_addr' to eliminate this false positive.

>   3579				iounmap(cp_regs);
>   3580				dev_err(smmu->dev, "ecmdq_cp memory region is not contiguous\n");
>   3581				return -EFAULT;
>   3582			}
>   3583	
>   3584			pre_addr = val & ECMDQ_CP_ADDR;
>   3585		}
>   3586	
>   3587		addr = readl_relaxed(cp_regs) & ECMDQ_CP_ADDR;
>   3588		iounmap(cp_regs);
>   3589	
>   3590		cp_base = devm_ioremap(smmu->dev, smmu_dma_base + addr, ECMDQ_CP_RRESET_SIZE * nump);
>   3591		if (!cp_base)
>   3592			return -ENOMEM;
>   3593	
>   3594		smmu->ecmdq = devm_alloc_percpu(smmu->dev, struct arm_smmu_ecmdq *);
>   3595		if (!smmu->ecmdq)
>   3596			return -ENOMEM;
>   3597	
>   3598		ret = arm_smmu_ecmdq_layout(smmu);
>   3599		if (ret)
>   3600			return ret;
>   3601	
>   3602		shift_increment = order_base_2(num_possible_cpus() / smmu->nr_ecmdq);
>   3603	
>   3604		addr = 0;
>   3605		for_each_possible_cpu(cpu) {
>   3606			struct arm_smmu_ecmdq *ecmdq;
>   3607			struct arm_smmu_queue *q;
>   3608	
>   3609			ecmdq = *per_cpu_ptr(smmu->ecmdq, cpu);
>   3610			ecmdq->base = cp_base + addr;
>   3611	
>   3612			q = &ecmdq->cmdq.q;
>   3613	
>   3614			q->llq.max_n_shift = ECMDQ_MAX_SZ_SHIFT + shift_increment;
>   3615			ret = arm_smmu_init_one_queue(smmu, q, ecmdq->base, ARM_SMMU_ECMDQ_PROD,
>   3616					ARM_SMMU_ECMDQ_CONS, CMDQ_ENT_DWORDS, "ecmdq");
>   3617			if (ret)
>   3618				return ret;
>   3619	
>   3620			q->ecmdq_prod = ECMDQ_PROD_EN;
>   3621			rwlock_init(&q->ecmdq_lock);
>   3622	
>   3623			ret = arm_smmu_ecmdq_init(&ecmdq->cmdq);
>   3624			if (ret) {
>   3625				dev_err(smmu->dev, "ecmdq[%d] init failed\n", i);
>   3626				return ret;
>   3627			}
>   3628	
>   3629			addr += gap;
>   3630		}
>   3631	
>   3632		return 0;
>   3633	}
>   3634	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1e49dbc4-8ef8-388e-db4a-186f2fde3351%40huawei.com.
