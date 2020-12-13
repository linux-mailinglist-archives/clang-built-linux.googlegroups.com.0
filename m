Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWUA3L7AKGQEFPOHRZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BE52A2D90AB
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 21:58:04 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id b35sf10462667pgl.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 12:58:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607893083; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQVRYzRad+1bwmaqPN6NsGDMCeklxPWjIS2O7IcWrz7uU1Umq1rwAfmWdDK2hyPAup
         ugOEi2ex7J4SpggxCbXq9/Ag6hoKIba72l1zq92bMsK4sQ3wjR3DIgLfXkTeonOnrikd
         383Fx/hCV7VFv5tXlZb7fhruHdFS3Q3WzDNPNSOHXqOieCPrqG5vIy8nFPP4tl+GW6HE
         sV/2sGutJolwfqQZB4HgfmU2qoJ8zcDm01IJHPeSKjd+PIQhkzakUIJHAO1j1jG0F34v
         mkm6zICou/DUfOmnfV9R+I9iFzk10RR/2a6fEuKE2qqlDqizCb2/l8vYgLRG3o7dHI7t
         YKJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XnM2sIPysrXtxI8vm9WLRiKnL5Gjjb6HqFI4b59A2bU=;
        b=DWYsVKNCI3fAhv6Z3L2ClxyE8AyoRi0jbKKo672TyCkQutPhrZmWNSzgEuRmyTHGxh
         b5JnUJ40o8PnyiaiPtYcfTYAaF4Xp4ml6MU2fKt63sEIyYAZNBb0+j/6mctBlF+nhCXB
         CbJYEfwLbmy0xorEVStvOYFmeIeJ7i0iZRWNG2p/geTltUdC0viQqwnuInt5RkuFXwDd
         HwwL8mruP426xN/xOgXuLVOsho/EaJ9s+MhdmhjVOfLk3ROmIRkrXG8YukOs4tWTC2Wn
         74WXVgglTPB8+GiRy5oQdniDWltLyjkWK0eCuCvlCBNljZLUDrRlRXyOL3xDXoB9v3Yn
         j1PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XnM2sIPysrXtxI8vm9WLRiKnL5Gjjb6HqFI4b59A2bU=;
        b=rUoA3y+JkBlYX86fhXbXwQM3oiNqQ11T9Vs++TUFsyYgTeK+cxD3pt/0gblTvBEfL1
         S+nkbDxKoMmGwrXTCWqXUvaMgDmX/k1yjVXw5K+VYDbE3p4tqCCRNQ2OSyVqfAhRDCVE
         sXcaScvRZFMe+jMS034IcFj3OKWL5Gwgp8Fd5Bu/+AF9BmukohXqLhCvrQX6X1vBLuHq
         EjK6/RoYE47G4V/IRLvOg8TqvzlZiUpUN/EgbYdbhliWGCBJ+DsBFjstUJLmBXTi3Uuz
         6SCLylupo5oi5CpSWsM9DE46+VAPOn1lUM/6KVHD7cvFacFLDF4QQQ8bYRyJTduhURUc
         lFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XnM2sIPysrXtxI8vm9WLRiKnL5Gjjb6HqFI4b59A2bU=;
        b=LzY94sINPOd1hgmKpZUjsvAG08YvrDpW/c31DcF8DZfIxSfEEuCk+JJD5FzGEWIPoX
         QeFRED+ZpQnv5xPjMS+vWaIY5FOr+YUql02Xyvr7Cw16e46micA5nY3NpMS1JuUzLDhG
         L2ZgVp0RbNOrQc5LuTio+cSmzC4fnQZKCNCN4wI8PhH/Vi75ceO5BZWx8Klh8hUW9Nw+
         a2RYWUWMmMRp/rvJYjyWsYHuTrtYgwut0U1Rl3P/S9Xw8cb1LdcVu9AGHKRRhY5AVTiE
         Ot6G/GsCPFNWmPUPxFLW/55ryk3Nin7Y56h8GqqUeMs00CcJZQFdzJ7K6tySH6cFjHlC
         VmiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bsjQevmGSsoX+iOqWAGdbPwo+ANlCn2QWDxPMMNg6+SBivWS/
	rRPN8XeMrxt1RODPL1HTDw0=
X-Google-Smtp-Source: ABdhPJwSMAAzLVZn1xlRJzpMc4ilaNE4Gx6VtrhdSI6gEXmlrOUo5YRNDt1B0z05ZqXLvDYY4rY/WA==
X-Received: by 2002:a17:902:c409:b029:dc:1b6:7448 with SMTP id k9-20020a170902c409b02900dc01b67448mr499540plk.19.1607893082977;
        Sun, 13 Dec 2020 12:58:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e54c:: with SMTP id z12ls5649220pgj.8.gmail; Sun, 13 Dec
 2020 12:58:02 -0800 (PST)
X-Received: by 2002:a63:f456:: with SMTP id p22mr21079668pgk.360.1607893082110;
        Sun, 13 Dec 2020 12:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607893082; cv=none;
        d=google.com; s=arc-20160816;
        b=JTLHLO9lOF3aKmPWk65ZYG5PYtAr5BO/sSFL/bH8exnA1e2a/s61a+RbXYbBb8hker
         54dzlsyC5Kl3L2yNh+yTy5OE0cLgFXB+yNkHuitM8R/A7GKe6oZWdzNeD5FkM2RBAwnO
         PEzn7WVcCXL+qeQpE+QWW6UxwQVLJ6zAmkJ/E5c93MRC/jYx/BpDPGEH9RwQ42Q6cJYu
         OEHFtKxAfS63IVwCvJN0LuG4rhN+Dy2Uu2swrMLyjXltfd9TqvjeRc3I89FRrozFfRGZ
         0M8/d6RU7SbvPSP7FLYZK82xEyoQXNVyM0/09jPXc4+quZcLDzO55VWGtT0i9Mi4hNry
         HlBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d8J0szXCl2nFqza4TErO98l+XnMu+Q/wMlLuGjHaBmM=;
        b=eY7n3o7GGyNCBXTO/2ePbg0oKPcbCBxVEBelPu5ibN/gRoUNqZk7QmJSxu+ww3JcWs
         uCYygfzN/KWP1N3Q9V7BBruC6fhOkpXah3AfI7v5xJD4psuH2d/Qo2KceJOEcgRMEuCD
         OEKokCL/F6/+ylW8BrfqWv/aNaZfypnGBbJnzBqhXBBks2IT5RqAGsipmSpcLF5laAp2
         hZBudtkm2WyuwgqGIi3M+mRAtO7lqZCxqmQRqo35IO76H72Y9wc2wfjlm/bXChphxlXU
         EPhXFaMN1kD5Do7CC2jz3ub4bnNiOKTTmFgayERFPxR9DLuoYzTcBI/mfP/drVYaJC2Z
         vc0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id r2si963177pls.2.2020.12.13.12.58.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 12:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: pglhoYZR4AdiGfVKScMvh2qQTG9jPKzL9cdt43XRMaN2Bf05UKLUHayvzdKsMIKZeRsVF5au9z
 QWdIeV5a/32g==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="153861937"
X-IronPort-AV: E=Sophos;i="5.78,417,1599548400"; 
   d="gz'50?scan'50,208,50";a="153861937"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2020 12:58:00 -0800
IronPort-SDR: 4wlQmnkbI6qGCV4he8mztsXkRzjn6XJ6e0voZ+fz5DYYnDwwByBV/B81hjN1JgIqUrsYvtblVG
 x2ESM90Gt4Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,417,1599548400"; 
   d="gz'50?scan'50,208,50";a="335534620"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 13 Dec 2020 12:57:57 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1koYRJ-00002L-7f; Sun, 13 Dec 2020 20:57:57 +0000
Date: Mon, 14 Dec 2020 04:57:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-cifs@vger.kernel.org, samba-technical@lists.samba.org,
	Steve French <stfrench@microsoft.com>
Subject: [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202: Error:
 unrecognized opcode `zext.b s7,a1'
Message-ID: <202012140423.qZB2nYtw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb
commit: 2494367d9d48498364276355dd85825c967d63c6 [1/31] cifs: Fix fall-through warnings for Clang
config: riscv-randconfig-r012-20201213 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 84c09ab44599ece409e4e19761288ddf796fceec)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout 2494367d9d48498364276355dd85825c967d63c6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the cifs/for-next HEAD de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   /tmp/mixer_oss-346997.s: Assembler messages:
>> /tmp/mixer_oss-346997.s:202: Error: unrecognized opcode `zext.b s7,a1'
>> /tmp/mixer_oss-346997.s:225: Error: unrecognized opcode `zext.b s1,a0'
>> /tmp/mixer_oss-346997.s:228: Error: unrecognized opcode `zext.b a0,a0'
>> /tmp/mixer_oss-346997.s:278: Error: unrecognized opcode `zext.b a1,a1'
>> /tmp/mixer_oss-346997.s:412: Error: unrecognized opcode `zext.b a3,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/timekeeping-638290.s: Assembler messages:
>> /tmp/timekeeping-638290.s:1850: Error: unrecognized opcode `zext.b a4,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012140423.qZB2nYtw-lkp%40intel.com.

--tThc/1wpZn/ma/RB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Fy1YzZRmaBVTfG+c/D+UMkcZLXQBAA==

--tThc/1wpZn/ma/RB--
