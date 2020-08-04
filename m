Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPXVUX4QKGQEKOCVJGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D941A23BCF7
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 17:11:59 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id f17sf6841874vsq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 08:11:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596553919; cv=pass;
        d=google.com; s=arc-20160816;
        b=SMIJCshaMCjKg4vauWlDjatwXWGk+VuVHMj59eVpb94vj8NN+Ep0l7bAs2DHASGjr6
         2ArGkLeYKAQtLARtW1BquSPd8he4CRG8TnVh5b5SfTFBfJtxoWYPKZLwlQIZNCUZpa8P
         6fYgr7ZWn3NQVjbjBf9h03xPoOgn0JZai4VT80BRlOpI9SrbDeqP8EUl7HLP9B+8F9Nl
         ZFy5oEjfceky1jOtFiyPslTrAPmSZ3Yrsc6Vfunm7dhBneRJCF85uaudSMLrdUlpXM1X
         oBmO+3REUTMndKUywBe5uyrQdPWirIXVEEKKw3oOgNrF7m5rmiLskexqyxsKsWYfsdcL
         rE8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=QQOSSgPQ66qJxm8x2CXP7ys+OKeF4IsTmU+OFrA3N0A=;
        b=WyecGtqlBh/9xEhbJhQwccqxlSpJZhc8TT6O3VlZcqy3bH7HYg773ItolsTkGmXHKL
         aGuNgGFl9FCUY6R0lyki4T/nPHiTcVdg46n6y9Qx90ptHr9FKih5DwW2yxTEyqkQDibg
         /fgK5axtSFMA1uhRYJPRgQnbcZ/cxwPOAMJ39fSue4tJ0kWh1RtswxkbUt36zGSeVP5O
         Oln4Of9Q31TwUA+vlZ93u06GyaRzZLRaVv8AflexmrngZDe8WMvqBjnOhILmdaorCyYj
         4SQAbTtf0jXioXqikMByQxFqIOwCTcNiNjaABKd713Zgh3FMVKAUggZnyA1BQ+/iECf+
         FYOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QQOSSgPQ66qJxm8x2CXP7ys+OKeF4IsTmU+OFrA3N0A=;
        b=jv22UA6p1gm+zkReiP2i3xTHMBgHYG3JQHq3dr8Dm92XadMFY0F+NUJ1QJJTIyXatV
         l5nYQKpnCaP9akM1YEuzYmb7eV7PoCWCzrCVX5Ja1pkIjLSzIUtn1Mam1QTvYKAC+4ie
         za8B09+0Pb5D9kIuR7RiHTWbGGvYSTj0W2ArrOAbskkk1CvAtY5wItYdqmY3Pa37zXiN
         h/CumziCcexxWJaEaVZ4PZEJmvy7JZwvDYVTbRLVdJE0rPspcPytDteFwZPssVDQq/K3
         4wNgcH1GsjJ+a22VU4r4gzP0kmkC5N4q+tQtA5OqiE5pKE5dfn8/B1sWJiU6c3nuPD5H
         YcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QQOSSgPQ66qJxm8x2CXP7ys+OKeF4IsTmU+OFrA3N0A=;
        b=aBKsa1SmKilkCVLsl4uXAGeBo3h32xWbDx3dphJ+m5Epuf+Pe8nfaPsoUPc9iJSfJB
         /FLyrf85G/2VKB8DtlVR8SnPf6yNTj6MHsqn20MTP4zcbNHDvULF1ESWIBVTtJChNbU3
         r9pWzKsdpNVOyGQgR6D7HQ+zUL5Mh+z+VQFbArqJLW/FhuJLy85ka2F1eJvWUkUbXs5Y
         kqV97iFiKC7X+/GT2n0Lv5kctvGleL/dQWhK5P0uiCDtTk5VCHVOvKVOyKsEKXdX1Cvi
         1hKyDKyV+YJTjVnLXDA5sN2dMXhlZiqiJTHmScXp35/PjhYchGoJa8ApYR67oqCRiZ/Z
         lZyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ppxTYrXxpjtBdWHhcStW/fdiqjn3HIjFT2xG7wyWv+/WHOClS
	a+fVwzYTt9eTFNuZuBBoaRw=
X-Google-Smtp-Source: ABdhPJxC5H3pLs8iIWGWkJI++EIceGB+lWQpFFkL31NYpKFp/GRB8qyBZ3MaDtylCnsXyNbPxRwjOw==
X-Received: by 2002:ac5:c8b9:: with SMTP id o25mr10540732vkl.51.1596553918771;
        Tue, 04 Aug 2020 08:11:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe87:: with SMTP id b7ls2311375vsr.10.gmail; Tue, 04 Aug
 2020 08:11:58 -0700 (PDT)
X-Received: by 2002:a05:6102:312e:: with SMTP id f14mr17159326vsh.227.1596553918366;
        Tue, 04 Aug 2020 08:11:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596553918; cv=none;
        d=google.com; s=arc-20160816;
        b=Cw9yuUyTbtcmp1QhwEfoU3FmgXXjo2snm3skiAWyRnYDlgew1bk6BvpzcCe6wE8UiJ
         /SXAu0ZqarfG7eqghf1F0Ep/pwQoC+UJra0915GG3pA1/vx7tfhFQRvQ2O9y8BH8kc7A
         Q/mPg951EG8Vb0Hhb+aO0M12K1ZghdAaQWPZQ20pNmOMdopx9rpCV4HfeUuKqEVM54lh
         kEt0hINQ76TrkMwG67yV7CIt+q67OfV5r7S2n8ZWD7Bky63yBfoTQ7FHrUjLAMmd180Q
         iKZL9IS6yy3YNtwskVhMAFgYvDCl5SM9hqgB2+AiWJOk5I8u33EA26uBg783ecCl9Vr/
         wg9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AotJ5oo78vNWAcuDderhZ6NqXK0jeiBI9xOmXdQtvyw=;
        b=K2ro5GR+P3A9YWqswZOQF+bFdozKdlcsF8p/R2VVOLa+HwSH6V3ELhxIN81aYlWgxo
         8lZsAaHT9x3c43O0DtMVtCrJbyb7b2TZfrjKH5SGJpaq7BUFcQ2kFk4CBnNOQk1NwiFo
         92ndE7zB2y04oEXDqfqiZnbPettwFVCWuwZMpsvJQKOMus69nzWFuSMJ04FQRsxVm4X5
         R0xRxeNEE/bmJjNnoXz7Np1nd6CVeaqQI31CHxhbP7xN3uxYkHevRgZAselVrWSGa7L7
         V2Dn9uUhfpqrPM0wSSqXeRZNMG2EgLvd8zkSh0k64wXo4+wk+ugsJX/xke4b6hT3COdn
         6xbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p197si206987vkp.0.2020.08.04.08.11.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 08:11:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: /KU17iWvu1slFQ2qKzPFzdQDY3p7ihVxsah5DsSZi06wwmjDbiGCLbaSQDq5n24RxOwcIkYCay
 1K805iZDnG5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="131893504"
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; 
   d="gz'50?scan'50,208,50";a="131893504"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Aug 2020 08:11:56 -0700
IronPort-SDR: m0kthRvlzuZM1kBHOMNpn3pYcNjdnsMr+F+xnESVjtEBGlZUAYJj886iX4DyqTLZowLFmuy+Yc
 5QeH2S70H/Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; 
   d="gz'50?scan'50,208,50";a="292603895"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 04 Aug 2020 08:11:54 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k2ybZ-00009V-Bk; Tue, 04 Aug 2020 15:11:53 +0000
Date: Tue, 4 Aug 2020 23:11:27 +0800
From: kernel test robot <lkp@intel.com>
To: Brian Kim <brian.kim@hardkernel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dongjin Kim <tobetter@gmail.com>, memeka <mihailescu2m@gmail.com>,
	Yang Deokgyu <secugyu@gmail.com>
Subject: [tobetter-linux:odroid-5.8.y 58/74]
 drivers/char/exynos-gpiomem.c:121:20: error: assigning to 'pgprot_t' from
 incompatible type 'int'
Message-ID: <202008042324.XsMrMtAj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/tobetter/linux odroid-5.8.y
head:   b0ed793e3735d509c1f5de8c851b6c45b52faa53
commit: 142f4b164d0911c7484eec5ab9080a438adc13f6 [58/74] ODROID-XU4: char: exynos: add /dev/gpiomem device for rootless user GPIO access
config: s390-randconfig-r012-20200804 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8c39e70679e93da3af9f881d314940c570d5d822)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout 142f4b164d0911c7484eec5ab9080a438adc13f6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   In file included from drivers/char/exynos-gpiomem.c:55:
   In file included from include/linux/io.h:13:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/char/exynos-gpiomem.c:55:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
   drivers/char/exynos-gpiomem.c:121:22: error: implicit declaration of function 'phys_mem_access_prot' [-Werror,-Wimplicit-function-declaration]
           vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
                               ^
>> drivers/char/exynos-gpiomem.c:121:20: error: assigning to 'pgprot_t' from incompatible type 'int'
           vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
                             ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   20 warnings and 2 errors generated.

vim +121 drivers/char/exynos-gpiomem.c

   106	
   107	static int exynos_gpiomem_mmap(struct file *file, struct vm_area_struct *vma)
   108	{
   109		int gpio_area = 0;
   110	
   111		while (gpio_area < inst->gpio_area_count) {
   112			if ((inst->gpio_regs_phys[gpio_area] >> PAGE_SHIFT) == vma->vm_pgoff)
   113				goto found;
   114	
   115			gpio_area++;
   116		}
   117	
   118		return -EACCES;
   119	
   120	found:
 > 121		vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
   122				PAGE_SIZE,
   123				vma->vm_page_prot);
   124	
   125		vma->vm_ops = &exynos_gpiomem_vm_ops;
   126	
   127		if (remap_pfn_range(vma, vma->vm_start,
   128					vma->vm_pgoff,
   129					PAGE_SIZE,
   130					vma->vm_page_prot)) {
   131			return -EAGAIN;
   132		}
   133	
   134		return 0;
   135	}
   136	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008042324.XsMrMtAj%25lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICB12KV8AAy5jb25maWcAjDzbctu4ku/zFapM1dbZh0ws+ZJ4t/wAkaCEEUkwAClZfmFp
bCWjHd9KkmdOztdvN8ALQDblnKqTMbsbt0ajb2jo119+HbG348vT5ri73zw+/hh93z5v95vj
9mH0bfe4/d9RKEepzEc8FPlvQBzvnt/+/elwfn02uvzty29no8V2/7x9HAUvz99239+g5e7l
+ZdffwlkGolZGQTlkistZFrm/Da/+XD/uHn+Pvp7uz8A3Wg8+e0M+vjX993xfz59gn+fdvv9
y/7T4+PfT+Xr/uX/tvfH0Zf78+vt57Orz9fb6/OHzfnm2/W3L1/GD+fji+uLs/vLz2cPlw9f
JpP//lCPOmuHvTmrgXHYwCbnF2fmf840hS6DmKWzmx8NED+bNuNJp8Gc6ZLppJzJXDqNfEQp
izwrchIv0lik3EHJVOeqCHKpdAsV6mu5kmrRQqaFiMNcJLzM2TTmpZbKGSCfK85C6DyS8A+Q
aGwKO/LraGa29nF02B7fXts9EqnIS54uS6aASyIR+c35BMibaSWZgGFyrvPR7jB6fjliDw1b
ZcDimkkfPlDgkhUui8z8S83i3KGfsyUvF1ylPC5ndyJryV3MFDATGhXfJYzG3N4NtZBDiAsa
UaTIDMW15iFQNCxy5u1yqIs3sz9FgGs4hb+9IzbAW02/x4tTHboLIroOecSKODcS4uxVDZ5L
nacs4Tcf/vX88rxtz59e66XIgpaJFQD/G+SxO89ManFbJl8LXnBiBiuWB/PSYJ2DoqTWZcIT
qdYly3MWzN0uC81jMSWXzQpQY8QwZpOZgqEMBU6TxXF9buAIjg5vfxx+HI7bp/bczHjKlQjM
CQ3mrsgiJJQJE6kP0yKhiMq54ApHX7fYuvNEC6QcRPTG0RlTmldtmoW7cw35tJhF2mfQ9vlh
9PKts9TumEbpLFvudNABHPoFX/I01zXr8t0TqHqKe7kIFqVMuZ5LR3ulspzfocpJZOrOH4AZ
jCFDERDbZ1uJMOadnrwuxGxegqibVSh6+b3p1r3BGeFJlkOvRmO34lvBlzIu0pypNSl2FRUx
87p9IKF5zbQgKz7lm8NfoyNMZ7SBqR2Om+NhtLm/f3l7Pu6ev7dsXAoFrbOiZIHpQ7gWjECW
KcvF0luDDuY8BLvBVcLi0miDQnFyIVMdAoEMgAT7zEkiNDk6Z7mm1quFxz4Q4lqbhEKjOQvJ
jfkJljTaAdYrtIxhnUaGDEtVUIw0IYTA/hJw7pzgs+S3IG3UfmlL7DbvgHDxpo/qVBCoHqgI
OQXPFQs6COwYeBvH7RlxMCmHjdR8FkxjoXOzqIp//vobFbSwfzhKadEIpgxcrojFHNyKzrlp
bD0a9ajUcxHlN5MzF467kbBbBz+etMIv0nwBnkDEO32Mz+226fs/tw9vj9v96Nt2c3zbbw8G
XC2KwNZdG12uiywD30iXaZGwcsrAnwu881E5YzCL8eSLA54pWWSOD5axGbdHlKsWCgYomHVb
2dPUQiMmVOljWs8q0jCrNFyJMJ+TRwmOr9OWJKmGzUSoT+FV6LsWPjYCQb4za+u2mxcznse0
NYW91Zw85lXjkC9FwHssgnaoPHpwOHMRMYVpFp0aAoyZo/XBHQELCAqqhRUoAa5HDY6I+w2L
UBbQ6iURAoSyNDz32sK2BItMggShaQHP3Vmt1avo+5qpeip3rWHvQw7KNmA56XspHjPHH5jG
C2SnccWUI1/mmyXQm5aFAma3bpoKa0+6laew74S2KN+FBsDtXacxOJm0nIZdT7OetpRo3Hwl
A8dOZmCFxR0vI6nMvkswPmng2aUumYY/KJVc+5SuL1eIcHzl+Z9AA2o94FluglFUrQ53s6j9
sMrfkQ+/rwSMlUCZcbqHM5KAyi57rpHd6B44msOxd70V6wZbz8SBGgXZ/S7TRLjRlMNZHkfA
bVcIpwycwajwBi8gFO98gsR3OGjBQZLdBnN3hEx66xOzlMWRI5BmDS7AOIQuQM9Bc7obzQQt
VUKWBax4Rmw6C5cCFlYx1ju70PmUKQUuNRUsIfU6cXhcQ0pvgxqo4R+excpragWmv6vG6KwY
6ILap0Gy34UrSyA3BhV5lgA89q8kC2AtPAxJBWF2CY9O2bjcrf4KxmfecTRms0rVZNv9t5f9
0+b5fjvif2+fwY1iYFADdKTA+229o4HOjcq1SFhOuQSvERx/0m37yRHbvpeJHbC2tgM2DYJW
BtxVCxKtY0YbLB0XU0qDxHLqiCe0BiFSYPKrbfQ097yIophbl8AsnIHWJz17GYnYuhsNP/wM
TKNREsfDu4MIowxdRYwu1BRlIQ0Fczw+jLbAhNRujrMCiIgX1nns4epYbb7iEA8RCE+fOMDm
EJTG3Hl6yve2KvkABhn+OGQYWxtiL0wTEtuBl+hE0FkgIOoXajE4SgEMnrpmXp9fn3WNr0xg
wAjsYzNrZ4iZTZ/FIHCgQS69cxXDQjPMPdQBRLZ/ud8eDi/70fHHq41AHJfUbZqYed5dn52V
EWc5hFLOJD2K63cpyvHZ9Ts04/c6GV9fuRStnqzbE8LbNiVa8GBMZ7HqVucnsXRCqsZeDs8G
xy3zwg/A8bs+p3Q0igS4G6ew1yexuAsn8ONTjYGFxIosDhfUW8sQ+yokzb0KSTHv6mLqGiCr
OvuZuR48cU5jqoyvf3N10QiYzLO4MLrJXQEGWpSCNYdRJ3n3fCZBFwIO46ILCxVbee6WTViA
2oCocd1JE40HdhpQk8tB1PkZdQxsd45Wmd/djJ1bgAW/5UFHQSnw7KTn3lS51lROM2IM8DZl
dQ/QWv0KVsooot2CmgCjixOd1p5f62hwY7FQ8ZEG+5SaM3ow2T697H90rxCsajaZR3C/wFLh
AF3N3aBbs+ribaM6rVsJ2Hs0Cv5adkeqqHQWg/bPkrDMcrSVjssrIVIyaQm0tlKFIF3XrbYB
b3i+1jhTODr65uKqzQMEC2tdvTgFY0ALJjPYKi3DNQSmYEfbthW/PXbaZPMnSaVLv4bCua1A
8wiHMirSAMMZfTOefGl1vwaTal3sZoY6wFPjZ/1geQUV4y4jcLyDYOXO05+VmWj49vQKsNfX
l/3Rpi2rwRTT8zIskoyUMK9Zc6J5gArIDRFXHWuWQegtwptq8OVuf3zbPO7+07lvBKcg5wFE
1Cb3WbBY3Jk8YDkruPYcuaxnMuqhEz84ybI4hBNjIgHaqwTHo5yvMwj0Ioqf9gZp6fXqz264
WzNtko8dDth02fbx23F7OB7c/TD9FOlKpJgbjKPuPV6bTmtae7eFm/39n7vj9h6VwMeH7StQ
gwc/ennFcR3nx+67H30aBdmBSesZ887+OuBWc1ofj+Dp7yBeJTjq3I1Fc2BmAGOudbPQziA8
ikQgML4oIGyF2BUTNAGmszsqBAMbvKfMRVpO9Yr17iO73qeFKp7TCAstQRCjTurB4L2Ivr2M
MqRzzyIaJIQHmFTJxayQhTNW7a6D8Ta3IdVlcGdtqCBAA+YiWtdJoz6B5nmlZon4VjcKLTdZ
D3Nr3V2ATspEhtUVcJchis8g4kaJRI1Y7QGctS4bMDDuKgIMPLE9BTe5PNsnaiCKqZToUFgi
6odArZwxvCmprt4xb0qiMRv/DglEPvavHvetQNi8eC8BY9AV1N6yD+BCWfSNsMlOoL9nbwnr
e3uCqIqxf4pWxqFDT7G1UvAlnHAvCBuCV5l5s5OVTpeqvn1zez95/9VKM7AJjjrQYXrq/S7w
JA0cyBT9GNQgmBnHIJdcrozwQkvl6w4WTkTtDfFARO71EKCKGHQEqh7M46H4EUsxKONjirvu
2IHM1nUBSB73z1wsrGPU5AcchseYd5gCAhyWUDtFFri5Wsx0AVNOw/MeggW5JxaVIJzGnk/A
tSqJzTDrXCYs6/tZLZRKCDZbnYMGzGunW62cTOcJVLe53QyyOYVC99JNXHXNCfZsHeNArbPm
oncWyOXHPzaH7cPoL5spe92/fNs9eje8SFTNmejVYCvT6acwCUybhzoxsLcdWEmFfrio7kc6
eax3fIO6K8zuYDrZtYsmsaoxd9iWaFVHwMs5WG5bjz2WjL4Eq6iK9BRFbYpO9aBV0BQtxfFJ
SjE7ha7rak7RYHpsVSZCa3sxX11dlSIxKS6yaZGCfoCTtU6mMqZJQEyTmm6BSWwqpVIpG3OD
HYOH4d9PTVGgqaQmQ1fYEUOdjjtCaavaQL9h8Zla+4HXEEU5nZ8geqePn+vAr6IZJNGsF066
ZChhJydjCU5Pp6I5PaGWqHex6NJaXX+Kz4biJ9CDc24pBmfskQyz0JCdYqFDcHo677GwQ3SS
hSslcn6ah5bkZ/CD03ZIBmft0wzz0dKdYqRL8c6U3mNll6rHyyJ994Q0WXuWSwwbVOKE98Y0
2MagduUqdR1BtdJgNweQZkoDuNai22s6WAeE8i5FW/RgjDH/9/b+7bj543FrKp9H5sbq6AS4
U5FGSY4OWM+doVBmAi3ChKcO1wDkx8X4ZYKW5vYQW1VVN47dtD3qQIks74HBmAR+l1UY1Jju
oWW62b1k87z5vn0iw/wmjdf1bG1ODo0eT91Eb5sVvMV0HadQS/gHvbtu4rBH0R/UmCqTsCv7
+IjpvJwVWWdXFpxnTdsb/+7YST5SmWybUzT5RJsTv/BEoePtmltCxVH2vcAkETPFOqS4AhaG
EFp2c/YL7TC7Fg7DrwREH9vcXJxdN1nK00EKhQVPZMXWnt9FkiX22p1KmsWcpQEL5n4FB3kb
gNvpBUgN/V0mZUy0uJsWThLjTif1xWLbsoI1t3rAnaxTOtAnxiNJlz1zpdDLMokNu4umBrqZ
g8muGDjGUYv6mrfeS64wnuwVQbbluFjWBMHAPGEDd9jGgMk0xnguM+UvZG6x0XJZzm1MyTxH
f/hA1z2kvAlH0u3xn5f9XxAEOMe+XRSsk1PsAv3vhEL4hclllx8GFgpGb0c+4MfeRioxCR0S
i5VYC74m5iOKYOkc+Mh8Pzn9hhBGYqUyWbomLEPaIpTMVvwErJs2bQngWGDxUlgqCbaMqgYA
oix1K8TNdxnOg6wzGIKxaop+SVARKKZoPHJFZAPPECxyhmaGJ8XtQHkbDJEXqY02nYK1FBSc
XAhO75VtuMzFIDaSxSlcOyw9AG5LyegqSYOD2GkYKTLUzgO73S7XBaK4dkB5kNVgv/sizIbF
21AotnqHArGwL6ByJF1EjqPDn7NG2qh75ZomKKZubqk2GjX+5sP92x+7+w9+70l42YlqG6lb
XvliuryqZB0NPn1HaYhsAZ/GvHw4EJnj6q9Obe3Vyb29IjbXn0MisqthbEdmXZQWeW/VACuv
FMV7g05DcMDKVIY8X2e819pK2ompoqbJ4upl18BJMISG+8N4zWdXZbx6bzxDBkYoGCZRWXy6
oyQD2Rk62vhyDZO8g3aupgH3x6QDwWYmg4YbiG2imH6ckJ1AgnoJg4F5CqyvHlC4aqCsGraJ
ZhrLExIeTwZGmCoRzuitXMYsLb+cTcZ0cWDIg5TTRimOA7pGh+UspnfidnJJd8Uyupoum8uh
4a9iucoYfa8pOOe4pku6lAV14XC1exhQBXxhqrH8WuKDQ9fST2EzGHrIS7IzmfF0qVciD2jl
syS8BHeeEPQuhrV6kg2YMltDTg8518Pejp1pyOnFIEV8Dn6vRq08RPVV5cMDpIGmdKFyn0Ko
yLz8cc3lbeZFDlVhPnaYqYHKXocmiJnWglKoxm7iyxENYaVXdTz96jknVZXtQBcRJlnts1bf
zx3hZbdNtXtsyBb5jHdkt3Kney07CNd1dlY7cBJYBOtTQ3okKhcBrUpWImG3JEZFCxFTERSu
69qt6DLf5upLeO9GK4Sp4aS3jgna3gc8m5dDDy/TiF5lpkHdd2uRXJ8yonGURaqVAYT8dSRa
h1tKwvQ6deIRE7Fckt46z+c5RKL1Ge8kFXhb1W0LYbZ/7+63o3C/+9srn7a30oFzpd39qB5v
dkq3hckX0LU5iGU6S7xuDIQqVm5wmVxxhflEehM8MkzW/RRx+2pjkBDC0oReBb5f9XnRe9Dq
9nRCIBGr82LARgFSSFoXIg401DCOdfRSq6Wr6kegcvG2UBhg9y/Px/3LI75Me2ikwus7yuHf
oVJFJMC31XU9xzB7b7HC/LY3h3B72H1/Xm32WzOd4AX+0P1KLdNFuCqzmNnH3IOzAb+sW6VU
l3OdGMqmFF/+AA7sHhG97U+lzlMMU9kZbx62+HrAoFv2HqgCNLOsgIUcJHNobfWz0ne7bQoj
6W1ttpw/P7y+7J67E8GifVN5Tg7vNWy6OvyzO97/+RNCpFeVT5Bz+vnF6d7awxcwFfoHLgkE
+VwQCKdF87o7Cz7eb/YPoz/2u4fvW29+a57m9G8ZKJaJ0PcL2nqz3X2lR0eyn4Eq7A37nMcZ
qbbB6cmTLOo8VrGwMsF7eXJCEHKkIcP6B1r+lR02EipZMWXrwsLe9KPd/ukfPAaPLyBU+9YM
RCtzb+3ePGAmnDUd4pO91irV1LaUqb9WgpK+a65koDsvx8Mw18/4qLC+JxiIMvA5R6jEcmAi
FQFfqoGI1RJgOV7VTWnLdinLkJRfpS4XBf4mSd4p2TQ9ML1Og7ofU1ZHdGPb10S89EsBm98r
wJqfIpemFxq9LGL4YFPQs7lwyxcUn3nXDfa7FJOgBwNjKfqE7nVbDTt3UzYJK/WcYRp6WkSR
Kz6Iiox2q4t4/MKM/iEyEjp9O4wejK/iOCnJXJT2RDd9uHSOeyfB3wo6b53ahHaqyTKD3NMr
8Gm2Qvet5mZ/3OFcR6+b/cFzo7ARU5+xCs1/h4aIIAnN1aNB0hMoZdS0daDAWPM49QQqFMqs
eG3rIW4+jv3BvS5MRakprh8IXfstMMePKX5ad/c4YhhVwJ9gLfHZu31El+83z4dHUwQ8ijc/
OmbCrF9mA2UogMSZCLyJwtcYJnbs7Y1iySclk0/R4+YAhuTP3atjkNy9iITPx995yIPO4UI4
HLCyBvu7GQkM1k3WUJLvr5EKj8qUQeht3s2XY7/zDnZyEnvhY3F8MSZgEwKW5jzGn7TqYVgC
IUhP7hEDloa8EKvQRS7ibjNg/kALJRN/bDatbl7bX30Y3jnrm21eXzFkrYB4F2ypNvf4CqQr
SGhnYMn13doJocLnE4w2J4g3vCuXWNBJqxPTCXhundW37uI7E2+q4T+i37PZPW8fRtBnpdYo
f8qMmASXl+PBCem4Nx1vzaew8P8O2jrqu8NfH+XzxwDn3osjvR5CGczOSWa8v86OPkh5Ch7P
sJJiq7JLYGYTZ2GoRv9l/zsB7y8ZPdn7xQGG2gbUnN/vypXsYtrRLAAoV7EpddVzGYfe/XdN
MOXTKu/T/iRJjcPCAM9+14hZXPCp6J7C+Rq8MDoil95PVoCtQddj4LfSALuQ09/bUQGA1/fe
+wOAec4BfHeuJAGCiYuYDfzaEFOYQOhtX7pMOBV7eXCrF3aH+76rwMLLyeVtCfGMNxsHjO4P
5ZcXSbLu/iJVNmdpLukTk4soMU4pnUAO9PX5RF+cjYmxwC2KJf5+UQnu81IEfjXpHJysmE5J
sizU11/OJmzoAlLHk+uzM/pxpkVOqDeEoJO1VLrMgeTy8sy7VK1Q0/n482c6FVCTmNldn1F3
tvMkuDq/9B6Shnp89YXO/+shLeUGq73f+msvCUzCodRh1A05626WGUsHUhbBhJRLzsEZSKhI
/v85u5Imt3El/VfqNNF96GmRFCXq8A4UBEl0cSuC2urCqHZVtx3PW5TLLzz/fpDgBpCZgGcO
XoT8sBBrZiIz0VKauPax2CIdNeWHmBlmJB0hi6+raI35xHaATcCuWmCPLlUyBk20OZZcXJFC
OfcWiyW6p02+Q/vu7dpbzOZzGx/t5efT97vky/e31x+fVWCE7x+ksPZ89wZsHZRz90nu6nfP
ckV+/Ab/1funBpYCbcv/o9z5pEsTERBLOoaLthgYmnIMk/fl7eXTXSYH/7/uXl8+qRii46B2
Gc9FOcgbYxL6DbbyNMmD55cHfKPg7IivdbCSk5/AIPYMwxWACiKZ9CuJOMaSkYybGKdChCPc
xdbYXFtGBe5duiN71mFABHNtna/DMmiKgZOY+BS2w8M5v/OCzfLut/3H15eL/PM7tuj2Uuq5
JMTe2xMl5yZwucVajXb90MaG0s49dRnUWkSONztFvqMug9WpQtyPSIH6FFc4i8MflOOlxayo
5hQnFzO4ksWPgJIkna8UBVQNhJ59K0X/0w7noQ/EVbJsnyD2Zfld8n+iIO5a6hPeQJnenNXI
qJibRO4zJ+KXtfdLDXVNnKcZ4fwaV9Or7X70wGOu5Ye0ETvLk0su5oCZnvf1rTwWZg3zTPEu
LmvOTJZGJcH2Vu0nSwEp4MDNWctrL/Ao86o+UxozMKyeOGWnCStQTYqRteZmdMyYcerM7Tbq
GrXa1AvN4kfdHNUgGcKs/Bl5ntdQY17CyAVYiDG9TLkI8zqJ8QorhqfD2BfG2RHXKWXnkOKS
HBDwWQwUqhNdo3mqiio2GqZSmnwbRWhoCS3ztiri3WTmbpe4dcSWZbBn4Mtpm1/xzmDU7KiT
Q5HjLC0Uhl8yi5uoeTZl5fSM1FX8+MFwPWN8b44pRrQ83X2OIZjFqDGIkemcnMwd4XjKQWUu
O6Qp8XtsHXJ2Q7YHvJd0TEVg0uThNL0LmREnjUC+8shTYd7id0lNja+BgYwP/UDG5+BIdrZM
MlFGu6bbFJJFmcobS+nAsyRPhp0fZwbw00IreGdu8a3dZ5pgRqF6ru7+f6wo9YmgY3K4p3fh
8/J4dkq5IVdsue9sO3/s4kuPHalSmrwEr4dcnkAZXFFNd4Z5SYeiOJgxFg7oPYyW5XiKLzxB
N+QkkpL/FSeBis9osYfug7wLsGPgFoTgf8Av+WU6sVCTK5VFEohKgEIVt6RaJglUHsI8Yp95
C3wmJQd8s36XOUYqi6szN+P9ZOeM2l/EPWF1KO5vjtM7k7XEeWHM4yy9Lpup2dRIC2l9jqSK
i5W8vzjak7DKnG33IoqWRKx9SQo9WSxuznovHmXWmdiHV1pM16XslvUycHALKqfgGb6osltl
6h/lb29BjNWex2nuqC6P666ycfdrk3CmXERBhKqy9DJ5DeHYDS5U+MRMO18Pjpkr/1sVeZEZ
O1O+d2zOuflNSXNVPkr/h+0wamMGaqeCf+8e+fwsz2XjiFLu6bsJRzzPWNwbLZb4wnEctk43
8ksOST5RZUqOXc4+tMNvHK7294lD8il5LiCShGGmXjiP6Ie0OCTGYfqQxsH1ivM4DynJfcoy
rzxvKPID6uKgN+QEOhwzXNMDi9fyAGmk+I9zCg8MtHiUyXuVOedMtTO+vVotlo7FUnGQwgw2
IvKCDWGNDqS6IOIsR95q46pMTpRYoFtLBfbMFUoScSY5GMO1RcBJOBXzkJxcD9GjE4pUis/y
j/naAGEJKtObPYynY9KKJI3NbYdt/EWA3QUYuYzFI39SESElyds4BlRkwpgDvEwYZcwH2I3n
EaIUEJeuzVYUDC7or7jSQ9TqPDE+r87kBP+FoTuZj2zEZXnL5GSlGFy5r+ISAZhw58Rxkpwc
jbjlRSlM79PdhTXX9DBZpfO8NT+eamNPbVMcucwcScNKyYCAB4ogfFzqiQJvXubZPBDkz6Y6
JoRJGVDPEIkxqTEHRq3YS/I4ufxrU5pLSE24AYDHtNQKby9z9MK76534mtBbZIdJU9nXFGa/
2xFK86QsCYU7iLqtUhhXKx1vlHF5WeI7qZiId62y/U94u+xLZ8g/Mwjo+Tgm/vV5sHqsWTb+
kh3YeZSOi/iAp7QhgbSC2KV9CgB8VHpdvq09qsXHr9/f/vj+8fnl7iS2vSpdfdfLyzO80/b1
VVF654T4+enb28urpttvr9m+KKf/y0dwHvht7rDw+93bV9lNL3dvH3oUcq1/oXTc2RXUftQ5
LwdWJPjmoXw0EFv87k7p24838m4kydu31UbuBRKa/R58zFMq+k4LAo8SykumRbTBB+4pQ5YW
lMV1lVynoMFU6xNEUP0IUc7/fnpvWsh2+QuI02Ntx7viZgfws4s+sZ3XupZyXmhz3vPbtpgY
B/dpTbzDF78GKMMwin4FhDE1I6S+3+JNeKi9BRHU18AQt+saxvdWDsyuc/eqVhHuKDcg03vZ
XjvkUBKykoFQk5QwJxyANYtXSw/3cNVB0dJzDEU7lx3flkVBgC9zrZzrOgjxkNkjiOGrcwSU
lefj+ssBk/NLTdwgDRjw8gPlgqO6jgF2gOriEl8Iu5sRdcqdE6CQOwb1NF8HudbOUlhcStbS
MWRbhpkQatuPZgUFP5tSD/83JDVxqjsCjunb2w5LBilR/luWGFEyfXFZJwwtcCDKg3R7QiHs
VppWUyNJBeRQZiyGFmWgc8nLwb0bzoWMjeCgwSREU6224sSO96jz4QjaQ5jO7q5vXlE2sYdo
SYJXCcGJtwAITMxV9RaQHPtwsyZC7isEu8Ul7qjR0qG7pkYgE8hZSOE/thVCbnfdtw4Dbq9o
xAG/Yz0xIeQAoV5VEOVgTwT0aAHQs4JVnNBpdusnEZQiIVniJj/Hp9dn5ZABMbWBn9GDK4FS
bZwk6if83b3hMXK2ilAyWGDIzGvJkl1uV/IkWxVf0Ca31O7CeFLwtGbhZ9SDC10xFXOUEZdb
O6A9AQnISWGQbz/EGZ88edKlNLmQnAaSni6NC5E+mWcnb3GPn0ADaJ9FiwmkY+yxcR5NmxC2
tmUOPzy9Pr0H9n1mf1mbwZLOVCyeTdSU9U3bG1sLOTKxe3zSD1dj4amKYwHOMdOImp1p9evH
p0+afNAamH798kcEjyx8b8lKTkEsjNqtTano0oSIYtFh3glcaOjIItknhP1Mj2AsvxLiYY/w
VolYE6doB+pWxbs6PpCaRRPqgnVidCmcSLmUbOSKeFO4I+9F2qSlqw6FSvJ9yq8uKANVlHrk
KjkkTM4P3JCq791yaoY1WK0bU2iWMYfXsMExjzDjypsDMTfy4rHIUBXQCZQW5irq3tik4jZ1
ryiZTuDn3v/MTDPjTnWfAe51k/Ndo7C6Ui0ijSkkrXv1DWlcZ13FWrsuQw4us6Rp35jDR+d4
6YJIo1RgLeTQ4kTZ7oxjHKUk3BtxAWWCuRPLFh3a1zLUK3HGODD5p5x7SLTqkfeTXXGusKnz
wF9rL7W0v7vRNtNMB9EukdmM4yQEfVtHsLQ0q1Ap44Doqefa9xfT6adRkBb03ZbBhDtPyiv2
W6MkeOahjkusgHMmmfFqZ8RGOWcMu17LirxSISdHrZVMUjFA9bDtUNk5OxlDKHe09IY7SfDr
LS+EOtFhhmjqr/l51+dp56dcgSdRd+8MYRTwpxv8a1vFhuQh56oi3TFT/miUbCR3PPP2y+9f
QsIkJiAeZS5+NovKTte+7uzHp7eP3z69/JQfBO1Qjj1YY+Suvm05HFmkFPLzA582RBZLM84j
YBLJbYZIa7YMFkQErA5TsngTLrE7FBPxE2tjxdGYYR01S6+sTA3zZWsn6flb72fFhpg93stM
w3gPzBY4r04UnyW7k3iZ/uHr9zeHW70amTTxwgDX8Qz0FeEI0tOvFnq2W4f0eHT2lSQ9mTGc
OlEQ4iAQyyS54qIgUHN1iY3zEoqubr3lhMPj+KlhSSSHvaF7TtJXAa5m68ibFT2ZzwkuYna0
sprHFFBbgXqz6O4v8Gru3AV/+yxnwqf/uXv5/NfLM6jQ/+xQf0gOFvwIf5/OCSbnm30x7ji8
haoCBIDnIoRG+SUs4V0AMJ7xMz0e1tYUtMZLzQQWu1tZ3Qf0YIgkm0Wd0MhEYBL+U+70XyTb
JzF/tovyqbutIBZjHctzQ3Ics6KKtw/t9tGVo43vtIy9mPRxL4VRG8fkU6ngMoqYUoFy2oGG
yAe0J9sAidODbWoBZHKyGl8x2zwD436aQYA0mYZ4eI9s3cWFECXGVJvRDY7C/GEcs636Q+iB
VAbZUSV/+giuSvrwQRFw5iIVl2bYMflzHiSo3f9L0Rc9P4ohG0vVk1D3PVM6JylxGKXAKuw/
DSr6R72M8fb1dX4M1aVsxtf3/0Zj1tRl44VRBO+wmHor/e6uuwOFOyUybqJ2iff0/KwiCMj1
pir+/t+62+e8PVpzkhxEE0y9Ir9XtkHTorQJyqNW8k3HzuU29PweUez7XhrkApjPZppihdRr
2ZM0dZmwGBms1kv489O3b3LfVnsgsupVzvXyKtmPjNglFaSV1Wl6Z3VOA3YXKjqiIu9r+GdB
vBCqIH20Eet23CIrcstX9GN6wUXlth+30Uqs8Q297Xxal9LRC0vu+YY/6els1+ynvIkZpBob
0+EUV6kvP7/JuW/IfW3h7UWjocXT0sH12NKyXU54WalOh/BYmB2aNjkX2JT1r7PmdOn25ihG
mzh4O8A+CteYzaci12XC/Mhb6Aw30oHtYtrv5h07DsucOsSoQnLpjdjWEaFP6z4haZRrA3Ft
2YN4i/JxplWhqh2TwvkVnVdIQ81pczhI2QXe754OoNyDzQdxLphs1IbLi8/GOaTsC1mJH6Ft
DngiARMwh/B7ZaqpFPTUduskaMdLpntw9RtLvGMQCFVudKbiC4IpqfxIS+DIPcC3yQW0WGkR
UbqCGnbxF15o+DF0lJ3w1xG+3xkQrEMNgD+vNeWHQjKDwZwittq50bfeSGztgieJffbtg7++
Xq/Y93Qk8maqx8nF7a1xU9AJxJ+3VFKizSIweLaOlJbR2l9bxsg8R4dsdbAKvXn6jndv6UFj
lqtwhdUpv3kpRVhLpQqhv7euE/xwTZW6DjA9moYII9MiexjLbBss19YROMSnAwd1h79BVRl9
UVW9WYYh0vTdZrMJtZBA/YLStKYyoWfqj4hxWf70Js8tjCMZAjns1kviEW8DgptqjJDMWxDG
ESYGF8ZNDL4JmxjcmsPABO72eGt8CDXMxl86QmHsatk/v4JxtUdiVtTdiYZxheZQGEc/i8BV
imDrlWtErxC4JldPv1YFYaU7lFdywnJogNTX0l7hTqx8e7Mh0oij1Ul4L7k/nEnuMfu1Fy1C
3IFKx0T+HrfQGUFhsA5xxceAqaWIe4LXmOy4Qxp6EXn/OGD8hQuzXi1wGUND2OdhK0wQppc9
6JgcVx6hXhsGA+SEC+V1P6DqyL5O3zHCuaoHSMai8nzH5IHIfTHlhNZj1HZuX10tZk0e0QZu
42hTzeTRZ5/RgJlcCOEY395JCuP+tqVPmCaaGHub4bhfLVb2yhTIs2/1CrOyH0+A2dhnkIQE
3toxWyGCj2t7UZjA2ebVyjFjFYawJTUwv/RhjlmWsTJwnd81WxFPJAzjnhG3ECNg7QQ4pl/m
OLElwD4X0oyQBjSAq5GEwa0GcDXSteol2+ECuBq5Cf3ANV4Ss3TsLQpj/96SRevAsScAZunb
uyWvWQNO9fBAD2nF0UFZLRe9vQsAs3bMJ4mR0qG9rwGzmcbYmmJKltEmO30X7KNwg3d3mc3U
6dPcl8x54opj7TgGJMKxzCUi+OlCMEcZlnu3gVPLuNxv7ROCZ8xbEiHuNIzvuTErUBDYG50J
tlxnvwZyLM8Wtg0ce7Ngx3DlWBQKE9hFIlHXYu1gEkSWrRzHbbxjnh/tIqewJ9aR78DIHo9c
jHge+wv7QQkQx6qSkMB3Hl2EyfEAOGbMcdbWWek5NgoFsc9EBbF3nYQsHVMVIK5PzsrQs7fl
nMSraGWXBM615zvk1nMd+Q5R+xIF63Vgl5QAE3l2CREwm1/B+L+AsXeOgtiXi4Sk6ygk3mMy
USvCk0NDyY3gaJc4WxA/YlFu1LkZa28SdQnq0U/14J2Y03jGqwPPwewWFK/Fft/seBrfmkz8
azEFT9S5fXKxn6eBeZZ69bSukhKpt3/+71CcZft42VwSYZgbYcB9nFRtBHq0k7As6skC9Ya9
NQtdOgK0thcA2zg/qL+cdTqaB/H+OzhOV4/+IoiOvuPnfcUftKkxawWE/1Hv/lrbOr2z7Mi6
Qn82/S4xvA1WHOYpjfnM9JCcF5f4Vpj+kwOxtR1VxnXdo8zYHdgABx8rdQ0N5S1m5P5eVylE
L09v7z88f/3nrnx9efv4+eXrj7e7w9f/vLx++apf7A2Zy4p3JcMgIh9iAuTqTUfbRQqUF0Xp
LqqEULZo/2hAfQFAsbZ+IrL19Zj9Q8cDV68n94WiU0kpjKyIzv4cw3SIxySp4AkrbWqNa6F7
Xsdaxe5ip4M4HVzxNgygOE2ytbfwmsuOcNdZBYsFF1sSkMm5GfuzAvpGJvHBjyL9K/tbzj/+
evr+8jwOCHt6fZ4+wlMya+tlnXg4GSEbXBZCJFvTclsILKbdlmUxCt9OntgejVD//vHlvXoU
whLzfr9rYlZHm2VIOG8BQARrgiPpyYSaq8zUZlWGIaEHVPnj2o/W8+jIJqjOeNqAcwJllD6i
jikj/JIBo/zhFgSLqwC7Tbj2sgvuT62quZb+gr4PBEgG5sh4l6pO2cWbBXHFD9mBHPrWGhQE
Z5d6MqFSHsg4P9aRPYI7B/IhrjnYHonmQDi/qT5gXmC7N1WY0l8RN0tAPiYryXarLkMxUi5W
j7Qx/FOALGufmG8M5LSUZMJaFmiUJS20LHkQKyI6JpDfxfljw7KCCr0GmHueUS0DchSVWURE
+Bjp9AxQ9NWCbqO6/w0J7V4HWK+p+58RYJkoLSDCZekRQEgGAyBaWgHRZmH9iGhDXIIOdEJr
MNJxAVLR6xWlievJttJ5vve9bUavEMkv4ObWQCzZPpTrmO4d1DhGp9fhwpadhXVIKP0U/T4i
ZGtFzcN6Rag2gC44s+/6IlmuV1cHJgsJ2V1R72+RnOT0Rgh6I5zr2F7DheNUElLmt1BvghF8
PpBreCcoCMJrUwtGRdIAYFoGG8sCAPMQIsRGV02aWWZQnGYx8cB1KVbeIsQnDxBDyqyxJRKm
hqpRCmDZF1oAobMfAL5Hryz4btkzlkO2Q4SEjk6rxdK7AIgIl4UBsCH6SQPYD3sJkkcBofOp
L+lyEVimqgRAiDr7XL6knr8O7Jg0C0LLblGzIIw2lr54yK6WMT9fIwtDI0XvYx4fYvyWQrFl
VfJY5LG1Iy9ZtLScqZIceHaOBSDhwgXZbIiIC7AtFsdMcplrj7KQ1EGSDbRssENJFpCogX2y
bJF1tqfbcWG7TbAk3poG2VCUyJzR3bwoMUQrhx9AKUJcQFXzQ2IQ68AdiUGY/lM5DZBwAvHq
lAoeAQItGSAVvL58jHfFhYS11XRVzEStw+vTtw8f36Pv0O6quddKLNNGx/6hq/Tk9jXR16fP
L3d//fj775fXThFgiG77LdrlaLb28cen9//+9PGfD2/w6BbbzUNqjbwv27WPstuisW1jdp8m
h2NtgfbPSTpqHp6unHalJhQXJ+Q5smOym/tzyETDYi/ZjTaidcXzA/FqgQRScTFOR/R5eii6
U8n1OgPx7eU9OLVDBkTehhzxkow9o8isItw5FbWk3kpX1FNFxW5U3cDT+wRnSIDMjryq8MBG
LTmRvyz04kTtzkDOYhan05cu9exqmdHkG/LArUaXY3co8ioRdO/wTDR7XN+vyCmndAuK/HjP
6dYfeLZNiDgFir4n/DoUMS2qpCBuowEga6bD/CjAjf7sS5zW0/eVNPI54RcxDflrNu9W0Rpr
ACSgC6SpRHwPoL2Lt4SWBKj1JcmPxAV82y25SOR6tjQtZTMDd5PO8+KMi+jtpD0kTEUeskBS
iFxtod/2coOkx67i7dylS1DBwos9rttUiCKX+5tlekKonsQ+hfKaite5a+S5x/FQSkAt4xwu
I+Qkpud/yes4vRHuQQoAgUSYpQCI2VXBPKWXSVklELOSIos4sX2GLfybooM5LUQApBHks1Ed
lacQ+YMwOlWYU16mlo2gIiK2q2UKgapiYdlDRRZX9bviZq2iTizrQW4kgjIqVvQjRGSweJAC
6ATnbFMKQmcnEdckz+hGPPKqsH7C420nT1HLimqvd5sj4dX7v6w9y3LbupL7+QpVVvdWJXNE
6r04C4ikJEakSJOUrGSjUmTGVh1b8khy3evz9dMN8IFHw8mtmU0cdTdAPBvdQD/4URrpKZPr
qDXECd8GIVAEkqZCHskgpKPgGMWa6FESsAnuBBJrsvBAcQ2LIgowXWPIpCdixFtk4XWUhqYH
sUQA/10ZLuUSnmXeYrdg+W7h+VrllhKpF9ZyERLxYFBawCiEp0/v1+MBhpQnr6bEplWS8gq3
XhDS1/KI5S9eG5uT9Adf0qph/twSF674ln6kSiQwI/l9WNiujWMqlnUMYglGqpP8lCpI4+ol
ub3mt+PhLyL5dl1kvcrZLED/sjVPpWAUxVDCHa+NgEHlGq4r40lYY0uS55roKz+eVrve2KJE
1oTZwGLCtQru4Rz2qagxmEIRn7xCWO+K71oI/67CqZajuFa78PVlo2d+baEWL3EgkBSttlSV
e0HyXgYYRl5aYywsEFBWwNdVrJoSuIoHFudzP6aSXPn33LEDkJKHOcbjCgAkhT3hObNDgA2V
cHVptN1pFTc47ou4wDK7eB5/kA+B05BoaJ1vi/Jd4awxLAAffFAv4riXJzEo+WyXiu43k+M1
0QHqgc2/rbxdwbuvTAC6NqozIuYQ1X1fqnK6ntXBr6UQjFjpLNReZe85nN78VU1kLzkKJLQN
ZsyEHUULaRVZHkQzbDu1FyqSRcBSdbU10Covm+z3q/WxGbj11g9zkKkkL9OF3++PxorrXRjj
GHthuNNEs3rlMVj6fAtg2hXYqWwubROB5QYkNe7TJ9nlDu8ZpmjPpOwWGUMf4RKFIVqrJNLJ
qKZHW6Nrf0iZdSEm9bMNavZKFm5E+MDNWoRSG7OdDCJ+p5dY5J115Q1dXSRYaTBVir0CELss
Jzs6M8+GZPrkzQyQYRLHa36ySb6iiFF/weLllHK3OZw2buCoWImT1YCqqyIJA7y0iqeXq1B1
0qpod3GwohJKbPxUScAQzjwyO91mkeQFdLuIpBgWHKj95B9Svs+hdHoYgdPbIKAic6qQ1aqo
m8bhEx8Pl/P1/PPWWby/lpcvm87jWwlHtSxNNumDPyZtPw8qgSUcW16AZruSbMXgDAh8JSuG
gJhnpY4WRkyce4Xfg91y+qfb7Y8/IAMdTabsaqQ877KxGiokpgMmGqlnK1exKTPC51aYMGf1
p2hOU1UA+/M3yMbuYABqpL0hS/FXRE8RSgOI29fb/hGzMGiiMTscSpDQzi/lTQvLoGEE9Wn/
fH7E2C8Px8fjDQO+nE9QnVH2Izq5phr94/jl4XgpxRW+Umd9lvjFqOdIWdQrQBVwT//yr+oV
kuj+dX8AstOhtHap+drIGSinFkBGfe2ZqY41+Mt6hWTAGwZ/BDp/P92eyutRGUgrjXADrzNx
QKff/y4vnzvhy2v5wD/sqRPTtHow0d/Wqk/9ZmXVquH+5xiD6PG9w1cIrq3Qk0csGI1lL/cK
YEyYtSr+pay8np/h279ec7+ibFRhYjPUt+r7v95esRDUVHaur2V5eJI/YaHQ2J14yqn3Hjs9
XM7HB3V3CJAk91UleRQrYmfP890snTOUciRRYRWCKIbZQzSeg8EDvGi520arLf7n/rvlzizm
50YSp8kqWKnioHh12l//Km/UQ5KGaavchhGqGdDecEbp+LMwiHwMcidO7fY2JM53bIXnSG69
P1imntu1vKveRRYH33kS+bOQFN8W+LII4yPx/2iJokOUJCIui0aIdrUw3IFyYFSjbZkDOIYm
/TEZjKIlysNBr+9YakCkxQdIpXIo6Usl6feppiNm1LV83vO9YKSG9aSJJu6ArNzLcdJ2Xkpi
0/uYhG+8gaVBs3Ab+PZ4W4v7PA1XZHQzj0chy89vF4udap1pc5eGxbBPP32SlUh1sDCaqgGs
akmRi8AslQLXCVB7lSY2HbLC46HDkZ10/1jeeFC23JTRfkUqian8S1zKmlnCNVYUQoJKWZ4X
iyxZz6mNk8x2tZheMzAM1EvBPO++gVcM/eV8K18v5wM1BVkQJ0WQZolHDj5RWFT6+nJ9NC+s
sjTOFXNyDrAF+hNISSGoP6pU3vQO34rvw6y5/4IlcXq4h/Naut4RCOjMP3IRHTQ58Si0/8Sj
43D8CXPna/LYC4gvAM7PnjI+9dFBoEU5PIserMVMrHitv5z3D4fzi60ciReixzb9Y3Ypy+th
Dwvu7nwJ72yV/IqU0x7/O97aKjBwHHn3tn+GplnbTuLb2fNEej5eYnt8Pp7+bVTUHmnowbDx
1uSapAo3AsNvTX1zlRHXvj3N5ZH4qfittLc5lR8Qd0YJ4zQKdqC3BLHlulKiToMMQwAyLdG9
QoIPmjkjk3bLdOjrxF2dpMsiuRrM2LgJ9P4Q98Ft50U2O+K7wbbwuKtaHeMV5DBrYjFBzJ2Y
vjJPOZ4r1CxncDSTycIFgRrxqgJi3IWeHNapgqfFaiBUBBWeFePJqMcMeB4PBl2XaFb9yEDf
4ieZdJkWyu3DkCug+M7UePctdOdZosu2FIt7Hh1+HZPB2pBwiWIdkqvfLbJwPg8yOJebFkhY
8V854qZUxiDln89xjTYkrkyS3xtXOxW4rZFWbRtFZBv1+tIMVgA1djsHjlwDoFJNY+aMu8rv
ftf4rZfxYKHwV4eIhjY6Ur2jmEuuU5/1HOk+zY9Be+gOdcBEAzhdfYGAFiC+20PRnfjQcpv7
E7kUB+jmiQ3O+7p0uo4UPi/2em5PGpY4ZiMlNloF0DuO4KHN7j1mY83musVMBgOndkiUSyDc
WkJu8NaDeRsogKErtzgvluOeo6Y9AtCU6Y4K/5frlPauoTtxMtpsFZCuJfoEoIbd4S6cYXIR
UFwwAQDlUQp0k4kSlZD5IX8t0izGa061wqyyadBE+ZNUpe1IXpLC0R+raWEYHqk/cjTAeKAB
JiNp9NnW6Q17CmAydBSVCWPd9F1qPazYGoOBtKX5W9QGjwahV2gYDDW9C5U2t/CNBQ5geXXw
tJWgYPvC5rTFFJy0O3aUhc6hOWwaeo43s6HTtSbCrASUrYH/T2/jZpfz6dYJTg9ygk4Mfhrk
HqteqtQ6pRKV+Pr6DLKNwm8Xsdd3B0rhlkos86fyhb+Y5+XpqnjnsiJicBYsKmMKiRtzRPA9
aTHNeEzjYEjyS8/Lx8rqZHeq0zJoAKNuV1pnWHmYhXhez1OZg+VpLv/cfB9XG6jJN6J1SZiS
Hh8qAL+G8kA8PZ9koZUmkOciztsQGW5rEZqndTmzUhOpHJyFViGNqwaqurkUywhW1F6sA/rO
dNAdKheAg95Yu0Md9PU71BY1mPRo8x7ADSdDy+njp0kBB6N6fub9Pvk2FQ/dXk/h4cBYBjZ/
D0DZYp8A8+mPXOqaB3Y2tGYwGCnMSmxoX3/wbm59Pxjf5kb/4e3l5b3SOdT9WmkD/jqOVXsG
DSckbct9gE4rJDvaukhvTWVbXv7PW3k6vDfX1n9jUgzfz/9Io6hWeMV9yrwOZ/+Hf7zeLscf
b3hjLy/iD+mEJ/XT/lp+iYAMVN3ofH7t/AO+88/Oz6YdV6kdct3/acnWDP7DHip75fH9cr4e
zq8lDJ3G5Kbx3BkqQiP+1mWh2ZblrtPtkqs+Tte9rqx9VAC9kmpTz79liSnstVTFvOfqF63a
2jT7IzhcuX++PUmMvIZebp1sfys78fl0vKk8fhb0+92+crj3uk63q+1LhLlkm8jqJaTcItGe
t5fjw/H2bs4Fi92eIx3k/qKQT4yF70HDthKgyF3X0X+rnHRRrGWSPBwpoiX+dpU46kbzxJ6H
pX9Do8CXcn99u5QvJRy9b9BdZSmF2lIK26XULKQkH49kLaWGqHTLeDtURLkNrqohX1WK4ikj
iBMkyuOhn29t8I/KNAlGmnyW1iHgQxRx/w9zUv2v/i5XdCXmr7eOGPYaEuECU37DJpAUd5b6
+USJws8hE2W8F85IfSdEiCUyoRf3XGdsudoHXI8SZgEBGOnOPO4Nu+pdOUCGpJozT12WdtVb
BwGDjna7lB1DIxrkkTvpOkruAxVncQ7jSMfiGv01Z47rUN3M0qw7cBUlIRt05d8bmK2+ktiZ
bYGPyPNTQSQFeJUwp6cOV5IWMKlk3H2GoWURKW9Wx+n11N99VS3s9VQNG5bzehPmtHTg5b2+
oxjacdCITrdbxQCDIR3I2hAHjDXASL68AEB/0JP6sc4HzthVrBw23irqa+9rCqon9XMTxNGw
q4jAHKK+I22ioWNZ/N9h3F0jdl+1z9V9LExX9o+n8ibUZ2KHL8eTkSxr4m/5imfZnUzk/V9d
t8RsviKBKlcCCHAP9UCKvd7AJePwVzyMV8MPWYO91V/Q0U2I5dgbjPs9K0I/1mt0FsPaI9xG
a5seagzbUC4iVZ6a1go1Dt1TzEyv15xQh+fjyZgjiX0TeE5QXI6Pjyg7fcG3+dMDCL2nUhVq
FxnPmyTd8imtRLvVLFunRU1gmZgCvQmjJEnpC0geQkr5RtV2uoXVqXMCAYSnS9qfHt+e4f+v
5ytPiUSNwu+QK6Lj6/kG59yRuMgcuPIm93PYbEpyB1RZ+j1LXAIP4xGOKWESMIJZtEwpjazS
l6WZZBdg6NTEW1GcThzjUd9SsygthP1LeUUJQBngelymaXfYjWknm2mcuhaW5EcL4GDk4wlo
+7JssEjVcQ691EGJlZTMI0cWKMVv46IzjYDBUCdEnA/0iy4Osai/iOyNDIbD3RppqN6UYqCF
Zm367HaHEk/8njKQUIYGQDfwMWaqldROaIND7hAdWc35+d/HF5SLce88HK/CxIpYAVzoGJCH
ehT6LEPPlmC3kfZOPHXcnvQ7FXaL7cvxDO29bIFCs1mXul7ItxNdFthCsywBSaESajfi2dtT
JNVNNOhF3a050B8Oz/+vOZXg2uXLK6rj6j6sRzTaTrpDR9brOEQe5SIGcXSo/ZZWbwHsWJa+
+G9XSfJKtaEd1FVBP3pt4kA3M6onXjZIweDMdVDB9qXyPjbtVRUselXMCtpJD/GW5z1EYVqu
Ib8LFydqdtc50Ll9szs0VZH1ld0sVLUlvbC0QVLmLS0jwNNG1ck/IvWkFbhp5sV5Ma3uhclu
CkLhTDKn/d0FSRESIWzEdl986+RvP0TGVHl3N6nsFrSbw9SLd0uM0bHOp66VCjMa1uEFiyTL
tDdnks7/ncryEAQRS1Q2mYxFFh9IpMIlFMbbcXynu74pZHG4hQGOwzT8uG3plu3c8SrGRJf0
I4JChQNn7wCs0fTjVrE0XSSrYBf78XBoOdzV6W32ANodQP3qy87UXBzl5ef58sI53Iu486Gs
2D8ia9Y7U7Y3dKxvfE624qz328rPEou7ZWPhWcsPTHld4+4JjDISW22UzPb8p56usgLio1Pu
s7hmFYv7zu2yP/BTU2cWeRGrGikwmiwpkt2U2dZDSwOf31HmGEhRXzFLoDxZZ7C8PSM5fYtb
BCwrpgFTjOUFr9DDZtQ3YmbnpJvRdE6Zw8/kHLHwg7sA4tCvEj9QMcKXWDP4kBCL9VS5im0x
Zv4jiQbYWqyXy6eBxTQ2jXdJKjF0TISp/trV2aElcBRWOcrbmQNQlR6Qzq3KVSX4/yrwJHNi
L1kjXGkvTNndmvl+QIqawpmlldZVSxzxBnBEM2m+xRUBbcNQDgMZDJStlGU5qa4hLsnD7Y55
kqFEsEVrSXlD1JDdlEdOTmTPNfSww6hOS02eQyspfJj9plDQjQB2nX1LMTiFOpm7DRxDxTey
kPDCk3QzHRAKADegkprLdLq7dVIo3j4cgP5BGCVAzOXMFmo6zQBflbhn2YruosBrKR8FsMgC
aavczeJit3F0gKuV8gpputi6SGZ5fydPmIApoBmMw06VszwtIEa9dIR/llw4gYnA8OY0DGNf
hBms9R38UW7+CBIW3TPgdzOQfBJabJFKhSs/oN3lJKItzDTvMWVI25LFAQxckn6r2bm3PzzJ
LsIzELW8hcK3OIAHgs/VhSkQC0y3Ms8swSJqKrskW1Mk0684MlGYFyRvrloqjuVr+fZw7vyE
bd/u+mYxJp4yRRyw1F7gEYYCobyGODBl6P6ZrELFnIKjQBCOfBDgWvAyyFbyp7QjFPQMda1x
QMttyPEQNFtWFBSzWqznsCWn8lcqEG+5pAUFGPHMy+D4k6BN3IN5OGerIvS0UuJPvWla+cYc
b4nHoY8bsjfhsUvJ+nV6b4lKEjS0PYq/5c3Ofyv3IAKij6CM7P/5opH3d/QLSIYuvSuLtbpo
Gl+fVjxyFOEHCdyX7HxFhIsFRA8gUvvmhznPdrD2UyreBZCQvjoZt7aCoyGRPIPxgNF/4mgo
H9StkfL1Kks9/fdunufyKFZQ+0b2gnSxm1Ej4IUzpSr8LRgK+fSEWIaMEThfHnjrrB5ghW0j
1X3A0LcDVzQdpoJTrVOM1mXH2/YaR9bnlVqEQ2ndpcWj2JpivCuLoyUn/I32fbQCvcRnO8vq
ZbwsiZqk9Eyt5OAP8KP21Pjz0/F6Ho8Hky/OJxkNnw84x+z3lCS5Cs6Wp0klsqTaUojGlvDM
GhFpnaeSDKytHQ+o9MQqifwWq2Ece8XDX7dr2PugOB2FUyOiLnc1kuEH35j8qvikN7T0fTKw
jcpENX5Scf1ffnIsP7khJswTXIu7seV7jmttCqAcFcVjQtD1OzTY6EyNoIMiyBT2KawpbPNX
44d0m0Y0eGJrqkPdvSsEljF3jJ2zTMLxjuKfDXKtVoVBVrIklmM91WAviAo1R0mLARVknVHi
bUOSJawIyWq/ZWEUhZ6JmbOAhoNGsqTaEUITNdcXk2a1DqmrDKXzoqFG2WKdLUPLaYY062JG
W0D4ES2Br1chrn5Splb0ZmHhWR7eLni5b0SSwXNMbjD+BoXmbh2gd6/1gAIJJQeRHmYPS4Ci
OKdPpGlVJTFslWIc+HUb2hbs/AVm6xExHfXmiRg1oSeQ9PUTihegXGMwlJzfFRdZ6NE3tDXt
h0jyVJ2BSIdKuLiXku+qGIrgqJvHMEWLIEplLZ1Eg8BeLP789Mf1x/H0x9u1vLycH8ovT+Xz
a3n5JF1zxWxXyU6wWncJPmivcxxD9O6m3h4rl8x2ROQATlEe//kJTSMfzv86fX7fv+w/P5/3
D6/H0+fr/mcJ9RwfPh9Pt/IRF8/nH68/P4n1tCwvp/K587S/PJT8qa1dV//VhvPqHE9HNLg6
/r2vDDJr8cbj2grqtbsNy2BnhdJdEv7CUfKWMNUrxQlDQmmylUyAnlsgaHpN79W7l5pmBsxA
IqHNFOiO1Gj7ODTm0/rOa8YAF3/SKOyX99fbuXM4X8rO+dIREy8NGCeGXs0VF2AF7JrwgPkk
0CTNl16YLuRlqiHMIiidk0CTNFPCuDQwkrCRTY2GW1vCbI1fpqlJvZSvSesaMI6BSQr8nM2J
eiu4IjFUqDV9G6kWbJRDHkjLqH4+c9xxvI4MxGod0UCz6Sn/a4D5H2JRrIsF8GOiP3rYGnFR
8/bj+Xj48lf53jnwhfuIYbHfjfWa5cz4lG8umsDzCBhJmPk5I1oJzG0TuIOBmhZcPL683Z7Q
/uOwv5UPneDEG4zWMv863p467Ho9H44c5e9ve6MHnhe3edrq6fFic1wXcFQyt5sm0TfdRrDZ
ePMwd1zqlb7ea8FduCFKBlA1MK2N0bcpN2vHo+JqtnxqDqo3m5qwwlzfHrEoA29KNC3K7u39
SYjPpaJdej1biyNBvWeDb/cZo7LW1ZtgIY28Nu4Y06pYm3OGYRs3NQNe7K9PtpFUgh7WjI4C
bqlB3wjK2qKpvN7kt4xmX3o90iRHxlPjttUvSVT8NGLLwDWnQcDNWYbvFE7XD2cmUyL5vXXU
Y79PwAbGZopDWNz8FdocuSz2Yb8QvUaExbGzpXAHZNyRBt9zu0TV+YJRhj8tFqo1D8kFGziu
0TcA90zamIDhS8k0MQ/JYp45E5O536cD7jwqFtLx9Umx7Gv4jTm9ABORCwzmtFpPSefdGp95
faLYNEruLfFx6gXF4gB0NPMc8JgIHxSrwpmEJePetOghUcwPPujDrD4SDe6yYN8ZrfvVE8Si
nLmkV6DK/82pDQLzuAUZIQXViVgb5qYpAnPsivsER90Gb4dVLJDzyyua0akieD1gs0g8JRic
/TullFfIcZ9iRtF3MohQg1xQnP97XphZM7L96eH80lm9vfwoL7XfFtV+tsrD3f9WdizLbdvA
e7/Cx3amzdhtJm0PPkAkLDHmyyBpSb5wHEdxPYkdjyXP5PO7D5DEY6m6h2Zq7AogHvvEYjep
JQUzNYvlkB9RgFgGHp0ggs06nh2kRPYuTxjRuB8zrPGhMTSq3gpjU+lf0OT/c/wRcdDO34Rs
ZjLHh3hoIUQ7Yg2Ubw+fXm7BIHr5/np4eBKEZZ4tRM5D7cxEYoCVRk6lklkcEcbUd/TnjCKD
RuXxeA8jmggG1hMJAGwfJCQow9mNPj87hnJs+FlJO83OUz9jpFF4hTu/ku+qVbMtCo2eE3K7
YP7V+Fjgk6ovpFzvT75gfNTD/RPHU979s7v7CjaxE0hEd4S4k1iXpxldR45vJMRASqDLY8zL
O10av2FUGyg8d1zzrNTK9AbzAvsBmmoumGORgZjGBJuOr2eIJix123dt5t6zDKCLrEzhHwOz
WWRBhk+TZjMBdSYrNJh2xSJI6Gnh7Bpza2vTHTBeSCZFvUlWfEtotKfIJWDPAA/yms6CE5H0
rACKvC3ps7br/Q5CvRQaxiTRM/yGUPIs0Yut7PX0UGTvukVRZq1aKdKD4eGKm+SDLKNC9SaR
L7eAjo6o6olzdcGaudspnLW0KmZWx+KAYKWcin7EPbamOm6/QbLOykGEu62TYPdaL/LWNbZJ
KAsDQrs44OYGm8O/+81f3iGyrRSNWUsrZREy5b7wt43KFEJf0NqugBrmO8NUlvGXLZKPUVuQ
eX2cZr+8cUOiHUB+4yVvnwCbm5jeyfXop+3YKGPUlkvcOBTbNFWSASFf654QJhB6R72E8SWo
kX3DeeJzKhAWwCh9vqrJuxxGhiBMpanp2/7D+4Xrah0DRy4qDK1ExK4cHfMOX14Pyainiwns
tJ5Pvtwsc16KqRfOEjj6wydqq7tCNZeYZZ18uxJt1R3YbMrdniuH+ZU5XvY7bCm/6VvlfW9m
rlCGSk7jorb5ju3fFZU8WoLUcfNl0VrR962Vm/YT7xbK5UjU506ATSR+fOf5IB6p9fnl4enw
lV9fPO729/FVDcXjYcmLwtPXbTMGG8iuR46lBXmwzEF85aOD9c9ZjKsu0+35+3F9ODV+3MOI
kW5LRTXD/TBAr7n3Y7VAuVhUwOB7bQxgeSngEBv+A1m7qBovc8zsKo2WzsO33W+Hh0erCewJ
9Y7bX+I15bGAhVbh+NiGkX1dor2Hrg60qfNMFnEOUrpW5kKSOcsUVLLEZLUfgKdL8gwXHZrH
Ky1Sw4WBBaOYTE5kPt1XwVmsgbFg2PdMVRQD2j2NAFgiwkpjYXiMT4TDLtILz67RCeogGChW
qDZxGFIIoS/tqzLfhovMbIfjfTDJXN25m/3m7fzJTX1qySvdfXq9pzzN2dP+8PL66NfloLJp
qG+69ROcxvFiiPfj/PTH2bRELh6Wy1Lzq+RFrg7ctls0qgTdpcxazDKvyKs/Xe0iVLyNetMU
/fE5PC0+wBjeF2nz9rZr7NfhPUj/etNiRiPfYcPdIZy4vazN4q+rdTljqBK4rjKs8Tdjo/Io
pkoVxhXPaZaMxSGnktZMqZjtuhS6yOHcxVMZIEdG4BvIDpmifG0MhJtaLF2ms3Q8Hgju9rro
62VLxy2gk+sibiHHsh/VO4LMQmisl6ASLhsRIo7KGSOD21m730ytqHK4MauKVBmY1KVq3IiN
AICf7qsG9kaYobEZzFAMNkVRW1YT6YBa42mo3AMt/flpdI87neyAl624XAo76RHppPr+vP/1
BNP6vD4z21ndPt37WUfhKxK8Sa6qWnwN6MLx1UIHfMQHojCvupY+dfwiTIvXrzqYaQtqkXjC
1lfAVIG1ppVML0giZAF2tchJjs+RY0aA435+pQJcMT/gEx6Ie270hSm1TVHmw6240Le/I7gw
l1rbl7RszONl18Tzft4/PzzhBRhM4fH1sPuxg//ZHe7evXv3i2PnV0OVMsqRL0Ti1gYLH82/
4aAecAYhDZgWpHSrNzoiqSGJeERQMvp6zRAweKs1BYKEI60bL7aaW+nDAjqi0GBdx1zNAmbl
FBgsqKk1uZ77NS4f+RyPFICiTwLTp8UIFd/OmiYpKcr/Y2snvRtovDXKT0NMqgYsCpaZA7sI
ziOb3Ue4+SULjEgaMo18ZVn7+fZwe4JC9g7dTJEGSS6qWCrGzx78c3JM2HGY01w9FxJ0ZU/y
EBRrzF0R1b/1aH1mHv40ElB4ddmCQtMMVGeSTmIA8iYDMuWH7scNdgDuTySXFqCgSCGtc2SM
v5+58Gi7sVFfCeXypqfo3vcHhHdlNVAz6Z6Owbmq2jpncd/q4U2zdOoBXCbbtgqrPlx0JWvC
9N1mDro0ql7JOIMFdTHMfB7Yr7N2hXZrKJAtuKA3eoCAbscABd/M0KojJmhiZRt1gtcW26AR
i15ytxOAB0t89kcWcpjd2Wm0DwOatWvhY08zPJunJOteCtMOinmIE1QNLpPqul+Y6tJ98eMo
YvQ+NrNPFfRYiW//x9+nIh3QdEF7IN1K+laqZFC3+GpAioJUJt9aG97liMF4ruOg3e0PyCVR
XieY2/323sl2c9l56hr9OdRuCJt94uU2vaEFjCiYoXRIQuY/RbJaloU2fYVhfR/ZEhSR2bwS
ccJdwT2LtEHYTNxK3gD3oYvFnr4c0axZjZ47ZdDSmKkSg7ho+ZquwOBW2QBmLDD+FFjTVFMM
7EPMfuWocQaoAn34uFpc10csCQenLRSGR7c5ijxkJ9K/wg/z5yM7AQA=

--HcAYCG3uE/tztfnV--
