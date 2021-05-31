Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2VJ2KCQMGQEJGAYQQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 128CD395679
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 09:49:00 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id s7-20020a6352470000b029021b9013c124sf6769698pgl.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 00:48:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622447338; cv=pass;
        d=google.com; s=arc-20160816;
        b=fwYOpCvtZPbldqCjaxAsjwx/Hd314mcaEkRuyWS1paBRSGAEeLIbFE3EOuzvIlZg7T
         nh+++sU+wQqtLSh0fP+EsNN9OX9tkn+AWZpGNQwwzDRWtr+IvoRvXY+MRTqBudgZBHI6
         5KDJNfhzEAJ/qs/5h1O61mB6Rr/mnMEBTVnWrsqtieu8WlwMxRTk65yFssYi4O2GjbkC
         msWlER2CXYfxoRFo+TqbMRsapO+ArbpowO3vAXLQXbQOjyD53CrHfQIHZ4l3BHtLXqi8
         OyJlEIOfIilH+sKgfvepLofEK6tyXDjEwRNe0KDe7TeAG8zulwH4Z7eyX9BF8oUCeGL0
         Nu0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0gDINxbcu+iAxh37ihkkSi1GuXQ98AN2evMkYpEH2w0=;
        b=LpFaCdn16hr0CTeGSoekv9l5n/MifgJ5aUwMgw9RrSmiTj8VcaR6EIlhnXBZvbNF23
         AEDenskf+ygoQyH0s30Boc3VZAw6cxwz8tAg/PxFoShJUCTIIlFhhy85uD9HudLNbPi1
         qq3jraREeHkXhy0A1G60hxJEt9BIaDDhri7qeMOwh04IhogREHQoLzb9o4syL0yq2Rym
         epDF36h5LeNpxDSeGWtQVlm4f/MlBEBYB8mOEkQvWXv0YRDMV1PRR5IAbicoPPmLGYrE
         X3rAtRTDBt/GLsPWF1ZzZl7R1Br3XLBsegoHYhr3bCTQiId3EOhZk5AmiWP+ZBDqgnlg
         B1Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0gDINxbcu+iAxh37ihkkSi1GuXQ98AN2evMkYpEH2w0=;
        b=syBEuaTq7vVjk51JDJdw0gHKzCoSCrhfxGmKkNyX/ASKu4YDfvtFFCQXlA9fSrfa1p
         CHCdVcArsvq6KChABinH1xKTnOumLCvNtEmOMWf8NkF+zhfQ3iGYuiUxLFE9trHXz0KK
         3FY8uiHCmejnbxqQCDx9e//vSt0zu1+xENppeMrGrbMPuVIP5LCk0a2Ye+G1BMbscHQl
         neYeFOxRyg7tzd2SdTAB50DV2p8m3LRfTA9Ko9bwIYIgES4U8o/8ZKAyG5BAIzIu608p
         derW8XeLbu8nCY8vfU1TNMvkroskl5CAdx+nq9tVfxFGTVWejhHoGFvR7MXrfIHY2l0x
         f1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0gDINxbcu+iAxh37ihkkSi1GuXQ98AN2evMkYpEH2w0=;
        b=foP+DR3yQrXkl6tt/d/j172tm+GZim+qLrbu937FNjFru7J433nornVhgeOm6n+kCF
         6sBDrpdcQhYsM8D6V+E0oC+QoaX0IapqakDIb3VK8g+kTcXYWRPW1sRCI9WHRn2aADiH
         tBk7pqvSdqyQ2VL2wpLj7TSR4yLQBbGckKTCZ5vNSgbMPNaYr6NeMEk62qR+7Ps6rKEJ
         8uKytulo+yMuINxopGUOUCGk1mXyZqgqyX1o1eKka4ZLMFI7dm+TN+D5xJ+6uwqDIkcZ
         ATlWDea7ryo9bWjZaqIj/F6BRJJO91AW93pvc+C7iT84tpRH1F5fY04Vq3oHjIIQatW8
         knIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ojzrf52lEK1AprQpAYrW7HR3Nv9iw6ciCQ0GNqnbDwvJebTAv
	DfjSX7HmepGv5aF/VFa7bOw=
X-Google-Smtp-Source: ABdhPJz/D3AISqAWklUrr32MZvCwNtOCzBToQvlKI5Zv38pFgBjJIq+iGYXkKe3dn/zYyZP+ZbV1Og==
X-Received: by 2002:a17:90a:414a:: with SMTP id m10mr14195562pjg.149.1622447338198;
        Mon, 31 May 2021 00:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3541:: with SMTP id lt1ls3406126pjb.1.gmail; Mon, 31
 May 2021 00:48:57 -0700 (PDT)
X-Received: by 2002:a17:903:31c3:b029:ed:6f74:49c7 with SMTP id v3-20020a17090331c3b02900ed6f7449c7mr19193975ple.12.1622447337410;
        Mon, 31 May 2021 00:48:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622447337; cv=none;
        d=google.com; s=arc-20160816;
        b=vbZrvC6ujfqXSGJ6SBb7IHqj+VsznwS1xo309kGh/8FvGyOlCzudKE+Yy0JhB1cJ82
         fOrLN4HAdDUsOgDk9XQe9nyN6VFMLiXYgQXHkBEPq4uvS+c9dRlHvo/UM+HsyZKUZtXT
         /havZCKJL/Lds40mFpD/ps+K18UvNd46fMC1Tc6i0ZSYOjJO+XPpH29cxUzc67Jum7B4
         N0E9tlAycGro0GLPVRtGGoIrbO71UB8W4wWkZ46aIFXIm5L5BVLHxMjqauOoTLeYHLV8
         wtOXwQg5SCY73BM1exoUitARa9CfYIqMRxUp2bohRX27IRjOoN9hrddQGeqmLXt9K7yr
         K98w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=84TR2Tq+tQDPq1LQCHfHtoKvJIlolflbkSBfuywCbc8=;
        b=UKbvIY2mMvDJoUIRUCMnm+Y2baqfludbV5wpp/Sco9Mw3xKZUNdLN610i1t5i6x3b6
         +pJFXcOWdqgddIb845GqUtBUG5BxCyq4+VmzitpA34YBFSvN8bxh1+32w6tG2wH/u3o7
         XixsaC4fErI0vUAwTWv6F0GjLPfdNWB8oU2ZrnXPAVfJIgS1QmefZZPad+NbIEely1Ov
         2MRz6GApdINkylgI4IXY+Ct59cfIH+14GxHFQ8jgSXcuKyD2T+sEsH06UDhe4X7mRMQv
         nsewt/rFIRl+7bQ46FfYqs9HWLiT5EDBcd06KKGHbfh96rvseanhOmUQZKkq5541z7Eu
         KbrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id w3si991238plz.2.2021.05.31.00.48.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 00:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: pSfrVVfmpBHkuDAeEtTfFRQ5fsKBxKCpQawmpdIWp6DQ5boYAtYwL5FTtyFGPNI//bn7vlLVVz
 R6EiS5w8DuXw==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="267195661"
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; 
   d="gz'50?scan'50,208,50";a="267195661"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2021 00:48:56 -0700
IronPort-SDR: SF8ig2A2jVt4FHuPNhzAXBdvINruecxAXqKntYyEC2bRmyQ2TVU14QDwB2UbaLh2bMGWgom11/
 2fu9MUvalJXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; 
   d="gz'50?scan'50,208,50";a="473839410"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 31 May 2021 00:48:53 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lncfN-0004jV-6z; Mon, 31 May 2021 07:48:53 +0000
Date: Mon, 31 May 2021 15:48:12 +0800
From: kernel test robot <lkp@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/spi/spi-s3c64xx.c:1461:34: warning: unused variable
 's3c64xx_spi_dt_match'
Message-ID: <202105311505.Fqv06bZZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Masahiro,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8124c8a6b35386f73523d27eacb71b5364a68c4c
commit: ea29b20a828511de3348334e529a3d046a180416 init/Kconfig: make COMPILE_TEST depend on HAS_IOMEM
date:   3 months ago
config: s390-randconfig-r014-20210531 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ea29b20a828511de3348334e529a3d046a180416
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ea29b20a828511de3348334e529a3d046a180416
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/spi/spi-s3c64xx.c:11:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/spi/spi-s3c64xx.c:11:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/spi/spi-s3c64xx.c:11:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/spi/spi-s3c64xx.c:11:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/spi/spi-s3c64xx.c:11:
   In file included from include/linux/dma-mapping.h:10:
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
>> drivers/spi/spi-s3c64xx.c:1461:34: warning: unused variable 's3c64xx_spi_dt_match' [-Wunused-const-variable]
   static const struct of_device_id s3c64xx_spi_dt_match[] = {
                                    ^
   21 warnings generated.
--
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
   In file included from drivers/gpu/drm/rockchip/rockchip_vop_reg.c:19:
   In file included from drivers/gpu/drm/rockchip/rockchip_drm_drv.h:12:
   In file included from include/drm/drm_fb_helper.h:35:
   In file included from include/drm/drm_client.h:6:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/rockchip_vop_reg.c:19:
   In file included from drivers/gpu/drm/rockchip/rockchip_drm_drv.h:12:
   In file included from include/drm/drm_fb_helper.h:35:
   In file included from include/drm/drm_client.h:6:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/rockchip_vop_reg.c:19:
   In file included from drivers/gpu/drm/rockchip/rockchip_drm_drv.h:12:
   In file included from include/drm/drm_fb_helper.h:35:
   In file included from include/drm/drm_client.h:6:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/rockchip_vop_reg.c:19:
   In file included from drivers/gpu/drm/rockchip/rockchip_drm_drv.h:12:
   In file included from include/drm/drm_fb_helper.h:35:
   In file included from include/drm/drm_client.h:6:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
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
>> drivers/gpu/drm/rockchip/rockchip_vop_reg.c:1038:34: warning: unused variable 'vop_driver_dt_match' [-Wunused-const-variable]
   static const struct of_device_id vop_driver_dt_match[] = {
                                    ^
   21 warnings generated.
--
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:15:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:15:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:15:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:15:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:15:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
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
>> drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:457:34: warning: unused variable 'rockchip_dp_dt_ids' [-Wunused-const-variable]
   static const struct of_device_id rockchip_dp_dt_ids[] = {
                                    ^
   21 warnings generated.
..


vim +/s3c64xx_spi_dt_match +1461 drivers/spi/spi-s3c64xx.c

a5238e360b715e Thomas Abraham   2012-07-13  1460  
2b90807549e5d1 Thomas Abraham   2012-07-13 @1461  static const struct of_device_id s3c64xx_spi_dt_match[] = {
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1462  	{ .compatible = "samsung,s3c2443-spi",
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1463  			.data = (void *)&s3c2443_spi_port_config,
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1464  	},
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1465  	{ .compatible = "samsung,s3c6410-spi",
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1466  			.data = (void *)&s3c6410_spi_port_config,
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1467  	},
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1468  	{ .compatible = "samsung,s5pv210-spi",
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1469  			.data = (void *)&s5pv210_spi_port_config,
a3b924df8fa908 Mateusz Krawczuk 2013-09-23  1470  	},
2b90807549e5d1 Thomas Abraham   2012-07-13  1471  	{ .compatible = "samsung,exynos4210-spi",
2b90807549e5d1 Thomas Abraham   2012-07-13  1472  			.data = (void *)&exynos4_spi_port_config,
2b90807549e5d1 Thomas Abraham   2012-07-13  1473  	},
bf77cba95f8c06 Padmavathi Venna 2014-11-06  1474  	{ .compatible = "samsung,exynos7-spi",
bf77cba95f8c06 Padmavathi Venna 2014-11-06  1475  			.data = (void *)&exynos7_spi_port_config,
bf77cba95f8c06 Padmavathi Venna 2014-11-06  1476  	},
7990b00819e765 Andi Shyti       2016-07-12  1477  	{ .compatible = "samsung,exynos5433-spi",
7990b00819e765 Andi Shyti       2016-07-12  1478  			.data = (void *)&exynos5433_spi_port_config,
7990b00819e765 Andi Shyti       2016-07-12  1479  	},
2b90807549e5d1 Thomas Abraham   2012-07-13  1480  	{ },
2b90807549e5d1 Thomas Abraham   2012-07-13  1481  };
2b90807549e5d1 Thomas Abraham   2012-07-13  1482  MODULE_DEVICE_TABLE(of, s3c64xx_spi_dt_match);
2b90807549e5d1 Thomas Abraham   2012-07-13  1483  

:::::: The code at line 1461 was first introduced by commit
:::::: 2b90807549e5d1f700e523ddd098651ecfc18e65 spi: s3c64xx: add device tree support

:::::: TO: Thomas Abraham <thomas.abraham@linaro.org>
:::::: CC: Kukjin Kim <kgene.kim@samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105311505.Fqv06bZZ-lkp%40intel.com.

--0OAP2g/MAC+5xKAE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0OAP2g/MAC+5xKAE--
