Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG4QS6EAMGQEUNAGPDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2143DC880
	for <lists+clang-built-linux@lfdr.de>; Sun,  1 Aug 2021 00:01:01 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id p21-20020a1709028a95b029012c31764588sf10320457plo.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 15:01:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627768860; cv=pass;
        d=google.com; s=arc-20160816;
        b=ofMjgytbfX5EQQHJx4T+fMvrDzHhXnCMB+MJaddeL2BiifJKWbZKp5qiVpRNMvb20j
         wxs5K+ZH49msB9WOBwMpmr+PCDbsNpc4Uv3bB93Z+1SUv3qZHdsBOzWygALYrT/qQJlV
         m0JfbLd1smbFXgRvUXxVv3JoiuHvKmaT65hOJ5ox5GbScYkmQZweIoDkvzEdwWWSonLX
         BephuBfsTX5vY+8g7Qo8CtuwqtxQ8N1oYMU5fsxgd8pMBKrlH1ERGG9wUEmJ52koTAkh
         m7xGqCZX1kwcuuv4fyZtMWtXNvNJ4GA81HQ9CnvB+os1lLvOxViZfXmAj3lHKcexNVBJ
         1ADw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6y7mrzJrEQMUNAQTxUUh8VHWeYhjtgsF+6DnUlYwwF4=;
        b=dHpy5cxhyDjXr90xeB12Fbl4T6A84yxBCH+wx/MbdrlhIRoPYN80tnq4awh2P1uYAP
         9x9tX1heCoAHLRtq93aHvI7sMAn65KqF/GTwQQCX/gWCDgVaCChjqw51ZgV7UvLozwDE
         yeg/iKgmIcuz5QD3mlVZVmqzACX1CleNVgcw/S+4neq7qGgRTb8EjGX+HGVGsQa3ay0q
         VKEBeIt9Cll/t9yMc3swnll807SoXkwYUFi4tdH1BREXVSbC7ZLLAtmVaLVFlLAjDUIh
         R8CQW9W/HYeGN1p/WNkJP6QJe4ljeaDc/FjFB60/SMMQkqXGzH8xaIOcg9JNmp53yLU8
         Tgog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6y7mrzJrEQMUNAQTxUUh8VHWeYhjtgsF+6DnUlYwwF4=;
        b=prw4dM2CLGtw12jDtg+2C/5CYmYK2Twn1Mbpljf9t21ZsOh4N4TC7QZoS7cSwOvlQG
         7orG5x5tovUHKmA7KVaAV/7dRQqPs5syLaaj5Wit8TrciWj+dj5Eu33inMSgitsUzU46
         1DfiRe6UALaicmP4xT8G1Eb5w4i4irXb2zRGm9SQ6HF5lBnJBrvkhAC1Wvplsmi+pvse
         ySJW4+fFK/D0m0X7qyC8Ed7BsRQ+JbnqaljjSFzArvh+j5iSX8m4zi7U6DPyaYVpeLl1
         nsQvnf7ofQVcugbrSWkXQF8vtukcZyUfJIqXwUnx1SBU+L26gJ22kstvJts+b/h6Fc3B
         IeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6y7mrzJrEQMUNAQTxUUh8VHWeYhjtgsF+6DnUlYwwF4=;
        b=SOC4jLjLXDOVUh6nlE8O2mkeRjRA8PkSKnEMSRerBqHbC4wI9C7bBs+QkkLEZiSthU
         YZX9EO21UfgmHtTACWRMb2BaMJ9cGfiKGZLLUXlO/SlnlL57V7XdLGbQXomvlBaKgkSs
         EQSLFy3qrZCNmECasTyTgGFBewBmBB+TWx1upUtH00zU3eo7gXu53bjSqCFijsFieW/R
         zC656BRa8OhslqYAbVKjV8f/FprgpALZJbjq9gXrx4Ju3Xj9UqgvvrV5BExBzAuqYPKE
         em8HY6eRF+5ahQg8/E46i0IdhUtO1iNF2pEB//kh3I1YWRUuBdkuWE0JtEBQWbFrDM2o
         seQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U+PwcpGpTdfVAVGhvu+JkvNhLUpViBV+LudrkT6JOaoVWeCtj
	mBr++gsYNjzmO8EQj8UMqZ8=
X-Google-Smtp-Source: ABdhPJx9XHS8NLddhxS9DJLC/r58QWEC+eN0Enn63hUskzPT56BTbYcpPzcLFaG5+b2ZlhsoDSD4tw==
X-Received: by 2002:a62:54c5:0:b029:3a9:d3d9:4fe8 with SMTP id i188-20020a6254c50000b02903a9d3d94fe8mr9388245pfb.36.1627768860021;
        Sat, 31 Jul 2021 15:01:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2483:: with SMTP id p3ls2707909plw.8.gmail; Sat, 31
 Jul 2021 15:00:59 -0700 (PDT)
X-Received: by 2002:a17:90a:f011:: with SMTP id bt17mr10107626pjb.105.1627768859203;
        Sat, 31 Jul 2021 15:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627768859; cv=none;
        d=google.com; s=arc-20160816;
        b=AOfBpm6XZBMUaAXhYAxcARkkx76tWLu0sKhrc6vCMTI0gF8ncawoGe/1AcN5fQXqM0
         EfTzga5OZSnEyy0Ev9mB6EFDTRohw8hfb0/IDciw5g4Y6xypSmZHEQsLUKlsmFF4UIXo
         pjKKBfxH1gxFtlDamQIBpFBWK9MMqGkNMLnz1IHXDri0D/9AfVysKeiE3RMvYR4DiOk4
         Zp7jOVjnNGq9yh/Bb0f2qB8CrjFVpVA/MqsDUsO+xi2UyGFlSUcgKD/R8aZx+apgagTO
         7Fwr8kRsGmPL7o9E8mJFmfBspyV1Bmsu1mSrExPFsIDVUIOW244UEb3ou5BSLLxesqR1
         XKyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=QABcVq7NXB1AQOvKuUQTC4GY/IOxWNJEYSjNkmDqFVM=;
        b=fKj4FMgRXHyEYi5q1ChwVtYcrWjmTcNnWX96cxNAnA8EsdWkGlNoARDAEhZ4ZwpuUW
         KmY+X5yHk/EzQlJhYpNp9N5Fr37IEnyDagK4VUPTHXquvsfOv7sH6qtzOWTqQS44Ycwc
         y+gAzdQoWwtkLdF0nnDY1grmDsqlcW2Ua9VudJ210bf0vGXERr/r7NvVWWWBZjskM7wZ
         yycezzSWl3zFZaFprlT5te0kTuQeW7fbSkgZbgKC3sXMnqc6lYO2Fxfw5Yfp8BvxatYN
         kOl75ZxUWFIp7Nb0fINpCrVh0FTOzya6Lxy/ku9LaraXkwhfXFW2oJ+wd14alqFkIk9K
         ZeJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e1si349648pjs.3.2021.07.31.15.00.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Jul 2021 15:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10062"; a="200473585"
X-IronPort-AV: E=Sophos;i="5.84,285,1620716400"; 
   d="gz'50?scan'50,208,50";a="200473585"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2021 15:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,285,1620716400"; 
   d="gz'50?scan'50,208,50";a="635819981"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 31 Jul 2021 15:00:55 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m9x2N-000BbF-0A; Sat, 31 Jul 2021 22:00:55 +0000
Date: Sun, 1 Aug 2021 06:00:37 +0800
From: kernel test robot <lkp@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/regulator/mt6380-regulator.c:324:34: warning: unused
 variable 'mt6380_of_match'
Message-ID: <202108010633.tqKr1RuA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Masahiro,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   c7d102232649226a69dddd58a4942cf13cff4f7c
commit: ea29b20a828511de3348334e529a3d046a180416 init/Kconfig: make COMPILE_TEST depend on HAS_IOMEM
date:   5 months ago
config: s390-randconfig-r024-20210801 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ea29b20a828511de3348334e529a3d046a180416
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ea29b20a828511de3348334e529a3d046a180416
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/regulator/mt6380-regulator.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/regulator/mt6380-regulator.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/regulator/mt6380-regulator.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/regulator/mt6380-regulator.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
   In file included from drivers/regulator/mt6380-regulator.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
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
>> drivers/regulator/mt6380-regulator.c:324:34: warning: unused variable 'mt6380_of_match' [-Wunused-const-variable]
   static const struct of_device_id mt6380_of_match[] = {
                                    ^
   21 warnings generated.
--
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/media/platform/renesas-ceu.c:16:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/media/platform/renesas-ceu.c:16:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/media/platform/renesas-ceu.c:16:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/media/platform/renesas-ceu.c:16:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from drivers/media/platform/renesas-ceu.c:16:
   In file included from include/linux/dma-mapping.h:10:
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
>> drivers/media/platform/renesas-ceu.c:1606:30: warning: unused variable 'ceu_data_rz' [-Wunused-const-variable]
   static const struct ceu_data ceu_data_rz = {
                                ^
   21 warnings generated.


vim +/mt6380_of_match +324 drivers/regulator/mt6380-regulator.c

a551e27368dea2 Chenglin Xu 2017-08-15  323  
a551e27368dea2 Chenglin Xu 2017-08-15 @324  static const struct of_device_id mt6380_of_match[] = {
a551e27368dea2 Chenglin Xu 2017-08-15  325  	{ .compatible = "mediatek,mt6380-regulator", },
a551e27368dea2 Chenglin Xu 2017-08-15  326  	{ /* sentinel */ },
a551e27368dea2 Chenglin Xu 2017-08-15  327  };
a551e27368dea2 Chenglin Xu 2017-08-15  328  MODULE_DEVICE_TABLE(of, mt6380_of_match);
a551e27368dea2 Chenglin Xu 2017-08-15  329  

:::::: The code at line 324 was first introduced by commit
:::::: a551e27368dea202cbef3e8861c21d965427cfe6 regulator: mt6380: Add support for MT6380

:::::: TO: Chenglin Xu <chenglin.xu@mediatek.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108010633.tqKr1RuA-lkp%40intel.com.

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
APoBAA==

--+HP7ph2BbKc20aGI--
