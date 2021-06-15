Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFPFUSDAMGQEREPLSWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 136603A8C3B
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 01:07:03 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id b9-20020a4a87890000b0290248cb841124sf431417ooi.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 16:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623798421; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZCHZQ9k94sdGOHLj0PoGgGNzR6DZN3DxBy8hIWXHFsOGBKGZ/8IlGLkR6KmPqiw+Yj
         n6TygI2Sn012+ymInO/a4Du07kioD7VBbN1PJ/1lVWIaek0MnK/bq6011luvkipkfWZU
         8Z5fq4ifXAZ0PEKFqxYuCGdvrrQCqtZEF/+z3cn6aC9K1/ptMH8Z9j0PmXubRpaomE15
         NPSMmw4ZlclfHVI8oXichsMCSi0FIzeR4hUh6d4rW8CyCcbpN9u/i+QW9Tdix5pYOnbL
         z3nFWspVd5sShKoca1fWMMVtFTDyrSdnaWADMvF1+UKbAb6RiWYdWLJbeZPqGrsZ1LSy
         M6zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=aMMNUVKqMa4fdV5/cF3rUKn016MCwjlIRqQhV2RYXJo=;
        b=HMldwSUZZMVi9nFTdlUmViWR32UrroYBP7ky89iGL+XabsLdXynb48ZCBCW8Go62MX
         LZWa64RyjgKJoE9QTy1O16L3H96MYo8313v0V9w1BGqojtXetTAkv9erljc3TFxvs2MN
         Q57bG4RyBhZoUic/Nxl79MpyM6qCrQAf3GrbEkUUYnYuuFR8hIdz7k7qIr3N6Y34PkmO
         1HeWUY59E31mxKldPNRlmgElYYPqs5ksaeOWYxyyPTm05TuxEYTc7wVDj8XZwUYSnW9/
         I7ZPsoQUIer8QFqUyCMHKzntAiIYR3K6gwUX56Rzr1qjAhgM1j1hsYHeCQu2dqC65ji4
         6qLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aMMNUVKqMa4fdV5/cF3rUKn016MCwjlIRqQhV2RYXJo=;
        b=l4N+QvtmzlEIvUoY/36eubg9NxrYYntm8E+4fpab1VoRNm7lCeL2mcWgx8GgMrIygT
         aRe5c7QzpF7H3rfH5SRiiO7p+1T5Y55BL5gZTYJHLim5msVc9bxBZLuDIXtnSIEmDhpz
         iFKIbQrwoAXEgqAfjnzfyLgymJRFIjnEyDSsQh4v0x3nO1bgLnjkQ6VP/eLlB3IyRxah
         ELzmT4OTWe8IGDy/BTDMB1hKRuXZFsnmQpURq1ArR+Gx0vHFcTUVRsZTMFJHWD/r+K+y
         6Sye1vtvVn9ewpSL+HdebV8wovVrHee4w0QhXGSmiKiSdOWORj7h9l4TCkhEPfKmYfjd
         cJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aMMNUVKqMa4fdV5/cF3rUKn016MCwjlIRqQhV2RYXJo=;
        b=sz3OLIF6wnSOM3ODofGmTcxXb8QicLtr01RBR7Uk9UGCdUlljh5PAt+zgmh8MVd6x/
         9JCoFxpXHAz85apZMU6efCkD0xIPGIzyFMX3fVG9UX4zLPxGnXPiKPuGZS9AYggbQusu
         qv3bKYS90ccewVsNnJzmezr/AJk/lIayuEnLRt+6ZdXjxNLH2MbT6vxHncHdDbVIYxJB
         GSGFdjGJP9PhC3SSISogFm68EqOza3ZqcLG7DHVlZychO5x+80Re9cH2lMFktGuPP68I
         T9XPvu0qgL/zhQlhhSnnthKYHk46E5MHO4DK8gXujxDOUFh3WJzVwJ9ufUQtLJRS69gy
         GS4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BCjYwQ9mWxiIfIQt00Rys9Pw2c7o4zHSzcLdtqyp4X091MQX0
	YM9ZzauOshBZMaroermhN3M=
X-Google-Smtp-Source: ABdhPJzD2pw5wwTmcAK4rZvYDuKQZDZfTPFQJB2RAwKZ7lKgPS8uUj151V4Q6e80BeH67wGNiq7LqA==
X-Received: by 2002:aca:4a46:: with SMTP id x67mr4830190oia.59.1623798421775;
        Tue, 15 Jun 2021 16:07:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls95767oth.7.gmail; Tue, 15 Jun
 2021 16:07:01 -0700 (PDT)
X-Received: by 2002:a9d:738b:: with SMTP id j11mr1350046otk.228.1623798421198;
        Tue, 15 Jun 2021 16:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623798421; cv=none;
        d=google.com; s=arc-20160816;
        b=O0JBTBi+GsExEQ/GRqWHkSkJMSwxbn6GTTIxmsyQosCdOwPYf7izMkeiLJhf41gDQI
         FUJTNCKt9ryZwbbo2putOEBfMNuedw6EyHUaZktHWtESsQSkTnK2WU7+oJmZzQIY41Ki
         aPUXFtiWfuVXjpM2NKmRzYShY4P9b2Z+0e9GzBvn9Wzy67mylGtl3uinWtoZ8HQVRT7g
         KhgxAsJ4yseMjBd8iwcgNSUqeCsN+qozOSOA8bvlHJZoVFJ/xNJe2y92uDsnMqP8LbJy
         F0xCRBW8bqiIWwZCVx/Hv8fmhGcElqb92E9z7fIs3vsZg9/sm53Tc6pDZOvWrZ28GhgK
         KJhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5yhbsEA0JqKzcWe10lCVHE8qnm+f7AHedddB/cYSm7M=;
        b=X4PE9K/k0upKvOvyIF2plDY2MqeQgnuEWtcq6djUT2B9RCpCE8TSNuB3i9JoqDY0YN
         2MJi0S8huAjOpK3pHi2JupqaShSCodwpaBWvqCCstSwY6O/0sXBq/9q+y51mUEDhQQ9D
         QPWXaqVdUv6fGNVIx1lQXz4kG1d6EXYgB1JNBVLe4Pcz4KKIjTE1DY65AgwIhi9lswp4
         HvlrgKaOvkiFop+cU43HCmj1BXMFCqKxyYHeD7nq7vC5yItH5rTNJFgUFjMJmm3Lk606
         5Y4U/+RBVeTd6Isaep8+uiXI8vmuUrdvk7Rf7ZPvyvYjsumVZwMFqRsxrQNCo56ThM3l
         acAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d13si51674oti.0.2021.06.15.16.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 16:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: R8HEDseFI/ZPnj/hGTUl8ZrDVLEUXE6VW2AePF2g1OE2IY8StG+1v/qz6zLDUNDkzJaAmnGGit
 lzZOz6Ss/lnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="205900408"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; 
   d="gz'50?scan'50,208,50";a="205900408"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2021 16:06:58 -0700
IronPort-SDR: NZmklO9EQiiSLLJ1saqEKm5n83i/XyMI5e+iV2LfHSBlTgs0vfmeTayKhQyLQpT65YYRkNMTlH
 V03nKFr/MpeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; 
   d="gz'50?scan'50,208,50";a="554600373"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2021 16:06:56 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltI91-0000gn-Tr; Tue, 15 Jun 2021 23:06:55 +0000
Date: Wed, 16 Jun 2021 07:06:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>, Tony Luck <tony.luck@intel.com>
Subject: [intel-tdx:guest 29/76] arch/x86/mm/ioremap.c:249:10: error:
 implicit declaration of function 'tdg_shared_mask'
Message-ID: <202106160718.uYKsrudY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/tdx.git guest
head:   224dd4925275ef73ef78f1412d6f9d03564294eb
commit: 90e5df51a2da1f8175059239595bfa7c8086b5c3 [29/76] x86/tdx: Make pages shared in ioremap()
config: x86_64-randconfig-b001-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/tdx/commit/90e5df51a2da1f8175059239595bfa7c8086b5c3
        git remote add intel-tdx https://github.com/intel/tdx.git
        git fetch --no-tags intel-tdx guest
        git checkout 90e5df51a2da1f8175059239595bfa7c8086b5c3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/mm/ioremap.c:249:10: error: implicit declaration of function 'tdg_shared_mask' [-Werror,-Wimplicit-function-declaration]
                   prot = pgprot_protected_guest(prot);
                          ^
   arch/x86/include/asm/pgtable.h:26:12: note: expanded from macro 'pgprot_protected_guest'
                                                 tdg_shared_mask())
                                                 ^
   arch/x86/mm/ioremap.c:721:17: warning: no previous prototype for function 'early_memremap_pgprot_adjust' [-Wmissing-prototypes]
   pgprot_t __init early_memremap_pgprot_adjust(resource_size_t phys_addr,
                   ^
   arch/x86/mm/ioremap.c:721:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   pgprot_t __init early_memremap_pgprot_adjust(resource_size_t phys_addr,
   ^
   static 
   1 warning and 1 error generated.


vim +/tdg_shared_mask +249 arch/x86/mm/ioremap.c

   161	
   162	/*
   163	 * Remap an arbitrary physical address space into the kernel virtual
   164	 * address space. It transparently creates kernel huge I/O mapping when
   165	 * the physical address is aligned by a huge page size (1GB or 2MB) and
   166	 * the requested size is at least the huge page size.
   167	 *
   168	 * NOTE: MTRRs can override PAT memory types with a 4KB granularity.
   169	 * Therefore, the mapping code falls back to use a smaller page toward 4KB
   170	 * when a mapping range is covered by non-WB type of MTRRs.
   171	 *
   172	 * NOTE! We need to allow non-page-aligned mappings too: we will obviously
   173	 * have to convert them into an offset in a page-aligned mapping, but the
   174	 * caller shouldn't need to know that small detail.
   175	 */
   176	static void __iomem *
   177	__ioremap_caller(resource_size_t phys_addr, unsigned long size,
   178			 enum page_cache_mode pcm, void *caller, bool encrypted)
   179	{
   180		unsigned long offset, vaddr;
   181		resource_size_t last_addr;
   182		const resource_size_t unaligned_phys_addr = phys_addr;
   183		const unsigned long unaligned_size = size;
   184		struct ioremap_desc io_desc;
   185		struct vm_struct *area;
   186		enum page_cache_mode new_pcm;
   187		pgprot_t prot;
   188		int retval;
   189		void __iomem *ret_addr;
   190	
   191		/* Don't allow wraparound or zero size */
   192		last_addr = phys_addr + size - 1;
   193		if (!size || last_addr < phys_addr)
   194			return NULL;
   195	
   196		if (!phys_addr_valid(phys_addr)) {
   197			printk(KERN_WARNING "ioremap: invalid physical address %llx\n",
   198			       (unsigned long long)phys_addr);
   199			WARN_ON_ONCE(1);
   200			return NULL;
   201		}
   202	
   203		__ioremap_check_mem(phys_addr, size, &io_desc);
   204	
   205		/*
   206		 * Don't allow anybody to remap normal RAM that we're using..
   207		 */
   208		if (io_desc.flags & IORES_MAP_SYSTEM_RAM) {
   209			WARN_ONCE(1, "ioremap on RAM at %pa - %pa\n",
   210				  &phys_addr, &last_addr);
   211			return NULL;
   212		}
   213	
   214		/*
   215		 * Mappings have to be page-aligned
   216		 */
   217		offset = phys_addr & ~PAGE_MASK;
   218		phys_addr &= PHYSICAL_PAGE_MASK;
   219		size = PAGE_ALIGN(last_addr+1) - phys_addr;
   220	
   221		retval = memtype_reserve(phys_addr, (u64)phys_addr + size,
   222							pcm, &new_pcm);
   223		if (retval) {
   224			printk(KERN_ERR "ioremap memtype_reserve failed %d\n", retval);
   225			return NULL;
   226		}
   227	
   228		if (pcm != new_pcm) {
   229			if (!is_new_memtype_allowed(phys_addr, size, pcm, new_pcm)) {
   230				printk(KERN_ERR
   231			"ioremap error for 0x%llx-0x%llx, requested 0x%x, got 0x%x\n",
   232					(unsigned long long)phys_addr,
   233					(unsigned long long)(phys_addr + size),
   234					pcm, new_pcm);
   235				goto err_free_memtype;
   236			}
   237			pcm = new_pcm;
   238		}
   239	
   240		/*
   241		 * If the page being mapped is in memory and SEV is active then
   242		 * make sure the memory encryption attribute is enabled in the
   243		 * resulting mapping.
   244		 */
   245		prot = PAGE_KERNEL_IO;
   246		if ((io_desc.flags & IORES_MAP_ENCRYPTED) || encrypted)
   247			prot = pgprot_encrypted(prot);
   248		else if (prot_guest_has(PR_GUEST_SHARED_MAPPING_INIT))
 > 249			prot = pgprot_protected_guest(prot);
   250	
   251		switch (pcm) {
   252		case _PAGE_CACHE_MODE_UC:
   253		default:
   254			prot = __pgprot(pgprot_val(prot) |
   255					cachemode2protval(_PAGE_CACHE_MODE_UC));
   256			break;
   257		case _PAGE_CACHE_MODE_UC_MINUS:
   258			prot = __pgprot(pgprot_val(prot) |
   259					cachemode2protval(_PAGE_CACHE_MODE_UC_MINUS));
   260			break;
   261		case _PAGE_CACHE_MODE_WC:
   262			prot = __pgprot(pgprot_val(prot) |
   263					cachemode2protval(_PAGE_CACHE_MODE_WC));
   264			break;
   265		case _PAGE_CACHE_MODE_WT:
   266			prot = __pgprot(pgprot_val(prot) |
   267					cachemode2protval(_PAGE_CACHE_MODE_WT));
   268			break;
   269		case _PAGE_CACHE_MODE_WB:
   270			break;
   271		}
   272	
   273		/*
   274		 * Ok, go for it..
   275		 */
   276		area = get_vm_area_caller(size, VM_IOREMAP, caller);
   277		if (!area)
   278			goto err_free_memtype;
   279		area->phys_addr = phys_addr;
   280		vaddr = (unsigned long) area->addr;
   281	
   282		if (memtype_kernel_map_sync(phys_addr, size, pcm))
   283			goto err_free_area;
   284	
   285		if (ioremap_page_range(vaddr, vaddr + size, phys_addr, prot))
   286			goto err_free_area;
   287	
   288		ret_addr = (void __iomem *) (vaddr + offset);
   289		mmiotrace_ioremap(unaligned_phys_addr, unaligned_size, ret_addr);
   290	
   291		/*
   292		 * Check if the request spans more than any BAR in the iomem resource
   293		 * tree.
   294		 */
   295		if (iomem_map_sanity_check(unaligned_phys_addr, unaligned_size))
   296			pr_warn("caller %pS mapping multiple BARs\n", caller);
   297	
   298		return ret_addr;
   299	err_free_area:
   300		free_vm_area(area);
   301	err_free_memtype:
   302		memtype_free(phys_addr, phys_addr + size);
   303		return NULL;
   304	}
   305	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106160718.uYKsrudY-lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
69b/A+/EgQdd2QEA

--sm4nu43k4a2Rpi4c--
