Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRO3QOCAMGQEAAMUKWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EE63677EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 05:30:14 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id h6-20020a0561220b66b02901e488cc9b21sf3602953vkf.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 20:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619062214; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4X8w0KiD9tCU29JcQKiYytQTVyiq+Mj+N0D8a9xBR7D/CeOQ8IkTa/doPPOG0emJU
         2d7axOzmxKnylPUd1EpoMEB6MMx0CiOCV075mMHSOkEwX66MPO29BDBI62FKGE4T0Act
         0Wru2sKTRg06ul8y+l6IFUSQLWK+HF6x9ou2pV0kXRbUgfRebkG0xI06xsc7IBwX4OpQ
         KWGAZbN6G+tq4Ul5bEBGm+a207t8DMPV771Tt1ofs921mmjoywHViBlBsT+NXAk/2MdP
         ULTkD0/iRxuzWfYzmlI+95j5lGgZEcDF1sXyhZGF1pR5Zg0oErScxsbQUczqvuFMlaPh
         I4jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WSkAiq4Etm2TfG8/zOnkH9oe1K8HMMbI0Lo712aNABc=;
        b=SXG3ITJgKDJ65feWl8A0FPfKcBcToMBAZnhYIij3ReZs0a3H1OWo9Aj3QN8s/bAnWH
         KPI0t9VhBMZkJ9zYDIEIl2zqa+V+tGcXQ0IQu+aJM9FEv/IbCzh/lIntfYkMKyoorjbY
         k1sdx1L46ZTr2Q3AwwA5jJevgOjl7EfWcejEgCyCIiY10SIcLVecqCAmZzyNltGJE9DU
         uqBOP8ry3cvyrURlzzlm92qP1Z52LBMiBLGUZ0BOUlldl0FFomFhdIHMZ2y54aHn7Xhi
         9Jx83Rpi3UbWkhgwhKiD0x3gMAZOqG80hEFhhBIa6Qd7oa99zyqV9U0q1RBoS3xRrd5l
         l8ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WSkAiq4Etm2TfG8/zOnkH9oe1K8HMMbI0Lo712aNABc=;
        b=VXKLt2HzIYiZ9VfBF/I3pOeC5XRrEaZTuez+Df+TfXWQl6cbxd0B/NxGdbO8fVeOUO
         K1xQJYAGZcRv3ZI608tATfCPuH/MzqCaH14wB04Qen+9yJhRRIn7l30uJBO0RslXxUIf
         WCc1oymIAs6SZIGcQ0pHCjvstp2rxATMHKmuR+uA0M+ix2ahF5oR6FYq4xvLOL4Q9nYJ
         sF9DFwoK/jcwBzHMYuW7jWFyGwqKqWx5PeJcElGs1216lEFT/tn2aVmtcMdtwpNAkrSA
         z8GTmGKSO4jPwMIfbPL3+k7MP3beXsnjBjOqtr+ItXPZrLn/T8zf21gF5jPDPucoxiac
         KLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WSkAiq4Etm2TfG8/zOnkH9oe1K8HMMbI0Lo712aNABc=;
        b=FOTXFvPbOtWO6pADtUNeR20y1UPRD4Cf4QvFnWIL9eYMan0eUAm3Wdh9Pq/GZIhn0C
         hNLmKEZSN4FiyD22bSygn17AhrXkDFv0Ixv0XME9tjJJI9UiHXY3rVIgXMAf9Rn4O7ID
         5xbAUi1mUxa6ywTZG3150qXzKu/lsKn4F6Z4jrwfkRWReoHv/0eNSi1OTHrCj/JUFt4C
         jZTG8/n9l1nHgQJulCqrnvYLoTnVMYaVigYVVmw1SlZGqvftcRmo9XtG/6l5L/ZY7lub
         YKcHHBX44MqZZcSpgZZ9dLNymT68jTS8y6vap1UDVQ5LL2RQsB/qAoLncTlnbRr8SSdP
         IE8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gultYcHiZHZAGzCOh1J3jL4tYDlAdh1+mNQp/+ef/U+1JmzpZ
	rgoPJBi686i1TfSk7Gr2XZM=
X-Google-Smtp-Source: ABdhPJx+KSTxTfq3RRU593HqT8xCtJ/IAaGTqUGXwkLCAkdlUrQo/486FyKfJPHJmqIvO7V2p+SrLw==
X-Received: by 2002:a05:6102:107:: with SMTP id z7mr969193vsq.51.1619062213801;
        Wed, 21 Apr 2021 20:30:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4405:: with SMTP id m5ls415050uam.4.gmail; Wed, 21 Apr
 2021 20:30:13 -0700 (PDT)
X-Received: by 2002:ab0:3a6:: with SMTP id 35mr774821uau.29.1619062213166;
        Wed, 21 Apr 2021 20:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619062213; cv=none;
        d=google.com; s=arc-20160816;
        b=gHb6pOTGeVv/1Uc5VA+VfVG9s/+mYnft5pxaZmAMqW3mKfMbxw1sQE3sCQ9+5Dn9Fv
         /9JtP5LAtOkXpcXqs92GAAPMbj4CY70m6rYnB06HLtu4GmyUaPILDqJhsRLgaYW0w3vG
         Wwact5aepOymHqKshfgoXTaXzd22r6SFri/zKiN2EfTu6ZztD4jtDOlB8BA9HFIXPObC
         F9w2T8Dk10JP0EA9dKqil0+y5KThUx0M41WbPrWvmxXgUcPs+9Hzqp+61u2glCgBp7I2
         rvp7B3bV49Ayinjg8112g0LQlTVZ4qAR3lgJdy60+MjIjOmfyWbYa4U1ej605U6d1B/i
         sMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=0TYudldLJooMl9YnGH0lU9ZGDN7n5/Y03nrBPh0Xl9E=;
        b=Be6+uDyBtt589iPlE1VwS6r3yKZU880+DgVseGZocAP1ZCzZYxUXdrY1TYRWy+Xek5
         1ILfodbWW+y0Hyt6BlNoOeaGhbc38vb0I5brb33MOKdecvZ7wONBtOhGFO1dVGtwf9Q1
         NFJd3MGus2chOxTslKKJSEE1L4f9SJ35meOZ1W8iZ2BwTYZkEllcA6AkwonsBeQ4dB9L
         530e2bk7l6b4SbCAY1bGEEejqek1msUi5ZXhvgH5D0rk+Ra5aSZ8Lu90ZHObBmeUSeEa
         Mc8VhULkg468KwZO5fjahw1E2m0I8Ni36RFOz2BWm6V8VPAt/j1DGNa/RytLY5QVIWQO
         zHVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id p12si405281vsm.0.2021.04.21.20.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 20:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: hZ5TKwt0kjpRMBHETQI+hoJmT6uqpN7XzYPAIhnW538vlZ0NN4hLWNwx0T240oNfJ5dkmlMFkj
 uqzCNepWM9FQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="257131640"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="257131640"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 20:30:11 -0700
IronPort-SDR: mqxu735tMnnN2Abpdg6bcts33waAQHcUoZAvR/HzS0aiJlBM7hJfHLLVgiBVEs/wbsaQRCeaJD
 c+W7zkin8fAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="453131376"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2021 20:30:09 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZQ2a-0003xI-IZ; Thu, 22 Apr 2021 03:30:08 +0000
Date: Thu, 22 Apr 2021 11:29:52 +0800
From: kernel test robot <lkp@intel.com>
To: Hannes Reinecke <hare@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hare-scsi-devel:scsi-result-rework 135/146]
 drivers/scsi/scsi_debug.c:1205:1: error: function definition is not allowed
 here
Message-ID: <202104221144.mlmFkzpH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/hare/scsi-devel.git scsi-result-rework
head:   19720ea7b22b443a182646eef7edc36e32e7b515
commit: 56cfbbc9742fcafa726599c74f2d2f5c774b0557 [135/146] scsi_debug: set hostbyte before returning the result
config: s390-randconfig-r011-20210421 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d87b9b81ccb95217181ce75515c6c68bbb408ca4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/hare/scsi-devel.git/commit/?id=56cfbbc9742fcafa726599c74f2d2f5c774b0557
        git remote add hare-scsi-devel https://git.kernel.org/pub/scm/linux/kernel/git/hare/scsi-devel.git
        git fetch --no-tags hare-scsi-devel scsi-result-rework
        git checkout 56cfbbc9742fcafa726599c74f2d2f5c774b0557
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
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
>> drivers/scsi/scsi_debug.c:1205:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1228:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1319:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1326:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1361:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1448:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1463:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1510:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1524:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1543:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1565:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1734:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1787:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1830:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1843:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1862:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1901:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:1979:1: error: function definition is not allowed here
   {
   ^
   drivers/scsi/scsi_debug.c:2130:1: error: function definition is not allowed here
   {
   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 warnings and 20 errors generated.


vim +1205 drivers/scsi/scsi_debug.c

fb0cc8d1c1881c Douglas Gilbert   2016-05-31  1199  
fb0cc8d1c1881c Douglas Gilbert   2016-05-31  1200  /* Fetches from SCSI "data-out" buffer. Returns number of bytes fetched into
fb0cc8d1c1881c Douglas Gilbert   2016-05-31  1201   * 'arr' or -1 if error.
fb0cc8d1c1881c Douglas Gilbert   2016-05-31  1202   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1203  static int fetch_to_dev_buffer(struct scsi_cmnd *scp, unsigned char *arr,
21a6182924d531 FUJITA Tomonori   2008-03-09  1204  			       int arr_len)
^1da177e4c3f41 Linus Torvalds    2005-04-16 @1205  {
21a6182924d531 FUJITA Tomonori   2008-03-09  1206  	if (!scsi_bufflen(scp))
^1da177e4c3f41 Linus Torvalds    2005-04-16  1207  		return 0;
ae3d56d81507c3 Christoph Hellwig 2019-01-29  1208  	if (scp->sc_data_direction != DMA_TO_DEVICE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1209  		return -1;
21a6182924d531 FUJITA Tomonori   2008-03-09  1210  
21a6182924d531 FUJITA Tomonori   2008-03-09  1211  	return scsi_sg_copy_to_buffer(scp, arr, arr_len);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1212  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  1213  

:::::: The code at line 1205 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104221144.mlmFkzpH-lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--mYCpIKhGyMATD0i+--
