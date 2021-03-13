Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDMAWOBAMGQELVNHJBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C1251339E50
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 14:37:23 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id h18sf13787476oot.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 05:37:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615642637; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUyPVB9gvconRVRCHz0oCfqAWi3T5tD3EtDqtEFGd0ij8wCzaJcQD9xwoXwDsAliAg
         Be17VXgVxmJ514OKCS+ifFqdsjw3WVXWiWCFTAsL1oqkrzrvF954/YXcZkzgWYVqRIRq
         JSlo2mkZjs7HqmdDw0uM6/FjvyBlKHF8QDn+XvP6BsRAur+gYfzeB99wnIimyum0EawZ
         8ulqNQ5dDljB3ftWl0qpiR491Dys04VHSRlyn8vNpcPFguQWKNhpK3iC/Y44Lfc0teCl
         q5K487R1N2gPEbLHtO6H9jRWg2KCTeXcFq30I3lI1QA2FFxBiC0Y0rPmLCE/c+i4IvLj
         a8yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=eltYp0CK58vrsJiAbfE7P3u+tvsKtdxHCcZZGwCvFAk=;
        b=PZFTIqkZPZ4RBoa33uYanbkGWLUv1Ao/hBbsslyNM9H6+urlKFGCJqERwUo9oN0ZYN
         WzN8RdKTHuogGTcyniaoW6MscfaMDsMnJxpca0DX1Bp4I1ywC6ifBGXlUkliJX+u9E/m
         GJNElS/LIWUUQT1iLJN+FMkiaH8NJN4Klmb79RF7NWU993fK21DWHfGNIZvg7/BwjxdF
         gentocupBEY54UbnKdls5Z4W7jjKaxA4z2n3lt5XU4AbV0whh/Bd3M80xZdYl/G6OwXT
         yajDG2DlpXY0QUBsx/l23fE3GOrzTihzw+Ns0JApZMtdmA1Wc4WPX0i0otTNIMAMKtFh
         aIQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eltYp0CK58vrsJiAbfE7P3u+tvsKtdxHCcZZGwCvFAk=;
        b=EjzfWeHkX0WJ1YBmlYPG/Yat5p9ReaPYTW6p5fxfOVUdT/rA4sIflP2/82UFxQXpNe
         2nT+GzGvEFia6+nIJ7HyFg8cG7lcqZmCD+Iho4Btcn9Kc0CqvLWG/Qg7GCFJA8hc9ZtT
         LZDrLo2jsiwxuZ2TW70AFg9WHaU/WM3P4YqmZdw9BGlGgkrA0uhF2EqlHhD1uJ/o6Kcs
         qeXXNkDlIYma9ZjnCJXlreADXccZpxo3ZOTyKiujapvDzHIKICbj5et+lezpE+VEaj+7
         cyTtpOCdtH4pvnd7j5OXGEQS6N7UV7zc4ndIB0hkN1393MP1AtGzJvo6P/KV41yjY+bE
         vPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eltYp0CK58vrsJiAbfE7P3u+tvsKtdxHCcZZGwCvFAk=;
        b=dZDKJaSPy9QXLrm/a9sMiou+4nkPQ1A8BAWJZ8lKd7OPn767lcCMyfb/DpQ+IW29fR
         iiwKfMnnSCIEMZfrsvWqOyKJhfI4Vjejg+V30MstZtiMeG6mSE9u0c8w6SOWGdZt4w+y
         CIwbF82JO4BThNfj0csQFXRpUqHZPL1L0uqkIbM1oYUUtQ+drzGpNy6LncUzGiLJHAE8
         Q377QAAX8vpJqkCgnz7Xt2XTdnhdbqyeNSTr+kADrHmCJ3eSlTsZ+1YXgK2MKXIKTxbu
         dohrWm1WyGtQ2pQKYp4sTJ6JdN5OAEVvSNnoN5Zq5CJC2SpiY14Urdsm5G6hJWhUB3ma
         BQYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KvmU5kOTSnQcIOdh3k5qaPWDWg6mk2/g5t6QtyRxTDtQKspku
	FCrDsPNxxn7Mnq+AuUZcBO0=
X-Google-Smtp-Source: ABdhPJy1rJmuMb74OoFHJc4PClZWpcQ1y912SuPxM7CM5ekCjV4BlpOfTCOeKUKfTMJ7MZCEYvikxw==
X-Received: by 2002:a05:6808:687:: with SMTP id k7mr13261788oig.140.1615642637296;
        Sat, 13 Mar 2021 05:37:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9868:: with SMTP id z37ls770039ooi.6.gmail; Sat, 13 Mar
 2021 05:37:16 -0800 (PST)
X-Received: by 2002:a4a:e643:: with SMTP id q3mr7230608oot.46.1615642636752;
        Sat, 13 Mar 2021 05:37:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615642636; cv=none;
        d=google.com; s=arc-20160816;
        b=FxvX7SEWu2f4TaP19licMsIk+A0tfOCY6AUufc3AO0fbVOZVmWg1Qs88YqmrfSrrCA
         Nl2QgbHpXOVhmOITUMQrM7Wm96e76XQV41Q74g4Wgl4Z7H9t2nYm5Nemr3/c2WAomlQa
         AqLgCc2BwQ1XXx87V7edpx3fK68JNwba/KPx12nw/hVwxQpaprKdEjgrruwnbmInGn8f
         V9ZNSL4Ih3WvPtokDKLmjlsQWsYk5gIJN6I6mPaDtM/cbj26VCT4ydlQ2qBOmA+x057m
         p7Cq0mYtLQVUK+BO9uEyF/qvG7xm8MfYDv5YgewvSiT6ZdC/9M00zO9v5HF94lI4iuMr
         uS0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=dPYcv5xvodlSlL5YYAQeH+QkI63k0GGtala4zVdopZ0=;
        b=vB3codf2mkuSKv/yUhgY9XBuw4IRlqR9GYhm+9cjrPEAPScCeKJs1I1phgDGCieQGY
         Z+a/uFAf0yQphUJUXhNMs8QadHukm78O/CsQJ3KnpXh5+8mwd4j7U7gj385E2fZjjp2V
         8BjsHO77gnUU3RtMSJJFqyIfy4IzbXgMyDcqX0k8VAI5bllPje2HRxxC8nnZK9VlveTp
         1FiBffAiR3G73nhOAQsf2qU2KtRh3LqtEYLsN7faYl24OtSjvDlt7WszB1sdJg/SpsCv
         9kDme8BYhByFPLj2t+nuUKQWgisT4ev/MnEDygCv70bwgsikloBlyqkCTh33Qrdcq/OB
         1aCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id x143si681238oif.2.2021.03.13.05.37.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Mar 2021 05:37:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: AZ4K8tpG7vjpsQ+OZki6hvYH62vrDqAEtxJPpdjN3ilmDMmq8Ds9afNdJRl1lDQvZvWrIJ46TE
 rNX8QhnJclhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="176068010"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="176068010"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2021 05:37:14 -0800
IronPort-SDR: PNAFIryszbqHb/uAyVZHJofePj/k0zyYOp3nJoJwUTgAvMv5UPWrV+qoZEy8mxQS07d+WmhZ9m
 WsgL3U1p3t4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="510603291"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2021 05:37:10 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lL4S5-00023m-Tq; Sat, 13 Mar 2021 13:37:09 +0000
Date: Sat, 13 Mar 2021 21:36:20 +0800
From: kernel test robot <lkp@intel.com>
To: Yu Zhao <yuzhao@google.com>, linux-mm@kvack.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alex Shi <alex.shi@linux.alibaba.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Hillf Danton <hdanton@sina.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Matthew Wilcox <willy@infradead.org>, Mel Gorman <mgorman@suse.de>
Subject: Re: [PATCH v1 13/14] mm: multigenerational lru: Kconfig
Message-ID: <202103132128.hIMOuqMu-lkp@intel.com>
References: <20210313075747.3781593-14-yuzhao@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20210313075747.3781593-14-yuzhao@google.com>
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Yu,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/x86/core]
[also build test ERROR on tip/x86/mm tip/sched/core linus/master v5.12-rc2]
[cannot apply to cgroup/for-next tip/perf/core hnaz-linux-mm/master next-20210312]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yu-Zhao/Multigenerational-LRU/20210313-160036
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git d0962f2b24c99889a386f0658c71535f56358f77
config: mips-randconfig-r036-20210313 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27ebbd0eb137c9a439b7c537bb87ba903efd3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/7a8b80d7f0d02852d49395fc6e035743816f6b1d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yu-Zhao/Multigenerational-LRU/20210313-160036
        git checkout 7a8b80d7f0d02852d49395fc6e035743816f6b1d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> mm/vmscan.c:4776:56: error: implicit declaration of function 'pmd_young' [-Werror,-Wimplicit-function-declaration]
           if (IS_ENABLED(CONFIG_HAVE_ARCH_PARENT_PMD_YOUNG) && !pmd_young(pmd))
                                                                 ^
   mm/vmscan.c:4776:56: note: did you mean 'pte_young'?
   arch/mips/include/asm/pgtable.h:365:19: note: 'pte_young' declared here
   static inline int pte_young(pte_t pte)  { return pte_val(pte) & _PAGE_ACCESSED; }
                     ^
>> mm/vmscan.c:4851:23: error: implicit declaration of function 'pmd_pfn' [-Werror,-Wimplicit-function-declaration]
                   unsigned long pfn = pmd_pfn(*pmd);
                                       ^
   mm/vmscan.c:4851:23: note: did you mean 'pmd_off'?
   include/linux/pgtable.h:131:22: note: 'pmd_off' declared here
   static inline pmd_t *pmd_off(struct mm_struct *mm, unsigned long va)
                        ^
   mm/vmscan.c:4853:30: error: implicit declaration of function 'pmd_young' [-Werror,-Wimplicit-function-declaration]
                   if (!pmd_present(*pmd) || !pmd_young(*pmd) || is_huge_zero_pmd(*pmd))
                                              ^
>> mm/vmscan.c:4882:7: error: implicit declaration of function 'pmd_dirty' [-Werror,-Wimplicit-function-declaration]
                   if (pmd_dirty(*pmd) && !PageDirty(page) &&
                       ^
   mm/vmscan.c:4882:7: note: did you mean 'pte_dirty'?
   arch/mips/include/asm/pgtable.h:364:19: note: 'pte_dirty' declared here
   static inline int pte_dirty(pte_t pte)  { return pte_val(pte) & _PAGE_MODIFIED; }
                     ^
   4 errors generated.


vim +/pmd_young +4776 mm/vmscan.c

4c59e20072808a Yu Zhao 2021-03-13  4759  
4c59e20072808a Yu Zhao 2021-03-13  4760  static int walk_pte_range(pmd_t *pmdp, unsigned long start, unsigned long end,
4c59e20072808a Yu Zhao 2021-03-13  4761  			  struct mm_walk *walk)
4c59e20072808a Yu Zhao 2021-03-13  4762  {
4c59e20072808a Yu Zhao 2021-03-13  4763  	pmd_t pmd;
4c59e20072808a Yu Zhao 2021-03-13  4764  	pte_t *pte;
4c59e20072808a Yu Zhao 2021-03-13  4765  	spinlock_t *ptl;
4c59e20072808a Yu Zhao 2021-03-13  4766  	struct mm_walk_args *args = walk->private;
4c59e20072808a Yu Zhao 2021-03-13  4767  	int old_gen, new_gen = lru_gen_from_seq(args->max_seq);
4c59e20072808a Yu Zhao 2021-03-13  4768  
4c59e20072808a Yu Zhao 2021-03-13  4769  	pmd = pmd_read_atomic(pmdp);
4c59e20072808a Yu Zhao 2021-03-13  4770  	barrier();
4c59e20072808a Yu Zhao 2021-03-13  4771  	if (!pmd_present(pmd) || pmd_trans_huge(pmd))
4c59e20072808a Yu Zhao 2021-03-13  4772  		return 0;
4c59e20072808a Yu Zhao 2021-03-13  4773  
4c59e20072808a Yu Zhao 2021-03-13  4774  	VM_BUG_ON(pmd_huge(pmd) || pmd_devmap(pmd) || is_hugepd(__hugepd(pmd_val(pmd))));
4c59e20072808a Yu Zhao 2021-03-13  4775  
4c59e20072808a Yu Zhao 2021-03-13 @4776  	if (IS_ENABLED(CONFIG_HAVE_ARCH_PARENT_PMD_YOUNG) && !pmd_young(pmd))
4c59e20072808a Yu Zhao 2021-03-13  4777  		return 0;
4c59e20072808a Yu Zhao 2021-03-13  4778  
4c59e20072808a Yu Zhao 2021-03-13  4779  	pte = pte_offset_map_lock(walk->mm, &pmd, start, &ptl);
4c59e20072808a Yu Zhao 2021-03-13  4780  	arch_enter_lazy_mmu_mode();
4c59e20072808a Yu Zhao 2021-03-13  4781  
4c59e20072808a Yu Zhao 2021-03-13  4782  	for (; start != end; pte++, start += PAGE_SIZE) {
4c59e20072808a Yu Zhao 2021-03-13  4783  		struct page *page;
4c59e20072808a Yu Zhao 2021-03-13  4784  		unsigned long pfn = pte_pfn(*pte);
4c59e20072808a Yu Zhao 2021-03-13  4785  
4c59e20072808a Yu Zhao 2021-03-13  4786  		if (!pte_present(*pte) || !pte_young(*pte) || is_zero_pfn(pfn))
4c59e20072808a Yu Zhao 2021-03-13  4787  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4788  
4c59e20072808a Yu Zhao 2021-03-13  4789  		/*
4c59e20072808a Yu Zhao 2021-03-13  4790  		 * If this pte maps a page from a different node, set the
4c59e20072808a Yu Zhao 2021-03-13  4791  		 * bitmap to prevent the accessed bit on its parent pmd from
4c59e20072808a Yu Zhao 2021-03-13  4792  		 * being cleared.
4c59e20072808a Yu Zhao 2021-03-13  4793  		 */
4c59e20072808a Yu Zhao 2021-03-13  4794  		if (pfn < args->start_pfn || pfn >= args->end_pfn) {
4c59e20072808a Yu Zhao 2021-03-13  4795  			args->addr_bitmap |= get_addr_mask(start);
4c59e20072808a Yu Zhao 2021-03-13  4796  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4797  		}
4c59e20072808a Yu Zhao 2021-03-13  4798  
4c59e20072808a Yu Zhao 2021-03-13  4799  		page = compound_head(pte_page(*pte));
4c59e20072808a Yu Zhao 2021-03-13  4800  		if (page_to_nid(page) != args->node_id) {
4c59e20072808a Yu Zhao 2021-03-13  4801  			args->addr_bitmap |= get_addr_mask(start);
4c59e20072808a Yu Zhao 2021-03-13  4802  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4803  		}
4c59e20072808a Yu Zhao 2021-03-13  4804  		if (page_memcg_rcu(page) != args->memcg)
4c59e20072808a Yu Zhao 2021-03-13  4805  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4806  
4c59e20072808a Yu Zhao 2021-03-13  4807  		if (ptep_test_and_clear_young(walk->vma, start, pte)) {
4c59e20072808a Yu Zhao 2021-03-13  4808  			old_gen = page_update_lru_gen(page, new_gen);
4c59e20072808a Yu Zhao 2021-03-13  4809  			if (old_gen >= 0 && old_gen != new_gen) {
4c59e20072808a Yu Zhao 2021-03-13  4810  				update_batch_size(page, old_gen, new_gen);
4c59e20072808a Yu Zhao 2021-03-13  4811  				args->batch_size++;
4c59e20072808a Yu Zhao 2021-03-13  4812  			}
4c59e20072808a Yu Zhao 2021-03-13  4813  		}
4c59e20072808a Yu Zhao 2021-03-13  4814  
4c59e20072808a Yu Zhao 2021-03-13  4815  		if (pte_dirty(*pte) && !PageDirty(page) &&
4c59e20072808a Yu Zhao 2021-03-13  4816  		    !(PageAnon(page) && PageSwapBacked(page) && !PageSwapCache(page)))
4c59e20072808a Yu Zhao 2021-03-13  4817  			set_page_dirty(page);
4c59e20072808a Yu Zhao 2021-03-13  4818  	}
4c59e20072808a Yu Zhao 2021-03-13  4819  
4c59e20072808a Yu Zhao 2021-03-13  4820  	arch_leave_lazy_mmu_mode();
4c59e20072808a Yu Zhao 2021-03-13  4821  	pte_unmap_unlock(pte, ptl);
4c59e20072808a Yu Zhao 2021-03-13  4822  
4c59e20072808a Yu Zhao 2021-03-13  4823  	return 0;
4c59e20072808a Yu Zhao 2021-03-13  4824  }
4c59e20072808a Yu Zhao 2021-03-13  4825  
4c59e20072808a Yu Zhao 2021-03-13  4826  static int walk_pmd_range(pud_t *pudp, unsigned long start, unsigned long end,
4c59e20072808a Yu Zhao 2021-03-13  4827  			  struct mm_walk *walk)
4c59e20072808a Yu Zhao 2021-03-13  4828  {
4c59e20072808a Yu Zhao 2021-03-13  4829  	pud_t pud;
4c59e20072808a Yu Zhao 2021-03-13  4830  	pmd_t *pmd;
4c59e20072808a Yu Zhao 2021-03-13  4831  	spinlock_t *ptl;
4c59e20072808a Yu Zhao 2021-03-13  4832  	struct mm_walk_args *args = walk->private;
4c59e20072808a Yu Zhao 2021-03-13  4833  	int old_gen, new_gen = lru_gen_from_seq(args->max_seq);
4c59e20072808a Yu Zhao 2021-03-13  4834  
4c59e20072808a Yu Zhao 2021-03-13  4835  	pud = READ_ONCE(*pudp);
4c59e20072808a Yu Zhao 2021-03-13  4836  	if (!pud_present(pud) || WARN_ON_ONCE(pud_trans_huge(pud)))
4c59e20072808a Yu Zhao 2021-03-13  4837  		return 0;
4c59e20072808a Yu Zhao 2021-03-13  4838  
4c59e20072808a Yu Zhao 2021-03-13  4839  	VM_BUG_ON(pud_huge(pud) || pud_devmap(pud) || is_hugepd(__hugepd(pud_val(pud))));
4c59e20072808a Yu Zhao 2021-03-13  4840  
4c59e20072808a Yu Zhao 2021-03-13  4841  	if (!IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&
4c59e20072808a Yu Zhao 2021-03-13  4842  	    !IS_ENABLED(CONFIG_HAVE_ARCH_PARENT_PMD_YOUNG))
4c59e20072808a Yu Zhao 2021-03-13  4843  		goto done;
4c59e20072808a Yu Zhao 2021-03-13  4844  
4c59e20072808a Yu Zhao 2021-03-13  4845  	pmd = pmd_offset(&pud, start);
4c59e20072808a Yu Zhao 2021-03-13  4846  	ptl = pmd_lock(walk->mm, pmd);
4c59e20072808a Yu Zhao 2021-03-13  4847  	arch_enter_lazy_mmu_mode();
4c59e20072808a Yu Zhao 2021-03-13  4848  
4c59e20072808a Yu Zhao 2021-03-13  4849  	for (; start != end; pmd++, start = pmd_addr_end(start, end)) {
4c59e20072808a Yu Zhao 2021-03-13  4850  		struct page *page;
4c59e20072808a Yu Zhao 2021-03-13 @4851  		unsigned long pfn = pmd_pfn(*pmd);
4c59e20072808a Yu Zhao 2021-03-13  4852  
4c59e20072808a Yu Zhao 2021-03-13  4853  		if (!pmd_present(*pmd) || !pmd_young(*pmd) || is_huge_zero_pmd(*pmd))
4c59e20072808a Yu Zhao 2021-03-13  4854  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4855  
4c59e20072808a Yu Zhao 2021-03-13  4856  		if (!pmd_trans_huge(*pmd)) {
4c59e20072808a Yu Zhao 2021-03-13  4857  			if (!(args->addr_bitmap & get_addr_mask(start)) &&
4c59e20072808a Yu Zhao 2021-03-13  4858  			    (!(pmd_addr_end(start, end) & ~PMD_MASK) ||
4c59e20072808a Yu Zhao 2021-03-13  4859  			     !walk->vma->vm_next ||
4c59e20072808a Yu Zhao 2021-03-13  4860  			     (walk->vma->vm_next->vm_start & PMD_MASK) > end))
4c59e20072808a Yu Zhao 2021-03-13  4861  				pmdp_test_and_clear_young(walk->vma, start, pmd);
4c59e20072808a Yu Zhao 2021-03-13  4862  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4863  		}
4c59e20072808a Yu Zhao 2021-03-13  4864  
4c59e20072808a Yu Zhao 2021-03-13  4865  		if (pfn < args->start_pfn || pfn >= args->end_pfn)
4c59e20072808a Yu Zhao 2021-03-13  4866  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4867  
4c59e20072808a Yu Zhao 2021-03-13  4868  		page = pmd_page(*pmd);
4c59e20072808a Yu Zhao 2021-03-13  4869  		if (page_to_nid(page) != args->node_id)
4c59e20072808a Yu Zhao 2021-03-13  4870  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4871  		if (page_memcg_rcu(page) != args->memcg)
4c59e20072808a Yu Zhao 2021-03-13  4872  			continue;
4c59e20072808a Yu Zhao 2021-03-13  4873  
4c59e20072808a Yu Zhao 2021-03-13  4874  		if (pmdp_test_and_clear_young(walk->vma, start, pmd)) {
4c59e20072808a Yu Zhao 2021-03-13  4875  			old_gen = page_update_lru_gen(page, new_gen);
4c59e20072808a Yu Zhao 2021-03-13  4876  			if (old_gen >= 0 && old_gen != new_gen) {
4c59e20072808a Yu Zhao 2021-03-13  4877  				update_batch_size(page, old_gen, new_gen);
4c59e20072808a Yu Zhao 2021-03-13  4878  				args->batch_size++;
4c59e20072808a Yu Zhao 2021-03-13  4879  			}
4c59e20072808a Yu Zhao 2021-03-13  4880  		}
4c59e20072808a Yu Zhao 2021-03-13  4881  
4c59e20072808a Yu Zhao 2021-03-13 @4882  		if (pmd_dirty(*pmd) && !PageDirty(page) &&
4c59e20072808a Yu Zhao 2021-03-13  4883  		    !(PageAnon(page) && PageSwapBacked(page) && !PageSwapCache(page)))
4c59e20072808a Yu Zhao 2021-03-13  4884  			set_page_dirty(page);
4c59e20072808a Yu Zhao 2021-03-13  4885  	}
4c59e20072808a Yu Zhao 2021-03-13  4886  
4c59e20072808a Yu Zhao 2021-03-13  4887  	arch_leave_lazy_mmu_mode();
4c59e20072808a Yu Zhao 2021-03-13  4888  	spin_unlock(ptl);
4c59e20072808a Yu Zhao 2021-03-13  4889  done:
4c59e20072808a Yu Zhao 2021-03-13  4890  	args->addr_bitmap = 0;
4c59e20072808a Yu Zhao 2021-03-13  4891  
4c59e20072808a Yu Zhao 2021-03-13  4892  	if (args->batch_size < MAX_BATCH_SIZE)
4c59e20072808a Yu Zhao 2021-03-13  4893  		return 0;
4c59e20072808a Yu Zhao 2021-03-13  4894  
4c59e20072808a Yu Zhao 2021-03-13  4895  	args->next_addr = end;
4c59e20072808a Yu Zhao 2021-03-13  4896  
4c59e20072808a Yu Zhao 2021-03-13  4897  	return -EAGAIN;
4c59e20072808a Yu Zhao 2021-03-13  4898  }
4c59e20072808a Yu Zhao 2021-03-13  4899  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103132128.hIMOuqMu-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yKAikgGwKORPUluS4isOwn98CM9o4O4BAA==

--Q68bSM7Ycu6FN28Q--
