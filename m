Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUH62ODQMGQEBSV46FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A172C3CCD1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 06:28:02 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id a6-20020a63e4060000b02902272a0052cdsf11670051pgi.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 21:28:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626668881; cv=pass;
        d=google.com; s=arc-20160816;
        b=KDaGv/KHcYGcBmt/83YnOM3hvWUzfscy6JAr3h+HOsSr7vI6O5zuNtmC/mXYhzCgIl
         nz9IfgaN87OZTFQ0rhmXn8E0KM/G5vEknaldeBFA9uZwfYfMUR01P7oXTrgJBq4G+asj
         +BHxbCbL6njGSTcWAYvVS/SQQZNNwQXvCNwyf/lCcKgmjuU7Mz+u5eRZXw65cVQPwn+O
         KZkiwGgyon6LvczisbpDTPI03EP4kipAM2Nghzepp26Gf//ntXu6ldxOB6FhvxK/dz9a
         eQazgFtigVJRV8TbT8jAVx01v0KiFySiF6kz1iVLNeHOIVLvGS/N3S5hB5A0JWZTraHQ
         gf4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QcpHV5urSEftCZqNrEZ73L1Xf8VhHp2usOpX+w4jMiE=;
        b=t8/x/BqbOvA36OwoLCNFiKMUkEL5tmkI23j4EWs3CMBqITO4inlmF6ZpOxWgHRLg3I
         NPHqhKB35osX1kIxAeY97oLlc5M+XvJBkF+atm1TpxMHCSziHmsRgmb7Hj74nkyQUXwL
         6+aNB9Z3XQHiQKaVHhXuvUIQ0bNSAq2DHdEQfP/r5og/G+0LoFQkU4lR3/tpSI/M/r7b
         ZbSWdlT2mNl2ie3SRBWe/faucMA6rpzl5JsN+evyyrY3nefj1QxHglHkXXmF4tEm/fUq
         gK1LUDHYAbNUYjZeaTYd3L3Mnx8fiyOKxlq3NtF+D12cZzpCZfVZWVou2lWubyAxl0SG
         w9HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QcpHV5urSEftCZqNrEZ73L1Xf8VhHp2usOpX+w4jMiE=;
        b=gjImu+PSDIBAN1SDZtd8FKGqyQ7SAfAyaABrERirIq1jEfeRNxwsr2wJCzhM69agXR
         dG1r3TB/9c5vNkInjdGM6mwt30qGZURWyVLa301Rm7Qm3hmCmPfDVNUo60xfBDusmI8j
         oWIVg6xENZFUul9rd+Pd139fGLRkrv5J6InmWE2+4kHd04pHChjhncCvtcs2v16wx/6b
         jfShzDQZYeSuH3s5coCeGmXgEr7qXeEdslcRQSDETHoOjy2hfEQU/nYzUAN39E/wkUZk
         VhZG5qpo5bFsiB2wohFHX061o1X3w4+eEvQjQkelzYAJjI87vHLi3BCL4olYXp+wSfgu
         xSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QcpHV5urSEftCZqNrEZ73L1Xf8VhHp2usOpX+w4jMiE=;
        b=aO0mtB8S+wsGKWxIOWFzc1NHvEM1x41vx9c/+Nkc/izNFO2HNuZCcTXwPX4VkqhiHC
         jkOGmzyCeRKxV+U+aT0ZHh+2VmHydfSDpKl4zY+O5D2g+NXrr/h/+u0wjqAKH1gdetYk
         //qE1Sgpv1WYpfW5AT0OsQENmFstPDriDgvEkq71mMLwyNlq8YiAbZOuQtZKpWH0UUHz
         nhqQeGhIvckpwjxp4RtHAWobO2mM1bvBf5SgRvrnFuzSbhX62QxKnWDtWzjpOVRRd2Qh
         +WaZYbCkPh4qZeW1SNszITASzP3unHxGY3ptgGZpv9MHOqdN67J8aRZIwOaUyh+e/ssM
         rt4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NMBz9XX7DCuZcWqXC5aTzKLE6MJd8G4X6ETfP8nzJie0WFu7X
	1MDE/D07fdY0wsN6tS1hp6E=
X-Google-Smtp-Source: ABdhPJwsCmXg1G0+gDLErRSzh3d8KoyqvcuAFsFEI2/+95dRdtGfecK4dG4EVGrn3pIugDQ/gROT9g==
X-Received: by 2002:a17:90a:ad8a:: with SMTP id s10mr22763861pjq.11.1626668880804;
        Sun, 18 Jul 2021 21:28:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680e:: with SMTP id h14ls4609503plk.1.gmail; Sun, 18
 Jul 2021 21:28:00 -0700 (PDT)
X-Received: by 2002:a17:90a:ce04:: with SMTP id f4mr22928219pju.1.1626668880074;
        Sun, 18 Jul 2021 21:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626668880; cv=none;
        d=google.com; s=arc-20160816;
        b=BRz5Ct/euKyr3FhHMMDCsGCpnjQ3lQYIWg7nhy96EEOLWSbC3eDmdIVE3tfYP1ESzq
         2DmGvegnSpKRRbgrojO8h+PwdAUKGUNXED8oKDoM1LMsYUTDpY0q+HElBbnVJcQeK6oL
         Ic3JXqTFxTsXG2FuRXhoT/C7/5hs0uK/XDpY1YTWeNyEZsB8LLqLmgLCjNpHKefMEO7o
         9Hm8zzjV1IwG885DmSnBoInks+gUYkouQsrxICHL/ETa4mx9Kh0YT1LwDfTA1F5Yl+27
         CPfWGkkRjoJfZaovQ5KafzC9znslar1jKnAAUpHytHX/6qpdD+BfrBu4Qx/HOHcQYFtl
         qvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=nym1gXfk7vsek+7TaHGBVoGZYw4Si8bm+oeHuzbIw9A=;
        b=Qnfssx9ZzEBg+p4N9FUPR9s6bO+fuo+8xoS8bsWbhfeKMvgICFlksVohNA1etaH4In
         jAJGHk6Wjt2uvGWuzLU9TLFNaOUtRj/pUQPCS82CFUwBsJr5oj1jWXGPNctSTWoDeCR0
         ZDhuw6hbdsuJ6UwEM18jgRSfq5YSZXcWUDXVFrHsfhxwVsS1rjguB0uDE+7V53uHqsUt
         bNv9MePVAbe//gaMQSROxB4yKPAZEQfjN8RVEJ3CiPY7s0sCsyGy0EHHskTYtxV2PxaF
         /13dsAZBGLsLlPQ4HYvjyoBSaovuVtSOtqDAlnIavS1ia+p4kQApQ2n4t9oWDTOWP41z
         jP+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id h9si1497381pja.1.2021.07.18.21.27.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Jul 2021 21:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="190580521"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="gz'50?scan'50,208,50";a="190580521"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2021 21:27:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; 
   d="gz'50?scan'50,208,50";a="659634095"
Received: from lkp-server01.sh.intel.com (HELO a467b34d8c10) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 18 Jul 2021 21:27:57 -0700
Received: from kbuild by a467b34d8c10 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m5Ksm-0000Yd-Cn; Mon, 19 Jul 2021 04:27:56 +0000
Date: Mon, 19 Jul 2021 12:27:32 +0800
From: kernel test robot <lkp@intel.com>
To: Yury Norov <yury.norov@gmail.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [norov:bitmap-20210716 15/17] fs/btrfs/extent_io.c:3809:2: error:
 implicit declaration of function 'bitmap_next_set_region'
Message-ID: <202107191227.T46NdYjW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/norov/linux bitmap-20210716
head:   8ac80f856c70d69f310de6215244b6aaeb22d5b9
commit: a2d6e02d19450a49a55f08c151d1f704723bec1a [15/17] bitmap: unify find_bit operations
config: powerpc64-buildonly-randconfig-r002-20210719 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/norov/linux/commit/a2d6e02d19450a49a55f08c151d1f704723bec1a
        git remote add norov https://github.com/norov/linux
        git fetch --no-tags norov bitmap-20210716
        git checkout a2d6e02d19450a49a55f08c151d1f704723bec1a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from fs/btrfs/extent_io.c:5:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:88:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/extent_io.c:5:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:90:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/extent_io.c:5:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:92:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/extent_io.c:5:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:94:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/extent_io.c:5:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:96:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/btrfs/extent_io.c:3809:2: error: implicit declaration of function 'bitmap_next_set_region' [-Werror,-Wimplicit-function-declaration]
           bitmap_next_set_region(&dirty_bitmap, &range_start_bit, &range_end_bit,
           ^
   fs/btrfs/extent_io.c:3809:2: note: did you mean 'bitmap_release_region'?
   include/linux/bitmap.h:213:6: note: 'bitmap_release_region' declared here
   void bitmap_release_region(unsigned long *bitmap, unsigned int pos, int order);
        ^
   6 warnings and 1 error generated.


vim +/bitmap_next_set_region +3809 fs/btrfs/extent_io.c

40f765805f082ed Chris Mason 2014-05-21  3766  
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3767  /*
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3768   * Find the first byte we need to write.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3769   *
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3770   * For subpage, one page can contain several sectors, and
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3771   * __extent_writepage_io() will just grab all extent maps in the page
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3772   * range and try to submit all non-inline/non-compressed extents.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3773   *
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3774   * This is a big problem for subpage, we shouldn't re-submit already written
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3775   * data at all.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3776   * This function will lookup subpage dirty bit to find which range we really
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3777   * need to submit.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3778   *
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3779   * Return the next dirty range in [@start, @end).
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3780   * If no dirty range is found, @start will be page_offset(page) + PAGE_SIZE.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3781   */
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3782  static void find_next_dirty_byte(struct btrfs_fs_info *fs_info,
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3783  				 struct page *page, u64 *start, u64 *end)
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3784  {
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3785  	struct btrfs_subpage *subpage = (struct btrfs_subpage *)page->private;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3786  	u64 orig_start = *start;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3787  	/* Declare as unsigned long so we can use bitmap ops */
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3788  	unsigned long dirty_bitmap;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3789  	unsigned long flags;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3790  	int nbits = (orig_start - page_offset(page)) >> fs_info->sectorsize_bits;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3791  	int range_start_bit = nbits;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3792  	int range_end_bit;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3793  
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3794  	/*
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3795  	 * For regular sector size == page size case, since one page only
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3796  	 * contains one sector, we return the page offset directly.
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3797  	 */
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3798  	if (fs_info->sectorsize == PAGE_SIZE) {
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3799  		*start = page_offset(page);
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3800  		*end = page_offset(page) + PAGE_SIZE;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3801  		return;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3802  	}
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3803  
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3804  	/* We should have the page locked, but just in case */
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3805  	spin_lock_irqsave(&subpage->lock, flags);
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3806  	dirty_bitmap = subpage->dirty_bitmap;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3807  	spin_unlock_irqrestore(&subpage->lock, flags);
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3808  
c5ef5c6c733a087 Qu Wenruo   2021-05-31 @3809  	bitmap_next_set_region(&dirty_bitmap, &range_start_bit, &range_end_bit,
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3810  			       BTRFS_SUBPAGE_BITMAP_SIZE);
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3811  	*start = page_offset(page) + range_start_bit * fs_info->sectorsize;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3812  	*end = page_offset(page) + range_end_bit * fs_info->sectorsize;
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3813  }
c5ef5c6c733a087 Qu Wenruo   2021-05-31  3814  

:::::: The code at line 3809 was first introduced by commit
:::::: c5ef5c6c733a087fc3f8b298010d7e6911bff1e3 btrfs: make __extent_writepage_io() only submit dirty range for subpage

:::::: TO: Qu Wenruo <wqu@suse.com>
:::::: CC: David Sterba <dsterba@suse.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107191227.T46NdYjW-lkp%40intel.com.

--AqsLC8rIMeq19msA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
gRg+zT+lMLmI5TqlLz/WC8P/AtDnjAB8ugEA

--AqsLC8rIMeq19msA--
