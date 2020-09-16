Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUFKRL5QKGQECG4F3IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 489EE26CF0A
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 00:44:34 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id j5sf1500qka.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 15:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600296273; cv=pass;
        d=google.com; s=arc-20160816;
        b=ma0vJTAoqvv32VeBaNyI1yhnIktl9QbDg4PI05I9UlzvbIGPONes68tY7V71XZh3gV
         nYhN1Y4x9tlglcjZ2/CezXAjG4md0jmTDVDzEnOkjCN8uwWGRFPaX/PUtC/T0LqKSIq2
         jvu89uXR1njHeVWQSNSDU4QWL08eObvmQQ//t/8lFdUxN8NTgZCJRYJIBKL8IXNF//G7
         sl3h78XLrkvX6vquDIg7EddWQPhIFVwkt1PBwpKdJ/Wqp4fRqiHr2/lTm7EkAdDPjfmS
         Xhaeoo9o8oRxInqeXzz1oRFrmH3NNtwHhbTJKXPHMcp7vmoa+12hh2SsoYewW9s/UeHi
         YFGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OSANV7t4sOAgF6DvSKkOkIOOLAV0sXj722LeN6Naidw=;
        b=OQPuGqYSY80aJH9JkHGEdZg9XPtTb6KB3ecWseo1NQYpHOoDqZcvUIru2P+DHLNEDn
         ZOnv3o4OoxqKt7o8UdpLqYCJv9bavE+jumhnwULXdM6MGf+5FT/G4yksj9s5yztYWPeO
         BpP4kIRCX7x5PnFnhmmBdciW833R4094YvUE4Ny9CAvtM0u0eytNQr+P2oaODbcfmT6z
         bOj1MXO7nYFHMZDFlf37ra51L8F9ccyU38/YPLXQUOagFOpbStUWJopoRq4XwwMpw/Gy
         IjPEv+WixP3Bqn2dv3ER6ER/wRH2VosQq7P+46oArdhJb+dO+l6xx8Y4FAfn0Q+HWjFl
         QAFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OSANV7t4sOAgF6DvSKkOkIOOLAV0sXj722LeN6Naidw=;
        b=AqpN2PT4suOxV13JNJDjFN0LGuqHaRyY4XV4hGvA0qvNNZsdlk4XOWiPY4Zo0AhztL
         d0R3C44BVNlqzooKIpL3yq1ge9OCXEwKyZ2jA8Q0Zd4Vq/Ei5rfA+zRkQbJUFbl6/q/Y
         XmaJDcnRylge5vjCGNIYwLHlJ96qnXm8Qj/TQABlPMJO0HvSCV5UW1FwRnf26j1V1ghw
         i4NVtq3EEEzKWvLYV5kyINX5wpIcvdAM8XyzQUgN6GWAk1q6M2VRX3yXsjPiI1wlTEAF
         VFPZEJ+r7ye83SCKPQV68Fs1C+xldJX7ahMCkDkvj9/eMIZcxPI3cHlRG6YPUWM+R3H5
         Bdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OSANV7t4sOAgF6DvSKkOkIOOLAV0sXj722LeN6Naidw=;
        b=O8/qe6HhaHaMBJZDRC6niwQUDjTbO/+lHsPB0zcwpGHnWn7F9SVJOblK0I3Vr48/mi
         k6CNY/D/3J/7cwU2mggEVWBX/qD+prAEb3z7OIg0upQFmseQ/Nl6pqKPwilZsopmEXyf
         CCHadApoOr7eH1/av8rwVErKoWgq7UCLqdfezKOBK7qmCaRP0g2C+etue2+J4zHv8/hO
         v1CEVBxlHZAVWlONGZFr90QTi9usyyfKmUagLJofkjLdNzqdvC5//EggrWrZ3KyHcqx1
         DJJUKylJPTuhsY20P/tZPpsm0+5+7spn5RPUAX7BG24ITG4IM9l17BLHtk6AiNfCpJQZ
         1D2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IZrbccBOCZ+fqoB4bssPMPeMyOohthPr3j477k9vjqb05rU/L
	4SoxsE5P9LDviazvMTdFmTw=
X-Google-Smtp-Source: ABdhPJzptIQf0lMvSlJ47K44PI0Dy288ho5US/k0pBwtbwz7AThWiEId4A0nlJGo56CKLsapVAwZsA==
X-Received: by 2002:a37:7d87:: with SMTP id y129mr26106406qkc.108.1600296273035;
        Wed, 16 Sep 2020 15:44:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls192177qkk.6.gmail; Wed, 16 Sep
 2020 15:44:32 -0700 (PDT)
X-Received: by 2002:a05:620a:ce3:: with SMTP id c3mr25703428qkj.103.1600296272563;
        Wed, 16 Sep 2020 15:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600296272; cv=none;
        d=google.com; s=arc-20160816;
        b=zZHG91YS7VX7MUH54tj5fIskrH/X4fJtXYL1dUs6IixSJP2Fnpq0zBoZax+mwvrDv6
         iiqNhb/o+86N2FVZeEUty3CXkd4YcQpGUIVLLMd9jaNUhE/FzrdwgI9K9ql6GXXqeKPN
         PuADqqqL94dLWDGrfMo8n1D3amIkWGEii4Wukc64xS68KABoq+77VmIPevIZ/O6IijO3
         4MbVgFxDND6iiBFCSMQNLcJSCaNlXz7hSxpNX3qUFNY5AlHQ1oOb2nURBD2FVGwtquyN
         3TqtzwBj8WczO4JZQZa7NN4gwCV4rgkZklFiicHo4ONUQjQSBhQmVuR7aDRqiL8IXyxO
         RnFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=kxRj6kmppG2Pu58YWvWR2x+o3x+SAZmd8qFPbUYSVDo=;
        b=FJjVLPlOU8EDJ9lOIWQm3rgZKFGOrq9BednSbqgQ9+Z8/wzj6qTkfKohAGqxRHBT19
         ps90uH5t+5iz2+uqxaHLG1iRwQarxElKKV4FCuy6DZGO1rpCmRf6H1hE7NHV1R8UMex4
         C9gxqOkcOv+2+ZWMatX0kyqBh1OX2GOoUGBjy4LrhXrENA0yO3qnfodmPWxQVlcyrCBP
         EM0F4RiY8SeajoSqPGysZX0YfduJmE3QJ9x9hCikfHZOuaPLXfG9w7NoJHUlTmmkHEn0
         yllNn0bzQHc104gG6/PZDsBOeXkaRp58uDqgz86FIRcdaLcomEDiBEk4LFNEKn5zZTE5
         Pcag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id v189si1004661qka.7.2020.09.16.15.44.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 15:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: lII8H6at8TuYrV0p2saUOjACq0lEtVaYNwhbfpiOTn5cgGfT1CJdq8AyESUgfFLpJH9P6wd0sz
 cjV4cULjMleg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="147264917"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; 
   d="gz'50?scan'50,208,50";a="147264917"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2020 15:44:31 -0700
IronPort-SDR: +6pyETZZr94DhehO76Is7DOSOGbum984p4VNXug4eNOqbqYi1nNFpDuDP0BfSoaBx/CziFvXbd
 GNTCOCfruerQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; 
   d="gz'50?scan'50,208,50";a="307213311"
Received: from lkp-server02.sh.intel.com (HELO bdcb92cf8b4e) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 16 Sep 2020 15:44:29 -0700
Received: from kbuild by bdcb92cf8b4e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kIgA8-0000I7-KV; Wed, 16 Sep 2020 22:44:28 +0000
Date: Thu, 17 Sep 2020 06:43:24 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:blkdev_get-cleanups 8/14]
 drivers/s390/block/dasd_genhd.c:108:10: warning: variable 'rc' is
 uninitialized when used here
Message-ID: <202009170614.QteFUK20%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git blkdev_get-cleanups
head:   9c92db9d949d10cec9181e91ce50b71ce18828e9
commit: aa1c62855420e84163249eb2c202c32703fc1de5 [8/14] dasd: cleanup dasd_scan_partitions
config: s390-randconfig-r014-20200916 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e3842d60351f986d77dfe0a94f76e4fd895f188)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout aa1c62855420e84163249eb2c202c32703fc1de5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/s390/block/dasd_genhd.c:25:
   In file included from drivers/s390/block/dasd_int.h:49:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from drivers/s390/block/dasd_genhd.c:25:
   In file included from drivers/s390/block/dasd_int.h:49:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from drivers/s390/block/dasd_genhd.c:25:
   In file included from drivers/s390/block/dasd_int.h:49:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from drivers/s390/block/dasd_genhd.c:25:
   In file included from drivers/s390/block/dasd_int.h:49:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/s390/block/dasd_genhd.c:25:
   In file included from drivers/s390/block/dasd_int.h:49:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
>> drivers/s390/block/dasd_genhd.c:108:10: warning: variable 'rc' is uninitialized when used here [-Wuninitialized]
                                 rc);
                                 ^~
   drivers/s390/block/dasd_int.h:96:8: note: expanded from macro 'DBF_DEV_EVENT'
                               d_data); \
                               ^~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                          ^~~~~~~~~~~
   drivers/s390/block/dasd_genhd.c:102:8: note: initialize the variable 'rc' to silence this warning
           int rc;
                 ^
                  = 0
   21 warnings generated.

git remote add hch-block git://git.infradead.org/users/hch/block.git
git fetch --no-tags hch-block blkdev_get-cleanups
git checkout aa1c62855420e84163249eb2c202c32703fc1de5
vim +/rc +108 drivers/s390/block/dasd_genhd.c

^1da177e4c3f415 Linus Torvalds    2005-04-16   95  
^1da177e4c3f415 Linus Torvalds    2005-04-16   96  /*
^1da177e4c3f415 Linus Torvalds    2005-04-16   97   * Trigger a partition detection.
^1da177e4c3f415 Linus Torvalds    2005-04-16   98   */
8e09f21574ea302 Stefan Weinhuber  2008-01-26   99  int dasd_scan_partitions(struct dasd_block *block)
^1da177e4c3f415 Linus Torvalds    2005-04-16  100  {
^1da177e4c3f415 Linus Torvalds    2005-04-16  101  	struct block_device *bdev;
a05e578055d7f9e Jarod Wilson      2015-05-06  102  	int rc;
^1da177e4c3f415 Linus Torvalds    2005-04-16  103  
aa1c62855420e84 Christoph Hellwig 2020-09-03  104  	bdev = blkdev_get_by_dev(disk_devt(block->gdp), FMODE_READ, NULL);
aa1c62855420e84 Christoph Hellwig 2020-09-03  105  	if (IS_ERR(bdev)) {
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  106  		DBF_DEV_EVENT(DBF_ERR, block->base,
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  107  			      "scan partitions error, blkdev_get returned %d",
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24 @108  			      rc);
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  109  		return -ENODEV;
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  110  	}
6029a06c88b9254 Ming Lei          2015-05-06  111  
f0b870df80bc70d Christoph Hellwig 2019-11-14  112  	mutex_lock(&bdev->bd_mutex);
f0b870df80bc70d Christoph Hellwig 2019-11-14  113  	rc = bdev_disk_changed(bdev, false);
f0b870df80bc70d Christoph Hellwig 2019-11-14  114  	mutex_unlock(&bdev->bd_mutex);
a05e578055d7f9e Jarod Wilson      2015-05-06  115  	if (rc)
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  116  		DBF_DEV_EVENT(DBF_ERR, block->base,
a05e578055d7f9e Jarod Wilson      2015-05-06  117  				"scan partitions error, rc %d", rc);
6ebdf1c79d09ad3 Stefan Haberland  2014-11-24  118  
^1da177e4c3f415 Linus Torvalds    2005-04-16  119  	/*
^1da177e4c3f415 Linus Torvalds    2005-04-16  120  	 * Since the matching blkdev_put call to the blkdev_get in
^1da177e4c3f415 Linus Torvalds    2005-04-16  121  	 * this function is not called before dasd_destroy_partitions
^1da177e4c3f415 Linus Torvalds    2005-04-16  122  	 * the offline open_count limit needs to be increased from
^1da177e4c3f415 Linus Torvalds    2005-04-16  123  	 * 0 to 1. This is done by setting device->bdev (see
^1da177e4c3f415 Linus Torvalds    2005-04-16  124  	 * dasd_generic_set_offline). As long as the partition
^1da177e4c3f415 Linus Torvalds    2005-04-16  125  	 * detection is running no offline should be allowed. That
^1da177e4c3f415 Linus Torvalds    2005-04-16  126  	 * is why the assignment to device->bdev is done AFTER
^1da177e4c3f415 Linus Torvalds    2005-04-16  127  	 * the BLKRRPART ioctl.
^1da177e4c3f415 Linus Torvalds    2005-04-16  128  	 */
8e09f21574ea302 Stefan Weinhuber  2008-01-26  129  	block->bdev = bdev;
^1da177e4c3f415 Linus Torvalds    2005-04-16  130  	return 0;
^1da177e4c3f415 Linus Torvalds    2005-04-16  131  }
^1da177e4c3f415 Linus Torvalds    2005-04-16  132  

:::::: The code at line 108 was first introduced by commit
:::::: 6ebdf1c79d09ad3d65c714a79db0a0c141a013ba s390/dasd: retry partition detection

:::::: TO: Stefan Haberland <stefan.haberland@de.ibm.com>
:::::: CC: Martin Schwidefsky <schwidefsky@de.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009170614.QteFUK20%25lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPqLYl8AAy5jb25maWcAjDzLduM2svt8hU5nk1kk7Ue30773eAGSoISIJNgAKNne4Di2
3NEdP/rIcjI9X3+rAD4AEJSdRcesKoBAoVBv6ueffp6R1/3z481+e3vz8PBj9m3ztNnd7Dd3
s/vtw+Z/ZxmfVVzNaMbUb0BcbJ9e//Px5fT8aPb5t/Pfjn7d3Z7Olpvd0+Zhlj4/3W+/vcLo
7fPTTz//lPIqZ3OdpnpFhWS80opeqosPtw83T99mf292L0A3Oz757ei3o9kv37b7//n4Ef59
3O52z7uPDw9/P+rvu+f/29zuZ+eb0y+fTu7Ojk4/H9+ffzm7+/33u/vN0c35p/vfzzaf7u++
nH++P/7y5V8furfOh9deHHXAIuthJ6efj8x/zjKZ1GlBqvnFjx6Ij/2Y45NgwIJITWSp51xx
Z5CP0LxRdaOieFYVrKIDiomves3FcoAkDSsyxUqqFUkKqiUXzlRqISjJYJqcwz9AInEo8P7n
2dwc5MPsZbN//T6cBquY0rRaaSKAH6xk6uL0BMi7tfGyZvAaRaWabV9mT897nKFnIE9J0bHj
w4cYWJPGZYZZv5akUA79gqyoXlJR0ULPr1k9kLuYBDAncVRxXZI45vJ6agSfQnyKI5oKmSGo
lDQDip5FzrpdDoV4s/pDBLiHQ/jL68OjeeR8vD2FQ9wNRcZmNCdNoYyEOGfVgRdcqoqU9OLD
L0/PTxu4af38ck3qyITySq5YnQ7cbQH4/1QV7gprLtmlLr82tKGRmdZEpQttsO6oVHApdUlL
Lq40UYqkiyjLGkkLlkTmJQ2oteD0iYBXGQQukxTFgA+g5prBjZ29vP758uNlv3kcrtmcVlSw
1FzodOFKOEIyXhJW+TDJyhiRXjAqcE1XA7abvJQMKScRo/fImghJ2zE9e9y1ZjRp5rn02bh5
ups93wdbDd9pdNRqxLMOnYKOWNIVrZTsWKe2j2ADYtxbXOsaRvGMpe5CK44YlhU0eswGHcUs
2HyhQfDNIkV8d6PVONIpKC1rBS+oYtLZoVe8aCpFxJUn2RZ5YFjKYVTHk7RuPqqbl3/P9rCc
2Q0s7WV/s3+Z3dzePr8+7bdP3wYurZiA0XWjSWrmYK7liiB1RRRbeTcokRmsg6egE5BQRbmH
VkUqomQUW0sW5ec7duLcZFgok7yABfLKnc4wRaTNTI6lRAEDNeCGTcODppcgOs6llh6FGROA
cHtmaCurEdQI1GQ0BleCpJE1AfeKAm1rySsfU1EK1pHO06RgUvm4nFTgOlycfRoDdUFJfnF8
NnDQTMbTBFk5fYrDArVxHMokenY+w3ultLR/OGpq2csy924qWy5g+uCq9c4CegW5lguWq4uT
IxeOclCSSwd/fDLcF1apJbgSOQ3mOD61ciJv/9rcvT5sdrP7zc3+dbd5MeB2UxFsr9hR58um
rsG5krpqSqITAq5f6l2p1m+DVRyffPH0kjcgsuV0LnhTS3cMWK00RpoUy5bcebF51jJdGE+k
heaECe1jhvuUS1hQla1ZpuI2EbSDMzZK0r62Zln85rd4kU34MS0+hyt3TUWMLTVYZiV9dclT
fGOLOzRvRlcsjenjFg8zoErz2GIxSZ0fnhhsYMyfAQvW0xDlOKDoF4FtBTU6wBqUJOcZHZ/K
2ytsUAAorlWBBROoiqoA1S1/QdNlzUE+0dYpLpzAwpyycc072Rq8tysJ0pJRsEcpUVHXUNCC
OP4Hyihw33iKwpFI80xKmE3yRqTU8SJFFjj6AOj8+0Ems2mnGHC+Q+yO4d68gfcLkGupYttK
OEfz6+s0uOW8Bj+BXVOdc4GOCPyvhLvt+54BmYQ/4j6wdXVdF7Nh2fGZ5xYDDRiulNbKhMmo
pB121/nw0Ju3QYxwtsirS/DaGcqYd9hzqkqwBLp11KK8thIRoeg0zwJUS+Gs0Lrv1rlyoEZh
h8+6KpkbHjqsTwg4p3njuo95o+hl8AiXI2CoBadlfZkunPlozd25JJtXpMgdgTUrdgHGQXUB
cgGK2mUgYbG4i3HdCGssBspsxWA/LRtjFxamTogQzBxRC1si7VUpxxDt+dU91DANL2jr2w1C
o8cBDNq5NQEF0UV1SPaHGwOhwBiUywUIGryIwWhIA43sCjZFs8y1VOaM8B7pPgAYFF16fPRp
5PG1GaV6s7t/3j3ePN1uZvTvzRO4jwSMeYoOJDjr1mNu5xmmj7o075xxmHBV2umsfx53ZTCe
JsBEN2EjC5J4N65okvgtK/gUgiQgG2JOu2OaJkPjip6jFnAlefkOwgURGfi5cZMvF02eF3BY
BF4OosPBIvCY6QbRUrQ0ZhDTYyxnqfHdA1uesyLuERkVZ2yVlYb2lPykVX9PSsefvoYgTGdu
+gedxgQFr8oYcfxrjDjBrHWOnXNEiqRL6wmPcF28ulhTCBojCE9jOcD+DmqzLU8T+v6lvT3I
YsPhIL9giB3XgoNywXHgFzvms06Z/towsZx8SwPsT1yHRJ6eH4UOAS/hhTnY7H7VzivmNuNY
wDUo5MVn7zYXsNEaszJd4Frvnm83Ly/Pu9n+x3cb7zlOuDu0NOu8Pj860jklqhHuIj2K8zcp
9PHR+Rs0x29Ncnx+5lIMHno3Pqa5+6GRETQ9jif+ulGnB7GfDmI/H1yNVo2bTsanToe4CzVw
PIF4pGix5wexyPkD+ONDg2GhB7CT7GsHx7nXIuPMa5Ex3p19SlzzZzX6OGU5gpfOZayECVec
SH3BVV00RjU5ZI2rtSqeUdkFsP6tlKUKL2qZhhBwXpchLBNk7V5hC1WgPyBgdhz4xTUc35Er
EQA5+Rw/M0CdTkiKnSd2QRbXF8dDqWRJL6mXHzACe8BktRnriiexxDL4wLytm/QjOpjmeX5g
SFedGI9DvzMeeVBjBlEXRj2LQ5rPqMZy8/i8+xEWYqy2NglZ8APBeOELQmXeo4dL7OLtoC4D
3grdWzQC/lqFb2qpZF2AQajLTNcKzedAhVmZenElcTFwY+TFJyf5BKHv0lrVaPJeVDq7ghgZ
DKUhci2+xxybUf/IYznhrxnjF4+u/YNrlzdVim6HvDg++TIodwk2M/Db04VM8T7EfJkUttQ4
1oGSrERaeN2Q/PZWZRaavT5+B9j378+7vVPuFEQudNaUtbtNj9bxt2iKmiXmWqbr0IGGwJ9l
F+3LV9vd/vXmYfvfoNoKVl/RFMJ4kwFuSMGujWOm5w2VnhGop13LtCwjSyJ1XRiHD0MOR346
MJfD+fRAzFbIpjSsdBwRvbiqIcbMY161LcKtvOPzNxP3XXFas8voNQ0YZhOGm4f7/eZl77go
ZpamWrMK87JFjoVQVw6GIV6V9WZ3+9d2v7nFa//r3eY7UENwMXv+ji97CaUj9XIzRjsGMMMD
bj1oT88trVsX5cAfIHQanH0aC9rNjDQHR51hVNNAKAzxMCaFUkz/B/oAwkBTulWs0gnW94Kl
LUPv0kIFVXGEhWqQwzzIbrQBvL3HmgrBhWbVHzRtwwmXzEsdDNU6M+PCs4cGCVECpncUmzfc
vd+d1w5G3FST2jJ6wAJUIzm40iy/6vJZYwIJ4m1VayTKlr3aUyblokSTjsqNstQlz9riecg3
QecQ96Moot5sjwouV8iGNkD31AUGxDg+BjepRztnq6lGTB2E6TA2knuAeE3PiVrAO2wIgcFn
FI2FiDdIIACyf424bwXCFgRGuR+DbqG2P2ECl/FmbHhNjgT9Plsw7ToeIkRtCuBdtLzIHPoY
W1t7oOHWe7GYoThY7xskErZKTf4cs1tvT4G3YeJSVeh/oLJYNHOK8Wp0yTxXOoN5rwIsSHXn
xdAUEwTO8fKsKUAdoJYBHWtEKLIVgzJOIrsO3w1DmHVZ+mDe8eILTBIkgADnI5NOEwkegWRz
2cCiqux0hCCB2mmP6zD29AQ8Ih1ht9nJCgL33u/pzFkENpygAuWkOh9YrJ385wFUONzyODrc
Q/XWA/09N+UVM839S6zLmoqrui9dz1O++vXPm5fN3ezfNtn2ffd8v32wNeuh2wDI2g0ceoEh
a+1fm/kcskQH3uTxH5vA0CVmVTTL9IbR7rOfwDFMMLtWzWRdZYkLOwqk2ssIWE6DGUmxaEli
VYiWpqkQPznYouOpgcF8TOFxHinSvkVrItTpKNn8ELrrIjpEg5mttS6ZlLbxoK2PaVaa7FS8
TacCfQD37KpMeDRfDtJbdlRLP0nuQvV6wZRJdjoFqE7lmAaAAnwFt8Ca+LEO1rdkKhkoma+t
1+xgsPKVyHkUWLBkDMe82lwwFa2gtSitjo9cH7kjwGxn/NQ7CvBduFITaVZTTS4zE+Aa8yT8
NayTYHNteZNhKwbcb6+VxcOnPPSz/Wl1+fXAsjEBGvX9DesxMVmTIny3bZbs1E6sUaS+2e23
eHlnCkJxvz5AwJMzLibJVljMi15FmXE5kDoRYc488BD8B2/0JGqUNcJdlF8xeB3B0DIz3ulS
xod2BSd6ADrG21QPOKwmB/IYQS6vEjhpR5w6RJJ/jQZH/vv6WJL4ZW4iq+PA4LRnImvsPhVX
/j2aotDJ4gDRG3O8bwK/L26SRJJRJsQlQ6V7cDGW4PByWprDCxqIRqV7l9Y07Rzks6F4B3py
zQPF5Io9kmkWGrJDLHQIDi/nLRYGRAdZuAZ1Sw/z0JK8Bz+5bIdkctU+zTQfLd0hRroUbyzp
LVaGVCNeNtWbN6SvQRHFMfoVpZPLMq6UHQzKmK8r1yaJtQTHcgJpljSBG7xfW/OGfZC6NhRG
odL/bG5f9zd/PmzMdw0zUwR28z4Jq/JSYcgxcu9jKPO+AYG+vHKYBCA/n9OSylSw2svCtQjw
lNJ4Kg6mwRA9qranduWmncubp5tvm8doNqrPLw8LNQ2JpnWkBjfOFCmc+GFIV19iHpnGUCv4
B8ObMKM9ogjjRVpaq4lpZj3G50QqPXfdNtN3t6S0xrH4DYQjZTbd3feUjjCjZLkPb1c7ie76
J3j3AYfb2Ocl2mMJZ5tlV9ZHwMrRJ0/k0lElHcvxguKlivt5JZsLEsammPjSQYnZ8JZkmdCq
L30NsghhXxrvrV7KWEa444I5bzgBM/PFp6NzpzYQyyPEJb2g4JcR8FNi6XBTOnMS1GSyTa/H
5Y7kIhDWQOTF795ROemLyFTXNedO3ug6abLB37o+zXnhJA2vTTgIzH4MIUY7XHj9MzkVAmMd
kxK054vdc7HWoqzrx8Akx9JL+oCCw2SOac520pvY4ghe8qIkIpZfqBW1ORniRdXT+mLQDW5d
cpmgFqBVl7c0Sqfa7P953v0bIvGxtsEqkTuDfQbmE2dLYF4u/Sesz7jMMzAcFIsQCy/8hsdI
m6iHVjwmbpe5cHQiPsFFmvMAZJrrHj2Q6aHIvWSUgcsm0Vho9CMqg7J3N75COxaOF4JZlsYC
Jru2RfA6iLYDCKtRtbh6HtNIV26Q0IJiC+pksUlXjkDl/vNlVpseWeoKowMMTpp54sRqa3VS
In1oF65pCDyV38zIMFGaYFqA6ukPFLqZ0Z6ZXPMkmXlDS0xUrFTYE62oSLhrHwBTV3X4rLNF
OgZi3+kYKogIzofVrA4PiNVzgT0dZXMZWZ+lwH6Hys3bIwvsusNvEHpMjDhgm79iVkqw5Mcx
oJNvlVcVvJMvmTvcrnKlmA9qsvHKEZ7zxj31FjTsM3YtULi8a2EAeC3cqLiFYc/AZHatI4Kb
ncY/+GN2PxOFXIPtt+UPCrXYoJnSGg34/FCyoqdJm8RNrndGucNffLh9/XN7+8Gfvcw+B2m+
/hhXZ/4lW521dw8/WYo1VxgS2w2Nakpnfh4Tt3oGhzHBnLNWWwX07zmXs+jBeAS93vM3VLI6
1jNtxxiFObpDBjW+WTAZSvKjB5FMeYLWwvSZiJ2kQVcZhADG4VZXNQ3eEH2tvRferqYvLC6g
STD7KcfMMMc7tTBJ52e6WEeXYHDgZ6QxuNe3bsWoLiIzAWODOmNZq9Q7MwMwc8ScX4NcNvhl
M5brnTYEmBo/p8a6mu8M4e2rVY0feEvJ8isPY4aAp2xKOmBYyjpo7QYaW6GLpzjrA0jQWlka
l1f8Fkd5CgqfdZbMNU/+SKuYd2gp2htvFa05D7zf7oon6eSCHMfbKaZGTHwFaejfWsG73iyy
aPLflkwHJYYl15KCCkXDEdeipnMPk8V8Gj/hSRLlOIDwAJJijHEAMf25qetYIaYgbhcmQsqa
ewEMwhJxcvYl3rBYnKj4lhLBson4aQVv1V+OTo5jTfkZTdHdcmTLQlrNHhlRFM6lhocTd0Ok
WPrxzMp0/FBExJzUk88D6wpSJ04j14JbP7Cf7Kzg65rEe3wYpRS3+DnONtNsFH7P1q0xdUoz
WSXxGymOP1rglV3gXIgpEURm4DWtVnLNlNufveo83scQYt1dZ/IeUXBeJ/FmOVsGiM3qIzpH
zvcOC1YtpwS6rIvABUOInkvuK1qAoUzE8wz22zNn+wspAsWoLYdAJCbGF6e6BCcf3AmgcQd/
FSomiOadqXSdRazNcQje0zLTc9yJa4BE7exT5ObDZte4XLr4tp5lzIFgPIqwNiLzmSfwI1V5
pf1PjJKvoe+KZVD7Mxt+hDzDJjLvc26zhqXCdozA588EB4eNg33jgVFpQ/fRnAHCDcedJMrE
JSM57E7UaUwr5nqZloNUSnAoSDkqLWJUJsJa+JqVJBaziHzJXB7aZ13QzBvegllVNzFD2KLn
tXuIyLzzOnzuam0Bl88jX346vGIxzzel9UJ7Rd8Ogr6yUldmRi9z1eGx98VVQzHJz51kEjzA
1Z4zULHeygFcpSw+Wi9SFhLLRVZ4R9tK5c1ulm83D/gt1OPj69P21vRJzn6BMf+a3W3+3t66
X3KYmVgZTl5Xn09PNTtJJ8T0XS/pTYMEz6ugowg4j7kfY7eyg/h+aCbhQmOS0cmXCQ7HUoTq
0XzuW7qF/pywggcWg6qF4rzotO+IsZnZ1Czbbf/2Srm2F88tBIcP7a93BF/LMZMFBtUT4QFi
iaxLbxoDiX0E0uNqvqYCy09RyffJsLbzLuLhq9lJQnDAY0ll3HopA16MftHEnenAvUWsVBNf
4CGS8dUkDizCNI6ASYh/FNGWCGr/VtoGBYDdPj/td88P+EMEd71UeHPnCv49nvjmAgnwt3i6
LtZp9l7ix3eXEYl82X57Wt/sNmY56TP8Ifsudn+KbK3rgtgf/5lcDcRIYUt21/V+4FW2RvX8
J3Bg+4DozXgpXWZ6msqu+OZugx90GvTA3henOd/fVkoyCpL5jr398fvJMY2QdD9y8uab+0aR
+Mn3UkGf7r4/b5/CteJHjebLvPinJ+7AfqqXf7b727/eIWdy3TprisYV9uHZ3MlSIuK3QZCa
Zf4300Pj/Pa2VYwzHhYLGtuJuKBF7XoWHlhjltb7qaqVKuvc05gdDPynJh5BK1JlBBtGPa0i
7ItyJso1EbYZPhvtIt/uHv9B8X54BknYDcvP16bdz60P9CBTzcnw90uGfWE9lfRvc/Y0jDI9
2z0/+pVGCcBUFUUYYkSGxFv52tMPN9c7gaa3D2O+rjjtMxybuzLBVhMZkJaArsREJt4SYCan
nUaPK6nDQZX6K5dO9ieWOsCpiLyq0m5C8zmCa8bt+A47+ft3/a9ZYQt1o7id50cMvWoKeCAJ
KGHlZb8FnXvFbfuMTtMIVpauN9sRuq0b+ImDXBBh5Sn3RQORuVF0pj86esgT99BId/L6Mvb8
ygVrv5bq53Dpej+Yg++VQsDi3yqeRj/S7/hXyejvJCgn+IKHPssXNP19v9n9P2dX1iS3jaTf
91f004QdMVoXWcU6HuaBxaOKal5NsC69MNpWz6jD3ZJC3Y61//1mAjwAMJP0riNkqTI/HMSR
ABKZiTdLzCHarzbSeI/JWjeQlLkaiYt4nNYAQNPLOCIEamQj2FVQ1vAE/4SlDW3uVBCC+sfj
17cXtSNOH/8yLf+gpH16D7PGtC+W5IJUJfQ8OM/rXxXXlOF1HpsR+fB3U10Y1TudRxWHTaxH
OxEiDg2lncjs4s3GLkquk3rrSzRPkeqD7kBd+dkvVZH9Er88vsE69eX5u7be6d0cJ+Yo+hiF
UdBJAo0Os7ixJnabHhVD8qLD8NTpmHnROkoZ34ScPawfN7x1twIljoDp3wUeoiKL6ooyWkAI
yom9n983MgBU45iVtbjuJHc1/tDEIWhWLsYNZw/K6yjFGLDjhs3gYBaa/YB0WJ39MfpUJ6lJ
hUFgz9yqoE4XUiDsRZTXugSbGENqn/r4/TsqUVoiGlop1ONv6PtrSxxcVuE7sSnx6oAXHtKj
dqKrZYM1Z/SCohdTmQnsYuEDSNkzV/HeDfIDbvAen78+fb6DPFtxTm0cZYlZ4Hm08h7ZIh1V
x/jmKS78mWJLgeZm9XgrFj6//f6h+PohwK8bnbqNTMIiOCzJ5ppvCaUtgS2jKVyQolw47fUj
j5DHjESZLAoC3IoffVju84M5BwgACNHAHvwXCbTL1hPvTddnJTkf/+cXWJIeYVf/Ir/p7t9q
/A8HGbvpZJZwePLTxD7gjnGBH9Obth6RXZkDbI9Ahd40Aoc/6hrm6iKPfNMgv/KFP3YryJ7f
fiMbAv8nkpmSYUNY0DH4hgZNxH2RY5xYWm+Gw01WIC3DsLr7h/rbhfNZdveqzLbIJU/CzLHy
IGNFd8tbX8R8xma1T3u+7483OIHQGqoi1pdH2FvhtpvZawP3vth/HKoPBLQvNJyVgWbsh+G3
dZ0EFNTZpf6NrDDsK1ChRpTfOthoyv3W4yY/pSn+oPx1Ol7TxVJuHZkp3XEIKw6VB6oohEBR
mJRL93ol6/2Jk5JdLqcsmgbgLRT/2XAW2mvrMf6yv4lomX1IfZC4n3ZhEtftREVwaR+VBMQ2
cK6zpngYjs8yRJXtjTcsQXim5LEMYYDHv6juoxqJXzDS/a8v3377fbwkWsVeS6OmYSDEPtVM
DkJfhOavhvDvl/QoYFpMcuO9T1RfstorRyMvMyBM1jq72ReLzHiGbp/sukpcxxrG/JxFmh6v
O1EAdbRE9iMHkxCnEkzTG+QZ5xPkHC8ZObUkM/b3IHqNA52iUxdbklP71cG8JNfIqPEV9bE6
TaeW00q7tdE4xm2ORkdbFy3ChNF6/fozPoj7oed61yYsC6PKGtm+iOmGxSnLblJsasnKo5/X
TDSeOokz2XP0aTAQu6UrVguHKAvW3LQQpwqONFGFhrjG8fVYNklKxVP0y1DstgvXT7Ur8ESk
7m6x0Jy2FcVdaBeSUS6KSjQ1cDyPYOyPzmZjuFp2HFnmbkFdUR6zYL30tBNOKJz11jVy4eSx
rsQdqZV6lNLVNyKMbVVsl8259HNmsxS49hKmfF6iEs9Aowg1ig7yztXOdi0xjQ5+cBuRM/+6
3m40I46WvlsG1/UIDefGZrs7lpEwHMxbbhQ5i4Vlv9H5s5g11r5wv3EWoyGoosg//fn4dpd8
fXv/8cerDOj49uXxB2ze31GdgvncvcBm/u4zTKLn7/hPLYI4HjD1uff/yGw8kNJEjO5Au3GN
dmE+nmrL4QWBr++w/c6gb/9x9+PpRb69Muqzc1H2WreBRDbiVH6aqi3KLw/0hI6CI7PlRgtF
Pw0wKi6390dIVYsrizj6ez/3G5+6ssaAzZHeH4bkUytyIJJuKR61knTazgpjE1L5SYiPQ5AB
PDGBJiMwuRFaUlKk1jLuXRxkDdqiVcivn2A4/P7Pu/fH70//vAvCDzCGfx7vD4S2nQqOlaLV
A63HVQTOMCTqqUw4K5EMctc0JwQO/BuvPBiNpoSkxeFA2/9ItgjQRArV6UaT1N0UMQ6NKkWZ
jLvAhMTBZCeBqMf/S4jVYQLf0mHoabKHvwiGvEEV5s2FYlYlVdVOP2B96H+ZzXaRsTL19Qnp
an03SFJjLMMsj/vnetgvFYxvLQSt5kD7/OpOYPaRO8FsB+Py0lzhPzmL+JKOpaCjdksu5LG7
MseYDgB9wvN99nZRsf1gunp+EmwmK4CA3Qxgt5oCZOfJL8jOp2yip6SVPwyHCUQVZIJWAar5
DsW7jIoQlnQpBPPoAlJ/GqPW/2nM9JeW9XIO4FoAnX2KxTEIR7NCke1FhUK02iBrzgMXDoC5
mOKHlwDm6hRChf2wxz4cn2gNrvreW8WEeZbihtvTtWvRdensnImhHbevBHGrrQQduEcglGQt
J3oLnRIZBVzH9zlLFfWBdTQxbcQt85bBFgQMHfJVgh5gPUqCxnG3E+U8pP6cPAyD5c77c2KO
YV12G9q0WCIu4cbZUQcElb+09bNHbpnNSKcy2y7Is5Pk9raKRklHa4sSHpsq9IMRDE9Y4jIm
R1kwqiiQ/fRkyXF93bN2XdqRs6alf0a6LalDr+keXwdwarAUE0hD7Yh+BY60st209cV05tRt
1vQhVa3EPEDsyyl2fBJUwBm0R79zlrvV3U/x84+nC/z5ebwtjZMquiTmXqyjNcWRlGk9Hyrm
akYkHdmy5h/ohbiRXThZ1V4tEdXKX9ayhWx7a9geFHlo7RAHHRWqF0gOVvBw4tby6EEG+GSs
RqQxNS0qpYNdxF0a+QE6RtCDomRZ5yvHQRsPxhZl71cR54tyYBw6oH6COfLDd+FmvWCeO6tP
dAWB3pxlp8nn8ZjU54hZE1p9YM5MhDzNmPir0jWBY8L+xcqxlx1Za3ZjHG4lmR1IyOW8MVv/
G59eCJAb5TwPlmM4HdFDEPlJWG82rkevVhJAi0JkwaYichcLuj8QcORZMAoKas8UYWRMw5Ea
e/4c5SEc0pdBYXjO17fyWNAK0yGRH/plbUXrViRUW1QoaGYyOESmsIhqZ+lw3spdohQ28QkU
Yih5RZoEBWkSZCStIzNchh9E3LaqVcDUYu4jMv+TfsNhsAzvVvi5dRyn4eZTiQN/6c4UB7Iv
rxOfLrAKaDr2fWFNm5Qbmil9X48MbtilDteIc715qorK9HeTlCbfb7dkvHgt8b4q/NAaufsV
vSvbBxnKYyYSHZx/aX0pNzrq5FDk9PsCmBmzkZVPodgaWD0hJffMD8bbaeN7c+qKR0vTXmeT
4yLwz8nJnPjHU47mnvDdDfP2mQ45z0P2B7oxdEzFYNLk4WTbBI+YViWIrzxGqUgM57WW1NT0
UO/ZdA/3bHqoDezZmsFm03xjwBpvRBIZ2ceYMQcMaZT0Ap7eatFrqpZxaEpyFYsgTaiLXz0V
urIYt5KpS5sSC+hu28ljnF+UndLIuAvYR+5s3aNP7cu5Q0NKSpOXGB8qh4UmQxttWwCMczoU
xcG8Zj2QgZm0JMeTf4kScn4lW9e7XmkW2msZNXZIcYfkhY1jdgbJgdYfAJ2ZqMmVSwIMphDk
cNmtuJoBg0vDmNrEmbOgR1JyoGXyR/pieGjzzK/OUWq0enbOOPki7hn3aXF/m1mkMyjFzwtj
HGfpddVwSrX06vHXpsAVl0l2fJmpTxJU5mi7F9ut50Ba2sT2Xnzablejqxk658KefPDtm9Vy
ZuWXKUWU0TMnu1WJ0Xrw21kwHRJHfprPFJf7dVvYIOIUiT68iO1y687sP+Cf+Pa0saMULjOc
ztfDzPCEf1ZFXmSG+MnjGQmcm9+UNFDO/03mbdVzX5rod+/nez4/w+JrrEMy/HQYkeGQtITF
vVFjwBcza14b/ivKD0lumQXA7htGH9ngtwi9T+Jk5hRTRrnAyPF6ttCnc+uwUjXqiR5Sf8nd
HTyk7E4S8rxGecOxH8gQBXpFTnjPmhm7uIcAb8+hacgsq2x2SFSmMX61Xqxm5kIV4YHJ2Aps
neWOOXojqy7oiVJtnfVurrAcrzFIyVFh2IOKZAk/g12IqZjH1cw+kREpI/3VDJ1RpHDShT/G
pBWM/gno6G8VzJ2sRZL6plQJdu5iSal+jVTG3ICf3LttwHJ2Mx0qMmGMgahMAlZ/D9id4zCn
HmSu5mSpKAJ02bjS+glRy+XC+Lw6w9gw8113yk2JUZa3DAYrt0k9MMaQAYZ2YPRBeULaemmV
uOVFCcc/Y6d8CZprerBm6ThtHR1PtSEyFWUmlZkiaYISNhEYqkhE9LfXlh5znOfZlPfws6mO
Sc6oDRN87zOFbiUDZmrZXpJPliWuojQXjxtwPWA5pyNQ5lJ65q0BlX9NeBHZYtIU2prDxGHI
2K0kZcnYvOBxdSLMJHRPmjAe6CVzc2gd0TRj1K9trA/OHDUNNHuHoNajdUADyoiNw3VQJg40
RXnpDfQHNIo1fjWpaxOWFqEQmgatpWjnpiC4qMfI9ee1pr5RtsLx29v7h7fnz093J7Hv7XCw
rZ6ePj99lh4uyOliovifH7+/P/3QbmWUcdxXGTb58oxBSX4ax0n5+e79GzT90937lw5FOMNc
uOuD7IpaP25rgG58jNuAvOdo40xQc8B8Fg1+NuU+HYedSL5+/+OdtZOSQVSMrRESZMgVokzF
jGOMl5sa1veKgyFwrFA+iqFiKN9bDk4GJPPrKrneK4fY3i3yBR9RfMYXmf/9aNi8tokKfOyD
KrHjYOwQMkCmBRNwgoJt2vVfzsJdTWNu/9qstybkY3HDWrya1OisiFbVorMVo0LrJy5IiEp5
H932hV8ZWueO1vghLcc0QOl52+3fAVH7swFS3+/pKjzUzoJ5O9TAbGYxrrOewYRtiKtqvfWm
ken9PWO73kNY3yIDIcc38whLD6wDf71y6GdtddB25cx0hZoRM9+WbZcuLV0MzHIGA1Jts/To
d3wHUEDbhwyAsnJcWuXaY/LoUjNXgz0G46uhPmSmOFEXF//CuPMMqFM+2/8FiB1a2Tt0WeY2
dXEKjkCZRl7r2fICv4Tt9IxY0ty18CdIMtdQmXTExk9pZ+kesL+FRGZo3ZnA32VJZwubWr9k
gk0TKNgxWHbJAyi4Tb0T1aFkWPNRjJMRLIKNrH0/OOaq6syUiN6/UUrqArRqyV43A+QP3Bhf
FMQCp1spM96VVQwRVYn5uJGiqwCKWOpE9fdB5nEmSgoR3PySMccp1Ht7fj6O0GVAzuJ6vfrU
DZTiyyBrr9ZX9QNCBbKwshzYuDcj9b/dkoohhBkVsYTI2LaMlY8CYBuqVXsCZb+40TKrLFmN
vJQkkbbolyzo56E9JCXW3VQ6iuz6wkK6Yes4YOMdZ0RxbcrSUPG1tBVXzdjzul3W8fHHZxnb
Bd817oy2uzNAZERClD/x/3jFaZzVJaMMUJoQRSo2nHwsCabolU/HllDc9preytguWbgZ94Jx
m00V2HmY/FJW7tWkqkVfp5+6juvzP/hZNL7ybQ8xVOMO3hnExlwdKb48/nj8DY8qI1evujae
DThTkhKfRdhtm7K+aRJHmfOyxNaF0vU0N8lUxqHG4DZ26O02VsCP58cX7SykPP6+ff2wxQfk
3xRbnsmI6FtK9jUnv6rThHnzoMV8FPQBqWWLJE4YM6wOEQT5lTledwhnnYgNZ9etQO1Q/Fj7
aLrGj7YBOgdr1RClmEXC+J1iVyU/PYAdi7RJy7kyJCrJ4zS6zkEDVOXhQ7YYhzKA8UFHI7WG
yCibXHmghD4ZDD1vDsI84xafCu4+B72ta1ITJSMedW9GvJpUoW63W9rx3IWFMmnt4xZ27eVL
j6RzO1QEQwbmtZb5QGuUb4g201pLu2DCxi8ps6Q5QlulbDjxbN/qnoa3R4i6HS/tS7q6EOuJ
MtA5SDjOZXwA7v0VqbAeEOPgqgMPH1efKSAI6ooxLMUNEgw7uorQBlztgXXP8TB0xjhW2ZDQ
XvOgLw7BMUJjY2wyahQE8Kc0zW+QlNC70paHuws09OO0uBoK5mqSR8xhSgfmp3PBHboQd64x
UGdVXOmTTZeVqJfLT6U72gBpOsnfrKVrrJWs86W70dxx1W+5sNm0WJgkx9Omk/zdTRlDlTgm
iiAt7aVT0ogZp7PPtesuyISKMzVhjxkKEzqkqMyiiPdUudCKsLGV7z5o7YoehXdfut3E2N2x
S9UsV7pBikb35CVwJ3AyOPtVoSYPz5n+PA3+ki9lqegJwwY/xwcWdTkKJPlQoEaShZ6zk/4i
UpKmN+t02NFklAuiJXp+GyqkC7Q52hzpc1jJsOokaulZp4IbjnVtMH7HqlA97B7OGnlUNx+T
Q7L9lKukHQFqKACBmJ2uXSdmf7y8P39/efoTqo2Fy9BEVA1god+rbSdkmaZRfohGmVqnroGq
CrTIaR2slou1oYZsWWXg77wVra8xMbSvTIepIvL5mJabpdegTEO9Dyebw8y/jWKJu1CmDHW0
fh161n/5z7cfz+9fXt+spk0PxT6pzZZDYhnEdvMoMu0CY5XRl9tv9jEKonXJUAZ3UE+gf/n2
9j4TkFWVnzjeklZs9vw1rdTr+dcJfhZuPFpJ2bLRlJnlJ9vFBFMwigtklklypZUWcqGSNib0
XlbypVEKDPUTCxGJ8Lwd33LAXy/pvUfL3q3pYwCyz4xVf8uDNZQWNn+9vT+93v2K4THb+Gs/
vcJIePnr7un116fPeF31S4v6ACcoDMz2sz0mAhSGrKYaEWEkkkMuo9ROxsKysYzLIMImyyt4
Ja3s68Cfr4dIslHQYY3NhK6O/oQV4CucLQDzi5pZj+31HjOjar8QDWwNR1kV71+UGGrz0TpJ
Dz3NznDrc6wQ4zorNR727UltOAzjDkt2EAa/5YOt9BCUVTOQkSZU+yjb8ytZGh6B0lcWaG2s
TXpffZlDCObGXJQZZehw1IMxHKWb/LAWK7WVSKzodAP55RkDdmgR9tFPHlZo7a2Z0nC3h5/s
I6J5XUp4Wy78sytgvIBjPkGaoFnevTwVGCV2LKlXITntwt4X9B8Myfv4/u3HeD2pS6gGBqOi
IptDlR1vu4VsrYCw+oV3a4yAF6zcS1f6zffj588ydC3MOVnw23/rs2NcH606SQ5HOSpMLH6v
8WZGS5Av/GKcp/bBFM9xO0QRdy97aKc6HOK2oNJybOMrdHsxFc3u9fH7d5C6MhkhMmS6DWym
ZehlcuxKiNL08PypaIMSEF78ktaDS3Zc418Lh16xJKSLNT0pahWyYsW55B/TC31xJbnSIvJM
i2oJyPbbtdjQi6fqBz/zvdCFEVHs6RVcwXiNXssvpgq5iYA560r+eEWxejQLm9jewZgv41Jj
p1/rJfXpz+8wsagxNXUL3wJyxnFUdiG+wzDRSfIil7GqGgCMA5PSd+OOn7TuHtgb47ahpcdb
b8Mmq8skcLfOQjfxIVpLzdA4pFqx64Mxt3/wYKbt9/WWUfG2n5A00uOIub7vQJFCufQ+VqKq
MFi6tsGk9paC/QHGADgc4ETl1/pFkOo6kOYn41nAC6WBU8+z+GZ8cGkyHJSUnkrhYSNnGulp
ZH4XaIPwnzWnPNbBcCx1dx51IaOj2ty4ak1M9TFMkYqY8tmqIhmHJytC7bjdJjN5g8YZtYw6
k/0UcSrL9Db+BkVnNx4GSMY31IZDK/L9MMCX6mAJMt5vls8cyPRk2+Be6IBDBETRYk0f5Npc
m+DiLhz6NNVBQuFumIAcBmS6IAmhT34dJI0OBWzhl0RjdRCx1590a78TiYPCSrpOWMQu+f7B
xfhALEMqiVhmWDenMvSh9W3rvA4JwtfZWLb2HIiaG90XAWS70y+WO0ZabjfuxnSFVBxmfzTk
KJuFSpnWy7VHCZoOEEa1fOBB1ny19gxlUweCRlo5HrU+GAhdS6kzXG9DMzZLjynOmy3Og0bU
Q6y1wyXbL1cb6zFI2TMH/3SIlOhaTTVIVe9WHlmtUyCcxYJxRu4qFu52O4+6u++kgHZbAoTu
pHgkLIXzx3fYnlAb3D7YZbhZOUykGx1C71gGSOYsGNMvE0PLEhNDL78mhrZVMzDL+fo4m80c
Zucy83XA1NA+fwczVx/ArLmLXA3DmE+amJl2Fsu5XESwWc/16DWBoxq+657XVcG4XPT5lRFj
O9lD6ms5XWAA//OTCjcyjFNnCwzF2p3+PgzcOvN5iXcPpwEmZleLiTfOduHRrq86ZuvG9F3m
APKWG48JwNViDqnnbFlriB7jLuYwm/WCCdM3IKYHojqcMkbvHeiYHNcOo2ztGxnPnXb05jGq
3k5P1I/BarrCsB2qHHdmUODrPz7nFtxhpPifnl4Ks2Gt6wwccxOuYWDhnB6piHGZbZqBcacb
SWLmv23lMtbZJma6zrhZWC/W04VJkDMt6yVmPb0+IWY3PYIAsnQ2M6MVwx/PiQ2JWc7Web2e
GbESw5jTG5i/9WEzoywLyuXcAl4Ha+a57b7fM+ZOagBsZgEzwy+bWbIBMD0W0owLHzgA5irJ
+BxogP/l7FqaG8eR9H1/hU8b3RHbO3yIFHWYA0VSEst8FUHJcl0UblvlUrQteW05omt+/WQC
JAWACapmDxVlZSbxTAAJIPHltUJeG/Vgd1wTuFZI2F+71/oLZAw3wKrMeH2rKJi6V+YElJk4
481SNNEOYU7ylA0iXOuiUQODfrwJUGZ6RZ9ABnav421dVFFudg7sqrcIvBndlJXRFb37mq2a
K9M3SFwZniDhGkAtLxLRlTRGbk97yylPYJ4c78gkj+yJNd47IOPY12V8PIEYL3TOosk0/zWh
K8NKiM3dK3Mqaxo2vbIoszz3ryxvYRzZThAHV3dXbBo4V2SgpYJrBm0ROtb4woQiVzQdRFzn
6lJhQk/tBFZ5dGVta/LKvjIwuci4BnGR8aYDkckVFUORa1XOK88eL8smDf3AH7e8N43tXNko
bprAubK3vQvc6dQd33GgTGCCFJZkjLDDsozzCzLjjcNFxocLiGTTwDMh1itSvsF3VJLynelq
fOcmhBKDFF+pDEgDd2ETreKShM5nc9iNMJbOVSQqxijPgTm64VHiyBic93DPqu+fx0ceO3Qk
dt8i3oVRE8BGxvBECAWYOzWoYsc27CeqnB9OV55n2HDx78PGCabDYB6qEHrC7tAn3eTve5Fa
ZZHhDSzK8AdTlmFu4wLxzJva+R3ts8mz2VaOtTW/mVrgQ8rYdB/MGyUOZ5ZrLgOyPWc0By5C
j5OObdi792x6ILZs2zAtI3sZNgl6CsD+n420QWS77WG5WaZyfMMZHrJXKeyObN5kpMwK4dlD
lkZ0VZANuZtuSrMK2AYnNeSZHNiwZOlX5huuT5H9JSy+7aK8NKGOocxtkptKhuwg4EDgV/hm
DeB83zKXkR/Te4ZtVCswnZoO0C4CI4oiBAL6IPciYFgSeoFgMioQzKzRSgQzw3FzzzeYeRc+
bTlwfuObtjwdeyz1pFg49jw3j5A6aWgfCWTCbsODcWxuHfICWuY3njX2eeQ1nmF3xfm3gcGo
4tzCa3yDTYt8lkTjsz5LJ1N/e0Um9wxGG+fe3geg5AYM3PnWs64sPAzsOepOl/P4zbDythWo
DQYOcF1vu2tYZEJjQMGscmcjio13eAYHkTabLB/RjDDLDVE3mor5tuXRSoFMz+RnJJgG1x5e
KC4wMt6FgOHQoxdwbPOIwXpDy4wsnq2EZ9h0SbmMtC4KBAYP4F5gZmgnSWB8EQchmOINRnxz
l8HeeUQ/QQAR28YV+C6znak7LpPlrjcyCzSR6wWzkbb4mm9H+nyzDUYMlayMVkW4NECsc3Or
Tr+VRTjakHd5MBlZK4Ht2uOWCIp41jWR2czw1B6nu3KVg/U4tU3eRbIQmHcjE2ef0ogQa9As
Gpn6mnxhLsddFM/cCe2ZNLp7uPjKLNdZ653Up9wTje4sF4lFuk1AOcqsCZeSP/RFAB8OrsUr
U7bO5deYFxl8iM0qfMMpSRHFAWNoqQ3ngQxuhALfo7IJY8+dBdJD/Us9w5ljW9Q3nGNTnEVY
eK7nkTlxXhBYVF7qg58LPWXZzLU8Awt2rnZItwquQFPKg0ETcaikuY/J1sSha5eJqUSBUlCY
/pSeRy5SaLV6htlGkQr8CYVfpMn4ZN9xo88jqy0MUscnP4sqG5Y3+rvKm9g+XfO8CgLvSmFB
xN+SmVZfpzOHVBg0PkEFCQ66b0488qNqsf6G6NN0UasNKKdq79IyAdmwnDUjWSxbehwFm8yX
gR1nGc7MFKnAmYwPcy4zLagiwHLs2b7rGHi+4/oWPZKEXeNQPmm60JQcM5xnu6TqbNBvXsl3
aDd3U3uCD6MijM2xrvS3ykiOVlPXcFqzxgOpdcaSACWNInWYFmwVxuWdUUyUoi3B4HBq+f7w
9uPw+EG9WYjr4cucEGgXBIx+lZLJnL54f3jd3/z5+f37/r1FUFMOuxZzcrUjP+PfzR8e/3o5
PP843/z3TRbFQ/S8y2lBFO+iLGRsDPYRQ1Jl6XLVjIi2ZbqWcyc3aErpGLFcF0O0jlUaD9+r
AFFCOkjjixtlUyfFUo2zDXwNqqXTjUEyrXtq/4T5bf+IOBBYhsF7cJQPJxzP6VWhRbX8nLUn
7RYLjYpoSRppjXDFWtWS7DYt1DyiVVLX9zothV86sVyDoaq1BkZsCrOMwpzg3/DBoMAfIHUE
CQv50MbLsqhTMiwNCiQ5wyZQipdkiRYmhVO/maDKRB/l85TE3eDchRz2kFOysk7LNVOpkAMH
WdKo91qH3IVZIwdDR9omTe4YAnHr5V7e12GTGhyCUCDFRzVmrgFNBnlfwnlNoVkhr7lLi1VY
6PUrWAojodToWcTdq/XeNaEDCl5RbigXXM4sl4OYRzIdfxgQYnsR0rMdufU6n2dJFcaOGDzK
p8sZbCSNn96tkiRjgzGXh8s00kDqBD1DjHu1rfLwfgHznqYjdSJUXUuARw0oF42WRImIJsm9
JrzOmpRQv6JJVUFYjJJbva+qsMALHFBr0yCokibM7outmnqFgDdqYFKJbIJO5SIITVejyjO1
fFWdgnWp9z0LoV9p/DPB5mjnZj76WyJIpqE0DCPl6bUAIvQ3TN6JqRKQZ5Xp00Cdp3pKS0Rd
C1lqGm4sD+vmS3mvJiZTNWXlYzQ1jiCYXxhUePDFCoavAcuGsxErYuThKgqtceHbVYwy8vjs
lqZ52WhDYZsWeam20rekLnl1e8GOMhhg3+5jWO34SFL7h19M7lZr2iuVL36ZHsa1Q2MiluEL
eAFlH3AAhlSBbhjI9lBnErG3DMBqxKiWuyxtmizZJQWsiNKIRz5hriIZhtGuqVNavVFgnVXp
8F2zJAB/FqZXD8gPa5xWMQJ4FGu5G76oorTHJgYhDm2mwZ8hvfrx8+PwCA2dPfyk36MXZcUT
3EZJSt82Ipe72G5MT7dHctKSCWNTLNPmvhqz90voMnaXNqbbsJzEzQQDBXEbJbDLltKGxVWe
4bLz4fGvoVHYf7IuWLhI8B3XOpcBUVlVlzstTCwYRoJC5IBY4TfRBXYjJq7EuzybdJFDYoYN
Tiv0ha9Uxc4NDEdtnWDtzaiXPEVyx5cKGYwvZmKDoCzRPXXHF1HaBLgI8TWRQGSTJec1bkYK
MEMRbitCJKtkuGNAW2aIKY/fh4VrOd4svDS9IKOjlqvE4+W5RTnsrOnjzIuANyLAT6mpk4cL
19HKAkR/4miNi8SZsx00r3jxSvUSZ7fvzZWU8AZnQhA9Z5B6VnneFu+y8pyMC9IKBYFvaZXg
5fK2gxZt6eZXmb2Ub7gt4QL9OcNI18SO5hupFLpxvZk7qDAiYHvqxazCziJvZsuP7Ppu9P7W
iClz7UXm2rNhp7UszVlN01weA+DPl8Pxr9/s3/mUWS/nN62V/olvb6lV8ea3i+Xwu6b7c7So
8kFphi9RZW6ebaGxBx/hGba57cU9H6E3fR2b98Pz83B44rK5FFF0CbKAqxt2WsstYVpYlRSs
qCKWN7Eh+VUCFtw8CZuB2nYS/XHItUyiam3IJIzAEkxlyDiFrZ6XK6w4WYQwRe74xoO35OHt
jHgYHzdn0ZwX1Sj25++HF8SUeTwdvx+eb37DVj8/vD/vz7pe9K1bh7BjxIgZphaOwtzkIaTI
wf4kpRZYRUiEkDDUteKnOYWBG65jFZ0xjKIE3czSTAvp0ktwwMF0Hhb0LjdG5yc82mIDdQXW
fL3oQmpIwHX3RcRju0uYdXecqphk7eeGTIEFO8QNhjyHtZsueivGkmyBr6Op3U0rAgpcqYF8
JHob43UsCyGnOef1ZpvWEFLrr7dxymCLSJd/bQo7tyAN3LT+upvfV9wiaF/2Sj2NF2xdrG3i
4yFwZwtQmicFFQhpE1fKOVe6iMjIqJtVyZpdWjaZBPnCidpPnpHcBYJKhzUTPBaxVE+FxyGX
IA4FUSusoIoI6WJ/0sIiD3Q4Pzy+nz5O3883q59v+/c/NjfPn3swK+Vj4e4i9YroJXvYJt/T
ILKsCZcpj2bWEmAlSGIJF0n87q1qnSrmOa706bdkdzv/p2NNghGxPNzKkpZ0fyCEESh9RG1a
qZSFUhx3lVdF2VS+l5LIzkR5Ly0x6Cs/SYK0DS/8wHbopAMDzocsEYwlnbt0scO8yqCl0tKx
LGyPsVyEbBU5rv/Lor6ri6qCMFgD9T5NZhhen7cKEUakwdezme3nNpE0cKxgvFj846H+hkwU
dihMVwI4/mS0kA1YrUMtQzKhfJw8ockeTZ6SZPlOvCPnueuEzYC+yDxSKUOEf0lL29nR2yFJ
LE1rI1BNNxJRR1PHuqXMiFYm8reI4V0OiphXke8MmyWMv9rOfEAugNPsQsf2hj3Z8kqivpyV
08AUqoTtx1TCWThHX14WEnMKWCMUNQ5th6LnRCMAeU21DW6yv7pEhZh3bbpKr8+ggeMNGx6I
Q21E4o6o/K34H7HVTI2m3LY3UG7Vn1McDELPfJwfnjEamnbQFT4+7l/276fX/VnDZ9I4Qvr4
8HJ6Rji5p8Pz4YwYcqcjJDf4dkxOTqlj/3n44+nwvhcOS1qanWEVN1NXHyhqftdSE8k9vD08
gtjxcW+sSJ/lVBkI8Hs68WXoq+uJCbOZlwb+E2z283j+sf84KG1mlBEAIF3wO6jpz3/t3//n
Jn192z/xjCOy6LCld+Wi/mIKrVZwuBGELXz+ecM1AHUnjeQMkmkg63dLaKF1JDUyJcVzqvcf
pxfc4V/VqWuS/ck2oeyaLSb8G7qNY3h8ej8dnlT9FaTuu0VaJ3fwrw0ZcKn04g7jAYDFtWvK
Jsx2eATO/ulPhvwI40UJttujIC7ZblEtQ8SeuqS5LlLYnWCoPemglBu3ZV7Bvr5oFNBLwYIN
G31+SRjcKjNOc2oN5jzRl8Lp4+Hjr/2Z8uPQOJfkt2mG0CJQx3RBLQ2LNMliBMNVtr6rHE8m
0ZhmO4EIfZkC6mjb8jqskoyE7Mc0qrpEWH3l/OJrZgCFWJZZvEgNx7Li6GYXZYZLvDtWpQUJ
0RlxKE12+nwnIfTxBEfAoisUKPlchsLPblkdcfxKSSG6gO67Km38yVyBVqdylXo9TLN5SflY
pVDR9S6spB2YIF0ud4Qu4Gg+PN5w5k318LznRy83bLiDuiaq5sP3QAumZ9/tbnAf3Kzqcr1c
XUTKhZDS0PI72sWfBqkYVkAURe+qev96Ou/f3k+P1E1PneDNIHRMRK4/xMci0bfXj+dhx9dV
zpaSoxj+1JBtBU3awXc5KSn2NUZfIZygutEKnX98uoMVRfKjEgyowW9MwFiXR47Y/vvNB56d
fodeijXj4BVWVSCzU0RBKVNs8R0kuH8yfjbkCm+t99PD0+Pp1fQdyReL47b6x+J9v/94fADV
+np6T7+aErkmKo4S/zffmhIY8Djz6+fDCxTNWHaSf+m9SMSB5l9sDy+H49+DhC5zKoYa2kRr
UhGpj/t741/q+q5QVY7T8qLmAdWFESN+3ixPIHg8yQrdsmAa3SAQeJUlu7KIkzwsJNNdFqqS
GiFuwyJSwBgVEXTMYeGGcqCS5XoPckNOGA98k+iVGERmvdS3jZTcTyfJtokux8zJ32ewOowB
XoUwB3T8EsqnVi1jwcLZJFC2wy3HeAvU8hH+xVXfYagCVVN4irna0usmmE3dkMiS5Z5HbsBb
fnd7rdwBl7XkvpMqESwQmnW9WMie/hfaLppTovzqsnP9V/i3aDaglEpuz72TuMtL4Yo/5Ygz
0jdqsbpcGWpjL+LIIuyudfJUkwNyJ/5q2Eb1RvE2cyeebCVzggpAyYmyk35L0GAq89BWNQco
pkcz8zwCXeB3ARRidxw6alJx6BqeiMc5WK6WTyXCOTNp3CHBtrTGakQpdi7aggYeeqho/Nst
i2faz35z0ROjL7e2ZVMePXnkOq5SxzwPpxPPM8R9RK7v6x8EExLcFjgzz7O7uJIqVUsCSIan
WdsIuo8a0cDxlXMC1twGrnzegYR56Ck4zP+vHftla2vN7JoqDLCcmVIpoPiWv0sxNBlMsDVG
uKG0DORms636ZcrRBk3PKpNik2RllfRYpJRxv1XOngXSCaYoXZA1kTOZ2hoh8DTCTDoAxGcp
ru8qhJkvZ4TQWhNHOe4rwrUOOtT1Dw/kjYDC7SOrSwQsXnsrsCONxkCRFbDRzcK3LWNTtZbA
dsD/T89gFu+n4/kmOT6psTYECHQU6nGx1OSlj1uT8e0F7AnVNTyPJo6naOpFSuT5Y//KHaDY
/vihWBZhk4UwQa9ajzlpiuSM5Fs54MzzxJffX4nf6lwaRUycIV/qG341PMlgUdw+4pSGH6cp
SWIx0jrFZXVZuVL+rGLqPLT5NniM2QfF0tpB+PwfnloCP9yIwI48HWXrkhaQJ1rYD/ewP5c9
PWNV990w0SFTm7nVBGle22rtIZhQQ9DIB6E8pqnIs3wKNhcf8QXKcZw3mfjq9OJ5M5d2xgCe
P/MNk39clQ3emUhrGZtM5HPz3Hdc2T0JpgfPVucPL3DUuT+qJlMDckHDr2g8b0ovumLogwR9
+TzWkv2J79Pn6+vPdhsg+YJirIp1nt+DmbtMCq3nhO3O+WaOMJCVu/WBiLDNyNIPytY+/tn/
3+f++PizP/n8F7rwxDH7R5Vl3Y5UHG0su3gq/4gPH+f3w5+feNIrK++onAgz8OPhY/9HBmKw
F81Op7eb3yCf32++9+X4kMqhxEj5D7+8vFMaraEyRp5/vp8+Hk9ve2i6bkaUbLulTb7gW2xD
5iAutaTHF5o6UPNq7VrybqElkMN5eV+XBvuNswjzLW2WrmMp9om5cmKa2z+8nH9IS0BHfT/f
1A/n/U1+Oh7O6uqwSCYTa6KMQtey5WvIluLIBSHTlJhyMUQhPl8PT4fzT6o3wtxxbcpuileN
bD6s4ggKplhDq4aZANhWzdqhHvaydGpZipWAFB3ipauKXmwxN8CgOKOr3Ov+4ePzff+6hxX8
E5pBath5ntq+sobib1U3FtuSBVO5rTuKKnebb33FXtvs0ihH7FmLpupWPvJAO31r5Hl/q40Z
y/2Y0YvrSL2FKx5/r/cxsEDiL/GOubZmAa+3ttbsHStDfZNWqQzWDUu62wurmM1c9Uqc02bk
oJ6v7KmnbvuAEpC+Ernr2IF8NQ4EV72gzqE09HYEWL4BjghZdOyAZeWElWUpeQga1NmyKPeh
3m5gmTOzbOlVvspxAkUJkGYbVtMvLLQdm3aIqKva8sixlDW1J/sXZBvouEmkBJnYwvyiTSdI
kTamRRnarjoky6qB/iVjuoSIXY1MdQjbtgG+A1kTanaBDaDr2opegP6vNykzWRwRc00RAjhv
Su5jOlREaH5P3h5xQqARplNFEYA08cjo0mvm2YEjHQ5uoiJTW1pQXGnPtknyzLdk01pQpqp1
nfk2OTq+QbdA49vySqCOeeEe9vB83J/FJpqYDW6D2VS+9cTfSueHt9ZsZjhLaU9l8nBZmE4h
wiVMNdopROR6WvACddbj6dHLc5eVzu6h3fPICyaukaHPxR27zkH5iOm4c5yjGvG/tBC6H6pV
imFvpa5RBNuF6/HlcBz0jDTBE3wu0HlY3/yBV8PHJ7CZj3s191UtLt8uB3sSkwdir9dVI7GV
padBP+isLKtOwNRZGMFOSaQtO13Cdl06gr3CA/w9HJ8/X+Dvt9MHD+JHtcKviCu25tvpDCvh
gTi79Bx1PMfoykWetcHmZ6IuNLj5sUwATcDzTKBJVWYN4GI1A1IrMVkbaEXZoMnyataDUxiS
E5+I3cH7/gNtBNLgm1eWb+X0k7Z5XjkGWPI4W8FkRT1SjSvmyibDqrKkEZlGla3ZtFVmyz5t
4rdu32eurZ4n5czzTTigwHKppx7tNMIfuw8mF05Vs228iVz2VeVYvjKBfKtCMEloN55Bq1/s
siO6c5DarjPb/jv9fXhF0xfHwdPhQ7joEL3J7QoTAl2WxmGNrx6T3YY8Bp7bjnwogME25crW
C/QYMoEf1wvLAK68nbmmQDRbKKyBBelRbq64kLqW8+/Wnqy5cZzH9+9XpPK0W9UzkzhHp7cq
D5RE22rriij5yIvKnfZ0u6ZzVJzUN/39+gVIUeIBumer9mEmbQDiAZIgQAKgs0leXWRUCtRh
JI7y7//XdUeJ6N3jCxrr9qLTfM7Wn86uTe9OBTF53+Sgh147v40DmgZkr6ntyd+TxBLCRBuM
w96GDtZd5jwYwFqt/HQoaX138kA/HF/foUvHeE3Fsm7aJ1bQe5z7sTGTKxYv3JboiSgf0IsH
nxk7CQ7iojrORRP1Z760Ji0JcS/MutnqCEmTEoFUal3ONyfi/Yt6IXvs+PD06dx6Xy+K826B
meNaEU0QSfN4vtHPs3ZNWde8CDxbaNAl/6QwkcKmH8gBbJKxbBl4VRGopiLr0nx9k9+5EckW
WZ6ugat5WqXH21atWTe5KXJ8DJm2hC0qZFy4A1XMquOtYlU1Lwve5Ul+fR2QO0hYxjwr8di3
TtyHxLVEsUZ+EJh4yQ+tsHJwxnSD6kA6TOjApTfRTKc+vZiKpC7ThGzd4PBniP6oWCZpnhOr
KWHr3vt3XKoJM7LcyEclnZ/268Xz1cnb6/ZBblyuGBCNkbMFfqBDWFN2EeZJphBQcGe5uSFK
HsPS+wRgRdnWfc690r3g8cmGWED66EUKhIZ+aZfo53BaVM2YKerwAWboEcgxfW0wDp2LlI8k
k63BUrt8Vutv4mVFjKCkiuo0mVm52PtvpjXn97zHH7t8qzAQMS7binZDlLXUfJaa6VHKKQ2X
wGRq5QnTsI5N6UyxAwE+RksSCOpddun4Do1eyxns2mVEHH+LF6yzj58mxjkWAvsIzXHtttRD
275F5/lAVXlXVsbOh29DW9578Bv3tlAmCJGlueMtiqD+vVzn2XJr6tbw74LH9GyCsS0acmxz
Fe42GhO2Q5C609j/AEVCSjxL51wyVCxBqQRbsGK1oCePQE9FWzTydTMBRMhN6MLBjZjLzvSq
lIBWQP1lLct0UNisUqQw5nHmVC+RgsdtHQoulUSh7KESuWiLtJGP2xomxecoMZqBv9yIOKg4
j2IWz7mtvaTAP8CRXf8sEUa5oa59DnTLQOvm2N80rEkxQwRV+1rXPsoNgNy1ZUNFV61DbUNE
4ClmRJUFPnfXibhuqYwnSLJideGWGBqi2VRMLJ6VcQjSlRPTqWsAI1OsbiuMet80Z2KRkQ9q
mFRmdVGjxte4jughFr9cHEwU0Idxic9wVC3FUtPUbQH6G0zHTRcKJ1a0zlxUQCZg6jV0wXza
gX4QCmMu0kzxilr4E93bUYpPeq4e/aJbs6YxVBINJieVRh5dy5JI8TEgdVQx0js7LT6DGE3J
9Am6NgxhwEOD1E67rtHZPa1Ij3jaYNb4e9FQ5ys4fqZ6pn6DipeDZZ9YcGJC8TX6vtvrWMNU
phrYushhSTOO6bEXVvgvOsWiR9DGxRt7dgeGRb2pQswUcmrZU3oABhf2SBG1Kez/MPPTWcGa
FgbE5IGKvrci5/2A/GEDlRjphGuUwfwyNKxPT4A+l3kqJwLFOikjxwLlTwxjwawdatdG3zOz
/KoGcE+I4i4tKB4ovLOYFbABpc+ATfOmWxrHBQowcb6KG2OisLYpp8LeahXMAk3lzmsGVWP+
PT9Kn1zqJQxhxjaWNBxhmI0vrWEVdvDHEsAECctWDCyHaZllJZUP1PgmLRK+DpRX4HRdu4li
fbo1zBXJjkA5OQd2lpUfrx9vH747iWCFVANIJbOnVuTJb3WZ/5EsE6mKjZqYnr2i/ARmra0h
lFnKDe/veyAy8W0y1Xu6rpGuRZ1Kl+KPKWv+4Gv8f9HQ7ZhKwW5o1gK+c7aA5TQo/QGhI2Ti
MuEVpmO/vPhoSiv/Y+NYy1OeRqX2WPPVgc5h9/71+eRPqlsYLuPoPxK0CDjaSeQyl8af+40C
997YaNxSVp2kxJMnc1VKIPIEs0+mKt+9iYrnaZbU3LDEFrwuzCHXhnv/s8kru1MSMO4c9LWG
pJEb9BE8LJGEX9N73LydgfyLyCmQc3wSIK7BRDdk2JAZb5bOWNGkig1mMgf8M+qo+qTGH1LD
wMPcEbhxqQQqVGNATOPbUiaVcRTiCEP8vTROceVvKxeVgriMNZGXTnGX3bkHMQR3Jdsg9162
KdvGxYBZbGIf3bI76eeW86KR6W07zPYLhlpa3J7+tXt92v34/fn126nTAfwuT2d+RlybSGtj
GNvNjUlcl2XTFS7jcCNRSU5gi3ZwSSpYBL1ok8oI3xsJEofHCTCZlg8SR/ljQm/Q/xt0itLM
IgUKjfvTGyMVUmkssbaoq9j93c2E8GCYdgpz3RXc0md7bEj5iXk1d2RRD/rFwtVU9shQNaSm
CMdfyg6yMslJMMMNF9a6LJITaWps8rbC9NSBGged3/4myAaJHAo1ZUHCnB2HhYzqT5W1W8mf
lOKsEJpxxgTIhPVD7163p/vDMz6k8Nv5qYnWm1oHm5qxHE3MR8D8pDEfrwLf3FydBb65uZoE
MVdBTKhtVkJAB3MeKu062ALTCcfBXAa/CfLg+jqI+RQo7dPFdQgT5Ogn86bOxlyG6rn56PQH
NDGcHd1N4IPzSbB+QJ3bDWAiTlNLBho1UC5LJn5CN+yCBl+GqqEdtUwKOgmJSUFd2pt4660W
q4+UI4dFEGD/ubMEFmV609UErHX7nbMYdjIwgAM1Iz7mmPjULk3Bwepr69IeRYmpS9hVzXzE
A2ZTp1mWxi4LEDdjPEspD6yBAOzBBfUlKKCZkzrPpSjatAl2Pj3afzDHF6mY251pm+mNZZBn
dOq6tkhxylOGetmt7kwtzzqbVtEgu4f3V7zy97L7LfjGkNj4C6zIu5Zj4gn3PBbUAZGC0gfG
OBCCUT6jzY6oL4nWhjGbN088Am3PqNORnsAcI/jdJfOuhFZITYsuHqnkaUQaH6Eadvwk50Je
bTd1GlNWrr/FDd+u4P9SD5uX5UL4BFMCpjXoMKZb47sOPrpijTFzMpFj/GEFiidGJCf17fXV
1cW1Rs/ZEprF6oQXwEk8wUHzW2onMbPsJI/IHHC/hCkUgVoawSmfGMWzqJh9HAjKKh4VqetH
iuGoeseykBzm+5xnlXn+RKIVc07/OHzZP/3xfti9Pj5/3f32fffjZfd66nFSgHQoWvsKysF1
mLYFox+pK2KPuNfHiUEbKLiMfTxaJVvGSqv8J1XKg1tYqHhLjHdOLb89CxKLNIGJiubiHNZm
I24/HSOdwFpQa19mJbydXF1Trc6dWeCTNGVebsgLPU3BKuBxbk5HDyVbTfLNotB65vEWDZ94
OvQR2vFK6/gHWcmSKqWfRBmINiyn7odGtrIputmkCdllaXCVqwKXP3liS9yHDMDxSPjYpzLn
rGFOpjmzfnQ5ZwJNmyquwTxe356fmViUS3WbmafOCG7wOWV1gDE2DODFbEDRl7hAI1KayCDR
R2RDNaf7x+0pRSHnipizc7t9Jvr29PB9e259jZIeelyCVrGxP6w5S0gETJ+apebjKyZ0lC80
c5nY5DnHPcnZoJEIdueWd5zV2UaWo0lsrikDFJSZDl8w6zddJKdvdpekM0zPlmOi06PRC4es
x6N24iDH7e32FOP8vj7/++nDz+3j9sOP5+3Xl/3Th8P2zx1Q7r9+2D+97b6hVvPhsPuxf3r/
+8Phcfvw14e358fnn88fti8vW9gIXj98efnzVKlBC3mGc/J9+/p1Jx1LR3XoX+NzBCf7pz0G
E+3/s+1jD7UhHcsjNzzoBpkL0x8Fg87g/PMoFb4iYq9KAIK0jxegrRT0ihwoYM81qqHKQAqs
IuAJkWIybbX7G9m1Q5ViKhNQkO083KOnB80jjQ6zeAg+dnVRXfkaJqq8czPPWlAZRM6pQ//X
ny9vzycPz6+7k+fXE7XBG+MjiaGfMyvPlQWe+HBYwiTQJxWLOK3mpjriIPxP+u3LB/qktZVJ
eICRhMO5itfwYEtYqPGLqvKpF6bHji4Br3h9Up29OgC3D8kUyk2rT344nHMqdxK3+Nn0fHKT
t5mHKNqMBvpNr+Rfd7qpP4kHhiU950XslYLt05Hw1fuXH/uH3/7a/Tx5kLP1Gz4D+NObpLVg
XjmJP1N4bFm4AzSZh9nH4zoRjPgMRO6ST66uzq3nTJVP5fvbdwyUeNi+7b6e8CfZdgwr+ff+
7fsJOxyeH/YSlWzftl5n4jj3hyfOiYGP56BYsskZbJkbDK0L94LxWSpghP21xu/SJcGoOQPp
tdSiIpJR4mgHHPzmRjHVtCnlYqORzkGshpIpYnWLIq+VWb3yZlU5jYixqqCR9Lmxwq8b2rLV
y5dvVjWjLtL0epjrIfCXOWZYb1p/SNG5Y2DwfHv4HuJvbmZb0DIPgT4L104/bexSlaSjgHaH
N7+yOr6Y+GtSgj3oek3K4yhjCz6hhkFhjowy1NOcnyXp1F8AruWiR/aXUz9PLj325Yk/UHkK
k166lvv9r/OEWjwINs+sRzCYeRT1xcSntvXnEUgVAeArK5nzAL7wafMLnxB9N6JyRoxNM6vP
yYebevyqUjUr1WH/8t3yex3EjCDGCKBdQ3nXanzRRin5YR1T12nDbCpXmIrU66VG6MszQnaz
nGcZ+VTfQKHyyFqXbwbOnz8I9Ucs4Z7+1U3pfXIxZ/csIdggWCYYGULv7APUtzzwQueAr6tQ
HMgwkY4MQsOpvbFZlW6SWDVvnh9fMHTNNgQ0p6aZdSuvpfx96bHq5nJC1Oo4vXnIuS9H0Q9O
T+p6+/T1+fGkeH/8snvVKVF0uhR3xoq0i6uadJ3S/amjmX7Xg8D0EpzCUEJVYuLG1wsR4QE/
p2jfcAxiqjYeFvXFjlLqNUI1wWfwgNcaerj3A2ldzDyuD0jSWpCnCmkxdQ2VH/svr1swll6f
39/2T8ROmaVRL4EIOIgSrx2I6Pek4QnnIzQkTq094wXoEAmNGpTI4yUMZCSaEjII15sj6Md4
9nh+jORY9UHlZuzdqISSRMN+5k6pOeVQZx/YyFcbx1INZNVGWU8j2sgmW1+dfepiXveXF7yP
H7BuYBaxuEF/yCXisZRgjAGSfoTVLARektJFfZSmSxd6gxoPDDm+satcaqTPc3+t4stJTMDy
p7QfDvJJt8P+25MKt3z4vnv4a//0zYiCkq5D5lVQbfnR+nhxe2q43fR4vm4wCmjkWOjstSwS
Vm/c+qhzWFUwrB58/0w0waaNFHLt479UC7Xj4D9ghy4ySgtsnfRynWoJkgVFR83S5Lqr7qxg
5B7WRWCfgpyuqQsaDCVgNdAWM1vpweBSmh9RCuoXvoRhTFMd0Fnwpmub1HT40KhpWiSYWB/Y
E5mHyXFZJ6bAwkeVOZjmeYQvEY2JN9C5DR2g4rxax3PlaFRzS8WOweiELcMCnV/bFL5iHndp
03b2V7aZAD+HF8hMCSXhsHR5tLmxhYKBob37ehJWr0JTVFEAq8jdKTadP2JnV4gN5xgQW741
FBtGwGD+GBOnSMrc6DPRAlBdBuf+sWqEYoCcC79H4Ql7oa0Z3SuhP3UvARR8mjUxeQx8XxI1
I9Soeew+6ksk/SVJj5oUQS7BVM/W9wg2l52CdOsb2pejR8tA2CqQ6VORpIzMithjWW0dpYzQ
Zg5LJ/wdvjNhzIUeGsWfPZg928fOd7N7M2bdQESAmJAY1H5p+KUvKYgbaSZEGaewyyw59LFm
5ovyTGAiYqP4nGGAxggowHjohEJkvJiZd+YShwi8N8ebVtefFnF4l9413fWlJbgGd9tpiUGz
SNgWg6uCsTusnKfzkDLOh/dIkt2f2/cfb5gh4W3/7f35/XDyqM7Tt6+77QmmDfwfQ0mUt1/3
0g8TfWTQw/fcfPNN4wUeAkSbhnwR3qIySvoZKihwh2kTMeqRCSRhGWgN6EF7e2Nc+8i7rzTo
uyhmmZoKxk2XfB5iuP4fm1G1GGbWldOpvPugmlG1Xa3CK3X9d8aJ8CwrI/vXKPEN1xw74Cqr
294hZhS+2X3XMKMofNERdEqjqrySDzwNv8s0kcHBojEzrQsMli8zZ7rJ3q1YZvqKwKR0wkbR
caWYkeLbSKTi6BL2ZZhWziT05XX/9PaXSg3yuDt88z2GpJ6ykO+ZWEqEAqPrKW1lqXh02Mtn
GXpDDDcYH4MUdy2Ga1wOzOx1Wa+EgSLZFCxPYzcIyAJ3bgwCKOcRXuB2vK6Bjn6TAD+E/0AV
ikqhPu+ZG2TYcHyw/7H77W3/2Gt+B0n6oOCvPntVXb0x6cEwxKeNuXXmYmBFlaX0yYhBlKxY
PaVVlVkSYbBpWpEH27yQ1zF5iwdN6IAytnBaA+dULKp8wtKanxXIdMyREHiwHe/QZcFM0K5v
cyDAXP5pAWuCdJdWvRMqRhEDGXLWxIbodzGypRhdu3GZrAT8tC3UB1KadReTyGe4olxxtpCP
DIDQoYOW/ukM+Jf5/E6/OJPdl/dv8rmr9Onw9vqOeS3N2H02S2VUTH1nyJwROFzhqpG7Pfv7
nKLqX74iS1A4vHRpMSMKGjk2F4THQe0Fr5zQXa6p8AVJkGME/pHZOpQUuCIfduU2EqwP9sUN
yvJ+lzjnJz4BbUlRBY3wqZ1AIhJJgBEyR9BmA2jfR7S2JS05Vf7R4NvMxngmM5ikj8OGdmqV
o7+vHwozzwal/zRY0ZjevKR3fVUgEsr9maSRxZSrgj6HkMcPZSrKwjKkbTgMcR+sHaToXSi8
dnWWZajgdZkwjPu0tnSFKiMMZfZmbQ82NQGHB5oCfSOCIkgTyYSDIlwIenoe4bcmq+NWSr9f
1od6XdXqnBahzvUCXO+b5474zExlRrqQ9pMs53kGcs4t9ldwjF2Tmo1yJDy/Pjs7c3s60AaM
T4dq8EmZTn3mDlTS90bEpDN231fpNtMKRxEWsK0lPZIXidrljkkeVdoSujlrbB9QjfEh8lbT
9a0ekDVl0BnVgAk9IybW2IQj00o98SO9fEiqHq/8p2FPA42orPvg/2Cr+s0PrSrhTB/JpgWz
BLCDQGbYin/vP6Ww/hmvwuL6UWJjFLpguSn73vVVGmWfyxAxx6Rr7lmmpD8pn18OH04wF/z7
i9qy59unb6YiDDXH6C1VWiaoBe59c89tJEoHjD+0VgM+itLNW3SJBPuGHJ/VHSguoL4kZI4N
ubvgUVlbWakwj/ZGhQeAXvL1HZURc5uw1oSjUiugraVK2JgfRLt7EWW7w4D8WHBeOYeQ6iAU
/TjGrfC/Di/7J/TtgN48vr/t/t7BP3ZvD7///vt/GylBMXODLFu+CeoFSVZ1uSTzMyhEzVaq
iAJY6jRqIJUE2N3gyqgb0JUbvubebqNflfQ2bpp8tVIYENHlyg4E6GtaCSsUV0FlC53VJV2I
eeULkB4R7AxrSrShRMZDXyOn5VVbv4XSmpRsVAOjge6pAaE/9tfcjbU1+3+YEMPSkOGssNa1
9BysE5D0Eml2SRoH6FLZFngZDRNdHZMekawLtcX+mgK0FdiiBA8IHRVlfPJ1+7Y9QZ3vAa8M
POtQXjd4Y1Ah+EgLBD2PFVLL/EBEDyoRRSeVKrCfMV2ypzBa4ibQD7fWGMxZXjRgYQiPIaD7
UOKoX6Fx665m1JV6xuhRN2bZCEU6fKOwc9U8RPxiYiIJpv+RbycR5eI+KG3UQcRPzp0KcLLR
ZjBg+R0R3zvmWrU44oiIu94greVu7M8Olc0GlH0MRgl4T0Dr52VTZUpBarjOKkodzQO6iDdN
aZyyFTJHNvSvdrb7wZw+jp2BVTanafQRzlQv1jCyW6XNHE/ZXG2kR+dSSQYCvI1ySDDBhBw9
pATTo2i8QtBFYeMAseOqWGPyycpiW8rLszr3HUX55I6ktwwk5D0Ol4D+xD5bKjBDcliGYKOT
rfXK00fubkE9ob9JTj3BiOEDOLH1N+QscgabvpOVGvYRAuiWAB3/aBlSBfEJ9MCsYIqOnR2b
pwamH+lQjCJ+1YkCVNp5SQmCCHYEGBT5EHXG5QGFo0ZIOCtArjIZeSE/cBOouuQw9Y4SRhmq
NctOvnvJyPg5vRiGh5w0uzYFLAv/eac5XmL3WeuPcKOfpUFbYJyD4x20JVzHmU9fUnvVsUxe
1CBj6HnWD2TDQGRX4QAts+YQsb+mEo65i+x7MYOFuJq8DUQwzB5CnZwa9qLMF5v2J1v2Qa4K
Qu1pvP3wcPHpjNoQbd3GX8byceyqwbw6hsyR0UPqzN5UrpxKzIuCZnd4Q4ULbYcY3wnefjPe
WZBRcmZnVNhc/+o3wZIxrG5ksILxteSjx16FleI5kM+PNFzT0ngJreANrh+ScKRykt5Z4oOl
GR6UELUjSp1IaZ3b+gpm84Lr4Gp6RiOVfHFC6g6hKqaoGtulW80dTk+PTcRFXJpO9MqqBlsa
wP2MqqweID29vGDXk1uCMpWk/yBRMcxoV5E/Oq+8eCJ1S/W/YQSZZwR9AQA=

--82I3+IH0IqGh5yIs--
