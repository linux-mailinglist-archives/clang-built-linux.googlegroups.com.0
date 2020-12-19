Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBA4X6X7AKGQE4UJZPVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A4E2DEC72
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 01:38:28 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id z24sf1539878uao.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:38:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608338307; cv=pass;
        d=google.com; s=arc-20160816;
        b=re8ThlhHMsFy2alAofSG4vpIshlNtlhXmrFwBThMzV5QPlozSJaCp7x/u53g38odsh
         nfbQFD36Yhru4U+biWkuRh80PlK+Zyo+buAN9t2bjSrHf/s9QNh5OyxAh6ckakpbsMYH
         1YL1D2v1SxWPSkjOg31fr9iGy0dgU3Z5SWRuIMxKRZMBbbntwehQG64nv8rR2Ya/uIC/
         /4e/XaznU2/uh3zCx+OJWuzDi24ZVXHN1DnSn4hC5UIFbFmsPTwqW23HW/pJV9XmNabR
         ZGU8UISEQSzMXaph96IX+HSvWgbo0p1rWSYefB9BGudbyWqzkZ4QrI3tbyrqOCxG8Aov
         2g3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=pvxyFP3EhdUOTL4h2PbohYrkKqJFX2O9PM95VDoCmO4=;
        b=rVMBiv0asVDjRob4Gm6vafckT1ofs53EiKdJNyT2LOSmDZX0mZp9BJImFqizg6JVZG
         PeMWJhSSG2ag/U5uy/YyCGSKoHOlIUZ0yOFiyN70I3VmZd1CvWsl8yaOs0wDiGTzX77a
         BrpEzs5NijNBfN9b4YRFK8Ds2ZU/eS+LbcLJjxO7gWG4a4/SQgT6QSAQsBHoxIchXtzO
         15zmuewvXorHQRpCqBBtMienoe1twL3DN9GGh+hskurnpG2XVsMcS36RNGNhnbTRDd0B
         H3QCi8OItHp8LWj8kLTUcDql9WIL08cEPXGaLJtQ0BAkfSKh3Bh0RBPGXEdD1yZwpmkZ
         8ozw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pvxyFP3EhdUOTL4h2PbohYrkKqJFX2O9PM95VDoCmO4=;
        b=m4Bfp3oRm2lp7PArRs14TJvle0fdoux6+8Ym+oGMjqvjsG/3DGpSPeUAqMZFl3CaHg
         6S0CV4mWlzY2VzWd4e/iigwtM3D1+stFpx7cQCrauSRxrGiyUHaBpvVrXGhEryha/LSf
         W0cMFJ+KkcPQltTzIqbYM/S4s9Pw7a+X8Mo7UPt1vok22FT2E6ILUTFf01Vvxtt5Vn0i
         JcUs93UaxggAmbrPF+/Zh/PPVglRGr1vPF20HigdB8H/LpK/0ZFDWT9gkUDHXGartNdg
         Jl60dLtlb++5sBAVR8GicQoUD3wvoOIG0Qc2BNhxs+ZBcC12TVQ4PwxTENzAb4OVHotd
         4wrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pvxyFP3EhdUOTL4h2PbohYrkKqJFX2O9PM95VDoCmO4=;
        b=orkD7+YmzOaGFGRH8O4vCnMp8N69vOc9FeJVZ/OxCN8Ez2nCJb1JZrY2UAPSLvR9az
         FrCoRnsrb/jpAK4K2rP+b0OfvI/tsqy7Xw2nlreBm5+NUZ1F4SxcSl4h3WLS7N1AhRrz
         ZOBTIjBwd6BMV85CW9ZAxNwQR5oNFXcsuw9DNY94zT5SZDqWvulFabnvWZgEmMMcVWbw
         +uH3rEtIanCwFFx284NeCsUBxQLkoazRXdXD3fxcrP3vkxlNV/MK4L+rvoVdgMyDMYtD
         9q0ex7CSBYMaOh+0MO0LvviI8RVx/m19WxLyeEJgNEkjCa05cLGuMom5H4RcQ6j0XVoh
         LzRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qaplcq7IcHlTYhMzv8dBNdH3q5lzoooKqMRGAGf/RBp0wTv2B
	vLSpkAWG0XCUmfI657i1J5c=
X-Google-Smtp-Source: ABdhPJzO/Io3iH/Tz5Pd3641xIW+8cBRoKN/+VDQzEpTuF0n+ZPCmn2W0Jq3ZdbbeesYgMnGxo0CGA==
X-Received: by 2002:a05:6102:108b:: with SMTP id s11mr7258504vsr.5.1608338307350;
        Fri, 18 Dec 2020 16:38:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4823:: with SMTP id b32ls1492099uad.2.gmail; Fri, 18 Dec
 2020 16:38:26 -0800 (PST)
X-Received: by 2002:ab0:5e98:: with SMTP id y24mr7000001uag.108.1608338306750;
        Fri, 18 Dec 2020 16:38:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608338306; cv=none;
        d=google.com; s=arc-20160816;
        b=eshKuPteT2fGeQMUhgbYbicEnvTRoZC19njeH1B7Ah9jGWj7VsDhvakTAAZiUX9Is4
         tx+LbnKdWPT3Id1sgLkt6qvMvl8P3ktDm2VYG3BkjxwHpD9G7AlnmwqBCIMNAi6hj25x
         arZX1MiVahN81FJWE4htC5rc3LIY87Cg0yAOqq3wwAbcfqjNGt2pJNG3CysBx9QgN8OB
         4DIeeEvWqyzh6Ygao2fXTVHR3UYmWzP9+c5APcLQRVMqLEyi+TRQWs5aLXgA1VReUjrA
         omRcMqSI/Ah0pA092Eam9fos2wZG4YeV56JIjxqUTQNSwUVXI4dqdsVZcSsHTcrYgBS0
         TV5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4QgihdtSeSMDXBg7j40FJiDheNo9NLcgzvzOnVGZtHQ=;
        b=eLU45bz3RPY0vVS7jUOxL8ELD4CB3MttEYGy+IZ66TBk7+gUXKhswsrIHIL7tnz3GB
         2Wtm5mTeANFCmFwguCt4Gre3a7Z/qE3RQwi/tHvvhb4zWHrAoi8SLMFO6EKFwH0DF3f2
         Fq+qMvr38wVRH/R4cHyrydwttWomED6Op2ogwzd6hfz4Cd54YLf0meO0+tAiRAmxOTzg
         tqz3yQLzSYNmxefFrvWakeSEAx8cX5WkOAl8Ze2mrCvNjgx17szrevNYRm9Z7lGcY27A
         1XCixVXMsuMwr/BpKOOGmwiRp2yk1B22JF+tAQmqKnUeU9wm1CI+ePg+NKt5AEUTuZMR
         q9WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id y129si935382vkf.3.2020.12.18.16.38.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 16:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 686/BIiC4KG+6EysBLFFsVlSFuRzMUAKAV5JNZLleic0lJMNH3BTqQi/KY0b5f9t39b30p5fuX
 3Rg3IAN7/Fpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="172964700"
X-IronPort-AV: E=Sophos;i="5.78,432,1599548400"; 
   d="gz'50?scan'50,208,50";a="172964700"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 16:38:24 -0800
IronPort-SDR: UIttst8iPHSJle4pgJxEYUOVDk+2F1/U9SnvsfptsbmNGo1qJwfX2VpEp3WZITYH6AWVP2h0HJ
 RS5fkZ5i8NLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,432,1599548400"; 
   d="gz'50?scan'50,208,50";a="414370239"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 18 Dec 2020 16:38:22 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqQGL-0000YJ-Mn; Sat, 19 Dec 2020 00:38:21 +0000
Date: Sat, 19 Dec 2020 08:37:25 +0800
From: kernel test robot <lkp@intel.com>
To: Gioh Kim <gi-oh.kim@cloud.ionos.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jens Axboe <axboe@kernel.dk>,
	Jack Wang <jinpu.wang@cloud.ionos.com>
Subject: [block:block-5.11 6/15] /tmp/core-555936.s:425: Error: unrecognized
 opcode `zext.b s4,s1'
Message-ID: <202012190816.kGUoEGJo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git block-5.11
head:   71425189b2b75336d869cfdedea45c9d319fc9c9
commit: 512c781fd28cb401ee9f2843e32bf4640732c671 [6/15] block/rnbd: Set write-back cache and fua same to the target device
config: riscv-randconfig-r014-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=512c781fd28cb401ee9f2843e32bf4640732c671
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block block-5.11
        git checkout 512c781fd28cb401ee9f2843e32bf4640732c671
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the block/block-5.11 HEAD 71425189b2b75336d869cfdedea45c9d319fc9c9 builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   /tmp/core-555936.s: Assembler messages:
   /tmp/core-555936.s:422: Error: unrecognized opcode `zext.b a1,a0'
>> /tmp/core-555936.s:425: Error: unrecognized opcode `zext.b s4,s1'
   /tmp/core-555936.s:453: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/core-555936.s:457: Error: unrecognized opcode `zext.b s4,s1'
   /tmp/core-555936.s:503: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/core-555936.s:529: Error: unrecognized opcode `zext.b a1,s6'
   /tmp/core-555936.s:795: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/core-555936.s:821: Error: unrecognized opcode `zext.b a1,s5'
>> /tmp/core-555936.s:847: Error: unrecognized opcode `zext.b s5,s7'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/input/rmi4/rmi_smbus.c:11:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/input/rmi4/rmi_smbus.c:11:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/input/rmi4/rmi_smbus.c:11:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/input/rmi4/rmi_smbus.c:11:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/input/rmi4/rmi_smbus.c:11:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/rmi_smbus-578663.s: Assembler messages:
>> /tmp/rmi_smbus-578663.s:254: Error: unrecognized opcode `zext.b s7,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012190816.kGUoEGJo-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
kbUYEBwBAA==

--envbJBWh7q8WU6mo--
