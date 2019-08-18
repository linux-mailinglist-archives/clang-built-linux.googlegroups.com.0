Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBLUU4PVAKGQE4DNHV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C2991457
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 05:46:55 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id s80sf57631vkb.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 20:46:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566100014; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbHI9TDeQrin4HVdLpO3Zfx67hwxtWHBGjr7evvnXpk3KKcKLM2WBg9+3VP2r9egpv
         GJ7PCWFaop5ZpxO+LwXTedG1Lvcs5I0bC2hEfZ2vEd52Jo1teIaG0K0FCvRveasQ/J//
         zDJXnS/GdojQnVs0XJuhxvzm01s1zvyEKZzv0GM0TP3zcjDBleOOWJWrXYnjMdaGJdsQ
         Bo7GLQ4MG1VqJEWy8MxJ31hW2VmVRGmNsHwSpP/ZzfQzJX/2Plkm2p/SrJbZAfiT+Yhe
         Pec9nem9T7W7skqpTJp6LWRF3B+e+z0ql4zlcpuoH8aud5iKpUt91PSL6O4asMtuGnKA
         t2UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-version:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=asOkJfvcKht99KRdBTlB8kmMb9JsNgFQrKk6bEcg4E0=;
        b=yA2jK+Q1pKfpliwdX3EppahLjTUTTvvt2/7ITumddbinGf8vp7nHMZYUhOK6GQh05H
         MPu9dS0DDRJcfQJdm1I/VFX60OYhXerb1fOUBSBlYd7TmA+3MxuXVGe6tlR9SZuNxsFs
         FsVbkZmp0oMG+P5hp/R1eHYzG4VeDFOHnp7C6s/hxbp4u04Wf1coGkAH62f/Oi3e7IUW
         n+dhyl0NIDNSy7nYscl1huj38Ex991qA/Gw0QLuk9hQryYuGEpXQW1CDlGgF6q4MXCup
         562BOEn10u9Us8cRmBBj4S6bQ6xzZYL2t9ttbCh9kyaE/9vICvvxv76V/nj4DnzR0yRM
         Qm7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=asOkJfvcKht99KRdBTlB8kmMb9JsNgFQrKk6bEcg4E0=;
        b=eHafRWQCCSkThL8koF+wHb+smfHZ6+3lFW+HCZ0FR6cMtJHHMNIk4vixHTwhnaT+ys
         IysuSZbfUiEwSGx+9IRjo1Wy4jgeN49ZbZbQqmElXe2RMh0v1DXol51SmwqM1GiugnX9
         kiDoefLvXKdUvN05Y9kqEuKxAHvGMAt05u8E9KkVeU9k7yHfnxZZc9yDsKA8vwtNMoe8
         GsudY4/20/tAfGXb6SlHW2Fhgh5pcxC/8p7H2A9Hg1CTW3htP0goCTFJaIzVfBJbV0iW
         3v045q1CR8gigXYZB3W+KarmfSjfkTBTuP3j4qsHhFd0uIlwWz7M1Le059FjqGeLfsEl
         RMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=asOkJfvcKht99KRdBTlB8kmMb9JsNgFQrKk6bEcg4E0=;
        b=cLt760RymaqqIKTQBokcrWbqEB8VRuQ29Uo6rLQMbjDdDk9rVPG/RY1ccVAVjSBpZG
         mCDtqCn203IT+YxmGdV2LToRMcut1fis7XHP520iL0/NMfMpmm2s4LY7+FVUOarTk9qc
         OEn9PPJY1NauJKYPY/ZExu958QaCoaxZkp6fSgcTCf2opeRtr0vr+MBcAsyE+pHZcXLm
         gCblJyhYeB10NHG27EJH2I/OH2y2kjFSxr1OLDUBzZ+6/38/h/rkk+LfKC29Bo8w+Hzw
         /NPrwHW7x7DICE8Ho0YQFiDXSEJ6ZZEE8fLM+7uQg5ymijvmoRIOXAHaS58e//LNncc/
         LI/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCq5/B0i/oB/aFgA5Oe+f0YmsqKcQVqYclLln7UEE2qrZ3En5E
	a32gz2Pi1xQALOKg7Ag386c=
X-Google-Smtp-Source: APXvYqycbuM/PMeBz6UHdKIAQdUj4TtuTLifroBAxU8BlO84i2Tbq6EGfCt5WW3hwafQ3HuV1VTkxA==
X-Received: by 2002:a67:ee0b:: with SMTP id f11mr6195921vsp.125.1566100014154;
        Sat, 17 Aug 2019 20:46:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e0dc:: with SMTP id m28ls15543vsl.10.gmail; Sat, 17 Aug
 2019 20:46:53 -0700 (PDT)
X-Received: by 2002:a67:ec91:: with SMTP id h17mr10351360vsp.67.1566100013869;
        Sat, 17 Aug 2019 20:46:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566100013; cv=none;
        d=google.com; s=arc-20160816;
        b=GUFSMbaimQRcIDAQC4//QrskzNWDlozQFnOkbrBWnOP9KlHCVeCwt9f8EoUvfM8GVK
         sk5vXQrjpiQyksxuUfSPXshN+jUtalbFEBt6Q9ZizgQqcYhF8w/nIAOcPxa+UHktJCtl
         vGLOU2ik/EzZTv1w+xLGg4X9CpZI0OI8XFrA3pb6wG8PhAizYBCnw+kEVpxZdCWZWlPG
         8LHEYCo4x6Rei2uNfMlN+vi1y7TE1w+RCq0+p8mekJWrUyJjs2/i9tl96PYZ3AhxwyOE
         hqnxFZLDLIe6gdRKyZI5HkUjCRQRgwYmtdaMGHMApeTY/3cLNk7ZEjbn2eBhcyAkKFN5
         TGsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=i1MgpAwuMu2HRH/xDrK/adEQGHlUBSIKXlLPneLXOS8=;
        b=XE0a6FmJgu+pey8zE2e34Urv8e1YMtCuL79rKUArG2KxKJ2ppdan1v5/whBa5G52ss
         f45k+/bkoskujpoGn9vj5tjMqD1b/C8an1AQScbSUNuXz9rr7+irBD/A229JDTzccTQl
         OrCrcndkZ0jR0PADWXmQ7//aFbHNcKZYRwsccZT5AXbYZYGm0cnIxZGKV6FfJPDmqtKo
         9C3703T4GB634qXLkEX7Fwe48d9umZ3CfTYfnFqjUavQrH6WYxMWKEXoaadI9e7DjtdC
         rcknXIEwPtAI19H+EGvE7rdCqKI+CctCLXUcCY4QL+nWuV7CDJgVFhGrihLODfTSmiAZ
         6zAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id a8si649588vkm.0.2019.08.17.20.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Aug 2019 20:46:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Aug 2019 20:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,399,1559545200"; 
   d="scan'208";a="206657771"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2019 20:46:51 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 17 Aug 2019 20:46:51 -0700
Received: from shsmsx153.ccr.corp.intel.com (10.239.6.53) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 17 Aug 2019 20:46:51 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.19]) by
 SHSMSX153.ccr.corp.intel.com ([169.254.12.215]) with mapi id 14.03.0439.000;
 Sun, 18 Aug 2019 11:46:49 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, lkp <lkp@intel.com>
CC: "kbuild@01.org" <kbuild@01.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [feng:latencytop 16/20] mm/migrate.c:2069:5: warning: implicit
 conversion from enumeration type 'enum migrate_hmem_reason' to different
 enumeration type 'enum migrate_reason'
Thread-Topic: [feng:latencytop 16/20] mm/migrate.c:2069:5: warning: implicit
 conversion from enumeration type 'enum migrate_hmem_reason' to different
 enumeration type 'enum migrate_reason'
Thread-Index: AQHVVLmm+zq6GLm/oUCOB4+eCcMB7acANyrw
Date: Sun, 18 Aug 2019 03:46:48 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E66249520C05E7@shsmsx102.ccr.corp.intel.com>
References: <201908162005.7Fg7QAeo%lkp@intel.com>
 <20190817050505.GC69583@archlinux-threadripper>
In-Reply-To: <20190817050505.GC69583@archlinux-threadripper>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzJkZjkyNzItZmRmNS00YTA3LTgzYWYtZDFhOTc0OGYwNzkzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV0o4Mjd3TWVSeVRiZXZmVEVkZlZueEUyYkVCTDdzaG9cL1FsU1FkbG1jSTlnb3RJaElmOWNjd1FKeVFnOTdLczkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> On Fri, Aug 16, 2019 at 08:36:09PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > TO: Feng Tang <feng.tang@intel.com>
> >
> > tree:   feng/latencytop
> > head:   122e8adaba02569cd18c36a4a66ee43e0d78b04f
> > commit: 0090fba8904699bccce17dad9d22e46f2b4f29cf [16/20] swapcache
> migration patch
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 0090fba8904699bccce17dad9d22e46f2b4f29cf
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> mm/migrate.c:2069:5: warning: implicit conversion from enumeration type
> 'enum migrate_hmem_reason' to different enumeration type 'enum migrate_reason'
> [-Wenum-conversion]
> >                                    MR_HMEM_SWAPCACHE_PROMOTE;
> >                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    1 warning generated.
> >
> > vim +2069 mm/migrate.c
> >
> >   2033
> >   2034	/*
> >   2035	 * Attempt to migrate a misplaced page to the specified
> destination
> >   2036	 * node. Caller is expected to have an elevated reference count on
> >   2037	 * the page that will be dropped by this function before returning.
> >   2038	 */
> >   2039	int migrate_mapped_page(struct page *page, struct
> vm_area_struct *vma,
> >   2040				   int node, int is_numa_migration)
> >   2041	{
> >   2042		struct migrate_detail m_detail = {};
> >   2043		pg_data_t *pgdat = NODE_DATA(node);
> >   2044		int isolated;
> >   2045		int nr_remaining;
> >   2046		LIST_HEAD(migratepages);
> >   2047
> >   2048		/*
> >   2049		 * Don't migrate file pages that are mapped in multiple
> processes
> >   2050		 * with execute permissions as they are probably shared
> libraries.
> >   2051		 */
> >   2052		if (page_mapcount(page) != 1 &&
> page_is_file_cache(page) &&
> >   2053		    (vma->vm_flags & VM_EXEC))
> >   2054			goto out;
> >   2055
> >   2056		/*
> >   2057		 * Also do not migrate dirty pages as not all filesystems
> can move
> >   2058		 * dirty pages in MIGRATE_ASYNC mode which is a
> waste of cycles.
> >   2059		 */
> >   2060		if (page_is_file_cache(page) && PageDirty(page))
> >   2061			goto out;
> >   2062
> >   2063		isolated = numamigrate_isolate_page(pgdat, page);
> >   2064		if (!isolated)
> >   2065			goto out;
> >   2066
> >   2067		list_add(&page->lru, &migratepages);
> >   2068		m_detail.reason = is_numa_migration ?
> MR_NUMA_MISPLACED :
> > > 2069
> 	MR_HMEM_SWAPCACHE_PROMOTE;
> >   2070		nr_remaining = migrate_pages(&migratepages,
> alloc_misplaced_dst_page,
> >   2071					     NULL, node,
> MIGRATE_ASYNC, &m_detail);
> >   2072		if (nr_remaining) {
> >   2073			if (!list_empty(&migratepages)) {
> >   2074				list_del(&page->lru);
> >   2075				dec_node_page_state(page,
> NR_ISOLATED_ANON +
> >   2076
> 	page_is_file_cache(page));
> >   2077				putback_lru_page(page);
> >   2078			}
> >   2079			isolated = 0;
> >   2080		} else {
> >   2081			count_vm_numa_event(NUMA_PAGE_MIGRATE);
> >   2082		}
> >   2083		BUG_ON(!list_empty(&migratepages));
> >   2084		return isolated;
> >   2085
> >   2086	out:
> >   2087		put_page(page);
> >   2088		return 0;
> >   2089	}
> >   2090
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >
> 
> I am assume this is an internal Intel tree? Worth reporting?
Thanks Nathan, if it is valid, can still help report out, though the repo is not accessible
outside.

> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/831EE4E5E37DCC428EB295A351E66249520C05E7%40shsmsx102.ccr.corp.intel.com.
