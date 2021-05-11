Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDU35KCAMGQERLZ4CGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F5E37A84A
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 15:58:40 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 139-20020a6304910000b029021636f6732asf4049617pge.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 06:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620741518; cv=pass;
        d=google.com; s=arc-20160816;
        b=KRRJYQbamIMEL8Tzj71H2JPu7AcRWVXTb0JVjZB1GU0/hEprs2yHOirDB0rGO22HyI
         F0fOo7QS3FtIts5b/nrzN4KClNAj2EYFWawxlC1AZYmZC8Vr6kXs4vsgT0oS8Mde0Sgr
         pE8hsPNmhxIjJ1v6X3/CPJGvcyq0eX0RdDHULrVPpjXKLlTFMAXZiZO1Hi4i4UBPHMrq
         0/GJNPZOx77AZ4jjhjhSV+FAL5IPDplPOovOljCDOgdi4OSc0Ny/FehQiOYEr681CVQc
         TZt7NWbzEmkrgXhgpjF1q47MJgUo6PiP/xFTp7guqFGT40YtOKZS2whvef7I0KTuhBpn
         Q2pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=cFRLEt9YMUGvdHVZpm106hG5ODxpPrzMeQWXnRK20yQ=;
        b=L4ngu8I1ykvRk5HjdXsiXMqJmcWRQ20tJ9GUkC2WhAwYl0AD0Yo0jmic56LI88hhWI
         fxQjd+qJOymRBGkvpSPrDWtvPl5a5QUvCPcMcsNFNJ3trz867Gc0E/ypp+LxgNd/FWCx
         vcyWgx6uTIxHVvhq3qQs1X4MerMwI2Id+57H0lStyjmKKz8Gij/rJz3wHsAnrJJVI5Rb
         EMlTfSYBj6XGV4sSh+qWldS+Otd7o29EF+CL2DgmTeSJCRC9beZap9zjv8yNyNoMY/3T
         jWkEzkSkYfJXpQCNCNfb66IDB9u2m2pE6Qa9MZXko22ngBFwS7Kztnhi5oxwng361QBz
         TjOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cFRLEt9YMUGvdHVZpm106hG5ODxpPrzMeQWXnRK20yQ=;
        b=LEKVXsUigDk+6XBaz3ONaMJEIjYQVKnK9ctKX6mcmdNJ+dQv9sJCEzaO4HcXIvvr6g
         9u4hWIpvaiMLoL57NcdmKV2w0M7W3ERaTQGsZITvQ3JyMRXSatIQOYNTceVEgyDjVvx8
         k54aNqvYiX16CekfL5+PkmTW20e0FCYPt6QGETQwg071z2t2IpsgSr1AIDE+1SN0zlbO
         EiMiq7wNvZcvaM/Pf3933wK+hy7o6PTlwm3hD+VQOsF2/rPyD+BerjW9xHe21KIfwSMT
         ADlOXg62mP1FCSC0owu0U+n9l8W/rLPTRv6yYo2QCvsnidjAcG1cYH+bobbWnYl0KGTg
         e13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cFRLEt9YMUGvdHVZpm106hG5ODxpPrzMeQWXnRK20yQ=;
        b=RikHre5ReDYl6AxEXpEsl/+1hHPDGn/sD4aH+BSLU4wBHhv0s+ZwUvIcu6FauANEZq
         nMjTfEpg8xW68N8zJwz7BaIu6XKGtR/1aWlZc3xyfaBgBwUOK3CjqKIu9/wwFhkZNxic
         VxCJLG3Viva0MqJaWyo5ezYvlunR0cIx6nOjO1j0+Ey6WqjYX900ecgJnGwyeclScLhb
         4THA6y5jWYfSw7vhSCQ24QwKS9C4d+wC62t8Soe/sCGvJb+WE2a1g0dETIF0wnSWuQ2i
         BP0wPB0xDCUwi0Grd/6gvbXsi04HN0v34EAMDsLT8GZiQRyNw3G4aL354RVytrZuJ0Ha
         9X/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lfq8GMnDIawliSfS+4aiscq9foLVQrpZwuBWZSuCnQGPtlrUx
	npQxP6OoH7nKxpSwDfdWDHU=
X-Google-Smtp-Source: ABdhPJwocR39/o6cGXq9/lrFc5oQYduejXiESQ33enaGNpe3KOBJLF0j0fsOtDxJH0q0LmtyJN4JHQ==
X-Received: by 2002:a63:104a:: with SMTP id 10mr20282162pgq.66.1620741518378;
        Tue, 11 May 2021 06:58:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd47:: with SMTP id a7ls1156016pgj.1.gmail; Tue, 11 May
 2021 06:58:37 -0700 (PDT)
X-Received: by 2002:a62:3344:0:b029:28c:6f0f:cb90 with SMTP id z65-20020a6233440000b029028c6f0fcb90mr29877581pfz.58.1620741517605;
        Tue, 11 May 2021 06:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620741517; cv=none;
        d=google.com; s=arc-20160816;
        b=K6VRFqXtQdNxGMOC82B4jMR/4nJWDLaNPCkQ1ttpDuFsjbl8rPUDK39cVjuYAGLTlP
         T8e+PuKFBvrERaQl0/iLsEf5OtHOHR3NMnQb4I3Z3oKx41sVcsFkME81JsQHs+J0/7EQ
         Q+1YyGKZNHinhE4dOLCHAK2w4f9y2yUS/U/t0aXJubce6Kwf4MJXBHqYPYG6orMkJs20
         j4lBipOjNJYF+dO3Ci2XXrh/sYSZpuX2m/hIPmp02QR7+O5/uRmvCd9RdYGV7DcItBTs
         yvvAqE8gU4vJZKHuIxiNsz9OeCwbq2wGsZKdIcG9tQDr/di0i4k2vQmzl0atmE7JCuGm
         REIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=5nkcAYmQhLA0zT/rFZ/NSSFqz8KiSuGfsBUM+6jy78o=;
        b=MCtPwwxgNz72Y5kWFOgGgb8zvnepj5yaLgdpES0bP3JmMzAFHl4gao/jdDpplhTfG0
         PwmmBso0hzxJz76MrLGHxxW046YM1IaiW5l+5YChj+/pw1xLWs52d7zg3iaMGTEzhhV0
         gibaOskNaDYzntPYgyRfklXZH23/Q0ZUI6B9j33gq2hGRxSl5P0v8UJj/MjaQAN7X12M
         Xwwh374uya6JLLY+vWEKTLfuQXF5hp6LlV7aTifCDpPzXgyfahkLqabGT+GZpklKR9Iy
         g2cQsiB85T4XRFJEa33AdpFYrns7GRFVrFA+U4nqd2MTZ+bc34PdU6aZjP3QGvV02AA7
         ByQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id j17si1646129pfc.5.2021.05.11.06.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 06:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: /+tv1ZvUKoaKrl2v0kN6JkocrTXozY5IV5duhKkTpgmalSiG0jtzrNucrv2JHf1ak9BRATlzxW
 nlXVm8RaugXA==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="199127684"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; 
   d="gz'50?scan'50,208,50";a="199127684"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 06:58:36 -0700
IronPort-SDR: JqpkEVnJ1kfsqJ1bhgVqotCbtk0myrvs4z9AtYQnz8A/qY08VY5xREWy/uxX5Kn5rlmIsYWhiR
 84oCFtGcnrNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; 
   d="gz'50?scan'50,208,50";a="430310201"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 11 May 2021 06:58:33 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lgSu8-0000jN-PK; Tue, 11 May 2021 13:58:32 +0000
Date: Tue, 11 May 2021 21:58:05 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Osipenko <digetx@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
Message-ID: <202105112125.VctfC6sX-lkp@intel.com>
References: <20210510213729.7095-3-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
In-Reply-To: <20210510213729.7095-3-digetx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dmitry,

I love your patch! Perhaps something to improve:

[auto build test WARNING on tegra/for-next]
[also build test WARNING on v5.13-rc1 next-20210511]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dmitry-Osipenko/Enable-compile-testing-for-Tegra-memory-drivers/20210511-053910
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git for-next
config: powerpc-randconfig-r032-20210511 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/ecd67b1d49eb33c9821130a2b3b896bab395118d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dmitry-Osipenko/Enable-compile-testing-for-Tegra-memory-drivers/20210511-053910
        git checkout ecd67b1d49eb33c9821130a2b3b896bab395118d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra30-emc.c:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:211:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra30-emc.c:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:213:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra30-emc.c:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:215:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra30-emc.c:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:217:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra30-emc.c:18:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:219:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/memory/tegra/tegra30-emc.c:757:18: warning: implicit conversion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 18446744071562067985 to 2147483665 [-Wconstant-conversion]
                   writel_relaxed(EMC_ZQ_CAL_LONG_CMD_DEV0,
                   ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/memory/tegra/tegra30-emc.c:161:36: note: expanded from macro 'EMC_ZQ_CAL_LONG_CMD_DEV0'
           (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
                                             ^
   arch/powerpc/include/asm/io.h:679:40: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v, addr) writel(v, addr)
                                   ~~~~~~ ^
   13 warnings generated.
--
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:203:1: note: expanded from here
   __do_outl
   ^
   arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:217:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:219:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:221:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:223:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/memory/tegra/tegra124-emc.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:227:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conversion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 18446744071562067985 to 2147483665 [-Wconstant-conversion]
                   emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, EMC_ZQ_CAL);
                   ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from macro 'EMC_ZQ_CAL_LONG_CMD_DEV0'
           (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
   13 warnings generated.


vim +757 drivers/memory/tegra/tegra30-emc.c

e34212c75a6899 Dmitry Osipenko 2019-08-12  507  
e34212c75a6899 Dmitry Osipenko 2019-08-12  508  static int emc_prepare_timing_change(struct tegra_emc *emc, unsigned long rate)
e34212c75a6899 Dmitry Osipenko 2019-08-12  509  {
e34212c75a6899 Dmitry Osipenko 2019-08-12  510  	struct emc_timing *timing = emc_find_timing(emc, rate);
e34212c75a6899 Dmitry Osipenko 2019-08-12  511  	enum emc_dll_change dll_change;
e34212c75a6899 Dmitry Osipenko 2019-08-12  512  	enum emc_dram_type dram_type;
e34212c75a6899 Dmitry Osipenko 2019-08-12  513  	bool schmitt_to_vref = false;
e34212c75a6899 Dmitry Osipenko 2019-08-12  514  	unsigned int pre_wait = 0;
e34212c75a6899 Dmitry Osipenko 2019-08-12  515  	bool qrst_used = false;
e34212c75a6899 Dmitry Osipenko 2019-08-12  516  	unsigned int dram_num;
e34212c75a6899 Dmitry Osipenko 2019-08-12  517  	unsigned int i;
e34212c75a6899 Dmitry Osipenko 2019-08-12  518  	u32 fbio_cfg5;
e34212c75a6899 Dmitry Osipenko 2019-08-12  519  	u32 emc_dbg;
e34212c75a6899 Dmitry Osipenko 2019-08-12  520  	u32 val;
e34212c75a6899 Dmitry Osipenko 2019-08-12  521  	int err;
e34212c75a6899 Dmitry Osipenko 2019-08-12  522  
e34212c75a6899 Dmitry Osipenko 2019-08-12  523  	if (!timing || emc->bad_state)
e34212c75a6899 Dmitry Osipenko 2019-08-12  524  		return -EINVAL;
e34212c75a6899 Dmitry Osipenko 2019-08-12  525  
e34212c75a6899 Dmitry Osipenko 2019-08-12  526  	dev_dbg(emc->dev, "%s: using timing rate %lu for requested rate %lu\n",
e34212c75a6899 Dmitry Osipenko 2019-08-12  527  		__func__, timing->rate, rate);
e34212c75a6899 Dmitry Osipenko 2019-08-12  528  
e34212c75a6899 Dmitry Osipenko 2019-08-12  529  	emc->bad_state = true;
e34212c75a6899 Dmitry Osipenko 2019-08-12  530  
e34212c75a6899 Dmitry Osipenko 2019-08-12  531  	err = emc_prepare_mc_clk_cfg(emc, rate);
e34212c75a6899 Dmitry Osipenko 2019-08-12  532  	if (err) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  533  		dev_err(emc->dev, "mc clock preparation failed: %d\n", err);
e34212c75a6899 Dmitry Osipenko 2019-08-12  534  		return err;
e34212c75a6899 Dmitry Osipenko 2019-08-12  535  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  536  
e34212c75a6899 Dmitry Osipenko 2019-08-12  537  	emc->vref_cal_toggle = false;
e34212c75a6899 Dmitry Osipenko 2019-08-12  538  	emc->mc_override = mc_readl(emc->mc, MC_EMEM_ARB_OVERRIDE);
e34212c75a6899 Dmitry Osipenko 2019-08-12  539  	emc->emc_cfg = readl_relaxed(emc->regs + EMC_CFG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  540  	emc_dbg = readl_relaxed(emc->regs + EMC_DBG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  541  
e34212c75a6899 Dmitry Osipenko 2019-08-12  542  	if (emc->dll_on == !!(timing->emc_mode_1 & 0x1))
e34212c75a6899 Dmitry Osipenko 2019-08-12  543  		dll_change = DLL_CHANGE_NONE;
e34212c75a6899 Dmitry Osipenko 2019-08-12  544  	else if (timing->emc_mode_1 & 0x1)
e34212c75a6899 Dmitry Osipenko 2019-08-12  545  		dll_change = DLL_CHANGE_ON;
e34212c75a6899 Dmitry Osipenko 2019-08-12  546  	else
e34212c75a6899 Dmitry Osipenko 2019-08-12  547  		dll_change = DLL_CHANGE_OFF;
e34212c75a6899 Dmitry Osipenko 2019-08-12  548  
e34212c75a6899 Dmitry Osipenko 2019-08-12  549  	emc->dll_on = !!(timing->emc_mode_1 & 0x1);
e34212c75a6899 Dmitry Osipenko 2019-08-12  550  
e34212c75a6899 Dmitry Osipenko 2019-08-12  551  	if (timing->data[80] && !readl_relaxed(emc->regs + EMC_ZCAL_INTERVAL))
e34212c75a6899 Dmitry Osipenko 2019-08-12  552  		emc->zcal_long = true;
e34212c75a6899 Dmitry Osipenko 2019-08-12  553  	else
e34212c75a6899 Dmitry Osipenko 2019-08-12  554  		emc->zcal_long = false;
e34212c75a6899 Dmitry Osipenko 2019-08-12  555  
e34212c75a6899 Dmitry Osipenko 2019-08-12  556  	fbio_cfg5 = readl_relaxed(emc->regs + EMC_FBIO_CFG5);
e34212c75a6899 Dmitry Osipenko 2019-08-12  557  	dram_type = fbio_cfg5 & EMC_FBIO_CFG5_DRAM_TYPE_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  558  
e34212c75a6899 Dmitry Osipenko 2019-08-12  559  	dram_num = tegra_mc_get_emem_device_count(emc->mc);
e34212c75a6899 Dmitry Osipenko 2019-08-12  560  
e34212c75a6899 Dmitry Osipenko 2019-08-12  561  	/* disable dynamic self-refresh */
e34212c75a6899 Dmitry Osipenko 2019-08-12  562  	if (emc->emc_cfg & EMC_CFG_DYN_SREF_ENABLE) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  563  		emc->emc_cfg &= ~EMC_CFG_DYN_SREF_ENABLE;
e34212c75a6899 Dmitry Osipenko 2019-08-12  564  		writel_relaxed(emc->emc_cfg, emc->regs + EMC_CFG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  565  
e34212c75a6899 Dmitry Osipenko 2019-08-12  566  		pre_wait = 5;
e34212c75a6899 Dmitry Osipenko 2019-08-12  567  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  568  
e34212c75a6899 Dmitry Osipenko 2019-08-12  569  	/* update MC arbiter settings */
e34212c75a6899 Dmitry Osipenko 2019-08-12  570  	val = mc_readl(emc->mc, MC_EMEM_ARB_OUTSTANDING_REQ);
e34212c75a6899 Dmitry Osipenko 2019-08-12  571  	if (!(val & MC_EMEM_ARB_OUTSTANDING_REQ_HOLDOFF_OVERRIDE) ||
e34212c75a6899 Dmitry Osipenko 2019-08-12  572  	    ((val & MC_EMEM_ARB_OUTSTANDING_REQ_MAX_MASK) > 0x50)) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  573  
e34212c75a6899 Dmitry Osipenko 2019-08-12  574  		val = MC_EMEM_ARB_OUTSTANDING_REQ_LIMIT_ENABLE |
e34212c75a6899 Dmitry Osipenko 2019-08-12  575  		      MC_EMEM_ARB_OUTSTANDING_REQ_HOLDOFF_OVERRIDE | 0x50;
e34212c75a6899 Dmitry Osipenko 2019-08-12  576  		mc_writel(emc->mc, val, MC_EMEM_ARB_OUTSTANDING_REQ);
e34212c75a6899 Dmitry Osipenko 2019-08-12  577  		mc_writel(emc->mc, MC_TIMING_UPDATE, MC_TIMING_CONTROL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  578  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  579  
e34212c75a6899 Dmitry Osipenko 2019-08-12  580  	if (emc->mc_override & MC_EMEM_ARB_OVERRIDE_EACK_MASK)
e34212c75a6899 Dmitry Osipenko 2019-08-12  581  		mc_writel(emc->mc,
e34212c75a6899 Dmitry Osipenko 2019-08-12  582  			  emc->mc_override & ~MC_EMEM_ARB_OVERRIDE_EACK_MASK,
e34212c75a6899 Dmitry Osipenko 2019-08-12  583  			  MC_EMEM_ARB_OVERRIDE);
e34212c75a6899 Dmitry Osipenko 2019-08-12  584  
e34212c75a6899 Dmitry Osipenko 2019-08-12  585  	/* check DQ/DQS VREF delay */
e34212c75a6899 Dmitry Osipenko 2019-08-12  586  	if (emc_dqs_preset(emc, timing, &schmitt_to_vref)) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  587  		if (pre_wait < 3)
e34212c75a6899 Dmitry Osipenko 2019-08-12  588  			pre_wait = 3;
e34212c75a6899 Dmitry Osipenko 2019-08-12  589  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  590  
e34212c75a6899 Dmitry Osipenko 2019-08-12  591  	if (pre_wait) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  592  		err = emc_seq_update_timing(emc);
e34212c75a6899 Dmitry Osipenko 2019-08-12  593  		if (err)
e34212c75a6899 Dmitry Osipenko 2019-08-12  594  			return err;
e34212c75a6899 Dmitry Osipenko 2019-08-12  595  
e34212c75a6899 Dmitry Osipenko 2019-08-12  596  		udelay(pre_wait);
e34212c75a6899 Dmitry Osipenko 2019-08-12  597  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  598  
e34212c75a6899 Dmitry Osipenko 2019-08-12  599  	/* disable auto-calibration if VREF mode is switching */
e34212c75a6899 Dmitry Osipenko 2019-08-12  600  	if (timing->emc_auto_cal_interval) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  601  		val = readl_relaxed(emc->regs + EMC_XM2COMPPADCTRL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  602  		val ^= timing->data[74];
e34212c75a6899 Dmitry Osipenko 2019-08-12  603  
e34212c75a6899 Dmitry Osipenko 2019-08-12  604  		if (val & EMC_XM2COMPPADCTRL_VREF_CAL_ENABLE) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  605  			writel_relaxed(0, emc->regs + EMC_AUTO_CAL_INTERVAL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  606  
e34212c75a6899 Dmitry Osipenko 2019-08-12  607  			err = readl_relaxed_poll_timeout_atomic(
e34212c75a6899 Dmitry Osipenko 2019-08-12  608  				emc->regs + EMC_AUTO_CAL_STATUS, val,
e34212c75a6899 Dmitry Osipenko 2019-08-12  609  				!(val & EMC_AUTO_CAL_STATUS_ACTIVE), 1, 300);
e34212c75a6899 Dmitry Osipenko 2019-08-12  610  			if (err) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  611  				dev_err(emc->dev,
5e5eca6644873d Dmitry Osipenko 2019-12-20  612  					"auto-cal finish timeout: %d\n", err);
e34212c75a6899 Dmitry Osipenko 2019-08-12  613  				return err;
e34212c75a6899 Dmitry Osipenko 2019-08-12  614  			}
e34212c75a6899 Dmitry Osipenko 2019-08-12  615  
e34212c75a6899 Dmitry Osipenko 2019-08-12  616  			emc->vref_cal_toggle = true;
e34212c75a6899 Dmitry Osipenko 2019-08-12  617  		}
e34212c75a6899 Dmitry Osipenko 2019-08-12  618  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  619  
e34212c75a6899 Dmitry Osipenko 2019-08-12  620  	/* program shadow registers */
e34212c75a6899 Dmitry Osipenko 2019-08-12  621  	for (i = 0; i < ARRAY_SIZE(timing->data); i++) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  622  		/* EMC_XM2CLKPADCTRL should be programmed separately */
e34212c75a6899 Dmitry Osipenko 2019-08-12  623  		if (i != 73)
e34212c75a6899 Dmitry Osipenko 2019-08-12  624  			writel_relaxed(timing->data[i],
e34212c75a6899 Dmitry Osipenko 2019-08-12  625  				       emc->regs + emc_timing_registers[i]);
e34212c75a6899 Dmitry Osipenko 2019-08-12  626  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  627  
e34212c75a6899 Dmitry Osipenko 2019-08-12  628  	err = tegra_mc_write_emem_configuration(emc->mc, timing->rate);
e34212c75a6899 Dmitry Osipenko 2019-08-12  629  	if (err)
e34212c75a6899 Dmitry Osipenko 2019-08-12  630  		return err;
e34212c75a6899 Dmitry Osipenko 2019-08-12  631  
e34212c75a6899 Dmitry Osipenko 2019-08-12  632  	/* DDR3: predict MRS long wait count */
e34212c75a6899 Dmitry Osipenko 2019-08-12  633  	if (dram_type == DRAM_TYPE_DDR3 && dll_change == DLL_CHANGE_ON) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  634  		u32 cnt = 512;
e34212c75a6899 Dmitry Osipenko 2019-08-12  635  
e34212c75a6899 Dmitry Osipenko 2019-08-12  636  		if (emc->zcal_long)
e34212c75a6899 Dmitry Osipenko 2019-08-12  637  			cnt -= dram_num * 256;
e34212c75a6899 Dmitry Osipenko 2019-08-12  638  
e34212c75a6899 Dmitry Osipenko 2019-08-12  639  		val = timing->data[82] & EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  640  		if (cnt < val)
e34212c75a6899 Dmitry Osipenko 2019-08-12  641  			cnt = val;
e34212c75a6899 Dmitry Osipenko 2019-08-12  642  
e34212c75a6899 Dmitry Osipenko 2019-08-12  643  		val = timing->data[82] & ~EMC_MRS_WAIT_CNT_LONG_WAIT_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  644  		val |= (cnt << EMC_MRS_WAIT_CNT_LONG_WAIT_SHIFT) &
e34212c75a6899 Dmitry Osipenko 2019-08-12  645  			EMC_MRS_WAIT_CNT_LONG_WAIT_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  646  
e34212c75a6899 Dmitry Osipenko 2019-08-12  647  		writel_relaxed(val, emc->regs + EMC_MRS_WAIT_CNT);
e34212c75a6899 Dmitry Osipenko 2019-08-12  648  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  649  
e34212c75a6899 Dmitry Osipenko 2019-08-12  650  	/* this read also completes the writes */
e34212c75a6899 Dmitry Osipenko 2019-08-12  651  	val = readl_relaxed(emc->regs + EMC_SEL_DPD_CTRL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  652  
e34212c75a6899 Dmitry Osipenko 2019-08-12  653  	if (!(val & EMC_SEL_DPD_CTRL_QUSE_DPD_ENABLE) && schmitt_to_vref) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  654  		u32 cur_mode, new_mode;
e34212c75a6899 Dmitry Osipenko 2019-08-12  655  
e34212c75a6899 Dmitry Osipenko 2019-08-12  656  		cur_mode = fbio_cfg5 & EMC_CFG5_QUSE_MODE_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  657  		cur_mode >>= EMC_CFG5_QUSE_MODE_SHIFT;
e34212c75a6899 Dmitry Osipenko 2019-08-12  658  
e34212c75a6899 Dmitry Osipenko 2019-08-12  659  		new_mode = timing->data[39] & EMC_CFG5_QUSE_MODE_MASK;
e34212c75a6899 Dmitry Osipenko 2019-08-12  660  		new_mode >>= EMC_CFG5_QUSE_MODE_SHIFT;
e34212c75a6899 Dmitry Osipenko 2019-08-12  661  
e34212c75a6899 Dmitry Osipenko 2019-08-12  662  		if ((cur_mode != EMC_CFG5_QUSE_MODE_PULSE_INTERN &&
e34212c75a6899 Dmitry Osipenko 2019-08-12  663  		     cur_mode != EMC_CFG5_QUSE_MODE_INTERNAL_LPBK) ||
e34212c75a6899 Dmitry Osipenko 2019-08-12  664  		    (new_mode != EMC_CFG5_QUSE_MODE_PULSE_INTERN &&
e34212c75a6899 Dmitry Osipenko 2019-08-12  665  		     new_mode != EMC_CFG5_QUSE_MODE_INTERNAL_LPBK))
e34212c75a6899 Dmitry Osipenko 2019-08-12  666  			qrst_used = true;
e34212c75a6899 Dmitry Osipenko 2019-08-12  667  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  668  
e34212c75a6899 Dmitry Osipenko 2019-08-12  669  	/* flow control marker 1 */
e34212c75a6899 Dmitry Osipenko 2019-08-12  670  	writel_relaxed(0x1, emc->regs + EMC_STALL_THEN_EXE_BEFORE_CLKCHANGE);
e34212c75a6899 Dmitry Osipenko 2019-08-12  671  
e34212c75a6899 Dmitry Osipenko 2019-08-12  672  	/* enable periodic reset */
e34212c75a6899 Dmitry Osipenko 2019-08-12  673  	if (qrst_used) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  674  		writel_relaxed(emc_dbg | EMC_DBG_WRITE_MUX_ACTIVE,
e34212c75a6899 Dmitry Osipenko 2019-08-12  675  			       emc->regs + EMC_DBG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  676  		writel_relaxed(emc->emc_cfg | EMC_CFG_PERIODIC_QRST,
e34212c75a6899 Dmitry Osipenko 2019-08-12  677  			       emc->regs + EMC_CFG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  678  		writel_relaxed(emc_dbg, emc->regs + EMC_DBG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  679  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  680  
e34212c75a6899 Dmitry Osipenko 2019-08-12  681  	/* disable auto-refresh to save time after clock change */
e34212c75a6899 Dmitry Osipenko 2019-08-12  682  	writel_relaxed(EMC_REFCTRL_DISABLE_ALL(dram_num),
e34212c75a6899 Dmitry Osipenko 2019-08-12  683  		       emc->regs + EMC_REFCTRL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  684  
e34212c75a6899 Dmitry Osipenko 2019-08-12  685  	/* turn off DLL and enter self-refresh on DDR3 */
e34212c75a6899 Dmitry Osipenko 2019-08-12  686  	if (dram_type == DRAM_TYPE_DDR3) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  687  		if (dll_change == DLL_CHANGE_OFF)
e34212c75a6899 Dmitry Osipenko 2019-08-12  688  			writel_relaxed(timing->emc_mode_1,
e34212c75a6899 Dmitry Osipenko 2019-08-12  689  				       emc->regs + EMC_EMRS);
e34212c75a6899 Dmitry Osipenko 2019-08-12  690  
e34212c75a6899 Dmitry Osipenko 2019-08-12  691  		writel_relaxed(DRAM_BROADCAST(dram_num) |
e34212c75a6899 Dmitry Osipenko 2019-08-12  692  			       EMC_SELF_REF_CMD_ENABLED,
e34212c75a6899 Dmitry Osipenko 2019-08-12  693  			       emc->regs + EMC_SELF_REF);
e34212c75a6899 Dmitry Osipenko 2019-08-12  694  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  695  
e34212c75a6899 Dmitry Osipenko 2019-08-12  696  	/* flow control marker 2 */
e34212c75a6899 Dmitry Osipenko 2019-08-12  697  	writel_relaxed(0x1, emc->regs + EMC_STALL_THEN_EXE_AFTER_CLKCHANGE);
e34212c75a6899 Dmitry Osipenko 2019-08-12  698  
e34212c75a6899 Dmitry Osipenko 2019-08-12  699  	/* enable write-active MUX, update unshadowed pad control */
e34212c75a6899 Dmitry Osipenko 2019-08-12  700  	writel_relaxed(emc_dbg | EMC_DBG_WRITE_MUX_ACTIVE, emc->regs + EMC_DBG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  701  	writel_relaxed(timing->data[73], emc->regs + EMC_XM2CLKPADCTRL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  702  
e34212c75a6899 Dmitry Osipenko 2019-08-12  703  	/* restore periodic QRST and disable write-active MUX */
e34212c75a6899 Dmitry Osipenko 2019-08-12  704  	val = !!(emc->emc_cfg & EMC_CFG_PERIODIC_QRST);
e34212c75a6899 Dmitry Osipenko 2019-08-12  705  	if (qrst_used || timing->emc_cfg_periodic_qrst != val) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  706  		if (timing->emc_cfg_periodic_qrst)
e34212c75a6899 Dmitry Osipenko 2019-08-12  707  			emc->emc_cfg |= EMC_CFG_PERIODIC_QRST;
e34212c75a6899 Dmitry Osipenko 2019-08-12  708  		else
e34212c75a6899 Dmitry Osipenko 2019-08-12  709  			emc->emc_cfg &= ~EMC_CFG_PERIODIC_QRST;
e34212c75a6899 Dmitry Osipenko 2019-08-12  710  
e34212c75a6899 Dmitry Osipenko 2019-08-12  711  		writel_relaxed(emc->emc_cfg, emc->regs + EMC_CFG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  712  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  713  	writel_relaxed(emc_dbg, emc->regs + EMC_DBG);
e34212c75a6899 Dmitry Osipenko 2019-08-12  714  
e34212c75a6899 Dmitry Osipenko 2019-08-12  715  	/* exit self-refresh on DDR3 */
e34212c75a6899 Dmitry Osipenko 2019-08-12  716  	if (dram_type == DRAM_TYPE_DDR3)
e34212c75a6899 Dmitry Osipenko 2019-08-12  717  		writel_relaxed(DRAM_BROADCAST(dram_num),
e34212c75a6899 Dmitry Osipenko 2019-08-12  718  			       emc->regs + EMC_SELF_REF);
e34212c75a6899 Dmitry Osipenko 2019-08-12  719  
e34212c75a6899 Dmitry Osipenko 2019-08-12  720  	/* set DRAM-mode registers */
e34212c75a6899 Dmitry Osipenko 2019-08-12  721  	if (dram_type == DRAM_TYPE_DDR3) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  722  		if (timing->emc_mode_1 != emc->emc_mode_1)
e34212c75a6899 Dmitry Osipenko 2019-08-12  723  			writel_relaxed(timing->emc_mode_1,
e34212c75a6899 Dmitry Osipenko 2019-08-12  724  				       emc->regs + EMC_EMRS);
e34212c75a6899 Dmitry Osipenko 2019-08-12  725  
e34212c75a6899 Dmitry Osipenko 2019-08-12  726  		if (timing->emc_mode_2 != emc->emc_mode_2)
e34212c75a6899 Dmitry Osipenko 2019-08-12  727  			writel_relaxed(timing->emc_mode_2,
e34212c75a6899 Dmitry Osipenko 2019-08-12  728  				       emc->regs + EMC_EMRS);
e34212c75a6899 Dmitry Osipenko 2019-08-12  729  
e34212c75a6899 Dmitry Osipenko 2019-08-12  730  		if (timing->emc_mode_reset != emc->emc_mode_reset ||
e34212c75a6899 Dmitry Osipenko 2019-08-12  731  		    dll_change == DLL_CHANGE_ON) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  732  			val = timing->emc_mode_reset;
e34212c75a6899 Dmitry Osipenko 2019-08-12  733  			if (dll_change == DLL_CHANGE_ON) {
e34212c75a6899 Dmitry Osipenko 2019-08-12  734  				val |= EMC_MODE_SET_DLL_RESET;
e34212c75a6899 Dmitry Osipenko 2019-08-12  735  				val |= EMC_MODE_SET_LONG_CNT;
e34212c75a6899 Dmitry Osipenko 2019-08-12  736  			} else {
e34212c75a6899 Dmitry Osipenko 2019-08-12  737  				val &= ~EMC_MODE_SET_DLL_RESET;
e34212c75a6899 Dmitry Osipenko 2019-08-12  738  			}
e34212c75a6899 Dmitry Osipenko 2019-08-12  739  			writel_relaxed(val, emc->regs + EMC_MRS);
e34212c75a6899 Dmitry Osipenko 2019-08-12  740  		}
e34212c75a6899 Dmitry Osipenko 2019-08-12  741  	} else {
e34212c75a6899 Dmitry Osipenko 2019-08-12  742  		if (timing->emc_mode_2 != emc->emc_mode_2)
e34212c75a6899 Dmitry Osipenko 2019-08-12  743  			writel_relaxed(timing->emc_mode_2,
e34212c75a6899 Dmitry Osipenko 2019-08-12  744  				       emc->regs + EMC_MRW);
e34212c75a6899 Dmitry Osipenko 2019-08-12  745  
e34212c75a6899 Dmitry Osipenko 2019-08-12  746  		if (timing->emc_mode_1 != emc->emc_mode_1)
e34212c75a6899 Dmitry Osipenko 2019-08-12  747  			writel_relaxed(timing->emc_mode_1,
e34212c75a6899 Dmitry Osipenko 2019-08-12  748  				       emc->regs + EMC_MRW);
e34212c75a6899 Dmitry Osipenko 2019-08-12  749  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  750  
e34212c75a6899 Dmitry Osipenko 2019-08-12  751  	emc->emc_mode_1 = timing->emc_mode_1;
e34212c75a6899 Dmitry Osipenko 2019-08-12  752  	emc->emc_mode_2 = timing->emc_mode_2;
e34212c75a6899 Dmitry Osipenko 2019-08-12  753  	emc->emc_mode_reset = timing->emc_mode_reset;
e34212c75a6899 Dmitry Osipenko 2019-08-12  754  
e34212c75a6899 Dmitry Osipenko 2019-08-12  755  	/* issue ZCAL command if turning ZCAL on */
e34212c75a6899 Dmitry Osipenko 2019-08-12  756  	if (emc->zcal_long) {
e34212c75a6899 Dmitry Osipenko 2019-08-12 @757  		writel_relaxed(EMC_ZQ_CAL_LONG_CMD_DEV0,
e34212c75a6899 Dmitry Osipenko 2019-08-12  758  			       emc->regs + EMC_ZQ_CAL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  759  
e34212c75a6899 Dmitry Osipenko 2019-08-12  760  		if (dram_num > 1)
e34212c75a6899 Dmitry Osipenko 2019-08-12  761  			writel_relaxed(EMC_ZQ_CAL_LONG_CMD_DEV1,
e34212c75a6899 Dmitry Osipenko 2019-08-12  762  				       emc->regs + EMC_ZQ_CAL);
e34212c75a6899 Dmitry Osipenko 2019-08-12  763  	}
e34212c75a6899 Dmitry Osipenko 2019-08-12  764  
e34212c75a6899 Dmitry Osipenko 2019-08-12  765  	/* flow control marker 3 */
e34212c75a6899 Dmitry Osipenko 2019-08-12  766  	writel_relaxed(0x1, emc->regs + EMC_UNSTALL_RW_AFTER_CLKCHANGE);
e34212c75a6899 Dmitry Osipenko 2019-08-12  767  
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  768  	/*
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  769  	 * Read and discard an arbitrary MC register (Note: EMC registers
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  770  	 * can't be used) to ensure the register writes are completed.
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  771  	 */
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  772  	mc_readl(emc->mc, MC_EMEM_ARB_OVERRIDE);
0f8bb9da5aee80 Dmitry Osipenko 2019-12-20  773  
e34212c75a6899 Dmitry Osipenko 2019-08-12  774  	return 0;
e34212c75a6899 Dmitry Osipenko 2019-08-12  775  }
e34212c75a6899 Dmitry Osipenko 2019-08-12  776  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105112125.VctfC6sX-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNyFmmAAAy5jb25maWcAnFxbc9u4kn4/v4KVqdo6+5CJJF/i7JYfQBKUMCIJBgDlywtL
I9OJdmzZK8kzk3+/3QAvAAk5U5uqJGZ3s3FrdH/dAP3Lv34JyNvx5Xl93G7WT08/gm/1rt6v
j/VD8Lh9qv87iHmQcxXQmKlfQTjd7t7+/vT68le9f90EF79OZ79OPu43s2BZ73f1UxC97B63
395Aw/Zl969f/hXxPGHzKoqqFRWS8bxS9FZdf9g8rXffgj/r/QHkgunZr5NfJ8G/v22P//Xp
E/z7vN3vX/afnp7+fK5e9y//U2+OwXryWD9cnl081tPPk+n558nkcnb+5WJ9+fhY19PN5eTq
8exx+vvmPz+0rc77Zq8nVleYrKKU5PPrHx0RHzvZ6dkE/rS8NB4rARooSdO4V5Facq4CaHFB
ZEVkVs254larLqPipSpK5eWzPGU57VlMfK1uuFj2lLBkaaxYRitFwpRWkgtLlVoISqDTecLh
HxCR+Cos0C/BXK/4U3Coj2+v/ZKFgi9pXsGKyaywGs6Zqmi+qoiAMbOMqeuzWddhnhUM2lZU
Wm2nPCJpOzUfPjgdriRJlUVckBWtllTkNK3m98xq2Oak9xk5xbHm19XzS+CSUUmwPQS7lyOO
3cPnNrthxjQhZar0PFj9bskLLlVOMnr94d+7l13d26K8kytWRH3nGgL+H6nU7t8NUdGi+lrS
kno6EAkuZZXRjIu7iihFooX9cilpykLPe3qWiADNpITNjM2SNG2NAOwpOLz9fvhxONbPvRHM
aU4Fi7S5yQW/6bs/5FQpXdHUz48W9kIiJeYZYblLkyzzCVULRgX2+26sPJMMJU8yvO0kXEQ0
bnYEs72ALIiQtNHYzag9kpiG5TyRrtnUu4fg5XEwhcMe6Z256md9wI5gkyxhBnMlPcyMy6os
YqJou15q+wy+07dkikVL2LUUFsXag4v7qgBdPGaRPbacI4fFqc/SNNNSweaLSlCphyKkVtMM
fdSbvoVCUJoVCpTl1LvbWoEVT8tcEXHn6Ukj0/elfSni8M6IjH6mmaeoKD+p9eGP4AhdDNbQ
3cNxfTwE683m5W133O6+9TO3YgI0FmVFIq3X2EbXUT2xLtvTVY+SKieKraityycFq+3RF8oY
hsUjCpsehJWtZcirVme+yZPMmiHYGK2vipnESBHbK/kP5qtvHwfAJE8Jzrjdsp56EZWB9Ngn
rFEFvPFiGmKnHR4regtWqzyDko4GrXNAgggntY5mF3lYI1IZUx9dCRINGKhYKtjKGPMynruc
nIKDkXQehSmTyp5fd1L6wbKl+cG7RdhyAa4K9pxnIlKOkTQBH8wSdT393E8qy9USwmtChzJn
Zn3k5nv98PZU74PHen1829cHTW466uEOYAnon86uLLQyF7wsLPdVkDk1O5SKngqRK5oPHqsl
/DfUVMloQS2AlRAmKpfTW2Iiq5Dk8Q2L1cIzS7DbvDqblgoWyxFRxDbIaIgJWNq9PZyGvijn
VKWh0yfDiemKRX7X10jANsLd+54I7ILEhwUMNywSb8MQq3xbh6Mfa2SIssaIwAViIPiTnlYq
WeXSVo+gJfeZIkAPYWRbA2Cx8wxzHy0LDoaDcURxYQFavTAATRTXPbMbhKAJyxtT8BMRhMDY
O1GCpsQXOsJ0iUug8ZqwVl4/kwwUS14CILCwnIhHkBFIIZBm/qbj01gSeLf3PoOMXaiqn8+d
53upHBsPOceAd9JLwLbkEPsydk8R42ib4SIjeeSFkQNpCT8MIDWg8xiThoiDW0RLqSgC/pw0
AbZr+V1Bn8+KKy6KBckB6grLdXZQ2HmGIBBRHdSNI7ZSHm33zYMJFZZjgRDH0CQtfbBHM/Do
1QiGGRPryd3QEujlAB31yIVLdtugIS9oQQ9shzntkfOMOavq3aMhARyalIO+lJA7e3tCC56m
vq3O5jlJE8vsdW9tgsacNkEujC/ulBPmy4MYr0oxQEgkXjHodzONvjkB1SERgtmrskTZu0yO
KZWzRh1VTw7u9wZV9dYwXlg0AI127CHqLAhDWN+dCl8LSbSU74vJuxzwuOO5lpGdH0MC4WQP
2gtrqmc6QC+NYzsg6Y2HO7caJgNFNJ2ct7C2qbYU9f7xZf+83m3qgP5Z7wCoEQjfEUI1AOQ9
6HI1dkH+H6qxcGtmtLRhXfo9Ec8KoqpQLH02mRInTMq0DL1aZMpPMUgIayIAXTRQ9kQzOloj
AqsE7GKeuc3a/AURMcBEf2iRizJJUmrwDJgJhyjEha/NO6loZjzgCjBnwqKRrwS8nrB0kDt0
C+LWYrrVK6LLbumL/cumPhxe9pBuvb6+7I8mz+kkMU4sz2R1ee7zSS2fVpdWtOkSzcJB4PTi
YjJBot/pXHq4o3YsTwPiljmDBFKyyKUlkFMIOpcjqgUEZYo7Rxu1A71thrHT93iDDmF36aBV
eGc4ikLh1IXMzjoXd7Kj9c4wRfcUnZicLIMsgYNzWbhNNosDbIsOsjpAOfabFSdUx5yLkDah
o7GrsdF0+Wos+dnMwmgw/yGuVh4zYs3tYMxOB7WjzDICmDkHoMQAMmbk1qoL+gRYfj298gu0
/qNV1Gc178ihvqnjRiVVBjqbTFtQG+pihtaytBuuEibAE0SLMl+ekNMOwC8msDwkry+m3Zgh
O4yWJnOUZVG41VhNhjeSlMzlmI/FIMC7Y0a7URc3lM0XyrGdgSE1ASvnsqAWjxKR3o2xCcmb
GhUvIUO86mvXeoodoKSrliO6hu88YwqcKqQRlYb5dpjHTpVxOK+ml+BWLOPBaqRe2J7WVihK
lsGUDyMyC6kw2BIhmGRhOhRp5g2LZoKHdOBMAKa0YXnkaHoeI5G8nvl58Xu8FfAmNi8mN9Y8
3PMc4padWhZzU7HXFVR5fW67LIQaOcXaSJF1EeBpfcR47QsAEhbGV6W0VEL+1zk7J3B8peBo
0Cn60oWmH6NiyhIgwbx06v20IAWkH0QQLHO588sTk8dg7gWg1TnTQD64NUDut2BLrLDKVlnh
1i3x2WDZE07Q9GGxqgq7s/q1TM7FdV8eDJJ9/b9v9W7zIzhs1k9ORRA3PWAEq8DcUqo5X2H1
XaCXOcEeVoY6JrgG3zut1eO7VvLmpPZeWX4DSAw8nh+M+V5BWKwz/X/+Cs9jCv3xQyTvG8CD
ZlYapvtMyp4rd7xeiXaUJ/jdkE7w2/6fXKy+s9fPvXU8Dq0jeNhv/3TANYiZsbuL2tCqAhKV
mK563lcu2NdW4totvnqsse0Ke3iqm8aB1HUQybYH0EXZUcpqtWBesCi2YivQVEJFDoYYuh07
E3l5xQPfg92RxX01dX2JzZpd+NwMMM40KBto8cten/WHrCYALQRW6R1PQdQCAnw5LlLb5Qus
r8K2LEPIA1XkqyDquEJz7aibw7cFV0VazgexZyQj4Ce3+r+kty4wdDkAMbznMZDyYupBTLyz
K18tWR+8es8MAWhWcWknqiZQ0pRGqu1sxmP7CE9LAEJRwG6GNXxdH5j52IAT+ijcFEcTK9ay
NKVzkrYwoVqRtKTXk78vHur1w+91/Tgxf2yffr7UCGwQsTUoayrbXUhujrsbchdRdWY2lNXn
gYgzdWjmkAgKrJG3U5fFOkr15UF6C8GrUgTyT8ime3phVbCLJgg7FMAI6N/iISsGnj7zjfkJ
ao/MZhNLYZQunQZadGhOPa15uvlq3GdFE8hJGSY/jaN+730I1p5iQbvT9VYP3w7W1ndBhlO6
AlIaRl6fZOvo8DR4YwiS0BdzGG8jVVhuniQYdid/bybunw6VmCN80CHeE8PMDXL0XnAkAAaW
srAS4CBGdxEA+QCEdw+3bU4yrOs09ErAUjoHzx13VI1DYpYx7pHN7HM9JKwSWw4pQ5Tu9CK8
K4iUHuZKp0u60sW4U5BFPFeSlN23ZY2+LbdhjS8BfjleD8d3C1gfq87es1MtMagJ6JEaEOfc
VlnvN9+3x3qDR1MfH+pXMKZ6dxwbo3F9g4rdMCv4DTxjlZKQOvXWzgLRl9E0OeFceaGG+vRU
9nutzGHO5jmeb0R4WDvwooBc9GUYsIkqlDe2oS0F9StnMCBMg4E5Wl/vCyc1nep+owYvACWD
urvmJ2Ue6RyMCsEh/c1/o5FrFVrMlLttih6z1rgAKxnntpgCIIBpnPgw+yMSPbZiyV17cjNQ
LzMMZM19o+GoMOOrAAWa9LxZj4oUw042ZVybZNVQPaPCCiKm7frgTcFUNCcwPiVu2tnT9QGa
6Zgbq/t5cyy1hTiQts0B5sDLBgVgWdPLxrPpn4iYcOocBumGbwgYMtY40PnCvAFOJgoLVaP1
MYtuTp6jrLiNFkOIdEPJEmELxUI+ib6WTPib0+Edr+S0t8c8Qk0R6B/J8jS25H3zK2mEAu+w
EJ2ZwkbvKAzHd9KluL75MtAHP+M1SL0LluNI4L+I8hMJ3D9DJwFeXt87OqkHNkqL5GiE9WrL
JnhcprD/0TuB89MHLh792qODF9A3uNB0BzKSJwp5IMJv8qFIt6V1C7pIPz6HHFcP3ys9WlVF
z9tWyfCUEltkUFHUgvlKkAzcpn2wnWJRB4+PbsANWAw0OMnmsoT5dVJP00bDJtHwlKDhn81C
Ey996UA3d7r+DIbmFJXQF9lnNcPh6v0wOog1ITbiq4+/rw/1Q/CHwXyv+5fHbVMa6e/FgVgD
tN7rnRYzpx60Im5Z+t2WhmciP4n4XZYE6QwelNoBTZ8Yygxbn7j2jdNf6cqDGpn+kNBkCim3
g1LDKvOG3Cee9juG7U35rFjlOzBteimi9v60c7zZD8JHM417OoU84p4Y65WNX/QzZPnf6mNw
fAkO22+7ACsS2z2s0fML3gg6BH9tj9+Dw2a/fT0ePqHIR7wrbtuG1Y5ckOmpgVsys9n5P5G6
uHxnkozM2dX5iSED82I6e1+BPpL5cPi+BjUfRlpwXwpADKd14PngTZUxKc3Nv+ZGTcUynQuP
/au+u5YCEnIvvYS4gU9fhYSoAhCImXuY7ZaT+bR/KnNzZxxcO+BKNMCR4+0SdKLA70aVyG48
rhnTj5vQw8jRp4NZpqQocLAkjnFuqkEVrr8ypS2E/l1v3o7r359q/YVBoE+ejxZiD1meZAoj
wshf+ljw0KD7fu6MmIwEK3yIveHDIkXXz7bTFRRxlzdLPdVtPaasfn7Z/wiy9W79rX725iHv
VlraIktGckivHGjRVVgMz1fTNy+72mBxYl2EgvcsNNOrW8E/GPGGhRuD7YlU1bwcVouWlBb6
MoRrS7JIIUoVSoccACV4hOFGsuhk7U3DTUHRDEdn4u1GYXNx6iaRDn1od5XynFB2m8RJQ2X2
zrV+PSeQnmql1+eTL5ddScI+CVw6dwkiQLJ5RKLFiXK6ezesod4XnFsmcB+WVlS5P0u4/XHJ
vQ5ePBpTBocJbRJljvmaLNEqu8XtPYYx9ISx4dBQn30HHRIa93OOHncoanAjGRYNkYtFv8K5
W3x6l1gX0qlvw5p8Gi/4/KaX2ASr+s/tpg7iYTne5FORc8sKHn3WE0UA18AFdM8ZDMZ2CYai
Q34VMTkKmEX0cbPePwS/77cP3+phJwTklbGuyfTFWkMaKdIgZ7tpRhPwofsoDZRb0LSwD1Ud
MiysWmBB0rp8tFJZMfxeod22CvA2SQf38vswozUnDIICEaZAEbdTn2z3z3+t93Xw9LJ+0McR
reu50XNld7EjabuL8SKy5bx1LbVtxOl7/55Oi80Qfe6vk2uDs21zw562b2n4i/dCW6d/7Vzd
wBhuc70T2Jz3CrZyOzYUoCvo1TsCuL0aNZU5LPAtSFZ95bJalvj9VbMh+08TUIOp2DV6dPHG
f8SgNbRiJ48MrCtB+lauVjj2M8helSk8kJBBGGA2bNYnzaVFEHTuuCPzXLFZNKLJlGX47vOQ
XmRsRHQrpK1W+8MgyI0Q/gljgIltoMhKaB7R7nqpm3qMd2VX+n7QLsjapkTgp3qKYsTiokqt
qByqaUWKcEC4ddzUgkmYRHio0sJ3c+grnu7TkM0ciADQEr16hnN94sw/GyxEQyvBG40vmWQL
1kj3MdiQxnfKnSp+Ox2dkeTS0YLPVYZfJYDtuFjGlZFMJD8VKsNbj0zbYWX5dXjQZi7bg91i
vT9ucS2D1/X+YKJHP1aFNZHPWE1S/m2LEmGUXZ7d3o6lLJnm7MjIuN3hiY+q0Zmo9K0XReZe
phK3Lh3NuoD19OgDc9e3Ld5hxUzoYuWdyTiuP05PKtB1bH3W6H58MRbEui3P0zuvpYwnX89+
CT8GWZNh4vVTtV/vDk/6Q+IgXf9wYryeQizBPLvdwOYZYkXY5xmAWNcxm8+SSPZJ8OxT8rQ+
fA8237ev1om+oyxKfKABOb/RmEbGIzqTiqfmHjIo0heEuL7FbueADTPnTdl/2H4VQuS9Q5wF
/JO2iILpCcGB2JzyjCpx5/YB3WVI8mWlv5+ppu9yZ+9yz9/lXr3f7uVwCgYCZ97kvRkam/om
kPm/2ejYJ6oOLfvqRINcFeNlRM+f4uft49XPYjn0SEgHDEbG1FKxdLBbSTYg8AGBhBLvuz73
++wdQzdJ6/r11brPghmtkVpv8K7oaDdwDDO3uCSY7Z/yeZiRYYx/9hBH55E2rz2CvXJPYG2R
lFqf4NsMNBFtIdezgT9oBLjv6ykdFiTecR70FvJnM+F96vKTuTIf1NVPjx83L7vjerurHwJQ
1UTE8ZUh7bcLSNIqqeGM02mZQusnp3dkCvB3SMMCteIKD7axnG6nsQ0X8Jpsznmms6smodoe
/vjIdx8jHNip7ApbjHk0P+sbDKOFvj4F2bN116KnKl0PaL8r/Okk6b7kkJu4jSLFnOO6gTSn
yBnOYUM21/DvqhvBlA9V26Lt1Uaf+kqSTJb53M8cOYOWMbvFcDDH5RnGS3KjRzQKTzSKYKq+
weRY1zuH0wBCboMtFdw/pJ5ZNvgw54QIGJ//GtJQPnSvRPVFMU9nW55eQT2ktIhjEfyH+X8G
OXMWPJtSgHdfaDF3or/q31vRRtauiZ8rdodUhuzkcBd3kF76AXSsrNnmif0zVlmVWx4BIn4W
HKtQOkSsyinn1BWIpkzjZS15+JtDiO9ykrHIbcmUXB2ak/dwPLjDi40IiOwioWHwdOW2auq5
d27DkCC19bGIL6hwPqwwh2d4G72tvCAKazIKq86nSSNzz1cZDaR1j7m1HptuwtX2sBknXBD0
JBeySpk8S1eTmeMISHwxu7it4oL7MlzI67M7d7ZYJL+czeT5ZNrbHxZXwY9KyzFAsphyWQr8
xEDg173WAugULeIM8kn36z3NwMKq8KZ2pIjll6vJjKT2LTmZzr5MJmdDysy5ItnOgQLehfda
ZSsRLqafP1vRrqXrxr9MrMRikUWXZxdOnhnL6eWVH03JQcDqGLf4qROkaXHi/xJmpT88cGqp
M6+dUAq7P/PdeDccWKYTB0gNH68bRr4PhBt+Rm4vrz5fWKUpQ/9yFt1eWktvqIA1qqsvi4LK
2xGP0ulkcm6XEQadN7/Ao/57fQjY7nDcvz3rT+4O39d4yHbEtAflgif0qw9g9ttX/NHeHv+P
t307RldeekvHew0EgVhhwU8aLXj/hF+qOyUSZ1s61U8Wd7+tREaStWF+FNWQiQcitlbfC+b3
1FD6f4w9yZbcOI6/ksfuQ01rXw51UEiKCFWKCllSZCh9iZdtZ3f7jbfnZabq7wcgKYkLKM/B
6RcAuIMASAJQ/eCHefTwt+OHb683+Pd3u8ojHGpvzaApi92Sq7IpSjDiL+gsyy/I9EuQokRP
Yna5jvVhop4jbk1XHYuBLfcMzeevP384B950WrYn/hP4tFJO6gJ2PKLsbmv9NkXgxIvOIyNP
fYKEgTnbzI/CKl/P2h8xuccHDPD814smUmUhHCW6rX8yW1ww934srrO71YVsLEG1dff5d98L
on2a59/TJDPb++PyDCTk3hYE9dOv8MallbI2lplrlH2snw+XYqj2h6m+6qK/TD8GmkG6AGGL
9fTb8UJweDacCBZEezk18H9PHu5XqhFshH4CNUZXsqLB8jNsHYK6fHa/dS80/BmJO3HTLdZt
AYdi03y0O1bj0bmhdITS1uVanh8bR0tHzDL2i6Z2rhQFQflc9NRjncDiYPTLah0ucUadK9aa
c43saZznWbsN4OBTrz8gyYGsCwkV77A+7J0RIyJ2SLg/IJ18RBLgtIsNukOFj+lUzAJrouXU
tj2CIdDouIqCiVKu+BFyVG2gBcKX82JQBpXUcCa971uQwISEml0lYVQctUQVZgVxvKi888u3
9/zhqfnH5QHlvma0Dup7BWFBGxT8573JvChQjTcEwl/99l6A2+YghJAGhVOnug4CKG20uR9x
H5HWI5JJ6wBr/cusAoDMEYYvyg6lKRMloj/stXlpMbSyH3u7STiNR81uh3HnyO4uxovBMKeC
cc8DG3LvxjjOCHgbqTYFtcirvUHpfqFgwFR7eQeK1z7OTJNy9HpS48kuwNMtf6LqRhHLpMn4
p2khoZ7PbwvSKLIh0CemcnlgwCF3zrN7Pz3TKkPY1jv4CoQDf0U0veDkvdm3Dy8f7csAIa3F
GbnU/SMlKjOiyMSR8svn3zjiu6iXW8NUqKyog5/vHEwE6BI0dur7s77BFAQ1tZJEXhq5K2/Y
TBQDKLWYFNkyN+4mrsUwtc1U66JAQWDs+pW/D/kGBVjBY9lYAxfgrVhA43emRRD8uu/nEd9B
w2C2Z39DKQ0ZC6Tnl9qAO13jh/RT3VEPP0vvm6ORzE9D7GxDSYcWUfPGlIVYQVl2M2XfrXg/
acZ0pnhmxTn0qiSbGnaoh6ogpks+aBL9kpL/j6k44Yq7a5eESGRVr+DwrC2cIaMdokNxrQbM
eOn7ceB5rl5x2l/OOZtHkD+FKuolRmo/UH5kt3X0DucwtEF/MT1DaU/LUDoZGHGwy8RUmZuT
R9T1ss9mZzbkr6eG0zbdsa3nvdo2il9XCb/qmTvYNKemBKE/WNPO/VXs6RBg54wwOCO+9cOY
2gD94Mjes9TMQsfllaz7qT5crRU0qS43+vgg0bC1dpiwaQ81aEGwQ0zjzsTel/1h9VKjIrXE
+tCiaVWztXIa2uVwoaNE7GVXFYN2FO3u56p1pbNZ0y3gG3R5LvSUR/3ijyj8nWqko2o6Xdrq
2IB60MwgFSrrsfiju7atLLU5RYncK01HuVGfnxZXKc3/5knkKHGvIV5WCLekrZ1pyadCFMNA
nW2htMuUnjV3kV2Ocmvj6Ec44B2YekU39uiGinBOoCG7vmSoAWisLHqYNtxfSmMHmaiSP2IP
R3SE2i6Db0sCLRsksnA0F3xcILCHIgp9ddgbSkwNuZs2IjRyhu5EcctGxPc21TqrR7AbKcT0
SIHr+bm7jHR3cXZ/0VmMFJ1ceY43shL2HmkVbiRz059Bu63+StwN9eGd++CAvn8gox/vpXJ7
iN6trOjukac+cW/QSH0KKIcgmtXDjbPRpQgwjJEqECCYyZUcPw+bIn17YXkxMajgJG1nlfCv
pwqBWm6fNY+2BWIErdtnLeV8Lxl4uILaQe8l4Udq3xSCRWVf3qrXQHi7w68J8Z1SB5suDxzG
0809Kde8AGTXebk7YD8//vjw9ePrn9BtbJw/yFM9ABPhIM65UGXb1t2ptioVQl4VPCucXel0
kgtFO5VR6FERNwtFXxZ5HPn68DbEn1S7Q03x/oJl7Vz2re43vjcdannpBo0HTb1H/OZNBxXt
6aLFCyxA6Pl6fQ+NrUd8dHAkTpG83WaOz1VAMw7P9PzwT3SPlM4jf/v05fuPj389vH765+v7
96/vH/4hqX6Dkyt6lfzdWGRu6Ro95dLcnN5iyulYK46c54ayTjjzlizIwK4y6gMw6Ibh4rhi
lBSPl85Z71CycTroTFniNjXvNRFRFU9NV9Jv9BxfY0JT7o6OPjoYtudoVzU8tSpqVj/RZiDH
cvkfO/HYaScS8+PD2a6i1TneDrOTOWJUb21PH9k4/tKLM5kC++NtlGaezg6PNevVeBGEwfk4
eDR2pq4POagvrU06JfG8IxmmNAncbMaekmieyXchxM6jOQfSbHEUuOCJfTS7eHG8dyHq1uoj
hA29souBYcCdvdmfvnP1pZ8LsyMAwlSipMs+4oU7QNnoDa/XDPryDE1jLcbwGLq6M4ZlEPkG
J4CdzECwqcYxBzdsqg2NhUcmszkyFkAgwMY6RkYNHJiaMzheu6S598HNvZXBXnlzBSOTDpxA
Cu5Efz/0ZFw9Elw7MJKaetCndoHej3pX8TG3mJrWUJA3ZqgAceA3YK3RyNz2ubktB7CrFsVR
/wkWx2c4fQHiH6B8QPi/vH/5ys0Q85aTj7W4jPf6ac3wd/nxH6HrZGFFe5i6R+pL5zTi52Lu
NTRx7YxAbY3sOBprtdxiu1SgzgZXQ8TzLWHwSsuDuLgrhMUwHId+VOhP5ZLp/PCo3+ptcFTd
lj7hGOuhUxmaNZpQd0apuhFhhC/5YvHeFLxylIaDJAVnTd9wxFmPTxt78sZRi3XBX3c2MhBb
Dbf8lBOMmgoIfmjGqHiOgvVFr8tvXz5+FFy0gT9+QA8SLXUbVIFGKskufU/EwU091PPl3X8r
JpLYCZ95yGx/fsavEqHLQVdP+OEqdM3lFv84FQwdinm4+evrA7A+bJb3PEIAdhCv9ft/qc4v
dmNK58CAmAbqPh91N/RBuVcQAO6ThZFz8mtWSgrXy9G4IVmKWGmfBKfZxGveXhVWatkAV9D9
yTegVrJNDjWDqDiQFXMacgcuNSD508vXr2BfcrPFEjy8XAq62gif4vDV5lxnVoC52UmyhYK/
j6ahpNFM5zRX9Y4YFRQ91MPwDBuknulYB064Y3Gu+Pk0CrvVGoA0SF2FSzgAaikoBXR5AzI7
Xd2K3llX3UgVq1em3pNwwHHC/zxVkaurT9guAj3Ig50KxAAyo5pze6usaQC70j3D6GpSPpEX
dBzdl36mar8Fyh9qdCg7ZMmYziaz1t1bP0hNaF9CtbPV1x17U+BnZ1cNa1O8CKP0XNbGXSsY
dq5apaY3+Je8+RUyoGBFXAUgmy6Hq9Uf8Wzk7sjY9SNocfLQLAgMM04Ap/4+38gvoixyqVRz
JHEgN7mMFeQwP0tM8BhleqJODl6sL/dwnhpseKLUHcfPyPb38WC0J80yc5hgiO0II1bdjw7P
9R0BuR7dOfT1z6+gtQzDS1Rf9XGcZTvtV91O7063u2G32fLcM7cTQgNiiwg46iVXhfxCJjR3
ooQaH9FbManZgb48ZnFqr8PUN2WQ+XS214VhcjMbrGKIGXMtlNixstdAm+CheQuawOj5oUr9
jH+YyhDWRe7FlLsIx8oTtD3fIHxMyTy2QbZeUum7jvXUSVDO0ZjEgZ+ZOwnBWWKuzPSGzVli
AG8sC32TEoGxuVAAzHPNV4WYTT7LTx++/fgJhtaOkVCcTiB/MKLZnB+e8E69qyNrW8rc/MUc
9X/73w/yQMFevuvfKrn50my+V2MQZcrF/oYBmb/NglrAvzEKoVtmG3w8NeocEd1Suzt+fPmf
V72n8uRyrgftULNiRuM63MTjEL2YLMpRtHjRaHzqo396LYk2hxsiCLVJWRGZF9OISPeQ01H+
r/oRhqrgMFCg4yg9rlNl9EBiNXRBRWgXZTrCd/Ulqz3K5U8n8VOV63X+UE4jPOkuBuBQh1qB
xfD7Vnu4VOHOr7hpROeblmi+rwqBV2sFWZblQSwQ1Pi4bOFJ7PRMVBKxVy72ZHvrIvCMFAYM
T5QnvJ8HxeklymHnUEywGZ8xq2SWR3FhY8pb4PmxDceVTBTZp8IzjVU1DG1NaiSUolgIRjW0
axkVAlWf76IrJHi3scObIKWvS9fugN4KPWLsXJ+RcD8m5gQYwE/Fm5/VC4mjb8Y1osCnb4aX
aeBs5oW7NG2fpUG6S+I4QG6t8NnV7mqWyqcwiSlRtBGUkZ8Erb2EOMAoTlObZdeUrpwkiROy
MNgKeWgX5re9Izsc7EKw+pEfz3YZjsg9aoCICuL96UOaNIx3ZgEoYlfLcZZ7ZF/jPHMgEt1z
bN0U7BBG+13l9o+Xkx8dUUkCP7V5/VRcTzWuaJBHhEBZXEcolh+m2Av3+XSYQBrtTSK/XL2O
h74i5EEZpKFvz++1HH3PC6jZOlR5nsekv3kXT4mfrRLVGg1epd8L+tsthnbgP+EcVpkgecEq
LraEK+3LD7DgKM9cGTdYpZEfEfGECFdyPWxw5nuBTxVAROwqkbgQuQMRarkgVJSfpsQUKRR5
EFERktWUzr4DEbkRPtVBQCSBA0GGZ3IENTvnydfk+YoYw5Q+jG0UpfNaZaWZm/ux6Hi64uFC
O0kvtcnnaBM+zT2x3Jj6qH+aqDWSqHvRFgOjomUWwhL+4BeBMQ+L3cKC7ccrNT/VCKe63bFj
tGtAqZGVgKtfWJuSagDD8mb6IXkhOaZxmMaO3GyShpV+mGYhtrJf1wTHmetUTI5EYwvdqY39
jEyAqFAE3shsXjuBoVVQKwYIl2OlJOC3nAXt6C1Izs058UOC9f8oo4BqFATh4AfBXrAzpl4S
Xw+zSguFsb88giZ1BlhpdPk+MwkaOlRlpQBDgNgqiAj8mOIxjgp+VWsQEYKDIxJivgWClJ5o
+jisNpUk8RJKZWokPiG3OSLJXC3ne2IbCEI/pfgHw7phH5PNJUmYO0pEhHjmiNjVRp6SCOiW
aktt+7oPhSK0BjuVSUxHsq8U/RiEWbInnNiQwjYOiYVnSUisOktpKMU6jBvINjeylEqWtKEz
UlMBnLq/UNA077NsjyFallPMDcqdrizf70MeB2FETQUgInIVBWpvI3RTKe6NmnHSHeQlvpzg
CEvwISJyj+iOdKShutONRbgrLC9lee8z3atRw+Vwkq3tXl5KogC/Jc4VYdbr/ncrHQ1GMy1I
HDZfkMaEPVG39/5Y2yWaA7uXx2M/2mWabuyvw73pRxI7hHFAWaqAyLyEmP1m6McYM4fYmLFN
MtDjFAMFsZckThW1v6OmMsx8YjakFI4oRhBS1tuVHcUceGlISS2OobSUkHT0VkVcFEV73IeX
BkmWkaV7mIa9fdSzJE2iidhB/VyDqiHkwJs4Gv/wvawIbBwI18gDtWqPHjBxmKSE6rqWVe55
xIQhIqAQc9XXYL5QA37bJq7P5q0DuzHTnrJo1Pd0frzbpV5eNHbmeTxMY0Nx6giHkL0FAjy1
kQAc/mnPDIBLUqLWYAtH3p6cBorAp5QeIBK8QCR7z8YySpm/a52N0zQKvifKsyTZtyTBePeD
rMr8vd1cVGNqvFqtKOh+tnsWaboi8HKqLGLI20WFIAwoA2kqU0LKTWdWUjbQxHrfo7YTwkOq
ZxyzNyNAQIpThFMMBfDYJ1b/loVpGp7sAojI/IpaVUTl/t524BRBRY2Mo/YYlRMQppWA49ZG
HyZH1S2IWUdeWp0qcUQeSxrxlGhPivGayE0U/ZsEEiS+j4bpJahj+kJUs3o41R2Gh+PdFX48
qqrb4vnOlK8kL8TLTZXVlJ6/0UJjej/x/cuhIROsLITq52nhxNzfb81YUw2qhEe8SODJo3c7
YX5f9259YNcooNe9sYOKVztJoA9Fd+J/qDG4O7KSVvUT/0ytLLI7PvIjqgaN8anCZmxWBtr8
Q9lMAjPGKG57DKneSeTyQE8VFPk13WXHa5c1SkEJHi7lI96B2n1Evx+CHqHA4aFd4LEZHm+X
S2Vjqsvyaqx/O4EVVUFQF7mXBDYcU2lvQJnV6MfrR/Sh/PZJS6nAkUXZNw9NN4WRNxM063Pm
Pt2W4IJqSuRG//bl5f27L5/IRmTnpSfezgKhJ1832sNG+Dgo8C0JuatdR8o1u3sLPzc8eT0l
/JqdHmNYQmivK4IjqjJExDv1VUMB53itpDMBHDnk8eXT95+f/7232C4STvPm58tHmE96IWUF
Thp1Kw7VzjDtj9+uH741P+2zIrrLrXi+XOlg7ZVKxNeKT86LL91QOn0lv/R1t35r17PQizMv
H/3t5ce7/7z/8u+H/tvrjw+fXr/8/PFw+gID//xF82ZZCvdDLWtGwUwMVScAhdxqHgoOsu5y
oQIkXOS9zLe4Q6Z9Wl6S6yN25QbGb/1ti/mJBCstqesqb9MXKmovIEVMfSgZpWOotqvVmtC1
6o5bO+2yujsG/oGVatPbM3/dvfWSfL8J6UGx04h0oqDGIDNQ7DbwtmkGdE3ZJeIUY7/XjeUY
SMyy1E0hBpjbS1yMLA8Sj8JMuT8wPAU7kGPB8pmcW+E3G+2PSnps743qON2qyfOpDsgQKgJT
3YhJqPs8nGcCgYKcAPfdHHle5uBNHuy4PzowfoaJpllWVb4M242DfTM3BHxJE0DMBhyhYHwz
tElzu/D63esOnJMDcobwkjwkW11tOBsFViHs3koN0WJzem17DlQzytXTdXcTX2bMXCJKraNF
p3VybUTs2U593KVD6xgPrbyf5sOBrFGgd8VM1RRT/UjO+xrOuleD9MsnpnGou3osRr3DC3B4
W2hwGcJhr+AaWUf1cJgq3893ZRw3AuxqF4dwih/LGNlCX2rhqItQ2lmpZBHn7or88p+Ic9Zn
YokokVC1qhVOfflmI0u9MHP2qGGnviqdaNbjKD1Hh3k0beLpHe6bx8KcFvHFdUclYNUUga+z
/5W1lNAYD3BQH8dG+yggQHWSsWou5wt38SNoV7QOld+c0n1xYfYKohYEG0S8vVGP6eEIWS+j
j/6cZDy2+F1PR8kTZvYtGX1FqhHSXmmCBBnkdzWDw79+fn7Hv17j/ArEsTLiGRFie0EiVOQ7
PPXC30AlH8PU1z99IqEB/SwvwgcxeMHhAsHLF1OQpR7vHsVRSALK+34dRVItvTBPmY75okBM
upvgVOe2rMi0r0f+jaU49/QXLQ6v8jj12Y1O+svrnvvAc+VC49Muw2JFKJ5WlmESEDIJLJ/X
plTuGPlccgfNmQCq3plYWBq5ZpbYBUNdoi/IhKhKfcmVMOH4qVWN4TSPhzAP3Yst0h6AAilG
R05gIDqBdsLAzfF+IjO98qkrfbQf9G5JoJ5rnCP6IFE9uDhshn4MyOTmqswBnJTHwsks5yaJ
QMb1rLHKAiqOZ44ih3ee8JsFuLKU99zE8/pq6RWw0ubNmATGUM00DAjLsp5l6hvQBozNjnJw
4lH39YIzTf9UCV2CVAw+Rjj5PYANrQZ2bdA8NLmIw7OI9peUBFnuUW/yKzawxsvBpGfHhs2s
QlMSJm5mRnROu6lw9HKcczSKlqQ5+L48xrDb6MFfy4MPRv6epIRFNQIbuUTHeG6TJ9WecAdV
s9RQxlNMukxw7GPmZfqKygOCDhzr0vyWDkKbKE1mQiXJTwxyttfSXyNuC4ZSoSxW325WkKH9
OfzxOQO21h5Di8Mc788pD7Va1C38+PDu25fXj6/vfnz78vnDu+8PIhSrWfLbUxneOYnt37Xc
i/3/6zT0NOa+GEpmjNIIuETYhB8GC0MQTdNYGo6EiG/7MN/ZcuhGn5EfKBN1t8zm5KJlBflA
0o+J78WKFhN+2b4mVgQspSMAeKucICM/0r6ic0MYKu7demUNH2K405ygiEmPM6XqjGhQhNzZ
vc8dUYwKQeB0CpREIO9D2rV2urWRF9qcrRIkXrTL+rfWD9KQ2L8tC2NbYkxlGGe5S6fIOEOT
8y7luStOBRXww80gM/JSAUpFr9VXjlHaBpRnOx8Qi30vMPuNUN+lvXh8o8UxHOraEYCMTD1s
BlRuMFvQyZdRAkbSivBLTWLdosxsbLicmYhYtRXEggOb0TWmrXhg8DhPzQO7QyTVI1AcMVpK
aUKNRPkayJJHyxq/lVUeRu5N+nguqgJdHq8uZlpiF+5qhqLlunL9eICaDc51tNouN074WKl9
BWABrSc1C3Fs5v9j7Eqa5LaV9F/p09zeBJfiUhPhA4ogq6DmJpJVxdKFIdttWzFaHJIdb96/
n0xwA8AEywepu/ElgCTWRCKRmfLhVuWdYTe8kqDTyuvo4ra9FpaH7is5Xr/K21cyw4Yc5L+z
9hRYg3QxcoXwwBiHgarvUSF5lqQwHvjHmERK+FHTDTBP8pxX1CjZEsJwwleKZD3j0ZVAqJOf
go4D/knbT7PqCdV0ENz9lOksR/A5Hc1ILscj2rOCXdX2RkM81XTNQMg8GSsDPwjIgSCxOCZL
1P2IrOnjicqO3AKfHI+izeG0GVig0ItcRo8t2L9C0tuZQgIiUeRasiNGmXGpJHGkHtp0JCB5
zscNlMwEUBiFVK7tWU3Hgjikv2I+zu1+x3y2s5QehweSXwmF1lxwfrN8ijy82XIFlgkwnd/+
wYfst8WRFoENstih1V0mmUcJpwrRpK3YxKzRKCLyBKbTxEdbuyS1C333lN06OLhPmK3jOKB7
GhB6Iynq99HRcyysweHZpSVXg4iSuHWSmFwc6pNgLQkkDHYqC191Fvfk20aV5PoBI+9ZCrjB
4hc+KQFp4r0CyFeqCs29oDPL66KmLi672ad3whwpqRYacfQJR04WCV/b03Cjw0ytlKptsBLd
aWBdJ8oHNZwMvYICLNoFgqOmO8SkqblKYio5VKy4PVkHW6+omUPuUQi19EbZBkUcheRaZ77a
VRBCTaGg+RnOME+G6Ch4n6pKdwpoEtyaNDtdM7pRRpL6vi9ITmeN4VYUiaUc+BonZE+mOlDF
nkW2N6giyi5wpUHreTf0SSlqUT5YMM8PLbNyVCh4zzaIXb2FSfZkkksi1/eo/ls0GXZmPdIK
3CDCpZtoi63HU+VgMpkMbwDT0FdHAnKRno7KdB7tYGssPzk7CdXPQWOqGRv0iVmr7ZML0u9L
g3czScWNM6pohjJdICIfEDRJMBMopgSYHpLp724Jmd5W5UMBVB5aVj6qfS7QqLe2ZC8SvJPh
VAEqWV/U+3WI8dk+9alFQdUtWxXDPFAbRDIrhf+jppRVJzKhrleYWgvNTntKGmBTQSm/fGez
cJCUeB404kPLui+Rb7mzlLD1pIboaGDBNE/3a/rZ9RiAlrymL3LJ4xi7C/YKyrxOUnRCb5Mx
DIVRjjQloXUjsj2mtlAppI76/P3jn3+g0pnyOV/0g6ivN9+mJeSNIkDAH6PfWa76hsRUXg/s
2i/hCFSDE0SlO4iCvsBdCdo0z9DbD83G8Fq0k19+vW5Mz04rRJQM7BUtxp+sq7w6P2Ctyejr
ScySndCF6p6NOlJhhIcB2p1jiOACPclvqq6x2yzZz2kxSFMEywfZMMzXXgr4n0Lb5JLy+SoD
NctvX3/59uvb95dv31/+ePv8J/yGUQEUwwHMNQaSiBwnND9h9PeduyGlb50Jyr4eOs7gfNbr
3GjgJI8rjvpsvI0G5k2hhCbRmMLgQbS7TTk+WQ7jU7R1TrqslO1bwYQZFQezmbpSm94Tp7ks
/dNuZ9X5qkyBXtNpphAwU28kTZdsPmW6Ls9EYf+gKZIA+jXDZZg2LVkJoy3VtsJC9NupMmE3
wcVmDUnHvvoh/S6fvn/69fc3YxBNuS9cHirGu7S/f/4XYa6vUJ89yohaIRB1TTUqtlhi4b+p
OpQinjQTTBVGh0tS2VPjimG6fKHB7/NXmkh+48YYqFmZ5nN78E8//vz88T8v9cevb5+N5pOE
aBpLuZdXCNprO3xwHFjLiqAOhrLzg+CoXbqsxKcqHS4CdSdedLQ19Era3VzHvV+LocwtBXJ0
5k25/FhJZBOQmceb393MaS44G165H3SufpRbabJU9CAevAKvsHt5J+ZQejqN/oFPm7KHEzne
gQsvZL7D6cIFhrF8xR/HOHZta/dEW5ZVjvFpnOj4IWFUb73jYsg7qLdInUCLnLTSTHcaXevo
GguFQpTnaRGCtnGOESe9Cip9kDKOn5F3r1DoxXcP4Z0uWqEE/i7cjb2jdeKMWcrqJo1L5ciz
XHCS1GEYebT4spIXGNASI/ewzAmiexrQCqQ1Q5WLIu0H2BDw1/IKQ4MSzZQMjWjRA9tlqDq8
BTkyYsIOVcvxH4yxzgviaAj8zjKq4X8GYqFIhtutd53M8Q8leXZfs1h0JvSIbNiDC5iTTRFG
7pHSgJC0sfZWXCGpylM1NCcYk9wnKRZpNeRuyJ+QpP6FeTTjClHov3N68r21hbwgZ4pBIoVQ
eqVZCeOYOQP8eQi8NCMVSHQ2xpwnn1VlUOCz4d+m4rUaDv79lrnkS5SVUp7x8vcw5Bq37VWL
lw1R6/jRLeJ3VVtFEB38zs1TC5HoYCjAVGu7KHJc24qtEj3pPzzhsqQ/eAf2WlNVdrwauhwG
3r29+GQHd801f0xbWjTc3/dnRjN2Ey0I5lWPI/3oHY+7nMGSUKfQY31dO0GQeJGnCqLGnqxm
PzWCn1OqHxZE29ZXax5SQJIRQDYHp+QCTdxBmSiA+74Ozqs+JJXSaaTeajnkxPmed8dQt9vd
olfStb2kgx17wOP9RqAqMBj3RdTotYDXPd5lnNPhFAcOnBezu6W88p6rh0StRDwN1F3pH0j9
+djADePpULdx6HnmIFmgw2arhFMK/BMxfd01Uoij4/XbjOLo+bYNdTJXo4ZCdxElvrxNQh+a
0AXZQme3q9qLOLHRaCZSrW4J9LCLRrtovIeqPm4kCntOVh/cTQPiO9UyDKDTSJurOW/NXa91
dC9iiME2iMEeevilD33SXZFJFsW9cWBcUF5bAMwWqt4d53Mm47co2E4CBRrYlZM29yZdkhpS
v5y5xYXXcXDYHJE1cHgXea5NxiXPDVPiwC6nkUG9u2ZYeO0enEyT11jUtiuSdmL1uc7LLTGG
MCTo5atHpK5kN3Gz9XOT1OeroTnq201Cdtpss7nr2vZpEPaoHSFrKqvSaHqDdM56s6JO8JbS
XcqKcOV7UEs/yI9p2UnF0PD+KprX5YCfff/45e3l579/++3t+/SuVdkBshOcnDg6ElxLhTSp
En2oSSqbs2ZJ6pkIVrFQ+JeJPG9gf9BKRiCp6gdkZxsA2vGcnnKxzdKkt6EWfZqjPxcZg1kj
aR8tXR0CZHUI0NVlVZOKczmkJRd6mGcAT1V3mRD6w0/wg8wJ1XSwZO/llV9R1a3GDk8zEMph
rKhWxZBesKSA3VEnRt/muThflFdQSAp0k16uNbjCAz22QCd0XyrbofPHHCONUJ1gJ00RhOgv
E0Wv8YmB4lUOq0zv8Uq6Y9XSbmfmhlrK+ZSafw8YrvegpNW3xtNrAqFrE3AR297l0iyC5l++
5DFy3AuQOKgNBavtgdlYqxhjzMMxSEu7G7f5yMcc3XCwPBvCTiuMsYAJIOUmaa63WevrzQx/
T5rnJj2jSxljFkmTdjUDepc7990hUJUE2NSz22ltpDJt58Q+G20JjU8sUpTfq4LakBA+gbSk
PrFZ03ClTY0RPEM2g2XsjQaDfosOfrdM2qZivL2kaWf2xkY5pKFwFPfJFyE40ApWewavMm2+
Vdhei5iE5RW1/u1P/gaBLUJ+kdbaC0SnLlahBEczmlE7j05WC0vxN5hYFmjcrKvC8H000RwW
GnvlwUJj/YCW7+SfmG9tzBewq2TJ64DRlevkdXWNoVeRp2k9sAwDq+DnjoEv5p0W6WCEySOb
VEhP2umtG4mlUFyLOBRW1cwPjYVKI1iEYyvBIgFT7bOc1AZ+o0OWEqRmj+zRjpLw0FGC10I+
aWtrQXyHqslVZcanjapcN+JlMhxNdZ6nckgxaHTl8/GX//386fc//nr5rxe8wZkMrjfRyFGZ
l+RMThW8YFYbGrGdgM3LtmwWsMHHJ6O49FPoa8e9wKeQ6WHEly1imGytwPiok+xgnYgMKbWS
EC/fVnB0I0A7pVmpFgsOogTG0dCPOj0bNJFDsyBtbh1axWtQURobhQTOUkFPVzLbTu0WQD0D
Uj5C2orvFqDbMSuc3QLPifKaLvjEQ5fcpZS6m6RPypIqe3qlQFabalHsn0ykOT8IcuhXTxn+
N8HTyhBSJ0i9t0u+ff3x7TMIoNMxchREKfMBqEI+R6joi51rUTxmXDlMqcnwM78WZftT7NB4
U93bn7xAWRQbVsAWmmUYNWNb99JKT75iWW0qPdov/j3IqwSQD8nLBIXCkJUVJMmvnecd1G7b
2GHM2drqWipH8bZUwx+UfHxfoyfVSbFJGNJcL0UmijQ5BrGezguWlmdUX23Kudx5WutJbfp+
Xki19IbdC8GFngjLEEiBsPRWWYYmEjr6Doa0zgqmgIRVS29RmuEIolXboh0GuaTMHyhbx0px
aTa42hCPkuETe5BKKnU2IAbL7ZCwhoNY6GnNMcqTA0jmA1OFNMlQU2EEbD3xljanqk0lmLXm
N66oKLtXG6OmSLkkzvktGbGF+uZa0iUkXT7cGN66mpYuGtnUSe9ABBFzdBdLfbdN/OpxBF3R
tVJDDCyc7NtkHFhDCqJfR2N6KkuO0aTC/mI0kfS2sY0yfeH/Yn//+umb6n1uSdPmAwZAa1KW
5xWawnxIfwoPxhisqdMjIplo0rtQreDU1AFDSJvsCtLNp5wKfXbXv1q0ugJiKRxdK+jJp/RU
bSpbGEGfQA7pKkAj61ibsIKoD8Gi6q5bKGNJalYLIzIRlFMM2b9VYnQ4NLvsXt2/+4TMgY31
BW1DNi9KW4RxYfI3JcuQNcIj48YYVG3NRUYWU+DYpCO3ynErhVCgtFQy+xjCsoAVqorkcS5J
G/0pv/SUhdrj+0W0XW5OwckN2abZeQqDq5S6R6JiBa11e5DR7udb8iJn0stv377DgeDt7ccv
H2EnTurr4kA0+fbly7evCum3P/EV5g8iy/9oL+2n70YtD2tJe1+VpGVk/yJUvN/rW1n+FYSi
fjseZcGtsADTYCCgdI8bkWSC9C2rEPXJzVxCV1a9S0fwigaeuAfwgtEgfuS130xS9LBcJztj
E/OOw8bo80m6MTry038X/cvP3z5+/1X2J8FI2sa+F9NMtucu1w1oNNTe5EzOEaaHtTY/X9iW
vplICsfKpfHuANfrwal3EaHnOuZiou+wHw7RwZknuoWdxQnw2O5aASo2eVj0I2fglCJu/bTz
dkWERMm0KKnGHjH0uEmCeEWb53hNcu3oFj+PvQXFW9tCJzQcs1KVwsKG99QVFAqiR4kOtBmx
jQh5z96OdsA5CBc58fWS5jVNixMzxZIFLqA2W1bpJTvDSyKeP/AO/jyAiJkSWw+6XD51ya3l
8xxiOK7U6cO+fP72+6dfXuD88hf8/eWHPnMmQ3VhbLxTco/3R1llxRrOGxvYVXsgL/DuppDx
AveIZHdMIoCNyBxmGkiMohWXpyY5t60jSSHGsWTz8UuQ7gzPlbLmZPizhUZKpMM5v25koNnF
o+UjtpT46KCrGCnjaiS4VHV769lI3R3nO/zZAvr52DNq7Vtzd9B3kB7DRexsIMgMaq22s0x6
DxtgMbVBswbQhov6feyExG44wgxhN9zCGD6JKHSiH9oTsapIxdukcidWvDaJ3JgMWDMRzE7i
tyUv7uNHCcyGwiikKl5wOZ7/AQN44D3iw9Td0pouCOlgVDPlK+zi8WTUIJXVRDuPRnSbiibb
upq0MVYpqB1/gixy8pKz4K/yRnG3U0zq8aHattCCNd373Y1MK2nTFUSJS4V7zYAO5atT2hRV
86AYy6t7zkr7wihp5D15IXK7ekVyVFaUpdcMV7ypBCfmTFNylm8WPrVJ4ByPnmQLN9a1sTvy
ZPP29e3Hxx+I/qBOBe3lAGIfdT21DE9Ya2lRzlrPZnBUmSpBbJkAXMY92G1WIKr2piUSjAqe
uoGu3qiNVhpgo6qnCO7GRSeZYxRU5i/YY6FuiJ6VzneLhBMiIL5j+7LnR833XnBD+Kg2ONmP
8mkyHJf2uJM05No4ZcfZ1vRab/9zrkaJ7PPnf3/6+vXt+3acGIcY6VN13p51IH4GrOuk3hDX
MnB0EltzyNqplU8CuzuAZINxqeZCa4X5Te0sF+y0wLbfNk8Ux1bczK9tzIlpRpvliSHl6NXX
VFNPYLsHXlfQErSDwwBT2CIVDbNzddZSrzdNqiJhbU0tejPBLXmyA0j/79zmX1SjKpLTLlMT
0SggWHpiPJK//PvTX3/Ye4Wu3mJIMNNIU8ghvRXacPqnQ2Fb5/xkfbddphAH+3q7iUjaU9pO
MgqdRb3Qd1l9ZvQCJM1J8fd6WRDlNKZsupYdM8/Hub7H+r0YLtcTUaOmAjcxzq7DtRM5lQ8w
1488O6J729VQ4+WAjoWuxWmyShY5jqXqyHUJZdCMDJf7Dkhz/HpwdfciCnIIyPhxK0EQHMgi
Q9en0w8eXVXgk/bVCkEQ0FzmSRB6ZDC4ieLEvRgotvycOjiHVNv02XU1eayUBK0f5D4Zz1Cj
IOocAaLRRiCwAcSxLGkPXn4gxokEtCCiOmD6j9Th/c9CChsvEfm9B4/+3IMXkl978CLyrCWR
zeQhyfo+/id0vmtx2a3SHMiwkCrBkfqKwM99Qi+bYHxXjziCT5pOy1KFqBec9uDQsY9XxKMJ
392tYW8i+hC33W3qZFRHMpS2kUv1OqSP4Zw36bFPaR5syu8xnV7Qzl0ROkQd+DAVj+EONZfG
Q35MVKUc/ynEDyLiBkFCgUO0gETCiOolCR09Muq2ViU1z2aEbpMRtX5ESE64ooUDtxui+1FC
zt4lx6vTjo4JOFGDAOqGMdFNCEQxMacmgP5ACR6JeTUBtiUP4Ti0xTFQqHwnJFpvAqw8waCO
ieExI9Z86K2Xzhe43v9ZAbo8GPPkJGpy2BWJHkBdFjUZMd1GHxAdZr+dagWcp3hLKPdmxNZf
08MzBv9Lnzl7B+HJpfr2Fm9Em2wSdZ8ti9Z77LYtPN+xhCZWaEJn4896S3UIwohoj475Hv0B
gJChB1YCOAgyUuvXsdYLdjd6SRESsgUCUUgsbBKgd26ALC7LVYrIJaavBDxiCAEAsiTFB+xi
B/dI8pGxYxzRL/kXmvzmew4Tiec/6bOF0nd7ivMF9nqKTRWm5+1KYi+eJ717oJqn9ZnnRaSi
sWtHGWnv25CEEu2vnLk+tbNLH9WU+IpKZZfgENM9n+JPItTLU5UgposcvR1TRUYWd8YqicWl
vEaytz0jwcHKwO5slQTEvo7pEbEYY3pMzE9Ijym5Y0y3LauoWqcjv6sEdLFHamOU6TR7x4i8
NJDI3mkTCWJ6gFnuIT5IZcYxrL29pQ4loIjav9DFKnWKkumUpIjpdDkh1UYlu4LUS3wRAsGB
XEoRikmf/RqFRzT9CFBLUc3guO4w8mQ+Xg3eW4bX+w1l96tT3iZCe1lN/w+L6nqlqNl6WVMX
afnG7R7vjEmlzgrrwCgDnBtWXwx0sa+bVFUXwbda7ot6ywN/DCepNXvA9tuk5blTLCIAbdhd
vbC4Xsj3q1jMZMI3193++fbLp4+fJQ+bKGdIzw7ovUVnBRpPF36WxCGjta2SoLY9OZPoFa0+
LUyf0vxVlGaNyQW9uliyJBcBfz02eaorHRsDQRgVLM8f+sfWTcXFa/po9eREOgE00h6j2aOW
CH1zrkp0g7Omr2nQYGrHYYYU/etR9wcSzFPtDl+mfQD29KRzWpxEY4ygc9YYOc951YjqanB8
EzeWqza/mAhVSOc5Ruoj1RPuLMcABEar30R6l157rN1/fjQ2738ICwwWq9eEjzy1hHfs1DCz
5u4uygv5Lnn8qLIVMJmqzdjKE2mSZ8mHD0TMDGlZ3ai1R4IVHFs302hOxT9q3bPqjJDjANHm
WpzytGbcM0YQgufjwbHNRMTvlxQfnO/M1YKdRVLAyLBP2AJ6urEYsY/4Q4ZutDRJk46TQG+S
QqCOtMo6I7lC06Z0M5uLa94JOSwttZSdMYyrpktfjQnOSgxwDlNBmS9K4tjAaoa0Y/mj7I1i
MM5rshkXU7LxRJckWR4gPaU0HDJSFKnqGk9FEtEYQM5K6XgoMdYB9IXTjr4XlIZZE7cN06D3
O7MFWoZO3iz8rqYpaiL6kMhFaXRU26Ws2JTe4ViGLY10jCsprmWdm2tcUxgD44w+wVirLulL
0uZDpSHKu+rx/5U9WXPjNtJ/xZWn3apko9vywzxAICUx5mWCkuV5YTkeZcaV8VG2pzbz/fqv
GweJoyF78xCPupu40Wg0+nDLtaEEX28zlz+4yKoWaUpbkEj8FvgUHdBVoZudaJUvSJRoh2JC
VwsyVyLy7iwrqjb1R/iQlUW84Z/TpsIOR8r8fJOgqBXwVwGcF11xd5TBrJQH8lrYAholqPRh
V0kJCh8F5ZZ3dCwDtNtUcLJ7jqJWvFS7UL9MP7URRYsB/astz9wIGY6Yhgl3o+7yXgD4+rpB
b5y0KOhTVONPePZjbt9ux2KVdRgL2MiF8Pt3kfyOn5xtn17f0L3v7eXp+3fH7bsvGj+PuSkh
TiQwEMMe6kGdju8ghOMPNuCHsCPddLLKWhkipRPXIEw6ybH6D+q8XRcUAq2EGiaYsxRdtOQ7
p3ogqdqLcbSIFP/1Xgnb/DqJlpBc80K8X4aoWXOwrngDEiWl0nbCtlCl0Eleibpl09H8nlw7
A11S7cn0dj2BNEqh6xDT0x2rD2w/JWcVEBOqtzBlrKEQJgU4Vdoa/05HdBuLLF+ljLSCt5Yt
+ha61RobY3vPDnB0m4gvDYvGdoSWqOqg8jSHXW/dvikjERHplaCMG+W2VZYywWfTSJ5Ea+hJ
K2rJSQqp/nZjdBtEfGAznxxhMnpQAlezU83JLF8Ej9QitLIwuJyLsriUJW/xj22NIovBChdN
lYcraFceKBsdxPErxQKdD7aCNmdFnPZGi+IL0nt1mJ8D3EhizA6WyslvWbGwtbRyeV071pcF
XFPbjFNNKNNrT/7EXypEBAXrVIp3+/4z4KSID5JrJMK0pFw1KDWX6Aa9vcag+OXG5ePyqMJg
DYGKQ37PyuloMrdD0yowCJX5MAgKJqYLJyufgl5PRvYDt2oVegNOlkG/JJy0f5FoGfFi5JUl
gU7UnQFMp1Ax+MWMzsvQ4y8mlMK+R4/s1xMJBc4wmbk5L9V8VSu4EnZXuxV1PtgkDbvyhhpT
SFEd1HAZICLeDR/r9AEz8c7CkQPw/NTI1PNRJAOhwc9lrjF0RDhFFonxMfRuHo6khp/sF9Is
7Nz1EqozoOIFzb6Z9Dg7aYwEqmApwRoNw6N4LbymjhOJIhJ4qmWfTJajiQfM2+n8wt84Ok2b
By2F/3GZtgeQD4Phi+WDl8iWM0wo5BXe5nx+MT74w2nlVPe33fwfD1i1EzfomYRiZBvYYrHW
ZGI6XufT8YW/yTRCxQvz2JcyJP1+//j3v8b/PoNLxFmzWZ3pWDQ/HjGIEHFbOvvXcI/8ty27
q9nB63Z0Tv0U2GoNFMuRHelCjVh+gAUQTAm66UVnROa7Jnx6BhZFJ4Xv8ZNz6lVPFT4kqHK/
y+qIjZbq8KaYjmfRjdvnvTWTs/5++/pNhnFqn17uvnlnjVt20y7nbhK+fn7bl/uvX8PzqYXz
bePFOLQRYUwOiqiCA3Jbtd6EGWzRJhHMFiTsFkTiNhhDQ3FaceWQ8prKJeyQMN5m+6y9iTTH
jRXkoJJ0zUBc6ORSlYN6//x2++f34+vZmxrZYYeUx7e/7r+/YRaUp8e/7r+e/Qsn4O325evx
Ldwe/UA3rBQYkfQDPWUwJ3R0JoeuZp5enCbCxx9/B/YjJiPVRhdHe0MuthVyEJoREM1Rt/Rs
hSkbrKlh4/ENyF8sy/PUCj1k3pZu//7xjAMsIwO9Ph+Pd98srwO4u13urNDDGtChOo/ldizI
HnNTtltoS9kK54oZ4uuIlaZLWFd5Tj4YumS7pG6bWGtWpYg3JUl5m19+oClAmB5I12ufrLZN
OlwkVBXDXaY3NY91IccPIzhXG+/h6kvfZ9jBt4ea1DZ5zZYxaazITZGFY75OE8Y7kDAwkpDg
zc7KWidRQ5IyDW1aLqO/OACQMmaL5XgZYryLCoK2vK3gECSBJljTLy9vd6NfhqFAEkC31ZZe
ioiP6cwQV+4x6KveSwA4uzfhpZ0zBUnh8rvGusgwlz2B1Fn8JL6EDsRb2Ow7P0lYr3fFVhHH
nPlOZT4n00JrCrZazT+nYuoOrMKk1ecLCn6AIv1uIGbVcLiSUvpkQ5EIDGs6LGYX3nHg67vm
hiobKUghwyJYnE+oT7c3xXJOZxPXFCBlLi6cpI0DQmZ2phFOXmcbcbGk2mHyNZ9oiMkVG3zb
iDmf0gm6NUUm8vFktAznSyFsuxEPswi/OQCc6FzN19K0K6CXiNFiSnVb4qYnx1+SLKZUxyVq
GUlSagZ2Nm6XtCzZL82r6YQ+BPotppOHnpodjgl7L8JxEdP59GLEqPavi6gvQl8s7KdIXiGL
ZL4kswFbZVDLMS2mo8l5OGHNHuDLkB7h0wm5AjGJ86lJFPOCmn6RwM5eBsxL1JnHvGyeaHmT
/RzoUbr/ANNLxHQyjWQIH1bVZEza4zsDdMGJXaMw3fa6sC9kw0QsxuP+VlLrWBLxruI3vKgE
yRMnS2JvAnw+HpP08zm5A5E1LufdmhVZTlnrWHTnM6LHiZjMRjOiJVJHQdADfDEltkl7OT5v
GbHsitmyXS6oZYeYiArWJplTAVZ7AlEsJjPybFhdzZaxbPJmRus5pzNxawJcD8TZEYaetTHz
0xsec2mTdrw9gXx2IXr0+aa8KugIbP16C7PBytX69Pgb3g5PrlUmiovJYkQtBvWKESKyjVIf
hygMWLVui47lrCnI2cdnmVMzK59t9vAzLBxD1AdAFf4thO+b2ZiC41tjAz0eET1GnGAFISIZ
E7+wmnY5p+QMsSsXxNDJ1wxyXKho2H27VDCs5SGsJ3ia7GeihX+N3CQ5w7Z9Zz2hupBOcGAo
lA9c2J68DjTZFmpKm7L3TLxYHqg5M8+ffisPnAR2+wkx8uWeYMn+U2APbyfnY/LURMvhi1Pn
TNGeLyjZ7IBriDhezqeuC7I1Se+ceU2bjMcXJ+8C8vn9k2UUK45w/3t578A1ORvI6hNYjGHa
bJVHrGCr3doEQrTUEjclx6QrzuOluJZwovk7Vc4wWOo3zNY+HfLN2A1CbOzip9EmNbObBVHh
timrvch2Jg+R26PhS7Y7xFP07mx9Gvzoas1EsubKRSSYB5lC1M3ONnvdr+0i8RcMRFYVhZWh
SEILjEH8EICC8McSI8M2WpsIWtGtbqRFd8FKtrHtQTBBhwlGO0CxhO2epnYVaAoCDL6k1JX7
bSVaibTKkDA824QxWOmzGimLGoyE8vr019vZ9ufz8eW3/dnXH8fXNycsi57H90hNnZsmvVk5
Fmgt22SlFWWQY+ply9JN/e6DE/tQpT6VCzD7jInuP01Gs+UJMrhU2pQjj7TIBA+nQSNXVemY
wWhwJCO5xtaskbodv0dCwKopa6K8TDAqLLFPpsLkfoRyOZnPO0FF1NUEl+qvH29YzY1KHh8w
I/b45eXp/svAhZjMOm5rxQyJN9kwjuhd4KaxUkGClR6V7MtGdBhOY1VVtCp7V2biRqCVEYmW
SX9qxiiVQCE3QlXUVZmWLgeTKBmDL/ZdkhW2nQ+CHB82veT95GwOuGP1KvRZNyTY5aaiTSkN
De0+YbAmEVXwGR0xaMBWNb6UhK2WpuZUgQ27PtnOfbZq/OTbfndlKsWkq7c3YcXuW4qBkgPu
pdswYEHn+DPonSOw9LPU8K3F3dFUS6ZK0FaVA1hGY97zbWadN+hbo1ER2q4oZG4mubE2t69/
H9+c3PYmP4CLMUUdshyjTAsVzdPZVmmeYPM9dalGwwDDupkuzkdo1+nIDnWRAUpIJLXw1wnG
rJ1NxpLUksbMU7pG7xe29B7mqjKQrs5qS3rDnKdF2kdxtDmxuooFAHcJGGBTF2IT0tZN1VYh
mG+BLdnHu0HI7bNyr48Gt19RIpbB6lROYV3Kmni7W4W1Sa249wXMTy3dLxwpwEKFYluR5jnD
FLhUNpyeqoJrQ3eoxudUxMYtJhzh9kML/EBpBxiD8wxmCDEQPjDg1Dk5Cwx06hTSw8yd36QV
+f5097dtMgA3s7Pm+Nfx5fh4d4R1/3r/9dGRqDMu6NMACxf10lcTGt+5j1Vk9brbioTugtFS
Owe8hbyY2a6aFs7orkMM7B3PyMZCCk4G1XIo6iz2cTb3wrjEqCKJ1V2qMfXA4JLMZmQXAeN6
yFu4VTFeRtTTFhVPeHo+WnyE7GJCrW6bSExGo1HHa7KtUuuSpwdh5/Lw8Bi4ncJt0iIrY7MR
Nd+2B2pS1MJ15bZLOGT4F244VClAcFU12ZVTPQBzMR5Nlgw4Q55klABg1WDu1VTtnk0VRVId
ShaVTQ3RntMKS3sjFfUkmp/XXjvJ+XhpByGw5yk7gFhRFO7FSQ6jTFsSaSeWyrJLlnctpdWU
eDjMz8fjLtnXftGETayL7RaOgs2GdhsnOZNBuUbiVgcz/73UfBHmgAhItg0lGRtsKaiOoYXb
yUIFJedJ3gdLf4W+sJEtBWLJfLzg+6mtR/TxF5FliTLN4l3+sQ2EmwjV+cWS74E/nF54GMJ/
Yis9MR+hlKHIDqzgnmA/h6BezT9p0bVhWRT+wEtobL9LpM3GDOzKHLLZ49fj4/2dDKIYqq3h
epaWGbRl09u3WdXbWKWiJJrhE03mlrWCjzwfxXHLCO4wHo2iqOV0RLW45TscC1IaIEeEmDN0
qYZJs3Zkm2lDQzl3DxEppjh+ub9tj39jBcNI28wNL9jo5UmvZ9SWjt49jpVO9fQiLdrF+WJO
izESpVisshuhK5FUnBVA85G6ug1PHTOUkKIo3iHIis27LdqrwJg37541ptL15qM9KLI6G7H3
OoFEq3ebiWRj9j80E+lX/0tLJ+xDjZh8rNDzGI9VSDV3HylmmMQ4RZ2ebjrQfHThAelerYfT
5WHq2I8WCEuGrzenegCb53SN5MuGQyMfN+gqENWl7fZUFZJmm60/tMIksWrzB5oVXwmI1A37
SDm6fZFeLsfTebSm5Xjx7ggizTATUYp3mIqkUTP+oQpPMTFJ8N5yXI7PKWMRj2Y5PVHActqz
74+UpDdTtNFAcXLTKop6J93maDHNIxqfbjySsYSKqBIrsixPl/jRCUTS4vTsAMn+oyeMog5Z
S4QaJN2PaSkcQcKSNd7LCETfHDfhfcqr+p1sL0Z0FS1r4P98OoZhrO3E9zL1ySYRnFwdbm4X
ScvmUyzAA56HMNmFmgsTa9O+H7sEIjnM6etlTyeKBFWFp4mAgIrZweorkHF4txwtLU0HQoti
AA/yKCBYLTPU0M8cPcFiNKY87jJd32xkG9YZKH4UQt1UNwjNSaiiPbfdKEWhoE7Yrh56YQfH
HKDTCwrql5CH0ETRXizsWGAIzUMolKBGOChYVefGVrPIXatYh0J9eUFptSz0gmyFD9bES78V
m3qnMdFmmBKp+b+CJa3m3w30hkns8LNYMiEuE7JrAuttgsvSaOCEAAJvGx0cqE7GBPx9KMhu
l+qw3y6booDv4+1WDy1E0bAuVJ+XdL4hvZrciHOJHt7FIihMNXRBej/isLe7Bl8vZ3b0P4Rf
LQTcC2sXYWqHtnlANf8+2PQyQOhpC+By2EPEQdY6t2FDGZP5yIGrCaWAJOXUB6quBAUosF9E
30Ofvke4X+AbVI0eE/jokO3tMQeWvF07h8IlsswDt9+AUPu61uME1bilS46elimGhXV0LmmR
7h3LR0n5mUXu34g8FxeTiD2yxC/Z+ZSRmnKNRVOvnyEwbIYEk2Jij53TH5HPeAOajenPVjGN
p0LzEf1ZevKz8yXR2/MLAnhBl39xsvgLetwuaLY/4CM66B4fUykOBCfWiCKIqYEV+pxaBRdL
EnpBQ+cUlIWjCLDFZhQxgJMi0RbWbHTNcIZ+kRvXEanHbNJygmgaNY2gdmIFX+UVv0RbMo9A
7VRZJxwWzSlsW9NYYCELUgw1Ab3s9+8pX8x6Z3lfcWiI5vUes7ZST5zp4aasRDcFnnMKP3OR
ff0aPXc/JyerJ118mHQ2/jjpJEbqErKmWLzTGbySCzngnDRR1mRA4DvoYfSG95usyCYfIptN
T/dKLotsne1Tf+coaFc3PJK9DXOfvdMEWU4k7oqEd5zvnOW4K7N9tx7z8WgkEElXrbKBMZwI
ThkBGoIxPnVyyxLQRjQkaruIgMcxBFHQTFYR0lP9XQDtdHyqr5iUbDKNdxXx0ylRNCKW0/ad
sreni95PRdCRJVoaTugam9koXt4FtigcGPzMBUpL7fFkpiUV+lrdYrY25xqO0D6SkP8WvCnw
5YRomE5utedWltXttaizEpm0ZfzRw2SUHhIhr/p2dMEBhekHKNsTi8LJMmgj0Ibbqk+kRbdb
WkEOlBpDPP14QasO/61LxiDAYHs/XYhMp+iMnmh48G5sDLhikQzMS60isL80md6CLwcK4wJy
iuZaWg3GCdZtWzQj2HBxkuxQ4zEXJ5D+IosTBNV1fgLbJCw6PoohmMFx2MFWBGMmV360LOUm
4hdW1rw4N92z5lP5dHRty32UdtYJvlArIFkdsBbg/bZZOM9rcT4eH8J5xgTI8bEpYRk3abRL
GB1sI00lYZojDerzmgcYld8ytzYjnND780K6d2f27mVtkeZQUmu3XAFpq2ZdgcnEe22FLjTu
SV5rpQ1I19TCR2CCc38B4PlJ9/YPVDH4LRVbvWl5EclragiKdke6A2vxsIIhIwtuC/qYSHU/
MbtIfJzqA3P43nKK67RoKNVOjxwviG9quhmqDRlG4ruBI6mNWFyoRYFOQu48cxjP8YjgEf0y
1O/n7pQYMNRZ2VH9DNwByhDJKhN11i5mytLUUTR7HNraQizLVxXlgyOdM2BrWOYVCjTEUlDW
tMfH48v93ZlEntW3X48yvsqZCIKvyq/RNWTTslWe+uUOGFQpOIIhSdB7xEQbb30gd6c4WaYi
IUsdDITf6axfvDZPpc8GTaFcJ1CJ0m6barehlOCYM1g7ywwnAwZ3VA0hj4Y+d7lP4kqSQblZ
je3aF6Q/AwxSJ/CDBx+COjA5jtoBZ3Vj+uZe/C5QDruOtwoJTMccZg+8LN5bqbIK0CpOxvHh
6e34/PJ0RziRphjeWFt1BbCOo7UyYeyyr3fAboGC0mO30kD0kxUKmGiBatnzw+tXolGuUbX8
CaeZDxkqcsCW55Kp3qnGmgv0ukCvkGDIBPTsX+Ln69vx4ax6POPf7p//jSFX7u7/gsVPBPtF
KaUuugTWZFaGfnXmbQsTGBNue8pplrNyHzFl1ATSkoeJXUMHMzbhVjGvR1auyaiihmRorPN8
INFpGumLQ1X09dhjTfVUDYEyRXVHoJeKEIdnB54vud0iCyXKqqJCdGqSesLU1z+Dr4nxGBoc
tss+vi7GKqEhHYa8x4t1E0z66uXp9svd00Ns1o18H2RVsBYoV6ExI2EXJT4M8WLXADO5IvtN
tk42rzzUv69fjsfXu1vg7FdPL9lVrAvG54lmSbuM8y4tN1lJRb9UvovwuS1dSgcq1N/IoFkW
C3mvUSq02X+KQ6ypKMBsar6fnF7bcrLRnNFe1EG5ys4R7jb//EOvaH3vuSo2jhOTBpd1Ss4J
UaKsKX2Uh2x+/3ZU7Vj9uP+OEdt6lkQF1svaVG5RHM62qfLcX2W61o+Xrpw2LRsBkpkBW+ZF
EgniC0g4U1gdOzlgnzbMsYJCqHyluW5Y7R+IwP9jJhADOjLjDmVgZzZ4nlL9lR2++nH7HXaQ
v8HtExm1Jhg3JbHU2MpmAc5RELXs/ii4WFHCvsTlOedeMWgzEJSBwJpmWAZ/Ci2KlIp6qXHS
kMFrxTUvhRhYtx44cnhc5qXvRtStyUhvm8ZSn1gynZpQAmWdbD/d2vSVMspK5X14Mur2Vd6y
Dcbu29U5rVow1NOA2q+UvLvt5D1fHSzmHnG4/37/6LOTfjApbB8b7kPSiqkbxyfdr5u0N9jW
P882T0D4+GQvYo3qNtXepPWqyiTFNW0xbYuoThuZzr60fdUdAjztBNun9PcYFVXUjEfQKFmj
0vzBbXkSSBQglGt9v3ZPlB12hHY8EWykLTcAWimETA3hHA7j2KX7tHSkfAdhGlJWnBJfSNq6
lleMSIH9Wk/W1OpKDy0f4n2m/7zdPT2eJdKnk5JdFTmG9v5cldSdRxOsBbuYuRYSGhMJyqyx
BTuMZ/NzK2bbgJhO58578oCRQYbjhdZtOR/boZs1XHEpfNlHR3ui6KZdXpxPaYlFk4hiPh9R
qhyNxxwlG0dsGRDcciD1y5XoFv4/nZA+r3Dvaqw4okliKw6VwixpWOEpWBCerujHIi0cgli1
pq8Mq3bc5SBwtZRRJOr508IO9Q8QCfBv4Zu6IA/0PVz/ce1iRAZHiYeatjJtO24VjvBs7fRO
OWl0ZUoXjye87RycsCVIVzBu0B/7PqsUcE3NvdzCUoe5LvjEH0BDoHWQhTebuEXns8mkSyKJ
Z/QuFp5TvRlFyVnsxxVz8qQBcEoB8YEmdRulShhLalrbQm5RR7sKP3zfYAR5kTEQJFcdAepa
7gR4QAReQjJfVxBQXHqsxyeIuLhJbNrktiQgYWrh+20xqvRISYHvNwL9AFUI03poewIQvM1W
e0obh7issDJ6KcBhHEAm5wGoa+vC7wfq7nN8WYsOWXYlFpMRxc0RC9dpdGIE+bj1i45HeVJY
O6iNgfQe4C5K6gn88uUNIBN0/Cr1lfJVihMcaDEecZIbJUVM2YwkMkvAcu5OqNKiWwC0GPEg
mo209c5D6NPY7Txh9CHB8nk/2n6RT5a8zmnpXBJglLlIz9xnTAlpM297ywfNhwCkXnLcmtqi
pu7tEodPa27JXowvCcpSzoJyAbpt6GQJiO4Dsqk7dnN1dgfyLJHKrLmSgz6ckLAl7Qhv6jWH
OUHf9BTC9uFYQJ055v09GoqmVcrmJPnMxgGVOTP0DMpKHA4tQHga4Wc0f7b8CD0ar/btUpjC
h7Hon9+hx0nqCKPIQ4ACswJGHmmRoGyLHbXr9VGGVYBotcpK94qTV1W5QXVgzTHGBnlMY8Ca
5spWqATT2vcERP9LnQh4OKdlzB7AVbwl8+EqV1jeqzncSUUca7fnZEBKhT2I8ciOWyehUvPm
mjtqhDxwoqURZ4+DwF/8RD/cQBAKBlN0HsDkIbC5Dht4OSHTViskprZ0PfY1XJ0J0e8MNw+B
JsRQQ/QZn8gjewnR/QPzCRrlolEJUk0wUNQJDzsViWWhkfJC6w+r5IdFPZ6fE8VVHENExUuU
4SG9AnsfXh9hWcyQ8G6T74LmYTRR6+VaWeUYX/CpY4ruIbX7uAqDu705Ez/+fJVKg4Gp6jCZ
MjLSTwIoPTvhNmGjEWzkCZnfsd24SC9wIoKU/dVQmC0jKDS+zOFNiT4IsSXqJWM8YdKw84N0
U+BTGXmq9aTot4REbosHnGw1EnSsZHm18RvvUWL/IvVp1T62a+vWpsIpqGY8eJ/ArUJHU9Lw
3g5IGrgSw6kCKZweplJM5OwlZAI7WUqDdbOWBcUjAlPuxMrWjT4x8r3FTNU0SpVCIMNlZzAC
NksTtKvHspzMQo008s4poxf4EarUaj8Ah31vGtXOkt8/uHDcju5cKTgeAniYOgHINArT9pWV
nCwXp/h2t28OE7QRUivUaa6maECC8OfayEgqEO35XOoi8h3mxu2CYVXnm5prrwqN8mbbHjJ5
5YcqoI27tsiC3aHxS2n77A2qQwkieTdZlnCrEqRY4dDI4frpo4KhL4p6qifKbRXCT9Qj7YiC
2ULobi2CVQPgg4ivF8RvkyLzmoaPEHKliWDQKp7mVYtyUJJG7j5AJWWckxtRGQnUV+ja9z4h
LjFqEfUEV3YckAEazoWEy8y+ZS26dVq0VbefEN8izVbIKfXHYCiDkgPs3qHbYTj1DcMsPtQu
H/wGTh44g9JV/jpQEpZDJ/dxONEuHmY75GvDW4Y6AOh2tDd1GluwWmpPauX75A61RsrVptA/
CTTFYYxCbEdmVXEoFP9yv9b+DBHmhCS96BPyPxs1dVvco6jxGi5G24hJvWxbq67W4yk0EEYm
unsHwpkmDLrZZtvZ6PzkBlOXboyst72JKMaASin7LmZdPaFMhZBEqTyD1S6TlWqG4U/iH+eT
cdpdZ5/JeqUGRV+luhh/BpEW4ylS+nmsQd1MLtO0WLEbmZ7bnUoXHzS+127JQ7Ly2z+g/cTf
ttCpbMtV7H376ulKvv0n+CrFbdvypLWfOQu+cn5IO0eTUuL4gv7qtxjY7+Hp8f7t6SVUV+CL
Ei+sKwACkoIvQHIwbz2mhSfKsy4kjDAzCiLmlklTZU4kXA3q4CafoF2nnxQsElk3Ydb92KRh
6guVgGi2JYWVWobMUhEO4IpXrROnWOv90/VOUCKj+tJcOlK0VSu81vXYqq3DlqLhtKw08qog
Kw7e1a/WNa3Q193HVyeRMDdvguHWsb70BGoInBJRcDZj41Yl2QeGMHUq61ldUJnX//16AWwu
OgLGvssMg1t3ucckrpvaVbNggE5R68mg9GIyf0Y4stIe+/REN1bSr+312dvL7d3949dwj6GB
tRX3u1BhWLsVJj/13n00Co1DyGRsQKFSsHmfiWrX8D6rH21JMJD1aSIjGj/kY+2W3H9EP4cv
IzqItXDiQMJPmXca46mWVULbYMEtnMlbgPugaSG2djI5C65zEzgo4QTckJBVqoMGW8DKdqNu
0z47IvyTsn2wwf0axRzYdZ4epPpEGSb9+P52//z9+M/xhbRL2h06lmzOLybU2CHWHQKE9C45
xhaIqKI/QmCv1g6vERlpWC7yrHAeRBGgzYWU/aK1QBr4d5lyV6FrwZF/RldXTyQLrzAkBi3f
OsSEmYwm49UOCZ1NBnxI+0eUzlsSPhVfpRR7QQeOqx1LVDByM9q9CX8LpyucxO3ODnyNUc/d
X8o22To2PQMHlYP2HlMlyqPeWQt7uAwkrE1hNWL4fDoTL+IqkcGq4dakpAc0/l9jVlDpkFY7
8hXmyOgQkUXsjNaYCoE3NzXGA41R7NMmaykBdC2I7BkKRFBnCiNtapxGsugnV7uqtV/CGlgZ
Cthds6bM3ActhQjydgz4ddF2e9ppXeGoe4As1XnBZ7u2WotZZ79MK5gDwkOkc+/jnD5XdC4L
l7aCYc8Z6oQCwYrf3n07WuZFa8EZxmt3uK0EyTzj9B3dUKD+pwLBntaLG6r4qBqKavUHbtc8
i/hq6EYrGfX1+OPL09lfsB+G7dBPcsWdcZSASxl53oXtCw0c5PEBrDOU4LlJ7XpJiXpwe2Il
sEbruaIqMydBuvI/2GZ50qSW2HyZNqXdVs9eoS3q4Ce1ixXiwNrWdQKU4AxPywUVT2O726Rt
vrKr0CDZC+vwSDGCPW9SN76u/KNWrS3wh5MzsEWhEu+gW11qx6mvGlZu0qEsw54kb+kiLjd/
rNdi0pFCOocF6e4HkONk8dRkwgq22bP63fvyXKIfxuqmhbvneDSZjUKyHJkvKgCbVDjt1yT5
56pHR+sHqpldSIDc8lN1LGeTD9TxWbTJUMpPD2sh/OL9XprR+Vh3KN8hsmNUsf4XTh/eb0fQ
hl++/9/sl4DIJLb2a0MvnFOt8TifEfVzawrhx1D5/evTcjm/+G38i43GcKySc8ym5+6HPeZc
Yoarj4M7p6OxOETLOaXk80gm0TqWc8pkySOJN3FJxonySMaRvi8XkyhmGsXMoph5FLM40QHq
yd0huZguIgVf2MGUvG9iXbuYXcSa6QZrQ1wmKlxWHeUo63w7nkSbAihvApjgWRariooqZOOD
pWQQtNRuU1CnlY335s+AFzQ4WJQGEZvQvofTaN/fa+HYa+JllS27xi9OQmkXSEQXjOO5xWjR
2lDwFC6PlOZwIIB7zq6p/NolrqlYmzHK/qMnuWmyPHeVDga3YWl+su5Nk6aX1JcgXOWspE3D
eppyl1Gc3RkbaDxVPty4Lr2cgRbFrl1bgR93ZYabYDgPNaAr0fg/zz4zvN/0vsTDhyB1Xzum
QM4VTTlfHu9+vNy//QzTEGJ8dFsUvBFdk17tUrwNanncHDVpI0AuRmN5IMOoes4Rra9gaSIL
IXoM4C7Zwu0ubWRPXF+SlO/wgobJ/4S0y2ibjEeiA2jak0hSxpIpb2TCoBLaiXc4XtU3Hcvh
eskcUTkgshsblrCGIjDpFlmnT4xsTtTMsZNbwwUY75VKy0Wqz2DQuCykgEWxTfPaCcFAoaGm
dvvpl99f/7x//P3H6/Hl4enL8bdvx+/Px5f+4DcC5jADzDKDy0UBosrt4xd0+f8V//fl6b+P
v/68fbiFX7dfnu8ff329/esILb3/8uv949vxK66zX/98/usXtfQujy+Px+9n325fvhwfUfc2
LEHt+/bw9PLz7P7x/u3+9vv9/90i1oq4z2EEhbyadnvWwG7M0LG9beHSYt0CKKrPaeM8dEgg
2kZdwpYqaU2jRQNTaioiFQEOoa7LRqLFCi6sfoRtayVDsQbO5BJYTnLkwBh0fFx7HyZ/0w/3
EtioldHx8Zefz29PZ3dPL8ezp5cztTycAMSSHK5MNX3JkViWb5y4Dg54EsJTlpDAkFRc8qze
uim0HET4CayFLQkMSZvSsiEfYCRhLz/7H7BoS1is8Zd1HVJf1nVYAl4dQtIgu6gLd8MpOqg+
qILM/EruAu+D9NBiHB+f3CXerMeTZbHLgxaVOzvmpwUMOyX/JETTYWNvUzIvribQJ6JSzPz4
8/v93W9/H3+e3cm1/fXl9vnbT4un6BkVLGhBEq6blHMCBoR+n1LeJESRoqAmA5jtPp3M52NH
/FNPjj/evh0f3+7vbt+OX87SR9kJ2MBn/71/+3bGXl+f7u4lKrl9uw16xXlBVLfh1AXRfLKF
k55NRnWV34ynozmxMTeZgOkN+5ZeZXtiILYMGNzeTMhKxovBw+eV4Cs8koxPIdercJW04bLn
rSCasQpgeXNNjE61pmyvNLKGBgblHNyMo2b/pjfoUR0vq9z2YxzwEEzm2+4KotgUHTSDZbK9
ff3WD6o3GgUL1+wWgUE/qM7t1efKHfT+6/H1Layh4dNJWIcEh5UcJEP2waucXaaTcI4UXFCF
t+NRkq0DzIZk+NZyDjhbQob2NchwBwCsq+uww0UGa10aNHKimqZIxqTGwWyfrRfDdwBjbSc/
nMwX4XbcsvmYOEG3bEqwJQLWgjiyqjYB4rqey9TvavveP39zPIN7LhHOGcC6NiP6uMqraz+d
ujfdDLNhZixYH5ypzL+FLVBZuHD2ELogNlbM9M9IPPLv+3yTmsK0qeGmdGIGi1nQzPa6kplW
/Q5ruOmzmYanh+eX4+urKy6bjklFacj+PldEY5czMgWV+WRGFDPbhmwDVaKmcQ1cGZ4ezsof
D38eX1SIKyPYB2d7KbKO1w39PKr706w2KhO6X6nEbCl+pzAUY5AY6hRBRFDDHxneAVK03qpv
AixW0OmIPbY4/f3+z5dbEN9fnn683T8SPDrPVuSOQbjmgMZN4BRNODeAUwvz5OeKhP66F036
Ek6TkWjDfUHMyj6nn8anSE41NHpgDr2wJBeKqGeW/srbXhMrjombokhR+yA1FmgRar2QDsh6
t8o1jditXLLDfHTR8RSv9BnHBwv1IG7pUi65WOJT8B6xWIameLApztFsSKBSlPr+XAq9+LFl
PJBtUNVQp+rVHB+9ZQuyIXYBP768YRALkCBfZZIYTJt7+/YDbn933453f8NVclirRZXscnQG
kOqbT7/cwcevv+MXQNaBhP2f5+NDr0pQD2pd26ARfGK0RM7DoocXn375xdLdKLy6bljDF1P0
VGXCmhu/PppaFQ2bhl/i6y5NbF55PzBEcizz6CbPszJlTScfFN2XLBYYMmjMKoPTF2bMNg8z
fkJwMJcc9UyNtNi2l4JNkqdlYJnAqybJIvawTVakcBUrVlArZUcnFw6zrnTowKofpa1N0fAt
VgtiZ33g24001mhSR0zjcC8BPmrvTz729iTvlHhHHgO8y9pd5xYw9S5WAIiEWnRJYN+mqxvq
kcIhmBGls+Y6tiAVxYrUFQNu4Ryj3Dn9ufXcBhwrFK65dfXS0rRjKFgmVRHpvKb5jJwQzqnc
eT2XUCMsDEo/66XYhSYpBadejIOnYouaKsV9E35wwBT94TOC7VFQkO6wXBDd10hpk1xTn2WM
tE7QWNYUftUIa7ewdwKEAG7NA+iK/0FUG5mtocfd5rPtkW0hlCxHwWckXIpnAdsgdN8rbomg
8EO+S6PStWG2tYQ0cNtjhuUmdY5IDA0InGOP4U8bZvlhoIo2q5TlqQNC86/ODUOOyR8KS5kC
P7RhmAvQoUEHeCmjEyo88MNNu/VwiECDfFSZ+1wMcSxJmq7tFrNV1rrVwWDmTL7Tb1PXp05c
Z1Wbr1xyhp5HbqAPB9wJx/LLtGuVlhwE2oZMX7HJ1YxZ0yBDvvrvAZu8cpxy8Pcp9sDzz13L
nE/QPR3kKsqpuqgzJ4sI/Fgn1nCgMXyDOqO2caYfloRZd/tEVOFq3KQtWj5W68ReN3JqcEXU
aLrsqJl7FGCaVPlZFDVrYZRAFCLodoxz3A3rfCe23gtXTySfaewQMTV6+VnFVas/2Ma6KuBr
VbkZ3uYsNX4gI7ivIkbgktDnl/vHt7/P4O509uXh+Po1fK6T1oMqALcjVSgwZ35Ewl4IkJYl
cDJvcpAx8l6TfR6luNplaftp1k+5lkSDEnqK5KZkGFPQX/I2uPON3UCeXlUoR6dNA3R0DMfo
sPT34Pvvx9/e7h+0fPYqSe8U/CUcxDUwslQaX36ajGZLqzUwjTUGlMd20b7xLFGBnYXNxAAK
EhRwROApdg4Hvc1TmakeDc8K1nKLH/kY2aauKvMbv4x1hcbv612pPpCru5tOnA1rU16n7BJf
bOFivaNl3I+OmhOQWy/b5Pjnj69f8dEpe3x9e/nxcHx8cw3D2UYFGiejbuiGCqLxQrK3a/w/
KWT1ZPiIISkLNKA+UYkusHRygEtWJLf75SZxBhF/U7fCnn+sBEM/3jJr4VrbqekevEUQG3t4
hjsbfIr8KTMBNbwQ4CeH1+0YGm2mwVLTAdrsh9W+MIuJ4EaGW1ZaiszWoakyEOudMR6iS0u5
CSh7Oiy6ui7pUEHyKltlovKtnlUFyvqWVsnprZQzanbk8OpxgYMgh8Uflm4wp4qX77k7ZHT0
LRKOi0RTpSXIq9uUnypvTz269EtJ02RNu2N52F6NOFG8im4n35JPD4psMdpir2ErBOyJRuon
9UuGizZU0CjsddXgbRZ217AjQHwy1pvuS/awEoNx33rhedTTA9KfVU/Pr7+e5U93f/94Vixq
e/v41eE2NZPpC4BzVuQTtYNHR4Vd+mlkzWq1bvHKusOrbQsrsKJj+qAlx0foFLLbos9uywQl
x11fAasHhp/YunapzlEVuE4Yp4ZBmfcAA//yA7k2sdvVojWnsruWCct6YzxAFOmuG5RBLtO0
JrcyXDnSwtWdK40JvgQO/O1fr8/3j/g6CH17+PF2/OcI/zi+3f3nP//5t6VMQa8QWe5GSll9
sgjbZn5POonYJWBn/cWP945dmx5sRaxek0HOJL3penKvy9fXCgdMqrpGy5voodRcC8fuXEFl
Gz3Gi7AkrSlSBfbaABc5lLVEnqZ0NLjhexxJvIoYmZVmu7JRsNDRdSi4rPZUQ9fjNwzB105B
jnJFJKqma5a1lJuGkaX/h9Xjjhjwl3XONraXA7K9tnHC4krxC815dqWAqyJsG6VaIQ4TdVZF
eNbf6hz/cvt2e4YH+B3qDp0QwHIWMhGsx1oDfQZJLWqFkn5HGYif1gUez9KyS1jLUOBudrVW
AHs8JdJMv3LewFCUbcby0Iun4TuK53gTbaRnvuswTFdqzDUGDRZgYqvMImnStVuAhQNBt5Pi
t2RMmI5wMrbx3lQjKL0SFl80mS2cHgWb/EoL2A0hWps9w0Cy4jctmVlBnsq9HC8b5Zgd2thN
w+otTWNuVWuvW6oACYQLLIrGMGioAvZI0GtIjhVSgkhWtsKj4PpDVYp1SsmyucsaERhhzaox
FENgGCrM3pESYLaWdbnWcJniTYTwJm1jKOkna/sbK7jKasLzzHui9enUL9KUVFPs1xkaB6T7
rmjbG6IqiyCpKfdAkq5br06Xtar4lmqWJVyqUAD6/pM6VlXKuFbTBHv6+em/x5fnO2dfDydt
zXsDsmu4tFekoA9ECmmpUKTfo5Kd4exqt58WM7fYtNjh1klO+PtJe+gaJSdb3UK04I9dUcNG
XKV5t06Z5CtSWLeWW4zEV2DAAu7W2QGkPke9Y266IkOdv1Qonnp6wA6iRg2FTXT3vjzhjXgo
yGSrcoxYk98E4YNdBN4LeGUn90ECDeyAM9Y7DNT3Of00G10sKJqs7EnGk6Xbibr1vREHPU2w
cGxdV3t8fcNTG2VXjmHxb78eLTv0XekmiZMAKtmVg/cPEgVND2rDRGdDkUkGGLFqNMdqJ5cx
jMgfSlfjSJ0FTUZWWa0lQ40XTjSiPwlONEKZDveoUzzhklf74AoHFzcAa7ZuWzhp6mHMkEzf
/KWStcGLPL1PJS2qw5pdgQ4DjFQjKyrYFKxJmVpuo39mI/jPkgzg8MFXSpwn3PNoBEJWCWs3
mmLt1Aq0pFiU/opMCKwnqbhsOt0/JSiuMjUx9A3KU/H+PwlSjWNK3QEA

--ibTvN161/egqYuK8--
