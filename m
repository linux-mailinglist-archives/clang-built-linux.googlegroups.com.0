Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM5P3SEAMGQEXXJDA7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4733EBF37
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:09:08 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id m4-20020a170902db04b029012d5b1d78d5sf7144463plx.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:09:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628903347; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbDciVHPCSEsO7n+8caKXVdjyqGsgHtE8UviKfej35HpOXAgB1C+S1WM/JGIxS9+3O
         T+6YgxUtJ9uGe6urupr7rWXqVxof+s3bAP5EcEL2vlN6k4I7zra8n76QPKoSHeNYTARF
         gWxiQli0iq4EItUPcEj5FGEYNYSQmhVEs/nYzTYw0v0zSTwOGru6gw5G8XXP9CA2hvBe
         7ZmhRXOjolKyR/HgX/DCRCMHBk+JaJ6NOPtKL5uK35yrzJexP3vnc6RWjUPGVNhB/TEs
         AX1LRu4ul7WCX5xa8ADdAVyXNo113TQp+GYgRTBxsrpg6J/jmvkNXxLMQdxHOnH0pB7K
         cJsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KBYK68azEcfQpa38PdK3MMsbhIU/+LTnqTfLJdfe9Hg=;
        b=wx3WnqQbfarQS70NxeFyYk0ZDx9e6+cq5mos+WQ62mbRgZ5T2aSZTC+d2nd3k2lHMT
         mxf1g8wRlcMfpcIDSQbGwTY5zfwSfMO/pVvP8ihhXDSiC174Vbd6ilpDcq3uIGVon9Os
         52a60Fdq0XFeXe1zwya/FFtsFmP3x811hnDDPaUbRPHTIJAVtNgL7hTeBYfSJ8KufGPP
         ISRXLQvYCZbLNXPDpVJcmC9X29jPKtY1vn0PQsa9n8y4X38P+AqlHscLtLSBrSMFIXu6
         e9FoIN/W14+4z3PCHur+Y2N6v+zv5xgh0nXrlXOg0nfaN+vbicetHxFxkI7gUdv99OzN
         9q0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MNhjakI1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KBYK68azEcfQpa38PdK3MMsbhIU/+LTnqTfLJdfe9Hg=;
        b=SFEUbOsNdbi8n88/nYcGzGlwwORcPt1+x6su0cad+GDkuuhhM/ocXtActedroDIEA2
         vOatqYMNXSnFdL0tQ22KrHAF61X2db84Sb8a0QElD83gBv3HByLfJpuug4e75OMvYNf8
         LxJesMJx9eC/16BihH7oazOi4HJMtaTnzO52TLf6UNbx0Tqibre9UvYM0wTcXx0XH3SN
         CtoW70QzFB6PovwIe1RxbWrGsjiWMWueosuDKdaOLxn1AeTdTE7tTqDxdY80FMCI+TSI
         uBhKq1N//nOS5Zg7Str/c5AOik6B+vbX2G8mzlqsKObsmWqPelXblMC79+aHhRVF94Ok
         rXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KBYK68azEcfQpa38PdK3MMsbhIU/+LTnqTfLJdfe9Hg=;
        b=Uvaw1N2BW9yKf4pNrxAYM0q6yp0X0BzaMWWL6SLRc6i2QvFJi1lvJpxSe28AZBZvHz
         R1WoSueyhjC0MINV/+uEOAcUf6TjFwWslnQGp+axpxplPZ1nPa9FNXkghOH2VWGYPvXz
         dqowEOjy4HsPMcx9kzQ7wL9od7zVf6QRpk46xrPWTW9uvEO1litCPBHbC8hL6STTn5Wl
         PtEZtFCgNsFlOWd+b0F+n/W/jFoagExg0fJgq/9Iru7Bo7YIGpVfzaaYkcRXYm4PDoQO
         lkjYARrdOw16r7lkObJilZOx7DyyMTdlgUyNwGfdlrvayXqUbUKR5KXHdAgG7Kdgwm/9
         /Nsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328UI0ZBhsK/vMQ6Tept0KlStI5zFkHX8CLYBLrFvyhLzS9v38n
	5MAkVaXNI8LmH74JKKBOxKQ=
X-Google-Smtp-Source: ABdhPJw5LP0GXbwOPVJUh30IUwZ7Qdz6d6DCXXuoGt4AMW6PJw2L1LD5thkmHnTENUdSJvQ1FqfFhg==
X-Received: by 2002:a63:b11:: with SMTP id 17mr4739985pgl.153.1628903347306;
        Fri, 13 Aug 2021 18:09:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls1072038pfc.2.gmail; Fri, 13
 Aug 2021 18:09:06 -0700 (PDT)
X-Received: by 2002:a63:2214:: with SMTP id i20mr4615222pgi.131.1628903346763;
        Fri, 13 Aug 2021 18:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628903346; cv=none;
        d=google.com; s=arc-20160816;
        b=YJ8Jdgb6N3ooWzs86Bc9/huWfG+t0vgShYFd8mPh0dbhN65bgibu56Nc3X40Kuv/DT
         ZUs4kI1B1TFO4+fTCLuL5pKhISP7W+GCPhU9sCUCYuEKebRAq1U0ddhStvDBsqBO8aKi
         yhXyQ/ArTsvaC2WIwgUHWqDQEwEmQE81F+YW0eKbEV79JkcKKNfKMs80BrGzs3xg8lWx
         pBGZH6Yv+gAyVE4ywbA4oFfZW4Nd33pF2hkny9Clp3FFpwbvqBhcNzjpIimH8rD+hZiJ
         VnQl/lJkI3fOx5FIUdzzHuR7sAx9mXwGXJDrGtlnkQHGAfe6CaIRkB0aMIRhPnb3g4ul
         eY8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sU45yahTVzhwcAJLRJ6/qgokw662qpCcP0YElj7i6o8=;
        b=z/IirWwvS5wVpHYoSGNfffApu/GT+X1hpghGCby2/7wkiaiJXGuw3HzTsPj3EkTKmQ
         3FZ2O77TxVqZZxeU+iiG3VgX6ObIO7WsnbYQok2SuASA96PNZ9npioc/eJ4EjsivLrQR
         msrNSEC/kfr2ohTaGK2jfPGQBKVtytZtYQaPlng60blwnp7zjusndUB9Atdy9c2RN3U7
         Nf+EZZ3seg7n99J92ggRS1Mzeq4sh063985cfApEzuyqqysUtiBBmWfyDs0xrRogcch2
         A3VKMdmRjfYd8qF4aZaarCo3wZ192asd369z9c7bXjg8KGvepXT+yWW92Sp72U4npvwL
         ptlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MNhjakI1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si142655pjs.3.2021.08.13.18.09.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD825610FA;
	Sat, 14 Aug 2021 01:09:05 +0000 (UTC)
Date: Fri, 13 Aug 2021 18:09:03 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [block:io_uring-fops.v6 58/64] io_uring.c:undefined reference to
 `__compiletime_assert_833'
Message-ID: <YRcXr8o56PIYHY27@Ryzen-9-3900X.localdomain>
References: <202108140731.bUZsdUjG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108140731.bUZsdUjG-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MNhjakI1;       spf=pass
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

On Sat, Aug 14, 2021 at 07:11:36AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-fops.v6
> head:   4e0c34c9b129fe84c63d3f76053d2e55d944e8a9
> commit: 834d3e42c71acf4653f840ac3998f8601f37021c [58/64] io_uring: add infrastructure around io_uring_cmd_sqe issue type
> config: s390-randconfig-r033-20210813 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=834d3e42c71acf4653f840ac3998f8601f37021c
>         git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
>         git fetch --no-tags block io_uring-fops.v6
>         git checkout 834d3e42c71acf4653f840ac3998f8601f37021c
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
>    coherent.c:(.text+0xc4): undefined reference to `memunmap'
>    s390x-linux-gnu-ld: coherent.c:(.text+0x1c4): undefined reference to `memunmap'
>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
>    coherent.c:(.text+0x2b4): undefined reference to `memremap'
>    s390x-linux-gnu-ld: coherent.c:(.text+0x564): undefined reference to `memunmap'
>    s390x-linux-gnu-ld: fs/io_uring.o: in function `io_uring_init':
> >> io_uring.c:(.init.text+0x30): undefined reference to `__compiletime_assert_833'
> >> s390x-linux-gnu-ld: io_uring.c:(.init.text+0x4a): undefined reference to `__compiletime_assert_835'
>    s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
>    fsl-edma.c:(.text+0x1bc): undefined reference to `devm_ioremap_resource'
>    s390x-linux-gnu-ld: fsl-edma.c:(.text+0x40a): undefined reference to `devm_ioremap_resource'
>    s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
>    idma64.c:(.text+0xc6): undefined reference to `devm_ioremap_resource'
>    s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
>    xillybus_of.c:(.text+0xc4): undefined reference to `devm_platform_ioremap_resource'
>    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
>    cistpl.c:(.text+0x1d6): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
>    cistpl.c:(.text+0xb10): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0xbbe): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0xf4e): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0xf8c): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_init':
>    timer-of.c:(.init.text+0x576): undefined reference to `of_iomap'
>    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_exit':
>    timer-of.c:(.init.text+0x17ba): undefined reference to `iounmap'

Grabbing Nick's patch [1] to support the error function attribute turns
this into:

fs/io_uring.c:10531:2: error: call to '__compiletime_assert_833' declared with 'error' attribute: BUILD_BUG_ON failed: offsetof(struct io_uring_cmd_sqe, user_data) != sqe_offsets[1].user_data
        BUILD_BUG_SQEC_ELEM(sqe_offsets[1].user_data,   __u64,  user_data);
        ^
fs/io_uring.c:10528:2: note: expanded from macro 'BUILD_BUG_SQEC_ELEM'
        __BUILD_BUG_VERIFY_ELEMENT(struct io_uring_cmd_sqe, eoffset, etype, ename)
        ^
fs/io_uring.c:10489:2: note: expanded from macro '__BUILD_BUG_VERIFY_ELEMENT'
        BUILD_BUG_ON(offsetof(stype, ename) != eoffset); \
        ^
./include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
        BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
        ^
note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:17:1: note: expanded from here
__compiletime_assert_833
^
fs/io_uring.c:10532:2: error: call to '__compiletime_assert_835' declared with 'error' attribute: BUILD_BUG_ON failed: offsetof(struct io_uring_cmd_sqe, personality) != sqe_offsets[1].personality
        BUILD_BUG_SQEC_ELEM(sqe_offsets[1].personality, __u16,  personality);
        ^
fs/io_uring.c:10528:2: note: expanded from macro 'BUILD_BUG_SQEC_ELEM'
        __BUILD_BUG_VERIFY_ELEMENT(struct io_uring_cmd_sqe, eoffset, etype, ename)
        ^
fs/io_uring.c:10489:2: note: expanded from macro '__BUILD_BUG_VERIFY_ELEMENT'
        BUILD_BUG_ON(offsetof(stype, ename) != eoffset); \
        ^
./include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
        BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
        ^
note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:25:1: note: expanded from here
__compiletime_assert_835
^
2 errors generated.

Is this a legitimate failure? I do not see this with GCC 11.2.0.

[1]: https://reviews.llvm.org/D106030 + https://lore.kernel.org/r/20210802202326.1817503-1-ndesaulniers@google.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRcXr8o56PIYHY27%40Ryzen-9-3900X.localdomain.
