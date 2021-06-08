Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB45T76CQMGQEBSBAAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA43A0566
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 22:58:28 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id ea18-20020ad458b20000b0290215c367b5d3sf12885771qvb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 13:58:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623185907; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkDqSiW/0CLbt/On3NER+jcZndBQ5j8qLjUMZ7oFiRewIHz6YUEM9d5R+a1S5fswIK
         JlFHb0ZT3fRz2UMaMhbgolCmIiDBabYYhaSbgkDMbsanrHf+uAZ3BVm4o+TE3GTbEwmo
         McMN8j0m9PTtemcPZG0ivbgtDKKlNOux2vqUvO/4UZXc48r0zncfHa92CPqrfdx4cN1S
         Mc4h4Wr5bTWJqPB+iunYUUmpeFSmEfTy5P6b+uwGbePvKAQJeWrBtJLzeGHiGHZ4m0Wh
         4s/k+/Wz+9/j+rL9mHe73TNAWZRITI5KuCFOAp2IkbcTlujHOJj2v1sD6I/XBF86G/LI
         o5bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CQhJgCNpaLTkt9dY4nzP1SU88H1DYIMvdHvKaSLcs3c=;
        b=tVZl7wp6uTIQwonjlTnTuHEaCVd5tDQEdRqjw7OsfpSk1C7R+QdDxgW3oQzHTgSc24
         Jzyim9Ix7DM/p39hPEizbxCbJT2/5nhO1Geqg2zOEw+zhLrHH2XYkIqTOq2gcohAeCGE
         VcHY3ieDABhm294yDtUn+ew5PQThnpxcjxxrIRZDIJUlHUg35Cd77CGFf0Fw9/yg+VH1
         kPYANRMkUk3dFb/9+VRIvIqjcwvjV6ASDcBgGeZemvJ1+/jWyo5yMNtuJwbJ66rwsLDb
         TyTwqx0GfL1/LG3XrGtR9wTZHFwvBTjtz7Cg64roFDfuq3hmKQCZ1mSXhgeTNOpgKMnW
         Vt4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CQhJgCNpaLTkt9dY4nzP1SU88H1DYIMvdHvKaSLcs3c=;
        b=SHTRHw24EYtpThLclpGSXd0KJc36BG3SJIPhAe+jK30/NjPehpQTkVYamGSycNRh3D
         oJ6Rl3Exj6OHa3bVLFJXMr0iVOWmDFQzSsw68Y/F2crQvwSd6z/lhGUtbAUjAfv88BMm
         D0jkex72puP8vaTKH9fHRu00chgWrElWtt3/tAuvJQBtvpkSH4wryNWOVlK94Lq4RIsx
         8sbv9OYl69afZqnhkond+g5Yj4IvuuK5y0a4gjeGf3Ge01JYeYnSSFEueRWQ60jUkZRa
         jIRjA1YUY66ci5AuZmchiYdr4QYm4pXJPSgrQ31EmJ/OF3xMbB3qAeXaIiTb2ehDKlu0
         EioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CQhJgCNpaLTkt9dY4nzP1SU88H1DYIMvdHvKaSLcs3c=;
        b=iC/HuGjrKfNqlcv46YMGHvQJpkDQRejJC5jRrR2N/sK9aoQPaE46lQua0vlscrnbXu
         Citvzfw+g9WXUitdpf13UV0TB/vkx+WkCEspTtkh3v3N5E0lHulp9kOeKGmDbmn34+oo
         py4XiUfldfn4dDTbqOMyqsvs6T76AXRgnEnP8GMZxbmBrJZbGP1Rqzo0MgsB7lG3GnZ5
         rrqKvJIo/pqgBKmwt4PNRBTONsIFG5Gy9EYLdDwfdfeWbyA3tpreDxun0y/VD2x/dSOI
         fG7xJKAO963606U/PXQ2fGE2MMl9AaPYiwx77Hm745lz3DaaZEA7s7bTs33jbhEeXl0m
         rueA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530n9F3eFGg1N1sxcY3TYWw9gq4RzU13k/N9hfu0LKtSwkrhi++d
	Q63dTA8vSoCtvj0mhqXHdjM=
X-Google-Smtp-Source: ABdhPJxJlInHxm55ogerXUDIsFLo4eRv8e2RdiIr0Hhd4XGX34S3uLv/tCJMGm66t2rSI1X9YXaMzw==
X-Received: by 2002:a05:620a:13a8:: with SMTP id m8mr22354500qki.213.1623185907108;
        Tue, 08 Jun 2021 13:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:290d:: with SMTP id m13ls11295591qkp.1.gmail; Tue,
 08 Jun 2021 13:58:26 -0700 (PDT)
X-Received: by 2002:a37:cc6:: with SMTP id 189mr16791370qkm.261.1623185906468;
        Tue, 08 Jun 2021 13:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623185906; cv=none;
        d=google.com; s=arc-20160816;
        b=kvm6Wck1SMy/oW0TziuUO0qoeiyH+DmzKHYTDyFLGrqFkPC5AsxMn81jOeJ60IMoeq
         q3dG3ySn4mOveebaWsXuemiMRO6TMXYqKIB2chBJ7sfd3jFUlbxu+QauRCbTWMafKwSL
         uCXSrqHQjIs5g9qnD0MsouCtvuShgp0BvGohYxo3Al3MyF6egO/SRscFXbJNtO8g2R61
         4iUKNUS2RAcZ8Lhw+btkIsBqEY9+ftrnq1/u2beqCxOPNGvHPo2fFHtmGuKpKYnYuWyQ
         4LsbHbDUGmmD3s14D6OJMoRFVZjs5PEkETk2eq+dtzh35Ns5OrecuTzSJBQRm0INE5lx
         1M9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/RWottllhBXMBobMGt+fe9iLtum+yz2qyPydazJlGd0=;
        b=WbEhkjEMTKHxt5NOb5u3q/+X1/G2YktVjE96Y598fjQg0m7wiqa5bO2qt6MJAawg/q
         5Se03vuB+OYs6pEaWWjIZq4zQGRvo7wmMvXdHpvrFWUsK3Nx4JxoXvISIx/MGMGHqqpx
         mlBEdMf44BfieJWcWgHq6Z56qYyleB6qk8aHEP9Vhqm85eXxRlqO9OeVFpquBKmW2wOd
         bo13k23sHYrrVQdqWtL2JkV4JJ/JtgyKzTSoOXlpfDJGEtoGkS+VM4kn9phFJ4iMdy0X
         c0G1dgqHgCw6Jf285lYEpmKT7Sgl8rHDB119KZhEzO+FSFgPXj5jMvS+vgLD2O4SVyk/
         oKUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id x24si1778870qkx.3.2021.06.08.13.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 13:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: fmTF4ktsxjatnj3TW6u/0GaW3G9oAjynQlb0CXkxoL24+n6nP+uqsm4APPvqs1Yvs7yGrwWwL2
 iIxkiLVnraXw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="290567084"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="gz'50?scan'50,208,50";a="290567084"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 13:58:20 -0700
IronPort-SDR: xIBiuZVvjlQ+mG/7LxmSXGidhOv5jnp24ELiRXPUCdyWrEdgr6j9bBKEOLuZq8Ig3AHFb7O/8K
 lYYuWlOi1bgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="gz'50?scan'50,208,50";a="482113819"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 08 Jun 2021 13:58:16 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqing-0009DF-AJ; Tue, 08 Jun 2021 20:58:16 +0000
Date: Wed, 9 Jun 2021 04:57:34 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-5.4.y 3700/7049]
 arch/powerpc/kernel/smp.c:539:6: error: no previous prototype for function
 'tick_broadcast'
Message-ID: <202106090424.ktesr9fK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Michael,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   90487dc4fc3599ba4b2e00c89edcd0a397d2f051
commit: acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4 [3700/7049] powerpc: Drop -me200 addition to build flags
config: powerpc64-randconfig-r025-20210608 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d32cc150feb72f315a5bbd34f92e7beca21a50da)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout acac3f7d7d2283a1b8bc1e1c286dcd6c96e573e4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the linux-stable-rc/linux-5.4.y HEAD 90487dc4fc3599ba4b2e00c89edcd0a397d2f051 builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/smp.c:22:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:45:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:47:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/smp.c:22:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:47:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:49:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/smp.c:22:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:49:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:51:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/smp.c:22:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:51:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:53:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/smp.c:22:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:605:
   arch/powerpc/include/asm/io-defs.h:53:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:55:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> arch/powerpc/kernel/smp.c:539:6: error: no previous prototype for function 'tick_broadcast' [-Werror,-Wmissing-prototypes]
   void tick_broadcast(const struct cpumask *mask)
        ^
   arch/powerpc/kernel/smp.c:539:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void tick_broadcast(const struct cpumask *mask)
   ^
   static 
   8 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FSL_EMB_PERFMON
   Depends on E500 || PPC_83xx
   Selected by
   - PPC_FSL_BOOK3E


vim +/tick_broadcast +539 arch/powerpc/kernel/smp.c

ddd703ca06ede1 Nicholas Piggin  2016-12-20  537  
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  538  #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
1b67bee129a36c Srivatsa S. Bhat 2014-02-26 @539  void tick_broadcast(const struct cpumask *mask)
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  540  {
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  541  	unsigned int cpu;
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  542  
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  543  	for_each_cpu(cpu, mask)
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  544  		do_message_pass(cpu, PPC_MSG_TICK_BROADCAST);
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  545  }
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  546  #endif
1b67bee129a36c Srivatsa S. Bhat 2014-02-26  547  

:::::: The code at line 539 was first introduced by commit
:::::: 1b67bee129a36c22c17186cc2a9981678e9323ee powerpc: Implement tick broadcast IPI as a fixed IPI message

:::::: TO: Srivatsa S. Bhat <srivatsa.bhat@linux.vnet.ibm.com>
:::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106090424.ktesr9fK-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
L/IHKeL30gEA

--h31gzZEtNLTqOjlF--
