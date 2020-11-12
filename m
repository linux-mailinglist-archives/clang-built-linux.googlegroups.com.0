Return-Path: <clang-built-linux+bncBCKPFB7SXUERBEEYWX6QKGQELMFSZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4172B07CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 15:52:01 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id r192sf538290vkf.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 06:52:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605192721; cv=pass;
        d=google.com; s=arc-20160816;
        b=qc52NBg9oRfbHZWJU8bua/YjINM0842Ie9Xz5szMt4dsWXExu+b5n6ySkuGJPpe6IU
         Qy7tfUbtYZSJGIdfKkziYn8dLZ54O4WfDtrtq+U8N/LSzl+n3cYsHJ+EpNF+2XVYZmkN
         HnFPd1qHA8w5NlPRZ6lNxFvEzz9vGOsoR47dG5lt3pAkJbxyaKKQ0y63EO/TdwowSkvv
         RG91zcZKphCCUnmAmfb0LWVRZEWE/NGKlmdgMkRBMvRXdd1eOz8v7P02VVpTyLZe98zG
         XkAVkzjXyafrww4dsE8p4IFTZpfGuMF/Uad/39tUzCGigUGETIqJQobN6qGYTKjfYTw9
         wMMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cILfQ6gHhE5xRHwDN/1rNF9Qj47VArAZxfM1wahkfF8=;
        b=G27bbAdJWgBCX/fuGUeN0dOdCR+U8UHiVAEZv++MA27TrZwRBV431gkDolK8iEcG4e
         YCae8sTR2BFHhWECJ4nXrDLMFAhzGkPeDdyzH2n6BlNjLjuIvlood3hlXEQBAw6Fw5A1
         R8lX8Yr/aTdUzaY3xnPbbQzxgdEB5/3UzASjjXkelXC93s51DQLz67EnqScvRBbkq6Z5
         mtJRk7KT9TBxgwdaGGwbAzmHIUVJytB84wNXFpWwwAI5q2yFDCpdrx+H8BAhejsejllA
         4HxIKlDyu/zDhFPmzR69qC/1DCMt7xBsG5ewYL9JxCfFTeWMAvX0FhvbpFf2pWU+1AIE
         0rzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="HPwS/u/g";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cILfQ6gHhE5xRHwDN/1rNF9Qj47VArAZxfM1wahkfF8=;
        b=jhHGhBEZx734YYxPd/YtVgbD6ehqnp0vOyhYebclwAV6BqCVJa4Ehzo6wVfz6X4is4
         Z3rQgmDFCA6Qjm4k8WznGf47f02t7SkDBl7cnC32ZzlgCf5t3YMId7MFLPsbaH2JYk/N
         OzwKSx6oBKWyik7ygGShCACVKJXvSobDRnsEPFGYqvb9x+xDQehmcMLJ4SEGY/J5ykXa
         Y+P5mkPdsGqDiMv9QluElJMhWCZWAybOl/ApTCi6LfLIubbHyMbfxHgrskoKDEtU8143
         ax/401+U+9JGDwvrVERmtu7zaGp4TZT1ZoM+cgC6JnJMlMtGWr0oQoTz/pGKucYHboUZ
         syFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cILfQ6gHhE5xRHwDN/1rNF9Qj47VArAZxfM1wahkfF8=;
        b=d4HvJj0qkiazDWOOV2nHRTwAhJfHvsmOtLyqTDZKTM3wOwbVKzNd9nrg8yKdhQhZaD
         OOCSoJTdXiN6E6dZuMPdxfqgkubzJr6kfDHR1NG9b3WmY/tzl7zxW/0ci1lu6nBJmhDl
         Pj7ASkS740pKRt864W3YIGPM/vrMPQTqZ8nnnor8+dlrKru+FW03VR9zLdIH2c65hfib
         4iRW549qS3mr695LyMXP1nXXPlU+VH+9Ohu2nyQoZXJN3VRKf4E+/7Bme8wjqL1Ezhlb
         1Fq57dm4IjCbTNOtxH4aFdzB/g7ee3tebHvuJaGxVWpKefMpJP9J5QaYSiPTlZ7nsx2m
         flYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S7QMdrTxOIIJ8pW13vebWHLFV6PuxETwm1BxJoC5ykwLAmD6h
	bdtcCHHgr6/bsXL3REYQTTk=
X-Google-Smtp-Source: ABdhPJxh5MInU+jqf5LjDxPEBRTs7l8ipof0KaGiyZzAGHkqmQHAXqmyNHhvQmyJ+vkNMla0ANsF4g==
X-Received: by 2002:a05:6102:22ef:: with SMTP id b15mr16776427vsh.35.1605192721001;
        Thu, 12 Nov 2020 06:52:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22fb:: with SMTP id b27ls466402vsh.1.gmail; Thu, 12
 Nov 2020 06:52:00 -0800 (PST)
X-Received: by 2002:a05:6102:104d:: with SMTP id h13mr9254414vsq.15.1605192720492;
        Thu, 12 Nov 2020 06:52:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605192720; cv=none;
        d=google.com; s=arc-20160816;
        b=OtxJUis3nMs0zj+5KnuaVqDz2pkFTjFf4FUUUEVLgR5pdYIJcgeVxGVenD5eX1zoJj
         ec7awRN8GWLinty+ALQbRkJwF/tmhSDP6MsuLz+zewAmWR/YdgOKp5yFhoPpQay5YiYr
         5Ya1B+06ZMpkc/QopoDoptMwkmzqaiHuklItaqcDtUCk876eyI4g0ZfrSb1rV1VMSIqv
         DDmcd3L27w+ic0SG4XltZioKvd33fTvIU8adA4AFbUg0/ciMUyV8DGimY7ksXSiARypW
         eK2YW8K+yrU9lTxQjgLZSa43AY1TpSaEcTsbU9f+2bQWgxAxdxSLQqfQk6+PcSl4I3oY
         N4yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bzV3bwrk9rmrhHk6dkBFubq9MMmfsIRILK60dRXDqHE=;
        b=AG3ff5RoU1Yw/xvt+Wq47BMBdkijYra4g0yorHR2PGPUqzUxiW8WyQCrKtsiNaa/Ig
         mm5Mk3vs8gnG6X/BplTErhOOv19hLRaWuTmcbxipTRZSF4nSm7XY9LUpUkAagJf/FGvA
         KKmoDoUnCBveAqcVlaCVY9jGM1arUBt+Pcr6zdoNbV+iZHXzN3pHkFL+dlsn1Ewbdqdm
         EOXlGRA160k4/kzbkMX+R/3Lf/afJoC9IUEs3Kt3GYxZSZKz8jK9Lq1hZMmSYJPTBOFz
         ijRhVF8OCbteCLQ5Hyb22zPBEsYQS0GJh5iyQYeGptTz6tH+fZHC1jHksrHZA53r4nIN
         +3LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="HPwS/u/g";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id n1si302772vsr.2.2020.11.12.06.52.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 06:52:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-4NEbsf6TPImicgyjjVl8zg-1; Thu, 12 Nov 2020 09:51:55 -0500
X-MC-Unique: 4NEbsf6TPImicgyjjVl8zg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7530318CB720;
	Thu, 12 Nov 2020 14:51:53 +0000 (UTC)
Received: from localhost (ovpn-12-196.pek2.redhat.com [10.72.12.196])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DBCC6198D;
	Thu, 12 Nov 2020 14:51:52 +0000 (UTC)
Date: Thu, 12 Nov 2020 22:51:49 +0800
From: "bhe@redhat.com" <bhe@redhat.com>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201112145149.GN8486@MiWiFi-R3L-srv>
References: <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="24zk1gE8NUlDmwG9"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="HPwS/u/g";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124
 as permitted sender) smtp.mailfrom=bhe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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


--24zk1gE8NUlDmwG9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 11/03/20 at 12:34pm, Rahul Gopakumar wrote:
> >> So, you mean with the draft patch applied, the initial performance
> regression goes away, just many page corruption errors with call trace
> are seen, right?
> 
> Yes, that's right.
> 
> >> And the performance regression is about 2sec delay in
> your system?
> 
> The delay due to this new page corruption issue is about
> 3 secs.
> 
> Here is the summary
> 
> * Initial problem - 2 secs
> * Draft patch - Fixes initial problem (recovers 2 secs) but
> brings in new page corruption issue (3 secs)
> 
> >> Could you tell how you setup vmware VM so that I can ask our QA for
> help to create a vmware VM for me to test?
> 
> * Use vSphere ESXi 6.7 or 7.0 GA.
> * Create VM using vSphere Web Client and specify 1TB VM Memory.
> * Install RHEL 8.1, that's the guest used in this test.

Can you try the attached draft patch?

> 
> With draft patch, you should be able to reproduce the issue.
> Let me know if you need more details.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112145149.GN8486%40MiWiFi-R3L-srv.

--24zk1gE8NUlDmwG9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="0001-mm-make-memmap-defer-init-only-take-effect-per-zone.patch"

From 24d9b1fe55d79892cac3478711af216d898c7159 Mon Sep 17 00:00:00 2001
From: Baoquan He <bhe@redhat.com>
Date: Tue, 13 Oct 2020 20:05:30 +0800
Subject: [PATCH v2] mm: make memmap defer init only take effect per zone

Deferred struct page init is designed to work in zone wide. However since
commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock regions
rather that check each PFN"), the handling is mistakenly done in all memory
ranges inside one zone. Especially in those unmovable zones of multiple nodes,
memblock allocation split them into many memory ranges. This makes initialized
struct page more than expected in early stage, then increases much boot time.

Let's fix it to make the memmap defer init handled in zone wide, but not in
sub memor range of one zone.

Signed-off-by: Baoquan He <bhe@redhat.com>
---
 arch/ia64/mm/init.c | 4 ++--
 include/linux/mm.h  | 5 +++--
 mm/memory_hotplug.c | 2 +-
 mm/page_alloc.c     | 8 +++++---
 4 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index ef12e097f318..27ca549ff47e 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -536,7 +536,7 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
 
 	if (map_start < map_end)
 		memmap_init_zone((unsigned long)(map_end - map_start),
-				 args->nid, args->zone, page_to_pfn(map_start),
+				 args->nid, args->zone, page_to_pfn(map_start), page_to_pfn(map_end),
 				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 	return 0;
 }
@@ -546,7 +546,7 @@ memmap_init (unsigned long size, int nid, unsigned long zone,
 	     unsigned long start_pfn)
 {
 	if (!vmem_map) {
-		memmap_init_zone(size, nid, zone, start_pfn,
+		memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
 				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 	} else {
 		struct page *start;
diff --git a/include/linux/mm.h b/include/linux/mm.h
index dae8e599f6c1..f82e73fd5d61 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2439,8 +2439,9 @@ extern int __meminit __early_pfn_to_nid(unsigned long pfn,
 #endif
 
 extern void set_dma_reserve(unsigned long new_dma_reserve);
-extern void memmap_init_zone(unsigned long, int, unsigned long, unsigned long,
-		enum meminit_context, struct vmem_altmap *, int migratetype);
+extern void memmap_init_zone(unsigned long, int, unsigned long,
+		unsigned long, unsigned long, enum meminit_context,
+		struct vmem_altmap *, int migratetype);
 extern void setup_per_zone_wmarks(void);
 extern int __meminit init_per_zone_wmark_min(void);
 extern void mem_init(void);
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index b44d4c7ba73b..f9a37e6abc1c 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -732,7 +732,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
 	 * expects the zone spans the pfn range. All the pages in the range
 	 * are reserved so nobody should be touching them so we should be safe
 	 */
-	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn,
+	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn, 0,
 			 MEMINIT_HOTPLUG, altmap, migratetype);
 
 	set_zone_contiguous(zone);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index fa6076e1a840..5e5b74e88d69 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -448,6 +448,8 @@ defer_init(int nid, unsigned long pfn, unsigned long end_pfn)
 	if (end_pfn < pgdat_end_pfn(NODE_DATA(nid)))
 		return false;
 
+	if (NODE_DATA(nid)->first_deferred_pfn != ULONG_MAX)
+		return true;
 	/*
 	 * We start only with one section of pages, more pages are added as
 	 * needed until the rest of deferred pages are initialized.
@@ -6044,7 +6046,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
  * zone stats (e.g., nr_isolate_pageblock) are touched.
  */
 void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
-		unsigned long start_pfn,
+		unsigned long start_pfn, unsigned long zone_end_pfn,
 		enum meminit_context context,
 		struct vmem_altmap *altmap, int migratetype)
 {
@@ -6080,7 +6082,7 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 		if (context == MEMINIT_EARLY) {
 			if (overlap_memmap_init(zone, &pfn))
 				continue;
-			if (defer_init(nid, pfn, end_pfn))
+			if (defer_init(nid, pfn, zone_end_pfn))
 				break;
 		}
 
@@ -6194,7 +6196,7 @@ void __meminit __weak memmap_init(unsigned long size, int nid,
 
 		if (end_pfn > start_pfn) {
 			size = end_pfn - start_pfn;
-			memmap_init_zone(size, nid, zone, start_pfn,
+			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
 					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 		}
 	}
-- 
2.17.2


--24zk1gE8NUlDmwG9--

