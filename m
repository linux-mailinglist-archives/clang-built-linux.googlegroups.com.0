Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBR5K5SBQMGQEH557Q4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F129836314C
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 19:05:12 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id n4-20020a6b72040000b02903e09873919esf6473155ioc.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 10:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618679111; cv=pass;
        d=google.com; s=arc-20160816;
        b=tD+dz4+vI7zf1cm6DBbRxr5Q+eP2YLzAh4HErqSc8GvIiiCSJ0J/MKnm+LaLcCehFK
         FVV6Zh7iE7H6WL4tnXzGPSVxMb/MAQ6Pro4Tf8f6jJsPDnam+ip6GfKa9DOfcVNrTHWR
         keA4QOhYL3feLi5uf6ZRQJRQUtTjXtNBtgK8wIqbTDQLr+/gqlvCxbEg4EjcYalqmnlk
         o+l8IBYI5aj/Mu5v52dPqF01YDO845r5F4BNpJdAsj3yE99jypQ89S5R68onfcsAEiof
         HBuQIHjGbla4NgYoTuD5WcyEj1TDkfd12Q86l3kVVhJ6gyoMO93OSrBuEVCaa5DOnLp+
         TLFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=nbJjIQRJVIjf1vnwf7g2V1i7hGVKQQEcp2ShAZtrYZg=;
        b=XTmuqJ3O6ntxeUcxQItT3/6zyJ9znF0JlYWrNi54ldnQXsUIEnsIGg9aMlsAZgHZjx
         10polM7WV9Yll23lBKnnP/AfmmzJHXiX3dIxKmLUtZbLy7toEyhGO3I5Cv3E/YEY9KdS
         RWvpVyZ30IRVZdBzB7W8+mC2EvlW22yZULANI4+NC6asV2LrQJFOP5Csp1hsrb0dnZ4T
         zEsC36D1/zknyj9dJwaXFLd+dkLY13Zd6HrNKVaBODOQ6LMVn4lmWG1wrI7Ao3hDQT6J
         J/oWE1c2rNaqRH3+ZVGsamTrUMyzLge3tpdgtTgL1Wj3OmgIqwXn0hU0gMasj+CLbjge
         gqBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nbJjIQRJVIjf1vnwf7g2V1i7hGVKQQEcp2ShAZtrYZg=;
        b=dzQ2hGGVD2HRPnfwqsOkrmAtK/f5TZOIO1wfHWWWkSU3ws/BmvzsxFVUV4/zWNf6q0
         rswPgBj46LpzFU87a3RnDcdCNdSBvmM6MgAfSN0BziN7GZs6/JQRas4OOr6P4g0yiA8W
         y3wHdB3iK1M0SeqBt+2/1vLPNcH0l8WXvucVC9aGr+GkzsmzwgyflvbTh9vFHCwE6WdX
         KncbKDLxfRubWh4512LC1w14MqKf6dl+u/jFwubDtXISMCrsYyc3B0Qg3eWrYktV8d5F
         SvELLpv9ZvRan8YZdjv6/rDBfWV2C/WXxlBgW8E7wZdVnNXi7b3hPdJ+OcUXEkH86OSI
         pD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nbJjIQRJVIjf1vnwf7g2V1i7hGVKQQEcp2ShAZtrYZg=;
        b=SOBa8kDsi7w+yl+UNvUKIKnz39/LQUksbpKUaVUw+of/XPDon3S+mj6UtxrwBnp+u7
         SzYksnApnkw9vnK7IF67Ye2Cbeamympc1pIqkPX/pGG7wi6Ax/Bxv9SlVQmMNBc1YsY1
         y4lG+NQMMlteEHFmbyGhQg7nJsazF231dbyG3z0bA8F+Jr35SDEudPF52+OM85lVCrNI
         VLi0naV3CRX5dYbh8EHH+bAZj3jur0K7itkmOtNOgi6j9L3Ngjnp3ijvaBNYFZ6gVdrP
         o2gWFHOlnj8DmbIdux0F6QIOLtsz2RVOI5gPHt7m44g0K2PjZ87USLKUN2JYripeayfG
         T7Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323HwcChf0S1mNLk+MtLWCseBdVxBD9Gt4gotkPmyDbD1DHI2RH
	DOhGglbp0sBHmvSr3Hn2WXU=
X-Google-Smtp-Source: ABdhPJxOiN2vNnDjuMde1O+/4VysqcxKYhb9QrSF+9RdCoSiaTAGl6G/vwcyie8gsrlb3St7c43yIw==
X-Received: by 2002:a05:6e02:154d:: with SMTP id j13mr10859998ilu.46.1618679111386;
        Sat, 17 Apr 2021 10:05:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:328c:: with SMTP id f12ls1728094jav.4.gmail; Sat,
 17 Apr 2021 10:05:10 -0700 (PDT)
X-Received: by 2002:a02:cab3:: with SMTP id e19mr9014611jap.71.1618679110021;
        Sat, 17 Apr 2021 10:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618679110; cv=none;
        d=google.com; s=arc-20160816;
        b=RcMsGQsIN2J7JHUbLjEvqA7ICkwImewTG8gZbATZ13hzx+DN5Mgk2Qyj4vQxkxqwpJ
         tydCmwaFzgvzQ0lKtYDD6xqjzhPNZVBq1DeKZRwWafnxQUG1ctc2S+6DI/3kDXGDXDO2
         92en3HyIdhhEhTnMbOEelY4W68AgmgnOKTaU3PKIpDNRBT6t0xufcWxKtInzSaHEcCU7
         v8ZsawmFHY7VhPmwZSCaEesfcztEKeFjDl4omosEX8H8Vjh6PuA2CJkRw1HEvPg8rjnn
         gLsmL/7sqxQIrRaIKppvLoo+Bch8RUGe3LC6J9YxzhroHu4HLen2/8D6buTfJwrW5rcu
         ZoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=c9Ai9caiePmb7Hp2QyUQD7UVOuP9yb6WRyNwHFEAhic=;
        b=xafPIVNiw0HzrEbxkVWcG17/+9LkGdng4YwHXtBAFWN3Q1jGupd6Q18aczAhDW+Pqg
         nNpbuU1PsL8fK7hBXxLijzzfXSzuYJ/9DohI7hFyavO2jklXMBHG49qmBSdes7wH8MWn
         7hVnVnouYwcE4yeGaC2vOMAfcPLvuUNm7d9JbICe7Od5IGjvOZDapajFh2QG0TfQzDFV
         lDM/ajj5PPSJX8Rvv9jvmrwUpZtJ0qnR8D50Zp7kbxM+ftxk7Jyx7PWJ379fte3RCH9x
         JtWzYvc476uh65fkN6TpwPuJDy9rFyGop78t225XlRzP/LcE3/O95jMqn926vDCcsCnn
         R7kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id o3si682380ilt.5.2021.04.17.10.05.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 10:05:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: t+bZ5PDurOQiSzFBFFTH3BinLXOTLNUzVWxtQcouWOaOdjnuG2AJ3waeVGlVnKWbw+ZdosYoa2
 9eR8Po7bvA2A==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182669532"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="182669532"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2021 10:05:08 -0700
IronPort-SDR: XVVdeSnK/JtdfHyzoTbyDbfeUxNrTiQZP0DT8jAEOcSGdlzkSpwodizgNTTyNY/27Jmy18zdOf
 QXsKzryOHUww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="522992872"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 17 Apr 2021 10:05:05 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXoNV-0000wu-24; Sat, 17 Apr 2021 17:05:05 +0000
Date: Sun, 18 Apr 2021 01:04:21 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: fs/f2fs/gc.c:29:12: warning: stack frame size of 2080 bytes in
 function 'gc_thread_func'
Message-ID: <202104180117.rpZJzPDG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9cdbf6467424045617cd6e79dcaad06bb8efa31c
commit: cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68 ubsan: move cc-option tests into Kconfig
date:   4 months ago
config: powerpc-randconfig-r011-20210417 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f549176ad976caa3e19edd036df9a7e12770af7c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:55:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
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
   <scratch space>:57:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
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
   <scratch space>:59:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
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
   <scratch space>:61:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
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
   <scratch space>:63:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/f2fs/gc.c:29:12: warning: stack frame size of 2080 bytes in function 'gc_thread_func' [-Wframe-larger-than=]
   static int gc_thread_func(void *data)
              ^
   fs/f2fs/gc.c:1358:12: warning: stack frame size of 2240 bytes in function 'gc_data_segment' [-Wframe-larger-than=]
   static int gc_data_segment(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
              ^
   fs/f2fs/gc.c:622:12: warning: stack frame size of 3680 bytes in function 'get_victim_by_default' [-Wframe-larger-than=]
   static int get_victim_by_default(struct f2fs_sb_info *sbi,
              ^
   15 warnings generated.


vim +/gc_thread_func +29 fs/f2fs/gc.c

093749e296e29a Chao Yu          2020-08-04   25  
da52f8ade40b03 Jack Qiu         2020-06-18   26  static unsigned int count_bits(const unsigned long *addr,
da52f8ade40b03 Jack Qiu         2020-06-18   27  				unsigned int offset, unsigned int len);
da52f8ade40b03 Jack Qiu         2020-06-18   28  
7bc0900347e069 Jaegeuk Kim      2012-11-02  @29  static int gc_thread_func(void *data)
7bc0900347e069 Jaegeuk Kim      2012-11-02   30  {
7bc0900347e069 Jaegeuk Kim      2012-11-02   31  	struct f2fs_sb_info *sbi = data;
b59d0bae6ca30c Namjae Jeon      2013-08-04   32  	struct f2fs_gc_kthread *gc_th = sbi->gc_thread;
7bc0900347e069 Jaegeuk Kim      2012-11-02   33  	wait_queue_head_t *wq = &sbi->gc_thread->gc_wait_queue_head;
b8c502b81e3f89 Chao Yu          2017-08-07   34  	unsigned int wait_ms;
7bc0900347e069 Jaegeuk Kim      2012-11-02   35  
b59d0bae6ca30c Namjae Jeon      2013-08-04   36  	wait_ms = gc_th->min_sleep_time;
7bc0900347e069 Jaegeuk Kim      2012-11-02   37  
1d7be2708277ed Jaegeuk Kim      2017-05-17   38  	set_freezable();
7bc0900347e069 Jaegeuk Kim      2012-11-02   39  	do {
bbbc34fd666254 Chao Yu          2020-02-14   40  		bool sync_mode;
bbbc34fd666254 Chao Yu          2020-02-14   41  
7bc0900347e069 Jaegeuk Kim      2012-11-02   42  		wait_event_interruptible_timeout(*wq,
d9872a698c393e Jaegeuk Kim      2017-08-06   43  				kthread_should_stop() || freezing(current) ||
d9872a698c393e Jaegeuk Kim      2017-08-06   44  				gc_th->gc_wake,
7bc0900347e069 Jaegeuk Kim      2012-11-02   45  				msecs_to_jiffies(wait_ms));
1d7be2708277ed Jaegeuk Kim      2017-05-17   46  
d9872a698c393e Jaegeuk Kim      2017-08-06   47  		/* give it a try one time */
d9872a698c393e Jaegeuk Kim      2017-08-06   48  		if (gc_th->gc_wake)
d9872a698c393e Jaegeuk Kim      2017-08-06   49  			gc_th->gc_wake = 0;
d9872a698c393e Jaegeuk Kim      2017-08-06   50  
274bd9ba394256 Chao Yu          2018-09-29   51  		if (try_to_freeze()) {
274bd9ba394256 Chao Yu          2018-09-29   52  			stat_other_skip_bggc_count(sbi);
1d7be2708277ed Jaegeuk Kim      2017-05-17   53  			continue;
274bd9ba394256 Chao Yu          2018-09-29   54  		}
7bc0900347e069 Jaegeuk Kim      2012-11-02   55  		if (kthread_should_stop())
7bc0900347e069 Jaegeuk Kim      2012-11-02   56  			break;
7bc0900347e069 Jaegeuk Kim      2012-11-02   57  
d6212a5f18c8f9 Changman Lee     2013-01-29   58  		if (sbi->sb->s_writers.frozen >= SB_FREEZE_WRITE) {
88dd8934194f6d Chao Yu          2015-01-26   59  			increase_sleep_time(gc_th, &wait_ms);
274bd9ba394256 Chao Yu          2018-09-29   60  			stat_other_skip_bggc_count(sbi);
d6212a5f18c8f9 Changman Lee     2013-01-29   61  			continue;
d6212a5f18c8f9 Changman Lee     2013-01-29   62  		}
d6212a5f18c8f9 Changman Lee     2013-01-29   63  
55523519bc7227 Chao Yu          2017-02-25   64  		if (time_to_inject(sbi, FAULT_CHECKPOINT)) {
c45d6002ff7a32 Chao Yu          2019-11-01   65  			f2fs_show_injection_info(sbi, FAULT_CHECKPOINT);
0f34802858e74e Chao Yu          2016-09-26   66  			f2fs_stop_checkpoint(sbi, false);
55523519bc7227 Chao Yu          2017-02-25   67  		}
0f34802858e74e Chao Yu          2016-09-26   68  
274bd9ba394256 Chao Yu          2018-09-29   69  		if (!sb_start_write_trylock(sbi->sb)) {
274bd9ba394256 Chao Yu          2018-09-29   70  			stat_other_skip_bggc_count(sbi);
dc6febb6bcec7f Chao Yu          2017-07-22   71  			continue;
274bd9ba394256 Chao Yu          2018-09-29   72  		}
dc6febb6bcec7f Chao Yu          2017-07-22   73  
7bc0900347e069 Jaegeuk Kim      2012-11-02   74  		/*
7bc0900347e069 Jaegeuk Kim      2012-11-02   75  		 * [GC triggering condition]
7bc0900347e069 Jaegeuk Kim      2012-11-02   76  		 * 0. GC is not conducted currently.
7bc0900347e069 Jaegeuk Kim      2012-11-02   77  		 * 1. There are enough dirty segments.
7bc0900347e069 Jaegeuk Kim      2012-11-02   78  		 * 2. IO subsystem is idle by checking the # of writeback pages.
7bc0900347e069 Jaegeuk Kim      2012-11-02   79  		 * 3. IO subsystem is idle by checking the # of requests in
7bc0900347e069 Jaegeuk Kim      2012-11-02   80  		 *    bdev's request list.
7bc0900347e069 Jaegeuk Kim      2012-11-02   81  		 *
e1c42045203071 arter97          2014-08-06   82  		 * Note) We have to avoid triggering GCs frequently.
7bc0900347e069 Jaegeuk Kim      2012-11-02   83  		 * Because it is possible that some segments can be
7bc0900347e069 Jaegeuk Kim      2012-11-02   84  		 * invalidated soon after by user update or deletion.
7bc0900347e069 Jaegeuk Kim      2012-11-02   85  		 * So, I'd like to wait some time to collect dirty segments.
7bc0900347e069 Jaegeuk Kim      2012-11-02   86  		 */
0e5e81114de1c4 Daeho Jeong      2020-07-02   87  		if (sbi->gc_mode == GC_URGENT_HIGH) {
d9872a698c393e Jaegeuk Kim      2017-08-06   88  			wait_ms = gc_th->urgent_sleep_time;
fb24fea75ca5ce Chao Yu          2020-01-14   89  			down_write(&sbi->gc_lock);
d9872a698c393e Jaegeuk Kim      2017-08-06   90  			goto do_gc;
d9872a698c393e Jaegeuk Kim      2017-08-06   91  		}
d9872a698c393e Jaegeuk Kim      2017-08-06   92  
fb24fea75ca5ce Chao Yu          2020-01-14   93  		if (!down_write_trylock(&sbi->gc_lock)) {
274bd9ba394256 Chao Yu          2018-09-29   94  			stat_other_skip_bggc_count(sbi);
69babac019337b Jaegeuk Kim      2018-02-26   95  			goto next;
274bd9ba394256 Chao Yu          2018-09-29   96  		}
69babac019337b Jaegeuk Kim      2018-02-26   97  
a7d10cf3e4e3e3 Sahitya Tummala  2018-09-19   98  		if (!is_idle(sbi, GC_TIME)) {
88dd8934194f6d Chao Yu          2015-01-26   99  			increase_sleep_time(gc_th, &wait_ms);
fb24fea75ca5ce Chao Yu          2020-01-14  100  			up_write(&sbi->gc_lock);
274bd9ba394256 Chao Yu          2018-09-29  101  			stat_io_skip_bggc_count(sbi);
dc6febb6bcec7f Chao Yu          2017-07-22  102  			goto next;
7bc0900347e069 Jaegeuk Kim      2012-11-02  103  		}
7bc0900347e069 Jaegeuk Kim      2012-11-02  104  
7bc0900347e069 Jaegeuk Kim      2012-11-02  105  		if (has_enough_invalid_blocks(sbi))
88dd8934194f6d Chao Yu          2015-01-26  106  			decrease_sleep_time(gc_th, &wait_ms);
7bc0900347e069 Jaegeuk Kim      2012-11-02  107  		else
88dd8934194f6d Chao Yu          2015-01-26  108  			increase_sleep_time(gc_th, &wait_ms);
d9872a698c393e Jaegeuk Kim      2017-08-06  109  do_gc:
fc7100ea2a52fc Hridya Valsaraju 2020-01-22  110  		stat_inc_bggc_count(sbi->stat_info);
7bc0900347e069 Jaegeuk Kim      2012-11-02  111  
bbbc34fd666254 Chao Yu          2020-02-14  112  		sync_mode = F2FS_OPTION(sbi).bggc_mode == BGGC_MODE_SYNC;
bbbc34fd666254 Chao Yu          2020-02-14  113  
437275272f9e63 Jaegeuk Kim      2013-02-04  114  		/* if return value is not zero, no victim was selected */
bbbc34fd666254 Chao Yu          2020-02-14  115  		if (f2fs_gc(sbi, sync_mode, true, NULL_SEGNO))
b59d0bae6ca30c Namjae Jeon      2013-08-04  116  			wait_ms = gc_th->no_gc_sleep_time;
81eb8d6e2869b1 Jaegeuk Kim      2013-10-24  117  
84e4214f0868ae Jaegeuk Kim      2015-10-13  118  		trace_f2fs_background_gc(sbi->sb, wait_ms,
84e4214f0868ae Jaegeuk Kim      2015-10-13  119  				prefree_segments(sbi), free_segments(sbi));
84e4214f0868ae Jaegeuk Kim      2015-10-13  120  
4660f9c0fe4843 Jaegeuk Kim      2013-10-24  121  		/* balancing f2fs's metadata periodically */
7bcd0cfa735d72 Chao Yu          2020-03-19  122  		f2fs_balance_fs_bg(sbi, true);
dc6febb6bcec7f Chao Yu          2017-07-22  123  next:
dc6febb6bcec7f Chao Yu          2017-07-22  124  		sb_end_write(sbi->sb);
81eb8d6e2869b1 Jaegeuk Kim      2013-10-24  125  
7bc0900347e069 Jaegeuk Kim      2012-11-02  126  	} while (!kthread_should_stop());
7bc0900347e069 Jaegeuk Kim      2012-11-02  127  	return 0;
7bc0900347e069 Jaegeuk Kim      2012-11-02  128  }
7bc0900347e069 Jaegeuk Kim      2012-11-02  129  

:::::: The code at line 29 was first introduced by commit
:::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collection functions

:::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
:::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104180117.rpZJzPDG-lkp%40intel.com.

--mP3DRpeJDSE+ciuQ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
OHwWWm/coFWdZwaRreym8D9hLaVQX6ABAA==

--mP3DRpeJDSE+ciuQ--
