Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNX33CEAMGQEF76TCRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 151CE3EB362
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 11:39:04 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf7345826pjv.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 02:39:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628847542; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6J5PX5FKBEi3yJWHwAIi++YS0so6OShXffkJco+CgQO+9QcTYm7CCI+TgnUjh3z3E
         BeYEYqCvJQmsy5lguaci0rpNeOwZTCf9PVlYeB4aLTkIE+K9n2hHzALJWvu9A0TAq8Jh
         m1IqWsZIetrQZOvUyu4tlKQEz3H2TSSzHq8tR+OCohXjU5PoZ8vGQiKL66rZcpo6LYYS
         q+cGf38w0vVDwX0n8mSlCuCwo589PzIPCK7yvWDi62Yarx1h4QLK+IrFRRhYa3YSw/aD
         I7aKals5LDdM8oB2UQNDz7CC2fs7JpZdLE/uyjWuqhn3k6vjU+soE6OFeiSYz6PNghsw
         lQKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+GMCB3eF5f8bnk5w1zTwo7kzqa9T+0uHONX71NQU1bY=;
        b=gpUY2HVaWOozTY2Cqr1FjcljCateRXcLweNoq1eykFFeV2q869TmNlIp5IxoQo03J/
         IxBJ3MtQ7nqFXqswoY0mqzsJqrS3whNAzU/i1hDED0zGt8nmAehJzYdQVSyNqg0NUuUr
         Jm3fqevTTC7lcisNhdI/R4zFwPTKUSOGic2y53kPlp8yFPb8s1NdFrmpxTyxjmVICWqM
         kYIgayqxSgw4c7EovMbVgBWyldDKQlyEM7cGuvn6CtbgAu7QXN5wF3cWwQ8bN7IIqFQy
         v3ecqtODdBX0tcsCrX8y2WUrM6n2Kvt6onKG1lCWwPaYgX8I4QI6RubyPzrw/VjoTHZZ
         F5tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GMCB3eF5f8bnk5w1zTwo7kzqa9T+0uHONX71NQU1bY=;
        b=hnDzlZqA0ezIpheC6iFyY+v0gZmVYSlZM5uMl4Wn15FIRoWYR/MvtIa+NZO7HPUaOd
         2AEx4WDI3OE5FMRE0x2GEJzyhdMYHBIwZmczvaeEeNSKfcrmztHtWtxFkXIto9rVvk1j
         Qx5wjeSwa5OvoICl/+edjPlO42eO/AXuSLc/ZfnP0cIsn3stax3wDxMuxk3Jn89BOo9W
         XewOaJwIbvYA6GghxwxzluPFcisFuKyNpS4onZTpEiqvQhoGvoFWCLSs1XJr9i+VkpZJ
         38uOkMAcBGTku5gIJfftopcE/rsIiKSmh6rmMSYdrMvXV/QLT5ujsUyofVcgD6EBy9+t
         KV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+GMCB3eF5f8bnk5w1zTwo7kzqa9T+0uHONX71NQU1bY=;
        b=oclPMzh7HayXTiYpHHOPhdbv5UyJaKmd7hhxkvRIdVkWcpfyOrM37vDUxgOg1AyCA1
         tG8IxNNOpTxW0HjWsqJETkPpnnvJzqXrmn+HCaVfvod79eJcYpxOfFPv2EnLjgOMn+Dz
         UdXgO8pFDj+DNx4cKCROVKsgxbDikpD2wpT0Z0isXqmaBZLlJ3qHQmpfi8iIqOFUUPkq
         xKrDM81Q/VTe/ijWO1WDNXakd33xh0FlpW+G9/gjPst2EaWRep8OEYR4u+pkqe+BgQBC
         CScjHmdKAyNS+0mhJP1hkemrPIScaLQxMVIZJ/dmuvaVbu0Eo4bvRm36Hmz1bZKW3M6k
         ouIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RRSq2rWs/H1vy5BZ4/eFXreLRR7PxcOX+Bap0aTNx81aDV+bg
	hrnxTMbvz9b6Jcv2kFqO0+A=
X-Google-Smtp-Source: ABdhPJxJpCMpFJg9FDwGXx+kxHssiQ46tLN686f/kco1UVGvLbzvQ2lDrpI8AbY5RXZYaeUI1VZM0A==
X-Received: by 2002:a17:90b:154:: with SMTP id em20mr1763529pjb.92.1628847542273;
        Fri, 13 Aug 2021 02:39:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls435014pgb.1.gmail; Fri, 13 Aug
 2021 02:39:01 -0700 (PDT)
X-Received: by 2002:a62:ea1a:0:b029:329:a95a:fab with SMTP id t26-20020a62ea1a0000b0290329a95a0fabmr1623775pfh.31.1628847541435;
        Fri, 13 Aug 2021 02:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628847541; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQJnOkauSdT/Rou9jvAq2+muYiTWSwaOZy7D2CtfFX/WzqPc6RWgVTkQlIfBEQG2zL
         tKIHTKSCFR4VVtRiE4IXCOKPGDpeEO/fFZ2s34h7D19UapKTy5hfQ08Q6bEbv3y4xwZD
         XSbVDkwympc84noPrkfh+rzezz5ciJ/2hbt4a6wzZ9Oqd9oY68+F3WAAi7fR9E8Fzvfn
         w0XVt9ynxbvF4yGI6kd0ZUwKj9QVk5PwrtfGG0CRyz6+aTe3VHhslJptnlHx0/9MZrYE
         XjZGpZfH8CPhRa6hCcVNWigiPhqbTNdI53HuANh3UTivcoukNU8kNVo4Z9VMC7Y3FTlz
         04AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=AXsE9dzi3FiO2czJo7beH9jTTPi1jmr2XYDGtsb5v7M=;
        b=npB1D2qs7NQcZmJtRPZzqVGnq4aTQP0wikwsG+UjK9bkISnq/BdVxwi34qj5Rw4VVI
         bJJSsBx7Fnm6x1Jcc/rtgCAvtJx3Rbr7kuYqowGVC5I1w1VpuGSoHtDozwHHbRB78jIz
         cJ4ADS0Gb5aCJjiqUAPb8yyzxnDAM9sDhOerMH7u0fdt3NM7WGDpvgkL6neSHAiO5VIO
         d5iDYDbaB16VH5F3T3wzHHY2uH+eexe+DeJoO2GtzkoFHRRjMyDMR4Chx6a9iTav1kU0
         FLbN1moNhUK9VgfH+ebh1Lug/FLm4m66BPdoGbCr9Hgfg8JO1GzPmusUax+qSTtI+3TU
         nO5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id e1si52257pjs.3.2021.08.13.02.39.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 02:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195804290"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="195804290"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 02:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="674260687"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 13 Aug 2021 02:38:57 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mETeT-000Ndl-6p; Fri, 13 Aug 2021 09:38:57 +0000
Date: Fri, 13 Aug 2021 17:38:39 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-5.4.y 3700/4278]
 arch/powerpc/kernel/traps.c:2073:6: warning: no previous prototype for
 function 'CacheLockingException'
Message-ID: <202108131720.CBb15KSy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   f52a40401ee9825556cc803c110c67bfec5f6b94
commit: acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4 [3700/4278] powerpc: Drop -me200 addition to build flags
config: powerpc64-randconfig-r035-20210813 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:29:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/traps.c:24:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:31:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/traps.c:24:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:33:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/traps.c:24:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:35:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/traps.c:24:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:37:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   arch/powerpc/kernel/traps.c:1960:6: warning: no previous prototype for function 'DebugException' [-Wmissing-prototypes]
   void DebugException(struct pt_regs *regs, unsigned long debug_status)
        ^
   arch/powerpc/kernel/traps.c:1960:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void DebugException(struct pt_regs *regs, unsigned long debug_status)
   ^
   static 
>> arch/powerpc/kernel/traps.c:2073:6: warning: no previous prototype for function 'CacheLockingException' [-Wmissing-prototypes]
   void CacheLockingException(struct pt_regs *regs, unsigned long address,
        ^
   arch/powerpc/kernel/traps.c:2073:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void CacheLockingException(struct pt_regs *regs, unsigned long address,
   ^
   static 
>> arch/powerpc/kernel/traps.c:2087:6: warning: no previous prototype for function 'SPEFloatingPointException' [-Wmissing-prototypes]
   void SPEFloatingPointException(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/traps.c:2087:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void SPEFloatingPointException(struct pt_regs *regs)
   ^
   static 
>> arch/powerpc/kernel/traps.c:2139:6: warning: no previous prototype for function 'SPEFloatingPointRoundException' [-Wmissing-prototypes]
   void SPEFloatingPointRoundException(struct pt_regs *regs)
        ^
   arch/powerpc/kernel/traps.c:2139:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void SPEFloatingPointRoundException(struct pt_regs *regs)
   ^
   static 
   11 warnings generated.
--
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:60:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/perf/core-fsl-emb.c:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:62:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/perf/core-fsl-emb.c:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:64:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/perf/core-fsl-emb.c:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:66:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/perf/core-fsl-emb.c:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:68:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   arch/powerpc/perf/core-fsl-emb.c:661:6: warning: variable 'found' set but not used [-Wunused-but-set-variable]
           int found = 0;
               ^
>> arch/powerpc/perf/core-fsl-emb.c:700:6: warning: no previous prototype for function 'hw_perf_event_setup' [-Wmissing-prototypes]
   void hw_perf_event_setup(int cpu)
        ^
   arch/powerpc/perf/core-fsl-emb.c:700:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void hw_perf_event_setup(int cpu)
   ^
   static 
   9 warnings generated.
--
   In file included from drivers/staging/exfat/exfat_super.c:12:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:241:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/exfat/exfat_super.c:12:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:243:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/exfat/exfat_super.c:12:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:245:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/exfat/exfat_super.c:12:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:247:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/exfat/exfat_super.c:12:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:249:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/staging/exfat/exfat_super.c:3835:12: warning: stack frame size (1040) exceeds limit (1024) in function 'exfat_fill_super' [-Wframe-larger-than]
   static int exfat_fill_super(struct super_block *sb, void *data, int silent)
              ^
>> drivers/staging/exfat/exfat_super.c:2200:12: warning: stack frame size (1552) exceeds limit (1024) in function 'exfat_readdir' [-Wframe-larger-than]
   static int exfat_readdir(struct file *filp, struct dir_context *ctx)
              ^
   9 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FSL_EMB_PERFMON
   Depends on E500 || PPC_83xx
   Selected by
   - PPC_FSL_BOOK3E


vim +/CacheLockingException +2073 arch/powerpc/kernel/traps.c

14cf11af6cf608 Paul Mackerras    2005-09-26  2071  
14cf11af6cf608 Paul Mackerras    2005-09-26  2072  #ifdef CONFIG_FSL_BOOKE
14cf11af6cf608 Paul Mackerras    2005-09-26 @2073  void CacheLockingException(struct pt_regs *regs, unsigned long address,
14cf11af6cf608 Paul Mackerras    2005-09-26  2074  			   unsigned long error_code)
14cf11af6cf608 Paul Mackerras    2005-09-26  2075  {
14cf11af6cf608 Paul Mackerras    2005-09-26  2076  	/* We treat cache locking instructions from the user
14cf11af6cf608 Paul Mackerras    2005-09-26  2077  	 * as priv ops, in the future we could try to do
14cf11af6cf608 Paul Mackerras    2005-09-26  2078  	 * something smarter
14cf11af6cf608 Paul Mackerras    2005-09-26  2079  	 */
14cf11af6cf608 Paul Mackerras    2005-09-26  2080  	if (error_code & (ESR_DLK|ESR_ILK))
14cf11af6cf608 Paul Mackerras    2005-09-26  2081  		_exception(SIGILL, regs, ILL_PRVOPC, regs->nip);
14cf11af6cf608 Paul Mackerras    2005-09-26  2082  	return;
14cf11af6cf608 Paul Mackerras    2005-09-26  2083  }
14cf11af6cf608 Paul Mackerras    2005-09-26  2084  #endif /* CONFIG_FSL_BOOKE */
14cf11af6cf608 Paul Mackerras    2005-09-26  2085  
14cf11af6cf608 Paul Mackerras    2005-09-26  2086  #ifdef CONFIG_SPE
14cf11af6cf608 Paul Mackerras    2005-09-26 @2087  void SPEFloatingPointException(struct pt_regs *regs)
14cf11af6cf608 Paul Mackerras    2005-09-26  2088  {
6a800f36acd5bf Liu Yu            2008-10-28  2089  	extern int do_spe_mathemu(struct pt_regs *regs);
14cf11af6cf608 Paul Mackerras    2005-09-26  2090  	unsigned long spefscr;
14cf11af6cf608 Paul Mackerras    2005-09-26  2091  	int fpexc_mode;
aeb1c0f6ff18f5 Eric W. Biederman 2018-04-17  2092  	int code = FPE_FLTUNK;
6a800f36acd5bf Liu Yu            2008-10-28  2093  	int err;
6a800f36acd5bf Liu Yu            2008-10-28  2094  
ef4291243f51d0 Christophe Leroy  2019-04-30  2095  	/* We restore the interrupt state now */
ef4291243f51d0 Christophe Leroy  2019-04-30  2096  	if (!arch_irq_disabled_regs(regs))
ef4291243f51d0 Christophe Leroy  2019-04-30  2097  		local_irq_enable();
ef4291243f51d0 Christophe Leroy  2019-04-30  2098  
685659ee70db0b yu liu            2011-06-14  2099  	flush_spe_to_thread(current);
14cf11af6cf608 Paul Mackerras    2005-09-26  2100  
14cf11af6cf608 Paul Mackerras    2005-09-26  2101  	spefscr = current->thread.spefscr;
14cf11af6cf608 Paul Mackerras    2005-09-26  2102  	fpexc_mode = current->thread.fpexc_mode;
14cf11af6cf608 Paul Mackerras    2005-09-26  2103  
14cf11af6cf608 Paul Mackerras    2005-09-26  2104  	if ((spefscr & SPEFSCR_FOVF) && (fpexc_mode & PR_FP_EXC_OVF)) {
14cf11af6cf608 Paul Mackerras    2005-09-26  2105  		code = FPE_FLTOVF;
14cf11af6cf608 Paul Mackerras    2005-09-26  2106  	}
14cf11af6cf608 Paul Mackerras    2005-09-26  2107  	else if ((spefscr & SPEFSCR_FUNF) && (fpexc_mode & PR_FP_EXC_UND)) {
14cf11af6cf608 Paul Mackerras    2005-09-26  2108  		code = FPE_FLTUND;
14cf11af6cf608 Paul Mackerras    2005-09-26  2109  	}
14cf11af6cf608 Paul Mackerras    2005-09-26  2110  	else if ((spefscr & SPEFSCR_FDBZ) && (fpexc_mode & PR_FP_EXC_DIV))
14cf11af6cf608 Paul Mackerras    2005-09-26  2111  		code = FPE_FLTDIV;
14cf11af6cf608 Paul Mackerras    2005-09-26  2112  	else if ((spefscr & SPEFSCR_FINV) && (fpexc_mode & PR_FP_EXC_INV)) {
14cf11af6cf608 Paul Mackerras    2005-09-26  2113  		code = FPE_FLTINV;
14cf11af6cf608 Paul Mackerras    2005-09-26  2114  	}
14cf11af6cf608 Paul Mackerras    2005-09-26  2115  	else if ((spefscr & (SPEFSCR_FG | SPEFSCR_FX)) && (fpexc_mode & PR_FP_EXC_RES))
14cf11af6cf608 Paul Mackerras    2005-09-26  2116  		code = FPE_FLTRES;
14cf11af6cf608 Paul Mackerras    2005-09-26  2117  
6a800f36acd5bf Liu Yu            2008-10-28  2118  	err = do_spe_mathemu(regs);
6a800f36acd5bf Liu Yu            2008-10-28  2119  	if (err == 0) {
6a800f36acd5bf Liu Yu            2008-10-28  2120  		regs->nip += 4;		/* skip emulated instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2121  		emulate_single_step(regs);
6a800f36acd5bf Liu Yu            2008-10-28  2122  		return;
6a800f36acd5bf Liu Yu            2008-10-28  2123  	}
14cf11af6cf608 Paul Mackerras    2005-09-26  2124  
6a800f36acd5bf Liu Yu            2008-10-28  2125  	if (err == -EFAULT) {
6a800f36acd5bf Liu Yu            2008-10-28  2126  		/* got an error reading the instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2127  		_exception(SIGSEGV, regs, SEGV_ACCERR, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2128  	} else if (err == -EINVAL) {
6a800f36acd5bf Liu Yu            2008-10-28  2129  		/* didn't recognize the instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2130  		printk(KERN_ERR "unrecognized spe instruction "
6a800f36acd5bf Liu Yu            2008-10-28  2131  		       "in %s at %lx\n", current->comm, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2132  	} else {
14cf11af6cf608 Paul Mackerras    2005-09-26  2133  		_exception(SIGFPE, regs, code, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2134  	}
6a800f36acd5bf Liu Yu            2008-10-28  2135  
14cf11af6cf608 Paul Mackerras    2005-09-26  2136  	return;
14cf11af6cf608 Paul Mackerras    2005-09-26  2137  }
6a800f36acd5bf Liu Yu            2008-10-28  2138  
6a800f36acd5bf Liu Yu            2008-10-28 @2139  void SPEFloatingPointRoundException(struct pt_regs *regs)
6a800f36acd5bf Liu Yu            2008-10-28  2140  {
6a800f36acd5bf Liu Yu            2008-10-28  2141  	extern int speround_handler(struct pt_regs *regs);
6a800f36acd5bf Liu Yu            2008-10-28  2142  	int err;
6a800f36acd5bf Liu Yu            2008-10-28  2143  
ef4291243f51d0 Christophe Leroy  2019-04-30  2144  	/* We restore the interrupt state now */
ef4291243f51d0 Christophe Leroy  2019-04-30  2145  	if (!arch_irq_disabled_regs(regs))
ef4291243f51d0 Christophe Leroy  2019-04-30  2146  		local_irq_enable();
ef4291243f51d0 Christophe Leroy  2019-04-30  2147  
6a800f36acd5bf Liu Yu            2008-10-28  2148  	preempt_disable();
6a800f36acd5bf Liu Yu            2008-10-28  2149  	if (regs->msr & MSR_SPE)
6a800f36acd5bf Liu Yu            2008-10-28  2150  		giveup_spe(current);
6a800f36acd5bf Liu Yu            2008-10-28  2151  	preempt_enable();
6a800f36acd5bf Liu Yu            2008-10-28  2152  
6a800f36acd5bf Liu Yu            2008-10-28  2153  	regs->nip -= 4;
6a800f36acd5bf Liu Yu            2008-10-28  2154  	err = speround_handler(regs);
6a800f36acd5bf Liu Yu            2008-10-28  2155  	if (err == 0) {
6a800f36acd5bf Liu Yu            2008-10-28  2156  		regs->nip += 4;		/* skip emulated instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2157  		emulate_single_step(regs);
6a800f36acd5bf Liu Yu            2008-10-28  2158  		return;
6a800f36acd5bf Liu Yu            2008-10-28  2159  	}
6a800f36acd5bf Liu Yu            2008-10-28  2160  
6a800f36acd5bf Liu Yu            2008-10-28  2161  	if (err == -EFAULT) {
6a800f36acd5bf Liu Yu            2008-10-28  2162  		/* got an error reading the instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2163  		_exception(SIGSEGV, regs, SEGV_ACCERR, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2164  	} else if (err == -EINVAL) {
6a800f36acd5bf Liu Yu            2008-10-28  2165  		/* didn't recognize the instruction */
6a800f36acd5bf Liu Yu            2008-10-28  2166  		printk(KERN_ERR "unrecognized spe instruction "
6a800f36acd5bf Liu Yu            2008-10-28  2167  		       "in %s at %lx\n", current->comm, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2168  	} else {
aeb1c0f6ff18f5 Eric W. Biederman 2018-04-17  2169  		_exception(SIGFPE, regs, FPE_FLTUNK, regs->nip);
6a800f36acd5bf Liu Yu            2008-10-28  2170  		return;
6a800f36acd5bf Liu Yu            2008-10-28  2171  	}
6a800f36acd5bf Liu Yu            2008-10-28  2172  }
14cf11af6cf608 Paul Mackerras    2005-09-26  2173  #endif
dc1c1ca3dcd94c Stephen Rothwell  2005-10-01  2174  

:::::: The code at line 2073 was first introduced by commit
:::::: 14cf11af6cf608eb8c23e989ddb17a715ddce109 powerpc: Merge enough to start building in arch/powerpc.

:::::: TO: Paul Mackerras <paulus@samba.org>
:::::: CC: Paul Mackerras <paulus@samba.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108131720.CBb15KSy-lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV--
