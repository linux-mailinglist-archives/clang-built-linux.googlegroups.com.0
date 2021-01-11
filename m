Return-Path: <clang-built-linux+bncBDKMLAXVVQHBBCEW6D7QKGQEEPVWQTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6B72F0DEA
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 09:23:37 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id s17sf332255pgv.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 00:23:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610353416; cv=pass;
        d=google.com; s=arc-20160816;
        b=TPlKqdR2p8MwFJXv9ORUsTb56RhEyMlTat3yfIpwgnTjKICCjH+4rrqXsbhPCKH6vi
         SaF5yu0XXP3TU3NsIxVbA5azbIJRib9x7+ct3sEAMArIX7AdW58Y/2lBo98L1xLbT8It
         S1SKrcNoasokbaqy4w6oYKXk3WC26zzgK/y6DrW/hVH/P/dXpOQJVAXA450oCgjTA/qT
         j6zp7yrp1UP+8nOgPh12JwBGZUXN/rurb9RNvNo43WGbtQ4ESuqnTcQ0HvoiKktiNoNI
         feo4P8gwfRBx9M1PA+vQr4Dyiigw8qzhuZXuGEMhOaLKY2st7XCaaPlQMxDsxE7yqCor
         EcSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=tBFXGNtoSBTF5fKM3V08KfGGWMW09Z3SpkkJAP92JcI=;
        b=igyuK+d8lVLqaZYznoZnPTWxtlMAuzttJ4mmGz7u5W4HgEwXwBLzCDzM8whD9oX4iH
         f4SYQ8ItxVJQriHZgHGFQ7Sm4xCWQE7dzdCe37/9cru0p1AVnpwCPCLCv7P2/hoBbaKG
         VgINDr/saro804t7pTexRc750f10eXGhmEZcDT1xM1v3l5pFEzwFqlUL2TfIDURd6PWJ
         32016W83A6luy+EUQZHGTBJUG3o3ThkI595C39elobkFXdygBCZyXiha0OdkljYytLK1
         Cvho3lyxdu4utAIKkcM7+h//twl6djHsuY08QtAnWL6/rd1MlKdWDntEvVQBa2Mon5OE
         f4Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tBFXGNtoSBTF5fKM3V08KfGGWMW09Z3SpkkJAP92JcI=;
        b=MWUi3SuNjnLo76APwJycFCPfUhT/Jj0FoZ+iWJpTQ+8+s7JSrkC4gBfRd2MUO7gvoa
         uEgvtXMUERgfMPwkZKniWMrAdxUvJLoydDIyo06S71Fn2yGMOdQ5MvPgzMhkyDXOsBwG
         +vGpQBJcF0gzaxdolwelQivYZ2boUumNZkeRLqDyNM58gum6Xmt/kjyfDZjB6K//ehSh
         QvF7ObGoJE6FpQpO6PhVf8ZDlWYr6H8LM/65aaqmygVlCQWQw+mPzENLXE5F4v1yCkbV
         AaBzpkOH8y6Rh+A/Lv1NFNgXrZIJjs0E+5lYQo/T5WVUfZsV5HmC4AcX31avTWS9ods8
         oWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tBFXGNtoSBTF5fKM3V08KfGGWMW09Z3SpkkJAP92JcI=;
        b=e4DWVUor24BPv5EBEhH+JbfE3/rjspDkC/dMKwc384x6r10VMIQN1m0mwMUw7EPHsu
         Q2lWHWe0Tzya+hVLaE/FjuCzZa0sJQ6KpLubPh6+aB/R4kYiu0JJ77lb3YWkx8eeYQRG
         a4vXjD8oJxuYlDIR5ZP5mOf7k/r2yOq5CJzuPcgLDxsMKbojOID2lvy9+lDt+gQzfzyL
         m2U22zcseFHXxuT/ms2kODxeVmKxPkCXJFNBxrZzzR8kKBEuhTZvDi+vdDVnujKUtgww
         /pqXEP9wwZAYirnkyED37DeVwt8SosS8ejsbeBx6LTbeV/vnCwbe783BmZkcDGvUVM1s
         MBBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UvOfykgiBiB3CtjzMkFgBS+jphZ13yBgEcARY48VcGnqd6frw
	Glhv+STMVAzv5PCkksYB16s=
X-Google-Smtp-Source: ABdhPJwl6Zy6A8n7XBsALNqER/dw4o3OX36QkJhWhH7dQJou+nbShBmzTE5jLJloSjBsknqQ57NwdQ==
X-Received: by 2002:a17:90a:6d62:: with SMTP id z89mr17165432pjj.71.1610353416167;
        Mon, 11 Jan 2021 00:23:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls6587770pjq.3.gmail; Mon, 11
 Jan 2021 00:23:35 -0800 (PST)
X-Received: by 2002:a17:90b:1882:: with SMTP id mn2mr16671874pjb.236.1610353415565;
        Mon, 11 Jan 2021 00:23:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610353415; cv=none;
        d=google.com; s=arc-20160816;
        b=P1U1J0/JV1cO5ODyjyiLKMmG4CB0/7EZPVlMH9QdPFZOXDzny2nKWcQ/li19wic8Zv
         Wbr+kUrz8Kz+kil5QtbSNz8Q09ob1lPPy5yXZLI9ilXg7/y9Ji64RbIGt755BoSsyqgJ
         ISP573dI/ERfiDM83sMyCg3wx4dzUNIrZxnRleqgTatk/DmaOqkFjupgJLMJrVfLHpNZ
         xpLnWnuv2VBjYlBQyhOasZHFpeAVmiA2cqMlh95jbDtclXAOEa5dJAKMnHGeQH1e+h83
         r7T+xywEgVDILbCH0f6gB8P42GK/0iucOfWR8Smf7w5qL6P3plDAtAThnEEWBHRmsEGa
         yruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=+zB0mq7d+TjmtHyfDEYeVrseIQJJUVQxcg+l+TrLTag=;
        b=sntnLm4Y6jd56Zu6RelrNyu02c/0HQp7uQ75L3xImFaeR6+7W9fy1YalN3UhRTJTTb
         nXj6RFaWqOAtL+NPoBlK4kB7ZFfy8UiwlGZvAy2giIwgY446Sf9qJpT8CPaKZgc3Z6EN
         s3lq6kAlsR/d3d1C8SWPKWpyQyWPSb4s614kqla2oIVATGLF/hnKqEWLhaKQ3fiNReDu
         v1wSLa+rtPHwcM3xqqK3wvBelKy9Tw8kgP6A0XuHzUmeUOJWhC8gC056Qj9Gnk1zHlsA
         2I78hLAA9QT5TZ0JLUGbQwaoQNzE6UoG4gmUZcBMaCBKSjNni384ZrV5LNK6zh7fxLGE
         ClBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id q32si836290pja.2.2021.01.11.00.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 00:23:35 -0800 (PST)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4DDmsx48Ftzj4sn;
	Mon, 11 Jan 2021 16:22:45 +0800 (CST)
Received: from [10.136.114.67] (10.136.114.67) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.498.0; Mon, 11 Jan
 2021 16:23:29 +0800
Subject: Re: fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in
 function 'get_victim_by_default'
To: kernel test robot <lkp@intel.com>, Chao Yu <chao@kernel.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, Jaegeuk Kim <jaegeuk@kernel.org>
References: <202101092153.mJkwUvtn-lkp@intel.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <c59ab262-4b64-794c-3dd9-fa571848562a@huawei.com>
Date: Mon, 11 Jan 2021 16:23:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202101092153.mJkwUvtn-lkp@intel.com>
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

Hello,

Thanks for the report.

I replied for your previous report [1], could you please check that?

[1] https://lore.kernel.org/lkml/8a8ef6b8-84c2-abfe-e758-2fa52a989c72@huawei.com/

That says, in my environment, get_victim_by_default()'s frame size is less than
512 bytes, and also after going through related code, I don't see any obvious
large stack size usage.

Is that issue a powerpc specified issue?

Could you help to verify powerpc compiling with -Wframe-larger-than=512 after
reverting that atgc patch? I mean whether get_victim_by_default() already have
large frame size before applying atgc patch (commit 093749e296e2)?

On 2021/1/9 21:18, kernel test robot wrote:
> Hi Chao,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   996e435fd401de35df62ac943ab9402cfe85c430
> commit: 093749e296e29a4b0162eb925a6701a01e8c9a98 f2fs: support age threshold based garbage collection
> date:   4 months ago
> config: powerpc-randconfig-r033-20210109 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=093749e296e29a4b0162eb925a6701a01e8c9a98
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout 093749e296e29a4b0162eb925a6701a01e8c9a98
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:182:1: note: expanded from here
>     __do_insw
>     ^
>     arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from fs/f2fs/gc.c:10:
>     In file included from include/linux/backing-dev.h:15:
>     In file included from include/linux/blkdev.h:13:
>     In file included from include/linux/pagemap.h:11:
>     In file included from include/linux/highmem.h:10:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:604:
>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:184:1: note: expanded from here
>     __do_insl
>     ^
>     arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from fs/f2fs/gc.c:10:
>     In file included from include/linux/backing-dev.h:15:
>     In file included from include/linux/blkdev.h:13:
>     In file included from include/linux/pagemap.h:11:
>     In file included from include/linux/highmem.h:10:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:604:
>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:186:1: note: expanded from here
>     __do_outsb
>     ^
>     arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from fs/f2fs/gc.c:10:
>     In file included from include/linux/backing-dev.h:15:
>     In file included from include/linux/blkdev.h:13:
>     In file included from include/linux/pagemap.h:11:
>     In file included from include/linux/highmem.h:10:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:604:
>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:188:1: note: expanded from here
>     __do_outsw
>     ^
>     arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from fs/f2fs/gc.c:10:
>     In file included from include/linux/backing-dev.h:15:
>     In file included from include/linux/blkdev.h:13:
>     In file included from include/linux/pagemap.h:11:
>     In file included from include/linux/highmem.h:10:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:604:
>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:190:1: note: expanded from here
>     __do_outsl
>     ^
>     arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>> fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in function 'get_victim_by_default' [-Wframe-larger-than=]
>     static int get_victim_by_default(struct f2fs_sb_info *sbi,
>                ^
>     13 warnings generated.
> 
> 
> vim +/get_victim_by_default +622 fs/f2fs/gc.c
> 
> 093749e296e29a4 Chao Yu       2020-08-04  613
> 0a8165d7c2cf139 Jaegeuk Kim   2012-11-29  614  /*
> 111d2495a8a8fbd Masanari Iida 2013-03-19  615   * This function is called from two paths.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  616   * One is garbage collection and the other is SSR segment selection.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  617   * When it is called during GC, it just gets a victim segment
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  618   * and it does not remove it from dirty seglist.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  619   * When it is called from SSR segment selection, it finds a segment
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  620   * which has minimum valid blocks and removes it from dirty seglist.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  621   */
> 7bc0900347e069a Jaegeuk Kim   2012-11-02 @622  static int get_victim_by_default(struct f2fs_sb_info *sbi,
> 093749e296e29a4 Chao Yu       2020-08-04  623  			unsigned int *result, int gc_type, int type,
> 093749e296e29a4 Chao Yu       2020-08-04  624  			char alloc_mode, unsigned long long age)
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  625  {
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  626  	struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  627  	struct sit_info *sm = SIT_I(sbi);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  628  	struct victim_sel_policy p;
> 3fa565039e3338f Sheng Yong    2016-09-29  629  	unsigned int secno, last_victim;
> 04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  630  	unsigned int last_segment;
> 093749e296e29a4 Chao Yu       2020-08-04  631  	unsigned int nsearched;
> 093749e296e29a4 Chao Yu       2020-08-04  632  	bool is_atgc;
> 97767500781fae9 Qilong Zhang  2020-06-28  633  	int ret = 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  634
> 210f41bc048263d Chao Yu       2014-09-15  635  	mutex_lock(&dirty_i->seglist_lock);
> 04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  636  	last_segment = MAIN_SECS(sbi) * sbi->segs_per_sec;
> 210f41bc048263d Chao Yu       2014-09-15  637
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  638  	p.alloc_mode = alloc_mode;
> 093749e296e29a4 Chao Yu       2020-08-04  639  	p.age = age;
> 093749e296e29a4 Chao Yu       2020-08-04  640  	p.age_threshold = sbi->am.age_threshold;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  641
> 093749e296e29a4 Chao Yu       2020-08-04  642  retry:
> 093749e296e29a4 Chao Yu       2020-08-04  643  	select_policy(sbi, gc_type, type, &p);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  644  	p.min_segno = NULL_SEGNO;
> 093749e296e29a4 Chao Yu       2020-08-04  645  	p.oldest_age = 0;
> 3fa565039e3338f Sheng Yong    2016-09-29  646  	p.min_cost = get_max_cost(sbi, &p);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  647
> 093749e296e29a4 Chao Yu       2020-08-04  648  	is_atgc = (p.gc_mode == GC_AT || p.alloc_mode == AT_SSR);
> 093749e296e29a4 Chao Yu       2020-08-04  649  	nsearched = 0;
> 093749e296e29a4 Chao Yu       2020-08-04  650
> 093749e296e29a4 Chao Yu       2020-08-04  651  	if (is_atgc)
> 093749e296e29a4 Chao Yu       2020-08-04  652  		SIT_I(sbi)->dirty_min_mtime = ULLONG_MAX;
> 093749e296e29a4 Chao Yu       2020-08-04  653
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  654  	if (*result != NULL_SEGNO) {
> 97767500781fae9 Qilong Zhang  2020-06-28  655  		if (!get_valid_blocks(sbi, *result, false)) {
> 97767500781fae9 Qilong Zhang  2020-06-28  656  			ret = -ENODATA;
> 97767500781fae9 Qilong Zhang  2020-06-28  657  			goto out;
> 97767500781fae9 Qilong Zhang  2020-06-28  658  		}
> 97767500781fae9 Qilong Zhang  2020-06-28  659
> 97767500781fae9 Qilong Zhang  2020-06-28  660  		if (sec_usage_check(sbi, GET_SEC_FROM_SEG(sbi, *result)))
> 97767500781fae9 Qilong Zhang  2020-06-28  661  			ret = -EBUSY;
> 97767500781fae9 Qilong Zhang  2020-06-28  662  		else
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  663  			p.min_segno = *result;
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  664  		goto out;
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  665  	}
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  666
> 97767500781fae9 Qilong Zhang  2020-06-28  667  	ret = -ENODATA;
> 3342bb303bf48dd Chao Yu       2015-10-05  668  	if (p.max_search == 0)
> 3342bb303bf48dd Chao Yu       2015-10-05  669  		goto out;
> 3342bb303bf48dd Chao Yu       2015-10-05  670
> e3080b0120a15e6 Chao Yu       2018-10-24  671  	if (__is_large_section(sbi) && p.alloc_mode == LFS) {
> e3080b0120a15e6 Chao Yu       2018-10-24  672  		if (sbi->next_victim_seg[BG_GC] != NULL_SEGNO) {
> e3080b0120a15e6 Chao Yu       2018-10-24  673  			p.min_segno = sbi->next_victim_seg[BG_GC];
> e3080b0120a15e6 Chao Yu       2018-10-24  674  			*result = p.min_segno;
> e3080b0120a15e6 Chao Yu       2018-10-24  675  			sbi->next_victim_seg[BG_GC] = NULL_SEGNO;
> e3080b0120a15e6 Chao Yu       2018-10-24  676  			goto got_result;
> e3080b0120a15e6 Chao Yu       2018-10-24  677  		}
> e3080b0120a15e6 Chao Yu       2018-10-24  678  		if (gc_type == FG_GC &&
> e3080b0120a15e6 Chao Yu       2018-10-24  679  				sbi->next_victim_seg[FG_GC] != NULL_SEGNO) {
> e3080b0120a15e6 Chao Yu       2018-10-24  680  			p.min_segno = sbi->next_victim_seg[FG_GC];
> e3080b0120a15e6 Chao Yu       2018-10-24  681  			*result = p.min_segno;
> e3080b0120a15e6 Chao Yu       2018-10-24  682  			sbi->next_victim_seg[FG_GC] = NULL_SEGNO;
> e3080b0120a15e6 Chao Yu       2018-10-24  683  			goto got_result;
> e3080b0120a15e6 Chao Yu       2018-10-24  684  		}
> e3080b0120a15e6 Chao Yu       2018-10-24  685  	}
> e3080b0120a15e6 Chao Yu       2018-10-24  686
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  687  	last_victim = sm->last_victim[p.gc_mode];
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  688  	if (p.alloc_mode == LFS && gc_type == FG_GC) {
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  689  		p.min_segno = check_bg_victims(sbi);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  690  		if (p.min_segno != NULL_SEGNO)
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  691  			goto got_it;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  692  	}
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  693
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  694  	while (1) {
> da52f8ade40b032 Jack Qiu      2020-06-18  695  		unsigned long cost, *dirty_bitmap;
> da52f8ade40b032 Jack Qiu      2020-06-18  696  		unsigned int unit_no, segno;
> da52f8ade40b032 Jack Qiu      2020-06-18  697
> da52f8ade40b032 Jack Qiu      2020-06-18  698  		dirty_bitmap = p.dirty_bitmap;
> da52f8ade40b032 Jack Qiu      2020-06-18  699  		unit_no = find_next_bit(dirty_bitmap,
> da52f8ade40b032 Jack Qiu      2020-06-18  700  				last_segment / p.ofs_unit,
> da52f8ade40b032 Jack Qiu      2020-06-18  701  				p.offset / p.ofs_unit);
> da52f8ade40b032 Jack Qiu      2020-06-18  702  		segno = unit_no * p.ofs_unit;
> a43f7ec327b0d86 Chao Yu       2015-10-05  703  		if (segno >= last_segment) {
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  704  			if (sm->last_victim[p.gc_mode]) {
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  705  				last_segment =
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  706  					sm->last_victim[p.gc_mode];
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  707  				sm->last_victim[p.gc_mode] = 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  708  				p.offset = 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  709  				continue;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  710  			}
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  711  			break;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  712  		}
> a57e564d14d9d12 Jin Xu        2013-09-13  713
> a57e564d14d9d12 Jin Xu        2013-09-13  714  		p.offset = segno + p.ofs_unit;
> 688159b6db47a9e Fan Li        2016-02-03  715  		nsearched++;
> 688159b6db47a9e Fan Li        2016-02-03  716
> 
> :::::: The code at line 622 was first introduced by commit
> :::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collection functions
> 
> :::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
> :::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c59ab262-4b64-794c-3dd9-fa571848562a%40huawei.com.
