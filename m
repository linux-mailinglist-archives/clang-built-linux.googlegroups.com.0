Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEU57X7AKGQERXVGZCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50F2DF572
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 14:16:03 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id h4sf6985906ilq.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 05:16:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608470162; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1Ns0DDTU3h5VvVGuJiq8PjTMmAFtmIwGjv+JWgoU9rnQcuETFCj38hTk1iuFfCEA0
         VcsZy8HX6PrXIZEnNkILhH+jhUmiAirTyZD/c9pNp0aQTN37uz5tLBYZr2vabfnODLMK
         Fyywh9NaVudzltlyYaLndqw5WDeuFehRQMw3bDfhgcO6OWffjb8bnAc08WRyQIPHpyl6
         y6HAeNc23cVExkmwUAzGFFCHa1bEdm2JQmY39PO/SvxvEh9lhS+iwgMfPuyZGERoAfgU
         MpY087Z6H+2BLlJS7bH08Q0mtfvWqPnPeEBFg5d0GtNirrP/YrFo/WyhC6i0UtsB+lUZ
         /4qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XHjyKGDjnCwKTbqSGanKF3TAIqdPrV+JvZlzJfU4/4g=;
        b=snJdmuClPh4kJ5McckMAkiudufe81brtUNRG3ZeO+My77oxpy7rRyFZRXtb11dbY5y
         HcrKLuIXxCFZynlQdDgQRcIdNZFgJKvqXXrGK5zW2rPypb85Y/A499P9y58daxRYPzkE
         PrkTk94MNDibznOcakuX/EQvfzRor06uiNEwU+7Cw+xq883RFySEtC8YDbzT5FYptPNv
         Voz1ERXDA/ee3k35FVj5WSae7PzGVEAd5x5Luu78xz/k90FlPM0hcpaZ8T8xN4E/EMns
         9qDSq3xN+nkuvb5OJlCcZb7LZFoe0k54r9FSkH2MMTdyOXtk8WyxIuUenPe5K5qxOSs9
         v0/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XHjyKGDjnCwKTbqSGanKF3TAIqdPrV+JvZlzJfU4/4g=;
        b=DuZpQQoEvwctLUoiyM51pozapijYPS+LjRl/E+GGyGUKZ7VbZmAPs8GwNxxbOtu2jz
         3gV59oQx09AwJWvOPKFsyHfAX0sRk3j68WC2KcdlOGZR4mzqQzVKLl9MDgRRIz1zdl06
         fW0a53//1wN9zocxzt3vaThpMCnE9BU2p1Qn0ngPIb17ks/wNfY2P1HUVrbqk07yUskZ
         exlgeYz6KKFjiAQzcU+uzQFhMkRL1BbjVqVLZkLOnbg3ORNXoXzZCuDsiInbKsPlTKg1
         XpOhqbmNtmykAhxL40ygsDKLE6Or1ktbhqFs/UmABnCGkBnZf+7F0o1vEb0J5fxoSUsz
         PYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XHjyKGDjnCwKTbqSGanKF3TAIqdPrV+JvZlzJfU4/4g=;
        b=BXLF375ixU35KF/n/21+G9lY7Ay7/+AW/iYtH1E15XCf8bh4V4c5N4jLADLCvInX6d
         Gqe98lc0fhhEn61ooThPwemu0hBT2gE6cLb0DQs3Smo7TD1RIuO0ggzFOFFXGWIknMmG
         nt4JDxKD3a1Xp4Ze20ieYZz1qg1rtaY/aBnm1015Rhcen4CWFMzrvz4JcER8YveBXVvd
         kKbK4aYl3ix8AqscQ+EMkNJR9MjLESeahAkaiLv4TXUcpAkJ1oxMap63JsX/+ZRpPhq8
         8E6/8w22C1EtGxQSjcWo2PAcn84eqbCZ1abUhoiElYBjQj0/7yXTWotca/vB4oCCwWYf
         52Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fYya/vhmrEc/Ex6MZDKKY0Oy/lwerD2WO3EucBUbB5mTFamg4
	m+QzTOmMd4s7zq4z06q8tqM=
X-Google-Smtp-Source: ABdhPJzlI9uv0m4YijxgMo2y5Z1Y8Cy43fV6JZv5Ofs/AFZ6a1D92wcXYwLCgRerughUN4ubUX75Xg==
X-Received: by 2002:a02:3e86:: with SMTP id s128mr11415165jas.131.1608470162233;
        Sun, 20 Dec 2020 05:16:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls9512948ilj.7.gmail; Sun, 20
 Dec 2020 05:16:01 -0800 (PST)
X-Received: by 2002:a05:6e02:43:: with SMTP id i3mr12429936ilr.206.1608470161719;
        Sun, 20 Dec 2020 05:16:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608470161; cv=none;
        d=google.com; s=arc-20160816;
        b=sWQ6Lr9IlmwMmpGxkKjUmQkSdBRDaAwKxWw0FCN48Wfpnr5v066tNlLBdF0sCem+hI
         ibPwGOTpqZF8ShONyLGn6ru2fb2sItu4PFnIWkNErfelx/4Oac6lIfbOE+X9e+J12Lap
         vMs7Z4iQGwhNXwLvUdw77BuqEvoLlikXSGYJF11VaWUhYms2QeycTfJ0BBkwG76Zf8p6
         JKHQLgXdlNbHls+YQGuNZQUjzukdCyZ1P70RAysovOmxQFjwrWzRIReZC5KTg2bviDHX
         Rm0lUWJDFsScmiFpmIBK0tkWt0hLM84jFP6fMWdpGQ9vd6oMO2UhqSyfC3X6l83ByURE
         RVpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=rAkkoE5yJX2Cig4e5bhnQ8QtVYHPATR4sbSSbelLvDo=;
        b=mQ7/2NAYoV0TBanjTjdVtzOTe4BP1shlz8lE/Su11L0QBx20WjqYO5LPjEuzWTE+0F
         DqJ9iOqK3NpnXFbe3FLfLobGbPL0k+qik2bvMCPHJEAovH+fUJqqegQrCrOltMz9BFZd
         5GA0bTCs4INwTqW184NwDXz8CxyF+cNz4F1hGk+qGw+Hly6LuaE2FVQ7Xp9m2TM+GlcH
         48ju52UUNbfWFo4JkCjBXG5uIHrWi0I3DwyFI6MfN8vW6N41s/LQzdbMH7F3U9KnBHpj
         zOhxsvn4kCtTx/JbdkjPtfSIwakEOH3GmB8BibteiH/vHyes1QBEyMDt2wR71Gb33PBb
         4WKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id j18si849055iow.0.2020.12.20.05.16.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Dec 2020 05:16:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: +/SLK0HkF9gpeBg1EI/3FUOEuq1lQlEJF+my/p2zWbqMj3c2yAzyrcjmSMG2dfVZ/dylVDHIdI
 RpQlWUwct9xA==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="237199854"
X-IronPort-AV: E=Sophos;i="5.78,435,1599548400"; 
   d="gz'50?scan'50,208,50";a="237199854"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2020 05:15:59 -0800
IronPort-SDR: oedMZ72acmU9xkL7Sjx5pcK2kmHfmgGV2BNOyKR0Y8sodpdSEInYMIG1BXPNwcy8PEbqkjzUQN
 RgWeQN66c69w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,435,1599548400"; 
   d="gz'50?scan'50,208,50";a="371807051"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 20 Dec 2020 05:15:58 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqyZ3-00032j-On; Sun, 20 Dec 2020 13:15:57 +0000
Date: Sun, 20 Dec 2020 21:15:28 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jpirko-mlxsw:jiri_devel_linecards 4/7]
 /tmp/gpio-pca953x-252868.s:196: Error: unrecognized opcode `zext.b a1,a0'
Message-ID: <202012202126.7MIgINAY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="G4iJoqBmSsgzjUCe"
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


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

TO: Jiri Pirko <jiri@nvidia.com>

tree:   https://github.com/jpirko/linux_mlxsw jiri_devel_linecards
head:   9f31749a2e3b71eb5e1e7fdb194c3cc72861f26d
commit: 45959eba173ffc9d5e0a820175009fdb99c818a9 [4/7] mlxsw: reg: Add MDDQ
config: riscv-randconfig-r014-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/jpirko/linux_mlxsw/commit/45959eba173ffc9d5e0a820175009fdb99c818a9
        git remote add jpirko-mlxsw https://github.com/jpirko/linux_mlxsw
        git fetch --no-tags jpirko-mlxsw jiri_devel_linecards
        git checkout 45959eba173ffc9d5e0a820175009fdb99c818a9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/gpio/gpio-pca953x.c:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/gpio-pca953x-252868.s: Assembler messages:
>> /tmp/gpio-pca953x-252868.s:196: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/gpio-pca953x-252868.s:571: Error: unrecognized opcode `zext.b a1,s4'
>> /tmp/gpio-pca953x-252868.s:572: Error: unrecognized opcode `zext.b a2,s1'
>> /tmp/gpio-pca953x-252868.s:724: Error: unrecognized opcode `zext.b a1,s5'
>> /tmp/gpio-pca953x-252868.s:725: Error: unrecognized opcode `zext.b s5,s1'
   /tmp/gpio-pca953x-252868.s:745: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/gpio-pca953x-252868.s:875: Error: unrecognized opcode `zext.b a1,s4'
   /tmp/gpio-pca953x-252868.s:992: Error: unrecognized opcode `zext.b a1,s5'
   /tmp/gpio-pca953x-252868.s:993: Error: unrecognized opcode `zext.b a2,s3'
   /tmp/gpio-pca953x-252868.s:1105: Error: unrecognized opcode `zext.b a1,s1'
   /tmp/gpio-pca953x-252868.s:1288: Error: unrecognized opcode `zext.b a1,s2'
>> /tmp/gpio-pca953x-252868.s:1367: Error: unrecognized opcode `zext.b s4,s1'
   /tmp/gpio-pca953x-252868.s:1368: Error: unrecognized opcode `zext.b s6,s6'
   /tmp/gpio-pca953x-252868.s:1392: Error: unrecognized opcode `zext.b a1,a1'
>> /tmp/gpio-pca953x-252868.s:1505: Error: unrecognized opcode `zext.b a2,a2'
   /tmp/gpio-pca953x-252868.s:1653: Error: unrecognized opcode `zext.b a1,a1'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012202126.7MIgINAY-lkp%40intel.com.

--G4iJoqBmSsgzjUCe
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZfJyisWr/h+biE0ORRkBAA==

--G4iJoqBmSsgzjUCe--
