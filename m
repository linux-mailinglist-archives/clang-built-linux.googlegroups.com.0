Return-Path: <clang-built-linux+bncBAABBAXC574QKGQEVDQF7FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6312488FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:24 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id a13sf7694495oie.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763843; cv=pass;
        d=google.com; s=arc-20160816;
        b=OcjTu+dFNb7UWVsYCTAFcrWm40n08Cx0kmAWZ459ST5Xse4nYnKxFYjaaJQNonZAL8
         LMLC6pY1NFpSVkdrtt/5hSuc66poFFzDtEqUDT6UxMogSuerCiBs+QtPLgCp6zbsxPxc
         Htkg6+O7paIstx4XZUKnIWkeXajqtqiVv2sBcPyIrLOCllgDW6kRPo2UtNJQQynWb2pP
         6EfxBquIs5FlYQ4Zw9S+iaBVN2GYvXrDY3M/Z32lXL8UZCykkgFaN/8TEECcsTuJpCMO
         vVY2wtoMYi9lryIR0zpz8212p9ywZxqhMxFHwOB5/emORh3c9yUhoMdHJIJ4GV0/+Zt4
         qtuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=affwFYMuYOJNib/VlidId8z1m/dVwDEttYiqOKAjWeg=;
        b=R9gVxmZgo4ig3f3rLMnZOvnMDFSs/XoKCEFiqyfJAKd9w6phGf0881yo4LMhTVkXos
         sEsT5LeOctQA9l6rd9XYb5aFvj9MHzFrKIVrCnbb4twC2quOeeAU/YhCTDqZoPrViOaQ
         WesPcijY/dOILZpz4BplVwUQvauguvZhTMvLuI4/6wOzT1IPg27NJcyWbss+Bn7bsXZY
         7psRPcH7TqEL/kpHfjunHn48W6V+fw6O0R6CYiwsbCS8hqUwLml9cpp9szZVgkngKSy8
         3YKy2RDdu+oFPnbqGl/WDD6AxFGdaqTXimW3rvYTtxdlQFM3dF58tXl3cBSgZds1WSjP
         oBKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t+yCWBJ1;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=affwFYMuYOJNib/VlidId8z1m/dVwDEttYiqOKAjWeg=;
        b=Vd/QBs33YaG5R/J0pzn1xQtYaiK+6PM3hoW2ERjR9sEMZjpMAicDZaCDG1uWlPLoAw
         ODczVQjar+X/zHsPPMRJSCrmbZxeqiR7EGW4CzXo1cz22jNHVwS0MY4OELRENHMJi4bZ
         SMYgLOLeOhSpcfa34o5kI9tXW81k29yMSD2eDDRxknzABYMMAvmdjh3kNRe6N4+AuZHA
         N7K+e8MlmPVaOyHR76s/JfIgKOhYO5/flzDRBavD2pKK6gAW8PK2sfKopqkIAQNaHygY
         ob7y+bA4WUeFmjm8JmaOs20wZsfTqKwDd0vDP+NLOyPRyTjVQ5WaFcIu7a6mrmDbniZ+
         xnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=affwFYMuYOJNib/VlidId8z1m/dVwDEttYiqOKAjWeg=;
        b=BcNWTfSYegqXbBGV5lcG7VlE7Nk2qKdtvScyFbglAoLvlJ79opeIDXc3fXdEp0geRD
         ThSecy0tHy72T++gzcZjysSG9EscX6hlxEesIloQ5EuethJEv78FTnaX5V2fOp3tZ9LF
         O9KhxOqUteEILdPUJOzLMjGLHqm+9SANb1kJF9w7YDmZ9ndlhu5OzMTCb1GggdyWQKFo
         nb8yw3PBDSdZb42rLQMsL3h8SSmUnq74cVx4jtTgsc4+WyQ4qVqm+6f2oAKP+cDb9IQy
         Zq73JWDx78fC2E5ikRNPFOcGlwBG6GD0aZW28FwVO+T6JvBsoUSymDuZhElQBq9+IYwB
         WOBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tEZ1+YEP05rOvtCRjjiU5zHeyVDqceBnMx9ELs90muwCngKPw
	ygm/kjwBmqaMGdVh/w5X/Kg=
X-Google-Smtp-Source: ABdhPJzakrajx5bRwsJtcli/FYdFmcX6HiIe4onqQYocVIBfA8cpBGOV7TgfjNYIGxjqAPuxqOI/LA==
X-Received: by 2002:a9d:6b8e:: with SMTP id b14mr15263057otq.307.1597763842954;
        Tue, 18 Aug 2020 08:17:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4745:: with SMTP id u66ls4157713oia.11.gmail; Tue, 18
 Aug 2020 08:17:22 -0700 (PDT)
X-Received: by 2002:aca:b6c4:: with SMTP id g187mr334063oif.91.1597763842259;
        Tue, 18 Aug 2020 08:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763842; cv=none;
        d=google.com; s=arc-20160816;
        b=T+8KrRCTvoxG6c7h9vVuX7H7jW4hVE/DsbYP5i0Tdi6cshGuS21MHzex9l8F4CYPlj
         8qtLD9J963ec3NVyXYLyQMBGF01ziRpRp5jA4d9GZxKTU9aDWqJKbjd2LBKi19y8kLbV
         90ytiTGiP/LKNIMZ1Mq8wbyOFcmgVYymGohBnLaufg1YkqvIR5j8PhMZmX7XYJMWBwLn
         sXdREEoSayGOs0LSvyCkQeYSDSFWqmY+DISnqpa/LOZS825pjRGoDbTFndxUoXJcDrxQ
         lc1u9I4f5LeWeCsgEinl5g6bSOFmaTIla9u63NnBh2R5uY9ySWF/k4JdQ5bMKEa1J/Vx
         eBNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vwTRXqx7LVWgYA9wKLNO5J64e0Spy+oRCjBfsCjU5n0=;
        b=05OBuCngqapkweKHbvXaEx9DGyYY+7AmZq2qlqbIIr3mcogczR12JmeA40V0MEXbxL
         nGncfjYCizpkXiZo/NQ941WqiSmsIsbjORR6eaF48iNbqgzw16JdUznHAUFgFli5q1xk
         oExcw9nFU/gLcfqOTo/5CY8o/GjVpfdTTYnygf5Mje00Jtu8Y+BWJ/0xUl0MVfAQOQWN
         FZ7iZwMXNCXS8PPOf3CQWwcGPYVqjXcP6BgRhNI8FaHId23XMHT4qM4yYlLwYXRk5MPf
         7cqovJQqgTG46l1FceiA9bbd4y1qW6roUEfmX7r+dMS3Eje7VkLVe+MmI/yzUekfuuyl
         0EGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t+yCWBJ1;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si1042443otm.5.2020.08.18.08.17.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12094207DA;
	Tue, 18 Aug 2020 15:17:10 +0000 (UTC)
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
Subject: [PATCH v3 03/17] arm, xtensa: simplify initialization of high memory pages
Date: Tue, 18 Aug 2020 18:16:20 +0300
Message-Id: <20200818151634.14343-4-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=t+yCWBJ1;       spf=pass
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
Reviewed-by: Max Filippov <jcmvbkbc@gmail.com>		# xtensa
Tested-by: Max Filippov <jcmvbkbc@gmail.com>		# xtensa
---
 arch/arm/mm/init.c    | 48 +++++++------------------------------
 arch/xtensa/mm/init.c | 55 ++++++++-----------------------------------
 2 files changed, 18 insertions(+), 85 deletions(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 000c1b48e973..50a5a30a78ff 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -347,61 +347,29 @@ static void __init free_unused_memmap(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-4-rppt%40kernel.org.
