Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMVW2P7AKGQE65IMDSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 502AF2D872F
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 16:01:07 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id x10sf9581003ilq.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 07:01:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607785266; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjDNkcN20dJLuLrxcFQNpNhB3nPZhKx4x1LYPGtdI/5Rd5GDd0ERPvJ1D450wIF8li
         KO04GXqlK+MBNcVJuLQBYI2xKl6hwPmATzT+rRHS76c5kxLYkC6kLFH0g9vt7wm4Vfrb
         dBmZ7yX1++f/IXga+D2FiBtU5vpaH6UPrywn/R/IwQETgrlyYl2HrPKxqokahchVlCov
         smGLpQzgrS4dCf+UTG22y5wkFVqIn4BeQNh5FXijG4+NbDLWGy+orTeWnQnkHPT35fhj
         ltV6Eugs53vSjleb4IIjJB9YZbKelhnrioYM8ksxmmbIg+WV3EKNRlcUFJXj8kN2f5f/
         1Mcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=xSoDgeyoR3LFXPw54hf1wAnNaVPECEBO3tpypkREyr8=;
        b=CoNvULoYkYoUXjpomvt6dt6B3E+QFsrnK+Ul3Y/OH0kefddSFOi5rVUAb8apazOiiB
         VP4F/fKKi0IfqVgRdiOsAurRLVEzhbBZ6TuARuecAcZluMLdKKLeRiWDoqbhpg5QEax3
         3jc1Jgem4gMzSZMbiu9CZ6OrwnCW0Cd++/OMlAAcX90NFf8buG3/W9jYs0OUZafQbzDz
         cniaY3KL0nBt9hyDTFb02QXNB+xJRXhRNaAT3A75hq/zcbgxTBwoE3vqav2g+zBox9nR
         g3alrDv86z5J/OTjPKw9p8kNhSIxbbyrFePWvtn4+5FlzNojgPssUxzR0UPTVImEVCbO
         4jpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xSoDgeyoR3LFXPw54hf1wAnNaVPECEBO3tpypkREyr8=;
        b=nqa2W3Bvwm0MX7VlhgJov+q1q8d2M1HVFWptxwqSNw71bjvJZF2oRVkBYu7Xk2Stq9
         7YnnD8y24CcdSQoR3NRq5ODDEOP+XwYrT4OKPkTHZWQfW91mg9p2Ym68FVyOmwYZt7np
         T/wji3i51IsIsOupASMzjRu6ukf/nW8BgS+oAW65i4kPcMGgbVfK/XsPiqlCB2RFuhJm
         g0PVBP0jWBcZFAAYPkDRfrQzFVAIQR7Peuv5h1d5+h9UpqnbkWyVQlwpkZB2yWW4J/zc
         dpl0ZV8MhfGEo+TwNW7sQkzbuwV4Py/TFd2CkgZ0CraPXspCnkRayse9LccpTgpGOD4r
         KpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xSoDgeyoR3LFXPw54hf1wAnNaVPECEBO3tpypkREyr8=;
        b=VIMCzzgwJ4h8xpVsQd697xxgMpIU5qjplwwNZFUV+YYYxj6O4mwVRuc6LNkZuA2gXJ
         PmYJNPgBm5VIt6HUgh/5N8JXgCnUbzCh6sIwOrveUHrtoySQNqjWxxOQe5kdue84wNso
         s2ZRKshcpyLfubtbu9CBLhZXgjRtKgrbYt+iF7Eb+djqYXQw2UU/q+cI8K9HMVYB5jK1
         x3bRqMStTI4+MZWSeV81jLp8D633w5XAzBWZXc3Er05/k4fk5xPqqyky0+KALnBbU4WH
         Cnvc1+gY5Y0znj0u3wEgi/3g2tpPYzQqaP8PGQhjnDS4zpPDOFH9rSV33HEcx37dZCMU
         Kriw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/H0gbtOFahkPfQCe77gabUpTVd4i7sFVvdtBd0xbODBv7my2E
	plnwmr3BZOOUB1MHZqgfOM0=
X-Google-Smtp-Source: ABdhPJzHmPc424yUE3gITxuWgECJhKW0xk+cOnalsUTnNhcMqdeUmIYDNbT2d/sBxwg9KrnxJHtrIw==
X-Received: by 2002:a92:ca91:: with SMTP id t17mr22552177ilo.67.1607785266177;
        Sat, 12 Dec 2020 07:01:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca92:: with SMTP id t18ls1297207ilo.10.gmail; Sat, 12
 Dec 2020 07:01:05 -0800 (PST)
X-Received: by 2002:a05:6e02:12cc:: with SMTP id i12mr14258858ilm.23.1607785265661;
        Sat, 12 Dec 2020 07:01:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607785265; cv=none;
        d=google.com; s=arc-20160816;
        b=nieP4fr3WTZ9z7SFCoP3Q5n+FZ/0TciB3tc5GEBMpWC+ZTHtx7s4VdO6Mp73GYGx5G
         xpuKZM8nrRcKMieFIy17LoN36LW5hhg8eDxWX9jW8LZCVstH4dC9iUuXniUQx1KnGCYa
         UvNLqGvZHYykLROaOcbs+25Npm+kZIeBo70PPbeDpVG3JMRsTj7XOy3gXHf9cE18ugyI
         MaFjV+lprW7kqn5OgADQs5miOIZbuoEvjxTe0wWPyMjp+4rp3ZaEWoLkcIvYJe1QxQhh
         XRphGe47EnxskJG9n7EpGQyCNo7FdccDDq+8NsUnK9xhYa0bUc87szJlcOunvpV14SLC
         P69Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fUjG88rewDfU58wihmGxXOtaNUUgl8vMdo7erNLrNYU=;
        b=JHYV0M4VmYD3FBkW+VmElgVqRyd/1v8I8QzSl/c0muFTENBZhwva3fDAsUQBMWjMYE
         sX4iwHkN5lXD3PH5//aElDPLftY355RgUbKYpsUXELEi/2LaByL0iWNWpTdOBER2PH1I
         lJjtOV8dTwzVEc6GR8jrEdpx/BwsPejpVE4pf2lXHApxKhanrGymyBjllJyYcfQlybpm
         itzq4cmMOf2Iop7JY+LuQr7jUY53POQbVNzd1G0zHY3eXv//c/Mfo+mPqKoTMZrCanAP
         p83rrMmmgWTbR+2wvh27NCOZnJxFXKT0oqAj42/edapuZ5nGdUbWeL1Z+nLwlcbTYjiy
         7Vmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id k131si776780iof.1.2020.12.12.07.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 07:01:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: tUv4ntsTqT82x/QPP2IVMj9oAMgzFSp086P1EqwGHNCaUrrSoS0ArykigVUx/cXPHpiAYffc/N
 zktfxin7ugyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="162309784"
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="162309784"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 07:01:04 -0800
IronPort-SDR: D+D+2MuHlhh2xxKimr8uMJ1EN7yukJTmabc4yBql1J+aa1/vaMceVn7xDrlTBSzyZ/nZ5jEZw4
 I5BGTM6e/7Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="444169360"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2020 07:01:01 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ko6OL-0001OF-6D; Sat, 12 Dec 2020 15:01:01 +0000
Date: Sat, 12 Dec 2020 23:00:34 +0800
From: kernel test robot <lkp@intel.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Stephen Boyd <sboyd@kernel.org>
Subject: [linux-next:master 10689/13205] /tmp/slcan-954954.s:744: Error:
 unrecognized opcode `zext.b s4,a1'
Message-ID: <202012122332.VwKUEWeI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   3cc2bd440f2171f093b3a8480a4b54d8c270ed38
commit: 16a30ba15cd782e95fc57e87c2c4515778d3b493 [10689/13205] sh: boards: Replace <linux/clk-provider.h> by <linux/of_clk.h>
config: riscv-randconfig-r003-20201210 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5ff35356f1af2bb92785b38c657463924d9ec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=16a30ba15cd782e95fc57e87c2c4515778d3b493
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 16a30ba15cd782e95fc57e87c2c4515778d3b493
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the linux-next/master HEAD 3cc2bd440f2171f093b3a8480a4b54d8c270ed38 builds fine.
      It may have been fixed somewhere.

All errors (new ones prefixed by >>):

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
   In file included from drivers/net/can/slcan.c:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/net/can/slcan.c:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/net/can/slcan.c:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/net/can/slcan.c:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/net/can/slcan.c:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/slcan-954954.s: Assembler messages:
>> /tmp/slcan-954954.s:744: Error: unrecognized opcode `zext.b s4,a1'
>> /tmp/slcan-954954.s:824: Error: unrecognized opcode `zext.b a2,a2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/extcon/extcon-rt8973a.c:12:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/extcon/extcon-rt8973a.c:12:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/extcon/extcon-rt8973a.c:12:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/extcon/extcon-rt8973a.c:12:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/extcon/extcon-rt8973a.c:12:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/extcon-rt8973a-481225.s: Assembler messages:
>> /tmp/extcon-rt8973a-481225.s:254: Error: unrecognized opcode `zext.b a3,a3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   /tmp/mcp4018-142717.s: Assembler messages:
>> /tmp/mcp4018-142717.s:214: Error: unrecognized opcode `zext.b a1,s3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012122332.VwKUEWeI-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/T8XrGgSckYCAA==

--Dxnq1zWXvFF0Q93v--
