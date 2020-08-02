Return-Path: <clang-built-linux+bncBAABBMGYTP4QKGQEQUURAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E082358FC
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:39:13 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d6sf24662496qkg.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:39:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386352; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYlP5UNJRTUYXr5fctxMCnJHLNAK5UOHxxSItkPf06kjmyxOB0vBI+1yAeR1g5zy/9
         owDfdPMCh+sP2r4/rLg1BgNhnvOdANv/j3b48sV9yhyK4xLoX++U3u9c+h3QMmtZX3Kn
         ghsX2SpLY/F0SLoxcyARAzj8ahs8Qs7mpidU5PpfUZcoFwOCDHfsAwhSwf2aaNnUF1iS
         VtDoDxOO6ukADt8ELQI8K0tRxErqcKH3pokDyvuits2ypj4FQvtSfwoYo22BQzl1FR5T
         XZjTdh624GaLlFt7jnJ58rFDBr8QGR9Rlv7DsWXpvY1rhlB/Berl6f0I7ZeJ11c+MTt3
         Ld+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Qo0pZcX5tggPRML8ZHVe1X/uP7bWdG1ZwOp6sKjdyFY=;
        b=f0JuIKWXKQgbKiLdAt9mqeaCP1RLTnSIhmeuG+lp/JTgi/+1qlbWHfxJKtLroaeEdJ
         W4EKiyeQfinXTuz6e5XCjMABiEslJ6rF7/3Agr8auTXcp+C2OU2RvFW+J4/ha8BmUonx
         ElnBSy+oUzYUaAbdMwRRcFF5huxtGgyc71Dyld/sIGkk4wl+QC21aWMnuVEA90/MHliU
         0V68UXSLnoCiyuEbI9SHDg1dkq+mE92VznlnA8SNXQfu5teTAsEz9aR9KZGFLdOLH8Dr
         0D0ZRNMA+6EfidEJMfMYDS9PAUDniBTwRrrBA1AdMspS6ydZP6fTyCmwt4CX+6ZKbyAG
         cBSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LeAsAzWK;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qo0pZcX5tggPRML8ZHVe1X/uP7bWdG1ZwOp6sKjdyFY=;
        b=g6aZWE5fqXL5iqkMDc/590Pnw1hkuZ14cNxpL8A7edsM1jUru+hwsFCDAJEj6EIvuV
         upFrU8dUzbprSj9wnWp0qWbdnZr7V0Cp/o9+d9xk+zbw5xskltvJrt46SNiIjlRwjEs4
         BsZGHAjl1NHa0q5TdAwglIg9mfNJmzcyabOh2zAinOZUR+b01zYwm81+p4fuq3Im5m/U
         ZndDbHNvjRR1KNWJQ7k+wFYntSjcUcdq+LAoTXuHVraB0Iusvy02OgXmHwMKmdaYtcfM
         rQkZhU7F/YhwrXdDx0mkERlLMI+oG2Bapn3VEa8uf41k9yGpRVmJ3fFF1sva6CCKO+oq
         OFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qo0pZcX5tggPRML8ZHVe1X/uP7bWdG1ZwOp6sKjdyFY=;
        b=UZQXmYiBeKBvaPTxiw9mkjvlGcuqN7Lyk5QP4TKdPMNJx5V/ytokJPf6Dmu8vNO7Yz
         iES7EQhAu3Sx+w5q4JoFks3TWXXyr5OEW+L5SYR+SrB/2TKoQnfOM8Rkjm8hIl1yg3b3
         K3im7LX7v+HArvy8+54TXNV8zvPDis1iClosn0I5BP0IEa+mtWK+9k6rphi3jNiBG17H
         weU2gcmRtFXgO+/o6mlMkqqrqTGBDBINm8vHyvtIRT/QK6X0+R/vuC0Qw7TrWwdvXeDW
         aIJZfBRIjOtOPnNnzH9ARH/mTI2RXwnMvjnJxgV5CzUnt3O4P07GOkFei+r6oYkaSqn8
         KcTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eKrDlMu4cu52sYKQ4kCk/KeneWZY5GPJts5oNK4MtwP4+6o3j
	oTjM248XyFHuYrXt3tpC1wo=
X-Google-Smtp-Source: ABdhPJw5c5SnTMJLNUxOdp3VKCEKmAXIQscBk/1vjz2kIOYZX+otaVWQCEzdse5PZKsaqS2nuVuY+Q==
X-Received: by 2002:ac8:7181:: with SMTP id w1mr12984280qto.172.1596386352310;
        Sun, 02 Aug 2020 09:39:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:34dd:: with SMTP id x29ls5654746qtb.6.gmail; Sun, 02 Aug
 2020 09:39:12 -0700 (PDT)
X-Received: by 2002:ac8:43c4:: with SMTP id w4mr13194598qtn.319.1596386351971;
        Sun, 02 Aug 2020 09:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386351; cv=none;
        d=google.com; s=arc-20160816;
        b=O3UqYiJkyB0JMN3GxuRkjbfwpJ1pBmnyuVRUnBnVRmoq2M1rN3W+xObQgiF45fTSs+
         MdhRTbYXYwbwImrEiPuACKqdDZjJiWzAP8OqokEnJG+y3vs8q5sTfqSgHaOif3ERVmll
         Ihm0GZ1dJ8iYLUMyf3t1frd3vIuPRV2WEYPHVbq6OGNgK040SvOIZC0k7bIP9EvmBdpe
         B2nWA+u7d/cQVCef1QSEqA9YH+BTSbMkg3/GDwd08DgZJbUN33DJ+WL/cjWQJdmd/+rh
         MR1j/4aSO993Fhv8Ifdpp3j6v1whIPxQduEDVUXxvNXRLbMjCzKTYSb3v9wLzQeaxF8/
         wv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jxdzfmJWcu1t7Gqfgtmy6wm3DpCRpOulJZL7PMO12f8=;
        b=wP5z9dVn6uVXliPGAHLcJF+dpD5qd5VzmQH70s4y3y0oqHFxOdYAJsDw74T2nFVvmv
         I4rsDWGu6g1a543K6RjBYET7V/KHC+FhVpLdYC8HncjzvnK6TrP2dSCy1KOLtf/+Rs1A
         ZiV2h0PaZzX3wabs9DsY+5lLiSI60MKSWwpmdt22S+HcrLHUhREjoTEJYk4bHEeHjEti
         KLP4O1lAxeCUxaxCuBd7pvOUs3S0AM+/Lo1Y2118QmGSD0HGzKNpKzRnLdMw0onK409m
         jntOKiHH/hvXCAhSoL2xpGzGMeDtNmaNZKWGyu3DPzkPBpyQUCrAuLr8h4OB5OHZE58C
         ivTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LeAsAzWK;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si750078qkg.5.2020.08.02.09.39.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C6F7207BB;
	Sun,  2 Aug 2020 16:39:00 +0000 (UTC)
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
Subject: [PATCH v2 16/17] memblock: implement for_each_reserved_mem_region() using __next_mem_region()
Date: Sun,  2 Aug 2020 19:36:00 +0300
Message-Id: <20200802163601.8189-17-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LeAsAzWK;       spf=pass
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

Iteration over memblock.reserved with for_each_reserved_mem_region() used
__next_reserved_mem_region() that implemented a subset of
__next_mem_region().

Use __for_each_mem_range() and, essentially, __next_mem_region() with
appropriate parameters to reduce code duplication.

While on it, rename for_each_reserved_mem_region() to
for_each_reserved_mem_range() for consistency.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 .clang-format                    |  2 +-
 arch/arm64/kernel/setup.c        |  2 +-
 drivers/irqchip/irq-gic-v3-its.c |  2 +-
 include/linux/memblock.h         | 12 +++------
 mm/memblock.c                    | 46 +++++++-------------------------
 5 files changed, 17 insertions(+), 47 deletions(-)

diff --git a/.clang-format b/.clang-format
index 52ededab25ce..e28a849a1c58 100644
--- a/.clang-format
+++ b/.clang-format
@@ -266,7 +266,7 @@ ForEachMacros:
   - 'for_each_process_thread'
   - 'for_each_property_of_node'
   - 'for_each_registered_fb'
-  - 'for_each_reserved_mem_region'
+  - 'for_each_reserved_mem_range'
   - 'for_each_rtd_codec_dais'
   - 'for_each_rtd_codec_dais_rollback'
   - 'for_each_rtd_components'
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 93b3844cf442..f3aec7244aab 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -257,7 +257,7 @@ static int __init reserve_memblock_reserved_regions(void)
 		if (!memblock_is_region_reserved(mem->start, mem_size))
 			continue;
 
-		for_each_reserved_mem_region(j, &r_start, &r_end) {
+		for_each_reserved_mem_range(j, &r_start, &r_end) {
 			resource_size_t start, end;
 
 			start = max(PFN_PHYS(PFN_DOWN(r_start)), mem->start);
diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index beac4caefad9..9971fd8cf6b6 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2192,7 +2192,7 @@ static bool gic_check_reserved_range(phys_addr_t addr, unsigned long size)
 
 	addr_end = addr + size - 1;
 
-	for_each_reserved_mem_region(i, &start, &end) {
+	for_each_reserved_mem_range(i, &start, &end) {
 		if (addr >= start && addr_end <= end)
 			return true;
 	}
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index ec2fd8f32a19..9e51b3fd4134 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -136,9 +136,6 @@ void __next_mem_range_rev(u64 *idx, int nid, enum memblock_flags flags,
 			  struct memblock_type *type_b, phys_addr_t *out_start,
 			  phys_addr_t *out_end, int *out_nid);
 
-void __next_reserved_mem_region(u64 *idx, phys_addr_t *out_start,
-				phys_addr_t *out_end);
-
 void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 
 /**
@@ -193,7 +190,7 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 			     MEMBLOCK_NONE, p_start, p_end, NULL)
 
 /**
- * for_each_reserved_mem_region - iterate over all reserved memblock areas
+ * for_each_reserved_mem_range - iterate over all reserved memblock areas
  * @i: u64 used as loop variable
  * @p_start: ptr to phys_addr_t for start address of the range, can be %NULL
  * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
@@ -201,10 +198,9 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
  * Walks over reserved areas of memblock. Available as soon as memblock
  * is initialized.
  */
-#define for_each_reserved_mem_region(i, p_start, p_end)			\
-	for (i = 0UL, __next_reserved_mem_region(&i, p_start, p_end);	\
-	     i != (u64)ULLONG_MAX;					\
-	     __next_reserved_mem_region(&i, p_start, p_end))
+#define for_each_reserved_mem_range(i, p_start, p_end)			\
+	__for_each_mem_range(i, &memblock.reserved, NULL, NUMA_NO_NODE,	\
+			     MEMBLOCK_NONE, p_start, p_end, NULL)
 
 static inline bool memblock_is_hotpluggable(struct memblock_region *m)
 {
diff --git a/mm/memblock.c b/mm/memblock.c
index 48d614352b25..dadf579f7c53 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -946,42 +946,16 @@ int __init_memblock memblock_clear_nomap(phys_addr_t base, phys_addr_t size)
 	return memblock_setclr_flag(base, size, 0, MEMBLOCK_NOMAP);
 }
 
-/**
- * __next_reserved_mem_region - next function for for_each_reserved_region()
- * @idx: pointer to u64 loop variable
- * @out_start: ptr to phys_addr_t for start address of the region, can be %NULL
- * @out_end: ptr to phys_addr_t for end address of the region, can be %NULL
- *
- * Iterate over all reserved memory regions.
- */
-void __init_memblock __next_reserved_mem_region(u64 *idx,
-					   phys_addr_t *out_start,
-					   phys_addr_t *out_end)
-{
-	struct memblock_type *type = &memblock.reserved;
-
-	if (*idx < type->cnt) {
-		struct memblock_region *r = &type->regions[*idx];
-		phys_addr_t base = r->base;
-		phys_addr_t size = r->size;
-
-		if (out_start)
-			*out_start = base;
-		if (out_end)
-			*out_end = base + size - 1;
-
-		*idx += 1;
-		return;
-	}
-
-	/* signal end of iteration */
-	*idx = ULLONG_MAX;
-}
-
-static bool should_skip_region(struct memblock_region *m, int nid, int flags)
+static bool __init_memblock should_skip_region(struct memblock_type *type,
+					       struct memblock_region *m,
+					       int nid, int flags)
 {
 	int m_nid = memblock_get_region_node(m);
 
+	/* we never skip regions when iterating memblock.reserved */
+	if (type == &memblock.reserved)
+		return false;
+
 	/* only memory regions are associated with nodes, check it */
 	if (nid != NUMA_NO_NODE && nid != m_nid)
 		return true;
@@ -1048,7 +1022,7 @@ void __init_memblock __next_mem_range(u64 *idx, int nid,
 		phys_addr_t m_end = m->base + m->size;
 		int	    m_nid = memblock_get_region_node(m);
 
-		if (should_skip_region(m, nid, flags))
+		if (should_skip_region(type_a, m, nid, flags))
 			continue;
 
 		if (!type_b) {
@@ -1152,7 +1126,7 @@ void __init_memblock __next_mem_range_rev(u64 *idx, int nid,
 		phys_addr_t m_end = m->base + m->size;
 		int m_nid = memblock_get_region_node(m);
 
-		if (should_skip_region(m, nid, flags))
+		if (should_skip_region(type_a, m, nid, flags))
 			continue;
 
 		if (!type_b) {
@@ -1977,7 +1951,7 @@ static unsigned long __init free_low_memory_core_early(void)
 
 	memblock_clear_hotplug(0, -1);
 
-	for_each_reserved_mem_region(i, &start, &end)
+	for_each_reserved_mem_range(i, &start, &end)
 		reserve_bootmem_region(start, end);
 
 	/*
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-17-rppt%40kernel.org.
