Return-Path: <clang-built-linux+bncBAABB6OXTP4QKGQEJ24PJGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF32358D2
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:38:18 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id x20sf6376402vsp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:38:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386297; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qgeb0aWSSeXIIYiQVNaRhfaIJEwBaXgrsCSWyF+uc5HH4RVTh7CNtDmcgJCNSp7KNK
         oAv/sbKvGnZtScoB0f3XvLyF8pT4KwfiRMf2Ktp2MBfQJktelshD4swnQ1MVkitUtDvT
         yfcQNkVSkYDvfsxX/O/S6WP51C/OSmbXCmXpFIP0Nmk3Kh0qzs9jQ5xPcHso6Em9hqPP
         0dHsXkp23hvawGYemsCuX1pMeoQbiDgvo6FGdByAoNr/XNF2xCtgNps6Y7CnIPR6/1Mh
         80MQhM6qafJNJ3HWat+PTCS0jzVeu5eF/fvVwJoil7rjJCl7dVqdDFj10uCOdhamkhLi
         2Yww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jmOhHnyCpQem35kDN0lZru58geJqenOxN7TVuyx48mg=;
        b=glLByrR76bkhy95CoaoA13Xxasxb0l+MsRNTMkSn8c3XeoLu1eQGETEVPVpGG5nODc
         phprzwsCICpLdBwm97dY6SPJa006aHYWt/2W279cdRZ+7vNrXEe8nvf6wKurwrxfE3jy
         jVui6lshzfiYfuFP0RnoxLPvVYW0BwCR/IJ3zWMeQSCcO2b+CYEbqVpdmMTSMpwrA7qB
         tD52sabIf/+5ypQS17FBoW//bb8DqD9X2JxVTQuPWXy8k88zrBz8UZwH0icbBIzckpQB
         cE2Eh5EoD5bt0Q9eW7F6vRSgIs3MgUV2CyhZgcpWCpfCmx4d3A7sxuULByVOxI3KLCVk
         +UwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wlz0jLSt;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jmOhHnyCpQem35kDN0lZru58geJqenOxN7TVuyx48mg=;
        b=pUqnFLXcguceH1qNGyv507hNi9/UBTgI7J6aUMmCwoqoUuCTS70UrLf1tLxNc9qd4J
         DFmO5iOi/3YjuFx+y+AUZm3xvqLgLptQ1H50FkRi2Q5KH28d38pNH1hChhoKeY9UhPH9
         JRcf7Xot9hnsa4nKeDrLaFSf3+iUtG4KnRGeSE4+g779w+9Njl9G69ktCc70kb1dLSb8
         Q98FlFAUug9tjR7ZAM/P4jS4Z6Wy+PjSaFAlyHdo0RmqQowNrUlCpp886a696xuJQDV/
         2+6V6TUUBCPUyEGLWLbGfRd/1gXhzZCQf2uJdaXJrwsWgUJTHEJ1hJmlzl4MVOAFS45B
         of0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jmOhHnyCpQem35kDN0lZru58geJqenOxN7TVuyx48mg=;
        b=KSNCY5LMh0RSOXpeDdvz9uc9sxPsQv2MpctgBnkZhtCDuMdouUDeEhyOgbUsEnTiQA
         nrYQgC/ObiY/hva2S4opfegyGqL2/DvJivI4WXSsHNBEUrveNFpKHndXPP4ZReFYf9HT
         /CFRQtM4uIUa/5fDX6x01uDFrYmknQEj9+GSmNeVpv8HRQW2ivmIRxG+hRoMwT75IAhf
         oGooFrN+7gW7FyF6S5QW0bQY0aOVesrKVFKcyXynLPHNMtTXoD2DTQ1XBpFhTw8sLJ18
         Fmba4eRxxe/r14E4R/XBhMEG84Jz+TmB/g1dV18AQsI40rAVa2MgZpGxd58lXcp8An6z
         ukUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O7OK8FdrHligYnp4ato1wgR+slJoeudE4tqzzguxL8DFSxZwL
	foZndBKO0giZx4DQwXqJujo=
X-Google-Smtp-Source: ABdhPJzMjmtk5bUQE5SVoI1UXqWtBjOcGjAN/hmq1JN0DZ9mG4zxVlvVEzYWAVUbb9Y0WFH4KSRAoA==
X-Received: by 2002:a05:6102:382:: with SMTP id m2mr9211620vsq.34.1596386297357;
        Sun, 02 Aug 2020 09:38:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:153:: with SMTP id a19ls1475676vsr.11.gmail; Sun,
 02 Aug 2020 09:38:17 -0700 (PDT)
X-Received: by 2002:a05:6102:3133:: with SMTP id f19mr8516397vsh.107.1596386297063;
        Sun, 02 Aug 2020 09:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386297; cv=none;
        d=google.com; s=arc-20160816;
        b=zoBGlRgedjc7oVnvQilps2gA09q07s0J3M5RtikIZdifbPA1XdhdS2icRWlw6Xrh8Q
         EgNUNVkVK/NlujQ7kE/B1bhjrDSdBbOjNX4aOVD/e6Ewz0Eg1YfHL7++25tz9x472mcf
         xJpQwEr4s5S1Ugj2IdAeeshypPyyq+ovf4LUcporZ6jJBP1xgCOgCSCe/er2kSnvuZmZ
         qRRXF+nxtfBNhBg8PZTk0vIJQrqjOcYd2eoQfJnzsUovO8D63a4zNbvZ0oYtUK91dC8s
         GqJup+U2kTB++jvGSdZvsFna8YI3Cd/LEg2/38hJccbbakQTTuEITVD/9rq1P+RDlUX7
         xS7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y53dyyS8vGe3IPoK/2qWnLck4uFzs3CPzuenbTm+/TM=;
        b=kEgNRFjQUwDduqss1+fOF21n8/rNsqU0ceaR4Y1SPvj5ZMgbrFNI+tAo+xLCCEidhz
         5IP3J+ySfEKwjelcfFaV4Nbtg2sVyN1KuFGYVejL9D5fmS9UufLJEUr8lC4EHV/KSNNP
         1PT9/ZcIVnEEacGLxRid/fY0BspbaMZP49g8FTv3ZIR9RTO0Bk9xQ/hWu1fhfI0/01if
         jxR0r9L6n7luJ9p2uDVKaKwxkBXXg655hEXqIdbFHFNz7CQPS0txMDRfjsDz50+Qb5Do
         O+kE5DTZpZ0SA/3khD1ZbiEOV89NyRi4/9bJBNYaRUvsMYhYZdHOpoIar0XY2OUEG41b
         0a8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wlz0jLSt;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k201si93690vka.4.2020.08.02.09.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A660620738;
	Sun,  2 Aug 2020 16:38:05 +0000 (UTC)
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
Subject: [PATCH v2 11/17] arch, mm: replace for_each_memblock() with for_each_mem_pfn_range()
Date: Sun,  2 Aug 2020 19:35:55 +0300
Message-Id: <20200802163601.8189-12-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wlz0jLSt;       spf=pass
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
index 626af348eb8f..d630573277d1 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -304,16 +304,14 @@ free_memmap(unsigned long start_pfn, unsigned long end_pfn)
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
@@ -341,8 +339,7 @@ static void __init free_unused_memmap(void)
 		 * memmap entries are valid from the bank end aligned to
 		 * MAX_ORDER_NR_PAGES.
 		 */
-		prev_end = ALIGN(memblock_region_memory_end_pfn(reg),
-				 MAX_ORDER_NR_PAGES);
+		prev_end = ALIGN(end, MAX_ORDER_NR_PAGES);
 	}
 
 #ifdef CONFIG_SPARSEMEM
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 1e93cfc7c47a..291b5805457d 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -473,12 +473,10 @@ static inline void free_memmap(unsigned long start_pfn, unsigned long end_pfn)
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
@@ -498,8 +496,7 @@ static void __init free_unused_memmap(void)
 		 * memmap entries are valid from the bank end aligned to
 		 * MAX_ORDER_NR_PAGES.
 		 */
-		prev_end = ALIGN(__phys_to_pfn(reg->base + reg->size),
-				 MAX_ORDER_NR_PAGES);
+		prev_end = ALIGN(end, MAX_ORDER_NR_PAGES);
 	}
 
 #ifdef CONFIG_SPARSEMEM
diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
index 78ab9a6ee6ac..fc85cbc66839 100644
--- a/arch/powerpc/kernel/fadump.c
+++ b/arch/powerpc/kernel/fadump.c
@@ -1216,14 +1216,15 @@ static void fadump_free_reserved_memory(unsigned long start_pfn,
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
index c2c11eb8dcfc..1364dd532107 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -192,15 +192,16 @@ void __init initmem_init(void)
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
index 9fcf2d195830..bae2d9edd52c 100644
--- a/arch/powerpc/mm/numa.c
+++ b/arch/powerpc/mm/numa.c
@@ -800,17 +800,14 @@ static void __init setup_nonnuma(void)
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
index 62b8f03ffc80..586ea500dcc7 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -224,15 +224,12 @@ void __init allocate_pgdat(unsigned int nid)
 
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
index 824938849f6d..c1a4c8798973 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1659,12 +1659,10 @@ phys_addr_t __init_memblock memblock_reserved_size(void)
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
index b2b9a3e34696..c2ba412a3141 100644
--- a/mm/sparse.c
+++ b/mm/sparse.c
@@ -292,13 +292,11 @@ void __init memory_present(int nid, unsigned long start, unsigned long end)
  */
 void __init memblocks_present(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-12-rppt%40kernel.org.
