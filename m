Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2MP2CCQMGQE3DJK3KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D579F395316
	for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 23:47:22 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id s18-20020a92cbd20000b02901bb78581beasf6771678ilq.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 14:47:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622411241; cv=pass;
        d=google.com; s=arc-20160816;
        b=hidiGNPci6hlxI58OfAl7LyClmAakM+uZlA3Roe+Syz6FxzSnGNVQEBZ3l0b0xFS67
         4TDF8my3+8oiLZblobVtf6Acy2ov3XseDrAI5X3XLcKfo5qUBbBICNcS6wZY1A6QbpB2
         YxqRsOgkV6xMVK1FpKd1qimx7cTkCmUVb3wrWfL5jKkURULngrTHjr5PFeyMV/i/OMqg
         yYpyG+gI9cqKeSpc2i0+b2nD7eAQ6mexvG/XlUvOIp++y6azpZP9W8udYNbiGG+x2zgU
         BPoN5LYD7QBRrYuGfVlzzzUS0UmK4/TyMy6BSUvEhKpSUqQtmUXuLUAvOZhqMyeMNXus
         XVwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OV9D17RrNK9xaUdomt0eyW9vmZfPWsDT1I7KPFQhMfU=;
        b=NEDv12m/0PlsmUr8uEj80ZCCtSbZtIdcOOiarlkBQywVUdqyt3OrfBdqAQdn+4P/jf
         QBZ1X2Rf5g2BjcAvV6r8MsAQ1dToT6AMXY2ZWDgeFp3hwwZPxGBOsjEuJ14LIaMOFpPY
         /BblN/A4vhA1IOHHYXBi25sjij0ayM5K86BIAh3YcQ0FYiN2mx/2rqUs4A4ZxCx/W31E
         Fkt4e9a11Dgfafcwn+QFbQWWsSZa7lxdxBRK1/gnrZtrCHaysFZTdxQHwPJlOTzcH2kt
         uR2qtdBxws5Xd4p9N0HAbreKIGtnchM2O8CdqyUqyKbReeYaRX43aeHUkcwNq+H4k1ad
         3K/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OV9D17RrNK9xaUdomt0eyW9vmZfPWsDT1I7KPFQhMfU=;
        b=hc6ehcGm0kZvOjB1ZIRuEgdrllzzdb5GUy6FjpYQd2FZuhjLr18aF8e82XLpi+3gJa
         +8JKltnpkH3eEMhEbMZ6h9r4tfHvmbYoM1JHLC4k9y7F9bERpN+WKTltfcLLjk/E9VBI
         BUmNwRIIjuUhNf+VbJai4thVGgGny9pS8ch+vor7bUFY12uwdjOs5zjQjg8uhF/X3wA2
         ui48ELGAt+f4eU+uo2gVbpFP7rUsHqjEo4UR0v07woq/NdgQUy9mTV/hAPoU8kXhAXR2
         XqtF1x9ZDSAT+UaM0JHdl9zUcnU8Ny2++0EtHL1syASpHGm6xcD85mf97JZJkXrsjWmm
         QcCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OV9D17RrNK9xaUdomt0eyW9vmZfPWsDT1I7KPFQhMfU=;
        b=p/2UjplrUyoTsx3ibt4s9fycEHGRCmmiK5NdgN49Y1nECDKLl2o48w8L9JvGh1cHMK
         fwlf/wTL+6bXh7nmkNJPSm8uXyvE4AgwMpfHIICApJinPp2SrnWApDFVZ0fXGG5U96Ru
         5z3D+cvu2D6w6CjTaYfJD2lpXCbckCc3MbUaHs8vXlnnYMrwkqEq0cYA62jcy5TU2DC7
         Yi+2nSVIYaEvZ8FvhpIQqhgEpLUa3G98EAJsyPfz8cg9n0KZrnUKmWM7RTt1eyune7c8
         GwXtzB5tjdaYshxjpOJP8P3ThGbcXtzJXhNgDZbeKE4vq1Y1uECwcGnre603uT8ErHRv
         +4BA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zvkbaGjg1XG9vtYPZCKXF572Rd6zE+JOgOsC9JHg3oG6z/v7t
	WBqxyFVcL739R4e2vsCNQD0=
X-Google-Smtp-Source: ABdhPJyQi1mVbrc41DpjFYV+MUrvPwvnX35sHiTjPaWQpwZysuzx4e2yOjwzfomlTP7wgyDUFUgXdQ==
X-Received: by 2002:a02:b68c:: with SMTP id i12mr17335839jam.133.1622411241338;
        Sun, 30 May 2021 14:47:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d002:: with SMTP id x2ls1954118ioa.11.gmail; Sun, 30 May
 2021 14:47:21 -0700 (PDT)
X-Received: by 2002:a05:6602:1494:: with SMTP id a20mr14952753iow.100.1622411240753;
        Sun, 30 May 2021 14:47:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622411240; cv=none;
        d=google.com; s=arc-20160816;
        b=oz3X3D/JN6jg06FUHxbxqWCIUaURNdjwO/SQE7RsUoiDxSCSdn9/5sQ9F87ll0EX0o
         oKoWqnBYqST/xFClfd7RqRf10zrMY5Le/4RLtQVtDsJilfmpY91rwpFg7WJjsLtCjWXg
         XtG8qnlSmZrkKEqaWUebW2JRx10CkcdryIvOdLPiklNo4B/Tkv0W25InCzSCqDF6j8Dw
         sxDTGClnGHsoKulRf6U8QAEPEQSBB9SKGdfBvZ9IIM0SLV4/SpEzvwWQXW6YzaG4HYX0
         vxahzrsgmIOdlnRru3sE/bQsMdu6B3IYp7Zn6p8AUAo//04ATyNP6lsu9gailavH23FZ
         0TIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=FtEqzFTuCjT9a8EguUieQNAovFNhvT+4MNgn29VHPKc=;
        b=JGMjR1jwGKpWeks+/LPt37v5a2nDhP4xn2cVsX/ujevl/qdzdsdSw4xydCgx3bwwlz
         OjehLTMQnc4EU5pTlDUZqw3FZm/8RycvXwmRdcjNtG+PDO05xlAsQuArr/Cc1g+OAFlO
         BZvNsKTKeSoV1LwlYRiyupAevACjeY5Ba/wDhRw2b1Qgs9gSwCLmflj4GOIlTTh26BEt
         B4wcjwTFUlSKEKhCZhLOEt5CuPxaBF64lF99he8ruHiAaqRD5AhIcNbshEmLe/6dyeIG
         qd6Vw086BfADAq448eXbQE2zlepOj5AER8gABbJW0oC9PY57CNXxvNNB05MloOR5vuRq
         LzBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h15si958841ili.5.2021.05.30.14.47.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 May 2021 14:47:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: SB0Rb1aGsHJVzUFCGdPLd+ybNyKzdyVZ8wX7cchzFpwvUsAvdm4owLJ/dUrfz5jCc1yqcHszfn
 tF0DesX25FSA==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="224516894"
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; 
   d="gz'50?scan'50,208,50";a="224516894"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2021 14:47:19 -0700
IronPort-SDR: lzp7uz9yf1I3nTJSg9hJCge5EUWVz0C6Do0IiaYEsIwcOX2ViezvmY4c4prpCVrufKCU6xOXVD
 dZImwnFJfb7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; 
   d="gz'50?scan'50,208,50";a="415950965"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 30 May 2021 14:47:16 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lnTHA-0004Fa-66; Sun, 30 May 2021 21:47:16 +0000
Date: Mon, 31 May 2021 05:46:36 +0800
From: kernel test robot <lkp@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/power/supply/cpcap-battery.c:982:42: warning: unused
 variable 'cpcap_battery_default_data'
Message-ID: <202105310533.koKxj4CD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0OAP2g/MAC+5xKAE"
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


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b90e90f40b4ff23c753126008bf4713a42353af6
commit: ea29b20a828511de3348334e529a3d046a180416 init/Kconfig: make COMPILE_TEST depend on HAS_IOMEM
date:   3 months ago
config: s390-randconfig-r021-20210531 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
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
   In file included from drivers/power/supply/cpcap-battery.c:30:
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
   In file included from drivers/power/supply/cpcap-battery.c:30:
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
   In file included from drivers/power/supply/cpcap-battery.c:30:
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
   In file included from drivers/power/supply/cpcap-battery.c:30:
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
   In file included from drivers/power/supply/cpcap-battery.c:30:
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
>> drivers/power/supply/cpcap-battery.c:982:42: warning: unused variable 'cpcap_battery_default_data' [-Wunused-const-variable]
   static const struct cpcap_battery_config cpcap_battery_default_data = {
                                            ^
   21 warnings generated.
--
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
   In file included from drivers/net/ethernet/amd/xgbe/xgbe-platform.c:121:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/amd/xgbe/xgbe-platform.c:121:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/amd/xgbe/xgbe-platform.c:121:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/amd/xgbe/xgbe-platform.c:121:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
>> drivers/net/ethernet/amd/xgbe/xgbe-platform.c:575:39: warning: unused variable 'xgbe_v1' [-Wunused-const-variable]
   static const struct xgbe_version_data xgbe_v1 = {
                                         ^
   21 warnings generated.
--
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
   In file included from drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:12:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:12:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:12:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
   In file included from drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:12:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
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
>> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:683:41: warning: implicit conversion from 'unsigned long' to 'int' changes value from 18446744073709551584 to -32 [-Wconstant-conversion]
           mvpp2_pools[MVPP2_BM_SHORT].pkt_size = MVPP2_BM_SHORT_PKT_SIZE;
                                                ~ ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/marvell/mvpp2/mvpp2.h:948:33: note: expanded from macro 'MVPP2_BM_SHORT_PKT_SIZE'
   #define MVPP2_BM_SHORT_PKT_SIZE MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FRAME_SIZE)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/marvell/mvpp2/mvpp2.h:844:37: note: expanded from macro 'MVPP2_RX_MAX_PKT_SIZE'
           ((total_size) - MVPP2_SKB_HEADROOM - MVPP2_SKB_SHINFO_SIZE)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   21 warnings generated.


vim +/cpcap_battery_default_data +982 drivers/power/supply/cpcap-battery.c

0cb90f071f736b5 Tony Lindgren 2019-10-09  971  
874b2adbed1253a Tony Lindgren 2017-05-31  972  /*
874b2adbed1253a Tony Lindgren 2017-05-31  973   * Based on the values from Motorola mapphone Linux kernel. In the
874b2adbed1253a Tony Lindgren 2017-05-31  974   * the Motorola mapphone Linux kernel tree the value for pm_cd_factor
874b2adbed1253a Tony Lindgren 2017-05-31  975   * is passed to the kernel via device tree. If it turns out to be
874b2adbed1253a Tony Lindgren 2017-05-31  976   * something device specific we can consider that too later.
874b2adbed1253a Tony Lindgren 2017-05-31  977   *
874b2adbed1253a Tony Lindgren 2017-05-31  978   * And looking at the battery full and shutdown values for the stock
874b2adbed1253a Tony Lindgren 2017-05-31  979   * kernel on droid 4, full is 4351000 and software initiates shutdown
874b2adbed1253a Tony Lindgren 2017-05-31  980   * at 3078000. The device will die around 2743000.
874b2adbed1253a Tony Lindgren 2017-05-31  981   */
874b2adbed1253a Tony Lindgren 2017-05-31 @982  static const struct cpcap_battery_config cpcap_battery_default_data = {
874b2adbed1253a Tony Lindgren 2017-05-31  983  	.cd_factor = 0x3cc,
874b2adbed1253a Tony Lindgren 2017-05-31  984  	.info.technology = POWER_SUPPLY_TECHNOLOGY_LION,
874b2adbed1253a Tony Lindgren 2017-05-31  985  	.info.voltage_max_design = 4351000,
874b2adbed1253a Tony Lindgren 2017-05-31  986  	.info.voltage_min_design = 3100000,
874b2adbed1253a Tony Lindgren 2017-05-31  987  	.info.charge_full_design = 1740000,
8b0134cc14b9d4d Tony Lindgren 2019-10-16  988  	.bat.constant_charge_voltage_max_uv = 4200000,
874b2adbed1253a Tony Lindgren 2017-05-31  989  };
874b2adbed1253a Tony Lindgren 2017-05-31  990  

:::::: The code at line 982 was first introduced by commit
:::::: 874b2adbed1253a11549cb9b7b912ab65fea9cf2 power: supply: cpcap-battery: Add a battery driver

:::::: TO: Tony Lindgren <tony@atomide.com>
:::::: CC: Sebastian Reichel <sre@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105310533.koKxj4CD-lkp%40intel.com.

--0OAP2g/MAC+5xKAE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jPoXN6UXyKFaAgA=

--0OAP2g/MAC+5xKAE--
