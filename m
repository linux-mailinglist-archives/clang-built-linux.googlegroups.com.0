Return-Path: <clang-built-linux+bncBCKPFB7SXUERBSO53D7AKGQEKXWX7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC85B2D8E26
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:10:02 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id w84sf6136231oib.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:10:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607872201; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPvwVtaVyk6d3UXWqy9sCyZG0Fpo9EpxwTdne1kIdwNHJ85UUUizPrlGK8hjU6F75D
         Pixf/Wwa7LyJ5vVK6FXmPSgcd67fhTS21lsMo5y2d8W8osdOY5IvoOs+Cx/wSyZX3tTO
         2c4SE9JqW/MS9Hw1ODve1K+T8R0t5zURFUWFZ+zXgKaj2qplwhFse17VIkB5YjwJssMp
         QjpNlcz82rZlWfOm7fCGSypGvMrhR05pSklhO2tXWeSPPGxGyCuvV0eycqVqJjQBgOPv
         LMf6LeNcWa3Juwz6KxDszsxXo+j8k+iBWAdkUynUNxQ3VuwYE6LvzrlTDStcve4tOIr7
         CuJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=+o5QvAs4DP5IzCF0Jdn84j1wpqQ3Nsxi87lL530Ki4Q=;
        b=cZWzZYg7luIObYoSMaTZ0H6+FVZ6PCFlM+9+IYyO8/Mbi/wprgvb+lxgd8ziXMt08u
         A1HACXm2VjFVDo/rtW8KEssbXBPQz/OyR68rwKVQ/wr49ZQbpQ+JQ0rNl+SdZJILi+pG
         xO4BX7zAmeMU3pHfFyJZv/nLQzmQKrWTzxfkRFL2YOagXSZhz4gZHY93tq22xDe6IdDP
         +mVMEBX5YMZp9KH/Vk2VGjEJm4Y09JHIv9yfijNMLeu4GWFzWc1q0Lhr3FqvmLJHOCui
         7u1VSAdfSgmUbgf6F4G3s2BjhTNBd31fXggic7ZBsjraDOTQBf6ePUOQMO7J04WPFIr+
         4Qhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bB3YVwZQ;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+o5QvAs4DP5IzCF0Jdn84j1wpqQ3Nsxi87lL530Ki4Q=;
        b=enmNC2nTzJh44fgNa1U/DrTAvCc9137LlOdLwVjLXDwfoeO3vJlLuywvOiEcqLcqWE
         9PimqMHN9KEe51UqOyyFs6YlnjTZUswfvHMsWmCBqL9rNRhmWg4Ik85XX2CyI3feaU1P
         99lCx/AMhHifxJPzfMjofh32CRGXucFY4EAPvq7wtVaCJa2+ZmM0N8v5+3m1ZssRsneL
         3qjoBwB8HRrWtBR7OPjhE+sKKrKdNjj6WONmBwitTwQ5P7auW5eFlbajLGykwVKX0tMH
         d2OQpJBG7ZI+99hhef3ZTYtrdFstm0bwREM2On5230GzUVJ02v9vQQ1y++ihfSY+Gj3C
         XzXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+o5QvAs4DP5IzCF0Jdn84j1wpqQ3Nsxi87lL530Ki4Q=;
        b=L4ie4FQBNonLK8DoTQLn1FkHV8y4NoyOsrQoy0njIBAKogeWMVkAlaDu87yipggw0n
         l17G0pUpBj3/DAL7yGo7gbbnDUpDenzqlCscsewuSYzXzIuJnGW/cO6O2v+Scatzb/CB
         VJErITsRQbYBpDgQa/tUcOlV4ZMikP5qnCwQ+ZrA8DAFJMD7a/M7KFlsdAuCXdPSkQ03
         B9A6+kUid+6K0zystlKn6FLDaSvbyMX2+VXWGS97OcWEqN+aOXPad+x2N0kofZ0u4wqU
         zeOiAMJi0L5iGUThMKCpxs2ocGFD4w9e1z+jO8P6In5GrzQlaDBv7ZNejMmsMHRdKnC0
         /JXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531agihvZ4yf22pBbignPLJEb4cKhNuicUv2378b7qUHOV587k2y
	+yq8waqSg/qC8nEcFKhFmdA=
X-Google-Smtp-Source: ABdhPJy3bURQVnVc4o2/t2+A1J2JpkuxgFBNpPZTpxbQ/ok69OfahjCVsm+BMB/M61ZKailLXMPAug==
X-Received: by 2002:aca:5792:: with SMTP id l140mr15610102oib.175.1607872201715;
        Sun, 13 Dec 2020 07:10:01 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls3661832oto.8.gmail; Sun, 13 Dec
 2020 07:10:01 -0800 (PST)
X-Received: by 2002:a9d:70d9:: with SMTP id w25mr16564800otj.0.1607872201313;
        Sun, 13 Dec 2020 07:10:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607872201; cv=none;
        d=google.com; s=arc-20160816;
        b=m9LqsduLyXAkj71VNU5BKwqpUKZyd8DX+Q1I354ygFDEN4GP6l7dAjvuORh66Xpx9E
         qXuSmZXt7z7oV5jTLTmJpOxswptoujq1MU7KTvRR8GzA95v17dXS3cJUTiS45VDNFbAV
         /N3NhmD4+g3U8urpUXnuyB7XDAL++RU0/g2Z1oqwZp7LlKw3sKR+l+D0DKoOEaBln1+x
         R7dLXNrX3qD+nFM+mspKwEh4UU4CDjcdoLrNPOBg8ehhk0Ahudz+PfLBECmZ8NBSRuzM
         ApDtat20fh4eJrIqy3TEF0gBdfZYlcaqfvhOMVx039ztplEAXG12cTC96nqhB1bX/G0g
         l+1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7AiWjiRwoFuVguUHicTe3J8NsuvvevCQse+B624icC0=;
        b=LavPeF9x3SByk7rgl1QGFmu1u5LRGMnUcVWmtdJStd7U8hrGOcy7UxX8VBoAQ2tY5B
         M9Ud/FCVrCt2o8hbgrQDlTzQWf1lZ+iA6fJhCGQpNaFRL63bWnUkbRSkidXDEPURtGqu
         aiaCiAUo3JTWv2yxwOiQU+rOMS/Pua3FFQXW66e+k1UgoXs35Mk4Y+6nahJX7/pDtpRd
         IEEcrRc+WO+yGMwdalcBa96dYSgtgHK9jJ/Qf6josENDj15yVPSOmqijnc03ZRW2s9ks
         UbR7ZA6FNa7GPZe3QYtjYmAya5apHvkheqCbRwstjKnvMAtvWVPfOhoVdXuSfKACbj0R
         bFDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bB3YVwZQ;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f20si1091883oig.2.2020.12.13.07.10.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:10:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-i7wNrPFxONKNQG7pGOye6w-1; Sun, 13 Dec 2020 10:09:56 -0500
X-MC-Unique: i7wNrPFxONKNQG7pGOye6w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 758A6803620;
	Sun, 13 Dec 2020 15:09:54 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (ovpn-12-67.pek2.redhat.com [10.72.12.67])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1BB9F19713;
	Sun, 13 Dec 2020 15:09:49 +0000 (UTC)
From: Baoquan He <bhe@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org,
	gopakumarr@vmware.com,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	rostedt@goodmis.org,
	manir@vmware.com,
	lauyiuch@vmware.com,
	pjonasson@vmware.com,
	rajaramv@vmware.com
Subject: [PATCH 1/2] mm: memmap defer init dosn't work as expected
Date: Sun, 13 Dec 2020 23:09:41 +0800
Message-Id: <20201213150942.20990-2-bhe@redhat.com>
In-Reply-To: <20201213150942.20990-1-bhe@redhat.com>
References: <20201213150942.20990-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bB3YVwZQ;
       spf=pass (google.com: domain of bhe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Content-Type: text/plain; charset="UTF-8"
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

VMware observed a performance regression during memmap init on their platform,
and bisected to commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock
regions rather that check each PFN") to cause it.

Before the commit:

  [0.033176] Normal zone: 1445888 pages used for memmap
  [0.033176] Normal zone: 89391104 pages, LIFO batch:63
  [0.035851] ACPI: PM-Timer IO Port: 0x448

With commit

  [0.026874] Normal zone: 1445888 pages used for memmap
  [0.026875] Normal zone: 89391104 pages, LIFO batch:63
  [2.028450] ACPI: PM-Timer IO Port: 0x448

The root cause is the current memmap defer init doesn't work as expected.
Before, memmap_init_zone() was used to do memmap init of one whole zone, to
initialize all low zones of one numa node, but defer memmap init of the
last zone in that numa node. However, since commit 73a6e474cb376, function
memmap_init() is adapted to iterater over memblock regions inside one zone,
then call memmap_init_zone() to do memmap init for each region.

E.g, on VMware's system, the memory layout is as below, there are two memory
regions in node 2. The current code will mistakenly initialize the whole 1st
region [mem 0xab00000000-0xfcffffffff], then do memmap defer to iniatialize
only one memmory section on the 2nd region [mem 0x10000000000-0x1033fffffff].
In fact, we only expect to see that there's only one memory section's memmap
initialized. That's why more time is costed at this time.

[    0.008842] ACPI: SRAT: Node 0 PXM 0 [mem 0x00000000-0x0009ffff]
[    0.008842] ACPI: SRAT: Node 0 PXM 0 [mem 0x00100000-0xbfffffff]
[    0.008843] ACPI: SRAT: Node 0 PXM 0 [mem 0x100000000-0x55ffffffff]
[    0.008844] ACPI: SRAT: Node 1 PXM 1 [mem 0x5600000000-0xaaffffffff]
[    0.008844] ACPI: SRAT: Node 2 PXM 2 [mem 0xab00000000-0xfcffffffff]
[    0.008845] ACPI: SRAT: Node 2 PXM 2 [mem 0x10000000000-0x1033fffffff]

Now, let's add a parameter 'zone_end_pfn' to memmap_init_zone() to pass
down the read zone end pfn so that defer_init() can use it to judge whether
defer need be taken in zone wide.

Fixes: commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock regions rather that check each PFN")
Signed-off-by: Baoquan He <bhe@redhat.com>
Cc: stable@vger.kernel.org

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
index db6ae4d3fb4e..cd5c313729ea 100644
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
index 63b2e46b6555..47b75da63f01 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -714,7 +714,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
 	 * expects the zone spans the pfn range. All the pages in the range
 	 * are reserved so nobody should be touching them so we should be safe
 	 */
-	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn,
+	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn, 0,
 			 MEMINIT_HOTPLUG, altmap, migratetype);
 
 	set_zone_contiguous(zone);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index eaa227a479e4..315c22974f0d 100644
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
@@ -6049,7 +6051,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
  * zone stats (e.g., nr_isolate_pageblock) are touched.
  */
 void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
-		unsigned long start_pfn,
+		unsigned long start_pfn, unsigned long zone_end_pfn,
 		enum meminit_context context,
 		struct vmem_altmap *altmap, int migratetype)
 {
@@ -6085,7 +6087,7 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 		if (context == MEMINIT_EARLY) {
 			if (overlap_memmap_init(zone, &pfn))
 				continue;
-			if (defer_init(nid, pfn, end_pfn))
+			if (defer_init(nid, pfn, zone_end_pfn))
 				break;
 		}
 
@@ -6199,7 +6201,7 @@ void __meminit __weak memmap_init(unsigned long size, int nid,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201213150942.20990-2-bhe%40redhat.com.
