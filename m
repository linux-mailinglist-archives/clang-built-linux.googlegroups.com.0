Return-Path: <clang-built-linux+bncBAABB3OXTP4QKGQEUA4XNLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0FD2358CC
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:38:07 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id j37sf963055pgi.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386285; cv=pass;
        d=google.com; s=arc-20160816;
        b=fI9NEooAEPRw7PLKEmVocTn3hKUZX6W8XZ/soESi5inenbTN9AV4DfZQ+5blBpYkwh
         ZZKLUCTlV5RQ/Tx/gxFKH19qmLo+tJI65AUWgYZMYPTXZvVDQyl6gkqH2W4YFjr3DNv5
         Ik+aALKUaBn89/hbw48xhVD/L8bDHAoc2zFcxDko4CXSwj7bnlPlkmJDQDxd1a5kRULm
         RqdSepl7G24Xyb93Xr5fztXujvuebfr7rna7Nb6qThRNcBj1P1eDoP4P2JextwHaGE3/
         79nkYSuegpjyplF09nxmagVIHmlDkp6wb6L0Vj7iDH3h4ud3Q8xjweInlr5XZr5Lqah6
         Qthw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wtzO777DlMjM+QgTpbbCjkwkzeEUh24bQyV0blbTkwo=;
        b=K6zgGs+dkdEY91IZZM8i/bVfy+RtqWhBMdri1dGfFjMxL9GVpXuIZpbW040UxndSpo
         m8MyIu5xZ+Qruf9svI15nQJ3Zs+8050w0+m0BMo60sUgFrMdAOrawkN//druRpixFu3N
         KkEoKp6CH7MwlV89yERma4Sq4ZPpgeoRpl4Rm6SxMb5qoHefHPsFekvdQfm7p+zUPQ2i
         EOO5MDt8Nt+rM+xEWN4u5Cc6fqzlbt0Xd5EVYuWmvU+GgzDhKo3ha2dWDvi8mY5h01Y+
         urflZ3OVpX3Sz3ab0MPRNAlsy82tIb0BWGZ8/2agCoJkoopj7hNNX/CYncasImmXUSCP
         +ASA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VSqQxV0O;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtzO777DlMjM+QgTpbbCjkwkzeEUh24bQyV0blbTkwo=;
        b=ng+Hfo8ZZuJsqZhngRh3Q7tcPyArQJImZ2GXxQda581DuQ+SFhBqbYyMdmDjOsuXOL
         6nDO6mL/v8GUK8ST/02+L8RSwO8W2GJC3pzCUm31A84h/ZcU5BCfkDimTwNDJmX34Zi6
         5mJrjXkty52/LXzG4PoxZLCA93eWJrJ0UYxLoyV0ACo//PK6ObkT0QtNI60plr8pRYPE
         OZkl8PsEFu29sNIw5/1MXLRgA2YeKS/NJgKqxAA67/Gc1jNWdrgd/Ffu5L0viWE739qw
         IUdtM1Uo5YH2vMrlMVCX8uVZ1xP+B/1Y+zKHN6MDKHY5DK06kjbxYfcqb3SwXVVyoW8R
         RJig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtzO777DlMjM+QgTpbbCjkwkzeEUh24bQyV0blbTkwo=;
        b=GxR7CtJhvdxyT9dI2R6q6X59vH/GNTMADnLWlfmhTo4FFJtOr0jCp02u8RsWV1pjvl
         QdYl+y3S6z4oJevazhdGDZx+2+uO0YlKQ5SwPzeIsKmNODNCev/AdLHeqjwyOVFht/xh
         2EB6v/KC8C8Rl9wr0trpq5Ou1seuKdGQgeJ9dMwmLVI0PUYUM05FtEWxjcppHSgIwp7B
         geseosTUKCFKjA4Zw/r+Gsm1mf8w8XPc0PMKqMRMZcaRQUaMdhPhsQbUavucA6nq4PUA
         toIYHbA/mspDOhx9bjEsvXh7izVv4ouekMSM5XwGp2n00rEe4BKOmQmEgukcKAi71xq8
         s6Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Vd9q/PTRbfJ6Wqc7wtv8mwpLl8N7Difd5wPRNrDruuvy51mZk
	bW7skcFKoe6QQbjzw4rW89w=
X-Google-Smtp-Source: ABdhPJzDckt46sAsMcYM9xayLH4brXdVacxKgDO2qgLt2IHOCQWDj1WjHpAgmz+ZRD+deEoo/BiuTA==
X-Received: by 2002:a17:902:7688:: with SMTP id m8mr11488029pll.12.1596386285724;
        Sun, 02 Aug 2020 09:38:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls4463325pgp.10.gmail; Sun, 02
 Aug 2020 09:38:05 -0700 (PDT)
X-Received: by 2002:a65:610f:: with SMTP id z15mr4263130pgu.123.1596386285344;
        Sun, 02 Aug 2020 09:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386285; cv=none;
        d=google.com; s=arc-20160816;
        b=RtFjc0+PAwB41L/Jw+SHBwxnOJ9ol3vC0LMdQ/RyOAnqg+WAIXRqjeXk1BbJA2YSXo
         0kdtpYZQkLcPr1iaJntWJKvyuuwu/9DUZf2Wef6R9CslflzfVzEJTAG0HEKwJblh0Ory
         SH7PmHnW/ibHLA6ejt3udreCO72G8wXXBzzUdEJzpqqUR6cvwXP4SnoEU+Z7q6edwhwb
         Nxp+bTlWjvfK4B6rk3t8TKwruRCdbIhiWV1bGX7Iv8X4MipxgxhXs8fDm75CMkuMI9b2
         51YKh+6i4gQFnF6qaEvhpSzuZJtzNMl3qdBV/P7RKl+FhEJZbXhayyNmjdkIoNcJ30H/
         xMIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W+HPL0FqtEmpoGyhlugGPrDAtyFjmrVH+VIrQms4t2w=;
        b=0e69VJxDZauqFGAC02s+rVV7qbNKaxk2Oz7OFqaY7bn6scw94xwlVZfUyKTOadzgLe
         kYWBXuN1yJkmx8DSdutQ+5rH+mzNjWqI2k1Rr/GByTFJCazdaofPOQ36gL51pJ9ixSEc
         mWoY55cplAo/OO2vRoa93OrIe4rz3zs7y+zvTd5B1bLkhC6gRvAC0ONyADJveOJIJC/h
         cvoMZ4UqEWrB8+ji6dDyuIurSkSxLNmm355Q+HQRaArHInAE3o4JWbfvXXcU00FiyKEN
         SNWnyoUuqmRKVmYAGhGwQXmXCzGWIkNQ7S90OPRRpIcqse9IdS/CKosjWwY1e6pxm2lB
         Vr0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VSqQxV0O;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z72si928857pfc.5.2020.08.02.09.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:38:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C503520829;
	Sun,  2 Aug 2020 16:37:54 +0000 (UTC)
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
Subject: [PATCH v2 10/17] memblock: reduce number of parameters in for_each_mem_range()
Date: Sun,  2 Aug 2020 19:35:54 +0300
Message-Id: <20200802163601.8189-11-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VSqQxV0O;       spf=pass
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

Currently for_each_mem_range() iterator is the most generic way to traverse
memblock regions. As such, it has 8 parameters and it is hardly convenient
to users. Most users choose to utilize one of its wrappers and the only
user that actually needs most of the parameters outside memblock is s390
crash dump implementation.

To avoid yet another naming for memblock iterators, rename the existing
for_each_mem_range() to __for_each_mem_range() and add a new
for_each_mem_range() wrapper with only index, start and end parameters.

The new wrapper nicely fits into init_unavailable_mem() and will be used in
upcoming changes to simplify memblock traversals.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 .clang-format                          |  1 +
 arch/arm64/kernel/machine_kexec_file.c |  6 ++----
 arch/s390/kernel/crash_dump.c          |  8 ++++----
 include/linux/memblock.h               | 18 ++++++++++++++----
 mm/page_alloc.c                        |  3 +--
 5 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/.clang-format b/.clang-format
index a0a96088c74f..52ededab25ce 100644
--- a/.clang-format
+++ b/.clang-format
@@ -205,6 +205,7 @@ ForEachMacros:
   - 'for_each_memblock_type'
   - 'for_each_memcg_cache_index'
   - 'for_each_mem_pfn_range'
+  - '__for_each_mem_range'
   - 'for_each_mem_range'
   - 'for_each_mem_range_rev'
   - 'for_each_migratetype_order'
diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 361a1143e09e..5b0e67b93cdc 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -215,8 +215,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
 	phys_addr_t start, end;
 
 	nr_ranges = 1; /* for exclusion of crashkernel region */
-	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
-					MEMBLOCK_NONE, &start, &end, NULL)
+	for_each_mem_range(i, &start, &end)
 		nr_ranges++;
 
 	cmem = kmalloc(struct_size(cmem, ranges, nr_ranges), GFP_KERNEL);
@@ -225,8 +224,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
 
 	cmem->max_nr_ranges = nr_ranges;
 	cmem->nr_ranges = 0;
-	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
-					MEMBLOCK_NONE, &start, &end, NULL) {
+	for_each_mem_range(i, &start, &end) {
 		cmem->ranges[cmem->nr_ranges].start = start;
 		cmem->ranges[cmem->nr_ranges].end = end - 1;
 		cmem->nr_ranges++;
diff --git a/arch/s390/kernel/crash_dump.c b/arch/s390/kernel/crash_dump.c
index f96a5857bbfd..e28085c725ff 100644
--- a/arch/s390/kernel/crash_dump.c
+++ b/arch/s390/kernel/crash_dump.c
@@ -549,8 +549,8 @@ static int get_mem_chunk_cnt(void)
 	int cnt = 0;
 	u64 idx;
 
-	for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
-			   MEMBLOCK_NONE, NULL, NULL, NULL)
+	__for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
+			     MEMBLOCK_NONE, NULL, NULL, NULL)
 		cnt++;
 	return cnt;
 }
@@ -563,8 +563,8 @@ static void loads_init(Elf64_Phdr *phdr, u64 loads_offset)
 	phys_addr_t start, end;
 	u64 idx;
 
-	for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
-			   MEMBLOCK_NONE, &start, &end, NULL) {
+	__for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
+			     MEMBLOCK_NONE, &start, &end, NULL) {
 		phdr->p_filesz = end - start;
 		phdr->p_type = PT_LOAD;
 		phdr->p_offset = start;
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index e6a23b3db696..d70c2835e913 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -142,7 +142,7 @@ void __next_reserved_mem_region(u64 *idx, phys_addr_t *out_start,
 void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 
 /**
- * for_each_mem_range - iterate through memblock areas from type_a and not
+ * __for_each_mem_range - iterate through memblock areas from type_a and not
  * included in type_b. Or just type_a if type_b is NULL.
  * @i: u64 used as loop variable
  * @type_a: ptr to memblock_type to iterate
@@ -153,7 +153,7 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
  * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
  * @p_nid: ptr to int for nid of the range, can be %NULL
  */
-#define for_each_mem_range(i, type_a, type_b, nid, flags,		\
+#define __for_each_mem_range(i, type_a, type_b, nid, flags,		\
 			   p_start, p_end, p_nid)			\
 	for (i = 0, __next_mem_range(&i, nid, flags, type_a, type_b,	\
 				     p_start, p_end, p_nid);		\
@@ -182,6 +182,16 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 	     __next_mem_range_rev(&i, nid, flags, type_a, type_b,	\
 				  p_start, p_end, p_nid))
 
+/**
+ * for_each_mem_range - iterate through memory areas.
+ * @i: u64 used as loop variable
+ * @p_start: ptr to phys_addr_t for start address of the range, can be %NULL
+ * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
+ */
+#define for_each_mem_range(i, p_start, p_end) \
+	__for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,	\
+			     MEMBLOCK_NONE, p_start, p_end, NULL)
+
 /**
  * for_each_reserved_mem_region - iterate over all reserved memblock areas
  * @i: u64 used as loop variable
@@ -287,8 +297,8 @@ int __init deferred_page_init_max_threads(const struct cpumask *node_cpumask);
  * soon as memblock is initialized.
  */
 #define for_each_free_mem_range(i, nid, flags, p_start, p_end, p_nid)	\
-	for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
-			   nid, flags, p_start, p_end, p_nid)
+	__for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
+			     nid, flags, p_start, p_end, p_nid)
 
 /**
  * for_each_free_mem_range_reverse - rev-iterate through free memblock areas
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index e028b87ce294..95af111d69d3 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6972,8 +6972,7 @@ static void __init init_unavailable_mem(void)
 	 * Loop through unavailable ranges not covered by memblock.memory.
 	 */
 	pgcnt = 0;
-	for_each_mem_range(i, &memblock.memory, NULL,
-			NUMA_NO_NODE, MEMBLOCK_NONE, &start, &end, NULL) {
+	for_each_mem_range(i, &start, &end) {
 		if (next < start)
 			pgcnt += init_unavailable_range(PFN_DOWN(next),
 							PFN_UP(start));
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-11-rppt%40kernel.org.
