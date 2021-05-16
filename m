Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWOFQGCQMGQENTUVWFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CECB0381BCC
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 02:10:07 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id e75-20020a25d34e0000b02904f982184581sf4374358ybf.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 17:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621123801; cv=pass;
        d=google.com; s=arc-20160816;
        b=BYbAMvjklPKepM9f3HSO45Mxp08raRko9SZeLx2ur4AHSGxH6Ngx6JjTdWg/mNGFR5
         d3wrAefO2YPU2hidvCzNh4oB0qvT1O+1/naSAB5ftfVcT5Lh5adIMWkVm5BNm8qZyyNf
         DVcBGreROLPK4Ya06ABQ4ERdfpUgUzWh6dUAHIL/YDrvoh+M5r36HAkkHV39zB6QG1My
         b/jH/potTYPRUb5Udj99ikBtKZl2iNFPIGc1bSPEr2kfzqdU5wCEFvLIp4aRjDHmJznp
         D31bnr/UHH2yUReHJKElf4LL9lWTn1sMGICL7wqT+LUUFhmzOoeFQQ8ks9XOKkKbBpSb
         wjCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7tgntJuQb+Esr6XdSECOcAUp53KYJhVzSW8IiLP7qmU=;
        b=UE/xIweJQ+ScYY2ifuMP9czCZKJDe+jglC2KLLOJTdJiLOp1ggzLvx/1emI1Vvt2Yl
         GJBjTHAjQ/Gje74UEhotBaWh+cb9y8eyrHE8ECEvX8ro4XtOnOtc0eVCHw4cCKkzIuXc
         T70mubMAZB42ErCBrf2h4kio2XKU7gijDmg6wm1ANE1wYpMu2nMaQpJwZG32V/BjGIAh
         io9s8jpM0DWFrSILN8Qdld/frz56ptDq09anntVZNDkGHe21GDKhdv6bp18I2UTZL7u0
         +NhtlZmucv/vF5dRmLzKk1i0friIH2k+p7L2h/bwCSJ7/peKzpVCphTLV+RnxT+lwuge
         yxzA==
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
        bh=7tgntJuQb+Esr6XdSECOcAUp53KYJhVzSW8IiLP7qmU=;
        b=cte/JI3wo+pcLy0sooItTPZyM6OX+WQY9WmCDlNiq7RemWaSMRfGSKYQ6C/MVzuMxP
         eZ0cpmJfnkxXnu7+FZHWcmmfow6mfuTFFM3ecbjYq+cGC1PEfuizG57KfNk8ZiCmoMJT
         PyFKVk7oxtJQeBmiRqvf2nELkwXsDQ/ttTjQTIvQoGVlpyn3l/A9XMsecQrTvX0yYYLx
         X6XDlcaB8bjQOFdiDJAGAOp1U4ieThWypNDKUCM1u0ZaLk3WDG+HIc0kJpsH2/GstXM3
         8+6jxBhJbIonEHIlvaEKq2s5ZCrks6EBTfqw4lDw914rcRL58AtnbxVWnpwm/2M5/AwU
         64FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7tgntJuQb+Esr6XdSECOcAUp53KYJhVzSW8IiLP7qmU=;
        b=dUu+1rKpu/w5rMPQeTvN56udA9oSsy9lV5qx9jlWQOsQFcmYriGq+GuK89jDPrTROz
         aVVWgnsEEnp2WAB12ee4TOIDmj53WV+i8jBnXAycwl34zfSQF1OyupmWkYOqu7li8BXH
         WxrnhCop/OIyjILlZqr6O/9HHOt8i1rb43oiPXzJ0wlubpowF6xXajSvdBRZGPiY4cuQ
         88k+mL310PUgG4Dp5GGKv+ryJx0h1pEMWrhFxWnPUDgn19bgUSbNcx7EZUCpiiVLxKT9
         8Bscu8LPxGVC2zB2aPw6LDQ7hhx3qgHsQL1U4kLPSFtr5lt6IAjWRWmYt7b8LfaFM52L
         uMMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hJnAvkDyJWENurLAkByT4QdPk3Afd/JfdvI1fEfvM4lNQ7FiP
	9vbBnM+hOM0QoTxrsL8339w=
X-Google-Smtp-Source: ABdhPJweC8bYQIGtV0UPolWUoMI3ZPjVkPw6bDoKdhX5N/1+9MexZ1tzm0NDDNI/WGmdo+MDlL+QTQ==
X-Received: by 2002:a25:db05:: with SMTP id g5mr1422215ybf.67.1621123801504;
        Sat, 15 May 2021 17:10:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7808:: with SMTP id t8ls6241361ybc.3.gmail; Sat, 15 May
 2021 17:10:00 -0700 (PDT)
X-Received: by 2002:a05:6902:725:: with SMTP id l5mr74382862ybt.82.1621123800553;
        Sat, 15 May 2021 17:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621123800; cv=none;
        d=google.com; s=arc-20160816;
        b=GKH/SYP1k2IJy+D8WRlQdA9D2QsKjmcEha7ikdNK7YteeOodbrqoojnhnbi/4T5H7f
         jVIbzrv2diQTWnAVfDNibmY0dfe0HSKu6V2TEcAhnBY+SNnJdujP2TfREzoN89BYmzpA
         z3uGw9tqy8M9LfRWCoXVrFq3XUv53ov//7iHOGWTDuKkXfz3NF8CbCPdhW4uL3i3/xxi
         6il9SiOVAcI4Hn477YHcPTfuLeizSR1pM5G5742tHLRtbXoIpuR2ty70ppcEpUGmwkbo
         q4IEAa9rGTUxxtW/VwzDPm4j120bjscr4GP0LVwZkxWCvYH8G0sCFgG9kVvGKp7RHnxu
         xjRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Dgn94/eMYP3OnsFg5L8VC1htL0zom3VXySBPq/KrUEU=;
        b=nr0PKutSexDkuz2tsceTUzJ+GHF4Y/X+zG4Niu+0nEVSshtNFCT0o/ISwTDQGiOK2I
         M49AOmZfrvdt2qGM+j2IO9eAPcc4r53TK/WSvqgC3wjDRamklgJe6EzuMBSzGLFCspJE
         w50whKRczPMfp0uQqhnNZb/4loCMN9hsLGYP6+t9jfpfT4LRyRXtnc40tg0/7ZcbMQst
         X8HrKHZHDjUj8Gux2OrDBjnezQZfLOSWegHJes23DggpWs+F7k6fwlKvrk3zwWFcrK7L
         iDdUjkpnmsxN6DpQ/QPzynQIPykxmwry5B+I2HxUDduVWAEvaQyn8bi5yTU0cG2Els5w
         w+qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id r9si821923ybb.1.2021.05.15.17.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 May 2021 17:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: XREuxk7qfeQQaj7+nV/L/SuawYsl3rXS7Gz/0U08MYnykyYICF3FET/10BbGl6MGvLb1uxf1Eg
 W3swD2EFEFfA==
X-IronPort-AV: E=McAfee;i="6200,9189,9985"; a="199991253"
X-IronPort-AV: E=Sophos;i="5.82,303,1613462400"; 
   d="gz'50?scan'50,208,50";a="199991253"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2021 17:09:57 -0700
IronPort-SDR: 5pczrIHfYV/HIDwWTpnB0r6SF6QtZF8oSDvvRneAQjQ9bTUKCjcZpMBBkgRJqNU8KpTlQ97rBS
 8Kw/LVncZSsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,303,1613462400"; 
   d="gz'50?scan'50,208,50";a="393097990"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 15 May 2021 17:09:55 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1li4Ly-0001Hp-Dn; Sun, 16 May 2021 00:09:54 +0000
Date: Sun, 16 May 2021 08:09:23 +0800
From: kernel test robot <lkp@intel.com>
To: Kajol Jain <kjain@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC 1/4] drivers/nvdimm: Add perf interface to expose nvdimm
 performance stats
Message-ID: <202105160858.VpnB8fq6-lkp@intel.com>
References: <20210512163824.255370-2-kjain@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <20210512163824.255370-2-kjain@linux.ibm.com>
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kajol,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on powerpc/next]
[also build test ERROR on linus/master linux-nvdimm/libnvdimm-for-next v5.13-rc1 next-20210514]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kajol-Jain/Add-perf-interface-to-expose-nvdimm-performance-stats/20210513-004122
base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
config: powerpc-randconfig-r011-20210516 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 23f7d651b682ea387eaae99f0888e6ca916039cb)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/ab3efdc432a19e9be03c6cb371dd4d1e50cf9917
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kajol-Jain/Add-perf-interface-to-expose-nvdimm-performance-stats/20210513-004122
        git checkout ab3efdc432a19e9be03c6cb371dd4d1e50cf9917
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:174:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/nvdimm/nd_perf.c:12:
   In file included from include/linux/nd.h:12:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:176:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/nvdimm/nd_perf.c:12:
   In file included from include/linux/nd.h:12:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:178:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/nvdimm/nd_perf.c:12:
   In file included from include/linux/nd.h:12:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:180:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/nvdimm/nd_perf.c:12:
   In file included from include/linux/nd.h:12:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:182:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/nvdimm/nd_perf.c:18:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:701:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
>> drivers/nvdimm/nd_perf.c:18:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:702:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/nvdimm/nd_perf.c:18:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:703:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/nvdimm/nd_perf.c:21:13: error: no member named 'attr' in 'struct perf_event'
           if (event->attr.type != event->pmu->type)
               ~~~~~  ^
   drivers/nvdimm/nd_perf.c:21:33: error: no member named 'pmu' in 'struct perf_event'
           if (event->attr.type != event->pmu->type)
                                   ~~~~~  ^
>> drivers/nvdimm/nd_perf.c:25:6: error: implicit declaration of function 'is_sampling_event' [-Werror,-Wimplicit-function-declaration]
           if (is_sampling_event(event))
               ^
>> drivers/nvdimm/nd_perf.c:29:6: error: implicit declaration of function 'has_branch_stack' [-Werror,-Wimplicit-function-declaration]
           if (has_branch_stack(event))
               ^
   drivers/nvdimm/nd_perf.c:41:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:701:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   drivers/nvdimm/nd_perf.c:41:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:702:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/nvdimm/nd_perf.c:41:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:703:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/nvdimm/nd_perf.c:50:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:701:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   drivers/nvdimm/nd_perf.c:50:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:702:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/nvdimm/nd_perf.c:50:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:703:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/nvdimm/nd_perf.c:59:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:701:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   drivers/nvdimm/nd_perf.c:59:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:702:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   drivers/nvdimm/nd_perf.c:59:51: error: no member named 'pmu' in 'struct perf_event'
           struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
                                                     ~~~~~  ^
   drivers/nvdimm/nd_perf.c:14:42: note: expanded from macro 'to_nvdimm_pmu'
   #define to_nvdimm_pmu(_pmu)     container_of(_pmu, struct nvdimm_pmu, pmu)
                                                ^~~~
   include/linux/kernel.h:703:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:264:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:316:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:308:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/nvdimm/nd_perf.c:92:7: error: implicit declaration of function 'perf_pmu_register' [-Werror,-Wimplicit-function-declaration]
           rc = perf_pmu_register(&nd_pmu->pmu, nd_pmu->name, -1);
                ^
>> drivers/nvdimm/nd_perf.c:109:2: error: implicit declaration of function 'perf_pmu_unregister' [-Werror,-Wimplicit-function-declaration]
           perf_pmu_unregister(nd_pmu);
           ^
   12 warnings and 18 errors generated.


vim +18 drivers/nvdimm/nd_perf.c

    15	
    16	static int nvdimm_pmu_event_init(struct perf_event *event)
    17	{
  > 18		struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
    19	
    20		/* test the event attr type for PMU enumeration */
  > 21		if (event->attr.type != event->pmu->type)
    22			return -ENOENT;
    23	
    24		/* it does not support event sampling mode */
  > 25		if (is_sampling_event(event))
    26			return -EINVAL;
    27	
    28		/* no branch sampling */
  > 29		if (has_branch_stack(event))
    30			return -EOPNOTSUPP;
    31	
    32		/* jump to arch/platform specific callbacks if any */
    33		if (nd_pmu && nd_pmu->event_init)
    34			return nd_pmu->event_init(event, nd_pmu->dev);
    35	
    36		return 0;
    37	}
    38	
    39	static void nvdimm_pmu_read(struct perf_event *event)
    40	{
    41		struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
    42	
    43		/* jump to arch/platform specific callbacks if any */
    44		if (nd_pmu && nd_pmu->read)
    45			nd_pmu->read(event, nd_pmu->dev);
    46	}
    47	
    48	static void nvdimm_pmu_del(struct perf_event *event, int flags)
    49	{
    50		struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
    51	
    52		/* jump to arch/platform specific callbacks if any */
    53		if (nd_pmu && nd_pmu->del)
    54			nd_pmu->del(event, flags, nd_pmu->dev);
    55	}
    56	
    57	static int nvdimm_pmu_add(struct perf_event *event, int flags)
    58	{
    59		struct nvdimm_pmu *nd_pmu = to_nvdimm_pmu(event->pmu);
    60	
    61		if (flags & PERF_EF_START)
    62			/* jump to arch/platform specific callbacks if any */
    63			if (nd_pmu && nd_pmu->add)
    64				return nd_pmu->add(event, flags, nd_pmu->dev);
    65		return 0;
    66	}
    67	
    68	int register_nvdimm_pmu(struct nvdimm_pmu *nd_pmu, struct platform_device *pdev)
    69	{
    70		int rc;
    71	
    72		if (!nd_pmu || !pdev)
    73			return -EINVAL;
    74	
    75		nd_pmu->pmu.task_ctx_nr = perf_invalid_context;
    76		nd_pmu->pmu.event_init = nvdimm_pmu_event_init;
    77		nd_pmu->pmu.add = nvdimm_pmu_add;
    78		nd_pmu->pmu.del = nvdimm_pmu_del;
    79		nd_pmu->pmu.read = nvdimm_pmu_read;
    80		nd_pmu->pmu.name = nd_pmu->name;
    81		nd_pmu->pmu.attr_groups = nd_pmu->attr_groups;
    82		nd_pmu->pmu.capabilities = PERF_PMU_CAP_NO_INTERRUPT |
    83					PERF_PMU_CAP_NO_EXCLUDE;
    84	
    85		/*
    86		 * Adding platform_device->dev pointer to nvdimm_pmu, so that we can
    87		 * access that device data in PMU callbacks and also pass it to
    88		 * arch/platform specific code.
    89		 */
    90		nd_pmu->dev = &pdev->dev;
    91	
  > 92		rc = perf_pmu_register(&nd_pmu->pmu, nd_pmu->name, -1);
    93		if (rc)
    94			return rc;
    95	
    96		pr_info("%s NVDIMM performance monitor support registered\n",
    97			nd_pmu->name);
    98	
    99		return 0;
   100	}
   101	EXPORT_SYMBOL_GPL(register_nvdimm_pmu);
   102	
   103	void unregister_nvdimm_pmu(struct pmu *nd_pmu)
   104	{
   105		/*
   106		 * nd_pmu will get free in arch/platform specific code once
   107		 * corresponding pmu get unregistered.
   108		 */
 > 109		perf_pmu_unregister(nd_pmu);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105160858.VpnB8fq6-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
84sBAA==

--J2SCkAp4GZ/dPZZf--
