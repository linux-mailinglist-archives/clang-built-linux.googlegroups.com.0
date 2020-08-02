Return-Path: <clang-built-linux+bncBAABBOWYTP4QKGQEIZK3PGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EEF235900
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:39:23 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id y9sf25971787plr.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386362; cv=pass;
        d=google.com; s=arc-20160816;
        b=TFMO+rx8/4mP+HhdVrObBcjsxL0xsiqGNUV+GhA/9bHE7Arugg7se4FUOBbGantPe6
         v8mXhVP44JPwFsZKQtaNYsrToLoa/NY41PPNS1gmtwo8oFwmf5Wb72opkVmptvbGw/AC
         bxRUy0gsO3/9ds7w7T4jPs2RKuxePlXp33FMZEDy9FM4lMx9rdXoG8Fa0DIhO1D00ux7
         NLBO+zI5LaG/vdl5lOUErLUxDSUx8tL0RpjCMhBXgCWf98L3Lqg7QFe4s9WzK1pf33im
         21vq02yZydckakAbd917PqZOmqfVWhyxwJfkZhf2QtzOFYhEKL7pNlP/uJ486lWGoZnm
         ldNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=q4vdp+UQxJEDpYC6WLwKC/+5NJbGh3wyhaZCYYzEvZQ=;
        b=ESSThYcjF8R43V+epeRpIzyKI2wgWypnKcHkgNSml1o9Ruo3EThdUSxgmX1fPhRqKg
         DND1RgmjV2qfPGGg7uv2t/3p85fwLgcGHty6gnqjbnWpoKkqU4v1nvXiuEvUIwGnce2T
         wqtbYiTudGVj7BCgEIj7hHMnEnL5z85FdGQoQNDiRLGuyRpzJDPALQ7pk1VxidNkzRdN
         5lkB8SjZPd8wrhcC0jl2KRzbYzQ5m3n08h1Yaq/XxLmEqlpGnSQzsjupbwjug990PVKD
         fW00NCmT2v/57RrCAZ758D49rr2+t7C5PukrQ5CfM2AFSpmHUYJeCI0tdjGuvWflU/Ft
         WdVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=expYlg32;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4vdp+UQxJEDpYC6WLwKC/+5NJbGh3wyhaZCYYzEvZQ=;
        b=c44rA6JEbk3MAFwEz40Aj1dHzxgbpc+MaGC7x2D/DGqY8sAWafsju7qCjAm4Oz9yU8
         WjMRJ3AkHpNW/I8NzA5TNKxOHND4AT1q8ytckYIvu37Aj6+Qk+XwuyroEzLhLsUfYYd7
         NxBerzsoibZvww+5rKykLapKKvRdIIcLQD0VIEMDiD1ZRulqkFRh9Z7WOzKKEW+/c2wU
         yhssS4BCpK6Jd+O6lA5zo6vtd2wvvh8tQzWwkGIs8+k2Jkjzu79ajkEmoaznDff1NdIX
         Syyiuf3ho9NZJQLLcpAPpQ58MelYsgETNyZk05Yp68ryUDSRCuQZ9mz/bRam7vDpQBba
         zBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4vdp+UQxJEDpYC6WLwKC/+5NJbGh3wyhaZCYYzEvZQ=;
        b=E9LCZHMKUsrArH/Y6SX9OQxtIUyucIF40I2qOLdP4Fp5wOCUkQQmZBOWRA3+xkQxCJ
         Olf+E/HVE9TL8uElHQVpSr+ZxDO6bFzCTDSNrPiQTkhkGrs5qirIQ8XK1CF1wGsqgL8a
         mbXtQgfl7JxOv4uxwg/AoQz+K2VejoXtEPP8HjbAkOwOjCO9oVAiB3QsPzTBphovz9I0
         +6Zt/kW7XjkzFp7lv2xk+8uUwu8sYvO8GR3SVqmsLgimCZZx7IvgLLza4PKAftlhfs6f
         Bz3TSQQSXjBclett92GoQ4XCcBGCMXuQAj3XVPvpqHoMv8fpJARAOyKe3IEj2C16PhPH
         2IWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XY5b1ATPRmsOwiyGPYUnSNwcKkpINQt5w2558ziBUFRGyW11A
	xSq2TzaRWq3Qusq5RRD1F3I=
X-Google-Smtp-Source: ABdhPJxrBmQT++goNyEo4MTH7MQNM6DI20z5t/1sAO8OtboyEy0uAlP0UopPKd5JbyHatNHMKw0enA==
X-Received: by 2002:a63:be47:: with SMTP id g7mr11464604pgo.7.1596386362387;
        Sun, 02 Aug 2020 09:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls4687951pfs.9.gmail; Sun, 02 Aug
 2020 09:39:22 -0700 (PDT)
X-Received: by 2002:aa7:8c19:: with SMTP id c25mr12416007pfd.17.1596386362032;
        Sun, 02 Aug 2020 09:39:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386362; cv=none;
        d=google.com; s=arc-20160816;
        b=UpLt1hIw4DZoNn+fl1T/aLtHB3ePoB93ipHPMYNBFsA4rcXjxzutnBN5Y7Kil2Kr2J
         +sJg8g6KdwPQfVdxLCsnPdectV7jT4Vrr5QnG6dzPEyHUErUya5wphxt5VkZtmkshw+I
         W4DlgwGaXPxiI0NHRgvcCNSPLqxA2BXI8aXr833Ro8+32kVODP2PS0VHEGqfhH0vc8JE
         RKzo13taO9l8yq+0W2o6J9GTwyb9qwgWlANUARS+Q0oikpG9KjHwnC73/oFLuAa/hwhP
         EwNB9GydwbGF2DH72mYbN5Kbs5D4fUzTHlDufvk5ULLDwbHgBxwZMSC7/D8QjoXoVqox
         Homg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cWoYYgkjlpMEEER481mHR975iEkomAAOHyRUZ4TD0uE=;
        b=gWdtiGzdCfkXZ4MduBXQRcJI08+ftR9PdEobFL99P+KdgRD2RdvMKLPsRkqMo9sTn2
         zey02iMupmhQq1kjtm3cmpWuSFY3wPs2cdiR6V5mVOESF91aj+wukLR1AOAfJv9je1nz
         qZAnR5CrSIIFWTZaUGG/1+sau1zgCy1/1/QremCVsx96aw9oB1BP/0WkNtTO9dVqD0Dt
         Elle2ZLwTWMzGDjqZFbxY0hc+FSvxqzvH+BRxQh7Nb/Vv6Y9bEpp6Po48IqiXU6KGdMd
         0WVsAz2FcynmzEeFAfkqWXXKlj7RV7CevJaX31VrtWjuOnIhrQtiSY0q+9LE5cjj1AG9
         svag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=expYlg32;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id jx18si636921pjb.1.2020.08.02.09.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7CDE02086A;
	Sun,  2 Aug 2020 16:39:11 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
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
	linux-arch@vger.kernel.org,
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
Subject: [PATCH v2 17/17] memblock: use separate iterators for memory and reserved regions
Date: Sun,  2 Aug 2020 19:36:01 +0300
Message-Id: <20200802163601.8189-18-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=expYlg32;       spf=pass
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

for_each_memblock() is used to iterate over memblock.memory in
a few places that use data from memblock_region rather than the memory
ranges.

Introduce separate for_each_mem_region() and for_each_reserved_mem_region()
to improve encapsulation of memblock internals from its users.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 .clang-format                  |  3 ++-
 arch/arm64/kernel/setup.c      |  2 +-
 arch/arm64/mm/numa.c           |  2 +-
 arch/mips/netlogic/xlp/setup.c |  2 +-
 arch/x86/mm/numa.c             |  2 +-
 include/linux/memblock.h       | 19 ++++++++++++++++---
 mm/memblock.c                  |  4 ++--
 mm/page_alloc.c                |  8 ++++----
 8 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/.clang-format b/.clang-format
index e28a849a1c58..cff71d345456 100644
--- a/.clang-format
+++ b/.clang-format
@@ -201,7 +201,7 @@ ForEachMacros:
   - 'for_each_matching_node'
   - 'for_each_matching_node_and_match'
   - 'for_each_member'
-  - 'for_each_memblock'
+  - 'for_each_mem_region'
   - 'for_each_memblock_type'
   - 'for_each_memcg_cache_index'
   - 'for_each_mem_pfn_range'
@@ -267,6 +267,7 @@ ForEachMacros:
   - 'for_each_property_of_node'
   - 'for_each_registered_fb'
   - 'for_each_reserved_mem_range'
+  - 'for_each_reserved_mem_region'
   - 'for_each_rtd_codec_dais'
   - 'for_each_rtd_codec_dais_rollback'
   - 'for_each_rtd_components'
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index f3aec7244aab..52ea2f1a7184 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -217,7 +217,7 @@ static void __init request_standard_resources(void)
 	if (!standard_resources)
 		panic("%s: Failed to allocate %zu bytes\n", __func__, res_size);
 
-	for_each_memblock(memory, region) {
+	for_each_mem_region(region) {
 		res = &standard_resources[i++];
 		if (memblock_is_nomap(region)) {
 			res->name  = "reserved";
diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 0cbdbcc885fb..f121e42246a6 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -350,7 +350,7 @@ static int __init numa_register_nodes(void)
 	struct memblock_region *mblk;
 
 	/* Check that valid nid is set to memblks */
-	for_each_memblock(memory, mblk) {
+	for_each_mem_region(mblk) {
 		int mblk_nid = memblock_get_region_node(mblk);
 
 		if (mblk_nid == NUMA_NO_NODE || mblk_nid >= MAX_NUMNODES) {
diff --git a/arch/mips/netlogic/xlp/setup.c b/arch/mips/netlogic/xlp/setup.c
index 1a0fc5b62ba4..6e3102bcd2f1 100644
--- a/arch/mips/netlogic/xlp/setup.c
+++ b/arch/mips/netlogic/xlp/setup.c
@@ -70,7 +70,7 @@ static void nlm_fixup_mem(void)
 	const int pref_backup = 512;
 	struct memblock_region *mem;
 
-	for_each_memblock(memory, mem) {
+	for_each_mem_region(mem) {
 		memblock_remove(mem->base + mem->size - pref_backup,
 			pref_backup);
 	}
diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 8ee952038c80..fe6ea18d6923 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -516,7 +516,7 @@ static void __init numa_clear_kernel_node_hotplug(void)
 	 *   memory ranges, because quirks such as trim_snb_memory()
 	 *   reserve specific pages for Sandy Bridge graphics. ]
 	 */
-	for_each_memblock(reserved, mb_region) {
+	for_each_reserved_mem_region(mb_region) {
 		int nid = memblock_get_region_node(mb_region);
 
 		if (nid != MAX_NUMNODES)
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 9e51b3fd4134..a6970e058bd7 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -522,9 +522,22 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
 	return PFN_UP(reg->base + reg->size);
 }
 
-#define for_each_memblock(memblock_type, region)					\
-	for (region = memblock.memblock_type.regions;					\
-	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
+/**
+ * for_each_mem_region - itereate over registered memory regions
+ * @region: loop variable
+ */
+#define for_each_mem_region(region)					\
+	for (region = memblock.memory.regions;				\
+	     region < (memblock.memory.regions + memblock.memory.cnt);	\
+	     region++)
+
+/**
+ * for_each_reserved_mem_region - itereate over reserved memory regions
+ * @region: loop variable
+ */
+#define for_each_reserved_mem_region(region)				\
+	for (region = memblock.reserved.regions;			\
+	     region < (memblock.reserved.regions + memblock.reserved.cnt); \
 	     region++)
 
 extern void *alloc_large_system_hash(const char *tablename,
diff --git a/mm/memblock.c b/mm/memblock.c
index dadf579f7c53..7d30db5c539f 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1653,7 +1653,7 @@ static phys_addr_t __init_memblock __find_max_addr(phys_addr_t limit)
 	 * the memory memblock regions, if the @limit exceeds the total size
 	 * of those regions, max_addr will keep original value PHYS_ADDR_MAX
 	 */
-	for_each_memblock(memory, r) {
+	for_each_mem_region(r) {
 		if (limit <= r->size) {
 			max_addr = r->base + limit;
 			break;
@@ -1823,7 +1823,7 @@ void __init_memblock memblock_trim_memory(phys_addr_t align)
 	phys_addr_t start, end, orig_start, orig_end;
 	struct memblock_region *r;
 
-	for_each_memblock(memory, r) {
+	for_each_mem_region(r) {
 		orig_start = r->base;
 		orig_end = r->base + r->size;
 		start = round_up(orig_start, align);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 95af111d69d3..948c7a754cdb 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5927,7 +5927,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
 
 	if (mirrored_kernelcore && zone == ZONE_MOVABLE) {
 		if (!r || *pfn >= memblock_region_memory_end_pfn(r)) {
-			for_each_memblock(memory, r) {
+			for_each_mem_region(r) {
 				if (*pfn < memblock_region_memory_end_pfn(r))
 					break;
 			}
@@ -6528,7 +6528,7 @@ static unsigned long __init zone_absent_pages_in_node(int nid,
 		unsigned long start_pfn, end_pfn;
 		struct memblock_region *r;
 
-		for_each_memblock(memory, r) {
+		for_each_mem_region(r) {
 			start_pfn = clamp(memblock_region_memory_base_pfn(r),
 					  zone_start_pfn, zone_end_pfn);
 			end_pfn = clamp(memblock_region_memory_end_pfn(r),
@@ -7122,7 +7122,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
 	 * options.
 	 */
 	if (movable_node_is_enabled()) {
-		for_each_memblock(memory, r) {
+		for_each_mem_region(r) {
 			if (!memblock_is_hotpluggable(r))
 				continue;
 
@@ -7143,7 +7143,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
 	if (mirrored_kernelcore) {
 		bool mem_below_4gb_not_mirrored = false;
 
-		for_each_memblock(memory, r) {
+		for_each_mem_region(r) {
 			if (memblock_is_mirror(r))
 				continue;
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-18-rppt%40kernel.org.
