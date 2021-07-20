Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5WG3WDQMGQE2A6TD6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F82E3D05F2
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 01:59:52 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u190-20020a6379c70000b029022ceb8c8831sf178278pgc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 16:59:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626825591; cv=pass;
        d=google.com; s=arc-20160816;
        b=qy5LQfU5Np2/8yxohqsf9Rz0+iFhyhH8ImV3WA8PAGS6b8nlFYn2PBzlLV0NU+HIHC
         5Ag0mMzrgxUba18Z5XKWTdVogFxR89NGEQnKc2ALNAyVYQCxnL3rFVyIHxSNDBvX77kf
         fwH2eBb+Ma28Jd+XzCSTWAWRZuszuEPTjjHlGOVcx2CgiJsSHXg0pB3qesRCPkD8gDG7
         TmsQ1dTJ33D5OsqYLaEs8is9K4tX8NGbYYL6S1RM05wgBn1iEBY49eNiXvUsOjRubQpQ
         /N1epWQjxjiS5OfDajCCH786/HYg70gngV0UmMqEiIuIpkpp1OppVF1tECJiuDLHlJP2
         8A0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lhS9cbvnAOxzp09pUujQANNBZaf2kgkVjFY2A/x5WFk=;
        b=WElibv5xKOVWO64wlcYWlG9NFtc83hwthRDw1d9017kQPYG1IBUBbIQuxbeVoxi7n5
         CM+7j4D4l2mlKPckKPL4/gMaWxWO4fhqtmK3NHxD98UZMhHbPOPTsfPMl/bDevrLBAQ+
         NiovTVRixoUukVcanFra52YAdTycVXLieLaMeSioHjpq9Gtx/K8uBXgMHpOv9LjfCA+W
         jwm3HJOYtWmQ/3K/uHnH0dAoSXwka0YPaJtFThuDrAJbfd215xj0pSFKk8On56JYygqp
         seY8bhOEX0+VrX+jM28NAMieDVCDMAbk2+yGFrHOYiAzQbSnbSBirWlgyx3EA7hp9q7l
         X/aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lhS9cbvnAOxzp09pUujQANNBZaf2kgkVjFY2A/x5WFk=;
        b=rBTXBtgTp1vjHgK4oDsBBIglJwixPiqkk3nuTvNb3D2OiVF6fG7PtoEC58XytXcs/o
         8LnKiYG2weTMZHfOaSYYV/83CcksWykj2t9QAJ9EMvoo6HNYq79dUWw0vyO3oIyt/nS8
         omoMzXfp32ZV0uLQXKLdw9sYYaZvDM6MD6rEWIq77OxG5FU8/3QCRC778nMSAzYvg8B0
         EyH37FXNMYqoEaRJZt4UdpJJBhDSDsmAwgIp35xn7T/uFpb5CySnXl+ajmpVn0dSrem6
         7Gfl0U7GI/wSfE1/4OWSah+QSIYLin9NhFl93PCbk6MEQMgryCwtFuKR0MGwfIp6KTS2
         Cnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lhS9cbvnAOxzp09pUujQANNBZaf2kgkVjFY2A/x5WFk=;
        b=l0S64vUTZbuTNhxlqEt1iGdiyZl3QbAy1N9ssmzL5sbh5tlKUBfHOTkJwJZMG95G1S
         ENiESOo+lVSxMTipvazSx3nZ6HWSWT/QlCakDaIns2TfQlsNKVjOr0fQPExwyVQWMYQu
         9rI2hVgTWobogr5X2fWM0tZq3RnD1zuM1tq0i1pLTl4VZI3R31M+Qqb00S0wuFtM1pmS
         wJ6MbrPiI3L6jVeOx72RCsYtzzA9vvvz6gLzUy5zvGAc/yDd6Q/bZdFZF+gTGL2JdF5O
         BedxQthKIQUuIhBFcOGBLE4eVnHYAoEG4JIRbsg4JedWwSWecudos1mhudMk3yWTRbPF
         iPiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rbXJVvTFanw5DDxAI0xexuRNfEwdxJWgAAb0bN50IfVGO9jmV
	3DNTwazV1EeLOQcDqOtd3VM=
X-Google-Smtp-Source: ABdhPJyyR+8AmOP7eNx2h1qONFwLgKT3iKZlmN8+DE6KsURpsGTidYfOia95xLX2oX0y4jLTM3iM8A==
X-Received: by 2002:a62:ee0f:0:b029:335:a681:34f6 with SMTP id e15-20020a62ee0f0000b0290335a68134f6mr26227007pfi.55.1626825591090;
        Tue, 20 Jul 2021 16:59:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:654a:: with SMTP id d10ls205784pln.4.gmail; Tue, 20
 Jul 2021 16:59:50 -0700 (PDT)
X-Received: by 2002:a17:90a:d596:: with SMTP id v22mr942131pju.51.1626825590268;
        Tue, 20 Jul 2021 16:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626825590; cv=none;
        d=google.com; s=arc-20160816;
        b=ATg/YqVSeEEuPnbBb7Pu1cr36foPBBjTcAg++/QsftngTk+ufT1R0Wo0pvW0kva1IJ
         UTQyY+mXziy3vqvLEaCHXicfEqcY95n7RzJBzOykXmuBIM4npBFiGLlee5hNwABrBbWa
         nYhFRiqEYmIvvwCANCYmbcwDrm47Y+1GIYGKuukGjwVYWYOXcq2aXax6/XyRu+2lL3eW
         FDDmt0F4UdfQ+gE7g86cV08jc5GlDbIJxuk2XdTuiOgjb1uheXLmOwYPg3MRf+NjSCGJ
         KJGV9OliQ64OYajZ+e0LDYhSMDrvYKZbpSqn2wI+ihUXdexxQbxlMtU/Ht4Jnruq/6jX
         JH1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=53sVRJFtpf+6MQKxJEs+xG6w2gMKogqVTyaJkG+09lo=;
        b=EO8/nIgw/7vOlMBvG2dqEjbq0IIugvJs+e/WAooGdwbdi90P9CzMv1K3zo0spCG9mO
         UTL9mVGQ+Ef0m6r1/ykh5HJOn654Lx9HEPLSg7vFCe9ik0S01IOYuQbHNZg7Ifroyi/0
         rIZYX0FYMOXpsHF7XTVYXMs10yzQmIsfRjlE8syaqOEa0ic21zp1Q+59zA2YSkliv/lP
         layQhgdvqnyEhk0uzGQDdqXWEO0f6jtUYCwAuxnTx5wtEbpJQCQq5m8hzgiRWUV8Ro94
         TJ4rOuLC5DFIRw0Kvs+ER2tZw8nk5wT1P7zym/PEUw3M7vcY1pWttXjH2OmflKEbFawz
         NvjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id x20si2101343pfh.1.2021.07.20.16.59.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 16:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="233138109"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; 
   d="gz'50?scan'50,208,50";a="233138109"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2021 16:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; 
   d="gz'50?scan'50,208,50";a="657887874"
Received: from lkp-server02.sh.intel.com (HELO 1b5a72ed9419) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2021 16:59:45 -0700
Received: from kbuild by 1b5a72ed9419 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m5zeL-0000Sw-7u; Tue, 20 Jul 2021 23:59:45 +0000
Date: Wed, 21 Jul 2021 07:59:28 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Xu <peterx@redhat.com>, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Axel Rasmussen <axelrasmussen@google.com>,
	Nadav Amit <nadav.amit@gmail.com>,
	Jerome Glisse <jglisse@redhat.com>,
	"Kirill A . Shutemov" <kirill@shutemov.name>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Alistair Popple <apopple@nvidia.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [PATCH v5 18/26] hugetlb/userfaultfd: Take care of
 UFFDIO_COPY_MODE_WP
Message-ID: <202107210724.sRBLmkEc-lkp@intel.com>
References: <20210715201626.211813-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <20210715201626.211813-1-peterx@redhat.com>
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Peter,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on kselftest/next]
[also build test ERROR on linus/master v5.14-rc2 next-20210720]
[cannot apply to hnaz-linux-mm/master asm-generic/master arm64/for-next/core linux/master tip/x86/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Peter-Xu/userfaultfd-wp-Support-shmem-and-hugetlbfs/20210716-041947
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git next
config: s390-randconfig-r023-20210716 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/2ad11be7ccbb4fada15c5ec48a35630d450fc9ca
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Peter-Xu/userfaultfd-wp-Support-shmem-and-hugetlbfs/20210716-041947
        git checkout 2ad11be7ccbb4fada15c5ec48a35630d450fc9ca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from mm/hugetlb.c:19:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from mm/hugetlb.c:19:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from mm/hugetlb.c:19:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
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
   mm/hugetlb.c:5063:29: error: implicit declaration of function 'huge_pte_uffd_wp' [-Werror,-Wimplicit-function-declaration]
           if (userfaultfd_wp(vma) && huge_pte_uffd_wp(huge_ptep_get(ptep)) &&
                                      ^
>> mm/hugetlb.c:5301:14: error: implicit declaration of function 'huge_pte_mkuffd_wp' [-Werror,-Wimplicit-function-declaration]
                   _dst_pte = huge_pte_mkuffd_wp(_dst_pte);
                              ^
   mm/hugetlb.c:5301:14: note: did you mean 'pte_mkuffd_wp'?
   include/asm-generic/pgtable_uffd.h:18:30: note: 'pte_mkuffd_wp' declared here
   static __always_inline pte_t pte_mkuffd_wp(pte_t pte)
                                ^
>> mm/hugetlb.c:5301:12: error: assigning to 'pte_t' from incompatible type 'int'
                   _dst_pte = huge_pte_mkuffd_wp(_dst_pte);
                            ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   12 warnings and 3 errors generated.


vim +/huge_pte_mkuffd_wp +5301 mm/hugetlb.c

  5132	
  5133	#ifdef CONFIG_USERFAULTFD
  5134	/*
  5135	 * Used by userfaultfd UFFDIO_COPY.  Based on mcopy_atomic_pte with
  5136	 * modifications for huge pages.
  5137	 */
  5138	int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
  5139				    pte_t *dst_pte,
  5140				    struct vm_area_struct *dst_vma,
  5141				    unsigned long dst_addr,
  5142				    unsigned long src_addr,
  5143				    enum mcopy_atomic_mode mode,
  5144				    struct page **pagep,
  5145				    bool wp_copy)
  5146	{
  5147		bool is_continue = (mode == MCOPY_ATOMIC_CONTINUE);
  5148		struct hstate *h = hstate_vma(dst_vma);
  5149		struct address_space *mapping = dst_vma->vm_file->f_mapping;
  5150		pgoff_t idx = vma_hugecache_offset(h, dst_vma, dst_addr);
  5151		unsigned long size;
  5152		int vm_shared = dst_vma->vm_flags & VM_SHARED;
  5153		pte_t _dst_pte;
  5154		spinlock_t *ptl;
  5155		int ret = -ENOMEM;
  5156		struct page *page;
  5157		int writable;
  5158	
  5159		if (is_continue) {
  5160			ret = -EFAULT;
  5161			page = find_lock_page(mapping, idx);
  5162			if (!page)
  5163				goto out;
  5164		} else if (!*pagep) {
  5165			/* If a page already exists, then it's UFFDIO_COPY for
  5166			 * a non-missing case. Return -EEXIST.
  5167			 */
  5168			if (vm_shared &&
  5169			    hugetlbfs_pagecache_present(h, dst_vma, dst_addr)) {
  5170				ret = -EEXIST;
  5171				goto out;
  5172			}
  5173	
  5174			page = alloc_huge_page(dst_vma, dst_addr, 0);
  5175			if (IS_ERR(page)) {
  5176				ret = -ENOMEM;
  5177				goto out;
  5178			}
  5179	
  5180			ret = copy_huge_page_from_user(page,
  5181							(const void __user *) src_addr,
  5182							pages_per_huge_page(h), false);
  5183	
  5184			/* fallback to copy_from_user outside mmap_lock */
  5185			if (unlikely(ret)) {
  5186				ret = -ENOENT;
  5187				/* Free the allocated page which may have
  5188				 * consumed a reservation.
  5189				 */
  5190				restore_reserve_on_error(h, dst_vma, dst_addr, page);
  5191				put_page(page);
  5192	
  5193				/* Allocate a temporary page to hold the copied
  5194				 * contents.
  5195				 */
  5196				page = alloc_huge_page_vma(h, dst_vma, dst_addr);
  5197				if (!page) {
  5198					ret = -ENOMEM;
  5199					goto out;
  5200				}
  5201				*pagep = page;
  5202				/* Set the outparam pagep and return to the caller to
  5203				 * copy the contents outside the lock. Don't free the
  5204				 * page.
  5205				 */
  5206				goto out;
  5207			}
  5208		} else {
  5209			if (vm_shared &&
  5210			    hugetlbfs_pagecache_present(h, dst_vma, dst_addr)) {
  5211				put_page(*pagep);
  5212				ret = -EEXIST;
  5213				*pagep = NULL;
  5214				goto out;
  5215			}
  5216	
  5217			page = alloc_huge_page(dst_vma, dst_addr, 0);
  5218			if (IS_ERR(page)) {
  5219				ret = -ENOMEM;
  5220				*pagep = NULL;
  5221				goto out;
  5222			}
  5223			copy_huge_page(page, *pagep);
  5224			put_page(*pagep);
  5225			*pagep = NULL;
  5226		}
  5227	
  5228		/*
  5229		 * The memory barrier inside __SetPageUptodate makes sure that
  5230		 * preceding stores to the page contents become visible before
  5231		 * the set_pte_at() write.
  5232		 */
  5233		__SetPageUptodate(page);
  5234	
  5235		/* Add shared, newly allocated pages to the page cache. */
  5236		if (vm_shared && !is_continue) {
  5237			size = i_size_read(mapping->host) >> huge_page_shift(h);
  5238			ret = -EFAULT;
  5239			if (idx >= size)
  5240				goto out_release_nounlock;
  5241	
  5242			/*
  5243			 * Serialization between remove_inode_hugepages() and
  5244			 * huge_add_to_page_cache() below happens through the
  5245			 * hugetlb_fault_mutex_table that here must be hold by
  5246			 * the caller.
  5247			 */
  5248			ret = huge_add_to_page_cache(page, mapping, idx);
  5249			if (ret)
  5250				goto out_release_nounlock;
  5251		}
  5252	
  5253		ptl = huge_pte_lockptr(h, dst_mm, dst_pte);
  5254		spin_lock(ptl);
  5255	
  5256		/*
  5257		 * Recheck the i_size after holding PT lock to make sure not
  5258		 * to leave any page mapped (as page_mapped()) beyond the end
  5259		 * of the i_size (remove_inode_hugepages() is strict about
  5260		 * enforcing that). If we bail out here, we'll also leave a
  5261		 * page in the radix tree in the vm_shared case beyond the end
  5262		 * of the i_size, but remove_inode_hugepages() will take care
  5263		 * of it as soon as we drop the hugetlb_fault_mutex_table.
  5264		 */
  5265		size = i_size_read(mapping->host) >> huge_page_shift(h);
  5266		ret = -EFAULT;
  5267		if (idx >= size)
  5268			goto out_release_unlock;
  5269	
  5270		ret = -EEXIST;
  5271		if (!huge_pte_none(huge_ptep_get(dst_pte)))
  5272			goto out_release_unlock;
  5273	
  5274		if (vm_shared) {
  5275			page_dup_rmap(page, true);
  5276		} else {
  5277			ClearHPageRestoreReserve(page);
  5278			hugepage_add_new_anon_rmap(page, dst_vma, dst_addr);
  5279		}
  5280	
  5281		/*
  5282		 * For either: (1) CONTINUE on a non-shared VMA, or (2) UFFDIO_COPY
  5283		 * with wp flag set, don't set pte write bit.
  5284		 */
  5285		if (wp_copy || (is_continue && !vm_shared))
  5286			writable = 0;
  5287		else
  5288			writable = dst_vma->vm_flags & VM_WRITE;
  5289	
  5290		_dst_pte = make_huge_pte(dst_vma, page, writable);
  5291		/*
  5292		 * Always mark UFFDIO_COPY page dirty; note that this may not be
  5293		 * extremely important for hugetlbfs for now since swapping is not
  5294		 * supported, but we should still be clear in that this page cannot be
  5295		 * thrown away at will, even if write bit not set.
  5296		 */
  5297		_dst_pte = huge_pte_mkdirty(_dst_pte);
  5298		_dst_pte = pte_mkyoung(_dst_pte);
  5299	
  5300		if (wp_copy)
> 5301			_dst_pte = huge_pte_mkuffd_wp(_dst_pte);
  5302	
  5303		set_huge_pte_at(dst_mm, dst_addr, dst_pte, _dst_pte);
  5304	
  5305		(void)huge_ptep_set_access_flags(dst_vma, dst_addr, dst_pte, _dst_pte,
  5306						dst_vma->vm_flags & VM_WRITE);
  5307		hugetlb_count_add(pages_per_huge_page(h), dst_mm);
  5308	
  5309		/* No need to invalidate - it was non-present before */
  5310		update_mmu_cache(dst_vma, dst_addr, dst_pte);
  5311	
  5312		spin_unlock(ptl);
  5313		if (!is_continue)
  5314			SetHPageMigratable(page);
  5315		if (vm_shared || is_continue)
  5316			unlock_page(page);
  5317		ret = 0;
  5318	out:
  5319		return ret;
  5320	out_release_unlock:
  5321		spin_unlock(ptl);
  5322		if (vm_shared || is_continue)
  5323			unlock_page(page);
  5324	out_release_nounlock:
  5325		restore_reserve_on_error(h, dst_vma, dst_addr, page);
  5326		put_page(page);
  5327		goto out;
  5328	}
  5329	#endif /* CONFIG_USERFAULTFD */
  5330	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107210724.sRBLmkEc-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
VjXSAQA=

--ew6BAiZeqk4r7MaW--
