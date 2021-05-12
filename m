Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFGU56CAMGQEK6T76QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D602937C08D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:45:41 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id l6-20020a67d5060000b0290228235bc72dsf11265056vsj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 07:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620830741; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMq7sxQHLOWqACQ42k9R2qUnKK5NcAkrr+ea4dyWXiRF6yKY4xedt6rM0PMvrJjabt
         YL7UsS4Yz7g8DmuVT3TWeBT4rPWeNHqqG9d56R3zYAcwsAZfuCrm+o1qfn6dguOdvCeM
         KyIBiokmN3isRYdJ5F7G80tb0AoZ0MuFh5OY3tb7MSK1WHWQuuCkREO6oth69yakLvyp
         +n8NavDnjnXAge4aGBoDVFKShtbO+UMRSlv1Qu8nFkxDE44tj0KlZxyO10SpSVIs2vzh
         fN+ZZXoHWOsrfHZizKGOKjnl6VX4P2JLkTGJOn2JiksgTO2rZz80kJ8LCxVzfNZ5dHNS
         3x/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=iYuOWwTdgeVEqZqW5b8xRvFgyxgeQ+hEs8Dbo783otU=;
        b=084IYfwmtNm2FD59GIzCVQ1Z9IsT429oab8VQeSZpaU+k8MKeGAmG2ODaC6nz4gjMd
         QRA0liYvv69+60OEo4HDiwQXDwRRgUoZMJD9MXbIAlQOo3bAVqHFs0xVoOX0OxirOcop
         oSbOlQ3SumRSvWKX9uzN60mojcj9xwM+KIKpheVnfX7ERnPo+atz1JgwBMGL9lsSM3L8
         ny1SlT7K4sSN9N430Wuxu9Rwyqoi6w19tO/0Cpb7d+I9SaHyiXOKAyhSRtL0RwvuI5x8
         hyv3I0NN0ol2yrO+n7wJm+zX9KU17+thgLrIa1hOBPJCcZXpqe/tE3Al1eSRaZl4QnjG
         dFow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iYuOWwTdgeVEqZqW5b8xRvFgyxgeQ+hEs8Dbo783otU=;
        b=DUqzk2hhzzsyrJsM3R7YvWMWyV4hetJjs+zf04syMNuLUKg4hHfvSbSk15XOUm5JfI
         LZ7M0129QjGCo+jaPutmaguMYR2ZtJQFlxrMNKlKyDJnoQ81GraCemNbQEfc/VLUrje1
         /kFIdotifTsN3g8ZTj3RH6XRln6vcMeVL0k7VJQNz1cXhuUykDnGKy/CjEEjyUcWwmko
         00hBtshtim8MTS7WhRMdRHchpZIJwJMPcLGXGd2dLRD4G96ujV6tB23g4f/GmDB8/VRc
         goczUsI6e0a4t8U8G4H/twtpCfLGcr0LYRQADXcaxJJmaiPkk8W/frkSAGqYREk2LoqX
         k8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iYuOWwTdgeVEqZqW5b8xRvFgyxgeQ+hEs8Dbo783otU=;
        b=h6ElTq6JkTBsk7sPrqWxRcjfRrQxm5yCS0eYopyzMZpFGpyKHSQbQk7GzlEqIclry9
         htCepTYmCfJEq39iDXVeC+FOaNTvyUlAtc7IwE8qXdkyrc/23AoZ1AeECf6TX9mmjZJN
         jzuxJkrH5A09obJphl5DWOaP4WyrplMhrAQ/4q2+GW+6cvByjHxqb1rgnowClfoqk4QV
         ad/7pBoDcMJoCosirKxsCdHum1HHZbEDwMnMAWy0cVKty/e1cauStxSaDn3IMKA9GeLl
         6ajUNGAPdlSKEKcgFulfnJ9WfBgIQcB7KAIBEdG5T9tJTIH1HICEQ6uk/CEg7Pw4mbMN
         qtWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wRZJB5jQpK0WwXd3t+8TRgrLRzljwgU5m7Mm0MhFxxY/TIOJF
	vRH/8S8UikysZc6CwPnKi28=
X-Google-Smtp-Source: ABdhPJzQnOkQea+Yg23feheQBipoGBAghEzLWz8z8jMMJX1c5YS6/HfhKhUg99l08K8sh2RziZ9deg==
X-Received: by 2002:ab0:2712:: with SMTP id s18mr32446904uao.88.1620830740762;
        Wed, 12 May 2021 07:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2f12:: with SMTP id x18ls348269uaj.3.gmail; Wed, 12 May
 2021 07:45:40 -0700 (PDT)
X-Received: by 2002:ab0:6256:: with SMTP id p22mr18242525uao.63.1620830739987;
        Wed, 12 May 2021 07:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620830739; cv=none;
        d=google.com; s=arc-20160816;
        b=jDUr/xqU7ir/I8SW7rTYMTZCkd1krJ/7Z7ZcFIzd00rZKFA3IWUe2UI5DLlMu0668F
         XeUpni2dwL+EgUvr+Tq3iU2HYdOrGmA83NGot+nHCWKP25d2C03sUQmwEQMO+SsTN8Dg
         dpr9ixmJ1QAeYFMBmhR7WrLgomtf98IkObCippb3ams7jiZ8eD6A5WJfvtM2ai/eFCq+
         j8PVWol+4g2tpQNdhqHio+Mh8A4w9Ufk4kVb6UC8R5JPeUzfuBujzFAKVwAYxzgc4e9V
         He5SRjGW7Enz7Lyt1tpvIUcpuV8sbRnj4C0t3YkQLhsQ20GiyBtp4XF9Ig/ClXGaGkNh
         pBiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d7fi8TOS+oIuSkK5Fxe5Sk5/1mSmNWFvtHq7UDXihD0=;
        b=dVuLbLhf5k3MID0V6nrdYNhjBFjE5SN43hwhs0vvZZA/o5mqqukwi7Bacibe05D7ig
         +1XfY+J1XKKrtMTCMjaY3x/5aiDF0lZtRrhQl1BdjkAMzo0Pc/6PGkWCbIcI5egavwgk
         nMNb+pUKCZBmzA43j2/f+U9gqbKowE97jJE+5uD14GjGB+hYRAyKSx0E8lZ6ERHAxVDX
         V4xGpeNfhiTF+D6qvu2XVjfr4ECqHOL7I3nUJlCmQ9+kd2amv9quuo2YAdk+L34kqpJX
         rx+zJmGCypddQ4B9lzFO734bXecw1aQXLRFYupJPgt07IQxXVK17S4iRcz/s2mYgnOEN
         Sygw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id s70si105vkb.3.2021.05.12.07.45.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 07:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: j+45d7Q/lRhsGNq0w6HgkxVc4pJ2EY+JjfVxZI8Er5bh7LVbipcTl2fiyzXRYhfMxsap4Es4ir
 Jvv0A/C0y+Cg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="285224948"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; 
   d="gz'50?scan'50,208,50";a="285224948"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2021 07:45:38 -0700
IronPort-SDR: g5IjIiUcxozYhfnZB7AxoU3jfHQBZy/5oIaz9bLpIX7BIEHaNa5aVmPODk2xOpx1UybtEUe+Gh
 AcXCazK2uwGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; 
   d="gz'50?scan'50,208,50";a="409270988"
Received: from lkp-server01.sh.intel.com (HELO 1e931876798f) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 12 May 2021 07:45:36 -0700
Received: from kbuild by 1e931876798f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lgq7D-0000Kh-DB; Wed, 12 May 2021 14:45:35 +0000
Date: Wed, 12 May 2021 22:45:27 +0800
From: kernel test robot <lkp@intel.com>
To: Axel Rasmussen <axelrasmussen@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Peter Xu <peterx@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [linux-next:master 2078/2633] include/linux/hugetlb.h:340:30: error:
 variable has incomplete type 'enum mcopy_atomic_mode'
Message-ID: <202105122224.mJzg3ncL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   ec85c95b0c90a17413901b018e8ade7b9eae7cad
commit: 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5 [2078/2633] userfaultfd/hugetlbfs: avoid including userfaultfd_k.h in hugetlb.h
config: s390-randconfig-r023-20210512 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/s390/mm/fault.c:33:
>> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
                                                   enum mcopy_atomic_mode mode,
                                                                          ^
   include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
   enum mcopy_atomic_mode;
        ^
   In file included from arch/s390/mm/fault.c:35:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/mm/fault.c:35:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/mm/fault.c:35:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   12 warnings and 1 error generated.
--
   In file included from arch/s390/mm/vmem.c:8:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/mm/vmem.c:8:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/mm/vmem.c:8:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from arch/s390/mm/vmem.c:13:
>> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
                                                   enum mcopy_atomic_mode mode,
                                                                          ^
   include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
   enum mcopy_atomic_mode;
        ^
   arch/s390/mm/vmem.c:521:6: warning: no previous prototype for function 'vmemmap_free' [-Wmissing-prototypes]
   void vmemmap_free(unsigned long start, unsigned long end,
        ^
   arch/s390/mm/vmem.c:521:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void vmemmap_free(unsigned long start, unsigned long end,
   ^
   static 
   13 warnings and 1 error generated.
--
   In file included from arch/s390/mm/pageattr.c:6:
>> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
                                                   enum mcopy_atomic_mode mode,
                                                                          ^
   include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
   enum mcopy_atomic_mode;
        ^
   1 error generated.
--
   In file included from arch/s390/kernel/setup.c:25:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/setup.c:25:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/setup.c:25:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from arch/s390/kernel/setup.c:52:
>> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
                                                   enum mcopy_atomic_mode mode,
                                                                          ^
   include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
   enum mcopy_atomic_mode;
        ^
   12 warnings and 1 error generated.


vim +340 include/linux/hugetlb.h

1f9dccb25b8fb4 Mike Kravetz   2019-11-30  333  
714c189108244f Axel Rasmussen 2021-05-04  334  #ifdef CONFIG_USERFAULTFD
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  335  static inline int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  336  						pte_t *dst_pte,
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  337  						struct vm_area_struct *dst_vma,
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  338  						unsigned long dst_addr,
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  339  						unsigned long src_addr,
f619147104c8ea Axel Rasmussen 2021-05-04 @340  						enum mcopy_atomic_mode mode,
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  341  						struct page **pagep)
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  342  {
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  343  	BUG();
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  344  	return 0;
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  345  }
714c189108244f Axel Rasmussen 2021-05-04  346  #endif /* CONFIG_USERFAULTFD */
1f9dccb25b8fb4 Mike Kravetz   2019-11-30  347  

:::::: The code at line 340 was first introduced by commit
:::::: f619147104c8ea71e120e4936d2b68ec11a1e527 userfaultfd: add UFFDIO_CONTINUE ioctl

:::::: TO: Axel Rasmussen <axelrasmussen@google.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105122224.mJzg3ncL-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--rwEMma7ioTxnRzrJ--
