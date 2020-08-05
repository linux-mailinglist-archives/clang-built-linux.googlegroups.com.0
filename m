Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2UCVT4QKGQEEXM2XSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E74423CEB4
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 20:58:52 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id r66sf12288546ooa.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 11:58:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596653931; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmNbhNPbg4JF731MJ2PeroT79qvi/b4YQ27/ZaSuQTIXH7gm8XJxYkHucUwhYL+myO
         vqUW3DpLOi3fgIow92GOypdKU/untlgzq9leDsoenBVj/N67T3ALs8cTV4jybPMBvRtj
         SDCnvCyfiSsUWMFXv98jtQaZZIjQFFArz0+8x7v712CxGvSCXv2SLtvmT6LPWVQb0wB3
         uLMkKVw+qrGkxpim8GrPt/YlZ0oyXADBW+VK4Gtnsshb21JuS1MhS9DskEfZcLWNq6sV
         pH4aF+uS6699BIBDBabJxSx/y4TdtjuDZ4iGTRm4KovD+q6n9sEapWv0NmDucM7/zcw2
         CMhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=2aG/sHdFhtXa3H9Tr2+r+esSuRqUyarGpSzZDdmjpI4=;
        b=OEnP0GV3rF+OynEhKc8vbGyxSJWW15YEkXza5s2jjBiv07hjob2nCznNYFLGa2wBj9
         Z2qe57HT+ZH3YYnEjASypp8GNQcasSYg5ACkkS3BN66wqZwdyIWPObM18XAZMtnUqFmI
         HUKxXZF0rOsU9aN594kfTbPxAt2gjR8M+0pn+gbxqiv1YGx00i3dBFz3IgpPeC5kybQW
         S/i8EsIVeO2JNAPF50evSKacSLyygw1UAvijtCjZYQDZ32LcDPMI5DLNnP3jNVdKEuSj
         4PVxnWeOdUWLhP5AUSspuTsT+QoXwfjdWMHcTxZOt7gw8Z4PPAXaU1+FyPF6xZOIqQNo
         QdDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2aG/sHdFhtXa3H9Tr2+r+esSuRqUyarGpSzZDdmjpI4=;
        b=QQKojl2L1V343hD8ICJLuNpdMkp9cdT4bGNI3gR4mdEFASo7SXRnQx5Nc9J+yiMzAz
         xn9e/LuWwim5eB8tBPEHSdq2wkHfrldq8WQVpBNnoJdojSuQ3OXA8hmGvgrSXFGrSewG
         C7Vgr2BUVFlcIYuwDcYW716xgDYX68clcdO3iaZ4CCipXgW3fvjU2w4Jn5bcnGf2/9ie
         g2Gq7wCa4IYf2/Waorg4pZq8Vs/EbdojZUA8Dh9zBVI4sbk9lXPwPhnKgYWfEfbbo6Ff
         NfaoB8r3yoI0MfiOYnUPviTwH5okw9IwCzwPL+uuzliwLobJevnB1wAMFLM99l9l2i9w
         cskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2aG/sHdFhtXa3H9Tr2+r+esSuRqUyarGpSzZDdmjpI4=;
        b=VwzRHM85Fr3y2bLQAsAzK2T1EekeFhwoEFNhKB/9EGZyKSeXAKoBR3gwxwrpjOu2d4
         9JOWod0h5X7auhMwIlVTDGNXXO4lu+KzmLmtak2TypY2nA0wwYFl1LbS797CaMpnSntm
         0YMFRSRkmUa+yq9phiaT8VMKR0r5X490+oWCXtqsDcBS/zrhJOC/o7tFXih9KJTdVaRd
         5FTqeKB7EKWs6e7tB14Iz31lRd/BhpCQ1i90X39goKzZT7Rsow1E0nWJraNeqffgpPzW
         tfAt/Nq0AlS8eSAWVYZj1EEfyB+MgegnYZ1LnUgHN7D4ena73BvkjX+jB9KhxXhxeBRX
         2k9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jZfCVoaAIzavX0FdOIws+G5lXrEyU29uYnDc/Y2nW0Y9x+gTt
	N3Ws6a6ibpoJAgej/saxWS8=
X-Google-Smtp-Source: ABdhPJwensNQrgE0ilztDwJIKY/kC0/9zhjlvg9vz0MJXkumSw6lKqVNumE5G9mNt9egmiYcvqemPA==
X-Received: by 2002:aca:48d3:: with SMTP id v202mr4000450oia.132.1596653930818;
        Wed, 05 Aug 2020 11:58:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3ad5:: with SMTP id h204ls675029oia.0.gmail; Wed, 05 Aug
 2020 11:58:50 -0700 (PDT)
X-Received: by 2002:aca:c697:: with SMTP id w145mr4155738oif.52.1596653930449;
        Wed, 05 Aug 2020 11:58:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596653930; cv=none;
        d=google.com; s=arc-20160816;
        b=QGqz7yQ7x3n4l2sHjobBs6KnNqSl7XAikaRDhe4f0YUQyWPNz0I3zXMlXyD4LZeORQ
         iQUPrKSsRCu1CDVGP3qW8StZ3jWa+RGONSR4LuQHZdkf19SHjv61nEFZ42/uQhSAsl+I
         fpQxvMXYGYsnFleYiC3ZiYL+SAbBipeVSo8K+JQOBhZKNT5bRXRzV99226n0g3jeVrJJ
         es7dzaccVfjPKkcbtanVsAZoG6gStqH/HapUsvsLFlWobVeiKif3UyAzEbHg731g7pIC
         sVPn7aLM7iyq3QAm7Ff55+eOjgkRy/4XIc9BXkHfhu8jdu6P2MWSTkIgXy89NXwTDKdD
         HP/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=m8cgKUZ3bLO+MNNHooJ9yHcLQRLyJffA5u65jHQAk0s=;
        b=r00T5ePnae+M11zrXWyZjn3Sw1kIIv5R4CYd70G+V1bBLGbslL9GjJGrdozcVl5AnH
         ntCBHSObxhMvl7xp8SvfKF1qknGAfbelZg5m/upn94COTCjqX2PnuNObcm4ptp540Yd3
         twua4sna1bPwKenf8rrABEuzoYEjegRC7W9hadxfQx8ApnbU7EWz+TzBfyaUuhcUFlhd
         Kc2BJwiZswjeeecNjVKrtcRUP7/JxmfXqnEsnxGVORVjLiK+EDbILj1+0nhX9g7wib24
         ZZ8h1ktLTP0XbLXJ4TAMgK69cn1TiQqwL25Y68SVhxRZnXbJXQwROvPI6EwgwzDLssXw
         yi3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id c199si182568oob.1.2020.08.05.11.58.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 11:58:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ObgVR8IXuLK862djjaYQ59ESLF5F+O7BPWFas9cFF2rkRG/kKpOU7+vbY0u6s5ckzwLPLz6suA
 /EKG1NQB2/1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="132194415"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; 
   d="gz'50?scan'50,208,50";a="132194415"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2020 11:58:49 -0700
IronPort-SDR: +YShEb5Ee24d95Le3fJMTiYzSqP7ueRbfXnJzGY6hjiFzvjLLDATHoC2C0y53VhfcdBz+Dm1nH
 4JQxFhyJVWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; 
   d="gz'50?scan'50,208,50";a="331011353"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Aug 2020 11:58:46 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k3Oce-0000sS-QH; Wed, 05 Aug 2020 18:58:44 +0000
Date: Thu, 6 Aug 2020 02:58:05 +0800
From: kernel test robot <lkp@intel.com>
To: Guo Ren <guoren@linux.alibaba.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Xiang Xiaoyan <xiaoyan_xiang@c-sky.com>
Subject: [csky-linux:linux-5.8-rc7 8/21] arch/riscv/mm/dma-mapping.c:63:10:
 warning: no previous prototype for function 'arch_dma_mmap_pgprot'
Message-ID: <202008060201.jLlgcaYF%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/c-sky/csky-linux linux-5.8-rc7
head:   9b8c946f3e338c1c876d6c563c473ba1a9e2704d
commit: c8f110184f7587b5470f3501c6f734bec4c7282f [8/21] riscv: Support non-coherency memory model
config: riscv-randconfig-r035-20200805 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project e8b7edafc3dd0ab85903eebdfdb3bb7cc2d66743)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git checkout c8f110184f7587b5470f3501c6f734bec4c7282f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/riscv/mm/dma-mapping.c:4:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> arch/riscv/mm/dma-mapping.c:63:10: warning: no previous prototype for function 'arch_dma_mmap_pgprot' [-Wmissing-prototypes]
   pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
            ^
   arch/riscv/mm/dma-mapping.c:63:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
   ^
   static 
   8 warnings generated.
--
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
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
   In file included from arch/riscv/mm/ioremap.c:5:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> arch/riscv/mm/ioremap.c:9:10: warning: no previous prototype for function 'phys_mem_access_prot' [-Wmissing-prototypes]
   pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
            ^
   arch/riscv/mm/ioremap.c:9:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
   ^
   static 
   8 warnings generated.
--
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from kernel/dma/pool.c:7:
   In file included from include/linux/dma-direct.h:5:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> kernel/dma/pool.c:80:9: error: implicit declaration of function 'pgprot_dmacoherent' [-Werror,-Wimplicit-function-declaration]
                                              pgprot_dmacoherent(PAGE_KERNEL),
                                              ^
>> kernel/dma/pool.c:80:9: error: passing 'int' to parameter of incompatible type 'pgprot_t'
                                              pgprot_dmacoherent(PAGE_KERNEL),
                                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:712:13: note: passing argument to parameter 'prot' here
                           pgprot_t prot, const void *caller);
                                    ^
   7 warnings and 2 errors generated.

vim +/arch_dma_mmap_pgprot +63 arch/riscv/mm/dma-mapping.c

    62	
  > 63	pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008060201.jLlgcaYF%25lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qDbXVdCdHGoSgWSk--
