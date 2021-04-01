Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGGVSSBQMGQELR4UFUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FCF350C3B
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 04:06:17 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id im11sf2448793qvb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 19:06:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617242776; cv=pass;
        d=google.com; s=arc-20160816;
        b=U51+Armhic+nW0ajOYFR+pORubrAXXUlfN0i4N5pEuP+sEoQRnmZoXN/UM7wHgu80p
         Xk0dfMJ9NSFpTiBF7CvX+6DSEZO9GR8JpBOm49ho1j3krGgs1bx+ac+L1p6+crLQRcSO
         9Pqhmx43v3mKLwoTtnaoQJ5UCu2YGBfnM3W455NSgGZT4w+PZmCtXHqaigQwuqRAM1MT
         +DtmezRnygu0kIvyheSMzUScYZn6KlajuknUOvBrLx8jfXmwoP4afS+xavPNrwxdiott
         Tk69RWvFtfP8uUPfNi+bIDDOiNbBvpR86LRvwDXtKuprkDAoNoqb3Cu+sJMTG+PTLUAV
         d5eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+0slqzOQJZ0dB9XFDNYhDLE9uBpcvaw9vy2M7iVdIdg=;
        b=pidjup7A8qeUaHsXLSpya9+Guf/UNnJutW5Qt093MvMKGZHQPLqWJfv5iqH17actMA
         SRXUwW+0UCseQeBK7v15gTzXJu9LUl78QzerzZ14zlta86ZJV6E14clqIx1f15wnc5HQ
         GJYasOzur9PDLiWtD2H+sEZl6QhFcontP0GI05E7aSx3TBTA/Yb9+JK8RaCZwl6gpUOm
         uKgOeNdUCn98EYkN1+bnzLM+7h3mplsLpGy59adCBOGUdjCn3DouAOP2Vr9XZidHz/KP
         Nqgk1NvYRa7kM4sgWUcXmaKAssKOkxxaLnqdduUetIvtsOPPl7FkOX/kI/ZtMpgqq2Gy
         UK1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+0slqzOQJZ0dB9XFDNYhDLE9uBpcvaw9vy2M7iVdIdg=;
        b=Xz9KVu/qCCkGFVDIJgZS2OiP5OF1WT7A59jAe/uT0chlyydoewjnB9h2Ud2AIXwAiN
         QTdoqhlD4yyAZYQ+G2+FhpLuGOoVsyjA/wj+5WQNFlxBy/OIYG4R6Um5ZtvQJxkRVnBM
         2S53/9HB4GAebgzAH33q6NRizAQmjfVOx2IyuDOH6yrrpgDrA5BM4bWS8/tcwFwCbfZX
         JhOAdYk09JAl3GqcpTCHqWmtkE8tf35GQkWa0poFXml12iEKRnqzHzni9vjSDYcwpuQF
         VONm9kuuXG91YWUrKH1wNZxRQrnB/Y7sKZWgWITM+t9MSvD3oJIyKeGifDiNwHEu9x/H
         C4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+0slqzOQJZ0dB9XFDNYhDLE9uBpcvaw9vy2M7iVdIdg=;
        b=iT6tpJvDwz27y73ITgvjvgDkf691y+7QfKJYSbtqyfnSQTXpo1CPdWe5xVek7xOXxd
         kKP3i+VL6gIzi4c9y2Wwj95oiv0Z/gWoGgQbmo+Fnsc2qVQ8drW88Odu2wfWnGbX0M1a
         P4qPT6iSFH31+VqaFCIwQQ59ECBZtPPYnTtZdB2NTDNlEc3gR8NeLXz5XN40U7soshpH
         yOzx9XNQiF+EaMZcrhlAfFm8lZgCgE0XK4qJFQVfaEC6beNTCgfRbjlgP6xWTK8WsSDC
         yL+VbOKownOXgxd3uewsBnBl3hF5yEjH2QiBsRbXQDIUz1HK5QDxA8UYWuaSWBNyLYYK
         hPuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gkEkJU/aCcj8lxmt3bOLfzH/nmTGLTSLVLmxl0V83miI/iL3l
	PHoVNwJ471mpYDYVedBIRNM=
X-Google-Smtp-Source: ABdhPJw1Vzd2+ywDOF3KhmMnr2X9jv00Wj09SF7G1z7MPkFKaNapmEKuw2f+Z/JtrfQpRY8DTeCeRA==
X-Received: by 2002:a05:620a:1442:: with SMTP id i2mr6336885qkl.469.1617242776304;
        Wed, 31 Mar 2021 19:06:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls2432054qkm.5.gmail; Wed, 31
 Mar 2021 19:06:15 -0700 (PDT)
X-Received: by 2002:a37:9b07:: with SMTP id d7mr6092375qke.130.1617242775723;
        Wed, 31 Mar 2021 19:06:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617242775; cv=none;
        d=google.com; s=arc-20160816;
        b=YCr5kySLK7pObwD0nM85BUW1UzwuF66IjfWQfjp8gQPMEcU3PVKriJFmh4xtBIrmWA
         fP5hYJc/ViqlG/k3oZn0YurqSUOw+ecWY5iFw7CKeS+Gmt6ijELnR0y+1uEEUA48YI3c
         ZFmxoE9BEsR+JeHRMLylwMMOlYhRLyOxRChdXzeuHDuywdx/DoC4OPjuTPPkRkVcT5mV
         VW1t4KH5MkUCg9Pfb7QZMHiGFNaYZfG8FHTyPomjDYivNh64edT6Jj4eEqK2hyPWx3ZP
         sOo6UzDSnQSfpXE/r3zh+gZbM7MV8INGY7hkMhteTgsHlvuu2RdsWi0yKxZDbUs666iz
         pX1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=T3YpFHJkGmv9w2hDbQRGg90uhaAA+TIcuJNiZ7ohBII=;
        b=zpGNs7qepsevpCT/3dwES2rZ8fRInx16Kei9DMbW+UqRtp5tNsHrqnSlWewZANELg+
         91GrC1TZVGWTo9goupNIDxEEtOqJw/WHkhfp5tHwuNyiVtO4N3HezBCGHHRkKuneFT+A
         8VN0x3sjkvlfwjqMyYQrpUpumT8WW1lr2Ky/yCzGd6Zw4YzVN6U/SKWmD3D4JrGKdtBH
         /p8VFF9fBGApfsMNh5GOttyB90vW/5lZCeWnPi6qknnXl3kxPxVoKKFIxbdB3uzln3Nf
         hp22HgC5JfJ8s3gB4SQtJm4rTVoTZDJim0tutlPaGOA4jm/CEcu9tOlUdGmMA2zdOwfk
         AVNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id r24si445892qtp.1.2021.03.31.19.06.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 19:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: PKke+Tuxtu5d1NAT5V2JpSoCiDvLsdEdpW5GMHE/X5R1rSoF2BJngu/J5S91UmctOq5MAEybz2
 fDNJ+L6BRNMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192155974"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; 
   d="gz'50?scan'50,208,50";a="192155974"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2021 19:06:13 -0700
IronPort-SDR: Ro6ZOpRfpZ3/IvMbN4RYVVFPow9TAI3X8/lDWi5BpNeuRHYM6NDZMtt9i9mINRIvf7iyXzdVC0
 Nwv5UY48/0GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; 
   d="gz'50?scan'50,208,50";a="412451676"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 31 Mar 2021 19:06:12 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lRmip-0006Ez-HS; Thu, 01 Apr 2021 02:06:11 +0000
Date: Thu, 1 Apr 2021 10:05:54 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/core-sched 29/29]
 kernel/sched/core_sched.c:309:22: error: use of undeclared identifier
 'FAT_COOKIE'
Message-ID: <202104011049.diZ7wcR2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core-sched
head:   e30de7e3ea1fa2282b1eac0dd93479d4ddb91fea
commit: e30de7e3ea1fa2282b1eac0dd93479d4ddb91fea [29/29] sched: prctl() and cgroup interaction
config: s390-randconfig-r015-20210330 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3a6365a439ede4b7c65076bb42b1b7dbf72216b5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=e30de7e3ea1fa2282b1eac0dd93479d4ddb91fea
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/core-sched
        git checkout e30de7e3ea1fa2282b1eac0dd93479d4ddb91fea
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core_sched.c:6:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/sched/core_sched.c:6:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/sched/core_sched.c:6:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> kernel/sched/core_sched.c:309:22: error: use of undeclared identifier 'FAT_COOKIE'
           if ((cookie & 3) == FAT_COOKIE) {
                               ^
>> kernel/sched/core_sched.c:311:15: error: incomplete definition of type 'struct sched_core_fat_cookie'
                   cookie = fat->task_cookie;
                            ~~~^
   kernel/sched/core_sched.c:310:10: note: forward declaration of 'struct sched_core_fat_cookie'
                   struct sched_core_fat_cookie *fat = cookie_2_ptr(cookie);
                          ^
   12 warnings and 2 errors generated.


vim +/FAT_COOKIE +309 kernel/sched/core_sched.c

   302	
   303	static unsigned long sched_core_clone_cookie(struct task_struct *p)
   304	{
   305		unsigned long cookie, flags;
   306	
   307		raw_spin_lock_irqsave(&p->pi_lock, flags);
   308		cookie = p->core_cookie;
 > 309		if ((cookie & 3) == FAT_COOKIE) {
   310			struct sched_core_fat_cookie *fat = cookie_2_ptr(cookie);
 > 311			cookie = fat->task_cookie;
   312		}
   313		cookie = sched_core_get_cookie(p->core_cookie);
   314		raw_spin_unlock_irqrestore(&p->pi_lock, flags);
   315	
   316		return cookie;
   317	}
   318	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104011049.diZ7wcR2-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
