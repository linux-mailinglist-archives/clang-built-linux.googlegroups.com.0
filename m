Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDUNQ6BAMGQEN73ITKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4372B32E1E0
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 06:50:07 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id 129sf319714vsv.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 21:50:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614923406; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEJjZNAQLFagbvzg1ZCNE+pqgR30w1Qzu5yce2nlJNXZMCI7/FiwFO5/9ObwPnEZ/A
         RBccbbjpoCgTUfRYfDy8v4Dz++UU/tAsXKnql8eWe/iJEbUJrDXfWeDDODJOHyXwKyj7
         ERaAbBJdkv+c4GINjzjIq0Dwi6uAdl20njDcANUqkQ4cjVeeoib3r0B4R/1PWpiRmCBk
         boLVY0Sh1mwtxAFXhAFaD4QSrpT62Lo8ky4bjCOReHmmDsz3/M3M5YlmH6+A1J6Xl1kj
         EQ82NVgiYRbMkt2/8Nj0XP8Wp8fGpBldHIIITqC4WYaoYJ7fgrS7r2BTfe8HeMR/arC5
         sK+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=k87vjD2TZj+ADj1YOXo4z/WaQB857nVocjx8kjWkXE8=;
        b=vhY3D9MWU9PzrJ3m8uFgEspky6nMvHiqU56Glru85Wfqu4NKVZ6Pc7plWFFoWvJQgM
         fYdRXysBhb8vp02RpBarUrieSGZmZZED6qRuNBlqIKTkNXmGfZosnh2JmVwXMZnxo/pr
         UWQ094OwRdECrPQ+3CMUGC0Dv7e6TAFGZKLb+a/Fey8rfPxifd/XbAJ7nmWtliScNdYn
         oC1zabp+mBvBYV4J3pUGmlwc5TgeQa3veV3Z+fh8OfntsnrCpwd4M2bcelNhxzaM1W3e
         W7L60h7qaq4VJ5EDtYrE8cb1QPCIJ4wME3PQzLgmqiem9UKLmHocdOy4J1SoO2rEUnA+
         pdOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k87vjD2TZj+ADj1YOXo4z/WaQB857nVocjx8kjWkXE8=;
        b=YXc5rTx3FlxjvKI/8B5JEJSwBJk6NAKyz5SxeOKk66MOf1M81q/Y/XSPGzhAo4sZM5
         3lZVQ75vmNsG75Yay6b20ID91fzULtWhpS+K6ZccqHKtGfM1rRTLJmKfDke+rHS3qA6+
         EM5km7Q28xdqh+uC9hc8HhG10c4b+cHGM9ns+gd3Z0+9ASRlO/y3CKBFd0AGsIOGgtVQ
         6Kcr1n+AlFAIhPT/BIdCez47lc6bE2gA3ui+MgxRnts14ensGMbToX6i+HSKQPOgnu+k
         JRobkR86nisesr8LKFDlxp4TL8y6qa9M8nHCqBPK/B6MkIBkb1NiKdYWh19CSAhfpvGU
         OukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k87vjD2TZj+ADj1YOXo4z/WaQB857nVocjx8kjWkXE8=;
        b=aiHzcPYc6OGRvGpNCjF2v8KpXE6GrsF86kzlGJ4lk40NyKFObFxqXU/OP8cu5OTzRb
         FpzzzC71cl2lsuod6gncnmWMyZAKNHuYZyFAksovnrXzM+FdXSCbaLNqTjssRwX3M+VJ
         3jXWJ7U/fZOpcAlOTWlqn6GMPk2JmjY+x1ZKGoA+gBTXyGE5mCQ1W7nkGZ7CvqLxw1cR
         5r0UH/vJSB9CIs3SGQ54PBPIpOKzcieELRhaROJZ88ri/Bs97VU92WNBdP9780NbyTdw
         XDGHm84FWotHRz+KPf6meLee9YEp1dU0Llu99/RAJFuy0tVMJDc28C5lPxtB/Ev21rrT
         vFGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bcaJXmcSbVNi0ECNPyvQv/4okC4bK9tTzea9Y66d733rrbYdY
	ievxYTX9TtMzkT6uy6kH9Tg=
X-Google-Smtp-Source: ABdhPJzZ4yimhlFFq6vQzwghdKwEJldk6BuWxwwW0Ggvzt0X4RbbQFVoP8h5lwKCXMnnJR+JD4kqUQ==
X-Received: by 2002:a67:29c7:: with SMTP id p190mr5395750vsp.13.1614923406141;
        Thu, 04 Mar 2021 21:50:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:df87:: with SMTP id x7ls1077482vsk.8.gmail; Thu, 04 Mar
 2021 21:50:05 -0800 (PST)
X-Received: by 2002:a05:6102:116a:: with SMTP id k10mr5039126vsg.26.1614923405522;
        Thu, 04 Mar 2021 21:50:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614923405; cv=none;
        d=google.com; s=arc-20160816;
        b=0ceAhMXOw1GRSNmJkQgBNGp/rD/svzNBwMro2xzpDao60lIv4JxnqgeTOV/gLm/ZIt
         d3LfMXUnZT97Nf5Zx74tily9pbtNNqeGGY0O1lV5u4KiADtrPyFiviYbe7r4QozUg1k1
         QC4qG0Tq1daHuCCAUgexeLCCPntZJCjAhO/O1MaeaTbXWDV+JT4gbYOrHQrOy3UxBNw8
         cgsu4S1T2aleFofZfHrfRoQfRI5TSjAVxwLU3aWtSr5VPlX4zHA+i01rp7yTUPQtN3q9
         QWHY0QtThLfGgCFMxW4PFh2mEVh2V5zovPyBLZLmMR4G+f7Iuto5OBT9TElvnpB56A2a
         H+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=m6WOHaOWVbTQYU9iGCuAz/mVVIX2yooea65/smyXheQ=;
        b=EBLHq66kkL7hOZGuORsJ9YfIqGOQyHi60/iCsceyiK4DLT/hvmhRrzaTqUOPOEGmnl
         dtsRL/VQ4DcfJLQZJMyaCBlv56h3EEoEJwINns7YgzR9LhvA20qQ3VPbfDHVYFZDjvcv
         AMRkagduZWp3gCag+JR13uo8GW2rHyFnTtrDJc8u0altoGRPS5GTSmT+1a9NS1BbctpS
         +mDZxO40xB7jkUbIiDlDVSGzj5lIXl1AzsigNaAsL0kEa80sm0hs8NQJNw8Yqt64kga/
         eqlOQy3ge2ILcWYXybEh7Rpk4nZ6qSKfiEXV8ZyuoiPSNReXu/2ZE1y+WxUzgAOFfGZj
         2hKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id n3si97044uad.0.2021.03.04.21.50.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 21:50:04 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: NqEZx2Dd1N47s54EOT621X62d0T9YAzMyK0W5soT4F8ZubnZPvzCdijiGkTVTpt2Jd0ReQEjZn
 74Yz6whF4uiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="187685050"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="187685050"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 21:50:01 -0800
IronPort-SDR: N40wfu8A9ZBPHAs1lX9CyXQPagAmuT8e3KBQkJtElRp1EqnBDG29yApWz8XcSRHwh8MeCBF1DD
 oUPD94mevKKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; 
   d="gz'50?scan'50,208,50";a="401156341"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 04 Mar 2021 21:49:59 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lI3Lb-0002d0-8N; Fri, 05 Mar 2021 05:49:59 +0000
Date: Fri, 5 Mar 2021 13:49:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: kernel/rcu/tree.c:2073:23: warning: stack frame size of 2112 bytes
 in function 'rcu_gp_kthread'
Message-ID: <202103051327.ivdDSPMH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   280d542f6ffac0e6d65dc267f92191d509b13b64
commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_assert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
date:   8 weeks ago
config: powerpc-randconfig-r035-20210305 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7dffe01765d9309b8bd5505503933ec0ec53d192
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/rcu/tree.c:26:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:244:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/rcu/tree.c:26:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:246:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/rcu/tree.c:26:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:3:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/rcu/tree.c:26:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:5:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/rcu/tree.c:26:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:7:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2112 bytes in function 'rcu_gp_kthread' [-Wframe-larger-than=]
   static int __noreturn rcu_gp_kthread(void *unused)
                         ^
   13 warnings generated.


vim +/rcu_gp_kthread +2073 kernel/rcu/tree.c

7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2069  
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2070  /*
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2071   * Body of kthread that handles grace periods.
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2072   */
0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03 @2073  static int __noreturn rcu_gp_kthread(void *unused)
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2074  {
5871968d531f39 kernel/rcu/tree.c Paul E. McKenney 2015-02-24  2075  	rcu_bind_gp_kthread();
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2076  	for (;;) {
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2077  
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2078  		/* Handle grace-period start. */
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2079  		for (;;) {
0f11ad323dd3d3 kernel/rcu/tree.c Paul E. McKenney 2020-02-10  2080  			trace_rcu_grace_period(rcu_state.name, rcu_state.gp_seq,
63c4db78e80407 kernel/rcutree.c  Paul E. McKenney 2013-08-09  2081  					       TPS("reqwait"));
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2082  			rcu_state.gp_state = RCU_GP_WAIT_GPS;
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2083  			swait_event_idle_exclusive(rcu_state.gp_wq,
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2084  					 READ_ONCE(rcu_state.gp_flags) &
4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2085  					 RCU_GP_FLAG_INIT);
55b2dcf5870004 kernel/rcu/tree.c Paul E. McKenney 2020-04-01  2086  			rcu_gp_torture_wait();
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2087  			rcu_state.gp_state = RCU_GP_DONE_GPS;
78e4bc34e5d966 kernel/rcu/tree.c Paul E. McKenney 2013-09-24  2088  			/* Locking provides needed memory barrier. */
0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03  2089  			if (rcu_gp_init())
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2090  				break;
cee43939893337 kernel/rcu/tree.c Paul E. McKenney 2018-03-02  2091  			cond_resched_tasks_rcu_qs();
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2092  			WRITE_ONCE(rcu_state.gp_activity, jiffies);
73a860cd58a1eb kernel/rcu/tree.c Paul E. McKenney 2014-08-14  2093  			WARN_ON(signal_pending(current));
0f11ad323dd3d3 kernel/rcu/tree.c Paul E. McKenney 2020-02-10  2094  			trace_rcu_grace_period(rcu_state.name, rcu_state.gp_seq,
63c4db78e80407 kernel/rcutree.c  Paul E. McKenney 2013-08-09  2095  					       TPS("reqwaitsig"));
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2096  		}
7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2097  
4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2098  		/* Handle quiescent-state forcing. */
c3854a055bc834 kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2099  		rcu_gp_fqs_loop();
4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2100  
4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2101  		/* Handle grace-period end. */
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2102  		rcu_state.gp_state = RCU_GP_CLEANUP;
0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03  2103  		rcu_gp_cleanup();
9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2104  		rcu_state.gp_state = RCU_GP_CLEANED;
4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2105  	}
b3dbec76e5334f kernel/rcutree.c  Paul E. McKenney 2012-06-18  2106  }
b3dbec76e5334f kernel/rcutree.c  Paul E. McKenney 2012-06-18  2107  

:::::: The code at line 2073 was first introduced by commit
:::::: 0854a05c9fa554930174f0fa7453c18f99108a4a rcu: Remove rsp parameter from rcu_gp_kthread() and friends

:::::: TO: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
:::::: CC: Paul E. McKenney <paulmck@linux.vnet.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103051327.ivdDSPMH-lkp%40intel.com.

--W/nzBZO5zC0uMSeA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ndGvQBRfw5bH/wAGNSo4LykBAA==

--W/nzBZO5zC0uMSeA--
