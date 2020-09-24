Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU6AWP5QKGQECFRGDCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E46F27783E
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 20:07:17 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id p13sf2556057plr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 11:07:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600970836; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vyr55mZR4gSKOSdaMvN2v/6oKhXQbhIY6IvCkVP/NoLJDCjAeMfosjokBmGUKUfQEB
         WJ+iwJet1XRg95UjG/dApyzbHGr9pd5WUrIneSdtDeYf4zZeoNWxv5odt6LcR+A7ZUcN
         cnlZGY9rEyD6dUPPGXDXIPKvsa3Dae93a8vcbGdShIt8Jeefda4qnurJeQZ2KmL6P07g
         J4X94r7T3m79VUsvN/E9xtNXXfETHpUuM9yni/WBWd0BC2SOkanIowEwsHPLPJQLZy3g
         GY64K3RJhTcB9MZsK6ptgFRr5Iht54N0sk2PgBdIkY/3zrH8cPd2YSvJIjsWALvF0Civ
         68Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+OEiTMmVDMjHnLUgz8IPBAsXViOqpQuwX29F6y2Cbss=;
        b=0FTMRl3iewLrKlc74tXd340zBmp9ZTyz1LTX7K+/PLVPQJEI7f7I3bLY1jq8Z2hgZg
         ueZtAG3ZR9FbUIjRuK3GxRyDY9+GJ44LWVGtMqXuZrQL1syLGBxOn2wjo7qeADvawOff
         rlBtHml0UCK1s2A/jyFr7mNYm2lfJhEozSIaUrBnwJD5+PNECs6YIGg14r/q5bTeBT1P
         47Fa8Q6pLApNxjPm6ja3VRGSGQCBGvKJIoGrHcGiJs9eovRKE/Vvjb1PLaBZ4Aw5zNx6
         x7buIaZfPNdN6MSu0zeKJFeXvG0XAj0H2ZyUP/nRw4f7Zqsc6DPFlip0hi+OevEILjil
         isGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+OEiTMmVDMjHnLUgz8IPBAsXViOqpQuwX29F6y2Cbss=;
        b=nTg26Cv/1qHRVI+c6eyi0y0E+Q8fMSIUwOyu4d65EN/yUSYs+l3uMFh3q0bhpnpc7a
         UWAnIwLIpS2PGFY1mHz/GeWk4o6SOKbZ/ybLkdHC4lR36glYml42WsRkKEjH0aliKK1B
         hwm/zPaKaMC7EKtMG7Oil8gFaeYXxbLNd0aN2UitpnU0NFbv6FM386oThYlhPpQmefcM
         JBjJmTiN6Ea/fBFDfM4/Bvf/X1gqANYP3etZAV+t51PrwOABJRWZCjcq0xkGMTWKDgQx
         Z+ybZ/SHB2zfFX7qpX7U76AiJogCYvXKAiUOTV36LfcotjjQ0KMNIZVjIbbXvjNXS6U+
         7Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+OEiTMmVDMjHnLUgz8IPBAsXViOqpQuwX29F6y2Cbss=;
        b=fj/VhSbR/WXiWcMZINnR+yZZ50D/muF3WSbZGnZ9lTIOc/aGZhlSntjXENXWE8FQEy
         H5MwSgiEu/Gt7RkFR3HiXcQ639nrVccpBbjACMLvXI1h77wegkRl4rspxDoLyIE+RF9Q
         g3BubbvOk3XlBr3LSLvJ2qyDUc6gY18UDyBVp+oTOWWeMUz4MSLtGRKzeXwDmZrwCNxm
         fpUWoFLFKru3amULeMvyEwfDWBmVxS+g91LO/tvEu6Ct5ua7A/81j3pqZP5SWb4GNN4b
         XSZ4U4Ynj4WFc8Q1+NxWkxFrRt3zjpAa3IBbLC8fEPNhTAQWNWTkLjmqGBkp+Oufsf8f
         +aJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53347nGev7vjFS/Ydh9rz2ybHG6OiEjNgc+ml48C+w6KOfEAxgCa
	6KUTMbVvotcwwzULGgTzpWg=
X-Google-Smtp-Source: ABdhPJy7BZWJAR7YoAsAYSmj58q6TJcuUbCjRYFcs/jflWzjNeBZHMQRsee4/Yi2VfD1naTCUeUQYw==
X-Received: by 2002:a63:1d26:: with SMTP id d38mr295024pgd.0.1600970835487;
        Thu, 24 Sep 2020 11:07:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls62553pjb.1.gmail; Thu, 24
 Sep 2020 11:07:14 -0700 (PDT)
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr179242pjy.178.1600970834763;
        Thu, 24 Sep 2020 11:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600970834; cv=none;
        d=google.com; s=arc-20160816;
        b=GTJZMeEk4qxjkv1BjRZvuSAugJ79q9doO5IVpF6zXBEcTEMp2EoYldWl58Pm4kDsU6
         Sk2oMyUUnD63Cjm+l57DVYJU2g0buo4nblJdAUp6KYMJAFjg0Kpb1/4zuKdvSnBLs1G3
         sgMC105ApLHamJ5d3alddCqqT/EvEb1JopFrxJSVl6eomt3mrx9MusM74xCkJ4Tmev4N
         QJITccm7Kv+evCQHqj2Yu18C1A9X/btpB8xmROpQxhLLy5yUwfRoVN4Vc033E0/qyZ2O
         tJkwuxkmEm95rd85taOULEssvcDL6z0WBFlOs+aTJqJQTBPJc8uRSDixnofZ1iB0ooa3
         x09Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=91vKKAtZNGuOgn3ybcs3gPFjBWnhUc2xXDvFbKrdMHQ=;
        b=WRhq9WzUI0xHYNOk2XHOmZG3aozFkOGmEYy8RCj6NSBBf+6iOzPf4pVnW0LIN4W2EO
         ZThG4D+TLIyF52UqFrfrWGXNFVghEZCA1JouNErn+d2q6XRbaPCdYWXf2wLLh2J6S5t4
         aqw+ZNmslVIAhlMMqJ0+fiHsAzBY53vFLNh0U2Wg3X0xoxdUeK0UwVnwFpUJOsOeYgSI
         Vy77s4z8DLQNuQs7sFTwocu78l6EqBgkhAaIuVtKHMRKl4GohAPLRqVJ4by3bcwhhb5w
         WspMTxEakuYhvdfbHfqkwq9pdWAx+OEKO2y2EbF5EQ/qhSQKksv86suNygGlQBN3lrKk
         zivw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id o98si37889pjo.1.2020.09.24.11.07.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 11:07:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: zBUnQFgUanRQYgtJFuNNzZONUTW5CfW+//NQbrBIX1ojYdMkuuoZSw2FQGKcLSjo32uaScT3yt
 dY9mSSV1BNuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="246095863"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; 
   d="gz'50?scan'50,208,50";a="246095863"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 11:07:13 -0700
IronPort-SDR: 980ESPyx1VfkKfjTFzt2HNKNBN/IebL7XFCLbfHUQ5rhcodxG6TOJ3HYJ+ppcl3+SF7feEtO5A
 QqS+HzVUcPsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; 
   d="gz'50?scan'50,208,50";a="305924459"
Received: from lkp-server01.sh.intel.com (HELO d1a6b931d9c6) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 24 Sep 2020 11:07:11 -0700
Received: from kbuild by d1a6b931d9c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLVeA-00004o-7y; Thu, 24 Sep 2020 18:07:10 +0000
Date: Fri, 25 Sep 2020 02:06:14 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/wip2 7/9] kernel/sched/core.c:4689:3: error:
 implicit declaration of function 'migrate_disable_switch'
Message-ID: <202009250212.d7JTOQEH%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/wip2
head:   05b12ada8e74101db269732c30802ef809eba3c9
commit: 32c304d428b26748a428bfd2f59d4032843fd51c [7/9] sched: Add migrate_disable()
config: powerpc-randconfig-r031-20200923 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git checkout 32c304d428b26748a428bfd2f59d4032843fd51c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:62:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:652:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:64:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:652:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:66:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:652:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:68:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/sched/core.c:10:
   In file included from include/trace/events/sched.h:652:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:70:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/sched/core.c:4689:3: error: implicit declaration of function 'migrate_disable_switch' [-Werror,-Wimplicit-function-declaration]
                   migrate_disable_switch(rq, prev);
                   ^
   kernel/sched/core.c:4689:3: note: did you mean 'migrate_disable'?
   include/linux/preempt.h:393:29: note: 'migrate_disable' declared here
   static __always_inline void migrate_disable(void)
                               ^
   6 warnings and 1 error generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=32c304d428b26748a428bfd2f59d4032843fd51c
git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
git fetch --no-tags peterz-queue sched/wip2
git checkout 32c304d428b26748a428bfd2f59d4032843fd51c
vim +/migrate_disable_switch +4689 kernel/sched/core.c

  4536	
  4537	/*
  4538	 * __schedule() is the main scheduler function.
  4539	 *
  4540	 * The main means of driving the scheduler and thus entering this function are:
  4541	 *
  4542	 *   1. Explicit blocking: mutex, semaphore, waitqueue, etc.
  4543	 *
  4544	 *   2. TIF_NEED_RESCHED flag is checked on interrupt and userspace return
  4545	 *      paths. For example, see arch/x86/entry_64.S.
  4546	 *
  4547	 *      To drive preemption between tasks, the scheduler sets the flag in timer
  4548	 *      interrupt handler scheduler_tick().
  4549	 *
  4550	 *   3. Wakeups don't really cause entry into schedule(). They add a
  4551	 *      task to the run-queue and that's it.
  4552	 *
  4553	 *      Now, if the new task added to the run-queue preempts the current
  4554	 *      task, then the wakeup sets TIF_NEED_RESCHED and schedule() gets
  4555	 *      called on the nearest possible occasion:
  4556	 *
  4557	 *       - If the kernel is preemptible (CONFIG_PREEMPTION=y):
  4558	 *
  4559	 *         - in syscall or exception context, at the next outmost
  4560	 *           preempt_enable(). (this might be as soon as the wake_up()'s
  4561	 *           spin_unlock()!)
  4562	 *
  4563	 *         - in IRQ context, return from interrupt-handler to
  4564	 *           preemptible context
  4565	 *
  4566	 *       - If the kernel is not preemptible (CONFIG_PREEMPTION is not set)
  4567	 *         then at the next:
  4568	 *
  4569	 *          - cond_resched() call
  4570	 *          - explicit schedule() call
  4571	 *          - return from syscall or exception to user-space
  4572	 *          - return from interrupt-handler to user-space
  4573	 *
  4574	 * WARNING: must be called with preemption disabled!
  4575	 */
  4576	static void __sched notrace __schedule(bool preempt)
  4577	{
  4578		struct task_struct *prev, *next;
  4579		unsigned long *switch_count;
  4580		unsigned long prev_state;
  4581		struct rq_flags rf;
  4582		struct rq *rq;
  4583		int cpu;
  4584	
  4585		cpu = smp_processor_id();
  4586		rq = cpu_rq(cpu);
  4587		prev = rq->curr;
  4588	
  4589		schedule_debug(prev, preempt);
  4590	
  4591		if (sched_feat(HRTICK))
  4592			hrtick_clear(rq);
  4593	
  4594		local_irq_disable();
  4595		rcu_note_context_switch(preempt);
  4596	
  4597		/*
  4598		 * Make sure that signal_pending_state()->signal_pending() below
  4599		 * can't be reordered with __set_current_state(TASK_INTERRUPTIBLE)
  4600		 * done by the caller to avoid the race with signal_wake_up():
  4601		 *
  4602		 * __set_current_state(@state)		signal_wake_up()
  4603		 * schedule()				  set_tsk_thread_flag(p, TIF_SIGPENDING)
  4604		 *					  wake_up_state(p, state)
  4605		 *   LOCK rq->lock			    LOCK p->pi_state
  4606		 *   smp_mb__after_spinlock()		    smp_mb__after_spinlock()
  4607		 *     if (signal_pending_state())	    if (p->state & @state)
  4608		 *
  4609		 * Also, the membarrier system call requires a full memory barrier
  4610		 * after coming from user-space, before storing to rq->curr.
  4611		 */
  4612		rq_lock(rq, &rf);
  4613		smp_mb__after_spinlock();
  4614	
  4615		/* Promote REQ to ACT */
  4616		rq->clock_update_flags <<= 1;
  4617		update_rq_clock(rq);
  4618	
  4619		switch_count = &prev->nivcsw;
  4620	
  4621		/*
  4622		 * We must load prev->state once (task_struct::state is volatile), such
  4623		 * that:
  4624		 *
  4625		 *  - we form a control dependency vs deactivate_task() below.
  4626		 *  - ptrace_{,un}freeze_traced() can change ->state underneath us.
  4627		 */
  4628		prev_state = prev->state;
  4629		if (!preempt && prev_state) {
  4630			if (signal_pending_state(prev_state, prev)) {
  4631				prev->state = TASK_RUNNING;
  4632			} else {
  4633				prev->sched_contributes_to_load =
  4634					(prev_state & TASK_UNINTERRUPTIBLE) &&
  4635					!(prev_state & TASK_NOLOAD) &&
  4636					!(prev->flags & PF_FROZEN);
  4637	
  4638				if (prev->sched_contributes_to_load)
  4639					rq->nr_uninterruptible++;
  4640	
  4641				/*
  4642				 * __schedule()			ttwu()
  4643				 *   prev_state = prev->state;    if (p->on_rq && ...)
  4644				 *   if (prev_state)		    goto out;
  4645				 *     p->on_rq = 0;		  smp_acquire__after_ctrl_dep();
  4646				 *				  p->state = TASK_WAKING
  4647				 *
  4648				 * Where __schedule() and ttwu() have matching control dependencies.
  4649				 *
  4650				 * After this, schedule() must not care about p->state any more.
  4651				 */
  4652				deactivate_task(rq, prev, DEQUEUE_SLEEP | DEQUEUE_NOCLOCK);
  4653	
  4654				if (prev->in_iowait) {
  4655					atomic_inc(&rq->nr_iowait);
  4656					delayacct_blkio_start();
  4657				}
  4658			}
  4659			switch_count = &prev->nvcsw;
  4660		}
  4661	
  4662		next = pick_next_task(rq, prev, &rf);
  4663		clear_tsk_need_resched(prev);
  4664		clear_preempt_need_resched();
  4665	
  4666		if (likely(prev != next)) {
  4667			rq->nr_switches++;
  4668			/*
  4669			 * RCU users of rcu_dereference(rq->curr) may not see
  4670			 * changes to task_struct made by pick_next_task().
  4671			 */
  4672			RCU_INIT_POINTER(rq->curr, next);
  4673			/*
  4674			 * The membarrier system call requires each architecture
  4675			 * to have a full memory barrier after updating
  4676			 * rq->curr, before returning to user-space.
  4677			 *
  4678			 * Here are the schemes providing that barrier on the
  4679			 * various architectures:
  4680			 * - mm ? switch_mm() : mmdrop() for x86, s390, sparc, PowerPC.
  4681			 *   switch_mm() rely on membarrier_arch_switch_mm() on PowerPC.
  4682			 * - finish_lock_switch() for weakly-ordered
  4683			 *   architectures where spin_unlock is a full barrier,
  4684			 * - switch_to() for arm64 (weakly-ordered, spin_unlock
  4685			 *   is a RELEASE barrier),
  4686			 */
  4687			++*switch_count;
  4688	
> 4689			migrate_disable_switch(rq, prev);
  4690			psi_sched_switch(prev, next, !task_on_rq_queued(prev));
  4691	
  4692			trace_sched_switch(preempt, prev, next);
  4693	
  4694			/* Also unlocks the rq: */
  4695			rq = context_switch(rq, prev, next, &rf);
  4696		} else {
  4697			rq->clock_update_flags &= ~(RQCF_ACT_SKIP|RQCF_REQ_SKIP);
  4698	
  4699			rq_unpin_lock(rq, &rf);
  4700			__balance_callbacks(rq);
  4701			raw_spin_unlock_irq(&rq->lock);
  4702		}
  4703	}
  4704	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009250212.d7JTOQEH%25lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--dDRMvlgZJXvWKvBx--
