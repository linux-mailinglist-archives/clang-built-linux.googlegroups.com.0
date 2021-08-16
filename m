Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONY5KEAMGQE63GOIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7873EDC1C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:11:21 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id y206-20020a1c7dd70000b02902e6a442ea44sf7618854wmc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 10:11:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629133881; cv=pass;
        d=google.com; s=arc-20160816;
        b=YksBGXb5x3Tk74iJyAYC3lLAFE6Ger67OzWSqYiXryLnh4Su4dfKv/vPnK3cYL5fky
         BNwZMP0NiCG4GUYLoX8kC7ZGUb9HCexRMMxpNkYmObVfE2QFvqLMOostyYjZ+P5IzBlm
         SRmgwdV5GYl8qb2/XggOvB8UQOIqmw3e9gBaJlUKMWsfbLJhNuvLEqv8NyiwpzrquA7R
         bvPjgjB+klODtHGlnhkVARfPZnPxmbx7RE3ryFG5X1U7Hpdkg0c4ZQ7kxZpv1YRa6vmf
         RtO+xCICYkHhcVfUkXHFrkkwkWVUIW+aXwY6Yk2EwYdgVZESLVi/+KyV91T0cDknlwF3
         nH6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bj2tCS8CvGy4zecfz8LaYuJ/k/KwDF4Eu/jZ2CqnA3Y=;
        b=S7Yg37YHDuOZUKyFROsNPMEfo66mCP1iBJIy5uDqEgzEDHh6GYaKtOPVd+OGGIzd/9
         yrRmqweann9youpARoZx3W9AEdoRm3VgYxextDBHytLLlSxx9YdF/SVwH09m5hKMCqSF
         QPrYyn+V94V9V/2t6fakuL76nmnONl77G+b4seKYcATt/dM90CcoyKljnEvdKQyii2C/
         0YsipzVIVPcxiXSBkYbOMloESBHN8RhdYh1MXdlNrvs9X6ZXtsGp65fiBHxnTcsHWgF/
         YFCkDJlPNacw5d+p57OTZE0BvsklgL62I/gQh2xZxBjlrx9p8Kpb01sQBBAZd0MKOd/9
         2+BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GUS5uGzP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bj2tCS8CvGy4zecfz8LaYuJ/k/KwDF4Eu/jZ2CqnA3Y=;
        b=E1KGP9S/zNNpMSrGFq/eJLYWtfxeMgwJBJqO21W7sWUu2Gexh+Iillmg/GSRRBdefV
         SToUZnFXQQBbQfsGTpOXuNcTPSmQ9o/TcedBfRahn+FrOP9PFlA/4JtDIX/rTnQ0/0zy
         odguaUZ8qpdPVmlG134Hags3WOM3otb5i8iX5tj/HoDl05NGKTn3Q9uZUQTOjrCgK1xg
         pQfpPZ1pPAL7RRyo+hCrQy2cjDrTrEQrvUdOttvjFqt0p8y3SU7J4Hc0yH3/H0dQFrdo
         Up8wlPUUgvFr41gMJU/hc99J/tkujE82V0HLhmkd6mbiFYRVuZHk1CcT1CvXY9sr2wJ3
         r3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bj2tCS8CvGy4zecfz8LaYuJ/k/KwDF4Eu/jZ2CqnA3Y=;
        b=gTKW0LMh+uzH+jUlQABbX1mdJ+zI6YsLyWxWe30Nq4qjyonEFyVbwqabsX8DoTDIsK
         TYbxMze2/LjqjGqDaqUVFhCxq7PLZ3xA9SfCrg6oPD+svQ2j6FthDLLGOd6/h86Rjm4m
         NqL++vX+zpXfMmgotRbec/oHxN5kX3reFRiXd7AQ3DyPuxd3p9iBKw5Hdv6eZLNjzsNH
         bHJcl5pPcTKbNIqEryKgUWjm1hWT8wxRMaU7JUVnrkfCypJmgPvAQ7YShOgZPLzCISJt
         oEWeb2nYHl5+F8OL8g5srI28k7ggUl5lZ4Hsyb/BQErVaZZ1nnn8IgE5Grb/cudGg7wS
         NPpg==
X-Gm-Message-State: AOAM532/BhHkjiqrooSbTGxJ+/TQ5wqmO08SuJCszkWpgik6E5qo4gaK
	EjeHwP5w0G6fZggWLkt7DFY=
X-Google-Smtp-Source: ABdhPJyKL4lMFrDiOunBlIJNTaP5RzhGhIg78oMo+SIZ4/dd2H5V312jlM7J1kZyliyg4+axEqjYtA==
X-Received: by 2002:a05:600c:3593:: with SMTP id p19mr110325wmq.95.1629133881490;
        Mon, 16 Aug 2021 10:11:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls35379wmc.3.canary-gmail; Mon,
 16 Aug 2021 10:11:20 -0700 (PDT)
X-Received: by 2002:a05:600c:3581:: with SMTP id p1mr127507wmq.1.1629133880504;
        Mon, 16 Aug 2021 10:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629133880; cv=none;
        d=google.com; s=arc-20160816;
        b=TzJ26cN1Vto0m87FTAlV8mzXxH3T2NouXBmD9O9PvTjnPoADLxiheTMqdYK9MOP4u1
         XxBe5k01LdvP1tZJ6gHCWhPrdjfB6bKqDPvS9WMnT6P0j5gzelLWYnzY4MdpdHaCVkAh
         VnemB2VKaiVcMIfQIu7hUABxlR7oD7RktvOK9k8K1NXV1HyGIZrO0AOrXXHa0sRoTB8o
         Xc606SnpaHJ1iCh+t328bMVyitM3605oMd/nyE9CTl8XHxoHM0ACFJKy0H/R98WRlx7v
         3k6b+17UnxQSdeAnvrcJHEipnns63q9a6oakh2KaZoOFHKA+66uSFz2Fq8Mr5KL4I+vI
         YcLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I+5s2IjYCm9VNRG19z4wqzmijC97Yf/esoVK52Hxj6E=;
        b=gyZJ2fF1ket+/KtORjiE7U+RkciuQWOQmjt2Y1ABNc1KupYc72+nJuw2UsGkgys2ss
         CzMMNSaq5OfdXCpnLuwTOhlaZgC6sCH01PX5vCG3Tfw8ALE3p7z/y6t1XcJJDZQ/O8dJ
         10WrNE9kGZAN/t0RYeFWzeX3q+4oCeDYAVfjDtC2/E23T1MtMRAkmMAtOUuUR+qvUxIA
         chng+I+4tIPpw5gcqBmG7WhW9YTppNsZMOH6g2XCBAMrzmEoOCzRaJRvdzcF7a5bgJ2J
         7LZu0ez5Y8sjILXOojXgWEdTWTaeRmD9tEpMWRymMWu9Rf9aJ1Ny+vaMXSyBHE//HbXG
         Ol3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GUS5uGzP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id w3si40325wmk.1.2021.08.16.10.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 10:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id x7so28288847ljn.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 10:11:20 -0700 (PDT)
X-Received: by 2002:a2e:9ec1:: with SMTP id h1mr13469111ljk.0.1629133879847;
 Mon, 16 Aug 2021 10:11:19 -0700 (PDT)
MIME-Version: 1.0
References: <202108140731.bUZsdUjG-lkp@intel.com> <YRcXr8o56PIYHY27@Ryzen-9-3900X.localdomain>
In-Reply-To: <YRcXr8o56PIYHY27@Ryzen-9-3900X.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 10:11:08 -0700
Message-ID: <CAKwvOdnD=s-FnoL-EOmLSeywEEYfULnkmbiEpyNKQkgVRxnhog@mail.gmail.com>
Subject: Re: [block:io_uring-fops.v6 58/64] io_uring.c:undefined reference to `__compiletime_assert_833'
To: Nathan Chancellor <nathan@kernel.org>, Jens Axboe <axboe@kernel.dk>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GUS5uGzP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Aug 13, 2021 at 6:09 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Sat, Aug 14, 2021 at 07:11:36AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-fops.v6
> > head:   4e0c34c9b129fe84c63d3f76053d2e55d944e8a9
> > commit: 834d3e42c71acf4653f840ac3998f8601f37021c [58/64] io_uring: add infrastructure around io_uring_cmd_sqe issue type
> > config: s390-randconfig-r033-20210813 (attached as .config)

^ Note: 390 randconfig. Not sure if that could have changed the offset
of some members?

> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build
> >         # apt-get install binutils-s390x-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=834d3e42c71acf4653f840ac3998f8601f37021c
> >         git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
> >         git fetch --no-tags block io_uring-fops.v6
> >         git checkout 834d3e42c71acf4653f840ac3998f8601f37021c
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
> >    coherent.c:(.text+0xc4): undefined reference to `memunmap'
> >    s390x-linux-gnu-ld: coherent.c:(.text+0x1c4): undefined reference to `memunmap'
> >    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
> >    coherent.c:(.text+0x2b4): undefined reference to `memremap'
> >    s390x-linux-gnu-ld: coherent.c:(.text+0x564): undefined reference to `memunmap'
> >    s390x-linux-gnu-ld: fs/io_uring.o: in function `io_uring_init':
> > >> io_uring.c:(.init.text+0x30): undefined reference to `__compiletime_assert_833'
> > >> s390x-linux-gnu-ld: io_uring.c:(.init.text+0x4a): undefined reference to `__compiletime_assert_835'
> >    s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
> >    fsl-edma.c:(.text+0x1bc): undefined reference to `devm_ioremap_resource'
> >    s390x-linux-gnu-ld: fsl-edma.c:(.text+0x40a): undefined reference to `devm_ioremap_resource'
> >    s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
> >    idma64.c:(.text+0xc6): undefined reference to `devm_ioremap_resource'
> >    s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
> >    xillybus_of.c:(.text+0xc4): undefined reference to `devm_platform_ioremap_resource'
> >    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
> >    cistpl.c:(.text+0x1d6): undefined reference to `iounmap'
> >    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
> >    cistpl.c:(.text+0xb10): undefined reference to `ioremap'
> >    s390x-linux-gnu-ld: cistpl.c:(.text+0xbbe): undefined reference to `iounmap'
> >    s390x-linux-gnu-ld: cistpl.c:(.text+0xf4e): undefined reference to `iounmap'
> >    s390x-linux-gnu-ld: cistpl.c:(.text+0xf8c): undefined reference to `ioremap'
> >    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_init':
> >    timer-of.c:(.init.text+0x576): undefined reference to `of_iomap'
> >    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_exit':
> >    timer-of.c:(.init.text+0x17ba): undefined reference to `iounmap'
>
> Grabbing Nick's patch [1] to support the error function attribute turns
> this into:
>
> fs/io_uring.c:10531:2: error: call to '__compiletime_assert_833' declared with 'error' attribute: BUILD_BUG_ON failed: offsetof(struct io_uring_cmd_sqe, user_data) != sqe_offsets[1].user_data
>         BUILD_BUG_SQEC_ELEM(sqe_offsets[1].user_data,   __u64,  user_data);
>         ^
> fs/io_uring.c:10528:2: note: expanded from macro 'BUILD_BUG_SQEC_ELEM'
>         __BUILD_BUG_VERIFY_ELEMENT(struct io_uring_cmd_sqe, eoffset, etype, ename)
>         ^
> fs/io_uring.c:10489:2: note: expanded from macro '__BUILD_BUG_VERIFY_ELEMENT'
>         BUILD_BUG_ON(offsetof(stype, ename) != eoffset); \
>         ^
> ./include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
>         BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>         ^
> note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> ./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
>         __compiletime_assert(condition, msg, prefix, suffix)
>         ^
> ./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
>                         prefix ## suffix();                             \
>                         ^
> <scratch space>:17:1: note: expanded from here
> __compiletime_assert_833
> ^
> fs/io_uring.c:10532:2: error: call to '__compiletime_assert_835' declared with 'error' attribute: BUILD_BUG_ON failed: offsetof(struct io_uring_cmd_sqe, personality) != sqe_offsets[1].personality
>         BUILD_BUG_SQEC_ELEM(sqe_offsets[1].personality, __u16,  personality);
>         ^
> fs/io_uring.c:10528:2: note: expanded from macro 'BUILD_BUG_SQEC_ELEM'
>         __BUILD_BUG_VERIFY_ELEMENT(struct io_uring_cmd_sqe, eoffset, etype, ename)
>         ^
> fs/io_uring.c:10489:2: note: expanded from macro '__BUILD_BUG_VERIFY_ELEMENT'
>         BUILD_BUG_ON(offsetof(stype, ename) != eoffset); \
>         ^
> ./include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
>         BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>         ^
> note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> ./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
>         __compiletime_assert(condition, msg, prefix, suffix)
>         ^
> ./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
>                         prefix ## suffix();                             \
>                         ^
> <scratch space>:25:1: note: expanded from here
> __compiletime_assert_835
> ^
> 2 errors generated.
>
> Is this a legitimate failure? I do not see this with GCC 11.2.0.
>
> [1]: https://reviews.llvm.org/D106030 + https://lore.kernel.org/r/20210802202326.1817503-1-ndesaulniers@google.com/
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnD%3Ds-FnoL-EOmLSeywEEYfULnkmbiEpyNKQkgVRxnhog%40mail.gmail.com.
