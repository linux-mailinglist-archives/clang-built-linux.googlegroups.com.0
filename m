Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7MKVL3QKGQEH2W4MJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE361FD6A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:05:02 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g72sf2806087qke.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:05:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592427901; cv=pass;
        d=google.com; s=arc-20160816;
        b=i94nwYZF4oa++iHZ+I3sM6gu509V+kxWRPMyBFe1oFFQsQq1Hai7/MKM0qRytbYf/G
         KKMejiMv84pWmM9nBFZZTRH+k0RJH+igboCsPS5wFhPt49W36o7eeNgODGoCL+x1MeNl
         gmw+oG22rgv5FZTlBAp/c25oHYCjsOZ43862LLHj8/sZM92VIOuZP7JYohpBXcjtUPfV
         Ikieb8R0mCXNqYX/zk4IArQRNO5I1zRvI/pG6z5KheevpyduwRmXnoZWdBUG9ovUPzn+
         PFQHlzMIL+VxK4mTWXFEjfJpdVNAZ2/62d9Out5b5eSAu+36fKpiJdzVoin9RQBxyUSm
         DJKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ilm0E/qXmzj3b3bJi3iBgtfti3mnkfEJbXw6UaN4r98=;
        b=nYqMQc7JyiDMNm9Xknsvp0kE4rqqHl7h4cRuuHtx2cIcy76B/5fqKY+Qq28V5LpI/4
         5qF1NCj1yVdayfPty58yfiUlTJQvW6365BBZmNGkeM2O5jw7SReXojFYXfaVrSIQ+Gbq
         hk0For/0Vb5Lmp8LG+Om+ryRksNdaSq7xolgDPkm83Ie4PDhk56KyuUgOTyh7eBMFL4E
         NPeiVwMttqplUN3uEDmCUELrw53RMEHl3kTv+7fLWFVLp5ANnacifdwRmVPcMikqo4ah
         hcrZ5Co7iSb2mGcmGKH5DSj8DLBMhdGTWvwzWbD635WcVePYnN5UhyEC47dnTkHKxDvJ
         iZDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ilm0E/qXmzj3b3bJi3iBgtfti3mnkfEJbXw6UaN4r98=;
        b=r99ZIfi0CrRbmL6WhqDr2dyjCW3VkMjScqZpRb4k2IQ2nD0bOXJCORwTJfkKWjP46G
         UKGqnbVTOmwblklhqReCrKlbrT/IZ4StjGuvj0qdmtDow0GR77Agy5YuzeWcdbO43ctO
         o+pU79yIkvouwRQf3LpFtTWoJNNnwXXttLrHeXi8wO1TkKVB5v4gKlxibR8XyUZUiBG+
         +0NZ9nQTUVBeFAUQdDi4PGBjj6J3hhH4eIJQtAi2XCbAyqjvAs8QyXgW0XWo6LS16BJ8
         LnV8TrRwqYzPhTylSCp0iTKw4XUeXEw2bLf2aypSXjx+ltcIWNThVGz69EBBYZer/W8Q
         MWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ilm0E/qXmzj3b3bJi3iBgtfti3mnkfEJbXw6UaN4r98=;
        b=PoXnomW7OC8Wqywmo1GEagTWHUWIAPskjrtWJc4puPEEEJ+QHQonUQe2sDsot+JfEq
         DVzyHQnN1lH9ERk95MjS48Os7bHzLt5SUAW7Qof+HHGS66A2ggTihEjfz2AgIVG7qb0r
         Urk//UE2RIWEk8fU2+qkxbKmhR+Qn3eIHaK7r909Fcp//WxRBG5VtZnKyl7vQnisMDYL
         InWsaXLdEtZixrjAXLc23ZDmflEOJ9bCxyAqOkDVmJhgcfYx3hflojqS728Ps9QFKGr2
         KKW2Y13GFfq+t4/hrB5gNIx0SrMYi3PjlIu4Rqa7aYzcTlbSIRIupZ6Z6pmJg/q7Q0WP
         AlnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SMStt66o8BKH1WZM/FqcZ2BYSb68wVn8SWphz0Mx1tZUDm6Rb
	Ea6fsSSBEwxBS6IOQTuiTF8=
X-Google-Smtp-Source: ABdhPJxAc4ioYvtMtk7jnatZyxaYZnrp1shkrrCe6Y12EIJRgsvTnKX+8+nhhwJp8iJyLEP/o4KHlQ==
X-Received: by 2002:a0c:e5c1:: with SMTP id u1mr588782qvm.140.1592427901557;
        Wed, 17 Jun 2020 14:05:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6654:: with SMTP id a81ls1671020qkc.7.gmail; Wed, 17 Jun
 2020 14:05:01 -0700 (PDT)
X-Received: by 2002:a37:a3ce:: with SMTP id m197mr544618qke.493.1592427901108;
        Wed, 17 Jun 2020 14:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592427901; cv=none;
        d=google.com; s=arc-20160816;
        b=b9PraV63HnRvAoX8tiNfMFAtN2B94CzVfEH4e4MmBcLdwnk34FKtG0vHc6ntfUhH62
         A1bExaw88J0oFqZUFX4gBSm9JuxUnrvZzTSb1l+Y283T5lx21ODw02reusCk5YhfXMqs
         ONlpijYJn7YYb0UwNefN/iNVx/3uWIjOEVBUxnXxH2dDJHADW/gWtX8vHhFT6fb679d+
         5tWjEB0qfv3UuS6oEMmgnFoEk0A+ONI59MoQN303AbiUfdqDgCsIqb7SJ09vo5wf+/UE
         ImenGAwJg6uju7sSYWHARWIXqUMaR2NGCa/FZ04+FRrv6xYCesRm6tIxkfa09On12xMt
         h3vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wtalIURJGRPEN9agyhNNGlGY6Ihm2C4fumMAo/YbmtM=;
        b=lpjpK0KRHM5q86YbOSaDNwCK/81n8mgAADJxOJfJaEPHB8M/WfxP5mqMNLPH/zLurf
         vN48cE0rrhw2F9kh19/Q0QGXkor4bR1vjHsyv8m+5LfFregsXnLTWLmbd5h0Xs50uXCN
         Q6hyBnWLzWPllJs4ofOi0Zn177mWlHwvyriI7Th8QeFq/F/9hAfgpGWFzDeD232DHrD2
         2nxq9sw4RJ3/sH5+znSsaKJWoCopgrtRI4zIa7Vd5itIYS/6RZ1dzZdHdMmfIDIS1uWG
         tL/NUKKnrQBK0IGQVUV27BYxcRskkw6suh3fsXUIaPNjgfCSqwb0AA751l/nu4cg7gy1
         bwVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id x78si37035qka.4.2020.06.17.14.05.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 14:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 64ZJM3CYk6t1lNCzPM0mzJsyfWm/eZrB/jzoPTA4nsWltZXQsCnxBBpnfiPkFqLqA7SuyHQX2K
 XFs9Fyxx8Gtg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 14:04:59 -0700
IronPort-SDR: lX3lsSDjWB+Q0Tc77O6qxd4NyV24pQXvcdH6DTNLKEHsPFWMyyn66fciUailxPGb2AWevM28w9
 kSG9OawBioNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; 
   d="gz'50?scan'50,208,50";a="317632756"
Received: from lkp-server02.sh.intel.com (HELO cd649bb48ab3) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 17 Jun 2020 14:04:57 -0700
Received: from kbuild by cd649bb48ab3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jlfEs-00005F-Ph; Wed, 17 Jun 2020 21:04:54 +0000
Date: Thu, 18 Jun 2020 05:04:47 +0800
From: kernel test robot <lkp@intel.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ulf.hansson-linux-pm:cpuidle_psci_to_driver+genpd_onoff_notify 7/7]
 include/linux/pm_domain.h:265:1: error: expected identifier or '('
Message-ID: <202006180544.pHN0wEhf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.linaro.org/people/ulf.hansson/linux-pm.git cpuidle_psci_to_driver+genpd_onoff_notify
head:   e5f65ec625134fe268aa703e5b34d436eab4e0a0
commit: e5f65ec625134fe268aa703e5b34d436eab4e0a0 [7/7] PM / Domains: Add support for genpd on/off notifiers for specific devices
config: s390-randconfig-r005-20200617 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout e5f65ec625134fe268aa703e5b34d436eab4e0a0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/mmc/core/sdio_bus.c:15:
>> include/linux/pm_domain.h:265:1: error: expected identifier or '('
{
^
1 error generated.
--
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
In file included from drivers/spi/spi.c:11:
In file included from include/linux/dma-mapping.h:11:
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
In file included from drivers/spi/spi.c:11:
In file included from include/linux/dma-mapping.h:11:
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
In file included from drivers/spi/spi.c:11:
In file included from include/linux/dma-mapping.h:11:
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
In file included from drivers/spi/spi.c:11:
In file included from include/linux/dma-mapping.h:11:
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
In file included from drivers/spi/spi.c:11:
In file included from include/linux/dma-mapping.h:11:
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
In file included from drivers/spi/spi.c:24:
>> include/linux/pm_domain.h:265:1: error: expected identifier or '('
{
^
20 warnings and 1 error generated.
--
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
In file included from drivers/base/platform.c:15:
In file included from include/linux/of_irq.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
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
In file included from drivers/base/platform.c:15:
In file included from include/linux/of_irq.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
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
In file included from drivers/base/platform.c:15:
In file included from include/linux/of_irq.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
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
In file included from drivers/base/platform.c:15:
In file included from include/linux/of_irq.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
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
In file included from drivers/base/platform.c:15:
In file included from include/linux/of_irq.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
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
In file included from drivers/base/platform.c:23:
>> include/linux/pm_domain.h:265:1: error: expected identifier or '('
{
^
drivers/base/platform.c:1352:20: warning: no previous prototype for function 'early_platform_cleanup' [-Wmissing-prototypes]
void __weak __init early_platform_cleanup(void) { }
^
drivers/base/platform.c:1352:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __weak __init early_platform_cleanup(void) { }
^
static
21 warnings and 1 error generated.

vim +265 include/linux/pm_domain.h

   262	
   263	static inline int dev_pm_genpd_add_notifier(struct device *dev,
   264						    struct notifier_block *nb);
 > 265	{
   266		return -ENOTSUPP;
   267	}
   268	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006180544.pHN0wEhf%25lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--PEIAKu/WMn1b1Hv9--
