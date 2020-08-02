Return-Path: <clang-built-linux+bncBAABBIOXTP4QKGQE43ZJKHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3CD235894
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:36:50 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e24sf16111946pfl.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:36:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386209; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZ+V9VR1/TR3h6R/7P2CY3ZAme123IqyKNOkIca20chTXjVi0TBUf7Y47TB/F0H978
         aAJaPGUvv6ziaAj5VrYEPeZJ4rz1FGrcPVhSTXOLN1UpO4kqln5mc8vG7ASX2QOgw757
         RYEh5N5hrUlTcGICOaVQI5U6f7NuFH6lEcPoHfLUVGsdzn4F9XDxdYp3nsgYLpBQhdA3
         xiK2w7zjMGDS0InHNB6ZZLaLjfmkK2DaW1sGfp/mFGUFof5/+PwRwOoqbnJpEq0wMxG/
         rXQfH+RPAUwrhR5pqaaBio9R/5ezG70Ro9tRMdj2QG6RuBnlzj6ucRxWb0c6ThD+1jrZ
         qJbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6IKVVfoCgY8fXU+K8X6hoXcIxe9PztqFbDz7SboyLOA=;
        b=YRBnG8zpFi3M6M3X341UuWmwLkMkcPOnXHdd0PHJwAtk12RJ6XqzNzwtgTq+OD2eu6
         GgpuXnZsgpUK5In4jDgskiloqngNBpd7EcSeWIw/VEIasA2WP51VgIGj2cG0hLkFPig1
         rPU0SZAAw66Q7z9jG84BIMv/FpcXg2mY4gLPG6XgarMEx0L7T+AxQ74I1oQeKcx96ye9
         1EpEhNp+FD96Cp2KqtftDuAOHxeJU9taD5o6NvXvzVUboVD/GthIYVm51ms/wX1RRRQe
         4uNttGJyM/fOYBgajyBQ9N+lLUl+CZnA+Ec4VXp6XFg7y5ofXKPkSL1GBKEYrTcmtTGB
         etiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wmv8Qn+1;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6IKVVfoCgY8fXU+K8X6hoXcIxe9PztqFbDz7SboyLOA=;
        b=jZ+2yAIRwncNRtvJdd+ik1NwOv+stFGOf6+ThqLnlghqEQLZlYBSL2BqIUO8uL5yi3
         Ek0IcXXbbRX/RsylIrqPuRWOE4fSIfcOechFEVoGv4cA/I+po34T/4WdM6q93grKlocy
         3gOKKrEzaWEAFgQBH9s5V1gFD2aSAmVLx0dtrnao4NJIYQoonsP1Sb8eVPhkzOZz1aue
         k5mr2hxKkfgrmJEOOjsmgOv8qAuD3vC2GtYIpHLAUZVUlOJENM+uIdxBBxyu23LBuAI3
         mr176+9GWXmh0xB15SsWz2c0JD727VLh9hL/WDRfxXFf4dE9fFnpt7uBXnx5C33fAQy6
         0pRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6IKVVfoCgY8fXU+K8X6hoXcIxe9PztqFbDz7SboyLOA=;
        b=mBhC6OVbzCpTQN+bp9JXjbuR3acHNU3WQS0Kz+sHoQ7zM16kQyi3v45w/Zr8YW5FtV
         j2odR2wSY+gDPb1Ok40pepFaURO7r2impxMwKiJkvhjqBP5c54BufbL2P171EbXIYayc
         lxcaxlzDPGx48X08vkh1gTU0nbFxqZUIWK/pPEhEHJ/bT/YhimXcYnBgBGASvGDz8O9g
         Phtl4z30STx5A8E4fCmbyz2usBvs01hOC388R6jzrRjVaiLcnFOM7PH2nhAFDuOdyfCo
         jfKkMObf+3w3lN9t8KNM6rgagugafOKQWEeBcZXTi62DwX1eBpGAhGV7YMjiIdxQoWTO
         N8cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Lo0Q2wW5hbbJa7PC8XipWGdjF2VVxUrtWxwo5IpoOOR1W3lQh
	eEqgV1sDqA61qA+worUuZ9g=
X-Google-Smtp-Source: ABdhPJx7znM9JZYj0f2hS39kjG3BaB0JyMgqUwPoWfGRxDEhypNH11mbcO8GXpO4MtAV4Zupa+NsWA==
X-Received: by 2002:a05:6a00:1509:: with SMTP id q9mr12145407pfu.24.1596386209409;
        Sun, 02 Aug 2020 09:36:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ee14:: with SMTP id e20ls379531pfi.2.gmail; Sun, 02 Aug
 2020 09:36:49 -0700 (PDT)
X-Received: by 2002:a63:b21b:: with SMTP id x27mr4395672pge.284.1596386209071;
        Sun, 02 Aug 2020 09:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386209; cv=none;
        d=google.com; s=arc-20160816;
        b=WBjBkvM326c1ism46xfgygpvDlrR8nAv/aTmHyViJ5ID0zScAQJDpsIFSRRELmxO/7
         GmBa91hHAtvBBnHlpvv33sPeTOk3FilE5iTj4py+idRGfEhYkrmJeImfFw2PjYlZhHT8
         xDhC3CU2zwuFfBayRkeutOA8x1X4Vr3xt4o0u90bquLnntBTVihXbqx34mruoqD5+fXl
         Tc3Ym2F45Ez3fwtptd/ec9Y4j2D8Kg3L/7ucZ6GWfR2gaqxwCBpe/0WGmvrIyM8KAtZ/
         TteVB+WkJv3yfl8BLpRloSxjCUfbj7vABaZngXxAwc+faH6U45PAgGOM5n811Oix5mzG
         LODg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Rz4tnobTO92vqGlfPZ6eftAWPjiGJIs885znHdwZkfA=;
        b=ObzIKQRmsZ+ImdeVQpSOLnwdcQ8ZW9LABDBUmKeaJEYcxKZoEdy5j1Nashh5bxMlD5
         zDobLr85ORmfw0gF0FCqfe7+KHKuAl3qMcjpdA0NAt7OhX+Ak/3dOfB43NRe1U4zWnX2
         tXYZuF4AG8foWnUbMOGRK5HjSMmSf0KaQRyA0D3XJuh5vDRlOEjmosVsgZWweQWbWzR3
         e29AwF+retjPifYgqnidUTjW4bGlcModrPBbVyOWubUIfqZSInTjP16QncPva7ha82pk
         KlfrnmmYmQvUgEXaV38a/xouhq8DMotatXCQ96zPJr10/L9eN+ONXNSTmKYSGsEjYBki
         xP/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wmv8Qn+1;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t75si153702pfc.3.2020.08.02.09.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4AD3920738;
	Sun,  2 Aug 2020 16:36:38 +0000 (UTC)
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
Subject: [PATCH v2 03/17] arm, xtensa: simplify initialization of high memory pages
Date: Sun,  2 Aug 2020 19:35:47 +0300
Message-Id: <20200802163601.8189-4-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wmv8Qn+1;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-4-rppt%40kernel.org.
