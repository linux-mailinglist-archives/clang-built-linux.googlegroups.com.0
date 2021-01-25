Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL6MXKAAMGQEWLY2KIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8CB30240C
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 12:06:25 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id w22sf7373890pll.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 03:06:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611572784; cv=pass;
        d=google.com; s=arc-20160816;
        b=BVZuHR9Pkw+QZ0gDBYCX84KffkQdFQq09LFlJGGJaWS6jhRhkIQTean053wvAZjPCq
         HpTF+4CrPf0X0psarzWK2h1iEVWWXDGuCjaov6woxN7ZuBht51e6xnL5vITw3GZEoPDu
         mvI/Lrcnm4W93OtoHAb4SQ4XNkS9hl90vhhm/UQFggOFrRJ/KC6vd2vv1Hp3dvbYmTjI
         DIRV8m16xLeVXRW184J5xyg2DI0XgCLbjCV2AMMdeMtapvSuh5qMt6JQ+ViimGjAITh2
         xP42qv/VihnB9bvATNpyDWi/fTwm1TrxUH5xtf8Qkw5CfTFH2EYSVyO9g3SBpYK50Wtj
         k/jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Jy9+2XN4eEjXNe2OQ13OKy7+JjagD7/V9KmJkCqTNxo=;
        b=jEw898l9WNqzPWPrSSqPOtcxHEzsjTFliJjVQR6ft+D4wAAtw1WHtfTWBgWAOVv/9V
         qp6PQc0iZ9L1KLp+LtRNSIOIFDTwpFaAnSKoNwfT6iZScDUSCkt+Wr1MDOFfL3Y5cHiv
         u0fHUEdjuHT2rO/8aGy0zTPpkeou/XMEjXKpEkDrgDI4M3HJ0hc5GQz1VbcInccWkBnq
         r/r99fLbNxTKYhbpar4Wes1l8zjZNCOvpMkcE+BphRn+H0xv5vIa5Y1KDyKumTsxKoNF
         hUv+hbDSI2GqgzwvZ+YvmU9SX9J3T/bFnb5Netg810Nn51PV4dr7N3bBmRpdkKYz5V3c
         m2/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jy9+2XN4eEjXNe2OQ13OKy7+JjagD7/V9KmJkCqTNxo=;
        b=U3lEndpLAtxG97jQ/GlxgL/qGGIKFCz2fCtXa8QmMWKXdVgwKMm7iXTv/XjQ2zW08o
         i877lGmZsz/uxJizUKP9eDbLZPwPVpKVGjV6fc4T+ZEHXIwFRz9RXd7EWxgKU472o/D1
         x7lNYRsQ2i034Y41zv64LG7UJRq3a9qOdrFYv5AxAdmCDzeXos+M8iubSEvfV6GAgH0+
         OBvgPvwZeeDDwbMbFkFf3wBtw9n/d3rhyA4svxGCnN/nNV1MO9mp8i3a9Jm7M0kj5haq
         mhtCJJp5pAcZ2W3kzYI8KKmt5k0YTtB0qL0BuO37DykzuPvIZ/9JYbgolv0z9qdomPSs
         G45g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jy9+2XN4eEjXNe2OQ13OKy7+JjagD7/V9KmJkCqTNxo=;
        b=i/d05N4ZUwhtr6sRyOKfKun1Zykn6hNZBSB9cIiAUZ4tYpvK+VKGTbV3Z7QlXbQoG7
         AMANcI+19T4Q4uoBR+46yPSmEQZvfGO2z0PhrQFxOSXnwHUl95zfgf8UtwUSqDZnlNB/
         W5zjfWEfSudQmYdYpvjGSYfF2Ncia+WDYzjTuWH8fIxP908WEAqJoDIdCC1IOa/68Sby
         5f+cuK4Qupcaend5GooEo1Aael+nhuBSyoD4AsZz1pu+XSAd7iG/z3E1tDjHKeIlez4V
         pZ0yiHfGTC3sq04nBQYAzB75BxyB3DFNDdb8A2f2bfN8lpgeoUMhyCQzvA6YJ6Ce2kc0
         WEmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322pDrwDS2/DirFuRpK2G0Q9B1yuNy84q/y0A7JTyqsVK8ei3HE
	BxLvFUG70ib/dHhzm0yoUrA=
X-Google-Smtp-Source: ABdhPJzXICuwrfi9GOyvr2/xcknUBkJhoXvqYq8i4+aZ4uWpzUafFis/XfMZLy+QoKmxPmaz4q9L2A==
X-Received: by 2002:a17:90a:e508:: with SMTP id t8mr21205619pjy.90.1611572783884;
        Mon, 25 Jan 2021 03:06:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8bca:: with SMTP id s10ls4020024pfd.10.gmail; Mon, 25
 Jan 2021 03:06:23 -0800 (PST)
X-Received: by 2002:a63:7986:: with SMTP id u128mr87276pgc.275.1611572783188;
        Mon, 25 Jan 2021 03:06:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611572783; cv=none;
        d=google.com; s=arc-20160816;
        b=h1e9KlQ7YcRONSF09rELw4X+ybZpqoM9/rdCStAZrwgxe1ZvOs5xOHQ6vX1QzvB3Zo
         Q7XEspnaNlZGas6fESJmQ/xsdWJqDxE0w5XwzZZXI2IIBVV1/WRvfXjDKZYTWL7vFd2d
         54BhG8UseWj+X7fmGDSPNBT1ODlR7FzHFuyKwBCTdLjalbnKgYDGSq6PA9qk+moKe+hv
         Ka6uiZTojw/3psKaOYt6CyxniIc6fBeIQnAucM+IYb04nHwAlMayVtmxr5KXOGgeoPpd
         mksWExmUZresqdvr03L5p89uQhpkbYCbYFC4GYprIqQ5oHlMLl8HINxr1TaimxPFdur9
         if9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=yPnUIriM1E6EOXajZafmJC96CN71O17dUk2wP0H317w=;
        b=dG/e+fHRVsKVoKVgSH/wQg9OOktDCWG3+zLAO7kYrTHfnK0oI88UlJf8PpqH6NUCZB
         QZ7Tp/Y9DA4evYZxk/6JiTSOfGxFlgWgLpxRE2OlZO5mnNAHXEbWo6li3dGeST2ia2lu
         C5/nF7HQBGqd0MRhEOOekIg2JfiE3Y6SEaedJhI4ZZ5d984qjr1kWgcs2x3g35sU9qdD
         LQOtGOR/slYpyLoc9GySTx8YSujkvH0AzPDOv6uaRV30uP3rr0RGJHJPUQTRrxeTqHJH
         iduOqMa9/1NRvnw2TMdPKJhGnjHFjC+Gewn2mY3Om2quTXs/bU98pL4H4HbPQsYbzeg2
         SQog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c3si743184pll.0.2021.01.25.03.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 03:06:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: pQvhFZ3XuIOhwgaeyKOUvb3NvFqQplFPrT/WEUws1HFblADrrBy3/nR+cJ383+8/2J4eTtHVlm
 eoK5s2n9M4Cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="243783866"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; 
   d="gz'50?scan'50,208,50";a="243783866"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jan 2021 03:06:20 -0800
IronPort-SDR: bADwxLvaGZuxsO72iZ+bbs9Md5S6fOs9W0ty0Gkhsa+lyyHX2RE7H5WuUe4IYRexrYlzFuNXI5
 eKlcYiAyuv0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; 
   d="gz'50?scan'50,208,50";a="504089617"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 25 Jan 2021 03:06:18 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l3zhJ-00006x-Tw; Mon, 25 Jan 2021 11:06:17 +0000
Date: Mon, 25 Jan 2021 19:06:05 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [agd5f:i2c_rework 38/48]
 drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:2714:3:
 warning: variable 'bytes_to_transfer' is uninitialized when used here
Message-ID: <202101251956.GaAZFdjo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://gitlab.freedesktop.org/agd5f/linux.git i2c_rework
head:   cf3d8d5d50a925740a730f57b8b617fab7e7e75a
commit: a721f1cc3ea5f1420cf3d28996632212b9f3ef90 [38/48] drm/amdgpu/pm: rework i2c xfers on sienna cichlid (v3)
config: s390-randconfig-r024-20210125 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 12d0753aca22896fda2cf76781b0ee0524d55065)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f i2c_rework
        git checkout a721f1cc3ea5f1420cf3d28996632212b9f3ef90
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:27:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:27:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:27:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:27:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:27:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:2714:3: warning: variable 'bytes_to_transfer' is uninitialized when used here [-Wuninitialized]
                   bytes_to_transfer += min(msgs[i].len, available_bytes);
                   ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c:2704:23: note: initialize the variable 'bytes_to_transfer' to silence this warning
           u16 bytes_to_transfer, remaining_bytes, msg_bytes;
                                ^
                                 = 0
   21 warnings generated.


vim +/bytes_to_transfer +2714 drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/sienna_cichlid_ppt.c

  2696	
  2697	static int sienna_cichlid_i2c_xfer(struct i2c_adapter *i2c_adap,
  2698					   struct i2c_msg *msgs, int num)
  2699	{
  2700		struct amdgpu_device *adev = to_amdgpu_device(i2c_adap);
  2701		struct smu_table_context *smu_table = &adev->smu.smu_table;
  2702		struct smu_table *table = &smu_table->driver_table;
  2703		SwI2cRequest_t *req, *res = (SwI2cRequest_t *)table->cpu_addr;
  2704		u16 bytes_to_transfer, remaining_bytes, msg_bytes;
  2705		u16 available_bytes = MAX_SW_I2C_COMMANDS;
  2706		int i, j, r, c;
  2707		u8 slave;
  2708	
  2709		/* only support a single slave addr per transaction */
  2710		slave = msgs[0].addr;
  2711		for (i = 0; i < num; i++) {
  2712			if (slave != msgs[i].addr)
  2713				return -EINVAL;
> 2714			bytes_to_transfer += min(msgs[i].len, available_bytes);
  2715			available_bytes -= bytes_to_transfer;
  2716		}
  2717	
  2718		req = kzalloc(sizeof(*req), GFP_KERNEL);
  2719		if (!req)
  2720			return -ENOMEM;
  2721	
  2722		req->I2CcontrollerPort = 1;
  2723		req->I2CSpeed = I2C_SPEED_FAST_400K;
  2724		req->SlaveAddress = slave << 1; /* 8 bit addresses */
  2725		req->NumCmds = bytes_to_transfer;
  2726	
  2727		remaining_bytes = bytes_to_transfer;
  2728		c = 0;
  2729		for (i = 0; i < num; i++) {
  2730			struct i2c_msg *msg = &msgs[i];
  2731	
  2732			msg_bytes = min(msg->len, remaining_bytes);
  2733			for (j = 0; j < msg_bytes; j++) {
  2734				SwI2cCmd_t *cmd = &req->SwI2cCmds[c++];
  2735	
  2736				remaining_bytes--;
  2737				if (!(msg[i].flags & I2C_M_RD)) {
  2738					/* write */
  2739					cmd->CmdConfig |= CMDCONFIG_READWRITE_MASK;
  2740					cmd->ReadWriteData = msg->buf[j];
  2741				}
  2742				if ((msg[i].flags & I2C_M_STOP) ||
  2743				    (!remaining_bytes))
  2744					cmd->CmdConfig |= CMDCONFIG_STOP_MASK;
  2745				if ((i > 0) && !(msg[i].flags & I2C_M_NOSTART))
  2746					cmd->CmdConfig |= CMDCONFIG_RESTART_BIT;
  2747			}
  2748		}
  2749		mutex_lock(&adev->smu.mutex);
  2750		r = smu_cmn_update_table(&adev->smu, SMU_TABLE_I2C_COMMANDS, 0, &req, true);
  2751		mutex_unlock(&adev->smu.mutex);
  2752		if (r)
  2753			goto fail;
  2754	
  2755		remaining_bytes = bytes_to_transfer;
  2756		c = 0;
  2757		for (i = 0; i < num; i++) {
  2758			struct i2c_msg *msg = &msgs[i];
  2759	
  2760			msg_bytes = min(msg->len, remaining_bytes);
  2761			for (j = 0; j < msg_bytes; j++) {
  2762				SwI2cCmd_t *cmd = &res->SwI2cCmds[c++];
  2763	
  2764				remaining_bytes--;
  2765				if (msg[i].flags & I2C_M_RD)
  2766					msg->buf[j] = cmd->ReadWriteData;
  2767			}
  2768		}
  2769		r = bytes_to_transfer;
  2770	
  2771	fail:
  2772		kfree(req);
  2773	
  2774		return r;
  2775	}
  2776	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101251956.GaAZFdjo-lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k+w/mQv8wyuph6w0--
