Return-Path: <clang-built-linux+bncBCYIFQES4IBBBY4E2OEAMGQET22WT2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4503E9EB0
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 08:40:36 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id s1-20020a0565122141b02903bf02f21443sf1595285lfr.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 23:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628750435; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7u9eaQYSqGp/zCJTb6gA4a9n0rXcuuaeyjswMQC4LeddX/gYGVd4ucoT8iFoho4zi
         oL0psEKhqUU0N+X0xztMr9m+nfeDr1qSGMzefVJgMC2kGk+Bi5gCGUbW2oVL/DFp2A6j
         28Tz77/p36WXQ5gkPbq6V5ABuSUjcwjikr3SkNqARsLykQmmJofcycLoxugKFoILoYN7
         SisWrfGegqXZVjfVpwBNIA3BPohe7CTYNSozsfjbywMdES7Hp+/0XJlh/08tiYTNu6jf
         V0SUxqXepXMtOXxiKqW5dpHPWUj8/3++t25mF/1N0d3MEqIyTNw8xmKhflcbJ8LHSK8f
         ObpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=G+LyTtZyTkiz190wh3ODeB2VEIECKPHVDCiHcyUvGU4=;
        b=W19oVQr04PT7W2xijh5l5pg5cvslUP3bQaBTnR5VyKvJyYC+JQ+w3qlUS3lfpHezAG
         4ZHdvzE2cNs2btwR7mcxuYRsDKKHx60WTfHbBpyzMj8ZCWbUG3EuFsZL/wYIoYEuoSFX
         MVUtrf2bmg1relbvQRMXej9rs0mskAfT12uaiibpS9d2YcMr5JmImqFZhP1HHi1GR8DK
         HKEfuxRmEp5SILfxhmiTaRxw6kz7zIigbBDM5uUlUdD3lnrOZWThOdN6dS0UywK80rmX
         BexcRwTUt1SqMWnAveKsw94yZR04STJfjG9E7Pm7xAHBQTvlQa78GpfSc6xi48qkfQih
         5N9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BZR2HXeM;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+LyTtZyTkiz190wh3ODeB2VEIECKPHVDCiHcyUvGU4=;
        b=PNbNA5DvcihKC55sOh3amn2aUXWa0nC5EGd5aLzwnSZjiUqcW0vSpoBD0Xfr7xxPzd
         U0IaMyRsgecvAfE/DaQEedHD0iiK60QS0H3lbu2lMZqfoLLpdw4+/Cp7yIftzypPp6s4
         VOhHgvRmEty//R9if2dkYdC/n+U12UW2pMGth9n6BVmZeTtNXJFr3zpClHz3L5T175Ml
         DbxBl8CzXzuaGut6uSBUPQs+ISzKRiF1pDeheHScF8rdzOz0jDl9nbXvfXttQgr+7Uv0
         Cdaa/3l2J1YKCh3cdzPniR9g7VLmJyoqvJ5HWJeSoxQm97tR8mNheW1DpDceyapnPCNw
         qbhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+LyTtZyTkiz190wh3ODeB2VEIECKPHVDCiHcyUvGU4=;
        b=ok8fqmqldDOUIySWK2KuTX0lAKzHs5uq90LVbVDoy7Z7RH2T0vkaXml3oDDlZKDSyf
         vgrsf2ZN2prqQf0N6vVaTcidelqsmyMf9tQEKofgkRMwxfQByzNIcORtBMhn+nn/2b/5
         sXRcA/PgRBtcP2qsfR7KIxlqVWhnomu5whc6vOzrXmtcFwAn/ZqNNYlal8n7dWfHz2ky
         BAgrgJairo6fgTH5D9mhDlQ3bJneHlun2XTsgxlE9TQ2grEBaJmHhlZ+9uUSwy/Zboao
         +ZIniTLHpa/GA8vaD0n/atIiQRwzsnFod6GMl9RvZCaOYS+gTv4xzM6XI34E1Gyw3jlb
         witA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+LyTtZyTkiz190wh3ODeB2VEIECKPHVDCiHcyUvGU4=;
        b=J6JMiyzrp7RW410Qv5fsLw4oWETWa4BeIccN7xoVRKVLiayk60fWKfJdXWRHxtyjrj
         8vlK+VoM+Y+0XkzN11JUIUCOHrgpKkLrGbbQfYsJ5J3ONn/zZWObDb6HeWa4rsIeIcqD
         XgP34DqG6J4QRf7hCnxCfe+ltuqspkOEaC/EDCVAEr3YBoU6zqfxtEBT7kVAyVqOfYAN
         G7H2tFZ0vqMPiDFPe8Mt45DX+m6pfFt3+Gc4FoYfrFIZwF5N5YgKFLeFaoQPIuKxOlPm
         Okp1+dRoEjv+YD8M1zhAe/UlPW7KzH43dZGgPHo8NyOkLUfQDRLTMDB3bfQegAmBUabL
         hFow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rTQj8ReSdv/9BSGjObY8Xz/Mz1BxWpIRySgOuzDksZN6/txa2
	7dTScDUqgNkX+qnGSg/rtWk=
X-Google-Smtp-Source: ABdhPJwR3DYbwKJZrwVxKloOyvwbEpjm0UBasPxibeGIQmTDnaxy4h9JTB+GLb3KB0A6viLhfNApCw==
X-Received: by 2002:a05:6512:b1f:: with SMTP id w31mr1403637lfu.617.1628750435743;
        Wed, 11 Aug 2021 23:40:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3210:: with SMTP id y16ls795882ljy.7.gmail; Wed, 11 Aug
 2021 23:40:34 -0700 (PDT)
X-Received: by 2002:a2e:b8d3:: with SMTP id s19mr1850385ljp.388.1628750434647;
        Wed, 11 Aug 2021 23:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628750434; cv=none;
        d=google.com; s=arc-20160816;
        b=HxlJ4G8XIO0CtFYb6E0k7KRIik1j2VNCpSaeFtYs8QVqVAM2Ottu2+wNBoyeQe6V2W
         c4d5HIqmFuWk1rScBYXgojtLTHBIrSJGNRsHOswTkSjiQd3pl8E3Y6au/y3MRsKFJZ6I
         /0InpiDDHj4c6ySSY9P9QcgeXn4t9rT9vOA3HA6EKN6jYc+leCUEJLNkbazYE8g4q9zj
         sxVJ602r6j9JRMIfcjbr96OAmBDJmpCdt+09LNARkgMCu80QXPOHE1vkvB6tgskHbonb
         nS/qxyWLbnjm340ohVqO8Hy1f3/dfU3JxlmWxw8vH0AwtIExXED9Qxk0ah6B8Xdn6gOf
         jQQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K41j9DktzdPkzZcW4NynOEKUrMsYRmyYnRWzSkHUVqU=;
        b=0+4GHeQNxw1OwjOFIpesqbh80t+ztMNyXcF2XC5iovgqmMzcfLrTogpvwoeMyjKdTF
         xelT53f12yeDLJtMsUpfpMWBh/jlpieGHrBy83yiPaQqDElFYpR5xwZOM8NVeIG8cNIC
         ozl4j3X1xRNUgQIleUFrzwCCb97mGXh4/c6Rd1ON7+0S+MpCVamDz19GuI7lDBHiiwuj
         AL2ZVyE2Aba3aPUv1dy2WHkzc3b2soOSW2CL7ygEe58PTa38xa7bToyKSL8xcoqQXhFb
         IvK5bI6RnSkyKwlTGkqTBaylj967lzx6qUqFmhtpZ0fKSfsxjh3zDgbTObuAs0OmoL6N
         S6iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BZR2HXeM;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id q8si65166ljb.6.2021.08.11.23.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 23:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Received: by mail-wm1-x335.google.com with SMTP id l34-20020a05600c1d22b02902573c214807so6236009wms.2
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 23:40:34 -0700 (PDT)
X-Received: by 2002:a05:600c:5108:: with SMTP id o8mr2232936wms.97.1628750434144;
 Wed, 11 Aug 2021 23:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210715065455.392923-2-zhang.lyra@gmail.com> <202108011431.Nx7sS0uY-lkp@intel.com>
In-Reply-To: <202108011431.Nx7sS0uY-lkp@intel.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Thu, 12 Aug 2021 14:39:57 +0800
Message-ID: <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drivers/clocksource/timer-of: Remove __init markings
To: kernel test robot <lkp@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, 
	Saravana Kannan <saravanak@google.com>, Baolin Wang <baolin.wang7@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zhang.lyra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BZR2HXeM;       spf=pass
 (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::335
 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, 1 Aug 2021 at 14:18, kernel test robot <lkp@intel.com> wrote:
>
> Hi Chunyan,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on tip/timers/core]
> [also build test ERROR on linux/master linus/master v5.14-rc3 next-20210730]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Chunyan-Zhang/Add-module-build-support-for-timer-driver/20210715-145711
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 2d0a9eb23ccfdf11308bec6db0bc007585d919d2
> config: s390-buildonly-randconfig-r003-20210728 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://github.com/0day-ci/linux/commit/8e3c2c4da32affdbca933979110050e564351c84
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Chunyan-Zhang/Add-module-build-support-for-timer-driver/20210715-145711
>         git checkout 8e3c2c4da32affdbca933979110050e564351c84
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_attach':
>    main.c:(.text+0x21a): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: main.c:(.text+0x270): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_detach':
>    main.c:(.text+0x478): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: main.c:(.text+0x4d4): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/tty/ipwireless/main.o: in function `ipwireless_probe':
>    main.c:(.text+0x70c): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: main.c:(.text+0x83e): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: main.c:(.text+0x8b6): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: main.c:(.text+0x93a): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
>    xillybus_of.c:(.text+0x9a): undefined reference to `devm_platform_ioremap_resource'
>    s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `check_mirror':
>    arc-rimi.c:(.text+0x5c): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: arc-rimi.c:(.text+0xc2): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `arc_rimi_exit':
>    arc-rimi.c:(.exit.text+0x44): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/net/arcnet/arc-rimi.o: in function `arcrimi_found':
>    arc-rimi.c:(.init.text+0x37c): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x3c8): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x614): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x674): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: arc-rimi.c:(.init.text+0x6de): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_probe':
>    fmvj18x_cs.c:(.text+0x756): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x788): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x7e0): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_detach':
>    fmvj18x_cs.c:(.text+0xce0): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/net/ethernet/fujitsu/fmvj18x_cs.o: in function `fmvj18x_get_hwinfo':
>    fmvj18x_cs.c:(.text+0x27d4): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: fmvj18x_cs.c:(.text+0x2940): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
>    cistpl.c:(.text+0x9c): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
>    cistpl.c:(.text+0x46c): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0x4a8): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0x4e6): undefined reference to `iounmap'
>    s390x-linux-gnu-ld: cistpl.c:(.text+0x4f8): undefined reference to `ioremap'
>    s390x-linux-gnu-ld: drivers/crypto/ccree/cc_driver.o: in function `ccree_probe':
>    cc_driver.c:(.text+0x5a8): undefined reference to `devm_ioremap_resource'
>    s390x-linux-gnu-ld: drivers/crypto/ccree/cc_debugfs.o: in function `cc_debugfs_init':
>    cc_debugfs.c:(.text+0xac): undefined reference to `debugfs_create_regset32'
>    s390x-linux-gnu-ld: cc_debugfs.c:(.text+0x190): undefined reference to `debugfs_create_regset32'
>    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_init':
>    timer-of.c:(.text+0x104): undefined reference to `of_iomap'
> >> s390x-linux-gnu-ld: timer-of.c:(.text+0x306): undefined reference to `iounmap'

Seems TIMER_OF should depend on HAS_IOMEM, but this error is not
related with changes in the above patch?


>    s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_cleanup':
>    timer-of.c:(.text+0x5f2): undefined reference to `iounmap'
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAfSe-vY9bkLb7Q2Tn%3D2ug6pau9VHkfZyvmoQNMqeKmxfquOHg%40mail.gmail.com.
