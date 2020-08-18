Return-Path: <clang-built-linux+bncBAABBTXC574QKGQE46JL5BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A8E24892B
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:18:40 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id lx6sf13046590pjb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763919; cv=pass;
        d=google.com; s=arc-20160816;
        b=NlFgfsQprUkz9sN4qPowbjlpq3HSNZz4jR9UK+3tTS/AgObrDhVB4te3wFwI1ruXUr
         XGwsEAHq0ZxWbHMEI64jR2q+hD6uw69NnqQ1y/fxDsT354vmrBPTGjiQbvIuxM3wpI40
         1QVQXLgyy97LXGPs+7SeJNNpx19K4KqD9KBsM6VQnsKjU79ED6/V89viLqsvWQh4pR9u
         EsnYp8XSwE9F34nBejDfWvCs7oxLHzwlGgfzqLOSEDbKi7LEYBI2d406dANcgfR1+Xop
         zrvFie9mhymh3NVHgjdu9kIhvCvQ2BP+K1gWZm2N+v3BMXdWTQQQUn7XN36OUOtx9RLW
         RlJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pd6eoyjdxFzdUA5JYEra2QY2bDLhvEtwfTNs+0Q1M4o=;
        b=uePXgyGzOVmCNmW+6livjjjIGyzU9a74QScaYckPuzZ0hAM28vwwHlF0Vwti5WGxsz
         W16DjJcY+jkimnPOPaN1C6+ZCu6kpR1VJPoHakXywlMrljPss+47ckTjPx1gMGlupkB8
         4jRwTtLscWFLa0GIPU706F0v5qb/G/3sz05vIEwf7fsAEBF4KxfRpbw71+AjWFN9aEUa
         xkeafTwqNPFD/sXM6t28bvcZ38c3MIsqSp7gPf6jQBG6fOPeJl9H4DjJ9lEnxDK4qk+G
         n18ky7wvdEPebDU+2iPIIFKmN3T+b/czSIDEeVbW8xPnPpJaSsmIN3EUQN6VvSK0SXn7
         Jjzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KBBX7IZO;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pd6eoyjdxFzdUA5JYEra2QY2bDLhvEtwfTNs+0Q1M4o=;
        b=gzkn4vSZFh4TC1p346+VQTZQfVGoDJbw+e3UAwVpsREufaQIp0ehu3y1Df2Ci7cLsd
         otO6MYm6sZehuEIe15zHm2gjS3udLyhciNQSPn9UM6BOS3YaUWasKr6VRPfXrM4MhJ8j
         tZVWwbM7TPSCq5ZTcwdypm8Fv2oIg/QS4ZCJYrCILsiOS0mQexclDSQSOuISooPpO3FS
         qCUUQ4IYoNuAjEb4oOI/5hHZlnlp4q32fOql3kRDShhEQWa2XEH29novFOe388OtXTgL
         J0jZbjbt6XkpfHoD+apYwd+j7UXjEJxvkUFtNeDo1A8DlZxESOnNoM8UCAuTYsU5gjLu
         09KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pd6eoyjdxFzdUA5JYEra2QY2bDLhvEtwfTNs+0Q1M4o=;
        b=VW1JKX7HH0ADMlQmUla5AQXkqr/UjnIoQB8FgPHdsduJhrcACLwTa8IIVmhguFkcqL
         mcuhIFn7CHYZjGptpuY4+31WuwY4FtYGL409pCEXd6ot2/+0hmd+X80yu15yP6aPW8ai
         daQKuho1MjG131NCwZ7OZ/YfeO/NSfg9yMIhrOCzTGWr+IJwiWRf8BHx8gnT7SCQ01JC
         drdSJVaE1k8yvNpqCXZ6mcO4nzkn037dWf3+n/xcYH0VAyOjB3rO7U2xau/9NjzjRh6t
         vaSBPV+omqJuoAFpA0ZkwsKm7VMrI1IkDAyHvOZKtFajtB87DS23OQUVifHiow4sSLET
         wKdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nKQGDn6uNfUNFu2DhckuF4RJ0Gm0cawO8apKjpW6C23DnieOm
	SuYxhzW6ARcU7keoJmCdBi0=
X-Google-Smtp-Source: ABdhPJxNQ2AVWeS1kZs9wezf+UXTk8o2SChH9L5/jhFocnZv19q2HZPqyaNSLns/Pn2AP1pkPK40dg==
X-Received: by 2002:a17:902:76cb:: with SMTP id j11mr16075159plt.29.1597763918866;
        Tue, 18 Aug 2020 08:18:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d04b:: with SMTP id s11ls5713461pgi.1.gmail; Tue, 18 Aug
 2020 08:18:38 -0700 (PDT)
X-Received: by 2002:a63:3241:: with SMTP id y62mr14077635pgy.305.1597763918423;
        Tue, 18 Aug 2020 08:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763918; cv=none;
        d=google.com; s=arc-20160816;
        b=ayYxlrMjdBimLpcd+9pUdS/usPCe9jeVrBHQgndRsOvAQd+NTXk0L9UuljK3Kg2jry
         SftbtG6dAQodZFnyrP58jCC0CWVNShtMKgaMHA7PncZJSjm1bdeGzM4fAm4tQg+B3mjU
         Bfr5bYUIUZEM7oDUbml1rb/l2cBgbIU3/87CawtsN5hdxf7hV0Iw2vMYk2vknvbfqsxA
         kWnk/VS8i5ac0eAc461UGJYDaCKpyAmN14zqFZ7qLGOjlncEE4MUj5z7j27BmbpoQ0Wq
         ihngdjzf1XB9Jk3MY/+8UdujwE2zUL1AcjNtf4Kjyxe/VsgLlmdZOYrdNtvIq9dViZWY
         2hfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bjo4SwMliIrNCihNy6KuJzQ7nSzmdbIUKPkVlhi8IrI=;
        b=Ttsz9PgM4y548zzB36zxkcZnzP6Yz/pGqSFgRQ5Xn4BK1SkIOHAwQ8m26gfuvKKRhy
         hnY6+XqXoio8nBJFg35/oIQrHB+6Gpudp+OuWx7JcRQiXbd0zMZSPP7YKULr7vZzcViu
         4gScmDWkni6EC9pZd6f+xE2Lrl5/eNeCTijjmMLZC0l1wztcpt9FOa0nx9ojmwKX2Gd9
         nplg+q/pYGpU+d8ptG2JFxKGrNY/7I+BKwkZM5zhB1VRq+BZtkzXs+7BTBlb8r0F8pXw
         3I8MTKsNsi6z4ZPVPE33rmYMN3Dyu7T4YcttyG9WAnSA9DurKdp1wnDLGJHKNcT9L6Nf
         UvqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KBBX7IZO;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v12si1004573plz.3.2020.08.18.08.18.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9854F207DA;
	Tue, 18 Aug 2020 15:18:27 +0000 (UTC)
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
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v3 10/17] memblock: reduce number of parameters in for_each_mem_range()
Date: Tue, 18 Aug 2020 18:16:27 +0300
Message-Id: <20200818151634.14343-11-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KBBX7IZO;       spf=pass
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

Currently for_each_mem_range() and for_each_mem_range_rev() iterators are
the most generic way to traverse memblock regions. As such, they have 8
parameters and they are hardly convenient to users. Most users choose to
utilize one of their wrappers and the only user that actually needs most of
the parameters is memblock itself.

To avoid yet another naming for memblock iterators, rename the existing
for_each_mem_range[_rev]() to __for_each_mem_range[_rev]() and add a new
for_each_mem_range[_rev]() wrappers with only index, start and end
parameters.

The new wrapper nicely fits into init_unavailable_mem() and will be used in
upcoming changes to simplify memblock traversals.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>  # MIPS
---
 .clang-format                          |  2 ++
 arch/arm64/kernel/machine_kexec_file.c |  6 ++--
 arch/powerpc/kexec/file_load_64.c      |  6 ++--
 include/linux/memblock.h               | 41 +++++++++++++++++++-------
 mm/page_alloc.c                        |  3 +-
 5 files changed, 38 insertions(+), 20 deletions(-)

diff --git a/.clang-format b/.clang-format
index a0a96088c74f..3e42a8e4df73 100644
--- a/.clang-format
+++ b/.clang-format
@@ -205,7 +205,9 @@ ForEachMacros:
   - 'for_each_memblock_type'
   - 'for_each_memcg_cache_index'
   - 'for_each_mem_pfn_range'
+  - '__for_each_mem_range'
   - 'for_each_mem_range'
+  - '__for_each_mem_range_rev'
   - 'for_each_mem_range_rev'
   - 'for_each_migratetype_order'
   - 'for_each_msi_entry'
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
diff --git a/arch/powerpc/kexec/file_load_64.c b/arch/powerpc/kexec/file_load_64.c
index 53bb71e3a2e1..2c9d908eab96 100644
--- a/arch/powerpc/kexec/file_load_64.c
+++ b/arch/powerpc/kexec/file_load_64.c
@@ -250,8 +250,7 @@ static int __locate_mem_hole_top_down(struct kexec_buf *kbuf,
 	phys_addr_t start, end;
 	u64 i;
 
-	for_each_mem_range_rev(i, &memblock.memory, NULL, NUMA_NO_NODE,
-			       MEMBLOCK_NONE, &start, &end, NULL) {
+	for_each_mem_range_rev(i, &start, &end) {
 		/*
 		 * memblock uses [start, end) convention while it is
 		 * [start, end] here. Fix the off-by-one to have the
@@ -350,8 +349,7 @@ static int __locate_mem_hole_bottom_up(struct kexec_buf *kbuf,
 	phys_addr_t start, end;
 	u64 i;
 
-	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
-			   MEMBLOCK_NONE, &start, &end, NULL) {
+	for_each_mem_range(i, &start, &end) {
 		/*
 		 * memblock uses [start, end) convention while it is
 		 * [start, end] here. Fix the off-by-one to have the
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 47a76e237fca..27c3b84d1615 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -162,7 +162,7 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
 #endif /* CONFIG_HAVE_MEMBLOCK_PHYS_MAP */
 
 /**
- * for_each_mem_range - iterate through memblock areas from type_a and not
+ * __for_each_mem_range - iterate through memblock areas from type_a and not
  * included in type_b. Or just type_a if type_b is NULL.
  * @i: u64 used as loop variable
  * @type_a: ptr to memblock_type to iterate
@@ -173,7 +173,7 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
  * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
  * @p_nid: ptr to int for nid of the range, can be %NULL
  */
-#define for_each_mem_range(i, type_a, type_b, nid, flags,		\
+#define __for_each_mem_range(i, type_a, type_b, nid, flags,		\
 			   p_start, p_end, p_nid)			\
 	for (i = 0, __next_mem_range(&i, nid, flags, type_a, type_b,	\
 				     p_start, p_end, p_nid);		\
@@ -182,7 +182,7 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
 			      p_start, p_end, p_nid))
 
 /**
- * for_each_mem_range_rev - reverse iterate through memblock areas from
+ * __for_each_mem_range_rev - reverse iterate through memblock areas from
  * type_a and not included in type_b. Or just type_a if type_b is NULL.
  * @i: u64 used as loop variable
  * @type_a: ptr to memblock_type to iterate
@@ -193,15 +193,36 @@ static inline void __next_physmem_range(u64 *idx, struct memblock_type *type,
  * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
  * @p_nid: ptr to int for nid of the range, can be %NULL
  */
-#define for_each_mem_range_rev(i, type_a, type_b, nid, flags,		\
-			       p_start, p_end, p_nid)			\
+#define __for_each_mem_range_rev(i, type_a, type_b, nid, flags,		\
+				 p_start, p_end, p_nid)			\
 	for (i = (u64)ULLONG_MAX,					\
-		     __next_mem_range_rev(&i, nid, flags, type_a, type_b,\
+		     __next_mem_range_rev(&i, nid, flags, type_a, type_b, \
 					  p_start, p_end, p_nid);	\
 	     i != (u64)ULLONG_MAX;					\
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
+/**
+ * for_each_mem_range_rev - reverse iterate through memblock areas from
+ * type_a and not included in type_b. Or just type_a if type_b is NULL.
+ * @i: u64 used as loop variable
+ * @p_start: ptr to phys_addr_t for start address of the range, can be %NULL
+ * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
+ */
+#define for_each_mem_range_rev(i, p_start, p_end)			\
+	__for_each_mem_range_rev(i, &memblock.memory, NULL, NUMA_NO_NODE, \
+				 MEMBLOCK_NONE, p_start, p_end, NULL)
+
 /**
  * for_each_reserved_mem_region - iterate over all reserved memblock areas
  * @i: u64 used as loop variable
@@ -307,8 +328,8 @@ int __init deferred_page_init_max_threads(const struct cpumask *node_cpumask);
  * soon as memblock is initialized.
  */
 #define for_each_free_mem_range(i, nid, flags, p_start, p_end, p_nid)	\
-	for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
-			   nid, flags, p_start, p_end, p_nid)
+	__for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
+			     nid, flags, p_start, p_end, p_nid)
 
 /**
  * for_each_free_mem_range_reverse - rev-iterate through free memblock areas
@@ -324,8 +345,8 @@ int __init deferred_page_init_max_threads(const struct cpumask *node_cpumask);
  */
 #define for_each_free_mem_range_reverse(i, nid, flags, p_start, p_end,	\
 					p_nid)				\
-	for_each_mem_range_rev(i, &memblock.memory, &memblock.reserved,	\
-			       nid, flags, p_start, p_end, p_nid)
+	__for_each_mem_range_rev(i, &memblock.memory, &memblock.reserved, \
+				 nid, flags, p_start, p_end, p_nid)
 
 int memblock_set_node(phys_addr_t base, phys_addr_t size,
 		      struct memblock_type *type, int nid);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 0e2bab486fea..12da56b1cf39 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6979,8 +6979,7 @@ static void __init init_unavailable_mem(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-11-rppt%40kernel.org.
