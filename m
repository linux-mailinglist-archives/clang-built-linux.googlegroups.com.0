Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBXR6X6QKGQE2SNPFOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D52C326A
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 22:18:00 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id l23sf8034527qkk.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 13:18:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606252679; cv=pass;
        d=google.com; s=arc-20160816;
        b=sZP4qnQFRn+WpsRODUgrMJD3S8N10xn+uPGS/bPeLCuD5GF6T1N4Q1apaiH5c+cTCX
         YCGTY1CruigILbZV1NZ5o1nHRgxtFPth67LAWhQP2D70CzeWJCwMumRRP2iIggkGnxKC
         MfuQoS22b7K529h/7TpuRX75hEr/z/YGYL9IFjE25iQqrUi/pTSlutAgqK9Hay8IF4aB
         fMAE2I+momez2yvRHRwLL+KbbgS9c31BnfsB06PdlTk64wcpbVl0gma1zY1ggV/eaJmD
         QXQGl6iJixfEZIKEZpmXaaOm2aKhQnOnBF2g8LhGfPHCGzqG6yGfYuC4cylRn7+ud4tj
         O60Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Zi71qurLMUkxaToMUwa7ETS91Ouk4Q7tGDmu+aZQgI4=;
        b=ctSLb6tvj5fwNOPqA+lwAlGaYVKBZdUniJFtAUpbsLRNnlU7VLdDrRCR9ySWrD/XFQ
         D9xwGK/IrkWckOqDF7UPIIQgUWmhbmHsuce8geTVBX5QyYK7Kk6SfyCT8gAERQoORe+u
         k7D5EoHh2Atcfvly5I0GLNWyvsCjxdQCHuWh6qUnNxXUcaYgHUDZpfwvBJEyrMdx3qDW
         LvL0IuIjSbUTejEXA2t4o39nwgDZfKsJY8usfvfukh2EsvNu/hDVRE3IuIlK83DEL3Xq
         4gVsLEjdmdFZ5sIrUVrcIbYFPqsSVRI7FHs5dQ2XBGnisDkw8B2jjCh5IkCatPNbnU6R
         Wn5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zi71qurLMUkxaToMUwa7ETS91Ouk4Q7tGDmu+aZQgI4=;
        b=Ca4sm2Uymr/QHwKaIvteMQlFtrzxbEG4ucV2GB+695WRfFFVAhUFB9SXyxVfZ3go3L
         eSMkNv0H4FL+AV6AbyIBspJsspzviypKWPCsxLZnJo8SIguebFaEQfX7onnR5lJWbN3Y
         3q6B79Y9RnMqQ5dsC1fZk071UaY3qCJiP9B5Lm39nhe2mLYHSsT7HT8w8VbXeXrKR/mm
         xfOAz3y84CdJ5Y9Z2f/FlyiyxroC6/1+DP5ddks/8SRCB3IHqrJ7HhskgCLr5K85BPgY
         J+/nyhgOk/Ai6YLqH9oGDS1rPnB6D2IOJhcxMeAGz8aDHcI/El4F1qBVbK7JunWIXAQs
         Blhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zi71qurLMUkxaToMUwa7ETS91Ouk4Q7tGDmu+aZQgI4=;
        b=oKFRsB16t9uDEfE1j4FTkpUqKcsm1bFBIEnY5BadlRj527OD4+AhWOVMSJ0BKl5Ncp
         2hWzPstUYtaJneE++ZJAJNMEvFgBGSOfDuGXlu/cuLgulkyQLnV6XSLYtA/T6wdvv+6h
         k2FJT4d4pWGdn67KDLFMGUA3RNbXm3b1TPw8TGzCVWwBhNctjq/C+2hLwImy6euZJwGo
         681DOpboYR2EFolyC2W7VJCd+R4WPTAUi76dZm0Z1emgfiMb+FuqupqDecgFHwJ5iVv8
         QcAETgBzBTyREy856vP+3rHWiezl0Gq5XI9bbl/3uCxV3F/KIEX5GRvCcju2LSVkTwRv
         TknA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BbX6NrfvmRWgf7oeMLJ0A7Q9tm5ETCWhoQgsLVF22FMMur+zL
	zJQf/dazmf4q2T8Y2FCFt4o=
X-Google-Smtp-Source: ABdhPJw7Ay31Lt6q4AmYwhyh1f9kGn681u5cZEYsIOcG1lHRkq7G1Yooq+XhmuTz821ZY3mr7SXzFQ==
X-Received: by 2002:a25:abce:: with SMTP id v72mr100452ybi.138.1606252678803;
        Tue, 24 Nov 2020 13:17:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c0d3:: with SMTP id c202ls136705ybf.5.gmail; Tue, 24 Nov
 2020 13:17:58 -0800 (PST)
X-Received: by 2002:a25:640e:: with SMTP id y14mr67298ybb.446.1606252678324;
        Tue, 24 Nov 2020 13:17:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606252678; cv=none;
        d=google.com; s=arc-20160816;
        b=0L7eEP7CKKhA+2JvCrKoAe65QKuMAdyvIG0fLcBwkPd1lUUamy7sy+Zd+rOMbN9+Wk
         vkn2yRabZ+sv3h3+4brEedfdnWuOJTOG0eB0D6bu1HJt0tHVB4nb7OEKbo0RBwi5lRta
         /DcLV+uhoix4SrS3kPwM5KUot2yvKh22qfw9v5jihuguF03Xsb7lenCBplr20zpACpB9
         C+DhjpY74kiUIhcA5Dk9NLgDJ5ZQkTa4fSS2PkTqU1CanOAKLyj6cAReJ0sJS9/4+OXY
         bIZC0XOSEn8/MkfHpUD4N7RkniNNwUtnv70jdL6DCC503C7iCVctRbwSBxSfrW79Chsg
         X+MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=njEt4a85sZZWy+Xe9qLj/xKa7KT3MFLpq15Px+WFR58=;
        b=ws3mmYf9F6L1P4Cc57VxsdhWidKv0NzGIANgtCDW6bbnXxpVaHPnAQ+rSWtrGyvyAs
         sxnzrg5ROvyIlAnwL+OEM60aarKWLj4fBoi0QR5AJ1WZS1+83D4+Hh9K0gWnqGhOVXq0
         x6QQuZaEOhatg9gOJEyuRycUUEP0Lbv97sBnwFkgrcQu80lQzkMJpsF0lsU2ML3aM/sF
         X5t0ndzuGV/UrxkbAlnJBcyUMTsYGh08u4sLOJg3W7AINpt9oR3BSaudJcDP97GMb57S
         PAE4qk1WJXMtcfzxlE5xFUSGUW0iAX4s1jKXUhnonJ81aRY0oJy+cDtZlQDEXytvbvJo
         9gNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id e4si14761ybp.4.2020.11.24.13.17.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 13:17:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: k/2X/BGtd0GZ4Q9RCLoRut0cFSANOd+8VLdDPCwBslg/sZCunt1UPD2qIuxTBF6heszLjgT6r/
 2Neilr28ZUSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="151277852"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="gz'50?scan'50,208,50";a="151277852"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 13:17:56 -0800
IronPort-SDR: E0mLxQODL4NDajlfF6/fKBVsrpy2z62V5Ox9SiWCXrsFdvEMX5vF5ZB9Fv/A33OxQlQnU5aEEp
 /9YXxjoQA48Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="gz'50?scan'50,208,50";a="370569214"
Received: from lkp-server01.sh.intel.com (HELO 6cfd01e9568c) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Nov 2020 13:17:54 -0800
Received: from kbuild by 6cfd01e9568c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1khfhC-00007E-3r; Tue, 24 Nov 2020 21:17:54 +0000
Date: Wed, 25 Nov 2020 05:17:00 +0800
From: kernel test robot <lkp@intel.com>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Christoph Hellwig <hch@lst.de>
Subject: [hch-dma-mapping:for-next 2/6] arch/powerpc/kernel/dma-iommu.c:16:6:
 warning: no previous prototype for function 'arch_dma_map_page_direct'
Message-ID: <202011250556.1tx3YSaM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/dma-mapping for-next
head:   6b652b698b71eca0e1fa3b7e7c7c36d95734f4f4
commit: 1bbb36ad02fa8a5e5eed34d7001248312ce605d3 [2/6] powerpc/dma: Fallback to dma_ops when persistent memory present
config: powerpc-randconfig-r016-20201124 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add hch-dma-mapping git://git.infradead.org/users/hch/dma-mapping
        git fetch --no-tags hch-dma-mapping for-next
        git checkout 1bbb36ad02fa8a5e5eed34d7001248312ce605d3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:170:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/dma-iommu.c:9:
   In file included from include/linux/dma-direct.h:9:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:172:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/dma-iommu.c:9:
   In file included from include/linux/dma-direct.h:9:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:174:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/dma-iommu.c:9:
   In file included from include/linux/dma-direct.h:9:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:176:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/dma-iommu.c:9:
   In file included from include/linux/dma-direct.h:9:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:178:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/dma-iommu.c:9:
   In file included from include/linux/dma-direct.h:9:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:180:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> arch/powerpc/kernel/dma-iommu.c:16:6: warning: no previous prototype for function 'arch_dma_map_page_direct' [-Wmissing-prototypes]
   bool arch_dma_map_page_direct(struct device *dev, phys_addr_t addr)
        ^
   arch/powerpc/kernel/dma-iommu.c:16:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool arch_dma_map_page_direct(struct device *dev, phys_addr_t addr)
   ^
   static 
>> arch/powerpc/kernel/dma-iommu.c:26:6: warning: no previous prototype for function 'arch_dma_unmap_page_direct' [-Wmissing-prototypes]
   bool arch_dma_unmap_page_direct(struct device *dev, dma_addr_t dma_handle)
        ^
   arch/powerpc/kernel/dma-iommu.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool arch_dma_unmap_page_direct(struct device *dev, dma_addr_t dma_handle)
   ^
   static 
>> arch/powerpc/kernel/dma-iommu.c:34:6: warning: no previous prototype for function 'arch_dma_map_sg_direct' [-Wmissing-prototypes]
   bool arch_dma_map_sg_direct(struct device *dev, struct scatterlist *sg,
        ^
   arch/powerpc/kernel/dma-iommu.c:34:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool arch_dma_map_sg_direct(struct device *dev, struct scatterlist *sg,
   ^
   static 
>> arch/powerpc/kernel/dma-iommu.c:51:6: warning: no previous prototype for function 'arch_dma_unmap_sg_direct' [-Wmissing-prototypes]
   bool arch_dma_unmap_sg_direct(struct device *dev, struct scatterlist *sg,
        ^
   arch/powerpc/kernel/dma-iommu.c:51:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool arch_dma_unmap_sg_direct(struct device *dev, struct scatterlist *sg,
   ^
   static 
   16 warnings generated.

vim +/arch_dma_map_page_direct +16 arch/powerpc/kernel/dma-iommu.c

    12	
    13	#define can_map_direct(dev, addr) \
    14		((dev)->bus_dma_limit >= phys_to_dma((dev), (addr)))
    15	
  > 16	bool arch_dma_map_page_direct(struct device *dev, phys_addr_t addr)
    17	{
    18		if (likely(!dev->bus_dma_limit))
    19			return false;
    20	
    21		return can_map_direct(dev, addr);
    22	}
    23	
    24	#define is_direct_handle(dev, h) ((h) >= (dev)->archdata.dma_offset)
    25	
  > 26	bool arch_dma_unmap_page_direct(struct device *dev, dma_addr_t dma_handle)
    27	{
    28		if (likely(!dev->bus_dma_limit))
    29			return false;
    30	
    31		return is_direct_handle(dev, dma_handle);
    32	}
    33	
  > 34	bool arch_dma_map_sg_direct(struct device *dev, struct scatterlist *sg,
    35				    int nents)
    36	{
    37		struct scatterlist *s;
    38		int i;
    39	
    40		if (likely(!dev->bus_dma_limit))
    41			return false;
    42	
    43		for_each_sg(sg, s, nents, i) {
    44			if (!can_map_direct(dev, sg_phys(s) + s->offset + s->length))
    45				return false;
    46		}
    47	
    48		return true;
    49	}
    50	
  > 51	bool arch_dma_unmap_sg_direct(struct device *dev, struct scatterlist *sg,
    52				      int nents)
    53	{
    54		struct scatterlist *s;
    55		int i;
    56	
    57		if (likely(!dev->bus_dma_limit))
    58			return false;
    59	
    60		for_each_sg(sg, s, nents, i) {
    61			if (!is_direct_handle(dev, s->dma_address + s->length))
    62				return false;
    63		}
    64	
    65		return true;
    66	}
    67	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011250556.1tx3YSaM-lkp%40intel.com.

--cWoXeonUoKmBZSoM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--cWoXeonUoKmBZSoM--
