Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU5FSGAQMGQEJT3NTNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E943317283
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 22:40:37 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id t207sf1756394oih.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:40:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612993236; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZHfX1pKW3UYpX/f5r09y+guiZJ0QMgXb8UsW7E0Ewo2CzWSQZyLt9XMObCOAwPhnZ
         lbZDwLiWxYKiOKENppi8celbYjV5jt6DLJ+Ov9/8IxeFraiVvI/RZvnzq4iBZ+2IFbbD
         j5HzIWkSfhGSeV16uIsRfkod+OpYPW1ybOgxJ4N2aV8zGJICYLlNuq5jqCD/ouyY8Txf
         VnUfayPgZG2JOtr69I/xQrq6SzYWzf2zxuRSqIC9rg4iHhS3AAeEmTMVGxE0d8HTXyRj
         fZXdaeys+phMXHLfuLkyfOW0KN8E6W79tpRseJV3CmbR+xvWTeamf/H1MCC//HU+JWEt
         DQBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+EsZXY+rA0tamAymYLAK4Ep8/0Xpxh20z539FayHNAQ=;
        b=w2iY3KkdU0qfpE2X0LXUuNXIu6l9JBv5yAIydpPmXBUIvDtwfuyqbxypS12NCkb7HD
         kzND1PNkxbmvUdogcOOX0fv2JTlo6LpW3Knbbqj7ipue5Mu2ZNo+6wN1Xqw5V30IchmX
         V48dYccZ8LeaQkyAx9Hk2uDNoYtji+C9iFIhTO3dCkuDyKQH2mOGqetKpA0mXtO9+PFM
         QiYCdoROox4DoCPUHSqIbUlKH6cDZciq4d/hONy6WPVXmopgudVyISVwyqui75+4UUdo
         ErC7E1ra33uBWVVdE+AQgs9WT8nHoLtaIHiQg9J/aD3PDxYDDHvDHyjN6LM7+c4P11Cn
         Unaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+EsZXY+rA0tamAymYLAK4Ep8/0Xpxh20z539FayHNAQ=;
        b=ZhDHPjLVZJdpjF8E8OrLoN/59wzXk8mLdYDaURR1odNkMlUg1yBk5ZUvzGKELQPW0f
         +b/o/PRznLNMg3Ja9/rr3XB6IwHENjsdRhELVmAu3gh/aIGvv6NFYc8YfZrhu+dcFvfB
         jW4z0wHxASFpi7b2rK3ddXPst82/kXOCTKGwyEuAJqzEVr8pyb9DAtAse0YOTvN2WDWi
         E54N+DmDIEE2j3GZzJ3VziJlbkxI7d1KcXaEcWgH0H4NKgET8VRgYyndA/kPprydwgVx
         uQe1mkdKI9oQrpejJwKLrKS8oKoCL7nGJbwg99YVDO5Xw1+q5sFBuBtctuzBBpHU9p1V
         up1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+EsZXY+rA0tamAymYLAK4Ep8/0Xpxh20z539FayHNAQ=;
        b=eyPitnrGxkkylHCyLHlWn1F2OP5f0lTEYC9f/RdEaWuaZeQ01Zl9NS8wN7QBB/q2xp
         LEMrpReCtTtVUypjP9Sb7nYUuA6h04WufYGTLIuv+zDxzt/LqujyQK8BPZK3xNTQgL2i
         VSp46AfLjvN5iBsXB6hqhLp9ubYNDAJ5bO8Mf7utQ4zMiMTAzWnHIG3f25xzfnzt7lG+
         Fi3dsIdfEMHEN2YS/LDw1LBuDZjOn03faXEZZXdjEwBZEr5pOenDWfuUfu9vJx9Suslv
         5tts6Sbr/9t+i1YfA/1ttReB43GK8HPli85mmI8sn5UWz2VAgv2r9iMZV27xuc57Z25+
         9oZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zvJcy521E4uA8iGbYumpuOjeeyCw0yIP1lxu7Qg07aPyS17Xw
	FubejqX7liBe/fdatnI0xV8=
X-Google-Smtp-Source: ABdhPJw3qYmy9p4J8/b5E6hN6UXZNUEXh6CvXA8PlYkUlGb8yAWb5q5H43J9Mfp2Hquhs0lTvHH1GQ==
X-Received: by 2002:aca:d58c:: with SMTP id m134mr717953oig.21.1612993235908;
        Wed, 10 Feb 2021 13:40:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1912:: with SMTP id l18ls951926oii.1.gmail; Wed, 10 Feb
 2021 13:40:35 -0800 (PST)
X-Received: by 2002:aca:bf8a:: with SMTP id p132mr724675oif.9.1612993235396;
        Wed, 10 Feb 2021 13:40:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612993235; cv=none;
        d=google.com; s=arc-20160816;
        b=gobK7RyDVEFgOrOX5fWPBKt5agd8AsvwfIL1x2SEFhXZyzHPp2a6abXEGtINHtYv6c
         VLNEy+f+bQJ1gfhRJPJyzQfCpVMvTgujusiWZcHw1ZUPnmX99xc2C64KyzsJhDO9XbXi
         uauotd6y9NvRGCXrzZibxwSbpUlCkj0dA4+GeamK1ABFBxr2Ftqr0DLdbWIZhfznr5/U
         4U+4ntvtMY/uGv/2Hu2qs4NTj32piQHFiwuVpaRPQOB9ngvh/WZdiehxkiDj9cpOgT9W
         PVg/4jN/oNwweKr7NZw+2akESkfHTIup4BY44Hfn44Bv4J6n4zID9ZiuwMC3XpDoCgpi
         kn0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wDv9Gl1FgvN3q8CxcL2tOYA2wp5x8S4MYSmS2erpqA8=;
        b=vgzETI4/YIBxIGLF3m4VvPyzUeq7kv6ypxNSBzaa/gXNQSePcFCABQQYL9FmIyNHuw
         /UCvD7QgbZQAKRIpSlRrXIOfR5YR+PMKdU6if/yxkFcZCnasm4oKi9K7fKOoGBMFTMxP
         S9fU0iYCKMo9n7UyLGa827pf3ZsdK2f3LhhuwQSUNB2DIUL65php4M4WwDLqbsv8AUYY
         6FkX2ZxPk8I0CUnsoTT4LZ27a0wQilbHsJd65/+R7MMz6RTcbzpx+XxKkPA5L9uwMv/P
         IkZ0BGwBN7Vln97BvPwjhewW/vTfCWAdYq2KSOltcnFn4Jb5K9N9YoKDD1K61syVIBuO
         bEfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id q10si309323oon.2.2021.02.10.13.40.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: v+IdMaH1AA4uLPrKdcoGwReuVW2BVBC1gLBDrmwCjifF3dO+Hy3z7BQELFu9X/iGxv+S8+VNQ7
 k4RO0+6QBfvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="266997512"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; 
   d="gz'50?scan'50,208,50";a="266997512"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2021 13:40:31 -0800
IronPort-SDR: OAorgffFywfcQJgDGDJoBmrg1UChOK4h5DD7S5s87VrmZejdtP5jn38evNVImk4zCXY4gxOebD
 TyP+FOl+m8vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; 
   d="gz'50?scan'50,208,50";a="488885908"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2021 13:40:28 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l9xDo-0003IJ-19; Wed, 10 Feb 2021 21:40:28 +0000
Date: Thu, 11 Feb 2021 05:40:25 +0800
From: kernel test robot <lkp@intel.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: drivers/accessibility/speakup/speakup_acntpc.c:262:14: warning:
 performing pointer arithmetic on a null pointer has undefined behavior
Message-ID: <202102110519.Y3Tmswui-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Samuel,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   e0756cfc7d7cd08c98a53b6009c091a3f6a50be6
commit: 2067fd92d75b6d9085a43caf050bca5d88c491b8 staging/speakup: Move out of staging
date:   7 months ago
config: riscv-randconfig-r006-20210211 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2067fd92d75b6d9085a43caf050bca5d88c491b8
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 2067fd92d75b6d9085a43caf050bca5d88c491b8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_acntpc.c:19:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/speakup_acntpc.c:262:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   port_val = inw(speakup_info.port_tts - 1);
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   drivers/accessibility/speakup/speakup_acntpc.c:273:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           port_val = inw(synth_portlist[i]) & 0xfffc;
                                      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   9 warnings generated.
--
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/speakup_dtlk.c:334:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   port_val = inw(speakup_info.port_tts - 1);
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   drivers/accessibility/speakup/speakup_dtlk.c:341:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           port_val = inw(synth_portlist[i]) & 0xfbff;
                                      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   9 warnings generated.
--
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/speakup_keypc.c:268:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   port_val = inb(synth_port);
                              ^~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/speakup_keypc.c:278:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           port_val = inb(synth_portlist[i]);
                                      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   9 warnings generated.
..


vim +262 drivers/accessibility/speakup/speakup_acntpc.c

c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  246  
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  247  static int synth_probe(struct spk_synth *synth)
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  248  {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  249  	unsigned int port_val = 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  250  	int i = 0;
8e69a811068657 drivers/staging/speakup/speakup_acntpc.c Domagoj Trsan       2014-09-09  251  
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  252  	pr_info("Probing for %s.\n", synth->long_name);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  253  	if (port_forced) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  254  		speakup_info.port_tts = port_forced;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  255  		pr_info("probe forced to %x by kernel command line\n",
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  256  			speakup_info.port_tts);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  257  		if (synth_request_region(speakup_info.port_tts - 1,
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  258  					 SYNTH_IO_EXTENT)) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  259  			pr_warn("sorry, port already reserved\n");
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  260  			return -EBUSY;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  261  		}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07 @262  		port_val = inw(speakup_info.port_tts - 1);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  263  		synth_port_control = speakup_info.port_tts - 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  264  	} else {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  265  		for (i = 0; synth_portlist[i]; i++) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  266  			if (synth_request_region(synth_portlist[i],
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  267  						 SYNTH_IO_EXTENT)) {
bf4a4bacb051c2 drivers/staging/speakup/speakup_acntpc.c Christopher Brannon 2010-10-14  268  				pr_warn
bf4a4bacb051c2 drivers/staging/speakup/speakup_acntpc.c Christopher Brannon 2010-10-14  269  				    ("request_region: failed with 0x%x, %d\n",
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  270  				     synth_portlist[i], SYNTH_IO_EXTENT);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  271  				continue;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  272  			}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  273  			port_val = inw(synth_portlist[i]) & 0xfffc;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  274  			if (port_val == 0x53fc) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  275  				/* 'S' and out&input bits */
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  276  				synth_port_control = synth_portlist[i];
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  277  				speakup_info.port_tts = synth_port_control + 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  278  				break;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  279  			}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  280  		}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  281  	}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  282  	port_val &= 0xfffc;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  283  	if (port_val != 0x53fc) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  284  		/* 'S' and out&input bits */
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  285  		pr_info("%s: not found\n", synth->long_name);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  286  		synth_release_region(synth_port_control, SYNTH_IO_EXTENT);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  287  		synth_port_control = 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  288  		return -ENODEV;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  289  	}
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  290  	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  291  		synth_port_control, synth_port_control + SYNTH_IO_EXTENT - 1,
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  292  		synth->version);
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  293  	synth->alive = 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  294  	return 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  295  }
c6e3fd22cd5383 drivers/staging/speakup/speakup_acntpc.c William Hubbs       2010-10-07  296  

:::::: The code at line 262 was first introduced by commit
:::::: c6e3fd22cd538365bfeb82997d5b89562e077d42 Staging: add speakup to the staging directory

:::::: TO: William Hubbs <w.d.hubbs@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102110519.Y3Tmswui-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
q09yLPYuEylhSGcZtZgiwerN/wOOVvuwczwCAA==

--45Z9DzgjV8m4Oswq--
