Return-Path: <clang-built-linux+bncBCHI74ELZABRBP476OAQMGQEFYBXTYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF327327D2B
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 12:28:00 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id k26sf10365544otn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 03:28:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614598079; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOlo+F6HIpF+a/OrqL0i7stVT6PxoXERXmgcZ/Q/u5b8u6M5DU3VI2Z3m6lD4WFZLI
         jwn8J1Sqx45IEEa1wnexJhZm/jBqf0rj/6zCtPzxuaQ+6c5ueb/guD8RpqLa5gbVu8lC
         I2UfF6sgKH7RfcjpK894PiP3Y6NfuT604kESajxDotzJR9NADOAcJsfcVDTB27wJgmdr
         NOpRA+DGJTMf+p36tG0Khl6xZnc8M6rKY4lh3WEjONigmk+F3buF83qTuR6L1X4+KzoY
         bRdHK9hr4HPPdUeo3jQt0SOVQCmPOTp44RRsAhyCVi2u7Ii8g1N1+1kAjonapb3rodF6
         mOMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DM0T9QnKunpyozhrZnuWgpQJlLgq0x9f0zo5NVbXuBU=;
        b=EhUXvHedlYaP65vtkMPmjr2WaMQdOJ7alaawRRPZs9y8wprp9x3/7dlEEfwJlfvey4
         LTpuYQwLEourJtGjyDbBIVHlYHa/6C8ZNGRYnPhlIizuD+sAekQsG8nbo2x9zK7jws5u
         BaHdrX6hcDvlFtuCftpzTsFwRWmYx5XWmQRmAXKHSxG3NcjMFK4NqCMVB4BdU9rj/reX
         2V2kk98tCMAUlS20s7vD8cmvNpSHpPpHcttQGyTn+h/90xL0brTixAfosgOAIaQ+VSB4
         LEQE1foBSLI0CTRKkrmNEh5w8dA/Dm3+h2L5TKRk7PMX0EYB27/oaGBP2Fsa0yNIFQYD
         903w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DM0T9QnKunpyozhrZnuWgpQJlLgq0x9f0zo5NVbXuBU=;
        b=I9VMJt/WCUVmo4CrxlFLDRnK+jSSOvy82aNjMpFugxl1jle5CMXrOlM3PKA+uUIfNd
         T9G/XVxhjuZNLB028Qa89/8l+JBRaG54n/YdpCET05Ulb7NoOGzlEkdvkz5UbkwDQRB4
         E4hH3RmKhIdsaGKPGHNs0sExnRcyvJgzMFqpjkCXdqPJOGfWnPelntpGH/aYWgrVbWYk
         OkurhljuTi6bdabuBBRlPtdSh2Jnx+c8SDbVMrjF3vLePU9SkOenaA44ujXEs2cVa9mi
         XiSoB68UcUypHvofdW4t+06zmdNITAryDsL/LRng5iMI9vPgX1o/GO2MRBcHzGqqsoKv
         J+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DM0T9QnKunpyozhrZnuWgpQJlLgq0x9f0zo5NVbXuBU=;
        b=TN19qVagS4SKtOQyIdQk/S+vlGcbqJuRHc564Ek04rOObj3I3AIpTmYT0O8I6Ppe1V
         ouibN5Pdwlw7H7p+MxLXgL/zyU6Kdae1S4pStYA8KTn20qv5Cp6CFZh5PWQE5pdpQoyc
         Wv1onCtKbjtu6UzGCHLZq+z2c6aRoUKYOIphVgdWABUmMV7+mWQQGssfr6OYOXGPkPBw
         Oh2h4rXyktS7N0/3Vo/K0iiFz9Enlb1zrSoaEo7j6nfdcxf85g6TqAeBFD3xjTzTG4Ta
         g8NM5Vlwewc0ycKC9cSD4E224GOEUWEZpTOpKObBEDW9t6VMrzILPucnwZQG5bWUsz0y
         F3KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w8ASheFvFdElWsht8ef59CLzEcSXJr86aRhb37+Pm35PneguE
	uz8o0D0bUlERN1/g3b647wg=
X-Google-Smtp-Source: ABdhPJypDdM6xI76XhfYXmYsUfPXnfm7CYT5T0Q5HOcCrw76gkoF6t9AUvVDZbz+Q+Xx/1mNUAf3Tw==
X-Received: by 2002:a9d:6019:: with SMTP id h25mr13144385otj.203.1614598079744;
        Mon, 01 Mar 2021 03:27:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:478e:: with SMTP id u136ls4160465oia.5.gmail; Mon, 01
 Mar 2021 03:27:59 -0800 (PST)
X-Received: by 2002:aca:b6c1:: with SMTP id g184mr11185369oif.47.1614598079357;
        Mon, 01 Mar 2021 03:27:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614598079; cv=none;
        d=google.com; s=arc-20160816;
        b=iw0jSIS2oKZKjT1wbLxBi587QEyl9lwGTNh4G/uP+D/tEC3CBuGohcFCg/R02nLMRe
         PLecEOmbzAmKLRonEczBEuZ74Mt4lnwr8TzPPj/l3q142tdxCdJeRvPcWFN0EeoKiecN
         ORq30eUmaBcpIadWJYJCpv+X034aIm+iChBO5XCdWIJCJr+cLRcj8x3Weu6vS19WVpMd
         J5DrKywzZpPVMlrikUkhHqiDSXOa1Y4IgqTs8bXGPabEk214qNGk6EEUilrrQUvKvpv9
         pwEJBDNt9QJPobPGBP0suDwHznhnHYQHm9F1Nyn0/LlucgvPKGwVgQSsTzwWw6BbGx8m
         jcGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=T0IWBCYHnRsnJnmFD4cF2PLwq3THc5oSxSMPL4d/Cs0=;
        b=OcLQcvl1iYmIHjY5JQI1EDc+n8+44TocPJMuBNyq/G3zBdiPndU6P6SyXLHrMgUWki
         imBkT6MLZlcEO/0i7T0i7tLvUWEbLrCuH+8WZkihYhCfw+MXvbb8BMcz4xgGopXtqX01
         d99RWL0ZXV9NQzWblZ5L+uYtKAs6JaATdVeWsoYi9+UweEnvX0Fg9rUd1VB8Qa7n2hyM
         BQRSxZEQgnwbeHrLMWxrcI4eX5k1PYXgu6pgXqFaKI9qp7XRlSvhyEXNp0mpfAeQLi34
         HTKa4vArGzJ7ySS/VonvkeIp38QiVJv2ce+Hfp0GGKLkOhqQ3RE6Emqf9yovD/E/o9ko
         NxLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id l18si1228372otk.3.2021.03.01.03.27.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 03:27:59 -0800 (PST)
Received-SPF: pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DpycP1WMyz16F3T;
	Mon,  1 Mar 2021 19:25:41 +0800 (CST)
Received: from [10.174.179.20] (10.174.179.20) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Mon, 1 Mar 2021 19:27:19 +0800
Subject: Re: [PATCH] hugetlb_cgroup: fix imbalanced css_get and css_put pair
 for shared mappings
To: kernel test robot <lkp@intel.com>, <akpm@linux-foundation.org>,
	<mike.kravetz@oracle.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<almasrymina@google.com>, <rientjes@google.com>, <linux-mm@kvack.org>,
	<linux-kernel@vger.kernel.org>
References: <20210210091606.21051-1-linmiaohe@huawei.com>
 <202102102343.ZEKIAzJ1-lkp@intel.com>
From: Miaohe Lin <linmiaohe@huawei.com>
Message-ID: <38553e50-3271-fa50-a440-b2b0b4c44aef@huawei.com>
Date: Mon, 1 Mar 2021 19:27:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <202102102343.ZEKIAzJ1-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.179.20]
X-CFilter-Loop: Reflected
X-Original-Sender: linmiaohe@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linmiaohe@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=linmiaohe@huawei.com
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

On 2021/2/10 23:32, kernel test robot wrote:
> Hi Miaohe,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on next-20210125]
> [also build test ERROR on v5.11-rc7]
> [cannot apply to linux/master linus/master hnaz-linux-mm/master v5.11-rc7 v5.11-rc6 v5.11-rc5]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Miaohe-Lin/hugetlb_cgroup-fix-imbalanced-css_get-and-css_put-pair-for-shared-mappings/20210210-171736
> base:    59fa6a163ffabc1bf25c5e0e33899e268a96d3cc
> config: arm64-randconfig-r025-20210209 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/68f4ed1b80aa7c51a921c3ad913ee7e6e00618d0
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Miaohe-Lin/hugetlb_cgroup-fix-imbalanced-css_get-and-css_put-pair-for-shared-mappings/20210210-171736
>         git checkout 68f4ed1b80aa7c51a921c3ad913ee7e6e00618d0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> mm/hugetlb.c:5222:17: error: incomplete definition of type 'struct hugetlb_cgroup'
>                            css_put(&h_cg->css);
>                                     ~~~~^
>    include/linux/hugetlb_cgroup.h:20:8: note: forward declaration of 'struct hugetlb_cgroup'
>    struct hugetlb_cgroup;
>           ^
>    1 error generated.
> 

Sorry for late respond. Will fix this. Thanks!

> 
> vim +5222 mm/hugetlb.c
> 
>   5091	
>   5092	/* Return true if reservation was successful, false otherwise.  */
>   5093	bool hugetlb_reserve_pages(struct inode *inode,
>   5094						long from, long to,
>   5095						struct vm_area_struct *vma,
>   5096						vm_flags_t vm_flags)
>   5097	{
>   5098		long chg, add = -1;
>   5099		struct hstate *h = hstate_inode(inode);
>   5100		struct hugepage_subpool *spool = subpool_inode(inode);
>   5101		struct resv_map *resv_map;
>   5102		struct hugetlb_cgroup *h_cg = NULL;
>   5103		long gbl_reserve, regions_needed = 0;
>   5104	
>   5105		/* This should never happen */
>   5106		if (from > to) {
>   5107			VM_WARN(1, "%s called with a negative range\n", __func__);
>   5108			return false;
>   5109		}
>   5110	
>   5111		/*
>   5112		 * Only apply hugepage reservation if asked. At fault time, an
>   5113		 * attempt will be made for VM_NORESERVE to allocate a page
>   5114		 * without using reserves
>   5115		 */
>   5116		if (vm_flags & VM_NORESERVE)
>   5117			return true;
>   5118	
>   5119		/*
>   5120		 * Shared mappings base their reservation on the number of pages that
>   5121		 * are already allocated on behalf of the file. Private mappings need
>   5122		 * to reserve the full area even if read-only as mprotect() may be
>   5123		 * called to make the mapping read-write. Assume !vma is a shm mapping
>   5124		 */
>   5125		if (!vma || vma->vm_flags & VM_MAYSHARE) {
>   5126			/*
>   5127			 * resv_map can not be NULL as hugetlb_reserve_pages is only
>   5128			 * called for inodes for which resv_maps were created (see
>   5129			 * hugetlbfs_get_inode).
>   5130			 */
>   5131			resv_map = inode_resv_map(inode);
>   5132	
>   5133			chg = region_chg(resv_map, from, to, &regions_needed);
>   5134	
>   5135		} else {
>   5136			/* Private mapping. */
>   5137			resv_map = resv_map_alloc();
>   5138			if (!resv_map)
>   5139				return false;
>   5140	
>   5141			chg = to - from;
>   5142	
>   5143			set_vma_resv_map(vma, resv_map);
>   5144			set_vma_resv_flags(vma, HPAGE_RESV_OWNER);
>   5145		}
>   5146	
>   5147		if (chg < 0)
>   5148			goto out_err;
>   5149	
>   5150		if (hugetlb_cgroup_charge_cgroup_rsvd(hstate_index(h),
>   5151					chg * pages_per_huge_page(h), &h_cg) < 0)
>   5152			goto out_err;
>   5153	
>   5154		if (vma && !(vma->vm_flags & VM_MAYSHARE) && h_cg) {
>   5155			/* For private mappings, the hugetlb_cgroup uncharge info hangs
>   5156			 * of the resv_map.
>   5157			 */
>   5158			resv_map_set_hugetlb_cgroup_uncharge_info(resv_map, h_cg, h);
>   5159		}
>   5160	
>   5161		/*
>   5162		 * There must be enough pages in the subpool for the mapping. If
>   5163		 * the subpool has a minimum size, there may be some global
>   5164		 * reservations already in place (gbl_reserve).
>   5165		 */
>   5166		gbl_reserve = hugepage_subpool_get_pages(spool, chg);
>   5167		if (gbl_reserve < 0)
>   5168			goto out_uncharge_cgroup;
>   5169	
>   5170		/*
>   5171		 * Check enough hugepages are available for the reservation.
>   5172		 * Hand the pages back to the subpool if there are not
>   5173		 */
>   5174		if (hugetlb_acct_memory(h, gbl_reserve) < 0)
>   5175			goto out_put_pages;
>   5176	
>   5177		/*
>   5178		 * Account for the reservations made. Shared mappings record regions
>   5179		 * that have reservations as they are shared by multiple VMAs.
>   5180		 * When the last VMA disappears, the region map says how much
>   5181		 * the reservation was and the page cache tells how much of
>   5182		 * the reservation was consumed. Private mappings are per-VMA and
>   5183		 * only the consumed reservations are tracked. When the VMA
>   5184		 * disappears, the original reservation is the VMA size and the
>   5185		 * consumed reservations are stored in the map. Hence, nothing
>   5186		 * else has to be done for private mappings here
>   5187		 */
>   5188		if (!vma || vma->vm_flags & VM_MAYSHARE) {
>   5189			add = region_add(resv_map, from, to, regions_needed, h, h_cg);
>   5190	
>   5191			if (unlikely(add < 0)) {
>   5192				hugetlb_acct_memory(h, -gbl_reserve);
>   5193				goto out_put_pages;
>   5194			} else if (unlikely(chg > add)) {
>   5195				/*
>   5196				 * pages in this range were added to the reserve
>   5197				 * map between region_chg and region_add.  This
>   5198				 * indicates a race with alloc_huge_page.  Adjust
>   5199				 * the subpool and reserve counts modified above
>   5200				 * based on the difference.
>   5201				 */
>   5202				long rsv_adjust;
>   5203	
>   5204				/*
>   5205				 * hugetlb_cgroup_uncharge_cgroup_rsvd() will put the
>   5206				 * reference to h_cg->css. See comment below for detail.
>   5207				 */
>   5208				hugetlb_cgroup_uncharge_cgroup_rsvd(
>   5209					hstate_index(h),
>   5210					(chg - add) * pages_per_huge_page(h), h_cg);
>   5211	
>   5212				rsv_adjust = hugepage_subpool_put_pages(spool,
>   5213									chg - add);
>   5214				hugetlb_acct_memory(h, -rsv_adjust);
>   5215			} else if (h_cg) {
>   5216				/*
>   5217				 * The file_regions will hold their own reference to
>   5218				 * h_cg->css. So we should release the reference held
>   5219				 * via hugetlb_cgroup_charge_cgroup_rsvd() when we are
>   5220				 * done.
>   5221				 */
>> 5222				css_put(&h_cg->css);
>   5223			}
>   5224		}
>   5225		return true;
>   5226	
>   5227	out_put_pages:
>   5228		/* put back original number of pages, chg */
>   5229		(void)hugepage_subpool_put_pages(spool, chg);
>   5230	out_uncharge_cgroup:
>   5231		hugetlb_cgroup_uncharge_cgroup_rsvd(hstate_index(h),
>   5232						    chg * pages_per_huge_page(h), h_cg);
>   5233	out_err:
>   5234		if (!vma || vma->vm_flags & VM_MAYSHARE)
>   5235			/* Only call region_abort if the region_chg succeeded but the
>   5236			 * region_add failed or didn't run.
>   5237			 */
>   5238			if (chg >= 0 && add < 0)
>   5239				region_abort(resv_map, from, to, regions_needed);
>   5240		if (vma && is_vma_resv_set(vma, HPAGE_RESV_OWNER))
>   5241			kref_put(&resv_map->refs, resv_map_release);
>   5242		return false;
>   5243	}
>   5244	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/38553e50-3271-fa50-a440-b2b0b4c44aef%40huawei.com.
