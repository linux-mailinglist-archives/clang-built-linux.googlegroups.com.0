Return-Path: <clang-built-linux+bncBAABBG7I734AKGQE5OYLTGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE823016A
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:14:04 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id x7sf9926213oif.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:14:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913243; cv=pass;
        d=google.com; s=arc-20160816;
        b=vc7qmRj4oN8XI2X+wOm+o3+Nrz9DnBXH1lgVhXm5oG/e0v+L6dp/4IQ7aAwHgBcbFh
         /c4uSWCCu0FfktoG1NwHZqj4VL1rByrvkFoZvPshijdOwCtsXoZnR3H4jMpCIbRCbSFx
         k9zaGavX4SJEDFWJW4Gho7yLYlX0e/Yi65Gk9XcXlEgIzBB8GfF3ge4UVRCEVLLL1jAZ
         a19rPBz6nEnH2P6YqanHeZnp/U6xq7JYtN+YwjMUeriR6NJ31GYSFim7byIlQcEJ2348
         TwVNwrNrpdA609E1gGXWiuktAvdWG6A/QnGXVyMYkEG1rfinxSEFQyYUDLlpCwHVWvsn
         NKaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KqWqwYro7t+W01Wo7quxpJ0h2e5S2r11g5QkKPdOhig=;
        b=eGrmL63dNXPS0EfiBIDZ7+0YXmCJXMC84egLjidh8ebz01/H6UfVX3/v+W8JczMx8X
         lGeBeD7CbEf56Z3igM7J5RBnqasrx4Ujmxs9nUBobfWkyzC38m8ahoPTMjdNwwDf8N+f
         M5qhVV5pOzA/aU4MfBL0WdslX9LAs0JjM6dMvjLmArzQbqJnkRLqusZmkbh4U0pFQoBo
         sOtM9Kf9kpMxf/rIAPHBUzat/Dhzg77ZuewlDb1McigjaQh5Gt7IwXkoNjIOufLakiao
         gWXXoWe6CthESvVJaNqrbB4RW3kk8wnfm6awR3CQXcF2bnVkndnhh1lSbpibSJHnJPFT
         w/nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ekzq732X;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqWqwYro7t+W01Wo7quxpJ0h2e5S2r11g5QkKPdOhig=;
        b=GuLq98cUvSDztXfaFOYQmHVHLohTHtMuKGg5p/Mwkz8JlNejVl2kcZl9rf4wKIUIPE
         8Z9/gz1KxA2KlFdWjrIeih5FJ8RU5rUrJjOcVaZxR/mKpqbDxEuhtS4IcpZ9Ird3yKwm
         QqDadwiD+sDUEZUpNec1acjavgOCCMsxyKXFF/FdD2OsNzq3uJ4twdi3QYwb0BP7by79
         FpNTMgzdCGcLIzwAbOFMbhyb3/ep5me0k3aP5iioyCjDtk7YLAE3fxL/xhbWVNj0zlni
         MrCW7zyTCVSpjxxUe2zbs2MZig7qOBHIdLMyEllnv93dE3aevKEqwMOpWaf0vh3W4zSw
         88Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqWqwYro7t+W01Wo7quxpJ0h2e5S2r11g5QkKPdOhig=;
        b=B0/0FHrP8CrZoL1QWqKNIUNsLfiNtNCkb5ArbzS/k5wum0XLi0b50wlEC0+JFk0+r+
         +s/aFBQaVI6YxxDoouAh912YXZJldzLI4Wi8PMvlrdxqEtfFZ0pejOuEen0EnGVNPFh+
         uo2e9+CFtBRMQv5QZTPja0ZPQT/OpRl/GQ9tgbEP2vtbc02kGGKzdZbELkQVbgBo43zk
         YUrAdFqf5nBY+su96w4ls1sMTOug7IIOfR7nRKWNW1Vo/9l37KcgnsigOffxg8me7HoV
         5uubwY1YqnS6hbDDyZEtWs4Jr1xKegP29E7E+ZNYBt/AF2m5eignWeJbytcmwM46p23B
         37+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FxzXPWo2X6KUr61dzsGk7SvgLjcWL0W3O/cFgFy8zLu4WDyYi
	sTAX5UDO/IW5vm6mcsO7J70=
X-Google-Smtp-Source: ABdhPJzJD9El2oiaLOOeqM1w+yCRb3LzVDRVxuBpLY7qmEBVdh9CUia6xt4ZBCgL8A2LpYV813xr7w==
X-Received: by 2002:a4a:8257:: with SMTP id t23mr22237119oog.60.1595913243170;
        Mon, 27 Jul 2020 22:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f5cb:: with SMTP id t194ls3644404oih.5.gmail; Mon, 27
 Jul 2020 22:14:02 -0700 (PDT)
X-Received: by 2002:aca:dc08:: with SMTP id t8mr2238430oig.170.1595913242866;
        Mon, 27 Jul 2020 22:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913242; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5rkPiayhFn+6VGXw+Pjav3kca/mCPlez1ZLr0Q4UQg7bVxVaq3cq9Uk/xmFCh/9QD
         KOsaGwTC49KcKUygVkSdt8C4gFqj3hPPv7O95QGuPox9Jh7hRUfXduCpOb8pxJ310+PO
         x5T80CX0Abr7ev0NX9pUIrYC7COQoALOK8rRoY77FPl0zhJk0YsAGL1E1dgTyAhjtr1+
         G9PVW6EoPccOFwmXAP4L6t/WozO1wK3hDnNhl1lb2DQsLf75WIWeyDpf2+R/K/ulEpRL
         GKw/q/whHwXrZ8MBgDX9TdTNtphhcoHImkRcmqJeWQKfqshcTNpBvX5UEFQ5DTFzo5Nc
         Ov8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RDItYOVry2W6etYaThXEvq4Uc2IHbOEbD8V78slxDdM=;
        b=o/k/lqLuhWxWMI/xA+q3VZPqTnreETmYfQ4OvTZVlVBw4PYim9o+QIOaMYjcIzHU/D
         gND52kXYz0n0Gtuk0Wy8hX24EQzSOIyXbmrhQKHIsSQDEVfs+p01Fh4NCjyB2/gX2Dfd
         gU3uogAtzIAb7YGL9LZ1smx0NymdKjqmGqGn1Yam0gFD1m3N3Apnmr3iYkt+311BpQSo
         s0P8Z6XEmnHli74H9hbhy6nSRk/tsE0sL8LVbcuOy5jnnH5j20JkhVKtn33J+xLrtTJr
         AGMzcsez3YL34uX4Ln0NDuOu6cJGdGAYKfULuQyynPh1SQjW/CEHEAoYI79TeYBReQ9+
         dfnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ekzq732X;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n22si791428otf.2.2020.07.27.22.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D8C9D2250E;
	Tue, 28 Jul 2020 05:13:52 +0000 (UTC)
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
Subject: [PATCH 11/15] memblock: reduce number of parameters in for_each_mem_range()
Date: Tue, 28 Jul 2020 08:11:49 +0300
Message-Id: <20200728051153.1590-12-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ekzq732X;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-12-rppt%40kernel.org.
