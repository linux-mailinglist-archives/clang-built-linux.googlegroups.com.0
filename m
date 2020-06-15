Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB445T33QKGQEM2ZZUJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7131F9B85
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:08:36 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id w14sf14241233qtv.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592233715; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8wu5bXniDx4YEFPE3SuhKqbdJOZ8NoWofhih564srli9x8OPtgaAQpFRQYSWH46mW
         RJcpvdLe9dKrIyPlx7lB4KjDlehRqD0mi8OzqC9XrayjlqPCiSwxe0VWw2PN/6cOq3nA
         H4paplxpxtP/CnBw0uEsJ9MkLVeQikeMfCdKyrFZ0uP1KQzKDvwjM3gjBQYV2qrM80YK
         KRNWSfUav7HyGArHzoA6H7RD1DvVAzFvlxsnbigv28XW3FBmH0kcr16BpbdeH/b/1Epu
         Lb3h4K5gGatLSi2EvUmXiRM75jm6qqtyNed5CcwFtTyoO2suNmCF1P9UQcHneE5LoTci
         Ohhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SzV35VgX8SFNJETO47OFOh5Mx4ti3x3ysEK3WS5cowA=;
        b=c9CLxPYtWsYVNnddklutqMx6Sv9fMx5DBZfLJa6KrbUr06iViLSNZiFKuIBU8BPPOB
         0FHvAjsiZBEbXFxdFbISHV4ugz75emwu3hpaE6WMkPzAVoearZ/JNo582B3hhZlis49j
         cXGFUxlk1Dj+IRLCgrRre/kNJm6jdP2/TGbqFxwoOlBEq76RVBtopwu29J8LafwBPFzF
         eRk15upuuh6x4lzvdfWsuVz3ctBWnmmXjjOqu4dYWJ+Rt6zSbW5QY0fFNF06CdymSBRD
         menqSi9hs+gBilnQmWsRFG62pcV9HXVMY9fB4hIXCVhZw5jfD5ql0N1kPf7zSzdq+nvl
         wfSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SzV35VgX8SFNJETO47OFOh5Mx4ti3x3ysEK3WS5cowA=;
        b=eEsk3YtI0Ect7i62bSQoxEfqeR5Ig7+08ycV8gP93m5Os9qBbFAQz/eeNpyUevWV1B
         lAtD+oE8/uiabzsnz5qBgZfVXgE5MOIQM7fQ9z0Zjgg4+XDDQbdM5eGmZB5UgpGLhXS7
         3dg9A6RlQoOYSuv4EJp0FI1LACZlpC8fGcULr3ns/55enS4AMMYi1Aj9EPgeQqcME76c
         iQK1UkxUIFNdVvNJEPXpqR1WgpatPGtTQx8K7G0wNBJRNsA88V85YtJk7jBHwMpwvf18
         t3JLT7oPIsE4UPLhDr1y/UmE6+mPs6eUhjW+IMfp7Db0zzG5WTaM2/D5fHCW+gNYySyN
         ipNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SzV35VgX8SFNJETO47OFOh5Mx4ti3x3ysEK3WS5cowA=;
        b=hekJugL46HUBVzMUVbIVLqGYy3aw4MM1kLsjH/4Bf7U0LKXAHv81o6H5WNba3fAEGy
         heqOEwOeKTR1yorzwYJ0o1mc6HRM4iUUu5OEf/Y8RBxSLAxkPzJJE63KEjqk1hJrGuw5
         P/K7JaMiEdjZdKW4qoMo2kSp8vMGxYmnkY4BcHBsXqI5KFrRy4VPV9oNB+wG411YNgF4
         qvoAcbjxXoV2Ex5k3fLRmhbW1wln0qEHhUSO5zZqcR21pBrqrYoNdEM2Om+RJhklGk6I
         G04nLU1upk96LJ0etFnoOwvha90FzmybodIvNuvtItrw60b9iF3n3rG69sRBy3CODN4o
         b5jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uP1ziC1ZbotwBzpVFv6pouIiU9vtUuITEukLA/CMl7BIEXiqf
	AOQHE8p5GyzEBZkGRQur3Ns=
X-Google-Smtp-Source: ABdhPJxZVIhLB5o4Fz9lAgng31HqjlBRzEVTY4/VspGlQiBofpxqo/B/tn7u15Oz5EeZu3qX9bJH5A==
X-Received: by 2002:ac8:176f:: with SMTP id u44mr17213569qtk.0.1592233715571;
        Mon, 15 Jun 2020 08:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3559:: with SMTP id z25ls5506049qtb.1.gmail; Mon, 15 Jun
 2020 08:08:35 -0700 (PDT)
X-Received: by 2002:ac8:6a11:: with SMTP id t17mr16822198qtr.272.1592233715026;
        Mon, 15 Jun 2020 08:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592233715; cv=none;
        d=google.com; s=arc-20160816;
        b=KdD9+kUA8alVjYNtGCxZ+4rV7/A4MnmW/gESrgvYMuRiogUKV8s9VFNhzgUK8jLLTu
         TaBQi00Mczxrd5+26G8Uaj1NfiL63v6KcOJNYcMreKiVCaD4x/SD75HL/NmfcIfRWyND
         xPk2Q88OihLGuSIayRzkbq45RXtfJvDxNEDC0uyMNaJuDLyJMz1amiJvL54jNT/8G5hh
         83RErWdE70cfZpQRS0sxYbBby4Fpw7P4voJkvV1vqC+odQDWGSwXGiHKqiPINtTBrPvf
         8JWrb4AS7HDejyrlbsgtTCCWSdHWZ5XgHjXNICnn1kF/0SnpGUlKX9pmZHUO28pxvSOR
         Hbnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iL+T4bMHZjVzbUYyj6EVWB2H1FKF/9kEuRk9uV0jnoU=;
        b=RTf+rwEFtcJN1zHyT112lCP9E5BMCeVO8jppFSdmqcnGUVsI43S3gpoUDBnK96vO3Y
         ivM3p0QRep2RF8+iQ393U2zorYd5JFyL3Nk7jnqBXNO0v6Bb9x22ZHS+BWwgEob+Ch/z
         Bc+NVsagxV+HFhES5SAfns6y1Li5+t9Ly+RNMSli1ZD4TbKjjQTHeAe+hUvdtEvhaRGk
         F+D3Sq7chgdJNAF/iviwPs8u3cEQswlUsG5bVdMBy7dz3CFxxEePKkP06bZE1t+AcjAA
         JtL5ZbKO5fdtE9lI9KMJT2eG8INpwlMV4+aS2zlCruh4+sgtZOgcyfP02YkNCSFViS5G
         J+sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id x78si700738qka.4.2020.06.15.08.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 08:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: Q9aCohixC0EdJYbfthALsB9eKN+Gk5ZcjGN7n46KJVNmjat2Rs3SEmCYjKQ3mzz+1tiqZ7JFfs
 WfeQpXpfpzpQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2020 08:08:32 -0700
IronPort-SDR: EZnroeHhRdNigzUMCscr2HTrMsTMBQRG7mjdy4vA7qvE/6fveyPSpmqaP5JIxj7B2ViiCM3T4w
 Dh5/ycjJnqDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; 
   d="gz'50?scan'50,208,50";a="351391564"
Received: from lkp-server02.sh.intel.com (HELO ec7aa6149bd9) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 15 Jun 2020 08:08:30 -0700
Received: from kbuild by ec7aa6149bd9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jkqis-000044-8E; Mon, 15 Jun 2020 15:08:30 +0000
Date: Mon, 15 Jun 2020 23:07:48 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:block-fs.h-cleanup 10/10]
 drivers/s390/block/dasd_ioctl.c:684:5: error: conflicting types for
 'dasd_biodasdinfo'
Message-ID: <202006152346.KsvVOMy4%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git block-fs.h-cleanup
head:   1261c655dd25c5a21aafc9912a2b09a4956cf818
commit: 1261c655dd25c5a21aafc9912a2b09a4956cf818 [10/10] block: move struct block_device to blk_types.h
config: s390-randconfig-r006-20200615 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3d8149c2a1228609fd7d7c91a04681304a2f0ca9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 1261c655dd25c5a21aafc9912a2b09a4956cf818
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/s390/block/dasd_ioctl.c:25:
>> include/linux/dasd_mod.h:7:36: warning: declaration of 'struct gendisk' will not be visible outside of this function [-Wvisibility]
extern int dasd_biodasdinfo(struct gendisk *disk, dasd_information2_t *info);
^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __raw_readb(PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:105:32: note: expanded from macro '__swab16'
(__builtin_constant_p((__u16)(x)) ?                                              ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:15:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0x00ffU) << 8) |                                       ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:16:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0xff00U) >> 8)))
^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:107:12: note: expanded from macro '__swab16'
__fswab16(x))
^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
(__builtin_constant_p((__u32)(x)) ?                                              ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
__fswab32(x))
^
In file included from drivers/s390/block/dasd_ioctl.c:30:
In file included from drivers/s390/block/dasd_int.h:49:
In file included from include/linux/blkdev.h:25:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writeb(value, PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
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
>> drivers/s390/block/dasd_ioctl.c:684:5: error: conflicting types for 'dasd_biodasdinfo'
int dasd_biodasdinfo(struct gendisk *disk, struct dasd_information2_t *info)
^
include/linux/dasd_mod.h:7:12: note: previous declaration is here
extern int dasd_biodasdinfo(struct gendisk *disk, dasd_information2_t *info);
^
21 warnings and 1 error generated.

vim +/dasd_biodasdinfo +684 drivers/s390/block/dasd_ioctl.c

26d7e28e38206b Stefan Haberland 2020-05-19  668  
26d7e28e38206b Stefan Haberland 2020-05-19  669  
26d7e28e38206b Stefan Haberland 2020-05-19  670  /**
26d7e28e38206b Stefan Haberland 2020-05-19  671   * dasd_biodasdinfo() - fill out the dasd information structure
26d7e28e38206b Stefan Haberland 2020-05-19  672   * @disk [in]: pointer to gendisk structure that references a DASD
26d7e28e38206b Stefan Haberland 2020-05-19  673   * @info [out]: pointer to the dasd_information2_t structure
26d7e28e38206b Stefan Haberland 2020-05-19  674   *
26d7e28e38206b Stefan Haberland 2020-05-19  675   * Provide access to DASD specific information.
26d7e28e38206b Stefan Haberland 2020-05-19  676   * The gendisk structure is checked if it belongs to the DASD driver by
26d7e28e38206b Stefan Haberland 2020-05-19  677   * comparing the gendisk->fops pointer.
26d7e28e38206b Stefan Haberland 2020-05-19  678   * If it does not belong to the DASD driver -EINVAL is returned.
26d7e28e38206b Stefan Haberland 2020-05-19  679   * Otherwise the provided dasd_information2_t structure is filled out.
26d7e28e38206b Stefan Haberland 2020-05-19  680   *
26d7e28e38206b Stefan Haberland 2020-05-19  681   * Returns:
26d7e28e38206b Stefan Haberland 2020-05-19  682   *   %0 on success and a negative error value on failure.
26d7e28e38206b Stefan Haberland 2020-05-19  683   */
26d7e28e38206b Stefan Haberland 2020-05-19 @684  int dasd_biodasdinfo(struct gendisk *disk, struct dasd_information2_t *info)

:::::: The code at line 684 was first introduced by commit
:::::: 26d7e28e38206b1b3207af1409eee2269ab36f82 s390/dasd: remove ioctl_by_bdev calls

:::::: TO: Stefan Haberland <sth@linux.ibm.com>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006152346.KsvVOMy4%25lkp%40intel.com.

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--oyUTqETQ0mS9luUI--
