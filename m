Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7PNSWEQMGQEFK2MBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 862B53F6BDE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 00:47:26 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id 30-20020a9f2621000000b002b072e86b81sf125046uag.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629845245; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcNBCLQyoVmJridQ2Zhfhnjs78tR/kHX+O7QYGVVvdT7MA1LLKKuplpkzs2BItdZnW
         N145GMssNKHJxjhMe4GWFz0hkZH65NyVGsECOCUGBOpvdYfVEjq4xSXNU7KTGs3l1MRO
         gn58TqzQIxQt6gVFqe317gi8LGZS9mxtBTYvBCHWPeh4FwUacRypXeSmvSsgSfU5l1wT
         8Jk6kwg6L2OCtvxaDq6/MKZ5yIrvJkJyrNDwuabL3w63UPLs8EqIUNd0GWd7y05wTqiI
         +hsBRXwu05OJAmao8/ouh6IEIiye2HcYbRXkNYkGSLOeSvRDwPS9o0Bq4deswFX4O0R7
         avWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ilD+ZQ+lEOMWj6VvYpu9Ysg23GvOu1HwVV8+Zm5RWSA=;
        b=ASZ5VrQIznnTa+nhRxUqVyrB6amOLoV5SIlJclov1y8OhSgoNaOx35JbiyuFtjZ8BL
         fyWpuKMzSgrIWtdFqeQNWA7fVzFalVbTKQb5WiPmz+oK+C7kcZDQRIC+Z3Jgll84wTaN
         3TATuT56tNpIXcrRe5DBaGrLrD+Cne9PnKft3D2lS/ApIGnMo88XQHnGHv9LdUsIOvDT
         nraxZaVSzK1HEbPdG1QwwSJqaPwF8+03bkt2zS4TCQFZxSFLWre6QtB+Vi1gzTKeHS+I
         noxBirrhrLbY16B2PKCURyFvjVwfjjbegqDLfXBlX6x+fYVkfRdNfgNba7rkDYr/KQlZ
         5HEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ilD+ZQ+lEOMWj6VvYpu9Ysg23GvOu1HwVV8+Zm5RWSA=;
        b=Fbmq9noN2m1XjxeGTgS0MmP580qU5b0J0w72dxoHoTEUdfiX/ZRZ+ERnAHAX6ek/XC
         ixjW5FqXypCNiAIuKPGKXGwyhgUGNwMF5gIHkXhdIQ3d7NpdgiUuUgDp9maZnTVBsuN3
         Ht2JHd94SW751fEtV7Lmv04dmXlYvT8dZv8ZHqf8rxCGDDowBrclfT1oA76sw39o2UeZ
         i+vwZqZrJQbT4f0dy9w/iXsiaOwM89tyI2RTA++bvHMxZGWxt0z3zB5VBHjr2CFFDiKN
         txDNHZIroDN3iv+nIpY5uUhNqmzztoUrsbbXPc9cV4mW82FkSw1hAVL474n9+uIf9z+e
         IOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ilD+ZQ+lEOMWj6VvYpu9Ysg23GvOu1HwVV8+Zm5RWSA=;
        b=MCIXP8aB/HJljxpNymSqfuI8kk9twdBxy7AzdPtM5vS+JWaFANSnUANjk/Qj3d6LlB
         nsbd1eMH5i4ie2GvUNfcnt9Kfzi5Ii9kWulnPo1+rv1H4Vk1QgXO44J6/4qbynvtOSlG
         p8kg4Jz0eVI4OEndqq3HsLCneWals8ihLUq9LSP/W/xgG30rmUDprzCXadC9JwRx3RA2
         /yib08FvleVuS5Dbh3lo2IIlim4bmFA4FawAFuEz2oSx/QHqQMi78Z04dgCpuGERGNeu
         V94gyxCL8Fu+kNcDhPjaSJhYsz0/qwrpXbhgfUroxNgMiM1H4MeCV/0ZUt1zeFPkavu/
         N5ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313+O244xe7UhZXCJofuQ/putcWZfOnOeA82b81nfcY6sp+aMcy
	WpcjtinWD6bYvZmk1UDkWY8=
X-Google-Smtp-Source: ABdhPJyd2sGedUlg/D7Z1Fa1wtUwDtiejwjvAViwflh5pjjaCOi8E8N5rZAsVAzUlm1ZrU+fGmIZhA==
X-Received: by 2002:a1f:9947:: with SMTP id b68mr24889586vke.9.1629845245303;
        Tue, 24 Aug 2021 15:47:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b617:: with SMTP id g23ls35285vkf.5.gmail; Tue, 24 Aug
 2021 15:47:24 -0700 (PDT)
X-Received: by 2002:a1f:1bcf:: with SMTP id b198mr13823302vkb.25.1629845244586;
        Tue, 24 Aug 2021 15:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629845244; cv=none;
        d=google.com; s=arc-20160816;
        b=Ujxj9TfPMFZGNkoO/jxDJLzmOueWUm9qdLGAsOIjM2cai2dVsYlqdLtoEFmd63X15K
         oGQng0/bkHHadmDrN1rsfEHlC9WcAqJukI/GJ75aMzruRF5gkylnKzwKx4Zs7CLCUAlg
         juemto9YQiASIo4L2xfqczc9AIvBpeYc43ADN8weWtOXcWAiyhkENcZMZ+2G+cVyvbaO
         l81oX0ugqz6Ov4HamNe+l+w+Y7cRHjBsb5d7eZVEUbmJbJZ2DoiUYAr0Q/XQMU6BVswL
         G7yd7bxmZpMJq+ltxf6A5b9VXX+qyLVrCWEKNRw9/KCcCGCIxkWzfb46O4fEbNVFloko
         /Usg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=8W6uurTQ9wAYuIVbnDREzkhv24yyL2mll8sV8E50u3U=;
        b=VsNUciT+hccuYkGQVnMpRA/JGUBaUwzu0G+PpviZ859MeC1QnBPhhVkz6hOUChHoS2
         fTo4swaM9NXDyZrIF7F0VL2l3SQyG11nlt4iWJM0BQJQWWZX2xmBNtt2ODg03DT2j61t
         EyFsXBYsZ3X2pUTFnSIN3KyRezjEMqpjSpGPCXgCNwNIHkLL/h0yoVm498IdavfeoTVT
         JQSPcefWlHsdT4SnKZOi48bfpEnYM4KdxMwV6yCZcM67+B90d9X0vd0ZvFJYLflVtPuQ
         42zwLf39bAAmI/xdV5bGyRMCcIYcle/JQkmYG4ClsL8jZ02v23tO59hyXxASuUMGE24Z
         GxGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id u14si11729vsn.1.2021.08.24.15.47.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 15:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204546156"
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; 
   d="gz'50?scan'50,208,50";a="204546156"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 15:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; 
   d="gz'50?scan'50,208,50";a="455780075"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 24 Aug 2021 15:47:18 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIfCP-0000v2-VS; Tue, 24 Aug 2021 22:47:17 +0000
Date: Wed, 25 Aug 2021 06:46:16 +0800
From: kernel test robot <lkp@intel.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>
Subject: [ulfh-mmc:next 41/47] drivers/mmc/core/pwrseq_sd8787.c:77:34:
 warning: cast to smaller integer type 'u32' (aka 'unsigned int') from 'const
 void *'
Message-ID: <202108250606.HIq1zZbS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git next
head:   fe72d08a961f9e09a7b04c15904a98f7c8cd537e
commit: b2832b96fcf50270d69dae3f95bf14949ff638e4 [41/47] mmc: pwrseq: sd8787: add support for wilc1000
config: powerpc64-randconfig-r014-20210824 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git/commit/?id=b2832b96fcf50270d69dae3f95bf14949ff638e4
        git remote add ulfh-mmc git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git
        git fetch --no-tags ulfh-mmc next
        git checkout b2832b96fcf50270d69dae3f95bf14949ff638e4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:15:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/core/pwrseq_sd8787.c:23:
   In file included from include/linux/mmc/host.h:18:
   In file included from include/linux/keyslot-manager.h:9:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:17:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/core/pwrseq_sd8787.c:23:
   In file included from include/linux/mmc/host.h:18:
   In file included from include/linux/keyslot-manager.h:9:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:19:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/core/pwrseq_sd8787.c:23:
   In file included from include/linux/mmc/host.h:18:
   In file included from include/linux/keyslot-manager.h:9:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:21:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/mmc/core/pwrseq_sd8787.c:23:
   In file included from include/linux/mmc/host.h:18:
   In file included from include/linux/keyslot-manager.h:9:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:23:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/mmc/core/pwrseq_sd8787.c:77:34: warning: cast to smaller integer type 'u32' (aka 'unsigned int') from 'const void *' [-Wvoid-pointer-to-int-cast]
           pwrseq->reset_pwrdwn_delay_ms = (u32)match->data;
                                           ^~~~~~~~~~~~~~~~
   13 warnings generated.


vim +77 drivers/mmc/core/pwrseq_sd8787.c

    65	
    66	static int mmc_pwrseq_sd8787_probe(struct platform_device *pdev)
    67	{
    68		struct mmc_pwrseq_sd8787 *pwrseq;
    69		struct device *dev = &pdev->dev;
    70		const struct of_device_id *match;
    71	
    72		pwrseq = devm_kzalloc(dev, sizeof(*pwrseq), GFP_KERNEL);
    73		if (!pwrseq)
    74			return -ENOMEM;
    75	
    76		match = of_match_node(mmc_pwrseq_sd8787_of_match, pdev->dev.of_node);
  > 77		pwrseq->reset_pwrdwn_delay_ms = (u32)match->data;
    78	
    79		pwrseq->pwrdn_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_LOW);
    80		if (IS_ERR(pwrseq->pwrdn_gpio))
    81			return PTR_ERR(pwrseq->pwrdn_gpio);
    82	
    83		pwrseq->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
    84		if (IS_ERR(pwrseq->reset_gpio))
    85			return PTR_ERR(pwrseq->reset_gpio);
    86	
    87		pwrseq->pwrseq.dev = dev;
    88		pwrseq->pwrseq.ops = &mmc_pwrseq_sd8787_ops;
    89		pwrseq->pwrseq.owner = THIS_MODULE;
    90		platform_set_drvdata(pdev, pwrseq);
    91	
    92		return mmc_pwrseq_register(&pwrseq->pwrseq);
    93	}
    94	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108250606.HIq1zZbS-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
DEhtkk8fJz+/ZEMDOiRndrMNzMdJzKcpjOmo7WBOp5t5wYausUnOJwueTWKOjMwFn6jbIbr6
Vbuuzi8mar/6ODUUV+dnk+26mv2yystPM/dz4Ou4wnqO31nfnp5NtgpQpzZKNGGa2iBdkTeX
GjE1kRp/zpc32SPOx8PEX/DleTtKI6ZGd+jYRANPZxNwb4kty/Sy5y6/A7Kzi6JMhSWIvz44
jLPWfhYYMSA0djX3sjyQ1CVch0XBfr6t0yxLeXtUTTQXsUPiEtRxvOSKhxMmA3H+yKdp0aXt
xDik3FC0Xb2UiZ2t2txDfkB2RRryquS07NeWQaulvJIRZfa3b8/oO+IlFV3G28Y88LYoDV93
MWrObIULhjoHyQ8D1gIZ5ik0r0fyHhNHfoF9tIDrUlyTM6El1yGSLh5pKJFsx/VtFbN8NmSL
2NZpyD4gjTopB2Id4ro8dfoxmEq0RgKdhViB2CzqKC6gf3iXQkG+x8yUoZBixNBYj4yXxUHG
x+uWfKDie42qn5CKyWHaZaj54+PTlnm55TbQQCGqSkBxdghrFwl9aLg3MJ/Q0/RMkChNyS+m
1/kGJrsBNv6Lj7JSRI7ZvEuCvrjMHDciQaNUSg7ClRsuo3JdYASHX7QA+MJEms9BC+U+Gc5l
C9J5IVB/fexTslm2rlspm9o4XhnPsPCjR2kTxMWuM9OfECKKpCxqpnFXd4WjK8Uj4sMewYh9
fvdj93CHEXze4x93j38/vP+5u9/Br93d0+Hh/cvu6x4+Ody9Pzy87r8ha3q/e3raPd8/Pr9/
2f84PLz98/7lfgcFvD7eP/58fP/n09d3kpct988P+x8n33fPd3tyEhx5mkqVAYX8PDk8HDDE
xuH/diq0kBalQ1zgdFHvVwJ9olNMnNW2IOsbAjdHdRPXpT2VAEQT8SWwsYnMKwYNMAxdETvj
FiFbFxr1ItcZpqKcLAljfsNpZlCaJ8TEGGn09BAPUcjcA2XQAMMGJhWZcXmQmbHtcIYSBred
sNq60I0V/o5A1bULwYzZF3AahOXKRWEObpU0rLrGRxs7qbtHhG32qOg8Kwd1zfPPp9fHk9vH
5/3J4/PJ9/2PJzMKlySGyZlb6e0s8JkPj0XEAn3SZhmm1cJKQmkj/E+QjbNAn7Q29ZYjjCUc
roFewydbIqYav6wqn3ppvtvqElCf7JOCbCXmTLkK7n9AilBD4rLphwUxnerc+SDetJgaduLt
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

--a8Wt8u1KmwUX3Y2C--
