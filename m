Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN6O7L3QKGQEP7DHBCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC8821323B
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 05:34:17 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id n65sf20304255pfn.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 20:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593747256; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRJJxRmHxmVS8gkLEJ7VfcGaPgc3IacTHER2MdYtjlLJhrZUJZ/LGlxGdOSkMoZ27N
         TsI0unL2ZlQglv/Q+N2PmDT6JJziM9gyZg2uTPf2x6lhRgjurMhojjcVJtpqd9aczK+8
         2tz+Z+qeytcMw05uBtChBiI7sSoOvmowP5o384Frhxu+G7C6C1n21r0zyG2T78Q+cYrF
         fWoO94Ej8wjdU5jAoPh7HjfqqtHqadoxKyEI+BNeAX5DvrN+d6ji4MmKK738eLXuggwm
         cUKog+4THt5ss3T09lKe6BLUXEnjNkCgIgBMNbYL88v4jhaxn9Py+VbBsz+TUFY0HIJM
         bCtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=FT2SdxgX8sDBy6iecNes9mmGrg9UHaiB/03DchgK1I8=;
        b=OfTMDB+UN2buqrsaDXe7sZYUmGiQ4ad3NcqM5R5Y3EXD3uZV2DKcviDCGfpwFjN02T
         M99Rdwx+tMnaa4kR80SVfAs8ezA0pbF08dqL1ou9Zrxgj/wO+F2pnmuDg6T725jJlW0O
         wy39z1XvF2zGKyTuBTLVD9VbyVwsOrtEv0oHZA2L1VTEMvEXNHd/nuIxomo9NbucHUUQ
         wtZ4qw/UhDInFsC7sELfG4uu1qW1hKeVI/bjLHFcNNejhp1wTNOmaSg1vdfMhgS53nf3
         NUaFXjFAJXTEzwRecE7vkF540ewKA1XstDUGz4HVcTskzl5ouN9VubnFKwk1atjM0HSe
         A6pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FT2SdxgX8sDBy6iecNes9mmGrg9UHaiB/03DchgK1I8=;
        b=p+sgFd78K+we9j4kTjyNDl9oQHBkI/DldvMJDqGpEs0AO62B9qskkxYACtbBVozsHL
         PBFfTWKlWr6MLYXShw8OkHBJTW3K/2Mc3gpjmW6FpG1rPuZXRcP+vXZh7liAqK/nBcvw
         Xwvz8iIgli4JhojI3tRw15zKlGYIlgbLq6+TTuD8G3GTxkjU6QhK7j50yQfD2Eh/Sv18
         WFRG5PhE2XdNzYKSWsMi2AuBWfZWQvB+3BLvgS1Qvd6vgX63xtAgQzEnEX4cNRA8tcsh
         sCROWJt65vrZt/zeRVuEINHwaL52fCrWyfDTCrvuUjCwy4aI+5dceZ8/HOTfeHKulDed
         3dgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FT2SdxgX8sDBy6iecNes9mmGrg9UHaiB/03DchgK1I8=;
        b=RWANao9lmlpWzJuahHPClbYvtDyUWVzNPfdhOqcqiuS8K6OzsRk1kjLOTHl7tQL2TG
         Mgs7u9MNJN1cdI+uWWyQOylTRp19SmmHmS+vuXejK8I9qI0oNF410v1HqCf7NZ5+6cak
         rydbUATkMfg9lsRDzAdJe/R5HtWU3SxY7bFBUTth3TDg03WSKmbwnJ06jYPT5xSGcbUy
         T7JH8Mdj1ep1Vc2xQXqEBdQnx3LzqpUp8qPkrXv2IHswQG3ZFGpBGQYzHPnYpHskg1DQ
         VoBynqEmO9SuKFbA13K/IAS/BwhET+etNwW1tvNN+41Gn/jnV5UdbiSwazARNfhWr6fG
         Fw1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D/aBg+Dmi5fkjwrXwbcYsBjQ3wy96GDnJoIyiCNjvhOYWmuzZ
	vaYZRT7tS+fczmF2Quz9h+Y=
X-Google-Smtp-Source: ABdhPJxLa93ipMNlQb63lnKzdsLfJSkJ1ky4CqqeMkYaTHsMRh+4G0BM8Dfa9eb72nevmFG4Pa9oaA==
X-Received: by 2002:a63:125f:: with SMTP id 31mr28336698pgs.239.1593747255810;
        Thu, 02 Jul 2020 20:34:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls2368513pfe.1.gmail; Thu, 02 Jul
 2020 20:34:15 -0700 (PDT)
X-Received: by 2002:a63:3fc2:: with SMTP id m185mr28105926pga.426.1593747255285;
        Thu, 02 Jul 2020 20:34:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593747255; cv=none;
        d=google.com; s=arc-20160816;
        b=ljM0FSweuMn0maIdz4E4v8YCQddM49V08F1EyLeuwrLOoRejeOlpwc0DY1uWMHCzzP
         N4nvTBeYgus+NmHnzK6XA3vpVFkPHdtpiubmCBrOH4B8WSP0RzgnIo23SH9nwKxzW376
         WbI2YFMH3aSdyxHU7gxy7p1EZ/0I/hH+UvIdwy5Z4DIkWS+Kd5fDGgQq0QNjTjp6y/y6
         ITZ2t5yMrwduGdh9PdTTCL6XgbNIMlWjY/c3Uk+wi0e0AkcN9MlLpeIuJFR6E0+maDJM
         Cl72I+IP7m1yZKU6Awq4Lo5V7Gci2Y+aWQeJ7MLnlEYHpGgX8jCiHnvux/g9+Ts70trl
         Av2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LC6n5272dA4G7ggm9S8ReuNvv/0hwKzo+NbpptDYY6g=;
        b=nT0z6SPmx10+m6VbH5YapooeQvGDaLQj/lkNUoty/uppb/KHM0rWvaFBoSOstlEIg+
         XkS+frssNdFWBr2mzUcoCRny61vsHMMeMt/sP8kIfvxCp1dRZv5mm43hVPSAl0KYqDN8
         +LmynhK3/HQt8dLsD6CQSrcFtLewolLQfNo9yHs+DjLKdljQOMv9UtGKl0zVWSJpu4BG
         2zsHhPdEnGZrkG4exZ7wmqEp6tvYCcpgffJX9LsiboKVx0dmf+JgMLhEu6p31lNcEWIb
         U6wIZSvpltVL0U+Vrx18zuR1ycYANFjGLF5hOyzqD5ZRepCWH007YwiA2g7gN/kh7Igc
         0n5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id t23si475605plr.4.2020.07.02.20.34.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 20:34:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: Bw5YQv02capR1DecyXeptqQofV62ldvnMzA0VOFGUVR47TVnXdK5yBBPHPpn8tTZvQkbpAmKpC
 B+N97QvtkVqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="165142824"
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; 
   d="gz'50?scan'50,208,50";a="165142824"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2020 20:34:13 -0700
IronPort-SDR: ShJR9DKdnIQaKk58WgmfnDJtluOkiXFesoNA6Zvzl+7ndeBm9h6faMiqzWkCoee9FHoJ4Nsi4x
 9gEXuDVc2Rzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; 
   d="gz'50?scan'50,208,50";a="304450389"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 02 Jul 2020 20:34:11 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jrCSo-0003wr-T4; Fri, 03 Jul 2020 03:34:10 +0000
Date: Fri, 3 Jul 2020 11:34:07 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: drivers/net/ethernet/alteon/acenic.c:1010:17: warning: result of
 comparison of constant 256 with expression of type 'unsigned char' is always
 true
Message-ID: <202007031153.tf1GLEcc%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7cc2a8ea104820dd9e702202621e8fd4d9f6c8cf
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   3 months ago
config: s390-randconfig-r032-20200703 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ca464639a1c9dd3944eb055ffd2796e8c2e7639f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
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
   In file included from drivers/net/ethernet/alteon/acenic.c:54:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/net/ethernet/alteon/acenic.c:54:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/net/ethernet/alteon/acenic.c:54:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/net/ethernet/alteon/acenic.c:54:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/net/ethernet/alteon/acenic.c:54:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
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
>> drivers/net/ethernet/alteon/acenic.c:1010:17: warning: result of comparison of constant 256 with expression of type 'unsigned char' is always true [-Wtautological-constant-out-of-range-compare]
           if (cache_size != SMP_CACHE_BYTES) {
               ~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
>> drivers/net/ethernet/alteon/acenic.c:1013:18: warning: result of comparison of constant 256 with expression of type 'unsigned char' is always false [-Wtautological-constant-out-of-range-compare]
                   if (cache_size > SMP_CACHE_BYTES)
                       ~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~
   22 warnings generated.

vim +1010 drivers/net/ethernet/alteon/acenic.c

^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   859  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   860  
083abbb7dc16b6 drivers/net/ethernet/alteon/acenic.c Bill Pemberton    2012-12-03   861  static int ace_init(struct net_device *dev)
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   862  {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   863  	struct ace_private *ap;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   864  	struct ace_regs __iomem *regs;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   865  	struct ace_info *info = NULL;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   866  	struct pci_dev *pdev;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   867  	unsigned long myjif;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   868  	u64 tmp_ptr;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   869  	u32 tig_ver, mac1, mac2, tmp, pci_state;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   870  	int board_idx, ecode = 0;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   871  	short i;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   872  	unsigned char cache_size;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   873  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   874  	ap = netdev_priv(dev);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   875  	regs = ap->regs;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   876  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   877  	board_idx = ap->board_idx;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   878  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   879  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   880  	 * aman@sgi.com - its useful to do a NIC reset here to
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   881  	 * address the `Firmware not running' problem subsequent
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   882  	 * to any crashes involving the NIC
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   883  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   884  	writel(HW_RESET | (HW_RESET << 24), &regs->HostCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   885  	readl(&regs->HostCtrl);		/* PCI write posting */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   886  	udelay(5);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   887  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   888  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   889  	 * Don't access any other registers before this point!
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   890  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   891  #ifdef __BIG_ENDIAN
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   892  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   893  	 * This will most likely need BYTE_SWAP once we switch
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   894  	 * to using __raw_writel()
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   895  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   896  	writel((WORD_SWAP | CLR_INT | ((WORD_SWAP | CLR_INT) << 24)),
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   897  	       &regs->HostCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   898  #else
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   899  	writel((CLR_INT | WORD_SWAP | ((CLR_INT | WORD_SWAP) << 24)),
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   900  	       &regs->HostCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   901  #endif
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   902  	readl(&regs->HostCtrl);		/* PCI write posting */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   903  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   904  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   905  	 * Stop the NIC CPU and clear pending interrupts
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   906  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   907  	writel(readl(&regs->CpuCtrl) | CPU_HALT, &regs->CpuCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   908  	readl(&regs->CpuCtrl);		/* PCI write posting */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   909  	writel(0, &regs->Mb0Lo);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   910  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   911  	tig_ver = readl(&regs->HostCtrl) >> 28;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   912  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   913  	switch(tig_ver){
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   914  #ifndef CONFIG_ACENIC_OMIT_TIGON_I
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   915  	case 4:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   916  	case 5:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   917  		printk(KERN_INFO "  Tigon I  (Rev. %i), Firmware: %i.%i.%i, ",
949b42544a20fb drivers/net/acenic.c                 Jaswinder Singh   2009-01-04   918  		       tig_ver, ap->firmware_major, ap->firmware_minor,
949b42544a20fb drivers/net/acenic.c                 Jaswinder Singh   2009-01-04   919  		       ap->firmware_fix);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   920  		writel(0, &regs->LocalCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   921  		ap->version = 1;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   922  		ap->tx_ring_entries = TIGON_I_TX_RING_ENTRIES;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   923  		break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   924  #endif
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   925  	case 6:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   926  		printk(KERN_INFO "  Tigon II (Rev. %i), Firmware: %i.%i.%i, ",
949b42544a20fb drivers/net/acenic.c                 Jaswinder Singh   2009-01-04   927  		       tig_ver, ap->firmware_major, ap->firmware_minor,
949b42544a20fb drivers/net/acenic.c                 Jaswinder Singh   2009-01-04   928  		       ap->firmware_fix);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   929  		writel(readl(&regs->CpuBCtrl) | CPU_HALT, &regs->CpuBCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   930  		readl(&regs->CpuBCtrl);		/* PCI write posting */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   931  		/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   932  		 * The SRAM bank size does _not_ indicate the amount
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   933  		 * of memory on the card, it controls the _bank_ size!
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   934  		 * Ie. a 1MB AceNIC will have two banks of 512KB.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   935  		 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   936  		writel(SRAM_BANK_512K, &regs->LocalCtrl);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   937  		writel(SYNC_SRAM_TIMING, &regs->MiscCfg);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   938  		ap->version = 2;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   939  		ap->tx_ring_entries = MAX_TX_RING_ENTRIES;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   940  		break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   941  	default:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   942  		printk(KERN_WARNING "  Unsupported Tigon version detected "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   943  		       "(%i)\n", tig_ver);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   944  		ecode = -ENODEV;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   945  		goto init_error;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   946  	}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   947  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   948  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   949  	 * ModeStat _must_ be set after the SRAM settings as this change
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   950  	 * seems to corrupt the ModeStat and possible other registers.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   951  	 * The SRAM settings survive resets and setting it to the same
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   952  	 * value a second time works as well. This is what caused the
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   953  	 * `Firmware not running' problem on the Tigon II.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   954  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   955  #ifdef __BIG_ENDIAN
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   956  	writel(ACE_BYTE_SWAP_DMA | ACE_WARN | ACE_FATAL | ACE_BYTE_SWAP_BD |
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   957  	       ACE_WORD_SWAP_BD | ACE_NO_JUMBO_FRAG, &regs->ModeStat);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   958  #else
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   959  	writel(ACE_BYTE_SWAP_DMA | ACE_WARN | ACE_FATAL |
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   960  	       ACE_WORD_SWAP_BD | ACE_NO_JUMBO_FRAG, &regs->ModeStat);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   961  #endif
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   962  	readl(&regs->ModeStat);		/* PCI write posting */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   963  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   964  	mac1 = 0;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   965  	for(i = 0; i < 4; i++) {
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   966  		int t;
6f9d47220eb2d1 drivers/net/acenic.c                 Eric Sesterhenn   2006-01-20   967  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   968  		mac1 = mac1 << 8;
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   969  		t = read_eeprom_byte(dev, 0x8c+i);
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   970  		if (t < 0) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   971  			ecode = -EIO;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   972  			goto init_error;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   973  		} else
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   974  			mac1 |= (t & 0xff);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   975  	}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   976  	mac2 = 0;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   977  	for(i = 4; i < 8; i++) {
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   978  		int t;
6f9d47220eb2d1 drivers/net/acenic.c                 Eric Sesterhenn   2006-01-20   979  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   980  		mac2 = mac2 << 8;
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   981  		t = read_eeprom_byte(dev, 0x8c+i);
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   982  		if (t < 0) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   983  			ecode = -EIO;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   984  			goto init_error;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   985  		} else
ddfce6bb43c6bf drivers/net/acenic.c                 Stephen Hemminger 2007-10-05   986  			mac2 |= (t & 0xff);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   987  	}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   988  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   989  	writel(mac1, &regs->MacAddrHi);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   990  	writel(mac2, &regs->MacAddrLo);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   991  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   992  	dev->dev_addr[0] = (mac1 >> 8) & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   993  	dev->dev_addr[1] = mac1 & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   994  	dev->dev_addr[2] = (mac2 >> 24) & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   995  	dev->dev_addr[3] = (mac2 >> 16) & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   996  	dev->dev_addr[4] = (mac2 >> 8) & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   997  	dev->dev_addr[5] = mac2 & 0xff;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16   998  
e174961ca1a0b2 drivers/net/acenic.c                 Johannes Berg     2008-10-27   999  	printk("MAC: %pM\n", dev->dev_addr);
0795af5729b182 drivers/net/acenic.c                 Joe Perches       2007-10-03  1000  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1001  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1002  	 * Looks like this is necessary to deal with on all architectures,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1003  	 * even this %$#%$# N440BX Intel based thing doesn't get it right.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1004  	 * Ie. having two NICs in the machine, one will have the cache
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1005  	 * line set at boot time, the other will not.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1006  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1007  	pdev = ap->pdev;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1008  	pci_read_config_byte(pdev, PCI_CACHE_LINE_SIZE, &cache_size);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1009  	cache_size <<= 2;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16 @1010  	if (cache_size != SMP_CACHE_BYTES) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1011  		printk(KERN_INFO "  PCI cache line size set incorrectly "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1012  		       "(%i bytes) by BIOS/FW, ", cache_size);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16 @1013  		if (cache_size > SMP_CACHE_BYTES)
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1014  			printk("expecting %i\n", SMP_CACHE_BYTES);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1015  		else {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1016  			printk("correcting to %i\n", SMP_CACHE_BYTES);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1017  			pci_write_config_byte(pdev, PCI_CACHE_LINE_SIZE,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1018  					      SMP_CACHE_BYTES >> 2);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1019  		}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1020  	}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1021  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1022  	pci_state = readl(&regs->PciState);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1023  	printk(KERN_INFO "  PCI bus width: %i bits, speed: %iMHz, "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1024  	       "latency: %i clks\n",
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1025  	       	(pci_state & PCI_32BIT) ? 32 : 64,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1026  		(pci_state & PCI_66MHZ) ? 66 : 33,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1027  		ap->pci_latency);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1028  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1029  	/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1030  	 * Set the max DMA transfer size. Seems that for most systems
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1031  	 * the performance is better when no MAX parameter is
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1032  	 * set. However for systems enabling PCI write and invalidate,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1033  	 * DMA writes must be set to the L1 cache line size to get
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1034  	 * optimal performance.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1035  	 *
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1036  	 * The default is now to turn the PCI write and invalidate off
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1037  	 * - that is what Alteon does for NT.
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1038  	 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1039  	tmp = READ_CMD_MEM | WRITE_CMD_MEM;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1040  	if (ap->version >= 2) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1041  		tmp |= (MEM_READ_MULTIPLE | (pci_state & PCI_66MHZ));
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1042  		/*
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1043  		 * Tuning parameters only supported for 8 cards
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1044  		 */
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1045  		if (board_idx == BOARD_IDX_OVERFLOW ||
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1046  		    dis_pci_mem_inval[board_idx]) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1047  			if (ap->pci_command & PCI_COMMAND_INVALIDATE) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1048  				ap->pci_command &= ~PCI_COMMAND_INVALIDATE;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1049  				pci_write_config_word(pdev, PCI_COMMAND,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1050  						      ap->pci_command);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1051  				printk(KERN_INFO "  Disabling PCI memory "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1052  				       "write and invalidate\n");
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1053  			}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1054  		} else if (ap->pci_command & PCI_COMMAND_INVALIDATE) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1055  			printk(KERN_INFO "  PCI memory write & invalidate "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1056  			       "enabled by BIOS, enabling counter measures\n");
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1057  
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1058  			switch(SMP_CACHE_BYTES) {
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1059  			case 16:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1060  				tmp |= DMA_WRITE_MAX_16;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1061  				break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1062  			case 32:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1063  				tmp |= DMA_WRITE_MAX_32;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1064  				break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1065  			case 64:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1066  				tmp |= DMA_WRITE_MAX_64;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1067  				break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1068  			case 128:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1069  				tmp |= DMA_WRITE_MAX_128;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1070  				break;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1071  			default:
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1072  				printk(KERN_INFO "  Cache line size %i not "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1073  				       "supported, PCI write and invalidate "
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1074  				       "disabled\n", SMP_CACHE_BYTES);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1075  				ap->pci_command &= ~PCI_COMMAND_INVALIDATE;
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1076  				pci_write_config_word(pdev, PCI_COMMAND,
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1077  						      ap->pci_command);
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1078  			}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1079  		}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1080  	}
^1da177e4c3f41 drivers/net/acenic.c                 Linus Torvalds    2005-04-16  1081  

:::::: The code at line 1010 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007031153.tf1GLEcc%25lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
A048ILQk5AEA

--vkogqOf2sHV7VnPd--
