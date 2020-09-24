Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB67SWH5QKGQEYM6CKLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F40276F00
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 12:48:29 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id g2sf1100988otr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 03:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600944508; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yr6hDbH3+PeWwtX65hvfU+3PnxEZ4f9MWtcaGL+nU1Ykx24Ia4j1QVAMMA3tOa6Csu
         Kqz9IePZjDoNxqpxim/vJdvVYqfoxkbRmJlZu363ZkKp4youWsOejxTs50ZDCAZZ3910
         oLEUUaJ8fuqbEagSFSnngxdqR4ZIz5lXHrQVRdLjfbDCQ1wOLRDQvfJwNdWQSn11IFYi
         cU8ibLnIIK7uJ3eogAqj2Gb5Rwo6ZdSoz2vaiBsFd3rFJnS+suiac62U+70Whc2517Ij
         nSqFjVmib6SIfJVFTcux8PzF3eZq+I+NAWtPoTtnTtS9j3Ndg+Jdfdvuc7Ei6aaSUqWR
         OIAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sc7jC0Oova/Q9UhDRqTK2eURMZVJo59PbdpPoL9O+80=;
        b=jUr3MlnXiz+ng49j2hua/QTNTLH7Js3cmT/YSq258kYUFjGAxZkA9abevoVI8H3qay
         BrDAlUvXppeHq56DV1yQWms468xrUA12fIvbD1qu22faAJmfr4H0tipRVmyb/7ekSPws
         9EniKdE3BVySw19Efbgws0PrD22vSOPXRgIcwEJcqnlTMx0ZCStOFn5z2faZ0O2wBCVU
         RhIRt+9qkBiNpxi1eDFqtt9Jc/2G8zSADXKkMF6vBBQjK1KrOMVssElI4ULy9w5qxYRr
         EZJnSEPZySVfGMmPipmlNarbO1VD2VFKkxpgEC7U3OCTKZifTWr6lm5lQTBL10WPy1x2
         9IMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sc7jC0Oova/Q9UhDRqTK2eURMZVJo59PbdpPoL9O+80=;
        b=no2JPPZbI+dWMokEI5PfiY/uc50UuU9ifKtD5m1EOf342uduVdRPNHRLAJprR7hf2O
         XOwE72fgxZbqRi4QVSlUDn9dVSHeWsIyZCU8y86lR23gk9iF89qyf+FZbWtgzQA47SuC
         P1tIqqjtev3SctSzNukVSQf8C7fRbUa956mLVcd1FraAFz8UVKRrR/CIw1x75lOcgoJi
         Y9sViOd5x2c4Xx1PWgiDtlENNz4kreIU3tTrr+cR7QhCCA/hiwCHM/lNxEf5WOD1ikOJ
         Lsi/isuq7JIG6zy99ga5w1ANMjHDirvns09oNyMRBSeZmr/rb8pU1wCywsqKlAR/iCWN
         TurQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sc7jC0Oova/Q9UhDRqTK2eURMZVJo59PbdpPoL9O+80=;
        b=kzNyUzCLiH37vG/+afWxURdhxm98tevkWvYYoeUhzvyXwi3aWRabVfUgbCGEJSDUK+
         yokOCnElgOQGznqcu7RQgSvEB31rL7ZIsJE8cuXhfePEEgFGzG91zRu9fnzp5zLYr6yj
         CWZTZZlzW/77nkitpQXd6nBdGy2xVkx3y1/RV3PfauY/CAAfe3/uGsgXLn6IR/zo64Tx
         BoNIVQhNcWIpHlZVNSrTd3nQ7eKfyxwqxt+oSSRwPnvZ7Pq2JMPkXSFiY1XLCas80PnI
         ShzMgFHV0lkrudJc7Tl54K6wfmDfzKSMkVqDeUsp7FyAcyixxVrTN6i1GVOATwps03gC
         rJNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305zaUouohNw/fS8IV7KjV+zarGcX1MKUCteRSWYP+Sd0Xhiawi
	+stvWgYhI7pLWQcJv/pFJp0=
X-Google-Smtp-Source: ABdhPJziLJhXqzv5QGtHmfg0W/GZ7cGjX/3DBIzSVquG3iq6FcvVs3CX+Tl2VpXTodm6InQJjFyvFw==
X-Received: by 2002:a9d:4b01:: with SMTP id q1mr2546975otf.138.1600944507912;
        Thu, 24 Sep 2020 03:48:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:4d5:: with SMTP id a21ls618275oie.11.gmail; Thu, 24
 Sep 2020 03:48:27 -0700 (PDT)
X-Received: by 2002:aca:49ca:: with SMTP id w193mr2205520oia.46.1600944507420;
        Thu, 24 Sep 2020 03:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600944507; cv=none;
        d=google.com; s=arc-20160816;
        b=c7w5QCqxzJiTB252zKm/diEhxN0haxVhyk3Uz/Kn3AEyWChq7BLHNw4SJnI8Bn4mXM
         HE0MXIgH/h/ujA2BmF4SAx1t67v6TF1xJQdy2oM3p6hnoaFT2N0Ju+WXIcXvfQIUDaAZ
         YD1LYK7cICADH9beX5Ta/dLI7Ke8g7pWQkQ9GfKWN5NK5advq83z7SmE/TWfaE6WmVoB
         rmMfKwZRH450p+N29qlfB5/WREgvANLeRkk72OoiHKO+6L0PV+4vs68IWZDhMA1WtpuJ
         HHcIvltzM6b9XtzlGFvlmWW5G37SStELO37kA1m7FJ0z62viBuEmmyQbBi/nJQLgVqtX
         sygg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=3mYnWe8ffS8ZNAFa2sFnGUNiIka3GeWCGIUE8GAkV0E=;
        b=T99IkHTXB1JvTIFXE0lFulr+WYfXGv/PN4liqjh/V0bpdkaEteq34l4NSiu9Sz+ewl
         4vPi7BfZZxvEzDPucPMKOs8gz7G6l6z/qb3KcHaZH4ENn9V2ID0lRgezOuBbMOjHHYdj
         FAlRnZhHy4aRwraLCZ2rcHS+dwccDs1aLcjY1NG2DlwAPZAPExdxh7owIItKYRmSJE6N
         HwKKr3/qKollr/tvt6m/L7n3Rb1waoYF1C9X+TIH/7dVDnY69FvdlBcgDEEMrGZdTxRB
         9S3cO3COKdJvSnxDDZyYrVH2rzI4odeKJsfigCpKJFdGlNOezivNlFwD7y0aKxkAGaQK
         M7fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d22si295081ooj.1.2020.09.24.03.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: beJoFjR5RKLkGbi9nRVGyCmq4nFB70l8y7CH7YdsAbppW1j7bENmNIHwasFaNRjO65WwnWV5i9
 1riBf3ALA1FQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="222764151"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; 
   d="gz'50?scan'50,208,50";a="222764151"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 03:48:26 -0700
IronPort-SDR: 7tN96mcNsuZPqY+2BmrE2+4WOxweSPE6IfYJhuK3Bsdecq4tSBCWBj3KOIyOVjkHx8SKutHAKH
 hd+f4Jdl/wGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; 
   d="gz'50?scan'50,208,50";a="322926075"
Received: from lkp-server01.sh.intel.com (HELO 9f27196b5390) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 24 Sep 2020 03:48:23 -0700
Received: from kbuild by 9f27196b5390 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLOnW-0000fF-MF; Thu, 24 Sep 2020 10:48:22 +0000
Date: Thu, 24 Sep 2020 18:48:04 +0800
From: kernel test robot <lkp@intel.com>
To: rui_feng@realsil.com.cn, arnd@arndb.de, gregkh@linuxfoundation.org,
	ulf.hansson@linaro.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Rui Feng <rui_feng@realsil.com.cn>
Subject: Re: [PATCH] mmc: rtsx: Add SD Express mode support for RTS5261
Message-ID: <202009241809.9XW0wGY0%lkp@intel.com>
References: <1600933221-3496-1-git-send-email-rui_feng@realsil.com.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <1600933221-3496-1-git-send-email-rui_feng@realsil.com.cn>
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[also build test ERROR on soc/for-next linus/master v5.9-rc6 next-20200923]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/rui_feng-realsil-com-cn/mmc-rtsx-Add-SD-Express-mode-support-for-RTS5261/20200924-154122
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 26ed5146bd17cbcd0fb84e358902ac244728a3f3
config: s390-randconfig-r003-20200923 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/mmc/host/rtsx_pci_sdmmc.c:21:
   In file included from include/linux/rtsx_pci.h:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/mmc/host/rtsx_pci_sdmmc.c:21:
   In file included from include/linux/rtsx_pci.h:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/mmc/host/rtsx_pci_sdmmc.c:21:
   In file included from include/linux/rtsx_pci.h:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/mmc/host/rtsx_pci_sdmmc.c:21:
   In file included from include/linux/rtsx_pci.h:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/mmc/host/rtsx_pci_sdmmc.c:21:
   In file included from include/linux/rtsx_pci.h:14:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
>> drivers/mmc/host/rtsx_pci_sdmmc.c:931:20: error: use of undeclared identifier 'MMC_CAP2_SD_EXP'
                           mmc->caps2 &= ~(MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V);
                                           ^
>> drivers/mmc/host/rtsx_pci_sdmmc.c:931:38: error: use of undeclared identifier 'MMC_CAP2_SD_EXP_1_2V'
                           mmc->caps2 &= ~(MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V);
                                                             ^
   drivers/mmc/host/rtsx_pci_sdmmc.c:1141:17: error: use of undeclared identifier 'MMC_CAP2_SD_EXP'
                   mmc->caps2 |= MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V;
                                 ^
   drivers/mmc/host/rtsx_pci_sdmmc.c:1141:35: error: use of undeclared identifier 'MMC_CAP2_SD_EXP_1_2V'
                   mmc->caps2 |= MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V;
                                                   ^
>> drivers/mmc/host/rtsx_pci_sdmmc.c:1376:3: error: field designator 'init_sd_express' does not refer to any field in type 'const struct mmc_host_ops'
           .init_sd_express = sdmmc_init_sd_express,
            ^
   drivers/mmc/host/rtsx_pci_sdmmc.c:1399:17: error: use of undeclared identifier 'MMC_CAP2_SD_EXP'
                   mmc->caps2 |= MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V;
                                 ^
   drivers/mmc/host/rtsx_pci_sdmmc.c:1399:35: error: use of undeclared identifier 'MMC_CAP2_SD_EXP_1_2V'
                   mmc->caps2 |= MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V;
                                                   ^
   20 warnings and 7 errors generated.

# https://github.com/0day-ci/linux/commit/37daa224f78ef228349cee981d690b735fb9bb2b
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review rui_feng-realsil-com-cn/mmc-rtsx-Add-SD-Express-mode-support-for-RTS5261/20200924-154122
git checkout 37daa224f78ef228349cee981d690b735fb9bb2b
vim +/MMC_CAP2_SD_EXP +931 drivers/mmc/host/rtsx_pci_sdmmc.c

   894	
   895	static int sd_power_on(struct realtek_pci_sdmmc *host)
   896	{
   897		struct rtsx_pcr *pcr = host->pcr;
   898		struct mmc_host *mmc = host->mmc;
   899		int err;
   900		u32 val;
   901	
   902		if (host->power_state == SDMMC_POWER_ON)
   903			return 0;
   904	
   905		rtsx_pci_init_cmd(pcr);
   906		rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SELECT, 0x07, SD_MOD_SEL);
   907		rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SHARE_MODE,
   908				CARD_SHARE_MASK, CARD_SHARE_48_SD);
   909		rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_EN,
   910				SD_CLK_EN, SD_CLK_EN);
   911		err = rtsx_pci_send_cmd(pcr, 100);
   912		if (err < 0)
   913			return err;
   914	
   915		err = rtsx_pci_card_pull_ctl_enable(pcr, RTSX_SD_CARD);
   916		if (err < 0)
   917			return err;
   918	
   919		err = rtsx_pci_card_power_on(pcr, RTSX_SD_CARD);
   920		if (err < 0)
   921			return err;
   922	
   923		err = rtsx_pci_write_register(pcr, CARD_OE, SD_OUTPUT_EN, SD_OUTPUT_EN);
   924		if (err < 0)
   925			return err;
   926	
   927		if (PCI_PID(pcr) == PID_5261) {
   928			val = rtsx_pci_readl(pcr, RTSX_BIPR);
   929			if (val & SD_WRITE_PROTECT) {
   930				pcr->extra_caps &= ~EXTRA_CAPS_SD_EXPRESS;
 > 931				mmc->caps2 &= ~(MMC_CAP2_SD_EXP | MMC_CAP2_SD_EXP_1_2V);
   932			}
   933		}
   934	
   935		host->power_state = SDMMC_POWER_ON;
   936		return 0;
   937	}
   938	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009241809.9XW0wGY0%25lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--4Ckj6UjgE2iN1+kY--
