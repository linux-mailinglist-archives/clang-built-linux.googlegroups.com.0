Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCN542CAMGQEZOFSTBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E6B3798AE
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 22:58:51 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id i13-20020a4ad68d0000b0290204d5557d50sf5421166oot.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 13:58:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620680329; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLXKp18qd8G5+qKTP11obkBrWHpbv8J3QieVR0iS4E7V2+Xe1feYsQ1FWtRU8xNBkJ
         Lwt/sqayD7BiwG1RpXcvuFKb+zrG3Pt1U3PqsS+MSs7cSkdvs0q01eY0kQvSPD/e+B0d
         OoMPqQir40Vua4Dmu0nRsoDfA2x7ywyB+ilkKGepSBY42mbGRhrfEv3EfCVee9cNAZTU
         lPncOUsgtff3+GDRGk35pTsNKIp/qQ9k4yKZssCvVFwcuiBMxpjFNYaKltVThz6mYNXh
         L9lQJUJ6ek6WFuBBDJTfz86K9HD9rifuhUKkiwmkGyyp+fiU97ke9silWkI3Nd3u0qgT
         FaKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=sb9XNncNbpUP7QGhEVnZyR2nd3qK9s93DLsm/Ly7Y4c=;
        b=zHkasq+Ls030JSiAhKUc/1eJBeWmdGXn1/7TULC3lx1yIGh3cnMnbcstgsThIir5IG
         77JBlhxl4uqW5uj+gq3zPV+tH0pBDT6EwsxpOybSfHCsiW/Xv8M3IF57FSxsA1VYW6LJ
         Bj22OudviCKo3iuXpKVaV4ktVxDlcf2++z9fZBhYQzKZIbkCRQJOOY1ejRIvtZm6Wgp+
         IgIiyClIUMiJxR2REu7wuugkEtoFw4ri0vrFCRHkEhHEG+N8zOAvwU5U+rPQpSWd/NBY
         3KqZo2U9Xncj5dLvBbVBLZPxs8tCYztdLKCabUrS8hn75MzIk03hYbJiJlOgj0IqAI5i
         usTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sb9XNncNbpUP7QGhEVnZyR2nd3qK9s93DLsm/Ly7Y4c=;
        b=esmulRMnVZgc0UTQGj4rpQdn9GSfCC5lS9TgUVv7j4A5Xb9iWeGjNjQwbpRrQtkgdZ
         8BdThqxX8vbQ3lExEQLCekZxxRmE/d+gX3HMO/9es797/SzqNs9dNPonIgDCsWuVI/YG
         x9SW4Ir6bRu1q+loXYzu8hvkc1bKettTdksuHhzrw+ib2y5eeLSMpnE+fSKM2UyNTnU2
         44PaeCTJ9pALqLfFSMzXkJTyTLV/G9OExLxdVOFnEeBlBk2CfQ54PlRaA8Oyhn2TPHP6
         4XRLrdhkyet0l+elu7idAaJnejmGOU71jyShYPSclzS0lD0pBkDOfYcxpTa1tKCWdA9W
         VRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sb9XNncNbpUP7QGhEVnZyR2nd3qK9s93DLsm/Ly7Y4c=;
        b=KXlExbi3ZdK4HfGHW/XixtRSNV+pEjmFzWPK1XyEE9N6Q7joItDjpMsB0B9BwVBp68
         fasReLuFJhYO5pu6yvfUf+NhY6YjubfqKt06gaklBJSDGZPkCToeYM05X7WJcqIQlSzp
         ihch3t+yqFuG8TXANwAMHgRp7jiyoGqDK/iW4Wed9WXDbeeWEjxZG5ea0HXXDOIrFxvP
         TWgYFYRPKk6oHoVWd4ClbbdZeUQUlmrl9y7DD0lUg9XCDZ6IcjqHEwhClsFHqPYYZ/Qo
         PYPnR1wZC/r9iuyg/4w670mRmy2x4Ah4Bx/1ah6zJXPKOX68ZoOpPF7GA8R2XsZpOGJZ
         sG+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53024yU8Gey5RoQOktAU1z+FR5EJWlvl3vMvDplov2cUJ6m+Ty1o
	c0IcDtwYHXle/VlSeQogdQI=
X-Google-Smtp-Source: ABdhPJxl64sjoOGQ5bw+kEawxvWFV1rN0jhA9vVrYahWyFvBzPZnl0BG6we03ro2E/SKMJnHrz4hYg==
X-Received: by 2002:aca:cf82:: with SMTP id f124mr19600907oig.4.1620680329712;
        Mon, 10 May 2021 13:58:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d487:: with SMTP id l129ls4444491oig.11.gmail; Mon, 10
 May 2021 13:58:49 -0700 (PDT)
X-Received: by 2002:aca:a945:: with SMTP id s66mr808890oie.165.1620680329185;
        Mon, 10 May 2021 13:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620680329; cv=none;
        d=google.com; s=arc-20160816;
        b=Y57eWFnYRV1X47jNlj/Ke3wSDxbmbzSJNhHyECdTb4rXDT/h8Xb1bmoQ22zhKlg3Va
         4IQ37Ut/4wGA0dM4JYfrig7VS2nOvDoRKGQZPw5VAeQej1lVD/jOFZKDjUUxPui69YnO
         DsuyCb9b2eCkqEdMUdTBSbu0+bO1kLluAzrQokMJO+XoTXh76Mb3sUvbKXzhXGYpMlHQ
         sh8VUdMNh13VwlFHbLeLdvzGjpGijATPpq4mHrCxjx+n36sJxR+cXrupEy9UuAH6v+4x
         IxxlaAgBlkKBQcKzDhHMNiSIwOvZfU8fPXYz9uoJsdAUNHe1SWv5B6LbMZ0k8CnNsB7a
         mO/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mLudrsBou5DXFmsI5X77EUoCU6lJWBluDfCWRy8De1Q=;
        b=IEGIT4ygs8223ljkruzI+7YjScpha+aA8UmEk3cuDprSpVrsv6DcCuonSH8nSQpAya
         q2Q0nfxhJ1Yrx7VT2bq/jRNE83HEsPjQQq72fnspZww1iv6p94FkyIemmLRQFReu8yKg
         bfIcbiIlb03C+j/8vhxDAJ7kNv7dNdiyUHeebT6qaUVT1ks2sNyE/4+PpGs/Q6JCngCF
         ibZ4iMIMAZ02rYEWI486cQlkuW/Vt5SazY/Edt9+Fo/CMjI3DxBqpQ0ddGvVX3nPNkfU
         bdRD/h+syG0RuC7bhrOkl3aABTwuTcYvw4CrPNTeuNhix0i4XJx+8IEeT969wy1xilv5
         b3Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id f5si1082810oiw.1.2021.05.10.13.58.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 13:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: MeYcWHW4RhK5/cH2NkpQjP3+NV/WJH42sEHCknyzkXozqJOE6dkmM+1MeMfkd7JFSWL7+8bPVM
 RWWvOEfSV4+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="186732481"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; 
   d="gz'50?scan'50,208,50";a="186732481"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2021 13:58:47 -0700
IronPort-SDR: ZK6/xprBMgavulw0iL8k8ZpVuKVNhfrg9DDS0RxAdiU9mB/fPFBCca+zXS7T9pTNKcUOQvI0Tk
 xGvdrrrwUlKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; 
   d="gz'50?scan'50,208,50";a="470906164"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 10 May 2021 13:58:40 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lgCz8-0000Md-F3; Mon, 10 May 2021 20:58:38 +0000
Date: Tue, 11 May 2021 04:57:54 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-misc:swiotlb-fix 9/10] include/trace/events/swiotlb.h:49:2:
 error: embedding a #include directive within macro arguments is not
 supported
Message-ID: <202105110446.SRFWs2FK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/misc.git swiotlb-fix
head:   b312f891c5bef58d2d3b287fd3ac90abe1588192
commit: 4a32ebd5ef3f301848088178b7452a4ec9c9ccea [9/10] wip
config: s390-randconfig-r022-20210510 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 492173d42b32cb91d5d0d72d5ed84fcab80d059a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git remote add hch-misc git://git.infradead.org/users/hch/misc.git
        git fetch --no-tags hch-misc swiotlb-fix
        git checkout 4a32ebd5ef3f301848088178b7452a4ec9c9ccea
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/dma/swiotlb.c:24:
   In file included from include/linux/dma-direct.h:9:
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
   In file included from kernel/dma/swiotlb.c:24:
   In file included from include/linux/dma-direct.h:9:
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
   In file included from kernel/dma/swiotlb.c:24:
   In file included from include/linux/dma-direct.h:9:
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
   In file included from kernel/dma/swiotlb.c:51:
>> include/trace/events/swiotlb.h:49:2: error: embedding a #include directive within macro arguments is not supported
   #include <trace/define_trace.h>
    ^
   include/trace/events/swiotlb.h:10:1: note: expansion of macro 'TRACE_EVENT' requested here
   TRACE_EVENT(swiotlb_bounced,
   ^
>> include/trace/events/swiotlb.h:10:1: error: unterminated function-like macro invocation
   TRACE_EVENT(swiotlb_bounced,
   ^
   include/linux/tracepoint.h:542:9: note: macro 'TRACE_EVENT' defined here
   #define TRACE_EVENT(name, proto, args, struct, assign, print)   \
           ^
   12 warnings and 2 errors generated.


vim +49 include/trace/events/swiotlb.h

2b2b614dd24e4e Zoltan Kiss        2013-09-04   9  
2b2b614dd24e4e Zoltan Kiss        2013-09-04 @10  TRACE_EVENT(swiotlb_bounced,
2b2b614dd24e4e Zoltan Kiss        2013-09-04  11  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  12  	TP_PROTO(struct device *dev,
2b2b614dd24e4e Zoltan Kiss        2013-09-04  13  		 dma_addr_t dev_addr,
2b2b614dd24e4e Zoltan Kiss        2013-09-04  14  		 size_t size,
ae7871be189cb4 Geert Uytterhoeven 2016-12-16  15  		 enum swiotlb_force swiotlb_force),
2b2b614dd24e4e Zoltan Kiss        2013-09-04  16  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  17  	TP_ARGS(dev, dev_addr, size, swiotlb_force),
2b2b614dd24e4e Zoltan Kiss        2013-09-04  18  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  19  	TP_STRUCT__entry(
2b2b614dd24e4e Zoltan Kiss        2013-09-04  20  		__string(	dev_name,	dev_name(dev)		)
2b2b614dd24e4e Zoltan Kiss        2013-09-04  21  		__field(	u64,	dma_mask			)
2b2b614dd24e4e Zoltan Kiss        2013-09-04  22  		__field(	dma_addr_t,	dev_addr		)
2b2b614dd24e4e Zoltan Kiss        2013-09-04  23  		__field(	size_t,	size				)
ae7871be189cb4 Geert Uytterhoeven 2016-12-16  24  		__field(	enum swiotlb_force,	swiotlb_force	)
2b2b614dd24e4e Zoltan Kiss        2013-09-04  25  	),
2b2b614dd24e4e Zoltan Kiss        2013-09-04  26  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  27  	TP_fast_assign(
2b2b614dd24e4e Zoltan Kiss        2013-09-04  28  		__assign_str(dev_name, dev_name(dev));
2b2b614dd24e4e Zoltan Kiss        2013-09-04  29  		__entry->dma_mask = (dev->dma_mask ? *dev->dma_mask : 0);
2b2b614dd24e4e Zoltan Kiss        2013-09-04  30  		__entry->dev_addr = dev_addr;
2b2b614dd24e4e Zoltan Kiss        2013-09-04  31  		__entry->size = size;
2b2b614dd24e4e Zoltan Kiss        2013-09-04  32  		__entry->swiotlb_force = swiotlb_force;
2b2b614dd24e4e Zoltan Kiss        2013-09-04  33  	),
2b2b614dd24e4e Zoltan Kiss        2013-09-04  34  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  35  	TP_printk("dev_name: %s dma_mask=%llx dev_addr=%llx "
2b2b614dd24e4e Zoltan Kiss        2013-09-04  36  		"size=%zu %s",
2b2b614dd24e4e Zoltan Kiss        2013-09-04  37  		__get_str(dev_name),
2b2b614dd24e4e Zoltan Kiss        2013-09-04  38  		__entry->dma_mask,
2b2b614dd24e4e Zoltan Kiss        2013-09-04  39  		(unsigned long long)__entry->dev_addr,
2b2b614dd24e4e Zoltan Kiss        2013-09-04  40  		__entry->size,
ae7871be189cb4 Geert Uytterhoeven 2016-12-16  41  		__print_symbolic(__entry->swiotlb_force,
ae7871be189cb4 Geert Uytterhoeven 2016-12-16  42  			{ SWIOTLB_NORMAL,	"NORMAL" },
fff5d99225107f Geert Uytterhoeven 2016-12-16  43  			{ SWIOTLB_FORCE,	"FORCE" },
2b2b614dd24e4e Zoltan Kiss        2013-09-04  44  );
2b2b614dd24e4e Zoltan Kiss        2013-09-04  45  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  46  #endif /*  _TRACE_SWIOTLB_H */
2b2b614dd24e4e Zoltan Kiss        2013-09-04  47  
2b2b614dd24e4e Zoltan Kiss        2013-09-04  48  /* This part must be outside protection */
2b2b614dd24e4e Zoltan Kiss        2013-09-04 @49  #include <trace/define_trace.h>

:::::: The code at line 49 was first introduced by commit
:::::: 2b2b614dd24e4e6474fcf2dcf69c95c908838959 tracing/events: Add bounce tracing to swiotbl

:::::: TO: Zoltan Kiss <zoltan.kiss@citrix.com>
:::::: CC: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105110446.SRFWs2FK-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QIJdCebWCY1sG2vTS8yx6BYy6P8DYWO+adewAAA=

--jRHKVT23PllUwdXP--
