Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI5MTT3QKGQE75HRA3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id D03081F8DE5
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:33:08 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n129sf1803714vkn.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jun 2020 23:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592202787; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2ZSKen2jfd1G/VrBW+oBB+iCslVNANSw30ejQv0nPJCQs1S3OKYqMbGKzEC1L3G1d
         q2egyFptUjAPi9G4joNV8aNdoBxNQJVX+A7HosaRaxyUS+ZvfWn3CxHJHGuXVSeItT+L
         qmwYXbtqsBaIqxd4vL8FAMdDDEy6yqb14/uut+dBcrSWyD1DYpgKAcvitsqv7kMLjlv2
         RLK7jHkEJW2Y/W4smU2GfS+yyqi+0Q5kOw5i2DAdV9fXOsnVvGjAKRxGkqeRddn9qRpm
         Zyq7dO37seGdBv0jxB0SdJqI6fN+koWy9KkZSThxRJuAnZ490uVkJTZcjcjNiZHikQM0
         tZhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=cOpx2kqj08WpY3f39p7ckr1OZkFrwDn06fh3WSHu3C0=;
        b=yRxy0RqujzIUnfcyFZZpIvNmDo2xuhFt8rBcStKk3VWMzLd2M4MunykVkOLy+NvFlI
         r8ouZF7FSRK0EG6WxxzDBiFBOAPmmHxQECt44B7JXUtcYMv/bAJHOH7O8KOr3ghzXRKc
         Q3NqSlIFYK33MP2Wa2mdhMKvOoI2tKrvgPRQpzlXbnchzJgaVsD4hVhuNtf0LDg64Ye/
         QGLlg4W38f/aGsF/QvAFK4jm2EovOQaTp7vt/a0e8UKNQ+VISv0/pnVgYLmHCpdWBe3h
         h2lcMV8T84YM3B6n3SSs0u9SKUJ9paoMCuKingc88dvcad9FJJuqzJ6vid7kTNlE2t5L
         GlPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cOpx2kqj08WpY3f39p7ckr1OZkFrwDn06fh3WSHu3C0=;
        b=m8jwOC+pSqDZmDa2g7DHi7wBqx+4i7SyBzhnOwZdEghVS/DLl9eDQVA3qtrQXyW6sk
         8ArC/kRu4FvTMDiJaO7XsqCTlLQZs3MRdrI4wO9yPtQ/0f8Wi0fKsRWi7q3LZtrzRd8c
         RLQSoqO/7tyFzhHigEWmviiqw+gpA3TRQuDlWUhqDttz5hYM/NsEhNcpZA5zpNgQdt7k
         34ff4nDUutnZXjZK7mil7EsLRXBQcuSYmAeW92noU1LCdVR/CFzwaKRDU+ZRJ5yah+A7
         X0mDre5dy8EKp/b2d/wB4jbTuhOa/ti1ZgT5YuS0/cvuHHdOrkcg1tZ+OwcIVU8ZXmJI
         Milg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cOpx2kqj08WpY3f39p7ckr1OZkFrwDn06fh3WSHu3C0=;
        b=TO7PlyXh1c7OqGuno3RVCqt8AyWRHCJ+Hb9d3/OY4le/84vAceWwO/4dqFykxXCAn9
         ROyYkGE/ySRDomQZxWzVn3/CYxzjucsOn703XoqLTq3ITmKFAbIA0a23G+3iJzDsW/i1
         u1o1R2D+Fy8SSO3BX1G6vsWcYhJqq1m/PdFv8f8Ybjpd27hvc/Ihn4FK7CqHk0XCqUXK
         MveqcyqtG3U3L9FClwHa4sFSan74AxVjoXqIc3DET+Ldo2mxhknFchaa7AxIYZEsTRr+
         1nDY+tiy9WfVzV8ZEp84Z2L1REByf3qrQCP2nUo1HCNXotF/0a7RYytYjRMK9rGnxCCb
         0Z1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uudhZAk9AokbwMnn3HbcvXsi+mBLRIQd10TG0snaJcdR00fy0
	6T2fgR5KYkET3hyKtlVMUcY=
X-Google-Smtp-Source: ABdhPJxh3KiNyUs96vznfwXEDqLL7rooxBpbPC1hCYMtN3W85KeGEuuJgmkKf9OIS4l1UvICTEod7Q==
X-Received: by 2002:a9f:2823:: with SMTP id c32mr17894814uac.99.1592202787460;
        Sun, 14 Jun 2020 23:33:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5b4d:: with SMTP id v13ls873484uae.7.gmail; Sun, 14 Jun
 2020 23:33:07 -0700 (PDT)
X-Received: by 2002:ab0:6a:: with SMTP id 97mr11591152uai.63.1592202786953;
        Sun, 14 Jun 2020 23:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592202786; cv=none;
        d=google.com; s=arc-20160816;
        b=O26dVKG1BCjSpGeKpOCWUaZMfa9MBlJ54gISvqa4Dpm/VFvrCpLtRbdZLgmh1DwEKH
         Sr7lG/EHaO3B2IL0PPAQsikKdMRIGutqg70gwbl7/T6HUTKkhwWDLP9v1NR4xed9xD+R
         Q6krhj4OgYS4zM+r8CTrzclwLplIBxoIvFH/o8PAT9CjYU/UDKSSKT9mmqgYMeoS+i5l
         u5Ek9iFsNTN6nJEhVPePqkjdP8TOKgF+4cvFShLOvMzbWSGq5O18LTX3zMiSw+Fs1Nl2
         EAWE/YJQdAIPt8N1uZN+mZZMYgP4zYp+8h+fiff+sdo6W1heke+0NgZj6EcJ/QHWWkqS
         PZaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d6+HOSdejEfzAyJ3bMNgV5xfSIgp89Ro+e8feJQrjDM=;
        b=V7nwmXxNlFn0EeCen79ZQsde3A3tP4wPUFfzs+v7dSXjUimS5OjHcSjUDNRw12/ejX
         rBMgvEmu61fn84IrCXXrfCcJftXf8k678LK7nRJqTMoN2FloR4hTwNjyq/znXQu8i22J
         Sf0dhQhzoIM5H4JFL8HTb2iwL+PFtnviLAC4PUUF5iLA9uWL2w7/ybQfOWVuPO/oejtQ
         ad86jOmOSg4j1fisC/NOvyyBDRr0BZVlmk0/Y6ffoNEbvo95LJ7OdmvfPV0wYCIonOgO
         ig4PyRdPH9D0vbtb8tCEOkDdWPheCGNnZ9jaLNVVLWZBUocfLdGtt0sF8OH2XFB0hzRT
         qzBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i11si983506vkk.2.2020.06.14.23.33.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Jun 2020 23:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: wlOkeXUdIBP0mYXFiT7qw2b+NBh5NUe3egG+8HU7dAbqg2/GP3PZ96UOiaTalBCkTiEBo0QErD
 wJuYox+Q5cHg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2020 23:33:05 -0700
IronPort-SDR: ePanc23lwQ2zCxxtqikpOCvTvKwCARnZIXij34+gCbqRSSWU8M+XB33Us4FmUGYTZwTe1JBSC7
 H+wNZb1HyZ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; 
   d="gz'50?scan'50,208,50";a="298412625"
Received: from shao2-debian.sh.intel.com (HELO localhost) ([10.239.13.3])
  by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2020 23:33:00 -0700
Date: Mon, 15 Jun 2020 14:32:30 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: drivers/net/ethernet/alteon/acenic.c:1010:17: warning: result of
 comparison of constant 256 with expression of type 'unsigned char' is always
 true
Message-ID: <20200615063230.GO12456@shao2-debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nOu5/nyZvaEJrfuB"
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


--nOu5/nyZvaEJrfuB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b3a9e3b9622ae10064826dccb4f7a52bd88c7407
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   10 weeks ago
:::::: branch date: 2 hours ago
:::::: commit date: 10 weeks ago
config: s390-randconfig-r026-20200614 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cb5072d1877b38c972f95092db2cedbcddb81da6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
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
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
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
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
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
___constant_swab32(x) :                                               ^
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
In file included from drivers/net/ethernet/alteon/acenic.c:49:
In file included from include/linux/module.h:12:
In file included from include/linux/list.h:9:
In file included from include/linux/kernel.h:12:
In file included from include/linux/bitops.h:29:
arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
"ni     %0,%b1n"
^
arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
"oi     %0,%b1n"
^
arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
"ni     %0,%b1n"
^
arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
22 warnings and 7 errors generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=afe956c577b2d5a3d9834e4424587c1ebcf90c4c
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git remote update linus
git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615063230.GO12456%40shao2-debian.

--nOu5/nyZvaEJrfuB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKOM5l4AAy5jb25maWcAjDzbcuM2su/5ClXysvuQjGXPeMZ7yg8QCUqISIIDkJLlF5TH
1kx0YlsuWU425+tPN8ALAIKUt7YmFrpxa/S9Af7y0y8T8nbcP90dd/d3j4//TH5sn7eHu+P2
YfJ997j9n0nMJzkvJzRm5W+AnO6e3/774fXi6mzy6bfL384my+3hefs4ifbP33c/3qDnbv/8
0y8/wf9/gcanFxjk8J/J/ePd84/JX9vDK4An0+lvZ9D1Xz92x/98+AD/Pu0Oh/3hw+PjX0/q
5bD/3+39cXL/7dPZ5/OH6ZfPn79dfLm/+nz+/erT2dX5w7fz++3Dt/uHh29fpg93l/+GqSKe
J2yu5lGkVlRIxvPrs6YR2phUUUry+fU/bSP+bHGn0zP4n9UhIrlKWb60OkRqQaQiMlNzXvIg
gOXQhwIIdt4CYybJLKVqTUSuMrKZUVXlLGclIym7pfFk9zp53h8nr9tjOyTPZSmqqORCdhMx
8VWtubDWNKtYGpcso6rUU0guyg5aLgQlMSwq4fAPoEjsqs9lrs/4Eed8e+nIh6tSNF8pIuaw
/YyV1xfn1mZ4VjCYpqSyDKw65RFJG4r+/HOoWZHKJp1ev5IkLS38BVlRtaQip6ma37KiQ7ch
M4Cch0HpbUbCkJvboR58CPAxDKhyJIagUtLYPm9r3QEKeWv3e+HC7V4+/OZ2DAqbGAd/HAPb
GwqsPKYJqdJSLbgsc5LR65//9bx/3v67PTW5JoW9JbmRK1ZEwSkLLtmNyr5WtKJBhEhwKVVG
My42ipQliRZBvErSlM0CyyUVaCvv5IiIFgYAawOWTDu416pFBKRt8vr27fWf1+P2yRIREMKY
Z4TlrmBKlrkNBkktGBU486aDzmlOBYtUJhliDgJ688iCCEnrPi0Rml66B51V80S6xNo+P0z2
370N+XNqLbLqUaYBRyDFS7qieSkbApW7J9DmIRotblUBvXjMInuhOUcIi9PwoWtwELJg84UC
1tSLFOHd9VZjsZugNCtKmCAPz9wgrHha5SURmwBH1TgdZZpOEYc+vWZUgTWdoqL6UN69/jk5
whInd7Dc1+Pd8XVyd3+/f3s+7p5/dJRbMQEjFpUikR6X2SYrAFQ5KdnKsTgyWtAYdD8VGUmV
luhKhPc9kzEg8AhQcMyQTkejIUtSWmYIm4DRUrLRnTzATaCNcXc/HeElCx7mO0hmKQugCJM8
JUh0ezhNfRFVE9ln0RKOSQGsf55OI/xQ9AaY2dqSdDD0QF4T0qw/DpAxTdGGZjx3ITmFE5N0
Hs1SJksXlpCcV+X15cd+o0opSa6nlx0pEDbjPGid9UQ8miG99BnUtHYJ1GqwpfnD0mnLllA8
spsX4GRQ209JOVr2RMkFS8rr8zO7HQ8rIzcWfHrenQDLyyW4Awn1xphemMOU939sH97An5x8
394d3w7bV91c7yQAbRU86n5ZFQU4SFLlVUbUjIAHGDkCVntysIrp+RereS54VUibccE0RfOw
TKXLukPYsmmQEdIxhILFcgwu4gFXoYYnwJa3VIyhLKo5LdNZGKUA01qOriCmKxYNmG+DAYP4
WqW3TSqS8UnAngWYGV0QsIagubpjqvBknVOCPQhoCut8FnugZmhaesPAWUXLggNboBECnzy8
a6N40cEdPn6wr4mEXYGyiUgZ9LQEalbLRU5R2a60ay5iS+7wN8lgNMkrEVHLgRZx4zd3iiE2
TmdovrhxmG1s19W0UbmHOeRXgh5C44h/h084UhzsZAYhkEq40KzAwWblLlMNYEv4w1LJ4LaU
ltei/b2KxdNLHwe0eUS1eQbNDfxjEbpI7J0ZrR9YiTdsBl4xQ0ZzZsJj8V2pZEFy8H0si6Pd
YOPT2HYItaD/W+UZs+MmS2vRNAE6C3srBLzEpHImr0p64/0EGfBIZpqjrLiJFvYMBbfHkmye
kzSxmFHvwW7QnqLdIBegMi2Hm1kBF7gHlXAUMYlXDLZQk9AiDgwyI0Iwm9xLRNlkjsg2bQr+
G4rDGrCmFEqc70UBNzTTh8ILNCdrAgqhiYsQ/3cdcjjaRwOToJhL6njxsDEax0GNoI8GxUO5
DnideCm2h+/7w9Pd8/12Qv/aPoOfRMAgRugpgUvc+TzuEO3MWscaICxZrcBtBGc/6Je9c8bW
Yc3MdMZHdrhcptXMzOxoWghBCRBTLMPaMyWhYA/HskcmM+ATMafN4TjeMULROKKnpQRIJM8G
5+oQF0TEEAmFTbZcVEmSwhERmFMTj4CRGFio9oAgjsPsj+MKC56wFKQgSHg3X9NKQ2a5mLcQ
3ajYznzgTDNkrTxmxHI5MZQDE9T4QxbpINBearXYhzWB4GJNIRoLABydZDW24qW0CXW4wHXL
akYEKmoieuG5Ru7aIFpkHPuBO1kMjVgBVWe2jyAvrs6sX9pi8wwGT8CWtiu0lO/cJNZS4GPQ
Q58ckUxhU8CuelVaIIvD/n77+ro/TI7/vJi4xfJT7a6ZXuft1dmZSigpIUCzFulgXJ3EUNOz
qxM401ODTK8uT2DQaHp+apALG6HzlZs1BIWnW8AYGGcPCFQ7cWi+sFvSQD8ND6e3WlZuIhd/
NwolOLBGwBMdg16NQvEkR+ADFKyBLgEdGG6otxeg2thwYerVwBDxLj/O7JSbUeWWrGWWlOZC
RxhWVLvgZZFW8zo4bWU8prIJAXsZDpB+iBJDuZrFLVDyzN4xtJx/CpMPQBcDh2bGOQvOcD3t
6gVLekOdTJfmo75xadF1xjXnM4sk4G9yv3jQtCmehKOkFgGjjsBMLbx2Bju/nWorhbotaG/G
NJlWddn2aX/4x68fGO2rs5TgqYHhwQl85dyCO/Nsw02nJvlb88UpHAF/rfyZaixZpKDgiyxW
RYmmz/KCOQROOh2BxpODiRfXV50yAAd5sZG4UuBsef3xsrUKYCaNsbT4HYNEv1H/VPMKvIfr
809tf10JijcQxIKJbLq0tHdIa1LRH7iTZm2P8WvMQsdeRAxFLKnyCCMdeT09/9IpbAmG03HG
o4WMUKjcLCLsuhpIJDvL0euJ355eoO3lZX84duwQCSIXKq6ywt6fg9tSikaoMexczNqzMgVE
5ixubO1qdzi+3T3u/q+pN9qeVEkjCK51wrTCIptODcI5eHWrrsuwWo+ykAiTokhjkB8dQFhs
1zS7wU7TymWgEfMNsrLQ0UdRi00BMWTiW9rlKrNPyd1g2DnF0QI7rw/DI6PJsm0fvx+3r0fL
adGjVPma5ZioTBOsANpn2nVxyot3h/s/dsftPSqOXx+2L4AN0cJk/4KTvfqM4gaxWql6bZoG
3LjKjqZcGkcvSIHfgf8UePM0FMnpEWmSsIhhoFJBYAvRLeZxIkyLexoF4yOsWZYsV7O64uUc
j+9vmlZByzDAtCrgzcTLRmi4E/N3NSyNuuB86QHB+ceES8nmFa+suRpnHEywrr7UhWFvb6gY
QCGWLNk0KaU+ggRmNVrXA2IwLFudprP+poLtb0BmKuNxXQ72CSLoHEJ25DGtOM0ZgKj4ZKiD
5158jP1D7ToRaMastVGPqB2XjEPtbEEXhqk5wYpLXYbHsDEIxhz8CRSIa8xfPeobhjDp8V6K
xiy15l1DeR1JeRh1P1OTH4DFvOpbbZ3sYEWkTAmyqfIHkOoY/l24PI0t/BDha7ugQOCdwGyo
vU7h67OuDQEXuvLnjT5aaev4HcgEBAU8THGdHgJlbUBkc3R8UMdg3j1wNGa7PClVDONuPCjI
TOM+0YglzCIWgKoUtAgqJ8wFIoMGtqJB2iV1Uqfm6Hmxaa6LlGlfKlNmPKk2P2ARPMW8wwwA
4NXE0rqSgYcr2VxWsOQ8vugBSFQ6bFEzwjj04hx8MRU4DL3PVUYKy6FqrGTbOpTKMywDOrJs
nHOxtrKlIyC/uzmMYHcH1C4OPVI7SxYqSbSTGKc6EhtdiDamNuKrX7/dvW4fJn+a7NzLYf99
9+iUlRGpXn5g6RpaG1VF3EDBh4WzUyNrcA4Jr2ehO8/qAouX3TrhLjRDYc4HE9W2PdWJXImp
y+7eVy0YTm7AnIFx/FNOwgm9GqvKxzAaEzY2ghRRe/HJp52HOVAlqcHN3ZwxHEyarVXGpDQX
A+oKmWKZToaFL9DkoDVA3jbZjKdhFGDerMFbYtI8lDipVZAuhqfgmVSWjZ25QRcWtGQkGaiV
rxW1y91NqWsm58HGlM367ZiwmwtWBktmNUiVUycb0CBg1BdKuOsabhbryFnbMOEOvp6V/nDQ
pLKvgxVhk9pMQrTT9MA0ZEHau0fF3eG4Q6aflBB+2yl8TBzrYIbEKyyV2V4c+Mp5hzEIUFGV
kZwMwymV3NFRPgKLwqzi45HYv4o0gFjwNRVgq0O6z0MVTEbMXR276eCBEbhMglTJwMgEASUR
LARgsyzUnJEo2CxjLh2Ac+8mZnI5FJRkLIc9yWoWGBYvugAN1M2Xy/DgFfQFU0xHZ0jjLNwb
Ab2iexdMztkoqSGIFvZpOBmFKg/3tYp2IiMncGgyvgK8dnj5JXQelkBbi2vyXZ7AObqrl8tE
kc2+Ypql14Y+oa5tmsQN7y6lvNo5CsBk3OQxY3C6cGFh1d7hLTczGioqNfBZ8tXekTt1pz8w
52Dxusynnkdg7jCDn4lXhsXGVd5DGGq2GEE6Mcb7BnCvSg6iSNLLA9poaNNHF2MQxpdT44wv
qEOqL42EcY3PPUZnjfEO8OCaO4zBFTsowyTUaGMktBDGl3OKhB7SKAnXYOPpOA0Nynvgg8u2
UAZX7eIM09HgjRHSxjixpFOk9LF6tByV+FPCPiznoyI+Lt2nBfuEyJ6S1ncK6qiMDovnqGSO
C+VpeRwTxRNSeEoA3yl742I3InHjwnZCzt4hYqPSdUqwTsrUe8XJvYJASo4ZUZFZ5QwdvRrm
A4+Wr3M7wBBrCVH+AFBPOgDrUhHm3hKslBSFxtCuB/3v9v7tePftcasfdk30FR47yT9jeZKV
mCjqpV1CID1fB8AMS2mRAZrc5D3+0unX9tIU9urdHq5HlJFghRtmGQAEuKE4AUf3K01DO7Yr
mNnd892P7VOwLNGWKv1knKk7YkRO7bv/VuXzBkuSNARawT+YkPKLoz2M/qTGG8WquBqBY9Ey
AE+ILNW88u/KLCkt2r4Wi5ottvfqnSSKU5oNOeGm4loa5xkL/R8dfor8EfXNKUFRYrwbUG1E
NBfETwhipUN5V4X05kkcC1X6NxJmvMojt2okQ7W9hjv1KUEopoe7/nh21dZvB7K5VsqkD4eF
rskmlAAIYmfmCqS13ZRCvE/A1bdnSgRQAQtRIYlwL/XCz8Hr1C3MLjhiI6yKyOvP3Si3Beeh
gPJ2Vjnv4G5l6BphR2EqhFuo0BeaQ+FN3Nysw8Tz0knTm0tbK53jt1iACkzKe69WgPPVjObR
IiP2C0pt63ieYvq70DeLE7/ohyq1KKnJvNeX9txSfUCHNCPktM3U5tvj3/vDn7vnH31NgzcK
aOmKBLZAEE9CB4ZBfrfMSqcLosxrwb4OWw5k+G4SkekSWfhZFsXMd+iaDauilUWrxP3NcndD
rDB3pSMyUIQHhCappQQHExmMdgtV5JYOM79VvIgKbzJsxjvo4Yv4NYIgIgzHXbOCjQHnaM5o
Vt0MPCKAKcoqNyl36wFADpqLL9lAsdp0XJVsEJrwagzWTRueAI9FkfBzSg2jcoBiZmmowEPn
gtB2u3ZjzYUOXlT0mFMDqrjocbyLIcj6BAZC4VxAtfBNEAtnhz/nLbeFdHKDE1Uzu9bW2IYG
fv3z/du33f3P7uhZ/MnL57dct7p02XR1WfM6ehPhS14ayTx+kCA+Kh6oSeDuL8eO9nL0bC8D
h+uuIWNF+JKmhno8a4MkK3u7hjZ1KUK01+A8BjdPuzrlpqC93obTRpaKmqZI63fxA5KgETX1
h+GSzi9Vuj41n0YD0xK2d+aYi3R8oKwA3hkSbXz3j0VvtF4D+qYoC/yqgZQssYohTV9wjHTZ
FMxiVnjPMAHH1NHD9YtiBAjaJo4Gls3wnduA/hUDz9vKoTfjpAzf00/Py5A+kqVlJOag5Z1I
QrB4HnpltEpJrr6cnU+tsK9rU/OVO44FylYDhiSmEZA3lIJPnSuj8DN0w5mUJF3a+melb45R
t5kVcVx4P7FQ7D7JvzkP3dtNSWGV1YoF9+z2ZcrXBQln4xmlFPf/KXxbWF9t8186NjuJrFnj
XOLTOo6fibh+sg4KTp3oWldwfF7QfCXXrHQ/D9CcjsQn67YP2LT0jE8LSDkvZuGLAiazHxrV
BXQvfG064LdEhg1XVgxYa/MYMbS7hRTeFMpQAlhkcKj0AgILidZmDCuPZEiVi8LatEj0k3Hb
2t+4T2TrF5xaMwkW/jSFhWM0V4hTtNnHF8MSQm7nIdrsq+Nb1W+wBoZIsDpuvmniOuQTvLho
rks4ZCiW5ZyG+V77GYKDpecQtXBPNdbBQW94D2AHAm3MZb/TwW/QgL/jEBWaZlFYEyJsvg5F
dwD4fXp1cdVsHBom8fav3f12Eh92f3m1KURfRQMSr4E3HtSCydRswekwxGwGhpVx85g4fN04
sFrLLCTAG2LIZiRqGYVC/DXLiBU/6Z/1SvRLn+svHZ8vmc1y5jc4TEXlaMm6fV4EL2Qjv1wV
jlGG312x0GGsq+FnzxFhiUtclowi44BAW5unGF6HnDmj0GKhvO+odCtKBr7hIsGPSENGVMcJ
iZW6aLyefkv96LaxAhLUQJ3haCy34LA85wmolj26cj/OpBMEmJqwkgOEpXxFHS1Jy0UJSI1C
HrwP3L3mNLfbfVmxkZ0qsP+j/oSLdBp1nmtWOdqyef+CfRAlTHMAkGBYrCGycC6HN22jr5Za
JH0FA9Pp70DD7HYfuYfaPej2lwW+akgsNWi2dimYSdZrcL+OYw89cnkBocI8LWyehgw8m0FM
WdqPSvWxJIFGJ8eEDYyv/CWB+RuYpCCSWTd4LCYINqpoECIXRTTET3h5316AuWIUscn9/vl4
2D/iFzMeWt6uOf519+N5fXfYasRoD39I/3mHPq7YPS5s0B+J6h05tBcpMV+QGiAHRCfutYyx
ZZgk/v4brHv3iOCtv8wuTTeMZQzf3cMW3zJrcEeUV+tFS2eNTuK2d0rCFG6pT58fXva756Pz
dgWoQPNYv0MNGkOnYzvU69+74/0f4fO0eXpd+4hl/VzNGnR4iG6EiIjYPdcsYgOfIQFU7/1Q
vdpf7+8OD5Nvh93Dj63jd2xoXpIAZwhSsNj+XkDdoErJPp9P++06dYCxLn445+LMMtI1Qi39
4FSWN6p3OdIfLSPQYc7sG+QtjDqvnrvxqwxvpNqZowaGCei836zvaKrI2Grz4aK7l90D3uIx
B9M7UIsKnz7fBCYqpLpxLsrZPS6/hMNyqzM4v8HvhdQo4kajXNiMNLDm7k3Q7r62ohPup8Ar
cwl6QdPCrmo6zaAwy4X1pRMgV5kVifc5A9MGvnmVhzSNLEkek5S7by0LYSZKmMj09Tn9bcIe
/ya7w9PfqI8e96AIDt3yk7W+T2wvvW3S7kmM3zPqgFghJO1s1p66XvrVSkuPruYTQgB3J00H
IteuQ3ON2D4zf0etU2w+b7GyK6uNX61vGodhXqt1LNrPF2w1kElqAwExkK8zCPjyrB5GmVef
IWOSqa9cqmWF37Ns36rVQD0CkZs8asbRz7ACw5j+DRJtRmr4aCPxmR4VKybt+lP7yTx8GQIO
hh49DF5VKfwgM5ayktnX2QWdOxVc81ux86jXJu3XUXXbetpryjJHhdbj2fcbmvEiJzMD2k8u
iDDsm9jsjaCEgnfXfknHvdDfl3UtQbO318mDdqgt4c8WTDUecT2GjddGLxyiBq/aJ9Cdaz5q
0tA4l94vBaLC7CdPuvH/OXuyHblxJN/3K/JpMAOM0SnlvYAfqCslly6LykylX4Rqu2a70NVl
w1U9O/33yyApiUEFM4E1YDsVESIpnsE4Cwg3RiF41iQ05hR0M0TRomNRPMqpQpx+o5npj8ef
b2g7h5dYs5PmqRwVjSxXuV2RGBkZaUkiaZZhVqlsy0n8FJwRGIiq8C3tz8fXtxfpB7rIH/+a
tS7IH8TqtNpmmQ0kZhSmcvbUNwa3mGF8k0T4dc6TyJjuvMBoqL2qaqs92CkTIKO9r5jCSvg1
nrCs+KWpil+Sl8c3wfn89vxjfsrK/k8yXOSnOIpDa1kDXCztngCL90GEKXU4VTkbQUCXlUOJ
PxAE4kC6ghLaCrM64HMDf6OYY1wVcWt6bwIGln3Ayof+kkVt2ns3sb5dvYVfO6q3yPZ3ivEc
8UDmlCvfSQmfnHk3+iPz50OVrQnY3pp4bU0QlW2ci3OdGP0i4vM9AjCCGaF43gF9ajNryotJ
O9sCyCgTckMJtIHSxKG557y6UD3++AGCSQ0EkylF9fgVAkJYC6MCEVAHAwIqpdnMluETnPMR
3WUBIPuvP4O7ZjMrSlwdRdvJDe5em0en9g9wu3l8fn36thBl6tOFXvN1EW423qwVEgpRjZKs
c846TeWSywEJWOEnOeMp7oERrK0MBd+BlHmYZjYJizCt/dWDv9naDee89TcOtSOg81nfomG0
sGaVbaRm5AQTz31btSxXQfpMwymNFSwPeOsB1ohMMR4nvjpPlSDi+e33D9XrhxDG0yWHk91S
hUfDxzQIUxVFvS8+eus5tP24/i8UveD23DBrKsFBHZs2yi2hjAFj97wG66FU4+rs6YFY84h3
6VzWLSaN38GZdHQPoaSKwxDEAykTfKJpYuUgEKdxONuG2EWSOqoRfGqvO0iObF5HUbP4m/rf
X9RhsfhDmVORC1KS4XZ9lpHthwN3HM37BVuTHxpGxmsD7CmwdikB6C+59JbmaZVH9gSXBEEc
aF3TFP52wIEhZjE/xQF1zE9xQAkLx3ItK00BllcQS5pc0ZYkghUCMQNRvvaINMsYnCTLU57D
A20boIlAwsc5bAdZvfI7em8ciE9FTG82AwFoYW8SRE1A28CMjb6D5w938B0tHxnwru0yjMTh
CprDMDrTNcg4MHCfjFuk1lWH1C8gqv315fvX352n09CEroaN94/xNhZyLlAGgHFDtAxP/RQ4
xYTG4YNNmATMgmArLvUeFktoNfi9mXJv5BqOZ4/S1J6LeC5/Bqgd+XQY/3OBpDuSVBkFsZZS
p0uC9IJCc0tYwgKxE/NZYQ61mMRZdjwIxZpj3Fp1KKCc9jQmCWf1a8zMZGjQMZs9pji757ev
84u34A951XCxWfFVfl766Pxi0cbfdH1UV7TyKDoVxRWECJQIJmVlWxmcQZslxTBahrmPAO66
juLRRa8fVj5fL437SFyGeQXx7OEOLlXGSOlR91lOWxqwOuKH/dJnOSXrzXjuH5ZLFEZQwXw6
MtzQba0g2myoCHEDRZB6ux3yPh8wskmHJWU+mhbhdrVBN62Ie9s9JY8VjHErOkIs43ql4y0b
l2brumDqF2ZpXCZDIQhE2vU8SkiXbPDA6JuWG0Ln0NfRQpWnSVzDnWQWD0zBxRboG1esCbiZ
AfP4yMKr+QEaUbBuu99R5kya4LAKuy3x4mHVdWsqUqLGixtlvz+kdcw74u049pbLNbngrG8e
OybYecvZtFdQp+J+wvaM81Mxyg1U3o2n/zy+LbLXt/eff/4hg+++/fb4U/Ct7yDAgdoXL4KP
XXwTC/75B/w00h7AjdNklv4fhVFbh5ZCzua4xGU+6dgPNoUMLsD1lHPl9f3pZVEIzvdvi59P
LzIJlamDG46aqnYHp7tRxFSCYLAvnymRbxymyCBDznWWhxCgPCQ5s2Ex6PvstBmxgJWsZ9RL
EBcf8axoc1asABhhaR5gtpBk/IyiMo7thmURZMpBMZZDU3Uu30HxgSVEm0KgwQO4lKsmcxGm
bJdukAoO+XcxN37/5+L98cfTPxdh9EEsg3/M2RWTGQnTRsFmYTQklGLFx1dwvOgBShoAyu8Y
Twzru+U1kCGpsYTn1fGIbkASysFUSeoMhqkq+6EdFsmbNTZwpyBGQxzkJDiT/1IYDpnFHPA8
C8R/5Av2KAMUFO84DKtCNfVYw3Qjtr7O6qKLspJCpyVgaMZH4aSUWobGn821sDsGK0VGn7YD
0foeUVB2/pzGpujEOFQm1xj7GV4sw1xcXfpO/JHLy+q3tOZ2LwvqQ9d1c+h8mJitS1dQFkJN
7u9jWSi4JYplGNEHswEaACoEDgY52tAOsrpZFODL2Oq0PgX/uIF0eBP3pIlUvrZBaUlt6ppQ
HV6z+K8IW0A+OqKSJpba2La9qtwHNz72sO6sUDASdCuCidw5z2JAXMUW51Nhb5vSU0TMXRvc
hAU2w1Vbjijdp5WchWBo5FZdxheXcelIo7if2zS3PqRuV/OJJ6A+7AZg8ciPSABnvnUL76tS
8UefEp6GN2ZuCkwMaakvS702htJRbGxJaD2a61U/4Qp46RCY6YOvW3kHjxJOqY15lmvNgGJR
tcQcoza1N/F6tq1DksdqDmRWdGrV/jamxSYKey02q3Av5jZ1B9D1z6eigCnt7I2XrJCYEvxZ
HINZ2IvBnzf0c86s26+NHTbT8b3PcURv2gJBi6rUQVO764nC1WHzn/kOCt102FFKKIm/RDvv
YO/QszwUigMqZpsxRu+XS2/2VpDc6p3R4hedbGmc86yyDiXVMnuSRWnfRCycVSvg4vbLLzdW
QNrHhbs7U8HlntiMB7A40HEnRxwGyLS0zd9wzwQQeKyVZkBWAJ7jJqggUmXTmGp8QMmofOjL
AFpjlzSdVnayu/vf5/ffBPb1A0+Sxevj+/O/nxbPkIfkX49fjZuPLIulaCHLSM1VAKENc2nb
mmfitrmcvSK1T2DLar0rlnLobf3OAsuznaqLZ7l585WgJBk5StH+r/aHff3z7f37HwuZ7Wv+
UXUk+EnM00Ohn3mLNWiq9o720pFhrAsrn5gyV8iqD99fX/6ym2b6LYuXBXOxXS8t22fZt3Vm
uilLWMn3uzUOxyfhoBx3CK0FtvliB+JHNmX/enx5+fXx6++LXxYvT//z+JXQIchi5vKEgvT+
VLI1LFpsw6LPLPk7wECiio34AVo7+VTAguEWKcvR7kczMaGsCK16zXBLOmpRB/WskOSE4/Cq
Z/vqrqEO+ebwDsl2aCTBOmgMStKlYdOFS4kA4jheeKvDevH35Pnn00X8/cf8AixY0PiSYaHK
AOurlLypj3jRNz75Iu2oN6ErfjU3yJtNHcW40gEjQ5nqisxYKeU006arcFVGdCAMKXI1SaFl
MsEAJcz4LIPDm0Zb5SBNNp7b2NTgDhCQL8R90FQsApd9F0FTncqoEZuo7fFm0rjTLGFCiAxy
jmEFnEgJOiIGm0aVxNHUxLIQvDLREhegljn9mnOHp9O5c2FAO+vwkwjEtegU0XUdSUdV0Toe
4wERv3hl3psm2BBhHeGwU5x0XatkptGybcQPrKYp20DPScq2N9Pen+gZrKRtZb3GNAZm2uFO
dL8JeH+W012mdyadh85xi/JQaK0SvTLL3HK0FBcyi3ISFUlXKWnKSW1dMYRcR99eIJtzaPY5
FtO46VdhhWTq7bVOKzIYpfESi1jdmuOsASD/bJKsicmq2DE2MXHrrbyOpsxZCKYFZoosLtiZ
yjSERPRtjGPExqU5rdSzyo3VZkcI+moglei25bG95ofSC/blbo8UZuzaItp7ntfH5q2qhsFc
+a46xOZWtg73A5OucWjqDBIY/MqVDHQgOgmG1QydKZ/7Mtjvl0uyj9XeaerAgvUaPSgXolMr
GOI8NnMlaJwMmXUDj86MsICNidTul51h5xaWOC23HN6V4zVjtinJGW+Uh9Mwx67i3lpo5c/U
lrJzueFOfROyyJTBlcwx0EBXOjLNIrJzdnIfMgOVumvdJRPs1X0iGa6KMt+L0E5ivBLhPFEq
aEqeuQ674S3s7BjlvpljSJy/to/dAJNW37fLjotTbmYGDWLfCgCgIEo5Th96ikD8dxtN5xvT
aHmOOwJQKAr+cE3ZBVkXSI4RsikJZum/F78++a9P74D/8+3p5elNXaG+//m+eHz9SzBtEAju
m7QMtF29h774EqY3Qv5oqmNVHZ2Or5omPbFLnJFTINv7m47exKUBpLHde+bGAk/2Iw6McqSS
Ywro2XA7yboj8v2FZ0f4E8CcHSFp1kuqAzKGqhJE6Nnk05LCW5oBLI7G2fOpcJ0rBWvOMZmR
1SQSFKzEEcyLvFv3Lnlr3m0kB+7C8stNdEILXcwWZWHjCPpiUVX2BHSQ8bigZ1dxbdCpAM/e
8kg3PolZXrrCV+kCS9Zalc0AfL/a+/QRKH7GDY5f7uPL8rkjI7HgMpqqrMxoimVSowfbEc98
22xp1ncytl4pGKsCvL1ia68zXtyvHMkazcLPWZRRB4BBUz0YLRD8TTU7ATShjvimfA3d4UAG
6rjkcK26XbmS4yJRbM5WtAbpcx4iFlA92we+hqrwLUapEjo7I6YWdXHZ4+LN3AWfIRigVVEc
0UwxXGohxopBGoJtRsFM56jCdQQ3EeqPZrtcU/Y75hsxMLxIRb4X135S1wmItqpsWgHqawfb
MeBlbs32knFXrKWBcO/5dJpQIJD5cxqtz6OueHtve3DMwEYsB0uyQ5JBoBtKSW/QcFYIJsRU
o8Nx0lu3O/OFOKbTZ5g0kPsgyWnVo0mX5Qypcg7+cuW5Ks7uMP684MbEiussROcyoA+eeS2T
kLVjR+RVCFfnjp6cvJXbu1FWW0B+CavfNHTIxEeqABXJXHIdXQCuLcxdfXK6c3nj17KqkUI0
uoR9lx/RIpxgWDhsFNTG6ak1UPazSWqSQSwEcS5DVDOOLRHanAxOYxR0ztBVQzz2TerKwADY
M2RLzVoqBqZR7CX7Yp0mCtJfNp4jwexI4MpAaxSvjPIo+WQUoSM/ihPaQuAhQUbngtOoSYsm
5dl+RvyaBAZmVkEFAWF2maFRV4isDRhyJJBu5fKOhvgTANtRczBWrKYQRKak/4L0Z0/FdccU
ckpoV4dmaI70akWMAYCZNv4iIB+1EFrUthCPcxvsaQUm9D2BRaAuTqmpwgrpEWVIELQEw4J2
+/3usA0wVHQ0GH5ooHnp3+8UmLrAi9GR4sDhW6f3tGjC/eJ+vd97uA1hJq7iVmv1HdhuVyQG
2l18VAPH6OOSANiGe8+blQXU671dFsZvd7fq2h5wXUnWxdZgZGGdn7hdt3JJ6y7s6qw+B4uP
1lt6XuhoQt61drn6IuMsdMAL1t1NI28VjjrHywT+ygncegQGGHu7qaWMu81cFZWdKOsTEwfg
bHKydr9czebmxDMOtVFcimK5cBM1e2IBBTMy/044gi1IK27MnXFtABGmWBxZaBV4zsSRymP7
Y7RN9FFsDX4D/94akwe+Pxw2BXUzqGu0CYtHSAfliKoLWLGd5yqwPnrpRkxOQBd1TQZGqHUU
ZmszrGvT9ACoBmNHAyRDJrRmpjWeZ6blSJ5iwwSBHUNOxA7bIKDhYrrTUnuJltoe+IXstg2H
mVcdac/lMpObJ0HYhljbhcNWi5lzpCEqyoBRUHiR4Qs/mjYTt9ojW5x+f3v/8Pb87Wlx4sFo
SAvf9fT07embdF4FzBA9kH17/PH+9NNQgSqh13PBugWoHKWgK/j5/fHbr5CmffLwUKb4UuqF
6nr/LvrvSZcACPN4099xt/ihEy4mo51GeYifdPxCC4LF/BIqBa4WLEGKKwkS05CY1RLVmf4D
gt30l0sxYRE7xsqOkh3VoWC/1KVtOB9Yg6e/qCDDT6Dl/mgovc5FB9oKFxcHkRNIDkYqZKdQ
dQMU5/kWj31teVZpg/kff747zcSHKIXmY5/HEbdhSQJJHXKU8FphQJOIAggqsEpW8YBilChM
wSAFnMaMgSZeYO6MBixvVhMhVI/YIObVDHCINnjqnFguNt247LuP3tJf36a5ftxt95jkU3Ul
qo7PJFCJmYy+d/kkqxce4mtQWZa+A0zwivVms98Tk8IiOUztmDDtQxAR8M+CFdksyfoAtaPv
GQaN723v0EQ6mG2z3VMeOCNd/kA3Edh9B1jOt5jurjZk27VH+e6YJPu1tycKV9OSLDcv9iuf
0n8hitWKLLXbrTbU8BTYZXCC143nU95uI0UZX1qs1R5REO8YJNHUfX/qxiqPkoynU1CceUG8
rS5MMLW3x5mfygeHt+ZIk33mW5+6bU5jUvh9W53CVECIjmov+Xq5WhKYTs9wgxkfVzSlfBgW
MwTJR8K6AdYzwcZWtF34RLOiv3giiKhL84gOq8DUEo/wY+LTjTo2pMQf4XscS2vCnTKxXIqK
EvSNRHCHaZipPR5RPIviS4YvzyOyLbCkdCpQGmreqvLCmibDJogjrmBHqaC53csydXHV0DFp
MVXgSq08kUFWIQezPH3uJYs+OVJGjERf0rhMTxRfP80PvhF3QaI/4Zw5OQayqxllwDXiaw4U
tqkegRZH+e0vqDuHPcRIkfCMbUlVolxhMqMCDqgmIRBVGMxGQkd6CpMqq8Xl7h5VykrBsdHL
1SB7CMTDPaI6PjJ+IrMvKSIV0ktMXHFfWdvHvty+FANh3B8nIDjL1XGDQ7iZeBbx3X69dSF3
+90OdaiNPVANN4naQtw6C1OoTKL7drVzkJxAQdGFWeNqSHDyvaVHnZMzKv9AVxJe92FbHD1v
6cK3La9tu9s5gQqDR7ZSU/DaYXw7I127dbsmccQOyw1t34DIriUTk+FOJ6WsqHlqma+aBHFM
JlNBJEeWs3koOkTSwcXG0dfJ6VPW8pOrBceqihwhjtCXiAMkpo4vkyjLMzEpOrodfMuvu63n
bMep/HJ/dOKHNvE9f3evz5BaCGMqGiE3hP6iXT2cBCgwo4kWHKLn7V0vCy5x4xyhouCet3bg
4jwBJ62sXrt6rpAP94amjLvM8enFw87zXaULTtQVXxX1ayQul+2mWzr2Pvm7yY6pY+eSvy+Z
Y9Ra8PdZrTZd33JH/497GjV0USuF587Buwi+3+tcXQDnCki3Km6FdHJ9RybuVivHl/BQLmXH
UAi0v1x2N3ZGReGcDAq9ubuQFN3uLl1T9KTWEa3sLI9Z5Fj1GXd3O289f+W7cEXSOk5ZfmoS
wYCscEhURNHttxvHkmprvt0sd45t6kvcbn3fMXpfZp5LqK+qtNDn4r3TU9ymNtijVd956Jyn
TZGtrTkhQThMLEBwkFgJKQILkixXc4g9KyXcj3SAB5ve5Hs1xLchKySc0DDKX0+hzOHSkM0g
gUkff36ToYuzX6qF7YaP2y0f4V/bVFUh6jCrOelZKdF5Fgi0XZqVm0UBtW20VZpdHfcLV0YG
XUwT2mUgvBKWmG06WV98ZEWsP9aC9CXfbFD8zRGTUwMxYuPi5C0fPPLNpBCnHP4gLUumRmmK
1kHIL5We9bfHn49fQfI9i1mEVBBnUyKvnSRkRlWVt9bM09QOBIac+TKHnVsDDFmHIxQPAlJr
HvZ93V6RbEW5lkkwrSaUUenBlhv8VuaKjKefz48vc9WFvpfErMmvoRQLqYBY318/7P3NUhQg
35OCfSJSin5dcCErlw0CIiHtBhTBiTVtnmFFlIUaOu1+IX3ZyN/8o2dR4O3MABoDZdf/iczj
q5E8DMuuJt5SiPtt5qG3zTgwCmTbRjRZxfAqHQNnRob2aY3VO8qnloGfV3sPP5/Qt+n64Foz
U/CPyW9VKYsRE0emUJhyPBNEATtFDWgxPW8jGIwblK7WZ0m37bbLeVOakOh42D7vDiwQiXmo
Wm/Pw6b2Z3UJ2DRxpxAaGpvwvM9rsr8mlPP7JElWJnnc6SLsb7IoqO+bLWpgTrzVhtyXrS1n
9nKpIuREtG/hKGZGu7EJVZvW/IPFpY5j7Vb1pSocCW8h+GRLWl7JsAY6earBlkkoR9rt9DxE
+scwS82rvhp0RVY0TQMTto1sjyOMpvZWm31yVhcZyLOi3GyDhMqcOJHyp5+4PolhYFIrpfhk
30giZaelZLwJHedB0pnBbRSA41RiEnhhkECwolPXQpMg+1OVJKisYNYIdL4q50+zqhEok7QI
psUVD3QiVB1LqX5HEshyZNYCaTLBBom2GYrPVqUT4kFgDJ4TEg5bkwccnCUcwuH7my0q154a
09ew8himMYia4bOpKR2Kv7Wrr2qqvfKVjM981RUUX4QmYB82m+UcIw4pJSukUWLvyUrkNWhi
y9O5am3kuYW4Ck31f5xdSXPjOLL+Kz52x0xHEeAGHimSktkmRZZIyaq6KNS2pssRXipsV0/1
+/UPCXDBkqA75lCL8kssxJJIAInMo2ZLM9Wk9/2vLQ3M1dHNaJzrKTYgd4a+aKtS/danuidG
SXHJFwnq7qqASPBtdJdVrZmVDh56Sq3S5p6uQUrhgRJF8maNHcrDsD/1qYiRrDQHeGO7+jZq
3rYDuTHVyTdcKClImGCG8Ye6aja7XPf9WqPG8HWz3RV6TBxOEi6wd1aZh3qP39Acy6r64nL3
Z28T5okrp81u3/XC+dgUnkfe3vMhZxtMqBtnGNTiJhLcTGuikmbi4CfFlgABXvNUmvUAJ9bC
gEGal/54fH/4/nj5yasN9RDOzbHKQCLjunykVn0W+F5k1gugNkuTMEBdqmocP7HEu8IRW33A
6+qYtVWOdsbid6l1GGIWwW5I/7Ku1myMhUCqNs1qjsUI+U47SogRYxhGtdkVz4TTv728vS9G
RJOZlyT0Q7NETox8hHg0iXUeh5FFg6fMOrFkuqsgQTO8FmogeE7B3bUIWSsOnLDTAYGKV0l8
3OyNxi35vj8JLWKkH8kM1CTCNoMASvt5ndCKRwvzzPr77f3ydPUHxPAZojL88sQ75PHvq8vT
H5d7sHT7NHD9xvey8CjzV3XjKqYRHwuuiKqA50VXbrYiWJe+/Bmg/QbCYOiq9LCQXH9nDajT
YB3Am6K2JogCN5YFh97xWTpV2PHdXVlrrgSAJs1Txy4ofnKJ+MyVew59ktPhPNgRotOgT5uO
a5r1mL55/yan8JBY6UfVStA5F43B1O/R62SAhpbX+SsRhFU61HW1k/Qh6Ly7m1lAfnzA4vQl
q6wRU619peUzCFzOKXNgoVEPvEXJppfcFolXqmBI8pNUTuVKz5Wh+vwGvTo7xLIt0YQvUrHD
1nNKj9JPqRncEGjz8w2tsktP8eXHjLPG8UVw4AIbWP2cgwP6IgeUBmI4br/oxPaYUkNf4dTR
BtxRaJcRxqWcR/W8+AaoPBjfXR/1N1FAO8JjQ0fW07RTaF+/bD/X7WnzWX7k3FXK6ogd1UHx
e9v3PSRtX1/eX+5eHofuNjqX/zFiNwB19iVVoAFXgaeviogePTOpmIBoEvXd73Wn/9CUJXk+
35WG27CZ/PgA3qaVWMrCEV6qRnbT48nznwt+Pbd9CxxW6wFtKMvWsCDLrCrhIfCN2JNphY+Q
OLk1azJg5kIwlfkneCY7v7+82gpK3/IaQYQHZBBw8ERCxnj+TXaDCiU7/VTncgvnE8pHlNta
NZsFBv4/5bhmiEU4A8pOFiTjkCXa5AMGCg8yVkaU7wyo33lMrwUg3ZGE3tGm16CmpzY964K4
IqED8F0AcwGJ5wIUQQEdrL0TGwgiigvEkhjCvISEmhzl7jMIJbtRHSqNuNIZHSSrtPmtpkoV
tqfevKeQIW6ezt+/c91KFIE8WxMp89u0xRZktTBEaZKlrljUqZekklpsvxIaG9SubExGU14K
IjyMW2fygeu4k3B/zaRjCurl5/fz8z32lYh1tc4gGxC/FJkZUONWefsGmyhfW4xUuiMuxsCy
ZqHVin1bZpQNvhEVFcT4UNnd69xuAO3zd+XXZpsaRUgzJoMoFVbrO+Q8dH5CWtW6G2BB3mVh
HzL8GcTwkXDNzvDofjMHQ3cfM56oNmQq2fy4/nN9ZJFJnIyOjaJvK4c7AAFP9iAmMTQrw4lJ
Emgj2u6wKXz3ByN51TNHRKVhMJUnEZEZtY0fWQrJo/oflR2WZz4djFyUcOBYVUETWRxz4g4x
sVpITjRiUjPfZ8zug7bsGjQEgBQgu5QEnhZ0GqmWXlAD7gTn0m+1nfgtgeN6aw0nv/33YdjU
zDqXmkjq5uJdQYMN1Zkl72jAqFr+jJDb2qjMADl3mDNLtylRBQGpuvpJ3eP5L/U2nWcoN1zg
BK3WqinpnXYePpHhs7zQBTAnAG87c1BMHRyqiZSeNHIA1JGCOaunvjfQAeICXLXy/VO2y1yg
oxk0vUcFYuaoWcwcNWOFbvWlYyReGiLDUFBUOrjfOaUHzLRLYsKtiKYMz2T4u0/RizHJ1e3b
tvpip5b0Be1eY3M5meFihiU0lMxKYwmhfZJORS0ywhx6E3U+94eY4YKKFAzblg20G9c4vEjp
p1Xa84n6RfSfenWt0pmL7siHaSaZI9KtsC4bK8bROTPp/cggjvmsPtP4qG+wDchhyWByXeef
sUwWzKhHFrCYjY1F2MWEnYBqLFRdjMbm4NoX7yd1Ro+IGEIeAlQti1X9dqTrxxZzNqKJkWx6
PwoJWi4JwhgpANbOOEqQKvGWDkiodZUGoZc3KgcNkfIAiNW9lAKETL9hnYZXvfIDzPZ67IpN
ut8UcGNBkwAZ1qPRgI3s+tDD+mnXJ0GoVNII3Cd+ng6lptNK4nBsaBwWSZsq6TseMcEa4rXl
sa/aYyv0gGgyWEOw950zQ008SvC0ADmuGjUeTOvTORKs0hzwnSWTGLcBVngSiirKM0cfH3U/
7yrkk48SB8TDqg0AcQARdQCxK6s4RIDOR/m7LI4oVvQRYrpuR3/LWMq2UJ2dTfT+2CL5CWsD
cKqKQF1EkapBbECsZlLa8i/NbKwMb/jGe4X1zzomXHVaL/QPcDC63tjZruPQj8MOzbbnauu+
T3v0/erItalCwrrazpkD1EMBvramKJli1bguryPiL42+clWnBVIQp7fFEcuz7Bkm/0b49yxA
RiZXJ3aEYv1ZlduCLyBYSVKIYs+udY7YnTh2GiPqXIYtogIm6LSGG2kSYtfOKgclyJQTAEW7
S0AffXBAI2eVaEQWRZl4oUOWqg0ckRch9RYIQcSrACKGAwnaOWLzHFOX2bjKtDh6ITQmKg0E
4OOVjSJshAogRAaoAJIYBXj98PFRZ63voW/fp2iqmfY6Y0pYbNeUrOrMXOdnUZ5pUdfG3q/V
S/yZikl3TsV5sdFax8incypDx2DNlmPIgneBpeFdM7QODK1Dgn5bgk+tOlkuOAmpj/SHAAJk
hEkAqW2bsdjHpyhAAfpyb+TY9pk8myitsDYjR9bzybb0LcARY33JAb4FQ8Y+AImHfP22Fa7Y
8G9ZszDBxU1bW7fMRuruuidLco7juKrIAf/ncsIMTygNQhaS5nXBxQ0y0oo6G87hbIASBxDd
Ug8ZNuCsK4jrBSRBOkhiKx8TQ112HUbCYL9GBYbAqSuhHyFA33dxiFaxjrClgcskQlnOCLII
iOfg1AXEuFbOm4/R5aWs3KbUw96KqwyYpOR0n2JrRp/FyBTor+sMWxb6uiXYXBJ0ZEgIOtIM
nB5gAwXoaC3rNiQ+1mqHMo1YhF1iTBw9odiG4tAziu+Pbpkfx74jvKTCw/BogwpHQnJXAQn9
MDH6wQJZmtGcoYpZqMW91aDIMPuYQT5jrpd2BZKluF4jWRs3Jypd91YkJH2KuekajdPnXEaK
FT9pArbNbfql2eMG2ROXtMyXEWplzFKs8Sd2cMMjbLh5xnO0uAker3Cln7bz+923+5c/r9rX
y/vD0wWiEWxe/rq8Pr+oZwxTYgh8KnM+bVRv2A6GEzi/ffqIads07cdZifcGy2x5sU73lZap
3ZoOfpG9degytY/Lj1bXrHuk6zWyUqRao2H7u/CoATgiH8l+VjlR7KsXJSoyN4I8VcaK1HhC
b6lag69Ju+ivZbmDs32saAF07VK+g/kWknF+i+Y53JMufw9sBvzjBx+dVmUdE4/Ao3vcGi/y
Pa/oVibDAMs7agC1jjillAzEudvLdEMZQ+szXrn+9sf57XI/j77s/Hqv3fDBg+BsuRvzHo8I
34G/mabrSi32MadqP3hX7dTQQCJVVoog3WjqETVyyctmIc0I61T5nmUKMIQn1ZlQTD/9XmV1
iuQFZINJVhjiaqLcE6726gx0DXoBAfhcZyvpWGVwRp7VjkA2KqPrAlYymVdVs13/f348370/
vDw736HU69ywVwYKnDoSTd9o6zKTViwU30CKZGlPWewtBCjhTLzKYeI5bAgEQ56EMalv8dcn
opxjSz3X5Q8wmFZbM01/VaHQtQMm0SqmhddE9DEiw4jqBngmUqthQfT72MX9hIZaIshrWFA6
3G36zGD4J5oQ/DR/hCPsNmsCfSRHEroHBt+fQZwPpycklQfvVb5r5It2V2Za0UDl/IaF+wBW
LQczLVQBkDrUDw3UQLoPND/t93T7lU/SJkft5IDDNlkCKmMiKLMjjURDNFGEvnyXY9W8mhuo
47Wc3qJAZwFu/zQwsMTDjjsmlFpVFOQEv5GZcdzUTeB95CfOMkdVRy21+CoeCeE+7iEVV7j2
jgzt69WRot9ETFR9GRG5T0ZJKtG4DBQ0aW6mE7sis3YEgl4GcXS0RKXKUYfqvnMiIVXsbr4w
PjAsGQHHEkju6eoYep5VrXQFfhkWq/Sly9QjDKBpfo/S3BI2VesnC2MQLrNRt7ND3lW918ub
bP1GtbDtIuLpd8/Sro/gAmn0reMqc7AJNL9D0h1hmMbK8o9B5fiUAYuMgWQbECpUq0NH+sLa
N7FYKxpHuEBSrYpGldrWAEYk3WuRRwebRCTBbUVo7CNAVfuhOVNMO0igHY4sNNZQy2xUIWLr
2ggtLTNiCab4azbxHXVIPNfiB6DZVcK6MjarIqiuYc3BwLOzMdx7zdSF3h4YrL42DUFnmq0B
TfahA23cvE3yQX1R6dIop8TFZl+lxtn4RHS+MJo5ZDiMQ1P18tbRYoDn93vhh2Xb7bV3EjMP
+B8S/lgXufhqu9Em5AylWc9YFOIfkeah71jhFCahQ3/AZJsgYSxUHXMGQjBknW5DPwwd1Xfu
JmaWsqsS38OO7jSeiMYkxSrAJ33kow0Ly0GMVlogFEdYrCtmOubQZRWmPvNDhscp07miGDcG
n7lGHWyxbYApVCWcBrEoSJxQhPY1oowZ4AfDyLbdUrCWsRCvEVfW9I3gjMmFeLFQW/tSsPX+
qx5UVMEOjHn6FZ0BMkyxNngSNG8Rn09/PDaDswqHFCx1vsVyO1q3qedoMAA79HJf4QlrFkex
I4NBzVvOodqEenTWGeMaQEgiPYq1hgpN6oMJAGzUd/jl19lC3MugyRSjkgJTxAyU+MttIZho
4M7eIf1tpczCUEFla1gKZvqWnyF77dcxx85aYwocj4c0Jr7MYyex8xZFoWybvlyX2sJpsu3g
UbF27l6VO9Q3JDxuzpqcL8pz6hKiqU6ARufTUKHPx7KARCOCn9zuTr8fso9Yumb7BeNRONLt
lwatW3ed7lpH7WqucNys8uWsj3WLZlxKk1CsNeraBkSbgqsjzb5tB05zSt7rddM7HqPLkpYw
8CfkwvknQpgeB7orwLMavtuDtut3RVp/dWzlofRNs2ur/WahiHKzT/U45yra9zxpibU8b5nx
FbLen6PTaq2i0suW8N1Yl33vHCa6i3JexnHVHE/5ATuQqgvwhAEPB6QnzPmY9uly/3C+unvB
vOPIVFlai1PKKfG8TRC4jCZx6g8ji7P8vNyUPXzbwZ3bLoXnWR/l1OU7JQu9unxiL0DqG5WB
2gh71UqfUibGGxYfFxbjrvi8h2cSKXo8eijzQoSVnKshSYeg4hvn/Qrcq6XqnmqG0STGZlQi
aX5w7nckh9zr1OUWtIt0u1Fd9ksOiMOrTHpR2LpKu2sInXTKKs1ZokRvt40arFjks9qv4TEt
Qs1r3pEbBDjUaVU1atipw8qQ/0CptbBLQNFiHfdwLzW4zzASpkfeQmnbw6JAIhUCx/Vw8C0a
RhNvAi3A9U9XZOBSlc/prju5AqkA+74qXDckYtbZVyJiLEG1zakqZ+n5+/sPbKIOHXbLlYrA
6sZbYX9pZ/Pp/Hx+fPnz07e//3h9uL/qD658s6NqvDPSaMhUG5SRzBBWxk6rigs/Lh1ze6wK
3JhdNkPdFuZQ4StlGhPf+uKBfNohE2PElsoTPKIh1b56+PPh/fwIzQTXnUM4OqXvoMPTA993
eyfV0fpMNgfTwNx0mMAGhtU+3xS9dVY6Q86BN6bEz6IUjhS/6VI4Wrj7dVWQZlS4McmaVo9s
jKFmcHrg4Qtu31CdBs8u1BeLgq8nZhO0Pabf1xBJ1nQDKOc8ADrtumlbXeoLIQJP/53Nkuer
XclbxsnAF214ZuxoMi6h9i34TuY/tNEZVJOrgeHqFbeSBMa6qCn/8yGfeK23xCS74B+UCivn
P2KEhXmJUT6glnLmcn9V19knuJsf3TLpsYXrTlzcm+4AjTzWD68XiNB49UtZFMUV8ZPgV8f8
XJdcS+wP+igYiGaUwEnO+YF6AzMI1YO5royLFzXG3kxHVnBB5z3ZtObqKxBYIEGxKJFFktqr
pJ4QW1npSQ47xyxdmL/G3FUEpRrORyOfDgddhJ6f7x4eH8+vf8++0N5/PPN//8279fntBf7z
QO/4r+8P/776z+vL8/vl+f5N84c2KrIrPiaE37yuqPhy7FQU075P9YtYWUfQ5qlthgW04vnu
5V7U6v4y/m+o3xWEb3wRTsG+XR6/83/AYdvk0Cf9cf/woqT6/vpyd3mbEj49/DRG+DiYxFWH
cz3q8zQOfEv74+SE773tb+sLCBAYYrthhUF9cCPJddf62uXAMAU63/fsVb0LfdXEfaZWPk2R
SlUHn3ppmVHfvfLu85QvztaX3tZMGq0beQLdx49WBwW5pXFXt9i12DBUYTe+6tdcvZg8yOzy
bupDUxXiQzsK2aRPHR7uLy9OZq6Ewwsy82sk2bc/B4DIw45JZpzZrTOQQUbbea56RjBL6AkN
renLiZFFvOk86djGyL+uWMRrHWFn0oo0IMgwlYC7b8TBOR/41rgf6PgH94c2JMFCroCH2Kw5
tLGHXr+NejRlHqJdJ9pDaYUaIWVwOvrgcxyuR18+hFNGF0iOsyZYkEEZk9hao4SKHhi5XZ4X
8lBfAihkZk1zMYRjfGRjExUAP8D0NQVPHFMiRM+tRzzxWbJCEt4wtjS2rjtGvaltsvPT5fU8
SHk70MaQZduXW3BKWZnffV2G9jQq6yMl1ngR1ARZj2roLWd9AY7RzBJkKHO6vzDrAQ6tPm0O
NAqsLgWqej8zU23BJqhI7zeHMApwq52RAZ7XOesL6e3BJqjIV4RRglBjGlqbVU6Vd3smNcJW
VaDHS5WMYzwZ4zJ2IVniKC1ZbhLiMz12zSBCuiii7iWk7pNaC+GmkPW7mRnAH4VOeGs8n5+A
3jMD4VgchODPPCeOg7dc+MGz9SIgE4LUqdt5vgdBzp05bptm6xHBY+Ua1k1lnZHtfg+DLVZU
eBOl2HMbBUbEHacHRbbBr8EmlnCV4sFNJUfRs+IGNxEYs8hiv9aksZCCFRd/mLO8UdSGjLqb
Lr2JfXs65rdJbAtBTmVefDpkkwvX9eP57ZtT8OYtiUKkucC+x3EZODFEQWR9qFwKH564fv7X
5eny/D6p8bo22uZ8bvqqmYEKCBVu1vs/yVzvXni2XOkHOxU0V1Ah45BeT09j+Jb5SuyDTH7Y
S9cpXy/iKdJX/fB2d+F7qOfLC7j21vcgprJx3cW+515065DGiTXONROdocYQeK0tc08KCMUj
3/+wVZo8qC1XftORKDKEg+LnzM5SbjEBS5GjhOyYU8Y86ZzXDC4w+Vq0ctD3kuOBuMz4x9v7
y9PD/13gRFBuY81zXMEPXqpb1bJfxfgWjkD4KnVoGzijLrs/ky922LVb5cWYSDXYEqa+q9bA
Ig1j1buTDTpS1l2prT0a1lNPfZFpYqppioX5ToyqOxkDI76jLp974hFHeceMepS5+uuYQRjT
D1r3mAWajYRWrWPFc9D9hth47D7vGNiyIOiY52oXkCm6gZk9SFB/PSrbOvM8fZW1UNSW0WRy
VHKoBcXRYmhCR9lclf6oF2rGdl3Ec7FuCYfy92niec7v60pKQtSUXGEq+4T4jkG944upo2je
yb5HdmtX2Z9rkhPedKjbL4tx5Y3xUMdQIYjkUkXa2+UKbkfW4/nbeLolrovf3rlcP7/eX/3y
dn7nK9HD++XX+ahOP23t+pXHEmXzMBAjzfRKEg9e4v1EiMTmjAjxtJAdMx0TbOLwn08bVboI
GmN558v32Nj33Z3/eLxc/euKLwR8PX+HGGHOL813xxs991HSZjTPjS8ozcknarNlLIhxbXjG
bZ2NY791/6QzsiMNiNmagqi6jRRF9T4xrmS+VrzLVHcAM9Hs3vCaaEeLY09S9WJwHAgeNhCo
PWREn2NDxrpUg5XQQ11gjL3iGXZdYyrDP46CHoqOHBOjlcYZnhPrIyT0/5RdSXMbuZL+K4x3
eNF96DFZXEQdfABrI8zaVEBx6UuFWqZthSXRIckzz/9+kEAtWBL0zKFb5peJPQtIAIlM1eFz
vCjsZEIlJe7XoXJaYeANNp5Op4DIeV69yUKZWNOw+VKKNptP3W4G99dkhturjh1tKhqDvPLJ
H96Pyqx3JbQQX8Uk8ei0P7hxa6tgbLYcRNbc/HbftO9iNlstDL+UY4sXVoWKI19h3cfnHu+P
/Yc1X/pkOKIbGBHTZZlOwEOIdRw3wOHPGcjWNZBAb10RV61d23Ugya1Y0T35x+HM7Qr4jucr
/HRIjZ3Q3IMpbk83MCxmHos74Kh5FqzRXf9IdYZfTtP4LlqOUTQTazQYhJQ+Ken2HP3yApIf
dsuKd5aGqWZtT5+qswNU4AJnglFT6I3z5RHORPHF5fX924Q8n18fH+5fPuwur+f7lwkfP8cP
oVz3Ir6/8mEKsYY47J6Gl/XS9CXSg7O5ta5sQrGDt2f2LI34fD49ougSRVfEhsXg2QsGfOZT
a2khzXoZBBjWOvfEHb5fZEjGsrnqCpFF16c4PemtParia1s7X5ucbYMpM4owV/1//7/K5SG8
/bDaLVWMxXy4B4s6ixctw8nl5elXpzN+qLLMzNU4GR8XQtEksRSga6Qk3Q6fCIvDPk5KfxY0
+XJ5VUqOo3HNb4+nT9a4F5ttYIsIYLcOVtk9LzGrS+CdycKWOQnaqRXofIywffdNh1nK1mnm
aIISvrJaE74RquscPxToJobVaok5wpIVPQbL6XJvlyq3QwG+ee0n9rnTvG1ZN2yOW8TKVCws
eeCzhdnGWVwM8RrDy/Pz5WVChby+frl/OE/+iIvlNAhmf16NXtfPtNPbW7t2rAqcWZBfLk9v
k3e4TPvv89Plx+Tl/D9erb7J81ObGA/RfHskmXn6ev/j2+MDEmEn0j3Kix/yQK2NNtREo0rM
Mkc3bqKkSY+9ueEnf8RZnCWeAEfAtMtZF2zQTp5Ig9M4b1SceHwoBR9EjWzF3jICe5ncDm1l
1qiCq1lPTTi3ekIA0l6lIim44NAdxwJ5X5N8rLqVDsPTOG+ljwyEBt3go0E6tgWzKoy6t2rN
wq10ZTtYjXQXq5OLYxqipVJBMYWStTJzU9HsspluvdnjECoMDuRu18crxKUTLcVXIaUM1Ll2
2j6k02FzTGsSxVekg+RRWjVeclE2+5j46fvUE/lYEsWo+Qv2inyekjSw9E0Bh7QWc1Z7JyTe
m+ndEY/0BLRNGW6xl2eypirstRFwEvCKFDKWcLesvv14uv81qe5fzk9G71sUPQdlc4jkOlKM
zMdZdPP6+Pnr2ZJDZbJPj+Ifx5v10RKsgRpVulD589YTx7wge7q3u72DMbdmAx+EuQPe7XE9
X97gkSN7HprR2yDAXonqHHPdO6dOWOgPJHtCTqdiJ3DHXUodV8SYEnoC4zdL8zhBo9zMl9jb
DTmbxikJT9aEFiVHu9vqWYCdw3bybXPvKXblKGtD9gSXn7KGAG5y7m/vGlrvBi0zeb1/Pk/+
+fnlC0RTtK/mErHs5lFmREwUmHy6ddIhvZL90iEXEqSqCdjXhkaG0hmd2BYR91EHVCEB+80s
q+PQJYRldRKFEYdAc9EZm4yaSdiJ4XkBAc0LCHheSVnHNC3auIgoKYwugCbxbUfB+2Aj/qAp
RTE8i6+mla0w7EmhU+Mkrus4anWHCsC8T4kR1Q0KJ+Euo+nWbJDY5sbdwmhmzWkmmy/kPkUl
Zwi+7ahuMBpyNrZaWeX42QjwnzZx7VFTE9A3xcdNCrPqNGfcRBqQJwMBV4YyHq3ZPbNIOgay
6qfiCuM1qOnezBkA+41OD/sDvfQcw2DgpVHL5AQGyheICbKUi7hZPQlhFVSE31Sg47Ksg2Ek
+Gmme3YdIEO+9AIJGn0eRmFuDsrcmSPs2W2AzNvsESZhGGcmgdpSKJB27hM0SZwtbcGISzEb
UEz1FdTdqTa/vrma8E1gqJuesSTgnjgEdV+WUVnOrDR7vl6hT6DhoxVKQ2x9JqTeOd8h/poS
vkOhKVLPKwnoHnAW5BHZjVC1j3yx1A85BO4GP4E2KH8b5kwUCwEvyjy2BX8j2uvZN8sRg2t4
z2jmNzPDtgFd+uTUtrl/+P70+PXb++TfkyyMelckzoZP0NQTue6lrF5ZoGWLZDoNFgGf4n0s
eXIm9JE0QZ1hSAa+ny+nd9pGEVClGh1dcK4fLALIozJY5HbV9mkaLOYBwazIgO5GxASU5Gy+
uk1SfWvTNULIwi7RL6MBV0qeiZU8nwulTneT2E8Wdmc6dCc46Ega3AANzRxpXi8oI8vo/8Ih
SYcOhyyO8MzV4/qrmZOoWq/NmFgG6WaKZ927t7iauXSFcovlLXS/qKwJnjfm6wFhc73MuINi
OsYcK7ZfBtObrMJom2g1m96gHVKHx7Ao8Ep3noNQy57ffLR9SUIZYhCWZSx7G+VD6Orw8vJ2
eRJqTLcNUuoMctQjT43ED1bqZj8GLP5mTV6wj+spTq/LA/sYLLUZrCa5WGSTBG4WFRPa1N/U
UvvSSzscfJeDc4jV15CVTWH66S4MHV7FtBZ6vdMlWysCFY3GgG28jouUYy8MBVtNDmMPNkg2
3VfvVIP9OD/AeTVUx9E7ISFZ8DjUFhuJhbUeJXqA2iSx0EpZdBlVIcwT10ASG7F3wJx5y76I
sx0tzCJCsU+uTzZGxS8bLJuU1HZlchKSLMMUKplGGolY+Zwqof4yExQDkJZFTZn5AHVARc94
iohz5nQbvNTSn8xJ7O9dbLUojfPuobAOJnXuDH4mNq/llV4XWfOyQZ+vSvLJGcQDyXhZefj3
ND6w0nAOLqtxquX22UQpOJm2IO6U94lsavz4HKj8QIstwU/dVPsKJrZdHA0DCQxZaMV1lGAc
2UBR7ksLK1PqfiE9Cj8q0/tKT0lw02Sg102+yeKKRME1rvR2McXlCqiHbRxnrmhJtTsXsuD0
cC5GtPZ2UE5O0qWBnUo6E0n9yWhYl+B63SmtLMS0Fvs+vLzJOJUiaScsOOYsAihlzeOd2Vqx
esM5mhB/Y0LUYF8Hy9QxJ9mpwPQSSRaTjFgkrRIVqI5zEBw5NNDJ3vyELDKcElJLbIXaCS42
xOdnp6ipUNHsDmVEyOPO2wlM6KtNgbnHkFQIVJfRYufkymOCmU90NCGaYjmKrQqKgqqsscBa
9wImp5E6jgvC9Hl5gJS8mzXJSc0/lSfI2VMhTu2vWsxtLI6dVZRvxSziaxbf1g3jKtbymJuO
Ol9jAwt3W7G5XdCBUts5kEY90iK3Kvx3XJdm3/UI0iV/nyKxXntuKWSfyWgb7bbBXqDKZTqr
mL4PxNSI4cYHVXXgUqbXU7TLGIO3J+jgoOSwTVtuQ2oe9WlKEDizd33nANxkFW19wZWAQfyz
cDwwanShX4uZnbB2G0ZW5p4UyueD7BFggpZo6taAV99+vT0+iH7M7n8Zd7hDEUVZyQyPYUxx
lxRAlWHM904Tu+68UpKVDfE6z+CnKsbtpyBhDao5O1DcI0ae666F8rDdZKXu8GmAeucya02V
BjcHDR4zGtLB1W7f08pngnKbsL28vYPO31+PR27XQnKfKyCgsWhrhgkYwLbyOBDRODKe4Dd3
stY0yVvUvQlQ3RMfma/hTlYA4ebGMMYX0F56gHL6uxF1oisxSFO7OaB8i9XAbpBeyh3SC1t2
529bybZ0Q672Uc53WHFCN+Y0NNaWHvO6C3q+vP5i748P3zGnQV3apmAkiSH6eJPrD04gwsYg
jGORTGFXC/PLl124HOtcj6/dUz5Jbalo5+sj2uR6eYsbsvf0cfDG3Iv4YCkP8Mv2SjViraPm
SdqmBqWlEBufdnsAu4sijd1NLcRBcrpdpidsvlroB1YSlQdOUwwMMHDugkYYygGc6o5IJFqF
5HZpGi/quG+2lzzm4YwqBBymLxBw6VSnWi6RwHIDzYzQN8Ke086ebj/5Mulr/FR5bPES7Z/l
EWsrkAxHwRLtnVpzwhtbkNwgXRK+Esu9o4ezYMGma9xVsOQZXGX6mreJAiM8owR5SMCFqY1m
4fJ2Zt5aDcKG2oVJqh7/wJJ6aYT3z9Pjy/c/Zn/KdbZON5MuOtjPF7AyQTSlyR+jbvmn9d1s
QLnOrYrn2bHWnXxJENxpOy1Rzvk76fP3KuZVdmgaf338+tVaK1UqMSekPv9GcDsDsXqo0M9O
KAcV/y/EylCgdsEQ8sXxnDminvlfMLg38GA0FRepcQMP2OCkXMxmRZwZJcFMWhMxT6eQpVs/
KravWUsFUTdFqrIj5DwC8tx7C2xtnuaGJjqSsOYfIB83KkWHX0lhehc7tLFRnw4ALj1CU9JW
im3oxPDp8fzybow5YadCLOeyhbjVT05sy7o+v02TTC4/wCe9/mwX8kuoEUfqIFFNjVeJjYED
z4d5uY9HGwq9CkDtjfxQ+yPFso1JZcvWgINxAI9R83+dSwWqGu1+zHb2SUhzjCgTu3Kjptto
sbhBH9/RHPo6pLQ7DRiSgLWjPEPI2hI999EZCk9KubxjuxR93hc/2pAa+0aAKvAllcYFrXF1
D3giMAx0eTQOEodmSWLiCkv98lqWJZTm8arKKKKIOXYmI1OJzTaz+fNk5QkmsU883qTqwR3c
WCtltGb/huWgcUDjKxyx0ZxprIIibsBFGXqM1jE4TtdU4bmskZ0bwL3VUe+B2FVfHx9eL2+X
L++T7a8f59e/9pOvP89Cix236uOL79+waucwp42uDgj1IFX2Lr0klnCkbsimRLw7r4GsAkPK
r5v+DS6cPwbTxfoKW06OOufUYs0pC91B7oibsogcsNtbmmBFatPYqsMpI1rudmurMMOvBDV6
sHALA3iFwroaPcJr/YGiDqOZGLGHBzifq6rYbSB5lYkepGUwnUJz/a1RnFUYzFfA6M1LcKzm
17MS4r2euk2VsNtUoVFOA0zYCJutctzpysgyXV+vi8wFzx0PKqalwxoh8NUCry8XSu0VcQG6
/o5Ih10pkvASh288pQfYjNvT83weEPcTSLIlIn4ElgBazoLWFTagUSo24Yh8UnnMEkx3oUMK
V0fwmF06hLwKV7jsRnezADus6+iFYOEQK9TcxphUPECLzpOjy4vFMVu5U42gZWQDwfF0+7vx
kyQROqnkEfE4ChpZck9gmZGjuc4h72bu8P1px8KWAf7kdSiEYj5PTaZ1sHRlV4Cu5ALYIh21
U38Nw013SvJ2/kiouWjR1LTSY/nNcnyQ9eN8//3nD3iAI60K3n6czw/fNFW3ismu0cw4OgC0
Xb4Vm6WCm/OiRa9KoR6gPWoxNlHF8QeeJuOmwHre5InikGc7X50FNT5yHzVTKT2lw43gb4tn
1a5svAXwY1V7idJGRFfNPeNjqSltf90vx/Tt8tA+mP7uzBN78vL59fL4eRxlIp/FjJUy7rrB
blxtK+TuwSSotzbEeEbQZz/IHK3jg/hvjIbQEw6cn6Svdl5C1ADQR9jH1cKlh6SOOvI8GJS2
7nh5iCM3DFrK2qRKCViWY/p2QUV7WGUaVYDRJDq4nW5oR6vrYShE+Qkei+9I2Dsqi8WyeOlh
xyDX5UDjXo9UOxhFT7HMBXrYsMPpwT3d1F20NbvR8k2KGJLtySV2R3FOlXHz1p7K0N41Lgt6
EK5RtLMLupgPLj7S+7fv53fs5ZNF0QaexlkE2Yr9BtrlOzHb4gbpd5lulKxdd4xt72W0ohVu
TLs9iDYW6Dl9+HR5+D5hl5+vRnTl0RQMo2vn74RmG9RSnJZ53pgxKBRkBSVIzy/wjHwiiZPq
/uv5Xb4dZ+5O63es2vGZLElumxL8CK7nUFuiijDGt3XZpNj2n81vpyqBNqcCFoaHAR9nc6CQ
ShGc/q7Pz5f3M/h0xm4wVdibqi6t68OuA5DEKtMfz29f3cuFusqZGdUeAHnggbRSEYeN/Fio
kbla0UX9/mC/3t7Pz5PyZRJ+e/zxJywbD49fxPBE1krw/HT5KmB2CTEBw8gqHaxDn73JXKoy
rX693H9+uDz70qF0yVAcqw/J6/n89nAvZOru8krvfJn8jlXyPv5XfvRl4NAk8e7n/ZOomrfu
KH0QyBKuSvuv6vj49PjyHyejjvco1L7i2O7DBhUzLPGgLPyfhn4sqoK3xfukjrETL6EjhVIN
kJWL//MuVJDuiNq9JFTMbcLI7UJ3G9vh9orQwVeiHY4c87kZanKkyJCD/rR2LN8e5oXtHrqj
1Hx9e+N5696xsHy5RN3MdPTehmEsFXz/18bBGUX3VgU33tGJn+BND2dsacRtZmW0wD22DcAh
Vpm0KlGLKCBz42G2TBDXiYnIkFXmqdE+j1t1cqYcb+Zx92jUFRJg5YzOFmszeUJ2sZH+Au65
kOQUuG9UZPOB2yeSwGtfLVWH3Jn04bwX3k0jwbFIBFcpgkGfch3+YQWthMLV9cVQ4qYEzZXL
AwBMg+higdGqDLmuGtcxk4FhtMBVBmVThzkTIyJ+hW46Tsdo2rKRQk8TK/E/b3JuGFvYnVOb
atwmzNsdRDoWwhx0pLEHt6e2OpI2WBdiO8AoLm4GF2Tj5VLXUXFu+zTqOtust5YUtFgrans/
aqG2aRY/zCNtALJquAGtzq9fLq/P9y9Cgp4vL4/vl1fsGPkam7aCE/es2t1qFVFdmkp/B7Ub
WkTgcazC+2LYVo2XmXRT7COao/c9YtekTirGxkdEfwce702g2Bt7QPkTxChhDljlQsAionH3
YZ2HoCnqrcBh8v56//D48tX9upjuJkL8aEVCDvcJzLw4GUnw8BXdfYN/iWHjrIGsbOouSrPz
msJlE9vYmm9ighWhxJRrlkw9YorXgKYoL0PRnDVYvty4bRhw5Elpb23o9vawk67Mt+TdLXEF
0ibvapE2Q5o2T+uB2dqN2fRwXyHETp1RKcc9V0/OSbg9loEdVV1nsz0jdMUJtSX+Ox6ptgJV
1TKsZVNlHsdhMvM6Tn0+USQ9SrA3HYyWhvEF/G77rS8uZxnNfZabMLS1+HeBh7kRbSi4Fbqw
ZBwVAWsxVG+1H+HcSM6g+vJIMhoRLlZfBldBTJ8nBCQ2SPpRj1BvgjZhDtAeCee1C1clA98T
YeaSWBw2NeXGxypo8zbBDvYEZaEK1pkXRhk+hW2hF+dn8l3gSeKuKSiXF2ha4z9tIuOyA357
sxF1yDehEHNDSOuYii4XNLTVnyRBK9Dq0rHk37UQGHw1k4nBMQRY4WmlHfvSx09KIHdNyXHd
+PjbwQCOGj/PAlJZyPteFtYNHoETmA6kxr/T45UmpgkLrLaUocIQ7g2vrY7vEbz3B6oYXKH6
wXecekdiYK6bAiIAC77WZ+qheK039wokTMgNR2pYx0krVnvDN0dBs6EDenEMrCZKAMTA6qeO
UX3hmFwHQ8Pd/OXBDS0+qTiaWLZhmcvnaBS1HYDW67qJ+i0Unpxy/XGTb6qBPYo5XSmkM882
vWfQLG4BNu77c6GVwdnnyaaPLWFtXIT1qfJ61RIcMCK42wNmO1KJbIAqwNnFJEQR0DL9n6mk
gA0KWOapRSchIbbyS86Qaz0KcdgStjBGWmHm4DfwYtC0GxCQ3zhET1yKvsrIyYPBgy0Kjlva
SH83hDGQ7ECkj5QsKw8oKyjaR5RyFJ0uW4ZS81j0S1mdev02vH/4djZObxImp3p0ce64FXv0
l9CTP0AsZ1ifx+V51ApYebtaTfGZqomSvp/7zPEMlR1byT4khH+Ij/D/gltFDmLFjb7PmUhn
IHubBX73x7QQQRw8vH1czG8wOi3hbFPsTj/+6/Htsl4vb/+a/UsX6pG14Qnul1U2AO+Rgluy
KAFrCpVYfdD77WrfqD3i2/nn58vkC9ZncBpsCbyEdh6dWhL3uRlAUgM7myfYzlQWA2zo9U9S
gtKlXl6KxUS/pZGkcEuzqNbDMu/iutB7yNrb8bxyfmKzqyJYit+2ScXEstEz6CBZR+M8LIna
sI6NZ/jDw6SUphDGNbRSqT+jXtLvy92h0ZRksJOCyVtdXqJCE/NDWe90Lk1YbIGC6TywfhsP
4BRia0E6cfHx2WRnB0+8esXe4qY+NbjMKjy3J5AS5mFlsieWFbTlHRPIhNhX/m9lR7Lcxq38
FZVP7+Akojbbr0qHGQxEIpxNs4iiLlO0NFFYtigVlyTO179uYBYsDcrv4JLZ3YMdjUajFyAy
OxaJMgjh3KujnPJGAxLK+HlawIGCekORaYc0np32TxwKo0Lbz6Cs00K3ZFC/m6nu/AEAEH4R
1syL0NASd+R9N0QqpWT0tmPoAeZJbdt95A3axHg+o9kPE7BUtLnF31KqKiltscSi4eRibJlr
YSmpFjyYN/kCN8eMbhNS1TlGA/DjfUKcRPZM0vxEQj02OQNeMir0wvckFZaE77Qvi4LGs5QD
54I0oL7knnNAT+EFP/pDhT51kKA/uBo4uOgCR5JP55/M0keMnhrLwHw2HxssHLU8LJLLI5/T
YdVNIk8CLYuIstKzSM58PdTz81iYC3/jr6ioRxbJ1ZHPqfyHBskX3UbKxFye+jCmr5WJu3i3
ys+fnA6DIIfrrqHCPBrfTs68rZoYyQ0RJQ3tTVBf0YQGn9Hgcxrs7Qbt46RTULkQdfwnX9F0
ol+ja7T1nkFCW8wbJP4+zDPxuaE45YCszfFC1xUQvM1Ajj2C8bgSlNHLSADXsFqPGjdgiiyo
hKfYZSHi+GjB04DHehiTAV5wPqfKBKkzpj2aBoq01mNgGp03PNh7TFUXc8P7FxEo2+v1RzH1
elGnAte+TtiBmjTD8LLiQQU0PRIVG66XC+PlzlCEKluJ9vGwXe9/uC4+eKTpteNvuGHe1lBX
Q1zxesmbF6UAOTKt8ItCpFP69Aq7IolmVxh2gUdOCzpdQ4ehDZU4iHszDHWp4tV4pJxOX4ge
L6V8MawKwWjtHKVbtFCGyI+vQDK0eQrtrKV/TL6Ukg7rDMlGuyebjFKSgNiJGhD1QqMJg6i1
ZPJLDFtqh/Mm0XCjqGbXH37bfV1vfjvs2u3L61P7iwqcrUkEIgmaTiKD7dBkxTAhHmvC/tI6
Dmug7bu4TK4/oJnW0+vfm48/Vi+rj99fV09v683H3eqPFspZP31cb/btM67Dj1/f/viglua8
3W7a7zK2arvBJ51xiWo+3CfrzXq/Xn1f/7tC7Lh+GZPXKdRkNHdBAZtX37v4C0eJzWE7pcY2
01A+iU2SwN6T0zr036MD64nxucZLO+RnJPvUo/1DMhjA2Pt5UGnDPErVn+4xg9spG1Q52x9v
e0zuuW3HgOraeEpi6PLUsJozwGcunAcRCXRJyzkT+UxfxRbC/WQW6MxVA7qkheHKNMBIwkFi
dhrubUnga/w8z13qeZ67JaA+2CWFowXEH7fcDm66nCgU7nrqpmN8OFwMrZedjmp6Mzn7nNSx
g0jrmAa6Tc/lX6KB8g910PZDUVcznjLiS89B12EHT2GltTp8/b5+/OVb++PkUS7tZ4z698NZ
0YXhfqBgkbusOGMELJoRreSsiGjvo67/dXHHzy4vZZJ0ZSRx2P/Zbvbrx9W+fcKUs9hgTK/7
9xpTGe12r49riYpW+5XTA8YSdwIJGJvBsR2cneZZvJyoPEN20wM+FSUdkL3fjfxW3BEjMQuA
0d31HQqlYS4eMDu3uaE7kkyPutXDKnfZM2KtchYSPYmLBX3bVujshvQh6lcu0cR7omqQNxZF
kFMDiTGNqpoS7fpml+U4XjPMDe0ZriRwGzNTQLvWe2j4sV7fWR7oXUKF53a3d+st2PkZMVMI
dgfnnuTFYRzM+Zk7tQrujicUXk1OI3HjrmeyfG0lW1wuQkWjDaNWfCJg6fIY//rnqkiiiZkS
V0NckQ6DA/7s8or+8JxMSNhvs1kwcXoFQFWaAzbd9QbwuQtMCFgFokmYuQdkNS0mX9yCF7mq
TokN67c/DbPDgZO40wuwxjTq6RFpHQpSq9jhC3ZBLKJsYQZXshCOSrVfZUHC4fbosn0W4N2m
/8g5tgBLKWw0tDs3ETEMN/3BaDGTWfBASEtlEJeBHtba4uZESzEA3jEOXuRGZPRhaVwQZVWc
fkzt0YsMh9phKmzMEa+/6Q2jchMHZJC8nns/ZERbPpPpgIdP3CUCsJnLwh7KashrVKw2T68v
J+nh5Wu7VT4c9kWiX6KlaFhOyZFREU6tYAI6xsOrFY4O6aCTUMcgIhzg7wLjDXM0mM2XDhal
woYS3XsELU0PWK94PlBQQzMgyYsA1ojBZOw7yPf11+0K7kHb18N+vSHOxFiEJIORcIpXIKI7
dKjYFC7VkXUGRGrvuQHZHRIaNch/x0vQxUQXTXEWhPdnIgi24oFfT46RHKv+iJQ49m8UJo8P
mOfkmmnWCQ/OdUFBlNdyxO/SLOLUvOQqvLLdyBxPG3R3On7IShKKh8oWv18AHIVHijhvfqqQ
8+ZIMdG7/eh7qn8sHb2QXfk/kzJV/yEh5dEoNJsOqgRjKBHi4YilLkwjFof39IK4eQFFKjC/
yxFUw9L00sh2rpHYwV40FMYOvDfSoujtSjD4Mmum9+/ibauKoFwmmLMDsKiBxPdVEpnXYdzR
lHXoJavyhKa5vzz90jCOKkHB0HR1sFsd9a9zVn7GeMF3iMdSFA2lZ+2qsY1fsYhPcJ6VpUxX
2GMVg263e/Slgsuoylu6Wz9vVvvDtj15/LN9/LbePOtRoqTPtKbPLQwLMxdfXn/QNJEdnt9X
aFw9dpvWxWZpFBRLoja7PODwGMm5HDTUtK3ST/RUBVrzHlZFIKKrJr8de9xDmpCnDOQCMx8N
us8IcsOGsOw5xlzQnW0715WUo72Q0F99e9SNSGUuS+hqKExNTFZE5IVH6c11hxppmYKWEizJ
79lMmS8U3LiisYYxURkiJTMCgQCFe7Fjjajqxvzq3NJoSTZEPHHYJLCveLikjaYMEvpxrCMJ
ioVPLEV8KMzGXhmChil2MD1moQjd2zTTnMCG6/No4ILZSxJP5/vzEU9WEJ9iw5LoQQkHJPQm
rnSuDFL2YIZqQtFxwIVfkNQgYtNwshQUvglyCabo7x8QbP9u7vXshh1M+kTlLq0wIv11wEDP
7jPCqlmdhA4CQyW45YbsdwdmRpoaO9RMH0ROIuIHI8yfjtDDAXRbWn9J6pmDnsIAfkh3H/Qa
LwLdmus+KIpgqaQp/dgpMyZg09/xRhKMKHw+MUIQpnCtbEoVgTGWKU0snAyWGOSNlWJGchDE
BVFUNFVzdWFspMH07SZDLyQkrNPhsU87LhYiq2JtcpCSacEP2z9Wh+97mUp5/Xx4PexOXtR7
ymrbroB//9v+V7tJ4DMXBhlLwiVM2vXkysHkvMDnabTDm5xqvKLHl6g2kl/TPEWnG8t6nzYR
lEW4SaLbhiMmiMU0TfBar4XclmOe+yO0ldNYLaixLBV5wH5PVFbuJVQRVLVuucnyuikMR5no
Vjs7pnEWmr8GfqYtndi0pGTxQ1MF2neiuMXbiFZukpuhgSKRGL8zmd9iCme8nmCmnFrJl+XK
k099i8AIl4OgiOeZHqYG1qzRUXw0Tqd6fwbZwREJzAfNXkyS0LfterP/drKCL59e2t2z+xIP
wlxaYfRpMx9cB0azMvq9p8uzBFJrDLJDPLxqffJS3NaCV9dD9JleBHRKuNCW2DINEnHMZBDk
2jBDsZcXBdCSmdKlJR38AxEnzEojG7l3fAY10/p7+8t+/dLJZTtJ+qjgW3c0VV2d0sGBoQ19
zcz0ERq2zGNBiyEaUbQIihtazNCowopOXzKNQvQDEnlFcxWeyme7pEZVJW5LymoAM2lJfyEV
aXGcC1izOfB8dGv1ZJwueBDJGoCKJJhx9ApHFwLYJjFl6Nuna5euL2iFnASVfkbZGNlS9IFa
usOuzgRlA4p5wewM3ENOsJ9cB0ZUl25HRu3Xw/MzvqeLzW6/Pbx08XP7bYCJd/DyUGiSvAYc
HvXV1Fyf/jMZe6HTKVd374AZriX9mViHZdB5SyHvD3QuKHH6kCliuC1RbuEKGWKGs9L9CG3F
vR8dqb5Bb5Hh7NGKRZ6oSMgJ+6kpMMdHWWrbuxYb3ksAnfnEUJiueZZWhHCVxHxSvizvskAk
lIcibd+ExWSLlGS5EplnAjNomVdPE4ODphzg3i1EJoOx+1xkUVAFzXDsGMgsRKczj+VTXIc9
GSVjSLw02tbFwDvez0DCkxi2oltpjzkyrsqkpi59IlAJ3CzqqHgauczNKu+OdPpXa0KGHOlN
fuz5VWwEBVUyq1AgJWHYfvOg1I36LAS+pZqiU2dxpLCEklkiiBrVB7Lj16eOLdC4mJ0BnVmR
mjspGOhPste33ceT+PXx2+FNccLZavO8MzdECpwJ2HCWkQNh4NFbugbWZiJRJMFAf6d60yr0
QJvVsHSroKQncHELLB8Yf0SGcJOcA5UMtRFU73jHlDUjcP6ng0ziobEAY31ZmjsF7KQBcynK
bUDyLqoacwHiwMw5zw11V7f8Cs6TfAgwhj3RuN9/dm/rDdpOQCdfDvv2nxb+0+4ff/31Vz2/
QNanUZGxDwn3lLzAKOudzyY5B7IM7OORLVag8r3i954LTrcMieBtFsn7hSwWigg4ULZAO8Vj
rVqU3CO8KALZNYeFGyRwg0aptYxhklwW0Y2beveiAtKbowi3cbwV+ayTxr5RV4X/Y/6N60mF
nkbj4pIiFPQZM+TAVRwWtdIgEaxaHRAexvFNncdPqz3cmOEgfkSNp8E3uiESHn1ct8rfwZf0
olRI6dwrfOkp1OHVyBOQZUVRE+7HBsvwdMmulYHoDzIMSGhuEJuC1bRUAQgZJcqZe4PinQWC
JHgiSXl6YKpnEx3fT7dRLr8lHP/H0HhGo50dd9vJ1gUhVZv3MrnIQXTCZxCPEhZaP8uqPFbn
fMX7wE30pgGClC09WUjxmL2pU3VFkN0urEN4wE5B0p3RNP299MbaJwSyWYhqhuoCW+jp0ImM
PwIELDNStsqAP0uMPhWrNoDQljqS0w0+yC8tIOaCU8WOCFUZMxOqIdDD4lXraFEKYySTb6XD
vQKmEgMZic4Ljw8GETt8aSSOT9U8kDhu4mBaUg1SL44VOsQRNfOgiJed0kJngFZ9uqakand7
ZIp4yrPXv9rt6rnVHBRqw6JbxSnpgmraYFPhpGD8Xo6SI0X33Af1FVkxxnAgR9qK83BsxOcs
u3OERZD8ANwNbm6Ki4CgOQosG5GohqvQxym9fWGCXbZkmpLTQ+zYmyuN1f8AKgCI10C6AQA=

--nOu5/nyZvaEJrfuB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615063230.GO12456%40shao2-debian.

--nOu5/nyZvaEJrfuB--
