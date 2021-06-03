Return-Path: <clang-built-linux+bncBCVI72MU64BRBJEZ4GCQMGQEK62VY3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2455B399890
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 05:29:42 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id r11-20020a0cb28b0000b02901c87a178503sf3374218qve.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 20:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622690981; cv=pass;
        d=google.com; s=arc-20160816;
        b=ig8++h8veVf94GxAujuzai/VJSgdjYNeB+++TlVS/nVAHwApIxdjwV7E+sTQYwaV96
         fnflyOd6QfmHluOGLRWn88UNEygHILMxVO8rqG4TQwgwQYhJ9QprQBqrui/0orKuGWfc
         H1JuUQHnsp8Jp9xMieWbzW6MkA30SHglyLwWfo2ATj4nGr7Ulv+7ykLk4yCA9p+uFn4p
         3vwPmYvt3Wf8rLtTeUOaEFhG3dPK4xdTvlrpIcOhU8P1062gzskO+q3oW5znTYiTRwJB
         OMrwdwODM36xA08OCzvEJt8rhD/wqFqCxDiXQjjK3knpD+gllX/7s/tBvGC1p7msRviA
         wUQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OxfL78kO0grMEKoAfqo+uK2s7vGF1oPcWKRz/DGcczE=;
        b=vIIyWfDkT/mo2N54BKw5Fbd/fYm+bRrR3Jm/K2VBQBW/dGmIDIJ75VAGmn0W/mv8WF
         nkjNqpPksFIbSRO9RNx3DYhIPtK/KXjUOdoh7fy43dhdFmcAIeIZaq/ST7OILPw2PSW7
         wXpYGlvKhjSrh+J28/nDAl9kFMJyBKiUcuWvf7i9cKzacXZndgZNZ1P8lDbeFDAwKGUc
         3TLVxmhqe6r7bwwuXxrMvOAgaXYJtZs0AbnisReTuiLgFPpWS49zCRnf+Wj8gnaqpTQa
         dJHr6cxIXP9m5XS9IXsZ+Tx2CLbz6xCtzOT3iaBOVLUtVFnJnBXC05jlAbeEYezW2uLg
         NB9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of zhangshaokun@hisilicon.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=zhangshaokun@hisilicon.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OxfL78kO0grMEKoAfqo+uK2s7vGF1oPcWKRz/DGcczE=;
        b=Akv7nSh8JiWW7eP1qGyOVyCMv95I2KbemXVXZ/wyrKvW9ZxrKrj48bxXHpW7NalxMl
         qL100oUiHQi1+ihfOVyiIvub2+rYNdDXQ61TwJwWnnc80a/uJtdHlr56k/JgotLhpd6H
         KidpTeQziDYPJo2XuQZ53gm/gNvFJzPwLZ5PGI+JaJUKtg1pOhLH15w/PPi3Bs/1rWiK
         pNVRH+Kj5JEDXojCZrLrDPT1QLjL09RIy6LRzeHv+hBzX4wyPmcnkVsCXCYnOcuBDUrx
         uCt0BSOPNzkXV8BDYeh/JVoNvTaRZi+sTZuf3OLuv8Iz6kiy/ETNR9MiNCBxnhCM6xna
         a7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OxfL78kO0grMEKoAfqo+uK2s7vGF1oPcWKRz/DGcczE=;
        b=Spd7OHUU7qHiLkxDOdHFlPYQ0aIs8yxSxAFOEGeh6IyLX6ylmP4jiz4tMFI2t2+HQQ
         078PNtcujf7nM+QdqV7cjn3oO3azGl7F4JaiP9Ra3JlHhgSy9Kjvjq9UoKz/aQ9b4vQ5
         j7CpSZFAX18dS55SbCfzJ+8Et0T1TGR+h4BPLQJvdpLK59f5nakKKPyzAir7vViNR8T1
         LDWh6Mj4HxtV3hybp3nwCSaI9AbxJoqMAFP9KzxfgiTahSoSQmux+PYUezfxDnH3XEDc
         IfYxUDyRM4hKtDIvhB3iseU19WiCgAQCYpzOmLSLdBxwFGQOLYDsmskXrBtLtdllqomq
         rFTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QSDoX1qM9IFmoYqxZ6PAWfBZ2DWI9eC18LclpO9V7SkLinReG
	67OQsUIuystVqT9CnKtkQWs=
X-Google-Smtp-Source: ABdhPJz7yBAAlP9BiZSJlFnJ5O9YfLJDH9LQB+masw8ZZAPd64GheYwxRZ0DunGVZRLTYZFmQRZNyw==
X-Received: by 2002:a0c:f684:: with SMTP id p4mr3829812qvn.16.1622690981034;
        Wed, 02 Jun 2021 20:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls804733qtf.10.gmail; Wed, 02 Jun
 2021 20:29:40 -0700 (PDT)
X-Received: by 2002:aed:30e6:: with SMTP id 93mr27237950qtf.41.1622690980597;
        Wed, 02 Jun 2021 20:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622690980; cv=none;
        d=google.com; s=arc-20160816;
        b=DE5i0ZkHz4eZ5JD84ALlPLmWuTlDpDlKa1uBqOn6ruTB5h0fCowrHJazG/YuZQEz6W
         5GMah3bmW9YOmWWH5iDb4MU1R+r5/TxeFPd87kN/m6o77wQRXFrI9jWHXmK5TNNZ3C5A
         e5KNrVikd5zydJyAJNjjK3Qc5YOPLxZuszL0HA74Smy2ytq+K7vfvkT6SNV8V4B3HCrp
         wKnr52OJOAA11ZDePIIP+6+N0DygFXi/w3kQJ2rA/m2h0b5IMACLo3NiEbAY/pRimOpw
         ZGn9M51TYBmRDc3YLHCQEQauJ/mnZyOY7dV5n0DIlYvHuW4NyhsxSU2pHHlPg8OjlJ5X
         gkZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=aXWQPnh9XQ80sEKYif/guzvYpg4G/74jatj7fte+XaM=;
        b=YthNLH1Q1FOuyDekzkOPcAsdvdq2JNdnjGe2WSxYcoHJWLhYPf4kTyfYa7cZJ8MYGu
         Y+UmeKsQCYqmul0amVODCA1Drg+R95YLs6iC/VlTflEN1Sxjbh9s0n/nv8jWISrQxs21
         XjS5X0yva4WTDVpdO+d9nggYmPmSTb6k8cf7be2shJTJUrrgGcD7ObNIW3XVfzFMF55S
         lJ6lTYTSvT/t/A1xYYImheIevlD0ENN4QKD0n9NOfE6aZd5oabM2mQwPfg79Vp/XHeIU
         zEEds1g/wyXW+JKtpLqtdnTUAg9DLMKjuxAeuRobPfF2MV/eenXcVbcCSXoPzDHT9zL5
         MN4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of zhangshaokun@hisilicon.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=zhangshaokun@hisilicon.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id 8si103265qtp.5.2021.06.02.20.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 20:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhangshaokun@hisilicon.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4FwWXW2khMzZcG2;
	Thu,  3 Jun 2021 11:26:51 +0800 (CST)
Received: from dggpeml500023.china.huawei.com (7.185.36.114) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 3 Jun 2021 11:29:07 +0800
Received: from [10.67.77.175] (10.67.77.175) by dggpeml500023.china.huawei.com
 (7.185.36.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Thu, 3 Jun 2021
 11:29:07 +0800
Subject: Re: drivers/perf/hisilicon/hisi_uncore_hha_pmu.c:89:7: warning:
 variable 'val' set but not used
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, Will Deacon <will@kernel.org>, John Garry
	<john.garry@huawei.com>, Qi Liu <liuqi115@huawei.com>
References: <202106030815.nhs7gfMo-lkp@intel.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <3dde3f65-fd59-5ec4-5c1e-205d623f0cf3@hisilicon.com>
Date: Thu, 3 Jun 2021 11:29:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202106030815.nhs7gfMo-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.67.77.175]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-Original-Sender: zhangshaokun@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of zhangshaokun@hisilicon.com designates 45.249.212.188
 as permitted sender) smtp.mailfrom=zhangshaokun@hisilicon.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
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

On 2021/6/3 8:28, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   324c92e5e0ee0e993bdb106fac407846ed677f6b
> commit: 932f6a99f9b0c6b7039a5e2ce961009a8dc8c07c drivers/perf: hisi: Add new functions for HHA PMU
> date:   10 weeks ago
> config: arm64-randconfig-r005-20210603 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d8e0ae9a76a62bdc6117630d59bf9967ac9bb4ea)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=932f6a99f9b0c6b7039a5e2ce961009a8dc8c07c
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 932f6a99f9b0c6b7039a5e2ce961009a8dc8c07c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/perf/hisilicon/hisi_uncore_hha_pmu.c:11:
>    In file included from include/linux/acpi.h:35:
>    In file included from include/acpi/acpi_io.h:7:
>    In file included from arch/arm64/include/asm/acpi.h:12:
>    include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>            status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
>                                            ^
>    include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>            get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
>                                  ^
>>> drivers/perf/hisilicon/hisi_uncore_hha_pmu.c:89:7: warning: variable 'val' set but not used [-Wunused-but-set-variable]
>                    u32 val;
> 

Oops, my bad, there is a bug that shall be fixed. I will post it later.

Thanks for the report,
Shaokun


                       ^
>    drivers/perf/hisilicon/hisi_uncore_hha_pmu.c:103:7: warning: variable 'val' set but not used [-Wunused-but-set-variable]
>                    u32 val;
>                        ^
>    4 warnings generated.
> 
> 
> vim +/val +89 drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
> 
>     82	
>     83	static void hisi_hha_pmu_config_ds(struct perf_event *event)
>     84	{
>     85		struct hisi_pmu *hha_pmu = to_hisi_pmu(event->pmu);
>     86		u32 ds_skt = hisi_get_datasrc_skt(event);
>     87	
>     88		if (ds_skt) {
>   > 89			u32 val;
>     90	
>     91			val = readl(hha_pmu->base + HHA_DATSRC_CTRL);
>     92			val |= HHA_DATSRC_SKT_EN;
>     93			writel(ds_skt, hha_pmu->base + HHA_DATSRC_CTRL);
>     94		}
>     95	}
>     96	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3dde3f65-fd59-5ec4-5c1e-205d623f0cf3%40hisilicon.com.
