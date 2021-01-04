Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV6XZ37QKGQEHIUTLGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3F82EA130
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 00:59:20 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id p20sf18583872qtq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 15:59:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609804759; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8255JR+4ovUbpTuW4UllPzaGci2j5AMBWUH58aBvp96KWMhbedyGmzp1EVFWL1OvM
         FMSjPP+wvcZwOEMW5mm0sMdaCPtq3DgTpXz+CfgP/ZFZqwkBkguiSN0bSGBZfcmjxNNi
         JHCnDclC6PJhC7SOZ3UM3J3q7UWQDmhPq3762DGWQAQ/ML2yLeFHNBmT70b1mjOD8vB+
         L/dwA3pKKNxCymfAZ3pyf9rPF075tBIJT9fno2POa2PLUH7htAblSqQ8anfnqjURnc/D
         iYDH5D3ykfN8BIgctNxX0vo/LDMWszJwtndQgucUiZ/kMDtPQ5YOX7M8j+KKwF/pBD2W
         tsrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=EqFlB3kk/zW7hPmNvqWAKEqegaSFWi1NBQDC7zHh1RQ=;
        b=UzJBXugIvJrqo/w0fJYmM7VNg8VE7lG0zeITvDulifNyVUdsUnS1J2SLv09WmJezGl
         k1KbA/xbcu9i9OpBzUDQdM4/S2sgiJxHXD0CMJrbsPEYbbp5gmbGjA2KzT7DHTGFUpWX
         /x5bLzaZtiD0ct3sWVTILHtFhq9/phb5q4aljP0cJu4H5AijC94qNvqSaIv1dETMxMmJ
         88KTs+Ml2qzATPKWjB2nM7R8EAWe6N6CwJd04KLpb4K/Hgw63X2kPDWAsRPmFR3qsVus
         wUeGDFdcQVYX+G9p3saCqQ9FntVYJlvVZwPcR17JFc77uTwlS7eDTyk64fjZISPdMBqB
         dUTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EqFlB3kk/zW7hPmNvqWAKEqegaSFWi1NBQDC7zHh1RQ=;
        b=NTsH1AzITJjxII6NGXlj6VYFCx29R7AkEUQaTBgt+xqWYTPrJAL0q2CviJ9vZ2YGBO
         8rk8InKGlbqMzMPLJ4aMq5eJ45MtYi+zfHOHhb1iD/GO7x95HEosXCly1yygJ6DCs7Vk
         vjmFAHFj9tREGnCsiKac2xESo46VyexyX/vLAK7JJOSPlEjWKSDD+dFY2844t96Vssfn
         e5j+aLBqDGp+b+M9W4WAbAo0LNHg8nADO8si7OSnUejMWZ0s//Y6VHRczN2XLAaF0qif
         BkWaWsJLphq++H+fspwjUJmhYeRe0FdWN+xOoIat8wN3I79F4VXUnB8x8+PeCo0WEJtm
         ATIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EqFlB3kk/zW7hPmNvqWAKEqegaSFWi1NBQDC7zHh1RQ=;
        b=LJSR4fXRZPyvx+zuRRaPGLbHXSXKoSwlWU2rNXWgvnFrS0+qJMAu7du6/Pg18Lw+5w
         zpsd3koa4hVmfb8sQwMmr6Bbq1pCZxElWvgu0ZPczLLvWVfYJmQ2RqkCBBQPpYUDAHx+
         iwO2Lt/Ul/uTzFaJGW26odp+9Ze49xOq6YExlZD8yO61GAzKYeSZHWxGuyWtCFs3CTHG
         ON4heVzz9aBSw/Y4M41K/nYbiUJ2baepgynks6SlIgawKOc1Kh7wrmTsH8CFLDzfqu/D
         R4NaOjByVLL+2JhL7GDOm2G+y5Tt8MSkUOwm+vokTNDCpSKHgJPj6H/3Ipss15t4Gtvn
         SdpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pQ0zS1kwbCjrZ/E/u8uNAyBxv6vuzk36eY3Y6NMJLOKA+AWtq
	HaK2P9DrBamA+e8MogNfwS0=
X-Google-Smtp-Source: ABdhPJy5LWK2YzSqJOxggrqDDOq14AF4fgp7JJgjkii66SY3D2YaJSoejAwfLxrkjPzdg5JW3FSvlQ==
X-Received: by 2002:a0c:f107:: with SMTP id i7mr78906312qvl.35.1609804759737;
        Mon, 04 Jan 2021 15:59:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5ece:: with SMTP id s14ls24212257qtx.4.gmail; Mon, 04
 Jan 2021 15:59:19 -0800 (PST)
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr73623911qts.320.1609804759264;
        Mon, 04 Jan 2021 15:59:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609804759; cv=none;
        d=google.com; s=arc-20160816;
        b=Jaf2wkptGK0IDApaBQz7LKL9xKQdYmGi4xicd783Z48fS8LWhycUzIbjW1gVH7E1Nk
         RZUQVBaLcYUPSvhNTIxbKE4uZ6tgSQTM+wqjiMQUud33fylUpKIHRHJzdkGqDNZ9ekl1
         ajHApI0iIpnlVVY82ZKI1GrVwoAEo3IYb4I2rlePxrIWFo64Xyq4otHVXkENnnadBGsH
         NdPJj41cshMWhnY3a60DLv/PcvgMXWc6aA2bME5bz5myNvpLfZ0o+U+Th/ftFb3wfgar
         IxHJ7HHXm2eWiwTAvdLty2fTxij74wpg+EG0BwCc2rhtMtBH2WCQ/fpoO1IAzs6MDcKl
         UP9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Jq1e2RTnvaphnvDch4cewK2IJK+/Ke+JRfq/k1mUHcc=;
        b=jpVpunN0h1bWv/v3gYmMlNVpfFN+eKx3DrPqBSVysXZf5Lq1s+QgDo1j3PHqOguHyb
         xQFdxrsTy86mk9MEfcRyeuFnN/AJ6x0OVj73GSBE2lpbx+ADXxu46gmjAmpYx+oz6CBw
         kV1RjnWmfh04TGdLifm2E9Eyp8pmM/51/rnmAnchisGKQMaZOw/K2qjBdg1XZSRV6pkS
         UmCmGd9lWXaY2QUTxDvy1kjUApUKbg65i4mIUWqP9nea7h0t2W6B6CgaMFpOdFEg83rJ
         4FRj8NKSUYj2RIkho9WR6ZhM93UoGtfuuVUNhEdKHorG+4M4/VtTomO5FYjEBfIym3iX
         qX6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id n20si3394137qta.1.2021.01.04.15.59.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 15:59:18 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: RRHBGAMHHgm7u88x6meSUp00Up3o1e6usPpZCxCJPv3euVMOBO8SZO1YjOFkyxQZzU9+Vkdkg/
 gp+Y2T2bG5aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="177180248"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="gz'50?scan'50,208,50";a="177180248"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2021 15:59:16 -0800
IronPort-SDR: LykPDx0C02Dh3HB+ce1UTeRITXKpUPuEQYeWNVrDNZd1j/hG01yLwj5CYIUOUlwkhsw8D08u7V
 vaHP7fJ5FfVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="gz'50?scan'50,208,50";a="496575063"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 04 Jan 2021 15:59:14 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kwZkn-0007nw-NM; Mon, 04 Jan 2021 23:59:13 +0000
Date: Tue, 5 Jan 2021 07:59:06 +0800
From: kernel test robot <lkp@intel.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: drivers/accessibility/speakup/speakup_keypc.c:268:14: warning:
 performing pointer arithmetic on a null pointer has undefined behavior
Message-ID: <202101050759.y8UYaJS2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Samuel,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62
commit: 2067fd92d75b6d9085a43caf050bca5d88c491b8 staging/speakup: Move out of staging
date:   5 months ago
config: riscv-randconfig-r034-20210105 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 98cd1c33e3c2c3cfee36fb0fea3285fda06224d3)
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
   /tmp/speakup_keypc-d80cd4.s: Assembler messages:
   /tmp/speakup_keypc-d80cd4.s:109: Error: unrecognized opcode `zext.b a2,a1'
   /tmp/speakup_keypc-d80cd4.s:233: Error: unrecognized opcode `zext.b a0,a0'
   /tmp/speakup_keypc-d80cd4.s:392: Error: unrecognized opcode `zext.b a3,a1'
   /tmp/speakup_keypc-d80cd4.s:879: Error: unrecognized opcode `zext.b a2,s1'
   /tmp/speakup_keypc-d80cd4.s:906: Error: unrecognized opcode `zext.b s1,a0'
   /tmp/speakup_keypc-d80cd4.s:1292: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/speakup_keypc-d80cd4.s:1293: Error: unrecognized opcode `zext.b a2,a2'
   /tmp/speakup_keypc-d80cd4.s:1294: Error: unrecognized opcode `zext.b a3,a3'
   /tmp/speakup_keypc-d80cd4.s:1295: Error: unrecognized opcode `zext.b a4,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/serialio.c:87:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval | UART_LCR_DLAB, ser->port + UART_LCR);       /* set DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:88:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot & 0xff, ser->port + UART_DLL);        /* LS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:89:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot >> 8, ser->port + UART_DLM);          /* MS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:90:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval, ser->port + UART_LCR);               /* reset DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:93:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(0, ser->port + UART_IER);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:94:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:97:6: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           if (inb(ser->port + UART_LSR) == 0xff) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/accessibility/speakup/serialio.c:97:6: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           if (inb(ser->port + UART_LSR) == 0xff) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   drivers/accessibility/speakup/serialio.c:97:6: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           if (inb(ser->port + UART_LSR) == 0xff) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                                        ^~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
..


vim +268 drivers/accessibility/speakup/speakup_keypc.c

c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  253  
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  254  static int synth_probe(struct spk_synth *synth)
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  255  {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  256  	unsigned int port_val = 0;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  257  	int i = 0;
8e69a8110686572 drivers/staging/speakup/speakup_keypc.c Domagoj Trsan       2014-09-09  258  
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  259  	pr_info("Probing for %s.\n", synth->long_name);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  260  	if (port_forced) {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  261  		synth_port = port_forced;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  262  		pr_info("probe forced to %x by kernel command line\n",
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  263  			synth_port);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  264  		if (synth_request_region(synth_port - 1, SYNTH_IO_EXTENT)) {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  265  			pr_warn("sorry, port already reserved\n");
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  266  			return -EBUSY;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  267  		}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07 @268  		port_val = inb(synth_port);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  269  	} else {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  270  		for (i = 0; synth_portlist[i]; i++) {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  271  			if (synth_request_region(synth_portlist[i],
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  272  						 SYNTH_IO_EXTENT)) {
75d6282d8b2d58b drivers/staging/speakup/speakup_keypc.c Christopher Brannon 2010-10-14  273  				pr_warn
75d6282d8b2d58b drivers/staging/speakup/speakup_keypc.c Christopher Brannon 2010-10-14  274  				    ("request_region: failed with 0x%x, %d\n",
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  275  				     synth_portlist[i], SYNTH_IO_EXTENT);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  276  				continue;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  277  			}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  278  			port_val = inb(synth_portlist[i]);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  279  			if (port_val == 0x80) {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  280  				synth_port = synth_portlist[i];
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  281  				break;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  282  			}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  283  		}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  284  	}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  285  	if (port_val != 0x80) {
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  286  		pr_info("%s: not found\n", synth->long_name);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  287  		synth_release_region(synth_port, SYNTH_IO_EXTENT);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  288  		synth_port = 0;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  289  		return -ENODEV;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  290  	}
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  291  	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  292  		synth_port, synth_port + SYNTH_IO_EXTENT - 1,
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  293  		synth->version);
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  294  	synth->alive = 1;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  295  	return 0;
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  296  }
c6e3fd22cd53836 drivers/staging/speakup/speakup_keypc.c William Hubbs       2010-10-07  297  

:::::: The code at line 268 was first introduced by commit
:::::: c6e3fd22cd538365bfeb82997d5b89562e077d42 Staging: add speakup to the staging directory

:::::: TO: William Hubbs <w.d.hubbs@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101050759.y8UYaJS2-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZJzj+k+quENtIe6A/weV8zTp48kBAA==

--vtzGhvizbBRQ85DL--
