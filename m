Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHXM673QKGQEKWR4XDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id A56C721272E
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 16:58:39 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id i24sf14204419pjx.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 07:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593701918; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3HmgftBkc7+ZNXHskkTTRGG5shdGRzQckIh9J60d0cI7KELnyzowuSk1ExMFW9V+X
         f0UbFc4+tlc8/lvMWqOrJudX5zje7QcafY7Q4lyh/GasbqYDWDpc6xLlR0yrm63IShj2
         coPr3X2i5RKPiTVJiFB2TzLG6hEVnbBQPktF+gY7fY7Qzqvem7G2XOnxIw9aWbMv0sqX
         lUrZs6KTs69pQhtTgLQ2WGZBzU/mpRlDH5czkUUDjth9CBw4ySN8XfNHufJhjVkBJpor
         AQGCzFKFdSX2jSlmMomAs7uYaOMD5nKxxWbaclQdecmL9Ab5mIRl7iL+GRsBcU998KB5
         feAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=hRPagI9s/zGv9vdbVkIvCnW4C1ueeZ2EASeCe2cXgUI=;
        b=g1wUoc+Aai8oVSp1vUgOqGUhxXeC3GC4BKntwstNeMrAEhbPfi3VFSSUQodpxKf2hZ
         BVX+SiEtLOO6m2OiB0eNf+ZtbytwvHBmLez5nu1jL4Z2B9RhOf+ev1V/WIl1r9/rQprx
         v+U3LueTYnBqjJlanCHFQAE5ybybxfWnqbdaQF9LT7SLKTCZCCLz4c83qvBJc94sH/oO
         JhAsaOatFoRLfxpnGlZHtJQMEAPh9WTBkR8R6ya2Ctpl99nOzDNQxB4SavTZuqYGfhey
         nNKTnTGJjzOth3qNMDWgG5mr/H/tXJNlnOzmFrOhVE1mRQUd2W0igug0RJ9JH+bulNaE
         IlRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hRPagI9s/zGv9vdbVkIvCnW4C1ueeZ2EASeCe2cXgUI=;
        b=Onot1za6XF9P+DLDEFD3FQh2idVs01Bpzabhvc3m3Q3m1gxneH3xy7fmk9W1fo0le7
         cdaGsH7RQGiPHN/qci1BGGxylQJoeodig2Ixjchve+pYK1OJ9oc4Y5j0EHjxcuVRke8Q
         lqI4X0/W1kedq88RUWhA4mkJb/hQ9M3LzdDpf2joghevgOmeJqtxINLISe0k545LpWtj
         8EMauxdJ+LbolvJlQbx5av5ZSL9fucUvdwtiRc9/ZquvquF05aPgJtInpUwZX4VvKPtm
         Wq33WezhIEII0AcgmuPx/M6Tv0y9KLejLYjnpg6AnsIcRpSbfTkSRlXS3DwEgMYSlHjN
         9kJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hRPagI9s/zGv9vdbVkIvCnW4C1ueeZ2EASeCe2cXgUI=;
        b=NFcv32j7JGa3D0k1/uhjhehbSDI+fMBbs2UsToX0UmxM+f2RWa0FeR+XJRLRuXhL9I
         jioNzqZVCJfyH1r2xU/quQqDWdtddDGQn6H//Llqo7Cxc8f6L3FDnZnyRKkpgZY8C9n3
         1EFJRIfNpRZayMLZlBkYBDmY5o50X8XQxnEAWousrznMt9p1awEBPtGO7YyD7SpGyFyx
         Wbim8FlvSccQjMXhu4HvqD7Csy8BMP+T02UO3gXZjOmkRFJ0jtGfK8G0HH65j9YYklWn
         AgZvCb+RAlYJAvKp/rjXQUKWd7wiV+Q/Fysn1kkQ/o7xzhRLSwvbgVB3Rl3IRnCoRhff
         XN5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532J9AmC+kqN1PDPkRBB0oqrJOSFumb3dE9GQUnfdQCUXcOiYbt1
	ONoa4v4jvSdL3gY3M0RbyyI=
X-Google-Smtp-Source: ABdhPJwAFU0ArrzcEmhgjRQBqYzt6AN0vZPAQMK+v7yHo59Q0f/MakzLIkb5Y2w5XRRvuXNnUHuWWA==
X-Received: by 2002:a63:3c2:: with SMTP id 185mr25397218pgd.46.1593701918204;
        Thu, 02 Jul 2020 07:58:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls2102990pgf.6.gmail; Thu, 02 Jul
 2020 07:58:37 -0700 (PDT)
X-Received: by 2002:a65:428d:: with SMTP id j13mr25385583pgp.211.1593701917668;
        Thu, 02 Jul 2020 07:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593701917; cv=none;
        d=google.com; s=arc-20160816;
        b=g07CPjT4n5V+OS9DsWRu3d+IlDRZVpVmpg4yqypG1tIs/X+DaelCzA/3AmSGEiiaOa
         ZAonwnh09mZ32ilcZmxWrTbqQjeWTEcxDgocBJ/KZMLFqM+pydVTDfY74BbaIYQcS49O
         fSCedCAGriA0SNnsS1LD1JiaKGErpfP8i9AzzNAtuT3GCJL1lHw+u7winuUYdLrftraG
         q5AxPKiao5yIwmNkdV62dKUqDopmXR4n91sPFy72wJllVEQQQwBBbgswHtjSQlgl8w91
         xTeSlWseyxjwU8Y5YjXVDOiT2mSfdH2PloWKTgTysA9VWX363rvWwSgtf95smOvcrpwd
         RiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=e3TJ+yjRCaXLa/imONL9ipA1PC3N7WglYzGDJBcMk4I=;
        b=JnP1CNUGB7cASaciBdBbEYG7sj1Osk3vc/wsxtbkXDilBrQFXplvXEQtMHcILtWK+f
         wUe7lUcadqVojFt3gv775WtEUs//NeiA05F+B/iqH9yi4/A+RFnKoHvKCWGntBN4JH4w
         VaS9hse7vAIV1UuGNSEPmAyrYa1bg46eKM3xIZwQuEK2bhUdmlvyzKk+HhaPHATl16NS
         WpsvEoMG4KA02hE+j4uaC69EdPtKl2oexfK5XuzZ156tyAIf1OTWrM8vgHwwXnChwZ6f
         5TUFKOKXDSS4hL5OGM9Lo/lBviBv4a3BPCCMqtPfnBB1k9F+lITHGpTwf9hvi9sEhDqJ
         QONA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s21si593031pfh.2.2020.07.02.07.58.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 07:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: sUQHjpGoWc5xNysO9qKFA7SOZmb6fY3YoINn4GmuuMxpv+zqYlA0xaPokXvhI7jvxjOW0jnVjk
 oj1G5pBuX9lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="145060827"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; 
   d="gz'50?scan'50,208,50";a="145060827"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2020 07:58:35 -0700
IronPort-SDR: TcW3CmbYkVTuXqoG+tywj+zN/qMHTziWiTHawv4b+jerRCqt4cDDBtXAMBEcqB949VBWgsezG8
 pusc5ilsdZGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; 
   d="gz'50?scan'50,208,50";a="321548467"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Jul 2020 07:58:33 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jr0fZ-0003iU-9b; Thu, 02 Jul 2020 14:58:33 +0000
Date: Thu, 2 Jul 2020 22:57:37 +0800
From: kernel test robot <lkp@intel.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: arch/s390/include/asm/bitops.h:112:4: error: invalid operand in
 inline asm: 'xi $0,${1:b}'
Message-ID: <202007022221.LKmqBs7p%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nikolay,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   cd77006e01b3198c75fb7819b3d0ff89709539bb
commit: e0458d9a733ba71a2821d0c3fc0745baac697db0 net: bridge: fdb: convert is_sticky to bitops
date:   8 months ago
config: s390-randconfig-r036-20200701 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout e0458d9a733ba71a2821d0c3fc0745baac697db0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from net/bridge/br_fdb.c:15:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:118:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from net/bridge/br_fdb.c:15:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from net/bridge/br_fdb.c:15:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:76:
   include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from net/bridge/br_fdb.c:10:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:26:
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
>> arch/s390/include/asm/bitops.h:112:4: error: invalid operand in inline asm: 'xi	$0,${1:b}'
                           "xi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   20 warnings and 6 errors generated.

vim +112 arch/s390/include/asm/bitops.h

370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16   58  
b4fd5a0a9295d8 arch/s390/include/asm/bitops.h Heiko Carstens 2019-10-04   59  static __always_inline void arch_set_bit(unsigned long nr, volatile unsigned long *ptr)
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   60  {
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16   61  	unsigned long *addr = __bitops_word(nr, ptr);
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16   62  	unsigned long mask;
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   63  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   64  #ifdef CONFIG_HAVE_MARCH_ZEC12_FEATURES
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   65  	if (__builtin_constant_p(nr)) {
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   66  		unsigned char *caddr = __bitops_byte(nr, ptr);
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   67  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   68  		asm volatile(
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  @69  			"oi	%0,%b1\n"
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   70  			: "+Q" (*caddr)
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   71  			: "i" (1 << (nr & 7))
0ccc8b7ac86053 arch/s390/include/asm/bitops.h Heiko Carstens 2014-03-20   72  			: "cc", "memory");
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   73  		return;
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   74  	}
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   75  #endif
01c2475f6d959e arch/s390/include/asm/bitops.h Akinobu Mita   2013-03-23   76  	mask = 1UL << (nr & (BITS_PER_LONG - 1));
4ae987894c0605 arch/s390/include/asm/bitops.h Arnd Bergmann  2019-04-15   77  	__atomic64_or(mask, (long *)addr);
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   78  }
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   79  
b4fd5a0a9295d8 arch/s390/include/asm/bitops.h Heiko Carstens 2019-10-04   80  static __always_inline void arch_clear_bit(unsigned long nr, volatile unsigned long *ptr)
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   81  {
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16   82  	unsigned long *addr = __bitops_word(nr, ptr);
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16   83  	unsigned long mask;
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   84  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   85  #ifdef CONFIG_HAVE_MARCH_ZEC12_FEATURES
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   86  	if (__builtin_constant_p(nr)) {
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   87  		unsigned char *caddr = __bitops_byte(nr, ptr);
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   88  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   89  		asm volatile(
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   90  			"ni	%0,%b1\n"
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   91  			: "+Q" (*caddr)
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   92  			: "i" (~(1 << (nr & 7)))
0ccc8b7ac86053 arch/s390/include/asm/bitops.h Heiko Carstens 2014-03-20   93  			: "cc", "memory");
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   94  		return;
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   95  	}
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17   96  #endif
01c2475f6d959e arch/s390/include/asm/bitops.h Akinobu Mita   2013-03-23   97  	mask = ~(1UL << (nr & (BITS_PER_LONG - 1)));
4ae987894c0605 arch/s390/include/asm/bitops.h Arnd Bergmann  2019-04-15   98  	__atomic64_and(mask, (long *)addr);
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16   99  }
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16  100  
b4fd5a0a9295d8 arch/s390/include/asm/bitops.h Heiko Carstens 2019-10-04  101  static __always_inline void arch_change_bit(unsigned long nr,
9779048d71b18e arch/s390/include/asm/bitops.h Vasily Gorbik  2019-07-14  102  					    volatile unsigned long *ptr)
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16  103  {
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16  104  	unsigned long *addr = __bitops_word(nr, ptr);
370b0b5f7744d6 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-16  105  	unsigned long mask;
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16  106  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  107  #ifdef CONFIG_HAVE_MARCH_ZEC12_FEATURES
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  108  	if (__builtin_constant_p(nr)) {
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  109  		unsigned char *caddr = __bitops_byte(nr, ptr);
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  110  
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  111  		asm volatile(
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17 @112  			"xi	%0,%b1\n"
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  113  			: "+Q" (*caddr)
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  114  			: "i" (1 << (nr & 7))
0ccc8b7ac86053 arch/s390/include/asm/bitops.h Heiko Carstens 2014-03-20  115  			: "cc", "memory");
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  116  		return;
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  117  	}
4ae803253e4649 arch/s390/include/asm/bitops.h Heiko Carstens 2013-09-17  118  #endif
01c2475f6d959e arch/s390/include/asm/bitops.h Akinobu Mita   2013-03-23  119  	mask = 1UL << (nr & (BITS_PER_LONG - 1));
4ae987894c0605 arch/s390/include/asm/bitops.h Arnd Bergmann  2019-04-15  120  	__atomic64_xor(mask, (long *)addr);
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16  121  }
^1da177e4c3f41 include/asm-s390/bitops.h      Linus Torvalds 2005-04-16  122  

:::::: The code at line 112 was first introduced by commit
:::::: 4ae803253e4649803dc6e972bb5e59fc107cf474 s390/bitops: optimize set_bit() for constant values

:::::: TO: Heiko Carstens <heiko.carstens@de.ibm.com>
:::::: CC: Martin Schwidefsky <schwidefsky@de.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007022221.LKmqBs7p%25lkp%40intel.com.

--UlVJffcvxoiEqYs2
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
al+auopzlP4/Ituv9ULMAQA=

--UlVJffcvxoiEqYs2--
