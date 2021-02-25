Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBNS4CAQMGQEP7CNBWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFAE3258C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:39:18 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id o7sf5124290qtw.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:39:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614289157; cv=pass;
        d=google.com; s=arc-20160816;
        b=d2pi+np9eo3qBH5o1x3f9oJF4UAVTTsmFxnQS1L5VRJrZR6nRLsLp6Nxw9E2fBt8Sq
         xMCEDBzUbP+MOBAhrKCgVEr3ocu5qdidk9/yD+MZ1sEygy/HwYghlPEtVpdejXJ/pfkx
         8OsVAbaHB0mwPtITFL4v29J5+JVVgkjR317h4AqVeIK548UlWGudyL9/9fyK+FqPOq18
         c+UcMnUL0WN1xfQwVv2JpXCg2LE7/XIaGtwceTK+S5uvxVyOSfbLil3Cnu+3feghLFvB
         EcB9xLQmjr/0odQxAyMGVLRC/IIMFdcp9Q7OVdKS3l8UL4NayGWJauyPBsquIDlvkRin
         CIlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gnkUV+h62h9wRX9WjflgMA5F9noe2rJLYhMgHSNNIlo=;
        b=PBJRe6KqqSYK95/jUadn4Yk9Wx3OV+GuJotLfbFUlFs//gDqF/fqesT+P5mk1ipnji
         bZzUm5j7utGw1lZS3+/UjFr/QzqUgt9r9doyRNn93Kb/5qCSPK3AkK1cJ+V2QBiy3sTK
         47AoH9GaqtcIjh1xuOYwiVqjPd9xoQ3iFseMn/W0B1xYvfkYKxLgVdZv6xpwiNd3XMlY
         k0XTz/CXH5SyWq1+zYYdLlhKetca6sRO9ZrA3DAnXHIiT/JzXTcqXacpSvhJfZ/77xHC
         aoBr5UboDCO7sM7qBUPrcP8fCiqDyXQFgWahh5Vo+Hzt4b6bajgQGXP7BtzcINFv9QDk
         uHPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gnkUV+h62h9wRX9WjflgMA5F9noe2rJLYhMgHSNNIlo=;
        b=aYqyinyQ3hV2X2550GEawb8TpeyqedpNFi4mgiki4JtpFW18N+2gbpU3s6EOlvEF+j
         rn/7IlRd0McPCCC3d8JiuV5Fqkh619ujz1tvRI4QbfbTqRiN1TPE9mir0vt0gWyxMeaJ
         p2U2NUdAycyi9qP/5sMGzii1hJABzRdPDH8o2BwejzZC0BYSVC2JB9zco7UG5wOZOLuL
         QE1Jz6KDKrCPCw5BieAM0NzWeePjlG1e4Md0Gw03lnH8K+hnMIPxno5Iqo8ubaF4qrWL
         SdYrMTPY3bK2xdGqTiYfJYVCcwEzhIvkzoZDLvjFYW+c1DIexIBy77p2UgnYhEsvIRRT
         0xUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gnkUV+h62h9wRX9WjflgMA5F9noe2rJLYhMgHSNNIlo=;
        b=SlSt/NgMyRMpkp4sgtMa3myZTG4s2AEr0gitNS5O3HEYO2VVZD9CLS+gscvl58nWwu
         hjA6gQSllDwx1xMfE6SRFZ2B6PGnMOzX+PMOgcQKVnH5m/NGVTOmTTUpdGfsXHbzKj5r
         rfoqajoBKSMOxpqYzC5kiO4o/0v5PmAwhd7xBE74oaPllaEjkl29g6MqEXhxMirrjq/D
         QsEz4hF5ECtTFzMqU65bD9zsXtyR47u72PL4i3FXCAebDhALS/r2I4guzBliO1CRTkob
         uah+PmSKDCbqUGinQGpQDnEsIJEkLfDlXj+xmpj1ggNTC00GWnvPwTV6Nrzk7x4kpaBO
         1b4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RgHl/lP2GEptsxXj5W2YEjp+IQlVv/yZtytxKoqaf4iO1jZwp
	l+AIYqncR2BKjU07kQpChpA=
X-Google-Smtp-Source: ABdhPJwZP9KeHg7HCQ8YREmb8IOpsE7WGRKN8gqnz05Vtq7SKNMGCGYj3J3nOiwWacxDpjjiRl+KMQ==
X-Received: by 2002:a37:2781:: with SMTP id n123mr4899160qkn.56.1614289157458;
        Thu, 25 Feb 2021 13:39:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1c2:: with SMTP id t2ls2665736qtw.10.gmail; Thu, 25
 Feb 2021 13:39:17 -0800 (PST)
X-Received: by 2002:a05:622a:408:: with SMTP id n8mr144616qtx.64.1614289156888;
        Thu, 25 Feb 2021 13:39:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614289156; cv=none;
        d=google.com; s=arc-20160816;
        b=iZXBh8juYBX5d2LqA6QpEjS7r/5PR/cFxcmyH+E4QSZSj1/chja97Pqcsp/Tv3itEd
         TkFj6nHWQH5mgk+Qyy12o7yOF483qBwj5w+o3zW1BnRGJdw23u/KjFFL2b3ZTlodabpC
         cp1lp7W0dnX2A6TrjKlswOkVufSkTZL9fqkQBza56rtEGf7q74uy03xTAkIquOzFdxI8
         vbbXe6awG56lITWhYC/XoZbE+cdQ4vplk2qALKIFh7JGHCUVx6RP3ezeimOhOU8rpTaB
         mN+thlz0HiMz6U39P0I8QZPVnmzOitlq+tdu+h+sSN4a4RfPJ9Nilcg5V/dT+SVpzGp/
         v4MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lFjU0j2GSjK+85Fbdrxsp7ArEolN1Sv02aWwozCY/pk=;
        b=kK7lZRx8YCZ5qoZHvVeZiiDriJwLjEj4WkXQmFtRCI9qrvaQm3Q/avCdbVmK4S/MlG
         aCDrJX6AVb3RdA5JqThmuHsZoiSLEvGz9MeBIjKLLxvX09K9so8fdY7W4ujvqY2wnf9+
         w/ZqtE1b+zS3lqGoaDW4JNinUe3rpDUC8ZAMcLVSSgFXUYgYNBRTjIPZbw30POf3RFVE
         BlNQlKjM7Dc2UYuJDEiy1gmrkk/V/QG+5u4n+16qyyNHq+33U9paAdtxLF764Mae/6bC
         BNC8k2aMOXLMA9/FYRgbFbSQuas8ZEyA9pChtj52P4ipb05vME53ZfZrOV8nC0uzMV9c
         odFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b16si398779qkn.1.2021.02.25.13.39.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:39:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: lo1NSCVhouMtV1Kj+E5ZPLeuDOpTQqsvyC+M2v8DYxPpfzq1iJWdepc5zxc9M95JA+E/mCKyB6
 KXkooaopgB3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="182258534"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="182258534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2021 13:39:15 -0800
IronPort-SDR: l47iBKeSIbE5dF/tFKLE8XNlBsQP+IJ8VbAL4/Yj7he+hkr7Etg5SNax/UrSnCps57ls7S7GJ9
 8cXC25OtkXeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="404574938"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Feb 2021 13:39:13 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lFOLp-0002tQ-4i; Thu, 25 Feb 2021 21:39:13 +0000
Date: Fri, 26 Feb 2021 05:38:43 +0800
From: kernel test robot <lkp@intel.com>
To: Thierry Reding <treding@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [thierryreding:for-5.12/work 27/29] include/linux/iommu.h:1064:36:
 error: redefinition of 'dev_iommu_fwspec_get'
Message-ID: <202102260535.ZR8q2TOV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/thierryreding/linux for-5.12/work
head:   91c0a74fb5a993bf95550595574295476c1345ea
commit: 4a7cd9b887acba38099e6729dcdadc6838c202c1 [27/29] iommu: Add dummy dev_iommu_fwspec_get() helper
config: s390-randconfig-r004-20210225 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a921aaf789912d981cbb2036bdc91ad7289e1523)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/thierryreding/linux/commit/4a7cd9b887acba38099e6729dcdadc6838c202c1
        git remote add thierryreding https://github.com/thierryreding/linux
        git fetch --no-tags thierryreding for-5.12/work
        git checkout 4a7cd9b887acba38099e6729dcdadc6838c202c1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   In file included from drivers/nfc/st21nfca/i2c.c:13:
   In file included from include/linux/of_irq.h:7:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/nfc/st21nfca/i2c.c:13:
   In file included from include/linux/of_irq.h:7:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/nfc/st21nfca/i2c.c:13:
   In file included from include/linux/of_irq.h:7:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/nfc/st21nfca/i2c.c:13:
   In file included from include/linux/of_irq.h:7:
   In file included from include/linux/irq.h:20:
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
   In file included from drivers/nfc/st21nfca/i2c.c:13:
   In file included from include/linux/of_irq.h:7:
   In file included from include/linux/irq.h:589:
   In file included from arch/s390/include/asm/hw_irq.h:6:
   In file included from include/linux/pci.h:1823:
   In file included from arch/s390/include/asm/pci.h:7:
>> include/linux/iommu.h:1064:36: error: redefinition of 'dev_iommu_fwspec_get'
   static inline struct iommu_fwspec *dev_iommu_fwspec_get(struct device *dev)
                                      ^
   include/linux/iommu.h:982:36: note: previous definition is here
   static inline struct iommu_fwspec *dev_iommu_fwspec_get(struct device *dev)
                                      ^
   20 warnings and 1 error generated.


vim +/dev_iommu_fwspec_get +1064 include/linux/iommu.h

4c7c171f85b261 Yi L Liu     2019-10-02  1063  
0008d0c3b1ab03 Joerg Roedel 2020-03-26 @1064  static inline struct iommu_fwspec *dev_iommu_fwspec_get(struct device *dev)
0008d0c3b1ab03 Joerg Roedel 2020-03-26  1065  {
0008d0c3b1ab03 Joerg Roedel 2020-03-26  1066  	return NULL;
0008d0c3b1ab03 Joerg Roedel 2020-03-26  1067  }
4a77a6cf6d9bf9 Joerg Roedel 2008-11-26  1068  #endif /* CONFIG_IOMMU_API */
4a77a6cf6d9bf9 Joerg Roedel 2008-11-26  1069  

:::::: The code at line 1064 was first introduced by commit
:::::: 0008d0c3b1ab03b046b04b7bd9d70df1e2fffbfc iommu: Define dev_iommu_fwspec_get() for !CONFIG_IOMMU_API

:::::: TO: Joerg Roedel <jroedel@suse.de>
:::::: CC: Joerg Roedel <jroedel@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102260535.ZR8q2TOV-lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2QAA

--BOKacYhQ+x31HxR3--
