Return-Path: <clang-built-linux+bncBCKPFB7SXUERBTO53D7AKGQEIX3OYTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AAB2D8E27
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:10:06 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id x20sf5957117otk.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:10:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607872205; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8wmrVaoCVg0sPGtmfMGBDLryHbcWJV6denPfLu/g1yIgduBfXFk0RlWZOUClKxdbD
         ddM05QZNj9AK9ANLSMoupxS+HO6mpTElhr0i9ck1sM3dQrlJT2QAFiHWNzNZaMzmc8Ah
         Q6oWAV9/Xsmumn5RXhN1P7wLoF40jM8/JNoDabAJ4+uciiI5Jt7JVs3hSLFgkhsVO3tN
         L0zBzQ22fnvInnirklWh0XxoRy9nLBjR7gEkf3GmITdm5U8AkO0JQK53syKuILqFeWhS
         D3b3mvSRserWEz1k5O+FEsqq8xTBdJBynjO5J5rLELC3tsGWySSySEPr6trrdVP6glIM
         zE3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=0+yWe1JfsjgTbvdl1lcrsYCAknoQi3hKV6A5mUwt4e0=;
        b=C0PM0BEOoV4UZ6a6tK3xuq7S2wgIH+PKVMISMeydip4LQ4zDwXhPw6eSqycxOEOHpX
         wXOxttrMjGvdu33LqI5nHjtAYHJHYkE6AwYAy7ROJb+ieD0hZ8U4NAIKbI0C6Mq4LEhp
         TN0HIKjLlasFWj3MuQzpG34s7raZ18aQ/bPBP2pfR6fyETbnctYe8ntoP10mhf7T4hjz
         rAdsBhEuwVcjcY0yfQ48TF9lfJaWJMlaSdGcjuJeHFFjLWiF2jNuo9Z5SKRuFi4eJUJl
         N3e6UzDHQQFpzYhYwpqXNu6AwFqKdqFUpVucI2TZ0un+iyG4KuDlhQCRj1smKIC5aY2N
         cQWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=O+tBhxk6;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+yWe1JfsjgTbvdl1lcrsYCAknoQi3hKV6A5mUwt4e0=;
        b=Kl3bsyRSYMfwFw5I9l+ltUifRrdEzVAKCi5UwBmN5phN8q3gaNDN8uM6pjDL/Jhx4P
         E4v7RIa6v+Qv0ZNyxUFOi5U558jXDYsuQB+yfR2YfTWG2ELEYUmn0eXYKO3a5953x2l1
         zHDa9ZuxlCtt2Y9InFSmj/lc376awcvqz2qX1a4ym/HTDRikrISulBqVJXuR6AmwNUs+
         LK+B5hloaXEO18gclqQp2pwWkeeuG0kVSFuO4YcTgW9RY9eGwm3QY95yy89cXsJEqKt0
         YacqO8sVDfD6F2eaLONoMIaPwh+CB2PCmjaru/v/eraJkHLZvUJE9qbqXsilUl8Md+Nn
         xqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+yWe1JfsjgTbvdl1lcrsYCAknoQi3hKV6A5mUwt4e0=;
        b=AvNLmrNPhYxf/zgzMBqfnJ9frH3yLEgbSLJ5ePYVMApHjCxp4CaQA+q3igNEpDJFL/
         IN0nNgYv39fseY2VbEYIP6DAVWtjJrIs8NrQ3zA5DpDtAFxwEDS5fy/lG5qYxiZqtrtE
         Y5ErvUSRC7M4ssPO39uIcKZYAVx1EZeYm2sAlaIiVASUC/y/CnCoEMMZqeXqFMHps6RU
         Deq6uZYFF3jt7uC5qj7x7/6OvkAJDu5YQCU+kPYEDJcZwpsIFq3e0VUeDblWyGI4idRe
         GjmQTKOBXTAJqUty/4+MXKz+GCe/PfXTLBOIa+yVARXNFM+9AAAxEjjtqRRk6+cknn+1
         HP6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307VCBbvx2wrHPFtXRWHN7Sh1alsbjcmVqjKDF1vMTzdl++6O87
	n2BT/zwqHba4UaPVt9s1efo=
X-Google-Smtp-Source: ABdhPJx2cWwjq9+lXA6sqHl5SqgMuzse6i/QizR+02lZZi7J7cnV9sSd4ELFz/oNKUDAukwvLIC5Eg==
X-Received: by 2002:aca:4fd6:: with SMTP id d205mr15105251oib.34.1607872205309;
        Sun, 13 Dec 2020 07:10:05 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls3472292oib.0.gmail; Sun, 13
 Dec 2020 07:10:04 -0800 (PST)
X-Received: by 2002:aca:ef44:: with SMTP id n65mr16541334oih.90.1607872204923;
        Sun, 13 Dec 2020 07:10:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607872204; cv=none;
        d=google.com; s=arc-20160816;
        b=ROLzzeMJdFOPiGJKYZy7AdCtgoZEUpXZQE2R0HsmP17Amjcjrz0v1c7T9jKiSCqJ/I
         bN/5nHctn8nfDk0Otjr9QVapq8MMzyNvdcnPM0VKlSA/hz7cmeAk9XAIHBzIu89dJI9V
         tQMzyzH4E8MiUdT0eKhVbrzDkivlF0KSZh46mGcPrnL+R6RHFy52FEJ1CPAzYRoxuIpF
         JLem4y1SLCFt0pwXon/hut2DTPVn0vLQZ2km572E/a+jKM9zYoC5a/8gvThtuO0ZosXY
         /WTe9bSk3J6gNIugGYAi+ij3Zo1BImhKfhwlISc18jW9n4erLeeYoNQYnKCUPFavYcLs
         ssdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EH8l5NNbN5CTOXnKe4zyfMp4u/GKMzt70+znMJgfEM8=;
        b=OnYRjpjmyQVY57KIbWakobIj/JHXsEGxRHy9KeFqtYaG30VQMjoD8e+mj35e9ZQUMD
         Aq8+BmDyubJpSRVWknlPNF3dOcsHXpC+cgeFM3AoKEqqmOIQw3eArYfZpVCZ1CbRdG76
         kiGM/+SJwkOhdeDq6QlfUrOe/wFVoKEuRCNv3rCTiELTq7VDo54xkNTJ/WSA3xlJR94r
         v+F59OlG8cretFBPzu0aDQriCw6zk+/j1XwGoD0xQswoQiPQnw+UjbykvqlY0hqbYMop
         aWiSKOVWkAXMnKgX8DJw1uxvifCQz+WVc9Q+sci1iVfA2YIKZGlE/L/UJmhvEGsMb/cz
         sMCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=O+tBhxk6;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w68si1135335oia.4.2020.12.13.07.10.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:10:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-Xc4-BrIXO1GJby17ud5i0A-1; Sun, 13 Dec 2020 10:10:02 -0500
X-MC-Unique: Xc4-BrIXO1GJby17ud5i0A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7252A801817;
	Sun, 13 Dec 2020 15:09:59 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (ovpn-12-67.pek2.redhat.com [10.72.12.67])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F2CEB19713;
	Sun, 13 Dec 2020 15:09:54 +0000 (UTC)
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
Subject: [PATCH 2/2] mm: rename memmap_init() and memmap_init_zone()
Date: Sun, 13 Dec 2020 23:09:42 +0800
Message-Id: <20201213150942.20990-3-bhe@redhat.com>
In-Reply-To: <20201213150942.20990-1-bhe@redhat.com>
References: <20201213150942.20990-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=O+tBhxk6;
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

The current memmap_init_zone() only handles memory region inside one zone.
Actually memmap_init() does the memmap init of one zone. So rename both of
them accordingly.

And also rename the function parameter 'range_start_pfn' and local variable
'range_end_pfn' to zone_start_pfn/zone_end_pfn.

Signed-off-by: Baoquan He <bhe@redhat.com>
---
 arch/ia64/mm/init.c |  6 +++---
 include/linux/mm.h  |  2 +-
 mm/memory_hotplug.c |  2 +-
 mm/page_alloc.c     | 16 ++++++++--------
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index 27ca549ff47e..af678197ac2d 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -535,18 +535,18 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
 		    / sizeof(struct page));
 
 	if (map_start < map_end)
-		memmap_init_zone((unsigned long)(map_end - map_start),
+		memmap_init_range((unsigned long)(map_end - map_start),
 				 args->nid, args->zone, page_to_pfn(map_start), page_to_pfn(map_end),
 				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 	return 0;
 }
 
 void __meminit
-memmap_init (unsigned long size, int nid, unsigned long zone,
+memmap_init_zone (unsigned long size, int nid, unsigned long zone,
 	     unsigned long start_pfn)
 {
 	if (!vmem_map) {
-		memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
+		memmap_init_range(size, nid, zone, start_pfn, start_pfn + size,
 				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 	} else {
 		struct page *start;
diff --git a/include/linux/mm.h b/include/linux/mm.h
index cd5c313729ea..3d81ebbbef89 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2439,7 +2439,7 @@ extern int __meminit __early_pfn_to_nid(unsigned long pfn,
 #endif
 
 extern void set_dma_reserve(unsigned long new_dma_reserve);
-extern void memmap_init_zone(unsigned long, int, unsigned long,
+extern void memmap_init_range(unsigned long, int, unsigned long,
 		unsigned long, unsigned long, enum meminit_context,
 		struct vmem_altmap *, int migratetype);
 extern void setup_per_zone_wmarks(void);
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 47b75da63f01..579762e4f8d8 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -714,7 +714,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
 	 * expects the zone spans the pfn range. All the pages in the range
 	 * are reserved so nobody should be touching them so we should be safe
 	 */
-	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn, 0,
+	memmap_init_range(nr_pages, nid, zone_idx(zone), start_pfn, 0,
 			 MEMINIT_HOTPLUG, altmap, migratetype);
 
 	set_zone_contiguous(zone);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 315c22974f0d..fac599deba56 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6050,7 +6050,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
  * (usually MIGRATE_MOVABLE). Besides setting the migratetype, no related
  * zone stats (e.g., nr_isolate_pageblock) are touched.
  */
-void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
+void __meminit memmap_init_range(unsigned long size, int nid, unsigned long zone,
 		unsigned long start_pfn, unsigned long zone_end_pfn,
 		enum meminit_context context,
 		struct vmem_altmap *altmap, int migratetype)
@@ -6187,21 +6187,21 @@ static void __meminit zone_init_free_lists(struct zone *zone)
 	}
 }
 
-void __meminit __weak memmap_init(unsigned long size, int nid,
+void __meminit __weak memmap_init_zone(unsigned long size, int nid,
 				  unsigned long zone,
-				  unsigned long range_start_pfn)
+				  unsigned long zone_start_pfn)
 {
 	unsigned long start_pfn, end_pfn;
-	unsigned long range_end_pfn = range_start_pfn + size;
+	unsigned long zone_end_pfn = zone_start_pfn + size;
 	int i;
 
 	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
-		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
-		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
+		start_pfn = clamp(start_pfn, zone_start_pfn, zone_end_pfn);
+		end_pfn = clamp(end_pfn, zone_start_pfn, zone_end_pfn);
 
 		if (end_pfn > start_pfn) {
 			size = end_pfn - start_pfn;
-			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
+			memmap_init_range(size, nid, zone, start_pfn, zone_end_pfn,
 					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 		}
 	}
@@ -6903,7 +6903,7 @@ static void __init free_area_init_core(struct pglist_data *pgdat)
 		set_pageblock_order();
 		setup_usemap(pgdat, zone, zone_start_pfn, size);
 		init_currently_empty_zone(zone, zone_start_pfn, size);
-		memmap_init(size, nid, j, zone_start_pfn);
+		memmap_init_zone(size, nid, j, zone_start_pfn);
 	}
 }
 
-- 
2.17.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201213150942.20990-3-bhe%40redhat.com.
