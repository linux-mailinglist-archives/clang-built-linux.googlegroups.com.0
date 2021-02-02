Return-Path: <clang-built-linux+bncBCC2HSMW4ECBB5U64OAAMGQEJSJZIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F230B62E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 05:05:12 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id l2sf12905771pgi.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 20:05:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612238711; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbAzTH7nRifnHR8WQ/dFirhQgLPuVMmqv4oGoslahGqblT9/KFgHsM3eTs6Tqv6JII
         TIu6m7Mab8N+nvw2dijLVLgNRKX4XZD4yW44ULtDAqCAblrNT0ri9XCAPj+qnxrFGE0P
         2sULoFgOlD2Y3LBg7Ba4GHCG4nrGN8u7TtZGDIqCNYYawSCZyRA1wrNIbYFtAwJEERLW
         WAjZVj8EUxXBp87FiANBnZ+UVVh96WlxNOYJsQlmfifKuVOObfx1J4KWRovVYg+Zar2b
         5BaPeWzpBiIhDK2tjmquAiPBj8A7ViiGbEVbrzvenvUFmD3Y9BkCEAmtJ6MPl1QIjTL0
         xc/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2Mbu7xEhF83ryZleOAyp4qquXmrr24wq8nzSZDqY2/g=;
        b=g/zdSiO6kJE3pejrF50jNNPWXEeoOgolK7Q5NsKtaRhOwLALuhwwQh637Ds9mEf04+
         RmIUIGMXqOKW5rTcpwB5DPOqfajC2fZvhaI+SJ9bGZxlEHuRaaqvx5AeZwfcwWQQ9ro1
         RggCDDLJcN1E6ixOi1vvGyPs22afM5t2xzS8xfTFwZf1BMvWhLv62H02oFAQk9+j+es6
         khbbHfgogSZfS/DmlrSnSEE39vyDdr03LoizWfxmzxHMf9N2xWeWciIGRYedUCBUqqiX
         eQkqSq+w6+wc+YYG/qDdOC3tcPCXaSO0QXB5VQWuVz+RtzPdx9Bb+Qhqpk9DZ7n52xRX
         oihg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@soleen.com header.s=google header.b=KWaqzHnw;
       spf=pass (google.com: domain of pasha.tatashin@soleen.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=pasha.tatashin@soleen.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Mbu7xEhF83ryZleOAyp4qquXmrr24wq8nzSZDqY2/g=;
        b=GXAXW7VPmIzGWvJK6n0iX3KCK0i4ZRcsuR/a2D3GpwDFZ/a5SYNAhdaubVdqCTXFmY
         JHMzyCLbBfL09rLkBgP7Ob5kXnJ8I+5MALJPwvUTFfNFB0yNDHSQkuKkLScU1RKhUHEr
         Ieui5zJASeTYmimerg6MF+jjgbofRKBtft5hIXYBKvK8cCi9sDsI/PpnxSRCj9p050eA
         GuEkVVxXLUkg3Y5Ml8dcorj7pczqFaUDy4bGoI4D8yZ7tO1KYacV/fnVswTCzwk+mS8/
         LeyD4lsu8zIcwgUVJNlGRpfGKAMrAs8uaSLT542S3xikuDs0Zn4sdZg6re2M4Q06Zj/+
         DbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Mbu7xEhF83ryZleOAyp4qquXmrr24wq8nzSZDqY2/g=;
        b=AK6HPEKmgeQoviclsVYHm8JxVTLInMa0DJAlXH33/PuYANG6j5o+lWCISnltKRKTpU
         dmVKMvz3mVEbRj6mjn1zyg6PFj5Rlu4i7Dlp3+B2dHyA98DXsbsT4PhmhbTPzypdNj9W
         fDISyp1u98aVSmEd2cTxEAVQRuKXnxDUDyqNq4V2hIw+9jftVBGv4OX5fiV3gGUEzt2U
         CrGVcX1PtDgvv3LD5OSfMCbiueQvcC91JrxCvURaz6gbtcpFsW49jw8yJblvbwtoZ5yA
         61obG0lNcItLZ3jJ5spAUL+XcU2mVESz/rWLPjfQhZcCTiQr0JFeJ6sFjJqfTz9Cwvgx
         IMKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EqJvC3FyVD7Ijjv44GOBbSeSJBr9Xovv/jZwJnHn7uGaa4piB
	Gc61ATm4tnXQCFX85+Rga28=
X-Google-Smtp-Source: ABdhPJxWMMNsLA3RSPuSXt03Uov/6SoFDc78YTwBOG67GmnYLRxguGbsi3Jb7e/ZorzXZEOT5WlozQ==
X-Received: by 2002:a17:90a:c789:: with SMTP id gn9mr2206537pjb.101.1612238710977;
        Mon, 01 Feb 2021 20:05:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls9380918plh.10.gmail; Mon, 01
 Feb 2021 20:05:10 -0800 (PST)
X-Received: by 2002:a17:90a:5303:: with SMTP id x3mr2210833pjh.54.1612238710299;
        Mon, 01 Feb 2021 20:05:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612238710; cv=none;
        d=google.com; s=arc-20160816;
        b=IcOHPgmxHKkx51AlcBmaOSQM+V8sc7fxKa5NbuoO6dPlpFOqXp4DYQ18Rw4AS78Wyb
         HJP5CVQ2Z23IFPfI/YvFa825ST9esEd8AI4tCuRwNh/59qgdM2KL6U0awLSyS0aOsvbF
         2QkG/Pu9DVMjdAJcEteL5JqRM4Kj5iUImWtz/Y0kinxyhKUaO7Sx0oZgf+rawV3oJKB1
         e1mHcssfdzJATvrNvGcfd5yBS4AlyO+wGf9m1Qc+XK2NBFqWk7H3CdJyR7orDFVqktHO
         Q09n331b2NaJrVf92SgAcv0ER9TUvXP5BE6GJjrqu4Vjm1n5XRyCvhKs5AvocqY2n4dW
         TxXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TgEl1t62b0F8MSCHUvUj30llEevpoe++jneAMJ1Te1Y=;
        b=Q8sm3nn4QnsAUZarMgBg5f9Bnkan5CqEFZIgmB2ThlDqVjiQI5Dl0+88I+5LyelC5j
         7Nl9uOEx38EySej0b5pSZr6ybcch0TqPnQ/A58eY9ZkSUvbzKP5ZYjP9YN+cVVWjbzvA
         03rPJAqzxDMSNqY0kFAnWuXBxQd2eaDojo5YrOmOQenuY1ESCT20mNbbJxHRBUQu2AwN
         lr/Udn1QVWg+FR2lOANNFfke0w6qSYAgO+ta6QS4uDGAXsvGGjazBeUAm0WFbOOz8GPg
         x4GgHUpNzf5Hef0wOcE/WXPKDBbAUxDDplhxMUxHFs7r3PcvQdKA2B9pM0pJL1gp+bxd
         fKdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@soleen.com header.s=google header.b=KWaqzHnw;
       spf=pass (google.com: domain of pasha.tatashin@soleen.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=pasha.tatashin@soleen.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id l8si204489plg.2.2021.02.01.20.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 20:05:10 -0800 (PST)
Received-SPF: pass (google.com: domain of pasha.tatashin@soleen.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id r77so18633260qka.12
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 20:05:10 -0800 (PST)
X-Received: by 2002:a37:9d56:: with SMTP id g83mr19487015qke.38.1612238709932;
        Mon, 01 Feb 2021 20:05:09 -0800 (PST)
Received: from xakep (c-73-69-118-222.hsd1.nh.comcast.net. [73.69.118.222])
        by smtp.gmail.com with ESMTPSA id o3sm15639979qkg.15.2021.02.01.20.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 20:05:09 -0800 (PST)
Date: Mon, 1 Feb 2021 23:05:07 -0500
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-mm <linux-mm@kvack.org>,
	Vlastimil Babka <vbabka@suse.cz>, Michal Hocko <mhocko@suse.com>,
	David Hildenbrand <david@redhat.com>,
	Oscar Salvador <osalvador@suse.de>,
	Dan Williams <dan.j.williams@intel.com>,
	Sasha Levin <sashal@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v9 08/14] mm/gup: do not migrate zero page
Message-ID: <CA+CK2bBjC8=cRsL5VhWkcevPsqSXWhsANVjsFNMERLT8vWtiQw@mail.gmail.com>
References: <20210201153827.444374-9-pasha.tatashin@soleen.com>
 <202102021007.udwVXuwA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102021007.udwVXuwA-lkp@intel.com>
X-Original-Sender: pasha.tatashin@soleen.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@soleen.com header.s=google header.b=KWaqzHnw;       spf=pass
 (google.com: domain of pasha.tatashin@soleen.com designates
 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=pasha.tatashin@soleen.com
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

Hi Andrew,

Should I send new patches or is the update for this patch sufficient?

Here is updated patch:


From 9fb856f3a5cfda18a4b84e81dfb0266bee4a4ea6 Mon Sep 17 00:00:00 2001
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 18 Jan 2021 17:35:18 -0500
Subject: [PATCH v9 08/14] mm/gup: do not migrate zero page

On some platforms ZERO_PAGE(0) might end-up in a movable zone. Do not
migrate zero page in gup during longterm pinning as migration of zero page
is not allowed.

For example, in x86 QEMU with 16G of memory and kernelcore=5G parameter, I
see the following:

Boot#1: zero_pfn  0x48a8d zero_pfn zone: ZONE_DMA32
Boot#2: zero_pfn 0x20168d zero_pfn zone: ZONE_MOVABLE

On x86, empty_zero_page is declared in .bss and depending on the loader
may end up in different physical locations during boots.

Also, move is_zero_pfn() my_zero_pfn() functions under CONFIG_MMU, because
zero_pfn that they are using is declared in memory.c which is compiled
with CONFIG_MMU.

is_pinnable_page() is needed only when CONFIG_MIGRATION is set, because
without page migration all pages are pinnable, so add a stub version of
is_pinnable_page() for !CONFIG_MIGRATION case. This also solves issues
where mm.h is included but is_zero_pfn() is not available because of
CONFIG_MMU is not set.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 include/linux/mm.h      | 10 +++++++++-
 include/linux/mmzone.h  |  4 ++++
 include/linux/pgtable.h |  3 +--
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index db228aa8d9f7..a5cb32183ac5 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1127,11 +1127,19 @@ static inline bool is_zone_movable_page(const struct page *page)
 	return page_zonenum(page) == ZONE_MOVABLE;
 }
 
+#ifdef CONFIG_MIGRATION
 /* MIGRATE_CMA and ZONE_MOVABLE do not allow pin pages */
 static inline bool is_pinnable_page(struct page *page)
 {
-	return !is_zone_movable_page(page) && !is_migrate_cma_page(page);
+	return !(is_zone_movable_page(page) || is_migrate_cma_page(page)) ||
+		is_zero_pfn(page_to_pfn(page));
 }
+#else
+static inline bool is_pinnable_page(struct page *page)
+{
+	return true;
+}
+#endif
 
 #ifdef CONFIG_DEV_PAGEMAP_OPS
 void free_devmap_managed_page(struct page *page);
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 87a7f9e2d1c2..aacbed98a1ed 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -427,6 +427,10 @@ enum zone_type {
 	 *    techniques might use alloc_contig_range() to hide previously
 	 *    exposed pages from the buddy again (e.g., to implement some sort
 	 *    of memory unplug in virtio-mem).
+	 * 6. ZERO_PAGE(0), kernelcore/movablecore setups might create
+	 *    situations where ZERO_PAGE(0) which is allocated differently
+	 *    on different platforms may end up in a movable zone. ZERO_PAGE(0)
+	 *    cannot be migrated.
 	 *
 	 * In general, no unmovable allocations that degrade memory offlining
 	 * should end up in ZONE_MOVABLE. Allocators (like alloc_contig_range())
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index 1d3087753426..bad0f417adb3 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -1118,6 +1118,7 @@ extern void untrack_pfn(struct vm_area_struct *vma, unsigned long pfn,
 extern void untrack_pfn_moved(struct vm_area_struct *vma);
 #endif
 
+#ifdef CONFIG_MMU
 #ifdef __HAVE_COLOR_ZERO_PAGE
 static inline int is_zero_pfn(unsigned long pfn)
 {
@@ -1142,8 +1143,6 @@ static inline unsigned long my_zero_pfn(unsigned long addr)
 }
 #endif
 
-#ifdef CONFIG_MMU
-
 #ifndef CONFIG_TRANSPARENT_HUGEPAGE
 static inline int pmd_trans_huge(pmd_t pmd)
 {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BCK2bBjC8%3DcRsL5VhWkcevPsqSXWhsANVjsFNMERLT8vWtiQw%40mail.gmail.com.
