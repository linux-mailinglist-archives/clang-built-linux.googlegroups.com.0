Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2PC26DAMGQECXJUXIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2783B4661
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 17:08:26 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id s9-20020ad452490000b02902786b63dbfesf10054578qvq.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 08:08:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624633705; cv=pass;
        d=google.com; s=arc-20160816;
        b=MrKh4j2zCoruirNY2GiM/THC0UMQdbnyY0RVLSNCSwIUsIufqEN3BHUEFpoJgJjJhY
         2Wopkq1NnAu4vdiEJA7pDKGqyN0ZkrHflZfoDd/TG0Pog+qFKT1yxONU6YUkUoK9UIqP
         +bQtMoi6LcAniY650fGcaR6oZwxJNYshMkM570JmzPUgBa1h0pKRgpodEJxa1rXymmel
         8oMD1bi+Ivjcjo1wBzNjQnGchn+Cayc4nvqUPYkQN5CTpoeD/QalVHm5u9iOFmjt8z0m
         qOnpABYL1wXewbClDFcSfG8/JgPdcS8KQQKdaZ9MdfkTfmG/mbI43/1RHjOqwZh1fQ/Q
         Psbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5wvgoN0CwZKoPb3tx46MsjGV35cRP0+SkblNR3eMMv8=;
        b=bPZ5k3qvXW/L7IRBatJAVO9yicIqbHePFZFqsAMtN+XRgEb2Pnj1norELs/TXajJgM
         5rtaR+yzxxaC5917LM49x+5O6Jc+aB5NIweYoV6Y1ujTugbvy8zsxiuLECqPxaw8Ev2X
         RUrCsRmDpNZ4FdDjpLGe1PgYzSYmnD3fE1vU92xOLpATtYO08d/LqKIxX9XBCj3YU3CA
         oWavr8Kc3m+3M2f9Mu3/PQVQo5qoBf6lDv6oqjnI49TFAw3WYo8pP6iHObJtM6kTu5XE
         PVU+NhMvmCDlYH6xaocmBtgbt/ucqrw83yEP1ITJtfrhjasNJX8QUIzQuGs2+UYwDsNS
         LmGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5wvgoN0CwZKoPb3tx46MsjGV35cRP0+SkblNR3eMMv8=;
        b=j+BsLKMyps6V/TIGb95QVGx45D18ljhuX+wib5KvXwZ/ysyt8s3f+eBP6xM06OrHoK
         6QfL9E/axA4PdkXlZtyoIahWWN/TVii6i1edTL0kNHfwrUmg2JLXtJQenw9kg41LpIv6
         Zdzuxe08/TcQHt0cxH+7WQbiN9sH8jzx4GKJw3FTmI8X/ooC6TdqKX8hoQpvb4fSl31F
         WYssHJz3FM4wWPi831ZbtK7najEZpgdGs5ElHX6+g7ixBWoQQKTopkf8kicSvSP32+dU
         GN6a1psDDwpB64M1EnP3mSZc6Uprk3bIctzpiKMIJNrIM4iOsnRPmn3se4lDP77YHN7y
         G/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5wvgoN0CwZKoPb3tx46MsjGV35cRP0+SkblNR3eMMv8=;
        b=nZHMI0YhaGoehkpKqXd8PizqAC/IK0ilMynVIeZUIWnL+J6wbPM/I5Iz/wm2XwA9gP
         X3iHi3z7OJpPMMzbKTppMhICeWZa1dErDdjHRvwV1whoqSOA5DAP3wUBs5sUX8XTDtsJ
         +MyV7y34o4nYpiDxBTWEqe9g69M8maMojgzOtvqOQE+ni34Xvi3VAEesqqLVKOKOFGPs
         1+1B6d9XPZCsKGDuq9phpz9ghRtCwDfQaxOTe8/bIrlIS3CJzxYmph+mwjS2cL9BPzBD
         Ya4SonXI8UiueWfMK0l3f3p3rJBDEzONTa8gJFif9I+shenZ6fFwhl0XGNH/6g46CCVj
         Jm7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300vtkfVz+agTfGEkuBRB3A2lmrls0Sv9n6vKHF9X+EZ/eiUQGn
	4kpbUVg31uabbXKkeIrg/zk=
X-Google-Smtp-Source: ABdhPJyoOg0mLQHf81IMCmxSRQ2eQlzmXQTXKKZ5LegMaDLAy4bY1v3Wrt0DO/m3/QKgUnnNoZO13Q==
X-Received: by 2002:a37:8345:: with SMTP id f66mr11780811qkd.396.1624633705115;
        Fri, 25 Jun 2021 08:08:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1a9a:: with SMTP id bl26ls6348923qkb.1.gmail; Fri,
 25 Jun 2021 08:08:24 -0700 (PDT)
X-Received: by 2002:a05:620a:13d3:: with SMTP id g19mr2895514qkl.62.1624633704157;
        Fri, 25 Jun 2021 08:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624633704; cv=none;
        d=google.com; s=arc-20160816;
        b=g9TSZjfGTGXe7k6EV9F/65BiOF/gLc9jkBJlai4OJnCqXeHcLKMYjXL16NDHH2onSE
         pDCvgbCuWUF7OTf5Q6iZKbl2aY8uVavrHUPnz8ugxTx0x5iUDD6igsnywjRaZJTCc7Pf
         yOsL6t0W0Q17vHj5gJWG59kAx1WG9yfWy3IHxM3EdrpT+Kl9cB5A99ilaTDz+guRMADT
         T6b5iVePbT7v1UbY++t6NatU20swi6Dn4qXAqIknM1M5LCfXyebNOeuPwnfotW/k/FsQ
         7Po+a+gCSTNFTd8mbuzjiBYYJaLi1xJWHumGuAuDhoqNwufvhq51wdrBzfEeuTzEiGgC
         6XZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=idyLRv5TbAL5u1k0uu4ouyqc6xepHwqo6XmsNn2kigM=;
        b=fYNlkbDesgGTi0AN1XuS4kKhLymnxl3BreK7qFgbY/WHo2ghpb8jqNQ4mcc61nHp80
         l8XzSVEsYixcbHYGAmY1JghuOnVUcj4E6kvTPXdI91K5pRhHh1ViKGM+TSR9znvXyzfv
         dBr2RO4blxilhgU1648Tb9UFQBaOIiY3YAzjPXI6v0GF03Ui7hkTpKlW4WTEYG8ccAkQ
         EAxblSkPMn9i1VD+4ECavTZye24RRy6Vl6qzpVRUciKqpcMbAcxddx1h70Fmv+YdWfQ1
         Q2/suL7G+170D4yqfBt5NGPF4HCCtK3Tv6Sf/Ych91loFi8Uc5Dgy7cv1uhTtckF/Lhx
         ZZkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id i6si736341qko.5.2021.06.25.08.08.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 08:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: D93uikxWjxxM8YG0xGU0RNIf7Tm5Ic9uTLGLiIGEm5FBihQVOvJkHOWe/49Rji4mQ3X4uV4cBP
 j9fKdYxQSnjw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="268814646"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; 
   d="gz'50?scan'50,208,50";a="268814646"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2021 08:08:03 -0700
IronPort-SDR: G/50lCaeuyTfX/zwfhbBOR66+N4MedHwGmRlgJSudXouBGTLih8r1SiyldHK4LWEfeQSP4J2GD
 NZEw2mjWmqHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; 
   d="gz'50?scan'50,208,50";a="453841132"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Jun 2021 08:08:01 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lwnR2-0007Dm-Es; Fri, 25 Jun 2021 15:08:00 +0000
Date: Fri, 25 Jun 2021 23:07:26 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Subject: drivers/net/usb/r8152.c:7474:13: warning: stack frame size (8768)
 exceeds limit (8192) in function 'r8156b_hw_phy_cfg'
Message-ID: <202106252359.kTiPijhi-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   44db63d1ad8d71c6932cbe007eb41f31c434d140
commit: 8203c7ce4ef2840929d38b447b4ccd384727f92b Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
date:   10 weeks ago
config: powerpc64-randconfig-r021-20210625 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 7c8a507272587f181ec29401453949ebcd8fec65)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8203c7ce4ef2840929d38b447b4ccd384727f92b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 8203c7ce4ef2840929d38b447b4ccd384727f92b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/usb/r8152.c:9:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:121:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/usb/r8152.c:9:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:123:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/usb/r8152.c:9:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:125:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/usb/r8152.c:9:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:127:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/usb/r8152.c:9:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:129:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/net/usb/r8152.c:7474:13: warning: stack frame size (8768) exceeds limit (8192) in function 'r8156b_hw_phy_cfg' [-Wframe-larger-than]
   static void r8156b_hw_phy_cfg(struct r8152 *tp)
               ^
   8 warnings generated.


vim +/r8156b_hw_phy_cfg +7474 drivers/net/usb/r8152.c

195aae321c829dd Hayes Wang 2021-04-16  7473  
195aae321c829dd Hayes Wang 2021-04-16 @7474  static void r8156b_hw_phy_cfg(struct r8152 *tp)
195aae321c829dd Hayes Wang 2021-04-16  7475  {
195aae321c829dd Hayes Wang 2021-04-16  7476  	u32 ocp_data;
195aae321c829dd Hayes Wang 2021-04-16  7477  	u16 data;
195aae321c829dd Hayes Wang 2021-04-16  7478  
195aae321c829dd Hayes Wang 2021-04-16  7479  	switch (tp->version) {
195aae321c829dd Hayes Wang 2021-04-16  7480  	case RTL_VER_12:
195aae321c829dd Hayes Wang 2021-04-16  7481  		ocp_reg_write(tp, 0xbf86, 0x9000);
195aae321c829dd Hayes Wang 2021-04-16  7482  		data = ocp_reg_read(tp, 0xc402);
195aae321c829dd Hayes Wang 2021-04-16  7483  		data |= BIT(10);
195aae321c829dd Hayes Wang 2021-04-16  7484  		ocp_reg_write(tp, 0xc402, data);
195aae321c829dd Hayes Wang 2021-04-16  7485  		data &= ~BIT(10);
195aae321c829dd Hayes Wang 2021-04-16  7486  		ocp_reg_write(tp, 0xc402, data);
195aae321c829dd Hayes Wang 2021-04-16  7487  		ocp_reg_write(tp, 0xbd86, 0x1010);
195aae321c829dd Hayes Wang 2021-04-16  7488  		ocp_reg_write(tp, 0xbd88, 0x1010);
195aae321c829dd Hayes Wang 2021-04-16  7489  		data = ocp_reg_read(tp, 0xbd4e);
195aae321c829dd Hayes Wang 2021-04-16  7490  		data &= ~(BIT(10) | BIT(11));
195aae321c829dd Hayes Wang 2021-04-16  7491  		data |= BIT(11);
195aae321c829dd Hayes Wang 2021-04-16  7492  		ocp_reg_write(tp, 0xbd4e, data);
195aae321c829dd Hayes Wang 2021-04-16  7493  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829dd Hayes Wang 2021-04-16  7494  		data &= ~0xf00;
195aae321c829dd Hayes Wang 2021-04-16  7495  		data |= 0x700;
195aae321c829dd Hayes Wang 2021-04-16  7496  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829dd Hayes Wang 2021-04-16  7497  		break;
195aae321c829dd Hayes Wang 2021-04-16  7498  	case RTL_VER_13:
195aae321c829dd Hayes Wang 2021-04-16  7499  	case RTL_VER_15:
195aae321c829dd Hayes Wang 2021-04-16  7500  		r8156b_wait_loading_flash(tp);
195aae321c829dd Hayes Wang 2021-04-16  7501  		break;
195aae321c829dd Hayes Wang 2021-04-16  7502  	default:
195aae321c829dd Hayes Wang 2021-04-16  7503  		break;
195aae321c829dd Hayes Wang 2021-04-16  7504  	}
195aae321c829dd Hayes Wang 2021-04-16  7505  
195aae321c829dd Hayes Wang 2021-04-16  7506  	ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_MISC_0);
195aae321c829dd Hayes Wang 2021-04-16  7507  	if (ocp_data & PCUT_STATUS) {
195aae321c829dd Hayes Wang 2021-04-16  7508  		ocp_data &= ~PCUT_STATUS;
195aae321c829dd Hayes Wang 2021-04-16  7509  		ocp_write_word(tp, MCU_TYPE_USB, USB_MISC_0, ocp_data);
195aae321c829dd Hayes Wang 2021-04-16  7510  	}
195aae321c829dd Hayes Wang 2021-04-16  7511  
195aae321c829dd Hayes Wang 2021-04-16  7512  	data = r8153_phy_status(tp, 0);
195aae321c829dd Hayes Wang 2021-04-16  7513  	switch (data) {
195aae321c829dd Hayes Wang 2021-04-16  7514  	case PHY_STAT_EXT_INIT:
195aae321c829dd Hayes Wang 2021-04-16  7515  		rtl8152_apply_firmware(tp, true);
195aae321c829dd Hayes Wang 2021-04-16  7516  
195aae321c829dd Hayes Wang 2021-04-16  7517  		data = ocp_reg_read(tp, 0xa466);
195aae321c829dd Hayes Wang 2021-04-16  7518  		data &= ~BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7519  		ocp_reg_write(tp, 0xa466, data);
195aae321c829dd Hayes Wang 2021-04-16  7520  
195aae321c829dd Hayes Wang 2021-04-16  7521  		data = ocp_reg_read(tp, 0xa468);
195aae321c829dd Hayes Wang 2021-04-16  7522  		data &= ~(BIT(3) | BIT(1));
195aae321c829dd Hayes Wang 2021-04-16  7523  		ocp_reg_write(tp, 0xa468, data);
195aae321c829dd Hayes Wang 2021-04-16  7524  		break;
195aae321c829dd Hayes Wang 2021-04-16  7525  	case PHY_STAT_LAN_ON:
195aae321c829dd Hayes Wang 2021-04-16  7526  	case PHY_STAT_PWRDN:
195aae321c829dd Hayes Wang 2021-04-16  7527  	default:
195aae321c829dd Hayes Wang 2021-04-16  7528  		rtl8152_apply_firmware(tp, false);
195aae321c829dd Hayes Wang 2021-04-16  7529  		break;
195aae321c829dd Hayes Wang 2021-04-16  7530  	}
195aae321c829dd Hayes Wang 2021-04-16  7531  
195aae321c829dd Hayes Wang 2021-04-16  7532  	data = r8152_mdio_read(tp, MII_BMCR);
195aae321c829dd Hayes Wang 2021-04-16  7533  	if (data & BMCR_PDOWN) {
195aae321c829dd Hayes Wang 2021-04-16  7534  		data &= ~BMCR_PDOWN;
195aae321c829dd Hayes Wang 2021-04-16  7535  		r8152_mdio_write(tp, MII_BMCR, data);
195aae321c829dd Hayes Wang 2021-04-16  7536  	}
195aae321c829dd Hayes Wang 2021-04-16  7537  
195aae321c829dd Hayes Wang 2021-04-16  7538  	/* disable ALDPS before updating the PHY parameters */
195aae321c829dd Hayes Wang 2021-04-16  7539  	r8153_aldps_en(tp, false);
195aae321c829dd Hayes Wang 2021-04-16  7540  
195aae321c829dd Hayes Wang 2021-04-16  7541  	/* disable EEE before updating the PHY parameters */
195aae321c829dd Hayes Wang 2021-04-16  7542  	rtl_eee_enable(tp, false);
195aae321c829dd Hayes Wang 2021-04-16  7543  
195aae321c829dd Hayes Wang 2021-04-16  7544  	data = r8153_phy_status(tp, PHY_STAT_LAN_ON);
195aae321c829dd Hayes Wang 2021-04-16  7545  	WARN_ON_ONCE(data != PHY_STAT_LAN_ON);
195aae321c829dd Hayes Wang 2021-04-16  7546  
195aae321c829dd Hayes Wang 2021-04-16  7547  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
195aae321c829dd Hayes Wang 2021-04-16  7548  	ocp_data |= PFM_PWM_SWITCH;
195aae321c829dd Hayes Wang 2021-04-16  7549  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);
195aae321c829dd Hayes Wang 2021-04-16  7550  
195aae321c829dd Hayes Wang 2021-04-16  7551  	switch (tp->version) {
195aae321c829dd Hayes Wang 2021-04-16  7552  	case RTL_VER_12:
195aae321c829dd Hayes Wang 2021-04-16  7553  		data = ocp_reg_read(tp, 0xbc08);
195aae321c829dd Hayes Wang 2021-04-16  7554  		data |= BIT(3) | BIT(2);
195aae321c829dd Hayes Wang 2021-04-16  7555  		ocp_reg_write(tp, 0xbc08, data);
195aae321c829dd Hayes Wang 2021-04-16  7556  
195aae321c829dd Hayes Wang 2021-04-16  7557  		data = sram_read(tp, 0x8fff);
195aae321c829dd Hayes Wang 2021-04-16  7558  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7559  		data |= 0x0400;
195aae321c829dd Hayes Wang 2021-04-16  7560  		sram_write(tp, 0x8fff, data);
195aae321c829dd Hayes Wang 2021-04-16  7561  
195aae321c829dd Hayes Wang 2021-04-16  7562  		data = ocp_reg_read(tp, 0xacda);
195aae321c829dd Hayes Wang 2021-04-16  7563  		data |= 0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7564  		ocp_reg_write(tp, 0xacda, data);
195aae321c829dd Hayes Wang 2021-04-16  7565  		data = ocp_reg_read(tp, 0xacde);
195aae321c829dd Hayes Wang 2021-04-16  7566  		data |= 0xf000;
195aae321c829dd Hayes Wang 2021-04-16  7567  		ocp_reg_write(tp, 0xacde, data);
195aae321c829dd Hayes Wang 2021-04-16  7568  		ocp_reg_write(tp, 0xac8c, 0x0ffc);
195aae321c829dd Hayes Wang 2021-04-16  7569  		ocp_reg_write(tp, 0xac46, 0xb7b4);
195aae321c829dd Hayes Wang 2021-04-16  7570  		ocp_reg_write(tp, 0xac50, 0x0fbc);
195aae321c829dd Hayes Wang 2021-04-16  7571  		ocp_reg_write(tp, 0xac3c, 0x9240);
195aae321c829dd Hayes Wang 2021-04-16  7572  		ocp_reg_write(tp, 0xac4e, 0x0db4);
195aae321c829dd Hayes Wang 2021-04-16  7573  		ocp_reg_write(tp, 0xacc6, 0x0707);
195aae321c829dd Hayes Wang 2021-04-16  7574  		ocp_reg_write(tp, 0xacc8, 0xa0d3);
195aae321c829dd Hayes Wang 2021-04-16  7575  		ocp_reg_write(tp, 0xad08, 0x0007);
195aae321c829dd Hayes Wang 2021-04-16  7576  
195aae321c829dd Hayes Wang 2021-04-16  7577  		ocp_reg_write(tp, 0xb87c, 0x8560);
195aae321c829dd Hayes Wang 2021-04-16  7578  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829dd Hayes Wang 2021-04-16  7579  		ocp_reg_write(tp, 0xb87c, 0x8562);
195aae321c829dd Hayes Wang 2021-04-16  7580  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829dd Hayes Wang 2021-04-16  7581  		ocp_reg_write(tp, 0xb87c, 0x8564);
195aae321c829dd Hayes Wang 2021-04-16  7582  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829dd Hayes Wang 2021-04-16  7583  		ocp_reg_write(tp, 0xb87c, 0x8566);
195aae321c829dd Hayes Wang 2021-04-16  7584  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829dd Hayes Wang 2021-04-16  7585  		ocp_reg_write(tp, 0xb87c, 0x8568);
195aae321c829dd Hayes Wang 2021-04-16  7586  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829dd Hayes Wang 2021-04-16  7587  		ocp_reg_write(tp, 0xb87c, 0x856a);
195aae321c829dd Hayes Wang 2021-04-16  7588  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829dd Hayes Wang 2021-04-16  7589  		ocp_reg_write(tp, 0xb87c, 0x8ffe);
195aae321c829dd Hayes Wang 2021-04-16  7590  		ocp_reg_write(tp, 0xb87e, 0x0907);
195aae321c829dd Hayes Wang 2021-04-16  7591  		ocp_reg_write(tp, 0xb87c, 0x80d6);
195aae321c829dd Hayes Wang 2021-04-16  7592  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829dd Hayes Wang 2021-04-16  7593  		ocp_reg_write(tp, 0xb87c, 0x80f2);
195aae321c829dd Hayes Wang 2021-04-16  7594  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829dd Hayes Wang 2021-04-16  7595  		ocp_reg_write(tp, 0xb87c, 0x80f4);
195aae321c829dd Hayes Wang 2021-04-16  7596  		ocp_reg_write(tp, 0xb87e, 0x6077);
195aae321c829dd Hayes Wang 2021-04-16  7597  		ocp_reg_write(tp, 0xb506, 0x01e7);
195aae321c829dd Hayes Wang 2021-04-16  7598  
195aae321c829dd Hayes Wang 2021-04-16  7599  		ocp_reg_write(tp, 0xb87c, 0x8013);
195aae321c829dd Hayes Wang 2021-04-16  7600  		ocp_reg_write(tp, 0xb87e, 0x0700);
195aae321c829dd Hayes Wang 2021-04-16  7601  		ocp_reg_write(tp, 0xb87c, 0x8fb9);
195aae321c829dd Hayes Wang 2021-04-16  7602  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829dd Hayes Wang 2021-04-16  7603  		ocp_reg_write(tp, 0xb87c, 0x8fba);
195aae321c829dd Hayes Wang 2021-04-16  7604  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829dd Hayes Wang 2021-04-16  7605  		ocp_reg_write(tp, 0xb87c, 0x8fbc);
195aae321c829dd Hayes Wang 2021-04-16  7606  		ocp_reg_write(tp, 0xb87e, 0x1900);
195aae321c829dd Hayes Wang 2021-04-16  7607  		ocp_reg_write(tp, 0xb87c, 0x8fbe);
195aae321c829dd Hayes Wang 2021-04-16  7608  		ocp_reg_write(tp, 0xb87e, 0xe100);
195aae321c829dd Hayes Wang 2021-04-16  7609  		ocp_reg_write(tp, 0xb87c, 0x8fc0);
195aae321c829dd Hayes Wang 2021-04-16  7610  		ocp_reg_write(tp, 0xb87e, 0x0800);
195aae321c829dd Hayes Wang 2021-04-16  7611  		ocp_reg_write(tp, 0xb87c, 0x8fc2);
195aae321c829dd Hayes Wang 2021-04-16  7612  		ocp_reg_write(tp, 0xb87e, 0xe500);
195aae321c829dd Hayes Wang 2021-04-16  7613  		ocp_reg_write(tp, 0xb87c, 0x8fc4);
195aae321c829dd Hayes Wang 2021-04-16  7614  		ocp_reg_write(tp, 0xb87e, 0x0f00);
195aae321c829dd Hayes Wang 2021-04-16  7615  		ocp_reg_write(tp, 0xb87c, 0x8fc6);
195aae321c829dd Hayes Wang 2021-04-16  7616  		ocp_reg_write(tp, 0xb87e, 0xf100);
195aae321c829dd Hayes Wang 2021-04-16  7617  		ocp_reg_write(tp, 0xb87c, 0x8fc8);
195aae321c829dd Hayes Wang 2021-04-16  7618  		ocp_reg_write(tp, 0xb87e, 0x0400);
195aae321c829dd Hayes Wang 2021-04-16  7619  		ocp_reg_write(tp, 0xb87c, 0x8fca);
195aae321c829dd Hayes Wang 2021-04-16  7620  		ocp_reg_write(tp, 0xb87e, 0xf300);
195aae321c829dd Hayes Wang 2021-04-16  7621  		ocp_reg_write(tp, 0xb87c, 0x8fcc);
195aae321c829dd Hayes Wang 2021-04-16  7622  		ocp_reg_write(tp, 0xb87e, 0xfd00);
195aae321c829dd Hayes Wang 2021-04-16  7623  		ocp_reg_write(tp, 0xb87c, 0x8fce);
195aae321c829dd Hayes Wang 2021-04-16  7624  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829dd Hayes Wang 2021-04-16  7625  		ocp_reg_write(tp, 0xb87c, 0x8fd0);
195aae321c829dd Hayes Wang 2021-04-16  7626  		ocp_reg_write(tp, 0xb87e, 0xfb00);
195aae321c829dd Hayes Wang 2021-04-16  7627  		ocp_reg_write(tp, 0xb87c, 0x8fd2);
195aae321c829dd Hayes Wang 2021-04-16  7628  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829dd Hayes Wang 2021-04-16  7629  		ocp_reg_write(tp, 0xb87c, 0x8fd4);
195aae321c829dd Hayes Wang 2021-04-16  7630  		ocp_reg_write(tp, 0xb87e, 0xf400);
195aae321c829dd Hayes Wang 2021-04-16  7631  		ocp_reg_write(tp, 0xb87c, 0x8fd6);
195aae321c829dd Hayes Wang 2021-04-16  7632  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829dd Hayes Wang 2021-04-16  7633  		ocp_reg_write(tp, 0xb87c, 0x8fd8);
195aae321c829dd Hayes Wang 2021-04-16  7634  		ocp_reg_write(tp, 0xb87e, 0xf600);
195aae321c829dd Hayes Wang 2021-04-16  7635  
195aae321c829dd Hayes Wang 2021-04-16  7636  		ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG);
195aae321c829dd Hayes Wang 2021-04-16  7637  		ocp_data |= EN_XG_LIP | EN_G_LIP;
195aae321c829dd Hayes Wang 2021-04-16  7638  		ocp_write_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG, ocp_data);
195aae321c829dd Hayes Wang 2021-04-16  7639  		ocp_reg_write(tp, 0xb87c, 0x813d);
195aae321c829dd Hayes Wang 2021-04-16  7640  		ocp_reg_write(tp, 0xb87e, 0x390e);
195aae321c829dd Hayes Wang 2021-04-16  7641  		ocp_reg_write(tp, 0xb87c, 0x814f);
195aae321c829dd Hayes Wang 2021-04-16  7642  		ocp_reg_write(tp, 0xb87e, 0x790e);
195aae321c829dd Hayes Wang 2021-04-16  7643  		ocp_reg_write(tp, 0xb87c, 0x80b0);
195aae321c829dd Hayes Wang 2021-04-16  7644  		ocp_reg_write(tp, 0xb87e, 0x0f31);
195aae321c829dd Hayes Wang 2021-04-16  7645  		data = ocp_reg_read(tp, 0xbf4c);
195aae321c829dd Hayes Wang 2021-04-16  7646  		data |= BIT(1);
195aae321c829dd Hayes Wang 2021-04-16  7647  		ocp_reg_write(tp, 0xbf4c, data);
195aae321c829dd Hayes Wang 2021-04-16  7648  		data = ocp_reg_read(tp, 0xbcca);
195aae321c829dd Hayes Wang 2021-04-16  7649  		data |= BIT(9) | BIT(8);
195aae321c829dd Hayes Wang 2021-04-16  7650  		ocp_reg_write(tp, 0xbcca, data);
195aae321c829dd Hayes Wang 2021-04-16  7651  		ocp_reg_write(tp, 0xb87c, 0x8141);
195aae321c829dd Hayes Wang 2021-04-16  7652  		ocp_reg_write(tp, 0xb87e, 0x320e);
195aae321c829dd Hayes Wang 2021-04-16  7653  		ocp_reg_write(tp, 0xb87c, 0x8153);
195aae321c829dd Hayes Wang 2021-04-16  7654  		ocp_reg_write(tp, 0xb87e, 0x720e);
195aae321c829dd Hayes Wang 2021-04-16  7655  		ocp_reg_write(tp, 0xb87c, 0x8529);
195aae321c829dd Hayes Wang 2021-04-16  7656  		ocp_reg_write(tp, 0xb87e, 0x050e);
195aae321c829dd Hayes Wang 2021-04-16  7657  		data = ocp_reg_read(tp, OCP_EEE_CFG);
195aae321c829dd Hayes Wang 2021-04-16  7658  		data &= ~CTAP_SHORT_EN;
195aae321c829dd Hayes Wang 2021-04-16  7659  		ocp_reg_write(tp, OCP_EEE_CFG, data);
195aae321c829dd Hayes Wang 2021-04-16  7660  
195aae321c829dd Hayes Wang 2021-04-16  7661  		sram_write(tp, 0x816c, 0xc4a0);
195aae321c829dd Hayes Wang 2021-04-16  7662  		sram_write(tp, 0x8170, 0xc4a0);
195aae321c829dd Hayes Wang 2021-04-16  7663  		sram_write(tp, 0x8174, 0x04a0);
195aae321c829dd Hayes Wang 2021-04-16  7664  		sram_write(tp, 0x8178, 0x04a0);
195aae321c829dd Hayes Wang 2021-04-16  7665  		sram_write(tp, 0x817c, 0x0719);
195aae321c829dd Hayes Wang 2021-04-16  7666  		sram_write(tp, 0x8ff4, 0x0400);
195aae321c829dd Hayes Wang 2021-04-16  7667  		sram_write(tp, 0x8ff1, 0x0404);
195aae321c829dd Hayes Wang 2021-04-16  7668  
195aae321c829dd Hayes Wang 2021-04-16  7669  		ocp_reg_write(tp, 0xbf4a, 0x001b);
195aae321c829dd Hayes Wang 2021-04-16  7670  		ocp_reg_write(tp, 0xb87c, 0x8033);
195aae321c829dd Hayes Wang 2021-04-16  7671  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829dd Hayes Wang 2021-04-16  7672  		ocp_reg_write(tp, 0xb87c, 0x8037);
195aae321c829dd Hayes Wang 2021-04-16  7673  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829dd Hayes Wang 2021-04-16  7674  		ocp_reg_write(tp, 0xb87c, 0x803b);
195aae321c829dd Hayes Wang 2021-04-16  7675  		ocp_reg_write(tp, 0xb87e, 0xfc32);
195aae321c829dd Hayes Wang 2021-04-16  7676  		ocp_reg_write(tp, 0xb87c, 0x803f);
195aae321c829dd Hayes Wang 2021-04-16  7677  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829dd Hayes Wang 2021-04-16  7678  		ocp_reg_write(tp, 0xb87c, 0x8043);
195aae321c829dd Hayes Wang 2021-04-16  7679  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829dd Hayes Wang 2021-04-16  7680  		ocp_reg_write(tp, 0xb87c, 0x8047);
195aae321c829dd Hayes Wang 2021-04-16  7681  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829dd Hayes Wang 2021-04-16  7682  
195aae321c829dd Hayes Wang 2021-04-16  7683  		ocp_reg_write(tp, 0xb87c, 0x8145);
195aae321c829dd Hayes Wang 2021-04-16  7684  		ocp_reg_write(tp, 0xb87e, 0x370e);
195aae321c829dd Hayes Wang 2021-04-16  7685  		ocp_reg_write(tp, 0xb87c, 0x8157);
195aae321c829dd Hayes Wang 2021-04-16  7686  		ocp_reg_write(tp, 0xb87e, 0x770e);
195aae321c829dd Hayes Wang 2021-04-16  7687  		ocp_reg_write(tp, 0xb87c, 0x8169);
195aae321c829dd Hayes Wang 2021-04-16  7688  		ocp_reg_write(tp, 0xb87e, 0x0d0a);
195aae321c829dd Hayes Wang 2021-04-16  7689  		ocp_reg_write(tp, 0xb87c, 0x817b);
195aae321c829dd Hayes Wang 2021-04-16  7690  		ocp_reg_write(tp, 0xb87e, 0x1d0a);
195aae321c829dd Hayes Wang 2021-04-16  7691  
195aae321c829dd Hayes Wang 2021-04-16  7692  		data = sram_read(tp, 0x8217);
195aae321c829dd Hayes Wang 2021-04-16  7693  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7694  		data |= 0x5000;
195aae321c829dd Hayes Wang 2021-04-16  7695  		sram_write(tp, 0x8217, data);
195aae321c829dd Hayes Wang 2021-04-16  7696  		data = sram_read(tp, 0x821a);
195aae321c829dd Hayes Wang 2021-04-16  7697  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7698  		data |= 0x5000;
195aae321c829dd Hayes Wang 2021-04-16  7699  		sram_write(tp, 0x821a, data);
195aae321c829dd Hayes Wang 2021-04-16  7700  		sram_write(tp, 0x80da, 0x0403);
195aae321c829dd Hayes Wang 2021-04-16  7701  		data = sram_read(tp, 0x80dc);
195aae321c829dd Hayes Wang 2021-04-16  7702  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7703  		data |= 0x1000;
195aae321c829dd Hayes Wang 2021-04-16  7704  		sram_write(tp, 0x80dc, data);
195aae321c829dd Hayes Wang 2021-04-16  7705  		sram_write(tp, 0x80b3, 0x0384);
195aae321c829dd Hayes Wang 2021-04-16  7706  		sram_write(tp, 0x80b7, 0x2007);
195aae321c829dd Hayes Wang 2021-04-16  7707  		data = sram_read(tp, 0x80ba);
195aae321c829dd Hayes Wang 2021-04-16  7708  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7709  		data |= 0x6c00;
195aae321c829dd Hayes Wang 2021-04-16  7710  		sram_write(tp, 0x80ba, data);
195aae321c829dd Hayes Wang 2021-04-16  7711  		sram_write(tp, 0x80b5, 0xf009);
195aae321c829dd Hayes Wang 2021-04-16  7712  		data = sram_read(tp, 0x80bd);
195aae321c829dd Hayes Wang 2021-04-16  7713  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7714  		data |= 0x9f00;
195aae321c829dd Hayes Wang 2021-04-16  7715  		sram_write(tp, 0x80bd, data);
195aae321c829dd Hayes Wang 2021-04-16  7716  		sram_write(tp, 0x80c7, 0xf083);
195aae321c829dd Hayes Wang 2021-04-16  7717  		sram_write(tp, 0x80dd, 0x03f0);
195aae321c829dd Hayes Wang 2021-04-16  7718  		data = sram_read(tp, 0x80df);
195aae321c829dd Hayes Wang 2021-04-16  7719  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7720  		data |= 0x1000;
195aae321c829dd Hayes Wang 2021-04-16  7721  		sram_write(tp, 0x80df, data);
195aae321c829dd Hayes Wang 2021-04-16  7722  		sram_write(tp, 0x80cb, 0x2007);
195aae321c829dd Hayes Wang 2021-04-16  7723  		data = sram_read(tp, 0x80ce);
195aae321c829dd Hayes Wang 2021-04-16  7724  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7725  		data |= 0x6c00;
195aae321c829dd Hayes Wang 2021-04-16  7726  		sram_write(tp, 0x80ce, data);
195aae321c829dd Hayes Wang 2021-04-16  7727  		sram_write(tp, 0x80c9, 0x8009);
195aae321c829dd Hayes Wang 2021-04-16  7728  		data = sram_read(tp, 0x80d1);
195aae321c829dd Hayes Wang 2021-04-16  7729  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7730  		data |= 0x8000;
195aae321c829dd Hayes Wang 2021-04-16  7731  		sram_write(tp, 0x80d1, data);
195aae321c829dd Hayes Wang 2021-04-16  7732  		sram_write(tp, 0x80a3, 0x200a);
195aae321c829dd Hayes Wang 2021-04-16  7733  		sram_write(tp, 0x80a5, 0xf0ad);
195aae321c829dd Hayes Wang 2021-04-16  7734  		sram_write(tp, 0x809f, 0x6073);
195aae321c829dd Hayes Wang 2021-04-16  7735  		sram_write(tp, 0x80a1, 0x000b);
195aae321c829dd Hayes Wang 2021-04-16  7736  		data = sram_read(tp, 0x80a9);
195aae321c829dd Hayes Wang 2021-04-16  7737  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7738  		data |= 0xc000;
195aae321c829dd Hayes Wang 2021-04-16  7739  		sram_write(tp, 0x80a9, data);
195aae321c829dd Hayes Wang 2021-04-16  7740  
195aae321c829dd Hayes Wang 2021-04-16  7741  		if (rtl_phy_patch_request(tp, true, true))
195aae321c829dd Hayes Wang 2021-04-16  7742  			return;
195aae321c829dd Hayes Wang 2021-04-16  7743  
195aae321c829dd Hayes Wang 2021-04-16  7744  		data = ocp_reg_read(tp, 0xb896);
195aae321c829dd Hayes Wang 2021-04-16  7745  		data &= ~BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7746  		ocp_reg_write(tp, 0xb896, data);
195aae321c829dd Hayes Wang 2021-04-16  7747  		data = ocp_reg_read(tp, 0xb892);
195aae321c829dd Hayes Wang 2021-04-16  7748  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7749  		ocp_reg_write(tp, 0xb892, data);
195aae321c829dd Hayes Wang 2021-04-16  7750  		ocp_reg_write(tp, 0xb88e, 0xc23e);
195aae321c829dd Hayes Wang 2021-04-16  7751  		ocp_reg_write(tp, 0xb890, 0x0000);
195aae321c829dd Hayes Wang 2021-04-16  7752  		ocp_reg_write(tp, 0xb88e, 0xc240);
195aae321c829dd Hayes Wang 2021-04-16  7753  		ocp_reg_write(tp, 0xb890, 0x0103);
195aae321c829dd Hayes Wang 2021-04-16  7754  		ocp_reg_write(tp, 0xb88e, 0xc242);
195aae321c829dd Hayes Wang 2021-04-16  7755  		ocp_reg_write(tp, 0xb890, 0x0507);
195aae321c829dd Hayes Wang 2021-04-16  7756  		ocp_reg_write(tp, 0xb88e, 0xc244);
195aae321c829dd Hayes Wang 2021-04-16  7757  		ocp_reg_write(tp, 0xb890, 0x090b);
195aae321c829dd Hayes Wang 2021-04-16  7758  		ocp_reg_write(tp, 0xb88e, 0xc246);
195aae321c829dd Hayes Wang 2021-04-16  7759  		ocp_reg_write(tp, 0xb890, 0x0c0e);
195aae321c829dd Hayes Wang 2021-04-16  7760  		ocp_reg_write(tp, 0xb88e, 0xc248);
195aae321c829dd Hayes Wang 2021-04-16  7761  		ocp_reg_write(tp, 0xb890, 0x1012);
195aae321c829dd Hayes Wang 2021-04-16  7762  		ocp_reg_write(tp, 0xb88e, 0xc24a);
195aae321c829dd Hayes Wang 2021-04-16  7763  		ocp_reg_write(tp, 0xb890, 0x1416);
195aae321c829dd Hayes Wang 2021-04-16  7764  		data = ocp_reg_read(tp, 0xb896);
195aae321c829dd Hayes Wang 2021-04-16  7765  		data |= BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7766  		ocp_reg_write(tp, 0xb896, data);
195aae321c829dd Hayes Wang 2021-04-16  7767  
195aae321c829dd Hayes Wang 2021-04-16  7768  		rtl_phy_patch_request(tp, false, true);
195aae321c829dd Hayes Wang 2021-04-16  7769  
195aae321c829dd Hayes Wang 2021-04-16  7770  		data = ocp_reg_read(tp, 0xa86a);
195aae321c829dd Hayes Wang 2021-04-16  7771  		data |= BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7772  		ocp_reg_write(tp, 0xa86a, data);
195aae321c829dd Hayes Wang 2021-04-16  7773  		data = ocp_reg_read(tp, 0xa6f0);
195aae321c829dd Hayes Wang 2021-04-16  7774  		data |= BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7775  		ocp_reg_write(tp, 0xa6f0, data);
195aae321c829dd Hayes Wang 2021-04-16  7776  
195aae321c829dd Hayes Wang 2021-04-16  7777  		ocp_reg_write(tp, 0xbfa0, 0xd70d);
195aae321c829dd Hayes Wang 2021-04-16  7778  		ocp_reg_write(tp, 0xbfa2, 0x4100);
195aae321c829dd Hayes Wang 2021-04-16  7779  		ocp_reg_write(tp, 0xbfa4, 0xe868);
195aae321c829dd Hayes Wang 2021-04-16  7780  		ocp_reg_write(tp, 0xbfa6, 0xdc59);
195aae321c829dd Hayes Wang 2021-04-16  7781  		ocp_reg_write(tp, 0xb54c, 0x3c18);
195aae321c829dd Hayes Wang 2021-04-16  7782  		data = ocp_reg_read(tp, 0xbfa4);
195aae321c829dd Hayes Wang 2021-04-16  7783  		data &= ~BIT(5);
195aae321c829dd Hayes Wang 2021-04-16  7784  		ocp_reg_write(tp, 0xbfa4, data);
195aae321c829dd Hayes Wang 2021-04-16  7785  		data = sram_read(tp, 0x817d);
195aae321c829dd Hayes Wang 2021-04-16  7786  		data |= BIT(12);
195aae321c829dd Hayes Wang 2021-04-16  7787  		sram_write(tp, 0x817d, data);
195aae321c829dd Hayes Wang 2021-04-16  7788  		break;
195aae321c829dd Hayes Wang 2021-04-16  7789  	case RTL_VER_13:
195aae321c829dd Hayes Wang 2021-04-16  7790  		/* 2.5G INRX */
195aae321c829dd Hayes Wang 2021-04-16  7791  		data = ocp_reg_read(tp, 0xac46);
195aae321c829dd Hayes Wang 2021-04-16  7792  		data &= ~0x00f0;
195aae321c829dd Hayes Wang 2021-04-16  7793  		data |= 0x0090;
195aae321c829dd Hayes Wang 2021-04-16  7794  		ocp_reg_write(tp, 0xac46, data);
195aae321c829dd Hayes Wang 2021-04-16  7795  		data = ocp_reg_read(tp, 0xad30);
195aae321c829dd Hayes Wang 2021-04-16  7796  		data &= ~0x0003;
195aae321c829dd Hayes Wang 2021-04-16  7797  		data |= 0x0001;
195aae321c829dd Hayes Wang 2021-04-16  7798  		ocp_reg_write(tp, 0xad30, data);
195aae321c829dd Hayes Wang 2021-04-16  7799  		fallthrough;
195aae321c829dd Hayes Wang 2021-04-16  7800  	case RTL_VER_15:
195aae321c829dd Hayes Wang 2021-04-16  7801  		/* EEE parameter */
195aae321c829dd Hayes Wang 2021-04-16  7802  		ocp_reg_write(tp, 0xb87c, 0x80f5);
195aae321c829dd Hayes Wang 2021-04-16  7803  		ocp_reg_write(tp, 0xb87e, 0x760e);
195aae321c829dd Hayes Wang 2021-04-16  7804  		ocp_reg_write(tp, 0xb87c, 0x8107);
195aae321c829dd Hayes Wang 2021-04-16  7805  		ocp_reg_write(tp, 0xb87e, 0x360e);
195aae321c829dd Hayes Wang 2021-04-16  7806  		ocp_reg_write(tp, 0xb87c, 0x8551);
195aae321c829dd Hayes Wang 2021-04-16  7807  		data = ocp_reg_read(tp, 0xb87e);
195aae321c829dd Hayes Wang 2021-04-16  7808  		data &= ~0xff00;
195aae321c829dd Hayes Wang 2021-04-16  7809  		data |= 0x0800;
195aae321c829dd Hayes Wang 2021-04-16  7810  		ocp_reg_write(tp, 0xb87e, data);
195aae321c829dd Hayes Wang 2021-04-16  7811  
195aae321c829dd Hayes Wang 2021-04-16  7812  		/* ADC_PGA parameter */
195aae321c829dd Hayes Wang 2021-04-16  7813  		data = ocp_reg_read(tp, 0xbf00);
195aae321c829dd Hayes Wang 2021-04-16  7814  		data &= ~0xe000;
195aae321c829dd Hayes Wang 2021-04-16  7815  		data |= 0xa000;
195aae321c829dd Hayes Wang 2021-04-16  7816  		ocp_reg_write(tp, 0xbf00, data);
195aae321c829dd Hayes Wang 2021-04-16  7817  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829dd Hayes Wang 2021-04-16  7818  		data &= ~0x0f00;
195aae321c829dd Hayes Wang 2021-04-16  7819  		data |= 0x0300;
195aae321c829dd Hayes Wang 2021-04-16  7820  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829dd Hayes Wang 2021-04-16  7821  
195aae321c829dd Hayes Wang 2021-04-16  7822  		/* Green Table-PGA, 1G full viterbi */
195aae321c829dd Hayes Wang 2021-04-16  7823  		sram_write(tp, 0x8044, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7824  		sram_write(tp, 0x804a, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7825  		sram_write(tp, 0x8050, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7826  		sram_write(tp, 0x8056, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7827  		sram_write(tp, 0x805c, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7828  		sram_write(tp, 0x8062, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7829  		sram_write(tp, 0x8068, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7830  		sram_write(tp, 0x806e, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7831  		sram_write(tp, 0x8074, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7832  		sram_write(tp, 0x807a, 0x2417);
195aae321c829dd Hayes Wang 2021-04-16  7833  
195aae321c829dd Hayes Wang 2021-04-16  7834  		/* XG PLL */
195aae321c829dd Hayes Wang 2021-04-16  7835  		data = ocp_reg_read(tp, 0xbf84);
195aae321c829dd Hayes Wang 2021-04-16  7836  		data &= ~0xe000;
195aae321c829dd Hayes Wang 2021-04-16  7837  		data |= 0xa000;
195aae321c829dd Hayes Wang 2021-04-16  7838  		ocp_reg_write(tp, 0xbf84, data);
195aae321c829dd Hayes Wang 2021-04-16  7839  		break;
195aae321c829dd Hayes Wang 2021-04-16  7840  	default:
195aae321c829dd Hayes Wang 2021-04-16  7841  		break;
195aae321c829dd Hayes Wang 2021-04-16  7842  	}
195aae321c829dd Hayes Wang 2021-04-16  7843  
195aae321c829dd Hayes Wang 2021-04-16  7844  	if (rtl_phy_patch_request(tp, true, true))
195aae321c829dd Hayes Wang 2021-04-16  7845  		return;
195aae321c829dd Hayes Wang 2021-04-16  7846  
195aae321c829dd Hayes Wang 2021-04-16  7847  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4);
195aae321c829dd Hayes Wang 2021-04-16  7848  	ocp_data |= EEE_SPDWN_EN;
195aae321c829dd Hayes Wang 2021-04-16  7849  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4, ocp_data);
195aae321c829dd Hayes Wang 2021-04-16  7850  
195aae321c829dd Hayes Wang 2021-04-16  7851  	data = ocp_reg_read(tp, OCP_DOWN_SPEED);
195aae321c829dd Hayes Wang 2021-04-16  7852  	data &= ~(EN_EEE_100 | EN_EEE_1000);
195aae321c829dd Hayes Wang 2021-04-16  7853  	data |= EN_10M_CLKDIV;
195aae321c829dd Hayes Wang 2021-04-16  7854  	ocp_reg_write(tp, OCP_DOWN_SPEED, data);
195aae321c829dd Hayes Wang 2021-04-16  7855  	tp->ups_info._10m_ckdiv = true;
195aae321c829dd Hayes Wang 2021-04-16  7856  	tp->ups_info.eee_plloff_100 = false;
195aae321c829dd Hayes Wang 2021-04-16  7857  	tp->ups_info.eee_plloff_giga = false;
195aae321c829dd Hayes Wang 2021-04-16  7858  
195aae321c829dd Hayes Wang 2021-04-16  7859  	data = ocp_reg_read(tp, OCP_POWER_CFG);
195aae321c829dd Hayes Wang 2021-04-16  7860  	data &= ~EEE_CLKDIV_EN;
195aae321c829dd Hayes Wang 2021-04-16  7861  	ocp_reg_write(tp, OCP_POWER_CFG, data);
195aae321c829dd Hayes Wang 2021-04-16  7862  	tp->ups_info.eee_ckdiv = false;
195aae321c829dd Hayes Wang 2021-04-16  7863  
195aae321c829dd Hayes Wang 2021-04-16  7864  	rtl_phy_patch_request(tp, false, true);
195aae321c829dd Hayes Wang 2021-04-16  7865  
195aae321c829dd Hayes Wang 2021-04-16  7866  	rtl_green_en(tp, test_bit(GREEN_ETHERNET, &tp->flags));
195aae321c829dd Hayes Wang 2021-04-16  7867  
195aae321c829dd Hayes Wang 2021-04-16  7868  	data = ocp_reg_read(tp, 0xa428);
195aae321c829dd Hayes Wang 2021-04-16  7869  	data &= ~BIT(9);
195aae321c829dd Hayes Wang 2021-04-16  7870  	ocp_reg_write(tp, 0xa428, data);
195aae321c829dd Hayes Wang 2021-04-16  7871  	data = ocp_reg_read(tp, 0xa5ea);
195aae321c829dd Hayes Wang 2021-04-16  7872  	data &= ~BIT(0);
195aae321c829dd Hayes Wang 2021-04-16  7873  	ocp_reg_write(tp, 0xa5ea, data);
195aae321c829dd Hayes Wang 2021-04-16  7874  	tp->ups_info.lite_mode = 0;
195aae321c829dd Hayes Wang 2021-04-16  7875  
195aae321c829dd Hayes Wang 2021-04-16  7876  	if (tp->eee_en)
195aae321c829dd Hayes Wang 2021-04-16  7877  		rtl_eee_enable(tp, true);
195aae321c829dd Hayes Wang 2021-04-16  7878  
195aae321c829dd Hayes Wang 2021-04-16  7879  	r8153_aldps_en(tp, true);
195aae321c829dd Hayes Wang 2021-04-16  7880  	r8152b_enable_fc(tp);
195aae321c829dd Hayes Wang 2021-04-16  7881  	r8153_u2p3en(tp, true);
195aae321c829dd Hayes Wang 2021-04-16  7882  
195aae321c829dd Hayes Wang 2021-04-16  7883  	set_bit(PHY_RESET, &tp->flags);
ac718b69301c7c0 hayeswang  2013-05-02  7884  }
ac718b69301c7c0 hayeswang  2013-05-02  7885  

:::::: The code at line 7474 was first introduced by commit
:::::: 195aae321c829dd1945900d75561e6aa79cce208 r8152: support new chips

:::::: TO: Hayes Wang <hayeswang@realtek.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106252359.kTiPijhi-lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBbU1WAAAy5jb25maWcAlFxbcxu5jn6fX6FyqrbmPCSxZDtx9pQfKDZb4qhvJtmSnBeW
Ircz2rElryxnkv31C7BvZDclzzlVZxIB4A0kgQ8AO+9+ezcgr4fd0+qwWa8eH38NvhfbYr86
FPeDh81j8e9BkA6SVA1YwNUHEI4229efH593fxf75/Xg6sNw9OH8/X79eTAr9tvicUB324fN
91foYbPb/vbuN5omIZ9oSvWcCcnTRCu2VDdn68fV9vvgR7F/AbnB8OLD+Yfzwe/fN4f//vgR
/vu02e93+4+Pjz+e9PN+9z/F+jD4sl6dDz8PV18eHu6Lh6uH+2/Dq+Hwfvjl8+ri4f7z6PLL
+cWn0X3xr7N61Ek77M25NRUuNY1IMrn51RDxZyM7vDiH/9W8KOh3AjToJIqCtovIknM7gBGn
RGoiYz1JVWqN6jJ0mqssV14+TyKeMIuVJlKJnKpUyJbKxa1epGLWUsY5jwLFY6YVGUdMy1RY
A6ipYASWkoQp/AdEJDaFbXs3mJhz8Dh4KQ6vz+1GjkU6Y4mGfZRxZg2ccKVZMtdEgCZ4zNXN
xQh6aWYbZxxGV0yqweZlsN0dsONGdSklUa27szMfWZPc1pxZlpYkUpb8lMyZnjGRsEhPvnJr
el5iwEKSR8rM3eqlJk9TqRISs5uz37e7rXWq5IJYvcg7OecZ7RHwT6qilp6lki91fJuznPmp
bZNGcQui6FQbrkdvVKRS6pjFqbjTRClCp3bjXLKIjz3tSA63uZ2D0RsRMJBh4CxIZM28QzXH
A07a4OX128uvl0Px1B6PCUuY4NQcRDlNF20nXY6O2JxFfj6d2vuElCCNCU98ND3lTODk71xu
mArKguqEc/uuy4wIyVDIVpY9fsDG+SSUtubeDYrt/WD30Fl4d/bmps17GqzZFI70DNadKOlh
xqnUeRYQxWotq80TWEifohWnM7iFDFRp7WSS6ulXvG1xmtiLA2IGY6QBp57jULbiQcQ6PTld
8MlUCybNEoVfN73pNqdcMBZnCno1NqzptKbP0yhPFBF3breulGfmdXuaQvNaaTTLP6rVy1+D
A0xnsIKpvRxWh5fBar3evW4Pm+33jhqhgSbU9FEelGbkOReqw9YJUXzuu414csz+O33VBksG
MNuUMriwwFf2KF2enl949YDmWSqipE8TkltGRfLGjAVcouEPzIDVPv0DDRlNCpoPpO/sJXca
eO2A8EOzJRwx6yxKR8K06ZBwOaZpdQM8rB4pD5iPrgShNcPVV8vSxtfFY+/RdZfa9sFn5V+8
G8JnU+iycxsa54VeKgRbx0N1M/zcHlmeqBm4rpB1ZS5Krcv1n8X962OxHzwUq8Prvngx5Gqi
Hq7lZycizTPfdNCTgeGDM+Z4CCV1Iv1rAxd2hAV+RXR49eJ4AAx7hIQpvyidMjrLUlAGWhWA
MY5hkMAOjM83K/JOA6xsKOGcgxGgYDMDzyCCRcTyC+NoBvJz4/GFBd3MbxJDbzLNwW0gGmiG
EYHBDd4pAG8MvJFv6EBHX2Ni3ZFALx2LaiTSY00vO6JfpfKtcJymaP7w7w5uTDMwRfwrQz+I
th/+iElCHSV3xST8xTOEgQeAtgK8PjSFCwguimiGMA+NYWr5ZRBLRTYlCSAXYdG7YKj8DTaD
skyZqABvqbVTWWjPtLQtnrnFYOI4nker6wlTMdx83fPC5YHpkUOYruP7SkxW+jmLai6uDUEt
jbMoBNUIewUEMEaYOwPlEPt0fsKVsXrJUme+fJKQKLQOqpmTTTBYwibIKcBBC7pxCzTzVOfC
8UokmHPJapVYi4VOxkQIbit2hiJ3sexTtKPPhmpUgFcQHabj8LKwHvOogTHeK/QdeYNUMS5q
J6mxqzGhM2tyPjF5l9DOPs2oHccAMHRQITRlQeC1LeZa4M3SDaAzdroKhLNi/7DbP62262LA
fhRbcK8ELDhFBwsgqUQq1clqO/H6pn/YYz2xeVx2VqIi5wzLKB+X6NaOJOOMKAjsZo4Bjogv
csAO7O7IGNQrJqyGG90udAgILeISjDxcsjT2dmmLTYkIAA04JzoPQ4gdMwLDwDZDUAjewrnV
isWlTYJgkYec1kbJQpBpyCGAnnjGN5bHOCJpYyQ3/m2MQEYvRk7PGf10afdqNjbb79bFy8tu
D1j4+Xm3PzjbDZ4VzPbsQuqLkR/wgsT11c+fPg+LrJ8/7Slcnv/09nJ56evg+tM5IlobQMH+
lSgXZhX5GDdn0OrMnkKYIZya2OYxo1UAnrPMJfcplaCJo51VI+3IquM4h/gBLvTU7aula7M1
NQvIxuDbMQ3eiSkT5nJAsMzsDe/vWXOhApnaXRtVoXFIAk4sJ3cxGtthNUysY43imGRaJAAa
IJ7WMVneDK9OCUDE+8XPry/tW/04cnZ3icB4Rd5cDUfNRVJgQEu0LPMscxNFhgwtwohMZJ+P
cS0gsT6jDm6nCwYBpHK2znJjRER3PQ+bkaQKqdMc4PF1k1Ar0WEacwWGA4CtNtfX9lUmZWF0
0Z+KY/0sYuOq6u56zoSPmSgRD2IEycc2ajAi1foxjhfpmNn3Y1Im4EzaQ96MKkPxuDqgUffZ
CQmb50tF1Mcro9fLZUgCB28j9dMSiF6TgNzrq2NcvE0su75e0qNsAs5QXH++8sentzHMqGcM
cVCwZTSLB+kzpoXR+bU5xs26lmi5ta36+VNPMgNh2oACQIwBoRmmxjx6yeUYYHxoS9nt+Yhq
mfFjnfTkZEyHbwqD0FuzcmZjVo9LXt3/QH9+36RZG3Pk49Y8j0YbOAPef5JDQGWjSpJBDEAE
wXSGlSUZhPvif1+L7frX4GW9eiwTI210AFYO3PKtF5L4W9cd8/vHYnC/3/wo9vVWYwMkd0fA
rNPREcoGFsXu2LrBWijqmPLurbKB2a57yjCzVYJmO182PD/3bjWwRldHWRduK6e7cyvj+vVm
aBUIYqKmADXzqBNNufQ6mmhvs8ueLnSe8DiLWAwOzotZjY1iiTFEVdp4mqossi2iX0bA3+Zd
awfOQIFIJe1AstYSTnNAEdHYdsQ8itiERLWd1XMS5ezm3DU1lzMD+bxpBmAPP1V8Fw0YlFjl
Uy4b71WWObpkAxlL4uiiicowb4w+VX9NE5YCGhWt16RxYMowbbWALcE1VlBJOnkDy1v4zWl8
CuzXp9Sc3PHrS//YhjICO2c5USREY+ci2A1NT6Rvb9pQEPMDgUkJpG7KxsgFxcPq9dEQMEP4
MoAb1lqotV33q8ccrPbF4PWluG9nHaULPDGYarg5/2nKZNZFMLuXhqFkCrjrDreq4gBOET52
Nr2TgP1bgfOOgDJZgXLk65rX6KqjGjcJnJOIf+3tpVMoW+3Xf24OxRpzcu/vi2foFmK0/r79
kceZhpiHOXcZ87oAQ2YMrw6LwiOVMgOcWQgxDkcQmycwr0mCqTKK6ePO/YQ42lTKFE/02C1b
mY44RMKIFAGrdMtBsy5+KamCKT+jpGJdMOykcgw/zBNqjBQTIgXomfzBqGvr2iKUaT+FAKmP
0iSoDj1GdaM9wT5cX8XDuzqR5woYgI7nS/eqXzLWcRpUxcbu6jDS0RC/lhC50rUmduqmlCuz
B70EgRsptXSTSC37DPK4uztmys5paQMLPQHbD41LTInRs5eNWe83REqDiZfC1dWCwPnCEMHo
i8BuzYkCwxj3lA5TTWJeZrRpnC3ptOtNFozMEF0zTAgReptz4R/OGHAsztXFYI9GJKMY1Zxg
aYj1y2igvV4lx5enV2ldlrL781R+upfnVLnHSMCBquaVMYp5CWsD0iCP4L7gDcXcIYYenv7Z
Es9rUhZN8Zx0ZADnKuSBSLpIuiLNpTAjmPyLs8+t4py481TQ2rrCtnEyhxgM3IbVkEagUY0J
uQURgcVIsWrPJzIHlSRBj046RqEKX8t7i8r2TX6OE+ws3UczwqV3AydROROxWHoUJhVYG+WV
OcFqmqMn0nCuAjv/jyGynZjr6tncgGP5cze4NEGhubkmH1ZD+glN5++/rcDfDv4qUcTzfvew
6QJ7FKvmfyq7asTKxBmrErxtcuzUSN0M2huOsR4Y7luMGXHbt5gMsoxxdAsdVpfHFxNX1wrg
KlbX0llu2Ykx7oD9E8AAlRzu3q0bMNVlorGceIkRH/fpiGQngitvualiaTU8d/LglQAizcAL
ElGiAp2lZRS+GhAILcadBQBBx7fdyeC5CWV3DtLAPuJPxqNA+foIcD4Vd5kXBWWr/WFjsJ/6
9VxYcAdmrbhx/TXCtEcnNBVJK+M7j3zZ8u2mqQxPN4zBnvibAu4X3N/YCq7oye5jGaTS6b7W
lwyw6D7rQbyYJ7AWmY9PDyzTCGYn9fL608kJQKy3BCPB/INFQfzGAuXkLRXkEdi65Vvd5Kf3
b0ZETHx6YiH3kfH51Kdr/75ZN8E3ozr67xxF+wbEt8azm5RS+Y4pbSvq1qkFOZ6WaUYse1Zv
79qtbNmzu7H3Utb8cXhrW053vOasymTYqgB2trxvMgPgnieu3XJdAVHg1KkW8cLjhxLEBQCl
IpJl+HSFBIFA5GoeAtQaYD+L9eth9e2xMC8+B6bGdLB0MeZJGCsEEdbmRSHtlOzxt4GxzdMT
hB2eBxKtZSk7llRw7+ueih9zaSEnHKYCy41Sjy2hTD8WT7v9r0G82q6+F0/ekKzKY1ihNBBA
e4HJgIAp6KLNkEilJ7ZzMTqfMZaZcqO7YzKLAL5kyiAAwJTy5rJdDQAc2itXISYXDHfYX7MC
0yZ6Ra4xoArqK+AbLAtwZJzbtVtprbfeMYP1wE6Zk3Jzef7lUy2RMDjLGVZaARPPrKYUUH1S
F1Nq9YkU8M3CLe/QmHjm9tUNS81PoxU8qBApNs+YGO6Jc+COynZeVbzd4PrSX4c7McLlf9xg
6s+qH21y5MHHMfmbs/vi4XF1KM5cya9ZmkZtp+M86OuwI3MRAhw/MdmOuMFnqe9hoUf85uz/
vr3en3W7rDvzuhDTgXVGyjXUv8xs7RMU16C4QzE5ln5Ooaw9VakQK0cZ1DVnzEfMOg8D4Sbg
RTj2Gg9Mg3nr7IsNFCvjQRJ5uJgszazVzPBCmnfQtr07btLa69ok+pPi8Pdu/xdAc8vwWaaG
zpjyu38AGP7SSHKkBdDx9TlG2zERM98zNIaGMMP39lLy0ALLdVuInUykB6qNs47WQaYM7X1w
T9mZCRXriNhBvVR2JCB4MHFfpBiKnkOjKnvgN7yVXCx6vWkaWhMwHV2fj4bOa5KWqidz4X9S
ZsnEHZnGWNNye53fWqS5UwKNIur8GNnqIdHM7mCuASFEzCXzLAgcC24IGAQQ/9SXoyvPdAF8
WOFSNk3Lybe9MsZwvVd+k4pLM0jKyw2o75VKkEh8VJjixwPOLsO5ICYQ8XlJiW+z7bC8pgDC
JhMPGQLMbOymHQy29HXlMton2u0qAfHN6pGsgm3kfc1pXlVate2ptHb+Vihn2fgbomi/Bg1T
5T67a1jxlDvT1GKJQOJOu2/VxrdRx+AMDsXLoU49VIarx+owbCPVAq5YkKBF7Nlq/VdxGIjV
/WaHaYfDbr17tMAcgWPoBHvwWwcEghAZkTk7dsiE93GSSGUDlMnyAxzwbbWE++LHZl0XI+3I
YcbtPPynrDwg1tu3W4aJV59xIXdY8sekcBgs3YPbcKbB0tP0jsS2gzg5VQuSEX9MN/ah8ZCP
tcDsSru4Bcekrr3cBVuqzgM7Q8Ln7RZmDCd444eObY8MybjNGJC378lw1QwNFotSRKOYJQNL
Lft9m7QOzM+8ogTsKtgkGHvEMANbJ/NQxJRgHNzajlpilMwfzVhyx55sNCJUBKT/VqZho8qs
XDGhtbY6FAMZBPUwBEUYL5Vw6gYWt0H8/0Tq5uxps3057ItH/efBwm6NKLhr36OHhh+xziuV
mnHieYvVt6xhWAcPuN2AZJKf6gkghTbvxLC6W9YBm3sezrhtzsrf9bxdIk+cj/Qqau+dCpjK
L34/SQkPfUY9pE4HIeifT7givjQtchNqm+aSgDmDPjEn9jlD6tS0dQaT0yByUHxlzVf7Qbgp
HvGl6dPT63azLmu8v0Obf1W2xbJ/2FNVMa0m6AwSBj5Ig5wsubq46IobIj7pOdUI3+r4Go7M
uo+0jMU86jZC2onBSnZPlYZcTqFL7W2GVP1dK2m+RVQc6OXYCVhmPiVXZOzySEN5ES5EctWZ
SEnsr6VkXI/qxVtu+x8djgb8SYLPU1w8wUOLEC0AiiS2OQoJj9IOjgMHqjCmrFDTsTo5xXfm
f/AmEgpKPxh0XXZGKRFOWJzRGAK0fpKbvl+v9veDb/vN/fei94yt7Nh6xtaGUmXdZ8qizOv5
waGpOHMT8zVNx1gt8udeFUkCgrU23yMZUQ4achGbPLH5ZrbWRbjZP/2NzzMed6t780yr1vcC
cC3m7KwtqEkmHg7wkyUrE2gewNSDWC9j2lamzF2u3depxYbdLt/x24poJeushzft211Rgz+w
roYhjpU5rKFhFKWLI7xjVHQ0geCdE1nR2VwwPzooBRDcVK11+aLKt3Gxvk2lnuX4TbWbRShp
VQcZ63CbD0mxbJ2r1LzJsBwVmzgZjvK3e9srmmO3GlrcJ8ax/YFJ3aO47bemdNwXvPAOrcnc
fmYQIHSfwuEyJy/sKB6YIYSkJT7wPyU8cj+bp1U9HxanS2VH2BADucnTitB8SuE8uOpaPfgj
YbT8ZsH+IoF6v/mo9zKRXlSkmhvcljmeV/sXNwZR+PDgs6mT2LMGsl1CcSEZMNOyonZkYNih
wHxu5um2ZgWAuHGpd1W19f3waAfm8ZL5msMtCfYF8alPmkR33s3tq8FoJ4e/DuId1lnKz2TU
frV9eSy9U7T61dPXOJrB9e2pxCzjiD4MD0JEy6jZ37gloeogDIUPBny1oq6oCAPsy2/0ZRj4
3LqM3eHNhjqvMpDSzcojrSmnwQ2Liezk18ovgUn8ESLkj+Hj6uXPwfrPzbMV+Tqd0ZB7p428
P1jAqLFKRzSKBmBMkhlEloGa6qE79w53dJJ72Tn3IcChoYc26p094ksEGE4aux2QsWSJA4hO
6KksRq2enzHJURHNG0ojtVrjxyfukUR3F7Elrixzg1yza9M7GXs2syRXT2eOrKQWSsNjzfEB
FlG8+zjbIzlhWNh+WwziI1NWOi4ZEdVRfpvxfkNv5YfTxePD+/Vue1httsX9APo8nqWB8fD5
bxg53xM5ZL0QXLHym7K7rp5aqVT5ozxzJuk0G13MRlefjopIqUZX/ptu2FFPJY5yj59W+L8g
7oHFd1oqVfhEFqNfu75XcZkwL26QOxxde0zhKHarUiWw3rz89T7dvqe4I8dQttFaSicXVtKQ
Tst/yEbH1rPslqpuLtsj8PbulvEqQGJ3UKTobrXaWMeEIe+odgVZ6K6AvTWAVJBdO2RGKcz1
O8zO+pqnOw8Qco9bTQXLjKnO2HlGeEQAvzc5LjSuPnipi+OeaTXxGyrLTD7K8Gr+V/nnCCKd
ePBUVpm8d8eIuVO4Nf+KUI05myHe7rinUxcpWWSTrLs09SX8d4+OX5pKXC6y+t+/OLWHriQ+
ppynkTF+x+aB4ljsP9JrPuauboCgF5F5tSynWK7sXD0jMGb/z9m1NbmN4+q/0o+7VTsnuli3
h32QJdnWtGSpRdlW58XVk/RMuja3Sjq72X9/CJKSCBJ0Tp2pSibGB1IkxQsAAtBWpU4KPBMD
hwMkvM/AvjlV29psp6jOlFwQx+GRq1tchKWU0VGbXN1O/zfcCY5Y6eBEuJkfkX8xJ8prVRK6
77a/I0L5eMzbGj119lVBNKRY8N/oGqwDL1quSp5BitGdOSQAl0GIJh1jtBtI6e0KUYrKRVs4
gCkTrXZhKkhOVzkuRNo2tHNb3TFzTwCqYSsXJJHTgJ/dB4O+y7dcu2MmFVuNziLTF0SjkOco
aomUSF6+v7M1IC7XML7C+HxkYXP2At3VvoyCaLqWfYfGRSObdieShzZqcW27fcTvmXc5CwO2
8TTpjSt8TcdOYN3nL7wu9EuJvC9ZlnpB3iBhvmZNkHkenVlHggEVuzWPxMhZokiL4ZqB7cFP
EuTWOSOiJZlHX6If2iIOIypzSMn8ONWEW1hCvIt8e+9DK9UHG3IUuTZBmPt0ZeWuckRxnnsI
q6VsZjWr+V/31SPYQNdHFIFaA/KUq3q4KrNOOEm/5mOAMpesZDpmVOEQD1Y8Eo1SeJtPcZpo
9kpFz8JiignqNG1sMtcLrml26Cs2WVhV+Z63Qecm7qjMx/X88+n7XQ13IT8+iQwM3z88fePS
yCtol8B39xEO2vd8Ub18hX/qWZOuDOkK/4/KqOWpjDXW7BMYbQHOwcEhB/NhrymMVXFANxjg
d3fl+vdkmsRXqVzfO5DptS61XU3+UPHOz0/fuSDyzAXEL+9Et4VK/ubl/TP8+Z9v31+FcP/h
+ePXNy+f//xyx/V1XoGUFnSvxNm5uuSbABfG0VrntL3boVoV472ntRsoLmLF6q5wKOHAIkw4
OztQDloLugknzLPnzR8//vrz5SfVftB6IDnPPELgkj4LttYiE/7qbaftxkNel5D6D2X5KPRk
YKIMikQQFGU7N6iqT6gxqhV3r//9+nz3Nz4b//WPu9enr8//uCvK3/gS+bvdKaa1sDgMkjYS
tD1B02P2RaOW3R5Nc0CEmpC7bGiCpen2e8OXBzOwAlxCIDOM9SZF98d5NX433oOwVNojz0/k
hYyfVIu/BUYdNKJOSPdJ1An0pt7y/1m1yiKUb+UCQypLnK9TQkOvtXRWs4w+W8N5ERkM3ONZ
Hsi9gprXy3406rMTonKhxdqRLlO7bDuIloIAQgyJkF2jgl70VhqnuM747ctHcLi++8/L6wfe
ts+/sd3u7jPfev79fPcC6XP+fHqn7dWiivxQ1PryXMUYAIrqTI25wB66oX4wGrRjyMInQo93
1DVwq62deT212EIqM6PxHYzrQWQNV7Dx5rqCVoqdwrMovlGxoFFykMI2UYzq0IVVvR7hN0Ad
6Ns18QqiSFu6s8BVbQG6zR0ziCUMtwg1Gwd32PU8pCVlN5lT3iChfCy46GC4dAMNAqP02w+g
9XjvBRJcbyEj4+w2Rsjp8/iBp8PYsYO66tEtf3kBIf9tx6vdjpoH2aU+lrt80PQevsPzjmLh
uK3xZbHqLC2tj+38fFp0AzemI9mB/vCIgqS4vqznZ20gMetQ7/dwi6UDu3qqSkWS2kld3/Gf
Tjte3pa4Bsj1alAeTvyEqHODOqVpksVbTN0OXV6Cp5WkalOsjTb+xgM6PauKNpmmycRXNN2k
qU9Umya3Skl/2XkwVweSusjL3NmYQsQNWPisXuR8TixdXJSsvjkxTGum0WA6jlVznS75o9mR
Bk7p0fd8v3A8tc25Yt40uMKZ6Ht7GkjTKeD/mY9r62KoGteTONhBBmGqlARG/1ZZVrW1WVbm
cchdz8zH1Asn3IcHqp6hAtn73lHNUB0rljOrEN965g6RFz+sMIuwkeszE2WfAsmfzyquVePm
ln0apvZQA3ksUt81YqLYJqWKpXFyq1CcmYXO9VgxfsTThZRmu+dbQjDsjY1MzYh7lmZZRAaa
tGXdXeV+qB9gtREW0+0E0WCRF/tmuXrcoiTykgpb/rHm+7QBmA5igih07l3FuV1Nbs9IGZc0
VoB/X90a9Lp/2Hh+ZlNTL94sWyqn3bU/Pr5ynfL5J7bsquHgp/pkNVXRRT9cjZ15pFTQVFM1
2IMtOVqIuNgvemHB7D1ec8dh1wlYyAtgu6hWsqfWAGtqdG8GvxfnEoenueBhbe4w/QkY/FbF
v2LioZCXCrZz60gHoMh1oytQ7vNLpZsAgdZX+5ydcAZfTh7GJvUjSmhb0QDX1OTHJJ0mTOR/
DN/8uc1wWvoJ5XiMObKrn6Q5rlXIGGUhpAUSuVa6tVYHjgUBHE58ZGoNt1oLULutKQFveQlt
FusGxZnOhizREzVp9JSk86WYROZAzkhGIvsmDjxikI5wgqbEQ+Bo3lIdbQuWpCGdjGrmGY5l
LTXAG8MBI8ZOW1aNVi4nmwVjeVNf2yjGWTEFcAySwN22bdXc12RcM5QdWr7Zn4zBq3rWHYM0
Tc1H3ReBn90ehrf5aSBvO5b+TWkQ+t7VWnQA3udNW+fUK3jgZ/zlkrs6cmCdXRuXoyJ/8s3q
YIRleIyjsro/WK1jNVeIc3wTAvRzE1PztThkgeeRS/yh8H3/5h4SXiu84C4N2fFLjj8+YLgV
rztmcS1ZEEeBtjldLnpGTfhlX90eagWMA+kazXtDeY3WrKRaezzrOtOZC8bbBvkfzjRbQ5Xm
vs9ff7w6LXazs/jaCiAIx3LSEQjA3Q4usHBghUTkpyvucaCiQNocYvUVsnhAfYTc/ot9A52p
qhjokcaVlcHye/doMCC4OnPU7mB1do+V5SFglL2vHrddPtDnsNbu241m8G0HZ7NFViQ9wan4
LTefoir03FI6VPdceiehQ368IGlQw+63/AeJECe6Qlk11FzfuORcLqEj41RHulNxYFz6rWh7
hxqvmlFrcGjrjWHtECTDF13Q6As7CbVbo4KdF9oU0afOqniHtx0TJJPrCyj07LrCjZs9N5sU
bSxKNC+fw9O398KduH7T3ZnmX9UP9ZO4OLZ6KgjXOvUcoeYS53+bl8sIb+ptzwK73iGn3Aol
pvSmqecKH9N2WomqqyAC4aRWZvTGBYaCrKffElTh9IXoJ2Ps9nlbmVfsM+16ZFGUEh1bGBp0
Y0e9siXvBrVLy63nw9O3p3d8i7RvwUc9m89Zv7/ojqxrhM/xkcn0m3qw5zgzrLTDxaZxvpUM
2S7wd4og/jrjmvX4qNUtL0qdRPUlnCCKNeNMCRd5YDEGN3r7kuP528vTR9u0pjYg4cdR4EwT
CkqNRKjS1+HL598E8F3WK66OqOzGso57CLk7trT/oOJp8yn0ycSqiGHCsy+XsTpNjbNGGNA8
/O7KF87jIP7N/ukbHHgD1Yj2K59ftvGhB1mE1bv6bNckyVpdZl9YURxJW8+C+3HNkmkiyyrM
6bRhMdIHgWLbFm0cTvarUHR7RBSu9qHfx3y/BBnd5KBenKOIIwpMMan9kW+POLSLhN3t18Mw
V9otfphQIomPNaFEJteebM4KOasWLPVx11STYygNjv/LUPJf1SQiaep9XfCdhApjmqdKr39c
RyOiOby4daLtxyh1lBe8Za7XeBQqxfpb5i2HJNeH83X7OFbFQVciBCy80WQQTgVcZnELv6qv
wmh5547XPaOMCsdT06izYpXiZB59R3TauVhjiDTaqdzurYETSed0E6VGBw0InozjiFWyAWt+
1D1XVmW3BoMK15zCpxlJ8gIRSfhFpAotXwKTtKuKC4Jhl5NJiAQfq636IQ2Ii118/bDs9mZj
u0s1dLsdIm+tRqDDV6a/RGrpTJRf1ak7rnPRnloL4zbfhJSKvHIsycWI0gV/Ww5HhJVpAiV/
yEku3kFXGzl0b2Dz5DwjL3DwaTanHoRDCzrEv4DoMM/hgv/pW2IcMVnwwTdVjWtTQbXZDH8l
jXwtBtKMObNATn5goYoDBlm8KIuAzsO3vfpYYXlGx4+nczeSaYiASzwBd+nMxwL8ZqZHoqtj
GL7tg40bweF3FooC8fhR1DxusbY4067dDk+MOWm+Jd1qGpN6l8OJjeJDYjLM0tbauWRgGzb0
dsPACZUdfMDREoc3ZkWiYFh88oc0MHBU3kTIi4v1zkI0SUQbEJKlmAnDViofvPamqY57ckuS
9c83Mxa11Q2QM7kZi03oxTbQF3kWbXyz9ytEf6Vn5hkqxzcGFd42U9GbablmP7xbI4OrUnG2
oA04RoQr86fFAQxqyz/+9eXby+uHT9/R2+fS1b5DH7yZiX2xo4i5fuwbFS8PW3Q4iKRcX+46
D8UHGu/+gDhLFQv0t09fvr9+/O/d86c/nt+/f35/90Zx/cZVEXDE+7s5OwpYMI57LMDLCpKG
iKBpvKcZoEgo40Q11yGNoWqrc4BJ5s3gTLvO3yf+XcQ7OBp7X7V9U1rTrqfsPYB00CWGW8Bf
DunpBNhwHzrSgMFkqduxcj1Jis7/XPJM8l3oMxf1OPSGTzL+Bp/eP30VWxNhCYSxrDtIhnVy
KCaCpTlS9iHR7m7bjbvT27fXjosYZq/GvGNcqqFOTAHD50rRxStQzzUETXRSGBWt7V4/yDWn
eqTNSz3vkXNmo4WnZhMe4EZk/Je+yI4FK1ggKgOiM8wKpEzrdPJZWWCR/oLFiBdB3bN6pMd2
F5CRi1NUeOkKlBdMXtUOLg6vCOmqweUF4Djo+TRMX+i+dvqVAWY2R9Cq1ReXa7rt03eYoqsT
oR3ZJhxBhappPjufpJsoP4BqMkkDgJYfgZCE+El8RF6Noivz5mJ18gIuvo4HcBDH6QsiXzmY
AllDQCUkxtCxVwIkdcktrgqIhS4izkQkz8zEyqJ2cgVi4uwGYzaOFX5as9ijNgKBm2YVeMmT
Hm4ElAlSshmkef/SaG8fjw9tf90/WG3O2xLNG+1Mtv24oQmrZAP8vcpkpiYc2gxFL/qalpIA
HJsqDiYPN8g4nRaSkUh/pasvKXL6OOgJN8V0MUO0cDqIA8M/kDQo7emsho/EzJ6485kuyB9f
IPxB7zFUAYIh5VvYIwGY/3RczHFkrtp+A1CsaMRHVO6F/qfbAxZImE7NpynMXBPLM/8See9f
v3yzBJh+7HmLvrz7F9Gesb/6UZrKT8TrjwRnqdh2PSTLQWpO/YNIBliOadCH4S2GAuWRsxus
DUV9dFzAwsigLUERRBQj+AqrMEft24PdzpDC5yL18GCueXkWObYkKfTLK0mTdD37BtX68Lig
cn04Cb1V75Dhqp+evn7lwqV4rmUsF+WSzTQZO62MerfOBtkkucWTZ65gKC95T+WikrLhCP/z
8AcF9E4tAp2rhv1gD/n10FxKg9R0+7o4F9Zz2m0as4SWDQUDy9s8KgM+U7otlZhNMhm7syJ2
k/U8+GIwqZgL1Nys5ciDJzoOh77xNhclQ1Cff359+vzefst52UeR8EEhqCp0ETc8L490igD5
Gi5XS6+zZyNlFlnhwB4tRYcGuYoKtTQ0x0xRcRDmiiSeRd2lUWLWMvZ1EaRqdmpiojG0coHt
SnvIjSEc6rfdkTaLCYZtmfhpkN5i4G332wvt6iDXW555EZXCVqJSYMJFpPLlrrLpw2xDx5wq
PE0c6tWCR7GzTfCSkziy94A+b7hs6yo29owXSmPrnXFy4JtTW5DT2J5iAsjIC3qJP7STeIhR
7NJsPIfXmmC4tGmWGT4P8+q1p8oiQd1ctXxv9uMNtUpCP/Mpz0Zt8fl2uSIM09S5KPuadXpG
XrlDDbm/0f0iZE1zrqn1RsTui3ToYdvbfUTq6VIdUUxUd3759vqDq+M3DrR8vx+qfW6krlLN
Lu5PPfmOyIrnei/aEXzxQdacj1n/t/+8KO14FYFXTqmqgcPYJkPzHWMp7V6hM/kX6khcOfCp
uNLZvtbHlWiv3g/28QnFq/J6lPR9qLCRZUEYbcFfcOifF6GmaUDqBEQCLZyoGnH4oato7ACC
kOwAh1KPjvNGxR2LH/NQFy2Yw9kIDl2LgTJLYa7UVUHkUTuCzpHojroY8GkgrbyNc9QqPyHX
Ep5MmvANV2Ai3wUZfiVQyC/coEtJne60i/QQWQSMaM0rmTIvC8iizpcDHXrE98s0CyJZAXWH
AgkQrdpVjdc07ds0JscelEEIFwM5y4u1IZ7L5sWYZpsop+otLoHn0/NyZoE3F1P7uc6gv3NE
J9oj6IFNZ1s9WbXqFSK2+TFfiVZLtw8BhJrdGCMux/gR1VQHnb80P/E2biSg2iGwgDw654Zw
0ZC/LF3hnJGa9VCxDYgJ5KGVPUOE3GBwgLQUJFRZh7a4PlUMud2cZgzjyKdqhHsgPw4o/Vfr
i7+JksSuVobudool1mNqtcKzaEcNUUZ2k8+NjR/deiWCIyNqBSCIiLYCkIQRCUT8YY52RGl2
61UBR5Z6rsLxRAvFy4Jpt+EmuckihVxHWABiCszN15jp+/y0r+CFB9mGdlWdOYcx8sLwRreH
ke9REdXrU8F8j7RhLuNSZlkWoTPkcGnpq2qQMXIUcK5IN3ImzxziU8TgPa3f3SusaiveliM4
GyonDD6Xm5zvBkz3lJnZzUtpA4YEeyLl1jjUjqz6M+ucr37fQSaJqr9eaocDOFVil9eDzCF7
o996Afll3h55kcx8uEIaX5pIw2Dvv2Kjvw5TTy+r826oHm692uVT8Dc6qcxTqzGN67xxMMOU
PqOd/OuzZxnGctCZKeZHIGbysbvkj52eP3+BpGeScERQUUglwdX11VFYsKESbcotDOyREUlZ
Lk+v7z68//LXXf/t+fXl0/OXH693+y9cNfn8BZsblnr6oVKPgXfirtCV7xC+zUsMkDQyOIA4
dAEBAUhl+TZZOqfXx3os5m+4Kjbl2DgzkmvpbV0PIKJSTIpF4Kwn2qHsm1SPLgRRHe86oouV
wnv0ZmP5+zrd5mBj39aFf6s70qBzvZToIjX9+fMn0Kh7SD4d88BXJWZFXX0cd5kkxdO399rc
4Bx9YQ8Bg4iQjrF6a/j5kp8k2BbwYc2VXSMjeQ3YZAaYjr5IFxwqqfgeEkwUrSN3hs5oSFQG
E3kjI+7E/vzx+Z3IwuzMzborjd0DKJp8r1NZmKAvoyhagERWeOvSQusISBTF8jFIE899VS6Y
wP9L3JIWnSMt68J1aAoyUTNwQEKJzNP9pAV1tlGiuQ8VTn3guV20gaUF1y3aQCq6D7uIw9II
xcW2FJi+3RQLnVJsYYhwl+TmRdBCi4Z0E0FDV9RA2edjBV+JY9e9/k1Q0f/C5zvERBJNtwAd
cnen7YM4yHCFhzre8MXeo6vQwwiZIlldILUFqLxywzys1VU/sDgwGrw482g0oRXjoM2VTJmG
FzT2zPFYNRJj8oCyQeY/XOHIaoKkp47kxgtDRknEC5xuQqJerj0k7lJgY7B6ZipFK5mKIRLo
GIexMemARtRTHXeBv23p9Ve9FT5+jjzQsJ2ZqIYhq61Gh+MMU2x1eqaAdEZQsSVTVCoUFLN3
QxGNUUpfUwj8PvXoqxWBHqMx9t04qwprU9XhepPEE7HjszbClveF6D58BMv9Y8pnOW0IzrdT
5P1ik2dj2ztbKy4hcUNHcP4Iw2i6jqxAbwJQeQVk9gNMFal7zHiVTUt+zArmgbjc0SQnrsT6
HtbEpfZLZvKSUGJsDfad0ErNPILKtWZrGOR1FkmO4oisJCWoxmXTQs/ozGQrHBCVcaoZz4qw
W0ceZ+I7L2mKnsVVKzodiiksP5WOeco5Ym9jz0OtkkvjB0lIrIumDSN7DY9FGKUZZfoRqHUV
J2rqisMx35NuNkLskLeuljQiyTeOzpkDOUmJjZBtkkb3hxc9bSPfC2yabx044maQNtYssHtR
cXjjuQVADof+bSFLsdyaMsASeTfGRt5uGttyd2jlFfZkzfwZ47KX6xxbiwfGclIaj7WLju2O
miqzMmdPOpn7q/W967aVa0n3PXfJ9Eu91R5ME/gecSE6ryJWDpkY7tw1Y77HnzRSDPMn5zjA
Tsida+UBs4qwqtzk4pLT3tiAEAiy2M22KtEroSoHLSbVd0IMYQVHw8oozFISMRQgjGA1aMVm
9eNmP9YJRdUgJ+svKljVGfudG8oCRnSVwUBCB+IHvmN25Vng08veYKL2eW0O5scojOg2CyzV
74dWDEthK13qEnSbJXaOyOuOla1mTRZ6ZIs4FAeJn9P1g1CS3O6uYHHMH3HRQiuTmMmhcWIm
0ufGYIkjR0vkuXe7As4TJzE1SpRChNEopZJ5IR7jngZhabzJnJWnMXnliHmQqmNAEblMCF3I
bG9GC/sGWxr8ou9KhzYyiCA8SUNHQzjIO/eLB/Q+H1vHLGz7aOP/ooV9mkYZ2TaOxBONPCRZ
QL9QrhzSu61A6BfFkYDctACJ/peyJ1uOHMfxV/w0MRO7G61byod+YErKTFXqKlF51UuGp8rd
7ViXXWG7Znv26xegLh5guvfBVTYA3iAIQiBASvX5YkqNWlxQb456viAQxdGJLwg/EofTFfJ2
M5vk7Fh62W4OX3I6aINEdASRGZEzLVC0PBWoFY06VXR3Pov02W1FhrBRqUT0LO2V5ULSMd6u
8667oNf9EnoH42gXNR3Tcy4KWhrV6a4PEodkqvm2TmCqI82ivNyCNu3QOFMblJBwa3Yi6g2J
QpN4gUU3EsiY+vi00MCFKnS1YHEKVlxkP2BOJPP8D0TncHOlN555A9ZxCXlaSLdhS7dC178t
0cyrs4EjJcKAs039dGv+uGnljizhhhsrqVmjlz/drOmoSW+pkq2LtRwiKjWuzZiw3GJAKwvS
lUukJ0+bTImlWXTXOp8RcgOA6dJwwpANCZKIIlkIPh3l2hc4b+qLpVnO6ktzu1b8ktxaildw
X9mvs9sVnKuW7FZRNTWJ6NKqohoUsyqChlOeCHmqXw3zrGAC3qkWlhk+Zrknv5whzYg3C48I
DLPeWxZsIlxn3VE8aeZ5qYXEH19wfHu8n+6mmMZC/to09JRVIiPK3BkFy2pWNttrf7QRjHna
b1B0DKPfWpA862yo6RGHDS8c6uQ5nJ85GEOWpuLryysRq/BYZLmIdWysbyNehClhQ7LjetnE
SqNK5aOr8beHl6B8fP75593LnB1bafUYlJJgWmBqnAEJjquew6rLFqYBzbLjnCRAQQxGhKqo
xTleb3PljBe1DikdMT59Cr9Re2AgO9VNpgydGqIy4fPzUWMC9DnGqaVm1ahhzL34++P7/dNd
f5RqXtw7YJWqivz2IFDsDNPF2h6FqBup5cYnf8OEWbJaI1mO4QkwJV8BsqZsOMcXQ1byQ0mk
epjHSoxG3sFEylkxeSISqlXQDHtvHqcs7YZdWQQx6XS6oGUX6SHsqgpbtqmGGB7JmxVUXWLG
Yc34mhZ0Y0fglKActySsEYV3D8op/aVDxHVlmIW8pm3Uopts5ViiM4pG+5yFcUTHpxy7xVgc
O9HO2u8+30SJYu8R4MH8TUGTsymfKjznmnYKxCc45OvL9+9okhyyftNyZ33YeNqRtsAJmSTg
FcyZnFd5wWA2ctzIhS57hvoqkfB6QfGKA3OwurlWWa989F8wpO4DPVtYbgkovsgyIe+IB4aq
oORtLvtYDVAl6skA0t/WydBryguvO3Oi/ZGgb2lpoBAde9rqjiOF+fbg52YyEhQt+ozQPkBw
1t4iHMRNlf7C8dsNVDtFqZBdu3B1RF6A7qgdIcOB/FFP7UTq8a2kjhag++evj09P90peVm1G
Ue3zzGRW7Oe3xxfQCL6+4Bug/7z78fqCqZPxmTJGCf7+qOYCGOrqj+Iblr70fcbiwDcObACv
ksAxOQHERBS4IcnKC4F8oR15kbd+4BjglPu+/N5lgoZ+EFLQ0vcY0any6HsOK1LPp9yrBqJD
xlw/MEYKN584NtpCqL8yWzq2Xsyrlr7XDiTi/rDuN1eDbOSIv7Z8Q7L2jM+EJnuAQIa7YkI2
opRcVLcbtYGyFbvkQzgZ7+szheAgOZtThYjIoQ+UhSKxRNEdKNZ94lIW4RkbRmbDAI4oW+KA
3XPHVV8WjAxaJhF0OKLscfN0x9qXTBlBqR0je6JhO1Y9B1QM3q/sxY9t6AaG0Bbg0NhRAI4d
x9zQJy+RX2lM0JX2REOC2+cQ0dREHNuz71kc88ZZZueVp9rhJeZE9r9XdocuxcRUx8ZcpGcv
nMSVrMaTW+Dh+UbdFGsIREK/OpL2RvzB3jGlDIL9gNxS/ooAr/xktTbA+yRxTe7Y8WTKD6DM
yDx6aUYev4MM+tcD5vAc8l2a0uHQZlHg+C7tlyjT6N5HSutmS8uJ9stAAsrej1eQh/gReuqM
Ifbi0NspyQ5v1zC8LM66u/efz6BBGmNEVQJY04M1IjuvF53zLT/ACf788PLzTaQ5paqelyP2
LSmLx50RerHlicuoDFi8GcZJ6UUcpczxaC3E3tehs/ffH17vocwznENm+OyR09ohGZkc8Hjc
f5iDygTvilB+EDWOo4J5DsxdJuB2YY/o0NAUEBobYg2hK0MyAtSXUyotUJ+qwQ+N/docHY9R
gq85esD51r4jOjRaRmhi9FJAiZbDKCBoAUrTEmKsOUYRGZRzKRaTTZiCC6ErAhp7oUtAY8+Q
TwAlBxRHMTm/cXxzfhNSE2iOK21ZCIKbU+L6icl0Rx5FnsEyVb+qHNXNUUL4t9QcpKBTtsz4
FmQv0WLvOCTYdQ0NAMBHx6Woj455AUCwa1LzzvGdNvWNlaubpnbcCWXItqopSRPcohTErhp8
bEB1GUsr8zYxgIm57j6FQW2fSB7uI8aMQSHUOG4BGuTp1uBcgIdrttHBaUrcm/M+yfeUr9dU
VRr7lS+fY7QgFjK6BJj9rsiyMLmperF97MeUf8aAzk6rmBLLCI9oT7yZIHHi6zGtyJNH6bXo
9ubp/u0P6xmToZ+AsRjoKRkZbADQKIjk6VPrngOK3D6ct9yFDU0f/Hph6QKPOGZYFNJz5iWJ
M4RaG40KiilAKaZ9AjjUwjA/dPHn2/vL98f/fUATqlA+DEuzoMfInW1pfMkZcHCPdzGHgxWb
KAelgYwNC51cb+xasaskUV3vZbQwNVK71KSK6RYqXiiST8H1nvoeR8NFlgELnG/FeVFkxbm+
pS+fMZWqY5uIc+o5lkhHKlnokP4XKlHgONaWqnMJdYSUDDbJYuIb3ohPg4AnDvkKRCZDVVrx
EjdYx01sbWxSWFnaUm2QUV/oDSLfyodDTz6qJA8UJwy1ftBJ7ZOeJB2PoDAdMlvpyoGtHOej
LcELzw0tO6LoV65v4foOTgb7mp5L33E7MoG5zMmVm7kwnbIFzcCvYbBKIh9KiMnS7e1BGGY3
ry/P71BkDiYpfJHf3u+fv92/frv7+9v9O9xeHt8f/nH3m0SqWGJ5v3aSFXWBGLGRq+6PAXx0
Vs6f1kKAdalCkeveKhUNqpP68Q72FulmK5BJknHfFbYYagK+3v/z6eHuP+7g0ICb7Tsm2lCn
Qqor685SfCBhpB6ldeplmYpBjpI3quhLnSRB7FHAuXsA+i/+19YlPXuBSz73mLFqECLRXO+T
+xJxX0pYSD/Siwxg6/qHO1cxS0/r68kBACdOcWhO8W6wl2AJmr1sY8cT1pEtqtNaOYrX0kTq
RQZPHXPunslHeaLQKBgy1YtsQQ1LY3YAmjrrTYGEimgvwGWRjTUZwJRJdVl7c9KAJ60bpedw
ZGqDgZ1jDBBDWjLXnEUYgtBaZi7u7/5u3VRqt1pQaWzjF0hjzmCAXnxrzgDrGcNHTiV9z8bN
rW3hEi77ctiiZaCyzRih9bmnOBv2Wnhrr/mhxiFZscYJr9Z6TROCsmWP+BjxRDmE23wbAL0y
OXgYYqLXxTYrOPItNeWp5QzwSbv/sEqgz3uO7i+D0MBVPa4Q0fWll5C+/gtWE60jEI2QhHA2
Bvglc+G8RmeNhnqPPPdO6CUzm6fjGXKDwVGY2K6Qy4x7lJIioTVeGcRmPHWF9Rx6Ur+8vv9x
x+Cm+/j1/vmX/cvrw/3zXb9sw19Scd5l/dF6ygEze46jcXjTha7nuibQ9Y19tk7hTmk9l8pt
1vu+Xv8IDUloxPQmyi0soFVk4D53VmpV7JAoSXQX2HXwKzDhx6DUphwr1icBtI9o5U3LUPDs
/yP5Vh6tj4+bM3Esb/FmQew55pd50QdVh/jbxx2TGS7FKAbGugpNJVCfqyj+VVLddy/PT/8e
9dJf2rJUG1As2supCSOGQ8QQIxJSteMPVog8nRy/JvPE3W8vr4MipU84CHl/db58svFmvd55
Og8ibGXAWs/QGQTUJu/xrVGg87cAmhUNYJuoRcuCr+8TnmxLY/MA8KztM9avQSP2TZEfReGf
Rj/OXuiEdDTgUbfuQGuwnsN4YvhaV3dNd+C+saEZT5veo72wRLG81Jy0hqUd/JeKKX3z3d/z
OnQ8z/2H7AxohE+ZRLmzWukd4S1tr7Jdq0Q3+peXp7e7d/wq+q+Hp5cfd88P/2O9RByq6nLd
EE6hpt+KqHz7ev/jj8evRID+TE6cA38MCT+ydUFB1bxyCM9akHRnKrmUSiZiyVdU2NUFzfNy
gx47asv7io/ZlEz4Zk2iNsJldQ7TRSExafngJQbHotpXzM51hbtzdt0UXYVZQGy9btEzQK19
i4kdMBCQpcc2HJbjO/S+orA83eVz1gv81Dh+J74DGWWznmK5Ie8XaG+Ut8BEwItyCNmswTFP
CdoKV6r/iIHWHzlJUcht3Ry0ja6S7MxK/fumyjNGViuXknt83OaV3s0jzLiVJQ9ZacV1Kesw
etYuI18yzSTlMePqxLWsFonrxjPt7cfT/b/v2vvnh6c3Zc8NhFe27q8XBzSZsxPFjKjqynAc
eceBk2UzskTAD/z6xXH6a1+FbXit4cIQriKKdN3k112Bzxa9eJXZKPqj67inQ3Wty0if0YEq
w6whtr08kFhmxjCHL5i8LDJ23Wd+2LuKwJ8pNnlxLurrHrp3LSpvzWRHGoXsgnH/NhfQA7wg
K7yI+Q453AITDu/hv5XvkXXNBMUqSdyUno6irpsS08858epLaskpOVN/yopr2UPXqtyxWI4X
4v2OZYzDvdpRowJJFEW9zQreYnDIfeas4szi1SWtTc4yHFXZ76Hane8G0emvF4E+7zK4iqw+
KMJZxQ81psVeOeTXYal2oFrDTfYzvaCI3gZhTDIFPkOqywTumrtSM+stNM2RYe/F1rA8USep
oyj2qJd6JDHcbC37pWJ1X2BqQbZxwviUh+QtbSZvyqLKz9cyzfDX+gBM31BDb7qCY4Db3bXp
MVrCihQgDc/wBzZN74VJfA39ntyZ8C/jDSahPR7PrrNx/KBWrvUzpeVtJk16yQoQJV0Vxe7K
/YBk9IkySZp63Vy7NWyazCcpJmbjUeZGmWWrLES5v2Okkk3RRv4n5+yQzKdQVR/0TJCooVrs
ZISqZRAmCXOu8GcQevnG8nyALsjY7Q050zYbqJkeV17sm2vgn44bd2vpqnhtV34G1utcfiY/
oBjU3PHjY5ydHJJZZqLA790ytxAVPXAMbDjex7FjkQkqEXlPommT1ZFsFB2LWXoOvIDtW0ub
I00YhWxvSTA8E/cZuk4Dy5/4jjZZLaQt+oQ7XtKDNCCnZKQI/KrPmZ2i3Q5mchPbHcrLqFrE
19Pn85bRQzwWHDTu5ozbeaVZ5AlyEG1tDox2blsnDFMvpi9OmiIl92/dFdmWVChmjKKLLde8
9evjt98fNLVMZFDMuLZH0x2sPwbmQWVajQklLgLj+Qug2pZCdLhZwDkAoq7sV5F5VqnYw5m0
0yIdqFZXfFCqXT2qfMswhxemNc7aMwaM2ObXdRI6R/+6OanE9am03ulQs2/72g+iW0dlx7L8
2vIkos0VKk2gcRXcOeCngMIGolg5skPaBPT8QAeiJkmuf78rakwAkkY+TJbreIE+xL7hu2LN
RhfvyDYCjUzrgYaNP2iE8jQyyWR3PoGFM3bTBvq2BDCvoxBWL4nMAm3metxxtaqG57Ugxlh9
joYnHEp/ZXxMBx1SyDJDzCk1RB7lzzRdH9GNOnQ1USQhzKu12JrVLmuTUHUrsm9tuXje1+xY
aLJ7BFLRvsV4urTdUuEBxX47a3oUADZrFbStXO/gy0yO4SsQszsnfhhnJgLvGp5sQJQRfuDS
iEBmgwlRFXAm+J8V54IJ1+Utay3vvScaOO7osDwSQeyHmrGiRDl0+ZWQyKCw5nUvbDLXz4ei
22sTiIkIh2Tpk9TevN5/f7j758/ffsOEsLpT2mYN19AMVGRp/wOsbvpic5FB0u+jSUcYeJRS
KfxsirLsQIIbiLRpL1CKGQi4TW/zdVmoRfiF03UhgqwLEXRdm6bLi219zeusYLWCWjf9boHP
y4cY+G9AkAsMFNBMD+LTJNJGobzA3OAz5A2o/nl2lV+rbfAFa1rBmaQSI2Q0aKkINGbgSIGR
tuRa/zFlcTbsrlC62SiVHbfKt2SAHI45V+cXw9lrCblxhG42RTOW5waT5cKdxDIrerhUAePp
YUO/O8PuWExNyD9rEBLnPghJQwAObgi4p05rjvpoU6lsj99yPNlWv8AwEShJrD77B3gLWwOj
2A+bRhmjOG9t4+AcP3zSyZXITSyWfH3/9b+fHn//4/3ub3dw3Z3iKCxG6rkJvAyLUAFj2Axi
sjDzVllsd71CuIxuwe/7zJM/my+YOeangRlCHhlgI3LYghIhWU5KdoUFyTKMi+VYUeoXrAV5
I3WT1NclgDFRBfrl+g5tptKoKIcaiQRO4vBMThYK8Y5RKCkwD9HqEGbxZqtqmD+pN8fQc+Ky
pXDrLHLlQJFSg116TuuaQo1BOsm2ciX13wdsPJUHOYU5X/Q38LSQRNPzJBnTl+e3lyeQhaOi
Mz61N7/liM9C8AdvFBurDIb/y0NV818Th8Z3zYn/6oWzTOhYla8Pmw16JOk1E8gx5xIIEjjO
ustt2q7ppy80izAh6xwPnZ7tc/x0Q39euz1NU0dAQ5UYCP+6CivbFSM0kAjtgJEwaXnoPU9x
qjQ+tU3FeHOoM3mkvFZcRIY83UVmruuuUMrBn0uas76D+3O/I3czEHbsROymw05WfrC+JUPz
8EH8x8NX/AKP3SEeNWAJFqDpkahcINNODm8wg66bjQZtlc8BAnQA5ahUYeu83Be1Ckt3aIPU
JwZuwPAXFSFOYJuOs6IzCjUHOjozIkGzYWV50RoX3rVGPRc4P8lwNoiFxdg2dadkK1pgw9Qo
1eX4iZNO7STQZW7LjiHQX/a5bR62ebUuOp0HNvK3YAEpQWVvDlyFwoWJlVmh9xZaE9Zga4f2
F+rYRsyJlX3T6q3kJ2GP1rp06bSPuggtMAaHBuo1wCe2lo8kBPWnot4xra59XnNQS3tVLCGm
TG35FgU21+azzOvm2GgwuB7jvqGh+EfbKpJmgMvbBoHdoVqXcIPLPI1tELldBY7GNxL2tMvz
khsbEe4eBWjwB57r8BKVTR14ERGc9AkCES342baTirRrMF+TXq5C61qX07kuBcGh7AuDuySC
ui/ULjZdn+9VEGgleM8HnlbEqQSmZ02UzXtWXmpNprUga+DAJ4HKtVOGz2oEjQY24jQmLToN
UbJaWKbV120j6sJ7I0uZSoNHNKVJIhLE5DCBSpHxw4C1ShHpxpL3TuD7nFVGpT1yJBw/ZDA8
QXGo2/JgDLIjv84LKYEfpBhXJfQMvCVUOWgt/afmgu1ZKu8LfVeD8OJ5bhzSaIfc2gV0v+sO
vB+yHluaOuABfm25r1d9Koqq6W3y9FzUldbFL3nX6HM4wexs/+WSwbltSkIOMhLDZx/W1tGx
Uk81OL3aI3SLOfG2qv/MFWKMLERZNmdhZOKW65m9ZkjlCm2OQmBIAnGBXbdNkxVnuXq9Jr2Q
Hq2PosXxNLu0kAw1oOTKuZYoijGpoE6hmHJUvBHNEIFDGC95SRGKwfj6rqD3NhIcyhZ6Q+6K
oda61i5nCBZ58XaMX3eynASM3j6ra1CQ0/xa5ycqNiYR1QEX2og3JgK8jSkm8UpVcG34G6hf
mDi6vEeZo3fkL8TjE1PfY+7CJjukfQltWGYFpbmYVpF7lK/N1RDxNA8gOOtsyPH5qyejqyVz
u+Drl7d3vOhMbomZqZyLxYjis+PgnFv6dUbG0ZdkgGbrbcpafVYEqoUfuG/knNm4YCAb437p
deRjo/Y5PR8819m1NzqOGY3d6Gz2fQMLAoVNBJxxPiYTMxANOQcT9Nq2KQqAdX4bX97G25DL
FMlbzPU9s0e8TNyp+8p0zQiYFSrtsgg9mKBb7io2q8VyehLDCS4Cp6FhwtiByIRjKs706f7t
zTTQCqZOtZGBroEqngo8ZRpVX8030Pr/KLuS5sZxJX2fX6GoU3fE1DR3UjPxDhRJWWyTIk1Q
slwXhctmuxRtS36yPK9rfv0gAS5IMGn3O9nKDxuxJhK58NPtv2fiK+uCM5XJ7LF5BU3Y2ek4
YxFLZ9/fL7NFdg17xZ7Fs5f7n5194v3z22n2vZkdm+axefwf3vgGlbRqnl+FfvcLuFA9HP84
6eunS0l9ffpy/3Q4PlG6i2K6xVEwoXEvYOCBOWdFD1eqx4SRtC01Uwf6HnYV9o+AANf8kObc
oYkhCFOpl6W5chW7CLy40UcIIKNSBNkmSF1S3BNissUV7ThH7MS3EaWY0UIWrggoXT1S5/n+
8am5/Ba/3z9/PYNc6OX02MzOzT/fD+dGHh4ySXc6g/I1nzXNEcxbHvVxFeVPRdDpE9QV5+75
IDPGj1N+1WG4kSIeuyr2VYjjFdoDEFW0kpK3fhqKFhOyGTF9OTONowz32fAJSi7eJE89rXM5
yfL0AQzjTb2h7g+yCVuWaPMpS66KGm7QGnm8s7WCFP7Xj7ypORDdiWdbrc9i7RIrzoY6Tvf8
bNW4IyF8apU31BYI+j5fpvslZ85lXPCp810bMj7+nIfZpouqDcOkNq24DasqxdGZRKaE0Ubo
8tBkSS035GW6qzekOrqcLXCpVBU9gHrHM+y0wfwm+mSnjTFn5uGv5Zq7EXO2Ypwh4v/Y7oSb
LDWRM+VYUHQYvxzueX8LHxIffDbv9YJdT4gExODVOTnByx8/3w4P/H6R3f+k7DbEabRSxHnr
opSsS5So6gFAEiGe9SAVdbjaFgB/wKHY7ROhciOZaBf+qKswvkooXrK+K1V9CPFzX0dlTtCi
VCdWtemb5kon63E5lRKAa0pHhS9hCmCjWAmsYpsx3bsgLlVERVB9Cks6q3mZpoyg2o9h/fO1
+RpJM/vX5+av5vxb3Ci/Zuxfh8vDD+qm2H4ZqGOntmiuq3t3Ugbl361Ib2H4fGnOx/tLM8vh
cBlNNtkaMJLJ6rxzZY6w9TYVru8l/llDJ+pDDB88mLDbtFaFjHmuxi29rVhyw/f0HCm0t+QP
3nl5hv0iKyKKeRF+ejehFmGAZ9BXueL4V/r+nb7SKKV03AkqmsWcxSHaIjAUEpETthswf8a0
DVtFOiVepR7vQy1ldLOKtAJX7EZvUF5TXZMnOavTSJFGdpT+s1rHRZwf/ckuh4c/iWjdXZbN
moXLhF/DILIeagDj19HJ8cmZhKjKPh0BuJJjuaS414p3doq276TDY0RIcqMiw6egSLCo4ABb
w7m/uoUDYH2VjF/IeNJx74j8SixmXHC45puWO6efvGUKZnuOS6n6S/jWMlRPDLK5Ue7ZaiDI
gerq1KgyDDD7dUZtSzLTtQybNgQRKYROgqEVKIgWRdSbKdxwWaN6gTy3KO6thw3Vcamg6jG2
BBEiXY3b0lI7iRCufDKusKwbIvlS4W561CW+p3TpQIsd6ooAarrkq0dJy/kBHfUqJ3pUKwKX
1HPvUKTzMXSUO560Lf2TvoJU3kT0P5EgDiPTcpgRUMqYsghVs0VQ1DCiaG7HVmAQH13bLunm
RM6ZPjidSq2jEEJD6dQscufmbtwZXfS/yUr6UHz6esAWyYIM6j8eGRFPwCmzzWVmm/NxM1rI
2o3t14dtSUgWvj8fjn/+Yv4qDu/qaiFwnuf9CPaQhAh89svwYvCrtrEtgGnOR62RMbInuyTb
VeoFTBAhNKtGAld4izv1sVQOhYiMPbliYPegAwTL3B9FGJPVXuW26YxN8aWPQPA1XZ/OnPOa
3u6rOnCFinPf//X58PQ0TtiKX/WTqpPK1mk+6pQOK/hptCrqCZRfHa9HXdOBeU2JMFGSVcL5
pUUSTpWvvhTSlUQlpaWIkoRRnW7T+m6iDiyxx5/XStEHCfTh9QKykbfZRfb0MKPXzeWPAzCn
YDP/x+Fp9gsMyOX+/NRc9Oncdzy/KzPQCJ7+PBEu6oNp1qYrw3VKi5FQsnVSTxmpa8WBcs3k
yup7FodswN8mOryfmQvYDpA+Y7+uyeaEUcTZoHQB9qeUDkfCt3V+Ay7gnYJF1UZ5ahbQSGhX
1RH24AoEvjU7XmAGY6Tj7PoGAXEV1QXfc4jmAMqRulDZaYXY6WJ+OV8ejC9qAk3qCKT1Nk96
BfAK4pV0ev1IzgVJ03W9hDqW9DNNn4QzxvT06FNMzQvRxmpL32LgJRAaONqfulwKR0ohFBAu
Fu63RJWiDkhSfJvrgyKRXUAHVuoSdDGqNXrMQGmXKlIi+4ivzk1FxttUEqo+vjF9fxvXJOZp
IY9bZHWXBy4p8OtS8JPem6OwmwOgxfBVAZU36ICKuZHtE92Sssy01MAnGKB6skW8MbLjdKJV
ZbQMEFuJABx+W0XsSWQS0CIDd93imHVAv1N0SRY3tkXvT/2ykPEsPxivPkaunrMNpUk1jfFr
zNwgQ6S2KZacecC+rPtB5UthKgr5kMQNyKDcShnUTEpyfo+kJtKW04npAnSbmCwVRNYlRovF
fM0F3dYHrojx7kKO4VSIaTXJROAwda2T4VTVBER/AN0hvkPQiX4C+pwcNbGq6RjTXZ/NfRS8
tx8qxw1MciLA6nYoozu8lRDjw1eNZVJrM49Kf651hLBZW8etwKkfOeBgPz0fYsav0+RGKJtA
c9ho2s0j2nf90EGe5t9TNLF8vr/we8rLx+2L8oJYunwYrYDY6TgdWfSpdJeeJl7g7pdhnmZ3
VCfIBJ/NXY8OSz8k8K3AnSjedz4v3w/+Rhrn4/VjOQZ1RoZzw6XWFadTuzmrr02/DomdJneC
mhoSoNvUmcjpKF57R2e5ZznEkljcOAG1VKrSjah1CVOTOKQVyxQN+Xa3vsnLbgWdjl/havPh
5BxU1vVZK+PxUUO+rPl/BulXcFjjnUmYDoiA8EQX+PK1p9ffZzI8wMeNL7J4mWIN2jgPp/Se
OLTYLMfKTuxuHYGloXJ7Z7eCOhA2MrNWE6fs82KbtNaS5ARvk009erdw57ZLNeaUCL/flhNU
cTNoPTZ1Zrz4G7tc4WY3PNG2NHiSxXq3seP4gTGIKzB9IKT5FfiJS1P91XlVm961TUqxothS
vqIUpqxSOr3P+S0tVM3Py9aNUlH32JcvWrP5vW9fYLVtFaEVdpUUQrhOPT5iSSv/uS/bhZJW
N/RDKgRXBK9jn6QBi8gkW0T7q1KPJKHWVm0YfRPbLieEmGDeuCciNCow/ipJ4Z273tAFxiXF
OG6FDkVa1JkaxQRrsMg0ULJOWyejZKCChNolqFumvb5oOOi/s06dUxpKEzqOD+fT2+mPy2z1
87U5f93Ont6btwt67OwDR32cdKj+qkruNN3NHmN1eJVOKHV3+xSleQv2cVGmPGvxH6CMlRXF
9Ua15mgTgnFpGaraTW1AWVxITxOhZxx8disoS13bodh4LY1rThdg0pwxTkS+ReAkamgmBYni
KPENbxKT91Wq2kj4xNxHlNdlJVm4S+HvVbKeKEdevz4uBD0AKPRt5JL0ReybARbSK2gb/Tuf
WPBdHNqIXr6rW848r/U3THn3eT49/Dljp/fzA/XSDlJcpG8pKWVVqBqcvIWsijRNaqGTB65T
9mVaew6KCk7Wqjy6hmm2KCjZS8q7ZKMI4qROWnMEt8ozAc7K+6dGCFRnbLy2P0uK6xFn9LKP
yVw1L6dLA7FLCRYkAcsBEIkpvExP4/MyQXFxiKJkFa8vb09E6WXO0EO9IIjji2K6BLhWLxmC
ouz7XTNQdT2zAzaVt2nVa8bxgTo+3h7OjeItQgJFNPuF/Xy7NC+z4jiLfhxef529wTvMH7yT
hxdv6Zry5fn0xMnshK/fnQ9KApb27OfT/ePD6WUqI4lLdddd+dvy3DRvD/d8jG9O5/RmVEj7
zTebNIr4GcL3bFpf5LOypCj/v/LdVDNHmAAToRc5yw6XRqKL98MzyP77XiQaC/4Td3yYIhGv
uyqybMJ49++XLoq/eb9/hsDjU59A4sOsifZ1f1vfHZ4Px7+mCqLQ3pLlb82pnjUEP7fbZZXc
dDW3P2dXJ57weELehSXEz99t5+moWMdJHmITYjVZmVSgUR7SochRStDBZPxUnioKnglZGX5e
UMhYuk307xnpjwyfvk+28sGnRZJdHQ3vS8lfl4fTsdMvHxUjE+/DONr/Hqr6NC2wZCHnF5CA
qUX0R3SMcj7DdFzfHxUIpgMo0uRA9/0AxwweIJA2k4dbm2TyTO7weo1jB7f0qg7mPnZ73SIs
d109tihO0WkzTtfKU/BVARpz6sWd3w0KZMVfXoX7eJmBRrBqMKUep/zHXhrwU7R9tCDJcR5O
0eVeR6KgKFSsQRVKq+x6mS5FKkxu3+c4h0K1UP6rKm0reUZJRa0M1l2fxBo6HhKx22l3JS1O
Fj60slsu8lh6eGiem/Pppblo22zIr8imZ004gexQSk4WxrsMhXNvCdgzTEdEWnWCqL6ftAQy
FS5vkYemei3nvy0ca4ZTHFInapFHfHGIF9JMLWCg6lUpCPa+GVp4s4hDm3Q+wqdgFRvYuasg
Tbg3BGziDeJ6x2JqGK530e/g2BiHQ4tsi3xcyfPQd9R9qSXgL++I8qMVRcXQ98jAFxwJHNdC
Jcxd19RsUlqqTsBNFxHvaLkpxzzLpTEWhRO6cKy+Dmw1cCoQFqGLomhrK0SumuM9Z9eEZ/02
xgQ/Y/jBgiNDhjE/Z6/yEGzw6lCdvr4xNyu0QHwTexQECqlPxAEUmBB+z00tqzWnd24BUe8X
HHB8XKpnjH7v0yU/wIUTRs50ZROwtlR9X2uu7wV7E1PUdQu/Rx/kk8pgHJBRJ4ffc/WNBX47
c/wbq2CF8dwhIwHx/U3chDljoNz0IJqQYWJiHM5hM7gqMTVbW2264dxcb5OsKDt/NgXtKW+V
ci6AnsmrnT8RKDFdh+B6i1dIq6LUkeX4pBIhIGr4aUFQfb1LghqEkLM26M0SCKaJFKEFBUd8
5CSLlK0Agp6gQUbjqa8+eVRyDmKHCY76Zg6EOcoCvlTAi7Y0SNCHIi8tz5rr/dWC63Dja0qJ
kr+Sg0zkEH65tsBEjpXbBMbKPN2nH2QWCbZaKweEAxObWyx417yIpXolmagWBRiBSVXfgeqr
ckdzmIHDwEjAtEyb2kVa1AiYaYxKM62AGe6Y7JnMszyNzAsw3VHFzJ+T+poSDGzHGWcJvGCy
qUyqseqZcs6gT68lcIaaRY7r0CuxVV/gk3gq/23mQYKpubRdeuZovm5TzhIuCs4ETMzZVga2
6/J1h9dHB5V6lInIMfzGrIaFAbaxSvjxmSVEmUqOVsDx+swvqdoJGNjq7r/KI6eVT/Zyjz6X
ZD5/NC/CpEm+eKll1RlfgeWqdRSBdnEBJd+KFiNZvMTD3CH81tk6QdN4myhiwdSuG94AG0NU
V+bMN1R9DBbFtjH4cUBUeNMnmBOBSbNLlAd8CVXg75RdlSQrx0qmBWX/Fsw1vdlOFKl3t3xx
PDx2L458DrTRjFQJBp1AnTc5a8eCtX0sJWas7PL1hap3F1b2ueRGql2bhgSrDRKpjgtG2Wqt
MTSGGBcNa0fuP1BcsdPsXq4FxP0pzIVreJSgnwPISA5+YxbI1cJvAcWhdFkEgFgc151boOer
Gqy2VI1gV1oV7oSRJYc8y6mgg+gmeAFi8eC3voyAOvf0ua7CvkvZEwggQKX7nqn9drTfuDW+
b+hfyjnMKQbZJj33850sQKEByqIGQwh0gWOOY9E9yJkok74gAXvlqWdv7lk2+h3uXBNzW26A
ZwfnfhyfdI0NyByHzOPnF2+3EVi6AYeWwnX9iRNOwD59r21BT71VyROt66zew/YHi0iqwvKd
5fH95aXzuqhuQCOsdffb/PO9OT78nLGfx8uP5u3wf2AGEcesjfWnPPqIt5D7y+n8W3yA2IDf
30FHAC/fuWvZ9Lb5URFSGerH/VvzNePJmsdZdjq9zn7hTYDQhl0T35Qm4mqXnP+npopAfGQF
/O9WM/jP/bCn0Db39PN8ens4vTa8LfqZLKRABhZ5SKJp09KKDqU3MyFUwlvjrmLWXKc4LjrL
r0xv9Fs/2wVN25SWu5BZEMSU3pTycmMb7tQB3Z4QV3dVsbf5XVE/q1oIlPk+gMFWRofrK9sy
DGq1jMdCHtjN/fPlh8IzddTzZVZJ097j4YKHbpk4joEELJJEHVggtDb0Gx5QLLWRZH0KqDZR
NvD95fB4uPwkJlZu2SjWwKpWb3cruGWoF0JOsAw1oMGqZpZl6r/xnGhp6Nhf1Ru8t7LU14RO
CmChQRp9jtzG+CZxAcusl+b+7f3cvDScbX7n3TNaR46BprkgeWOS745ImLNN5WpQ5J5pux5I
xjgdFka/LAoW+GprOorm3LujasvqOt951OGQrrf7NModvsJV/SmFqvFnKoK5M47w1emJ1Ym1
eRBEL1wlBcXzZSz3YrabopM8ZId9UN4+tdEJ+MHEUAuAIcbWNCp1eHOQhkHCZfSwnJRt9/d4
z+gzO4w3INFRZ1pmo9XEf/MdCT0ThWXM5jYpVhXQHM/BkPm2RbvhXpk+2s35b3U+RznPqMY7
BwLWcOYUWz+pB8ibkBkD5Lk0j3NVWmFpkBrsEuK9YRjqQ9AN8/heEmbIxKm/dbCMn2FmQNaF
E1l0IgGaJI/3OwtNS+W3qrIyXG0Xa+uQ5twkG1q5Kn+bbfkEcCLlVOI7Pj8dtDMAKMh+aF2E
oNhP1FCUNZ8uShUlb7YwU1doLDVRpEb4jaPKsPratkltW77SNtuUqVYWPQmv2YGsbVx1xGzH
pE5AgagPU12P1nxgkJ2MIAQawVezcoLj2spXb5hrBpaie7qN1lnb18MlXtBsqmu3SS5kSkoB
goI9/m8zzwyojvvGh4aPBGIs8UYilQjvn47NRb6DkFvMdTD3yesuAGgQw2tjPp8QqrSPa3l4
tZ68Lapp6Esph2wUeCzPI9u1HNQj7f4sihE8GDWr2nFe5ZEbqJYpGtDOsNGK62C6mV2qKrdN
PNwYmZIR4UTabL4L83AV8j/M1ZnxTtmTGlI52IPDGjTIQrazoYVJKE/L+zw8H47ElOmPQAIX
CTq769nX2dvl/vjIb4jHBkuLVpVUxxueu1ErhXPAalPWXYIJFr4Ga+isKEr63VyYgqI62rbT
LWxP4SNnhYW9zv3x6f2Z//96ejvA7ZBaOOLscPZlQTu3/TuloQvb6+nCWYnD8Kbfn/Oupe5D
MTORzRhIFhx8sgpSQC9UidFqKSB3mDrvADNt8iWII3JjxImnrO/qMoM7CNlrE51BdhQfP5Ub
z/Jybhr0BQxnkVf9c/MG/Bu5Jy5KwzNyytRhkZcW5tvht35rFTSsYpCt+NaOVbZKRh+Jq1Id
3zQqTe0WV2YmfmeRlIntpgX1x/8y41vtxLs8cz2S6wPA9rWlBiE+Eja+KEvHfRTbLRH9FHed
CZdyq9IyPOrLvpUh5ykVsWFLwJV2xK6+TgijT4CBFT+CV8/x7ZbZc9sdHbcocTu1Tn8dXuBK
Cav/8QAbzQM50QR/OOEnJo0hrnhaJ/stXtwL09IdmXW8maa833GWy9j3HfVtj1VLA726sd3c
nliuHHIn3JhCMdQzHTA92Oxrm7l2Zuz647Yfgw97qtVgfjs9gzeVT/U2LIYlThYzNYHMJ2XJ
M6x5eQUBId4b1E3fCMENY66GZ6gja46tq4XbPBlOsIiKjeZJrUuU7eaGZyqCcEnB23md80sN
GX0PAGS1X/ODb0L3S0AW7XIZ5EJm4Hrknkx1SH8bUC0G+A958KotAuLIbgyhYZ1DYNmIcqMI
OJgcLWutnnYgMFH4i7IxTfhFwqYjQK5v6UhsLbbPCIdjYBf18OPwSriOr27AakC9eu+XKZYb
6Jn7vCU4il2osVXk8yFHiqjGz4h840zqCQ1qufes7mbs/fub0EUeGtiaSGJ/lwqxDQGL4EWU
76+LdSh8geKckKM1rtzXRVUhTV4VjCezsTBTgycABAOd5rsgv2ndwitYnu6SDLVyGDIOl7tw
bwXrXLgepeaRmga+R2sUnyUlUWlYlqtinezzOPeQ9AvQIkqyAt4aqxj7jgewC5wNdZGrCg+U
khlUsnlrJpgwOsxCFY4tRcPj4/l0eFQ2yHVcFWq4p5awX6TrmHPkaYmuQhhdUrcsrYDWZvUf
X74fwBXQf/74V/vP/x4f5X9fpqvurUfVRdN9Q89FhYp8r3MPo/7s9x9MBGUcFuOAI21Ut30C
1i458XUyb6X4oFndzi7n+wdx4I8djrKaNohMRcBoPTJXJ33+/8qepTlunMf79ytcc9qtysy4
HcdxDjmwJarFtF6mpO62LyrH6Ulck9guP3Yy++sXIEWJD7CdnapJ0gDEN0EABIGwyMlO26xs
98MCFCMGotMwhwaf58pHqrDyZGuU33a5ktM3bUTJnQhHJxX/EsagYcpPj/0yQrKSJfmuPjlU
2ZTB2e9XJjm/Mhme4240DS5BfdZa6qAqWvKVkyqqzmi48WoPIQPLegJaibodZxj4+FC99ew/
WUvaOTD2JTRzN9uA7VizxPMZjGPL0tX7Dyd0FKwR3y5OSYkM0X4ARoSFr/NCq0DwaqYph9pO
TtWKeuf+wuMsqK8tRElnDVFKf6JzplsW47ofMwXMo9mVw0XPUphmqpPT6z0QJuCgaTBGttPj
2o8zbfRE952Jvpa+/Q7yjmLPlgC4YSiYg1CetehR60TRA5CoS2aNDN91J4PNj0bAsGNd5/TM
IJq6xazZCS2dGKqWJ72MBATbdW8HVwQbQa+X/fb1sk/97pw6JYcoU5zXoNNoMAGFXPeYl8UL
JvBpmTpyMf6OFgNVl8sEmI7lUCO5aPEo88ZnAgMxGTJ3IlDvIkWV1eTnZl7J4f2kCEjULkAZ
AS1rT7y2LjsZo65EMdGbQTgJOqtAmBCMLmT8YlqgHtieaLfIyMpxidQAx4ZBF6MCDYrqE7AC
Qca0NLUldansCC7/HpHFVU21sLiiLN0Ge9V2KVmULLjL01EQodccuRPw4a+/JTVMh2IGdkrO
hSj4gHidG3vS1aoUfYYvI/gMwwok8rJxkyM6YDhYV62D23DphIacQH5gvhmx7AWcYhW+lqgY
slqnRD/3euoDhAZ4kUgzNtFNg3XR1x0VykHBMSSDSiWgDhF8yjAXpgiSzn7y0Hd11rpMTMPc
fdNjGk4LkDiZJMbQEzYB5qIt2KW32WYoZkQUmAV+gL/I5U/RsmLLVO71oqi3r32FojQdZ9Ui
KjmMSN2EwSaS65tvezu7eusxzxGgeIfLUUZELtquXklGydKGJojebhD1Enf84CfQmq99kQoX
PG1tH1uve5L+DgL9n+kmVWf4fIRbZrf6A+hzNAfs08zMoimcLlAbpev2z4x1f/Id/ll1XpXT
qu6c1VK28J0D2fgk+NvEXU3qlDcYQeb07XsKL2p8Vd/y7uNvt0/35+fvPvy++I0i7Lvs3GZM
fqUaQhT78vzX+VRi1QWnigLFjmKFlFt7SA8OmzZkPO1fvtwf/UUNpzqGPTMTgtYxv25EYpBk
mxUoII4qZlYTToxrHf4gF0UqucVC11xW9mh5umZXNm6bFICWuhwK76zN+xWwtKVd9AhSzbVW
ES+zdEgkd1KJ67/mGTL2hnA8Z7m51bGjdCgmm6tJDG7kMUeWBtM/gmCSKStBFtBzdRDFBIE8
LioBSueppNFLHhOOlmEbYqSfMl+MMpCRfR3bUt2I2cKROCYrjxbZ9qWbCX362lsBE5yQJiac
JVg7KEsuQu8Nod3xvRZfFYIyt2qkFp4ckLq0DYuR/VLQUarGtqiU9lXtx6cgiBrMhxQTHm3C
VlxRe9wmydim7qXTDWhosAIMDJbvBoMlpHrsqDPBUJJlqtGkwI48qcEMB5JIpWa+CRTDCXNQ
up670nc5rzqRBBl/DXuAA9qRbNRvLYfqgC8uouzcVPWgfrd5ZPttoppMKSpYyI7AVAbzkTex
zy+q3anHhQB0FpQwAmMHkSQq1TAMsI6hAC6jaVN8Om9cgmLqjgqVpckwOoT7eYN5BulNAkx5
E5FUvCHRvzUrcpbQgSHh0pd9DSSU1SZMoOX6BFf2XcgETYBzdyqqOhy6hShFN6cjBCl+W8s1
fQxVhfvDSCiOuDPLIkU7SUwDSEzkqDpE799Sj4ldEtcVysGdk37/HsmJ2wMLc6jgV9vlpBHx
MIso5iReJRlz2yM5jRb8Loo5i2I+RBvz4e3Z65NHPy71yol3+MMpFYXBbeL7U/9z0CBw3Q2U
rdX5dnHyLjZBgPJmSMWjdEGmogUNPqHBb2Ptpd852RS0R4hNEZ8TQxFbtQYfzPjUy9jimwii
M7GgXCyRYF2L80G646RgvV9UyRJk0IyWaAxFwjFv1SskVcd7ScXYmUhkDSe0nYdywlxKURQi
oVq3Yrx4pW7MbU+dXwYvEkx/mYb1iqoXXQhWA0I2tOvlWtjJvRAxapjz2VOJxEtnN2JEPWwv
bA3FMbjrh6f7m5dH9A4Jwt2u+aVziuPvQfKLHrNjKlsBpQbqJOAwOUgvRbVy1TWJx1OqyqIt
5Np+dogEEEOag9zNpRLAInE2R1EOI6626lK/kyKhDR8HzPEG5WiKeKsJWnvKK2gn2tbQ2jOw
AsSaMZHTLG/5ZJThBsRUtNK1IFC7kZTRDqTSfKKHS8pzXjSk7mOsCXOnmeWcVbTlx9++X999
wbd5b/CPL/f/3L359/rHNfy6/vJwe/fm6fqvPRR4++UNJgD5iivizeeHv37Ti2S9f7zbfz/6
dv34Za98sebF8p85v93R7d0tPtu4/d/r8cWgEXMTlZQejYDDhkmdEH7M+2IJwxTVFUg2tj0T
QDAoyVopPPZQWSiYCCqrTIwUq4jTKUMuTKyVoIe8XdOkeIvqpvKZb/voMTLo+BBPL7n9nWoq
39VSi9S2AUEFq3ZDCWlYycukufShO9s2o0HNhQ+RTKRnsJWS2tFhYL/iHGnr3+O/D8/3RzeY
6/v+8ejb/vvD+D7VIQcZlDTHj1hWrJjt2emAT0I4ZykJDEnbdSKa3LaGe4jwk9zJrmgBQ1Jp
XxLMMJJwErCDhkdbwmKNXzdNSL22749NCah9h6Rw/LAVUe4IDz8YLxT8WR3pMVcXWxZcXy7S
tmb3A77rJAvJXeJVtjg5L/siaE3VFzQwbLj6i1gsSqVPAvgUDE/bS18+f7+9+f3v/b9HN2qd
f328fvj2r8XoxtltWVBSGq4hnhAVJmlODCxPZNpS9zNm9ZZEV3u54Sfv3i0+mPazl+dv6KN9
c/28/3LE71Qn0Fn+n9vnb0fs6en+5lah0uvn66BXSVIGdawIWJKDbMBOjpu6uHRTmUw7cyUw
q0W4B/mFCDgL9D1nwF83phdL9cQc88s/hW1cJsToJRlliDPILlz3SdcSzVgGsEJuA1idhXSN
bpcL3LlXPGbX8sutZGQk6nFd5/GBxUjnXR9OCZoqp/HLMedfZPhKFrYzp4A7qkcbTWleEuyf
nsMaZPL2JPxSgcNKdiPv9QdpWbA1P6H99BySA9wEquwWx6kdWNMsapLjR0e9TE8JGEX3bmia
sO+lgAWuHC+ptSvLdEGGxzB7JmeLcCMBkKwLECfvzijwuwVxWObsbQgsCVgHcs+yXhHt3zZQ
cngTevvwzfEsn1hDuPEApgMI+0Wzql+SL9MMXibhzICgtM0EMb8GEaS1MOuFlRx0xpCzJwz1
odhHbReuBISGk5ASfc/U3+HRnrMrQuQxnJdgrDwlBhAO8QY0tUPHSjiAHWdEUd229jMX6Im+
//GAj0BcfcB0OCvca7WRq9oXACPs/DRcnsVV2DqA5eGyH28J9FsHUITufxxVLz8+7x9NpBIv
wMm0wFoxJI0kX3yYTsjlyktjYWNG5umXrHFeZhGSKCGtwBZFUO8ngaoPR/d1W863JLeBEq4N
gpZ3J2xUgJ4oKCHYRsLy34SS6URBCvMTlldKsKyXbV1wYu0Yz4lQWjc+Zbaa8v328+M1KGWP
9y/Pt3fEgYhxBCiepOCavfizpkIPvHb4IJHerWFmpYCERk3S3eESbCEwRFM8B+HmsANRVlzx
+QqBIjlUvXVoUuPki4qHByxyeOVbaoPxjXrrkDBGe4xbdB0rRFcfmC0k0i9ovKfMAR5E+l8p
BntyfErxUaTRrk+Hy2lZxndOUGYLmSRwHJMYVhb1SiTDalfE+jFTRC+0WHtZlhztacoY1102
rpXBIJt+WYw0bb90yXbvjj8MCUfLF16k8tnTd76wWyftOV5abxCPpWgayuwIpO9NEqjAaVhj
UbvEUmY4etXxdGi4dvNDn7tsvNWdGAVGIvlLaUxPKtf40+3XO/1O6+bb/ubv27uvM9PQl2q2
kVM6boMhvsWEVfY1JOK1MmyNDW2XrKuUyctXawNehImt2+4XKBSfxH/pZhnfrF8YA1PkUlTY
KJi0qss+TrFXYmxWW5RsS5OBDEvQx+H0lFbmgQJ0cSYH5TDjeiYx5aBJ+aQIEE0x35W19Myb
LJBaq6S5HDJZl56LpE1S8CqCrTi6ewk3sklSy1SQ76MkuiVUfbl00qNrIzZzdnICWxhOcQe0
OHMpQuUlGUTXD+5XrlYFP903QC4GNitfXtJv0x2SSCInTcLkll6zGr8UbgvPvEM0IRNAyeS9
vQ6WoR6ZWPaEUHGENZPWpdV9ohKQMSfPnrkshOKTFx+ODikoU7gi7JU+VT0oSLREyQilSgYZ
lqQGyZaG0+0DmZcgV2CKfneFYP/3sLMDWI4w9X6uCWkFs6+tRyCTJQXrctgIAaIF1h2Wu0w+
BbBxCY/AuUMwHnZuCwuxu4rQW202O9u+yzErCHSoAaTO2tHzbCheXtm71MFBjTZumVgytnKr
3rBi6Jxzm7VtnQhgDxsOIybtnIx4USJq522eBqHL0+C8j0G4k+6jUs1SmRMG4G2rLvdwiIAi
lCxtNSdV8fqTgkkO6yrn7otUmLdc1aVuCpA2q81zxdeokqYnSBCLSeyIyhBV1ZVBYE6ExsVO
qKauCxcleUA9uoITGNQ5AicdBwFDSXJDM4rTOUad4qtCLzWr0guruauiXrq/bPZt5qxwPRun
NdzVpUjsHZkUVyDsLu2uCHmBQjrlOFs2wvG5gx+ZnWAe35bi2z44I52VCavVNGGTtnXYsBXv
0EOvzlJ7SWc1zFbgtIdQ1xMeyc5/Uk4hI2pxFtCf/SRDbSjc+5+uw4MCNiBnFH41LgmDg746
TIIeecPpT9qZwzSMsu0p3OL45+I8GJ+K7CDAFyc/T+iQFYoCOMzi7GckqMXYFmpQ25W3hab9
2eDTXceSMKEAo/aSOn8YvrEASZug6zFRDPDgrOjb3HsLoS5oU97UnQfTUipIWZgC6HhCgVzh
7F68769W5JPnQB51L7mNVK+gD4+3d89/69gZP/ZP9tW35RgPHHytciCSwzviE+aHE5hExgrN
GQNoXgUIq8V0Nfg+SnHRC959PJ326qj5BCWcWgzpsmLAEA5EinAoBt/R31JTymWNih2XEj6g
85ZhCfD/BoPzt06U/OiITgbD2+/7359vf4zqxZMivdHwR2r8dW1o36H2koQmDlsmq4/niw9W
zihcIA0csvigvaRvKSVnqbI3ARVRdA5oTEolKliY9hXkeDDo93Xo+1+yzj7wfYxq3lBXbmZ2
XQockAm0n7O1Sn6FmbrJ1zm/Om7/sVNjjms+3X9++foVvQ7E3dPz4wsG3LS0tJKhRQC0RWkp
ahZw8njQ1rmPwLgoqilifxSHN4C9Sic+53EeR6ElRqZVh+cW/6TXsyHD+2hFWeJ75+h6nQoc
nUvsI03xrPUqtQ7E8Jfpxrhd7SYrdOyCWyHXTmnp8sCoIha0eZX2wv0G/tmJqgcJjXWsRRNw
LpKPxyHnXbasAl2tEp244oNevZare8soN5d1gl+tk3ozLGW95o6Dyy+tKXfA8bUPD/YNvpUx
poPRa2YqzHqghPyO7zpM+uDmldGlIF7JVjRLxq/rbeUnyLTRTS3auqLtCnMdwCSysHZZpzAB
Q0TT1DT6PV7rd38EE5Kei8+0suBVbLAqAiDN1VxCdAn/BTKZ9IrfvdYbZFLAo6zIAiTVaMc3
x9S0stuiXxpSZ1IVQln3KUaMO3RcUiB7FMAsw5ExmGgPtHTRuznmWxBK0hHFq1Q/rw4L31Dn
w6zKaBohu54Fyz0C1skglWeZj1qjaIUKahE2JBerHD49PEiqO/hiNQNuF5bhoGMlaYbIWttt
1UOgQ4Cr3Yw+fhobXhxoLK5IFN2qeuZPaepaK7yK/QJntqsQdY/vlylBReNFVTg5LzVUDYMP
DLqkwXMwBZslBtzLW3C5kHN+WiQ6qu8fnt4cYdqClwd9gOfXd1/td5kwJAm6GtZ1Y42HA8YI
Gj3e2sy7p8469BDsGzLF2tQqRA05BlWC02Ntrzt9FE0oxV9gWD8uTqynesu67jAHXmkRqpZR
ltkY7dj66czaXoB4BEJSOvoXTPFEDo2X9m0GOejLCwo/xPmhN7b38l4Dx5tCGza/yDbemETZ
/j7CMVpz7ocM1DZxdGKaz8j/enq4vUPHJujNj5fn/c89/GP/fPPHH3/8txV/EwMZqLJXSrfx
teVGwq61whVYGggiJNvqIipYp16jJlJFgN2N8km0MPUd3/Hg6DLp5ANeRpNvtxoDzL3egp6Y
+wRy2zqPlDRUtdDbhfppXUOREmBtGoFqOf0JDq667B6PYEf4VNXDBsJwDLEDfu5ZcIi3SeZ8
7Sim/49FYcrrJKaWBEaSFWwVjFUIV1xNfTTDlPqBvtB9ha4isAW0vZw4RPUBHixnvRv/1qLf
l+vn6yOU+W7wkshJtK1GWIRCTTMC/ZMoLnupGBbCuUrRUsOgJC/QXjHEsXCdsA820y0/kTAQ
IEzrwPXadSTpSUlUb66k9zciykxuZ72JN2om0KlkcgQ8WCoWDiRP6zvqKSQWME618yW/IJ4r
OhT6ucSwUqsLZDpRp6Te6Y6Jt78vRu1Vejbe0TygdhKI8GgmtrqNdydVctnV1t6sVBRqaIv9
iB+ljayvtC59GAv9aHKaxlg9Mm9T6AL09iqVOKtc322NS5Fg0APcO4oSdIbKFukVRTJ+qEux
VoNqDkYGHby6da2Jy0uVPcvPpK1yVit652oX9UAc2XYr0L7gd9wqalR5261tPGtAtyhh94Bm
TnYrqM/Ydv2KRkLCsOv1GMUB9W47KDqc4dluSU0vxTEiUzx9D/sVXQCcwrXMHy0Txgakqoxo
lRYioh/m24J1VGf0pI/LiVJzxvXSVqxp8zpcSAZhDEXepOryl8DaYUXoHntigoMLgwrMzE2h
WQU8mKHvgf6OhwuEwIx1hP1fFmvlgaJSsjMyjbuZR7XoW38xxXapi8WwQ/HtiG12zciXVZcH
FWIcHhP6vvVHWG9JHV/Lw6l9RLk22BvSRlsv53TRrFC3SjgBtClfE+oe4l+9bL0oBcGK6xic
MU30ELGaZpM6Z4pFM4XvU9tZZfiOPNGbhxb5R1D//IjOHu0D51bLysaLXhRq4iriqBgtfXxy
C324/2f/+HDjnO+z+Nwk05uWLZeS1J6QSCNtPorzrTkJyKEg4Z6dusXyEtMTaxND7K2Mit2B
KpB9oUG04FNfNnB6LnkxZFyFC9PmCjvMSoSEiBrVSVhlu74ha5zIylYM+urlMB32FY8T1ERh
BbfrA/O4K8lHdlrx8ZhGKsYzLlorXuVdHqgNaZouhYGJ2gfanKVwRgK7x0hNxz/3x/o/61Ij
WD72nVK3f3pGgR710+T+f/aP11+tlB3KdmAZFJQpQbXXfnXqWBgcGN+pdU/ilGDihng0gvOg
1uocB3CmqDPFP+LUVmG8Q54do5pX06sxB6ctunafF2qbEMwCWp01w7JdT0bq2eCDZKN1Ud0+
SjTikkZ3pMSrG9mXyIKcGxyNhPXKJGcqHg5M+6mac8Py4OxQ8orWpY0P+KwmrtNIsGLliKj8
7VoQiahzHglKUaHB1T6/+fiJswGMNqe2X5SHL9G1xFcvbP8UF+V4pATc3ngWHOJF9otRt2zV
jZzvcMf5ndN3tvqdcxsiW+flqnboBHBnx8ZV0Mn/0AZON8TuTPS9oCP2K+xOed7EJsmyodpg
iVfUnbq18brtuaUpIJyW1L2lqDB2dxcRB/DDTMgSVHdKUtIj5oVjg9JgkxbpxHGsi079+Nzi
MpQvgCqP5ETawZREWD6bwUpKyhQJDlcLzQ6/1FMH0kV8ciLmdb27eJmAFB4uQOVJKvzlCuTC
GzI9A7g98BaIDMjES9/Ac/A8CJ6Ca0eE/wO0pfQiz8YBAA==

--5vNYLRcllDrimb99--
