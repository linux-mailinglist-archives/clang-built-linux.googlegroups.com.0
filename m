Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKEL3WDAMGQE6W3VFVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEB73B4F2E
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 17:20:10 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id y14-20020ac85f4e0000b0290250b0317184sf1256768qta.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 08:20:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624720809; cv=pass;
        d=google.com; s=arc-20160816;
        b=1G3yMUjTv7ZH7KO9VksvkcKk8dU2jxua1pxmPD/OHNAxyz1x6zlJi4B64SJqSRVy9j
         4PVE9U+djHRx7mkabWrmzfsgMDlM6ze9f8NdAN+WJziWYm8WqZi6UGtoHOLCSZhb7zeE
         wiBBA9avqCUq4RoTPYR7n8G+SWuLJCQNtZNsqwfvKrN/qTGA61VKkh+Mt1GEij5JVMPG
         iR5THXwSvW1BnSfwMDDjM2mXrY99M/6W1yJjsSRb2pg76M1fMqX4gsMMfm7fHcN5wv2p
         MFJwfVCJN5XkR1vrBk7N048b7V7Rsx8gamT4SXZYvYbZm+kHwm4nTER35LzuoOPf1Tlq
         5PhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr:sender
         :dkim-signature;
        bh=H0gGqPCTUEtFFYV3hnIJ+FVXYaFB96QnxkOBWOSzB8s=;
        b=V4VtNijPA8v4u5pPXHOQoVLzrxwyl0VIRIxaWLxsiyIJf7obiFRBrDlt2cwUfwITwZ
         966k06r3Y9SGbKWWlU4Uy/zfkJMjwGrPhK5OYzHfL3JfJ6xtG4Kgk+sIRDRai/65LO7H
         VHphJ7l4B0Da2kOPqOFh4S7re5zJRL1H0MVXbGmSLhBx+7FRyY/ccx9ldn1NcFaE/VhQ
         dVSDnCJhDj4dzacIBFIKGrDSQ+ktRlh6l4JLk2lWhAYDgjBCYkYpz/dG2rhbsRe1LK48
         95e71XYWLlcfI2QVGAFfdv32yHqKV9z15sfxeNaf/YruCyFNRLsVBnKce3+PWhgwVWXW
         xgdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:date:from:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H0gGqPCTUEtFFYV3hnIJ+FVXYaFB96QnxkOBWOSzB8s=;
        b=tjQttddQewdKvrnQHF3ACAaffAMHZ7En0QDO4dDOXSTj9QDl3eRXBSkFVF3+a74nyT
         hEHZPV1EHaoZiu2gWo6s36h5+2FnyFaQCrTCGB718Gsrz0ntfCHaeGD6kD8kJWEcee9j
         RDJT2uQjNmB9pJarzFH51ysze1tuFfRRa+yM5W03IdRRvrjeWcNSqtYNP3AWOfuGIhKU
         aubxGljweKw1/U9Em9IgQ6E2s2EfWoGDqmEvm4zueNfjFJ5Z7AXTPkKirlm0XxYy3PVy
         wEcrylzLTGJGdWljqSgafZx+coa6K76xdhtTlS1HViHv1PckwsSgNu3l2yjZRHLkSjks
         HJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:date:from:cc:subject
         :message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H0gGqPCTUEtFFYV3hnIJ+FVXYaFB96QnxkOBWOSzB8s=;
        b=Kc/0nGCjfcXhxFIBPRvBfD1Ai/jpM7/kvrug3G352x36BfwgtFHJFhQdhoJA0mCmUG
         noDQOe/NLTGTIe0vL345eERvFjOm8uXGA8nj2VeC+Q7orZqEtZ+ZZRtyjI7IvkaRmQuP
         7q8Lffp/yG9nVePmjrsUGyjswoBFeQ/oVqwcM2hwTsjVcfcB9alke9EFm0Z/tSq1fuj7
         FJp9B6me52CU69ck2W3kJmZeAko1YrgryTn9rKSiAa8aBNjR+wHe+0qIApK/YfexF8HU
         67jGvPSSaH8x6sHTF8mOZwCkU3tFdbYiu+2mzkdRE0RbU7whOYgSHLFwMQie/mqhDXFh
         udMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KKo/8TNte/MrVqBtvE2Kld1/SWzeWuhE6BCnHTPQh5Y7oVv4t
	/yt2p30L9jp2Sqtxufem/6k=
X-Google-Smtp-Source: ABdhPJzg+KmNfP8ylrojS3KRniWU9ehgjC3S38nkPqvd8hTiiPkYLJ9WDbIhBJ4yxG+aHD2ZhkoMzw==
X-Received: by 2002:a37:71c1:: with SMTP id m184mr6841522qkc.367.1624720808895;
        Sat, 26 Jun 2021 08:20:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:695:: with SMTP id f21ls276812qkh.9.gmail; Sat, 26
 Jun 2021 08:20:08 -0700 (PDT)
X-Received: by 2002:a05:620a:16d4:: with SMTP id a20mr16547880qkn.111.1624720808319;
        Sat, 26 Jun 2021 08:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624720808; cv=none;
        d=google.com; s=arc-20160816;
        b=ttb2geyTsSalkpFXDk/YWsYc12BCOgd896oMwH2dA197zIXh6l6NMgsh3oQ1KevXrV
         1OaMiYovHnO9KTrHPqUq2o9XApwaeX/RPmPWzLjVDzIgUDTUgxWeixnvTjJTQO0epxuY
         BATphZUm40dC95Pea/Cq70xYmlHvblD4rqUzkrLijqGz3qjJ52dpGogCbI8KLlfwyu9h
         ZsLdJmIzVEVLn8Ye9KoYvSaoCTQMY3P0tBwT97L2a7gPubWOBRO7X34WTKBmpa5uEK2z
         28L7nM382PdJVI2DIVLG5FJ01iJX7HFT6sNFcCQnkT4ajTiT13nrZaGhUFk5Y6W4OVAy
         Qf8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr;
        bh=w/DmSMtVsB2jnKePZL+o/xJUfV213kQwJaMWCXDNFvc=;
        b=ApNKz6cS9Bf99NN6CfxLI3mTGTJAeRorbyXydT2mmdBHx7WfTeUAqL1MiKRvjolUHJ
         6NTRBbpHiSmlZTdgc/FahOVi69J0j2iEHndOic0hmkiKYy1V2dfhEGvcKcbT69Yr9AHP
         2sm5NIvDzkq6w9gKlid+MyocLBfWkjr1Gh0R5xo+OpJaoQRAEE61h0TmHOzNprxr5bwC
         BDTrsSGFjfX9eE0fFIQJR8wv4nxTFN/32g2Ir5ipNYqPM1Vz/Cx40Or6yaxnGK65lkjQ
         bgnq9ZIhAE0JN6Qs9SVrOG5lidbRkVZBcxPzFmM9ViaiV5LJ577yA9S3QLZaCchFpBbK
         6f+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id j16si1025730qko.3.2021.06.26.08.20.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Jun 2021 08:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: T2F6jWOgsHaOOIpbsP/5xda+n7Y1vzH2ZXPKL6CZO8ZbIYY6UnR0mBigo/h2ZOTOmog4nDZBvf
 r9ZDMXyrfOtw==
X-IronPort-AV: E=McAfee;i="6200,9189,10027"; a="207831118"
X-IronPort-AV: E=Sophos;i="5.83,301,1616482800"; 
   d="gz'50?scan'50,208,50";a="207831118"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2021 08:20:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,301,1616482800"; 
   d="gz'50?scan'50,208,50";a="418674590"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 26 Jun 2021 08:19:58 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lxA6A-0007nI-8O; Sat, 26 Jun 2021 15:19:58 +0000
Date: Sat, 26 Jun 2021 23:19:06 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Michael Ellerman <mpe@ellerman.id.au>
Subject: [linuxppc:merge-test 618/850]
 arch/powerpc/kernel/hw_breakpoint.c:735:38: error: variable 'ea' is
 uninitialized when used here
Message-ID: <202106262357.fGGKIuCq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/linuxppc/linux merge-test
head:   0f7a719601eb957c10d417c62bd5f65080b5a409
commit: a76a912cfb7e2e0bbb124518bd3a73d3f027e0cf [618/850] Automatic merge of 'master', 'next' and 'fixes' (2020-07-27 23:37)
config: powerpc64-buildonly-randconfig-r006-20210626 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/linuxppc/linux/commit/a76a912cfb7e2e0bbb124518bd3a73d3f027e0cf
        git remote add linuxppc https://github.com/linuxppc/linux
        git fetch --no-tags linuxppc merge-test
        git checkout a76a912cfb7e2e0bbb124518bd3a73d3f027e0cf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:192:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/hw_breakpoint.c:11:
   In file included from include/linux/hw_breakpoint.h:5:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:194:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/hw_breakpoint.c:11:
   In file included from include/linux/hw_breakpoint.h:5:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:196:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/hw_breakpoint.c:11:
   In file included from include/linux/hw_breakpoint.h:5:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:198:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/hw_breakpoint.c:11:
   In file included from include/linux/hw_breakpoint.h:5:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:200:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> arch/powerpc/kernel/hw_breakpoint.c:735:38: error: variable 'ea' is uninitialized when used here [-Werror,-Wuninitialized]
                   if (check_constraints(regs, instr, ea, type, size, info[i])) {
                                                      ^~
   arch/powerpc/kernel/hw_breakpoint.c:711:18: note: initialize the variable 'ea' to silence this warning
           unsigned long ea;
                           ^
                            = 0
   8 errors generated.


vim +/ea +735 arch/powerpc/kernel/hw_breakpoint.c

658d029df0bce6 Christophe Leroy 2019-06-28  696  
03465f899bdac7 Nicholas Piggin  2016-09-16  697  int hw_breakpoint_handler(struct die_args *args)
5aae8a53708025 K.Prasad         2010-06-15  698  {
74c6881019b7d5 Ravi Bangoria    2020-05-14  699  	bool err = false;
5aae8a53708025 K.Prasad         2010-06-15  700  	int rc = NOTIFY_STOP;
74c6881019b7d5 Ravi Bangoria    2020-05-14  701  	struct perf_event *bp[HBP_NUM_MAX] = { NULL };
5aae8a53708025 K.Prasad         2010-06-15  702  	struct pt_regs *regs = args->regs;
74c6881019b7d5 Ravi Bangoria    2020-05-14  703  	struct arch_hw_breakpoint *info[HBP_NUM_MAX] = { NULL };
74c6881019b7d5 Ravi Bangoria    2020-05-14  704  	int i;
74c6881019b7d5 Ravi Bangoria    2020-05-14  705  	int hit[HBP_NUM_MAX] = {0};
74c6881019b7d5 Ravi Bangoria    2020-05-14  706  	int nr_hit = 0;
74c6881019b7d5 Ravi Bangoria    2020-05-14  707  	bool ptrace_bp = false;
74c6881019b7d5 Ravi Bangoria    2020-05-14  708  	struct ppc_inst instr = ppc_inst(0);
74c6881019b7d5 Ravi Bangoria    2020-05-14  709  	int type = 0;
74c6881019b7d5 Ravi Bangoria    2020-05-14  710  	int size = 0;
f6780ce619f8da Ravi Bangoria    2020-07-23  711  	unsigned long ea;
5aae8a53708025 K.Prasad         2010-06-15  712  
5aae8a53708025 K.Prasad         2010-06-15  713  	/* Disable breakpoints during exception handling */
9422de3e953d0e Michael Neuling  2012-12-20  714  	hw_breakpoint_disable();
574cb24899d35e Paul Mackerras   2010-06-23  715  
5aae8a53708025 K.Prasad         2010-06-15  716  	/*
5aae8a53708025 K.Prasad         2010-06-15  717  	 * The counter may be concurrently released but that can only
5aae8a53708025 K.Prasad         2010-06-15  718  	 * occur from a call_rcu() path. We can then safely fetch
5aae8a53708025 K.Prasad         2010-06-15  719  	 * the breakpoint, use its callback, touch its counter
5aae8a53708025 K.Prasad         2010-06-15  720  	 * while we are in an rcu_read_lock() path.
5aae8a53708025 K.Prasad         2010-06-15  721  	 */
5aae8a53708025 K.Prasad         2010-06-15  722  	rcu_read_lock();
5aae8a53708025 K.Prasad         2010-06-15  723  
74c6881019b7d5 Ravi Bangoria    2020-05-14  724  	if (!IS_ENABLED(CONFIG_PPC_8xx))
f6780ce619f8da Ravi Bangoria    2020-07-23  725  		get_instr_detail(regs, &instr, &type, &size, &ea);
74c6881019b7d5 Ravi Bangoria    2020-05-14  726  
74c6881019b7d5 Ravi Bangoria    2020-05-14  727  	for (i = 0; i < nr_wp_slots(); i++) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  728  		bp[i] = __this_cpu_read(bp_per_reg[i]);
74c6881019b7d5 Ravi Bangoria    2020-05-14  729  		if (!bp[i])
74c6881019b7d5 Ravi Bangoria    2020-05-14  730  			continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  731  
74c6881019b7d5 Ravi Bangoria    2020-05-14  732  		info[i] = counter_arch_bp(bp[i]);
74c6881019b7d5 Ravi Bangoria    2020-05-14  733  		info[i]->type &= ~HW_BRK_TYPE_EXTRANEOUS_IRQ;
74c6881019b7d5 Ravi Bangoria    2020-05-14  734  
f6780ce619f8da Ravi Bangoria    2020-07-23 @735  		if (check_constraints(regs, instr, ea, type, size, info[i])) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  736  			if (!IS_ENABLED(CONFIG_PPC_8xx) &&
74c6881019b7d5 Ravi Bangoria    2020-05-14  737  			    ppc_inst_equal(instr, ppc_inst(0))) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  738  				handler_error(bp[i], info[i]);
74c6881019b7d5 Ravi Bangoria    2020-05-14  739  				info[i] = NULL;
74c6881019b7d5 Ravi Bangoria    2020-05-14  740  				err = 1;
74c6881019b7d5 Ravi Bangoria    2020-05-14  741  				continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  742  			}
74c6881019b7d5 Ravi Bangoria    2020-05-14  743  
74c6881019b7d5 Ravi Bangoria    2020-05-14  744  			if (is_ptrace_bp(bp[i]))
74c6881019b7d5 Ravi Bangoria    2020-05-14  745  				ptrace_bp = true;
74c6881019b7d5 Ravi Bangoria    2020-05-14  746  			hit[i] = 1;
74c6881019b7d5 Ravi Bangoria    2020-05-14  747  			nr_hit++;
74c6881019b7d5 Ravi Bangoria    2020-05-14  748  		}
74c6881019b7d5 Ravi Bangoria    2020-05-14  749  	}
74c6881019b7d5 Ravi Bangoria    2020-05-14  750  
74c6881019b7d5 Ravi Bangoria    2020-05-14  751  	if (err)
74c6881019b7d5 Ravi Bangoria    2020-05-14  752  		goto reset;
74c6881019b7d5 Ravi Bangoria    2020-05-14  753  
74c6881019b7d5 Ravi Bangoria    2020-05-14  754  	if (!nr_hit) {
c21a493a2b4465 Ravi Bangoria    2016-11-22  755  		rc = NOTIFY_DONE;
5aae8a53708025 K.Prasad         2010-06-15  756  		goto out;
c21a493a2b4465 Ravi Bangoria    2016-11-22  757  	}
5aae8a53708025 K.Prasad         2010-06-15  758  
5aae8a53708025 K.Prasad         2010-06-15  759  	/*
5aae8a53708025 K.Prasad         2010-06-15  760  	 * Return early after invoking user-callback function without restoring
5aae8a53708025 K.Prasad         2010-06-15  761  	 * DABR if the breakpoint is from ptrace which always operates in
5aae8a53708025 K.Prasad         2010-06-15  762  	 * one-shot mode. The ptrace-ed process will receive the SIGTRAP signal
5aae8a53708025 K.Prasad         2010-06-15  763  	 * generated in do_dabr().
5aae8a53708025 K.Prasad         2010-06-15  764  	 */
74c6881019b7d5 Ravi Bangoria    2020-05-14  765  	if (ptrace_bp) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  766  		for (i = 0; i < nr_wp_slots(); i++) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  767  			if (!hit[i])
74c6881019b7d5 Ravi Bangoria    2020-05-14  768  				continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  769  			perf_bp_event(bp[i], regs);
74c6881019b7d5 Ravi Bangoria    2020-05-14  770  			info[i] = NULL;
74c6881019b7d5 Ravi Bangoria    2020-05-14  771  		}
5aae8a53708025 K.Prasad         2010-06-15  772  		rc = NOTIFY_DONE;
74c6881019b7d5 Ravi Bangoria    2020-05-14  773  		goto reset;
5aae8a53708025 K.Prasad         2010-06-15  774  	}
5aae8a53708025 K.Prasad         2010-06-15  775  
74c6881019b7d5 Ravi Bangoria    2020-05-14  776  	if (!IS_ENABLED(CONFIG_PPC_8xx)) {
f6780ce619f8da Ravi Bangoria    2020-07-23  777  		if (is_larx_stcx_instr(type)) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  778  			for (i = 0; i < nr_wp_slots(); i++) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  779  				if (!hit[i])
74c6881019b7d5 Ravi Bangoria    2020-05-14  780  					continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  781  				larx_stcx_err(bp[i], info[i]);
74c6881019b7d5 Ravi Bangoria    2020-05-14  782  				info[i] = NULL;
74c6881019b7d5 Ravi Bangoria    2020-05-14  783  			}
74c6881019b7d5 Ravi Bangoria    2020-05-14  784  			goto reset;
74c6881019b7d5 Ravi Bangoria    2020-05-14  785  		}
74c6881019b7d5 Ravi Bangoria    2020-05-14  786  
74c6881019b7d5 Ravi Bangoria    2020-05-14  787  		if (!stepping_handler(regs, bp, info, hit, instr))
74c6881019b7d5 Ravi Bangoria    2020-05-14  788  			goto reset;
e08658a657f974 Ravi Bangoria    2020-02-22  789  	}
5aae8a53708025 K.Prasad         2010-06-15  790  
5aae8a53708025 K.Prasad         2010-06-15  791  	/*
5aae8a53708025 K.Prasad         2010-06-15  792  	 * As a policy, the callback is invoked in a 'trigger-after-execute'
5aae8a53708025 K.Prasad         2010-06-15  793  	 * fashion
5aae8a53708025 K.Prasad         2010-06-15  794  	 */
74c6881019b7d5 Ravi Bangoria    2020-05-14  795  	for (i = 0; i < nr_wp_slots(); i++) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  796  		if (!hit[i])
74c6881019b7d5 Ravi Bangoria    2020-05-14  797  			continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  798  		if (!(info[i]->type & HW_BRK_TYPE_EXTRANEOUS_IRQ))
74c6881019b7d5 Ravi Bangoria    2020-05-14  799  			perf_bp_event(bp[i], regs);
74c6881019b7d5 Ravi Bangoria    2020-05-14  800  	}
74c6881019b7d5 Ravi Bangoria    2020-05-14  801  
74c6881019b7d5 Ravi Bangoria    2020-05-14  802  reset:
74c6881019b7d5 Ravi Bangoria    2020-05-14  803  	for (i = 0; i < nr_wp_slots(); i++) {
74c6881019b7d5 Ravi Bangoria    2020-05-14  804  		if (!info[i])
74c6881019b7d5 Ravi Bangoria    2020-05-14  805  			continue;
74c6881019b7d5 Ravi Bangoria    2020-05-14  806  		__set_breakpoint(i, info[i]);
74c6881019b7d5 Ravi Bangoria    2020-05-14  807  	}
5aae8a53708025 K.Prasad         2010-06-15  808  
5aae8a53708025 K.Prasad         2010-06-15  809  out:
5aae8a53708025 K.Prasad         2010-06-15  810  	rcu_read_unlock();
5aae8a53708025 K.Prasad         2010-06-15  811  	return rc;
5aae8a53708025 K.Prasad         2010-06-15  812  }
03465f899bdac7 Nicholas Piggin  2016-09-16  813  NOKPROBE_SYMBOL(hw_breakpoint_handler);
5aae8a53708025 K.Prasad         2010-06-15  814  

:::::: The code at line 735 was first introduced by commit
:::::: f6780ce619f8daa285760302d56e95892087bd1f powerpc/watchpoint: Fix DAWR exception constraint

:::::: TO: Ravi Bangoria <ravi.bangoria@linux.ibm.com>
:::::: CC: Michael Ellerman <mpe@ellerman.id.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106262357.fGGKIuCq-lkp%40intel.com.

--/9DWx/yDrRhgMJTb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJA812AAAy5jb25maWcAnFtbc+O2kn4/v4I1qdpKqk4SXSxb3i0/gCAoIiIJGgAl2S8s
jcyZaOORfSR5MvPvtwHeABLypDYPE6u7cWs0ur9ugD/96ycPvZ1fvmzP+932+fm797k8lMft
uXzyPu2fy//xAualTHokoPI3EI73h7dvv7++/F0eX3fe7Lf5b6Nfj7sbb1keD+Wzh18On/af
36CD/cvhXz/9C7M0pIsC42JFuKAsLSTZyLsPu+ft4bP3tTyeQM4bT38b/Tbyfv68P//377/D
v1/2x+PL8ffn569fitfjy/+Wu7M3m918HI/Gu/JmfFVOb6+m84/b8dP0dne1m40+jqblePJp
9/H2+pcPzaiLbti7UUOMgyEN5KgocIzSxd13QxCIcRx0JC3RNh9PR/Cf0UeERIFEUiyYZEYj
m1GwXGa5dPJpGtOUGCyWCslzLBkXHZXy+2LN+LKj+DmNA0kTUkjkx6QQjBsDyIgTBItJQwb/
gIhQTWFzfvIWerOfvVN5fnvttsvnbEnSAnZLJJkxcEplQdJVgTiohyZU3k0n0Es72ySjMLok
Qnr7k3d4OauOW30yjOJGdx8+dO1MRoFyyRyN9QoLgWKpmtbECK1IsSQ8JXGxeKTGTJ3EgIQo
j6VehtFLQ46YkClKyN2Hnw8vh/IXY4ZijTLHpMSDWNEMdyPUBPV/LGOgtz2skcRRcZ+TnDg6
wpwJUSQkYfyhQFIiHHWd5oLE1O9+61UjDt2hHA6lGgvFcbOjYBze6e3j6fvpXH7pdnRBUsIp
1rYjIrbuuutzipisSOzm48jUp6IELEE0tWkh45gEtdlR80iJDHFBlJCpG3OEgPj5IhSmjn7y
ysOT9/Kpt7T+/LT5rzpt9NgYrGwJK0ulcDATJoo8C5AkjR7l/gs4J5cqo8cig1YsoNhcRcoU
hwYxsSdvsp2ciC6ighOhV8DdSx/MpmuecUKSTMIAqcu0GvaKxXkqEX8w51wz32mGGbRqdIKz
/He5Pf3lnWE63hamdjpvzydvu9u9vB3O+8PnTkuS4mUBDQqEdR+VHbQjryiXPXaRIklXrjUo
w9Db6+4rE9SptH8wXb0sjnNPDPcZhnkogNeZC/woyAY233CuwpLQbXokcLdCN62tzcEakPKA
uOiSI/w+o9CuPvG1fmo92Otrlbqs/jDO7rLdfGaZNl1G0GvPNrXqxO7P8untuTx6n8rt+e1Y
njS5HtjBbT3egrM8E+Yo4P7wwnlC/HhZN3D5Ts0oBI6IEalDRHnh5OBQFD5KgzUNpOFlwRxt
8S6sVfSMBsI5u5rPgwS9xw/hRD0S/p5IlC+IjP3LiwzIimITH1RkMHQ4GXJAB0sNHSvxs/C9
WWgX7JpDRPAyYzSVylsBJDEmopWmY7fuw4qIoO+AgD/B4F2Dy5xiNTF2g8TowcA3YACwdh25
udGH/o0S6EewHIKOEdV50Iv+QPCBMLEo8WOCLMLm0VSYlmBOZWnWlQupMKbcZn20OuXigmXg
xOgjUQFS7w3jCUqxExD0pAX80UMAAIcCddYxA18BkQsVREEy5URZao78rqAb1VTgxfoNjg+T
TGoEr5yNsTlZ2P1o3WN3rAFbUcAw3DUU2HsCDqzownaHubR91AxH2zCCQxwTKxAwQTfOMNo6
NrDepdvH5Bd8DwLAEubuKeSQzBg+R/0EP2FOiWTM2VTQRYri0HI0euJh4JDWuMUWFhH4S+eM
EXVbLGVFDut3LxMFKwoLrdUtHHOA4XzEOSXcgNlK9iERQ0phgbCWqrWpDreK9JYJuUxAWY3G
5k6laAisMqduZoXqwUd4aczIJSYeUgB9lgcDXGqBUu0FNdW1H4lPgsD0ZvpIqjNd9DFmhsej
qwZB1VlyVh4/vRy/bA+70iNfywOAEgQhEytYAjivwyB2j21g/YfdNL2skqqPCs0RboVdEef+
ZZ8PKR2SkA8u7SbIFaRUT7YYc4shHzaDL0iTehm+RvFUpIypgDADJ5wl/ZE7foR4AJgqcFq0
iPIwhGw0QzAQmAUkmRCznFCXhTS28hTt4XSos9RuZ8tt+wxPJ5YbyvD11QAqZceXXXk6vRwB
xb++vhzPFaRum6jAsZyK4vrbN7fvMkRG44si85nd3mR9+2ZO82rkHujqyk0nk9HI0fP8eqQA
iIlIYWsrcA/zjV2Muw/Q6oM5tyqVz4kRsBV5SKkF0UDQRans2qYnSQ65EjiE6BK9mBogIQOy
DkUdKdUBPiJcHynI1YlpJMN9bo9hIJjZtdaQUmwaUGTk0NOJT40zARPrebMkgaXxFAANpP9F
gjZ349l7ApCg37r5zfn+UT+WnNldylV2Ju5m40l7hiU44CohEXmW2aUoTYYWYYwWYshXSTpA
wiGjydSjNYF0WVpbZ6APxOOHOsobIiit6wMsl3fjeVuyq1ArS6gEn4Igv9RH3gxwusKiddEP
KNQnvIJQCnYI6sekJ1KvQdShRPkh7YYuieXgiHxiRo5FVc3TBRlxN6n9yPP2rLy+y40I2CdX
CaU1uGRsQbMMzzebEF1IbBT7evMedz7rcY3zRLL5fIN7fhFwBuSR85uZs0t5n8B8Bp5TjQRO
DWbvsVdVV1YBsitf7neNRMdtuwRyscguIKIUEJFGxZmqzjlFcuFDbhH+UI5OcCEy+o/lRILH
l4SbzUywKWEUBC2iXq1a/fbpq0ICT20xt3VJLm7Dcyi3m+0SkMMid5dzSYYySGMQR6qWY5SI
vPBY/uetPOy+e6fd9rmqCnV5EDg9COD3tna6io2jddMxfXouvafj/mt5bAxANVDk/gjDMpwx
QtXAoJgdd/3ck4HldOfI8kwFl9gKAf0jamK/l9ZIG+gIDg2wqXlSosdibAdbkzWZXWRNnSG6
6m5koNXHO0UwDjOSEaDaPL6UFGpXRVLtj+o6dcRkFpvR1S3D4a9V3zeC+5cgUktbuWbnEOty
iBl6aRyTBYobR12sUJyTu5HtY66W2tleckzj65pvx3+NE0VEQwgRV228qq5OavK0IessuiJO
WqIue6soWjyylDCApryLkzgJ9NVOV6AgGwiGNSYSBt20rSwZIJhEpWqqahD0WQHw9DVDwC5Q
uxg4GRkd4thC9+t7UO8alEvCkGKqQE6N0904m2CFDpynrWfy+hj4b6fhGQhFDG7WihaKFPvY
2a/Zh+4UDX1fl9hW2mK6eDEsYQblp+3bsyaokvDJg5PbecudeZ/ZjOltj6X3diqfugXEbK3s
WddpRt/0xaBxN6hti4WhIBK4ux63vqwC3MRd7Cx6EBQS21Zg1BOQuoJSjTxveK2ueqoxTT6m
fsEjopGzVZnPUUwfB67AujHcHnd/7s/lTpV1f30qX2E0SECHO4u5QtR1rt0Owqqky1X60gC/
4Ztt/siTrID8j7jqKbpVZ7B5CitYpKomiTER/XJALoi+UZQ0LXx1uddL5ClMV0FfmIXssZZ9
lFZROZFuRkVVV6lhr26m+WGeYg0iCecMsHT6B8F1Ac8USxPao+h16B4jSAqHQFmAslQUrF2Y
ox4C/krS8KEpndoCOgdRJlv0FaDuqRMW1Pe1/fVyArAe0vYqC6i1X6CsP/263GKSonXhw1Sr
ErOrsqL6dtFVmageL8iT/l7q5XS2Y+VVxQLiHjSucLaqKzjZ6l7lByJV9LCqtLWiq90rBAoJ
RIFsg6N+yFzDolVRjKjiGML3OeX9btYIjJrqKKUuUJtbdMdKa3dcwOmxMpn6lYFWkzJroh4V
6EvDXi+Om7n+6XBex5kSYB/1bDKCaWjeeQErj+FAqCNI4lAXAx39k40yv7S6lVZzdhiwbq5L
RMPq+DANfi+H7uK0boxZ9tCEfhn3bU43T1eQMIKbMpg4BmUWqvq4RjwwGEy9XKALkYM20mBA
R70DX+fa1QlUenaNv1LT7ynGRdPCVeiDCFJHGr7eONQpJPgN6ZR5h9U2V2GqkKwIzBsVlc+b
tUfR5AkLzFa/ftxCDPX+qkDC6/Hl0/7ZukNWQvWgjgE1t44TRa9y3Oc5UcS7c+jX/H4Q75rZ
wdlJ1DWAGQh00VskaopjA3JXB8FVaa+PCEBnSP7Bu5sXar5SqfkTQj8WFM7RvUrUTCU0t2a+
uHytWvMBCbiustprN0kWnErnjVzNKuR45BpcYWFX9V7f6VaguHJq3O587csBoUju+zNQlZVQ
9AcWGu8hF1BQ7OqZFSQfmD9k9uFzsouwvlZorDfbHs97jQjl99fSrNcDQqO6SYM7zakhgEFp
J+NKs+im4xueQoQWuesxAf/xfo8AGqmrzwRhd5+JCJhw92ncKSY/kBAL+gMJSCi4uVx3N/n7
ClsiniDX8kjoXLV6oXU9d3EMYzR00mT0vQ03zSW51zGTMtuKdB5XPcli3UsIw1agHWVVCVLd
z9ov/wzm8sE3D0dD9sN7c4b2IO3ui3RsFI7S2rRFBsA3T21XYlcjkYSwiguerB2uF2BDAUk9
j1GWqZc7KAi4wnkiqxCuXjb5Vu7eztuPz6V+Serpq6qzoQCfpmEiVRg3ti0O7Xu5WkhgTjPb
u1WMhArstBzVjYKDTtd/aW5VvbH88nL87iXbw/Zz+cWZ1dT1i26aigBqCXTlA85WH4WGSMhi
YTpyrcwlIZm+mLS3oq6eUMFi1LPfLAZUkEkdWAGlibsrc8mAHPDFs6QxKidqf3vXwM2wdMFR
H4wAvlsUTeG60z5Ec+fLBQ0fAQb4uXkrLAxVNe8tNQJLaKqt5+5qdHvdSKQE7DtT17kAQ5dG
UwwYOW1uXNpzi6wfbVmkU0tDdBfFgYsA6om7m4b0mFn3Vo9+brnxx2kI0M3R1aMO8raiGlpb
zU+qM/NOc4XhHFcf1eVGnZoa/iBoLjlVNri0wHh1q7HSWN+oIRGuFKtGsSLnQr0NgqgXJYgv
L9UANdSTpEL2yIXLVNkuC0zfdPlAGbV44ioyV3BcPQ/4g7Y15qD8ut+VXqALtla1P8MYoLe7
ZrHf1S2Ma4LGL1YINSJxZnpai6zq7ZH1anglk8ysTTYUwG/Vm8kuiEnIUlB88YGmHiak4GvB
EKunzs1aw/3xy9+q3PT8sn3Sde9ma9cADdWjPGO3G5I2B4gQufUwR5Ubm0Gs99ddO51JV+t1
PXdp5ZSj4VVZpd3k/kxbuwCTXmso2HhkU2UKvwWcrvQ6eo8voA0n7sunSkA9NK9bF1WZ2THr
9o2vSmlzyXRBxnCocN4sX8XJwjpf1W91cTOgJYkZ9BtBfj+gCYyNB9yQIRUigl3QWxSaW6hY
IRxB0j6yshORoRG3NdUnfSqs4yBokinnkKgVOvWoiqwJvshOIjrkGTXYZkzDh6TiQlfS5TED
aWiVWY8V1aVbSuWFjwmAq0KutOoxQKycpJO1ZP4fFiF4SAE/WxNokIxFs3aUqZIFHJMV7J6F
ACoGi1f2qBVMeuj5yURdYtclLA3D7dvujmAEb00CcZcPqZloM5/f3F4POirGk/nVkKoeMpjX
53XO5krj0jyO1Q9XAA04M/TwCDHHCoCqULKGFJGoDMoV9pRAjXiGIayZAOTBmZuqMUT1Tn3e
5+sMjtVtq+DB/cB72p8U9nvyPpa77dup9NSLZzgM3svRoyoSVVN8hnRfF/kH6oApX9JEkS0l
Dlbmi2OTXB950c3VZq+7ByUGoqKsr3w9q3SVEE8M3wEoehG6LEVzqksncwyDrHXqvi43hEL3
xYw1oQpM7087l29CwWwy2xRBxlzHG8JE8tD/ToRicTudiCv79VMT31IcM5FD/FSHk2KzAIOy
QNzORxNk1vKoiCe3o9G0T5kY96SCpIJxUUjgzGZWfaNh+dH45sZ16doI6MFvRxuzcZTg6+ls
4g5tYnw9d7NEz+xaxka9X9sUIgiJOxnKVvoRjMtmJ7WnqXI2AichMZ6WNNrVdEgKJ4YbqYnq
RhY/DMgJ2lzPb2YD+u0Ub64HVBrIYn4bZURsBjxCxiP9hLJL3+xpVh/slN+2J48eTufj2xf9
FvL0J8CRJ+983B5OSs573h9KdfZ3+1f1p/lE4v/RemgLMRVTBRTcL2xVPR4pLJjFg4NMD+fy
2YNg5P2Xdyyf9eeXjvc9K/B2l+Lxe110PRAcMWdz65xa8JsGljuCn8PPQLCgdeOh7ejyZMKs
FIojGqgP3bgrI1MNjDOomltFZU2pPXZjuHoG9dDe+ftr6f0MW/XXv73z9rX8t4eDX8FgfjFq
D7UjF6afjnhFk8NAIyx82kq6v5OomeabHT3n1kf16Fh95omsV8OaHrPFovetk6YLjCBrVo+Y
3TshG5u10aBumtGh3nsi6mPUH4vE1If/vSPDM1c3zadBvXn2GkPKoF+9XbCOIuirNogKHiA8
pEaAvtdDMknwQK1ARnGOLs+3Z+FGidUYQD0NUZ+SGuEHKIACfaauvNQ1r83S70asyShqZleu
qo18OZyPL8+qwuf9vT//CdzDryIMvcP2DEmBt1fPvj9td6Vx+FRfKMJwYAATqy9OjMEVGZMV
6pHuGaf3vRVBomDVndX7l9D9GVHifo/dvP6FJNBVekKYppKJqM7njKOgCtUkySGrFsSXRm1q
TdMgROaKAH5YP4rMt9+2NLThg/faDb++nS86MppW3213rlARIP4530BWzDBU0DZucmWLpz4N
AUdxsW31tezSrvZoToJU6bzm6Jnnp/L4rD5xbG3g1Jt4oRXYg/c2p8gEyjcX59OKCQy5VVps
7sajydX7Mg93N9dzW+QP9lDNwqKSlZNYlfKMzRkUf6wGS/LgM8StWNPQAHK6I7MhkM1mExeY
s0Xmc6O0aXNuXRy59AMH/V6OR7PRBcaNmzEZX7sY6vYAjJry6/nMwY6X7hmo941OVSmGts8L
H1e0ghKj66vx9XsqA5H51dilssqMXfNN5tPJ9AJj6mIA2ryZzlzaT7BwLjHJ+HjiyiRaiZSs
pX011rJYBrGccef1bSskUCJyM5ftOJKt0Ro9OPuGNrBb73Ysk4w4uqX34nri0icDT3HloEs8
BZPdOKchk0khWY4joPzABtbx1WjqfpPaCm3kDxaFUTYeb1yz93Hi3kGpbtmo+1Ab7uiiQwNP
JNR36t2YDaVAKYrNZ5QdYxq4qIH11V9Lx8znyDF+K7AIJ67hF5xmzg4Vo0hc30F3Irl6JZuY
L9dann41i7B09i0A2quY6iz+tlIyCbCr5wbGuBnFxP5GqmWv1Sd5zu+yWpEELUgcm1/IdFNW
F46M++71KKY/eP0xEFO3YT9Y85oG8MM5ymNE0qiPGvtCgX/77pahhGDmWqDMATcuOAo3LqsT
s9F47JyVCrL5+3YSCoqujbJ0dSb0JZX5xY7+rYoqFMWwW5glV4M2yk1UAd9o2BFVsqY+C6Zm
Ucbko+BmfnNrLmTI7SfWTkF8oX8OSGVs1/AtvkxIXCSb/2PsWpobx5H0fX+Fb7Mbsb1NgAQJ
HvZAkZTMNimxBEqi66LwuNxTjnVZFbarp2Z+/eLBBx4Jqg5dLeeXeIOJBJCZ6LxVGBnOXZhc
q8WBL51Vn1d7uLDVAaMAhQsgTmFQhF8RNmZVvqWhXFHByub3NO+aDEWQJuMybhAKPOXddx1r
LUdZgMHbrwqPruYQ+bMQh/R8+sDgbda07LbyZV6WXeVBNlmd9UvYMON9fVz2uTDyvtLB68Mf
VccOvkw2u11RQfq20UYulXUnSB2r6opPF087WMzukxh5Cz9sP0NLo9HKu26NEU68vcCl8rUs
as/YSVFyPtEgQEsM3onBNT6EqC8x1/qIcnkBK940DCEoeoPBVNZr4Tde6bqTwSD/8AxN08eH
+twxT/WrbdmbyreR812C8JXqcRV0vGmG+r3gm8+O9EEM4/L3fvClBOsgf3N94Fo1RlEHZnIq
Opr0/S8I7yZHYULDxdpUfP8TwqcLOivL5dcLuW5ZfDgI+gXppDg8o6/AZBE8V/4x3jec62pj
WFWXGaQ4m0zM/6GwDlnKl4k26w7axlhMraeLWE9j4uuhlsUkSDzy6XPZxRh7B/yz1Buv9k++
q6vVvjof1+SaNN7vbpthgfWsvnwDRXpjOzRsI3xGZvumipwjLXlacfvw9kWaQ1S/727Gs9gh
lZyc2qGbeyNsccg/zxUNImwT22xv7O0VlfdJyxzefXayScPNUd+yM5BguLNQiHbdIQtmuPH7
hMnU+1xwgXdjEm+hSqqjB51+sHpDaMv29fhIO28ZIRQyAxkZauMmCRqm+UYFOA1UB7FfH94e
Hj+e3qCbza679zSZK9DS3lo3N5HO6roJSN3K+4CdFdqm9ZwU8g3wWUXC0W1EBVUc+EpPRZsu
3eGl0RGICGN/89JBgir2lNpBrjPQ9k/y6Xc3isCqtUXS3BTNQqTj4c48WJ7xlVOJOd/bExAu
ZCKq2DrVzoqZ47BNhrxAFnne7T3Rc3i1fNF4OHQHlypdSPSi+Oc5nH5Dgizn/7W+1rVQATKJ
iGtqrm+K6hCka7rc58BQxSnb0jwP0/Ht4bjrQBttwTVmbCQ98nqLvWEPHzCNubMuDD+3OPJe
rXIhVt/77kXdb/U/pv5Wnbc/sE6G7ZoM6tR5My/NvQPQV1nRbHkUJUKrmmTlxGPMb0GVEWvA
75ijzaEfy25+vHw8f395+smrLeqRf33+DlaGC9mVEpk877out5vSrAjPdDzmdaiqQItcd3kU
Sq3RqLqA2jxLSQTHnjF5oBA0E0e15V9S7Za8LzcmsShNfqewpu7zti7AcV/sQjOrwcLTE3pW
hmxolNCeJkb28o/L2/PH12/v1nDUm50RvWUktvkaImb6YmRlPBU2LVLC5m6eBfMslZEdb/4u
LPLUvcjNf367vH+8/Ovm6dvfn758efpy8/vA9dvl9bdH3hX/pS9Zcm7yFvpDZUgOUMqogRLx
zKT1qu3pa8GszuAQnyabdllp5FQ25RFSKARmX2aMtPMY9fcPaQftSX1XNq0e6llOsdb62Hfy
zN+k8TEE7lYFsr8Le7tCrGq6EtoKCVApY/87+U9wofX68CKG+Hc+AfnoPnx5+C4lmXP7hXUr
Qpl89/FVzfwhrTY77KFfewKoeuee8WmIEXWaWUt/bGWm45tPyojX1p4BFvGpeOeMYFAfp1Fv
4EsP4dWDtZWH3sDArdldk4Zm3DPxP91L5vkeumsFh7NrELTHl2dlgASFCRNRyqWH+53UaOB6
jDyQGemM2t/6VIEhAvzlzRE2bdfy6l0e/88GylfpS9Pe3gtPQnEPvS07EaNcuIVK5Yt1WSP9
Hj4uvLSnGz47+XT+Ip2q+ByXub7/j26S5RY2NdFeQUYb7wE4T8Fl5wTGWqfxi2VkdMI3U4hf
cBEGMER3sqs0ViVjYYIxQO9bHKQuvcjSIAb4m7zFIQuoqYHYqIsw3ufWVmJEekQC6PRxYuga
/dphKivrkyTGAZRnm9VNBgZeGRh2eVnvOihpvctvt9kmg+a0mKpGDPSBIN2qhGPGEI1ei0K2
W1tqz5ik2n8yw5irAbRXD7lyyMBvnvpo4Zx1r7FvD9+/8+VWflyOmJbpkqjvLdcBSVebbYuY
c410q+9zJLU48b2zU9t1J/4XIOgcRK8xsFwpeO/22Pm2PhVOSfVuU+VHaBmTcLOiMdOPfVRn
Zk1GCswHfLc62Fi1c9jvWW7uNiRZrZG+krOmOK/lkaztfASNy6RASerTz+9ccLnj5Zh86FQn
lr3CttDNm+rk01npGWYSab8A3ifMMLa7aKCCdZB6eOjtKK6OUuIMUddWOaaDI7e2mFr9o+b7
uviFftOtqRV1X33ebe1pviqSgGC7j1dFShLUnI729OcykhCLaCtwaqK24qEQh0iT0G66IJLY
zhSSdar/HEFnSQ5xYuqHB8OLBQZxdJr6P+UBx07Fuk9NT+OFjF1jDR0+NTRNjRMyYJzt6b7Z
8K2bHV3Vmt+7/A4M335CowBFv/3zedAzm4d3Mw7uCfGhYCLiV8FwRLX1UUfQqYEAW7TPCNvA
ii9QFb2K7OXhL/PMj2epVF4RDAbWeCcWBh8HTbhoYUCsCmsQXc5e8JiXJGAusbcAfC0xXagd
OLNMDuRPfLXaIfUlhlUZnSOhgTE7NMBbJVoG0C2hyYIS/Xsx54im58iYatkR1I4kJvzKTNVo
Jg96JDj0OpsnYqHNIiP4Z3tvaXWX49TjoKLzNV0cgvNFZ7pSllror+ShmKbz4Xkg96UMuN/s
CjOMoOAGMeGi1MCQKlCEQKjv3doq+sKmzmC7PTU+N/wiU6ywtBx0tKzIz6us41IKPhzlKxNN
MXFzGnDpGyvBuX3i+HEjJiFfmQPTMmAo6pyfcIAIkN/IIL6XOICSqk/sSlKq3dcbdAxlWZeb
3bk8QhNsZGEr5jbQIDYZ31bYxDH56hNOet3q0AKG7ZZTsxG+LT6Bw2PzFd3wvhATExBMMlae
azcIvMuc+ksy6LWaBlZsKmGtYkzssgwMCpimzJRQ0Lmeuz6I97SywwbWasbshVVGEoCWRxYL
OOASwwiq38gyKDCctcihPuCaLZ/cIWwmMGay7wlk+jvmIT+uIISyXzJ2HXmELokhM7GRwdZI
5nLlVF1IWXdhTJA740XHRSRJoFyLcoj2JpliAmuHWk5c5U2hb25k4ZM6QqSHypJQCg2/zoEJ
WFEBJSEkfTQOrjcHwBffrMIIzFQZISxWSbJglLhSQE54tRpGCMp936URWarxIWcoCLBbY2fL
MwNpmuomFXIpsf48H6vCJg3nqepwQ/kHK78g5xxi8k0tkghFersMBNY0Z5ZGWFWCd906B4Hz
FxDkN2ByaCdkBmBqkTqEkuRatVMMCqiZo0t6BLgBCyDyA8gDxNgDJL6sErjPuAoIC56ZI+e7
1cUh6avzOtvKuD77XQ0X05a+NzVGlq5vl0qRt9hdqYf6mCAWQx7WwusZAx1ob/VH+johYUKY
CwxmZKYt8JSq49u+QyeWYajlm5ogyuDVWePBAYM2cBMH148yt2xOBubBcEG1dZHb6jZGIehz
Xq2aDNxDagyt/jLRRBcHeqY0GaE/8ghDZXF9YI8w6BQ1uz1vy0y/d56A8UgXylgJVfghAJMn
8VgPGlwpMKnEVTYiwKwSAEbgRyYhz0bL4Lle9QjHy5+r4oHv06f5zNfsOIihJcZgQYCklEBM
YSBNQHqIkhDoSuHNrz5QqIZxHKbXWhHHEWwKpnEQX8lp4imZVzdd7uQmb0NrmXJ4ujwm0D5/
yqPcrjFaNbnv66mbOISoCUwFBBqnAgPCqRScpQ29MrUaCmlwGgzWgYJ1AL8tvorCNUth1Vtj
IDhc6m3JEUGfrQSAim+7XJ28VUxFOnNK3eYd35wuTUDBkeq2vhPQ5k1iWoVOwlGcoqeex5ga
yyLJTntqYMHPbjsEtJGToQWSk8OfIDkHuEu+PEYBMCk5gJEHiMWZANR81rA8ShqULvUr6zqW
EE/6Jl6UbHwRR5gWFAEyLCtYQjEE8BpTqKuqbaauXN0FlSM9vG/WWEK8qFp1eQKq0t1tk3te
7JhYmhYtTk7JAIyOpAN9wOlRAHSBoENdw+kEAfmfaJgk4QYGKCqg9gooRZDJusGB/YmXBYhk
WV58OUudUALatZs8sfHsmxAhls+PIslgiZXwmwNN5QemUr5qt83vp3NKviers/tzw/Q3SkZ2
/xHhyLGDIyyMsIiqJWNKdvuq9bgSDKxj0M3NTsQ3KdvzqWIe43oghXxNV4asW2i9nkCF5G8z
M7DFyPnLWRq19eW0yrYb+c+VjOA6yXfBRz6wQ4ryKB4sWuSZZ4D/CZ2Rx7z6H28Ytck3list
QcBJWcmwhUCFBgb9ENnJ130jZnofxjbem4Dt7pTd7w6wtf/EpezQ1Qu46mUfSApM7MKJfnqS
JgDyc8wv5KHG6eHj8euXyz9u2rcn8bL35cfHzeby19Pb68U0bZvyafflUIyYCP4MfbEl2G7d
Ad02nOBAj+7IXasH4GPqAurydZmsHEXEm8fmE/ezdgrZ1Q8eHiMEDMjnqtqLyywotQRYu5R8
MFGBWnsCiPst6WJEwdLGs12oNP3mIw57uEU6k/qsFirOZ8UBqCDrRFABBCDKxED4tM00+vPn
T5PSCB9gjEwiYyv9ncB5xWJg4H0RlNh9VnBlxDqWTCLS0PBykk5m61o9cDmffMsoyCpW6kaE
1MkbeO0xGH3mwKspprLzNUm76z9/vD7KcOmD94xzAtmsC0faCFqWdzSNCOxOLxlYmCBIDRtB
w9iukUJwtEMxM8o6TJPAG5BIsEiv73Vd9rnpVzKDt3VeQGcTgoN3EkkD/XJJUl2jFpmdvH6B
aPYVlEAa4agAd5Jss5AzIazQiuRSPmHPscrEQMzaTJaJTlYxtNUcQOumSlA3WVcK21B23jBf
BcQxXm933UA0TSAl0OIYp3Y5t1XMlV0nRMjAwTdI5zZjVW5c8wgqz74F43uLTO0YK4Jmmx4J
GqUt36MHEJHYFZXkGLyVU4M93e2YVMc0aaaDF4gzTGMoszQEqDQKgSJoGkAXXBOKnUZKcrqY
KKVOoi4OY29TOJjavTKuhSZZiHqTMl4TasJioJhHxxPVvrOT2XYk8Nw0SjgnHaEL+B0NIF9F
iall0qw0K+1nyyW1ipLYdmOWQEPMjftE9Et2yXJ3T/mMgw9BVR4ef9hs1ZNgUaaOrsQqWmHX
PD++XWSg3bfL6/Pj+40ynKvGKGaAMiYYJpk4huf79YyMyjg2poLK1eusCUPSCy/uzCveJ9tC
I7G4+6W+QeU51409EaUlobYJbVmMAtKbFD5mZjCDwbXaO0SKgUI3bDOcWvLJvQgda22ZTGpk
ZTTplo0914cTA419Am80fgQqp0weASq0SnKMi+AQ0hZGTRPSQUZMPP4MfyScIw4id54b2Zxq
hJNw6Vuom5CElsydQ3LpRGnUadL0yxVdZ7DtazUi1Ec5i5IaR/5WNAQ+mhpB5KxA0oYUvoSd
YP/c4HDkeft2gEPkxJNwWEiwoN1MRq66vJXBAYoEUVvrGJHhtt6U4FMq7Pvmh+2EJZlN14px
lzXNRt2H0adLz9uYjTh00MOKTiT7jdgZWFd9WZyPu7ozru5mhuEdUOmMfmhMm6CZSxyqyDOV
iQ8cljkB13U28Jdv8Ji60wyJ/QHVzbQ1qCBhSkFk3BYA9VkwmZqZRk3+GpuaJIttc6aYDs07
AyB3pZNfqYJS0hdrwFkwAjtXIgicLdmWhISA/W4rRjNSsToNA+iA3+CJcYIyOAcuIWPQiUFj
ceWgBvI1OkGevAW23FXSkKv3JRdL4pXhkAvktTEbVtHlmqh1wVMVDsYJtNTPPJCBmIkSj9uA
wSW3HNcKonGUQqMhoRicesCmwQI96qjFlS5/fdrux9s+0PTNYqKBR5woFDRs0piGfaypsZu4
CoUEQjTFMNQirtP5KtYSK04ryEQpgSIVmiwxKL6a9lOSmvtRDeR7NfDYxmTBcKM5QkDJbm8B
Z8RWqzXE2flp2PrwWbw2ADeiPVIagNtRi4eCc1xCKQydGrjIYRu4WKRQQuDUDDdtFsD30yYX
Q1e5SEOTGNq/azz1hmuLvu4bNKHlHPjOM4gzqI84RHHkkcZc1SeIz58rjRg3V4t1EEw4hOWU
2jfB09QNd2VjqadnJIp+qfZie3a19ubmycFA8THseuAKHoWL7mKxmuPYiOW+vU8+H2PM2nRZ
VJlEhicoIXVa8gy4fuCukZ2Hr0d0VeyPMsQHK+syn8IkNE9fnh9G1frDfM11qFPWyIc7pmKt
OqtQwefuCNXc4i2qTdVxpfqXmPdZITwJr3VHsfd1yejn68Olj4jersll1umTMeGxKsrd2QjV
PvTSThqU1nP8nOPzl6dLVD+//vjpPqCp8jlGtTYXZ5p5wqvRxTCWR/M9eQVnxdF9+VFBaqvT
VFshK7PtBozaLbNvygYL7yCjfRKR9yki1P8557+YjZ62u8LYuUGN1+bb4/SSg9Y1Vv8DPPqM
nc7F1LNWQ9yXP59fPp7EuzUP7zfjA1Y3Dx83f1tL4Oabnvhv1nisDmtsKSUzHRgrSRcvd+mx
FmZEPGYnpkW1AfOb3sqce3Kesc4rEGooHXd4g3zOWYX3/RLa9e78cA2eDdiIHKFIU6AWgMqF
rN3eETl2VnOn+Qa3dp6OMuBZbQQ8E9890F1z23j+2gOJcHAscy5p0+vh9fH55eXh7V/2RMt+
fHm+cNnweBGuwP8tnkx/fHp/F8FCRNiPb88/jdNa1ZDuKM/S7PZ1RZZEoSMBODmlUeCQS/HU
AMndAZQIuC0Z+pG1YRQ4GeYsDHXjqZFKwoi4hQh6HWL40m2oR30McZBVOQ6hW13FdCgyFJq2
1grgK2iSQLvAGQ5TRyq2OGFN68xFttven1fd+qywacB/bfjkSO8LNjHaA8qyLFYxEaacDfZ5
AfBmwQV2gmgAfI4SgDZhMx5Rp8WCHOv2mwZZaBYQRKGRGACRxluLVUeRMxqcSGKAGDvEOxZY
cZWHqVrTmFc4ho9Pp85PEBgaQMedDpInCIkeDcGkQ13UHVuCIjcrQSbA2HEgCcDj4gE/YeqO
UXdKLW87jQ7vWWeGhY44tn2I5Y5Um49imj8YX4Hxwtrcgwm0SxhkQY+JklDmgg9+AE+vi8WA
joIarhtqax9I4ogzRQa5Q3fUJTkFOl0ABNyqj3ga0nQFJLyjFPTcHMbqllEcAH029Y/WZ8/f
uGD6S70VLaLVOdLj0BYx366Y54Y6ZF+7GkW62c9r2++K5fHCebhkFAfvYA2ECEwIvmWOePXm
oO48i/3Nx49XrotZ2YoFvcl6jAbvr/Fq0+KfXtV84uvz69Plx/vN16eX725+U7cnYeAMf0Nw
kjpTCFC7mYh+3FbFcK6kvRboKV9N84dvT28PvOtf+dKiBck1J0zbVVuxS6ntQm8r4srRquF9
48gOSU3dWSDoBL5lmhkSyA1hhoEOavrQU1oIuoEqeHfEsavQCCpx1hBBpSAvBbQSTk9AZ8YR
JmDBnApmxulLK8/uGMOWJXN6Vy5Jqqe0dKnPEmy6DUz0BPvFDIfBFidgzZIkAlax3ZFSAh3h
jnAKFpEa/ksjFYWUOErmkcUxjtySmy5tAvB9Ww13NWZBRvrNzURulaesTe6MVxdmMkJQ3scA
zPsI1+QI1ITtgzBo8xDo7O1utw2QBP3NJs2uZm7a/R8k2vp7i5G7OMucugiqIxA5NSrzDbA9
5AhZZbAl/sDRVFkLBTdScNnR8s7QlWHxKCVnzWmuueS49BKK3XX/LgndZb84pYkrLTmVBsn5
OLyoNVTHKFPWYv3y8P7VK7cLcdEAqA7CnsHj8jgxxFEMLsxmiWqlbCt7aZtXRRuzTrYO2/kg
Kv/x/nH59vzvp5vuqJZS54xP8ovgrG0NnEoqlG9LEcWwYZ3JRo2VwwH1E2K3gAR50ZTSxFu7
MiNJDBrGOlwJXELTYdNa1cJiT6MkFnoxrO9+LAyZfvw6Kh5BBHV7nanPcaD7gJnY8AIMiEXW
NYVRsb7mSQl0TOiyJe6xqkLzKGI08PWLUPR0OwZ3IpgPPOn4Oufi+9pQSyYMFyAxT82GwrGv
8DIKfOY5Rglc+7o2eg2lexbz7Dxd2B2y1FiozI8VI+L9HKouRT4DaI1tz+Xp0hH8NNBhgPbQ
qwTGjG1QgXjPRp5el/gqsN4yh6STetD8cnl5F+FyuVB8erl8v3l9+ufNn2+X1w+eEjgvdo/s
JM/m7eH7V2EQCcQTLsxYdWoT9P+UPUtz2ziT9/0Vqhy2Zg7ZSKSox2EPFB8SI1KkCUqWc1F5
HMVRfbblteWqyffrv26ADzTYUGarJmOxu/EGGg2gHwDTo1o0JxsNrLaIN9jEBn99/PgBPDg0
d4p4cQgyjEqq3VgCbJNXSXyng7TfSZlJ59/QZSFJFcC/OEnTUr3bUESQF3eQyu8hEowbuEgT
mkTcCT4vRLB5IYLPK87LKFluDtEGBpmokQJykVerGsNOMCSBP32KDg/lVWnUZW+0gly7xxgc
I47KMgoP+k0rwDM/QD9nlHjhB+u0Dv+kkQJd7Q5fGO2pklT2AEZL7E0aMhl+Ni7De2IMZJPH
pMDd0h9NjJLY4Ko6gYB1hAoUfK/FIj2EydbIVKo98wmSRXZY7quxR3cErJ3SgeOTZVFV5ps8
ozMcfd86+i7awdBJcWSU0KBs+oxAUpSRNPqC33xFWrFFAwnooSHxS8iuVzl4i/uHfz2dHn9e
Bv89SIPQGv8acOr1qw7D0pWImL5T4XaKWVJ1+M6VctvwDqm0ZJmmdyTFLVtsp1TUQ93I4HNp
FHLInudagprNJnbUdMg3gvNKxrV04g59azcYXjb6JMXMo265tApgsBM2Fm1Hw/nBaoeIuIbW
ytxBT03Tgi91EU5GQ/5GQeu4MtgHG44HdjS1hixbgyjU5/lvZnN7lFn6aNOtRxAKMxLEN82X
OXtU6e2o7Q1evt1Qq/ZN2GOVqyTktmIEm6Qy/gJPLsOWJHzkk16yNtiVBmzqvBXAcFdB0tts
2qKQ4ooSQkaWbXFbiujmEAGYIa6xzDkrCw4LtMTmS5APmc1xDr6/iBD+S/LB6vx+GQTdQ3nP
WgQTGzrQCBIhNJkBHdCdcRBEAl0EcPgireKMQ+QxzGNf6Ps0RcpHZrPNHbqaswK9ThPhL2sO
6Kj9dzmEt0EmVgFXxd7LeoeK8a/uFKhDZUm6iPxtRXFbQCaTMk+NNMFNr9dX4oYCsmrNFbSP
NjnftZlfcHA/I2EJsyhrQn1rIn5WR2fmDVml43hxOT38iwuc0qbeboQfR+indpuxlh6iKHM1
u7X6iBbSK+y3k3oT3SLX0yYofpmaKR3s0FgD65iFDP65gamOgcSCFSrGhE110HK/J73JZL5f
jcj1hoJu3KHjzX0TLNzJ2CMbmoKjRxluL1Q1C7KJq5/qO6hnQqVwMOwVIMHcM2SHdblEho+q
Pn7OXj236KH+7CqhplarBCrn/A4P7SnUS6TVYE+VjbZo3GNGi/WcfntRyuHVPjs8b73Y4ifX
+gvEEVbmbrBEkOq6wDP7sIYaMkiLmri9BLo8KCGMkYyaVaEzG5oDkVauNzfHrCcUquHtR62V
8CrwURfU1vgqDbz5iDqVUvnZVdDbqev93U/WmL3a0q2r0JnMzYYmwh3FqTuamx1YI9RBxuAI
gx/nt8FfT6eXf/0x+nMA0sGgXC4Gta+PD4wQMBCvx4fT/ZMUONqIZPBxqFZwesz+NHgKHCs3
66zXqL5jcKPR6R6G1dZitEwyWqXMLzE2X0atPrvlzcuqLZ5/MVSZd3abRjOWmWvEYm97tHo7
PT72mWwFvHlJFMJ0sApmacHlwNFXeWXBholYW1CryC8r2Myr/lyuKVqR29oFNWFQbK2Z+EGV
7JKKd2pOKC2u7Gl7ap9Dcjhlr55eLxiK6n1wUV3bTcrN8aK0I1Gz8sfpcfAHjsDl/u3xeDFn
ZNvTpb8RiYqUytdSaQf/vjUFxlb9XXMK6XZ4YxmhRoeuLUBJqskiSRM25mwU+hjSM0ePECIo
t9plm0T11IIRatCk0dIP7pQrHgNlyNUSlhXBzCPmbVVwIKGbEIBe6Caz0ayPMWQYBK2CKofi
WWBzp/Dp7fIw/NT1DJIAuoKTDa9TXwV9qU/DySABzZQCwODU2JFrSxUJk00Vm53TwkHuCxiw
0i4mdWngh20SSSdS9lqXO3kaYg+LWFNGVG3SKbtK1vihpvAXC+9bJFxaa4WJ8m9zDr6fDfdm
eySmF7HCIAhFe0fFYg4BLLytJf6BTjrlzZc1kglv6FcTrO6ymTdhGo2uhubEELVD0JslgiBW
qB3C8LvRYErhBdBTXD8kIh05rIsISuFcSc3botUkeyBgWiH9WtLQ7ATFe3whJO7Envz3qWds
4mw8qix+TxuSKya4DcWN66z7TebMX5oa2YLatWn7JjfN2AZovsUsGwEnkDm96mtQMYgLrC5E
mymsuBFbU8B4M4shl5bYsVik1iRRBoc5XhBqc9kBybVeLtHWjVlRwssYYAirfdawW3zap4xM
Z5QYOXcTYtBOnR6VOvsMsMcH4CTm9ItX8Na1LzdnndE/6ZB54PTYcvF0fwGB+fl61YIsF1zF
Rg7HMQDuETttDe6xKwdZ4Mw7xH6WpJykoNFNx2wXOWNdb7eFN36i+iXa/EK1g16tR9PK51jl
eFZxzUa4y/FcgHvMGstENnG41ixuxuTQ1w5i4QXUYU6DwdG9zniuXPA3JN/uNjdZG5vh/PIZ
5OTr04J5F2lnjLqvu1JcXMEvC6OoLZCvpO5Z1jZ9NHWHbcg2PN8JpcRkET1C9FSGIlrfjyOg
Ftu4bxom7jYBPtHqti63EtoBtipxB1DfhyzfRd0js14LxIoojVF24h8WayI4B5m+VOvrc6PC
TdH+dg/HqiL1SZGrcDzmwyEl2RIDNSQJPpt1LVhVo8ma+KNS0Xvx5BDpgWXxsw3tOzTAZS57
zqNgdbt3yOC0QLx9KKyKhFXjPmlSNEYkwae9BXqi5RXgdBLuBUfDG5eQRrNqQm2I9bueLYZc
rFeEinapIUK0keIQRbklpnpJ2VpDdVB8Ll7tmtA7lJoetxQE71q2vI5bWFisg6SXRjNdrcj9
8HZ+P/+4DFa/Xo9vn3eDx4/j+4U8+bQ619dJm4ovy+iuCYjdrJ/KXxrP9i1umadhnIgVM3gr
fHQLUk1agg88paR5vt5q1+4NIb5Vw8zUZpi6azEyaWGsPwaKno9nvLSikYnEc8e82GNQ8VGf
CI2uNEkxYyuGvvpquCAMoumQk8ANIsP3hY4VzhBdqnH6pXotlBE/W0PGRYqGNT0l6Cj9HlWD
7wJbbWv3NtfrWhvkEj/Iq1uQ4zb6k0ggY3+L88cbcSDaPcAkAZyvV0lxKJJqMl6wPJvNRMvD
T9JFzlU3geputRsSpUuFkdFPDwOJHBT3j0d52TQQ/dX6O1LtKVeWJG8jGG/H5fH5fDmimR57
so+yvIrwnoFtPZNYZfr6/P7IiB1FJnRnUfip88EmV5K63aPx8fs2KTvnfuePl++3GAuz0w5T
CKjtH+LX++X4PMhfBsHP0+ufg3e8Mv4BHRYa9qbPT+dHAIszlS8atTQGrdJBhsfv1mR9rFKF
eTvff384P9vSsXgVamtffInfjsf3h3sY5ZvzW3JjZFL30802CYJDtFlS3TjYhZbbihgT/S5L
dd/5P9neVtseTiJvPu6foAnWNrL4bpSDQ9Uevfanp9PL33w7G5vnYKu3iUvR6nT/o3nRyg9Z
45m9qU39yTsDb7y4S5fyUv8ABJYwgm2fezXXqYuoRL0mn7yOEwJ09i9gC+TRrYs0S2pfiGQX
mY0I+4u9a/Eh2kUb7ho+2ldBdxce/X15OL/03Zq3OSpy6Sb+q0+VL0yaWPiwFXPybE1gvlrW
4Mbv1LW8MY4Pbz7VERjuaXWE4aG2Rl2J0N1QVBuPj7RZE5TVbD51/V6pIvMMP0s1AlVl7J5V
gVeX3OE70fdBDNEFp4xYF0U72CFYsOBQdwxO4San0bD47t9599Pw6ziJJRUF1w8RsHdzNVQ/
9YtwLU2PVJYqcHG1JI62J6Ljk9v6dp/vMsR3mSue//BwfDq+nZ+PNHq4H+5TV48bVAOovaME
Tp0egFItMt+wWgeI4bCyRQQwveQrTapn0EFp1qHv0JxDn/eZBaNahkPthkQB5gaAHv1ll1V1
ua6/T7gbzfVehFo28pNWcr0Pvq5H1HogcB16c5pl/nTseTYXnIAlbuAAMBt7DgHMPW9kujRW
UKMgAFk8LEsjD/7wALiJw3IcUa1nrm43gYCF7xHDZWOiqcn3cg+iiNTXPz2eLvdP+MwIDNec
itPhfFSSuTh15qRRAJkMJ4ckRreacJzy0zTiH4SAcj5ng/mGiQz1SFxZ1+7ke7DZ7GDG0g3Q
i9fowDs/Vl7dgdGRnKLNLkrzImrDzZLbkP3U4mBMhV4yS+reUKvAGU9ZJRLEUJNYCbJ5noV9
yOUd1cMhc6KfnDBi3Jg+qSgH85b+2PjbKblPVFtP20GdtF6HvuCzEaHciLM8NDVVlMtr0tuV
HNvhbGTCBKxNbXbZoiVLD8ZuPYhMZXbxZDSkRdYC3b7JqVkL1+a9vjJiNF0ZRI3tisaWykgE
fhqxR5h+4vpY8PoEYiFZW6ssGDvEdl6jUmX+PD6fQJquLy1JRfwqhTErVnWAKG5RSYroW16T
6Dw9Ijbb6tt0txwEYsby88S/Md2hwdFrOhzaA2ElZYKCyLKwhKIWhbBgdt9m8z3b1b3eUXe8
p+/NHS+M1SCAk8H5RT8v8AT6Tp2JLoya7BJ1DBRFk66faR9Jtv7KyJDH1Z2q5Op6cl7QA4ic
Ujx79oaTsc6cPVcfWPgejyeUWXve3OW9HgNuMp9YdsGwyKuD0rfoNnwxHjuchlE2cVyXciR/
77GeABFBwt8BOxtP9bdq4BNQrufplqZqvTfVaS68r/WZUjqAAf/+8fzc2JzpQ9jD1ZZCx//7
OL48/BqIXy+Xn8f3079ROywMxZciTZtTv7q2kXco95fz25fw9H55O/31gTfvehlX6dT728/7
9+PnFMjgvJ+ez6+DP6CcPwc/2nq8a/XQ8/7/puwMba62kMzGx19v5/eH8+tx8N5ypJaHLEfE
0ER+mzwl3vvCwQDjFnfoxdYdWn2h18tleVfmSiLsrSSJwjfXBt3x7WrpOqYhqDFv+q1THOV4
/3T5qfHgBvp2GZT3l+MgO7+cLiZ7jqPxeMiuDTg9DkfE0ldBiMcSNnsNqddI1efj+fT9dPml
jUxXmcxxR7xkGa4qi6SzClGq4qS1VSUcfcWqb8raVtWWBG5MYHvw6LdDZNRe/dWChZVyQdXM
5+P9+8ebcoHzAf1BZl5izLykm3ntvMvFbKp3egMxjgvZfqJVO9nscE5O5Jwkx14dwbD0VGST
UOxtcDMeyJVmKt1LaSDUW3N++DU8CFcXBv1wux8NqVtjH82BuRMfINABnJa6CMXc1btJQuYT
eoJcjaaWCKGIYm9dgsx1RjP9vj+j2g3wTRTPA1RPp9f2AJmwLyLLwvGLoS7SKgi0bTjULwUw
GBIcE6hvjnZrFqkzH1rCgFAiVpdEokb0YeSr8EfOyOIotyiH3tUQrWbAjbQqPd2+PN3BuI4D
QVjJeDw0mAtCiBOgTe6PXMtRMy8ql3fpUvgYWN0lFu4iGY30GuI3iXhcrV2XHuxhFWx3iXC4
02wVCHc8Io5mJIhVh2uDwUK/E3U4CZgZgClVWQPQ2HN5zrcV3mjmsB42g01Ku1dBdDWPXZTJ
s4pemoJNWY8x6WSki2zfYACcJoBx4/CELH/1EHv/+HK8qBM9y/LXszmr/C0RZI766+F8zgr6
9d1P5i81HV8N2AvQ4i9d3tNflgWu5+heiGqGKLPhN/OmhP5m3ow8RiqejV2LuNBQlZlLtlsK
N1kx27H/1UYKfH06/m3cSssjw5Y/o5A09Y728HR6YQau3QoYvHKwUCvfDz4P3i/3L99Bwn05
dpsBVmNVSl177aKR1FK6ZS23RdUQ8FcceA2KevNpnhccpT5MqEpMiqubwVe23sxeQLhRjg1f
Hj+e4Pfr+f0kY8YwM1ky7TGGl2R7+J/kRmTY1/MFdtdTd+uqn38cltOEYjSjDh/x1DK2OEDH
A8yQ9YGPGE93cFUVqSn4WarJNgF6VheE0qyYt+7sLdmpJOqogd7+QNhg5IpFMZwMMz12bFY4
9MYAv4374HQFTE5TiQnhUK9rma4K2olJUKDPHIt3liIdjXpXsjoaWI3ltlR4E97fDCDcaY/R
FGUk+uxHQmkLK29MW7AqnOGE4z3fCh+kG+3KuwaY3KY3Bp2493J6eeQYRB9Zj+b579MzCtC4
FL6fcNU9HNkFhXKKxdItCf0STaujw44e3xcjxzLdC5umThmH6K+O3brLeEiDz+/nLrtxAMIj
zBtS6u7pYPt1DXF3l3puOmR8VLR9frWnajWG9/MTGo/Z7sc1nYWrlIpzH59f8cTPLjbJ34Y+
8OQo002D0/18ONG1exSEXqtUGci9vMtZieJuXCpg2roMJ78d4pSAq3ArBupKNvDRmpN0M+I2
s1qrIA6VB+IqM5PUHWFJ1A9fiFBpTznjRElZszp4owaqblMzDwAdjNDfaqcub6Sztr5nEcCg
Io92SoIGJfREZyZu0xZ+sD4YCm/AaqJKi0nQV8te3Q3Ex1/vUtugq0gTOB3Q2tmnA0pfqMCH
dfQiyA5rjK63FQunTtn1B6Rp/M9XeVnyz/Y6Fc1cxwg/3eUUhSOfZPtZdoOlU1yW7KOUVJjU
qtj7B2e2yQ4rkfBbAqHCxllqngdRmuOta6mcDHWMgXRymwTVJQKfeAzJgkV/iI5vqDgvecmz
urLh1CKvkTVFllK/rX6M+P52Pn3X9uZNWOYJ8cxQgw6LZBOiL7GC53tNVu327Gv3E40Fmf7Z
MxSrw/5FqMHVmputbgeXt/sHuSGZC0XQVQ6fqPJb5YeFb4xijwKt5fSA5IAIt1l2R0Ei35Z1
ML/ciFTeYVtTUUuBNVlclUrrRXvsq2BKViu2O5l2a/ecxZJjZLHQ/EnAh3SNgBqqdTwODZP5
oor60eo01GrLOljqCPo+PBApgjxj149ELiLUpeBkp21aJUUa7Tv9Be1ww0RM3+Ir6XI6d4jV
EIItlrKIqpUsufNTT7eryA55oTFhkeR7+oVstteDIk0ygFted6Hf4PcmCng3e0G+RRKu9rkg
QWkMLSb1mHB6gv1UshfdS6mPYheIXHCSKvyS2IEDKKEuQ6J95RzofluDDnu/qvgjHVC4h5jT
oADMuJ/dWNYlFwmMYcC/5TdUIgq2pc1AWhLZRIGvi1C7scMv00QXss8WgR+sSNi5BHoIMIQz
NUAgpU5TWgwqncL4xryyk5ZrvxubGhqFftX7iFz6WbpFQxsNlSkqv0rQRQsZjL0slNeEj4Vj
wy2qspewYe1JqhISxuDYy8Hq+qzzOtr+dsxRBdmcUgqmnMjAsrWUlKQRan+vjSNFVx4IFuVd
USW6cx0CBlFsSVsmDrvIMhKxYGxvFMjCHiROqkhy2fmmv8ibbV5p1+tFCQxGAQ+3frmBZupF
K4RtuShsVUbaYriJs+qwG5kAx6hBUJH5iVHFYjHmp4dCkokeQ3uN+RIAiH+uV0YnbNb5DoMC
3ZG8OxiswTBBN5cH+KOXxZH46a0vfUqmaX7L32N3qVAs4uavRpJF0Et5cddsbcH9w0/iH1Q0
bEibWBIk161t4SiKFSzrfFn6tm1XUfXGvUeRL75i29NEcJKMpMEVRAeqhVonlkbS1lTfyeq+
UP0SfgbR70u4C+Vm1u1l2u1CPp9MhjZmsg3jHqoph89b3Xzl4kvsV1+iPf4fDiW09HYBVmRy
ZQLSGTN3p4jY5Vu1DjoCkMcKtC8bu9OOsZn5K0iTJsnRKAwOcv/76ePyY/apZbhVbFZCgmzj
IZHlLREmrjVfnT7ejx/fzxhPrd8tcuvT6y0Ba6qtKGHowqZKDSD2A4g3m4QoeUkUnILTEA6J
HXgdlRu9KOMIsdouoypdMCBZjDZ0kYz2XkbE56H603Vnc6bqN77NJxHKOhPda0QZGYVcRtez
7ZN+aLDBGtAMTQONbRlEck8yhasGWFsw2i7PVvb9GFBFurUUuoiMWkuAIW4sehPS2gsBMAOD
9UuI2snh6MK/lt5sfbFiM9ztjQpmyQZECLInZAbJquhV+GazH9u7CLATW4vKXvYKgu6CUFX8
zvR9p9AgWhjwAniloQUnIcgQUpTn4aAlL5H52wpFm37LWTqTatxSmRVA5Cqwo2VkMBvym6hC
O/ZakS2y4X9MR9CaNYTXukOv7D+hJ/XnEvANauv86enf4089ouYygcJrazOzCura4FolbTt/
jV6kvCULcKyddRu1z/2ozK2if6oNJXx03XB6P2Mo7c+jTzq62QUPY/3VhGCmdowe5INgZnrc
GQPjWDH23IhPHopjo18bJCNbxhPnSsacarZBMrZmbG2LHnvCwMwtmLlrSzO39vPctfXzfyo7
luU2ctx9vsI1pz1kZiyN7U0OPrAfUjPql9ndlu1Ll2NrHFVi2WXJlcl+/QIku5sPUDt7iSMA
zScIgiAIfDr7FO406VCAJKD0Ifv0HwOlzubBpsxU1iQDJYMNuI0YaqBurUy8068B/CcNPqPB
5zT4ggZ77DcgqOjXVl8CrZoFmjVz2rWq+MdeELDOhhUsxk3MjPU7gOM0b3lMwcs27URFYETF
Wk6WdSt4nlOlLVma22FBRgwcZ6kgygOeQwOZHaR6RJUdp0S91WMnNvSAazuxcmIIWDRdu6Dd
wLqSI+eS5xfLuqdcxjcP72940egFDVmlZoQ4/AVn26sO89869i5MbQCnMpgPJBOgLxoftqID
VDIUN+0Byh6iMcQgAbhPMkxdIBiaTUyNXVuuME5FI6+mWsHN5BMDgaWh4dUAnH6StIRK0T6C
p+lepky2H4d4RGa7/RIWUETEyEDbPjEKlKZ2UltUQtpslJGfvAGAEYhlIZhOQmWTMHpLoTHy
YXb56x/7L9vdH+/7zdvzy+PmN5XgadxBh3PhNKBmtMK8KUD7uN89okv4B/zn8eXH7sPP++d7
+HX/+Lrdfdjf/7WBlm4fP2A8vydkpQ9fXv/6VXHXavO223yX6Ss20h9g4rJfphjNJ9vdFl1L
t/+5197ogx4fwwg20t7TXzMhczZMzZMZHKDv8aovq9K5FRlRMDkBQxnHIJdq/o2ol5QXkSZd
gCSw42Ma+WLIjgzo8DiMrzPcdTidbmCVVKPR5+3n6wETYb5tTl7edL4uY8AkMRoYrXzuFnju
w1OWkECftFnFvM5M5nMQ/ieZFaPGAPqkolxSMJLQ0OmdhgdbwkKNX9W1T70yL26GElA790m9
SDc2PPgBBo9lUZ7K8JONR7VczOYfiy73EGWX00BLG9Rw+YfyFB361LVZakaC0vDxlbMy3rx/
+b59+O3b5ufJg+TBJ0zZ8NNjPdEwr6TEn/80JiqMJaHb/jQWSUNHARp62InrdH5+PrO0GXU3
/X74ik5lD/eHzeNJupNtR7+7H9vD1xO23788bCUquT/cmzbCoei4CI/cMi68TsQZ7I1sflpX
+S06MBPraskxCJ2/gtIrfk32P2Mgga69vkXypQ6K9b03DXHkj29spoYaYK3PtTHBimkcEU3L
xTo8OhVRXU2166ZtiLJh+18LVh+bd4Z5NdruyAxhLN/rgYUzTIc4DJc30aBzhcvJCka0W3XG
LenaKWlwi9zsD/40ifjPOTFTCPbru9Gi1K0xytkqnUfHhkqR0Nazocp2dprwhS+FSAEe5O8i
OSNgFN15X9fUABYcOF762dBONIOkKZIZ+cjBwNuPQibE/Jx2SJso/pyTT0T0Us3YzF+/ANQ9
8hBzM/fyBD6fETtsZmZSHYAFAcN7tqhaEj1sl2L2iXaF1BTr+nzmR9aMt69fLQ+JUWZRKxSg
fcuPLtCyizhtAhooRExHGh75tloHQqkNjMuKFI50/q4TMzypDIHpfZzPkgj158lK86ZhC/mX
kloZu2PJsR41LG/YMeYadhCi9CZNj5editpxh/NIiqPj3aaUT9CAXFc4F95oaPg02IqZpmTt
HkNp87NXUn5XebCPZ/4iye98ISMtuR4Ura9DiwQcZV6eT8r35y+bt+GJK9U8jFDfxzWljiYi
Wsq4gzRGbxTusCocCxznTaKY9OswKLx6P3OMcJ+iX2Z962GxUulT4pwgvm+/vGFiy7eX98N2
R2gQOY/0uvfhejcxgqkGaUicYvGjnysSSudAJKnw+XTU0kX4sHmBtsrv0svZMZJjjQxuglMP
jmiCSBTYG7I1IYaupW9qzFgREms2jeZldFZNG78DJvHxkpyrOYrks69GWnhpFMKx/uSzvUnH
y/aIGhboH7XgTEomFwEQHl195hf1Knbpj3WuXPbUeRuJWpbztqK2TwNLhtD0qHwxiEjWFm7U
Iw9LnbYmLPLg6Rm11pBGecscbyBm67pRIZmoIuIYNJXjJbAir5Y87pc3/sHWwbvsyJrbAhOH
AhZNhu1tbZmCDHTdRbmmaroICak79Ym+rQuT2LBpasToCqkkKz6Q/kseNfcyo89++7RTDxQe
vm4evm13T+bBQ932m/ZRQfuUaUIQqJgsphmNrIYB0KWQDI//U8GHB++Vf9DAociIl0zcKnew
xdDDPLhpYFpiJnrprWDexTLpKDcBIg5aK0YLNkZzeAwACm0Zoz1VVIWTa8gkydNywBo+ryLh
ZHpEwYu0L7sisiIUK4sys3gtBj6FrdQCzS5sCv+IFPe87Xr7K/vsBj/HMNn2ApEY4Mg0uqVN
+RZJSG+TJEysQZ8i1xjiI2638MJSn+Izp11kki0e+afV2DBjjMfTcYzLpCrszmsUfd+P0CT1
4Xe4UYIKY2uMd2qDd6Cmr4INpUqmfRZCzgpITbaPdlCQYIr+5g7B7u/+xgzQr2HyYUft03J2
Yc2ZBjNB2UImZJvBQvAKa0CM+VVE8WcPZs/i1Ld+eWc+NTIQESDmJCa/MwMsGoibO3/dE5c0
sKUkfVPllaUImVC8YjIXsIWDCk0ca5oq5iAVrlMYKMEMRRpvIHhlPT1RIBlK3nJ8R7gVN7KU
VcrggT3IrWWbOThEQBG9kzgXwdDCnElfj0yq90ZjRZzJumRcf6RdVMLLBU1TqURiLgliMdA4
URmiyqocEBgfsLaxI6quqtxGidSj1t6xA2Zyagac0lVpl8NmmSs2MLgjryL7FyFrRhaSSbss
wZffgWplRv8UV6jSG30oam7l04Ifi8S8Z1w6nR5HtMbHSZZSOKIAI3svZQZDR2FuBi8Y6TqV
jKxf5F2TOVeu8m4rSWszLV0DUt4abrwVLZf25jO+0HV2cvu6blBWJPT1bbs7fFMvUZ83+yf/
qjhW7kiY3zmH3T0f72b+HaS46njaXp6NA61yJfgljBSglkUVqm+pECXTWd91b4ItHA0R2++b
3w7bZ63o7CXpg4K/Gf2ZuBG50HuLoZFpKS9tig4NTPo1h0YtBDRNOs5fzk7nZ4a2B3NRg5jB
F2sFbRITKUtkwUBFe1UCAUZ45SVMv32taTW7gQWG7wwK3hSsjQ2Z42JkS/uqzO33BbIUkBYx
dCVlKxlSFjOrkC7R/3R0fzHDvWtOSzZf3p+e8EKU7/aHt3cMKmQ+0GKo84N2a6ahMIDjZaya
kcvTv2dTL0w6UBc5Cw+Y5yYg1+BqmViXHvibOjCM6zVqWAmqWMlbOOmisJpKlTizMEXcOjcc
FjLC8O+NU4b0FnZhTp1OJVK+FJ5d0Imqf3RG7OFCB2oz/q6C6oaZ9/pjYYajN67y9KbFgIt2
bihVCuKlmKeUefy2WpfmyUDC6oo3lftUxcbAHqaGiX424xDfpYJ+hDU1EpbrIshQokoYvoRx
VH6FVG8kqLuYJu8i9VjD4Uc97rBz5LAe3ZH/X3DcceQ+1Stz18Xp6anbqJF29G8IpKdxyKVv
RhMzOqmslkfSEaNDAU91GkRoomnSMnEl6qSjyLKuoSfLVq52p7fXhT/UQI3Xcbh3HmkfUAn6
9syoEw4aS2rOws1yW85F2zFv2QTAKrT54PHiNCjjywwISIejkVvkiOL7oUVerf0yLHSoJCUH
WWP60jkIHGBbLdNeOwrrm08Vdl2JlVqWk/BKEn1QmkQulkH5hsmyZRcuTz0vnEnsOPtipvIZ
qRtZJDqpXl73H04wIuX7q9q3svvdk/kwBZPMovNPVdWWYcMA4/PYzjAjow9+V5tRmwdWrxZt
EIk5ozA0dWGSyXr+CY3bBlV+n3Uwxi1rLNmgFviIksmPq669nM1P/YomsmBbHBK3KesrUDNA
2Ujsu0oUjnqoyI3p+AQp50XQNx7fUckgdholVxxjoQLq+xATNkjdySGLKNtmJxy2VZrWat9R
BjL0yJi20H/tX7c79NKALjy/HzZ/b+A/m8PD77//bqZHxvemssilVNfdFMK1wBRs+s2ptcNJ
hGBrVUQJAxp6qyMJsI/hLQuOdl2b3pjmO71spixCtoiiyddrhYHdrFpLJ0SHQKwb9crJgsoW
OpJEvd+pfeGlEcHODBma8zT0NVc2ezqBnTlosEbbTqSO7WPqJHW4+j+4YChQvtDAE6jcZ5yD
nhf1QartMFh9V+KdMLC0srYFB2SllA5b+H1TKt/j/eH+BHW9BzQFG7JPjxa3jT5SAdJAd0+h
mU8h5cNjDucX6kkYqkVlL5WmuJLx37jtYHm0xXbjYgEjUrZcxdBUN79xRyqjagHFHbGq4i70
itXhiOn8Bp9gZhsvmbSBP/Zt+JEOYtMr4jnmFOLJ6qCzIK/0WU54eeQVgXrxDko52pDIVPQM
9PX4tq0M40IpA+9Biy3HaRi5RVeqQ+Zx7BKOPhlNk9zCAR+W7xjtxCpArZRChrkAJRxN/w4J
PhHFxSEpQakvPX061h+qUiakag6GzuudulWtsfPsDqWIm7hFJhKS9NbNB/xpcYibNceDt9vx
WqRpAVwPh1Wy2V55g13LLUgT+tuIO5q4f+MW5hftz+Dkqk5NHyV1AlM4fq/TagpH0hFVwpCA
srMI16X2dP/DbJ2zlvhs6oyaVM0ulFzS/NCUrG6yylqxDmqwkcD8kkf6CAQ0TLvutuewPsBZ
CWKS4X2g+iANvMwcyIHLKcKh0nwlb09l0iBnC+mgjChV3Eqea/QMKgKXjULrr7kt22z6ZpoL
vJXUMTjpLqli1eLh5edQdJtpcfQRyKSsYIJ6eGGszInOmz6ojuXS/o6jSRSzjDGdmB5sP/jS
wEAtA6lee3J/kt9Ga0LE/gDiEvc2ioZhojXyMfh03JSRsXgj1am1HV5JvZTRNJ4D4OvLj83b
64O1V05MV8ejw/o6FYLM6IFECmnKNpwutb5BawON8OLMpE8LTM+ijACOL3CVYL4eEJimIZuo
FmYCc2DCuPo3AEXDe2UaJ+9hsQUodvFEhWGpVsEriBsnm/mNukgKPehVaBiwBvTdKDeulMwP
e1FhghrXnGE9J4gSrvcNY1Bx4JjIb90jjoNAS0JsvZ5CAg3s4dhXd62yC52dfrqgaHg5kszm
H02Kuk26onYHU2sddLRhn8PMm4d2sz+gyoznvBhzDt4/bUwWXHUl/aBO65a95DwtP6wIPHVB
E00U1UJKs3B51spX4TSGeo4txxXIEM/80YDMBtGi5IftBY30lEQDcSt3a3XKG3wQpxPeKmkp
/V8ds1H8NpY6IOEFL2V2bgdsU0bDCUQuH191jdAROaj0mpeu7qcylhmKYLKEyYVHX92RAsC2
J2TpDbJkaBz0jZh6Ide4vW5FE5sulBK6AnAro7bZNSnPmFBF41Wc/RGAga1y2olXUnQdp97q
SNyNczMtgYaFzwQLdMYYDJLOGIX8UCWWJ2RUQF5i8MbW2kzNzxZcFHAqTd0xdaK1qD4mae71
I2ANVWwKkghUOY9NW+lexD2uTgsbCgD3jH5U4HjP9tR96H8BZsDgI9pTAQA=

--/9DWx/yDrRhgMJTb--
