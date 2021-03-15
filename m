Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEXXX2BAMGQE2JNET3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 5971A33C725
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 20:54:59 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id x60sf20219003ota.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 12:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615838098; cv=pass;
        d=google.com; s=arc-20160816;
        b=siXnURv1kwIsSXGFoWMhrGBbjatDHyzq2X29i342c/PJxDCZjs0l1MolOQb0SQzL4W
         0ZdcXai/w+Nn80ZlSJ9SfEzOImu4n+xuxYlAycXMt8OtbUYU7tKBz9NyNv8bDCp8Mb0L
         zPxiERNfaMl6lbHWBIlOA1kAL9Z2mdGZ32QMcgRwFFXh2G4ekUSwQvRkwGCqtlUObLGK
         cv7QC8vEAoVLTlbVrHLZfJGY7b83Xgt8vij5lGO/Puf+ohY5i7Uz/Oi1da34TMF7jnbc
         OQEYHSXriczqvo+6hHsVUzsk30qBCeNqyoZPz4B3gfVJYe8bPl+JGLlNEzQapjrdrNf0
         o9+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gN3tNytN1IpFMTuuSoK7/bMVY3M6+BTNGIRZMjAIEsI=;
        b=EHHSVmuTktv1hE9N8y6QQZGg6MI6PveyRU7l5hZ0kQmcJVQhdT4dsyFl9PuPMvZE0i
         Mutuqo7yrakH+374SSq4K+LMnFMjrckgv0954JMTpjwsdR1aw9nc6qKbiLGa7FWabNuw
         Vtuff+d/GXy4xM/Pvsy5mryTkMl76dLD18yT/r/IzVUBCvGBX/qucfrLbVeEVT/3aC7f
         teMGjtPycUNhnWMoFQyL1yNBhxTA1LTh/h/YJuWQnDlTEoo7JLpmdzHcHiRez21I2xN/
         dtlh2qp8/oIkFDSjeNFjb5tGboSBNZ9RrRkXf3cmPGWLiGUUO9xdM1pUZrprg/NbwYY2
         dSQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gN3tNytN1IpFMTuuSoK7/bMVY3M6+BTNGIRZMjAIEsI=;
        b=jL6/FMEkQdkd5R1/9RrPV+fHVb02cWV6r2WlrRFhNTogVhss9P4lmG3Nj3NnngpET2
         LN6LOaD/7EGgC/OELRsLJbDaHWEXOrs5sU6494HW2oQ5U/fKwzsJ4IQNZDIya1U+5Y1R
         rEQf3A2Ml+jmA/COkBzHcbzod1rsJZ33z6j1RKbl+q0qblCXzA79fNZiftHWKjVU/+Rq
         w8B7chR/HaOSQ51dLX1Nb07d/0fcZD4pJXrOk+BVhe2cS0yTyE8I0Cje2KecTg9zdEaO
         xJQKOUrYlnUXcK8ZQARfI2dRrBdV1pDcTmEGIYqSEVwHnzu64KsfE7uMPzDOE/QMcdmO
         8vMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gN3tNytN1IpFMTuuSoK7/bMVY3M6+BTNGIRZMjAIEsI=;
        b=p3UeNRPCxfuSB/MboEDtYTeFmDh9fuihwPNZR/dvJpkTGDH/uM4JlfxQBmaf7f7m3Y
         5tqzP3A/0G3cE/7wzMJI/Ud13XaCw8mE+vCSgR9ccfb2EKZ2aBA8dap4a6C8GydLzZgk
         mDRFcAlS3UUVU9H6KMGSPJtSkOH2I8LP8eCskiLH8AB5WhJYIwbb2YWqSfx4nbPROKSf
         NXYgZ1DSYxYQ/ejKi/3+THEGVaHA6FBSdHWnvrZHn190LDsZGhCRyXfkohDM6VkrB/td
         rK0XU0CZRjb0aOazMixWQZNYYBjx0FMDSQDY1Mab5wNOWiCw/NVM494UaOPoV28JvGAP
         OtOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325l5f3IuwC28GtVtRSi8Xc6qZLXiAkRhHoJkKL/2WDBYGFzOvk
	HgyIZLnnnVp1qncOxTz4YJg=
X-Google-Smtp-Source: ABdhPJyQaBWv6n16YSIgpO0aIPlI44i9UXgzYa4Xq/g+Bwk7fxFUtpXliB0jGZSRpOs9YBiLWWheng==
X-Received: by 2002:a54:4413:: with SMTP id k19mr586461oiw.72.1615838098064;
        Mon, 15 Mar 2021 12:54:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls4062505oia.2.gmail; Mon, 15 Mar
 2021 12:54:57 -0700 (PDT)
X-Received: by 2002:aca:2103:: with SMTP id 3mr594197oiz.80.1615838097556;
        Mon, 15 Mar 2021 12:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615838097; cv=none;
        d=google.com; s=arc-20160816;
        b=Gv2OULw9sLbek4Lefj9GsLHvOJJMJ9Mp+irhbsyuvnGtmIjAAzBeON20d0MKEdLNk4
         JdBcW248+FU+EWZQVvXwRoXL9kB5QDr0V+tgdqzTiPYKM8F1p3elhnGsWHUWczBUy8sd
         EKU5CDx8ZSO7WYylkrcghgh0CWyy0kMbqMP4cNCRg78a7s70QsWF9SejI9Jvpl0UzfIk
         bZXybDdLUI6PbbWiXHsJIIcqGpG4xUHQcrBqVdH4EkFc14ATyOEEDzTxu9suaEv9zNTT
         965fP0fUc8BPD+HoDospqodPjVnFz7aqFbaV7yW4/01SjYmWbg5dn41r/Yf7scS47ulR
         0jAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ZisRtBseAxX0/Fp7Qf6Ao8uWbJyqIy+ZlaxTZOXiyhQ=;
        b=quvc8gClG7tb6OTAu89fOKRVEupRMxy7feDrSl+NYk2ws9dtR8MaaZM1WNeGdeoo1z
         X+nuvWuIgJWQQuGc3vz2XnIzpsQBsGV7jfxSmSv56MgzdY++tYA1D8PkgN6WmxTl96R8
         C6dRYRdioDcsGS2INpsVbwJgzBjODsfn+EVUq1q0M9WlLIVK9JtxLBQno4q/ip5g7Hf4
         J3GHoHZ2zDnwOdRakuixwzh1UlSIDdApglbQWEoBVPIX8yzQ79ZXn8e+8TW+Tto84XFB
         PJmeCIcNL0PHQ2sdtCJyrQFBOoK1r5CTfAGKkxj5RlkLIs3JGAli83lQNP5DziKVtIWp
         l7gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id w4si553348oiv.4.2021.03.15.12.54.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 12:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: JJUsv0GLpopgmjbfQDQEeME/z7IDJM4BKKVWjcfqdMxk+nzPXmWHcdDWwAsyO2rZwbZEhhJ3zk
 BsuM1iAVAO2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189196740"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="189196740"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2021 12:54:50 -0700
IronPort-SDR: CKNUFJHSx0Dp1B474Tm0Dj0DwPwshQRPPGzsLvsb/bLi2FjBqOD+eU3k5vmbFxk5nOPKp4phWl
 GgHgsrgX8Faw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="439859986"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2021 12:54:47 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lLtId-0000cf-8S; Mon, 15 Mar 2021 19:54:47 +0000
Date: Tue, 16 Mar 2021 03:54:31 +0800
From: kernel test robot <lkp@intel.com>
To: Aaron Tomlin <atomlin@redhat.com>, linux-mm@kvack.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	akpm@linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mm/page_alloc: try oom if reclaim is unable to make
 forward progress
Message-ID: <202103160359.qH0vaVHn-lkp@intel.com>
References: <20210315165837.789593-1-atomlin@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20210315165837.789593-1-atomlin@redhat.com>
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Aaron,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on hnaz-linux-mm/master]

url:    https://github.com/0day-ci/linux/commits/Aaron-Tomlin/mm-page_alloc-try-oom-if-reclaim-is-unable-to-make-forward-progress/20210316-010203
base:   https://github.com/hnaz/linux-mm master
config: riscv-randconfig-r026-20210315 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a28facba1ccdc957f386b7753f4958307f1bfde8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/77338aaff2606a7715c832545e79370e849e3b4e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Aaron-Tomlin/mm-page_alloc-try-oom-if-reclaim-is-unable-to-make-forward-progress/20210316-010203
        git checkout 77338aaff2606a7715c832545e79370e849e3b4e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                                                     ^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   mm/page_alloc.c:2538:5: warning: no previous prototype for function 'find_suitable_fallback' [-Wmissing-prototypes]
   int find_suitable_fallback(struct free_area *area, unsigned int order,
       ^
   mm/page_alloc.c:2538:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int find_suitable_fallback(struct free_area *area, unsigned int order,
   ^
   static 
   mm/page_alloc.c:4444:3: error: use of undeclared identifier 'result'
                   result false;
                   ^
   mm/page_alloc.c:4447:50: error: expected ';' after return statement
                   return unreserve_highatomic_pageblock(ac, true)
                                                                  ^
                                                                  ;
   mm/page_alloc.c:4507:2: error: expected expression
           else
           ^
>> mm/page_alloc.c:4719:6: error: implicit declaration of function 'should_try_oom' [-Werror,-Wimplicit-function-declaration]
           if (should_try_oom(no_progress_loops, compact_result))
               ^
   mm/page_alloc.c:4720:11: error: expected ';' after goto statement
                   goto oom:
                           ^
                           ;
   mm/page_alloc.c:6136:23: warning: no previous prototype for function 'memmap_init' [-Wmissing-prototypes]
   void __meminit __weak memmap_init(unsigned long size, int nid,
                         ^
   mm/page_alloc.c:6136:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __meminit __weak memmap_init(unsigned long size, int nid,
   ^
   static 
   9 warnings and 5 errors generated.


vim +/should_try_oom +4719 mm/page_alloc.c

  4544	
  4545	static inline struct page *
  4546	__alloc_pages_slowpath(gfp_t gfp_mask, unsigned int order,
  4547							struct alloc_context *ac)
  4548	{
  4549		bool can_direct_reclaim = gfp_mask & __GFP_DIRECT_RECLAIM;
  4550		const bool costly_order = order > PAGE_ALLOC_COSTLY_ORDER;
  4551		struct page *page = NULL;
  4552		unsigned int alloc_flags;
  4553		unsigned long did_some_progress;
  4554		enum compact_priority compact_priority;
  4555		enum compact_result compact_result;
  4556		int compaction_retries;
  4557		int no_progress_loops;
  4558		unsigned int cpuset_mems_cookie;
  4559		int reserve_flags;
  4560	
  4561		/*
  4562		 * We also sanity check to catch abuse of atomic reserves being used by
  4563		 * callers that are not in atomic context.
  4564		 */
  4565		if (WARN_ON_ONCE((gfp_mask & (__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)) ==
  4566					(__GFP_ATOMIC|__GFP_DIRECT_RECLAIM)))
  4567			gfp_mask &= ~__GFP_ATOMIC;
  4568	
  4569	retry_cpuset:
  4570		compaction_retries = 0;
  4571		no_progress_loops = 0;
  4572		compact_priority = DEF_COMPACT_PRIORITY;
  4573		cpuset_mems_cookie = read_mems_allowed_begin();
  4574	
  4575		/*
  4576		 * The fast path uses conservative alloc_flags to succeed only until
  4577		 * kswapd needs to be woken up, and to avoid the cost of setting up
  4578		 * alloc_flags precisely. So we do that now.
  4579		 */
  4580		alloc_flags = gfp_to_alloc_flags(gfp_mask);
  4581	
  4582		/*
  4583		 * We need to recalculate the starting point for the zonelist iterator
  4584		 * because we might have used different nodemask in the fast path, or
  4585		 * there was a cpuset modification and we are retrying - otherwise we
  4586		 * could end up iterating over non-eligible zones endlessly.
  4587		 */
  4588		ac->preferred_zoneref = first_zones_zonelist(ac->zonelist,
  4589						ac->highest_zoneidx, ac->nodemask);
  4590		if (!ac->preferred_zoneref->zone)
  4591			goto nopage;
  4592	
  4593		if (alloc_flags & ALLOC_KSWAPD)
  4594			wake_all_kswapds(order, gfp_mask, ac);
  4595	
  4596		/*
  4597		 * The adjusted alloc_flags might result in immediate success, so try
  4598		 * that first
  4599		 */
  4600		page = get_page_from_freelist(gfp_mask, order, alloc_flags, ac);
  4601		if (page)
  4602			goto got_pg;
  4603	
  4604		/*
  4605		 * For costly allocations, try direct compaction first, as it's likely
  4606		 * that we have enough base pages and don't need to reclaim. For non-
  4607		 * movable high-order allocations, do that as well, as compaction will
  4608		 * try prevent permanent fragmentation by migrating from blocks of the
  4609		 * same migratetype.
  4610		 * Don't try this for allocations that are allowed to ignore
  4611		 * watermarks, as the ALLOC_NO_WATERMARKS attempt didn't yet happen.
  4612		 */
  4613		if (can_direct_reclaim &&
  4614				(costly_order ||
  4615				   (order > 0 && ac->migratetype != MIGRATE_MOVABLE))
  4616				&& !gfp_pfmemalloc_allowed(gfp_mask)) {
  4617			page = __alloc_pages_direct_compact(gfp_mask, order,
  4618							alloc_flags, ac,
  4619							INIT_COMPACT_PRIORITY,
  4620							&compact_result);
  4621			if (page)
  4622				goto got_pg;
  4623	
  4624			/*
  4625			 * Checks for costly allocations with __GFP_NORETRY, which
  4626			 * includes some THP page fault allocations
  4627			 */
  4628			if (costly_order && (gfp_mask & __GFP_NORETRY)) {
  4629				/*
  4630				 * If allocating entire pageblock(s) and compaction
  4631				 * failed because all zones are below low watermarks
  4632				 * or is prohibited because it recently failed at this
  4633				 * order, fail immediately unless the allocator has
  4634				 * requested compaction and reclaim retry.
  4635				 *
  4636				 * Reclaim is
  4637				 *  - potentially very expensive because zones are far
  4638				 *    below their low watermarks or this is part of very
  4639				 *    bursty high order allocations,
  4640				 *  - not guaranteed to help because isolate_freepages()
  4641				 *    may not iterate over freed pages as part of its
  4642				 *    linear scan, and
  4643				 *  - unlikely to make entire pageblocks free on its
  4644				 *    own.
  4645				 */
  4646				if (compact_result == COMPACT_SKIPPED ||
  4647				    compact_result == COMPACT_DEFERRED)
  4648					goto nopage;
  4649	
  4650				/*
  4651				 * Looks like reclaim/compaction is worth trying, but
  4652				 * sync compaction could be very expensive, so keep
  4653				 * using async compaction.
  4654				 */
  4655				compact_priority = INIT_COMPACT_PRIORITY;
  4656			}
  4657		}
  4658	
  4659	retry:
  4660		/* Ensure kswapd doesn't accidentally go to sleep as long as we loop */
  4661		if (alloc_flags & ALLOC_KSWAPD)
  4662			wake_all_kswapds(order, gfp_mask, ac);
  4663	
  4664		reserve_flags = __gfp_pfmemalloc_flags(gfp_mask);
  4665		if (reserve_flags)
  4666			alloc_flags = current_alloc_flags(gfp_mask, reserve_flags);
  4667	
  4668		/*
  4669		 * Reset the nodemask and zonelist iterators if memory policies can be
  4670		 * ignored. These allocations are high priority and system rather than
  4671		 * user oriented.
  4672		 */
  4673		if (!(alloc_flags & ALLOC_CPUSET) || reserve_flags) {
  4674			ac->nodemask = NULL;
  4675			ac->preferred_zoneref = first_zones_zonelist(ac->zonelist,
  4676						ac->highest_zoneidx, ac->nodemask);
  4677		}
  4678	
  4679		/* Attempt with potentially adjusted zonelist and alloc_flags */
  4680		page = get_page_from_freelist(gfp_mask, order, alloc_flags, ac);
  4681		if (page)
  4682			goto got_pg;
  4683	
  4684		/* Caller is not willing to reclaim, we can't balance anything */
  4685		if (!can_direct_reclaim)
  4686			goto nopage;
  4687	
  4688		/* Avoid recursion of direct reclaim */
  4689		if (current->flags & PF_MEMALLOC)
  4690			goto nopage;
  4691	
  4692		/* Try direct reclaim and then allocating */
  4693		page = __alloc_pages_direct_reclaim(gfp_mask, order, alloc_flags, ac,
  4694								&did_some_progress);
  4695		if (page)
  4696			goto got_pg;
  4697	
  4698		/* Try direct compaction and then allocating */
  4699		page = __alloc_pages_direct_compact(gfp_mask, order, alloc_flags, ac,
  4700						compact_priority, &compact_result);
  4701		if (page)
  4702			goto got_pg;
  4703	
  4704		/* Do not loop if specifically requested */
  4705		if (gfp_mask & __GFP_NORETRY)
  4706			goto nopage;
  4707	
  4708		/*
  4709		 * Do not retry costly high order allocations unless they are
  4710		 * __GFP_RETRY_MAYFAIL
  4711		 */
  4712		if (costly_order && !(gfp_mask & __GFP_RETRY_MAYFAIL))
  4713			goto nopage;
  4714	
  4715		if (should_reclaim_retry(gfp_mask, order, ac, alloc_flags,
  4716					 did_some_progress > 0, &no_progress_loops))
  4717			goto retry;
  4718	
> 4719		if (should_try_oom(no_progress_loops, compact_result))
  4720			goto oom:
  4721		/*
  4722		 * It doesn't make any sense to retry for the compaction if the order-0
  4723		 * reclaim is not able to make any progress because the current
  4724		 * implementation of the compaction depends on the sufficient amount
  4725		 * of free memory (see __compaction_suitable)
  4726		 */
  4727		if (did_some_progress > 0 &&
  4728				should_compact_retry(ac, order, alloc_flags,
  4729					compact_result, &compact_priority,
  4730					&compaction_retries))
  4731			goto retry;
  4732	
  4733	
  4734		/* Deal with possible cpuset update races before we start OOM killing */
  4735		if (check_retry_cpuset(cpuset_mems_cookie, ac))
  4736			goto retry_cpuset;
  4737	
  4738	oom:
  4739		/* Reclaim has failed us, start killing things */
  4740		page = __alloc_pages_may_oom(gfp_mask, order, ac, &did_some_progress);
  4741		if (page)
  4742			goto got_pg;
  4743	
  4744		/* Avoid allocations with no watermarks from looping endlessly */
  4745		if (tsk_is_oom_victim(current) &&
  4746		    (alloc_flags & ALLOC_OOM ||
  4747		     (gfp_mask & __GFP_NOMEMALLOC)))
  4748			goto nopage;
  4749	
  4750		/* Retry as long as the OOM killer is making progress */
  4751		if (did_some_progress) {
  4752			no_progress_loops = 0;
  4753			goto retry;
  4754		}
  4755	
  4756	nopage:
  4757		/* Deal with possible cpuset update races before we fail */
  4758		if (check_retry_cpuset(cpuset_mems_cookie, ac))
  4759			goto retry_cpuset;
  4760	
  4761		/*
  4762		 * Make sure that __GFP_NOFAIL request doesn't leak out and make sure
  4763		 * we always retry
  4764		 */
  4765		if (gfp_mask & __GFP_NOFAIL) {
  4766			/*
  4767			 * All existing users of the __GFP_NOFAIL are blockable, so warn
  4768			 * of any new users that actually require GFP_NOWAIT
  4769			 */
  4770			if (WARN_ON_ONCE(!can_direct_reclaim))
  4771				goto fail;
  4772	
  4773			/*
  4774			 * PF_MEMALLOC request from this context is rather bizarre
  4775			 * because we cannot reclaim anything and only can loop waiting
  4776			 * for somebody to do a work for us
  4777			 */
  4778			WARN_ON_ONCE(current->flags & PF_MEMALLOC);
  4779	
  4780			/*
  4781			 * non failing costly orders are a hard requirement which we
  4782			 * are not prepared for much so let's warn about these users
  4783			 * so that we can identify them and convert them to something
  4784			 * else.
  4785			 */
  4786			WARN_ON_ONCE(order > PAGE_ALLOC_COSTLY_ORDER);
  4787	
  4788			/*
  4789			 * Help non-failing allocations by giving them access to memory
  4790			 * reserves but do not use ALLOC_NO_WATERMARKS because this
  4791			 * could deplete whole memory reserves which would just make
  4792			 * the situation worse
  4793			 */
  4794			page = __alloc_pages_cpuset_fallback(gfp_mask, order, ALLOC_HARDER, ac);
  4795			if (page)
  4796				goto got_pg;
  4797	
  4798			cond_resched();
  4799			goto retry;
  4800		}
  4801	fail:
  4802		warn_alloc(gfp_mask, ac->nodemask,
  4803				"page allocation failure: order:%u", order);
  4804	got_pg:
  4805		return page;
  4806	}
  4807	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103160359.qH0vaVHn-lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
0M4SrvJTZELgkkoqLje1w2H/H3XeMDIQogEA

--DocE+STaALJfprDB--
