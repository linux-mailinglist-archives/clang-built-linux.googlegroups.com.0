Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQULZGAQMGQETR6QJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 024AB320A09
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 12:36:35 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id g14sf3081537ilb.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 03:36:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613907395; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z1g1fSq6O6mcwhPNnBrO2sf7drVxnww7M8MIEIfpwTSOCZr0LXdVWxqKSf8WafV7k1
         PaWH9WI7E+iDEt8grjFCMKtRc6p7r4EfT2BUvkqgnZUesdgzcOs7vLmSCBZ32pzfpsDd
         7h1XEno4FbqswfJKYXTmrBrfDcpCT+fWGrFudT8dLBz9HKhGsWIka3paMpg6LDrNpBBS
         Vdb+c7IzaeSeGiOu0Olst06HdaN2VS4iVj4us05PkLPAj98q07jVSFI0UKGukTvtzIEz
         Mwe3cOLiBVXm04f7GrlUuZCw90er0sAeF1kfzqhR15skQCdHms2hWlvOqL7BWO21GCc0
         VxVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=2FLCLGSSlvKu0JfBvsht9jmT26+DdD53wNQwSvkR/m8=;
        b=nqtD5AN9R3JjC4beS2mRTD++t/p6J5yZtYFXMY8wPhzBGsIrCrK6JUDLsA7bZDT/Qe
         DS5glHKqIRZi4W+DDgxqMgE7kfEoClFgKC1TFbyoA1RNi/uFu09opDziUm0L3AawXgnp
         +R/Pt5m+xuKYM9c2PaZteaDaE442EIKw8NH3zbn34LbWi6Nl/bXuggYc8T20X40COUd6
         nAooodFM/B3YNfriw+ggmUqW1LPp4kmN9AY9hR2jMcQh8z1QE1d3ywXdVf//jdwqyndW
         ice2XqA6U989pkDiQBUlikkei1WDVW8QsHS6hCU66mdjV5fku6UPLSju+dzbnicgvFqt
         OnnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2FLCLGSSlvKu0JfBvsht9jmT26+DdD53wNQwSvkR/m8=;
        b=GB36MfebsdESvfNcFlRzDOBav26G+bPSojodIZnmidxX11R1Ks1zOCHz8IgH3LX8wk
         TXkw6dNCI8zcqZvz7z0sPNlLYqLmZUHy8vqaeTk/Jm080tlWckUzG8CErrWgguxqt5wS
         iORFO1tF484flYV87/Lqa9ATphapca8d9eIUC0RG5Hk9fF87qTvo88fAIB0MsS5+GGp2
         lbrvJVRIgi4qYbeAvHEkaVzubAihOfQ0SAKTHoOHF43VA0mx1K/11Wqg58M5AnvhyqtR
         OnT4B6O2yUObhDT0cUx6yDlY2IEkclSh1c82yuO8FEs61Ab2G3m75m0hqtUZt/hv4m2n
         Fiig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2FLCLGSSlvKu0JfBvsht9jmT26+DdD53wNQwSvkR/m8=;
        b=Mmiv9mCwLj2sZML8PRLbPjE+YjEGv36Oxg9eGu8A0uer/pZh3vfpH2t3RQ4IVyCkoJ
         jqwOVApvLdlobYWJl2AVCayx50M9slqnkzFPkc41JAJh59HlFm0VlVy5Vh2yEUwOyGIX
         6NATWdWHdlWqXnCag+LWnCM4T2nTWwinIsn2gmwQbi+VBsaGMybFpDjAber5AhZqvMty
         4q1jDAqV1sgc0Lgop0iuAKwAJlADYsvzyVLEEqkhZoLy1xlu/ZA6ZVE10MVhvcXd+yPw
         1W453kPta5xGDx394O96JooqLNoUt7YZhcHpWoedpPtpzk3++lKLKeejApbClfdkwdWP
         LVQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GQ5WCbULEPgWsB6ewhxVb9YqjBAB6yUSVcHdrD0JnirBOHZVH
	fM6vWCQSbEBwbnWewsLXyrs=
X-Google-Smtp-Source: ABdhPJx7H1WepwV9hCx/tmlCFHj3Su0vaMVtmdDwauxYjcOzul1KStRRGIBwJb3O4xnj4v+8uWWuKQ==
X-Received: by 2002:a05:6e02:cb1:: with SMTP id 17mr7825723ilg.271.1613907394689;
        Sun, 21 Feb 2021 03:36:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:370d:: with SMTP id k13ls1273225jav.0.gmail; Sun,
 21 Feb 2021 03:36:34 -0800 (PST)
X-Received: by 2002:a05:6638:22c5:: with SMTP id j5mr17977530jat.89.1613907394095;
        Sun, 21 Feb 2021 03:36:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613907394; cv=none;
        d=google.com; s=arc-20160816;
        b=MP+vhlwcifm9ykgSzkHTMcSXkCg4SGfiiMD6kppYhs+smzMFrbfAHLfYseu6HYBfoC
         TIjl9kD+pCjG9KtaC1PkPYdvzd0yqA5sefvUkn9C+XIBaosRKQMOq+k5vDs/CqElIVeR
         EnnKCoCNZK/7umJESkVpGyxCM6OuaOTiVleCW4tSaWJJvmBGQ8zXlXRUcAhiC116A3Mx
         TICYTUXKgza3t1DMFHz9vBsWLOHWAmFG9EvRkA2M29P/zN1FsyOYNdBUpyPaAXK96gCA
         gUeNHixf2DyPALTzlp49pW4sXbF+bmX4t6VKewgLWK0rgJm2xr608XCkaGp9QCV9Ytk5
         wf9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=I965IYC6idxHEmFgJ5TgA/jfL8QuO8PoGpIblmTVTx4=;
        b=J12MVEmpAO3WXxPgKlfQi/Ax9PSWI7t2KV/Wrf+RGhflLQPI3F40/0Yd16MPe4rkJ6
         Dr9PQbBbhWWftHbkun9hqJpm5cI/06vifBU0EaJYgU49c9awdxilFquXqdg0rb/CPAUN
         Vx00tgKJaz7K8zuCiWceqDYABwXfj0bKcJiquCu4yMTTQs/mOMtAeiqfle+iJZjTQukk
         3brLbVULL6DLvz+NYDsIpopgyUteQZjDycZftDKTj8CY2nGZPs7wfAxQgYL+FJ/1HMOd
         FnM1lutL8PzTcVrYwlhVh3DCV4lGLe9iFR4I9hk13mVKhrhRGZmGuKvPE7lDqmPOlTEz
         gZ5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o7si626105ilu.0.2021.02.21.03.36.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2021 03:36:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: iHvkC8o2aNgqRgAY6HXpT2Kbx97oZP3hK0HDBKmlLd4HVUQ5ypAL4GM4srVNbILMBEOPfxRTJs
 g3+EbZYX2X2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="184280491"
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; 
   d="gz'50?scan'50,208,50";a="184280491"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2021 03:36:31 -0800
IronPort-SDR: m17rYRaZPfsk9NbayS1Z4qccL3/8cM4G45WP0+8H64sQuHG6EyC9C9DZWLroca5Y+ii5MOohGH
 /gdo2ggIBCcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; 
   d="gz'50?scan'50,208,50";a="389106858"
Received: from lkp-server01.sh.intel.com (HELO 48acba29b68a) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 21 Feb 2021 03:36:29 -0800
Received: from kbuild by 48acba29b68a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lDn2K-0000Bd-KD; Sun, 21 Feb 2021 11:36:28 +0000
Date: Sun, 21 Feb 2021 19:35:39 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jgunthorpe:vfio_patches 26/26] drivers/vfio/pci/vfio_pci.c:893:26:
 warning: variable 'pdev' is uninitialized when used within its own
 initialization
Message-ID: <202102211933.yLUQD5PY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jgunthorpe/linux vfio_patches
head:   04faac1621f52ecc60cf0fc8b9edc0b10757689a
commit: 04faac1621f52ecc60cf0fc8b9edc0b10757689a [26/26] vfio/pci: Get rid of vfio_pci_device pdev
config: s390-randconfig-r034-20210221 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/jgunthorpe/linux/commit/04faac1621f52ecc60cf0fc8b9edc0b10757689a
        git remote add jgunthorpe https://github.com/jgunthorpe/linux
        git fetch --no-tags jgunthorpe vfio_patches
        git checkout 04faac1621f52ecc60cf0fc8b9edc0b10757689a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/vfio/pci/vfio_pci.c:17:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/vfio/pci/vfio_pci.c:17:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/vfio/pci/vfio_pci.c:17:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/vfio/pci/vfio_pci.c:17:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/vfio/pci/vfio_pci.c:17:
   In file included from include/linux/iommu.h:10:
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
>> drivers/vfio/pci/vfio_pci.c:893:26: warning: variable 'pdev' is uninitialized when used within its own initialization [-Wuninitialized]
                   struct pci_dev *pdev = pdev;
                                   ~~~~   ^~~~
   21 warnings generated.


vim +/pdev +893 drivers/vfio/pci/vfio_pci.c

   824	
   825	static long vfio_pci_ioctl(struct vfio_device *core_vdev,
   826				   unsigned int cmd, unsigned long arg)
   827	{
   828		struct vfio_pci_device *vdev =
   829			container_of(core_vdev, struct vfio_pci_device, vdev);
   830		struct pci_dev *pdev = to_pci_dev(vdev->vdev.dev);
   831		unsigned long minsz;
   832	
   833		if (cmd == VFIO_DEVICE_GET_INFO) {
   834			struct vfio_device_info info;
   835			struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
   836			unsigned long capsz;
   837	
   838			minsz = offsetofend(struct vfio_device_info, num_irqs);
   839	
   840			/* For backward compatibility, cannot require this */
   841			capsz = offsetofend(struct vfio_iommu_type1_info, cap_offset);
   842	
   843			if (copy_from_user(&info, (void __user *)arg, minsz))
   844				return -EFAULT;
   845	
   846			if (info.argsz < minsz)
   847				return -EINVAL;
   848	
   849			if (info.argsz >= capsz) {
   850				minsz = capsz;
   851				info.cap_offset = 0;
   852			}
   853	
   854			info.flags = VFIO_DEVICE_FLAGS_PCI;
   855	
   856			if (vdev->reset_works)
   857				info.flags |= VFIO_DEVICE_FLAGS_RESET;
   858	
   859			info.num_regions = VFIO_PCI_NUM_REGIONS + vdev->num_regions;
   860			info.num_irqs = VFIO_PCI_NUM_IRQS;
   861	
   862			if (IS_ENABLED(CONFIG_VFIO_PCI_ZDEV)) {
   863				int ret = vfio_pci_info_zdev_add_caps(vdev, &caps);
   864	
   865				if (ret && ret != -ENODEV) {
   866					pci_warn(pdev, "Failed to setup zPCI info capabilities\n");
   867					return ret;
   868				}
   869			}
   870	
   871			if (caps.size) {
   872				info.flags |= VFIO_DEVICE_FLAGS_CAPS;
   873				if (info.argsz < sizeof(info) + caps.size) {
   874					info.argsz = sizeof(info) + caps.size;
   875				} else {
   876					vfio_info_cap_shift(&caps, sizeof(info));
   877					if (copy_to_user((void __user *)arg +
   878							  sizeof(info), caps.buf,
   879							  caps.size)) {
   880						kfree(caps.buf);
   881						return -EFAULT;
   882					}
   883					info.cap_offset = sizeof(info);
   884				}
   885	
   886				kfree(caps.buf);
   887			}
   888	
   889			return copy_to_user((void __user *)arg, &info, minsz) ?
   890				-EFAULT : 0;
   891	
   892		} else if (cmd == VFIO_DEVICE_GET_REGION_INFO) {
 > 893			struct pci_dev *pdev = pdev;
   894			struct vfio_region_info info;
   895			struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
   896			int i, ret;
   897	
   898			minsz = offsetofend(struct vfio_region_info, offset);
   899	
   900			if (copy_from_user(&info, (void __user *)arg, minsz))
   901				return -EFAULT;
   902	
   903			if (info.argsz < minsz)
   904				return -EINVAL;
   905	
   906			switch (info.index) {
   907			case VFIO_PCI_CONFIG_REGION_INDEX:
   908				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   909				info.size = pdev->cfg_size;
   910				info.flags = VFIO_REGION_INFO_FLAG_READ |
   911					     VFIO_REGION_INFO_FLAG_WRITE;
   912				break;
   913			case VFIO_PCI_BAR0_REGION_INDEX ... VFIO_PCI_BAR5_REGION_INDEX:
   914				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   915				info.size = pci_resource_len(pdev, info.index);
   916				if (!info.size) {
   917					info.flags = 0;
   918					break;
   919				}
   920	
   921				info.flags = VFIO_REGION_INFO_FLAG_READ |
   922					     VFIO_REGION_INFO_FLAG_WRITE;
   923				if (vdev->bar_mmap_supported[info.index]) {
   924					info.flags |= VFIO_REGION_INFO_FLAG_MMAP;
   925					if (info.index == vdev->msix_bar) {
   926						ret = msix_mmappable_cap(vdev, &caps);
   927						if (ret)
   928							return ret;
   929					}
   930				}
   931	
   932				break;
   933			case VFIO_PCI_ROM_REGION_INDEX:
   934			{
   935				void __iomem *io;
   936				size_t size;
   937				u16 cmd;
   938	
   939				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   940				info.flags = 0;
   941	
   942				/* Report the BAR size, not the ROM size */
   943				info.size = pci_resource_len(pdev, info.index);
   944				if (!info.size) {
   945					/* Shadow ROMs appear as PCI option ROMs */
   946					if (pdev->resource[PCI_ROM_RESOURCE].flags &
   947								IORESOURCE_ROM_SHADOW)
   948						info.size = 0x20000;
   949					else
   950						break;
   951				}
   952	
   953				/*
   954				 * Is it really there?  Enable memory decode for
   955				 * implicit access in pci_map_rom().
   956				 */
   957				cmd = vfio_pci_memory_lock_and_enable(vdev);
   958				io = pci_map_rom(pdev, &size);
   959				if (io) {
   960					info.flags = VFIO_REGION_INFO_FLAG_READ;
   961					pci_unmap_rom(pdev, io);
   962				} else {
   963					info.size = 0;
   964				}
   965				vfio_pci_memory_unlock_and_restore(vdev, cmd);
   966	
   967				break;
   968			}
   969			case VFIO_PCI_VGA_REGION_INDEX:
   970				if (!vdev->has_vga)
   971					return -EINVAL;
   972	
   973				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   974				info.size = 0xc0000;
   975				info.flags = VFIO_REGION_INFO_FLAG_READ |
   976					     VFIO_REGION_INFO_FLAG_WRITE;
   977	
   978				break;
   979			default:
   980			{
   981				struct vfio_region_info_cap_type cap_type = {
   982						.header.id = VFIO_REGION_INFO_CAP_TYPE,
   983						.header.version = 1 };
   984	
   985				if (info.index >=
   986				    VFIO_PCI_NUM_REGIONS + vdev->num_regions)
   987					return -EINVAL;
   988				info.index = array_index_nospec(info.index,
   989								VFIO_PCI_NUM_REGIONS +
   990								vdev->num_regions);
   991	
   992				i = info.index - VFIO_PCI_NUM_REGIONS;
   993	
   994				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   995				info.size = vdev->region[i].size;
   996				info.flags = vdev->region[i].flags;
   997	
   998				cap_type.type = vdev->region[i].type;
   999				cap_type.subtype = vdev->region[i].subtype;
  1000	
  1001				ret = vfio_info_add_capability(&caps, &cap_type.header,
  1002							       sizeof(cap_type));
  1003				if (ret)
  1004					return ret;
  1005	
  1006				if (vdev->region[i].ops->add_capability) {
  1007					ret = vdev->region[i].ops->add_capability(vdev,
  1008							&vdev->region[i], &caps);
  1009					if (ret)
  1010						return ret;
  1011				}
  1012			}
  1013			}
  1014	
  1015			if (caps.size) {
  1016				info.flags |= VFIO_REGION_INFO_FLAG_CAPS;
  1017				if (info.argsz < sizeof(info) + caps.size) {
  1018					info.argsz = sizeof(info) + caps.size;
  1019					info.cap_offset = 0;
  1020				} else {
  1021					vfio_info_cap_shift(&caps, sizeof(info));
  1022					if (copy_to_user((void __user *)arg +
  1023							  sizeof(info), caps.buf,
  1024							  caps.size)) {
  1025						kfree(caps.buf);
  1026						return -EFAULT;
  1027					}
  1028					info.cap_offset = sizeof(info);
  1029				}
  1030	
  1031				kfree(caps.buf);
  1032			}
  1033	
  1034			return copy_to_user((void __user *)arg, &info, minsz) ?
  1035				-EFAULT : 0;
  1036	
  1037		} else if (cmd == VFIO_DEVICE_GET_IRQ_INFO) {
  1038			struct vfio_irq_info info;
  1039	
  1040			minsz = offsetofend(struct vfio_irq_info, count);
  1041	
  1042			if (copy_from_user(&info, (void __user *)arg, minsz))
  1043				return -EFAULT;
  1044	
  1045			if (info.argsz < minsz || info.index >= VFIO_PCI_NUM_IRQS)
  1046				return -EINVAL;
  1047	
  1048			switch (info.index) {
  1049			case VFIO_PCI_INTX_IRQ_INDEX ... VFIO_PCI_MSIX_IRQ_INDEX:
  1050			case VFIO_PCI_REQ_IRQ_INDEX:
  1051				break;
  1052			case VFIO_PCI_ERR_IRQ_INDEX:
  1053				if (pci_is_pcie(pdev))
  1054					break;
  1055				fallthrough;
  1056			default:
  1057				return -EINVAL;
  1058			}
  1059	
  1060			info.flags = VFIO_IRQ_INFO_EVENTFD;
  1061	
  1062			info.count = vfio_pci_get_irq_count(vdev, info.index);
  1063	
  1064			if (info.index == VFIO_PCI_INTX_IRQ_INDEX)
  1065				info.flags |= (VFIO_IRQ_INFO_MASKABLE |
  1066					       VFIO_IRQ_INFO_AUTOMASKED);
  1067			else
  1068				info.flags |= VFIO_IRQ_INFO_NORESIZE;
  1069	
  1070			return copy_to_user((void __user *)arg, &info, minsz) ?
  1071				-EFAULT : 0;
  1072	
  1073		} else if (cmd == VFIO_DEVICE_SET_IRQS) {
  1074			struct vfio_irq_set hdr;
  1075			u8 *data = NULL;
  1076			int max, ret = 0;
  1077			size_t data_size = 0;
  1078	
  1079			minsz = offsetofend(struct vfio_irq_set, count);
  1080	
  1081			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1082				return -EFAULT;
  1083	
  1084			max = vfio_pci_get_irq_count(vdev, hdr.index);
  1085	
  1086			ret = vfio_set_irqs_validate_and_prepare(&hdr, max,
  1087							 VFIO_PCI_NUM_IRQS, &data_size);
  1088			if (ret)
  1089				return ret;
  1090	
  1091			if (data_size) {
  1092				data = memdup_user((void __user *)(arg + minsz),
  1093						    data_size);
  1094				if (IS_ERR(data))
  1095					return PTR_ERR(data);
  1096			}
  1097	
  1098			mutex_lock(&vdev->igate);
  1099	
  1100			ret = vfio_pci_set_irqs_ioctl(vdev, hdr.flags, hdr.index,
  1101						      hdr.start, hdr.count, data);
  1102	
  1103			mutex_unlock(&vdev->igate);
  1104			kfree(data);
  1105	
  1106			return ret;
  1107	
  1108		} else if (cmd == VFIO_DEVICE_RESET) {
  1109			int ret;
  1110	
  1111			if (!vdev->reset_works)
  1112				return -EINVAL;
  1113	
  1114			vfio_pci_zap_and_down_write_memory_lock(vdev);
  1115			ret = pci_try_reset_function(pdev);
  1116			up_write(&vdev->memory_lock);
  1117	
  1118			return ret;
  1119	
  1120		} else if (cmd == VFIO_DEVICE_GET_PCI_HOT_RESET_INFO) {
  1121			struct vfio_pci_hot_reset_info hdr;
  1122			struct vfio_pci_fill_info fill = { 0 };
  1123			struct vfio_pci_dependent_device *devices = NULL;
  1124			bool slot = false;
  1125			int ret = 0;
  1126	
  1127			minsz = offsetofend(struct vfio_pci_hot_reset_info, count);
  1128	
  1129			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1130				return -EFAULT;
  1131	
  1132			if (hdr.argsz < minsz)
  1133				return -EINVAL;
  1134	
  1135			hdr.flags = 0;
  1136	
  1137			/* Can we do a slot or bus reset or neither? */
  1138			if (!pci_probe_reset_slot(pdev->slot))
  1139				slot = true;
  1140			else if (pci_probe_reset_bus(pdev->bus))
  1141				return -ENODEV;
  1142	
  1143			/* How many devices are affected? */
  1144			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1145							    vfio_pci_count_devs,
  1146							    &fill.max, slot);
  1147			if (ret)
  1148				return ret;
  1149	
  1150			WARN_ON(!fill.max); /* Should always be at least one */
  1151	
  1152			/*
  1153			 * If there's enough space, fill it now, otherwise return
  1154			 * -ENOSPC and the number of devices affected.
  1155			 */
  1156			if (hdr.argsz < sizeof(hdr) + (fill.max * sizeof(*devices))) {
  1157				ret = -ENOSPC;
  1158				hdr.count = fill.max;
  1159				goto reset_info_exit;
  1160			}
  1161	
  1162			devices = kcalloc(fill.max, sizeof(*devices), GFP_KERNEL);
  1163			if (!devices)
  1164				return -ENOMEM;
  1165	
  1166			fill.devices = devices;
  1167	
  1168			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1169							    vfio_pci_fill_devs,
  1170							    &fill, slot);
  1171	
  1172			/*
  1173			 * If a device was removed between counting and filling,
  1174			 * we may come up short of fill.max.  If a device was
  1175			 * added, we'll have a return of -EAGAIN above.
  1176			 */
  1177			if (!ret)
  1178				hdr.count = fill.cur;
  1179	
  1180	reset_info_exit:
  1181			if (copy_to_user((void __user *)arg, &hdr, minsz))
  1182				ret = -EFAULT;
  1183	
  1184			if (!ret) {
  1185				if (copy_to_user((void __user *)(arg + minsz), devices,
  1186						 hdr.count * sizeof(*devices)))
  1187					ret = -EFAULT;
  1188			}
  1189	
  1190			kfree(devices);
  1191			return ret;
  1192	
  1193		} else if (cmd == VFIO_DEVICE_PCI_HOT_RESET) {
  1194			struct vfio_pci_hot_reset hdr;
  1195			int32_t *group_fds;
  1196			struct vfio_pci_group_entry *groups;
  1197			struct vfio_pci_group_info info;
  1198			struct vfio_devices devs = { .cur_index = 0 };
  1199			bool slot = false;
  1200			int i, group_idx, mem_idx = 0, count = 0, ret = 0;
  1201	
  1202			minsz = offsetofend(struct vfio_pci_hot_reset, count);
  1203	
  1204			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1205				return -EFAULT;
  1206	
  1207			if (hdr.argsz < minsz || hdr.flags)
  1208				return -EINVAL;
  1209	
  1210			/* Can we do a slot or bus reset or neither? */
  1211			if (!pci_probe_reset_slot(pdev->slot))
  1212				slot = true;
  1213			else if (pci_probe_reset_bus(pdev->bus))
  1214				return -ENODEV;
  1215	
  1216			/*
  1217			 * We can't let userspace give us an arbitrarily large
  1218			 * buffer to copy, so verify how many we think there
  1219			 * could be.  Note groups can have multiple devices so
  1220			 * one group per device is the max.
  1221			 */
  1222			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1223							    vfio_pci_count_devs,
  1224							    &count, slot);
  1225			if (ret)
  1226				return ret;
  1227	
  1228			/* Somewhere between 1 and count is OK */
  1229			if (!hdr.count || hdr.count > count)
  1230				return -EINVAL;
  1231	
  1232			group_fds = kcalloc(hdr.count, sizeof(*group_fds), GFP_KERNEL);
  1233			groups = kcalloc(hdr.count, sizeof(*groups), GFP_KERNEL);
  1234			if (!group_fds || !groups) {
  1235				kfree(group_fds);
  1236				kfree(groups);
  1237				return -ENOMEM;
  1238			}
  1239	
  1240			if (copy_from_user(group_fds, (void __user *)(arg + minsz),
  1241					   hdr.count * sizeof(*group_fds))) {
  1242				kfree(group_fds);
  1243				kfree(groups);
  1244				return -EFAULT;
  1245			}
  1246	
  1247			/*
  1248			 * For each group_fd, get the group through the vfio external
  1249			 * user interface and store the group and iommu ID.  This
  1250			 * ensures the group is held across the reset.
  1251			 */
  1252			for (group_idx = 0; group_idx < hdr.count; group_idx++) {
  1253				struct vfio_group *group;
  1254				struct fd f = fdget(group_fds[group_idx]);
  1255				if (!f.file) {
  1256					ret = -EBADF;
  1257					break;
  1258				}
  1259	
  1260				group = vfio_group_get_external_user(f.file);
  1261				fdput(f);
  1262				if (IS_ERR(group)) {
  1263					ret = PTR_ERR(group);
  1264					break;
  1265				}
  1266	
  1267				groups[group_idx].group = group;
  1268				groups[group_idx].id =
  1269						vfio_external_user_iommu_id(group);
  1270			}
  1271	
  1272			kfree(group_fds);
  1273	
  1274			/* release reference to groups on error */
  1275			if (ret)
  1276				goto hot_reset_release;
  1277	
  1278			info.count = hdr.count;
  1279			info.groups = groups;
  1280	
  1281			/*
  1282			 * Test whether all the affected devices are contained
  1283			 * by the set of groups provided by the user.
  1284			 */
  1285			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1286							    vfio_pci_validate_devs,
  1287							    &info, slot);
  1288			if (ret)
  1289				goto hot_reset_release;
  1290	
  1291			devs.max_index = count;
  1292			devs.devices = kcalloc(count, sizeof(struct vfio_device *),
  1293					       GFP_KERNEL);
  1294			if (!devs.devices) {
  1295				ret = -ENOMEM;
  1296				goto hot_reset_release;
  1297			}
  1298	
  1299			/*
  1300			 * We need to get memory_lock for each device, but devices
  1301			 * can share mmap_lock, therefore we need to zap and hold
  1302			 * the vma_lock for each device, and only then get each
  1303			 * memory_lock.
  1304			 */
  1305			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1306						    vfio_pci_try_zap_and_vma_lock_cb,
  1307						    &devs, slot);
  1308			if (ret)
  1309				goto hot_reset_release;
  1310	
  1311			for (; mem_idx < devs.cur_index; mem_idx++) {
  1312				struct vfio_pci_device *tmp = devs.devices[mem_idx];
  1313	
  1314				ret = down_write_trylock(&tmp->memory_lock);
  1315				if (!ret) {
  1316					ret = -EBUSY;
  1317					goto hot_reset_release;
  1318				}
  1319				mutex_unlock(&tmp->vma_lock);
  1320			}
  1321	
  1322			/* User has access, do the reset */
  1323			ret = pci_reset_bus(pdev);
  1324	
  1325	hot_reset_release:
  1326			for (i = 0; i < devs.cur_index; i++) {
  1327				struct vfio_pci_device *tmp = devs.devices[i];
  1328	
  1329				if (i < mem_idx)
  1330					up_write(&tmp->memory_lock);
  1331				else
  1332					mutex_unlock(&tmp->vma_lock);
  1333				vfio_device_put(&tmp->vdev);
  1334			}
  1335			kfree(devs.devices);
  1336	
  1337			for (group_idx--; group_idx >= 0; group_idx--)
  1338				vfio_group_put_external_user(groups[group_idx].group);
  1339	
  1340			kfree(groups);
  1341			return ret;
  1342		} else if (cmd == VFIO_DEVICE_IOEVENTFD) {
  1343			struct vfio_device_ioeventfd ioeventfd;
  1344			int count;
  1345	
  1346			minsz = offsetofend(struct vfio_device_ioeventfd, fd);
  1347	
  1348			if (copy_from_user(&ioeventfd, (void __user *)arg, minsz))
  1349				return -EFAULT;
  1350	
  1351			if (ioeventfd.argsz < minsz)
  1352				return -EINVAL;
  1353	
  1354			if (ioeventfd.flags & ~VFIO_DEVICE_IOEVENTFD_SIZE_MASK)
  1355				return -EINVAL;
  1356	
  1357			count = ioeventfd.flags & VFIO_DEVICE_IOEVENTFD_SIZE_MASK;
  1358	
  1359			if (hweight8(count) != 1 || ioeventfd.fd < -1)
  1360				return -EINVAL;
  1361	
  1362			return vfio_pci_ioeventfd(vdev, ioeventfd.offset,
  1363						  ioeventfd.data, count, ioeventfd.fd);
  1364		} else if (cmd == VFIO_DEVICE_FEATURE) {
  1365			struct vfio_device_feature feature;
  1366			uuid_t uuid;
  1367	
  1368			minsz = offsetofend(struct vfio_device_feature, flags);
  1369	
  1370			if (copy_from_user(&feature, (void __user *)arg, minsz))
  1371				return -EFAULT;
  1372	
  1373			if (feature.argsz < minsz)
  1374				return -EINVAL;
  1375	
  1376			/* Check unknown flags */
  1377			if (feature.flags & ~(VFIO_DEVICE_FEATURE_MASK |
  1378					      VFIO_DEVICE_FEATURE_SET |
  1379					      VFIO_DEVICE_FEATURE_GET |
  1380					      VFIO_DEVICE_FEATURE_PROBE))
  1381				return -EINVAL;
  1382	
  1383			/* GET & SET are mutually exclusive except with PROBE */
  1384			if (!(feature.flags & VFIO_DEVICE_FEATURE_PROBE) &&
  1385			    (feature.flags & VFIO_DEVICE_FEATURE_SET) &&
  1386			    (feature.flags & VFIO_DEVICE_FEATURE_GET))
  1387				return -EINVAL;
  1388	
  1389			switch (feature.flags & VFIO_DEVICE_FEATURE_MASK) {
  1390			case VFIO_DEVICE_FEATURE_PCI_VF_TOKEN:
  1391				if (!vdev->vf_token)
  1392					return -ENOTTY;
  1393	
  1394				/*
  1395				 * We do not support GET of the VF Token UUID as this
  1396				 * could expose the token of the previous device user.
  1397				 */
  1398				if (feature.flags & VFIO_DEVICE_FEATURE_GET)
  1399					return -EINVAL;
  1400	
  1401				if (feature.flags & VFIO_DEVICE_FEATURE_PROBE)
  1402					return 0;
  1403	
  1404				/* Don't SET unless told to do so */
  1405				if (!(feature.flags & VFIO_DEVICE_FEATURE_SET))
  1406					return -EINVAL;
  1407	
  1408				if (feature.argsz < minsz + sizeof(uuid))
  1409					return -EINVAL;
  1410	
  1411				if (copy_from_user(&uuid, (void __user *)(arg + minsz),
  1412						   sizeof(uuid)))
  1413					return -EFAULT;
  1414	
  1415				mutex_lock(&vdev->vf_token->lock);
  1416				uuid_copy(&vdev->vf_token->uuid, &uuid);
  1417				mutex_unlock(&vdev->vf_token->lock);
  1418	
  1419				return 0;
  1420			default:
  1421				return -ENOTTY;
  1422			}
  1423		}
  1424	
  1425		return -ENOTTY;
  1426	}
  1427	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102211933.yLUQD5PY-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--FCuugMFkClbJLl1L--
