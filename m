Return-Path: <clang-built-linux+bncBCHI74ELZABRBV5IYCBQMGQEZTQOESQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8C359834
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 10:46:16 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a8sf2576047pfc.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 01:46:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617957975; cv=pass;
        d=google.com; s=arc-20160816;
        b=RB2dufwHD5Z/MOrwV01LnvgnIVfOGV7Yc9bN4/kVkl+wcGfCiPML3fm9OVz11N+NBK
         Dv/ZiX9mWHJfC7BMTSaSAAnx5yiVD1mvNFFp15vqrQ9C9HubMTwKvWdjpHCL8otwCOlX
         CGjz/Ozc53MzYTfMovWLQvQJ49GyTX7QXFrEGJ3S0utasz879I9Qb8Q1TbM/xf8ygYO1
         VHtufxWy+2ZGIkpkO68FOcbzwqIpZFeYyAsIYGmCRGHzqMBvgj4HUghZ676BtUIPVabJ
         CXnOu4c9+m7sdXjQMYZw5mHGcvQvbhXpw5TRmNZuMOosbZrQu1QR0abwkSofy+JQIjsO
         HxOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xxNH+O7dmZ390kIDEuL8u63G51o4+t/csI2Exmd4288=;
        b=NfNgnOcXllt9Gpm8duwsFwNucK3Dx9mHvVxvKNzYcZQ6hb/2GpCcSuZSegAmWlmOsU
         CF6K2/arqzefqVwDdRCnyXj98eSEYKQWP1YgDtHi2a4V1KJ3N8kYDseJTcwox0CidWhe
         Wu6xpurnod+E0WGphK8L8fzrzeVGOx/g5Do6/TVl6jMeMbM9GnB0EpEp/FiS2LwP7stA
         +x/f9e74VrIH+F19dMiJgM/3ckoPgWyRLTiR1C+Pb5wXadt/F0NNQJYjh3ivfh0B2EWz
         l1gA+X4RCe5JN1d/8LaCbWRSNeqY1sGqFCF7QMzedms9QcrmqiAkDAAEE6xw5PBXWlmN
         gFSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xxNH+O7dmZ390kIDEuL8u63G51o4+t/csI2Exmd4288=;
        b=PNodOTnJyukqv++GNswh9NrTHjKXqI6WVtZ7+1KF1+uNoLacnUi25BMEcLHEwSeWAj
         i5bXfIL5j85oUFLiGf6ahZ7INJIVKDSsL+aynbTvysvhn1667/+Z1HxDynaB6591FUe+
         nJq1RcnIOk29l+/LYvs9aJ1SpgdaC5f2F4BoYXXWvvBWa6JQ1Hx0EhTh/3DjlGDFmXoL
         Sf7QzQtBAc7sgFFNmbIR7EjqR5q7M29gLkrbxPgdNqlLv03e0W0ueSrCZkAv5ijTT1dJ
         HW4Fsj3PirebZqCS3oLmtjPe957Th7lY14SSWLi5xiiJyiMbz10cTlAWUTrChjqE9BtD
         GGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xxNH+O7dmZ390kIDEuL8u63G51o4+t/csI2Exmd4288=;
        b=agC/CitSYw/CBTDg3b7QfIQaBfvCOpOTBznJH5R3sbIEO4bg8Wj6qt19BQeUAiyEp+
         a7Wc0OkQwImkSUhs8abjkgj0wIMKWWxFvtXbvgTx1+Iq+93EXezA5PUem7gjQpoXxVBK
         mzrgKUTdwV3cVGhuXWZvw1al0CkC5Tq3hQaZpebSD4Zqhr6euWcXegZz3mwkNtDvb8f3
         9eov6bMY9saXMdLonWm1+yh6apk8fKmPv1caPmoR3xUDcp9N0jv9XxCiKPj7bGxHjg/2
         kLY0OooN/taO9F65itW6tBZCqlZbgkVrvmnx6gW59iC7fw2XSkFJLYbPU0iXwRWyYmbq
         JXiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CZAj7ZMQDKAPPVIaNz4u5esXSCw0xyZP8/EaXC8dUZ5gubsgv
	QoWIvJKRwdXExZ+NeTOXHig=
X-Google-Smtp-Source: ABdhPJwOxabuU2indhvbANfN5hfeUBB4YG5wvNW7ZVXVS4ACPa/djER1/FiK9EOCGP1Zsyc0H3KU6g==
X-Received: by 2002:a17:902:9008:b029:e6:f37a:2183 with SMTP id a8-20020a1709029008b02900e6f37a2183mr12021635plp.49.1617957975174;
        Fri, 09 Apr 2021 01:46:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:174c:: with SMTP id 73ls524294pfx.1.gmail; Fri, 09 Apr
 2021 01:46:14 -0700 (PDT)
X-Received: by 2002:a63:ff52:: with SMTP id s18mr12192668pgk.163.1617957974573;
        Fri, 09 Apr 2021 01:46:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617957974; cv=none;
        d=google.com; s=arc-20160816;
        b=i2t+OVvPlNNCD0Jv5cy5LItFP9ewG8oX2ejWzjA/LP1LND9e6Tvy6+6ZpiI33sDxIa
         a35g0TrGVahTb5HCuFXQ3Rb4R4uO268MWkVSDPZtm+lHMir5S+n1+YZtMnyJ0kZmcUSU
         bEHNx7eCRRMDLnT95uk8zCPDK3/Ka2kqMgxN1RztHOcndEGl7d1IAXmD/Fb9SfmNhVyL
         uJLiL5fMI00YODTyUQJ67qS1obAKQurPFqPTg2Zd0GXQo9Iwn+nyv58kBHv0pjaIEZpj
         fqcpji5KldMxgdzAqCVyLMvzmfSmEhFYYd6JkYjXygwn/jpZwDj7kE+7DcX2tH15XxAq
         Ehyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=o91IANDSIfEcJrtfBt/rkNnPqIKc30zlCvXITQ3ELhQ=;
        b=i2RA/JhY9dxVsvZHcw7S+9dPTZKSuSAAIQ65iH7NSoAu7D4Dnu9octQ+1zk20W9kt4
         Izy3o0+uKtilO23fUz8Rvvq9usZ7Q01RYHMJQMZ5WfQYS+IZsu2IvbztuMLEHtrAj5bo
         BAGNGw9n51xmDw8PH1IzbJlUJ7oUOEKFsCzOmzHiL7xLR8gj9+MSl0l4Y7FaC5/uvApE
         IeML7VROsXpAihgqNHfKxxc2vYDUUg2+ibknWq//9xqt3T61g6RJwovguv+G1pEXFXHK
         /jZfh+hFT38U73dzxRsdFLsB5GtPpwnIZGGbl+mP7+Y8y4qPE27TkMjmE3MZRBamkHJF
         gP6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id r141si151463pgr.5.2021.04.09.01.46.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 01:46:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FGs9l3mhTz7v40;
	Fri,  9 Apr 2021 16:43:55 +0800 (CST)
Received: from [10.174.179.9] (10.174.179.9) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.498.0; Fri, 9 Apr 2021
 16:46:06 +0800
Subject: Re: [PATCH 2/5] swap: fix do_swap_page() race with swapoff
To: kernel test robot <lkp@intel.com>, <akpm@linux-foundation.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<hannes@cmpxchg.org>, <mhocko@suse.com>, <iamjoonsoo.kim@lge.com>,
	<vbabka@suse.cz>, <alex.shi@linux.alibaba.com>, <willy@infradead.org>,
	<minchan@kernel.org>, <richard.weiyang@gmail.com>, <ying.huang@intel.com>
References: <20210408130820.48233-3-linmiaohe@huawei.com>
 <202104090509.oCjbls7L-lkp@intel.com>
From: Miaohe Lin <linmiaohe@huawei.com>
Message-ID: <46cd2086-cb4a-cda1-171b-5c10b30f92f5@huawei.com>
Date: Fri, 9 Apr 2021 16:46:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <202104090509.oCjbls7L-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.179.9]
X-CFilter-Loop: Reflected
X-Original-Sender: linmiaohe@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linmiaohe@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=linmiaohe@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

On 2021/4/9 5:37, kernel test robot wrote:
> Hi Miaohe,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linux/master]
> [also build test ERROR on linus/master hnaz-linux-mm/master v5.12-rc6 next-20210408]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Miaohe-Lin/close-various-race-windows-for-swap/20210408-211224
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 5e46d1b78a03d52306f21f77a4e4a144b6d31486
> config: x86_64-randconfig-a012-20210408 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/56e65e21c8c9858e36c3bca84006a15fe9b85efd
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Miaohe-Lin/close-various-race-windows-for-swap/20210408-211224
>         git checkout 56e65e21c8c9858e36c3bca84006a15fe9b85efd
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>>> mm/memory.c:3300:7: error: implicit declaration of function 'get_swap_device' [-Werror,-Wimplicit-function-declaration]
>            si = get_swap_device(entry);
>                 ^
>    mm/memory.c:3300:7: note: did you mean 'get_cpu_device'?
>    include/linux/cpu.h:38:23: note: 'get_cpu_device' declared here
>    extern struct device *get_cpu_device(unsigned cpu);
>                          ^
>>> mm/memory.c:3300:5: warning: incompatible integer to pointer conversion assigning to 'struct swap_info_struct *' from 'int' [-Wint-conversion]
>            si = get_swap_device(entry);
>               ^ ~~~~~~~~~~~~~~~~~~~~~~
>>> mm/memory.c:3483:3: error: implicit declaration of function 'put_swap_device' [-Werror,-Wimplicit-function-declaration]
>                    put_swap_device(si);
>                    ^
>    mm/memory.c:3483:3: note: did you mean 'get_swap_device'?
>    mm/memory.c:3300:7: note: 'get_swap_device' declared here
>            si = get_swap_device(entry);
>                 ^
>    1 warning and 2 errors generated.
> 

Many thanks. Will fix it.

> 
> vim +/get_swap_device +3300 mm/memory.c
> 
>   3258	
>   3259	/*
>   3260	 * We enter with non-exclusive mmap_lock (to exclude vma changes,
>   3261	 * but allow concurrent faults), and pte mapped but not yet locked.
>   3262	 * We return with pte unmapped and unlocked.
>   3263	 *
>   3264	 * We return with the mmap_lock locked or unlocked in the same cases
>   3265	 * as does filemap_fault().
>   3266	 */
>   3267	vm_fault_t do_swap_page(struct vm_fault *vmf)
>   3268	{
>   3269		struct vm_area_struct *vma = vmf->vma;
>   3270		struct page *page = NULL, *swapcache;
>   3271		struct swap_info_struct *si = NULL;
>   3272		swp_entry_t entry;
>   3273		pte_t pte;
>   3274		int locked;
>   3275		int exclusive = 0;
>   3276		vm_fault_t ret = 0;
>   3277		void *shadow = NULL;
>   3278	
>   3279		if (!pte_unmap_same(vma->vm_mm, vmf->pmd, vmf->pte, vmf->orig_pte))
>   3280			goto out;
>   3281	
>   3282		entry = pte_to_swp_entry(vmf->orig_pte);
>   3283		if (unlikely(non_swap_entry(entry))) {
>   3284			if (is_migration_entry(entry)) {
>   3285				migration_entry_wait(vma->vm_mm, vmf->pmd,
>   3286						     vmf->address);
>   3287			} else if (is_device_private_entry(entry)) {
>   3288				vmf->page = device_private_entry_to_page(entry);
>   3289				ret = vmf->page->pgmap->ops->migrate_to_ram(vmf);
>   3290			} else if (is_hwpoison_entry(entry)) {
>   3291				ret = VM_FAULT_HWPOISON;
>   3292			} else {
>   3293				print_bad_pte(vma, vmf->address, vmf->orig_pte, NULL);
>   3294				ret = VM_FAULT_SIGBUS;
>   3295			}
>   3296			goto out;
>   3297		}
>   3298	
>   3299	
>> 3300		si = get_swap_device(entry);
>   3301		/* In case we raced with swapoff. */
>   3302		if (unlikely(!si))
>   3303			goto out;
>   3304	
>   3305		delayacct_set_flag(DELAYACCT_PF_SWAPIN);
>   3306		page = lookup_swap_cache(entry, vma, vmf->address);
>   3307		swapcache = page;
>   3308	
>   3309		if (!page) {
>   3310			struct swap_info_struct *si = swp_swap_info(entry);
>   3311	
>   3312			if (data_race(si->flags & SWP_SYNCHRONOUS_IO) &&
>   3313			    __swap_count(entry) == 1) {
>   3314				/* skip swapcache */
>   3315				page = alloc_page_vma(GFP_HIGHUSER_MOVABLE, vma,
>   3316								vmf->address);
>   3317				if (page) {
>   3318					int err;
>   3319	
>   3320					__SetPageLocked(page);
>   3321					__SetPageSwapBacked(page);
>   3322					set_page_private(page, entry.val);
>   3323	
>   3324					/* Tell memcg to use swap ownership records */
>   3325					SetPageSwapCache(page);
>   3326					err = mem_cgroup_charge(page, vma->vm_mm,
>   3327								GFP_KERNEL);
>   3328					ClearPageSwapCache(page);
>   3329					if (err) {
>   3330						ret = VM_FAULT_OOM;
>   3331						goto out_page;
>   3332					}
>   3333	
>   3334					shadow = get_shadow_from_swap_cache(entry);
>   3335					if (shadow)
>   3336						workingset_refault(page, shadow);
>   3337	
>   3338					lru_cache_add(page);
>   3339					swap_readpage(page, true);
>   3340				}
>   3341			} else {
>   3342				page = swapin_readahead(entry, GFP_HIGHUSER_MOVABLE,
>   3343							vmf);
>   3344				swapcache = page;
>   3345			}
>   3346	
>   3347			if (!page) {
>   3348				/*
>   3349				 * Back out if somebody else faulted in this pte
>   3350				 * while we released the pte lock.
>   3351				 */
>   3352				vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd,
>   3353						vmf->address, &vmf->ptl);
>   3354				if (likely(pte_same(*vmf->pte, vmf->orig_pte)))
>   3355					ret = VM_FAULT_OOM;
>   3356				delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
>   3357				goto unlock;
>   3358			}
>   3359	
>   3360			/* Had to read the page from swap area: Major fault */
>   3361			ret = VM_FAULT_MAJOR;
>   3362			count_vm_event(PGMAJFAULT);
>   3363			count_memcg_event_mm(vma->vm_mm, PGMAJFAULT);
>   3364		} else if (PageHWPoison(page)) {
>   3365			/*
>   3366			 * hwpoisoned dirty swapcache pages are kept for killing
>   3367			 * owner processes (which may be unknown at hwpoison time)
>   3368			 */
>   3369			ret = VM_FAULT_HWPOISON;
>   3370			delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
>   3371			goto out_release;
>   3372		}
>   3373	
>   3374		locked = lock_page_or_retry(page, vma->vm_mm, vmf->flags);
>   3375	
>   3376		delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
>   3377		if (!locked) {
>   3378			ret |= VM_FAULT_RETRY;
>   3379			goto out_release;
>   3380		}
>   3381	
>   3382		/*
>   3383		 * Make sure try_to_free_swap or reuse_swap_page or swapoff did not
>   3384		 * release the swapcache from under us.  The page pin, and pte_same
>   3385		 * test below, are not enough to exclude that.  Even if it is still
>   3386		 * swapcache, we need to check that the page's swap has not changed.
>   3387		 */
>   3388		if (unlikely((!PageSwapCache(page) ||
>   3389				page_private(page) != entry.val)) && swapcache)
>   3390			goto out_page;
>   3391	
>   3392		page = ksm_might_need_to_copy(page, vma, vmf->address);
>   3393		if (unlikely(!page)) {
>   3394			ret = VM_FAULT_OOM;
>   3395			page = swapcache;
>   3396			goto out_page;
>   3397		}
>   3398	
>   3399		cgroup_throttle_swaprate(page, GFP_KERNEL);
>   3400	
>   3401		/*
>   3402		 * Back out if somebody else already faulted in this pte.
>   3403		 */
>   3404		vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd, vmf->address,
>   3405				&vmf->ptl);
>   3406		if (unlikely(!pte_same(*vmf->pte, vmf->orig_pte)))
>   3407			goto out_nomap;
>   3408	
>   3409		if (unlikely(!PageUptodate(page))) {
>   3410			ret = VM_FAULT_SIGBUS;
>   3411			goto out_nomap;
>   3412		}
>   3413	
>   3414		/*
>   3415		 * The page isn't present yet, go ahead with the fault.
>   3416		 *
>   3417		 * Be careful about the sequence of operations here.
>   3418		 * To get its accounting right, reuse_swap_page() must be called
>   3419		 * while the page is counted on swap but not yet in mapcount i.e.
>   3420		 * before page_add_anon_rmap() and swap_free(); try_to_free_swap()
>   3421		 * must be called after the swap_free(), or it will never succeed.
>   3422		 */
>   3423	
>   3424		inc_mm_counter_fast(vma->vm_mm, MM_ANONPAGES);
>   3425		dec_mm_counter_fast(vma->vm_mm, MM_SWAPENTS);
>   3426		pte = mk_pte(page, vma->vm_page_prot);
>   3427		if ((vmf->flags & FAULT_FLAG_WRITE) && reuse_swap_page(page, NULL)) {
>   3428			pte = maybe_mkwrite(pte_mkdirty(pte), vma);
>   3429			vmf->flags &= ~FAULT_FLAG_WRITE;
>   3430			ret |= VM_FAULT_WRITE;
>   3431			exclusive = RMAP_EXCLUSIVE;
>   3432		}
>   3433		flush_icache_page(vma, page);
>   3434		if (pte_swp_soft_dirty(vmf->orig_pte))
>   3435			pte = pte_mksoft_dirty(pte);
>   3436		if (pte_swp_uffd_wp(vmf->orig_pte)) {
>   3437			pte = pte_mkuffd_wp(pte);
>   3438			pte = pte_wrprotect(pte);
>   3439		}
>   3440		set_pte_at(vma->vm_mm, vmf->address, vmf->pte, pte);
>   3441		arch_do_swap_page(vma->vm_mm, vma, vmf->address, pte, vmf->orig_pte);
>   3442		vmf->orig_pte = pte;
>   3443	
>   3444		/* ksm created a completely new copy */
>   3445		if (unlikely(page != swapcache && swapcache)) {
>   3446			page_add_new_anon_rmap(page, vma, vmf->address, false);
>   3447			lru_cache_add_inactive_or_unevictable(page, vma);
>   3448		} else {
>   3449			do_page_add_anon_rmap(page, vma, vmf->address, exclusive);
>   3450		}
>   3451	
>   3452		swap_free(entry);
>   3453		if (mem_cgroup_swap_full(page) ||
>   3454		    (vma->vm_flags & VM_LOCKED) || PageMlocked(page))
>   3455			try_to_free_swap(page);
>   3456		unlock_page(page);
>   3457		if (page != swapcache && swapcache) {
>   3458			/*
>   3459			 * Hold the lock to avoid the swap entry to be reused
>   3460			 * until we take the PT lock for the pte_same() check
>   3461			 * (to avoid false positives from pte_same). For
>   3462			 * further safety release the lock after the swap_free
>   3463			 * so that the swap count won't change under a
>   3464			 * parallel locked swapcache.
>   3465			 */
>   3466			unlock_page(swapcache);
>   3467			put_page(swapcache);
>   3468		}
>   3469	
>   3470		if (vmf->flags & FAULT_FLAG_WRITE) {
>   3471			ret |= do_wp_page(vmf);
>   3472			if (ret & VM_FAULT_ERROR)
>   3473				ret &= VM_FAULT_ERROR;
>   3474			goto out;
>   3475		}
>   3476	
>   3477		/* No need to invalidate - it was non-present before */
>   3478		update_mmu_cache(vma, vmf->address, vmf->pte);
>   3479	unlock:
>   3480		pte_unmap_unlock(vmf->pte, vmf->ptl);
>   3481	out:
>   3482		if (si)
>> 3483			put_swap_device(si);
>   3484		return ret;
>   3485	out_nomap:
>   3486		pte_unmap_unlock(vmf->pte, vmf->ptl);
>   3487	out_page:
>   3488		unlock_page(page);
>   3489	out_release:
>   3490		put_page(page);
>   3491		if (page != swapcache && swapcache) {
>   3492			unlock_page(swapcache);
>   3493			put_page(swapcache);
>   3494		}
>   3495		if (si)
>   3496			put_swap_device(si);
>   3497		return ret;
>   3498	}
>   3499	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46cd2086-cb4a-cda1-171b-5c10b30f92f5%40huawei.com.
