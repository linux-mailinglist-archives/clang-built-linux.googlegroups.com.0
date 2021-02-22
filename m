Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBXFZ6AQMGQE5PJRJCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0E321EC6
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 19:05:59 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id o4sf76514pjp.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 10:05:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614017158; cv=pass;
        d=google.com; s=arc-20160816;
        b=A54i9k13zdy4Hc2JB4ogSzLF/C89h+GtWs4KB4Je2KaNzMTwRinrUr19MqV5ECINCx
         16Dv6K5n6tXYTGvCD690w5CIow241fd9EXv4e6uwzIzHZB2+s7Z7yuBlzkuDNY8pTUba
         puu25ddCcq7eQFRvTTNk6Y7yiUdTaRiQo2MIeUOSQKAcUsUn6fFnOVyanEI7kldNVpPq
         +4rmOzXDuNEdqhLl1EDbfU8IkWQM0V3I15aGtPD+pLjzTQ8oEDJvAKVB3QNH4xlYHjDx
         ZPipOwtbbJbpXO1lfFVk7fb9VtITnJHW6h+8s1b7r1DVAuNdSd1oviZMisLumCJclY2K
         PYpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=iVXarPwJpthYXhiulHQmii+Eqg6iIRuY55NmzSCbV9o=;
        b=E7SEYNsOOVyuB7cU1gMxAcuG6p+OC+RyKGA06SoGJCVoj+0ylGwMlCenI4UU90zoNP
         pDrIuPyUIwm/RpuUUbQZ6smwXCm+lUBqFK2Fj31tqhTHtVlD2YHwLvwsyBgESIpRe+l0
         wd1QaaeknFrf3Xq9bm5fX/oQN5hz9b56Y57GlP8kx6dzAhKBZ9pVl9dUPSVMWjQz16PR
         X5Z7AO6I0OsftqwNcw2ow2L6EVPQtaLVyBhP3MdnzSH4xcX1r3kvAJlECVH9azZCaphF
         gaO+ToDfrT4/+U/RhXHaLbv/6om0m4LlJ5qsbNeBDFu8LPQN3+XixUJLU8pHD+h+wmFc
         /8Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iVXarPwJpthYXhiulHQmii+Eqg6iIRuY55NmzSCbV9o=;
        b=OlAF1HU7vChoUQFg/VnigHzdAPgK2sFWVFGbYQzZzDDwQrMq3YFiRlea2K/HsxdDZN
         pFhKxNhqFw34Xo4ALu5e29ZVFGEdZ2szQCDJUXm+PHNIRV7J8Y0XEHNiEkd328m93tuI
         /rwdoWtqEC4aPde99RXwAhXKDH5Wan4fMgD+eQQkGkI7Xab4RU8/UTK8tHKemjcCeAo3
         +w67V6+noMhxlHD6LdjPYu/1eEyJRrBegmEap5UYB2c69idbJo+89UuBluBhX/aGW+mZ
         Jj0ZjOY4BFoNQgJtVaR+ESHGXcpHNz3sckhLDKnyR2aLb0evqB4NnTx63pu4IxGTnXL/
         yBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iVXarPwJpthYXhiulHQmii+Eqg6iIRuY55NmzSCbV9o=;
        b=aTnAh1Rzx0/uulyILFRLFfwPLInRvB2HOAR7Io9L6oCRp+a63t56aI9lUxR9FVUYuk
         XkaM4rGjuGxEb7HVZh/w9zshoiVeIKzkIfilfSltkaY+p27OsN8nI+vfh7BDa6LOv9ZL
         6rh/CdQQV48J42To7SQ1mikUJ5FGrkPvwue8fvp5vUC96Eyc3DcTyFTatOkS8oM+jPTL
         3mxZ1WqiXMBUJDh/c7vS0mFYYWfvXYbgcO5Eh28K32DPKaY3WYGe73b/wWY+6xsAgg0A
         8o6AsmbgT4HOLh5sm06v3GspksaiINmeAsjO9Ojr8OYjkeNDUJvVbt+yks3L9kk8KBZl
         gaCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A8ubJpHurjGa67Cx3X31jN4Mb/7mLhWPLxWrXO0sQUSsr7fa1
	ePTvSkaSkelrfnDZQAhhGQU=
X-Google-Smtp-Source: ABdhPJz1pXU8oQP09YqarpB3FcdFu0oKoH9T+/7XIHoAVCTUDnbfCZsyOtzAofgv02wqRML8cCsiEg==
X-Received: by 2002:aa7:80cc:0:b029:1da:689d:2762 with SMTP id a12-20020aa780cc0000b02901da689d2762mr23198217pfn.3.1614017158133;
        Mon, 22 Feb 2021 10:05:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1706:: with SMTP id z6ls30252pjd.1.canary-gmail;
 Mon, 22 Feb 2021 10:05:57 -0800 (PST)
X-Received: by 2002:a17:902:8c8f:b029:e0:1663:fd34 with SMTP id t15-20020a1709028c8fb02900e01663fd34mr23101990plo.84.1614017157544;
        Mon, 22 Feb 2021 10:05:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614017157; cv=none;
        d=google.com; s=arc-20160816;
        b=CmORVEJDZZUVBL1PbWNhqja9peoZL4PTHMo1diCFsC6VmHYwSKYbslRUkAz6IVXVuP
         1dnktIgKl5ytEaxXWwltNyFkF7YZkujb3uhIvSd6uyhT2+etJ61iJ7k4qPxL2YY+uWfj
         ClBcCZrQ/n/Ge9tkST8yUNkKqTcIdy36MC6Z0oSmbqUXwrVxQSFNS8Uzyjl1JwEfqd9U
         wqFFFMCJfpFs3mhwzzHuXNLmo+3G5jg3h9YLwQm64qXQ/rk9ihOjIepp6FIEoFfuk40B
         kBPsg91axiUtODmrApTz9KJbbZFdYkAtPeyo9ztvcw+pK0y8Wgm5y9XbxCo8Ch4W9/ae
         27IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=I8VdYrqvbfL68P1XzPD/5+PxapCwvj26vNMrBJlmXps=;
        b=vCAuxCIQAil4I46XDHcMVmMTpSBuQhmVGBO4yzMggmPFXwPJqrkumSR8brT/Y/ENGl
         B0KML3X3D12TE6WX37D5m0o/ddMwvIFnr3l26+YlYQeLt08hD7TSJWUbEiPfCLcHH390
         5P3jJoRnOU4B9hRGT7xgA5Q3ch7GvUkRbw8wGwVCbMtx+neDIQBGGu4QCTiR4B8b4Lqu
         MYpbrpXrAvaiM3x68isio+PPTepcUYStzmFXn2oN055eYsF7ZY/dxnwf6sZzOAehyTvW
         onKtsFZHb/9HrvImsqBdf4YpY98bti1sRrBpQ5bnJXLsPwRXB0KyZa25Ir6Sbo3pcJun
         b3FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id d2si990973pfr.4.2021.02.22.10.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 10:05:57 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: O56AvLoC0Qr9vUeQm+wlYgh4gCzKMs5J31HkrEh8hrYfupJ2KTbH3pkbvuixwm4Nlq0NlcLxVy
 yHwGcVUc2nZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="181093631"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; 
   d="gz'50?scan'50,208,50";a="181093631"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2021 10:04:13 -0800
IronPort-SDR: BLpFcrEV3ngFW8IPkJnhd8uFmhx3EMMlzZzOEhtT9DuclbmhNzkIRRunZxumZ/AnNrlRx6tGXU
 XBW1v6fqbfiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; 
   d="gz'50?scan'50,208,50";a="380118376"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 22 Feb 2021 10:04:10 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lEFZ3-0000aQ-IH; Mon, 22 Feb 2021 18:04:09 +0000
Date: Tue, 23 Feb 2021 02:03:42 +0800
From: kernel test robot <lkp@intel.com>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Russell King <rmk+kernel@armlinux.org.uk>
Subject: [arm:cex7 65/65] drivers/bus/fsl-mc/fsl-mc-bus.c:166:44: error: no
 member named 'iommu_fwnode' in 'struct iommu_fwspec'
Message-ID: <202102230235.5ULIpOXL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   590858e9b845bb2fdb39c75d09a722fa75173446
commit: 590858e9b845bb2fdb39c75d09a722fa75173446 [65/65] bus: fsl-mc: add custom .dma_configure implementation
config: powerpc-randconfig-r026-20210222 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add arm git://git.armlinux.org.uk/~rmk/linux-arm.git
        git fetch --no-tags arm cex7
        git checkout 590858e9b845bb2fdb39c75d09a722fa75173446
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ^
   arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:211:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:213:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:215:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:217:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:219:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/fsl-mc/fsl-mc-bus.c:15:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:221:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/bus/fsl-mc/fsl-mc-bus.c:166:44: error: no member named 'iommu_fwnode' in 'struct iommu_fwspec'
           iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
                                             ~~~~~~  ^
   drivers/bus/fsl-mc/fsl-mc-bus.c:170:39: error: no member named 'iommu_fwnode' in 'struct iommu_fwspec'
           ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
                                        ~~~~~~  ^
>> drivers/bus/fsl-mc/fsl-mc-bus.c:181:9: error: implicit declaration of function 'iommu_probe_device' [-Werror,-Wimplicit-function-declaration]
                   ret = iommu_probe_device(dev);
                         ^
   12 warnings and 3 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +166 drivers/bus/fsl-mc/fsl-mc-bus.c

   136	
   137	static int fsl_mc_dma_configure(struct device *dev)
   138	{
   139		struct device *dma_dev = dev;
   140		struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
   141		u32 input_id = mc_dev->icid;
   142		struct iommu_fwspec *fwspec;
   143		const struct iommu_ops *iommu_ops;
   144		int ret;
   145	
   146		/* Skip DMA setup for devices that are not DMA masters */
   147		if (dev->type == &fsl_mc_bus_dpmcp_type ||
   148		    dev->type == &fsl_mc_bus_dpbp_type ||
   149		    dev->type == &fsl_mc_bus_dpcon_type ||
   150		    dev->type == &fsl_mc_bus_dpio_type)
   151			return 0;
   152	
   153		while (dev_is_fsl_mc(dma_dev))
   154			dma_dev = dma_dev->parent;
   155	
   156	
   157	#if 0
   158		if (dev_of_node(dma_dev))
   159			return of_dma_configure_id(dev, dma_dev->of_node, 0, &input_id);
   160	
   161		return acpi_dma_configure_id(dev, DEV_DMA_COHERENT, &input_id);
   162	#else
   163		fwspec = dev_iommu_fwspec_get(dma_dev);
   164		if (!fwspec)
   165			return -ENODEV;
 > 166		iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
   167		if (!iommu_ops)
   168			return -ENODEV;
   169	
   170		ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
   171		if (ret)
   172			return ret;
   173	
   174		ret = iommu_fwspec_add_ids(dev, &input_id, 1);
   175		if (ret) {
   176			iommu_fwspec_free(dev);
   177			return ret;
   178		}
   179	
   180		if (!device_iommu_mapped(dev)) {
 > 181			ret = iommu_probe_device(dev);
   182			if (ret) {
   183				iommu_fwspec_free(dev);
   184				return ret;
   185			}
   186		}
   187	
   188		arch_setup_dma_ops(dev, 0, *dma_dev->dma_mask + 1, iommu_ops, true);
   189	
   190		return 0;
   191	#endif
   192	}
   193	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102230235.5ULIpOXL-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BXVAT5kNtrzKuDFl--
