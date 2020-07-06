Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHO4RL4AKGQENSFUTRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1314B2151EA
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 06:52:47 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id m1sf540030vkl.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Jul 2020 21:52:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594011166; cv=pass;
        d=google.com; s=arc-20160816;
        b=BK1Zuh6B/e1U69rFsDkrfwYnTWnm/TEiXEexbtHbxhr88zWTsO+L+lfOiyk31exzPj
         7gTiasCDta4zjTSqxlCCCBphL4PXRxKzoXwarIidB6ZI2VkeV5iRd3S5zrKDhETu8agI
         utn7XcaEYV/fbnpnHEgTingMbSmqYANEpFFWwHQ7XFhFuPBAFldKwuGcnHkFaVoIV1nK
         uH/ELoW078KLQEf6pT4IxjAJgFJE/u4bUmIuEkwBiYmYwrmbha37ggrKSQnT61BEFSJy
         0PcXRtf84VXirCLQS6+cFOlvwahTngVzSx/EbKEzTg4INLmiGEwoQ3nMr1S71jiUeohl
         Xnsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jtjW81cvTI9B+2HWhiwAGTQat9P4wChfYIWjbW7LX5Q=;
        b=lBYk6nWG113Gqj1xkTGYwwY7zzkA4Smc58k83gvsKnR/8ZGLwUW6O2gaJecw5m4nYj
         ks7ZuFYIs5UrHVXXGP40mdGWI1WzhzGt7zmEd2zPht1QwNYxSby0XU41OcqicogWu96Q
         /EgVqOWzSTlfDl5yhrs7KPGzJeujcj/fHF98AulbzS7syQlgsvIlDY7n77spZas/vyqu
         TBgyUvOloNRXmHLT00cml3d/lXkaff6Ba9pnaujPAwaYciQ3HSPtSqr0+xHsleyTBp8K
         Vpj9Dt7WXKSe4h4r8E1lzvx1FCdAaoCDPAY2E9pT6xYzXj8Edio1FaLDsBZybh2FiHbH
         Ie1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jtjW81cvTI9B+2HWhiwAGTQat9P4wChfYIWjbW7LX5Q=;
        b=iNxZVjX7YejPl1QOsNGcjbat/bMdLFZ5b4f9FrhGPFgb6XRE2yDHr97f9KwJiAmEZF
         ESMWQmvm4G87S3YCWxOlpXuJtyBCv/6YjpfL034m1wR1o6Ir2+VP8dazAnQkqjhnzyj/
         JK1l8zaH89Owjqz5+27E8+sLx5Dk2rovOoNG9HDp5A4MZYLSYyw7VlPVwbDBHLuvyuMv
         1JJIK0x7o/QxQC54DJYZkDCnef6zr2zSWssBWK9l0r14yUwP6ouQP0TB9xy0G/ZYumKa
         e7xlRi+ATuubS23HdS5PR3GpuZ9clvJJJOKG7t70SIpps27AsHCMxIdlvpGo8g8riqev
         k1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jtjW81cvTI9B+2HWhiwAGTQat9P4wChfYIWjbW7LX5Q=;
        b=mbI0k1VT3P5AL6+Il5z9KLCCEI27q0Ih9/qugQOit+Z6k3Ab4df7K+rgnIVhuaZtaz
         PooPDtwIJS4yWxHgYEp0kMqr3yzTOSkk+dVqvmG9PcdQ0n44JJEZTB4crSItLSIWDOJQ
         6i+wT8uz5TwGi3vRXpAuAWr2R8HiaXCCS3I6OOrBPw1NUplBv9FKd9SUxzHc0iOCE2cZ
         QR3BWt4Y4DoMNjl85Vv5INOIkNAM4WgSEDEbfZ8XeON/YPW/0qhVEmJD9urovA+U5B9/
         FdWk09w8EUtEKd1hCmu0y/MONy9opPiw+H4La2U/U1LJAJniBlBzRnw+W09xl7qNFJBc
         A/vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dTYK2rji/czunUBd46Pcfk5DkOW9a3S+8MmvOYaIWA9Uf8ezg
	yATgWJMd5n4THQfaBaWM/FM=
X-Google-Smtp-Source: ABdhPJz27Pz+rzuldgSomPspeeP+4LZIRDWYWLJ/xWVyaOiqIri9ByfnGNNPgXKeN5AfSo8MACPNbA==
X-Received: by 2002:a67:8e02:: with SMTP id q2mr34266056vsd.108.1594011165794;
        Sun, 05 Jul 2020 21:52:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:95d2:: with SMTP id x201ls711123vkd.7.gmail; Sun, 05 Jul
 2020 21:52:45 -0700 (PDT)
X-Received: by 2002:ac5:c189:: with SMTP id z9mr33354971vkb.79.1594011165409;
        Sun, 05 Jul 2020 21:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594011165; cv=none;
        d=google.com; s=arc-20160816;
        b=0yVNpuoGzeSs1bZp9NI6OmeXZ/BHjAo/rPMw1haur88mPiuLTHyVot/gKT4EGRjo4Z
         1IufT+f+xTXgHb5UMjPbD92SvyvkkuwfFJCcH0DBWYmeFPa94e2zcpsnVZw6agSwnRKT
         U8RmyRowXBtO+Ta3Zp1kPHLQDIXEw0Xhn4IRud4CFXJ85OeMIvmCgTFzNjzlGMn58hMf
         xFBM323TI8cZ0npKsmgyYaUFxxeS4uq4lTPJ1IaUFRBmJG/EdnlYmHu3+6ZXHywkAfzn
         FNZagA0sssVWPSao32M5DcYn6BMBJX3jKX1AWX46kRoM1lQonmxlnnxXhkL33E7xECNU
         vuUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LlA7l5W/tQorLzJTFrbSMjgdsHTy4zIkTUOZ4Zr1vOo=;
        b=waTrTE5zFWUD+VBGNE8pLgAGKtgrBMteLbkwTqSOr8n7hFIt7UTS8vS/iascrcWnfJ
         I/48rUzSWOPh3W/DX9GFpMQzECTTtn7e1wyWx7Ua47BRuGqw+LxLZiKlW+qk+10VXzq/
         GdFz7xopdkq2nA9TdAp61YgbS2qd4gh6DsG0z3HzW5XlYmZKOeetobAMeZYO/hx3O+op
         lycDtWXEwmqcbTA6sCLFVS6IqOIiazmFc8F+cgOTG/I+1uxTHgVm+jOC96Kb2MnkVhUZ
         cgOQ5hyo7ML1f1DsZKIGWewdCM6QJ9IeeiSGI7hcwNVenbFn+E0Hb+iNvbBPARfN4s6g
         DPgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id q20si799987uas.1.2020.07.05.21.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Jul 2020 21:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: Po3FHGmGCyBVevnM+u3XW4u2mThIBwZFcsSK/QwWNRJM3uAnWdHRchYx2R/SmXiw2KC2Yo39Tv
 +qQhUa17dqAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="165418269"
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; 
   d="gz'50?scan'50,208,50";a="165418269"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2020 21:52:43 -0700
IronPort-SDR: X7o/4cX8tEnOH5iM03DRq+Q+HhyOB0a1cM/jVttZmYSVZMOvYEh11pdznKFQx2Cdty1H13qH+v
 4K8C7EWJn9SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; 
   d="gz'50?scan'50,208,50";a="482991227"
Received: from lkp-server01.sh.intel.com (HELO 82346ce9ac16) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 05 Jul 2020 21:52:40 -0700
Received: from kbuild by 82346ce9ac16 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jsJ7P-000050-Ty; Mon, 06 Jul 2020 04:52:39 +0000
Date: Mon, 6 Jul 2020 12:51:51 +0800
From: kernel test robot <lkp@intel.com>
To: Baolin Wang <baolin.wang7@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: drivers/hwspinlock/omap_hwspinlock.c:165:34: warning: unused
 variable 'omap_hwspinlock_of_match'
Message-ID: <202007061242.dysJ5DSl%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Baolin,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   dcb7fd82c75ee2d6e6f9d8cc71c52519ed52e258
commit: ffd0bbfb378ecd56eac22bf932ccdbf89ac7f725 hwspinlock: Allow drivers to be built with COMPILE_TEST
date:   3 months ago
config: s390-randconfig-r022-20200706 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout ffd0bbfb378ecd56eac22bf932ccdbf89ac7f725
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/hwspinlock/omap_hwspinlock.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/omap_hwspinlock.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/omap_hwspinlock.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/omap_hwspinlock.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/hwspinlock/omap_hwspinlock.c:16:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/hwspinlock/omap_hwspinlock.c:165:34: warning: unused variable 'omap_hwspinlock_of_match' [-Wunused-const-variable]
   static const struct of_device_id omap_hwspinlock_of_match[] = {
                                    ^
   21 warnings generated.
--
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/hwspinlock/sirf_hwspinlock.c:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/sirf_hwspinlock.c:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/sirf_hwspinlock.c:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/hwspinlock/sirf_hwspinlock.c:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/hwspinlock/sirf_hwspinlock.c:11:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/hwspinlock/sirf_hwspinlock.c:87:34: warning: unused variable 'sirf_hwpinlock_ids' [-Wunused-const-variable]
   static const struct of_device_id sirf_hwpinlock_ids[] = {
                                    ^
   21 warnings generated.

vim +/omap_hwspinlock_of_match +165 drivers/hwspinlock/omap_hwspinlock.c

70ba4cc26b9f53 Simon Que  2011-02-17  164  
65bd4341d61678 Suman Anna 2015-03-04 @165  static const struct of_device_id omap_hwspinlock_of_match[] = {
65bd4341d61678 Suman Anna 2015-03-04  166  	{ .compatible = "ti,omap4-hwspinlock", },
6fa154e282f9c8 Suman Anna 2019-05-30  167  	{ .compatible = "ti,am654-hwspinlock", },
65bd4341d61678 Suman Anna 2015-03-04  168  	{ /* end */ },
65bd4341d61678 Suman Anna 2015-03-04  169  };
65bd4341d61678 Suman Anna 2015-03-04  170  MODULE_DEVICE_TABLE(of, omap_hwspinlock_of_match);
65bd4341d61678 Suman Anna 2015-03-04  171  

:::::: The code at line 165 was first introduced by commit
:::::: 65bd4341d61678494ea14994d0d7df73644ca014 hwspinlock/omap: add support for dt nodes

:::::: TO: Suman Anna <s-anna@ti.com>
:::::: CC: Ohad Ben-Cohen <ohad@wizery.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007061242.dysJ5DSl%25lkp%40intel.com.

--bg08WKrSYDhXBjb5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bg08WKrSYDhXBjb5--
