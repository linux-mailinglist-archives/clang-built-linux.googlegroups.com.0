Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7UW32BQMGQEYGOFMHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98B35FEF3
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 02:40:31 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id o3-20020a056a0015c3b029023ed5c8e6b6sf1840180pfu.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 17:40:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618447230; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1inbU13yc2tnB8Lte+kFb9OZc8Vkbt9D1TcJDvzVTW8CsvdwPQ/ADGZRjCQ7wyW3z
         T04wl8HEbUb6FaQv1GuQ/KFI6KbQG+0iKp+H5mj1ex4Sbow1w+VAj9azh3+72XJ9RtOE
         lNcu8pYgB1d4IvZEeLVoRneO2wcahVVRvfQSowrJxS7L4ejO/948VWn/08YgjQf7J2sn
         I9STIcTr0Sjn+nRFIgHPnuXQ37spcf4mpAUz8dM7vQjsttLBctGQeeh4k216EyC/ihwN
         5OYGU1WYIFN5cyJlrbx9wGLTn76qbBOIOe333MTgmQ2C5k7v5/eOT/UC5yEI1K03oi5Y
         R3dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gg0ESTFUohKsaxm14nR2mR+PLKYty1x7NhygjRBEiPg=;
        b=Di6ybvgzwCRcudUjPzXLlmswrWQiOjfwyYj1CtxRuDkNZYc9LK8b+fCeBNtu4wSSpz
         o2uV4QEAE3raoBYIouQ/+XrVmC01jdN1/fKEyKyuAWDHEIARw1K3LWGVHN4wMe0PQelL
         +aeVBW1sucwKxBZCX4dPDSnhBejqKiv39V04VRuOxeFaOn56M70crmVXqeiQtEn4XArH
         guyHe2tXs3X949ZY9n2EAa6fkp1jpkGsQA4oT4j7J+OqFstnQjzNDslfHk8yEwgDDYDb
         qzTrueNxHdXifM0MVoM2kI7nJHzGxyzhM3l/5rzhygragAiLGvtk/sZUFDKFpVHJzNdA
         +wEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gg0ESTFUohKsaxm14nR2mR+PLKYty1x7NhygjRBEiPg=;
        b=EkluDH0564UMqKo5o6XGRDZzo74RtUz8PQaA7YX+o6HVqNwjsK6oGxQWRtdaPmOtsf
         mivGt3FPaW6mscwNjscrs6hA4wiVKNY678mgtpzy7y+tnjR0K4u2oIttew/eHdcwfqmA
         7sgyWqCqleQAe///3cAkSXZPQ0SKAHAFjP32jEa3ylgh0e0JMs4qHyw/pdekaZWgJTy8
         0dN8XYRPqtwy281+FOinz8T9wFOt1L06yhTxXCX7icxkwhaeKePKQeGM1Kt8OdlkWsHW
         3l73YGYxPgnDxzmLH+hIgkvyZIzNPSucoIsb9AWEChkqHJNNjToJberG3uqeQGfId9uh
         fjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gg0ESTFUohKsaxm14nR2mR+PLKYty1x7NhygjRBEiPg=;
        b=ltppZzLbvqC8gj6fneVPfDg1rQNKP3OOLVqZXdXykSVkTFETr5eGrwAULXizWd5D/l
         7wVhvlKRQGAx0uUqUjZPN5c3s1t9CGBXya2BzdOyTdy4SHycBlVrsQAC0x8sJQhusQfG
         2vjdOST7vUibC2+eDyhIr0A2iNk8jFHlwitvGuipZnYlo9eeuqh+0XlOT7udmf5dNp4D
         uJIZzjx1UydEtLSl5qCV1SSkUT+wYzFYGYiGCwJMEXNlJ7bOswxUUtKNSjO+PK+un1SQ
         SUqAubZokC9py37BQfF2IzFwJBMLWkIoWPHM+sf2aGGIBDuDVKn0EGUn7mhliT/8ZXgu
         jgwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XoUh9bh1gLE9Bhn7sHHutRitlDzFtgIjjAMCiynlvpPKwjQNb
	CiWhIC5iHywi1us2q1qLK24=
X-Google-Smtp-Source: ABdhPJydalQsx879QYaN1XHjoJpktpv3719i5v0EHijgSR8t+yL32fvaVJgy7WDAvSBFRB2ob/b8GA==
X-Received: by 2002:a63:4763:: with SMTP id w35mr977069pgk.226.1618447230562;
        Wed, 14 Apr 2021 17:40:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls2156716plz.3.gmail; Wed, 14
 Apr 2021 17:40:30 -0700 (PDT)
X-Received: by 2002:a17:90a:8548:: with SMTP id a8mr867932pjw.48.1618447229809;
        Wed, 14 Apr 2021 17:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618447229; cv=none;
        d=google.com; s=arc-20160816;
        b=KHycx6w71ZdLXe+yB9F+pGnasUQUYWBQmgWgd1+NXZoRxvVk6Hj9DZRu7hC3hnoMR9
         lFqUFv1GZAZdgmqh5tGua9dB6SXH5598yFrYFT5nFYp0CAXgM73Ub9/1hRfnvTdC4X/q
         M3f7V3WwI50Rs2AJh3xKGCiBS8xbeUd0iHyUTiZj6TXCoDoKKVBJyl1iZuA4SSFu7ZVq
         xYkQEm6iVIUnxFkIFsZKrWIj4Uy6jdmm/WaMFWFkAVsAsN3FANd0h2eWvx7zRP99j2cj
         l6avWBILUIrJGoLAmqJpYtRTwC+VHs6GXSwFtRLLuvMfg4y72Ew45P956XdlvhLqF+Pb
         hZ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=GJdsogexniNNhPAv8Y+8FrJn3g7YW4X2f3u4azxTXMQ=;
        b=LUyu9ZJKGiDANpWnozNHxR13+w/3UI+FeS4JD0zCmSQR1ATReZJpi0Q3ZyUGsX8EVm
         V344P/RG0NLetPS7eexsTI4oI+2WcCquoB+XHYBIeBltdb4SfT9w/r6IOdpYSeH4V++0
         JQ5TeChDKzJtePdpMUsUsIRGsTDuaCYuKmFbyYua5cz2WcFWhaKauaDCX+89aOeYRp3+
         tEh8BoXonCCkGBtRk8fyfW12uP0lTy0lFdTwU9Efj9mhMBhQ4v4byBL8T9P6dVyMxiwZ
         4yvX6DXcHyaRBjUB6/SUDGu5mK4IINNQhDEYuaElOvlI3yL69RtQNkfs5vxS5rQBlo5l
         GiRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id r2si83192pjd.1.2021.04.14.17.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 17:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 42v1FtE+IIvnAUCINu4eVuUAZsRwelJ67rKHdrVRfoBFJlczryHrx6g2j/RySK+36HSxhJUGW0
 0wuJt/7Feiww==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="256085633"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="256085633"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 17:40:29 -0700
IronPort-SDR: uVJB3sD8FvOJ02e0/wcmF1mejEsWrK+Ymbthgq1SxdbuOP+mCmAMGB2zWc6mhdvCYgnmX8zZ69
 Eyx8KRFTy6qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="389572605"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2021 17:40:26 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWq3W-0000WU-9I; Thu, 15 Apr 2021 00:40:26 +0000
Date: Thu, 15 Apr 2021 08:40:05 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/core-sched 27/29] kernel/sched/core.c:9497:11:
 error: implicit declaration of function 'sched_core_cgroup_cookie'
Message-ID: <202104150802.rjyJQdzW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core-sched
head:   b417ddaf222294bcc35e9857105ab37d9b0fd715
commit: 7841ce54261f3c407cf52de13712261521ae9403 [27/29] sched: Cgroup core-scheduling interface
config: powerpc64-randconfig-r002-20210414 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=7841ce54261f3c407cf52de13712261521ae9403
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/core-sched
        git checkout 7841ce54261f3c407cf52de13712261521ae9403
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:740:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:97:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:740:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:99:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:740:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:101:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:740:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:103:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   kernel/sched/core.c:9359:2: error: implicit declaration of function 'sched_core_cgroup_free' [-Werror,-Wimplicit-function-declaration]
           sched_core_cgroup_free(tg);
           ^
   kernel/sched/core.c:9359:2: note: did you mean 'sched_core_free'?
   include/linux/sched.h:2176:20: note: 'sched_core_free' declared here
   static inline void sched_core_free(struct task_struct *tsk) { }
                      ^
   kernel/sched/core.c:9404:2: error: implicit declaration of function 'sched_core_cgroup_online' [-Werror,-Wimplicit-function-declaration]
           sched_core_cgroup_online(parent, tg);
           ^
>> kernel/sched/core.c:9497:11: error: implicit declaration of function 'sched_core_cgroup_cookie' [-Werror,-Wimplicit-function-declaration]
           cookie = sched_core_cgroup_cookie(tsk->sched_task_group);
                    ^
   kernel/sched/core.c:9498:11: error: implicit declaration of function 'sched_core_update_cookie' [-Werror,-Wimplicit-function-declaration]
           cookie = sched_core_update_cookie(tsk, cookie);
                    ^
   kernel/sched/core.c:9498:11: note: did you mean 'sched_core_cgroup_cookie'?
   kernel/sched/core.c:9497:11: note: 'sched_core_cgroup_cookie' declared here
           cookie = sched_core_cgroup_cookie(tsk->sched_task_group);
                    ^
   kernel/sched/core.c:9499:2: error: implicit declaration of function 'sched_core_put_cookie' [-Werror,-Wimplicit-function-declaration]
           sched_core_put_cookie(cookie);
           ^
   kernel/sched/core.c:9499:2: note: did you mean 'sched_core_update_cookie'?
   kernel/sched/core.c:9498:11: note: 'sched_core_update_cookie' declared here
           cookie = sched_core_update_cookie(tsk, cookie);
                    ^
   12 warnings and 5 errors generated.


vim +/sched_core_cgroup_cookie +9497 kernel/sched/core.c

  9353	
  9354	static void sched_free_group(struct task_group *tg)
  9355	{
  9356		free_fair_sched_group(tg);
  9357		free_rt_sched_group(tg);
  9358		autogroup_free(tg);
> 9359		sched_core_cgroup_free(tg);
  9360		kmem_cache_free(task_group_cache, tg);
  9361	}
  9362	
  9363	/* allocate runqueue etc for a new task group */
  9364	struct task_group *sched_create_group(struct task_group *parent)
  9365	{
  9366		struct task_group *tg;
  9367	
  9368		tg = kmem_cache_alloc(task_group_cache, GFP_KERNEL | __GFP_ZERO);
  9369		if (!tg)
  9370			return ERR_PTR(-ENOMEM);
  9371	
  9372		if (!alloc_fair_sched_group(tg, parent))
  9373			goto err;
  9374	
  9375		if (!alloc_rt_sched_group(tg, parent))
  9376			goto err;
  9377	
  9378		alloc_uclamp_sched_group(tg, parent);
  9379	
  9380		return tg;
  9381	
  9382	err:
  9383		sched_free_group(tg);
  9384		return ERR_PTR(-ENOMEM);
  9385	}
  9386	
  9387	void sched_online_group(struct task_group *tg, struct task_group *parent)
  9388	{
  9389		unsigned long flags;
  9390	
  9391		spin_lock_irqsave(&task_group_lock, flags);
  9392		list_add_rcu(&tg->list, &task_groups);
  9393	
  9394		/* Root should already exist: */
  9395		WARN_ON(!parent);
  9396	
  9397		tg->parent = parent;
  9398		INIT_LIST_HEAD(&tg->children);
  9399		list_add_rcu(&tg->siblings, &parent->children);
  9400		spin_unlock_irqrestore(&task_group_lock, flags);
  9401	
  9402		online_fair_sched_group(tg);
  9403	
  9404		sched_core_cgroup_online(parent, tg);
  9405	}
  9406	
  9407	/* rcu callback to free various structures associated with a task group */
  9408	static void sched_free_group_rcu(struct rcu_head *rhp)
  9409	{
  9410		/* Now it should be safe to free those cfs_rqs: */
  9411		sched_free_group(container_of(rhp, struct task_group, rcu));
  9412	}
  9413	
  9414	void sched_destroy_group(struct task_group *tg)
  9415	{
  9416		/* Wait for possible concurrent references to cfs_rqs complete: */
  9417		call_rcu(&tg->rcu, sched_free_group_rcu);
  9418	}
  9419	
  9420	void sched_offline_group(struct task_group *tg)
  9421	{
  9422		unsigned long flags;
  9423	
  9424		/* End participation in shares distribution: */
  9425		unregister_fair_sched_group(tg);
  9426	
  9427		spin_lock_irqsave(&task_group_lock, flags);
  9428		list_del_rcu(&tg->list);
  9429		list_del_rcu(&tg->siblings);
  9430		spin_unlock_irqrestore(&task_group_lock, flags);
  9431	}
  9432	
  9433	static void sched_change_group(struct task_struct *tsk, int type)
  9434	{
  9435		struct task_group *tg;
  9436	
  9437		/*
  9438		 * All callers are synchronized by task_rq_lock(); we do not use RCU
  9439		 * which is pointless here. Thus, we pass "true" to task_css_check()
  9440		 * to prevent lockdep warnings.
  9441		 */
  9442		tg = container_of(task_css_check(tsk, cpu_cgrp_id, true),
  9443				  struct task_group, css);
  9444		tg = autogroup_task_group(tsk, tg);
  9445		tsk->sched_task_group = tg;
  9446	
  9447	#ifdef CONFIG_FAIR_GROUP_SCHED
  9448		if (tsk->sched_class->task_change_group)
  9449			tsk->sched_class->task_change_group(tsk, type);
  9450		else
  9451	#endif
  9452			set_task_rq(tsk, task_cpu(tsk));
  9453	}
  9454	
  9455	/*
  9456	 * Change task's runqueue when it moves between groups.
  9457	 *
  9458	 * The caller of this function should have put the task in its new group by
  9459	 * now. This function just updates tsk->se.cfs_rq and tsk->se.parent to reflect
  9460	 * its new group.
  9461	 */
  9462	void sched_move_task(struct task_struct *tsk)
  9463	{
  9464		int queued, running, queue_flags =
  9465			DEQUEUE_SAVE | DEQUEUE_MOVE | DEQUEUE_NOCLOCK;
  9466		unsigned long cookie;
  9467		struct rq_flags rf;
  9468		struct rq *rq;
  9469	
  9470		rq = task_rq_lock(tsk, &rf);
  9471		update_rq_clock(rq);
  9472	
  9473		running = task_current(rq, tsk);
  9474		queued = task_on_rq_queued(tsk);
  9475	
  9476		if (queued)
  9477			dequeue_task(rq, tsk, queue_flags);
  9478		if (running)
  9479			put_prev_task(rq, tsk);
  9480	
  9481		sched_change_group(tsk, TASK_MOVE_GROUP);
  9482	
  9483		if (queued)
  9484			enqueue_task(rq, tsk, queue_flags);
  9485		if (running) {
  9486			set_next_task(rq, tsk);
  9487			/*
  9488			 * After changing group, the running task may have joined a
  9489			 * throttled one but it's still the running task. Trigger a
  9490			 * resched to make sure that task can still run.
  9491			 */
  9492			resched_curr(rq);
  9493		}
  9494	
  9495		task_rq_unlock(rq, tsk, &rf);
  9496	
> 9497		cookie = sched_core_cgroup_cookie(tsk->sched_task_group);
  9498		cookie = sched_core_update_cookie(tsk, cookie);
  9499		sched_core_put_cookie(cookie);
  9500	}
  9501	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104150802.rjyJQdzW-lkp%40intel.com.

--u3/rZRmxL6MmkK24
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XPqVgfv/As6KtOI7SwEA

--u3/rZRmxL6MmkK24--
