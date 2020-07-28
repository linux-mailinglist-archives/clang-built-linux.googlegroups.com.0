Return-Path: <clang-built-linux+bncBAABBJHI734AKGQEF2KHA4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EAF230174
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:14:14 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 104sf7817335otv.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:14:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913253; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxrBs5FCRiZcSpEw8mgRzFX+YwEZHepOevH2u9Q6Vqpi13G5EVTiXMWWEQkjOb7auR
         eseU02XgEsEYcHBXuDQn8AdbFGvIS56NfxiI87jXEUpnmBdi8VUKqpHChzX1KS49ubKC
         BKcomLXmfiibATCXI3vq+XEH0t4v9BXrDy2NR6fwe3l6Wdkwp+TkoVfF4RslxWPZLet0
         LAB7U9KOclLohc4TqRVKGWDXkuKvtKM85E/ETcah/2esbcw0wJLMwocSKjj8RUfob6GB
         6kNWE67b8TKcnAkgi22I4rxaXEoiaSUMjGB+RFDhU7SmdAfgI0D36JtcZ7qY0LW75DOI
         zDvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J8Cod6IJr+bJM480SinODGqU3TQbCDqKtxRrPYyNXqY=;
        b=ztezOCpdP2WM2yx39IHMN8z4H8KRafCLw3nozKors3kHeOKeiqHEGQ6z7kn102gAlB
         PXMU4ABU1t0csLw/rxeVXQVYpmu9dz6nS/ZwWxFRWTnerPImnOqrBSiOmqyJIRx7Zj8s
         90dhdVa39UvUMy2tsGtwjOhTk3ZYbI7vAzeaszgkwU6RU9FBaYJarYA6Vfsv2PCvIy8k
         9ToBF+/ohBxTzsANfwklmJcipxry6eyNRTxleIBI8TFdvtMBK2+sLFQJlZHLAU6jK3ZO
         Y0KTLI9FBPjldVX2zX54PeIw6TV5zj0/Gcnb/uAAOsixU1JK6KXYDRti72Fwq/l1VKXe
         nVLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zI6O4WxG;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J8Cod6IJr+bJM480SinODGqU3TQbCDqKtxRrPYyNXqY=;
        b=W4cxx+pbneq5122/0vf6rBTFDcEelagpNMHuMD4zW1dyh1592/RksXuGDdLxmqn0Lr
         RN2oNoPvlkClGGAv+K45AfD9esSnH9j1WpssDFRKyfOjAFozZF5Ghp0rER+SfV7OOfYi
         5Wh6TGdRGxK8cxDPjnvoTvy3Brbq61cBJDYr6gWBglLhvhHdHIoE4a/6USDK08E9tyum
         hO5zWW5wRjgS2ZgFsLXX0nd7+8UmhnYh+cPFkfeonTo4XD9UkKPjmm3lV+yODxgHJscp
         mmcNQOU8OF7kSxWBsnOpQ/TKDW0Ghnay5cvB47bzeA3E78rbQ9PvTLzcKSqDpLqdFMRE
         ATBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J8Cod6IJr+bJM480SinODGqU3TQbCDqKtxRrPYyNXqY=;
        b=lcEKK58v8e98abdrF/cJUTHG1Wct5SKJ5Tae3+fKG0X85IdPRqNqsRgY5NcHuSucaC
         KYxa+yRI8+PYz1IlXerfzZ/p4Vuekr5Cn2G0T41OvxZgb7Pz4W7ofvEFy0H5Y47Wceiw
         OaanR2+m/d2mblssMqgjOiwA/JWY/R6y/Lv3KzowDRg7oMdYsmu/kxGr2/LS+szd0KB4
         juZWvP9jZINfoyh6ci+STpJNUHe785e0Y5/D7TmnMMyZ0VGA48JFD1sbHcrIUAtzkYBN
         5nro+OTQ1pc0KJ/2mRO6Y4w+5QegJfv2T8VVkLYDB/ESg20AYqfkbbl3gfD/Gcme935S
         FWSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gSzVTpobbPEvlWSbOYUPR9LALWBxFaCbLr1G5bgBrjx48ChRP
	lWR++X1YRsv/oQVGX/LSJpQ=
X-Google-Smtp-Source: ABdhPJxFHHZ1P4pg0Lvn131ZEAFW3zaJFU88dAwQj3fuFavKN9w8fLXahnLc8Tf+PsIEKZ1Z3NRDcw==
X-Received: by 2002:a05:6830:18ed:: with SMTP id d13mr23937404otf.196.1595913253036;
        Mon, 27 Jul 2020 22:14:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc57:: with SMTP id a84ls869252oii.2.gmail; Mon, 27 Jul
 2020 22:14:12 -0700 (PDT)
X-Received: by 2002:aca:db44:: with SMTP id s65mr2221333oig.115.1595913252731;
        Mon, 27 Jul 2020 22:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913252; cv=none;
        d=google.com; s=arc-20160816;
        b=Adkm2XkQQ9USPqLYvNkrivAc5AgihSqxE9tNgoekOQZNHWW4+ujqzuhv+aKXqWaO1i
         cLChC9vUbjPL45jpjNaWiIgkI5lGmxFAPvcGU/ANz/km7DiYcX4ODL64C+LLrttRQHiv
         514/t2hgVPQiVbcrAZSSX9PA5bGP44cncBrLqKnpXUv2+58f33yFDKNFl/AJI2IPtgGU
         4GQFCd0b7k1Kqx+8tLvS0r4F21yLXwroVNg6ljA6uKDuSHOVkgsVHPFtGv6QGltydypq
         ekQ3PatX7nJf/m9emWKZUAYG2onMoYk1r7h9foCZGviUHGelbND6IlcEgEZ2t6dxMyjN
         R+Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GKcS4psww2Cl/DfBvmRF/hFsIW36xhRGqiV4EtLUatE=;
        b=g6tH/qCoNIIXWvXbH0xoBmcCq0cjWuOr7DnoLraTLB+rcMnoOmP6FShJOLGlzP/MAb
         Z/EwfKw9FPbLK1D/KHXeCPoM2fZ5QPmaJIjSANv/JnL7OOxH/Z/1Jq4dCPJwjhoBMJb2
         +5eR+t1WGCWuZDznl0QqFLUr6ircCCmzHWFKmXY4WAvE8jYBiaX4HGGIDi56kOqEkQ+K
         TgE2jVB+DoCqscWV6BPOpldvBLCJ8owfTpFkJGUk0eKoPZzUAvuYwK1FmEsKqKbsJzh0
         KRJ/dniT67MUbePiEkx3l6VqqIn64WfTrYwMIqWmftvPF7fq/oyuBofOA88kz7d6Fzqx
         bNNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zI6O4WxG;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si1121496ooe.0.2020.07.27.22.14.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE1BB2177B;
	Tue, 28 Jul 2020 05:14:02 +0000 (UTC)
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
Subject: [PATCH 12/15] arch, mm: replace for_each_memblock() with for_each_mem_pfn_range()
Date: Tue, 28 Jul 2020 08:11:50 +0300
Message-Id: <20200728051153.1590-13-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zI6O4WxG;       spf=pass
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
index 626af348eb8f..bb56668b4f54 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start, &end, NULL) {
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
index 1e93cfc7c47a..271a8ea32482 100644
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
 
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start, &end, NULL) {
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
index 2446a61e3c25..fdbafe417139 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &reg_spfn, &reg_epfn, NULL) {
+		tstart = max_t(u64, spfn, reg_spfn);
+		tend   = min_t(u64, epfn, reg_epfn);
+
 		if (tstart < tend) {
 			fadump_free_reserved_memory(tstart, tend);
 
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index c2c11eb8dcfc..38d1acd7c8ef 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &spfn, &epfn, NULL) {
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
index 9fcf2d195830..53254afae725 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start_pfn, &end_pfn, NULL) {
 		fake_numa_create_new_node(end_pfn, &nid);
 		memblock_set_node(PFN_PHYS(start_pfn),
 				  PFN_PHYS(end_pfn - start_pfn),
diff --git a/arch/s390/mm/page-states.c b/arch/s390/mm/page-states.c
index fc141893d028..8909f7b7b053 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start, &end, NULL) {
 		page = pfn_to_page(start);
 		for (ix = start; ix < end; ix++, page++) {
 			if (__test_and_clear_bit(PG_arch_1, &page->flags))
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index 62b8f03ffc80..398ee363e3e3 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start_pfn, &end_pfn, NULL)
 		__add_active_range(0, start_pfn, end_pfn);
-	}
 
 	/* All of system RAM sits in node 0 for the non-NUMA case */
 	allocate_pgdat(0);
diff --git a/mm/memblock.c b/mm/memblock.c
index 824938849f6d..2ad5e6e47215 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start_pfn, &end_pfn, NULL) {
 		start_pfn = min_t(unsigned long, start_pfn, limit_pfn);
 		end_pfn = min_t(unsigned long, end_pfn, limit_pfn);
 		pages += end_pfn - start_pfn;
diff --git a/mm/sparse.c b/mm/sparse.c
index b2b9a3e34696..8bdaddb40453 100644
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
+	for_each_mem_pfn_range(i, NUMA_NO_NODE, &start, &end, &nid)
+		memory_present(nid, start, end);
 }
 
 /*
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-13-rppt%40kernel.org.
