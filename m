Return-Path: <clang-built-linux+bncBAABBN6XTP4QKGQE6TN5MSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DA92358A7
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:13 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id 7sf7796496vsr.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386232; cv=pass;
        d=google.com; s=arc-20160816;
        b=oIivK7Y+4H87Rw5AzBE3ed/NvrpjZAAf+TR66PnS/gaqtMBP3KKpQjOz5COjmxu6g3
         Dc9I9JMl8T6TgIICHn+GPkWhqOA2XCp3xni6EYsUkrcbbw3erYHaAqZv8oAuRXW+HX9L
         +ul+UjJlart6ZOmgOqgb9v9EKyM92YsBVcMv7l4Qu/wgfYRJQ0PvCK2rb0O27iExPgJ4
         T3bkpSG2btU0QA5ZCvV6ewCIPsJ22R8WA0QlvHuaL6AabonyQAgCHuUbjVIvmJ8eR7TJ
         OWUPZ9UXeujIr7GY+lDJCgKp8O+mNrbN3GSOnh+PRmXoR9UZWXHSTKfJT70PfUzD/WYs
         AArw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QLymQbbGxTAGGOSrU9RrWRqlGV0VNBCI7YM/3sp1z8g=;
        b=jQw5gEnd5fLjVk9DIS3EnStAKxyTso+ctFtcmyf4+MLzwze71M0QKb1nRQj0J4tFBM
         iQFGEBoPPLjOtmpq3FVV3hk8qvdmFipFtF8fDQ0i3Bb9w1YBLSdNt3DzAxlEZlqChdWh
         fgnufBrN6SZhP+W7pMPdhLS3KcujUiQ2s6LUyIW5ee769IJP+HRpLrrFUpYFab78TMUr
         10vEF61oFpkEw/KC7EyQVl97hV+aboTRbS9cBQxiODIh4f5oUDhtsnjeNHw1qwhozAmV
         1h/TmcOWUvbvXY6J1xwo+aVyJuDDNIw3MNw1G2DR52a2NYyAqh/tDTVZVmTQUfUD2PjG
         ZfXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XkobRDns;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLymQbbGxTAGGOSrU9RrWRqlGV0VNBCI7YM/3sp1z8g=;
        b=l1zRfYklCbOl5xABNOzIMNF8tL685S2ZjPFZTDXusp+I5Am9TMa0d8tcP8Sfh7ZEip
         yBZXp7ir+i0qkDyJJSUcOdQHF3GHGekMFt29EJs1zUMBlOKwhDE9hvk4S+GEMOVRWSx5
         k4RJ5vFQK/u3wc0BYG6GmWDvOttiUuLvzj9NuZGfYgCjQCabJsA35aBPVmUmBw8XpINC
         Q8dsIzTFCJ8s/UdgApR06Ly1Pt5mRjjKF5y+diCYOpG4kzhFspPEeYyv7d9/FOa7P0Wj
         ORUvPrFIALHVCkVnCXygT1QzwDyD9wbW77lGyhhVa7NBpZFbw3SL7OkJ8kCCzdj1xynX
         44Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLymQbbGxTAGGOSrU9RrWRqlGV0VNBCI7YM/3sp1z8g=;
        b=cqgBbpSeGTCqFtyVkSa8ZXlfOYVjH3kh/ebgiLhz/c+2rqUuKJZcpwNrl6MbFtUd5i
         wxEgsVtewZOv7oja1AlxFUbQd2Zl+1TceIz8B4fabQZCatr80pBQmdwP8K0MjPkCYAmn
         vr9ZaSHmnSAtqrj3cj6pGRxvccHr0PUTuW53AJLiuNSAWmpdCMCIANtsTkhSuEjkY553
         odwMZOquXZNRU9K43EL/dnS5pQiIYSSpSnCIoNaaLBTm0yROr2bRWmcNN98HY0BkdLnR
         rAhyIN+BTLLK4A+OgRK0yB7D9ySHnqrcXpwF0IdOK+p0njrYwe6Yp6++EriAHkvYHOXD
         MapA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338XaTRUNPCW1FOh7SzxuX9pM/wZrl81uxrOvhERucChpLJMxD5
	fHlxtSwetHuTle72nZRENNI=
X-Google-Smtp-Source: ABdhPJxkTRsFBXLh2nFlKyJWWbf3g6c9H0ACGR6oT3U7dsVO1WAd2CZDrjuhKLlIIp0sx3H5c895mA==
X-Received: by 2002:ac5:c845:: with SMTP id g5mr445317vkm.0.1596386232127;
        Sun, 02 Aug 2020 09:37:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21d0:: with SMTP id r16ls1619977vsg.0.gmail; Sun,
 02 Aug 2020 09:37:11 -0700 (PDT)
X-Received: by 2002:a67:eb91:: with SMTP id e17mr8953031vso.7.1596386231741;
        Sun, 02 Aug 2020 09:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386231; cv=none;
        d=google.com; s=arc-20160816;
        b=A2LpqqDXIwSdW4sJI693anrglx+q9RHYm1ryx64UMwJODg1V20D8VAcAFDLzouABuD
         mOlC50Z4Sz/HqVBHBr96Ct7wIFngn6tLK9CJIlTFj0R644Bmgyj/U7yRh1CMe9xfi8sn
         GWFTbGonhGlPyApz20HYfiJ09976J/NnMqX7wgNUkwMme8F7FimmzMPuFOuzNzuTB7YT
         pHb4qYetEJeO+r0R2lMYXQG9SYV2aNMCsyp0DkEhFP/lUK5aOjy5pfySTJcl4r/yx7Ih
         VD1KV/fRIA1YErvutexP+c+KBCGmnfBfckbQ1L3u/FI9DAk6AzKukfDmJ1kLKeSL8A15
         0gjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XPEZ+bCBr5XEGYr8n6e4PH4pxJuqKuJ9IdZawD0vcHg=;
        b=VWJTt23SSqUG9S4xymTmVzBiYmh5xH49QA9JPLTWumUKlE0m/dxMCBLU6UsO3ASWv/
         eeE12LPKm0wE/PzRh14z4EA9E+441tjNHspP/4ycIwJk2o2mhElV4KiYkQUCxorDBy+R
         MDVpUUzhV8RTnNn9drDDmcRaNsrvvdhYxJUxrfE1Vdwi4ACcrmrYNHz1GOe2F5VD/wLr
         JlD7MLmGkdVOT+iJY00iERx5GR+Cd2OBl/7oTMWbV6CiecuuST2ME7dzy4RMNUZzuusm
         vwmsDHwoGao/cyQG/joJ/jH75ZkZ5O9cQCSbll+odhLz6IZFDg8SE+vTxpDJHbFfrtnz
         xeKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XkobRDns;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c186si1094762vke.3.2020.08.02.09.37.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 79B9E20759;
	Sun,  2 Aug 2020 16:37:00 +0000 (UTC)
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
Subject: [PATCH v2 05/17] h8300, nds32, openrisc: simplify detection of memory extents
Date: Sun,  2 Aug 2020 19:35:49 +0300
Message-Id: <20200802163601.8189-6-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XkobRDns;       spf=pass
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

Instead of traversing memblock.memory regions to find memory_start and
memory_end, simply query memblock_{start,end}_of_DRAM().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Stafford Horne <shorne@gmail.com>
---
 arch/h8300/kernel/setup.c    | 8 +++-----
 arch/nds32/kernel/setup.c    | 8 ++------
 arch/openrisc/kernel/setup.c | 9 ++-------
 3 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/arch/h8300/kernel/setup.c b/arch/h8300/kernel/setup.c
index 28ac88358a89..0281f92eea3d 100644
--- a/arch/h8300/kernel/setup.c
+++ b/arch/h8300/kernel/setup.c
@@ -74,17 +74,15 @@ static void __init bootmem_init(void)
 	memory_end = memory_start = 0;
 
 	/* Find main memory where is the kernel */
-	for_each_memblock(memory, region) {
-		memory_start = region->base;
-		memory_end = region->base + region->size;
-	}
+	memory_start = memblock_start_of_DRAM();
+	memory_end = memblock_end_of_DRAM();
 
 	if (!memory_end)
 		panic("No memory!");
 
 	/* setup bootmem globals (we use no_bootmem, but mm still depends on this) */
 	min_low_pfn = PFN_UP(memory_start);
-	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
+	max_low_pfn = PFN_DOWN(memory_end);
 	max_pfn = max_low_pfn;
 
 	memblock_reserve(__pa(_stext), _end - _stext);
diff --git a/arch/nds32/kernel/setup.c b/arch/nds32/kernel/setup.c
index a066efbe53c0..c356e484dcab 100644
--- a/arch/nds32/kernel/setup.c
+++ b/arch/nds32/kernel/setup.c
@@ -249,12 +249,8 @@ static void __init setup_memory(void)
 	memory_end = memory_start = 0;
 
 	/* Find main memory where is the kernel */
-	for_each_memblock(memory, region) {
-		memory_start = region->base;
-		memory_end = region->base + region->size;
-		pr_info("%s: Memory: 0x%x-0x%x\n", __func__,
-			memory_start, memory_end);
-	}
+	memory_start = memblock_start_of_DRAM();
+	memory_end = memblock_end_of_DRAM();
 
 	if (!memory_end) {
 		panic("No memory!");
diff --git a/arch/openrisc/kernel/setup.c b/arch/openrisc/kernel/setup.c
index 8aa438e1f51f..c5706153d3b6 100644
--- a/arch/openrisc/kernel/setup.c
+++ b/arch/openrisc/kernel/setup.c
@@ -48,17 +48,12 @@ static void __init setup_memory(void)
 	unsigned long ram_start_pfn;
 	unsigned long ram_end_pfn;
 	phys_addr_t memory_start, memory_end;
-	struct memblock_region *region;
 
 	memory_end = memory_start = 0;
 
 	/* Find main memory where is the kernel, we assume its the only one */
-	for_each_memblock(memory, region) {
-		memory_start = region->base;
-		memory_end = region->base + region->size;
-		printk(KERN_INFO "%s: Memory: 0x%x-0x%x\n", __func__,
-		       memory_start, memory_end);
-	}
+	memory_start = memblock_start_of_DRAM();
+	memory_end = memblock_end_of_DRAM();
 
 	if (!memory_end) {
 		panic("No memory!");
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-6-rppt%40kernel.org.
