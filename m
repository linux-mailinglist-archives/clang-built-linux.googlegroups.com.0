Return-Path: <clang-built-linux+bncBCKPFB7SXUERB6WRS36AKGQEL6DGCJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0579928CF06
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 15:17:48 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id s14sf5320780vsi.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 06:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602595067; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYy1iK1fzMT1TBK9wHIppPmqHGDQrQOo0Jgwi4yA8yMkdda6xeasvcpcTSuKF23Jpt
         ih/aSIrdYigq6uvgsxk5GUu8KxE41lX3ILi2ZV+2NBkyj42A0D8Tj9z+hdP/t6Lf3QfU
         wqvTmDGXRO38si4lC4O9QoND0PT0hCaPGG6duJxaHeu2F5d4W5NRtTFpMzeoNSbO50Aw
         7cpVbslkz0FcRlt7H1GJiQVPMAEqhXnUyWpkHxByT6uAO2FHTJ7NzT8htHBo3d95U3OT
         SM0lf/1e2dpDVFSEwMJvkOutZYNVEflTGiuJs6eFI8jVn6mnStIsgpRFjUSHkkaeixag
         DY0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UnXgPWnRmcfb2sbpVCEmjjDliCpKbNliumUjx8goosU=;
        b=kI4UKl22+iRtU5If7/2tL+ZJQx5ptQ5S22uUhoS3CBX8UAiNbMtHqQ7t2H6+sG4rXi
         V7Tz1N4PqFJq1Rq9VSJ8hfC8dlPV00I9nUg3Ywjd4KKruIXggq8Gc9ZLlFN8UuGZ3qTe
         yWQ7etA5eSDGGax7dGX/eir520m0xTXUzYY1x/qQU0dC35DHvnB6lgfdLBDfFhUyObZj
         aWQkm2rELbi0tTEpdZ7hdp0h6Th72bfWm+UPAeZN+NDWKFRvazq+j2HSCJipBKPC2Srz
         eNuhvaCed9Z3vT8h1GEDEujSrDnq1anl1uUOeVDQz+PDO3M6R3DH/BxnkzbMsZ4dO5SM
         zyPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="DdzPx/ib";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UnXgPWnRmcfb2sbpVCEmjjDliCpKbNliumUjx8goosU=;
        b=doK3jtbL6sLwaleYlCHQ9XIHFxccqbBqrv0/Igaejpoczl1+wxX0NEt3OElHaEmCvp
         mV322qz2fMf05FpLLwIexey7bRA0TnKU0aIYa43GOnI8tI+k7+cQVmQk+eFIeeA9Dtat
         bA1C5BanQ6lQhHybDv898CNuAvXXReeFHFgAZiAOi4qghEegMZbQpzPsKyaSeoC4o96X
         j+wKu0HMQNDe/ijxZe1HJntBotqTfBfrMs6+YRW/LpW2FYJd3xxcB7zH2gmWczuwIqsw
         mkD/9GB/l75Bt0F+Gifh9x94e0KuGYfyV5y95y3IpZz7Hn7+LeRqllqKXEYNPu7r/J2z
         jeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnXgPWnRmcfb2sbpVCEmjjDliCpKbNliumUjx8goosU=;
        b=h0JJdjUWH6CssDgCC4lc1NimDAabL6cxcouAYsfmWcKKqd59P1qZa3YePGZDQmGLfK
         OcJhlyTrBWSvcoOaEVDleVEO8Rnk2boK+FzZ7OtAOTAmNNiB3OAausFhEPuPFlKBswKu
         wmOR0Pv3zfqRlai/InpydefJ+j9OoQvp/odrwl67f6zRr038cmkp+7suFyzWZDA2qWwG
         zmROffTsiPokHkR4k0iIGIQUqYK17HPHRiNRu0wcPZPkbu03t2dzV9f5hvtQNhjA64l1
         hT0ndkOEeARcrO80SMfGnx8K+PRquISEZXZJ1zTfW74dCwzZ40l1q5qtWdd/NT/50tro
         cw9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316heheeDWArtvtvjsvtBHTYgg0YVVuSJAbP0H3p0n0FCsj1JXe
	C9p4iEwatmFNE+THm71ZwEo=
X-Google-Smtp-Source: ABdhPJxyUKgidIsqbMRriWehkz7nqHWUMENsl5SbR4t+r43Y+4oj+EauczLl0NhifVFJ7ez6Zj74FQ==
X-Received: by 2002:a67:d710:: with SMTP id p16mr17482151vsj.28.1602595066926;
        Tue, 13 Oct 2020 06:17:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4754:: with SMTP id i20ls1350945uac.0.gmail; Tue, 13 Oct
 2020 06:17:46 -0700 (PDT)
X-Received: by 2002:ab0:55:: with SMTP id 79mr15627915uai.59.1602595066347;
        Tue, 13 Oct 2020 06:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602595066; cv=none;
        d=google.com; s=arc-20160816;
        b=nO64XXnolAfcmuNmhL0EVsJp6U3Tz/5xEC7beZFMzpwy+88zaFQo5PkDajh1L1V+Dw
         9BCF8hxBlErbCHqaCUpYJ9meCi51GwFWwCjhHz1elUYrUgdOTGRmJnLRh/rEqEPKLRoQ
         RQ9I0MraOU39s1xcv0r3OzJNN0229riUs95ug3qFSSFVYDF2fYGkY3v6oMzSI3qyYBok
         oxVar1XBbfhK/bwTYWp6lItDO+ynNEqkYHVltc+zIXZACEW9Grt8+JUl/U2K2z8vq4LM
         nT4zoJAcwup+7/g6x5+L+8phlCGr5gE5XTJDUz79gzD0UumXnMFNeUGrpz9TzadR7inh
         aXxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=akz97Nl+IxgVygciBQstiiS9v+v6tNAa1jQ97vPRDuI=;
        b=vbkaF/kgt4p232K0hNfMwJF5sWk1E0OjuiIs6eBn0OhsDMKPGsKZiLkNzWGrUPCY+7
         PNtrPW4nd7o3rWnTGAVvXlF1sb0NC7L3rfShdCEi/wiiQlpJTRi8SyqsIvd3sGH7UAvK
         kRxqmpooRp8zMk1ZxWnkjiLhiDc3qC/tCcb87u8eFbAy0UlW+kbJ/Ozlhc98uGN5iGh5
         OChgcUFsQZIKwtnWWZNMw7n+/g0ErQIyObxelzyRvs09Bil6J3EO6GT8tJaC5gD2Ud12
         ngDihSpb5gUlZGosj6Ajd6EMoVrc4snhsy8I7N4uieOPBOf4qc+GriMRuq18ovCwOCrd
         1sEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="DdzPx/ib";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id e7si102219vko.4.2020.10.13.06.17.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 06:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-408-jSpVPhPkP9m3OhnZ_viipA-1; Tue, 13 Oct 2020 09:17:42 -0400
X-MC-Unique: jSpVPhPkP9m3OhnZ_viipA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 129936408B;
	Tue, 13 Oct 2020 13:17:40 +0000 (UTC)
Received: from localhost (ovpn-12-47.pek2.redhat.com [10.72.12.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C85DD1002C00;
	Tue, 13 Oct 2020 13:17:38 +0000 (UTC)
Date: Tue, 13 Oct 2020 21:17:35 +0800
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
Message-ID: <20201013131735.GL25604@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="DdzPx/ib";
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

Hi Rahul,

On 10/12/20 at 05:21pm, Rahul Gopakumar wrote:
> Hi Baoquan,
> 
> Attached collected dmesg logs for with and without
> commit after adding memblock=debug to kernel cmdline.

Can you test below draft patch and see if it works for you? 

From a2ea6caef3c73ad9efb2dd2b48039065fe430bb2 Mon Sep 17 00:00:00 2001
From: Baoquan He <bhe@redhat.com>
Date: Tue, 13 Oct 2020 20:05:30 +0800
Subject: [PATCH] mm: make memmap defer init only take effect per zone

Deferred struct page init is designed to work per zone. However since
commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock regions
rather that check each PFN"), the handling is mistakenly done in all memory
ranges inside one zone. Especially in those unmovable zones of multiple nodes,
memblock reservation split them into many memory ranges. This makes
initialized struct page more than expected in early stage, then increases
much boot time.

Let's fix it to make the memmap defer init handled in zone wide, but not in
memory range of one zone.

Signed-off-by: Baoquan He <bhe@redhat.com>
---
 arch/ia64/mm/init.c | 4 ++--
 include/linux/mm.h  | 5 +++--
 mm/memory_hotplug.c | 2 +-
 mm/page_alloc.c     | 6 +++---
 4 files changed, 9 insertions(+), 8 deletions(-)

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
index ef360fe70aaf..5f9fc61d5be2 100644
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
index 2ebf9ddafa3a..e8b19fdd18ec 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6044,7 +6044,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
  * zone stats (e.g., nr_isolate_pageblock) are touched.
  */
 void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
-		unsigned long start_pfn,
+		unsigned long start_pfn, unsigned long zone_end_pfn,
 		enum meminit_context context,
 		struct vmem_altmap *altmap, int migratetype)
 {
@@ -6080,7 +6080,7 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 		if (context == MEMINIT_EARLY) {
 			if (overlap_memmap_init(zone, &pfn))
 				continue;
-			if (defer_init(nid, pfn, end_pfn))
+			if (defer_init(nid, pfn, zone_end_pfn))
 				break;
 		}
 
@@ -6194,7 +6194,7 @@ void __meminit __weak memmap_init(unsigned long size, int nid,
 
 		if (end_pfn > start_pfn) {
 			size = end_pfn - start_pfn;
-			memmap_init_zone(size, nid, zone, start_pfn,
+			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
 					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 		}
 	}
-- 
2.17.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013131735.GL25604%40MiWiFi-R3L-srv.
