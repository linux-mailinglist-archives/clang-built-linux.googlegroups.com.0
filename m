Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTN4RD6AKGQEWUGLKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DDB28A155
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 22:49:19 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id c4sf3908261qtx.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 13:49:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602362958; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bcl/4sFAeNpkRwDmYRkvk6Cww61c3SJdS44d/x1Gt3pgFYH4tgZOltuA9uarQpwzrF
         ZE8DBpB8bunFUR6H6vkJ7Vl5ekGK6b+eyZMdOzZu9zWS729uC5HY8Td6KWkyJh7ccqKn
         JYP0e77oyAtfjtmpPimvMnzAScgexT6shUnF+EweozkXJUQHljgASnVNODdQmU4WL2pk
         0huGyhwnay57pdIgP2oF2mdZK8r7ixbccfB2cQmxj63R2rIWcPcyR0JWM40dG6EPdGMZ
         4O4IBo1XBRjLP0FuDrwMn7FX1qjCnwQ1J5TLrnUaAdtIMgXJ1IdwdcGnMYP18uhHO9n/
         fPMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=JdqFMhE/zIuX12YWBIHH+1kS+U8ixIjhrNjs40sMZfw=;
        b=WPoL2BfW2h9W4CTkjaCdiVAz1EGk1OtkrVJ19stzS4836Mv0vfC5dukq+A1Z6F9y0B
         VLDto7vGpt2/mx5XBinTjHvFQvpUZ14aiY4uVM4MV2hpM5krPfUIUeyWMzULLT6J2HTx
         +/AfLQk0QhZLxljt59n9vA33Xzwa7n9LsH7n2z/RJymcCIXVCn0s98N2n4rEIYsfFj2B
         H5p/tnl6Dd6hn7zkz0Xd3XbsXfFxf8+/6aRMaLVcqcZrM5n5BtvbEX2ATXhF5e/lkv4Y
         0X2P43+6ACIM5pW0Cc1CFKysy+2gAYh7G3B4WaZ9JVoxs10DckHnhoAeqCg6eDlz67j7
         M6Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JdqFMhE/zIuX12YWBIHH+1kS+U8ixIjhrNjs40sMZfw=;
        b=LmAP9ItY8FQeOZgbgHWnTAC37E9yEGFJe+P5OXKNjZ0SUn+VHGDUnMpnCKwfGEiCpG
         CvsB1Q3MoRgbYaSwy0HQNUfa9ESB1+AHsSAroQ1XP6FzfMLSRxvY7GYt2nbq/R11MDJl
         ojNb97Yu8IHFdMDVuQSXgB3P75OfQqErFWHwePG5GThRbRj7UDlsSC7WKP0DfUnFPsYM
         /5ONQgH1+QLU2kxcfeFDalRs7/9KL6N3sGOpF7tclWoMXH80p04AH7HOWR8fM2im8yKN
         cS+S4KXvIbPzFbg+XDdcANgJg6RgCd+hFKkaDClxbFiNWI4DT2yayfbPlf96B3zCOjz8
         osmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JdqFMhE/zIuX12YWBIHH+1kS+U8ixIjhrNjs40sMZfw=;
        b=A2ImfYa+VegqcLJzfwUGWCZMyE/rj1IlNOU00t21m3dp93dt697+aTYpZnBbQIqExo
         F0tpZrLuB6OkLNyTnXNt7NX0KKeaVSZ2mcFyeV7DFfh0emyABwL95wZkNn8JSKp2oHqc
         k9Ns6BliMrL97j1JosBvvGX/A9/XGtz9I3vYJRd3O0MpWjCY0M9H9S4MuTpSQR8SDkQ0
         vCt6rN2ZMhtaD0Uf9nakVksMjfzvYqcYxExnbljYMCHqM19qrtMrtRKVg96GXF/JhEKL
         3vrYJuDyhih1CKG84xRtom7NAkpG+rYZ/8cmfZqunDWgB4G7Oy4ahvkWOdwzTR610JAs
         S3SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e3x2+Ut+rQd3DrBihfc6cs3VTkhYGMFDOEcBnm2i+4g19UUNN
	0J0bBbbTFDQeaiPAIiR0Q1s=
X-Google-Smtp-Source: ABdhPJx8SewUMaM/pvmuESmmpG69bwYfHo7ZQOeoDg7e2B++j03To/3+M4Hv6jrSAPoqabqYfvGwLQ==
X-Received: by 2002:a05:620a:2491:: with SMTP id i17mr3663793qkn.253.1602362957619;
        Sat, 10 Oct 2020 13:49:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:102c:: with SMTP id k12ls469393qvr.11.gmail; Sat,
 10 Oct 2020 13:49:17 -0700 (PDT)
X-Received: by 2002:a0c:b251:: with SMTP id k17mr19106368qve.53.1602362957114;
        Sat, 10 Oct 2020 13:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602362957; cv=none;
        d=google.com; s=arc-20160816;
        b=YnsqIF3Mr8u/MjJ6yITv21xXHxVCzmm6V43RrmzIfl9ZT2Pl+BtrwS5OFAdJWG1cxW
         Q1q4PBKD5GR0enoDbSsPxGdkA4jKNBj2oU3iuiAhw0J+IavM1oKOSeMLMj6T1R32vvQa
         6CAuryjMAfhbQ2M6skusBPOfDtosG+E7PuNRS827VNEtUdaY7fT05S0XfS/ynPP2aJJf
         BYGuvvQ9elgVE0L0mHtT8Q0O37XF4pZEA9GaGilobm4LbbgHTKp1WHn17M9cXoSLREII
         PVIMmgOdiQtSC49DsBIL16hDIcSnHcC9VOMTYyjbRDB9UxW67c+ekiGxljxWMllryJub
         gCyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=wAxDkwGI4hlMidFJNLC/11eFQAc4mPZFRnccQSqh8a0=;
        b=0BtHB7FCJdrNRKf+wk4unh4e+PeD3fOjjKRyx2agw2sL/hWFv9x5S9LIicSZzmDR0s
         cKt4/16PwJTN8ARvleoxnoHTnDMCWzKGUEXbqOaXo1x3ptRZKTfVU1SxYinTNAYT3NJF
         y/WB26dVW6w8BtKiVqNogwO/ZkF8Vdk+j8BSQ1lPfq/B98au6vfQGyeRqYDx5Lw9D9wg
         HswKYmkq6t2dqa40YTpgBFXAOgpqsrnw7hiSgLBUmTl5936uirjrKNzARMUtWTVK4NAg
         n+bbUNswxDUuOg+zvLuBLQUk/MZHaafyMLGZDuUn+cgYI6+FXzIEK7O6Z+hWvO9s1DEZ
         A07g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j14si377103qko.4.2020.10.10.13.49.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2020 13:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: mgQMz1l5VCALHkcny9cCPZa1JKJuMdfdUKdf9yKAHIrpsJRwFgIj4nImi4YzQLEvtw/oN859f2
 k4QWLO1whZhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9770"; a="229786839"
X-IronPort-AV: E=Sophos;i="5.77,360,1596524400"; 
   d="gz'50?scan'50,208,50";a="229786839"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2020 13:49:13 -0700
IronPort-SDR: 3w1be/B5llfFYMUOEgbiLG32CQGYDjRn0C7XHzVpFH9xUsVtW5cyIQwzytgFiwHOav+SYUMDsb
 vcPlZoMUoWKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,360,1596524400"; 
   d="gz'50?scan'50,208,50";a="520157265"
Received: from lkp-server02.sh.intel.com (HELO 92b3fbfaed90) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2020 13:49:12 -0700
Received: from kbuild by 92b3fbfaed90 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kRLnj-00009D-QM; Sat, 10 Oct 2020 20:49:11 +0000
Date: Sun, 11 Oct 2020 04:48:32 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: clang-12: error: assembler command failed with exit code 1 (use -v
 to see invocation)
Message-ID: <202010110430.aoU5Kjsn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: Marc Zyngier <maz@kernel.org>
CC: Benjamin Tissoires <benjamin.tissoires@gmail.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   6f2f486d57c4d562cdf4932320b66fbb878ab1c4
commit: 35556bed836f8dc07ac55f69c8d17dce3e7f0e25 HID: core: Sanitize event code and type when mapping input
date:   6 weeks ago
config: s390-randconfig-r023-20201011 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9b5b3050237db3642ed7ab1bdb3ffa2202511b99)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=35556bed836f8dc07ac55f69c8d17dce3e7f0e25
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 35556bed836f8dc07ac55f69c8d17dce3e7f0e25
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
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
   20 warnings generated.
   /tmp/hid-input-85a7dd.s: Assembler messages:
   /tmp/hid-input-85a7dd.s:177577: Error: operand out of range (-65572 not between 4294901760 and 65534)
   /tmp/hid-input-85a7dd.s:177606: Error: operand out of range (-65584 not between 4294901760 and 65534)
   /tmp/hid-input-85a7dd.s:177635: Error: operand out of range (-65560 not between 4294901760 and 65534)
   /tmp/hid-input-85a7dd.s:177665: Error: operand out of range (-65576 not between 4294901760 and 65534)
   /tmp/hid-input-85a7dd.s:177695: Error: operand out of range (-65554 not between 4294901760 and 65534)
   /tmp/hid-input-85a7dd.s:177725: Error: operand out of range (-65570 not between 4294901760 and 65534)
>> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
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
   In file included from drivers/hid/hid-input.c:21:
   In file included from include/linux/hid-debug.h:14:
   In file included from include/linux/kfifo.h:42:
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
   20 warnings generated.
   /tmp/hid-input-0ec629.s: Assembler messages:
   /tmp/hid-input-0ec629.s:177577: Error: operand out of range (-65572 not between 4294901760 and 65534)
   /tmp/hid-input-0ec629.s:177606: Error: operand out of range (-65584 not between 4294901760 and 65534)
   /tmp/hid-input-0ec629.s:177635: Error: operand out of range (-65560 not between 4294901760 and 65534)
   /tmp/hid-input-0ec629.s:177665: Error: operand out of range (-65576 not between 4294901760 and 65534)
   /tmp/hid-input-0ec629.s:177695: Error: operand out of range (-65554 not between 4294901760 and 65534)
   /tmp/hid-input-0ec629.s:177725: Error: operand out of range (-65570 not between 4294901760 and 65534)
>> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010110430.aoU5Kjsn-lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICN4Wgl8AAy5jb25maWcAjDxNd9u2svv7K3TSTe/itrb8kfi94wUEgiIikmAIULK94XEc
JfWrbeXIdtvcX/9mAH4A5FBOF6k5MxgAg8F8AdAv//plxl5fdo+3L/d3tw8PP2bftk/b/e3L
9svs6/3D9n9nkZrlysxEJM1vQJzeP73+8/vzycXR7Oy3D78dzVbb/dP2YcZ3T1/vv71Cy/vd
079++RdXeSyXNef1WpRaqrw24spcvrt7uH36Nvtru38Gutnx/Lcj4PHrt/uX//n9d/j38X6/
3+1/f3j467H+vt/93/buZXbx+ezzydHZ0fzk/ZfPJ+en8+2X97efjz/Dx9evt/P50fzs+Pjz
xcW/37W9LvtuL49aYBp1sPnJ2ZH9zxum1DVPWb68/NEB8bNrczwfNEiYrpnO6qUyymsUImpV
maIyJF7mqcyFh1K5NmXFjSp1D5Xlp3qjylUPWVQyjYzMRG3YIhW1VqXXgUlKwSJgHiv4B0g0
NoUV+WW2tEv7MHvevrx+79dI5tLUIl/XrAQpyUyay5M5kHfDygoJ3Rihzez+efa0e0EOnVgV
Z2krpHfvKHDNKl9Edvy1Zqnx6BO2FvVKlLlI6+WNLHpyH7MAzJxGpTcZozFXN1Mt1BTilEZU
OQqjFFqLCCg6EXnj9iU0xNvRHyLAORAi9ucxbqIOczw9hPYnRHQciZhVqbEa4q1VC06UNjnL
xOW7X592T9t+/+lrvZYF74XYAPD/3KT+NAql5VWdfapEJciRbpjhST2N56XSus5EpsrrmhnD
eELMpNIilQu/Y1aBRSMo7XqzEvq0FDhilqbtFoLdOHt+/fz84/ll+9hvoaXIRSm53awy/yi4
wd3wg0LzxFduhEQqYzKnYHUiRYljuR7zyrREyknEiK0uWKkF3cbSi0W1jLWV0fbpy2z3dTDb
3i4qvtKqKrmo1yyVETOiTpk2Nb/mqRhzt7Zq3UtygLb8xFrkRrdiNveP4CEoSSc3dQGtVCS5
v5q5QoyMUkEsqUX61IlcJjVovR1ZqUO9auY+GkLLDbaLyAoDXK3x7jW5ga9VWuWGldekujZU
xCjb9lxB81YQvKh+N7fPf85eYDizWxja88vty/Ps9u5u9/r0cv/0rRfNWpbQuqhqxi0P6Tsz
AlnnzMh1MIeFjmAcioNBQEJDTgFdijbMaGoSWgYyAV1srUUkNbqriJT2T8zT2/IwDalVynCX
+eysyEpezfRYcQyItwacPzz4rMUV6BO1HtoR+80HIJSD5dFoMoEagapIUHBTMj5AIGMQc5qi
B858c4KYXAjwoWLJF6nUxt+04fw7o7Jyf3hmZtUpngr2klwlEEEM9kXn1tF/x7VOZGwu50c+
HJclY1ce/njeK7fMzQqcfiwGPI5P3LLpuz+2X14ftvvZ1+3ty+t++2zBzaQIbMva2mpdFQWE
QbrOq4zVCwahGw/0v4m7YBTH8w8eeFmqqtD+9MGV8CUxdUdaa55Y599AYybLmsTwWMNA8mgj
I5N4i2cmyB20kFEwmgZcRmRk0GBjUM4bUQbtCnB5RtMu07WKxFpyyl42eGCBNmA0xEURj2DW
eXi+Bix6h2KGBaYaIgbwRWBj6MElgq8KBQuFFhpiYWqEVnY2rLR9+OzBzYDgIwHmlINjosKa
UqTM86iLdIWysFFO6a2I/WYZcHPOzouAymgQpAJgEJsCJAxJAeBHohavBt+nwfeNNkGYuVAK
3QP+TYuO16oAlyZvRB2rEh0l/C+DrUCu8oBawx9BxOYiNT8sqmR0fD6kAQvKRWFsiodWzBOs
ryjOzvrTsdyIgWXgLSRob+n1tBQmA0NZ90HEYMEbBMEuTmAT+mGJCzmd6/eg1kINv+s8k37m
4un4gkE0FVd+RBNXkOQOPmFHD6TowDwrrnji8ROF8nlpucxZGnv6aEccBxpho6aY0nGdgB3r
2zLpqZpUdVU669iHw9FawnwaMVKmH/gtWFlKf11WSHud6TGkDkK9DmqFhvuviTx6TalH8aE1
7BsGhqANIZDso/QsEmqJRflygij3kz81a5sslJgVTEpEkW+I7Rrh1qm7mLRVCX58dNpGZk3d
o9juv+72j7dPd9uZ+Gv7BDELA5fFMWqB+NEFcU3znicZA/0kxy6iyxwzFzAGuoxJHQNx+VUD
nbIg/9FptSCtiE7VFIItQAvKpWgXZJoMPRIGJnUJm09llIIGZAkrIwiiAuXWSRXHKawFgx5B
MxTYc1WSkbOKZRq4e2uJrBcJEpqwAtJpduaFXTcQ1teRb7gxrlmgquSRZF4YhmkL+Jk29vBE
DUnoykV0I1yb9CQbAUkIgQhsjAfsdk1tpxWsdxgCOX1HqVmheWSY0FriHga5kVTYDkK3wld1
CTm3LFeTvVQg9YUIdr5mOSwai9SmVnEM4cfl0T8nR91/nXhOLo48YVlXrjIYWQzetpueN5al
q3OloO6pvjwLNmoKEimwRNDuy2K/u9s+P+/2s5cf310q4QWUftPMTujm4uiojgUzVenPJqC4
eJOiPj66eIPm+C0mxxfnPkUfkLbtKaPcNSVaCH5Ml5vaVicHsXTlqMWeTY8G+61NFabH+H3Q
blgCXI1D2IuDWFyFA/jjQ41BhMSMHA4nNJrLlPgaJC29BkkJ7/x04bs2Z8PHJbQRPPO2bV7a
wP/y/LRTMGWKtLJGLLCtdtcZ2PmQjV0To0luQJhHQdHkpp6f0RIE1MnEujk+lOomN5fHvVFY
iSvBB7bG+Q6i6JmrRUH58iuYjgzVroWhRTrQpC1Rj9thhEfODOwxeiQ0TaQ7P2SIrKXKto+7
/Y9hNd5ZWVurg4gLnA52MDTCHbrZUAO8a9QWRRsVeIumhL/Ww54aKl2kYJ+LLKoLg26vp8KE
v0iuNQ4G9Fdfnp53dhu8oPOFnlZjdjcE2s96WUEMcDk/69pvWJnX0TXki+AB2yadeAPpudrs
74qqGH6K/NgXHRvskrjKbY1WXx7PP/TGWIMzDOJmnmiOm8X3VzDRyjPhgkWZJXn0CqfBUOzo
otfH7wD7/n23f/GjQl4yndRRlRWkFgXNvP0rOBoCMq3bDGPZXBgZXTbjWN/vX15vH+7/257U
eaVJZQSHlNkWCyuWyhtbYYOVGRz99E1G5rwdRZZZebS6VBQp1gFs/E9HjRAU1Ml1AalcTGUf
7hhmHViDcJjTbInxN9IdCMMVorYPX1+2zy9euGC5VPlG5lhzS2M8CvOXu28SnLPd7u/+uH/Z
3uGe/8+X7XeghnB+tvuOnXnsnQpwVXq7z9rDFtZNR7lQl0rnrYBafGAzXaBGNPkISldDGC7C
fNqAODkM4Fp3k53qT8Sx5BKTkAqSVchYsSrDsXw8sCOQqNlzPyPzeqE3bHS+N4wmHbQUhkY4
aA3KGQ+KDk2K7bZ3LcpSldSRjCULkvv+4MdyTJRaDZCQFWD5xchlpXwL0Ebp4IrtEURzBjsQ
AVqXGEJnGV+3BaUxAQTNjUkm8mDdWUNjayH2sHg4AZ3VmYqak9eh3EqxhMwctdiaXLdUsDuH
YmhS6FFGjO0pOObhDU+0ZJRQA2U7gCWqA5Cf1UtmEujDZQKYNpJorIy/QQIJj/trJH2nEK5G
ParOWHQDdYfbE7hIVWOHbasYGL25M7j2uJwgalL3n6JVaeTRU2Jt3EQNNiFIqSzFwfOiXiNh
qrCrgQ7rT2+zwN0wsalyjFvQWCTVUmB+Sg5ZxXhWVJrrARa0uo1+BJexf9wCqCoFc4BWBiyW
VSFiKhZlY8qg1NnsjFS6UKdL3r0oIMWiwAIQEJNE2qvy4hJoudQVDCqPTkYINjA7zXIdxp7M
IZKqCXHbmawhUffCodYXdlDCVveLacBOmTaMLjdesfIAatjciZtsTqEwYPRLVUPfgJxdqMvL
66I7+lxytf7P59vn7ZfZn64y9n2/+3r/EJx5IlEzZoKrxTYusR6UjYc4Mj44NIZgZfDGEQbZ
MifrTW9EAl3lEgSIxWHf39mKqc5w9EcDfQ9Sfid4cDAcT9hYRCfvjqrKD1G0vuMQB13y7nLP
RH7UUk4cVjTo9v7JIRosY23qTGrtTq2b86NaZrYURV33yMEUwBa7zhYq1WNDYU9zU/Dw4dnR
AlWVKjCy5hCrVTCdHw/UzV3mAtuEd67K6zBJmqKoF8kBojd4/ByD8L7HJIlmo9TPJ0OFOTgY
R3B4OA3N4QH1RM3pH01r77gdlLOl+An05Jh7iskRByTTIrRkh0ToERwezlsiHBAdFOGmlEYc
lqEj+Rn85LA9kslRhzTTcnR0hwTpU7wxpLdEOaQaybLK39whXbGcGYVhe5l5ubm19K4xWFG1
yf0Ardxo8IgTSDukCVzvq91xGswDkm+for8sYN2s+Gd79/py+/lhay/8zuzZk5/8LmQeZwaD
p1GgQqHsAHqETSc9qQEoTHQbUs1LWQTHww0CzD6nT7uBzWTZZGpWfuEtu326/bZ9JFPyrsLm
RTh9Te4Ki2WCQq3hH4zEhmW7EcUwuBWZdT62llaP8TFer1tWHrgp3HX3oIJgICj8UYdvrp5n
a3muYnwaLO0gLrUncKVAXQ6ShEwuSzYMYTE/rgcnT3ZWLIoggevq3H2BQlPng+2ZrxVnBrqO
zS9Pjy7OvWo6kVPQupIKlnPGE/IiRBbcT4FPd4RGk3r3JD0gjIHpy/ct6KZQKog2bxYVdUp/
cxJDKnD52H3bQA8k59XOWpjdSeTsQFSiLDHesRUBt1x4e4Xo0dYnLAHmOKtgOcFMYC5n7/YF
oTJe+oHoPMlYeTC9KIxw2RlLiVItsd9aDrnwTzRWC9xiIm8rGHbT5tuXv3f7PyHy9nZrX4iE
uQhqvmClvVQEv7CC68/OwiLJ6DDVkHchruLSswz4hecLGFQPoCxdqgGoudnS9WCB9sgzZuRF
HUugq0WNJxL8etTW7UJa8V1brOhpI/nUVGqWDAYJEXYPgdXBcqDfcQOi+h6wgZnxIMiWFV9T
ShQjwhtGVNhrZCLURQ88WrS2A6dNfYeFu1LE2UQVGwhYtMZrUlFdKnDL1CUDICpy/+a2/a6j
ZDA7B8arWvRbgIagZCVVvUe5ykIWvUlwkGWJh6dZdTVE4IliHhZwuxb0LDI7xdGlUn2dA0yt
pJ98OlZrI8Nuq8jr14PHqhoOBED9KCn9w9UK9M8CAv1rIeM91mLGSuZGPnFGYrHNBB4DIKrU
AAScKTDKgACXbEOBEQQLCAZaeXUtZA1/Ljv1I1CL4F5xC+UVwh9H8A10sVEqIlCJE9EIrBFO
kF8v/CJaB1+LJXi6MX2+JoAYgoaBUIdKqU7XIlcE7bVgCUEtU4i/lQzsQ4eMOPxJneh3IoyW
lLgXgXHubp5JOgjtnsIMOhsToDgPUuDcDxLAgA/iYegH4qgyEG0Lbed9+W6/fdq988WRRWc6
uC9erM9DS7c+b8wlvl2IJ6wdELlrpuiA6ohRYRBukXNnBIIdfI57m+ZrsdMbHLvNZHEemopz
wlpaUrBw08PXdCCFqAl2U7YXUM5EBsNE31SkzWs+PcCC38di1RDsjPio48a2D1hOT62QmYaU
ZD41Wi2W53W6mZimxUJQyA82d7eAB2pTpB1b6h5REdgqa0EtbGBaHaxRzN7p4HNJPPrAcDV0
UIUp8Fmn1jIehjO2EeQptu4OEVMGToXeb0DszlNILEx3hOydb8RHE0NQOy93UwAAM85l9Dz1
qrZhVCPRfHj33keeTICn2pi45LV7KEdh2lb97YSpofYTaW61Jrd3f7rKvR8JubkPk62Q/YBB
0F7ziSirjKhYw+AxmZda4TckyyB8dOd0/G/vXOG5hJpgONBJZrLgA/TND+daiL14yf2jUsSk
LBchbVYoFkIW5fz8w2lwu6KDgkwmtS+dG683/OpSWY+Xha9PiPbab56V3pwWpYyW4TsyC6nl
MoM1ypUa7qWQbA3Tbo4og3y0QWNfHczSfjiaH3/yR91D6+WaDKw9imztM4wEH+QLDjKdCaSp
F5HBR3A1kBmWUjny1fwsEDMr6EvWRaJyMpE9T9WmYLnPpAG1yzjdqM4TL1j0gDYkpVgiLi7Z
MhM5nTP5hImiJO5TWBNNDiBTC5lKc01jcQ1QJSZGOLVpW5ol0IgrCL6i8o1BLh03qiNE4U5d
U/dDqZ6mZOrToGx/kp3z9H06IYRAPT7z3gr1sDpPmz/sexuJ6+dfVfAoXRZNMfZ0rd3ujDd9
PgZ+0N0jpaJO7vmQKNf4lkvh7wEEVgIMF8PCHlUPUIXI13ojTXOzrt3HTfI/5ZkhI1hNFQay
Ih3ktgipl9oLjC2EUDsLl8VkyILcch0MNdGU9bBSs9OKxHqYLacnIGqNETUgySl+Ks0U15xr
7x4PftVKgLfJonqJc2We2SoLTxJlbF/7+tn8VfgmsnnKZ0OoUtJpikfjQixKL6xhxSei+roO
3zstPgUBZvPUZyrEwlKnYJm7IzMlkBiPjd0PWoRFxBle1gvuEdiZrQzeXQkqHVGpIBNSuTSq
9G/8jRgNEH6ZsuXHWVCkh0+sFlBVZsAsuH8LFU3Cph8Zfn88vji5aENGAMyi7V/3d9tZtL//
a/DwCMnXSEIuGyKvBlgPp1PuWwJu/c06BECWz/H2L6Z54bMyxMapOMB/WfLQqyFwtWZ4o6zg
UsT0PQXbbX1oUpy/f0/fSUesjCX+n3w7h/isJoZlgXWRMoPvKid5F4Kt3hq7/siG9+JDvIrN
VALCW5/fPOGln5MROtHXWmETlmEs3MKsrybrsy3eXqasU6UDE9Hhp85OyqtVcCcyrlfcC5WD
De2dVspFXVZBXryRGbsafDbysE+ELj/0hm0lw1s/DgJzKCratjQEy0JS8T6ahItBZfyisNfg
pBoa8wsitelWUMbhNpHxQWJk6LZd2KbSC6qFKJIwjWshWKkx5nqQ/nVYvEA38NbthGIefICP
XUrDwsIzgHMuKbkBJuEy5KCTyEbSjWW+3c/i++0DvnR8fHx9ur+zmeTsVyD99+yLVWTvgNYy
kJ7+IKDIz05PCVAt54GuN4iTE0TQkURDMa8rRv46BBJkkpfK3vR9JMFNt/6IzfwY/s8Ggmig
lv6H70t+SiYtq0IziFJEqJ0y9gBUJaeFoVelAjn8WRc8OO25gJ8HjUmHsZR985/pZQgFpcWQ
zO8xZjJV64nyiTCJUSptQ7nJi+f9U2BXahg6P5+48DVv+NH8Tk5gy9B242E3hCnUbTDAMl1k
ARsL8Z7jBLwsrlAbUeLlFjrvC8jw5shPEdMv/APCujDU+TpOPdMDWYx+O8jnRBVqPKw2Ew+K
ESkVHc4iDiLKaRwbxJF9dN08bCtCg+PegALsbvf0st894E+GfBmHRMg7NvDv8YQPRgL8fav2
cv+0eK/w6fHVaAzR9vn+29Pmdr+1w+E7+EOPn/9YFtHGBhW2w8nRZGCTc9LTH+rKXXjZfQYJ
3D8gejseSntMP03lRnz7ZYuP0i26F+8z9arJTouzSIBm/sTcPr6fHwuCpA1l3uy5e3RHr3yn
FeLpy/fd/dNwrPi22747JrsPGnasnv++f7n74yf0TG+ahM8IPsl/mpvPjLOS3g0lK2QUhiz9
U6T7u8YwztTwnlPl7mUnIg3uiAVg2IQmCX7+bW2yIg4sZguDXKnKyV9TMiyPWDr+zSzbUSzL
bMNK90YoGs0ivt8//o3q/bADTdj3w4839q5zEDC2IHvLJcJfGuqReHOLdb15c+pb2acsnTx6
p0URgCtL08Xgzv3/c3Z1X27iSv5f6ac99z7MXj6MwQ/zgAHbpBHQSLbpvPj0JH13cjaT5KQz
52T/+62SAEtQQtl9mEy76ocQ+iyV6oN4hDZyHnp//nGTXKsiX1wmQzdD2pYm0TrXcjUoTwld
adtup2NEZ7kmUgD0ARuKuSk/UVpZjrCUP9fZCJZ+WsRwmGK/oe/IWTQSp4kYGvtyruBHKtWE
hnFCVxwNQzn1exCiTBpjug/oCNRNP0daqEls6O/FT2mnRtFBH2XIOsjFbXQVMW3+l1NODuT9
329LUZadysGjdCpDx2kSfwOCWkbHwDjWXLuVx183GKdoiKXJvZLMMA6XZFmKAbm6O9yf1jnn
fU8UywSpAhRaPzTGcac5oNWVsHgWAvcAO4YwPLiA+Njs3xmEwRvOoKGVoOF+CDSjo5uDaW3W
HMbTjkFDAVVFibovVmmHQuFidaovrKD2U4Ou9uFPbx+W/c+LmjcdhwMYD6uLF2jHiTSPgggO
t21jaJQ1svUEA2sCe8ZPt1wzwOrS0CoMUR6YXFaoK8yM78KAbzz/XkmYBlXDz7B6w9CQ+gi9
1U4wqSrqLJ22Od8lXpDqB4mSV8HO80JNLS0pgadpCob2EsCJIiNGwcjan3yb8meEyNfvvJ4E
nVi2DSPqWjzn/jYJ9M7gXUq3oy5XLKLnTiglPt54fphLB2MxlzatS+qOPQtkbJlBB1gUsIgy
TRgbu0fSb6kINnpTDeSqOKYZFQBi4LO03yZxpPW2ou/CrN/qzTDQy1zckt2pLXhvL7QoQOze
6PrUWeW1NW8f+95iNKogoa8/X94eyi9vP77//ZeMk/T2J+yjHx9+fH/58oblPHz+9OX14SPM
uk/f8E8tGiSeV/QK/D8Ko+bvXNOQ4qVmitJPWy0+oPzy4/XzA6xgD//x8P31swy6vei+S9PK
3eEvjWCEGlgpRFv5i/r6RE3oIjsZiis0t4daZ003P1mZkE7w3oo4pfu0Tm8ppQrCmIKF/gHG
oqg88DNeDpRleyAT/bj07ZJ6QJPDzpyKE4r3XQ9+uNs8/ANEsNcr/PdP6igD0mJxLTta4hmZ
t7rhs4CvY/+svUbTlAyq3LkScT7y7yOry+iLYrQGUNKX7miJRNwRTFsCZfpnGBJU0HN0ryK3
qO08WKRgnNNyJvJhaYjjIKJDEkkAbSCHrAM0Q+B5lqYAwMnOgs29scSalGpX1VbU3EA3cUNY
wB6BA0sOsyPMzNA04rk9NQ11y6E9lOZpKwoj2upAwiWiO5TkpqsXcCzMiBCF8EOfWmr1h6o0
Q2+mzDCw41WZNZz6buNRUZi+JSDtznaj+WInuOsjWPpeNz02WEYIOPiZ+L6PPWHZYuHZkNqn
9TKfziDslCn9wi6j6dj3jXnDISrb2K18K8M2Livf1oiu3jx3TWd4rCjKrd4nCRlpSXt438GJ
dDZy9xs6VtU+Y3gOs9zB1j3dGJltdIjy2NR0yCwsjBbE+DMXBZuL3fqDpHLe+GBUQxnfW1Oh
dLVnBr0VOS6y9FKezYl/Otd4yIfvvrW0FawOubgh+yPdGDqms2BU/dDQkWRX5dN5rihaMGd1
JBrhVFTcvPAaSDdBz4SJTQ+AiU2PxDvbWTOQTcw4XrTorD8ivdqMCXUsWFmX0/pPn6/o3Vcr
ODcXeuVzUJU2t4/xqfl1SV4FtH6Jw2iwxPbVyivYuZJBae/jvwicdS/eD3kK7g0pKbe6RffE
GvYhNC26zdeHZUnHpjmaAYmOF0eVT+f0WpTk9CsTOPj2NKsW5s1W4ZOrIZK9Oc4iWZRH+koD
6JZ5XPa2R4BheQlybMVtbDUDhu0Zy2XQgfkePZLKI71kv2OOnmJpdynMG3Z2Ybb1hT9a3DP5
47NjD2fwlrRujHHMqn4DA5A+o1R9ZJedgcuvq+wDZZej16fMOnO0PfIkiXx4lo6G8cjfJ8lm
cWSiS27mkw++Pd6EDsFAPskLZmRgYBzjfGdF1YxmZ45Cnjvzefjte5Z+OxRpVTtqVadiXqeB
RBZZ8yRMAocUA39iDhBDLuWBZdRd+qNjFMOfXVM3zFil6oNjoa7NbypvPdoq/1+WxkQFwtV2
iODRPUDqC+zRxnYlg77kMxl5+WDzaNQY8I1ja1RetfAlx7KeafVAhodBSjb4c4GXE4fScRZq
i5pjMCa9WOhT13b9VDVHM/fLU5WGfU+LQ0+VVR6FMvuivtnYT6Rdq16RM6pJmCELPmVpDJvJ
wmhEA6D6a+YyM3E75hwzXW58e7f1No7J0hV4LjNEisQPdxZ/NWSJhp5JXeJvd66XwUBJOblB
d2i5a1yqKcp6iTxlIOgYRoUcN8z5mZB4stCD2OmMpoKzNvxnTHh+oDsF6HjPl7nO9rysTANP
nu0CL/RdTxnzCn7aIiADy985+prDcm/M8bbMbBYOiN35vuXchcyNax3mTQYzFvP6kc0s5I5k
fJ5gMPZ/oevOtbnatO0zK1J6a8XhUdisMTFmlGWnKc+OSjzXTQsHUEMYv2a3vjrSPm/as6I4
nYWx3CqK4ynzifKWtSCnoFMaL+hvFxVpWKuVeTH3Cvh5606wnNN7JXAvGNe4FNSdgFbstXw/
c5tRlNs1sg24CRC6tBTqTkQvfLglSfvSvnoOmKqCtrZhDnluUVmXbWtRd+OJeJkr566DOj1X
pcXyqaVkCF7pmWN4ddIT5aFrmJFkUGdwkLeNNpdU1uSF/Msw21Wa9H9hos4vg7H6oCH/ODeS
qzLteiETulVull1Vhh092u1aofK1p69vP357+/Tx9QHtUwdlt6zc6+tHzCz69bvkjFb06ceX
bz9ev2vad1nM9RNL+wfUmH9+fXt72H//+vLxD4yjfb9CVTdfX2SgH/1dP75CI7wOJSBDt80Z
vsNZvGaJYaxGeWW5cq1I2U1zrFno5TXeIX0sqj3pj3O6KlPX+zxlPSo+6VkEYxXh80AMhNXl
cAv17e8f1usWaSltiGhIuFUF6WCpmIcDRiCqCt0iQXHQ5cPwHlBkFR3pEa05ZhyWiq7sB46s
7vnt9ftn7KVPmA7l3y/GVfrwUIPR/5avGeloKXvWlAgzLoejHQiG/e++F2zWMc+/x9vEhLxr
nolXFxeSiFbYf+ndYLNjVQ88Fs/7Ju1muUcV7Zbm9KjUAG0UJcmvgCgp7w4Rj3u6Ck/C9ywp
AgyM5WpewwT+1oHJB0+vbptE68jqEeq7Dpmb+9MIOXznCQznQJGl242Z14oEJRvf0RVq7Du+
jSVhQOtUDUzowMBKGIcRnTzjDsroa7Q7oO38gFYAT5i6uApLsPYJg75/qJ1xvI6L5ppeUzrR
5h11rp3938ACY0uUO3YZC26iOWcnoKwje+F8X5a2IHlTmhNtnTHUMEiAdYtSkykeYZYl6Rh6
v5AVp6UbCdpnLNrFG2vh2XPaam7oiligS7Xh4mDSJ3cGmsvZzLx+BrxwONSn9JWwQlhn7dAi
z3XaYtQrq43UHEd700zrOkYw0QJKjJRbWqdVo4UAuDPCXO+QO90ihE6ArNl31CXVBDgegkfi
hcdOjzVgkGFyUpxzCUsaawTBkzHJ0oxi8TIvMBtC0ZHfJ1hOnY/uJUuNFfVKFb84CAOy3Cvm
n2toC4MJxNKjVBavVUDGD266PfVpyNpjuGWChy55tm++ljn8WK/b+1NRn870mL6PDh55PqU2
mBAoY5xZS9ajby2RnSdE23ervXPgZbrd64WrGSCDyZChcBQb1xglF93niEZEW2BMAVmamkQd
keZxElOyhwkyY3jorA5ENt863Q2oYEV1Y+T1sYE7w7Zf9lnZaQGoNP7+HPieH64wg52tuqjl
x8DyZVYnoUUaMPDPSSZY6pMavyXw6Pue9dXPQvDWfgWyxG5sJqE6FC1yoZvp1jilrOWnsito
dlHIMHNkFYpjWqXUdrkEERuhAeqz0OZ3q+MO53el4JSGSEcdmyYve9u7TrBKFmQMMg1UViUM
kp5uE77lz/HWp5nHc/3e1paP4hD4QWzhVqZrs8kj49xoiGuKOuxr4kkbYLIQBZlNQwIHUqfv
J/ZyQOCM6ORhBopx39/QnwqT/IDpBcp2Y33JQjiieon123N1Ezyj31PWRV821lc8xj4luRmr
Y1FL3xlrx+RwsBZR79FHCx0q/+4wvaTjnfJv2Mdt71QLn2s85CKJ+35u+apDQK6SSq2Gl2Ss
0EWdSjgAWtZUgQm58PbP9jIABJ5HybJLVLxeSHwrLRKmju3YjUxCYEzksjL8hE0eN8Vogyl8
JQ2RPHYQ3PYJvE+2kSULof6lLd9GXuxaXN8XYhsElj55P8pzdPs0JzZshZTGyphGTxzNOxai
xzwI+MDsWKm2pXu1JMloTUmBw8aMcvC04GgjZRpZOj3IBxPvOd73F5RgTgm9BcUww1e0yFBh
KB3qy/eP0i0Mc8mhTs7wGOl0fyb5E/8dUs3e1cOS0WYlfXBU7Krct3pKG0Xt0uuypMHAc1ba
/HU8YNbcwKqYLrMcZQd+S9VIaWC4NhfOs946pqwYPCJmlFvNoygxXKFGTkVPkYlfsLPvPdJK
jQl0YLCLmZBByUx14910n9C8KtPzP1++v3xAlfjCW0gIwynpYgt6vUturTAvr5SvhySTn1Pl
0vj/LJp5epghMd73Ty+fNU268n76+uW3BBODvim2VL8TZvRKLMON9FakXfWc2TL2KRzeoFel
Jar1gHnH6Vu/gc3LQ2lxVBwRWVb39D34hPC3JY8t1gUDaJgW70R6tF78m1AXbLjKarkTmXaW
W2vF7lr7VAX2gVe3qnW9Q6LKGuP4uKAZXgdLx9XyWGYwjjpyVsyG0qKYuqmVw7DF3RmEX0vf
1837hpHXrGe8GDQnz5CjexZn4n7Rc8ls0cqHeuJVgJEMVKNnopMvNPN/AwEDHtTikaINAWy0
FAcqtAy2K2/miWbHLbJlJRyu6rwibSlO1zGRrh6bbCTKcKedzHpKt8EE3KebkF4G7xhV27VK
qOzfZE0yaDFLxCNUYsJwovNEXIw0HfD7cU4wuwCa6qjy0MpvN8SWDP5r2XLpk1eeH2ar8vIm
VdRhEJuHbknBLqZEH8U0I3Ai0aevNHhWtZaiJOsigsAbBvmSPowh4yqToac2OcDxueawN4QA
TIMq0pYS4S9MD2yLv2ReDI6Z9qZLNNbUMq2OJknJMi/srKlXYPGrnpXLm363L2kysATx+onf
HPSr6uU+qklew/jvzlzmMKTkSx2CIf2nYAPqyg4OuMsLU939HPXcUuMPq6dp6BaMmbwpfRoy
T/BUcTGLYvLWUrkS//35x6dvn19/wrdhPbI/P30jKwM7xF7JTlBkVRW1nnZxKFTytdvJicqM
a9KBXIlsE3rbJaPN0l208W2Mn/MGQFZX0DN+5LOqz9oqJ3eR1TbQ6zBEaxhyfGsMeQcx3cBC
EZO4hh74M3OENnsAPND//Pr2wxH3QzZ8VfpRSM/kib+lL+Ymfr/CZ3kc0dqAgY2+U1Z+uRBZ
dSa33Bchsy3LnpaakVvLwyAtdki+tF+FwXW2QuBEHEU7e8sBfxvSOryBvdvSEhuyLxY/w4HX
dsswKnKmy2TeD39gaAbV4Q//+AtGwuf/eXj964/Xj2jY8q8B9RsIxR9gNP5zPiYyXKOs91aI
yAteHmsZDGU10OAca3HFRdjq+xr7Ravs6yx114OXbBHbRmNbIiQVP2Fh/gJiIGD+pWbWy2AI
ZJlRIm34Dfb7RVHNjz/VGjCUo3XSvIwDL8nFxDr7Z59qi3IlmZUtYpfqLQylYlW53yGYNMgB
WVydal+xWAFD4xo2wwB/QBsizZIvyq8uBLdYy/GWlL5PXEshAz+MXVHpO7geuWk6Xkry50/o
ka9FdYMCcIO8F9ma8WrhpzWcYi3aAa5W9ZaPL1jun1hOVskE54+jsLhkyXPz/PUDbz73pnf+
l0wN++Pr9+U+I1qo0dcP/03UB+ruR0mCGYnlVbRu/zYYIqJtlDWfwWAXB9MF5trHTxiaBiag
fNvbfxqBq4w3oe92ErQhpb9bIjOmy2DLz9HeUtZ4TCJKxXYzIlgOBJkJDwNSDYF9Iz8YEc1B
yTGLR8ruaXComY4EOIeWYHQ31TO7SZo0jfHugpdKZvbXy7dvsODL7iVWGvlkvOl7GXqIVh61
k0bNzh9cUe2A/GqLJC/ZB4H/83x6s5SQMdbS6iqvkJ11J5H8U3Wlj+uSK/02LvQuoRp6n2x5
TO/bqndSlkZ5AKOm2dPCg4LZ9T4Dv1l7yTPPLKopyV9uZrMeZfntMBeezER41NiZxAxJff35
DaaxcbRUhSsTvtkIHahDnKNZdfKaVnCpHsXAg5SfizbyPWo+BIaSXqlmUcgnfdTu7FgL4zNQ
D0kU9zOqaMssSHzlHKXtbLO2UfPxkC/b7N7iS+4UwI94Sq/EXiQWtd9Q8/ImnaUttn4jqFCo
wKJmRlSXZ3Dk78khQ1R03sPHIxyiUmGxi1F9BivzmR4HV/oQoMKQphcyAKrkgdRoOgBoZLvI
OQfhn8KmVNTBcOoMdmRIJh01lGar1srkXsIUqTlQLuddgeoAaXqv6TLUYyQPg4ExmjVFfG2r
52XFFd0qzRig05WZTpHj2p7mGWZbgL2GNlCSgftkUcQrUNI64mCAZcbbGpf1Q5m37Bp4Fp3V
CMl5ECf0NmRAKMMnA6BdDI30qjg2cC4IqarxPTWEx28Crma+KJ03Z8SxnP1TEPe66/mMYV46
zpm5uJ3bPIV2xpGwLAQtIWJv41FfMPCooT9+BkCSnWd8/8iq2iQO4pVnTTFoekyE20gzPBnp
eSFkCEJZq8022i4h8M0bP+otjJ1HM4IopqqPrNhUoiwRke11UbLzlt8GZ8RwEy874Ziej4Va
aKQWa1GZTuw20Wpd8t1up2dmWcxISRiPgiczGIS6T3v5ARIBJVNOkevyeOPT24kBoQ3K7hCG
xnK/gLHoog0MvQeaGNq63MBYLhh0jB/HLswu2Dhi/+UC2udXMK76AGZru2HTMK5YhBLjaGce
ukrhWbx19Whfwgmqlmm6u8biTzmV1xYWb4cJIvp2/YUZ/JOW3S2bqdUWwJxvg/Xvw9CLjs8r
o0cQwOnz0Ig5xH7iRXToDB2TBAdaNX0HRWEc0aqzEXOsIj+xXlNPmMBzYeKtRx8TNcT6QFTn
QUvClBF0Kk9b36JanRoZj3q4jK2jRLI+Ud9lm/UKgzzS+YFjUMBhrLBlfZ8wckVfn14KE1tt
hw3czlEnkcEGuD5SEWO95tMxwXojSYz72zaBxZ/KxKzXGbf8rbddf5kE+etrvcRs1/cnxOzW
RxBAQj92jFYMYOpaNiQmdNZ5u3WMWImxOMAZmF/6MMcoY1kbujZwkdlMAKd+Z5YbqDsgdgIc
w485tmwArI+FillODhrAVUmLl6AGcFXSNetB7nABXJWEA27o6i/AbBxri8Ssf2+bJXHoWBMQ
swnWm6UW2Q3DpGF+Z4sGYoJmAib9ehMgJnaMJ8DASXK9res2Y3arrfHzDkm0s6g/rM5p49P8
JBzLNyAc0xMQ4U8XInOUsXJXOklOrIB1cr0jC5b5G2+9dwAT+G7MFrUB65VmPNvE7NdAjmml
YPvQsaZyIXjs2JQ5Y1vH9pbmmR8keeI8XfE4CRwYaKnEJdDWaeCtb0wIcYx0gISBc6uI11ce
cWKZY28TrPUdE1NC1keQhKw3HUA2jiGGENcnszby1+tyKdNtsl2XvC/CDxwHxYtIAsfZ9pqE
cRyunzgQk/jrRzLE7H4FE/wCZr1xJGR9ugCkipPIkq/VRG0txn8aahvEp/WTmwIVJ0ppK/cp
M2XdQKLSjS0wXKSiRBdJ0tljABWs6I5FjWbWg/b4lhdV+nxj/HdvDh61QzOymSxjpKLlHHpg
3kRXtnR7jtAhDdnt2Fyg1kV7u5bc4udHPHHA87rMe7LynfoDMiOO9Jul6v3LRRq1XbYKsvdp
fZT/0Gy6IphEZkARb8+Ly6ErnrTBsejRcwUdb6rxRub8dndg63r3sWBNuXlNMf1vQ+nzOd/D
yOG83JuWmpx0Td+jjSUFR4aOv9sM/vvvLx9kEsGFDev0MDvktzQTCZyZLe73COBhbFn1Rrbl
6Noy2TJtFFnO9vL5VARJvMz8YIKkE6/ML2vJZXJHnarMEiAFMTIAgmfZRiUg30Wxz650Gjv5
mr4NvN4ea+CAUTZy222/bJQ83XmhvQ7IjoLVN0gIvSSPbIuaaGLTa/7A9i0SALKPqSjQ6gQz
aq+0QeaHw3WJHdMG2/+l7EmWG8eV/BXFO0x0H3qaFEUthzlAJCWhzM0EJct1Ubhdapfi2ZbH
S0TX+/rJBLgAYEL2XKqszASIJQFkArk4rosRveGgiPtyyEgakJll4sCI7gqi4esDq9IGnWKO
W4f1I+JclpHYMn4tpo5I5oj+xvLvhygrXAFykeYqyVwtQ/R8XmZzh/9yj3dzgMRPHWlvFI/u
/Uno0NgbgtnMdVfbE1xgFEUwp98MegKH9NERzCcXCeYL72In5gvHy0aHd2gUPZ4WUiW+nrq0
6xZ9qfYkX439ZeZeIVVS0xYwiATFNoR17B4d0uBAx9ehd6l4FNahQ5GX+Ku5Q36X2Dyspw71
CfEiiS7v+oJPZtP9JzRZ6NAPJPbqdg5M7t4IUackkWy5D71PTiUBegUl50icNBEwouIAtOag
DAZBuEe/Y1ccLyRMy2BxgevxrdcR4Kv5TJpdYBuWZswhWJZi6nuhIy2B9CB2PKdR7sVmoyTB
hc1AETgu3zqCse9eTthvGJkLJ2tDETqUf+0rF0YXCeYOu/OOYOEYJ43g8gkPRLD/O5TJ+iad
eMEF/gQCjBh8mYFvUn88Cy7TpFkQXtgi6igI54sLY3Gd7S/M+W4/vyDFpEW0ydnakWpIymIV
/17k7OJA3mTzyYWDFNCBf1lMQZLQ+4xksaDvVeReKF3j45nvMjXTiUD2u7CrdjVdIBI1ykwX
9sU6W9HtqDCPNhkwRvfFcekWWj3JGrUpMoVlFdm+/GiBbkQ5SjkZuqhCs/ioiM3QmhjYvUNo
3k0VHmAavKtdYqYthhwHIPm2iyiSnkAU+a2jesHy2+KT0qAll47iWZQcrpbx5Qr2WUl2mivD
E2o0smyIkGO6s1OSARR0YZkD1uGbDRVu+D7cxA4PINWQSziMPeDCwwhYQdqM2UviijlSzODQ
1lXCsu+MNoTEr6+LCpOKX/gEX29Z7vAfqg51DUXJiCkwcGlRlJgs2Bh8ZeXNzRkZhjDqgOiz
nIsMk6c6OVRwGgVt2C+L/SHe0foFdsARwSxL0Gcrwjxl29KZjklRERQqF/Xr3cvP0z2ZLzyu
hk49DGB9+INup9HBKjv0693TcfTXx99/H1+bAKrGdcZqSe5YZDGVpffu/t+Pp4ef76P/GqVR
PIyN2+9HUXyIUibEpQDROOcpRuO5QNrm/f3ky12OYXso+6+JYpsPYzdseDz0JgGg4YnN495q
EpZKvibDtAOZCg7S/N6qarRKmtuv1q9SvBzv0dsf2zDwmEZ6NpG56aymsKjaOrKzIhbDWtKt
w3xoibl8ZNeS9IrTGw+io01SVZRntUJy+HVrdjMqtmvdBwlhGYtYmtqEcl1YsFsZ4ttuJAzt
usgr13UtkiSZOJA2yRKZJpHl6Y/Q71bQUmOyMtix7BlcVZkFSYuKF3oeUoRCtTJ8j/3Bq1t3
+29YWhdUVDRE7nhyIzAJiPX120pdwRpQLjO7WZ+mI0wh5htbVtYs1Dc837Dc7lQuODC//bk0
klf6FjAZrKE0yYsdfcEj0cVa5mJ0EmRszSMZmvQCSYopaxwdzdjtCnaajdlSeTiu7U6ppEHF
qrbABQb/TCxGxrg+vJ1wDZ7X3ATA9p9cmaCS5XgTDmyk8ZoGBJ427GSxSFKz9JZMMCTRGGAk
sji3AcoA5YP6Ghwd00xSpAztIjGTqT2rZcUzMgQhIgXjgw63iUtMIJpUygxvJrgGwWQASlI8
8xNrzUGlIKNYwCrjdoPXGFGLCU7FkZX1YDKBb8VtU1l/gGhwa6Mx6q/5BSaHFS4SMoOOxG5g
fQ12qXqDcRaGPqcayRaPnkMpArP3N5yjPGpXuOd5RgYjAdz3pCrsnrcw9/b6/TaGY6nI7S+p
18fDZks90sgjKS2F7hRJnYl9EALqsJZxDJoDW3dZ1mm7oFMasDumxfJQbCIOOlRdpwlmJudM
e3xEfCO56esGwdu05EOPY40A/swHLj8anlXR5rBh4rCJYqtyR4ky4q3DJRLJoFJW4CmElz9/
vZ3uYRzTu1+023helLLCfZRw+u0GsVIK37mcqi98yaqGxWtHusj6tnR4yGPBqoAZGaZn6wVr
11UwCAMYs5cYxTy5aTfBVliFX0oENYOCtdCDPDSIqjQSeQLIuE6DOpYy4mQOQg3G9Ikwyk4y
FEQxfj4xTbIGlgfeOFxQG5bCo12R4eSiPhxl08Bx69EThHNXtfIqy7PGSQLHQ+B0Mh40AMEL
x7OPJFCukZQDj0SbHjiqSrzo1WKadsBwPACG4R5vw7NMP9s73NgfthfBlCt3h50OvzIPPX8I
nE89Cyj7Gu4H7NHAXdtERzMN9laNy3g89wZTUQfhIhh8BbMvhB7l7qTQaRQu/P2wdTjd4T+u
YlwE/ioN/MWwYIOyLLAsVpcJb/56PD3/+zf/d7mdVOvlqEkl8YFendSBMPqtPyt/17L1yDFB
GSIbzOzQv1HHZum+StaDLqDVhHPA5JNBy13D1bCYtds09qZ+PT08UCu7hr1hbSVZ799UoihB
CwaeWlmn+osJ+DfnS5bT9xYxvqvLq6rBHABquV2Nzi94LWl6U93m0WHFSSVyq4oZib8kBOTi
XQJnSs1XdEsbMpGkK/SppCyFGpJNwsyYFTq8yXtNnkZWl9pq2XYfcwECrBb8axNPJrO5kWOS
Z2t0FOIc7y7ILoBMnqTN/g0HjBCMzJ+JLm8oTC/RXskYKh1D69sahevMaUg0+cTMN72V12a0
dIq4Mq52eBHBq2tqgjFyAjrkKgq7YuY6qlWY1agQ9B3jtvELby5AnDSYetJdAUjBDlELPblX
U4cr+W7lSoDKq7rNPEWMhYrZZ8QUVTEHsySngqLt4tLMKAe/MQIQvXJXEZmye7cpRH3gRa1n
vFLAiutKk4JhU4xvSihqrqIRZJvgpoMNIDvdv57fzn+/jza/Xo6vf+xGDx/Ht3fjMq99wviE
tDPuAr3YCk8natDZHeaL6yKNV1zQgp3aWEG4okS4zY0oea5HeolkHBVx/nglow9ihBplPWhA
yqpYagZ18DGBTyuZLnV0aYdBS66nk6UeeoH8aleQ8XRpJmZuI4kcsg392txEQc2WjkAcTZ3S
LZ165IBB2x5YqaUIV6Bef1EXzhhi53Q/kshRefdwfJeBcsRw7j8j1Thafkk68K7IFGgNXplH
liA0g15bbNebvrHFSlFZURBbWM9VCI2iG4UZsHZ1fDq/H19ez/dDVlAPNDDxkT6RRAlV08vT
2wNRSZmJtc7mEiC3Zvp9QaJlitu1zM5VlVTETkXWbDuaOmu2ohsavM++4TJXq7pOPoPEhFn7
tLt+hSii0W9CRWkrnmU0wN9HbyhX/Q0zG5vaI3t6PD8AWJwjKjcghVbloMLjD2exIVa9KGBu
wfvzk6sciVfu4Pvyz9Xr8fgGuudxdH1+5deuSj4jlbSn/872rgoGOIm8/rh7hKY5207i9feI
6GDmPZWF9ycQh/8Z1NkUauIf76ItKQJRhbublS9xQXcBmbUGwC17NT9H6zMQPp/19dCaCktD
ZZ6VoLMXeZxkIJcagpxGViYV7oTMiuFEUeLdsmA7baPW0SikK8vmJ7I0JrrdJXYnBnkE+/4e
kl2Sa1Fxk30dSQWyjc13f352piNUxNK8+ZvxotkgVoItJnNvADfjjDZA9HYE7UvfaBpMWeeh
y+K0Ianq+WIWUFcGDYHIwtAbE5W39z5EUZAMi0qTo7kRHRVjA21XKz2KbQ87REuKFKV7F1yl
VyexeJFS5GJrRJ5D/NWKrySVCW70rCRuW6g/Iasw0vAnfW71xc1+tQ0QyMwdydisWNxcegFt
KJqyw4fe+/vj4/H1/HR8N7iMxfs0mIR9FxuAGWpFAmfjAcBOSLLMmO8KQJOxCZlmZplFwH9S
Q9XygelQ+ysxG8+pmmIW+Nr9CUx7FXtTo6QEUdmvJMb3zKkG+Vc1IGB7Lhw4vDRu8d2HrvYi
dmR63EffrjCdFbUmomAcaG3IMjabhOEAYGUEBOB0ahabT/RLLAAswtBvTX+0K08Jp1oiMdoT
QLaPYPpCAzAd620T9dU88McmYMlCT5c/LDZUrPl8B4IAhk38cXo4vWOsxPMz7IXv1oHF4pm3
8CvaZg2QY4efKaCm3hTUJAxEX7IKIzTTUTmAcrGg3p9YzGVYD5UXrd3jckzjXSZdvB7twWQ/
0zlRuQ/aWdUwzMFkRo2+xMy1sZWAhZZqCi3Ig2lgABZT/Zvouj4Za9ORsy269GrzI/PZYqAs
ZS6mt62WffXmPpleCpECeNg4T3arqe85M+Q20sZ+gG8Z4xIT6Gyyej0/v4+S5x9m1FkV5Sxi
dvx+s3qtcCOhvjyCzGIx2iaLJrbdeiezdgWaJCLHJ/lkIY7Pb2eLX+uUwYa+aV6uaI6TNMn3
giDqdsJkqh/z6re5BUSRmBsMx67ttQ4KwczzqF1HRHFjzqrxhoQZ31CgzmyqheJDfsVRCFiX
gRFbS5TCETdi931gt9oFk7fGU1nWnH40gBEmi4pAEj4/6/IxTaBv15noPXXHvdmMKNtyw0qH
SGv/Nyukcc2wKomx4Wxg8jvFj66NLvSmVHItQARzY4wBMplMadJwMa4OSya0aZXQoDIA0/nU
/L2YDg7csqjhdKX2glhMJmPtESWbjgM9lxbsS6FvRB1DiOWS3W9Zk9lY2/Zgo4GvhuHMH240
VnP6q9tLg6yefzEk6MfT069GsdHnfIBrrN+O//txfL7/NRK/nt9/Ht9O/8G3gzgWf5Zp2qq7
6gpn3cYc/jM+vb2/nv76wDtk/RsX6VTkzJ93b8c/UiADRTc9n19Gv8F3fh/93bXjTWuHXvf/
t2RvqHexhwb7Pvx6Pb/dn1+OMPDtptftTWt/auxV+Ntmp9WeibHveWTuwqzcBl6oSzMKQK6y
9W1VOIQzidJlsxZdr4OxZwgl7o6p3ed49/j+U9vhW+jr+6i6ez+OsvPz6d3e/FfJZEJmyENV
zPM9z1gjCBnrbSKr15B6i1R7Pp5OP07vv4aTwrJxYB7V8aYmk99u4ggapr0NbmoxHvv2b3Mq
NvVWJxF8ZsiJ+HtsDPegpWpVwnJ4x9e5p+Pd28fr8ekIJ/UH9NxgL26xF+/Zq2OuQsxn+vC2
EJPuKtubcTZ5vjvwKMMoTgN/A40E2HEq2dHQV3UEwaepyKax2Lvgl8rI0PK6QYp7nNQboTRt
HTJB/C0+CEM/YvF276u5aSEp8qHxG9aKplSzMhaLQB9cCVlMzaCaG3/muFFAlENBjLJg7JOh
SRGjnynwO9DTJMLvqWcwOEKmjkAk63LMSs+jLAUUCnrseStDkmkPepGOF55PWTmYJOO5Np0I
8fVj7Ztg/ljXlKqy8kJ9EaV1ZZoC7GBeJpERR3UP+4tnjHsDo9TbvGB+YI5RUdYwk9R4lwxD
wgWeZyxr3w8C8/fE1P6CQOcd4ODtjotxSICsVJyRCCa+mTsWQTM6e2ETVwRGNdQVIAmYW4CZ
fmcBgEkYaH3aitCfjzXjxl2Up82gGpBA68QuydKpp2vpCmKmpNqlU5+8o/gOww6D6+tL2lyy
6knt7uH5+K7UZGIxX80XM03okr/1O5wrb7HwzSjC6j4lY+vcsbkBKrCyWWdZFIRjMhV2s0nJ
+ugDuP2Uje7CIGZROJ8EToSlfTTIKguMs9OEd5JG+9xIDWMfp0HlNdIGVmoK271RhU7YnFT3
j6fnwdxoOzSBlwSt7cboj9Hb+93zDxBPn4/m1znaBFfbsu5uAa3rRZk+gbrm675Pf6U5HJ5B
rpDpK+6eHz4e4e+X85tMUUH15Cvkhmj4cn6H4+jU3zLqisp4RrsrxQKWCnkdBprCJDDulVFF
8FwOooALXU6bZeoNwiZZ4p/VeLJjMKDvpulNVi78QbJzR82qtBLxX49veHwbw96O1bL0pl5G
hS5ZZuXYvAzA3wN9Ld3AjkRZBsegk5trfFOSY8+j0rek1DL1/dD+bV1Flmngm7JmJsIpKWwi
IpgN2Ls+SKcN6topnHi6UXI59qbat7+XDKSE6QBg7wmDke/FpufT8wO9DmxkM4fnf05PKMni
CvlxwtV2T86olAFC8rBNecwqNBhODjtdb16aOalLw2KjWsWz2cR8chHVitQ3xH5hTTlAQvIq
HqvQJBc8/AJDQNylYZB6++GQXhyI5iX97fyIdnrue97uBf0ipdpJj08vqD6bK6gdu3S/8Kam
RKFgpH1onYE4aDwTSAhl4FjD7qtLRfL32DAYp1rW15zXtNfjLkuc1t/lzdBvD02u7ul0hHYi
Hkwuyw0ThUFhjVFLFl3ZLWmZTuZtgB8Y1TpNDOtkhVtWUSbqZXMTS9svSEI85dLDmnZBVSQ1
Jywt1bLb3I7Ex18qC1zf8S7HzsbI8LCMssMV+qlvxXKMSHqMN7dtHqBDXVRVkjuyZWh08Vcq
ExyOc0c4Ip2MpQ5PD6TC5MA828+za9uc3yDL+B5GNeMlv9y2cs8O43meYY4v+rbeoMKBc3eg
jFh5uVWsLDdFnhyyOJtOyX0HyYooSQu8N63ixHDjMKdbqxsf8yOHo3EWUV4PFTOsQaHVkwF3
secfr+fTD+M8zuOq4HR+zJa8O2CZlr4iN9Pmqvwkbf4rdWtzM3p/vbuXR4u9kkWtlYUfaGNW
F3ijy41MaD0Kqj5QxlxIEW+z7NasTxTbCngv6nLWDnGbhFX1MmG1eVOCq7em8y8RPdJu/so1
ZUawEpqZGfyQjhWY3zk3krggRrkuWUYOGmKzNdLpaphhqH2NRlgenRK2TNACgBJd0EOjTJN9
n6dWz5NKhXvb4vPferYYO6K9bZ1W+zJDa2aacVFf6xZTBqq9tv9jKi7z16FNkGkIBSm34/Fq
013B33kSGW5LUbHNXR7yWSFqkj0saxd1vX56PDZJPY1B2zEUjkAwAoWnZBVtQo+4QnAY3ijV
LW3QSFHPM9dCDkuZQq8oNRyaqGPEkyuuRz1EmyN8F7114FdoFxtVt6UduBAQOziKyBzSK6Es
2zULJBvAFUCaIxnVsqFRfIO63ha1YTAsAW3ETTWD+PxNb9KYFr0pccOq3DKyNWqUNpl9UxWw
rhJtlV6vsvqw823A2CoV1dp0YdbglZgc9AlTMAXqxwAG5UDa1hQw5BgDdKVdNfQw9MzlFTDw
Af7TrEQJApbeMNhHVyDjFDckKc/jZE9icuSJvZkKXUPvYWrbDMn9PVyPzxIYl6IcWlhHd/c/
rYALIGFFG/qxu6FWwtLb8ePHefQ3LLF+hXUTX0TW+ErQlR2BRkeiUFangzIlQ0+GIud03BlJ
A3JpGoNo1Y/NVVLl+pxbuSFBDjebJwH9eqdVfUmzZ3VNb00Kz/FomdJW/pvtGhbOkmQzOMFX
8SGq4EjUeL5zvlzzNctrrsZDMweX//Xc3Io2w8nRtlAulPOM8lOhGtOmINWoNGmj/Zz2W1+F
8rfh3aUg9sDqSEOlUpADfeFSYQ62fEVrNFgSF7LyJ4AdkOxcQ4Q8AuIGEJltj7mQoXq3cUk5
1QIJmXSxklZAsD0XmuML7u32T+yt8UHbQUts86qM7N+HtRlxooG6cstFSbkxpqkBUIdaxFdG
1fhbRkwWZN4yxDLcxIDZRRJtq3bAjUMcqW4SdgVqJnKww4UCqbYlxt1w4wdLTke2B4dZREJp
5aLHo+haYhgMmpkU4SftK2J2cDAjk+uERC1K+qzJU+2QgR+tK8L//Ov0dp7Pw8Uf/r80TkyR
d+JEbpETR4oAg8iVR8AkcqRwMIjmjnc4i4ieAovoS5/7QsPnjqCdFhG9r1hEX2m4I9quRUQf
BRbRV4ZgSofcs4ho41CDaBF8oabFVyZ4EXxhnBaTL7Rp7khggERcFMj7B/p23qjGH3+l2UDl
ZgLpYPlpW9zlWwr3yLQUbvZpKT4fEzfjtBTuuW4p3EurpXBPYDcen3fGkfbQIHF356rg8wMt
eHVo2mEN0RmLQHLIHAnUWooowQAJn5CAyrN1pMPriKqC1fyzj91WPE0/+dyaJZ+SgJJE5z5o
KTj0y+V+3dHkW07fTBrD91mn6m115XKXRJptvaJXcZzSPqjbnOOypW4PisPNtS70Gtq+ssI8
3n+84utB70Le6Qe3QtcWblFPu95iJl2p/vQ4kOgEBwkYNFkgQ/9WXfdXanoSqwp1O/0ExM/N
oYDiMvgVddpL2Qm0efRmFvJ6uq64eRXSkpBj0yJJUWKDQT//r7IjWWojWd7fVxA+vYPHARgz
9oFD9SKprd6o7kaCS4cMMigMgkAixp6vf5lZvdSSJfsdbCAzu/bKyq2yZkJGcQ7Na+jmc3lN
cltIQdl6fiWbjK1uAoIwmg+UBY9vEb6yEVIx+EzyLE5LX6bDTLSd7AhLsy3wckpT4UjiI8tM
f/pLmeOgCU1ETqvs4h2GP949/7N9/2v1tHr/+Ly6e9ls3+9W39dQzubu/Wa7X9/jenj/7eX7
O7VE5uvX7frx6GH1ercmR9y4VJT5Tb36vtluMDZq8++qC7rs5b+QtDNUvdsrIWEbJXhvFPPw
aQI9S4UJi4zL/QiEAQznbV7knrs4Iw1MZF8Ra1ozCNm68A4YroZhaNnkEz3pBNiMRqlvPM8Y
9Wj/EA8B0fY+HQYOd1cxXKB+/fWyfz66fX5dHz2/Hj2sH18oyNYghj5NjdvFBvjUhcciYoEu
aTUPk3KmX7GyEO4nqPiwQJdU6ibAEcYSDnqB03BvS4Sv8fOydKnnuqG3LwH0VIa0e3jbBz81
dDOF8iQtMT8c9HDKxeEUP52cnH7OmtRB5E3KA92ml/TT0HwVgn5wWn4/FE09A97vFIhN7YPy
y7dvj5vbv36sfx3d0sK9x7yfv5z1KivhlBNpOfo6UByGDIwllFElHDBwzav49NOnky/9dhJv
+weMHrld7dd3R/GWWokROP9s9g9HYrd7vt0QKlrtV06zwzBz54SBhTM4T8XpcVmk1xQp6O61
aVLBXLq7Kr5MrhxoDKUBT7rqexFQ0PvT891657YxCJnVF044F16PrCX3CZsMZmhR4Ix2KhdM
McWhmktsrbsUl4eqBiljIYW7VfPZMNx2ywQm3KibzF03eAl5cB+udg++QQU5z/l4lgl3Nyz5
Hl1l5g2LPh5qvdu7lcnw4yk7iYjwD8xy2XFe+7sgFfP49MA0KAKX30CF9clxlEycvk9ZJu9d
71l05hSRRQxdAiud3O7uyMos4nYMgs+POfDpp3MO/PHUpa5m4sRpIAC5IgD8SY83HsEfXWD2
0f0ePTxBMXWI66k8+cIdHYsSKnTdGJuXByPecuAt7kQCrNVTnvbgvAkShlqGZw4wSIsFZoXx
IkaTrrNuRRaD1sc5qwcKVEIsk7CGc1cKQt25iZi+T9SB55z2M3HDSEGVSCuhR2lZLJ3pnidv
6ICVpcpb4HyXcRFmw6nqHmf1oqAZ8MDHlHpqfTw/vWB0nim79+M0SQ2fS8/CbwoH9vnMXezp
jbtAADZzd+1NVUd9i+Rqe/f8dJS/PX1bv/Z3trjmibxK2rCUubtJIhlM++xKDKbjyfZQK5wn
cZdGok5CF+EAv1I++xijt8prB0vP+nECeY9QMrLdtwHrFboHCjU0nIxJaJTl/V3FyjFFna1k
PG6+va5AqXl9fttvtswxmCYBy14IzjENRHSHy5Bk3Z0djcrfaCRSm1AryUfiLlhEDdLgb9oy
Eh5uDsdtEN4fgyDmJjfxxckhkkN90eQZtpmWlHm4scNpZhc1WzAfiuo6y2I0zZBVB5PBag7a
EVk2QdrRVE1gki0/HX9pwxgNKEmIkScq7EQzM83D6jNGTFwhFsvoKJ50ir/7nH7j92rR4tWt
7yTJ7yhf5W5zv1WhorcP69sfoHVr4V/k0B3sLZ1Vy/CVW/jq4p3mdurw8bKWQu8Tb+Eq8kjI
69/WBmseH1qo6j+goD2Lv6lm9cEJfzAGfZFBkmOjKEBl0g9i6t3yaZLHQrYSsypqyxxDWo2W
BgnIM5ipT5v5Pno0j+u2qZO0clGTJI/gPwldgxJ0576M9O2AWcxjUGWzAN/KGS/lYIwAOrTD
rFyGM+VllvFE30ch6GvApg3QibUDwlYJuOzeCdukblqzgI+WgAaAIXkm7y1VJLBL4uCatwMb
JLzDoCMRcsEvOoU3R1KG54bUTfxZL5HNOpsEg/4xUmpx7IOW0f0NCyQqMm0URhRIDiiT9O9G
aFB8vMeG3yCXglPJFExuFKPtoUPzFXyS1iF3/QrkmLHmXzpUq1mDn7HUIM/wcLYUlHSY7hKY
o1/eINj+u11+PndgFJ1burSJOD9zgEJm+kCN0HoGu4gZrI6iAvbqVhGEXx1YZ/HpgGPf2umN
HiuvIQJAnLKY9CYTLGJ546EvPPAzFk7yp8N9dI/AcKhVRZiIOrmKYbCkkZVWVJQOayw/E2bM
Yw4qQFspRErv0Fg4RGSiJGeBHeqEOBFFsq3b8zNjCw+RUJMC44eRsMkH/4t2WixUYlIzOW9r
Pals4FBK9IXRVNNUjdBYg0oSqXwbBhcpm0xUc8yoS5Z3jjWVDajdusEmutSMldO0CMy/Rk6i
hYVgOIzGktKbthZGhxN5iQITF22VlQlwC20HJ8Ek0oMK6bGRKRyueg41Gnzq1EKkc22wERTF
ZVHrMDy+9YZr152sE9Z0wfRyCkFfXjfb/Q917+dpvbt3fXh0es8pTare+Q6MITu8lVlFpeNT
Likc1sNr6Bd/eykumySuL86GMexkMKeEM21dXeeCXoW21xVP4bzNN8g+WVCgVBlLCeRGfkH8
DP6BvBEUlRqCbpy9Yzcow5vH9V/7zVMnGu2I9FbBX92RVnV1WpIDwwjXJoytNIoDtipTj2dZ
I4oWQk74434awS4IZVKyhtA4Jx9B1qDRZBaH2uKcSBgwCjy++Hzy5VRfnyWwOLwwkZnv44Gm
SKUBko/fjPENcIzxhIXPbi/VJRB70eeLkZYZvhavbQ4LQ81rizy9tkdWsTkVQIeZCctGn+E/
nsP/6Ll0u50Wrb+93d+jJy7Z7vavb5jpQb/lhk8YodRNubVd4OAFVGN/cfzzhKPqEjqxJXTP
4VXocs/DGOV4s/OVu5iGoENfLN5Aho4joszwIoF3loYC0d3KHDRNUIkcX31MalBdkXYkIpz1
J77uV9qwADPgVjYUQ3D1HrpVMa1GbtpVrPHUP5pbs+Mq8NVecF2bdK/3UJjGdJHxgeqH2blM
A6cqBfF0XrJTRF8Xi9wTFEDoskjwETFPQu6xFtiunKqiCGQRCbxAoGRw6+si+BpbHh2LokoF
+xgQxlR0Y5jFWQqb0x7F38Exzhu6WMDiJ3vI+fHxsV37QOtJoW1RDU75ycRbK4UeVKFgZkxF
CTT2SwGjug9sNeqo4jxSXJYzk/T7RhV7Bd2c1sQgrEZdZW4jgBrdQu7NA5tKcvOi1QjK0ZRh
HmNrvJ+rvLEU72C3uGPAKLVqW5lWA/V6LgxuYCGwZ6YE2cWDKKxr9VJYDMBHQSovRr4AkrGh
N1kV2wWO0UiEKBq8tcONgMInOaLd7/q59wyfRnRx7HyLadDPWiUnlU6ifYN2HKehEOJ5hDWX
hRl5MvIp6xyeqfchlIcRiY6K55fd+yPMY/b2oo7M2Wp7r0uVMNghBrwUhlZjgPECWaMZMxUS
BVEY4gtjP2MCz3bWwDzWoBswXV9cggwAkkBUaIYk6jaacZpS5/WHu6BC3kAYuHt7pFdRR+Zt
bWavskNYU84jGN0F0OUPrhpz7HE05nFcKgOZMrChp348oP67e9ls0XsPvXl6269/ruGX9f72
w4cP+os5eKmOipySWjFcyBjEfXzVZbxDp+kBiMAn56iIHIbUd6gQAfbRf57UIGLW8VI3/3Vr
bHzlwWQnPPlioTBwxBSLUujKcVfTojJu2ygotdDiInSZJC5dZtchvJ0BZR8VjyqNfV/jSJPz
hXsKxxy2GmYDo/i8Rr+xx6xpsFcN/4+1MewSunIDW7xn+rpWSsgRRnI2hsI1OfooYZkrY53b
/7kSD9wIBdp8P5SYdbfar45QvrpFA7OjKpFx2j5EOqB9/HIbUaHoVmZivItO4kveknADKiPm
80nMYLyDzTTLD0Fxi/MaJPHh2rgMG1bqU3sp1DyN+rxrFtCwobT5ll0Mwf4PQJBrKcMu8xUe
u6RsDez19ETT2LBc6bt/itj4suJ08D4jiNFda6dedjqYHLWv/oSGRs2KGl8bV1asPnkFv02A
IA+v+Xdz8YlD6oFm0SH5YdLkSlU8jJ2CzjHjaXoDw8TaCgyyXST1DO0+tnjToTO6kg0E6JKw
SPDeJs0PUoLwntdOIegbvraA2HFVrLamqLLQZKdkTbJz9tP7B0RvOGBwGkA56V5jdIallHGc
wY4BDZRtrVNeB+CuAU78664S+LwEZ62YhyjnzMPiqg1kMddvrGriM2VzSDrt1LBtUnx4R2EY
/AoT5zCvHYhh3MY2WSjXTxLgyhqvynHmFyHTzo8217mQVZ9u56vXuz2yeBRcQnynY3W/1kWU
eZP7biJ0/BCNYQVGUX9V1hQ+Wp10IpbGHnGcD0f8honCaVIDpPsbTGqay84IhYZ2IVF7NTQQ
IkGTkWwyXLW8dq+oYGUKGQulHB7/xJyBx8NGgL2CDsBaSTLOu1rpPKp5u5USJ9F1WsHs+kmy
JKcn7PwU3u+D/silY94vDcgAQ74O4Ml7UKQFvqzlpaK8AyCEt4cLg5MIWbVHjVZi0PmZ7q0z
ezuLl/a6t4ZD2bqVL4BNLdZRVWF5bSSCIr0GEHXBPQtA6ME7bX4VJHV2aIoAD5sk5a/7KBtS
Y+ec0bFL8vj48ZhWYAKMyU8h0SvqKNvW0PpuBBM2ibgAObWM51roat/hoqyc0e20Sa8hDeOD
8K6L82FQcnYlhcIYhBn6BoDPGmld0IUPDWkDOOpnmZCcqkdFTBKZgTAaW51wsx+oVkZxemgy
ugs33jvMalvHWShgPfnXJwUyJLUzFPBl4uPGgPNK8wdZvXMvRPl9/gdfVOt3zlABAA==

--+QahgC5+KEYLbs62--
