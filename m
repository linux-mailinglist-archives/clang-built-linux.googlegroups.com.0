Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGO2437QKGQE4QTC3UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E402EFFC2
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 14:18:18 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id b136sf9920522iof.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 05:18:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610198297; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjgWhxvWjA/wn5hJeo0qzJ6ofmFlRo3HwC/ViZgppnyTCKfzHHMMqXhg856PT5MMzf
         zSfDqpXfea9Ai9+FrXUZPA2NozDLbXwacYzuT9g6BlAhSB1tKlHMf/bwydttIZT1zyIW
         GasTdCjtrFEKDPDXpgdIqtgG5ncdAWDm2/Mc/2UHZzLh8eRKjb0kypaG4lRiUPbgTuw+
         wJrBzNtt2wBWa++eK/qXwPTSNNrlkpaIgdIZz+qvjZcI2hkhee7jYWpfCWFMvdzcN4Ly
         HmppolqgpaXobpLWtpJm/6SMrCaRPBVtVv18Rj/tsHBLWxOacYZ90GwhtkfEDI43Zpgs
         oGOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gwnTyZ1vKtcDXBOk/FWtgWXwrwnuJ4a91uTfy0r1Wdc=;
        b=Qa7pKO6fP3THPYEzrUQ2IYUujyjyMo/sOfza/roi3B7buXrE6GeQJEHDPjmZDqha42
         YqvEeLw5IzSCwQ3cZb7/iMvy2TiVZEPW4SKjIAjZm/MUfvegWabE/j/3oOxij+20tUdx
         0NVow6j9fi08YUmBzl/nf9ahfXcxTAJ98xONZ7rHjI+Rhtwr0TpjVGGCzB1pI6I9CFi1
         w8QIORwLKp18RNSBE1nZrcHZFaR+Ox302f0NucypBo+h13R0CG4P5omR3K87NQt/DIbF
         zBNZwuQzDLpDq1NCNS2fcGcHvFiecHUXz/9nkme4Kj0zcMfPKO0M8hZ5npOakEHxVq+c
         w2PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gwnTyZ1vKtcDXBOk/FWtgWXwrwnuJ4a91uTfy0r1Wdc=;
        b=UeP9ClJjnOBS1TaGndsSy/ifMKnonAjRhG2k/2YURggxSv6W/M1djocW0575y84hWj
         Oizr549hX4XtaNMzmnMjvpWF5GLavYBUIAWiT+bF7jJLWrEl2s68UmtM6uNhGA26vH/G
         bv1z8/dg2fEDix3brGwxAHfxV+pkDRIDFbqy8KTMTgOMy17ogLjpnmXv4ZjTZzhGm4ce
         KMIx2qVQvavOTexucww1kyA/y6hsGlnvB+rgRT1Djpi114U2AOwsDVBCXyHFlGGxGdXH
         jj2SdcK9ChDqvxbHMAphfVqCoef57aEgfu5a+IFPR5j6iQ2YbYErafKcSf3KxndkN6vg
         +NJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gwnTyZ1vKtcDXBOk/FWtgWXwrwnuJ4a91uTfy0r1Wdc=;
        b=XRBAD5hdXlP8r0BPIdzTINCvxjkd1ot7My4wh9N/mFHvtO/T6nbJTf01XP5IRmd2Ss
         o2SZf5c8k2Ke9DYb+bDkZS2rXu4G5Ccl9IYDMZlyHXscCvYEf7IcgZs2WzalxmZF74bz
         8lpJI2F4u7CSLEaDuox0To/9EMjeLRiQB0LB6yXY+Jpo8kGkuXAcpkEiZnqh/tmDDmgD
         oPODMxdYJcifwKGt4jGL1QJ8Puo7aG1FtuzwU6knHLHn0wFKKH72t4JmkocdN0/yfnuK
         gFJI4qKjCF7+OyccQTnmAH5qd/zK75EEfOCB/FX/FXXMQiXR+rQk3BZ67W2XCbPvqjc1
         zZfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t8Fg+EoC+TGVEQ55yDHggcylevQj6TPWu0SkxjN6Z7T3l20rE
	YD1X5T9tXrhsbgGoDrY8tqw=
X-Google-Smtp-Source: ABdhPJxgiA+9riBzQAgF9P1R3M3z9kmpmeFnRfIfJF/Z7M+/Ljo8Qaq2lLB/ew4JFDoJ07hH9feJOA==
X-Received: by 2002:a05:6e02:c6a:: with SMTP id f10mr8624558ilj.264.1610198297516;
        Sat, 09 Jan 2021 05:18:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls4101147ili.3.gmail; Sat, 09 Jan
 2021 05:18:17 -0800 (PST)
X-Received: by 2002:a05:6e02:1185:: with SMTP id y5mr8553872ili.119.1610198296986;
        Sat, 09 Jan 2021 05:18:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610198296; cv=none;
        d=google.com; s=arc-20160816;
        b=iC7DkAYAyOR6mBxOowdNg2GduCJMWNhwgfoqcQeHI5fYyRP7M29ijCjvsri16yBauK
         1ofTS+Wr+AOKDU5A8PmHMXODYwT7sfiIyPXuN3Gq7pSvNxSyID18VDrUldGMlG82MiE1
         8kjdXDLfsHFuMoSSuB/MiZLotdIBD2LT69NPvEl1HDC11hSiZhgb95tWSR1nAikwn5YR
         BtebAc1VSBaI0KK1CWBC/9Jop98MaLIBuIn7BioA18K51/qFeEf5YzLXTqh39mxz0XFu
         Unbcl/oqDkubOy9kac6QDmlbFKaTKz0mDoEgZHqoA1t2lYUQMc1kqv03rqBhuJnHu+aG
         1enA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fy2ADDTUvZmBLHnha4VeKrM67CUD7zL2Abzc3ki5pMc=;
        b=Ad18bFKXk9gzQXtlqXk2DcZoVqDSvpN7b66wLtYLKtGN778Li6RHtcXT+MGButrdBY
         VS6qb/ZwooREmmh8qtYGGKeKSeYVl9qR/hB6vqHqQkxUwonuYHEYvFyE2M859evnLoAp
         ymr8Kiyb6yhntlLL9xwqUMM2P+NlrDoeJ4m4s1Jdj6eu8+6d4rrmoQr96l9SFSj8V7uC
         ou76hXQHjrS9CfFr+jX41LmfhCpawHkZ/VtJk+uC78Ni252WT72lXgLOihSCWTKnxm0A
         S0fawM7PF2pN1fxu7CQFN0MICcXkRhVw/NvD4ZfPD8V06QaPYb6j+MAQUQ+r6M6GEHoV
         d3Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id p16si453963iln.2.2021.01.09.05.18.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 05:18:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: xbZVr+4mrS/6EQFDM5bVSxM0w1JrXr8cOai04peL6Qzq0I5c7v7jyplDkvDjnw+TwZkpnhJZh5
 6Uc51TIE6mGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="174196216"
X-IronPort-AV: E=Sophos;i="5.79,334,1602572400"; 
   d="gz'50?scan'50,208,50";a="174196216"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2021 05:18:15 -0800
IronPort-SDR: 0z0AUt+xUGZWXRlmEbcKh1BcGI0ETTEqrD30E45lRuPR+G9t0v2YF8uebHm2EDV+lU+TkQdRhT
 NLxDRmg2Gn7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,334,1602572400"; 
   d="gz'50?scan'50,208,50";a="399280601"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2021 05:18:13 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kyE8C-00015B-V3; Sat, 09 Jan 2021 13:18:12 +0000
Date: Sat, 9 Jan 2021 21:18:03 +0800
From: kernel test robot <lkp@intel.com>
To: Chao Yu <yuchao0@huawei.com>, Chao Yu <chao@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>
Subject: fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in
 function 'get_victim_by_default'
Message-ID: <202101092153.mJkwUvtn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chao,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   996e435fd401de35df62ac943ab9402cfe85c430
commit: 093749e296e29a4b0162eb925a6701a01e8c9a98 f2fs: support age threshold based garbage collection
date:   4 months ago
config: powerpc-randconfig-r033-20210109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=093749e296e29a4b0162eb925a6701a01e8c9a98
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 093749e296e29a4b0162eb925a6701a01e8c9a98
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:182:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:184:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:186:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:188:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:190:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in function 'get_victim_by_default' [-Wframe-larger-than=]
   static int get_victim_by_default(struct f2fs_sb_info *sbi,
              ^
   13 warnings generated.


vim +/get_victim_by_default +622 fs/f2fs/gc.c

093749e296e29a4 Chao Yu       2020-08-04  613  
0a8165d7c2cf139 Jaegeuk Kim   2012-11-29  614  /*
111d2495a8a8fbd Masanari Iida 2013-03-19  615   * This function is called from two paths.
7bc0900347e069a Jaegeuk Kim   2012-11-02  616   * One is garbage collection and the other is SSR segment selection.
7bc0900347e069a Jaegeuk Kim   2012-11-02  617   * When it is called during GC, it just gets a victim segment
7bc0900347e069a Jaegeuk Kim   2012-11-02  618   * and it does not remove it from dirty seglist.
7bc0900347e069a Jaegeuk Kim   2012-11-02  619   * When it is called from SSR segment selection, it finds a segment
7bc0900347e069a Jaegeuk Kim   2012-11-02  620   * which has minimum valid blocks and removes it from dirty seglist.
7bc0900347e069a Jaegeuk Kim   2012-11-02  621   */
7bc0900347e069a Jaegeuk Kim   2012-11-02 @622  static int get_victim_by_default(struct f2fs_sb_info *sbi,
093749e296e29a4 Chao Yu       2020-08-04  623  			unsigned int *result, int gc_type, int type,
093749e296e29a4 Chao Yu       2020-08-04  624  			char alloc_mode, unsigned long long age)
7bc0900347e069a Jaegeuk Kim   2012-11-02  625  {
7bc0900347e069a Jaegeuk Kim   2012-11-02  626  	struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  627  	struct sit_info *sm = SIT_I(sbi);
7bc0900347e069a Jaegeuk Kim   2012-11-02  628  	struct victim_sel_policy p;
3fa565039e3338f Sheng Yong    2016-09-29  629  	unsigned int secno, last_victim;
04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  630  	unsigned int last_segment;
093749e296e29a4 Chao Yu       2020-08-04  631  	unsigned int nsearched;
093749e296e29a4 Chao Yu       2020-08-04  632  	bool is_atgc;
97767500781fae9 Qilong Zhang  2020-06-28  633  	int ret = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  634  
210f41bc048263d Chao Yu       2014-09-15  635  	mutex_lock(&dirty_i->seglist_lock);
04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  636  	last_segment = MAIN_SECS(sbi) * sbi->segs_per_sec;
210f41bc048263d Chao Yu       2014-09-15  637  
7bc0900347e069a Jaegeuk Kim   2012-11-02  638  	p.alloc_mode = alloc_mode;
093749e296e29a4 Chao Yu       2020-08-04  639  	p.age = age;
093749e296e29a4 Chao Yu       2020-08-04  640  	p.age_threshold = sbi->am.age_threshold;
7bc0900347e069a Jaegeuk Kim   2012-11-02  641  
093749e296e29a4 Chao Yu       2020-08-04  642  retry:
093749e296e29a4 Chao Yu       2020-08-04  643  	select_policy(sbi, gc_type, type, &p);
7bc0900347e069a Jaegeuk Kim   2012-11-02  644  	p.min_segno = NULL_SEGNO;
093749e296e29a4 Chao Yu       2020-08-04  645  	p.oldest_age = 0;
3fa565039e3338f Sheng Yong    2016-09-29  646  	p.min_cost = get_max_cost(sbi, &p);
7bc0900347e069a Jaegeuk Kim   2012-11-02  647  
093749e296e29a4 Chao Yu       2020-08-04  648  	is_atgc = (p.gc_mode == GC_AT || p.alloc_mode == AT_SSR);
093749e296e29a4 Chao Yu       2020-08-04  649  	nsearched = 0;
093749e296e29a4 Chao Yu       2020-08-04  650  
093749e296e29a4 Chao Yu       2020-08-04  651  	if (is_atgc)
093749e296e29a4 Chao Yu       2020-08-04  652  		SIT_I(sbi)->dirty_min_mtime = ULLONG_MAX;
093749e296e29a4 Chao Yu       2020-08-04  653  
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  654  	if (*result != NULL_SEGNO) {
97767500781fae9 Qilong Zhang  2020-06-28  655  		if (!get_valid_blocks(sbi, *result, false)) {
97767500781fae9 Qilong Zhang  2020-06-28  656  			ret = -ENODATA;
97767500781fae9 Qilong Zhang  2020-06-28  657  			goto out;
97767500781fae9 Qilong Zhang  2020-06-28  658  		}
97767500781fae9 Qilong Zhang  2020-06-28  659  
97767500781fae9 Qilong Zhang  2020-06-28  660  		if (sec_usage_check(sbi, GET_SEC_FROM_SEG(sbi, *result)))
97767500781fae9 Qilong Zhang  2020-06-28  661  			ret = -EBUSY;
97767500781fae9 Qilong Zhang  2020-06-28  662  		else
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  663  			p.min_segno = *result;
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  664  		goto out;
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  665  	}
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  666  
97767500781fae9 Qilong Zhang  2020-06-28  667  	ret = -ENODATA;
3342bb303bf48dd Chao Yu       2015-10-05  668  	if (p.max_search == 0)
3342bb303bf48dd Chao Yu       2015-10-05  669  		goto out;
3342bb303bf48dd Chao Yu       2015-10-05  670  
e3080b0120a15e6 Chao Yu       2018-10-24  671  	if (__is_large_section(sbi) && p.alloc_mode == LFS) {
e3080b0120a15e6 Chao Yu       2018-10-24  672  		if (sbi->next_victim_seg[BG_GC] != NULL_SEGNO) {
e3080b0120a15e6 Chao Yu       2018-10-24  673  			p.min_segno = sbi->next_victim_seg[BG_GC];
e3080b0120a15e6 Chao Yu       2018-10-24  674  			*result = p.min_segno;
e3080b0120a15e6 Chao Yu       2018-10-24  675  			sbi->next_victim_seg[BG_GC] = NULL_SEGNO;
e3080b0120a15e6 Chao Yu       2018-10-24  676  			goto got_result;
e3080b0120a15e6 Chao Yu       2018-10-24  677  		}
e3080b0120a15e6 Chao Yu       2018-10-24  678  		if (gc_type == FG_GC &&
e3080b0120a15e6 Chao Yu       2018-10-24  679  				sbi->next_victim_seg[FG_GC] != NULL_SEGNO) {
e3080b0120a15e6 Chao Yu       2018-10-24  680  			p.min_segno = sbi->next_victim_seg[FG_GC];
e3080b0120a15e6 Chao Yu       2018-10-24  681  			*result = p.min_segno;
e3080b0120a15e6 Chao Yu       2018-10-24  682  			sbi->next_victim_seg[FG_GC] = NULL_SEGNO;
e3080b0120a15e6 Chao Yu       2018-10-24  683  			goto got_result;
e3080b0120a15e6 Chao Yu       2018-10-24  684  		}
e3080b0120a15e6 Chao Yu       2018-10-24  685  	}
e3080b0120a15e6 Chao Yu       2018-10-24  686  
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  687  	last_victim = sm->last_victim[p.gc_mode];
7bc0900347e069a Jaegeuk Kim   2012-11-02  688  	if (p.alloc_mode == LFS && gc_type == FG_GC) {
7bc0900347e069a Jaegeuk Kim   2012-11-02  689  		p.min_segno = check_bg_victims(sbi);
7bc0900347e069a Jaegeuk Kim   2012-11-02  690  		if (p.min_segno != NULL_SEGNO)
7bc0900347e069a Jaegeuk Kim   2012-11-02  691  			goto got_it;
7bc0900347e069a Jaegeuk Kim   2012-11-02  692  	}
7bc0900347e069a Jaegeuk Kim   2012-11-02  693  
7bc0900347e069a Jaegeuk Kim   2012-11-02  694  	while (1) {
da52f8ade40b032 Jack Qiu      2020-06-18  695  		unsigned long cost, *dirty_bitmap;
da52f8ade40b032 Jack Qiu      2020-06-18  696  		unsigned int unit_no, segno;
da52f8ade40b032 Jack Qiu      2020-06-18  697  
da52f8ade40b032 Jack Qiu      2020-06-18  698  		dirty_bitmap = p.dirty_bitmap;
da52f8ade40b032 Jack Qiu      2020-06-18  699  		unit_no = find_next_bit(dirty_bitmap,
da52f8ade40b032 Jack Qiu      2020-06-18  700  				last_segment / p.ofs_unit,
da52f8ade40b032 Jack Qiu      2020-06-18  701  				p.offset / p.ofs_unit);
da52f8ade40b032 Jack Qiu      2020-06-18  702  		segno = unit_no * p.ofs_unit;
a43f7ec327b0d86 Chao Yu       2015-10-05  703  		if (segno >= last_segment) {
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  704  			if (sm->last_victim[p.gc_mode]) {
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  705  				last_segment =
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  706  					sm->last_victim[p.gc_mode];
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  707  				sm->last_victim[p.gc_mode] = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  708  				p.offset = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  709  				continue;
7bc0900347e069a Jaegeuk Kim   2012-11-02  710  			}
7bc0900347e069a Jaegeuk Kim   2012-11-02  711  			break;
7bc0900347e069a Jaegeuk Kim   2012-11-02  712  		}
a57e564d14d9d12 Jin Xu        2013-09-13  713  
a57e564d14d9d12 Jin Xu        2013-09-13  714  		p.offset = segno + p.ofs_unit;
688159b6db47a9e Fan Li        2016-02-03  715  		nsearched++;
688159b6db47a9e Fan Li        2016-02-03  716  

:::::: The code at line 622 was first introduced by commit
:::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collection functions

:::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
:::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101092153.mJkwUvtn-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
kFvoSfNJilkDwId8YOKtaewB/wKznCAShSoBAA==

--FCuugMFkClbJLl1L--
