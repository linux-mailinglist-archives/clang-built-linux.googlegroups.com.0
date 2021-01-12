Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQMN6X7QKGQEHP5YTEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EB92F2883
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 07:50:43 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id a5sf718797oob.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 22:50:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610434242; cv=pass;
        d=google.com; s=arc-20160816;
        b=U58BFHKjQn38ywh7HrRtfXhWw7RnK5rVBmvPP0pXad8goodHBnt0TFLxZ5g5sFGpUs
         YOJ1c0eyLYO0CuW9JymU4KnJINsW9hsyET7i9Z8W+ROIn3J/u+jCpQ+zQ6R6mvXH6qhb
         YAGdpY4q7MxvCNKLC+nqf2YdzOaC0IT+94lCHIled014sBIR9uPozphSKWdxariVwlWU
         33FJDlOphEylP9EkBVMcH9gGDuVaP42cnCp4G11sYHTCN9Rx2vLx1Znh7gTuRa915mvd
         6DxF5aqSm9Fp7U1kEJmrATzpbQcQjyQ8q/GjRzEfXzDHTvO916qDau7xMzhv/N3rEAaB
         IZBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=B9/9B3cHX6do0JyStPS90eX8WGoVw5jz5dPKTl7eXrk=;
        b=p0LmZPotlEI4851C6evkVVCpmkozsiiOUTfp7rAsPYvN1yNY3eratTVl+NwxG2JIQF
         UedeLNtMXLzURcQnUwJ/y9owqJlYz8EqL7vZMmv1eHFVSMzuYmzn9K5qm2hznYuo4NV0
         ZUgMbPa0EegmIq/bpVVlZmNP0CwnHG9LoETMrPVgLYZAetoYjo6l4DH7mlLFP+IiMukb
         jflaB31tfcLIiynt9SnodmiuAEVtQSUrihlkjn4zv5OdFoivd8Fyk1IvwTkR/ueL4ilf
         C24SM8EPI6c8OGbtKPf5D2EqJcaZ28aCtzcNs62hRUh3d3YDyUo2LmiGyJJv3G7Hq48G
         QVjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B9/9B3cHX6do0JyStPS90eX8WGoVw5jz5dPKTl7eXrk=;
        b=JNePs7zIKBDyDcCN6GzjdOKne8gNgRDIOYD7ug0E4sIHLATBQVQNbnYltZc910WWKF
         DLuH8I91mFDBPC8BDRxrzA7+k5jKPgjvZPzP/UL9GO2BiaBtYqgN0TUOXFkCBEosY+Wg
         fo7Qd3KjV2O4UGWL8o2hCKRifpFBuwXN8jtI//m64CYcb4xdEzNmE8U7yJLwlDlL+7Hq
         m3yOlfWBwia3H2OSBsjIA0AnAjPWOmuXJWL8wlbexkaO7KR4+KEEayP7KmY5Em3ZL0PJ
         eEaFmUmsqn4LA5L7NaUlEGrScPg44xeA5mLIzcHoBaXmBLuA3ThdPsyc2vaKoN151IKB
         dSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B9/9B3cHX6do0JyStPS90eX8WGoVw5jz5dPKTl7eXrk=;
        b=fv60DfIlJYPUzLC6kV9sOG8xBTYCFnb6+k1Nbgx5mFeD9odhsj0XAH2V3QpDab9Gvn
         BEb8bmJSgQogEptb3h98nBCXm/sC4vuvgZc0goVUtKPGsqFf61xiT60gu5kWYeU3YhpM
         hdBkpLI1saN2Q+Af/kpHUOgfhGEnFkTi+N/Ga/fiy+xB3NWVrK7++vvOZBYzdIFriUYc
         CUfUK+hkrqEa4bwnsQkoZxiBeLX8g5tEhCVOr+8cvVhcDYFluOVq6scrdJEBZkFhNKjW
         Ve5dTKPjcgM0a5TWrDH0kr1IDyZeL6F3ewHWAyrAM83E9xI477OH1uxRNUGpu8baPqlh
         D0fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xCTZbVLlrZU3rbstx9ffXatzsC9RuTepEBnTrBZXyl0PQGcQN
	z/U4ZXJpFuYPsm3fcjBxTQI=
X-Google-Smtp-Source: ABdhPJwn8uy46OqUjfq6/VRC3nKELSyKiR3TkvNfQYW97rPIlHd3qcSYALNyHiGT/wtVhXaJoz8iBw==
X-Received: by 2002:a4a:e81d:: with SMTP id b29mr1978313oob.22.1610434241731;
        Mon, 11 Jan 2021 22:50:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:155:: with SMTP id 79ls529648otu.11.gmail; Mon, 11 Jan
 2021 22:50:41 -0800 (PST)
X-Received: by 2002:a05:6830:402c:: with SMTP id i12mr1896756ots.25.1610434241207;
        Mon, 11 Jan 2021 22:50:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610434241; cv=none;
        d=google.com; s=arc-20160816;
        b=SZaa9ZNPearQkrUAXz9hMHcrh858uDj7zRuaAmVspIQ/Riz78agPzMA5VWt4a1OEts
         sdY/Bj1stwOclh7at5yqJipPek6KVS6krKMJG9enO3KBuUvPpLGXkx3FcSX8MKkBOM+b
         cN0vOJsK6BRbHvV8mDGUWgavFCr3XhNKsvHGAunfQ4gBrKA9Z2TR6fpEm5aQI8CeCMsP
         eh2UTFXbk5El1K2YOSNX4KVnwJxR3h7YkchTbzZ5M0vO4Erk4hgYVtVjZ2ZZIaSAUV09
         XZ1HV7Pk8nBK9RZ2AMb54UV4frLMLzRm7okPYNg9u4QOaVQPsnM5dEHM4Q1VSBP73y/D
         tROg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LsfZhh+4/0WTt7WMSnqzjCMoEhnVlNW1zzesqmsIRkA=;
        b=Wplfk2YuFR3gD8iN46fyvJp7TwQWhPse8EmfBmDmLCvrjB9AjUl3RqysLWlR36assn
         eYCPA0b0TKYK8+3eOgbsiCBtY05uhEnEqr6A3sHi6AwXmf2IQMb9LU9jRBU6kTrjsFKe
         zMedhSbUkJkJTOHDv704oWYOQ4faQiyDcHp4nxI4DURgZcNmcZ5jlzsaAUalXm3sjf5O
         zgtpmQm9o8lLjcj5a6XKArhgn5Sm1sDRZy6l2e/EuBSpcwNV2tZi5H6tDU6JqOudxwiR
         X2NmuEfDWaLIfks7+bOHP2MW7Dec9Tfs51hQQlDZw0mk7mLP1S/QNkiQ9o5NJqXMjOsn
         f0Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id s126si151634ooa.0.2021.01.11.22.50.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 22:50:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: G3iadxMq0wAzTpRn8RrvzOhWE5No7rHznlnFaFdWoQemhB3djYc47ACjVM1P0yD+TBDA8Dyl22
 2k11E5S2nDew==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165077691"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; 
   d="gz'50?scan'50,208,50";a="165077691"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jan 2021 22:50:39 -0800
IronPort-SDR: mKVpoMfiuVtmT0ur5UsMxkBfTcdIMgzu1dcwXh1RGGWT/Rax+r6rz6yxbEXjYbMI/SH3VtHtyK
 ByYeNnljZkLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; 
   d="gz'50?scan'50,208,50";a="424053465"
Received: from lkp-server01.sh.intel.com (HELO 296aa122a686) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 11 Jan 2021 22:50:36 -0800
Received: from kbuild by 296aa122a686 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kzDVk-00000b-45; Tue, 12 Jan 2021 06:50:36 +0000
Date: Tue, 12 Jan 2021 14:50:15 +0800
From: kernel test robot <lkp@intel.com>
To: Brian Kim <brian.kim@hardkernel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dongjin Kim <tobetter@gmail.com>, memeka <mihailescu2m@gmail.com>,
	Yang Deokgyu <secugyu@gmail.com>
Subject: [tobetter-linux:odroid-5.11.y 51/84]
 drivers/char/exynos-gpiomem.c:121:20: error: assigning to 'pgprot_t' from
 incompatible type 'int'
Message-ID: <202101121410.yS4MHxSB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/tobetter/linux odroid-5.11.y
head:   674407f50bbff11698a0f2cf5825d3e039e25b6c
commit: 0ef2ae8e0676a634333e64cf23e4ecab49efa1ca [51/84] ODROID-XU4: char: exynos: add /dev/gpiomem device for rootless user GPIO access
config: s390-randconfig-r015-20210111 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32bcfcda4e28375e5a85268d2acfabcfcc011abf)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/tobetter/linux/commit/0ef2ae8e0676a634333e64cf23e4ecab49efa1ca
        git remote add tobetter-linux https://github.com/tobetter/linux
        git fetch --no-tags tobetter-linux odroid-5.11.y
        git checkout 0ef2ae8e0676a634333e64cf23e4ecab49efa1ca
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
   In file included from drivers/char/exynos-gpiomem.c:55:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101121410.yS4MHxSB-lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ytDNAAA=

--7AUc2qLy4jB3hD7Z--
