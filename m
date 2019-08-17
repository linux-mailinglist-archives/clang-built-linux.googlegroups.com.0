Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBEW33VAKGQEOIONH5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 695EE90D0A
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 07:05:09 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id k14sf1856119wrv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 22:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566018309; cv=pass;
        d=google.com; s=arc-20160816;
        b=hmEa/gB0c+q6wyX3VZPOun8QWLk5QdGXtB/ws7YXrQxz3k2D4LGqVwpzqQVx6FtzFH
         zsRFwQHyTJprgt6Eb7V/6fjpUHlM6KGvY9r1m1quanijs6H7NAEhMMhp9ovknDKo1ajg
         8dncgncsn8S8Kof1A4DjIo0STUfBNizHoeNj1eqjsanqObQK7D5PrCdVzq8ZeguFplJu
         /k0lo8FiGiu2iYie+xAzZMJno30G98YPrKCZd2D8aSguQEm47QdIbb+VIL+nY/8whGJ4
         46WkyBh7i9Iox8dSi+eAZQImYsv68WcGNL3xCath/ZyOyEus4WB4TIT0gSLmVDIpl5OT
         SonA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=RFDTI+rIvCi8uFASvcer2yvfiMbxhObmj1J7/qPJGN8=;
        b=Robtyq+TG3u0445RmzonlxzQ4kL8XoyqCuUkqLsy7aBnbvIoqyFtVPOG7FMQqhVmdp
         u0erk+8qLHxvggMOnFvYvk25Y0PLJ3lsYPxbKACMX61s7IErC5j2HqObN5ngDTAfgFJm
         2rQoi+N9w6z+27iepEAmYIUULbCEa4BNaoHlWKBmxVMIMdzTDNFhEBtkf/rFFT1oUzba
         lci9o8Exdtn+rhPaMHVweUluTXOf+xNxBjuVudIU8pzrk/F6m3Mzc1zKRwcYs+uRQE2A
         fHdVdmMsUTBSKvu5+B24W4fF02ZzZQLunpp4a6Ani2wpa0anh3uGtdcdP7egN2xPosoF
         7lNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fPEiUgIR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RFDTI+rIvCi8uFASvcer2yvfiMbxhObmj1J7/qPJGN8=;
        b=ptuvhfP9YH1qqwrT2jn3IuGaVe0YxKtk5lRTOu9OJPZ9xb0wWILwuKVKZCNVPvOe/n
         3yi1byMfHe4V3+rmAugNY7OiiWpQGGmH2iqX2HowWGcyU0XsP7QOWTN6VjewrHBi6TrC
         bK1g0v1A4TR++3xF+Zn2bOeITE+Xkxvo7VXvi33pNjuhd67wswvUjWmFmc8kfrwW2x2Z
         V1S7MEH8AxPyX9/sbXJZrUSvsZyw6VD8M9/S6grtwbekoIn24xShcebf+pzB9PXXUosR
         gJDkATl7ZnTkDvYsmPKSmZWQM03lRSc/3T5J3ws91HiD99M3wDN5jr8pW8DbUfrtPsBK
         1cHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RFDTI+rIvCi8uFASvcer2yvfiMbxhObmj1J7/qPJGN8=;
        b=ada4Rd3IgflCtbORT47X+MzQsevvfxvhcQlT+rbq3wxovfSX/M8fC7IIetDWBxcuK3
         T0GHFLjE7tC52B8nrMIcCX2X00PmgvenpCw12tJchoD32MVYXMi7ehR3BO4OMvblMS99
         GgC03hibdGSp5l1fxEt+2AIW7zCOzaUREWnZqpOgmyKq6rwunoLz3NoCbcWHGJc6GWiW
         DrSccv3U2y4I4vIb32+DV6blF3UmkEcenzR9PiC6bPvQQaWnT53lEknJVBE1ca7QoPIC
         xYBXYHD7PkH2ADIh3yHEiecplKTK+WIFQ4V0vQ2Xm9AL086mt6cLBnxbEJJpoZ3/fi8F
         yLTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RFDTI+rIvCi8uFASvcer2yvfiMbxhObmj1J7/qPJGN8=;
        b=FVx9cywrgbagzfP3Y6gqiD6nZX10GY8HPAJCuzCfyTkaqXz0ufwoN8VC9tlw7P86QU
         ZKrWl2uWu6Indeccv4XcMKJqLSKazZDZG3MIW8SuGVTg6GXvFbmIA8UholsCb4cBgCh5
         N0YA9vwaywjCBIE0jACmIQmnud2hG/l78nkVF0f2k+Dq2qKqqFH8r0myiP7NADGcQ+kg
         LADpW+jrzf3ifPNTVWbe4xwWg9xphU8DBMzuZ++tq0OZhQ/RVFxncveeuevCnRMwnsqO
         +zMEqRjaK2x31Yvk2RfEPRtTzR/h6n2btPwVWeKxnM9c/sg2oLhU0aQF8vlDUA6spzAs
         FCVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWTiCuZ/of9eAhzON4Ha63uAf7uNshgocjiHUzGnBxEHo6J7ZWu
	3jypJEphKnxJvaZ9DCLeZUk=
X-Google-Smtp-Source: APXvYqzaECmJ/Oh/ubcgW9p3DzIoYj4+QrD9jKn6KBmwgLemgH2RugHqtcaBxcIU8CyNMU2BcPyN7A==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr14318152wrv.155.1566018308714;
        Fri, 16 Aug 2019 22:05:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ab1b:: with SMTP id q27ls2958125wrc.7.gmail; Fri, 16 Aug
 2019 22:05:08 -0700 (PDT)
X-Received: by 2002:a5d:63c9:: with SMTP id c9mr14551496wrw.15.1566018308304;
        Fri, 16 Aug 2019 22:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566018308; cv=none;
        d=google.com; s=arc-20160816;
        b=uuQmHAMywQT1XgWFBrfpAw/k2BqWTTiyLCheP5c1mBIhmPXS2lk0Bbd2RCAkxwmzoq
         84EQJjMgvpSngaMVTnlXCjNaiCqIxIz6e2sfVoieLb23M/gP74myyySbzy2Wx1lpFWl5
         mTkpi6A/sERhrIgJaIgYZbpyoFYgtrNL1VI+lhAL8MsSU502k0Uhm3YTbFuUaerba8os
         z76vvEGOrd/UbMLVvYOz8FcF1j/dgOk0r54YcULi8lAUZ8+/W2HwT/FR3colgBjYKzMe
         NRTNPR1SIyr9k0jGLXdDOMqIMYd0vmjkIHvIQv8uYF302tQ8+BIknnbjmRPSk/1t/KOh
         Y/VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dXFQzh40iVt841E0acHqLvADE7avJBWIiZ7C9WJQ5tw=;
        b=wWDpgM5a8Qob9lQtV6GRWBCAKzBDP76cy5DcKh5jlDygAclcxe03MJzQNNQv4MyZxo
         mCNPVmhgmQ0RM1p/JOAKSigokMKrceV8Tl3L/7fQvLZgtX77Xn+yvt1+mjzY5qQPgQSX
         qm20phqYDaxshxmKOnJXxnK+R5LMP4g2FIf6LB7mubxF5Ll3gmWkYy+CEREgT2tYeRxK
         yyKBkyh/b0hS6RklawQ8PPHfpIXdtiD8GcaM7h+l7GjG6z1koYvnpBaC0eBOOcCjGEKs
         i9ELlZeao6Xb6GU0EGa3rBqzthL2Eqy1AmFkqNUlwAcfU6DriMaiBG4HD4nKBWkzIuLt
         27IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fPEiUgIR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id p67si262286wme.2.2019.08.16.22.05.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2019 22:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 207so5566965wma.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Aug 2019 22:05:08 -0700 (PDT)
X-Received: by 2002:a1c:9d8d:: with SMTP id g135mr10671042wme.115.1566018307810;
        Fri, 16 Aug 2019 22:05:07 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id k124sm15756203wmk.47.2019.08.16.22.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 22:05:07 -0700 (PDT)
Date: Fri, 16 Aug 2019 22:05:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [feng:latencytop 16/20] mm/migrate.c:2069:5: warning: implicit
 conversion from enumeration type 'enum migrate_hmem_reason' to different
 enumeration type 'enum migrate_reason'
Message-ID: <20190817050505.GC69583@archlinux-threadripper>
References: <201908162005.7Fg7QAeo%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908162005.7Fg7QAeo%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fPEiUgIR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 16, 2019 at 08:36:09PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Feng Tang <feng.tang@intel.com>
> 
> tree:   feng/latencytop
> head:   122e8adaba02569cd18c36a4a66ee43e0d78b04f
> commit: 0090fba8904699bccce17dad9d22e46f2b4f29cf [16/20] swapcache migration patch
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 0090fba8904699bccce17dad9d22e46f2b4f29cf
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> mm/migrate.c:2069:5: warning: implicit conversion from enumeration type 'enum migrate_hmem_reason' to different enumeration type 'enum migrate_reason' [-Wenum-conversion]
>                                    MR_HMEM_SWAPCACHE_PROMOTE;
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> 
> vim +2069 mm/migrate.c
> 
>   2033	
>   2034	/*
>   2035	 * Attempt to migrate a misplaced page to the specified destination
>   2036	 * node. Caller is expected to have an elevated reference count on
>   2037	 * the page that will be dropped by this function before returning.
>   2038	 */
>   2039	int migrate_mapped_page(struct page *page, struct vm_area_struct *vma,
>   2040				   int node, int is_numa_migration)
>   2041	{
>   2042		struct migrate_detail m_detail = {};
>   2043		pg_data_t *pgdat = NODE_DATA(node);
>   2044		int isolated;
>   2045		int nr_remaining;
>   2046		LIST_HEAD(migratepages);
>   2047	
>   2048		/*
>   2049		 * Don't migrate file pages that are mapped in multiple processes
>   2050		 * with execute permissions as they are probably shared libraries.
>   2051		 */
>   2052		if (page_mapcount(page) != 1 && page_is_file_cache(page) &&
>   2053		    (vma->vm_flags & VM_EXEC))
>   2054			goto out;
>   2055	
>   2056		/*
>   2057		 * Also do not migrate dirty pages as not all filesystems can move
>   2058		 * dirty pages in MIGRATE_ASYNC mode which is a waste of cycles.
>   2059		 */
>   2060		if (page_is_file_cache(page) && PageDirty(page))
>   2061			goto out;
>   2062	
>   2063		isolated = numamigrate_isolate_page(pgdat, page);
>   2064		if (!isolated)
>   2065			goto out;
>   2066	
>   2067		list_add(&page->lru, &migratepages);
>   2068		m_detail.reason = is_numa_migration ? MR_NUMA_MISPLACED :
> > 2069					MR_HMEM_SWAPCACHE_PROMOTE;
>   2070		nr_remaining = migrate_pages(&migratepages, alloc_misplaced_dst_page,
>   2071					     NULL, node, MIGRATE_ASYNC, &m_detail);
>   2072		if (nr_remaining) {
>   2073			if (!list_empty(&migratepages)) {
>   2074				list_del(&page->lru);
>   2075				dec_node_page_state(page, NR_ISOLATED_ANON +
>   2076						page_is_file_cache(page));
>   2077				putback_lru_page(page);
>   2078			}
>   2079			isolated = 0;
>   2080		} else {
>   2081			count_vm_numa_event(NUMA_PAGE_MIGRATE);
>   2082		}
>   2083		BUG_ON(!list_empty(&migratepages));
>   2084		return isolated;
>   2085	
>   2086	out:
>   2087		put_page(page);
>   2088		return 0;
>   2089	}
>   2090	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

I am assume this is an internal Intel tree? Worth reporting?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817050505.GC69583%40archlinux-threadripper.
