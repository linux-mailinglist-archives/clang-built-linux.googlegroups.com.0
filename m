Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2MAQKDAMGQE4K2J6TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E6B3A0EE4
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 10:48:42 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id l5-20020a17090aec05b029016e2252ec5dsf1124454pjy.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 01:48:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623228521; cv=pass;
        d=google.com; s=arc-20160816;
        b=NYq8Ohg7Ww6XOPcqnWhYAwsk2NR1/0RtZtLE2E0az/4j9Omih+TPYBWKRHkIh3xhpK
         KZORcgRL9DQDj4Sz+OtxZKklba5RclsQzOr+wh6/62id9hNeveXG2iao74u4vfHFA5HC
         8Rly2y7wDJhqGYD0rcyAoc+gJAT9yp/EOs7NGOLF1L6Jud5V1h+OMp4iTcSK0Y41PlG0
         hyP0jPb8yGof2+e9z8GcKwtRIpYoP0eUTu3jseDywub3ajEVcuRi5ylG+53fH7sgnnBj
         P/2Dx8LVGKFcdW6+m8o+OI+Nlctedz7lbGZT86M4UlqLbIfBWEMcozL2/lb1EE68rCGb
         mlfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=n2e0zoWRklOTQTEgDZEv3zrfYP9/p9V0rLpXCG7J8r0=;
        b=RXuFLl3cyLPFZ15J/Gbyop+BrTWzl6CN5se/iwJSbe0rvoWVu8n4ae05Nr9q0cSVbn
         ajYdzX+5Eo0BPYli6/UPihCs4qSIEwoz0Cnct5wYMZvFB4ctYbpt0/oEjIXLTasyh01W
         5g6yjLbV2sV5t32v4VvUO62wugipG4qh3SRx0xDCEI3vvQH6eEH4JTG5LC5NXus822Kz
         mzxEr+7MsloghaqnnJ+3kEacnuzUKzpD3O82GuAO+2VhzRPgGarjsHVsBIVVOFoWQ3XI
         uZeOzfBGeYfaZ5eRJ4TpGbF/kIWdjFSnHCH/TbsuGxE6NXX7HRItfa6pA3FX7ldT1XWG
         4rjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n2e0zoWRklOTQTEgDZEv3zrfYP9/p9V0rLpXCG7J8r0=;
        b=hVIjTdiqJ/5zWZdZxKwpMwgMn2jm9AswjtPyihCIPP825sPsP2YeoQEcYJH5M2s9B5
         o85s2qygGnbFZN4vKBzcicmUgXoG78ZYB1VEaoZBqnPEj706N1crsIOE2lL12PVQe6Iv
         UIAfIU0W44xkRkbQAN8D4RYCJ9ie7p+4ng32g3iG9HDtvwRZIR16EAqB05JgacWoPAM3
         w4jHlD7z4p091MfIlQpPX3khyNZ/g3wqtdGN4SMKiZrUVOU6yDqEwqXp2d6kLuQmYMea
         Rv3Zqcf5KGOYScuuvGDGNR7Ny/4WkbNKR94fxoyT3xmW1JhVWuVzxOKctk3R25KZFcn7
         l5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n2e0zoWRklOTQTEgDZEv3zrfYP9/p9V0rLpXCG7J8r0=;
        b=rTxc2lAfFe8OSq+PrWwXuZhyv2ww6kQz+gR1+AbcInk3bMBxMS8h3Q232/5x/EJOIB
         BTMDYIqVLam4g4iYJ4f75kiJYhnxZ37genT+mdFTYrJTTcMuuxopiUcmxquNb5Kl/hQP
         CveNRJVOUOxM8dO/Vm6QA8UVfFzaveEXuN2QU1EeqUdGDGC5UbJ5GQ4hrPRP3FhnfVkI
         TC/G65mdMfsheyUJfs839rlQt+Y8nqRGgsgJ97LYsQoqyNTrqqKojGGALCmpM/qcayJK
         9qnMcGuaEXhgrf7Rs3O8yu5s439fcS92acZQYjfTvEl64DFRz/BA+fS0DV1tuPK23GUj
         Z6pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pi+TBIeA9QlxRubvM6pslZN3pyF9wUaGJ5PLuLU1l9r5aX/FS
	lQqHN9SmG1k6V2z1jQQULtQ=
X-Google-Smtp-Source: ABdhPJwTnv33QBy06uYiSWqJp7AgHOX93n5Io3H7Cm259BGSyLk46HxZHtyOnWptAaw9R8Ga81G+aA==
X-Received: by 2002:a17:90a:cf91:: with SMTP id i17mr9788706pju.123.1623228521150;
        Wed, 09 Jun 2021 01:48:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls3751514pjf.0.canary-gmail;
 Wed, 09 Jun 2021 01:48:40 -0700 (PDT)
X-Received: by 2002:a17:902:f690:b029:10d:9f35:8ddc with SMTP id l16-20020a170902f690b029010d9f358ddcmr4061403plg.19.1623228520371;
        Wed, 09 Jun 2021 01:48:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623228520; cv=none;
        d=google.com; s=arc-20160816;
        b=LdzfNk26cCLxEc32KJzXkNweWL5iN6ANUcUaAgw3x6u1/v/jujAjsZj3Cb3m1YUWjl
         EtyiHValMpp5E4zjcz1cZwxZPRtKZmONR9pU9E/8K0ce1pN4OrhdqjOfA3oRCfl1CBzB
         AN6ZW+A9fSCTfFfMPBW36lyWj4dXHksgpgj6Aaj8kuv8n/i5SMdFW3ZYlELLliN7NiVm
         qjFNHIQTHCd4c2vlqIh8G2ivELgkGIx9avk4XcRZHUrqpmOMOWsWyO2CxLEZiuqxVKrc
         qq++2mKfkoqgu/3WqZ2EuMlnKhZEW2AIJmh51+gw0FkDOhfAiGPY8spepjDZqHyRkm5H
         RLMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LBCBy4z2R6L1T0MDePANMFl0qQGgZhQtWhWpNegDo/o=;
        b=wC9He0szV9mreVBMDCQgHaKc4DNZJKeJgyVYao2gDyd1DTUI4BS1kTTzO1j7xk0bsw
         K9g8JiqbhvmBFZB3klE0N7bVNVlK2xttkpldFe0V5/pLSE9d8+9ghdAc2nAtKr8av/7v
         Douvoj3hAbCFIBXN8MSOdGv6+hXUVd8V9CbjD/QhjpuHa/bnlw47jOxDrckPi7RLor8P
         qb6BfKm8wl7avZzB1hskj9evMz93TWptpinp2sTnox1+/pCHXGuyC8MsloNhmAmkVUIo
         BvbSYmGe1gMxlrnMkYTkDflCMXQEanv3Dagr9gfzJqXDqQ4aQJE1erMtg8/AYFjpZssl
         Y0Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id u31si1130512pfg.3.2021.06.09.01.48.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 01:48:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: bkAjP/w8146nL81vFD9u5QJy/bv333WUH8c+xYBo72b1XQmylCPVQFDbrd630PZWIvqtxVoVEn
 ARjHIexBxGdA==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="192142459"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; 
   d="gz'50?scan'50,208,50";a="192142459"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2021 01:48:38 -0700
IronPort-SDR: fROqpx7FACREpfcBLTC+RrwZj1W79/5B6caU5yvzCja1SbfqMXJ3X1hlpVwDyR05sUGo2IuRth
 6F5YZEH0bjCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; 
   d="gz'50?scan'50,208,50";a="552607150"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2021 01:48:36 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqtt5-0009Vh-E1; Wed, 09 Jun 2021 08:48:35 +0000
Date: Wed, 9 Jun 2021 16:48:04 +0800
From: kernel test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Tejun Heo <tj@kernel.org>
Subject: [linux-next:master 6707/8019] arch/powerpc/kernel/tau_6xx.c:204:52:
 warning: data argument not used by format string
Message-ID: <202106091645.EZ8khBjw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   ab5803bc555fe68b9b0d37b9a850d3ec601b938a
commit: f2ccd0a922b38300c78e779436929853a42455f8 [6707/8019] workqueue: Add back __printf format validation
config: powerpc64-randconfig-r011-20210608 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f2ccd0a922b38300c78e779436929853a42455f8
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout f2ccd0a922b38300c78e779436929853a42455f8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/tau_6xx.c:20:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:238:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/tau_6xx.c:20:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:240:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/tau_6xx.c:20:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:242:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/tau_6xx.c:20:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:244:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/tau_6xx.c:20:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:246:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> arch/powerpc/kernel/tau_6xx.c:204:52: warning: data argument not used by format string [-Wformat-extra-args]
           tau_workq = alloc_workqueue("tau", WQ_UNBOUND, 1, 0);
                                       ~~~~~                 ^
   8 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +204 arch/powerpc/kernel/tau_6xx.c

^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  189  
9e0d86cd2d7499 arch/powerpc/kernel/tau_6xx.c Mathieu Malaterre 2018-03-22  190  static int __init TAU_init(void)
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  191  {
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  192  	/* We assume in SMP that if one CPU has TAU support, they
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  193  	 * all have it --BenH
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  194  	 */
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  195  	if (!cpu_has_feature(CPU_FTR_TAU)) {
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  196  		printk("Thermal assist unit not available\n");
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  197  		tau_initialized = 0;
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  198  		return 1;
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  199  	}
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  200  
5e3119e15fed5b arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  201  	tau_int_enable = IS_ENABLED(CONFIG_TAU_INT) &&
5e3119e15fed5b arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  202  			 !strcmp(cur_cpu_spec->platform, "ppc750");
5e3119e15fed5b arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  203  
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05 @204  	tau_workq = alloc_workqueue("tau", WQ_UNBOUND, 1, 0);
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  205  	if (!tau_workq)
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  206  		return -ENOMEM;
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  207  
15c8b6c1aaaf1c arch/powerpc/kernel/tau_6xx.c Jens Axboe        2008-05-09  208  	on_each_cpu(TAU_init_smp, NULL, 0);
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  209  
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  210  	queue_work(tau_workq, &tau_work);
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  211  
b1c6a0a10bfaf3 arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  212  	pr_info("Thermal assist unit using %s, shrink_timer: %d ms\n",
5e3119e15fed5b arch/powerpc/kernel/tau_6xx.c Finn Thain        2020-09-05  213  		tau_int_enable ? "interrupts" : "workqueue", shrink_timer);
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  214  	tau_initialized = 1;
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  215  
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  216  	return 0;
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  217  }
^1da177e4c3f41 arch/ppc/kernel/temp.c        Linus Torvalds    2005-04-16  218  

:::::: The code at line 204 was first introduced by commit
:::::: b1c6a0a10bfaf36ec82fde6f621da72407fa60a1 powerpc/tau: Convert from timer to workqueue

:::::: TO: Finn Thain <fthain@telegraphics.com.au>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106091645.EZ8khBjw-lkp%40intel.com.

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--oyUTqETQ0mS9luUI--
