Return-Path: <clang-built-linux+bncBAABBY6XTP4QKGQEYO2LTMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 694582358C4
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:56 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id e126sf5595629oif.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386275; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZviQ5C/UwtmyWTWlBsYOgikrJViXcLG3Ryq51wqpP5NcZeL4Tsun+fJYMK+cFUdiZg
         At4zqMwS7NyXwYlmiIwrdTkEAA6KDz2YdpQRI6dr98VXlqegRjOc59i062DOK4rmjDvG
         n7aOFpLGclkmm2L+XUg3PaZMl9HGb9VyMLOdp+W6mdH3L5xox2RCyoFcShKdM8XwHYin
         YEVrQx2LPYd1ooBiH7htKUuWuvS6RiQxhovNOtBo8f6HMB2LnkK8eh3YB1bxBS0KN7iB
         00QnPxiImS4zr3Kun5ro7x7YzhPMhHP7HlJT/s5vUuGRMt35hCEmYDlwjxdphadQhDFd
         aUMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=K6Z3TzQNStAXJ4bdA/kAETAlD2guNDhRQbF44d+w0tU=;
        b=ktWI+4XqTQQeXLZWl/HqcTn4nKgSz+6dw1sqGloLS0R6n4t6CQ0pajsufoN29dXtmV
         udZd0a8xU/iM+CrU3f5meLNPTXZTHwNvv+Y2gMegeTRoZ24xyGerPAOzLkkOJE0HK8fz
         uAShtSnVtcxTqcqjgCj1E5ztwihDbi0Pw6pJ7jjLI8iNYy61QMYd1l65By3+IRkrcqTS
         s13IERzG8wwSywCbEfxCjZDrFuYrZO0HSB3JCNaAldl5YCwWnm+Mm/TPyhdVaF8g1wHw
         QDjc8xR2B129oSrV2SMy/0WTzgzq+ddhZrzlhYD66ocmwNHULIrt7gW1pr6nD4uOq9+5
         6Juw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=URJX7ELs;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6Z3TzQNStAXJ4bdA/kAETAlD2guNDhRQbF44d+w0tU=;
        b=WJT89QUycxH2mQYMXkq+P2wSxVM6smxKHsqN53i2b3J4hnHPfVyHJKvxma2Hb2CxF8
         MugYtq5cnZsXnPcAbqMqxfstPwXYMfxpDjZduSgVdKC8QuybQu3S+s33abm4w7DKBRB6
         w3w/r755m1NJzoVnrS/SNaIBlW08dQzn/+6D6NTwAj6FgJPPYnDuvslZmgSxbwXrBdwG
         iHWA3rTtQQ2e48kNYJjzpOcO22BVnQxtNouFXOGFvtRmsN5Y9jS+dJ3x4mH0xpJAnkP0
         CvW/Lcr1ckHrHqloD431S8YklpCdW7QLIKtnjwfzBGfp84i2DYkCik2r0lx4ASZTRzy2
         7Aaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6Z3TzQNStAXJ4bdA/kAETAlD2guNDhRQbF44d+w0tU=;
        b=gmvmOU+RTxvwkWA8p0903kT9tJvYubofeloKH1e5T249VZ+DNqKPrKVBc/YLl61Tzw
         wSSl6CahvwAo9sSJk/Rx5xWlK1sFmsZuvGQ6kqS6wkAyvLa7PxnoniHyIC92uyVCCo0w
         jdgvmkQaBTWU6xaNYUZKWTlxa2auY9cP2qaL6rO7uOlsacW35yTg1UDU75TAd0K2RQl4
         3fkUWVXh2ZzNoXLkR4Ol/S8YPW3DmyUlzSc5sQJkuP8BQ95Nr9jY0YOolY2FdI09u00R
         9+p3YbjVvh54jLrMUe+6vs/WDxjnlXKFKqjpv35vhFKDZ2FSE34yaadO47hGsC5g1e3e
         /zUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533II6v62txyMrox97F1tzZoJMgNXM1fOEpSOJztQvAmJygSJTy7
	lNOsoa5DVH4iw2+toOjKHUw=
X-Google-Smtp-Source: ABdhPJxb+cOrDCxifqeMCIiPQS8xBxw3VeONti8zwy/5FZr9R/9aCcJk1oruABqQMnYHz1JMtfbXNQ==
X-Received: by 2002:aca:bfc6:: with SMTP id p189mr9389222oif.55.1596386275392;
        Sun, 02 Aug 2020 09:37:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad9:: with SMTP id m25ls2140742otn.11.gmail; Sun, 02
 Aug 2020 09:37:55 -0700 (PDT)
X-Received: by 2002:a9d:5e19:: with SMTP id d25mr8622810oti.325.1596386274939;
        Sun, 02 Aug 2020 09:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386274; cv=none;
        d=google.com; s=arc-20160816;
        b=BHK82tK+LGcoWR8BNt+6HgSV1kk+SofgxemSqvlBC11benOXhzPYspYTGSqa9nB32j
         2S+SoiEdlHW/zbt3miLWkmtjK+6/MnEBkjWTX2L61BQKalQsIQRFm542zaTLZT6vm/tL
         JTQmo7x57Cft3G80Lk1Ex1nR9cWD70sRk+QB4o2JEgYwulL6cpsB6tLosaYdzrvcrJ1H
         qVGx2HZAen2X4/RsvVnY9QpJUTEUmGEb8j0so9xZRx1uTa6/2FtEgAqLFUsHpxSLiW/b
         xAepW0xkMeRf4U3MlN+YJ/JsVj9WZsaa+DX1zYiLKU2H7IhRw2XQEwonyeUjPiezE7cT
         Y2sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uRLIWt++D6v3SV3N6MRA1Kmpkt/JgdCl3CqDUpVUXsk=;
        b=mkunVfVWyJsJXkzo16KWkTU2kh32F2USXguTO2tWiCagjSczTycF1NjdBYk39XM7rN
         0IMsEkoyDH5V2GGZhLXWnBBZrobhCWOUjtppCCx4gPTzpWQRh3mgUcloTro0GpOHi1zi
         9Hh7NxaOiLgIK/R0YNrrLuXuCnmCgiEFlBu+pq9fbxlas3v6ICyNLkH3bDnYFv1zFjet
         7AGJtwzhgAdS9lQxd5P2h/IxDcMJJEKWdEJoH7vCCI6QC9MvsDvfQn2qfvgaqrPVY5UE
         1qkijtPy7vTDhL5E3wUuOdQYH7OXMdYJH9xZNbvJUYOsLN5cMqeNpj0FiJ9XCt4eINv6
         oXdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=URJX7ELs;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n22si1056867otf.2.2020.08.02.09.37.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E71AE20759;
	Sun,  2 Aug 2020 16:37:43 +0000 (UTC)
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
Subject: [PATCH v2 09/17] memblock: make memblock_debug and related functionality private
Date: Sun,  2 Aug 2020 19:35:53 +0300
Message-Id: <20200802163601.8189-10-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=URJX7ELs;       spf=pass
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
index 07aa15ba43b3..8b284cf6e199 100644
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
index 220b5f0dad42..e6a23b3db696 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -90,7 +90,6 @@ struct memblock {
 };
 
 extern struct memblock memblock;
-extern int memblock_debug;
 
 #ifndef CONFIG_ARCH_KEEP_MEMBLOCK
 #define __init_memblock __meminit
@@ -102,9 +101,6 @@ void memblock_discard(void);
 static inline void memblock_discard(void) {}
 #endif
 
-#define memblock_dbg(fmt, ...) \
-	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
-
 phys_addr_t memblock_find_in_range(phys_addr_t start, phys_addr_t end,
 				   phys_addr_t size, phys_addr_t align);
 void memblock_allow_resize(void);
@@ -456,13 +452,7 @@ bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
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
index a5b9b3df81fc..824938849f6d 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -134,7 +134,10 @@ struct memblock memblock __initdata_memblock = {
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
@@ -1919,7 +1922,7 @@ static void __init_memblock memblock_dump(struct memblock_type *type)
 	}
 }
 
-void __init_memblock __memblock_dump_all(void)
+static void __init_memblock __memblock_dump_all(void)
 {
 	pr_info("MEMBLOCK configuration:\n");
 	pr_info(" memory size = %pa reserved size = %pa\n",
@@ -1933,6 +1936,12 @@ void __init_memblock __memblock_dump_all(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-10-rppt%40kernel.org.
