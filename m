Return-Path: <clang-built-linux+bncBAABBQXI734AKGQECHNHAVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 410B8230189
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:14:45 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id x23sf11141010plr.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913284; cv=pass;
        d=google.com; s=arc-20160816;
        b=iW5wGmNVI4X+xkl1HGHLNzCHLkxG0GcGBudDAQRYYwXIYUT7DsHqIFAtGVx6xqRcrT
         ncqX7N4vvMp5kMEFgzXRAx+LC4aHAOotcPDizPJnkcyGiBjVwXmmo4tZ9C9ukzsD5MR0
         Ms/spa7LU5SlpWLh9y/tC2PfSRniH/AsCZxPtXasAzJS5cb9dCXhIEyP2nzRKkJyWmy5
         fEFT7qwoNDZPDYdXcRjMQ7IAfDPZzgQbK2hwKCxQv3pQg/Ye8ETJTFO4baTb7XYdKxPf
         oxXiUxGCFg2IgWQvlts3lpmZzp6dx2t5eXfTnFikaerw4ZT9kBWgVZMkL8mm/SzHf3yD
         rYSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2v26v5NBI7caKHQau9I4EdAM6wN0kWvRxXpGNVWOqys=;
        b=cVILOICpdCiN0amNv7cVKfjk4hsaP5B/sAD/IGwjHyTP4izslaevimi58Ex8Ss8dMT
         Lni5BxVvPpHtd4SVt+qphUjnJSV4o1UBL4iLMXrsJvweFE0sfhyb1sR6k4S0yQq/Fq8K
         qf+wkaLA29vtJcjHlMa4E+B+YLkTXbiG+KKPjhkwk/YTniuFGSHqa3FFBic86LOG36zb
         nuxEYMLD64v+U2Y/hzUu5OuvKRbfFJcP5Lu1a9kPf/TjypCRLAtzkOud2XBVbHtsNJqu
         l3kwz1sNius9dh6XfR9OOkY7ttjyMMdUGHFhCoxCA2Yoh339Squhn8My/lI+X0O2VIAT
         cm2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XDqolARt;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2v26v5NBI7caKHQau9I4EdAM6wN0kWvRxXpGNVWOqys=;
        b=TzXn1wSkELY02Etn/GiE6HJ7ha78ajKoisB9F2H90muEmyxKjFflh5x90oeDJPZlMa
         wIrLkpr2qqWlC6a4TaYTtGB4XQdTjzKfgkgMeVxkWvUQnsn4uIyVRUATznRmkp7NShRh
         XdGNdit+DUuPnLaPyQzVsia/dJVrHu59n8jlqhe9XUGkK2kw3Y1NtioeqE7MhqoQNQkD
         iv9P+USlPIGsmB3YShPPwpcFQPN+qZg7x4lxx7aIsG/km/0ZcYS2+Ib74mgj8DHBVfN4
         SOoQpmv5toNyT/hS8ZGF/wjHUz00IxVNf46Og5ajmMNRn0f1HPrTXmRkWj815Ln6hnfN
         jk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2v26v5NBI7caKHQau9I4EdAM6wN0kWvRxXpGNVWOqys=;
        b=OaLGIPxdjwU6eCAyqDvegoVw2vchHj6KBRSTl+/jHoO7Qr5hmjxmLnDie/+IFsNz0o
         DC3lzc6tX+FO8qQhAtiGlymD0yqoGv0/rD246hsf1k1Sc6XvFvvObYW3OsCO31YFG9/g
         MuP/fCsQJYDQ5zn8LCCJeamQMXupc3gTWmhQlqdph9MHMMTYNAWFE8XOh8t2+3dQfSqP
         VVdSVodKSf2OqRQnVIa3bu+hKDJ7PpY58MqQ4x49HOqDsnPaWnBtntfSFvVrOD9upgcA
         YbkCY8Gkzaio4nUcPclizM4c27UqiPu4+/D6pOEPJgI+gL1dtI3Jb8RFUnt8C1E4MUbz
         iKKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vFQaBIiEqQT4ZWEuNUL7cha/TzVI9BDRtNXcF0m4fTff+Z57i
	bKrBkgEu6orS+QhMPQgwc7s=
X-Google-Smtp-Source: ABdhPJzDc1pPcsZHRWy/LCsvaCKqEo3wNNQ5pGS8IByjLm56UxlBoyD9RsFGSXL/HGJ6Gw9sm+BxkA==
X-Received: by 2002:a17:902:7e86:: with SMTP id z6mr12012059pla.161.1595913282404;
        Mon, 27 Jul 2020 22:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls3695824plc.2.gmail; Mon, 27
 Jul 2020 22:14:42 -0700 (PDT)
X-Received: by 2002:a17:90a:764c:: with SMTP id s12mr2596986pjl.201.1595913282062;
        Mon, 27 Jul 2020 22:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913282; cv=none;
        d=google.com; s=arc-20160816;
        b=mB3EGgVkQ1YVIP5FvuaPaD/jlUVoA97gy3ddLvhMKlYoxEi1oY8eVkXsebIHadyLRy
         9mpLXVt6kKkTLJbYeZC0c+WtZda0Xnp85/Txh7GbXJletNVom1yBAp27u/4LE7BZKQYK
         L6oOv0xJ9pYzHsJref5jT18nt2sD1Tm+PVyX8S3gqC+NxRAPFTtlZVAQYSyjDquN8a6u
         4AxidgXGGZzJas3oiA7KCAN7QeLdM3CFZzHfPH56IK+a3KFMG/g9ndPAG/cvL6zebsUo
         DJx6N7zFTEN6f0KYRgU2b1qcriFRXFR57IwrnpS11tJXGoVny/LA7tRh+rUBXPdRtKG3
         yxlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8w1k07b96HCn00Tyl0tMboHhSjvP/+o1dvNSRF1lGnc=;
        b=sZYUcxKrKhiG1wT0eqVAoEm38acmhebdfCP7O/cb0p5A9oa3y7DjjoS0hMKc5sDaMl
         U9iRLJvCRWc5XD1hsr2AqsKbnMvw4QaHKqHxYbv4yi9Wo7Lj9sENbOk9/ImdWaMmPr/S
         ddj+CyVQxq1RWcLElLjeE1sliGFZmQRG8ZgJ8ZIX8fgZkv3kNCojwctijPSZ5EllQwaP
         95DbF/rkdNV5NeutPk4dXP4VsFvybpeHvov/tXk5DnmnRbQbiQf8lw4MY+SCzz6rNShy
         1UsVW8WP9jdlC16dBYBcayvet+6LdVFZAnpSGwMEeU76yJbuZ5i4IaCgEhGuUsxY9C6r
         +LSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XDqolARt;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o6si45898pfu.3.2020.07.27.22.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F8F021D95;
	Tue, 28 Jul 2020 05:14:32 +0000 (UTC)
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
Subject: [PATCH 15/15] memblock: remove 'type' parameter from for_each_memblock()
Date: Tue, 28 Jul 2020 08:11:53 +0300
Message-Id: <20200728051153.1590-16-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XDqolARt;       spf=pass
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

for_each_memblock() is used exclusively to iterate over memblock.memory in
a few places that use data from memblock_region rather than the memory
ranges.

Remove type parameter from the for_each_memblock() iterator to improve
encapsulation of memblock internals from its users.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm64/kernel/setup.c      |  2 +-
 arch/arm64/mm/numa.c           |  2 +-
 arch/mips/netlogic/xlp/setup.c |  2 +-
 include/linux/memblock.h       | 10 +++++++---
 mm/memblock.c                  |  4 ++--
 mm/page_alloc.c                |  8 ++++----
 6 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 93b3844cf442..23da7908cbed 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -217,7 +217,7 @@ static void __init request_standard_resources(void)
 	if (!standard_resources)
 		panic("%s: Failed to allocate %zu bytes\n", __func__, res_size);
 
-	for_each_memblock(memory, region) {
+	for_each_memblock(region) {
 		res = &standard_resources[i++];
 		if (memblock_is_nomap(region)) {
 			res->name  = "reserved";
diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 0cbdbcc885fb..08721d2c0b79 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -350,7 +350,7 @@ static int __init numa_register_nodes(void)
 	struct memblock_region *mblk;
 
 	/* Check that valid nid is set to memblks */
-	for_each_memblock(memory, mblk) {
+	for_each_memblock(mblk) {
 		int mblk_nid = memblock_get_region_node(mblk);
 
 		if (mblk_nid == NUMA_NO_NODE || mblk_nid >= MAX_NUMNODES) {
diff --git a/arch/mips/netlogic/xlp/setup.c b/arch/mips/netlogic/xlp/setup.c
index 1a0fc5b62ba4..e69d9fc468cf 100644
--- a/arch/mips/netlogic/xlp/setup.c
+++ b/arch/mips/netlogic/xlp/setup.c
@@ -70,7 +70,7 @@ static void nlm_fixup_mem(void)
 	const int pref_backup = 512;
 	struct memblock_region *mem;
 
-	for_each_memblock(memory, mem) {
+	for_each_memblock(mem) {
 		memblock_remove(mem->base + mem->size - pref_backup,
 			pref_backup);
 	}
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index d70c2835e913..c901cb8ecf92 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -527,9 +527,13 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
 	return PFN_UP(reg->base + reg->size);
 }
 
-#define for_each_memblock(memblock_type, region)					\
-	for (region = memblock.memblock_type.regions;					\
-	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
+/**
+ * for_each_memblock - itereate over registered memory regions
+ * @region: loop variable
+ */
+#define for_each_memblock(region)					\
+	for (region = memblock.memory.regions;				\
+	     region < (memblock.memory.regions + memblock.memory.cnt);	\
 	     region++)
 
 extern void *alloc_large_system_hash(const char *tablename,
diff --git a/mm/memblock.c b/mm/memblock.c
index 2ad5e6e47215..550bb72cf6cb 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1694,7 +1694,7 @@ static phys_addr_t __init_memblock __find_max_addr(phys_addr_t limit)
 	 * the memory memblock regions, if the @limit exceeds the total size
 	 * of those regions, max_addr will keep original value PHYS_ADDR_MAX
 	 */
-	for_each_memblock(memory, r) {
+	for_each_memblock(r) {
 		if (limit <= r->size) {
 			max_addr = r->base + limit;
 			break;
@@ -1864,7 +1864,7 @@ void __init_memblock memblock_trim_memory(phys_addr_t align)
 	phys_addr_t start, end, orig_start, orig_end;
 	struct memblock_region *r;
 
-	for_each_memblock(memory, r) {
+	for_each_memblock(r) {
 		orig_start = r->base;
 		orig_end = r->base + r->size;
 		start = round_up(orig_start, align);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 95af111d69d3..8a19f46dc86e 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5927,7 +5927,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
 
 	if (mirrored_kernelcore && zone == ZONE_MOVABLE) {
 		if (!r || *pfn >= memblock_region_memory_end_pfn(r)) {
-			for_each_memblock(memory, r) {
+			for_each_memblock(r) {
 				if (*pfn < memblock_region_memory_end_pfn(r))
 					break;
 			}
@@ -6528,7 +6528,7 @@ static unsigned long __init zone_absent_pages_in_node(int nid,
 		unsigned long start_pfn, end_pfn;
 		struct memblock_region *r;
 
-		for_each_memblock(memory, r) {
+		for_each_memblock(r) {
 			start_pfn = clamp(memblock_region_memory_base_pfn(r),
 					  zone_start_pfn, zone_end_pfn);
 			end_pfn = clamp(memblock_region_memory_end_pfn(r),
@@ -7122,7 +7122,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
 	 * options.
 	 */
 	if (movable_node_is_enabled()) {
-		for_each_memblock(memory, r) {
+		for_each_memblock(r) {
 			if (!memblock_is_hotpluggable(r))
 				continue;
 
@@ -7143,7 +7143,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
 	if (mirrored_kernelcore) {
 		bool mem_below_4gb_not_mirrored = false;
 
-		for_each_memblock(memory, r) {
+		for_each_memblock(r) {
 			if (memblock_is_mirror(r))
 				continue;
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-16-rppt%40kernel.org.
