Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSGM4H7QKGQETHC7Y4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6942EF3A2
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 15:03:54 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 26sf7562086pgl.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 06:03:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610114633; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdfNu/3BX+mpxQsRpa5VsFkEtXellJWhD9RHzHpVrjm9O6MBpcXKE2A0fAIae9GzYg
         cJ8ip1nmRqwVJ3lukLrOERGDGMFrPCv2kN8WOXM2nBzMZ3hI5IxScp+zXacmBGwhTUrK
         R9cZ6dw8jXZ15dYXzAzRPvNuaoXBi8cOBDnPFZb2yUe7asJzt/6VldA8Jky69gT6gd2J
         UX+3Xu6mblbcDRS/hAf9JJY57/AZEQWDNGQOy6Vz9aeXVWGQHaBJVs8zikbdlsgZTYol
         J0pwvm+p/c95drEPd+SNm3WmwOq7UnbvJEgj1uzhcqnho9LT8Bdq7+fpojPZy03t/2fF
         p8ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=THiCnJGYM7DGNG5kMaqL3Xd0YQk6vCvgmBgl1YHwl6E=;
        b=m8ETBMlkR1NpZSNjI0rGLESzWvaorRPRz/hCfBybBJn7FD6tKqyorIKhLEvtVqxx+7
         YRDYhhTha8gWj5BsBSoPve0PX5HCyQKdbs/vM2RM0piavJ5rHLga8Rg79lqVEL9oOyiU
         5szHXJdXnusKZiTMtrThtANnv0+RbDpGwAeUo0Dr8IlxpRz4U8EHoiHao8awUp/dh86g
         FJYqWW9xuESbWhVP6+XcsprgNcQ7FgHSJvr4C8lcLsXyEnuSGNrnonk0Bd89CK3VLyDk
         wWUqaINeKAtLJpN7Mj0A3CPgpDyRq9UAKPAIf/JwHMD38uSEwUuwsNrCpJXRzpyPaxDe
         ydYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=THiCnJGYM7DGNG5kMaqL3Xd0YQk6vCvgmBgl1YHwl6E=;
        b=NEHPp2Ge8GC0rLK40TDV/XW1mdBHiSoL+UJMWBxHbUNoGv+WnColC2RpWHTOuFLp3z
         cmC6Y9ALCW5DyaTobi/kegFzYhg98WDn2Nd+3s4DFA4oiRc7UqdVExid2h/lEe2Tw7fw
         K3p2o5gwdbk2ZwxvEHiJdPwyI59NjwMcxZGs/4pkmmUxaC6n+J179xbvC8sbhbNLEPye
         j+98JeXX2n12CYsmjXLJFb0boa9RTHSweKToeA7aChWSPUtH5XIj2ftXC42jHs+G6UKr
         41CgZRi8BGpXQm8ASts/Mg4DcYDHTAQCZX/Rh17iv7MRvSgNYnl/shv+g9fExq8c7TxF
         56eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=THiCnJGYM7DGNG5kMaqL3Xd0YQk6vCvgmBgl1YHwl6E=;
        b=M/KkwtQaM8nV5yBgwAlkI+zE7BHF+RhO/KmPZZ2T1y8AQ1tcYFN7qA2aZcyv5yjr6H
         H8qABzr5FstKI+9z4O7cdOBauIg7zsHXk+us8LMRZ3EPbB6Rly7i3pv65nOB2E3uQtUV
         avvmfDUvg6GJ8v4dnRgYCqmXS9CrnytMOZVw3oUpQmv2UAYCoJ91zSHkjL+fW29xGe0C
         m8bA9ipboeAbsxLCnd4bmrFvdn5BRW73ZNSApSmCgyHDU7ltPWXAD4A3qErXyM0w49RJ
         pdkhnEUoR6GALyAj/xhl4bbNr10w2uhyf2OqXRcySMi678UQpniyfGxH8w7VyYzY34dx
         UTRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ik6fHzFTZ2ZwggVu/OT3iMPJPgKgxokual8lxQtrgrf9rkR8H
	2Kp/oRFnGbcPFDp0bJ+HJMQ=
X-Google-Smtp-Source: ABdhPJwvU7uPCO5Vcc2SELn/NSBtwqPnBRe07xMRp1u3niFAxBrisJCQ8RFAYvOmv1K93QBTTHsefg==
X-Received: by 2002:a65:458e:: with SMTP id o14mr7207752pgq.444.1610114632841;
        Fri, 08 Jan 2021 06:03:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls3170882pjv.2.gmail; Fri, 08
 Jan 2021 06:03:52 -0800 (PST)
X-Received: by 2002:a17:90b:b0f:: with SMTP id bf15mr3843342pjb.202.1610114631956;
        Fri, 08 Jan 2021 06:03:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610114631; cv=none;
        d=google.com; s=arc-20160816;
        b=ch02yQZOzs7UDIbblEwPKnY9Q5F9HaNi3FF4wvAmHlf7extb11vumziIpPrAoXcoCU
         GsJeHsq+DVZnmbJ7hKA4Eu6xlyJB+dd3PVDPYOzOlxvt9Vg7Es7/ypSluOFrioP1FlVI
         Ea8IylTfedV9UAG+mvfSw7MAvc9D8QRPYwQzf+He4cio/tuyz1ReSbwfX0qmGVaspPTX
         WXwcvdP5CMRkoWAWDeav0cAJvNiEy+qODe7rD5tzDupWj4VajokSM1yu9r/alqKKa9Nq
         +D6Cqugry0VnNdL2njPx7O5n1uN+QB7fpj3rvZmptl1bvyQMG2Ti7MlKsdNMrB4PJq36
         Dd5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=eNK8BD30a+e6INHqWqm0N0FrRudb0mewbEbvvpUlBIU=;
        b=RzSAgxeSQNUJO+97KIY9v4+qqt1VtqKdjynKK8qJPhWArh9lm6SwNHXNhnJseW+H/a
         xWYXQPDVxA7enIv43Bxp9k2UdM6HQJO6Akph/QqqS7o5hiJuKcx4vCpvPgnmHoE9CZN1
         iCmGXpxcesDRNQvdXoRpCtdWVyujk2GfD0HvUlnBfva2tPjyn6aE3CXrZa95lUGBk66X
         J8MMGTVcZRLz7f+3p8z0sGPKOotNurNkYp6+uVXsB1uk/FtSWCACMWBCuoLU2pE2zHwn
         DZD7sius9i0rku7gdRQOqod6dJrUDwEAMhnVqunA/NJYOTxDjQZ9vnC6lN20rQqpPI5s
         RXAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id mt17si962207pjb.0.2021.01.08.06.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 06:03:51 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: hobCzVW+HdEnhjd8yti4NDxIM2BWd3mnyi43S4f4Ct9EzO56kVRcaV2ZsB4/FOB6EOruf3Wvla
 ih55Ety8/Lzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="175019632"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; 
   d="gz'50?scan'50,208,50";a="175019632"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2021 06:03:51 -0800
IronPort-SDR: o1gtG0gcaK8U9oSD5yc/gI3bCVfnNfQKzazGeaEGEsnPr31sBMeBrS0380oa86krafue1DXiDj
 QxFzAIm2C5Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; 
   d="gz'50?scan'50,208,50";a="568099498"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 08 Jan 2021 06:03:49 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kxsMn-0000Iq-4r; Fri, 08 Jan 2021 14:03:49 +0000
Date: Fri, 8 Jan 2021 22:03:26 +0800
From: kernel test robot <lkp@intel.com>
To: Gao Xiang <hsiangkao@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Xiang Gao <xiang@kernel.org>
Subject: [xiang-linux:xfs/shrink2 5/5] fs/xfs/libxfs/xfs_alloc.c:471:1:
 warning: unused label 'out'
Message-ID: <202101082217.PAVGRZq0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git xfs/shrink2
head:   783679598b667b3b069ca04aa93ffb537c124b50
commit: 783679598b667b3b069ca04aa93ffb537c124b50 [5/5] xfs: shrink a whole empty AG
config: s390-randconfig-r025-20210108 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git/commit/?id=783679598b667b3b069ca04aa93ffb537c124b50
        git remote add xiang-linux https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git
        git fetch --no-tags xiang-linux xfs/shrink2
        git checkout 783679598b667b3b069ca04aa93ffb537c124b50
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
>> fs/xfs/libxfs/xfs_alloc.c:471:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   fs/xfs/libxfs/xfs_alloc.c:430:16: warning: unused variable 'nflen' [-Wunused-variable]
           xfs_extlen_t            nflen;
                                   ^
   fs/xfs/libxfs/xfs_alloc.c:431:15: warning: unused variable 'i' [-Wunused-variable]
           int                     error, i;
                                          ^
   fs/xfs/libxfs/xfs_alloc.c:429:17: warning: unused variable 'nfbno' [-Wunused-variable]
           xfs_agblock_t           nfbno;
                                   ^
   24 warnings generated.
--
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from fs/xfs/libxfs/xfs_alloc.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
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
   fs/xfs/libxfs/xfs_alloc.c:430:16: warning: unused variable 'nflen' [-Wunused-variable]
           xfs_extlen_t            nflen;
                                   ^
>> fs/xfs/libxfs/xfs_alloc.c:471:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   fs/xfs/libxfs/xfs_alloc.c:431:15: warning: unused variable 'i' [-Wunused-variable]
           int                     error, i;
                                          ^
   fs/xfs/libxfs/xfs_alloc.c:429:17: warning: unused variable 'nfbno' [-Wunused-variable]
           xfs_agblock_t           nfbno;
                                   ^
   24 warnings generated.


vim +/out +471 fs/xfs/libxfs/xfs_alloc.c

^1da177e4c3f415 fs/xfs/xfs_alloc.c        Linus Torvalds 2005-04-16  419  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  420  int
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  421  xfs_ag_is_empty(
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  422  	struct xfs_trans	*tp,
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  423  	struct xfs_buf		*agfbp)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  424  {
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  425  	struct xfs_mount	*mp = agfbp->b_mount;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  426  	struct xfs_perag	*pag = agfbp->b_pag;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  427  	struct xfs_agf		*agf = agfbp->b_addr;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  428  	struct xfs_btree_cur	*cnt_cur;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  429  	xfs_agblock_t		nfbno;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04 @430  	xfs_extlen_t		nflen;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  431  	int			error, i;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  432  
783679598b667b3 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-05  433  #if 0
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  434  	/* need to drain all AGFL blocks in advance */
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  435  	if (pag->pagf_flcount)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  436  		return -ENOTEMPTY;
783679598b667b3 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-05  437  #endif
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  438  
783679598b667b3 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-05  439  	if (pag->pagf_freeblks + pag->pagf_flcount != be32_to_cpu(agf->agf_length) - mp->m_ag_prealloc_blocks)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  440  		return -ENOTEMPTY;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  441  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  442  	if (be32_to_cpu(agf->agf_levels[XFS_BTNUM_BNO]) > 1 ||
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  443  	    be32_to_cpu(agf->agf_levels[XFS_BTNUM_CNT]) > 1)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  444  		return -ENOTEMPTY;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  445  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  446  	cnt_cur = xfs_allocbt_init_cursor(mp, tp, agfbp,
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  447  					  pag->pag_agno, XFS_BTNUM_CNT);
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  448  	ASSERT(cnt_cur->bc_nlevels == 1);
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  449  
783679598b667b3 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-05  450  #if 0
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  451  	error = xfs_alloc_lookup_ge(cnt_cur, 0, be32_to_cpu(agf->agf_longest), &i);
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  452  	if (error || !i)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  453  		goto out;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  454  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  455  	error = xfs_alloc_get_rec(cnt_cur, &nfbno, &nflen, &i);
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  456  	if (error)
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  457  		goto out;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  458  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  459  	if (XFS_IS_CORRUPT(mp, i != 1)) {
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  460  		error = -EFSCORRUPTED;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  461  		goto out;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  462  	}
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  463  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  464  	error = -ENOTEMPTY;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  465  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  466  	if (nfbno == mp->m_ag_prealloc_blocks &&
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  467  	    nflen == pag->pagf_freeblks)
783679598b667b3 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-05  468  #endif
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  469  		error = 0;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  470  
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04 @471  out:
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  472  	xfs_btree_del_cursor(cnt_cur, XFS_BTREE_NOERROR);
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  473  	return error;
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  474  }
88a60c6c5c46ca5 fs/xfs/libxfs/xfs_alloc.c Gao Xiang      2021-01-04  475  

:::::: The code at line 471 was first introduced by commit
:::::: 88a60c6c5c46ca5258c13ae24e1466c44695b4a5 xfs: check ag is empty

:::::: TO: Gao Xiang <hsiangkao@redhat.com>
:::::: CC: Gao Xiang <hsiangkao@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101082217.PAVGRZq0-lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5vNYLRcllDrimb99--
