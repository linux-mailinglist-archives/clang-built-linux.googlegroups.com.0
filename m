Return-Path: <clang-built-linux+bncBAABBRHC574QKGQE7XIX65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 63672248923
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:18:29 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id p189sf7661306oib.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:18:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763908; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2leCVd721Be0fOCgckD0CtlelXpRr0zPzOSXKJmDV4McaSFshDCEImLrMLJnv2KBX
         6RKqTjbxa6HwXjoxHrtN5kXH2aQx7HyPTzS5A+GD0Kuh3Dr5z/TPBSKP4ExdsV60vEdl
         65vELlOkWUNQpVH2ZK016F7t4pTEtAsTA/pXwN83BIc/Wv8/aIitnv7q2Es04eM07EAk
         eMSN9MaDERzOsjuA51BGs1Nq+IK5d+WWs151TLGLTYNZM/HA+Cgdbtq4xCqlHI4TjBt7
         tjeIfBJhcCXug2J2O7snKIWbQcEr7Cg98I4piJ2W3qNEHsSLdxG+p+agc0Keq14/Jeia
         PDFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P/U/8hO1HKfoRoohNP3ac0/UNPdkoU/04FgeOwBhvQ4=;
        b=qo/zCfGL0b+BmKlmV7WEpaGtKFMRHxbURDXKh0v+wzeyJwbhpsgY1MBmlEut2ZqiI2
         QkrvurpT1FctTTjZfPpLBEFi5fDfRN4ZZmaNhMrHX5kt+qTqn8Wpjets73fGQH6c7g+L
         6FBgYpyZNWP1jrBgQR2Fpbg3D0gA1ELGmFuJ0RF0BaJ3mogkLDsKc047t7kexcmgXsSQ
         AZuyW+V921yMq0VZjagByB3K680m12CySIuXte4yrXUKv1cbqGemlRQdLqaNmYt5Hgk7
         u0LxupIq4As8km6gr6ZdiQO6wxAL+LtVqRozbv9ju+vpFcMuOiUzJKvCrDDwaAKHIk15
         gZHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="SWqHv/Vv";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/U/8hO1HKfoRoohNP3ac0/UNPdkoU/04FgeOwBhvQ4=;
        b=hIXRc++9pPa4CnGY0lFhcv7nHJlfkKfLVQJWBIiEnk+yu/yvQ4m2F5OAC0ikcl/of9
         aFjCoCrDEPcgaktfAhmHroPf7/rlAouO8T7VJr9c03XY+TatCvMs/Hj48TL8/JodHnIg
         FpgEYzO6xfOo+TlWCu8+MhA1if2dJM6Rwzm8YisKB6aKZOiR1EELJ/KELeRI7NuF2a4a
         /oFxwKPfmzjRhuPymCe7aLB0M7KocZLb8WKsEmvijl8uSxr1AIP98KOmFmHpXTLMerd5
         NMgRGGU1L5hdT4hwCUqKSiuw9bnbDDEz9C1+5+EIf1vfiyO7WmLRh5uGToet7OgMUi/W
         AESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/U/8hO1HKfoRoohNP3ac0/UNPdkoU/04FgeOwBhvQ4=;
        b=YpNyfW9kyBErCueOpGuDAgPvJ2IdP2CyRy8a994IO9zho2wA29CRYaBUJIdYfq8ASD
         wXwF45i2MFNEN2aAv4//ViV71E3W9jbmphanY0vkr5dgeXQ57S0lq34jb12OZRFeYbmX
         gh3LGF7NHSjqBaMjVyxpMcgfGZbY0hkyqqYR98tA0SESCBosCg+96KndwJvr/rJqO7pD
         wn6a09XtMPmgyO5XGyNOt5Wng1AbzW5xqXPoHCUqGcfMfmblaoSaUGkvU8bixhKmM3Jh
         1MqFFLW7GVn64YvvV0nJ9IJFmADv3MojlHCo7ja0QXhmhy/b555yNjsEA3EMJ7L351dj
         mtqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Q7IozXyJd1yRAgmH5hEt4ZH7CQ/39Co0/LXMwIktuWxpu6tJC
	QUdgGc90j79hGgtRemXlRE8=
X-Google-Smtp-Source: ABdhPJxGP6CbAWmyom5Xh9hRG3mJdWFJrvM5vuci6xbmAra22QHCZfQK5k8ih/e2BTbLmuMhK0jCqQ==
X-Received: by 2002:aca:130f:: with SMTP id e15mr321704oii.173.1597763908151;
        Tue, 18 Aug 2020 08:18:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cc:: with SMTP id z12ls1208059otq.4.gmail; Tue,
 18 Aug 2020 08:18:27 -0700 (PDT)
X-Received: by 2002:a9d:c44:: with SMTP id 62mr15780761otr.185.1597763907803;
        Tue, 18 Aug 2020 08:18:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763907; cv=none;
        d=google.com; s=arc-20160816;
        b=v0NfNIVx3/4kjaJ0cS6F5zrO7mpbwMNq9uq6fo/iT7rQoA4zVl3dUBDuv8eVblPTXM
         S+WvDQ/7wZaa8y/gETVdNAXT/e22kkbuCLz0rw8XfZNh5QtzwTbrGlBUMOq4kW9lOlYr
         h/WLruQrJZ6RXG3r/NOtezDkQZZxchBhXysMiFYgvXi1mErq0mL0XGlchZx99S17Vvxz
         hV50O/iirMdJG1C5s1HV/AKKGnMbkxhqO00jfbFU9QX3cG8+O9aa1/ThwYt4eYAgNOcf
         Iz3Cc5i1JrUKPo6AU6mEVW4t3g+sDJTc6DyriWrDqgY1NrM8yrWaXXT43cssZQsh9Uxt
         u7Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b0VW3D9pgKvhFwHdehAU8KV/J10cvXzFYROUldttf3k=;
        b=kmQb4/fBk/UTiF6CiqBR+y6sxuQVkPsL6x81Q7inaMVAeAEbWAn163sK6vz0YMHfVq
         IZT27ttfedU33m09V6kdnYzziyz0UAPxlVEz+52j0UDrWP5z4Qw3rZCjQGFddegyEb2T
         0aUAoD19v7yHX8Te8+1WaykeieNnuFbJF5sHyctIRMt5fmzobLN240LyKDGf5SZR1sAh
         zVGQ0gOG3tDrT0xntd1PXGzpfEHHQsDfqs99LyLKvjWwzNlc1J1BHq8r3U0Wj0Uyi/9k
         3MjUqUrDMh+PkAC/J6d/LDBC3qJP/Tx6RcORt3DHmWXvTX8G9B1hAHBwY/6AhNDZ3sYe
         oLCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="SWqHv/Vv";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c199si920938oob.1.2020.08.18.08.18.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B66A72054F;
	Tue, 18 Aug 2020 15:18:16 +0000 (UTC)
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
Subject: [PATCH v3 09/17] memblock: make memblock_debug and related functionality private
Date: Tue, 18 Aug 2020 18:16:26 +0300
Message-Id: <20200818151634.14343-10-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="SWqHv/Vv";       spf=pass
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

The only user of memblock_dbg() outside memblock was s390 setup code and it
is converted to use pr_debug() instead.
This allows to stop exposing memblock_debug and memblock_dbg() to the rest
of the kernel.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 arch/s390/kernel/setup.c |  4 ++--
 include/linux/memblock.h | 12 +-----------
 mm/memblock.c            | 13 +++++++++++--
 3 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/arch/s390/kernel/setup.c b/arch/s390/kernel/setup.c
index e600f6953d7c..68089eabae27 100644
--- a/arch/s390/kernel/setup.c
+++ b/arch/s390/kernel/setup.c
@@ -776,8 +776,8 @@ static void __init memblock_add_mem_detect_info(void)
 	unsigned long start, end;
 	int i;
 
-	memblock_dbg("physmem info source: %s (%hhd)\n",
-		     get_mem_info_source(), mem_detect.info_source);
+	pr_debug("physmem info source: %s (%hhd)\n",
+		 get_mem_info_source(), mem_detect.info_source);
 	/* keep memblock lists close to the kernel */
 	memblock_set_bottom_up(true);
 	for_each_mem_detect_block(i, &start, &end) {
diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 550faf69fc1c..47a76e237fca 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -86,7 +86,6 @@ struct memblock {
 };
 
 extern struct memblock memblock;
-extern int memblock_debug;
 
 #ifndef CONFIG_ARCH_KEEP_MEMBLOCK
 #define __init_memblock __meminit
@@ -98,9 +97,6 @@ void memblock_discard(void);
 static inline void memblock_discard(void) {}
 #endif
 
-#define memblock_dbg(fmt, ...) \
-	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
-
 phys_addr_t memblock_find_in_range(phys_addr_t start, phys_addr_t end,
 				   phys_addr_t size, phys_addr_t align);
 void memblock_allow_resize(void);
@@ -476,13 +472,7 @@ bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
 bool memblock_is_reserved(phys_addr_t addr);
 bool memblock_is_region_reserved(phys_addr_t base, phys_addr_t size);
 
-extern void __memblock_dump_all(void);
-
-static inline void memblock_dump_all(void)
-{
-	if (memblock_debug)
-		__memblock_dump_all();
-}
+void memblock_dump_all(void);
 
 /**
  * memblock_set_current_limit - Set the current allocation limit to allow
diff --git a/mm/memblock.c b/mm/memblock.c
index 59f3998ae5db..799513f3d6a9 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -137,7 +137,10 @@ struct memblock_type physmem = {
 	     i < memblock_type->cnt;					\
 	     i++, rgn = &memblock_type->regions[i])
 
-int memblock_debug __initdata_memblock;
+#define memblock_dbg(fmt, ...) \
+	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
+
+static int memblock_debug __initdata_memblock;
 static bool system_has_some_mirror __initdata_memblock = false;
 static int memblock_can_resize __initdata_memblock;
 static int memblock_memory_in_slab __initdata_memblock = 0;
@@ -1920,7 +1923,7 @@ static void __init_memblock memblock_dump(struct memblock_type *type)
 	}
 }
 
-void __init_memblock __memblock_dump_all(void)
+static void __init_memblock __memblock_dump_all(void)
 {
 	pr_info("MEMBLOCK configuration:\n");
 	pr_info(" memory size = %pa reserved size = %pa\n",
@@ -1934,6 +1937,12 @@ void __init_memblock __memblock_dump_all(void)
 #endif
 }
 
+void __init_memblock memblock_dump_all(void)
+{
+	if (memblock_debug)
+		__memblock_dump_all();
+}
+
 void __init memblock_allow_resize(void)
 {
 	memblock_can_resize = 1;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-10-rppt%40kernel.org.
