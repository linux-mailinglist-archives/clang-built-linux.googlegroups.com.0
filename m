Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLV6X2BQMGQEYWXWGFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id E225D3590E0
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 02:26:23 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id n1sf2379498ili.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 17:26:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617927983; cv=pass;
        d=google.com; s=arc-20160816;
        b=c55qy7i32An6Ul/MaT0XP822CV1RizYVc6wLaFUxJng/zqBcFwINSC/PvXWRxhN2Q8
         Yh9iotnPIkLOHmh0EzQJzk22p2BHiKTtlYTsZR4KaDlbWpOMugnZHWyX8vvhZeB95Rwe
         kozmuIVkbwRj5UBSai3zF+1aj6DgKnyyVFvP0DgvxjlzDXOKpSNquinQ1OtSnYDNhG9U
         X7+x3Pp149XkzocqHc4Fg22te6jJvrmaQmc6r7y3CKhzzM7i9+zFD6HJaS18vO0oh6nu
         Jz/VjsaB36lE8CXYEkkFln5LtG0D1dMf93i+nGqiJ5xJSxecM6laRY6aeEKyJXZdIvSu
         QUJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=nSmAeH0YHiefD8RTmT553JZBzs/ITebMyD2rnlRpRAY=;
        b=IgPygvDBXRCiTtWr6YoXme4Ybxu1m81hQEGXiri63ldgrUy/L4l8U8KAMKD1T4clwJ
         5QHtZ7HKfKnZduWOxym102TrYhYVS/mz5wQnPb2UNVQ6J8dETXfmiHlNvoxDtmdmDslR
         FGH0hJUKWndqkqb43tNjttclJjUnv9U+WUdQvcMLrxt6TNxm2F/ltyjsZd/SAG4yujKa
         Avnfotys/O8PQ5jtyF3fqRIabgTNMk9JUpLk3smJrNZPesIPzgg6nIHn4aI0Sg71CQxo
         DEMRUznmfCdQgpDGCynO8l/K7BaXiR7PNrSK1OgfEJfQl/IIALI8+h3XhSGImaU4GcSm
         bEJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nSmAeH0YHiefD8RTmT553JZBzs/ITebMyD2rnlRpRAY=;
        b=d3XVv1OCsTfaR8sZmZm8nJJtYxCsNuSTjixIBPlshT36npy3u5XNHYt8Kb6cwsTRDC
         /bvIdMRtj6ldnW0xH/9Ft8fXgvz0YQjUhqe3VhAag+wCrhS6vs9m+h40XbCQp1PL2zK1
         LFN9GYaT6GZtr0Com7tKOWogQgujOCXmNhykuEzVyv9zZWcUrChgjB+itDTQ/CjEb02I
         yoBzXmwVm+pyIPIsePxzDiPR22ONoRonuwLGtY/n/uUYpyNaxABRsRNlH0Pf4ir9YXqI
         WhF18/C7flDVul0OGHEnoZPjARfeyYBC5EdkxqqDWI92T/exz572G5OZzu5awT1mgcPr
         xnrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nSmAeH0YHiefD8RTmT553JZBzs/ITebMyD2rnlRpRAY=;
        b=fBUxjDL/xOeGHKx4LLuAD2HKyL8n1oHDD4hoUc5ivmUykhQthuLq1L+kBrkK9QN4we
         45vPV9RD9gjrVTvdipEInsbp2JSUPY46DxBQsYv9F/4Pf+Ps0br2zekCavOiU7rFgrkt
         aClqvpwkYUAEAWFGtflCX0M5OLd/SDR54sWYVpEpurMXxjQA0qEFDQ1HeOqDAa3vVtoh
         v7v7YBoktdK+V9Q3Yz1KoNNr/sZVpvA6MuMzQwrET4i5ExM2rfiLTGSBVyq9XJywc+yW
         GGtAHCxzg7Ptf6rqipYsvlfv8gsBpjyM5IWeJfui5tuRXYAOF0ja2bTyXiuRpF36A4mF
         cDTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L08dH7T7zORHjrGPs8NwA+i1PV9v31wxP+/GB3i/LreymVAu1
	Xds77PTaTuIWaNt2BLNSkLI=
X-Google-Smtp-Source: ABdhPJy6xmsp7mjeiWo3ENipCpx6ZeBEh8PQS4n+YNQLdeT8lyhkZiAp6HkQU2Ll3rNuvyHEYEQIyQ==
X-Received: by 2002:a05:6e02:1989:: with SMTP id g9mr9088841ilf.40.1617927982742;
        Thu, 08 Apr 2021 17:26:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1494:: with SMTP id j20ls972975jak.10.gmail; Thu,
 08 Apr 2021 17:26:22 -0700 (PDT)
X-Received: by 2002:a05:6638:3884:: with SMTP id b4mr11522208jav.18.1617927982248;
        Thu, 08 Apr 2021 17:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617927982; cv=none;
        d=google.com; s=arc-20160816;
        b=h/38oOehxU/VFdfE+yF723NCL9gx+5r+a70N9Y3w85R0Ahx/U2ZTSgOizBFQYz1eIN
         Rrk2EtxQ4kJucPeWHxKQGSrDnjc77x91wbpYbwkRGFjlsMPtyASUYiS/EvgowxQDYdr1
         5gPJwNzQFljMR3tigpjcaRo0+v9+mGHejoS3pG16dGW7c+/JjIU21ad6I1Vuk2F8fNOK
         2NOgfiJFxfKeyfHIqPXnMUY9xoPqF+QS7h7VQFKd38i0CZchzWfrRIL2fiNNbhAkRl9x
         zXeom2k++YhRurqYLmC9T5IgX+vc48BXyiPAt1ZGvcaCT4u6BMc9T1Q2lqom6scfH3NK
         SgEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=X8A+lt+3nL5LxJ1plzzr83sMxA2LczQhRnQqjRt1u+8=;
        b=hCJNDcHPjMW4eKO2JfeFwf/4zo9gAy1tOnCfNB3nWtMqKC7plEbosNN8D7bybNuxuv
         e/e/kzSzxt+AWgBplspywbn6NXFg6D5K+Mw/QEaZ4W4kYXANzIKV5goNTRoaBw7hp+2r
         3XAjHYXavoWx5mZUNovytggWKFiisfpXAGL3Sj5NXbToYDiU9ZznSEWJKmSBM47qg/JA
         nzTdPsCXdkClUuMiigdhPyUkVPDbLNmyORudq2oGRHBJdAUGLqh1U1VkO3XF4ZdVQqSr
         n+xDD7/k6NmIvxYYFSNZttXwHEmDbJlylhpFTl5g2uZhfOdwHuAR10yYV32wrmyXz3cg
         X9Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id y8si58022iom.1.2021.04.08.17.26.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 17:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: hd/Km0wGzhNAvltGJZsyKnYV3grpGbT50e1ZwtedGxFRKwKi6k/02ClxYbScPPJPTD6SmmaR4/
 HDDszFDDl0Dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193204138"
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; 
   d="gz'50?scan'50,208,50";a="193204138"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 17:26:20 -0700
IronPort-SDR: Uq6xd9sNJTd0DPASX14a79NMcrjigOpzteWxxHhPbgaTosKJvbrPOQhVHOkVOeqWdjMGcYR+cK
 dt1xXJ/WRNsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; 
   d="gz'50?scan'50,208,50";a="380455118"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 08 Apr 2021 17:26:18 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUeyY-000Fso-1V; Fri, 09 Apr 2021 00:26:18 +0000
Date: Fri, 9 Apr 2021 08:26:10 +0800
From: kernel test robot <lkp@intel.com>
To: Hector Martin <marcan@marcan.st>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, arm@kernel.org
Subject: [soc:apple/m1-main 13/20] include/linux/io.h:98:34: warning:
 pointer/integer type mismatch in conditional expression ('int' and 'void *')
Message-ID: <202104090804.z14OP6te-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git apple/m1-main
head:   7d2d16ccf15d8eb84accfaf44a0b324f36e39588
commit: b10eb2d50911f98a8f1cacf00b1b677339593f4c [13/20] asm-generic/io.h: implement pci_remap_cfgspace using ioremap_np
config: powerpc64-randconfig-r024-20210408 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dd453a1389b6a7e6d9214b449d3c54981b1a89b6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?id=b10eb2d50911f98a8f1cacf00b1b677339593f4c
        git remote add soc https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
        git fetch --no-tags soc apple/m1-main
        git checkout b10eb2d50911f98a8f1cacf00b1b677339593f4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   include/linux/io.h:98:9: error: implicit declaration of function 'ioremap_np' [-Werror,-Wimplicit-function-declaration]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ^
>> include/linux/io.h:98:34: warning: pointer/integer type mismatch in conditional expression ('int' and 'void *') [-Wconditional-type-mismatch]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.
--
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   include/linux/io.h:98:9: error: implicit declaration of function 'ioremap_np' [-Werror,-Wimplicit-function-declaration]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ^
>> include/linux/io.h:98:34: warning: pointer/integer type mismatch in conditional expression ('int' and 'void *') [-Wconditional-type-mismatch]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.
   make[2]: *** [scripts/Makefile.build:116: arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1235: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
--
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   include/linux/io.h:98:9: error: implicit declaration of function 'ioremap_np' [-Werror,-Wimplicit-function-declaration]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ^
>> include/linux/io.h:98:34: warning: pointer/integer type mismatch in conditional expression ('int' and 'void *') [-Wconditional-type-mismatch]
           return ioremap_np(offset, size) ?: ioremap(offset, size);
                  ~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.
   make[2]: *** [scripts/Makefile.build:116: arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1235: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +98 include/linux/io.h

    81	
    82	#ifdef CONFIG_PCI
    83	/*
    84	 * The PCI specifications (Rev 3.0, 3.2.5 "Transaction Ordering and
    85	 * Posting") mandate non-posted configuration transactions. This default
    86	 * implementation attempts to use the ioremap_np() API to provide this
    87	 * on arches that support it, and falls back to ioremap() on those that
    88	 * don't. Overriding this function is deprecated; arches that properly
    89	 * support non-posted accesses should implement ioremap_np() instead, which
    90	 * this default implementation can then use to return mappings compliant with
    91	 * the PCI specification.
    92	 */
    93	#ifndef pci_remap_cfgspace
    94	#define pci_remap_cfgspace pci_remap_cfgspace
    95	static inline void __iomem *pci_remap_cfgspace(phys_addr_t offset,
    96						       size_t size)
    97	{
  > 98		return ioremap_np(offset, size) ?: ioremap(offset, size);
    99	}
   100	#endif
   101	#endif
   102	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104090804.z14OP6te-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Kx+0wIxuAQA=

--r5Pyd7+fXNt84Ff3--
