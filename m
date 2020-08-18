Return-Path: <clang-built-linux+bncBAABBEPD574QKGQEKDZK3EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC6248952
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:19:48 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id m3sf5804111vkl.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:19:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763987; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5A7vjYV8QzMNgje77Z5tzgAy3pNRPxJMCc1k7U2yz9VjDIHCJrS+WN4ySXBV/mcbZ
         Up4GVS4q+YOp32eMcgv/IcKKBDjGL4p31zuFFKJd91hM48C9TRKYeqTmpVRcBDzIsjk2
         ei+FWIbs4ww2YShUdr/LKSzCaVkybNhcpRwZCFzZ1AKd/3d+zRTpwc+R3nvnX0c6D0bo
         Mxa/itrN2FrIDnLJgAstaygV63d684Y+QjHQRI0Eww6kKKoScroZaXD9XsCbIxTdzUJl
         B/R6N9CDPUou7kd3C+RG77+0xv9zNRFN4wWBxH4Fy2mRDpTKp621o8dpv71BEybgo1wW
         DoCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FRMevT9uR3saQZJoP85uX7TQnj95Sg9z4EqYPKwrom4=;
        b=OIXBdyEwI4q/xeMXayFbInyW02drxEUcLnWya9cM3F7paZcwO3Bi6lnoM5dewfe4tv
         kbvDQQ1vjFmYHxi2TDJ0lxHhYnGrbsYQrvTpe5mVz9G4KmsiDXwX75A2NeRHpVoAsqxj
         AkbHlejG/ugTUUnnT3IQ9KhkUp83M0IDVinAgn+V0ESyfwmjCp/cQEZavKO4PyAG06Kw
         uClndqg5+PW23kYdrtY9c4kwAEmJJnwgAiKTgBsRM1WezmU6jm/9Uq1ovwN1ycfDP6p3
         8uF3uOA1PPKD3Sk3GB5WeF2/NL3f9lIkbcQ8V4hUuEF5kIqiUukCvcpfF9Kl2j5+Z8EO
         cT4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EiIoYcde;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FRMevT9uR3saQZJoP85uX7TQnj95Sg9z4EqYPKwrom4=;
        b=ZDvIL21aB+fvew2H37rhPot2MmtcA5/eEHdtDfqoD7eteYhH6dCuPirb8BNgVbxpjV
         c2iCTTbLkZuqAdBK2XBK3FQblU97D1op0Yz3GYPZiYFhd80mXqU3TwObnYlMcKxGvC0H
         2BlyDPYiSaEL6ZM8HZSldOOy96QO8Pw5OA7hXsGU8WkimblmZbp2EO/L9aCP+9dtEBqT
         MhelBywKsMp2TiE0FZIcFnkBLmCsHartgoUj9H5BvK23jiziPkmWH7/Ld1EDeBQEtlLb
         IvVOJmPXfpaUp8zaU/Pd9aqpcK7dlrlbYwyLYYvCo3uoWAc8JFd7Ys0nRRhlskCVv4BA
         ncJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FRMevT9uR3saQZJoP85uX7TQnj95Sg9z4EqYPKwrom4=;
        b=CmAjRUumodKJWEHq/t11bL/xCND9C+cotSl9O2ftde14Kga26n5EgypMb0c/kH2oA2
         QMQd4oVIDHhSs9TTvZl5nekrR+nq+Jm1yVw83tHehecYHqFCQmRJH23tCrnqSaVSy1QB
         hUvu1a05TUbXCbnXFt4A6M6bzyyfweW6cYKW5uNccVOKrqj5u1vx/WgMnh3wtoar4ctz
         K8YT2t8VBge1NmqVubM26ghbPb69RLy/nPqCh4E7MP0xCGFv9bYlzXMwzvBxS6k/rTqQ
         D+TqLti8BF/f5m5UHhnV2eJ0J/cRivZBRhodUcbr6jDcNqAnBUKC1QKVFUg3o80ElvVU
         dPjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KL2Y/RPhMaawi/NefzwHwZ08F4V78P9RDQjgMLlBoDgzNxvnG
	iGfTBG0H3fq82K8aneE5Op8=
X-Google-Smtp-Source: ABdhPJzCpRBAt1oO5MAFxVDSQsIhfJspYcJHx//qzA0rv6ryeyw2MGvb9ZCa/uD5REVgH2tByUUtoQ==
X-Received: by 2002:a67:bb06:: with SMTP id m6mr11766556vsn.54.1597763985722;
        Tue, 18 Aug 2020 08:19:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:778c:: with SMTP id x12ls1391614uar.5.gmail; Tue, 18 Aug
 2020 08:19:45 -0700 (PDT)
X-Received: by 2002:ab0:681a:: with SMTP id z26mr11300836uar.91.1597763985372;
        Tue, 18 Aug 2020 08:19:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763985; cv=none;
        d=google.com; s=arc-20160816;
        b=kdxarE5DNUS3F5Vpy5iN804Z6KfOR0/XbV5xhvZUDzYewwPbjpcMpnFEkYhb/2keZB
         IyeJNtIYll+RKGoxG/CICnsuZoBSDyZqAO0d29kgXqT0/uWfsU60WkxPPWCRdMoFTmtx
         WlMvwk/q8zwNjkZMrIr8UUvCx2opavK+l1osD3QwrqK8A+WCqo3MEZwgd70JnvqTzeP7
         fWKikKr++rYpneuHyJZsCfEsls+yJquqcfLyLMRlqfS/E3ab71hj2O/t1xJSIEUBtk71
         9pxEq4freeotbVH/9ahZ8zQqxGQr5xm7pU5NTzxZqUtHzMrq9gW7JJIyP4d0VrK7u2aD
         Ci0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QHq/Ewvu57zjhnE3QeuW6Kow4PFEvZy8FDuUpuicJwE=;
        b=Vc74k8vaKGI12Dvw3TTEid+L95p317Prx0qfZSRaA3mEc7YtzFSNkJ9+u6MdLN/QrW
         VHcima6+WHMfsO/k8gXpZuNMM1A2vuKYNL87NghyfWOvr0Fbrp5NvaveK6wXa9kEYwjV
         n1Yuc06A+BKkhm+HUC/GpvvdNcW58eJ6BfABj8eessXzHYaGUTX+LOTQAocWPDc3ByMe
         y/Nb1Mh4/k3okzKkmXLhqJU8TT7FC+BpD9wRIvuM+EnjxPw1+tCvKS2fTbHkT7Y3VfH0
         +1grjf2faQqSDrceDdJDdLgxItAGPzcGNyRk1m1gmTupg93M/+aqnPA5dkeaDLtnIP33
         aLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EiIoYcde;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s126si1120399vkd.1.2020.08.18.08.19.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:19:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B392120825;
	Tue, 18 Aug 2020 15:19:33 +0000 (UTC)
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
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: [PATCH v3 16/17] memblock: implement for_each_reserved_mem_region() using __next_mem_region()
Date: Tue, 18 Aug 2020 18:16:33 +0300
Message-Id: <20200818151634.14343-17-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EiIoYcde;       spf=pass
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
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> # .clang-format
---
 .clang-format                    |  2 +-
 arch/arm64/kernel/setup.c        |  2 +-
 drivers/irqchip/irq-gic-v3-its.c |  2 +-
 include/linux/memblock.h         | 12 +++----
 mm/memblock.c                    | 56 ++++++++++++--------------------
 5 files changed, 27 insertions(+), 47 deletions(-)

diff --git a/.clang-format b/.clang-format
index 3e42a8e4df73..2b77cc419b97 100644
--- a/.clang-format
+++ b/.clang-format
@@ -267,7 +267,7 @@ ForEachMacros:
   - 'for_each_process_thread'
   - 'for_each_property_of_node'
   - 'for_each_registered_fb'
-  - 'for_each_reserved_mem_region'
+  - 'for_each_reserved_mem_range'
   - 'for_each_rtd_codec_dais'
   - 'for_each_rtd_codec_dais_rollback'
   - 'for_each_rtd_components'
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 77c4c9bad1b8..a986c6f8ab42 100644
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
index 95f097448f97..ca5c470ed0d0 100644
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
index 15ed119701c1..354078713cd1 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -132,9 +132,6 @@ void __next_mem_range_rev(u64 *idx, int nid, enum memblock_flags flags,
 			  struct memblock_type *type_b, phys_addr_t *out_start,
 			  phys_addr_t *out_end, int *out_nid);
 
-void __next_reserved_mem_region(u64 *idx, phys_addr_t *out_start,
-				phys_addr_t *out_end);
-
 void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 
 #ifdef CONFIG_HAVE_MEMBLOCK_PHYS_MAP
@@ -224,7 +221,7 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
 				 MEMBLOCK_NONE, p_start, p_end, NULL)
 
 /**
- * for_each_reserved_mem_region - iterate over all reserved memblock areas
+ * for_each_reserved_mem_range - iterate over all reserved memblock areas
  * @i: u64 used as loop variable
  * @p_start: ptr to phys_addr_t for start address of the range, can be %NULL
  * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
@@ -232,10 +229,9 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
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
index eb4f866bea34..d0be57acccf2 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -132,6 +132,14 @@ struct memblock_type physmem = {
 };
 #endif
 
+/*
+ * keep a pointer to &memblock.memory in the text section to use it in
+ * __next_mem_range() and its helpers.
+ *  For architectures that do not keep memblock data after init, this
+ * pointer will be reset to NULL at memblock_discard()
+ */
+static __refdata struct memblock_type *memblock_memory = &memblock.memory;
+
 #define for_each_memblock_type(i, memblock_type, rgn)			\
 	for (i = 0, rgn = &memblock_type->regions[0];			\
 	     i < memblock_type->cnt;					\
@@ -399,6 +407,8 @@ void __init memblock_discard(void)
 				  memblock.memory.max);
 		__memblock_free_late(addr, size);
 	}
+
+	memblock_memory = NULL;
 }
 #endif
 
@@ -949,42 +959,16 @@ int __init_memblock memblock_clear_nomap(phys_addr_t base, phys_addr_t size)
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
+static bool should_skip_region(struct memblock_type *type,
+			       struct memblock_region *m,
+			       int nid, int flags)
 {
 	int m_nid = memblock_get_region_node(m);
 
+	/* we never skip regions when iterating memblock.reserved or physmem */
+	if (type != memblock_memory)
+		return false;
+
 	/* only memory regions are associated with nodes, check it */
 	if (nid != NUMA_NO_NODE && nid != m_nid)
 		return true;
@@ -1049,7 +1033,7 @@ void __next_mem_range(u64 *idx, int nid, enum memblock_flags flags,
 		phys_addr_t m_end = m->base + m->size;
 		int	    m_nid = memblock_get_region_node(m);
 
-		if (should_skip_region(m, nid, flags))
+		if (should_skip_region(type_a, m, nid, flags))
 			continue;
 
 		if (!type_b) {
@@ -1153,7 +1137,7 @@ void __init_memblock __next_mem_range_rev(u64 *idx, int nid,
 		phys_addr_t m_end = m->base + m->size;
 		int m_nid = memblock_get_region_node(m);
 
-		if (should_skip_region(m, nid, flags))
+		if (should_skip_region(type_a, m, nid, flags))
 			continue;
 
 		if (!type_b) {
@@ -1978,7 +1962,7 @@ static unsigned long __init free_low_memory_core_early(void)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-17-rppt%40kernel.org.
