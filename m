Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJGU6P7AKGQE55JMDGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 347222DE869
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 18:43:02 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id l23sf1688413oii.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 09:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608313381; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZunmVorEYLPTInqhh1lgwmnoBXwuedUGwtRiWzcctRatiL3Vba9Z7c2gO40JkLXYYF
         vBVd64cYd1ZlyKS/xE0O/KJ71hFw2mF3se08u4Dxx/y836dqVu7ouXmjtHvKuJcIkoW3
         VNHoeLV7L270Adm7+9rpbgPRXZAXuEL3pYHtLUf7C5LmzqRcbeC5nW46PVh3hSaeDF5/
         WNPW2Ba4OiEGCXMi/DfmfabptOzCIMw6Sd/qL/2XGWPo4G32TeHbzsq1R8BbQ2bOrHi+
         DhVj+TXZrxEBF7FAt3nhRYYBsWhgBKq20IHHOqV9eKtVvBJmuO6UsGxq2cCJ3Cv05ykp
         Q3Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=iXIUmk/yGv2PYqax16JeUYRfHVaTzqSSbJvXpvhJIo4=;
        b=VVkqu8UzUsdmmPJH6dnSTt0vRjXE1VMpe8/p8oEcCBwRmaiRLaJqWhZAq9v1IiqtkW
         Rpd1SgJ2Z0z3kH0/nV1WVZVjJPimODRlWYFVUkGMhiuVL8/3TbECWFU7ksl6fA30UEgZ
         kQBfU8hJ8yHvWzcgBf1wr23MW85rfTsQdB5R5cq+4eOOnZuD1WJ2Ctjq0sfqAP5UbE2x
         eY7ddKMCkHCNOPzaTqnGa4YUOd5FKZ3Ggb7uvm8nf1aYxhLLJzmD25JTtK67J6FJtJ4s
         Oqjp54P6if4UnvycTblA8LgvlFycDTcvN0ygepjGoqydPfejWfkElCatLf/xdF1hNwn+
         PBWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iXIUmk/yGv2PYqax16JeUYRfHVaTzqSSbJvXpvhJIo4=;
        b=LoD5NJQkzt32GZj1jYZ+d4CouMy2DtNXYMkJ/iwqekeue3iR6dr9ajwjyuxDc/QGae
         tbkGivIJrso0xaYKtiJflHgnR8oaZ2ZR8zZ4ejT+z3Ww/qeMBcHpcTtTBZHil/A1EQkC
         dFmmGxKICk2Xkefg0IqPzi1Tpi8oZUxbtq5HUK3dK1QVQgnUBL7FD9RbpEuXpzw0tOLw
         Np4XI1GTJJpIsaztJxYAvvH2qnemYF7ycda6jYYLpa80CiYa7PmoEnCrq5jGsIk/Awil
         CQtiq2UFmkTRy9tfmSqJzi1JLFpN1GAmL0FnQvW10RtvycwowDZl339HyTLUwSDFbYWY
         4lcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iXIUmk/yGv2PYqax16JeUYRfHVaTzqSSbJvXpvhJIo4=;
        b=BKwOz3AOtW4AENXP0+INcZ4FI3dKA37jrjO8E7z/jnQzkyeGgvnnyk+FENlnt04VIZ
         x7e95asHhcFb/cI7mbq5hu5EGosh1YLK46P8A1OjQZau0V5LCb3Ycb63X1lFD4QFE6n2
         bhKVBfvWIbidqKbUpRu2B3ZO5MrueMrYfMS6zCc6mpr/2CpXD5afRN+RpOocIlXvbiio
         RaABo9LsdzxfDTnYoUuefcdelpGnaR5PL4aiB3hkHMDCn8Xfmbv7Xat/XvaY9+mM2a47
         m2GCemo7haW8Z5IfxdNcaCoa37nV0L3dbIbZLxC6AJtFYCMd+VvagtoY3XPWkYaI2HjF
         3FmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325/GG0iQz1IVeblCnO9vldXucX3RUpwi2YDbM3GEGBQDZP3QcB
	phh6v1cAHnTHKr2tyvQTeAE=
X-Google-Smtp-Source: ABdhPJygPz3LORcgHFiCuDJPm+Ab+30wBgUJYty67hBm5CbShwoAuC72nZFRXB7I/C4873a4oICS4w==
X-Received: by 2002:a9d:908:: with SMTP id 8mr3688580otp.248.1608313380990;
        Fri, 18 Dec 2020 09:43:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls7909357oif.11.gmail; Fri, 18
 Dec 2020 09:43:00 -0800 (PST)
X-Received: by 2002:aca:1c0b:: with SMTP id c11mr3550761oic.16.1608313380363;
        Fri, 18 Dec 2020 09:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608313380; cv=none;
        d=google.com; s=arc-20160816;
        b=W9CrQvZ0GAatJtOWUNdVHirU4KQrS2+9Xoa8FgsilkJqjOXbmdz3EiAYrpcBpS0rwH
         E1Qm3DEKLibjGjrQQ4ydSKW4tVhAlj/NBVvE1tGh97r9rYFclnKhaiUUqVDUC88kfUKF
         UakvCdB+4A8iWRDVdfEPeL0uLHeGZseqoOvNXmiZwPharNA+AM2v/FydKtuEKOBu70Tm
         3g4uW/HqBcrPv1Fdr7EEAOi6VEXkJYT86QOiI6LSqepnWGjbciWlfaQCGshwYZSeGToi
         Xc9cY1JqeDqNqIJ+z+z+2j86OKiZx8HvLcz55eCMyXE+ENtSVRcFfHom7Z2kl11SELRE
         wK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Dm9klXbV7sBRSusSuHIsFu+gP8Ttd2bMJJ8cET7aDEQ=;
        b=TSoflzLsUEwF+6AQ2NyXfqxx4Bc77X66Crh2z9peoVvktPaaFCgl+1vR2WtA+iRLX1
         evqAGWkdHzPeIDSdlauanzOzadAFUj3swNy03V0zqA4D1H1B70R7IoAyxpieLCWTS9ZC
         +vzwt0u1Z4egE17/CpzC362drY53lf/wemvWgh4whjK8i8n0b4tp8sOeGC9/68RJt/B2
         xX8AWgiZJtaOuXE1A4biC5KQYe4cErqHdK9lfUEWJzTbxATfIlysZMNTePpiJrFcQo8Q
         y2rABFce2NZhHL6LvKheDTdg0sl9RLfCZZBVk9T9t5pyK8MY99Acnpiz/xDZGpyG4ML9
         o8Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id u2si1155925otg.1.2020.12.18.09.42.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 09:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: os9BB8AMmLvvy3iXK3YMxqvi93ZnIoGC3UgyQFq30Yt++sHoOuqygOzWlz7wA4ytGueq79QeD7
 0InWFNgHQmJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="163207862"
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; 
   d="gz'50?scan'50,208,50";a="163207862"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 09:42:56 -0800
IronPort-SDR: khp2unvRoMZpCm5V/+I2DviTEOkp37gwHtc2bT2IMCqmPZEJco577jyD2FaakbZdRqCu5YH91U
 t7wAwRjjXEow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; 
   d="gz'50?scan'50,208,50";a="489855887"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 18 Dec 2020 09:42:54 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqJmH-0000NM-L4; Fri, 18 Dec 2020 17:42:53 +0000
Date: Sat, 19 Dec 2020 01:42:21 +0800
From: kernel test robot <lkp@intel.com>
To: Petr Machata <petrm@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ido Schimmel <idosch@nvidia.com>, Amit Cohen <amcohen@nvidia.com>,
	Jiri Pirko <jiri@nvidia.com>
Subject: [jpirko-mlxsw:combined_queue 2/30] /tmp/pinctrl-da9062-152917.s:464:
 Error: unrecognized opcode `zext.b a1,s1'
Message-ID: <202012190116.AKhNFZZ3-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jpirko/linux_mlxsw combined_queue
head:   b522603173a3860c1e8aa8035d17d5227604e173
commit: 1994d0a13629739cd5a41b66d0524ef44f83c40c [2/30] devlink: Add ecn_mark trap
config: riscv-randconfig-r014-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/jpirko/linux_mlxsw/commit/1994d0a13629739cd5a41b66d0524ef44f83c40c
        git remote add jpirko-mlxsw https://github.com/jpirko/linux_mlxsw
        git fetch --no-tags jpirko-mlxsw combined_queue
        git checkout 1994d0a13629739cd5a41b66d0524ef44f83c40c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the jpirko-mlxsw/combined_queue HEAD b522603173a3860c1e8aa8035d17d5227604e173 builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/pinctrl/pinctrl-da9062.c:17:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/pinctrl-da9062-152917.s: Assembler messages:
>> /tmp/pinctrl-da9062-152917.s:464: Error: unrecognized opcode `zext.b a1,s1'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   /tmp/leds-lp3944-623310.s: Assembler messages:
>> /tmp/leds-lp3944-623310.s:248: Error: unrecognized opcode `zext.b a0,a1'
   /tmp/leds-lp3944-623310.s:360: Error: unrecognized opcode `zext.b a2,a1'
>> /tmp/leds-lp3944-623310.s:365: Error: unrecognized opcode `zext.b a1,s1'
   /tmp/leds-lp3944-623310.s:386: Error: unrecognized opcode `zext.b a2,a1'
>> /tmp/leds-lp3944-623310.s:455: Error: unrecognized opcode `zext.b s4,s4'
   /tmp/leds-lp3944-623310.s:468: Error: unrecognized opcode `zext.b a3,s2'
   /tmp/leds-lp3944-623310.s:472: Error: unrecognized opcode `zext.b a2,a1'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
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
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
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
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
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
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
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
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
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
   In file included from drivers/iio/accel/mma8452.c:26:
   In file included from include/linux/iio/trigger.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/mma8452-400513.s: Assembler messages:
   /tmp/mma8452-400513.s:851: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/mma8452-400513.s:1026: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/mma8452-400513.s:1191: Error: unrecognized opcode `zext.b a2,a0'
   /tmp/mma8452-400513.s:1210: Error: unrecognized opcode `zext.b a2,s4'
   /tmp/mma8452-400513.s:1211: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/mma8452-400513.s:1308: Error: unrecognized opcode `zext.b a2,a0'
   /tmp/mma8452-400513.s:1553: Error: unrecognized opcode `zext.b a0,a0'
   /tmp/mma8452-400513.s:1828: Error: unrecognized opcode `zext.b a2,s3'
   /tmp/mma8452-400513.s:1882: Error: unrecognized opcode `zext.b a2,a0'
   /tmp/mma8452-400513.s:1887: Error: unrecognized opcode `zext.b a2,a0'
   /tmp/mma8452-400513.s:1930: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/mma8452-400513.s:1938: Error: unrecognized opcode `zext.b a1,a1'
>> /tmp/mma8452-400513.s:1939: Error: unrecognized opcode `zext.b a2,a2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012190116.AKhNFZZ3-lkp%40intel.com.

--Kj7319i9nmIyA2yE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMfQ3F8AAy5jb25maWcAlDtbl9s2j+/fr9BJX9qHNpZ83z3zQEuUzVq3iJLtmRcdZ8ZJ
vfWMZ21Pmvz7BUldSAmadHNO0xgAQRAAARCkfvnPLxZ5u52f97fj4/50+mF9PbwcLvvb4cn6
cjwd/tvyYiuKM4t6LPsDiIPjy9v3j5fj9fGbNf7DHvwxsNaHy8vhZLnnly/Hr28w9nh++c8v
/3HjyGfLwnWLDU05i6Mio7vs7sPjaf/y1fp2uFyBzrKdPwSPX78eb//18SP8/Xy8XM6Xj6fT
t+fi9XL+n8PjzXo8HOzD9MkefRlNnNnTxJ6OPg+Hk9HgaTxwPn/5Mvw8Hu0Po/FvH6pZl820
d4MKGHhdGNAxXrgBiZZ3PzRCAAaB14AkRT3cdgbwpybXGJsY4L4ivCA8LJZxFmvsTEQR51mS
ZyieRQGLqIaKI56luZvFKW+gLP1UbON03UCyVUoJLCTyY/iryAgXSDDML9ZS2vhkXQ+3t9fG
VIs0XtOoAEvxMNFYRywraLQpSAprZSHL7oYOcKnlCRMWULAuz6zj1Xo53wTjWjmxS4JKOx8+
YOCC5LpuFjkDhXISZBq9R32SB5kUBgGvYp5FJKR3H359Ob8cwBFq+fg937DE1UWrcVuSuavi
U05zioiecxqwRSPYimwoKAFGkBy2AzCGNQSVUsEC1vXt8/XH9XZ4bpS6pBFNmSsNxFfxtmGn
Y1j0J3UzoSIU7a5YYtrai0PCIhPGWYgRFStGUyH2vb6UyAOblQRA26B4QlJOTZgui0cX+dIX
rveLdXh5ss5fWkvHBoVgJFbOmjZ8pTJd8IU1j/PUpcq8nWklBd3QKOOVtrPjM0QQTOEZc9fg
wxSUrbFaPRQJ8Io95krJS3AUCwwDqVD/kGjEM1ZsuSpSymGykKaGLjqCNdySlNIwyYBrhLlb
hd7EQR5lJL3XBS2R+jCpBzfJP2b769/WDea19iDD9ba/Xa394+P57eV2fPna0gwMKIjrxjAF
kzGvnmLD0qyFFhZAFbPgHogUu5RzQZ6hRAlnJrxU0b+QWa4tdXOLYwaO7gvA6bLDz4LuwMJY
COKKWB/eAkFs5JJH6XEIqgPKPYrBs5S4tBavXLG5knqLrtU/9IWw9QqiNvgUso5qO3B3RT21
KartwB//Ojy9nQ4X68thf3u7HK4SXE6PYFuJhkWZ7cx0QdxlGucJx7cFRFoIE2B9REoQzl0n
MXAUOwSyFNXZKtlFwJf8UfYQWH0OcQZ83iUZ9VCilAbkHpl+Eaxh6EZGktQzs1hKQmCsQo2W
RFKvWD7oARYACwA4hod5RfAQElwWr9hhYUKOiQ2+wcPI+P3AM03IRRxnRe0UjYniBAINe6CF
H6cijsH/QhK5hmbbZBz+gW0GyFpZAJvFpUkmqzLhsJoIid/8UFuq+S3DOKTF1DDpkmYh+H5R
JsR3bPoeha+yAxYYY852eqitYyI42RqPT/kShdPAB/2m2CwLAlnPz2VCb4TKoWjFOSVx31LZ
MiKB7yFzyDX4msFlUpOAejhhMcqWxUUOC8bXRbwNA/FL/WLbMqThgqQp09PvWtDeh7wLKVRh
04ZKHYmdl7GN6TNFUw01RgAw7OEgJpguQB7qeVRThqyvhHcXda5vbO3ag1En+5VHj+Rw+XK+
PO9fHg8W/XZ4gVxCIPK5IptAMlaJsuTTsEdz07/kWIm8CRWzQmbMln+KyphkUFavsX0YkIWx
i4J8gbtTEC96xoNR0yWtimCthBM4HyqGgHGIwrCv4tCcS8evSOpBZsHDLF/lvg+VYkJgIrAv
lO0Q0jH/CkkiCbZFHolgy0gAEcgzN2zss6Dlw9XWEGFIpg2jnDKPKhXxZLTQ68SUcXfTqiql
PGkEkRwq9SKEWtmevUdAdnfOyGBYhEUYe0aMDcMcEf0B6rnCC8nQaWTYEMn3bjivo1gJGU8a
COg09n1Os7vB99lA/TGE9GGrwc6F4xdZBLS1xC0Bx5NFAQmKVQ5hONBOKzwj7lpVIzxPkliP
4woMhTnwX/Iuvi68wYaLFHIw+BikW4SA52EXutpSKJA1fskyE/IXAWyWAJSinQLXkOc1AVQ1
c3ZBvyc4+hutBB5D7cN8FXoaDwWoKF2xPQIoONF66X3WGVLBi7VjDwovW8hzJxSHaFgwJZJC
Jqf9TcQI6/bj9aCHGGmbdDN0GCJSiZyMmJbghZsFsJm9QJ4PmwBSI0iE1TqAzkGrXB0dtTAO
3pys7rnwHGdphpkwwTZfDh7cqX3VLmCcFMaZyU9yVEemQvT4bNSkzYHMHgyws9VD4YwH+oQA
GZqkLS44mztgU3uCLDtXqTgC6eGlLaCUcHEGVudXYeqr1sgKPdmI+fChGW5QKq84/wNlNiSO
/dfDM+QNjU8TBkNcf31D5Vj/eHn+Z385WN7l+E0ltcoeLA23JKUixUNM0zW3jOMlOEhF0cmf
2eHrZW99qVg/Sdb6yaGHoEJ3hDLaS/vL41/HG+wZUO3vT4dXGNSjkT/zMCkgKdEAs2TddpFh
axXH627IAb+Wx/iy7dWKlOKIA1FWaChO73uQHoPzBtAQ7SSg5uYyE5TdKn6HFCwpXaJwUSur
SFx4edhhLKZv1v4+Fqm7GjIIAaLaeAcFThBkrcJdYfpULsWGlJ1R0WtsJRYd3jA0MPAzjdFc
L9nDv0VDWBp1zfT2q0T3dCOwFChSH2wqD4oVkrbVA4Yr9ZBQF5KHFt9U+OTCSPJgIBSsd3xF
Wl+AcLB1PKywGzqQ0GVN3xfoY3nEguy8pmkkTLjddas1kQT1KrLucS3dePP75/318GT9reLU
6+X85XgymjqCqGSP+LXEqrKLFq3yvI1Dg9J7Mhh6Fh33JMiXLELrt5/EgjrlwP4TRy6q7SZ5
6OChkH7QMl3bluLgC4WNOHF0UHlUgptqTh+j0GiS0fb+O0k4det2tqnnioBhW6FECo9KKefI
uAolexQ/51DsHjpLV2V5yDgXu6ju3hQsFFWXpsU8gr0A++g+XMRBR7uiuUWFduN1bqSZhXBh
bA/wyL57bpirqwzYiSyS+nbXLZct60A4fmZxCFEd0hbi1GHI4u2i2iX0++Hx7bb/fDrIGytL
nttuRnpZsMgPMygCUpZgdWLNuSQUVbexvgaMdxsUHhTsItxFv6EM/vW26BNaSh0ens+XH1aI
FRFVzlfngkY5AlBEUC6KHGfmMJ4EEKaSTMYZiKj8bi7/aAWJOIikVKgeP5yJYrIgnpcWWfvs
FcVwKCrKAx84CAtlbwlc2a5JKPgUpEMZztehHmIpiVwCtVkDe0jiOGic5mGRe9qvoR8H2u8q
+1OSBvcFA0UbK/dTcPVi08pfIIkQBJKV2WJY5knfJVbtIElGVSIhgW7OfotpTVPa7d57h2/H
R6SkUwWEy8wOCEOdL3FdyE8d1jLwHh9L3lbcLbpylXNWNACNIIv26CYLE18LAxUE4gHkqVbm
jzwS9F5syJnqQlXe8FX7t64hT+f9k6w+K+ttZSDXG1ZQL6Sk5qNK8Ta1qrm6q0Ioq5iJZr62
XLUvyGAqWszaxq4VtMjh7xSqNKMwKuF0k6Itc4UWvleOhc0YxnqlJ3GE30duRQGJe0GbnQAF
qOH66nfBHLdNU2ztDkhE1O5Y/QbQC4kqrzywnu+3lgdIn0aQUWSFjhcSuD+qA9fb1XqSW0Hb
A+GKwVRmRlQgpS90Fp1THSQiCEbPGpcMa0d6mVYZxr4+beyL3JX1xAbAiuArUqPOoIxJKGod
L/40AN49JGVmCCDDraoIGphhklhUrODrG7CJygW6xOA+KX5DkpDU7PaUgILsZrPpfNJF2M5s
1IVGMWQVt9rG0QbKYP72+nq+3PQTpAFX6e14feyam9OIxykvAsaHwWbgeLrJiDd2xlA6JzFm
AdiD4b3UTe3XzOXzocNHA83XwUGDmOepaJikGwY5ypgi8fh8NnAI2j1nPHDmg8FQm0FCnEED
qVaQAWY8RhCLlT2dInA59Xyw08VZhe5kOHbQAOZxezLDURwyHiL+TnRddwX3fGq0cpJNQiKG
Fi2O3pCjFMJNaF0181ZKlRio15wRwqXEBnRJ3HvNEgockt1kNh3ryy4x86G7m/TzY15WzOar
hPJdhyml9mAwkjyrWssUvmx8fN9fLfZyvV3enmV7//oXxPon63bZv1wFnQVHnIP1BL56fBX/
NLsi/+/RmJuX0VlyJqcbnJMsP1kSrd1y/udFZB/r+Syub61fL4f/fTteDjC34/7W7B0iTvZE
JOFEK52ou4qNIkXfd6rP6nJWQjTbVpICUhT+OgtsgHr88vL6dutlxSL1uKm5yxIAcAsP3WsS
6fsiqAWtM5HCias3SKa9Y9UTlrVIiM8mJiRQoe5KjJQ8vx4uJ/EG4Shudr7sjaBUDorFqYhq
NwwmvEg4yXe9WDh2UBoVuzt70Nww4DT3d9PJzCT5M75HpqYbAXxuAyEtVutSFukrMNWANb1f
xCQ1DsUVDGIu/mZKI0jG49kMsUKLZN4I2mCy9cJD4J8ye6DHTgMxxRGOPcEQol27Fl29yWyM
oIO1kOBHB75MoBZ6RtYrENL1KFY/1GSZSyYje4KyANxsZM/e16vy0femCMLZ0BliawLEEENA
qJ0Ox3NUqNDFdmGDTlLbsRGeEd1m+oO1GhEnkGqhNubIIE5CnkdLBLOEk53P+Kq6/MVE5Vm8
JVu0qmlo8kgZtjucfeITB7/Ob4SH2IClssaGoVNkce6uAIIsY1c6dpezSxLb3v1k+oWL5e/G
GNm6SESl2I5rIpCYzSPR1Uy4g3BTOCiC1CnWgLr3JCENdwWkAYnKZNWaoMKI/3p6ZwYZD6F+
7xVpw3e7HSHdacTW618IFM9JBhVfW8Q6gHJx7YM/qpAk8nISb+2UBMLeKka/Q9XT/0lDNpJn
Re2EJUDm2UxAQDstiA8l5482RJou1q2tMLaNv05SSLxgVMghdoNWokZtAYakO/V43GlArPaX
J1nFsI+xJeoBo9hvLUACxMkCNg92kSvRAVuAQ3eHpWSLF8MSWxZH+FYo5+VOaD6gUCNTt0An
JMmixa5FoFJFD0kuabD3fSSUPTitv1VCiohDHtV9u8YEI3OSslLDtF8/18WKNVXUQxm7f4Q6
SDuf1VNm2X3vkkkgOyL45pbvtGiqix8k8h173PPuNkl6yjuIffUr4mcDmogGqEcy7QZHwcUB
R+UUFMOztPUOViJhfibfI4PgfqunodNx1pKDc+a3QPKVuRcv2xLHW5rGvkm96MxsnAq35Wse
/FxI4azdi1r34TIX/mvfSTcHx+C+ZdXmHW/HW+pAIYUssjTnmXzUWDfyVG0KyaJ7SNDDocgV
MuOJzxcM4wBCXb/hgVig5YMm1H0AG+a7qkQO3043OJ4dvsMKhEjuX8dX7IwrhpF0oXY1cIcK
MFqiHqH4VyVkB6rmboGDzB0NB5MuInHJfDyy+xDfjVRXoVjkZil2i15RpHRpcvSoNhDjGQY7
Nwk81AXeVaHJSnVk5dPfHvFkcVCfX4AbOX09X463v56vhptASF/G4hLiuQ1MXL+9AgUmqPSt
Oep56+Ap2omNQzS+K99xW59Fs1GdrKxfn8/X2+mHdXj+fHh6OjxZH0uq388vvz+CVn4zl+CK
PmbXTzwqXo/KJrmsGFqL0dA8IJs+H9TIRFgUr4XNaWhIN06beU+RJVBrGib6vYuAxVWJbzAB
Vddz9jBL18NdexhnYUax4kkgVfeqcgz6HSLOy/4kLPERXAaMsH/av8ow1DnmConKdmc5PL79
pXy1HKsZUW/x9LqB4bBZvjCVIq3SjlcSWPaneqOWIhI9ZtFr7jWsuChwW2/qG4xw9t4ZFElf
MNdjsjZuiJf1PMEvozgkNvyhFsdewyWJ+cg3QXv7JTbKEkHRKTQF7PF0VH24dlYRLN2Aieun
tXx9rXuehiy9BJexIpL79Ucza/mt5PnSiRJJloBM58e/2wj6Ii99k9U9VLPy25eIZuLDPXHH
Kt+S8IyEibiGvZ1BjIMF/goO/nQU9yXg9ZLr9Q/dV7uT1bKXUb3zXKpEFOojD623z6JQb2Vp
9CIV+HnUfmooOMG/8CkMhPK/jkiVKB6ZDyZOs50qeOgmzpAPZmaB0MYaZi1x4rVDX4FZkWSh
j5/IK4p0PRuMMbco8bFLg7hulKfgEdf91Xo9vjzeLicssvSRdFYmKibS1ZPLR9NgOO5BzLU3
yMJdjQ8YS0DhE55BBbUqv+Yc205FEfuVk7eGsPST+RGismZJ3BxLRIkkv/VAlaoqKLw4k7jO
G1QJld2rQVO3qdv25/3rKyRambY6kV+Om452O3W3+WzA1ZHQOE5JwUDjEVrqS7S3hXNfi5Of
if8N7EFL4noTVOm3hU7N1C+Bq2DrtUBBvGTupqOOxWzCp7sWLSchGXsOuEO8yNu46tV0y0zw
s0VZ5lqTkoRe4bsr5MUDZoO6TJLQw/dXiHKtrzAU127/uE0Q4R+IKR1ui1ZV2nWZQWt1Euq0
NSfrabMm0eHC9/umkSSyLd0e6s/GU6yJK9FZwlxnZg/0aypEY8rbfa+rSUNNKXuII9JaVLtk
U/6UDOejYQc4mw7bOhHA8WTcWZiKSv1WERqeTsZYP6lcOQfsbNJhLBGOjV0nNPi57bTk3Iaz
+dy47kP0ZapruYQzEDGeBCnRY1e8a6v5y3cS0gT27/8cyzIw3F/bnxRtbVg1h4hSeNwZzbA2
k05ib0N9jgphBoQGzpdMXx0iii4iP+2/HdrSlaXliqIleU0gPhcwJFBgsajBuA9hJN4WqhAv
scUD2vdmFaT2sI/9pAfh9IyY9Uo6HPQh7N4lDIc/k3zYu/7xANv9OsV01iPSdGb3rI7Km20U
Y08RNyndQatqRM9JPhtBS12JFY8wA/Pjcw3eLdArIo8owm4pSDy3WJAM3Fm7MZFPmloDROtm
KZoEkBoGE00L5eiCuNlsPhobubvCuVtnYGOlWkUgVDsZYEOVNX4ydIbII+FOF84X2uVXtSoD
GJKIdIDV8MUnZ7rbaWm4hWjfdLTRKw/LWG0qLytysBoYoog2YdcKUJHb+l1svegeOMR+ezoY
9WMQRUmMY++62gLMbK6/uKkQIjU50y7cjKANG6lnhE02nIxt41l/tW5afsAghBtNxhM03Wly
djJehwhUPrLH+EnDoJljXqhTOGNk6QIxHRrZWkON/8XM49n8pysYz9E9Urt3uBiOpl0TL4n4
PiPIXGc+sjGvrW5+3+GdZrDrx92F5y63BwMH0Yg3n8/HWrRcbUO92JU/iw0zrmoVsGyyrMzX
9uqR2/4GNW73tFG/5PKmI3ukszQweK3bkIT2wLERLZgUmhpMxASfWKDmP+NqZkEdZU+n7w+e
OyPsUZuXTXd2D2LUj/g/xq6sSW4cR/+VjHnY6Y3YiNZ9PMyDUlJmqkuXJWamyi+KGnfZXTE+
OuzyRnt//QKkDpIC5X7wkfhAEqR4gCQAGuQAKKAv8CQO0riOAz6Za++GVIde8TQMZNOHBRgK
2EPX3IWpk63V15RtnmdkmWxo9z5xCn8lBZrKd80236wPKItDNAh0yIY7hTaoRKfdfoc8kXOi
D91WJt8Nfep2b+Y49yklQZXabhi5ujmRnrj07aivqAwAcqyePjhdeGBdpzclEsde9xGb+aTe
tu2luAS2a1GSFccqMdypSSxtTimCCwNu/KepaZuaReFu9r+lnukaWjCAftXZjkNP7astYp0n
5IXWwsEnb2LiEUBoBNRDOwWMiY6Md2G2T4w4BBybHMUccvY+LucwSO85gUEOJyDkQI0gsAIi
L47YsQEIInJsABTvza7A4Noh3fvQejZwaJMPhceNf87j7bUf56AMmjkQhwbpQHJSm1lnhta1
qOmVpYG8ci/8eX1y7GOV6mv5wtCFMFW4ZCepAmovt8KhS/SCKqQ6TRVS/b0KI4oaUb2rigxC
Rv7+QK1+Mh+UlUGLkxh2R0oVk+0Q+45LfBEOeNRw5QDReG0ahS414hDwHKJha5aKo4sCY0kR
eMpgdJHtiVAYUjtCiQP2fQ6ZuE2r0GCttwp9ivyYHoKtwdJtSXuv6AWnvzCbaDkg00s8AO5f
OwUBnhKfKKtymFnIsZvDmu1Ze+MFOBzbIroKAAFuwwn5qz71wmoHiR0TdnRjomf0jPWhT7dJ
VcGMtasuprYTZZFNDNok62FPT07YCVQv2lXRizpxLGIVQPowkHTXoSfBkBhx7FKl1EzMqta2
iPbjdOI7cTpZRUA8a6+GyEAKXLW+TY7DG7Mdg23izHKP3DB091VQ5Ils2jxw5YjtbCsbBxwT
QLQPp5PqhkBw6OqGNhRrGUY+25sGBE/ALaKpDAInvJz20wNLfpGsyPhsmSgu6BOJ+7wWaA1L
iTQz5TyqVJ0+LhZqIvrPWPX/srZ5NpR4M3jvChH5h3WFfM8843P81nNzA+HydrwXqh0zxXjC
DRJ3RqTt2YgkIg5HSxvyzQnUvLfC6kIS8BGjBB+VYMIyvIqheofeTl3+ZubcrVReXTEKSFPv
1EO98RT36kuvWK9PpMPZFVzPsiejRarv9UeMydcXSkgqoErjCFj6rGgwLi/Nu8AqdfJuVS+h
j2mVyLmsJ0ipGpFxNet7//0zj9U0m7lujmyqU6YZZSNFOl+WqazKy/FU5kPaKHvUFbyUKbnB
RQ6Q0o+tYdBTHrPYD+3qfiO/OM97aB1r0I3rJQbdSGClbez1sb5oIUAekS8oNyzYJjIopgtO
Kvor6qgS6qYeC83d0JSDZqSdE5ajvcx84CBXPLXdQV5kJSLVHFXrBA69OUL4UsC2yObuFkTl
QKsa26QvUk1m4WOi0pa7WCX/KGphe0Dr6ytubnh+Ou2Tp3MTzM+ltebgVPX+daXH7l5pUWwZ
C2OBotbPNFlv47R5D6eSu5xddYlAufahR5gl6phvkTd0HHyIVP2GE2ufBYZTWMT7wguDYRMg
VOUpnUg3h5XhyrdstbdzkjajcfrDYwQfUBoHyXHwLYuYliZTDYXGClBHXdcfRtanMImrLarf
9E8pykppZ7xUty2fOqASF/XyOa2ghFrfpi70F7pjmzoMyqLZHUhkXz5hkXKLCKpiEyBTqSF/
L20ndE0hYHnDVa7vupvavKmGiPJI5rP0ZIDxgyCqB2DLjOh4Kve98lF/39BsS5+OucEDfQqw
wJQRxQJ6et0IGzjZutu0ks4Zd/kZVRI1EthCNF4XrxynYsgzjHrOkrNi8byyYDCwK2g2APTX
ioxWsjKjkiXiG83sSmiLiQtm13MUDHR5qAZE5AZS5VFVBQnLfDeO6LxnbWA3c32F1BCXzhow
2JaTfUNjMniKrd8kqX3X9/dbgDNF8gnXiqnT3Uov+jJ2ZSMNBYKtjE02KIzKwDV8LJzqQmrH
qrGQzckvkwcT4hoRn6wCYTUlgSx1/YjWN1SuIKSvnFcuXPt9ckJSeDQFQMGiwItpQTkY/Kwf
cYXAp04TdRGiwCBCOB2+GTCHTjcpdJN/BImHkWGEIBjFBldIiau1oeF+UrfWF27eBBJFfmxC
ArJPVe2bMHbobwV6lG2bEMdUU8B8aiFQWVR7GBUjryZWFrR99HxD+vZ0fZvTAV4lphvMHgFZ
aQ7RUwuHYhq6V7Q4XdK3x7zrHttCduaFzRs+B7Er5EaTlCDmReRZmcxS3ejPulX/JKw8+xjX
lsQgmRUktEQARo63v7ZwnrCmMwDlybehV+3mgBqWY+w6QiN0KM1cZwrJsSCplDRmu2SrSUqi
SazY5Aa9qhrGY72VR+hRNFO6s33IsyIZ0zyd4xxSahrnmeNhfyLJayhXDT1m3Y072PV5maeL
U0L1/PvL06y+YXBmxUB0kiqpeAiZrWAaY1InZQObgdvf4M2Kc8EwKiDJrLB2SYYm6Xog8qlm
WWeCZgN7CdeE4HaGpKyLKfumeeYybkWWN6MSamVqLmH5Ua4+rbeX35+/ePx5tG24RpHPzSul
frvS+B7hB0HHL5rDF22VQICCIcluRt1acAi9uipqPv/VZzlcKs++yisHo0Uq9ePIqUz6C8bn
wXfP+l5H7xho8l+SuSlVeanrvfvy+fXrl4/4AI0c/Flpf4JH7rzL8Z2Imzh5Xb5/wbBJz78f
nr4dRHh2/P/r4Z8nDhw+yYn/Kfd60d+SLGkZ/dgOb8Pj9eRoisZKJz4np2OQ6banEIyThz2n
OJP5Vfx9BaWx1/4tDkb7bUcwe61MHWW2RVKoiiuyIC1ulgQVdq2F0w1qID2FgbXmnjix3JhW
uaUDLnVTZVz6J3eGLzVneJwV9ObZG+Cye4ogPX1+9/Lx49PXH8TxsJjsGEu434uI0fX995cv
MFG8+4JeBf+DkZDfPX/7hu5/6Mj36eUvJQtRCXbDx+IavVlZloSe62ybE4A48mjle+LIMcCQ
TztmSiwOpXxNLdu3rierF1NX6l3XirZU35Xv8ldq6TrJpmLlzXWspEgd96hj1yyxXW8zB8Jy
GqoWeivdpSwXpymydcK+ajc9tm/qx/HITqPAlm7w9z6fcOPL+oVR/6B9kgR+FMk5K+zramDM
AuZutMvTBRdklyJ70aaaSA4sb9tsE4CKhnlSAJ7II7rfBOwmPrLIjrdJgWwwlV7wgNqxCvSh
t2zZ/mPqqGUUQG2CDQBfIbTtTRMK8kAMK9x7w4gzls9urW97m1bmZH9TDpBDxe54It+diPok
7B7HFn2SLTHsNR4y2OYBfWsH13E2YsI+Ona4Ii31SuzsT8pYILp4aIebtkgHx488xWlN6+dS
Kc+fd/LefmhOjjazDB8SIT1SQpLb9Vy6V7ux+eMnWexG8ZFI+BBFNrWdmr7KpY8ci2iRpfZS
i7x8ghnnf0V4aIwIsWmaa5sFnuXamzlVANOZhlLONs91pfpVsLz7Ajwwz+ERLlksTmih71z6
zWRpzEFEj8y6w+v3z6Bmadniwgw9z7GnSX0OHqnxL8Fgn2EN/vz85fu3wx/PH//c5re0deha
m9mx8p0w3nQQ7eh/qiiG6GqLzHJoNcEsiqhvW+gCrnXTMVWPwPd1unkUpt+/vX759PJ/zwd2
Ew2y0Ts4PwbFaEtJ9ZQxUBPsyFFu91Q0cuI9ULnG2eQb2kY0jqLQAOaJHwamlBw0pKyYYw0G
gRBTTxo2qOGKUGVzAnp61dhslz4al9kwFCU5F8tMQ+pYTkTXaUh95XBHxTwjVg0lJPR7Y2tw
PDTvsie21PP6SB5KCoojV7l/23QP21CvU2pZtqEDcMwxSc5R8i53W7hDF5Cb2+2UwsJlatMo
6voAkm5OW6ZCr0lsWYZKwabI9g2dumCx7Ro6dQerBtv5iq5ld7TThtIPKzuzoeFI4+0N49HS
4iKT85C6Z9pukMTbAl+f/vzj5R0RbiWTIw3BDz7hjlmvHGAgPWvH5DrsxOriTNwTq8/LEx7i
qBk/VP0UUmpLPx1nSC9VxOFvYQOEQR3bpmzOj2OXn8io/JDgxA9gFqMrKfzFAmKgdbFxt9fH
+1a4zJMH8X5GrzzYgRwYFW2E75StTxpsm4nWxBE8w94YLaOWumrNYMIwXX/BnfWCLjEbJsXl
8OXrdq2TshBx1kAFpifVmaUvSjugD0pnlnpo+bISR7St9YZP97SUwieYhBc6UVdto87zpmrw
gT1F+ZFYZc7bOde69w3aWR7HSOvSpBuz+3jJDLGQFqbyRgbARrxNxINO4rjr5dufH59+HFrQ
TT5q0nPGMUFZ8q6HXiprDBJDf+3HtzDLjazyW3+smev7caDLLpiPTT5eCrzgA92KfCxBYWU3
WA/v12qsy4AqG6tJFyQ0nN0C8rLIkvEhc31mq3YZK88pL4aiHh9AjLGonGOia3hUikc01Tw9
WqHleFnhBIlr7Ve1KAuWP+A/oAPZKS1KUddNifH0rDB+q4ed23D/lhVjyUCEKrd8+h3DlRkf
ScuKvkVT3IfMisNMjgYgNXeeZChoyR4g04tre8H9J3xQ9iWDtTWm+OrmliAf7zK2RddbYoLd
upPs1qRKalZgYMHkZPnhPZc9vlaupiyqfBjLNMP/1lf4xA1deNMVPfpsX8aGoUldvF9802f4
B3oLA70gHH2X9ZQA8HfSNxgk9HYbbOtkuV4tqxgrp+F6kWZ9zAoYK10VhHZMVlximXaXW5am
PjZjd4Suk7kkxxRoe+yDzA4yw1dbmXL3klBqBMkbuL9Zg2UYjApfRR9kktxRlFgj/PR8Jz+R
16p0siT5We2aE2S4P7j6vHhoRs+93072mWxP0FTasXwDvaaz+8GyDWUKtt5yw1uY3X9WjZnb
c5ld5hbZHfoC31GE8dKzMPw7LC7JgqeiSTp4jpc8tLTwLMPzW+hT9/7i/uzLse5aPk7rSDje
3wzn/VF3K/BxvGbAbh07cUyLAIO8zeGbDW1r+X7qhPReXVsR5dKOXZGdc1XjmdaqGVEW1WJ+
9+Fw/Pry+wddO0izuucKrNKm6QXam0GeqAS5WoPPkzSQavH2mFbVEu+AYICXLA4Mplhbtutg
0gNxfYXCsjxV5ajw2ZVL0aKrVNYOaDRzzsdj5Fs3dzzddanqe7mo60aZUA1rWe16Bvsg0dpd
kmHw+Sgg/XI1Hk+bv0BphD9FJFzdlZyBHFuGCP4z7rhU+H6BorYxdwOlTHbBhwnZJQ1caE18
qEMvmjX9pTgm00Ey6UxOsGkLtIaGu2i0h6r3JRyHpefUegb7v4mjrwMfPi9pOTZn0ma201v2
pgBx8w+TTFIPgetRtoE6WxjJxzoKmm3mICVh4Jjy50F9s1vo25spWIJ2tk18RFeXrI18L5DV
fvOMoNSgS9vzVRtpQ69OOEA4HVWefBC2G2iKArvZnpqhQJHJa8a3muOba9E9aHoJRmIUsbXn
Wez09enT8+Hf39+/h91Opm9vYCM8P1v9Q6LVDStOjzJpLWZ5pA/3pUqqFP6cirLEV5IlfgGk
TfsIqZINANuIc34sCzVJD/thMi8EyLwQkPNaPjxK1XR5ca7HvM6KhPKMmktU7uVPGGv9BFpb
no2ysSrQMWhZyZ+wVwvC99inTTO1cQMO3H+hhEwEld9+oz/moMJyaNA1/fJ2iqEWdqb5uCCR
+xzIlOIIu/yBeb6sPQJ9jrSjVWsyr6aLrHLULWCPrJYJ+rNrKTHHyK4o3vd7evefjy8f/ng9
/NcB1PntO1GLMKjsc5OTKQw+IdLybRTGVbgVf2CZ47sUshj5bxDNgnAF3qRNNd7pt39WriRD
C0+LyplDIQlx62YrMUIxicD85Q8UIlkWEhUxhPmWMr75jhWWLZ38mAW2RfsfSHXt0iGtqZEo
FTMFyJlfbtzvI3N6fpMjD8N13OJ5y/oLlhIlMi3+Hvk2EkZxTbWAxHE7J3ag5jUhaXllDvfe
WF+21E9DJROV5lpvn2a9FNn25PRSSDY68GMNJcc6UIjZRa4M4KZHT66YO+GuBjnOwXWne6j+
z+d3L08fuTjEZIQpEg931YbskrS7qm8WzsTxRPkEc7gVN1pqmitM9tTsw5shLx+KWm2a9IJ7
bZ1WwC+d2FzPSafSqiRNyvJRFyLlB+YGIdJH8Tq3khF8gnNT49GDqofMVHMr5HhGfVJzQ4vN
ptJob8UbU4qg57w6Fh39UjnHT2SYTw6VoGA0117P8lbckjKjArQjCjLwMw091cMjbeaK2D0p
WUMH7xUF5nd+smKuxWO3cXNWGAq0ezNIXLBcbcjfkmOXqCR2L+pLonWsh7zGoOFMDceESJly
Z3hDgaUa7EuQ6uZGTTMcBD0XR5Za+kzFH60UiHahn07ajFZ01+pY5m2SOXRvQ55z7FkiqUS8
X/K87BWyGBznIhWPiWn1qeCLdqTbuUAfuc2oWiHQrPho2ORVpF3TNyfqopLjuLfucm0w4xNN
xdwTJTpskvUCQNHOqaiziIGmje7uMBSkCVciaq3Mk+QsKR9ret/JGWDuwUXLUGKZ1Px8Jt2M
vLbDY3Zjvn1SaBXRYH7AZSiW233iG4hqc/UsT6oNCToDrA35RkDIvy31JyPkT2x67wHHMJ6B
Jn1Bn4Lz3KukY781j3oR8jgtbo02ckGLVyxaORE28OdKp+H7QyKOslwvmW6epK+4xI5t76qZ
3ouiavT5ZSjqqtGb7m3eNbtt9/Yxg+XSOKZEiI/xIr8xItFTqAOopOKXypGUrWLMQ63062M3
ijayCMif7CnoV382yZZXxyTiLNC1h13NJS1G3BWV+bRJk4cYcuz4B8jO4u296/M3sIASxI25
TJWO072xMDWq0l/77FeMO3G4fPn2ekhXk/Nsq/9gcpOBPWJ9BpWSv/lChAHPTtQajBzUFowX
RatzCF0h1yLompK0OQGG9A0hyqWnYgAjUrEHhRnUEf2BxAmq8zt/pVdaO3I8a+ROAQRNOA4o
i9SK8fkb5smGWkU537HDnUENmha+dJZe0Gkhm3fRuPUi1FSeMEmY7RhCnwmG2rUcn7wXEnjv
Boovr6BiKCvlmkOImVaB61C+dSusvtbH6XzTSX3CFXXoRJRhzIwGsj31QoydgcoqsGx6seEM
wp3QVJZ4DWEr4UQ37Ss5j+oNLKTBAAXeVkggk06lE+prcVRmss89QquKnE0nJnVnvgov76Jl
KiU2QoG7SXCvNL7VK17lPGaO4vMqRGOuH7ubYTN5spoqhA8N+1ao5cXK1I/tQZdw6wy8dC//
L513G6SD0/E8JYh14YvetU+la8d6kRMgwp5pQ/jw/svXw78/vnz+zy/2fx9gATh05+NhOl35
jq82UIvW4Zd1qZfeUxMNi5pOpYmwxM3QGrYc4PuY2hXjB+iNyiNnTB2MGm76V0CiIwdwE+Kc
K9fm1x1Lc7CvLx8+KBagokCYCc/K6YZMHsVLVjTWwPx5adhmkMz4JQed65gbHlBUWJfDGmMX
nBjT9mqQJklBgSvYo96gE6zGbFegOXwX/368vV7+fMXHs74dXkWjrX2lfn4VrmDoRvb+5cPh
F2zb16evH55f9Y6ytGGXwGZPPAtKV1/4RP6s7i0+I2rMo+WnOPQ2Vm0o9BIi2ZI0zTH0Fdqf
UK7KOWiRW/fIjqWj8vgTErSFG0mXlDUwTEjifLb6j6+v76x/yAwAMlDq1FQT0ZyKq1Nqmvom
rOKE2w1LDy/z5Ys0JJCxqNlJvCylZsDp6MFIUsdrkXPzPRVGP1muGkqWb1j4xg1sZk6OR/9t
3qu+9guWN28pN6WVYYgs2dN5omf9coROImMKvfPake7pEqM8zUj0QAl4MdEvj1Xky2G2ZgBD
+caKw/kK6CEcJmR2jNfJvZ+6VNlFX9qO5kqvQORlscby/5RdW3PjOK5+P7/CNU+7VdM7sizf
HuaBlmRbHclSJNlx8qJyJ+5u1yZ2ju3UTvbXH4LUBRAh95yXThuAKIoXEATBD0w9tpI+NMkK
nNVme0yxuuLGidDg7wix0MJEYsK1uNPPJxZXPc0pHjxO71ZCs/uBfWeWmklzcYqPEirGXC49
A6Z/Uzk2+zx9iDOeYHmbaW4/khY2O5jTjeSwSBRIgBqWDWcyYYFo68/15DyZ1B7tJOiexupw
eAVukQDLw22oX05/L5OGMTOkNb3EozY0jOx6m1x1Ii0ydZkCNacuUOeSfN1dpbn01qoipzRs
HhKmEYBDc6OeQB+yEwXUyATATqMg/IUaGjs2V7LtWJx6aoH91d2Z3/XHuWB1RORM8pufBwID
ZmQCncCxVPQsGtkO0wmze2diMV+TJkPXYqYE9Bkzg54eV/dRUvXi6fhFWkm3h1l5lZsAaVXT
N5f/42+d1N/Thj+sGS0gvvp7xgOrznEGZna2P16kXX6zjrX/AkeqA+QkrPlmclbJmq3nJiJC
9rhyIQKAfGz2oOhc3IYqpojijd9EL+D3A7e6KMDGVGsRafxiGFpMVeaLskWagBBa+eopsd6W
IV40Z1LoooCJpec444lV7RmwR1lzmEoG0QKSjgQBnIMjl17eH93R2GfJt7nPLNPY1uHjNVnH
s+pMyFaLnMaqI4ZN8ZqhHTByO5hlfHqI8qPl3quIqdccc3jjF0kopxErpOrBvBgCFgoGNSDN
A+KG1RTY0K65UrxEEDwFhVbbFi6vKT6fT5fT92tv+fm+P3/Z9H587C9X4jitrxHeFq3evkj9
R8h3jsd/LhYB68/nZl1FK5IgYU/CIDecG96hQRreqSspcQyJDj/bgnIk+HKMoFghPXhbhdQ0
xjakzKmDb/QiXst0RJwsGA5wRoEWi8K9U2afi/ujIo7TVTIOzEAc13P9scV/IPCm9rCjQm5m
W4DlmdyuVIKzQSL6xu0quIR1iVhvGwjoOLpZkGfFQ5qEch6HK3uyTFwyEIycsA2tmK+HjiVH
g4viKZYP0lpahbF7V61orko5nZ0+zhy+snJRSLWAgLAVRWqbGX1rlroashoR5f6t7eRQh4YQ
zirHez5yZlhRs1WpHxRBOItRMr0aNCRaojg+nRS4iIho+SzZLKb7t9N1D+gRrDXmw/GQ/MrW
2Xad/dl4WBf6/nb5way6SZShcHT1U4ciLejJXpsDhDYX6ceqNuStrbiVh4DiWGmTWX7XP7LP
y3X/1ouPPffn4f2fvQu46r4fntExir5y9fZ6+iHJ2cnlMmFzbP2cLHD/0vmYydVRZufT7uX5
9Nb1HMvXad22yR/z835/ed697nv3p3Nw31XIr0S1o+pf0barAIOnmPcfu1dZtc66s3zUX3re
hmxul9iVU6kavNvD6+H4l/GaUrYC6nHX7OBlHm6evbP7lnK45iH78N8bOfUcjSpY/DpeX//s
LU5S8HjCs6QC0FcA/TrIO155fiS3e8jWQ0KJn4ICECscOEgEINgjExsWp79C8u/KJ0AKElkG
avaNfoTXnujN9xb+RjslS46/zd1mM+j/dX0+HcvwSrMYLaww/b8KF+mHkjHPhFyULYNOTzpK
IuRwGgyHBj3JVxQTpaSn+WQ6HgiDnkXDIT7zKMlw7NvOH9+w5KCV/w46UpcBxhbrGAuwPxmS
q0kDfo6XkYZWuDNOFDYFXXR/tYBYao4LB5YV3DDh382DuZKi5NLvK5fysoaEq/87z9hn6MdU
b81gVNciNhaR+6o6SrY54NeM8gG+KVEt9agsh7F4ft6/7s+nt/2VDD/hbUOCFVUSKAq2ImIP
YUmgUrNI9Kl/TFKcDrz8mdz8Di3lKuf2C56w8aD3BAFUlR2betjI0wR6QwlI7PYbhWSo1xcD
j/aa3FOUDLENsg4eeKcqfqNSt5nH4wXfbd2vcN2VhUxwBzZNGRdFYuwMh115JCR3RMD7IzEh
wKSSMB0O+y0kvJLaJmBYCQVmMSSEkT2keXXyu8mgA5UTeDPRceG7NQb1uDzupEnRu556L4cf
h+vuFc6DpIZsj9KxNe2nZJiO7SnZWkjKyBoVwRxwxOGyUhiyI0vKTadb+mSgEoS2El42prwL
yK79joSYOuWF1IsE0d9fbfwwTvw6NTFyDmzHeCzrPFMFeRrSLToY0kURJqQbFKkLV15s+12O
cNjlte6w1cMwGTi2ifgBt4Q18nBnE63EGpChOWPGU2tbFHv16XoT1qXa3Jr0uXZVzKxv4dRq
TQYF3VyNI2A+6nfXrjSStga/Gpi3BiEepvPz6Xjt+ccXYoOBWkj9zBWhf6t49HBpa7+/SkuK
DPRl5Do2wWBCUvqdP/dvB2nKlq4/UhGRh0IuKstSu3GDX0n4T7ERhTaL/BHWuPp3G5bJdbNJ
x/3HQNx34uhmrjewunI4QE2CFC5QZYsEH3hkSYZ/bp4mUwIPaDSFdoseXiq3qOyYnitt8NOR
RO1Xyl+vxTRAoMWuFmf0Vr58vEREWZMszm6C97Okeq6uU2NqG8zWmkML5Hmlsi/vyuqBfAX0
ODX8iF5Fum9odeB9QEoE1ukpGY4zohp0OJwO0q5iRtNReyVrlukkzqUO7WBmjmNzTqJoZA/w
8Y5UasP+mP6e0OyLUrs5Y/aOotQqsgLDIVa4WqFIMu76m42qj6XliHj5eHur4HeacQd95a2j
6FHaZQsMNKA6UW+BFL+boy064n80RLRpyseAtutWXnXb/+/H/vj82cs+j9ef+8vhvxC343nZ
H0kYVn4B7a5Z7I/78+56Ov/hHS7X8+HbB7jZ8Ti+KafPxn7uLvsvoRTbv/TC0+m99w/5nn/2
vtf1uKB64LL/v082t9xufiGZLj8+z6fL8+l9L5uuUq+1Qlz0yT0x9ZtOyPlWZDakt2dpVBZp
msVjGhMjNErWA4tAxWkCO/3106ylqlisoRrkC7lT4+207sbQCna/e73+ROtPRT1fe+nuuu9F
p+Ph2l6a5r7jWOxUlntWq29R81fTeCQB9k2IiSunq/bxdng5XD/NPhWRPWhdm17mHevb0gMz
kEOWlBybnMiTWPAo8Eg01TLPSPpQ/bu90C7zdVem6GBsWWymVMmwCbKl8eFaR8nJeYU4vbf9
7vJx1lCUH7IhyWAPWoM9aAZ7XZX5Ns4msjYd25S7aDsiKjhYbYrAjSCDd9czICIH+0gNduIZ
wAxajXKwh1k08jI+L9KNb9aBfeoeozk+vK+yJwf91kZjvZVjk10ZAQeOjGRJAXBlTjbxsukA
B/AoyhQ3u8jGAxtvFmbL/hjrBfhNt9xuJJ+YcOY9cPCaKX/rXCTN75E1bJU1Gg25shaJLRIC
p6sp8lMtC/tNILee3DmFSDfVpkwW2lOLJn+gPDYGRbH6OKAF7+fDjKUnaUy2fF8z0be7Mksk
qTW8mTK4fRk5zNMhhZcJN3IcOGzSVqnbnBL4EOs7oHEhaatY9En6pTjJBxZ9WyI/xraAyqqF
fguGCygsGITcvQ8GWJHJWbXeBBlu7JrUnoW5mw2cPm9KKl4bGKbVqLnsVz4wS3FwQBYQxtgd
JQnOcIDmyTob9ic2ueK3cVehwyN2aRaORNn4UTiyqE9G08ZsAeGIoIM/yU6y7bKTShVEVYw+
o979OO6v2h/CKJ+7yRRHCqrfZH6KO2s6ZbfypXctEgtkaSJiK8mdWAz6HQsYSPt5HPlw9YrY
KJE7GNoYCqbUw6p83h6pXt1mV2MAcmVPcBLEFqM95ip2GslhaywpzQE/187/U2eefX/d/9Xa
Fqlt3PpGjr3qmXJFfX49HLv6EW8pV3BQyjQmktF+3yKNNaoIHkLse1QNqqD03pfe5bo7vsjN
yXFPNx8qI0O6TnK0qcW9A4G63H6XL7pcNY/SFtPw5McfH6/y/++ny0HlHjSaQS0FDiQFprPi
10UQC/39dJVr94FxZA/tMfFdeVl/0gHhDttDh02ZBLtEi6DlSgJRLXkSWjpzu2Ewt+rG1lu2
ITa0wiiZ9i0KSM4/ondPgOot7RdGW8wSa2RFCzzdE5t6dOA3nfleuJQ6DQ1EL8kG1IIhq6if
sbc+E4xgFrhJvzTo691L2MduPP27pYOScECFsuGIGl6a0uUTl8wBiWYtdY5R6WZVGjpsqOoy
sa0RqtpTIqThNDIItTaqNqjtzmlMy+Ph+AP1GV0UCLPs5tNfhzew3GFivBxg4j0zna5sIQIl
A9ibKVzc9IsN9eTO+vaAX4GTVgRTYwnNvfHY6YDmzNI5u5/LtlNqQ2ynQ2rtwJOcZQfL8MCi
GGKbcDgIzYTaqM1vtlQZ/nE5vcIVpq5TBhTrcVNSq9r92zt4N+gsbEYdqDlLSC3rR1wkEZpO
IIHGe7idWqO+06Zgkz2PpNE9av0mgz6XetziN46KZfP3g7mPql5CrsrJH/WdjmYAPUSdF2+B
N8/CYp6j6BYglg1F7FhJ1mmQOwpSd/lwhJqqThUWpdfi9F5hCJt4LZIDwUjNtwhZq8DFoUM6
DXt6jyKJg8zdwNqJ5MrYjSQsbxFVq3P7zfWLE+HeFbM1MnikTvJzmpMMxSMBb5a6UZbPyoMF
LohYiQUK03DxYBYA2HHqMp0REZQsH3vZx7eLiuxo2qcEmwHo6+ZbEbGEGtTs5hzXBTzmlYAI
ABvEuK6TD5eR0kUep6k+l2aYqnCWkwXSeKGDBXNFuOGvYoEUDL8g2k6ie6hkp1gUbP2w+ciO
70i2orAnq6hYZnjsEBY0Bf2M2PXDGDz1qecT+4f2Rf0IBLO4IiG58Vy+6qkwY7jF8eV8OrwQ
B9zKS+MOdIBKvDYCBAqoq+574Z+1CtD+tYfe9bx7VqtYe9JlOXpW/oCdeB4XM5EF1JKvWXCL
jbtGAxItBzmQsnidlomjYwpUhLjsDUpTbJ6nAscX6cmVL01KsWCpGUuNsjVDTfKAoVYX7hof
ntm41UPzZCGwNlPRkIncZSSthPQGSwVUIhe1LMhAYS0fmqe+/4QgONuHqgnsWNx4nYRsSIoq
OvUXAY2oj+eY0/WcN0cR8RWlEPM1cUJmHAySgi6Qddo2WVzQvo3JHreGM+XFeGoTJQPkjmvy
wFJBsGg2c6+o53RUxAmZ0VkQ83f7szCIZiy+itrEuRqllkTvx2vgcNWMM5yCE+LlXX35stlv
0NA0fSx0eJWWgNJKxLzZCLAwpXUpN4uJSDO+0zPY5gEuqIs6UMNp4tugFaWYQZRyEeOLHnDB
oQCyhmVEW7eVB3EEj0SCbUZZsFwd0sekE5ZKSmzk8sZe0p1nzLUVTeLPvzVPxRlyxQmzuIpW
XhiGcLAoyAB0md+w3K/jnHUlr/N4njkFjj7TNEKarwHijBwDuZLUcVtD7p7ww5A0AyCSeRoA
RwUADVrIP00ncgIifBAK2TMMY2K2IOFg5fncSQsSAWx59ZHs2yI/FwBKWke+755/0iS6c2lW
uUs+YKOU1sbSZf/xcoK8pXtmOkDUeMHmIlEcaW+GnjR3mjre+ekKT4HW/WiRApiYyIpFsADI
fWl4iQW53gF/dL+iGcxUEs0YacKqyaKvS3GVXYWoDvJHdZX/z98OlxOkRv/S/w2zAboaKlY4
A3ToTjhjyfnkOTgNHOFMhlbHM5OhjYdKi8f5slsiXZUBgJEuDnE+tHic76glMuj6ypFzo+Bf
f8to1FnwtONbpoNRFwefJrWe6W7yqcMHOdLqjDn3AIgEWQyDqph0vLpvq4HAFyuZ/P4WpNRd
vE5u9V7OY475Nm2sijzgyUZvVoyurqz4rX6syGP+NVNemqIdEc6vmr8/pG+6i4NJkdLXKNqa
ykXCLdI4Eqv2m4EhNzpSbXW8WQtIS2WdxmaZbhqLXCONtTmPaRCGeL9VcRbCD+lOouZIw5VF
yCr5gawpXDd4MxirNca+Jl/M1i5fp3cBRlIExjqfo+G9XgUwgPGgLknFCq41hMGTxhCvbsSy
6xIxynRQ2f754wzeL5ylu15qHjldn/nuGkyewov8TDkLcrnBRzZiJWBSqNenLmjl5w9xyoMe
1kKJyFlYWrjJqFKKrXxP2U6wbBcqPZcKF0V3HltCN1jSsgpDwMIht3gNKdAnWSJ42zCD8xdX
CQN6sQYvvv2NjyLikRNriUzMwTnT3oe3xcCq9eKHFcQ0dBibub/oMFwrGJ6mowWaOLLEP3+D
KK2X03+Ov3/u3na/v552L++H4++X3fe9LOfw8jtAuvyAcfX7t/fvv+mhdrc/H/evCg19rzzW
zZDT26v92+n82TscDxBocfjvrowNqywXV9k1YLHJTQQchQV5hbWD7BtOCmAZSdAbEGX3yC3D
Kl5x9iuSkAMBvYYrAyTgFR0NHQCgkR6QCOGo66VwY0cqHoqFhHL0sW1UsbubuI4Tbc/3uuFg
mxPX5u758/0KaWDP+ya1GuoLJSy/aSESdGGUkG2T7gukLRHRFM3u3CBZ4nsvLYb5yFLDEJpE
UzRdLTgaK1hbskbFO2tScYxH7pLElL7DuL9VCW4cMaJy/RALplFKeucDkJ5GzORmt5WFopRa
zPv2hAAmlYzVOgyNugHRfJP645lNsc6XcgtNdoya016jKLe8dVXBoXx8ez08f/n3/rP3rAbm
D8Bf/zTGY5oJ5k0et2xU73Fd4wN911syxNRjS88i/nSrapd1uvHt4bBP7F3tY/24/oTj2efd
df/S84/q0+DY+j+H68+euFxOzwfF8nbXHV6Xq6JdXrVXvepyeKTVs0u5dxW2lcThI40Oqqfl
IgBwGe6L/fuAS99Zt9RSSE22qbxmMxXR+3Z6wfBeVTVmrjmS5jPmpW7OL501m7NU6hrNiKtL
U8P0ofuRGOdHKWkJ1LZN3OI8ctWM9h8fUpGY02lZN7cxTwAgN19HTD0BCG5jDJ7l7vKzq1Ej
YdZzyRG33BdtIrXaV7EH+8vVfEPqDmym54BsvmS7JCjhJXkWijvf5jpGc270p3xP3re8YG5q
MnYR6BzkkecwNEYukGNaHe2YzZVGHkwTY+WQZOwZaMj2cMSRBxhPqJppS9HniFAEQx72mYV0
KQYmMRqYz+fS6pjFC4ORL9L+1OzWh2So0jJrxXR4/0m84bUWMVcbSSvwyUXd6/FDCXfCMxpY
ndZoEJEvt3aCYYCrunU9B/GGnJqRdA5wqlpKfHO2z9Vfsz1FmAmmTyvNa3aKnyb6XNNcYvig
yKqDHmJoH0NFuKe3dwgoqW5YtD9lHoqchfgp9eNTbNRx4pgjLHxyONrSZab2U5abuVHS3fHl
9NZbfbx925+rqx/U9C9HzioLCjfhrDcvnS0UjI/R3oqzjISprjSnBV6Nea01x5QwXvY1gH2C
D4fyyHWsbenXw7czpNU+nz6uhyOjtyHTl54wxlIlOb/UiiCkB1ed9cXollrEqLli1bYKyhtz
S4xlc3ME6JUWllZa8OT/2b8lcusDOtfQ5utu2DUg1KFBlw/mEPE3hcgjfVnbHFo1V5uR5hSr
+PBGy+FOXpBojdVismDXv3X9sOMlLqSevV24iCAFiFsstiE33KmEGYvDPXDn+9FMQGhCppR6
S03psQ+3Jr4rE/eiAKAvhx9HHSX0/HP//G+5RyW3v/6GePVxs2Al0kdIp7HK59VcCzsnGWTE
Eymk0lvQOQaxNTwC1yyQayLgjRG3mxunHuufhMQevtweRTMCUaaT2gi0u6pDYtygCOKIWoqu
7E2pRQipTwarW5jWj1sE+bogq5A7ILpa/qx9g3QEKE4YuP7scdLR50iERdzSAiJ9kCuKWbhs
x65yRx3FkSXFxVDbwcy0Pl3kKC3NTRzNpLInos9nXikXNjAVdMqnT0yF2IQ2/Qm0SLBSCyhy
jD3FTBlA5cqQSyQrLRdOns7XRC6oLGP7VJDksPp3sZ2M2jI6VghDhZX0QIwcgyhSskdpqPlS
DnymZUuJLBGp+YqZ+9Wglfk7SmLzbcXiCcfeIcZMMmyWQ2wYQndYOjQn9gpnMD9x8JImKbxF
Mm+BDiAyjWvf9z2ggJjyBOPAGDijBZ7wvLTIi5EjZwiqj+TIOoUihaikpbInKHcVryoGIHAk
lCsg/ozCbhNykSFOtgi1axKppzAm2zL4fWvuuOFTkQsEOx6k97BKI40XJQEAk+NZPPfQR8Uq
c9QikJsQFJ21LqMaZA+42FsP5w2Q47vSZuQ2QEv/t3VuEKe+bjHqk66WIkV9Px+O13/rgOC3
/eWHiWXq6mgxyKsVyiUirL2E406J+3Xg5386dZNoiE2zhFoie4xmsVS6hZ+mK7nJwX7gzhrW
lv/hdf/l+n+VXclu40YQ/RUfcwgMTQIEc5lDi6IkWuJiLqZ9IhyPYBiDcQxLCvz5qVfFpXqh
PLlJ3cVeq2vv6pefPeM8MuiTlL+HnD2CGkTUQqFKccbmw7SBRrWNI5Ubcl3S0LrWlNk3EnG+
6j0qOlMh0i/V3DA2K26LqizfSozYWQRu0GHZBxP6CO7GEbu50qRKTR0pddGt4TF1ebZ/0Ecd
baxzjtVrMvnA7PGQ7J9/LJ0T2ho6XjK9Iue4qcqddl+uJ6K7aGOz4xRNSAMcjBP51Y3inWLV
6OVpQNrV4e/z8zOs/Mnr8fR+xpVU+zkjvOyGAJEy9CxQP9AqMPiKSULbXdoIAoJVmeFSBI9d
aGfGycKuO17q3Wa11MRUl3e390i2VewUvejhJ08l4ObyAHPlTndAf0b/iqD2t8XHF11LP+sk
a4gAm9pUUOe2pI6MWXSbZaX9uPwXr0tY0XlSukRexXA0lgDAT7kPgFlACMHRbWOuUhWacIRP
dlF+1y3LfBdbHqRfQiJ7qxFypFMLS2k/JO26GxtTSe5A4+L7Gila7AhOaQX1zH/CUdX4Om+z
YEAcV9IJxKuSdojf1DTRm9Bjb2OUlEC29+7k8uUNkZNqplgL0sF6ePDm6jjH6WzL8IPP1ZVR
w3Ryrp4oDRGaIZRzDqqn5QO7+eLQ171xT2KPBMSF90TP3GY/Kwf3pl3KSQlmtf+vxWIxA+lK
flbl6A/V71c6MOz1rSITwDPx1DZuVuvJc05sbdVDxdlKuNznmHNHc9vUTEGcQd2l/iAIGtZ1
P2zQhSpDkrTqkTSPjYdCWZ6mTR8Q7VVK9kR2MSvNSZzlOwN64dtcpBYYCXErywkqqWkTWW4V
bcN1TE8UwEGrrVyKEa8CgK7yf96Ov18hG8v5Tbje9vH1WefHxCs78IfnVlyvVYxw4kYZk6QS
RyxvVNZzhEM0xZRKbRIa8nXtV053U/K8Ria4VANyHyFzwSxwP8qF3ml01m0bWlhiMOHQl/aW
ZBCSZFZ5yDrBLEB60RLw5cWVmB+SNL6f+Q1ERbCnEIFAtb2bWN9dHBfqwXt0pZjJb8e3l1c4
/mgUP8+nw8eBfhxOT9fX1/pxJgRtc5MbFujHB410eOxdMEZbtwD1ysV3KGhNHd/H3klQOa3t
ExIGb1upIcqYt4hB8o912VbhqFip5jE6OhbH58SF29lU7HRh6jyFLLenVb9AOvqFYl0v+DTC
CM+DImyvmzKe88VPU/fYXRWtra8V1ahW0nhrktq/jfJ/8GTSJYgqy80atTAs3iP0psnwNixR
bzH0XFienfDAzyGIihJDqfxc2HK6fojs9P3x9HgFoekJFkorOTFvRuILCEWosAoILxzXn5Cg
ECI04OZZtyLRFNZIXMlP7DChi8O0O49KWjsSds1+vI5FckZIlAvvN4QSzlwYKHe+mCxyEfjU
Wn0Xup6IBvpNV0XxbeVjlT1idy2Jjoo+VnqaWA+X5YX0ZYUL3ikl8XLthkT/7QwMl3YpS2U0
a5iPHRDcsgQiMySrlIoKyeeRTbHY/uGmOebkbgyfWB4yUmVIAO+qNoFW7A7Sgx8sJTOA/rNz
a2eXwAfBIVTT06UJez3n4iZBm+YBSJQgDru+2AaLcz7AsOzt3tTTDKfhyWr3GzJz6Z+/6qrM
FHh0McSZuZElkSNab3lqxVkGqy6e04+HapNlyOWBvNH8neO/GKAIg4b6mUEx1kxN2INx93v1
kBnwnDFn4LC0D1m99UplzoKCSXbj3C6bMLtbxtRZasqQcK3QeoKzLqf3vZDCDLsq5h1oZgPN
d1gWFzuHLfZY2lBRGyJahUPNprPlQYyD0zAsnIXQKDDTcI8FqZApEfbylqgYLiXZ2pHaBZzY
bjSEDvUGOR3DGCzx2vDhkVbgsbj3l+PTvxb915bS+nA8gXFDpIyQlv/x+WDFjDdZEjoTAz+D
MZPz2NyIuU7dBVszdZyHtu5ssi44tnJJUYMdxFNqSJUBkshmad+HDc02lF5hhpPAlLA2WMeP
QWC1LJsUmxG2mQkU7aUpYyOa8OIDyaSUTlASg2CySVsJ9HBfJZrsenE6G+F/cZu8MGGxev8H
q+ZxnRIaAQA=

--Kj7319i9nmIyA2yE--
