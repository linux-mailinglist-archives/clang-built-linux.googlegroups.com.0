Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVXH5WAAMGQE7HPEK6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B01230EB6D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 05:11:04 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id y72sf1397978pfb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 20:11:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612411863; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8EJgH10Aoml0FdylXWjATSvfIVFzAduH/wJGqTbRPGBpIpuLIC1a8uDuoQWJgCD85
         qQffXI9LasmMylGBpYdd+3VYmsfca+ppqC3ENdYGPXoMEtpV0cq8wnrnFMmfyLhvPOVZ
         saEw0qw1XpxtmhSaUg8PyFNTUGoDqnPESkoj4ZYSCfK/r3yiNMjQv4QiTksBCtlR76tq
         0LBbu2BTIEGbn18MPA/KlYYmNjO+D0dLOFd6KHBWGTQrDXKr8nflRYt7CVyI7YzsDIC5
         1AMqbgUAcuiQGJrjTNU4ZQRPp0hkOwi9a719bp5IZHMyIeJU/Y1WCuGpOMpCExTQ2h5p
         RVkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=QHJLkO4egTLImjX5ckeFZI6bDfJc1fy7ZS1mG+Wcaik=;
        b=i4ExVgo/CJst43uytKrLcLbCSK83K0Gp77iLCDlhmSWV1Z8AxVrKei47SJP/ZmF08R
         KhvYwchPWP01+gvgRxhmCE2klxYCxsscjz7j20M2SVf7XZW1Sa77c49z6VlFYA86rxZQ
         7djSf7UV7dlZu2X49/bGChhGZhbVvKVWfHVuyLatOhgztO2XImMpDi8DdpUpkigZ0cwq
         nlzgyII5O/S+qJ+4cr4VH6hCrPukpnoibKUA3jaonPUwX1dakOgjQ4Ggdnn0uBJp+oi2
         XKAwszQMzzmy8/bVRcbXAPpO03mkjBIhFa+JZwgaUwpEIwthw7+RW1B+WBzybV77BqF9
         EMFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHJLkO4egTLImjX5ckeFZI6bDfJc1fy7ZS1mG+Wcaik=;
        b=bMTE7qpW2LpGGUruRZ7H9wp1MuVdDq6QwpVj7mqWDB5aGEeoVci6m7oYR4SXpGc7nC
         xFPeVYSvt8F/E6Vf4Cau6zWkqK/pfdKYFUQ9wUesoMFCyjQB1Ej0GKeovdYIvEdQALON
         P3JMHHj2OH3/0jGt0NciKTK4W9vRdzVwNEfePdwN0QKXY4lgL81WMAXWV7leNDfbkI5N
         iTlHKlzgnSyv4i0lHTj/Fp6AH8e9yGurHJkJzDolRV+2fnUM9nas3F/rpmZSICxSM11/
         L+08mytHw7u7Dre4KN7C5t3xJOG0k29mlA3gG+DSYr+qi8yf9czqBsxR3nw07U2k9hdX
         Z41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHJLkO4egTLImjX5ckeFZI6bDfJc1fy7ZS1mG+Wcaik=;
        b=KdTHOmYBzMTis/EwWZqjPDJXQjH8SZvVBTql5O0rzFO0p6TyXu+ZxC+wMGr5NgpAFp
         ZiTN7DFkv1PfZTkMmQy5YKPUBtbH4t1RwqqzqB/h7LHk8QvWkUcebRWi7i401Pj1TuSd
         WiG2nbyX7VJgm7+yyDSagTWwuutMNy0RPuehUZgH8lb0CBLASZtYNbDbyBtU5ZOekk0d
         ocuYmPn/XkF+5BeiAp/MyU01+wB/VysWf5qgEgEcF0BpO7yo80031qcga2jNxxCesNxg
         0pOWSeCHyEzw6gaUwH+VgATexKgupDN3r9kBNkZJtWccxb+hvzhUMPk5/+rAMBtXoz1p
         mLoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tcuQNOlqUHJECy+xSZNkHHJgilDbnrnt7wXHSvk3UZ1IsQT7m
	mDQZRTaXh0MAIoMhTCyNrvw=
X-Google-Smtp-Source: ABdhPJygoykR6DhfcNmVGWJ4S+61tzyE5VSVYkL2AtAXLBJC4PxhrrUdCkMVNJNGGcOVAMTOSgdLFg==
X-Received: by 2002:a63:c207:: with SMTP id b7mr6951202pgd.184.1612411863069;
        Wed, 03 Feb 2021 20:11:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8bca:: with SMTP id s10ls1760185pfd.10.gmail; Wed, 03
 Feb 2021 20:11:02 -0800 (PST)
X-Received: by 2002:aa7:8215:0:b029:1d2:8d22:a4af with SMTP id k21-20020aa782150000b02901d28d22a4afmr4516028pfi.67.1612411862269;
        Wed, 03 Feb 2021 20:11:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612411862; cv=none;
        d=google.com; s=arc-20160816;
        b=LUt41kklg/4rvkeA2I81OCgrTFTzShWzQtwl78+LqnLtAo5rkzxsDlN7g1V1tN/78U
         WILymsJA/3Wgr48uCEUO47Y/4YxR6D3nNZDeC4Tj+hybArfIGc3fK/jjHm/wmdDt9u+v
         L4okRvwLdSXqJNKcnLRnbXIEMP7yAKyjoxj/KaNJukwg39k5tzHQsgHPPM96A21Dcf8W
         ysKWRzSunz2pu5BD/jsHcrFgd8owRjlTHV2PZhxjLlF708fPKYVO4ZDAH6Zq0wxQ1VkC
         MFtGoh+vd6KFzU+BOxjq3RJfM+EcSbI4QzqKfSZPoXFFbZ8AUnLhozd4HOpJ48mw7Jjh
         WviA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=IX1UubnfcOFHiTqeCW6+gh+MrUv4tebdzXQf6+xypbI=;
        b=otKON3bUpxVYQYnrhDhLdAWnFxpEBtFItkV5kaNq9JgNJz8z+NvhumXXZDSSsbCWgh
         djBzRDIt6mpnge9rD90Zefp50gAjaKb2pWKnC6BUNx4QNb+0o7S6b1tx+3A70WfYQmz+
         d3cK3nziNuUdN41TGTL9hmbzNSvqn8guhapWC92Fxaoa6XoIS5oDSMCvOmI4jA12bajT
         IeHQ1lcFUvei7y0kCJIsNen9Lk1r6diqgaS996Y4jF7odO96eUKUcuCG8Zh5BiZLFmJP
         1ScglkgxTTEDvtLte77R5fDtj+DB0mbMyDciyTJNKhaaVHBS9fOsO3kpeTDR4edhu7b+
         a6Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id kk5si91220pjb.1.2021.02.03.20.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 20:11:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: yfSmjuWa1Mg0m33/tJ60ne+V8qAmhX0AS3C8wvDJURrbt34I3SLKX7UQhUUCRflBw5tl6e67t+
 IUNx8jpWKAuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="200145569"
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; 
   d="gz'50?scan'50,208,50";a="200145569"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 20:11:01 -0800
IronPort-SDR: wb3FHXSyiK+FRaCwaW7EuI4M73ANTLEQVeSnHiR1El/bdAWfDOkjLpZFIEG2TVgxOClS7AJ+An
 2idvKHYyNz8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; 
   d="gz'50?scan'50,208,50";a="583053982"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 03 Feb 2021 20:10:59 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l7Vyt-0000iz-5l; Thu, 04 Feb 2021 04:10:59 +0000
Date: Thu, 4 Feb 2021 12:10:50 +0800
From: kernel test robot <lkp@intel.com>
To: Dongli Zhang <dongli.zhang@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RFC v1 4/6] swiotlb: enable 64-bit swiotlb
Message-ID: <202102041243.ZsvxEceW-lkp@intel.com>
References: <20210203233709.19819-5-dongli.zhang@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
In-Reply-To: <20210203233709.19819-5-dongli.zhang@oracle.com>
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dongli,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on powerpc/next]
[also build test WARNING on linus/master v5.11-rc6 next-20210125]
[cannot apply to swiotlb/linux-next xen-tip/linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dongli-Zhang/swiotlb-64-bit-DMA-buffer/20210204-074426
base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
config: powerpc64-randconfig-r036-20210202 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/bb094f75bbb66bf693fc13a9990702b3a88ae93f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dongli-Zhang/swiotlb-64-bit-DMA-buffer/20210204-074426
        git checkout bb094f75bbb66bf693fc13a9990702b3a88ae93f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/dma/swiotlb.c:524:33: warning: result of comparison of constant 18446744073709551615 with expression of type 'unsigned long' is always false [-Wtautological-constant-out-of-range-compare]
           if (swiotlb_nr > 1 && dma_mask == DMA_BIT_MASK(64))
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
>> kernel/dma/swiotlb.c:524:33: warning: result of comparison of constant 18446744073709551615 with expression of type 'unsigned long' is always false [-Wtautological-constant-out-of-range-compare]
           if (swiotlb_nr > 1 && dma_mask == DMA_BIT_MASK(64))
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> kernel/dma/swiotlb.c:524:33: warning: result of comparison of constant 18446744073709551615 with expression of type 'unsigned long' is always false [-Wtautological-constant-out-of-range-compare]
           if (swiotlb_nr > 1 && dma_mask == DMA_BIT_MASK(64))
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   3 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +524 kernel/dma/swiotlb.c

   506	
   507	phys_addr_t swiotlb_tbl_map_single(struct device *hwdev, phys_addr_t orig_addr,
   508			size_t mapping_size, size_t alloc_size,
   509			enum dma_data_direction dir, unsigned long attrs)
   510	{
   511		dma_addr_t tbl_dma_addr;
   512		unsigned long flags;
   513		phys_addr_t tlb_addr;
   514		unsigned int nslots, stride, index, wrap;
   515		int i;
   516		unsigned long mask;
   517		unsigned long offset_slots;
   518		unsigned long max_slots;
   519		unsigned long tmp_io_tlb_used;
   520		unsigned long dma_mask = min_not_zero(*hwdev->dma_mask,
   521						      hwdev->bus_dma_limit);
   522		int type;
   523	
 > 524		if (swiotlb_nr > 1 && dma_mask == DMA_BIT_MASK(64))
   525			type = SWIOTLB_HI;
   526		else
   527			type = SWIOTLB_LO;
   528	
   529		if (no_iotlb_memory[type])
   530			panic("Can not allocate SWIOTLB buffer earlier and can't now provide you with the DMA bounce buffer");
   531	
   532		if (mem_encrypt_active())
   533			pr_warn_once("Memory encryption is active and system is using DMA bounce buffers\n");
   534	
   535		if (mapping_size > alloc_size) {
   536			dev_warn_once(hwdev, "Invalid sizes (mapping: %zd bytes, alloc: %zd bytes)",
   537				      mapping_size, alloc_size);
   538			return (phys_addr_t)DMA_MAPPING_ERROR;
   539		}
   540	
   541		tbl_dma_addr = phys_to_dma_unencrypted(hwdev, io_tlb_start[type]);
   542	
   543		mask = dma_get_seg_boundary(hwdev);
   544	
   545		tbl_dma_addr &= mask;
   546	
   547		offset_slots = ALIGN(tbl_dma_addr, 1 << IO_TLB_SHIFT) >> IO_TLB_SHIFT;
   548	
   549		/*
   550		 * Carefully handle integer overflow which can occur when mask == ~0UL.
   551		 */
   552		max_slots = mask + 1
   553			    ? ALIGN(mask + 1, 1 << IO_TLB_SHIFT) >> IO_TLB_SHIFT
   554			    : 1UL << (BITS_PER_LONG - IO_TLB_SHIFT);
   555	
   556		/*
   557		 * For mappings greater than or equal to a page, we limit the stride
   558		 * (and hence alignment) to a page size.
   559		 */
   560		nslots = ALIGN(alloc_size, 1 << IO_TLB_SHIFT) >> IO_TLB_SHIFT;
   561		if (alloc_size >= PAGE_SIZE)
   562			stride = (1 << (PAGE_SHIFT - IO_TLB_SHIFT));
   563		else
   564			stride = 1;
   565	
   566		BUG_ON(!nslots);
   567	
   568		/*
   569		 * Find suitable number of IO TLB entries size that will fit this
   570		 * request and allocate a buffer from that IO TLB pool.
   571		 */
   572		spin_lock_irqsave(&io_tlb_lock, flags);
   573	
   574		if (unlikely(nslots > io_tlb_nslabs[type] - io_tlb_used[type]))
   575			goto not_found;
   576	
   577		index = ALIGN(io_tlb_index[type], stride);
   578		if (index >= io_tlb_nslabs[type])
   579			index = 0;
   580		wrap = index;
   581	
   582		do {
   583			while (iommu_is_span_boundary(index, nslots, offset_slots,
   584						      max_slots)) {
   585				index += stride;
   586				if (index >= io_tlb_nslabs[type])
   587					index = 0;
   588				if (index == wrap)
   589					goto not_found;
   590			}
   591	
   592			/*
   593			 * If we find a slot that indicates we have 'nslots' number of
   594			 * contiguous buffers, we allocate the buffers from that slot
   595			 * and mark the entries as '0' indicating unavailable.
   596			 */
   597			if (io_tlb_list[type][index] >= nslots) {
   598				int count = 0;
   599	
   600				for (i = index; i < (int) (index + nslots); i++)
   601					io_tlb_list[type][i] = 0;
   602				for (i = index - 1;
   603				     (OFFSET(i, IO_TLB_SEGSIZE) != IO_TLB_SEGSIZE - 1) &&
   604				     io_tlb_list[type][i];
   605				     i--)
   606					io_tlb_list[type][i] = ++count;
   607				tlb_addr = io_tlb_start[type] + (index << IO_TLB_SHIFT);
   608	
   609				/*
   610				 * Update the indices to avoid searching in the next
   611				 * round.
   612				 */
   613				io_tlb_index[type] = ((index + nslots) < io_tlb_nslabs[type]
   614						? (index + nslots) : 0);
   615	
   616				goto found;
   617			}
   618			index += stride;
   619			if (index >= io_tlb_nslabs[type])
   620				index = 0;
   621		} while (index != wrap);
   622	
   623	not_found:
   624		tmp_io_tlb_used = io_tlb_used[type];
   625	
   626		spin_unlock_irqrestore(&io_tlb_lock, flags);
   627		if (!(attrs & DMA_ATTR_NO_WARN) && printk_ratelimit())
   628			dev_warn(hwdev, "%s swiotlb buffer is full (sz: %zd bytes), total %lu (slots), used %lu (slots)\n",
   629				 swiotlb_name[type], alloc_size, io_tlb_nslabs[type], tmp_io_tlb_used);
   630		return (phys_addr_t)DMA_MAPPING_ERROR;
   631	found:
   632		io_tlb_used[type] += nslots;
   633		spin_unlock_irqrestore(&io_tlb_lock, flags);
   634	
   635		/*
   636		 * Save away the mapping from the original address to the DMA address.
   637		 * This is needed when we sync the memory.  Then we sync the buffer if
   638		 * needed.
   639		 */
   640		for (i = 0; i < nslots; i++)
   641			io_tlb_orig_addr[type][index+i] = orig_addr + (i << IO_TLB_SHIFT);
   642		if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
   643		    (dir == DMA_TO_DEVICE || dir == DMA_BIDIRECTIONAL))
   644			swiotlb_bounce(orig_addr, tlb_addr, mapping_size, DMA_TO_DEVICE);
   645	
   646		return tlb_addr;
   647	}
   648	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102041243.ZsvxEceW-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLJuG2AAAy5jb25maWcAjFxbd9u4rn6fX+HVeZn9sDu+JGl7zsoDLVEya0lURMp28qLl
OmonZ9K423G6239/AOoGSlQ689CpAV5BEPgAQv39t98n7OV8/Lo/Pxz2j48/J1/Kp/K0P5f3
k88Pj+X/Tnw5SaSecF/ot9A4enh6+fHnt+N/y9O3w+Ty7Wz2dvrv02E+WZenp/Jx4h2fPj98
eYERHo5Pv/3+myeTQISF5xUbnikhk0Lznb5+c3jcP32ZfC9Pz9BuMlu8nb6dTv748nD+nz//
hD+/PpxOx9Ofj4/fvxbfTsf/Kw/nyfzd5eFq//nd/bvPs/L+arGfLu6nl58uLt5fXMwW5cXF
u9liMb/68K83zaxhN+31tCFG/pAG7YQqvIgl4fVP0hCIUeR3JNOi7T5bTOG/tjkZ2ObA6Cum
CqbiIpRakuFsRiFznebayRdJJBLesUR2U2xltu4oy1xEvhYxLzRbRrxQMiND6VXGGWwoCST8
AU0UdoUD+n0SmhN/nDyX55dv3ZGJROiCJ5uCZbA5EQt9vZhD82ZtMk4FTKO50pOH58nT8Ywj
tNKQHosacbx54yIXLKfCMOsvFIs0ab9iG16seZbwqAjvRNo1p5zoLmZuzu5urAeZ2R6/3SEZ
nG6wz9/dvcaFiRzS8XnA8kgbGZPdNuSVVDphMb9+88fT8ansFFptGRGBulUbkXodIZVK7Ir4
Juc5UZUt096qaIjdAWZSqSLmscxuC6Y181bOjeSKR2LpZLEcrIJje0bSLINZTQtYJ5x61Ogb
qO7k+eXT88/nc/m107eQJzwTntFstZLbbgN9ThHxDY/c/FiEGdOodE62t6I6hBRfxkwkNk2J
2NWoWAme4bZuh4PHSmDLUYZznkBmHvfruymo7VEpyxSvR2zlTXfi82UeBso+l/LpfnL83JNw
f0XGRmy6Q+mxPbijaxBwolXHNIeJtkgLb10sM8l8jyn9au9Xm8VSFXnqM80btdAPX8EbuDTD
zCkTDmdPhkpksbpDMxSbw26FBMQU5pC+8ByqWfUSfmTdBUN1KbIIV0XGlZFZpkyXWsaD5baX
MOM8TjWMmVhzNPSNjPJEs+zWeaXqVo61NP09Cd0boXlp/qfeP/89OcNyJntY2vN5f36e7A+H
48vT+eHpS0+M0KFgnhmjUrh25o3IdI9dJHCVNtyxGNRAo0fWWPT6K28Fqs02oX0tlsqHnUiP
g+2BvpquoM8rNgunjNB5Kc20cktQCeel+Aeiav0uSEEoGTWGxIg68/KJcignHEsBvG6L8KPg
O9BBoqzKamH69Ei4J9O1viIO1oCU+9xF1xnzHGsCkUVRd2EIJ+FwVIqH3jIS9LYiL2AJwBJ0
/QMi2GEWXM+ubI7S1XWiJ2smkd4SJTt+pN3CCwNW4qXzIO2DaDVyXf2FTivWKxgHLq4ToCDk
CMChiEBfz95ROp5/zHaUP++uoUj0GnBKwPtjLCpFUYe/yvuXx/I0+Vzuzy+n8tmQ69U7uK3a
hZnMU2J1Uxby6r7zrKOCy/bC3s8eMlhG63o0AibN72KbCc2XzFtbWKDimTvrkFXNToWvHL0y
3wZINjcAXb+jywfhKk59C155HLvmDFbs843w+IAMrfsGpOYs08CpZO144DkdC1bSW7dtmCaI
ErEYeGQwTHS2HFxc4lItwGTAsJoqnvXadvYKdj7CSrgeY8FJeetUgi6if9Iy485mtRUGoG32
5W5zqwIFUgEH44E/9p2NMh6xW8deUdPggAySzUikZH6zGAZWMgeUQ1Bu5vegPBCWQJhbFsMf
AO+Os7sbNJXuVSPrYox1p7RL25dSopetjUkXiskUPJ644wjbEGLA/2KWeDao7jVT8JcxgAzR
jo9mzpNgxlHhCo5hVtJ4nXbQVxu6TJtfyCxdsQSgf0ZMPUI+HYFv8niqTSiO9rbnt1NPpWvY
Hzg/3CCxKWnQ/ej7txjCFoFaTtetQq5jMOxFjTVf0T5Hi5ofwD4qtGYFOS0gs8yyhSacl5xH
Acgxo+MNNtwNwQCDB7l7Xbnmu24U8xPuMhFRKg287nYqwoRFgUvlzG4Ccn0MgjaErvsKLL07
DBNu7ReyyEEsLjEwfyNgb7XYiRxhjiXLMkEt9hqb3MZqSCmsCKKlGrmhxUD0aGlQ0YUdnZSB
DLYngmDBsVJUKhMVU/G04Ui33AKHRb/milpIM3WbeD0NgEjLCrOMgzBUlwLFS+773O9fG1hl
0Y+aUm82vWjwY50gS8vT5+Pp6/7pUE749/IJECgDZOAhBoWAokL1dfduTCcQ+ocjNqvZxNVg
DaIgC8VkDtMQsFk3SEXMHferKF+6HGgkl/3+IPoMQEyd2XCPtsqDIOIV2oFDlOCFZOYa/1Zp
HlcWcAMYORBeL9QHKBGIyApGjI0zjtIK3+ykV9s/9RaWGwLCleU/zPmkp+OhfH4+niD8+/bt
eDp34QB0QAeyXqhiMFLx/vLHDzcGQOYI72I6Qr8YH6tewdV04RCj1eDClV8YQ+l8MZ168z6b
MhfItIa8GGkOETC4BwO1YTHEinSM6zcljHlYvBmunBw50IIUI4ZwSCWmIEJb5NktqoxgztP+
QSFtRHJ1H4q2qx7MMQobR5vtWGkMoVmepla61hDRMxLvHZMpk8yg5euLTqOHStlefF9Jo4wd
Ai+WeGKJLxi5PYv5UlCfHuc9UxrHsKEsAbgmAPtChETiJlcDkVzPZu4GjcX51UBWO2s8EIHI
btT1ZRebQYTrrasgciDRigw9goiFasjHvBVg4CGjuRSrLRfhSlvHThw2y6LbDoU0TVhSJ9ww
hp69b58EKlwuY6EhQILoojAWijrdSgzstkFlReD3tDf3l2Exu7q8nA4Xq5fo58homIc1Y3a0
Jtucixgsb99riiXPKoSJiEuJZdRvonKVggqNs40gMc2XySWnlzOsXihMGlddz+mmMF0Khx2b
21QZ28f9Gf3b0NYqUI4mD2qLxltlg9sYpx6oyrjNRP78FfucxsyVUDSmG/qRe5N67+fv5oCx
rBgwvZkHQHJZzvT9/OI9kV8cepKeCHStBqt/v59fTemvd3OrLc4MGiMAjnoDF7Swt0hZV/1d
XF3MilXqWcGIWhq6O0o0nWZT7ORuEPIA5/rgflFBLoy/mE1fY1/Z7GbqTczfzabTwQ7o4teA
gcLc/WLFU5ZCGMAyhplQW5+SHpJFmgyqSBHDXID61uucuZqZBuQJBCXp3YhTmtvDXxX6J6GE
iggdYrg1zy1tNsxYhS6MhCsT7+eXH+zF4loI4MWV8SyDADWSYWjhpaY1wCxuJQrrOzKbXl13
yedJcCr/81I+HX5Ong/7xyrf3EXD4GiCzIbRNB/r6N0MLO4fy8n96eF7eQJSOx2Syasy5ml7
qfyGVoRyU0QMoLpLTFarmCf56BCayyH+k1uepV67oolvFmrl+cbbUAFU+yEUuu8OEVnLg58F
OIuRPGpegL/IwKA7+TewqVS4niS9NJ7bOphHYnb57pLiBis6Bl8DmuI5D3dgtGkIdPyGxQHP
3TniMwuEaHTw1V0Bl9m5B2DNL10mABgLYwB6o7jbXi+mPXe8yvCJhAR2UqdRHtaQllwD85bq
FyoVCcKGfsSJ+mN8HsbAHGLhHp8nxv3VT6/1LL9qk8HfNpamr/mOuzySlzG1Kvw8towGvtiY
/D/ARldCACcFaKRhxnpyksyLIh6yqAEpxYZFOe+qJ1AkF2sTv/X8sAnp+hn0uhShTZo3cATD
uoo4b9uaF1KTi7+TCZcZ3GYCAb3YN3a3yy3yHZjjOoRQhF5jFYKma/DSpac7D1ez1FqkJl3g
1sIOILnMcAzRL+c0SKgpNo4HKiZnh23R6vd0i1LrgoxZp8IWN6RQMbaGMHjJQgUxZoMwkemP
ByvN4ge9tzeFsXQFDyAcF5heeC3Wb70LhOnatsz9tEZjJVolVKzwY1Ywk2Qz9mT58kyMSafq
ypU3bh/Pq3FsRRUQCmXc0wibbCuopGcTBi3SuNciWlLxAw6r8Vq7Q7pus3B2/x3TN/dtDU6X
22uORpqUrRr4Ir/8vH95NAR8w3yegNmd7JvxDrQcq5lzsj+Vk5fn8r6zwJHc4sXHdPX19Iep
XiIFTOYayyDA15npj0OPW1e6QPCVGfa813l1q4THugbTXgNtUsTVzJ+asVtZ9URDDy0SyyJb
cRqKI3TLWSTurKfbJtmzPx3+ejiXB3x2+/d9+Q2mKJ/OLhWSVSZpNHff8LuZP4K9Bbyx5HbO
V8NCPBDRLYScPApGqqXMmN0NyhPYQpjgy42Hr+E935ArbqqltEiKpf3wZwYSEpwFxM+wRt1j
rfuxWEXNuHYzKmoBQWDgeiwI8sQzIWIFJkXykXt2Rq4rBTL9V1ISB9tcSTCJFeCqXIMjgQt+
QIvgtnlMshuYvAXqZ9HfLlbOxdKvC876u8OUUcHQ0mPeoJZ1bV+sdlV+mJJMatZOOXV089pX
jVl74YEwLG1pYH2cFyHTK+hcxcfom5xsfCH/RZPK8+KlsmW1ZaBfmDcx8mJwWhumwcPGA6HD
UpNYVA/dXpzuvFUfo2w5WzcQB4a6yUXmns4gAaxnagoCHRJR3MNczyus2mcQH97vMtbQDOWo
b+nfm18WtYAu1UtKuYf5ZyJ76ecRXBW8nPjIhM8fjvH5DlU1qcrMNKNws1V20x30UsbW+XUC
sdJsr+XoCFbqeicbiFjBgtH8fwToqsDXky3LaKZBYkmmCAfwqaYzr/9WWefrqiuJwny1PHCD
i23E0FUitdQxoFo5Q/Apte/JtjuHHJUG46KdbV5htd3RcRVa1mChe43FMgHykDKKpo3uj73F
2imy6sUJ76x5/2j9lic3//60B089+bsCRd9Ox88P/TAbm9VbGVsL7sc0q/1W0bzBNc8hr83U
fzP5hRvtsgxFjK+i1KuYl0EV4+wzktCo7o4rq1PfKlMxFYHzyK0qF0nvD5YiVEGOrHInNkt5
SsCtvMH0j83B+oWlCp1EwBhDOkZBYSb07SusQs+mQzZGMdarbsMAzye1jnqvtVazOtqpTKkr
qYGNtsve5uqCFoHVbDzxbke4nlS6vy4Yq4hdb6DVolFlaeKVUtuN0gMwKJZF/Wmq0nYIOr3s
Nu3HU1W+ZX86PxgEq39+K+03UsCUwkCQBim7tEj5UnVNu2XxQFjkLn/Rm5HuI76xY4Cahv5F
SJtsYq+q6Fl2lV8k8wH9hKyyD1jiUWcRu4vRsde3y3681IQ7dYtl4E602VN3mN6ucWIqmZEE
ZlKfCuY44Jd902zjxTQ4KgjrYlKybS5+1RmORm4T6o6zrcJYw8005nWE16Lf8QTML1IzpHO2
dXcd0FsDmuCKAMJELE2xOpb5foaI0ZSGkRCwTSmYk+c/ysPLef/psTRf1EzMW/2Z6MBSJEGs
0esTxYyCukaBeNaMGzzZPtwgThgvcKyHVV4mUmoTKnIsFAEvOHabMKrVZmzdZlNx+fV4+jmJ
90/7L+VXO4hqxFAlk4hcgAAy9E1Wq4gHYYspHQ2pgTeSX2PeAQs4bB1UaQQII9VGX9q3UIpC
vL4tIUYjRPSP6jtmcNvvCJwFYnlCD9wgSwAKy5yWyCiy9ebEDDiLRWJU5/pi+qGtnfUARSce
g4tMzzzIJAAMiPDcNYAjH6bcpVK6kMDdMicm+c64YWm9EDU0E7e+kkOpXjvrOJPkCf2mjAOD
vbWFn6tnzg3Eh5LcaIiXEJKbam4SF4JL0pab7kCZ5hX4ZrTwCMVqPi2iCjyuo02/hLeF9El5
/u/x9DfgnaEmgyqtaV1q9bvwBSP7A4u5s3/B1Yt7lLpLK++dn5qyUz5Syw4W2J1HAzp+/YUR
T8wyF07G2tFUp/jJmlIQOtNpm96AcA1QAvHH6dhNgMauZF1zMDp2TK400YqQZeRXTH8sM+HT
h87qd7GJAC9Xk1o6VLMdQxReQGRt+r+fzmc3LloRbugAhBFbDJ97lYKQwjCkFACZtBOARRGx
qfDDKgACbxutnTLczS+ddPAzrjKrdCUTqo6Cc47rv7RqeTpqkUT1X0zVJpx3Aktx1S13XSql
JKfGvOEUKItByXgnLM+1eD9RWLAs8SNAGhbomBkI56I1f91YyLFjj2ToSYuxvDZpghar/0WM
42p2Wwd4tO7ZgDilpZQoHqQUoZI2NVGkDGOlrNeHm0y7VCuj4XoWmA9kaPJoZ4XzFao3JiAz
mLRfA4+syjK48LJRcvz8Qd0WdRVrI7CbyN5KEOH3eOYxwrakk3P5fG4C1doiD1g9BrW+HTSI
M+abTdSxwOHv8jzJ9vcPRwxSz8fD8ZEYawa3ifgN+FX4LGZYjEhf8GHtmbReHDOp+CDyYLu3
cDmf6nXfl98fDs3zLEVw6Q3HrBtV3lssTsFEYODvbL1tOSt/5xD+LYupF3t1Be2B0zIu+FFk
bGudOpCWnstSIycctP04+7D4MNJaKKnb4hwgTPxqTfQNnDTfYBP3SJvdYN0QCtsE8OkeprKw
pp66AuQFER+OEGYD0keW3BUC/raw6esNw2OAYI7T4mIz7VCkhuSoiyc8GhUasvfu3bQvW0Mc
eaPq+O55BMSr8P/+auPhamOyImv62NrGyBpiNRgwxWSvS1TqI8M3dpvIYzUUR/B+djWd9RfU
ncLIYpqZ+x3bFTkfwc0md8NF1MvFA3Az3JJXMtADBayyHdX3SVZ1seNaEAvgQtZbgYl0+tTT
UPBNm1DhV6983ZBUetujgOWndykI0YGTEL9CBTMDtGOIyizx1q1xbzySqSlDyhIQwMjXSE17
j+M7TV2XDRG8s9agbY3ZONil+TICI28e+svhkk3Q3mRqsYl5TnO0a6Ks1M1s6gQdq8581uQz
Xlvv1joKi4zYyiobrRHTbEgxcUzmORiZh8Gh0pn1LES4bRz5T1pdv/n68PR8PpWPxV/nNyS0
bZoC8Hd/8t+2cH5k7hhGNTGf+2sTe7ym3qrPTGT7j1wMJwG4uAQHPURyjvVEsaNdvxXEPMNq
hu6I9D+ZCb9o/eVEYqlUO1OfmY6ztB+NM3H1KyzzwdKY6u2cIJlgLUa+tkLI9mEkm8BE4MKC
gZUhgJ8AekPRiyAsfuI05chZ2VYcSWrlR94AdyXl/jQJHspH/I7l69eXp4dDVcLwB/T5Vw2D
CALDkdLkckE8fEsqxNwbkudFzjJNjfY/nLMNwxQEzZENKcFBW+obbXWeuJ9lAIeDtYz6AQMY
XAwsaLIhxOpw+oVEwEQkN3bREuBPDY2awGTs1c3Dj60+dmB9gN1oY7vSxVRiWaT+j/rfuFA2
cfAPTaDLRltppcuaWjtTtgwN6N7wNxvJPxieSl1ABllFGg+GKlLt/o7OMJdb91BYmW5vbOxf
9mh4VUnd8Ks05KPf69N6d93ITudLm8J0rxf3WNzbYSHkZmQTAArs7imDEHAgITiaAjTXFP28
IqpcuYq9+k2wgsA5A/mG9vVJUs6zOf7hUutOcdza5I1y1Cptn1oRfh6OT+fT8RG/zb8fBjPY
I9Dw58xZUIps/Hd7Bv/AQssY/MMOZn87/F5t193H54cvT1ss0MIVeUf4ixp8Y4b9/G1vIH9r
phlSrcrCmoYg100dGcSweh9KoZ5z1c+x19b0tZ1UTwjHTyDjh0dkl/2ddknc8VbV4ezvS/zw
0bC7A3x2fJmHO/GYz63cPaW6tt6wBkJsGA5JUtZrY3YyJRL9+G4+4w7ScKCazq1Xm1/Lo33i
/H/Oru25bZzX/yt+OrM78/Wr5Vvsh32QdbHZ6BZJjpW+aLxJus1smmSS7Nn2vz8AqQtAQc7M
mdl2awC8iKJIAAR+lGd89zUET3cvzw9PfAQxZ0xHAVuLUENt0uZDe42CTafx57Pmuya6Rt/+
fXi//S5/iXRdPMJ/qvT2ZeDZlY5X0dfgubm16MWekg9TUHR7GMZdZt6n29Pr3eTP14e7v/iZ
9A06WMd24NzNlM99cg1p0ISOt3i4bXbnSWqfSxxMFMo+iDLqe2JkWODLPQZCEyf2dRlnoWSY
gVaZ+G40BC7SFYYqj8EKNLGH/qC34cPrj3/xc398hjn4Sg4CjzXmdrMUl5ak1RsfQVR6ponh
bltjfe/L6Rg784jCg/RyeBKYM7saeP05WzNv7L537sMI3ZsYn8FOSLuR1OY/2NliJzrvQE4j
YAwVv4amZN1F9rfjHddXaVFfHhCAjx+DGVpTLgssLknf1VHlOnizZxepx48owZhmx3fmN1eX
G1oRqVgoW4PmpQbEOKZxEG2tFAWqLe1526HgnDSPAd/FHqaBniMh13mRGeqVVMeWitvQyDfU
hY8PLIlCoVaPL8E8bz/3MC1Lj6Bk7e0VH9uGMDDgGjIuYr0+wALDbTsD/pe0p6bkm4SXOYQG
aCdCQic8/kJ/s+KhN5ocI5SRZo1UA+ORh31pyjlsqwEjLv1Oo+pCaF5Or2886qXEMMoLHXpT
sMI0yMlmpaFEhamh0/DOsExoP+bRmBiCT85oBTr0WiMQ0OiloRiGKadJdMM2n8ED63E4wD9B
jcHwGwPMUL6ent4ejWkZnX4NRmYbXcKiYT2LFf0QlvQcxvwiZnWJMY0jJ8rAlM6XQp9XWhQm
4bgPZY9ruah+NyycFClNXHrvNAFaF2oFn3PsFtYhqkFZc+PPeRp/Dh9Pb7CJf394GWoAep6E
yq79S+AHnl7zRjqJCWvWmthUpU8AmwwLu1pkJ6kdhGEJbGFXvMHQBOGpkR8R/plqdkEaB2V+
wzuIq+LWTS7ro/LLfe2c5c7s5i3+YqR5S2x9vgurs2wKNtA+mnKkcVGzM6OhFmKRteyUw1lY
nhtcDM2MmAe3e/uxX5S+1BhoRJIm17IPpYqsZcKNLUJqEdxtESRMFT4z542ldHp5waPRhqgz
fLTU6RYRH6wPI8X9q8JXgiEd1leJMc2x8GEachO9PTq+rVgqOwWoCGaZ6iinkdGzznOQpN9P
fZ3D1yb7enQ5sJlgvMS9/qNxMuh894/fPqFxcHp4ur+bQJ3DY13eYuwtl87IYxRRzt0vZgys
HtIvpfTtKYLR+GVaYoYUOnJpVFjDDXIdNo1cZ7YebAszsuv6D29/f0qfPnn43GPePSzpp96O
eEu3mLcKq19Zx384iyG1pFAjH4+hceKCNcEbRUptBzbqLzcJkDcyaLl71EXbh8xP/36GPfYE
1t2jbmXyzXw6vb0rtAtGtxsp/j0QhjQlTX/dUPZPdRKoGgbRVjqHZDKK+9I7Xlyps2XxYxL6
PTypJH22/Bwdx4W55CZiN8wHGO3iwa4cP7zdCiOKfxms5GFloNmm+3MP5aviMk0aQOZh+Z7d
5FKfi+8+U0iH6Pa5ypLodltqVMx2egWeBzP9L5jbQy9SVx6ExH4DHd0TezeOR2NLLdmtjbzd
RuAK/egOK/Db0r2NMlxl/8f8fzbJvHjyw0Q+jixopoDU4MdV8ZoOW+mgBzn7GzDMmUHkl8Ss
S0P6b4yNLLkpC0QMFy5ZehsQTeCpyLpMt18Ywb9J3FixVrv5QGnMMoXfLLguxUwusHKuUWWl
0cyGgXFsdBoA1USIS1iZ2KfY7Q5x4fsI8iCxo1xjRBnqUH9AZW7OlWnKg31QbaeTDM/TruNg
6EhGqhVM0OajIIvZFCiqUR7RoSQf/aHI/hiLMdOaGbpbWBboiZemehbBpO+LRDyvKMp9fpC5
Edghg143vFBGqmAj0y12xC/QB3D6y9myqv0slY47/EMc3/C5hGlfJVX/ShXGg+1PEy+qSlIx
YLA281mx4FEzsLJHaXHAwAmYmBh7Ijkbs1pFZNdwM7/YrKczN2IWjiqi2WY6lYG2DXMmHXeA
DlukeVGXIMIQqFrGdu+Y4CeLrvuxmZJY6X3sreZLZrf4hbNaz8Q+FQPtrx1t6oceybM2hy11
4YcMCu46Q5wu0iNVKPjrMripDwWDNPRm9qdndowAtpt4uFsYeu2WswXxbxoiQmrQdKyGHLvV
ak1RVxr6Zu5VqwEVzK16vdlnQVENeEHgTBt8v3ZD4d3sPEzbC2dqrQOGZnmvCLGG7/AQdxaz
QfC//3l6myiMOfnnh8ahfPt+egUF8R09Htjk5BE3szv4wB5e8J/0pOf/UZp8mxgr7qK5lkku
isDbUwVKFR6U8NJ8oPMhJy+Lyg5H6yT2Lti5bu3KGPNs6ehmk8799Smeit/pGtnj/ekN9vd7
UNOfb/WDa8/Q54e7e/zz39e3d23IfL9/fPn88PTtefL8NIEKzJZM9Fyg1VUY5HUTzEXIJniy
4ES3ZJnuXQIjsAqTGdavA0DbiVDJfSGozW4VcR1U6pX9zR/QbTTIoIZ2En7+85+/vj385Ctt
W+2ZKEXSsvYRh+Ef5CSXNCScBJKy7GzY/MZXjy5aAzYzGJ80DLepm/tDzuB8tysCn8lq5ohj
jZ0fZBMizw281ayqBAbCMlVzgRH7FwuphBf7q4VAL3OFIbT0TbesfVbOV6tzKkb9BXSrXM6P
al+fUkKrqlw7FzOpUeDMHAmxlAkIVSbF+mLhLIeMzPdmUxhFzFc/w02Co9Sf4vp4KWbWtXxl
ISd2jGg985yp0KEi8jbTYLWSmivzGHbbM+1dKxfqrSrxjZXeeuVNp5IWwadb+51gPnRrtgvQ
irADwkLSP0HuKh+vCaKwwSjFf3FkHU1pIpJYs017k/dfL/eT32BF//s/k/fTy/1/Jp7/Cbao
36XVoBCvJtjnhkkDM1vaTqBpBMxem8AeeujhcOWjFC3Qg+TxghglDRuhBRHVP2bZ7lxv1sgW
mZLGEnRUkaz03xKnwOvBRuiR2hZuMey0LiIfdncCOmCliCV3qpHJs67d3i1kPbM1hkfr2ibz
VPpQxYa61YykmhkZNt2DmaadmebzYw3fSKVn7ODp95kYeK95UHBT0QW0pRau3TnXY1uAobme
2KSrPFDvpVSPjr2hrTYEXLZ1jFR7AUZ/BUsrgZYphgyCuVnHxR9LA5xkCZl71drjdPG1t6JG
szPob0J3uRgi+/d+lb5LOmCgLBswXHuMlLdZ8AWsIY1fy6GXomtpKmvqmUBdIoTKSDSSTNmI
HWJZ5TPrWlbWaibj7JsnQ/cUzOPR15x7Mc/00uQAOjcbcXeDgaBXXdieQLc4L2OsCckb00qI
AwjbPNDPjEpWziwBtgzEbl5mV/YmcAiLvWd/HobIlZ2WUftHD3YwmalLDVydXVEPUwrP8Nuq
hfsdOpltcWYC7dHKGV0JQVWE7YGqfWYlj9xib0VKmRG9yZlFCat0KDl/zfgmg4qRJIBvNJtv
NXc2jj3yoR2hSqm2CaR5O7+UfLdmM8oG21OiGPJFS3QZHK/pPbs0w5Bu4uXcW8MKMBvlaNw/
47pD4AVt4Thjso17rXTB4ukvp7KkMG5eS6wW9vbXy8QiUmozCrn9wFluX6jS0TkMmCZf6VlT
O7P1dDD8V5E7cFfZ/LFd8Crwh+/T9+abpQxtbRYnfOTNhXQ2bHS4Ipvbb+foXzgb+2VaDgNN
y2J5X8zitayvmu8qdJlnUBNtjBWjvu2DqFApSKf22Pv7AaHOfdeuFqj7rC6OQ3IQe8PB3IMN
drAUKKoCWUp1t0VSuBU0se2QTiQNTPXmsgud/KJR9jhLh+WzLiI145qb0aZJMOi/D+/fgfv0
CezmydPp/eF/7ycPeFvIt9MtwVfWdbl7tigjKU63iCEVZTGmByvvhmafdIXOme+a7wXXzM2g
iVdpriTMIV1tWERWV2CZ8RwwlC2y1s/arvOuFSqaSRNd83o3Ao7MrT1kt/+8vT//mOgLz4bD
BfYkrFKx/ZavCgZ5YTpRsdgGJG1j6x41481Q6afnp8dfdn8oOgUU1ib+1MrI0K+qMcLJ6QFQ
jcEshrEjGx0WVj3S9mlkw3PvWYvkX5sEURbV+u30+Pjn6fbvyefJ4/1fp9tfQqgvlu78pL3S
I16h1FwbwryYpRfXygqdQhpCoNF1BGkZt2aRhEGmzFOB5wuYzdG0Ji6o4aGQMKwQXGHizDeL
yW/hw+v9Ef78TuzuvrjKA0z9lKJaGxaGI7HIs7N1d4ogZueVKUJD6/hRlmqa+KFLtScw2vu0
1rYCxZO3mtGWLYrcs6BLGobOk2cnbLGvLHiE6yDx07yee/Ts5DrNme5Q3mT7lGMPkrKu72al
mBhMhXYBnSxB6cydaqzCCKw7BVWOnH1RyTIQ3WKNj7osAvFx3dj9Ov48sQyyQUWuDm5SKsm6
pVI08ZTS8b2kBV+UIvkIBhjSto1kiv8JP+kNJFElN3yAPY3ikOnfdbJdr6n2SEqYa4Xp3Ngu
FuyHyZRCXO0gCrxywNNQWmf4hODF6NalIklFr9JJ+BUbpdqliejChGJ0k9JXWfGMYRDhEHzw
W+NrBDl6ne370bjc4NxVmiIwchgYcn6G9KEjUhWee60O0kpPZYxCRp1vRkMrHYlWOzuBvJBo
1+GQ2gDVafBAeSHxQFdmCRdBIsbb0CIaGoxMy10AepkSli+f/SJV+IFnj2F5iJRkSNJSja+0
PwqNZlI2Z3FIfJdF+LSUNvxeentBfIiC6qNpEnzFsJjz/USQO8zrpLh3RR1YgEkNyaCxetKY
U4mQh9S0LNwgkCeWjuowplAVGpD9ytpUkFjtYANs6V0bB8+DVysauzvlJrAp8lqwQ55AqunM
7Kmje9suTXd07HbXYx/c/uAeA9kxRaTwyhfRxUhlMLyLbHfMOg84hof+Sc/zdlv2w6w3jERH
QFU75uTA37KioDnXUuK5WrAOuKx+4OnffT2eqDHFzvSS9pK8uy/x2JDHbn4diJd+UiGQcJOU
6QtxVC0HOlHPK46WetrTuvGkdbU8XHNiMUPDCLEdy5BMDo9VGa5go/WEx7HRUF4uZrBbMmkT
yteqym5ysZiPqVO6QBHEkgcjDNwokZWFxC2xEKvUkKT+Fev5ejYd6QH8M8hlfEculadJSrGE
k5CHGIXCHX9igx9+xOu5ePxH67hWviK7krb+fVi/Rh4yvZQGBuRTWQtskA2DZAdbKsO2h8Vz
T2bZTYCZcSF1KtJqgqRA/HKReWW5S68id26daV5F3ugOXQVJzbyiVzRTB37UUcRsNiBJ3yNK
Km7yISlNR3p9wIARCpN/5bkXbM1sCC2uREfFUJyY+pzyeExnyOkdf/lquhibvXmA1oQMJ8jE
kkB231MhRLnLxf4UbgxqBT/4xAW7lrdMWjKgdyZQRhq5eQh/qOrCHH2h16SRUYLn43l0IlAH
N5ghJ8S3xe+t66hY+wedVxEPkS68zWw6dz4a7kJ9MNRFTFF3g0x53EUO7I1DIxw0ZTG6iBWp
h9lU1ShIaCdY6hX3g94d2EPv3Sy7iYMRoBecF4GMH4ZOer5GK+kGWNryTZJmxQ0zP/Hcpop2
8q2LpGwZ7A/UXdX9lsahFDeKnn+tmEcSftb5HtZCoRTyEBzLYzjwpK6j+sq+c/O7Pi7ZO++o
1tVlDV3nkOr8RfEtEKn2CiOhq0TKTeTOdjAUDauJlMSFKzKh8V2bDcutlGaPh1lGEbwMtvKF
vk/elB+EfN3XhNFjl8uQQiXsbyycHCQQJbU4AoW0rKpAZyfxNWHoJo+VmoDYKNajG7fVtAQf
D9EYpfHEWNRqvb7YrLZ2J1p3BtIlx4EXLxcO+nZpZUDFmIIBcb1Yr51BC0C/MMJyAwYp1BpA
T3mubz1DYxbbDfjutRp/AuVl0aHgFUVVaVdisk+qo3szUk+Ex+WlM3Ucj1fW6Osy0Znu7JaM
RjvSSqfKWtV15NIROKiC2s2Yy+HcQUO9QAW1fXFhwR97N265ns6tt3wltdXoA6NNNYrASDOo
AQwfGfcei1KCXViRrxAdmjB3lFcMpkSGyvdspEHklt7aGUxVXWyxHn0OzV9dfMDfjPKvYS0r
imCkW826tYM1YJbvjL+7fcvohGgCcTiRZbmkoWXzt+UYBoQpp8qtS/UWQ8VjBzTTPIth5YAh
SYeph8FQFl4cIgmq2KKr7GoxdTZD6nq6Qn+bWQARiiT+5/H94eXx/idPpWuet44P1XAUkNp2
k5zVEKbJH4mCagTMiwvHiC+/GyzQmVecydgEbl2hiHAWBazoJjE7TgcYM6isE8/YFe9ZvS38
5rqpvrVM38aAV6uID4T8IXg6YcYZjZrWFBwj2wkIjFTSQYpo3yFY7Z/f3j+9PdzdTw7Ftouw
xDL393f3dzqIHDktCLN7d3p5v38dxn4eI+pQw1/9qUoMiwzd+uK1gbjsFRIqLhoJXCKmLinr
p8E7i/mNerR4u3XKqhER1B7gD6X0DvRBj/UFqIViXcJjfDGtH/02zIzWvzEwruCX3Rq6hqVB
fBq8HyxRIqhaVPW19qcOoJMYqqTd4sFZNOiLhiWzacvFEL5saR2J6N5zIHg6QOPOMyYV+Mpl
cykuL1a2ewxJheWxReLP6VhCLvBmMvzDxWo6t+p2lv3Tsjqc5VgdqzlmBOlODUbK8FnC/cUG
qpK/JeoyEwcyd0eAHJmQ2feJ06CM1g4PKQKSRrGSJkdeHtdrWhp+Wm/B0NgUMKQ17O/bAfFi
NvcFSXoUSIoHvKMtXXTmkgYG3dMtDKhWNBIh0tA5Np482hh+1htHPjChxYoR64yIlLL7j4p8
vfFFXw2V0aZFkNCjqasyCZkO0BAGOJo9uu2xUJLpri+yOSoOrXJ05XNFcltEE1Aw6oRoAUvl
egp/JGGUGKrXYFxsI7YntrSh99XEWzy9/PM+zG8g5kZ2GCby7U+vdxoITH1OJ3bkfpBTFUxI
1m0legMTCbVaTxcjyYyaD+8pKyQgFMMGqwzYRAvXVIPwz0iN+lplsMUUs2E/mgCEc20BDxUQ
u2Z41pEqs+256jQKCOv8wRrFnRsH/Bi8pdRJsVyuaZMdJ5LitzpuEB+c6aUj1BjG6yaTtlH/
pNfdBdVIE8jMoO+n19Mt6k5ClnBZSpaFwckylwpSe0FlYMvt3cSPqAdWUzU6pG9n4mkOZqsa
9C/J3EYRY6kYbSVkMamaTb3ehlCocNDO0S29vZ9KQfmmHxiakIYhq2t7pu39sbnXVCDpi4hg
arAk+567dRdzR2J0IaG9NtXxPK/MRUDyXqRSGWhBPAwxyyI1plXCw8XBKOtyjKfvXJUtc/co
QAjSSkdQ6UsP/mTyUFKyllPFIDJOU4diaubZejhlKaAkAVV7KDc5XKelzRRquy4xdDRPq5th
PUU5n3/NaMK0zbFPN2Hdi24sXL4eEHXwsXbqQDNY+aEodRpSh1JpNpCZN7SNGDYiPrHOBYVB
YTMQGWeglDR7D+UCCaYZuca+NuZ4b4nrLmlgH2k/w/eWb82SC7VHUZDsRs7cTQtadLwDwDbd
GJSLSm8xn67OFM08d7NcOHyoesZPgaES+FijISMPdpzoB2fl46jyssinq/zZIaTlG8hUjAzj
FRcc/FKPdbRLt6ocEuER6RTqthjEduzfW+PKmEDNQP8OtvsH8NOmeuUs5/JlYR1/JYWfdVya
OKyJsX+xXA1oa8ex3p5acxAKTSs8ycJHFoYdL3gNiT6tnllEfaINc+1gjbiC3X+ztFsE8mou
HZI3zM2q4vVYBzoNKcuHaLvx6fbDt0Hnyo2fsxf99uvt/f7H5E+E8GwAyH77ATU9/prc//jz
/g59MJ8bqU/PT58wP/13+w176P068116dGU3XwNenqJhefkCbzGt668s7jB9yhZgefLA4+7I
llKb1BuVfLHuedRfZ2atnSn22Pqs4OsRY83N+43lmF5kchz14Ces+E+nR3wzn81bPTX+rv5t
asn0/btZFhox8v4oOsXop8wmYDPIvNdIbDA5Rr9cI4SoJQfZ8WPeB2Z92fgxPQdXn7NFW0Rb
8kyDx5izrVUn1wFNgOtsFZQj4RPfh8qUZtgpGJl0AtvACPcqnJjalGXM65VlQu6nWVezYnL7
+GBARAY48FDMixQiWl9qnZO4tnpWM7+76v7Sd5+/P78OF/Eyg8aeb/8Wmiqz2lmiR6VJQej7
zjjDpBcziZ/07bvmYG5ygpc2enHn+/MEIURgLsM8v9MotDD5dbfe/jvWIUSPWc8yfWnKWM9A
xBvB2+GCqZeJ+tdweLrO2Ft4i1/dMGp9VSF1T6qEHTwQedz5w0PitXg0pAn4l9yEYRBNGz+R
pm1p9jW9cov5xYyZwh2nymbTjTxYjUjsZbN5MV2fqR8zHKNAqr+onOVUCvLsBMo4rPjT/x9l
19bcuK2k/4qftnJq91QIkCDBR4qkZMakxBEpWs6Lyus4G1fN2FO2Z0+yv37RAC+4NKich7mo
vybQuHcDjYbMNDsnSWw6kUzYIS9rNJ7V/PF88NnpY+IoxsPH48fN95fXp8/3r9iU6WNxxStK
/QbARM+7KKk58wBp4AM0DQMkNg61R4J8axoCmY1PVzIy360/bK21bfqkOn6xt2tVl/Es13I9
tAIbKOVcPXK4bGtMxMuAXauQsBNbRlKhYcNgMRVUrL5vj9+/C11DiuWoLvI7CBNjRWlX8Vrl
BpEtrh1KUlKL+6y16vWy7eGfgARO6eZh578ppviO9vmhJN/W95jHlsSkN+GQO980Gx53CTZa
FFzufyU0cT9r4eovvuOrWjRrMlZQ0ecOG8yrSTFV22qwq6yrDmeb9NDlurksifd5kYaRzWo7
6KgGa4rLdoxoYr56jXWCWVWV1Oc/v4slxe0cWdEyxrlTMyMdxoGv2Fmxb922h8djvM2nunCA
dWxql3akjkH2zFykYRl6m1vCidsx23zLWbLS3H1b5ZSbVyUNBcqqSzUQt4Vbx0htopH1JLwp
hLikuR+sKpBPmfZ6nHY1CNowjUKHyIVpx5xKLKz9rrluYY1Ya6ckZnZD9W0niDzGyJRwjMzj
s5O7BFK7lg2OL82Z4wGp1KBpeEi8zQ+oI7sgpqkRHw9ptzmk2JX23PQcvX8x9jKhC8ORIbEr
Sr4HJCF9w0tCxyIPKbG8FRw5pCDDy/vnD6HvWVO+1eN2u2O5y/oDpsWrNhZ63Ml4TQhNePrm
XtshuCcXNZHJbMk///UymknNo7B39TlGcCpbQfzTH837EwtWdDTyBIDUmcg9tpQsHOZKvtC7
XaUXE5FXL0f39dGItCfSGe01OEC3CqCQzrcRPHNACQN8K8fkwcPdGzwED99ppoMPHoOHYltH
OgfXY5oZn4aBDyA+IERrTkGX/IgZ+iYX9yVgackoT8Kxuc7kIL4MeBlgR1AmC0mQPjb2pVlz
lbc7ZRwnQztfyKO9gWnoGpOtNtkY/LfPPEGDdea6z2nKrmXX9HFIQ1+GYpo51fZE4+F0pEK4
bC3JxZCjqGMpI4uZwTBHbhSDQMANDqkM4YHg+gGnuk/JGqgvKnILDrbA6FqoWZFfNlkvZivD
qfXMU8rsb9Tid4HIBKfWISPMLLCp8kGqibZ4DisBLpy3DY9R2xMOMnawaS4UmiAm2NdZ3vM0
YtjN9Iklv6eBEcBxpMMwjAMsUe8QNhgIniSnWJLdBn2teiygQPWG2GcL0Ulp84V6Qr7NUmRp
oM+ZczXCHsLZldqmq992KwJVqOjbU1lfdtlpV2LCiU5EkiBaq7uRBa0liVFU15oKIbRq0RfM
CX7Cqq6FpNGpYeKR3TzAFqOJA3Rbab0hdNN2mRDbSkcylU26lmkfxoy4mRZlL7e7ZdVEsX6c
opXIUp9NJA0RpKUxTbGyiO4VEYavcQYPep9Q56As8WWQmAdNLgcTIng+ZvxazizlSGV0zSaM
UImUoZHiFsLUNWWXV0tYhAZCnfgOdbGtult3mB17FuD99tiLKQzX1yaWU96RIMDWzrngRZqm
pu/kcc/6mHA1klFXBcPJUP68DFVhk8bDAbVDpWL+q7hOzhbQHIm9SCJiyGIguN65sDQkoGj0
LoNDm9NNIMYzBii9lmpIfB+TJLkmdkrRqW/h6JMzwQLXCyDyA8QDxNQDoMHxJcDQ0gk1cFXu
Lk9UkGn303N12WZ7sNCExYXtbS+JtKV+nXam9+cWKaD0W4E4JgjUqQ1nh0yMSNgTvWJ3l6zZ
YNJvExYmzBOjcuRpchImPASlaaV0u5oR3jVu7gKggemSPUNC/fDEyl04fM59I4M6GMW9KCem
2+o2JujJ9lxFmyYrEeEFvTWCKk502Dg1J48J+iWPKFZYMQcdCV197wFirWSmXjFDct7FFg2T
I3EFGgHTvcYA08CbZbpe/eCtQtAHvHQOSpCZSgIUrSoJXStsRGNkDCgAGQSgPlCkdoAeBzEi
oERIigkooRg7aNI50sTzbUiS1d4Iz1R4phsJhWuTuOSIkIlRAthrIhJI8boRoqbYJ3kbBthc
0+cxQ5e9ptxvKdk0uddemzmPiZgxQrRjNKgDzgInIdIlGnzSF/RkPTGOJcaxXifMPpSK9fuG
Y4O0wapZUPEB0qTr9ZAyGqLNIKEIv2xv8uDq2MSz73O1Q1d1vr2ImTXvhTGJ+zGPHK28ceuW
X54gpMZAaBv8keD5k/sG1gOs7N2mR10fZvy2J2hPEcCqNibw8E9XekHOkSGyeF9ZQClW2ihA
OpIAKPEAMRj3qNBNl0dJQ9K1mu/6vksYJmTTxNikKJQAQnnBCTI2sqITxj/HhMmEoHy1Dqt9
RoPUTRToWNcQ9JDic2SfJ7gJPDPcNjlbfXipaYWqjMxuQEfaQdLRggskwuPwagzoRNq0jCBZ
DVUW8zjD8hp6TsO1vO55mCThDvsWIE7wGHg6T0qw00aDgyI6rgSQ0kg60s0UHQby6MWCCVMn
nOHvShg8sRG/ZILk9h1O19fIMTyULsFImt7ewLzHR46uz3oxPxqvsk1Y2ZTCat3nD/P26vLW
QOBm5ls0J1x/9G+iwbuL8NoAvEVjendNHFM4790BHvko28t91WG3wzD+bVYd1fPx11KGaymX
rs3Qi2fTB9eT9AqJcsL1b/nXlTwX4bQdk/aENXxRDttj+QULGeaIAMEAZYiClexNJ5HpkFjL
eUT0XWtErJWbJF23Ed2r66qNHg+v6zbGD1F84yFl+VVeyWdK0K8n1EqlqA72N8uw1Rg8gqqL
GnMIUTxnkwnFzHPJTQ6PQDlpAdliUrJDaG1EfoMD3yebOboDHl5eciwFwPbQNA4ZUjFv9paU
/kJOpyTLzYbff7w+gbeiN95Ksy3sa8GCMh0pWNQuTPSNmIlGtXWybWQ3ld4Xeu1J3qynPAm8
IfyABS6zXODZLCMC7QLd1rkexAsACOGSBrqGIKmui4dMxdroX2imdQx023NuoTkBAKEWwTuO
4DrzjKObvjOqGwszUbcKFqJd5fLA42zLBFRGQVqvWJLFLzXAMfqK/ASGSKaE4TvJAO+yvgQv
2+6y69BnmaGWcxKe7RYdiUg7TTv5Gu22EhYwkXWjy3cLT5VkXZXjR/oAi+Rxh6q6FWCu7WoD
odMJkLGKs9M2vUX+0hlh9IEmvY3y5mBfwRfQXdlYQhiwPDAMMP11Qa2+NJ0x2jnJQxWG2sEj
PDm3OlSGUnVvpYWqq34zlUdO51FnUyvSwAEt+lGKb00vOLZZI9E+DmO7KIKm74dI2rR/YZKP
ZX8yKdr53DRERwos4AjVCj4Dic7eSTrROT2R1Jz1jOP9WeJ3HHWIlpg6HTGz6cocWRK6Kkri
MwY0LCAIyY1VA8jdAxfdDZtQss2ZBYFz/yLbhCRw1wwzVWEq+VYU27sBaD08yRKG7Hzpuzyz
1xPb20/RxoNPM5W6OdklbLO68Tz5BIdsJGDY0a46fzNdexUN9bGV2Tu+gQs1ddbe0WXQP0ag
NKKQqI+nhhsej1rCdt0srog2NSW4cClxFiqTRUx45slUf19HQbjSNwQDBPlc7zz3NaFJuKaU
1E3I3HHX5yHjqbe6pEOlWfzhzJkzd9WH/Haf7TJPyCZQT47Vr4d9trqKC6M18q4HtqW70Ny1
1LZ+FxrKqzw89RnlcNsI3Ssh/OwsNRMmVBL89NNMgPpmra6HZd2ec8zLGVK+2dN7OQ6W3oMt
0iP0y6w+rXlKfPbAMpKeiN6n9hYOFS5xONS98cDpwgDX7k/CQBRAdzIuUS08YLdKs3WVS6z7
O8sn2ABBKcBnhYUNzAEeY6qryWOaDBpWsDDluAjKqLgmgM9JT2OZFHvk88lCuJLL2G2vco2G
xao4rmpsYATdCTVYqH4YbiEET3ib7VnIPNq8xcY5rqIvbJ6LNwuD0rFxURQ2MPSUa2GrujoN
A4anIcCYJgRzbFuYxOQch2espmAdT4gXoTjCE+rpRXL5Wx8EzgppQkYsqAVRK4kPipMYlwc0
d8axOAEGj3M3zUY9tprBxuMIO3G0eGJ/PqC2X00gZWijSCjxDKbJ6LheBmmF/B02/KjKZqIx
KutopNpqrMmRcOzwzuThKV4ZeUtEk+FYyyLi6y0t5+xKGwqWGB1KTfslSSk6H4Gl5JuPlB/z
ep6ChaHDYjbLPAmnmJG4sMCVpIihImP+kxq65efg2pBot6df4RGPdREGMcnGuAgAcU/pJOjx
xdO47j0Rb2YOGRsf7n7/HT6IuzfgB6sL5zHr2k15PD601aU/nPLbLj+W5R7eqq72D3hpRhtz
Pd0+4gE6Vc82L4I0A94lO9q0GZ4cQB3BIdbwJE5QqN6x8QEXpICjOrpawE6YvUGMKkcC4jRC
h52Ekj2erbCIGBHjazVfsKyodxgpY/HKCJ3MUExAzQb1Jo+6qlpMJKQrSdArvcc1Ni3MMjkN
VFqVq8kP5jX6BbDtKhPB5x7tVhw+DutsU202iED5si2zGEwQ51MicBMCD2SleEbc/XgEkDi6
DuOmOA7au24673hB+reXx8lm+vzru36pa5Q0a2D3fBHGQLN9Vh+E1T74GIpqV/XCKvJzHDO4
7OcBu+Log6ab0z5c3t/Q63C+DuwUWauKp7f3ZzdsxVAVpQxabWcifoADqRGrrhg2S6sbmRqJ
j/cUf3t+i+qX1x9/3rx9BwP2w851iGpNc1hopnGv0aHVS9HqrRFARDFkxbDyNo/iUZZuU+3l
6rHfoTF0ZU5N2VC4ImRUjES293t1X0i7OOmW1Kj3ObjQUg/2oJkrG+oY3wvwJSZTK17+5+Xz
8etNP7iVDa3WNFlrtiM8iq1ezjzqT2cDVDzsMzjGkRVlvtMBqIzJ1ZUy/salPnQd3MtHKhKY
T3WpXZcai4IIqw9Z907rOCzyCptZtO2UQl62VmXCWhY6wea0pdbG8UJHeqSki65w0KOTLAi8
Vg6tV+3Q9JqsrvX3l0QGy/Be3ma1+ukYhmGlJyvnbV8ZzZjtimTHFNCpl7yr6PHc2SWc4L61
SzchQ28Vbh449ruzo2DzuJIhI2vDzwE6zFrlwJRp4+683+Q/w8n+DQykMQ6U0Zm6plMxncUC
gtdwVKspdi3ULcjqZzInZD0kgyI9vj69fP36+P6XHaEq+/Hby5uYwp/e4Mb3f918f397ev74
gFBEEBPo28ufVmlUtfZDdirQDZIRL7IkCp3JVpBTbr47NQJlFkeEYfvfGoOu8I7N27VhFDjk
vAtD0x9torMQ9ate4DqkGSJfPYQ0yKqchph2ophORUZC0/ldAULtSRJ/tgCHqfvZ0NKka1ps
k10xdIf9w2XTb4WFalzl/3uNqkLtFN3MaC+XXZbFU7COKeyOzr4su94kxCKZEO60jyKHGDni
zpwB5DiI3AoaAVABvXUEPBxrlBGwP7a4Nj0n2L7BjOoX8mZiHLv53XUBofhe89iXax6L8sRr
PKJJEuIJZaFz+PuM3G5LzKNnE7lSI/3QMhKtZAA4w8b40Cb4DbYRv6c8iJwp4z5NA0xaoGPb
fwtMnH43tOeQIrNIdk6ptOO0Lg0j5dEYSMj4SEjidNf8TNk0yekaGzpwnl9X0tbva2hk3VFG
G08JPswSlDvEeoAEUM/6BWf6/oFBhn6DpZmGPN2sqRZ3nHvC4I9tedtxam9KGTU716JWsy/f
xLT3v8/fnl8/byAcplPFp7aII2H+ZnZ5FMBDtwXdNJdF9GfF8vQmeMRkCwdoU7buEI0TRm/x
NXw9MZma0EtuPn+8Cp3cyQFUFtGdKUkYmrr9qdIRXj6enoV68Pr8BhFKn79+15K2myIJA2fi
bhg1rskoquUmNha+l+Ebi4DiGoxfFFXMx2/P74/im1exnGkh0s0e1aqHxOraFum2Yu6EXTWi
vpDlRdL9kz/A+ubtQk08iXl2NWeGcD23kDlD+TAENCPIZHsYaIxeRV1glrqp0dhdrCUVyZnF
EcIrqAwTR9CxLesJHm9mIZ+hF1M12JNb6te3DkNCmTOLCWpCnclcUNFiJnGCypskq7XOlb7g
fJauN1ZqeJtNVBJyt/8NXRxTpP81fdoE6E0MDXc1diATd8oX5DYIMXIfBCiZECztIUDTHoIQ
0dgAIMRfhO4YhEGbh0jD7A+HfUAk6K8B1hxqx4A8FlneUCTJ4y8s2q8Iw+7izFlaJBVZeQU9
KvPdiqrP7tgm29rplT0v7wwNHZ8g5dxZC5rrAz0t04y7ilF2l4Su/lDcpwk2XwI9xn1bZgYe
JJfBDvo6im7IJyXefn38+MM7yxdwFuisReCvFCPtBUflUYxmbGajlti2shfCZQ21MWu39LRf
Av3nPz4+3769/N8zbD7JhdfZFpb8EH+6rZHtbYUKw5lwit7Zstg4NVymbVBXV90MdIcBC005
T7zSlRlLYtyNxeXzeOFpfE1PAzTAjc0Ue4oqsdCLUdM+s1CCnojoTF/goVBP1uecBpT7MGY8
6m1ikRdrzrX4kHVraOLu2is0j6KOmxaUgYOyiHo3ud2DeMq1zYPAPAV3UPwavcOG2R6IHBSX
o/RX4TYXulrgrQTOj10sPvYfIY35n7LUWODMIUwJS3Cs6lNi3VDQ0KOYe69lLZo5DMhxi6f/
pSEFETUYeapG4htRQiMmJTY76dPWx7Pc1dy+v71+ik/mXUPpJ/jxKUzkx/ffbn76ePwUOvvL
5/M/bn7XWI29y67fBDzFA1iPeIy7FCh0CNJAu2M8E/VxOBJjQiSrlT7Q8TlKHk+IUYTOORLk
vOhCdfUVq4AnGUv9P28+n9+Fufb5/vL41awKLa3ieL6zhZtm35wW+LUHWYLKM1ClhHvOI92r
ayHOQgvSPztva2nf5WcaEbtiJZGGVg59SKhdml9r0ZAhtjezoKnTPuyWRBQ3kKbGphzXLqb+
E6z2H5qmaFdBeoroa76UYBUNuFUN0H6B4Y0+sVIzah2Qh7IjZ48vlvxsnDAK4i+P4lHt5Moi
cj1bxFMWGy/DL80cY8TEFlq1/krziM7pcR6V+XdiVfQVRgwty71Edq0NjzPi60WqxqW+Mvft
/uYn7wA0hW2FMuPtKgCenUqhCVJ9guj0ftmRUceUcfQX9he1MI05pnMsBTX9uIG+P/d2fzer
rw8ZvuhOgzBk2Gorhaw20CJmyCQdwPeHR44EOK4xYC/ajnAa2DU91gE3qdk2DezOX+ZOL4fh
HOqeTartCirWXNvVAKgRsT0Qjn1NeRhgRGvClVM0d+bDgoiVG86xD8bsPnfcfFxBvBMyTBmG
ebbUCnXml5Hua1w1FSbTwMn6TmS/f3v//OMmE6bjy9Pj6893b+/Pj683/TKafs7lElf0w8q4
En2SBmggT0APR0aobu5PRMv/CcibXFhxnnMOOWR2RR+Gnki8GoNvuRxhM46EAkQLeqcGGNqB
tYpkJ84oxWgXUVsofYhqq99AwmSezKqu+HdmsxR1px9HE3dGk5xYadAZuZl6wX/8myL0Ody0
9c15Ug2JwvkpickdQ0v75u3161+jBvpzW9d2Bm2NhxtY1kJRVLEe+HuMxmVuwypzv8wnV5dp
H0C+aS5VJkd/C9Pzwy9mpdb7za15NXOm+nVeAbfUr5JK2FepcD0gCpwcJdnbHxRqzZmwZWCR
6l3Hd7VbHCCvrPJZvxGaMrrFNk5MccwsJb46UxYwa5xIe4w6PRdmfNNxGai3h+OpC/E4evKr
Lj/0FHdukd+XdbkvnS6Rv3379vZ6U4ke//7749PzzU/lngWUkn9ceUxvWkmCFNvNVyoGRaww
x9iSifZvb18/4Akm0S2fv759v3l9/pd/IBanpnm4bD23uzyuIDKR3fvj9z9enpA3rbKd5sk1
7DJ4CdIhSPeuXXuSrl2LSOZrLGrBETT9advp2Esjq72/98dvzzf//eP330U1F/YW4FbUcVNA
wMBFFEHbH/pq+6CTtP9Xx0a+NyfM4sL4qtAvwYrfMkq3WHMRX03IV/zZVnV9LHMXyA/tg8gj
c4CqyXblpq7MT7qHDk8LADQtAPS05roGqQ7HstrtL+VeGP5Y5JUpR8O3DCqg3JbHY1lc9JvY
wCxa13jiaAsNDZf2SzMBiA5ew3PVJqvgG9+9NNn7qpby99V+jthhtPcf02t4yPiCCv1/1p5k
uXFcyft8hY5vIqamuUiydKgDRVIS29xMULJcF4bbZrsUbVt+shzT9b5+MgEuSDDpqjcxF1cp
M7ElwEQCyCUqCtZYH3B54hhsAQgweZ2B9Edv6NSw3tWqvVuFBRU7OrRZJ3rV2XqkpnI+m9EX
rTVKoiiGieGtCeUaEeVI12AiqG8LwHa4RHnyLA9TIwEiTqcdGJEl8JPZY5JMo+omcybvkdzj
B4Hpe1S3IvgKimhvtomg8RYltm3PAPOrL7qaWsbKbXKCmKAqiTCjbbRLWOSdKKObXcjhNhyQ
WBNr9Xj7MKWd9wKV7ZiwQQI/YYTC82NukEM+eeWdTUPTdUB+qgy6EWHiGjUKFz+SsXqEt/c2
nJ854iJh1hWJymVvQFqkHlYVV16YgWCMKPOv7woq09xgfRgAKs/39TzSLdgwYcAPMcuCLOMU
LESWi7muXqGoK6IgTE1J7RVc3DQpq0yW+rAzRukI19YiBqm2MzmHESj4AtEqqTaHcjozhNww
ajkOR/lh08UcwmJOsyQ02sRThcNeoMrZMh+3ECjwXMwZBcghXNlESWLVAbktrO4f/no+Pn2/
wLEl9oPWH2GgxwCu8mNPiCaJvN4dxH2SP677QkYr6Cmuy8Bhb1Z6ki6kwgCT3yYceBjfqMeN
u5f2NNK35jbWo2/3SNORp8cwkawIcrGY8wcug4q9a+tptOA8Q4Yw3oqEkXN3JIS2QcXp4hpJ
vpjNRhisfJc/LW7GBusxRpyyvtI9MPYqzvkmV8HcHolLoDVa+Ac/NSJ/N1/LT74JTXnHGI3a
1rYNEi0Zc5xtMvoLY3RjInQQAeT76VFSU2G7rhH58a50nCnb98FJpG1fZLtUj62JPyt0BzFC
4RF4lYNuHXuRHt+P1JIGlZGpF0G5TwtUIrzpP3sNXni3CSg8FAiNYwBECkyiQ1ggatDSKBBk
0m4TpdQpoUHLTjOrEvHbghnSwMtG7xuc3mCjCcRX1yGjbvzjYHcwvaAQvQ+LVSaQx1Facjua
bNdUEjtgW36koF/G1R7OH4EMJDmYjh26rBRmxXKe8BQ8UmlXcMh0LNpwro3fOSTAya7CvdrS
GdxgoJ/4dKipJA7KckfbBl+kFah+Pu5gZJ4xxROcENHnBzbZb+HX+ZQso9wf8Cfj9Er0f862
flThoSwOmxNkP0LED87CCISNhWQBQNguzqMmHTihTFNDHCIYpNi22nqi2vrkYQRwLM92Kvzm
yBgwpbhrtIugauMFm9Doe4J/tkHhM+COXuVofL6//Hk6v0w2zx/1JL7/UZ+7p3DsaJB4k5fT
Y018yGRPo6zK0vhudCjBrc/pCg3KaTuwuX98qi+/BR/3z1/Op+datjY51//8OJ7r9wn2QZG0
QhNvjP6oYfHgtf1jrwS1FVdwJo/ybVjQWKodeiyKT0dQFrARwYoHSYeLai3MajBbDKi+3AEV
0TJVk26/0wPtahf4HMJqpqUqMqlNStbg2OWIDc8mhOfff7wfH+6f1ZQNbd/kFG21+6I0yyXw
4IfRnnZBZtrYk2Vdett9hkh97B1QBUNd3bWyZHQN4OBcy2Y3w09GQTrHLO+GV8ZZUMM00ne8
VLUWfEHgAgg27/arw2AxID4c86p0l4AUWK/x8sfR5qQ+H9++12cYj9/do+ofDlaF5xr4l7v8
lmj449InYwnOyo1jW7h8RgpuimZtkXLFAi+mR0IoyjVy8Bw2FJ2UF3uuToS6nMOkFKVpbigt
LRRqkgcRQyRh9xyziRXQ7kZO2y0Tb/h7b0SnIahgV/wbsTadyvFyfHGy06l3Po5WsEvkmYhK
Y8DrCn15V8buUYUY5NkESn9Ds3iqa2kKFA5B+TZLzY8DCMMBYQG7njCBCR74mjVt4szvY13t
PD00Ww+r4nDj+XcD1N4ftEe0SQXb6hfWzaAK6dBqgktz+Oq/jHhu4MjDsc20JVE85YsDDt3k
Rchd9BFKhrt9LeZkdBhu8jrk+Nx0JGtYYJUYa3c4hRpqOJcGsp9UnjeSakyGaVSm3migYfZ/
XsduPxBBGrZZLT+vRq2fTlg3SsXbuUZXpNN7/YiPX38enz7O94bXP1b0LSxM9Y5+to1MoZzV
gCMcBYkwJtAbGcBIrjWvdKv9I5XRBNbcG4IUuHRhcXKxxKx745u6PCco0tGus9/wZvi1b6rb
cOV7g3HCDsw0QcTzzydQ01zuctaRVjYFGlclbqOSRHxOyJrLbws8BYXJiH1Qg1eXgZy1a+JX
KzjJXJMWFKg9tS50DPrDt6tVueErT/zt6f2i7UaTgInwAMXHdFzEiQBOQ7QfElRhxAffD4Ug
Z+gen/vkU0ZEEfnZthrjilY0LtecLEaK25UIaHNe7GcFBZXRGoRxYLbf3u2OVO2vrogxO4D2
Ml5MQoI9A3gH/YzmsBQMcv9mOxz1VtyMNFhmYhutvAGrwgRzhVyzXErDW5ANAfe9qumIVqCn
lHftchBv9f1fH2+42N/xvPT+VtcP34kXB0/R1hoGHvC4zPDGRPjFTtNSJIoJKYRwpn9F6Vfq
EbWjRJC8SeYMBDDIPt4z0UAoHXS4bJVRDRxBB6/knrhLgd8HOM/LRCj+1kvTMB58yBhUJEw3
5DUdYV0gVlVOUKyec8XD+ElelYhNoCeWCG5lgkiA6a8y+GihUyEgJBAVRz4C2FzzCM/jAy3Y
BAX5dpfeJHkV5AQpL723WEeVbBIyUz2Km4Bb2d9BuKkG/kmJXBcZAGzGpNeAIKRj77xgn1Yl
uhn1n4/164VIrm5Ojd7rSwUFI7dC4Dg2DNcj61tHJNPIrYSS6YayVZLtw4GNRYMTYbzGds1l
i7ht6OW8t7PRqW457Q6gLMJBSGsH89zG9JJoG0ynfKLuKEFO+VFUqSINGH44pIO5h98Drm84
sSYgR/gHyqZt2IsqlQi+q0DH8Fk4NYo1fPOsJkOONrDF+NGaAnKMPrYJ06i4oYgAo9twCC/0
KUCEhZ/RF1tZM+w8TYYdvmd4UDzQquQHG69ga8kN7ctEysIze8QUWbZf7Fg5iLhkPfBlLdgI
OBpaZ6X6jbkLdmYtauSjdVT7IPeYMiu8a2WzGrVtJTTuvwZuLZaadwR2AKpV7ReqS0NIRc5E
0drf666h8uIpykr9aK2AhTK46XsnocifgbhIjg/n0/vpz8tk++OtPn/ZT54+6veL9q6qOe1/
Ttop+kV4Ry7QROltIj09GcjlkJ6FFGRUV+vQKt2WFETRt7C6Xn11rOniE7LEO+iU1qDJJBL+
p9f3DV0kvE+WZEOEX9kgRFWDWzizGd07GoQXwJ82vRXDFIn3sGrbcvkvbEg5Y00qGDpqb8QQ
zKe/VNFcNzgaoB3idD5EO7qhwgDt2s6naJKcY4g+sF2LcTLmjrUYw10d3NFyC1vXWChuaVMv
yQGWe2XuiPZIZBNd3cSxzGhx7ic4rssNjvpSU2zFxwBrieCc5yMJzKGp7BOS3Hfc+WhiMZN0
7v4qaTR4Yh6jY22WGyr4VYZ+O9wBowJPWIuR4QWly/twtfi7VGqDtsUsxA2In20eDMUC7IqH
KdNa5OdVAuKN29W6zt6sMq8IHMPhqkH/Xgx4SwmuMd3Cjl5atGyS73LADWb9d7gxTOCNYBJV
yOxoiww4Bb5lk+EO3IGRC0ydaVTNZw5nj6QT0MQeGmbOOr5oBFfWcI4BHnur3GfFfyq3DSM/
FsEln31+RRkYxjsNQswdzq2u2/b0a/p+ixrOKu5bTPVyO2MNU9tFpP4lhsWMyOC/tFEW0vO1
gKEvBjpNBPx6v9w/HV+fBoEQHx7q5/p8eqm7+I2tZTrFKOrX++fTkzTLb5xZHk6vUN2g7Gd0
ek0t+o/jl8fjuVYJWEid7ckoKK9c3WmzAXSmirTln9XbBFV6u38AslcM4zs6pK69K5sNRAGI
q+lc78PP6238gbBjnVuQ+PF6+V6/HwkjR2kkUVpf/ud0/ksO+se/6vN/TaKXt/pRNuyzTJwt
XRLf6xdraJbKBZYOlKzPTz8mclnggop8yqbwajHjLZzGK1AxGev30zO0+PPl9TPKlo5b993l
izS21OMLNVq5ih+gH6YwjMq3rNANQzRgFbChdxTuW+HOrfnQ8cp7fTyfjo/0m1Gg7tQgqnW+
8dApgxw100jcCZF73KtGgsca+eqYhmmpX9QighyeEpWyVJmW9ZeRCJUD4C9tER1ECZsbUp6+
dBvwa3FF4oU05yDpZ6Iyz3YVtyg+wnGPzXI0BORKynTKn5TFZ/tBT/bRqmhSOpl9LKJgEwaN
mcSgtZE0OS2asKHroW7k2gKF2ucaa5f3v+oL5yVkYPr+HKIYbxqFdPTg7c+jMA6k4ULIJS+6
Bs2SqAsNwHinb6GGYXgL5m8Ub2L9efI2gqOn8bOxt4jDfRh/XSguhNJ2R77iaEY973U9uT1C
EYlg3GNu15wegokwqm0kIneux4nUkoUiRY8Y5DKa67wZWou3kCqPcv0icVesMUdXa1tt6nJJ
llZ+zF/5b29FHqX4+DOQGv7z6eGviTh9nLmsvsqCj2QEl5C8yFZa3yJQVNyKvjdBX1ZxoFAE
KgrfzFcd+UWGRk4w5HI+XZGNj+tfV9CL4pXuh9KFmE625JqqvVMHYk7MqGraR7CuVARc3XFx
y5u95eV0qTEgMLd2ijDJyhD45LP7FlNYVfr28v40nIciT4R2tyN/yttQE5YKEyIv6DeYXn4c
gwAT210A9n0mfevWJcr726jorMhgrl4fb0HJ0B5RFAJ48Q/x4/1Sv0yy14n//fj2n/hW9HD8
8/igvSyq3ewFdC4Ai5NP2NvubAxauTCcT/ePD6eXsYIsXmk+h/y39bmu3x/uQVbcnM7RjVFJ
K4N2ke/3jzy94vOTCmQrx/9ODmN9G+B04RUfL7XCrj6Oz4+gqXSsG/QwhoOH9lXIn2iuSjND
dO3+eguyQzcf98/AwVEWs/h+ueDjartWDsfn4+vfPJvbMPX+Tu8rV6J7h/ylBdbJCpkiYl2E
N21vmp+TzQkIX096ZxoUCOd98+peZWkQJp5uAK8T5WGBgshLSZR8nQCVC+Ht6cOYRtClZeSf
pvSqPCGi/dDvuh0P82jfD15ZYDNSMTyUvrRHVqvw7wuow80nrdVIiDEtcfW7p28DDcLM4duA
YfN13ZE8gz2JTPA82sMqL9MmTDaFFyVme/MGcJHMZjTYTINobVM/6w7QwAJGo0k2CA9mmyh0
r2kR45uCtlXqG1+EzyDSrpODVf6KBdPnXQI3X5417PaWSe+J+Gvp0AtUFFwW0WYToicz10P1
X93iSyszIJWtCvwmOhJH22bxRe22ecrhHiAVnq2872XrSMBfQXRHyUPsTjVfxwZAtWsJ1COA
NQBTVV0lnj2S/RJQfB7dVeLDWjWdJHUo7UvgOXoc4cBzSdyXxCsCa24ClgZAPzFJbpZNUy4q
+iM46IaJvz6IYGn8HOjvB//3a9uIP9if9nyXvyFOEu9qqkdlbgBGtmAAzkmoysRbTPVsjwBY
zmb2MMOVgvMtA0YPcSkDSM4IYG5c0InyeuGOhGJE3Mozs2H+36/AukV4ZS3tgnQDYM6SGxQg
5ha52sLfIIrkEcIrPNABYqOmJZuE2sO7xENEM86rJLkNrK8DoIsFQnkJmsKRLMvx0bYMfTgQ
Ma1tD8T7TzkM0rbj0nemenhVCdDDakvAUg8f6R1sl0Qx9Q7Lud5Q4ufu1CGbgryzKcPrJoGk
OayOKq2+2WYfk9yZO0sKS70dZgTtAVL/3uOW2bn+ULMaedKM+HZ7gj1ppYcDmObDVfkTR8Yh
Arl5J1kwzEhdysqshc0VlEgBH/zMLJLA1n4YXQ379dweMFW/hEDl7zDA/7u3wTIGDGi4NMAL
CroiFL4X8/FdhoWbQ8nbM+iShi61Tfypw+cI0AqoEt/rF+l/ImRQaf3rLmMPTbQrEaZCvz1S
iPBb1mO0XSacj2xAvi8WbIDvyLuh9zBw2ruy9EQEwg9cayBAFXQsd7zCgsYaeTG3uqDrUYFJ
x8Qm1+O/iVzoP/ffFkuSf2fAMOXVd3xsAPI+VsUXIi5+LIG+zWEmKcnP9mZNHVFF3pYbVjpE
GvsmrZDHNWyl0bswRYpccLzcn1nzKZXVM3dk2gE1nXJPUoCYLZ2iWnm6m5KEugUBzBdz+ns5
N/f4IM/Qk5414BPTqf4GnswdlwalA9k7s7m3QUQsaBA+EMvTK9Yjv8RHLH820zcCJVICj7ze
fMrk7inr8ePlpQ3jpM/5ANcE2Kn/+VG/PvzoXk/+BbVNgkA0Ede0q7UNvk3cX07n34IjRmj7
4wMfjvQ2PqVTTpPf79/rLzGQ1Y+T+HR6m/wD2sEocm0/3rV+6HX/uyX7GBGfjpAs36cf59P7
w+mtnrybUm2VbGxdXVO/B7FADp5wMNAiu8HmO9fST3cNgP3KNndFNqLUShSj00blxnUsi1sy
w4Ep6VPfP1++ayK8hZ4vk+L+Uk+S0+vxQqX7OpxO9YxMePC1SIDNBkIidbB1aki9G6oTHy/H
x+PlhzYTvWhIHNdmozhuS10V2gYY+fNAAI5Fg/tuS+GMhNvblrsRjIhgn+E6gAiHzMBgHOpD
hS/kgiEOX+r794+zSh70AXwhKy4yVlzErrhMLK6swX7WnmGSAw02HKX7KvKTqTMfLYMksDTn
cmmSQ76OYNZsLJJ5IA5j8M/KVJFLZN0nDJIMjGUcC25tBL8HlXBZhcELdgfb0u2hPAyfTn9j
Sj8NkAdi6eqrW0KW1ADKE1euMxJHfLW1r8wTlIYaU3oSqJCN/4sYYh0Hyikx40pAxZ/R33M9
s80md7zc0tV3BYFxW5Z+dXIj5o4NLKGRJlrNQMTO0rL52NuUyOEs2CTKptExfxee7YwcRYu8
sGZjn2PTnAqhwzQWl4Uy+uuKxHuY96nPGWeC+JpODVOoBsbFi0kzz3Z1hmc5GniR1nIYl2O5
lunP3UkN22b7jYipeVp3XZu7doBvabePhKP1pAPRL6/0hTu1pwbgyuGmuYRpms25vkmMHvMc
AVf6XRMApjOXMGInZvbCYVPG+mlMTbMUxNUzzYRJPLeIli0hJMldPLdpTodvMCHAfd6VnsoR
ZeN8//RaX9S1xlAP8K4XS5rKS0L4i1/v2louWVHUXJMl3kazm9CAxmWRt3Ftwx/LnTnT4WWY
LMurDW21Jrqdajj8zRZTdxRBu9Qii8Qlmz+FmwZILG//o0ue8PZcm6ll5Qlnx7uakzLNvvrw
fHwdzJ22rTB4SVCej09PqBh+magUDs+n17qfduxGGwamv74lvZRum8UuL1uCkQvgEgM1obHG
WEXiTqwFV0k3DL6zzcb4CqqWSlT5+vTxDP9/O70fpYnXYDFLET+t8kzok/QrVRC1+e10ge35
yNxRzxySfkLYC4veXc2mxpEKjkkWa/KMmJmeXazMY1PLHOkQ21lgnK5txUm+tC1ee6ZF1DkG
MzB+nJmDgrfKrbmVENP8VZI7rEdSEG9BfukPbzmmFCEKam5x4jfyc7tRu3vm5bFtz0ZvNgAN
UoSXVImYzUcUGES5fBiMRrLkRch665SzKc0xtM0da8537lvugVrDp+IaMLtXAV/Reo350IfI
ZtpOfx9fUB3H1f0os7U8MJMotRPiJ4ARpwr5/lzt9Uv6lU20sZx4rhRrNH+kL3SiWFu8Abo4
LEe29sOShGbEKmgia9gqXWskE8c+nrmxdRgui467n/Lk/9f6UMna+uUNbwjY70fKJMsDKRom
WozpJD4srbmutSgIFR9lApotd2kkESSBSQlilg2IKRFOoAsCrsOd/lcSL174CV8M74mAuCjg
XqgRo/xvS5ovFxG4pvIs3YzWWWYZd1Upy4Z6cihJXHipoDG79knYhOaS0wM/J6vz8fGJeR1H
Ut9b2v7BSJ8N8BLU1elIqj9Ar73r4cO+bOuE+ZKYpiIsBiekmd6zsXd7pEVDA+1b1E0K4Yfa
WIlefpuMOpEhziuTMAb1eEXrCW59sxZ8HV+XnKM+Yps1TWuJc3epq1sIy4G3Kq+qUmeKG5lN
cBi3FDBoZqafXKt1RFTGAO3ElAdor/+YFXb15Ri5i/jhSZ8Q2GX9yKHbDEj7sNQMcAaTmm/v
JuLjj3dpv9L3uXEopcG1NKDMAQw74HYQ6iPeJEjA6dF+Ul1nqScDQ5n2qFinD3xIfVicWVEY
1iEsXcC3o5MIL95nZjvSPCI5LJKb/63s2Jbb1nG/kunT7kx7mjhOmzz0gZZoW7VuoaTYyYsm
Td3Wc9okEydztvv1C4C68AI63ZemBiBeQRAgQcCNUmcQYbTH1OqmgSw3op2c51m7rMyJtFDY
SxsVAcuUXbgxsyZRUpCcNouzDx/s+UN8Ecm0wLN8FUv+ISNS0RUcRS3jtneHIoncSiqRVU2+
CAXtQhL0PwGb31K7bPYxikQ/I+gtqxwa/c/0QyBbrQQmKtlADPZTImjO1ONn0x+9X255rIok
ZjdU11c9Nj17c5BTmfPTF0wdGC8/q1j4+RKW66Pnp9s70m+Mp7e9flDzqZZ0AAU7bM54UOkX
aZwylgs+rsC84h6G0YOzMpWbMeepYatxTqZg4oG5sPh4MeF8pRFrR4lEyPCq2jcHPWe9MmuL
0hCXVWI62+KvtvdcN8BpkmmROA4tgDTTR7Xi08+QHRgFUwp4T+Vg22gvGxHH5tv80ZEYdh+Q
PGXdmDed+JzA4m962uA4sY92jL1l6oufHYY3oSVmZ6PXsVVhu67Qu6JizVjAJQWImLFBclNP
rLBZHaDdiLpWPhgjv2GAdctzo0dWMmpUwsaXB5LT1l4rHWgsMvzZULLVoKlf4PQPCpw6Bdrf
h9QKQq6aPKnbPjBGh/k8iyf2Ly9kfwX2RiSipcEJSiYwRximy+rDAAbiQPQc40s9S0xrP3sF
f35lYD4HBgXhoTGhb2pRJxjqxxiRTV+78bsPPnw1teGXTVFbsRk2rzQU8aYSjL+LnEIxOKF9
DIySpUiUjfJCGSNQVDC2Nei8NetFsJhX9nKZ1f4c9jC+Gz4ZTTWJn4W7enxi1eSwPwMbXms+
PEAdmjaN1T31ewJjNcdoolZYmDxJ3Z7PJ84sEwDZwRmOjtDnVZtCj0IgzhtRkLNlyBtZ10IB
IZL8s6SIcJwE7BqDz8nw9MOKRd0j05uC60B6w8VI6LE3VR3zXxWKjZB2A2qexzs4bYJNvGDL
3kEq4aKy5beGdJHWdHKgsfgklfRKJgmYpRi+MY/UdRkav4p4w5YRA9BnOYZm1iSgZQAXJ4tc
4PbI5v6pvMhELiDRAMd4nIuBbnRlQxnDtoow+ISQ3qCQBjAXrAswUUa1MfaiqYt5NbXWgIbZ
ywLa50xy1FQ8E3fxZdhIhgUMXyqurbJHGKzaOMHEU21syjmOQKRrQXmj0rRYs6RJHpuPNwxM
JmEQinKIzBbd3v3Y2gmdKtroWH2mo9bk8TtVZO/jq5hUmlGj6We3Ki7AAHJ3sSJNAnEabxIM
XM2imnjuCZa+SXwz9MlzUb2HjeC93OC/YIOyDZ33Aq9X6Sr4zmn2lSbi+FzUQyCbqIhhm1rI
T9PTj6ZWEvw4rz35QaDwKiS0WvPa5qHu6vOB/fbl68PRN2sYRjMPFF++nYQBpTiNlZk0aSVV
bo5cb00NCjf+GXvYW5l+Iwx9GsP8oJCDsmqZsYMm63WhViaVsc+l9o8hdcCb3f7h/Pzs4t3J
G2M002qYtHZ6ynmUWSQfT62TTBsXuIq0iM7Zt/oOycTugYE5C9Z+fvZq489NnxYHcxLETMJV
srfTDsn0wOecH49D8iHYrosA5uI09M3FWaj/F6ehIb+Yhuo5/zi1MSC9kL/a88AHJ5Ng/YA6
cceJwuUFGaqvjDtGN/ETvo2nbm09gr8fMSnCTN5T8OlmTAr+TsukYP09zH6f8h07CUyKmZsM
4asiOW8VA2tsGMaRhO1F5O6AUUhKCWoQd7Q1EoA+0phBmAeMKsDqChR7rZI0Tfjbup5oIWR6
sO6FknLlV5xAo60HhwMib8xsmFbnAw0F1W/FB7JFiqaeW1dlYHkjw7M7l3Umor2ot3cvT3g1
5gXIXMlr8zkR/ALN6LKReA5jW+iY6BIsW5gEJMNge2a2CNUAKnaK61RnDw6/2niJiRwVpb+x
tmxEks6aRBrJ3SR2ljlGiKzoJL9WSWQdJXGHLx4yZF6ByYCqdFU0itV+ycqPSNXGPKA6Daix
c3PothT18tOb9/svu/v3L/vtE6Y5efdj+/Nx+/Rm0Oo73WfsoBlcNq2yT2/QN/nrwz/3b3/f
/rp9+/Ph9uvj7v7t/vbbFhq4+/p2d/+8/Y6T/fbL47c3ev5X26f77U/KPLql2+SRD/Sp5vbX
w9Pvo939Dp0Vd/+97Tyie9Ujoiw2qM23V0IBdyc1dgfMA0N/YansqOkEgtEBSywvcus1g4ES
adqXHjiZtEixijAdvoGlFEL90AYimfbEc1jpQdoh2TA7XD06PNrDwwV3PQ4HMYXSlqqp+OEa
GuKHRE+/H58fju4enrZHD09Hmn+MqSJi6PJCp7TiwBMfLkXMAn3SahVRbp0gwv8EuGLJAn1S
ZQXMHGAsoZ/Hqm94sCUi1PhVWfrUK/OkvS8BT0p8UhDrYsGU28H9D2wr3abGXL4U0to5We2o
FvOTybmVga1D5E3KA/3qS/rrgekPwwlNvZRmyOQO3oXnsIHDi2dtI718+bm7e/f39vfRHXHu
d8yA99tjWFUJr6TY5xoZ+a2QEUuo4so6SO3ZNAsEE+1GoFFXcnJ2dmLpTPr67OX5B/pP3d0+
b78eyXvqDzqT/bN7/nEk9vuHux2h4tvnW6+DkZm8pJ9JBhYtYdsVk+OySK9th9xhWS6SSue7
dXomLymvk9slCeWBdLvyOjSjZy64De395s4ipqhozl0J98hacZ/UbOTYvmkz5pPUtshtZGGm
PR+4eeazxcaO1t2vaXm9Vuzda79eluGRx7xxdZNxY4zxHvzrzdv9j9D4WlHje5nIATdc5640
Ze8RuN0/+zWo6HTif0lgv5INK6RnqVjJiT/gGu6LJii8PjmOzQDfPauz5QeHOounDIyjO+sS
ATrwBJiefBR8nMpibvkg2LTpR/Dk7AMz5YDgI070y3EpTpjPEIxNPvihrtEDn50w+/FSnPrA
jIHVoNnMCn9/rRfqxE7A1SHW5Zn9ikErIJQSy+doIX1+AJiOLeOyT7G2Q2w5iPH9tcNfIpNg
zPlbRSR0TDzn0baB5Y5HDDQ3wyGXkg49p7+HKCqRVuIQj/TCnpHlqrTScA4TO2UaWq8LNweK
nqqHX4/oc2or833n5qmVHbcXvvZlTwc9nx7cNfmroBG59Fdhdz+k3TJv778+/DrKX3592T71
7y65Rou8Stqo5LTEWM0WfTB8BtOJVm+KCccnLjBJotrX1hDhAT8naLdI9Ckrrz0san0tp5j3
CF5XHrBB5XugUHYMfAYN7H5VHprMgRgNgD8i7DKwFLOqSGXN3+UMUkgcUgiw+2CKzV1z5+fu
y9MtmFxPDy/Pu3tmP02TGSuBCK4ifzdBRLeN9c57h2hYnF6+Bz/XJDxqUDUPlzCQseg40Ol+
awXNGnPnnhwiOVS9sUV7q37o36iuHhADQB3Y2pZrf3HJq3aZzPP248XZ5jCWNRqRAn0ZIyGy
0G5i03QSBn0aZeWPhUnM7hVGWcGEDgztZ0awmHg6aMMZvDhcZ5LXB3SKQFdf64ig9QiEh5a0
9UW5iv4vehRIDr1PXYs0qQtOnTew/KsPn45z4TSotK+08zrZw4Md+ifFIL8fTxnLFiiipUwr
K+b+iHNzvRioSszlxgpVZZYZgY7HYkSWFoskahcb/ksD77prieo6yyQesNLZLGbSY5FlM0s7
mqqZBcnqMuNpNmfHF20kVXf0Kzu/vZEAeKs6x8SCV4jFMlyKvmzuy499CqQAFg8z8OMRjh4Z
GB1Yaj8RcgLqDqWH7Qmfd3+jI4H90beHp6P97vu9fmBx92N79/fu/vu4VenrVfOsXFnPbHx8
9enNGwcrN7US5jB533sUOnv69Pjig3UCXuSxUNduc/jzcl0y7IXRKk2qmifufQj+YEz6Js+S
HNtAySLn/aCmwc1eiST+0JZWhoMe1s5kHoGap1bMykSvN6GANl+Y+yW+FrCmYJaAlYSJbIxh
7V37wYDKo/K6nSvyFTc5yCRJZR7A5pgItE5S61JfxZaXvEoyyi49s5Lp6GsSkfpllpS20fJh
BSMcBAHooRbo5INNMdjphpCL2qRuWtbbtzs1MIlPJ0NetIDoJRKQCXJ2zb+nsUh4E4IIhFpr
Tne+hOkKlcsn8HE0wcgISYapnL0jk8g4JxjOSAzWy+MiC4xDR3ODeg9otLaxdaNVNwcKttfg
iWdDY8nBwa5i6acsPVpcDDmBOfrNTWv5cuvf7ebcspU7KD1qKAOhwzRJItg56bBCZUyxAK2X
sBrC32GQfL+Rs+izB7NPq8cet4sb8wWSgZgBYsJiNjf+UqRrJjvQPOzGcQtGUWGpnyYU70jN
pWnhoEITNzPTWsIPCuRZU/BA02mH3PauRNrWljIgqqqIEhAkVxKGVZnZB/HaDoSI+aBDg8hF
2RIuCLezYGKyzNJ0E6IeaATIwkW9dHCUtFKUZAqa7VPQo674Fl9mZaJa2fXAeKRCYZqeJdnY
xta3dlLCIbnW5R2vZgsB7WQ4q2/gsKEY9SxSPc+GkCibVlljFF+agjotZvavQVoY45LazwsG
lqIcrVbSofQGFFkzDK26RBvNqDEr7fQzcZJZv+HHPDYqL5IYQ+LDtq4sngA+6dtxFVeF37qF
rDGSQDGPTWaq8IVTkTITW+JjIOv0Y0ABRkkcc1xhAp0yEzOixEDX6IS47TxtqqXjoFDBbqDn
wXhBhFpKYJsanlg72oZ9Y97rcAR9fNrdP/+tHxj/2u7Ne3TD7w8W4IrC8rO+f4SNRBfye9AD
cjw7wdQYlCdhuNv8GKS4bBJZf5oOs94pt14JU4P3r3OBOX9D9qmFd5JDgAI/K1C/l0oBlRVn
PTgswynk7uf23fPuV6cB7on0TsOfuEHULcCDIO7tiT5uyho880U3+bGVcxCFsl0LlX86OZ4M
g4N8UIIExCdqdp4GJUVMpQGS3byWEl+gohMwyKuUewTRSRLtY48ul5mwEhC7GGoevsQwvbmp
jHmhIjkkcNeLoD2dWHdkJuVaihXFcAYZxKvifzr0NPZ08Lq763k/3n55+U5pdZL7/fPTyy83
W28m0GIE20Bx2bC7hlZM4yuSoev20Hii325SaboM35odKAd9SZiCSISR6FgtYmsQ8TfzwShm
ZpXo3pVgGk2RWu+7CMt8DmYkfLWKiqt2poqVzM018keDaw8BOgSbhr6Gok9vbyl1jihDYaOl
RJ6QYAlimE/7TkSXgnjayFimp6+Lde7GbTHRZZFURe4YgV4d+HzGr10VsahFG1CZNU0xw2cr
DPt0iMPGh02KTj1/QEZxcfg7H5sQPaZfa3irooakhzuBPR4WLuoO3kNKm6oTdr00P7GYu+MT
2D1TEAVuEa/BcdelvVofEJx8OD4+dns80A4uUfP5gQEayMkLrIoE72zViUxy4WrctNTj7g3C
Pe6oZB4feAOoy7vi4haMaqWm0Vnf3SEZwU6ZOn0AeYcdqLmTwag1smnvu7EB/QZNBKaaZbJY
QlUhIWaMF74+meuXKtxw9ujD4lBUZp4zB4HOBY6Kqz37NNa/LNBYXBOobOXFKDfjuDMpXde5
UWJ5vVgm9naifRyQ/qh4eNy/PcLYqS+PeiNb3t5/35tSL4cdCbbOwjJJLDA+DW6MCxH0tmvK
IQS6sW8X8zqIxPRmZHiZZFTPn9AMbTA6jzW0S4wzUIPhw8zf+tLOlzy8ij40NNr9F7b+ry+4
35s7xeiNyKBt1kXBuJKyiwqkD+nQd2jcxf61f9zdoz8RtOLXy/P2P1v4z/b57q+//vq3EZ0K
3+BRkZSEr3sEax5/Af/2D/JcsBJrXUAOQt/J9U1wNCiDqw8N2aaWG/P4r+O4LhOXt9Hy5Ou1
xrQVLDPy6XUI1LqyHtF06c8K7a5qriuExbL0l3KHCHZG24XQAhn6OtH3KsMmyYklahJwNT46
9FJtjd0Mn21V0dz/vjer/g/+6Muj56xo0c5TYXqXk2Qj5AgjJRrdf5u8kjKGjUKfxvnDsdJb
aUCm/K31sa+3z7dHqIjd4UG1lWeIhjSxz45I6HPAauE3QHuz8ynUaavPW1KHwODCuHu9vmat
70Az7cojBQOR14mOdapdK6KGVQ/1ioqsnGwDkLrLNDbEK/gJhe4PaXRI4HxsYPCF9fi5jcNd
lQwvkkFFU3+anNgVe2+gDZy8ZN61U2vpvUC7IIaD3Tsp+Bgo9vA5guCyM8MUbf7+vOsnx6CE
4w0be6oOnVvCHpHq3buWfTQi42SI4itCK429h/brwUo8jIUelkueprf2587K0gXotZiRdgoz
hBcVDgkYfhFNDFKCNWDlIiWKqPtQlzIidXMwbmLr1K1rjWxxTGc4bs4jyi5E9NZWgQOII66j
kHkdN4rqbMdqbR7dlWAoZLAE1SXfLa++/izMragj9Lc4d7RRSUDW9osOzvArkxua1+EzWOd4
oWk/WMGtwCkIRgEUl7kH13q5x1PrVNR+W/WMdrxSeTxQ5aAyLwufOXrEoFvbE6WLnYHMh1nW
HXJUAgsnvTMCU+oRgchBTgu8CdVfsu/wB2Lg+56MqVT3ga1ulq7owp2L3uBMILF45Y1lYE32
HGcdRVfXeb30ClriFW4XmNVqvq5ALy0dNoLbBYaFwZ2QmyuMQfc1iJSO2HEwzQZ0XdR9wz+N
qpLAi52etWoBG0vpbT2jvDdaFCJmSIcIQrQ6Y5nWdogtY2hRCoSKtMbada2oMCe8qWJqQK+y
MAfgwDpotSfd0ZccfCgfH/7ZPj3eORp+z7ZlNDwqWUul2ExPSKSRpjzEadbiARRSUHY/TE16
mWFyIm2lW09Vihj9LEAEm+fvI/5zk5WY2l6m7VxS1Att3Vevk/gbOjACMNIGpvWArppVSasv
CJjmYFdQ5qOdRvdOfiWbjA0AMouTbq+xRTrmrt1YShINl1DpoaggSFPWMfSc1Ub8OTbvKurt
/hlVbTT+IkyYefvdiPxMsZrGNurQTdQSM8jAGNHJhcmNZk0OR1pA91ZpfNfaab0tsRQfhWac
wlcj1QwrAM9XvcOHCsRucdVJF/M9QEc9nvwiWXemRndNCk8x+TM/osVzf9VkuMr542pNBcwj
lBT6JO34PxgC/niQKiCuaYfXdqvjpZyu4tq4eCU3JPKxqbTeMApnxGRJjoeKvAMvUVROauSe
KXsTitjfV+FneFsclIvmrbTNAdZts4Prry/NFWc3dik3LrdbfdH3d/oBbeUMEiCrqLz2ylwB
oi424RHS3kahOodbRBPYNEnsgDbOJToBudM5Qij0HamR7UL1us4lBIQdiF8vSR5jSw86PVEJ
80RlYCubGmdSU754VyQoqd87s0IAFbg6ZVHaIcxEjMcypttViLmiLKagZHwR0Nrgl3pqYGv2
5iFw2KuXkMwi0FRLb7Bpm3NPep0vE2vI9Agj4+Ndhxn1RmbugchBKe09HdbXzv8Dc60l7WbK
AQA=

--vtzGhvizbBRQ85DL--
