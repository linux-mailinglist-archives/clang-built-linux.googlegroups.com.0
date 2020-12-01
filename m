Return-Path: <clang-built-linux+bncBDKMLAXVVQHBBVF7S37AKGQEDGHQHPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9902C94CF
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 02:43:49 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id a1sf263268ioa.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 17:43:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606787028; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4aZ1OF8cnhX1nimcAWIf6wJMTRzLtVhP6mZFkgXdZ8ciCQygUEr/E5dWJMU42vt1o
         ZJANaVTcRCfpE/chgqQjQeccTLn/10PpDY3kRcLX1ioEgtbq4NeEFVk3mQe97vfNiJ+I
         aEfWEe1ATMIWOKyH5OjKcvkauhuMwiwyvazVC8B+/pHZ5T4cs467p69FX4OaUqugY0lz
         iewcgWO0GjZzY2MIPStLDuywsi01cp9f9wufQJQJpVOCZaDqK8dxoeqclHKKvQAg2gjU
         fxTsaU97RZT0o+O+1zOjYt7SSWthlvz70QuM6vhHeTnMO6FWaklM29ZEzKIuHJkqzH0N
         kCug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=K66UzULCO18x7SnUZ3N6gZ3mP2xgDEguenieOKv2vvc=;
        b=rHuODFLH+rQolgwpDPAxoanjfSwhn8nRp5GXWtiWrK8+WVbZSTDTwO2gfgIRsxtg/y
         LRTVP/R7SMloZeX16WFcQcYXx7WkF33tgjknhflEKKLGwrS7FpeX+3Is0uqrgDvXhOMo
         QUqopXnnC3j2GangBHvEbXAh9xhK3aTh9sfoMhuXp2ry/VQaL6ZrZkm23XyIDyeuXY9Y
         P5xbcfgXkjbgBdOVTNG5Oz13gciAk63B0PVIgR0fhsfH8VJWX9vEX7yyrWJC5l1480Lo
         M9IVIVoJbQ6dz4PgijqCFqXY8ZrpvOfPSlcc5JsXgsPwkwFG8z62/PEFgb/djG5EM7/f
         v10Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K66UzULCO18x7SnUZ3N6gZ3mP2xgDEguenieOKv2vvc=;
        b=DwyF6NCluePtbnxoaPSaOoYSWgIxYq/ut9Y7yX+U3moD6lljGBAKjOkujncyHwa7FC
         fTYkDafUsSIMfvBZbFxO8VcT3Z8fRTu/jadzEVxQOa3i86jnCeGlZPysqrLXYa+FNeWJ
         dvbynfNX6HGqbXSGzlFj4XPv1EqKCPtmSTB9/QHRFqIjWgdt7icQt9SS61yprG+T2djC
         5Tz5yBs4HZeFCWOrEdPdcjoMxuGs4yBLfC3pmL4n+UM6gAcnqSKgaAPZQL7iN1Pf2aNg
         MLFQfUoDhkYkvCApFVs1J4c6E+tVPw1djgGgYe63M/iXBE6b7Tc3F4w+lYUM9ZoQjUqs
         +Q0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K66UzULCO18x7SnUZ3N6gZ3mP2xgDEguenieOKv2vvc=;
        b=pKBrf5770cusskuT1/5wCvMX2FqjpBEiIC9RXL9G+fqgoc+MdgjomH7AAxrNw8Jy6T
         NAXrzma8pJ783wMRdbfbMVe2FaVL/Ym3dh1l606a+nfmtbzfW6zcERmdcCrVTZZkjgj+
         UtL6W9SWtsnTCYH1RoA1/fsc9Uecz/PSwcc+QH6iLcLz4OH5d1YumP2WEifeJ727bIhr
         MQWPyDf6nce0H+xruAB0uNBxv6uAVX+vZelJDieNdtAnVScsB0zx1vyonH8O7NLFyuE6
         7bPpyccQZpsCLPnJ4Q83p82rSp5Hbj2dmYT2BOEyP8ZeG1szycCLW/SueCLNFEETviP2
         wZLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lEwelPMNlJZiSCIDg0bGQ0Qu/APEd7T+9YYRZmbyrr8WIKrsQ
	ejTDnB4GzWSpQFx8b7qwY2Y=
X-Google-Smtp-Source: ABdhPJxFddF4OZwpwBZxvxlWaLC6Vir9MOaEYJh8T5HOEsnJQazhLE9WzmsTLK9g4AWObjrVmNwhoQ==
X-Received: by 2002:a02:4c8:: with SMTP id 191mr628579jab.70.1606787028524;
        Mon, 30 Nov 2020 17:43:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:99d1:: with SMTP id t78ls94875ilk.7.gmail; Mon, 30 Nov
 2020 17:43:48 -0800 (PST)
X-Received: by 2002:a05:6e02:4ae:: with SMTP id e14mr596159ils.132.1606787027978;
        Mon, 30 Nov 2020 17:43:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606787027; cv=none;
        d=google.com; s=arc-20160816;
        b=aOA+A161xuJHTKHPGd8oEBgWunHCEqzfBH/pcGr0TnrX2dkDNqMj6BohcH/gYTCg3R
         2PGjaTuQ8P8pnR6JxILJ7FRHakAatX2X2Hip26jwyF+rB8VkMZqvD4GWqxvh4i/En6OO
         24SXD7kk1skVrof8C8CvNNKaTKXgjarEuJrQBHlP3C6+JIksB8GUnAGkdZEVXYrlw9qL
         v3uybKPXE67Nx7dHF5dH5GIai/ZpCOOHc5T2oYxEF0YhLDCdvBy+iHeZOp4GCptGlPwm
         PyGjjsMMZTSF4Iza0nYuAlVeZ+Sn+flWPurjOx62grGM3VCAEX2I4d4dEC/iNindaiNN
         2cKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=REpCz2O+hjpyO/e4D5hm4TcB2vbYfCr/wiDmpK6Ej10=;
        b=EXLD5JxVksqfiewzO0mkUqwQYR6Uw7ZTZvq6of6h2nx+T95VqoHbTOSLRLoSdHIC2g
         /lVlfgEe8QUSRtEQRw08yer9l7SXdfY5CCmfpfI4kEsDtB0fuiK8phkdLR7YdVrAbz8A
         99eAPKHAqJQE0IzPtK3mNjvb7IG2YGpTNyGO4aOi+kp9Gq/aSiY5jfB2OLHdRg+zatD/
         FJX0GpnZTxvRrGtj86L6RV3nkxJPBD3jg02i2QL0mYIbLRv4quoAl9h7KwnCqy9Da08Q
         PfL+4r0LZdsDu0/TU9TdqM6Zt2LUAavHSUrVTRXXKnTzVTz1jfTmbSXY4Ba13iEb5R9d
         lqfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id q4si24630iog.3.2020.11.30.17.43.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 17:43:47 -0800 (PST)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4ClPy53JZczhkjH;
	Tue,  1 Dec 2020 09:43:25 +0800 (CST)
Received: from [10.136.114.67] (10.136.114.67) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 1 Dec 2020
 09:43:39 +0800
Subject: Re: [chao-linux:dev 6/6] ld.lld: error: undefined symbol:
 LZ4_compress_HC
To: kernel test robot <lkp@intel.com>, Chao Yu <chao@kernel.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <202012010948.M300DIaS-lkp@intel.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <b54d768b-d30f-8b6b-5f5b-0a756c705017@huawei.com>
Date: Tue, 1 Dec 2020 09:43:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202012010948.M300DIaS-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.136.114.67]
X-CFilter-Loop: Reflected
X-Original-Sender: yuchao0@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=yuchao0@huawei.com
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

On 2020/12/1 9:03, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/chao/linux.git dev
> head:   d379148c04b729eda4ce567f9115b2af5962a9bd
> commit: d379148c04b729eda4ce567f9115b2af5962a9bd [6/6] f2fs: compress: support lz4hc compression
> config: riscv-randconfig-r004-20201130 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project dfcf1acf13226be0f599a7ab6b395b66dc9545d6)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install riscv cross compiling tool for clang build
>          # apt-get install binutils-riscv64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/chao/linux.git/commit/?id=d379148c04b729eda4ce567f9115b2af5962a9bd
>          git remote add chao-linux https://git.kernel.org/pub/scm/linux/kernel/git/chao/linux.git
>          git fetch --no-tags chao-linux dev
>          git checkout d379148c04b729eda4ce567f9115b2af5962a9bd
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>     ld.lld: error: arch/riscv/kernel/head.o:(.head.text+0x8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x19AC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x19C6): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1A60): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1CA6): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1DE0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1E56): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1EA2): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1EDC): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1F66): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1F94): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x1FB2): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.text+0x2036): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.init.text+0xD8): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>     ld.lld: error: debug_core.c:(.init.text+0x176): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>>> ld.lld: error: undefined symbol: LZ4_compress_HC

Sorry, I missed to check CONFIG_LZ4HC_COMPRESS config, will fix.

Thanks for the report anyway.

Thanks,

>     >>> referenced by compress.c
>     >>>               f2fs/compress.o:(lz4_compress_pages) in archive fs/built-in.a
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b54d768b-d30f-8b6b-5f5b-0a756c705017%40huawei.com.
