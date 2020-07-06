Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLNBRP4AKGQEE3IQYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C66321531D
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 09:20:15 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id d20sf23054268iom.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 00:20:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594020014; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2i91Psn+qIkqxHuZY6FWu9k8INsGoH/YWjznERSihddZ+4NE1y4S8sflDqoTDtUva
         PamnmRyRsinlGCxenAyGrn5o8SRp3XmPQ/I8qgBmhuLQ5CEcRHmFF/oObYkNnbQkT4Wf
         X2GuJwXG4839ktocXTSjedsaVU/qeZhzzdTYVZKr2kWiMgeX4TwNlAVmkJqwBDRHpal2
         4PA2YTxuXsYGoyvCHCf51QFX0Rb42q1p4gUbZ84vvbw1yyfLAVJlMwmVvY0vXCFIDDTx
         Gl9x1GsewyroD1cKjeguUXBJwqJaKrOHktDIiVJCixczEiE8uh827pt3CRjuQToUiJD0
         kHNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=awinx6RlMXllikXw/N4PPsH2c4PEiZA5nJkUBN8GvSQ=;
        b=QCIEpLnoi6/AddjPxZNtOh8G/Bybpis3fTX8GINGYzDHn6u8pYTiWZYyhRKS0TBepx
         Lk5zoa7OcL8/xndhKNnOogtHnv0wofU/XDtjPI3Ew97TaKySIjoAV//9zH7kx3gclSAt
         rd1e3s10LjjW5q6cPO+hQuKLPmqKZKCHl+iu++6z+lE7BHddRzYW0FHwcySBodEiv0MQ
         tmhnEBT53wDnuxDroJngmz34jukd/pGoV0N3IHGY3VrjCxW6tms0Mo4LG+OLTrIweuJi
         YUC8HO91nZZqYJlqDiaNZyEeJZ6yOZbZ3yGnqdgvO76DdR7/vRHks8rcqO3kzwaeWQ9w
         el6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=awinx6RlMXllikXw/N4PPsH2c4PEiZA5nJkUBN8GvSQ=;
        b=lx/MGNPu7PutTGKASMDJPBbSP9NGLDkxuLKSWIoKnPHIcYNJducmoLRJjnjamUzhU0
         tgk1lvltNUQnmPAjjETlyfJrngdXSQyGlpHOHZkLLvHxsz8Mtk0hbeqTOsG/rIxxkIrG
         yIITPgWeDm7u9Af3ppbDHH7u5mqfaerJ60p1WEncNF2wzQW6+/Q5lo9FRlU9u8ky4dMf
         IvBZoXd0yF+IjxtVjkd50Hb+jQWGilAF1c7cV8UVdr8kTUXhiQEs6PQfvhecivw1Htkq
         FLvJWL1n1oEHa2gn/cu+V9ZBPO5E1/qE2O+E07IIrzow9wBwoaslFTmFPXzfAztc03gW
         Lg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=awinx6RlMXllikXw/N4PPsH2c4PEiZA5nJkUBN8GvSQ=;
        b=FYuQQTAC46x6JKHtErAGLZ2HvbSvN2mOuz2ZPKfZZfMuvQwjmfcFVfQg/EXu+r7Np7
         ODyys6YQv0OEKAe6ZB+pt9vpMJQatOrf/SCS6NB26DyaKbPKRQA+lezGQjpq9CF0/unH
         rWq+ziPjk/gDz0gVLriU8tdU1/JgT0cXIYkxZ4idQrtlbmsFRp40l7HE7jDj8QOPF2na
         PuDrQGju6RUMXS8u/pJ+f3JAxlPjxSJv/T5Xl40M3YMuRU7QAO4A2OyZ0T4QqNuaImg3
         Hfiy3msQhy+ATpEyS6GJ4m36zeXYKRr1Sz0HCvnjvSyl7zoxooOVYGWUCalWhY2qNlaO
         adJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eR/QSXkGPQ21rUMo28dDgEVLtYWvnZr6RDIUK4aV7OIpBuFBI
	e/c/qzfa7/GKDWWkpOjqFEA=
X-Google-Smtp-Source: ABdhPJx/fs0FiohjqqgqlsYAQirmUlcH8lL9BuJz85oyQ1AZ+QH0PMuXCPrC5M+pUlzyYxghmx6RWg==
X-Received: by 2002:a92:8b0e:: with SMTP id i14mr27859236ild.307.1594020014000;
        Mon, 06 Jul 2020 00:20:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:11a6:: with SMTP id 6ls4086764ilj.5.gmail; Mon, 06
 Jul 2020 00:20:13 -0700 (PDT)
X-Received: by 2002:a92:dac8:: with SMTP id o8mr28690739ilq.152.1594020013597;
        Mon, 06 Jul 2020 00:20:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594020013; cv=none;
        d=google.com; s=arc-20160816;
        b=TwCpa3i5Nq3TTrqVDFv8McUKVwy8SHEdWdnT4Q7PqQL27p4A3lPdqV5vsIc8R46dsu
         Y7XkJvkZR6+X1n+T8+kLAHQbznO7mE1YLMW/0zMyqhJeH8xbTAi4l7Xx0fU+MhCOM0BW
         TxKy75aDGLWu9ZwN59YPNDMg19Nyl44CbIqBh1kv4WYqT/Qz92qYf4ckFzK4T11BJkCp
         UhH8UBqgw5mK3iARgUtLyEgHsoKnZiCvnK3EQ541IEb/LU1mCZq8sxFlWl0uPonCmX6H
         0tmO8y4wa1UnwfF7t1o5G5vJ0EI+Jl50MGIAWJxPXu8/IN8ciVOD8zXb1eIFVHCzqFGG
         XVpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ovFB1yRiP2rKWZXViLAvtqKr+ZX61eqbyTKXjebsjUA=;
        b=JJxoKF5m7Y+bSR1BH24sTdmivOBx3Efuf6QSeDcK39pW4oEWWim0LZh0YhsxZoaeZI
         LcHm04/saVLu6dyTHqi71BYSb4tIVfgfccyoOyqv7eA4x6FvhCssaplprNuQS5gBJWjv
         l2NeCdT1J/DEvELPrm1azAEdmAsmqnW8Ohecv/OBhOfyfiPUI9xCXBw6bAG7umDSPCSD
         0HSTApu+CA+IrjpGdvy2qM+WIWbdLQAcNHiosspJ5wNaa5DM5UHz+UqXyBH6ACOjHF1U
         om9fNjm/DudjuNdfgpVvM1rXFgAZ5INswIU3DdaGLtO2ETpddAauOGHrRLEUZfsuL7r4
         A5gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d3si595486iow.4.2020.07.06.00.20.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 00:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: +E6tbf2HuGgsw1dO2x3XWCg3MpBU3IcvLA1ab3j2smxPSCg8Z97rdkajbit1kyceYdbVDp/MYz
 987kI80maycg==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="146448100"
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; 
   d="gz'50?scan'50,208,50";a="146448100"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2020 00:20:12 -0700
IronPort-SDR: yjVNdnMuwVzQNvbReFrKe3UydELKBD3mw1JO5krfh7dqywVgE08eAS13hUSxsDyyZINssaat4/
 cwkPL3OvTnXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; 
   d="gz'50?scan'50,208,50";a="482609928"
Received: from lkp-server01.sh.intel.com (HELO 82346ce9ac16) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 06 Jul 2020 00:20:10 -0700
Received: from kbuild by 82346ce9ac16 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jsLQ9-00007T-HA; Mon, 06 Jul 2020 07:20:09 +0000
Date: Mon, 6 Jul 2020 15:19:59 +0800
From: kernel test robot <lkp@intel.com>
To: Mans Rullgard <mans@mansr.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Sasha Levin <alexander.levin@microsoft.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Subject: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <202007061558.jOn3THo0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
config: s390-randconfig-r024-20200706 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

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
   In file included from net/core/filter.c:25:
   In file included from include/linux/sock_diag.h:5:
   In file included from include/linux/netlink.h:7:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
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
   In file included from net/core/filter.c:25:
   In file included from include/linux/sock_diag.h:5:
   In file included from include/linux/netlink.h:7:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
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
   In file included from net/core/filter.c:25:
   In file included from include/linux/sock_diag.h:5:
   In file included from include/linux/netlink.h:7:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from net/core/filter.c:25:
   In file included from include/linux/sock_diag.h:5:
   In file included from include/linux/netlink.h:7:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
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
   20 warnings generated.
   /tmp/filter-273424.s: Assembler messages:
>> /tmp/filter-273424.s:50187: Error: bad expression
>> /tmp/filter-273424.s:50187: Error: junk at end of line, first unrecognized character is `r'
   /tmp/filter-273424.s:52249: Error: bad expression
   /tmp/filter-273424.s:52249: Error: junk at end of line, first unrecognized character is `r'
   clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007061558.jOn3THo0%25lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV--
