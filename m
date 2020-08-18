Return-Path: <clang-built-linux+bncBAABBHPD574QKGQEWV7GJVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F59F248955
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:19:58 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id n12sf14606524qtr.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763997; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfhLNvRVcc1U+a8dq71w7ZwOVOOlUtV9ZG8kBVU4bRYwu7b5c69/4t0pb5yJzWIjAU
         XaEN41S1vuchN6/MM+NVs+Ju9fwlwfugsjmAA86Uz//zxAxUnPCyFIDs4nrnFJPnn98Q
         y16hahOAJHaZZcpaqPOHAAVxeIHWvRUbNmB6vR8xvTCdIK4vpA0Nkv6RdZntTMGO6Dod
         PhxgrGSOrTngnDpQkV38ld30mdZFj2y7187X1r8TuvB9bH0r9kr+6NEf5ZCHIY0JO1Nk
         Vr0CdwxGYJw3dQah9rkaElOsUwh6ETMdqo02Vz+f2rXoFjoYt/mvi8XEeXvGKlW3SKAP
         PkZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DVeulg2i9PC+tXI8g8/7It4AEuDWfWg2FfGPp2ezbk0=;
        b=ixHiXgwEPPksRR6VHLtm+nbwfk7fQ61XTa6sTrh/PIDb8G8NeIBwGQQX2nefM8gvV4
         /AvwNAG+aZc1oj2yvV4bkFryv6ye5eHfRlT3LzG19aQ+TDBz/nHMEV0lObhR3vsTQRuI
         H2iVe85aIwDO5wWqDs1VjH1m/Z8FL0362hLGrYQa0SGTvvKeq15aEZBDnopvOYFwuiDZ
         NkuvIfQty2tgkigMS7g7zH0BVrCzx6G1lw4NHXdFnd75tRypgJgsaj1nEFs1jdDBQzd/
         ezywlGUqAkmto0DZ7gK9wZ2T0X9hXdOTrtTGe9l/MEPzyHxpKsvCE1SOdsR0UHu93yba
         UFmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q2YllB9n;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DVeulg2i9PC+tXI8g8/7It4AEuDWfWg2FfGPp2ezbk0=;
        b=oKBvM9mZqrrDEMiZEyMobo6dh2V6juvdHkIxZGKpbap+P36bDzUY662GiJ+3X9gbti
         drE97W1vLg4Cs+BRBtO2nz09NosoVNqn9mo3/WtmaOKYjBDaD/NHOl4PZJy9K0m5k1rt
         4miuNyjdB14gFxFIdgg02BhoA2tSwRSBfbqFPvu5Co2gbpSidmBEAl+vNaPRvyfRs4qD
         Jco49sJVGLlSdcqyo6RqOKau6MgXyITsPn2OC2vTq+xGybLJtnT+EHv/Fq7Ndj9zHfU0
         xUBF+CylsBq8jxSpkKVqj/gu72yVOWRpuoStX7vA02DIqGSW0MqI71sF0boSQSQZUKVn
         5z0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DVeulg2i9PC+tXI8g8/7It4AEuDWfWg2FfGPp2ezbk0=;
        b=q50xpZDbwmDURaEIsLPkfl8qTg4jg08MAL862r2eJDmwYGgMdzbj96ksPjdRbd/Ypu
         PW9AUYHBeteG1ayZOsyUParT3UMvpbjm6YM3yPF2z4HfaOA3zzHENa4wAeXXphQ1d/Ks
         WQKd+Em/tI28jN1OIBR8AlQvT7dfiLZ7xMKWs/TY9XydMqCX31Ps4KfjqZ7R+6VbZ86a
         sHWdto4DafD04YTIHXYmrOARuYABLn2PHahOUFKOSczViAi+i3tSSgExs6SRAPoihz4o
         EcVTfYurvo6Rhj6WBBeQq6naPPKIMAQbIo0HohLJzn3dv2yuSu2VpvUqscRipi80ps5U
         OCtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nkin0OzTxIgHtuUxjfNq5U1P00OksumGzl2317xfqhVsCorGb
	LRN6XAmJUIkDyC7XfA3y2bA=
X-Google-Smtp-Source: ABdhPJzlVV0AXk/bxwRzlklMiJKyrCDDHtyybH52LLir2GvD+N0VBWqMYeaYEKTICtvZzgTnFrxjnw==
X-Received: by 2002:ac8:4815:: with SMTP id g21mr18709463qtq.148.1597763997166;
        Tue, 18 Aug 2020 08:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:141a:: with SMTP id k26ls8049922qtj.4.gmail; Tue, 18 Aug
 2020 08:19:56 -0700 (PDT)
X-Received: by 2002:ac8:faf:: with SMTP id b44mr18476661qtk.190.1597763996832;
        Tue, 18 Aug 2020 08:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763996; cv=none;
        d=google.com; s=arc-20160816;
        b=tgl79coEdBIdZsi21FXrb/LFu7bK6HdYiixMgiz5wryhMGQ0adT+zpMqierVM8+Y3a
         NqgEWA3wo0fjDlAetCJcjMdW0x+855KLKK4nRyU0/CDv+AEF3lYyfHxS09cYoXZsE+qM
         GAfNk+B5WyIWjk5ig5UfrNw+XRVfhymkm+sMdaf/x22i3paGPSQrtsEi9+MqhQfyfoV+
         fkIuGxt36s+ZOFcS0IGkkf7QF9unQg8moH73Hg1acO5hpbwih4A9JvmQYwYX8Dr0+Y8N
         fuwOsLfYIkNwfHca02GjGJ+/ed4Qt+egkSIyqpD95RS600Moh0TsAuf71clKA4ys6KUv
         QGYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J3bOghUUIf8BebmH8xu4/LZ8Kpet4JHQ2fk/dZHUBwI=;
        b=MURU+zbTrEgjzzCLdIWMnHw5tlfXiokBnANKBiwtoT1uj7RRyQ5sxakKdhIe1LHarY
         iu3nIlPvTNNV857GdgIYOLz+heisEFbBh13PHJrvbV08OCafT5idPxYiqyglYR0HUF9h
         5xBJ57+9uD7b3Df9t/k73swtiBuOZfPMi0mFAyVt9m2avqPue7Jvc0HVmpzUptaJMVBO
         vFZFUXXQm4OYF+UxgN+um6gWG1ha+g9ZfF5F4MOXYM1/yc3cPOE6y9ycZMpFumLY6PMi
         GDN5O0rYjQL7/+IaU9qPtMoERsJZQ7Y8Ur5Vt7w/lGQ5gNmeKL/7D5rTduhjg7KuOpxA
         uugA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q2YllB9n;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si1191414qtn.0.2020.08.18.08.19.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DD7D0207DE;
	Tue, 18 Aug 2020 15:19:44 +0000 (UTC)
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Daniel Axtens <dja@axtens.net>,
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
	x86@kernel.org,
	Ingo Molnar <mingo@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: [PATCH v3 17/17] memblock: use separate iterators for memory and reserved regions
Date: Tue, 18 Aug 2020 18:16:34 +0300
Message-Id: <20200818151634.14343-18-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Q2YllB9n;       spf=pass
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
Reviewed-by: Baoquan He <bhe@redhat.com>
Acked-by: Ingo Molnar <mingo@kernel.org>		   # x86
Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>  # MIPS
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>   # .clang-format
---
 .clang-format                  |  3 ++-
 arch/arm64/kernel/setup.c      |  2 +-
 arch/arm64/mm/numa.c           |  2 +-
 arch/mips/netlogic/xlp/setup.c |  2 +-
 arch/riscv/mm/init.c           |  2 +-
 arch/x86/mm/numa.c             |  2 +-
 include/linux/memblock.h       | 19 ++++++++++++++++---
 mm/memblock.c                  |  4 ++--
 mm/page_alloc.c                |  8 ++++----
 9 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/.clang-format b/.clang-format
index 2b77cc419b97..a118fdde25c1 100644
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
@@ -268,6 +268,7 @@ ForEachMacros:
   - 'for_each_property_of_node'
   - 'for_each_registered_fb'
   - 'for_each_reserved_mem_range'
+  - 'for_each_reserved_mem_region'
   - 'for_each_rtd_codec_dais'
   - 'for_each_rtd_codec_dais_rollback'
   - 'for_each_rtd_components'
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index a986c6f8ab42..dcce72ac072b 100644
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
index 8a97cd3d2dfe..5efdbd01a59c 100644
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
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 06355716d19a..1fb6a826c2fd 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -531,7 +531,7 @@ static void __init resource_init(void)
 {
 	struct memblock_region *region;
 
-	for_each_memblock(memory, region) {
+	for_each_mem_region(region) {
 		struct resource *res;
 
 		res = memblock_alloc(sizeof(struct resource), SMP_CACHE_BYTES);
diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index aa76ec2d359b..b6246768479d 100644
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
index 354078713cd1..ef131255cedc 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -553,9 +553,22 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
 	return PFN_UP(reg->base + reg->size);
 }
 
-#define for_each_memblock(memblock_type, region)					\
-	for (region = memblock.memblock_type.regions;					\
-	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
+/**
+ * for_each_mem_region - itereate over memory regions
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
index d0be57acccf2..4eacfed872c4 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1664,7 +1664,7 @@ static phys_addr_t __init_memblock __find_max_addr(phys_addr_t limit)
 	 * the memory memblock regions, if the @limit exceeds the total size
 	 * of those regions, max_addr will keep original value PHYS_ADDR_MAX
 	 */
-	for_each_memblock(memory, r) {
+	for_each_mem_region(r) {
 		if (limit <= r->size) {
 			max_addr = r->base + limit;
 			break;
@@ -1834,7 +1834,7 @@ void __init_memblock memblock_trim_memory(phys_addr_t align)
 	phys_addr_t start, end, orig_start, orig_end;
 	struct memblock_region *r;
 
-	for_each_memblock(memory, r) {
+	for_each_mem_region(r) {
 		orig_start = r->base;
 		orig_end = r->base + r->size;
 		start = round_up(orig_start, align);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 12da56b1cf39..366982d1a1c2 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5950,7 +5950,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
 
 	if (mirrored_kernelcore && zone == ZONE_MOVABLE) {
 		if (!r || *pfn >= memblock_region_memory_end_pfn(r)) {
-			for_each_memblock(memory, r) {
+			for_each_mem_region(r) {
 				if (*pfn < memblock_region_memory_end_pfn(r))
 					break;
 			}
@@ -6535,7 +6535,7 @@ static unsigned long __init zone_absent_pages_in_node(int nid,
 		unsigned long start_pfn, end_pfn;
 		struct memblock_region *r;
 
-		for_each_memblock(memory, r) {
+		for_each_mem_region(r) {
 			start_pfn = clamp(memblock_region_memory_base_pfn(r),
 					  zone_start_pfn, zone_end_pfn);
 			end_pfn = clamp(memblock_region_memory_end_pfn(r),
@@ -7129,7 +7129,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
 	 * options.
 	 */
 	if (movable_node_is_enabled()) {
-		for_each_memblock(memory, r) {
+		for_each_mem_region(r) {
 			if (!memblock_is_hotpluggable(r))
 				continue;
 
@@ -7150,7 +7150,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-18-rppt%40kernel.org.
