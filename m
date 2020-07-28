Return-Path: <clang-built-linux+bncBAABBTHH734AKGQEF32JD3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F5230131
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:12:45 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id m19sf1292413uab.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913165; cv=pass;
        d=google.com; s=arc-20160816;
        b=sf6NUeYOE6YlTq+VO7ncAYo2eWGjbbRtBdu0njpY56dUs/fWbvL8znrZ2lc8Yyku2J
         aCJt1bCxk6tv2my7NV7zBnQDoD6pFwxnbp7NKxL+3oAUKAmuRjVFkMcVdElL97wMY4+x
         nxydSMgUb08x6WBKRzNhv+RRV/DoQgO9cPjnjl52nkcFR9pcUkfWVzvDBNBVEaknG7N9
         4kBku8hk76bo/SfmSluhv85kR5TnFvEBZm1v9jWzt0Wubr1bPQG8Hyjs2/3zvUhv6tqg
         2RuH5euModzzM8F0PQ8mpKA4Tp3JsHFCmUfTe4D6LvqK5zd8rMIA5de/qrXCwglh1K4u
         Gr1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=coeA1eVXpf5v5pikjfXtD3/Czz7JoSxlrZtTPeBtoDc=;
        b=zCrzTOun8bZ6jvdtV/V5tsL6j1o90eLMIXhrZN85gWhE7KUbqx9p3BADyL2u3P3Jv4
         EChqCoQBIUXlcmfeqxMI6KtC7WCrgQCIibV/NU3RJmjUrPEzATfu7r/6rSU8o8pmW1Ml
         HRZ+cvRW56JM/Nio/3eLpOkHWt/DtbtDH5MVM6T10scVy0v6xO7K5C7BgGu76a8LKROr
         +K42Yz+UyzG4hU1HtGgdNQzNWOrsBnwnbwc56W2kIzjxI9cc27yvwvJH3ONhR0uukBn6
         rfSmg1JEzhhKC/1okvoRnFXr3B6RtbsoC0STg8dc4XvB3UpgjmbFPqGv9V1d+3uT2Dt1
         vukw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x+PwdBnF;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=coeA1eVXpf5v5pikjfXtD3/Czz7JoSxlrZtTPeBtoDc=;
        b=kX1gFUl/8+iYotJfsbauWLeBJA4yGs1D3fRevqmnFp12QxlO3tEpDcjgguUWK4h7Xk
         nkTcFV3vYKPrNryjg9wx+G+Yws30CDkUGubbfsDuSj9ucTwZocUg3cXKyG2f0gsRUT7U
         v+NktQCvqoPDOeYW5mR3tYjTHullPVYi+u1odjG+ss/AkkdrNRt1SUIkK325c8kKGL+w
         qriV0ISQBs1v1mmLRxseC2YUnsqzSDxeZoohtWq7Sp4cH7Hs7Zcrf/lNM7h7cRs9cYqs
         jXvqZNsfxM9vkhoDy8qMfphCjKOrKYGZhYhdSx0OIDXk8ChWu7hjjwtcpLGD1jjPYAtM
         Of0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=coeA1eVXpf5v5pikjfXtD3/Czz7JoSxlrZtTPeBtoDc=;
        b=Q5cfJVfGtsa9Y2csLQK6mSsV/M72SHakWV5QqdPWS7khCbETVjfY2Sdr+yO1D8R+nG
         QRMGn4bMq2U3e0HjBoc/DTGef9Uy3fNVa3c/IhTiDA2ifu4XK/gn8Q8iWsLiz6GRpwav
         90caXafdemKAD0BRN8Fjg+tBGg48edXN2KtfM6Fc/FKshymeoPLDdZSD/kVv5rnFYan2
         BbH3hm4Mr6ov8Ndlk/U2MBgtL1LXgjpP0OzpC3IvANNj8ugDHCc5C7P0mZyoaBvDE+sq
         wq6q22zdqPu+GR9L2wHJxoEEXlCFH66dgF5dP50Q5GF7AvLqOlsv+enaBB2W3IMcekQo
         br1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Negd2NeV8IMSAdCDQyXCOPpMXvlTLxtopawpcGJ3MuH9NkTIs
	kpxPhKv65tzcu5HVXZtU7oo=
X-Google-Smtp-Source: ABdhPJzja3HmK2wC8OQ1aUpVgChqVXxhK3GW3NS2G2bs/aHOJkqvXMOCykcjmiRZhQjo2kOM4B/L8Q==
X-Received: by 2002:a1f:1ec6:: with SMTP id e189mr2889134vke.32.1595913164839;
        Mon, 27 Jul 2020 22:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3354:: with SMTP id h20ls1281929uap.10.gmail; Mon, 27
 Jul 2020 22:12:44 -0700 (PDT)
X-Received: by 2002:a9f:3806:: with SMTP id p6mr18762730uad.101.1595913164594;
        Mon, 27 Jul 2020 22:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913164; cv=none;
        d=google.com; s=arc-20160816;
        b=jNGGbmVnpvdYp4NOdZ2F0MeHwxNElWlAczCkmpMaMU/dlvQXixxE5fEdnhc0QuT9tm
         n0ii3fme6Pjy3amE1SznwNUoZZGN3sZdQzPZEVMdeiMjbND7MfamH2srKLPivfEj/goE
         lyQHzYouJAFVg3B4PUyFuDzTI3Lvh0GAWjqPvj5yZaVL1TVb2viT/IsyvF4JX+Kaikk0
         +yu2Wo4wGtMVBqqMUjzQMfMdwUJfn1HRxH1s5/H93UrSVvLeR7O7USJ1E6twBOANrHfI
         vKeo95dqL0j6agQ4fZsZyizawZn9mVA3EDxBSqK6sjPf2M+pz5Ira2eDKfML7ebCMQFS
         P4CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g31UF4NnU2coH8tkDWR20tNCoHrZ7Zy1ZtkCH1uo6o4=;
        b=ZvNk8qG57iaTknaGsRC93OHXE5oc/hkQe2Yb0zJf+b9GqXJKSSctb8n7nrHHhf63qA
         L/s1NX1o+hWH1cKSUH6J31sVFeusnx9dJ2c60WE+NP+yWu+sMpoK1+hDRGEVJ8CUnoah
         WRNiHRHDukdAKNq5Eh+paVv7JTVS0QzXZNFijQHdfTYqycZIPLf+SKCnjMT2FuYoDF3C
         g1aVze5oEM11IM4UN1OQW5urg7Lx5zfdzQlxqS7cIIcXQFeScQhsLZf5LV0cYEqDZhYf
         gdEQYkZGELcyhOsJCGax8TmNzIH1HMoS8qj4chV5m27iNjeVDWQK3cnox/TdmI4OE3I2
         9X1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x+PwdBnF;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o66si535771vkc.0.2020.07.27.22.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 062C32177B;
	Tue, 28 Jul 2020 05:12:33 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org,
	linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-mm@kvack.org,
	linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org,
	linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org,
	sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp,
	x86@kernel.org
Subject: [PATCH 03/15] arm, xtensa: simplify initialization of high memory pages
Date: Tue, 28 Jul 2020 08:11:41 +0300
Message-Id: <20200728051153.1590-4-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x+PwdBnF;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Mike Rapoport <rppt@linux.ibm.com>

The function free_highpages() in both arm and xtensa essentially open-code
for_each_free_mem_range() loop to detect high memory pages that were not
reserved and that should be initialized and passed to the buddy allocator.

Replace open-coded implementation of for_each_free_mem_range() with usage
of memblock API to simplify the code.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm/mm/init.c    | 48 +++++++------------------------------
 arch/xtensa/mm/init.c | 55 ++++++++-----------------------------------
 2 files changed, 18 insertions(+), 85 deletions(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 01e18e43b174..626af348eb8f 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -352,61 +352,29 @@ static void __init free_unused_memmap(void)
 #endif
 }
 
-#ifdef CONFIG_HIGHMEM
-static inline void free_area_high(unsigned long pfn, unsigned long end)
-{
-	for (; pfn < end; pfn++)
-		free_highmem_page(pfn_to_page(pfn));
-}
-#endif
-
 static void __init free_highpages(void)
 {
 #ifdef CONFIG_HIGHMEM
 	unsigned long max_low = max_low_pfn;
-	struct memblock_region *mem, *res;
+	phys_addr_t range_start, range_end;
+	u64 i;
 
 	/* set highmem page free */
-	for_each_memblock(memory, mem) {
-		unsigned long start = memblock_region_memory_base_pfn(mem);
-		unsigned long end = memblock_region_memory_end_pfn(mem);
+	for_each_free_mem_range(i, NUMA_NO_NODE, MEMBLOCK_NONE,
+				&range_start, &range_end, NULL) {
+		unsigned long start = PHYS_PFN(range_start);
+		unsigned long end = PHYS_PFN(range_end);
 
 		/* Ignore complete lowmem entries */
 		if (end <= max_low)
 			continue;
 
-		if (memblock_is_nomap(mem))
-			continue;
-
 		/* Truncate partial highmem entries */
 		if (start < max_low)
 			start = max_low;
 
-		/* Find and exclude any reserved regions */
-		for_each_memblock(reserved, res) {
-			unsigned long res_start, res_end;
-
-			res_start = memblock_region_reserved_base_pfn(res);
-			res_end = memblock_region_reserved_end_pfn(res);
-
-			if (res_end < start)
-				continue;
-			if (res_start < start)
-				res_start = start;
-			if (res_start > end)
-				res_start = end;
-			if (res_end > end)
-				res_end = end;
-			if (res_start != start)
-				free_area_high(start, res_start);
-			start = res_end;
-			if (start == end)
-				break;
-		}
-
-		/* And now free anything which remains */
-		if (start < end)
-			free_area_high(start, end);
+		for (; start < end; start++)
+			free_highmem_page(pfn_to_page(start));
 	}
 #endif
 }
diff --git a/arch/xtensa/mm/init.c b/arch/xtensa/mm/init.c
index a05b306cf371..ad9d59d93f39 100644
--- a/arch/xtensa/mm/init.c
+++ b/arch/xtensa/mm/init.c
@@ -79,67 +79,32 @@ void __init zones_init(void)
 	free_area_init(max_zone_pfn);
 }
 
-#ifdef CONFIG_HIGHMEM
-static void __init free_area_high(unsigned long pfn, unsigned long end)
-{
-	for (; pfn < end; pfn++)
-		free_highmem_page(pfn_to_page(pfn));
-}
-
 static void __init free_highpages(void)
 {
+#ifdef CONFIG_HIGHMEM
 	unsigned long max_low = max_low_pfn;
-	struct memblock_region *mem, *res;
+	phys_addr_t range_start, range_end;
+	u64 i;
 
-	reset_all_zones_managed_pages();
 	/* set highmem page free */
-	for_each_memblock(memory, mem) {
-		unsigned long start = memblock_region_memory_base_pfn(mem);
-		unsigned long end = memblock_region_memory_end_pfn(mem);
+	for_each_free_mem_range(i, NUMA_NO_NODE, MEMBLOCK_NONE,
+				&range_start, &range_end, NULL) {
+		unsigned long start = PHYS_PFN(range_start);
+		unsigned long end = PHYS_PFN(range_end);
 
 		/* Ignore complete lowmem entries */
 		if (end <= max_low)
 			continue;
 
-		if (memblock_is_nomap(mem))
-			continue;
-
 		/* Truncate partial highmem entries */
 		if (start < max_low)
 			start = max_low;
 
-		/* Find and exclude any reserved regions */
-		for_each_memblock(reserved, res) {
-			unsigned long res_start, res_end;
-
-			res_start = memblock_region_reserved_base_pfn(res);
-			res_end = memblock_region_reserved_end_pfn(res);
-
-			if (res_end < start)
-				continue;
-			if (res_start < start)
-				res_start = start;
-			if (res_start > end)
-				res_start = end;
-			if (res_end > end)
-				res_end = end;
-			if (res_start != start)
-				free_area_high(start, res_start);
-			start = res_end;
-			if (start == end)
-				break;
-		}
-
-		/* And now free anything which remains */
-		if (start < end)
-			free_area_high(start, end);
+		for (; start < end; start++)
+			free_highmem_page(pfn_to_page(start));
 	}
-}
-#else
-static void __init free_highpages(void)
-{
-}
 #endif
+}
 
 /*
  * Initialize memory pages.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-4-rppt%40kernel.org.
