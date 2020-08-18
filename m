Return-Path: <clang-built-linux+bncBAABBWXC574QKGQE7GDAALQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A3248931
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:18:51 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id c191sf13382912qkb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763930; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekyqiDHTn71iZMbWWKBo3gKJuajrs/nF2g91e7Kiimeqa4HVg4sO7m15M26CSZ8hWL
         gqdfwhS0ur5lGoOqPJFob62rv1SaoTBveazvCGyEcHZd9QWyt8OLPo8NUG+5eCFPncDv
         zqGebR0hxQrNfA9q68edxhYdgy7zGCosaFTLPNdGbO5wfTXtqZ9nEPU1clINBvBczDfH
         UbFBaa8rml2NNlo4awb3HyhjmTArYdt2Vhxrw/IuKoOEeYeIOmcfqG48Q1WVOaPEmdK1
         U3DWEfwl6fCFRhUuP8xXYDO1CPfRc7mKUIJu/RsB2rHbnVAryn01EWK46V2MXohk6b7J
         xM3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m6PaM43/YHth8OptJzuPgmHWEewi5fVFK+MnuGOlSNI=;
        b=yfJanaxtZ6xUwTP4LqJvnRUvHbIrDBc8ZNjCmz6RqTBwTJy9slrYe2w4Qa6yLactn7
         gpNjE/KSZIF20DOxYrjgO0X4HBs01ZUqilEkuFFThn+XgzuZSy749VYUI/FhoMCKvBMM
         XxTCFplvNSpUMYO4PkSBmQM5faDtz5e9LXCLoTfYS55dAHYw/XEoHUmHOQGNT245yoVW
         /T4ymSKqjQFR/92+sEI/r1/3KFzKaOHNtHazFIupyZpM8UWYP+F+zyzgEGIT99JwFeRp
         PNJ2fvJnp38aAToJQEeIPR077dPS7n4/Vcsg2B8Jf628jtb0mMY44iL8AulOyVaSykvq
         8//A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ScbYqqw7;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6PaM43/YHth8OptJzuPgmHWEewi5fVFK+MnuGOlSNI=;
        b=A/38MxQgH8BTF0gb3Rpm4fnXqxdDpeQ21SvgrGCk+irNh5rHJ05ZVLqlHDy1UeDhK9
         P5w/6ZfCiniwQ0EWXZG0D1FVfG1tQ4oVIC2pwylMW5lqpq83td0eS4L34kCrR7vd7WBr
         7u0J1uKVKNa7vRdAKR25u/XCiVUZbuz29VmjMU/QctkbAHnNn8oVXBwuGpNE/QhhC3+M
         rH4XVdHR7lzH8qFNcO8Uru6Z6ygCnkaKovHPzdlegjpeTAcHUl0Rk2WI3LhmPzPwOoNZ
         /YIUiVVeVjzSAjvJinFmn7GAGwWWxd7d8NsRToUMVZN+nZ8KHnbhLOhyCJGtqcSTDzZ0
         gkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6PaM43/YHth8OptJzuPgmHWEewi5fVFK+MnuGOlSNI=;
        b=EvznsWAOcrqYFV+j+hwnTGKGKefXaAdqPBbwxY9J6HBBwDjRBBsPFm4gK/4ir0IlEw
         NBfjqavTVSCQ5/orzURLiTFGvu0xNaj0hIMORF1zs6cs1oYS+LgBTi5PJWx/QWsY1Bpg
         pTxeCGqyY06x7EBiTOUqTHOCyxBwly+VJVKgpdxw/8XXzgXdnoEPx5ma7en2FSDVgXaU
         WjG2TPDp0+yg/zGQXzP1ttClZVAReJ+ywBL4bxM5BeSge60+8mYU9xY1DqLXlV59ro1e
         uMSEgUTEPTbzkYnQO90x6Oyz1fmEe929x6Snr4EBirheoMgFxtNKVdaRxtZ0w1c8rWce
         jWBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AURsgrm9BoDFNhltkMEE4fOUoBhmLzL4uebUpZ8k93Tn/RSw+
	B8iwEhoKMdcis5xC0j73f7E=
X-Google-Smtp-Source: ABdhPJyiqktaNZpaJI5RtghTGY5NlDczvz3ozd4v+r+TeNlvqCGK/s33XHzH/FI+VC+knixl/dl6mg==
X-Received: by 2002:a05:6214:1910:: with SMTP id er16mr18836281qvb.228.1597763930288;
        Tue, 18 Aug 2020 08:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:34dd:: with SMTP id x29ls8032745qtb.6.gmail; Tue, 18 Aug
 2020 08:18:50 -0700 (PDT)
X-Received: by 2002:aed:2ca5:: with SMTP id g34mr18159392qtd.337.1597763929944;
        Tue, 18 Aug 2020 08:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763929; cv=none;
        d=google.com; s=arc-20160816;
        b=P3UBi8YQp3c/A0Q2LYrVIgER8Obc5BPJEBFHb8zubszLch6q+EZN9f4Uk3vzF0OZq4
         t3mc6FXipHFqBk5YrQ90UefNgSEslvM9YBv24puj5YYpL3MDbythtRCsqbZcCxKXznyA
         VDaOBEYcuGF+p48xgJNNl3x2L8wdhACR+12M8ad2G2tWDhX2bePddkWxPP0RVzUq7j8Z
         tH/CB2trZgrMAHqXzP56UYEvtYNuuozTC/xlhph8ZnaY7TwZKRKxNxsjUyLy09ycmRqp
         cKqM5RZt8w8BJtWK2nGYpFE7zJOi5534o8Pf5yb+VSRuc3cg2qalV+f+j+HUFGAshcdH
         tpaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=92u1vwRSyhdUvda3VpyaWjzRnjg6z7qvzOKq0pttpJQ=;
        b=Z6mEEfQUNRecNL6X2Nc6lu9HPcJpsgfRKYqRP0TdCRHZ9ZOtySgXEs979QFdI7UjZ5
         kecCjbntXXWxcXuh3tm6Sf55zwP0oR/blEuiIWI8R6bipdHufQ0nAVDPawGVdIpJjoUh
         3n5oVvVaUS/URsYHknRZCOfeVEr6SNBxfpWTLCADYx3zZweV/3YBkW3oXzD9VSsCBeth
         VAOYW64hIgWV56yhFI0Z2fXFGsY74UAxE7RYE/DppdDKd2twYT0wqZBP2CU0Bz4HXTcD
         9XN24yyhFUK7rsNnM+N3I3h530FLLeB9efuCiac1rh8Qwzcqu7GbihoCG4z2Cn5zid7/
         jIuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ScbYqqw7;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o24si1221870qki.7.2020.08.18.08.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F30A20882;
	Tue, 18 Aug 2020 15:18:38 +0000 (UTC)
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
	x86@kernel.org
Subject: [PATCH v3 11/17] arch, mm: replace for_each_memblock() with for_each_mem_pfn_range()
Date: Tue, 18 Aug 2020 18:16:28 +0300
Message-Id: <20200818151634.14343-12-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ScbYqqw7;       spf=pass
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

There are several occurrences of the following pattern:

	for_each_memblock(memory, reg) {
		start_pfn = memblock_region_memory_base_pfn(reg);
		end_pfn = memblock_region_memory_end_pfn(reg);

		/* do something with start_pfn and end_pfn */
	}

Rather than iterate over all memblock.memory regions and each time query
for their start and end PFNs, use for_each_mem_pfn_range() iterator to get
simpler and clearer code.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 arch/arm/mm/init.c           | 11 ++++-------
 arch/arm64/mm/init.c         | 11 ++++-------
 arch/powerpc/kernel/fadump.c | 11 ++++++-----
 arch/powerpc/mm/mem.c        | 15 ++++++++-------
 arch/powerpc/mm/numa.c       |  7 ++-----
 arch/s390/mm/page-states.c   |  6 ++----
 arch/sh/mm/init.c            |  9 +++------
 mm/memblock.c                |  6 ++----
 mm/sparse.c                  | 10 ++++------
 9 files changed, 35 insertions(+), 51 deletions(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 50a5a30a78ff..45f9d5ec2360 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -299,16 +299,14 @@ free_memmap(unsigned long start_pfn, unsigned long end_pfn)
  */
 static void __init free_unused_memmap(void)
 {
-	unsigned long start, prev_end = 0;
-	struct memblock_region *reg;
+	unsigned long start, end, prev_end = 0;
+	int i;
 
 	/*
 	 * This relies on each bank being in address order.
 	 * The banks are sorted previously in bootmem_init().
 	 */
-	for_each_memblock(memory, reg) {
-		start = memblock_region_memory_base_pfn(reg);
-
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start, &end, NULL) {
 #ifdef CONFIG_SPARSEMEM
 		/*
 		 * Take care not to free memmap entries that don't exist
@@ -336,8 +334,7 @@ static void __init free_unused_memmap(void)
 		 * memmap entries are valid from the bank end aligned to
 		 * MAX_ORDER_NR_PAGES.
 		 */
-		prev_end = ALIGN(memblock_region_memory_end_pfn(reg),
-				 MAX_ORDER_NR_PAGES);
+		prev_end = ALIGN(end, MAX_ORDER_NR_PAGES);
 	}
 
 #ifdef CONFIG_SPARSEMEM
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 481d22c32a2e..f0bf86d81622 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -471,12 +471,10 @@ static inline void free_memmap(unsigned long start_pfn, unsigned long end_pfn)
  */
 static void __init free_unused_memmap(void)
 {
-	unsigned long start, prev_end = 0;
-	struct memblock_region *reg;
-
-	for_each_memblock(memory, reg) {
-		start = __phys_to_pfn(reg->base);
+	unsigned long start, end, prev_end = 0;
+	int i;
 
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start, &end, NULL) {
 #ifdef CONFIG_SPARSEMEM
 		/*
 		 * Take care not to free memmap entries that don't exist due
@@ -496,8 +494,7 @@ static void __init free_unused_memmap(void)
 		 * memmap entries are valid from the bank end aligned to
 		 * MAX_ORDER_NR_PAGES.
 		 */
-		prev_end = ALIGN(__phys_to_pfn(reg->base + reg->size),
-				 MAX_ORDER_NR_PAGES);
+		prev_end = ALIGN(end, MAX_ORDER_NR_PAGES);
 	}
 
 #ifdef CONFIG_SPARSEMEM
diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
index 10ebb4bf71ad..e469b150be21 100644
--- a/arch/powerpc/kernel/fadump.c
+++ b/arch/powerpc/kernel/fadump.c
@@ -1242,14 +1242,15 @@ static void fadump_free_reserved_memory(unsigned long start_pfn,
  */
 static void fadump_release_reserved_area(u64 start, u64 end)
 {
-	u64 tstart, tend, spfn, epfn;
-	struct memblock_region *reg;
+	u64 tstart, tend, spfn, epfn, reg_spfn, reg_epfn, i;
 
 	spfn = PHYS_PFN(start);
 	epfn = PHYS_PFN(end);
-	for_each_memblock(memory, reg) {
-		tstart = max_t(u64, spfn, memblock_region_memory_base_pfn(reg));
-		tend   = min_t(u64, epfn, memblock_region_memory_end_pfn(reg));
+
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &reg_spfn, &reg_epfn, NULL) {
+		tstart = max_t(u64, spfn, reg_spfn);
+		tend   = min_t(u64, epfn, reg_epfn);
+
 		if (tstart < tend) {
 			fadump_free_reserved_memory(tstart, tend);
 
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 42e25874f5a8..80df329f180e 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -184,15 +184,16 @@ void __init initmem_init(void)
 /* mark pages that don't exist as nosave */
 static int __init mark_nonram_nosave(void)
 {
-	struct memblock_region *reg, *prev = NULL;
+	unsigned long spfn, epfn, prev = 0;
+	int i;
 
-	for_each_memblock(memory, reg) {
-		if (prev &&
-		    memblock_region_memory_end_pfn(prev) < memblock_region_memory_base_pfn(reg))
-			register_nosave_region(memblock_region_memory_end_pfn(prev),
-					       memblock_region_memory_base_pfn(reg));
-		prev = reg;
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &spfn, &epfn, NULL) {
+		if (prev && prev < spfn)
+			register_nosave_region(prev, spfn);
+
+		prev = epfn;
 	}
+
 	return 0;
 }
 #else /* CONFIG_NEED_MULTIPLE_NODES */
diff --git a/arch/powerpc/mm/numa.c b/arch/powerpc/mm/numa.c
index 1f61fa2148b5..f4e20d8e6c02 100644
--- a/arch/powerpc/mm/numa.c
+++ b/arch/powerpc/mm/numa.c
@@ -804,17 +804,14 @@ static void __init setup_nonnuma(void)
 	unsigned long total_ram = memblock_phys_mem_size();
 	unsigned long start_pfn, end_pfn;
 	unsigned int nid = 0;
-	struct memblock_region *reg;
+	int i;
 
 	printk(KERN_DEBUG "Top of RAM: 0x%lx, Total RAM: 0x%lx\n",
 	       top_of_ram, total_ram);
 	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
 	       (top_of_ram - total_ram) >> 20);
 
-	for_each_memblock(memory, reg) {
-		start_pfn = memblock_region_memory_base_pfn(reg);
-		end_pfn = memblock_region_memory_end_pfn(reg);
-
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start_pfn, &end_pfn, NULL) {
 		fake_numa_create_new_node(end_pfn, &nid);
 		memblock_set_node(PFN_PHYS(start_pfn),
 				  PFN_PHYS(end_pfn - start_pfn),
diff --git a/arch/s390/mm/page-states.c b/arch/s390/mm/page-states.c
index fc141893d028..567c69f3069e 100644
--- a/arch/s390/mm/page-states.c
+++ b/arch/s390/mm/page-states.c
@@ -183,9 +183,9 @@ static void mark_kernel_pgd(void)
 
 void __init cmma_init_nodat(void)
 {
-	struct memblock_region *reg;
 	struct page *page;
 	unsigned long start, end, ix;
+	int i;
 
 	if (cmma_flag < 2)
 		return;
@@ -193,9 +193,7 @@ void __init cmma_init_nodat(void)
 	mark_kernel_pgd();
 
 	/* Set all kernel pages not used for page tables to stable/no-dat */
-	for_each_memblock(memory, reg) {
-		start = memblock_region_memory_base_pfn(reg);
-		end = memblock_region_memory_end_pfn(reg);
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start, &end, NULL) {
 		page = pfn_to_page(start);
 		for (ix = start; ix < end; ix++, page++) {
 			if (__test_and_clear_bit(PG_arch_1, &page->flags))
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index 4735176ab811..3348e0c4d769 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -226,15 +226,12 @@ void __init allocate_pgdat(unsigned int nid)
 
 static void __init do_init_bootmem(void)
 {
-	struct memblock_region *reg;
+	unsigned long start_pfn, end_pfn;
+	int i;
 
 	/* Add active regions with valid PFNs. */
-	for_each_memblock(memory, reg) {
-		unsigned long start_pfn, end_pfn;
-		start_pfn = memblock_region_memory_base_pfn(reg);
-		end_pfn = memblock_region_memory_end_pfn(reg);
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start_pfn, &end_pfn, NULL)
 		__add_active_range(0, start_pfn, end_pfn);
-	}
 
 	/* All of system RAM sits in node 0 for the non-NUMA case */
 	allocate_pgdat(0);
diff --git a/mm/memblock.c b/mm/memblock.c
index 799513f3d6a9..567e454ce0a1 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1660,12 +1660,10 @@ phys_addr_t __init_memblock memblock_reserved_size(void)
 phys_addr_t __init memblock_mem_size(unsigned long limit_pfn)
 {
 	unsigned long pages = 0;
-	struct memblock_region *r;
 	unsigned long start_pfn, end_pfn;
+	int i;
 
-	for_each_memblock(memory, r) {
-		start_pfn = memblock_region_memory_base_pfn(r);
-		end_pfn = memblock_region_memory_end_pfn(r);
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start_pfn, &end_pfn, NULL) {
 		start_pfn = min_t(unsigned long, start_pfn, limit_pfn);
 		end_pfn = min_t(unsigned long, end_pfn, limit_pfn);
 		pages += end_pfn - start_pfn;
diff --git a/mm/sparse.c b/mm/sparse.c
index fcc3d176f1ea..b25ad8e64839 100644
--- a/mm/sparse.c
+++ b/mm/sparse.c
@@ -291,13 +291,11 @@ static void __init memory_present(int nid, unsigned long start, unsigned long en
  */
 static void __init memblocks_present(void)
 {
-	struct memblock_region *reg;
+	unsigned long start, end;
+	int i, nid;
 
-	for_each_memblock(memory, reg) {
-		memory_present(memblock_get_region_node(reg),
-			       memblock_region_memory_base_pfn(reg),
-			       memblock_region_memory_end_pfn(reg));
-	}
+	for_each_mem_pfn_range(i, MAX_NUMNODES, &start, &end, &nid)
+		memory_present(nid, start, end);
 }
 
 /*
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-12-rppt%40kernel.org.
