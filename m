Return-Path: <clang-built-linux+bncBAABBGWYTP4QKGQE6L5OUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2172358E6
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:38:51 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id r13sf5287497uap.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:38:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386330; cv=pass;
        d=google.com; s=arc-20160816;
        b=sd0jrJaFrA1yD0Gr53/BVlIpS2p59VZgNJNZ2zTyd7njSc9iFFsByZ5lA8QLRRv+Lr
         ucok4WBeVcK9F549bZRkET42AfQXF+QQV2LpvjE0idiUWdSkQhNkKx5nzoUNLafkyRQ8
         PF9pmvumfCZe1f9gCnCyZye/FQ8XvQxg1bp/K40CR+5NyBErP26bgUcaqigUuohYX/E/
         bo7j4BxXYeBa8r5V0PVNhLE9O5nEBz31biI0HJ62n1BCr6LWLrYej1sl78aVyCrtRraD
         mUwr2ccn6HVqDDPRTHc5JRuNw9rEKA7po4fkC0NH59ivI48hnwZCgf5vOR1PlZaAy+nY
         XAWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b1rWSPboURDOcSZYuPqEBAdA58sKEOgiBXGbLEsfPjM=;
        b=VovY7Tt2iZcABiIE1R7konnFTnMVuq49djqPe0y3GzZZ2PJs+ycwstfDeei+fzZrmw
         mQD302dSLVi3IRgb+W1b2xYcjEtYmAlzcZScfzLcXO7E2bDK2PVLukxglgw7QxEo1TZp
         6govUnNmnQDeBjye/SNoZeeFEtyfAa4pIOzN4HBV8b0LzjfQ2hnfHVx8d0X4/5wJOHNi
         jbb2iPmwB5DxC4qryMXDZJiyPq2MBFkjZEdkoRwoVTbvtvLUefT0X0cT+LpyY2Xd2JlM
         6RbIFsYXqo8/UMJ6Vo8druo+B2TjpIJNiJlp5YmqUSrQ3LnbS0GSOKOO7kJ/sqpEZBp8
         ZxHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rad8TiDp;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1rWSPboURDOcSZYuPqEBAdA58sKEOgiBXGbLEsfPjM=;
        b=LXq3exgAZ/qm1otUhVForECreMbzgBuuPqV+EVIg1Quojqf9ni4NHm/IjL/wpmKWOR
         khw4KL8uFNIw1Y+W2D8nL34Si2YUyf7u0QW8Dv3ydRZ6PucFN2O/bSPsSf04cPo/whXA
         PI9+w462wBhIUYuwupR+gLsKxf0Vk91UI3taem+93QDT+SEs9J0yRhzYurkfQNuxn9vX
         iN8xrnincgoWDZnfxsBhdFLRBdhufzygh66sXr50VCMp6AUjuK5UlYxLxJXEdaGnYasd
         nFINI8w7ug8sOhzgwZxmln54kfKh6LpQ9u2Q2Y1wYdx3lchAcxp3kpLpYv+v+RYzdkta
         9MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1rWSPboURDOcSZYuPqEBAdA58sKEOgiBXGbLEsfPjM=;
        b=Iv80lLGDf7mJNIWeP6PHE6CvLq/I3ISgB/QNEni8U2TrHQupq3dKsT1f7vPulhVvDs
         Vr17JwEFxeowwbzq6gHrVRBVK0McdXx6xlYnJ6nAtmDqiiftfcbzzm/LRbn0in7BsDd1
         +17FRgQ5/eW5iJBCkW4/ijx0P7e4bMtjsNdNuDX3pv9kt/0MV5p1a6Ld4D0nL1f03T8e
         r3swKmkM8eoVbNpUkOtIOoagPGzPkbEx8pSfceOAiPcraQQ5qs/J2FJVa/1GUdyZqGK5
         K499DvLzXHj0YtN3yGPuvPO4AygIUB/pD+cDGBYg/RoLpB1oK8kXSlRkkAolmvhcQrGh
         iSjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lDPKYih3AVgs9fzVKf5X3L0US5HETrU/0Yp88BxRDOV7Ygs0G
	SCrd0v0vrrQBcVAc6+KQj1g=
X-Google-Smtp-Source: ABdhPJz0aZ75z6DZGJLG+MyRqy6VCzYF7kT5p5K+i7UfQpc/tAMSstpyGhcHLEgKTAm8+0Ivk7SwaQ==
X-Received: by 2002:a67:eb92:: with SMTP id e18mr8480763vso.96.1596386330493;
        Sun, 02 Aug 2020 09:38:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f415:: with SMTP id p21ls1606131vsn.7.gmail; Sun, 02 Aug
 2020 09:38:50 -0700 (PDT)
X-Received: by 2002:a05:6102:1c9:: with SMTP id s9mr9162471vsq.13.1596386330175;
        Sun, 02 Aug 2020 09:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386330; cv=none;
        d=google.com; s=arc-20160816;
        b=cNNtmDpYpyM+/vrSWsAmPD/TKj2PUPnQ7RdV7PbFQvCphugUEiiy28bfO6xcu2iYWJ
         L9GJkbWiFoNdIaqbJq18cg8BBYjSIFVI/3JzpWig57iOBCpEeSFYrmpiMl740u/Az4G9
         BQGJUMFhUHAQt589lFaW93u4BtmJaPkTP/w6u8gn5FJ0ziLbqoNq5ANk4t/XuO5dRxcR
         u4R1z20R2WZ2fvjp7rVVztXoQgj6nMfbD0fdhyD/UCwGCbrBZSG9ruw94IeEahorNmma
         vWLFE/WnpmmWpa4ooNZjXdVuLlX9dkoGnaReF+3E0Z0oC+RWLSToN84ynf9Cfq9YTIIa
         Y9Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7fsGtuNSzDIPFW7rJp3izB7BdpJmbfxMkLlwxxnZMyA=;
        b=Wv/j0Ob8QnBYxr+DU3rxMzZcevNJC5gdGw1xVRa0rCps9P/N8GKTHaaeBy6nQ2czAE
         TiWfg01hlAivc6IocxMBqH6tw0UcglmauOFByNdiXgtBe6ktR6phBE55BZ+wgm1ddqIl
         RokXVymW2MsLQa628ViRRdp7U6SmZUIGnfypH4TjGpJGY6ISl3LZTUqnjydMIjU97qKH
         JH9eeuO/RAk9Ira/lkQT2nHULaW7WT6HnoeTf3BpdOC9jSypz5KCWUzWHw4I3muqUs+g
         Y3C+qadtM5j8V2nq1+3cwYmPdutfNWNpxcI/BELdT7bI082JgoSlPdYTMn04uYiifZZZ
         Cs+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rad8TiDp;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t72si822037vkd.5.2020.08.02.09.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B572220829;
	Sun,  2 Aug 2020 16:38:38 +0000 (UTC)
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
Subject: [PATCH v2 14/17] x86/setup: simplify reserve_crashkernel()
Date: Sun,  2 Aug 2020 19:35:58 +0300
Message-Id: <20200802163601.8189-15-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Rad8TiDp;       spf=pass
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

* Replace magic numbers with defines
* Replace memblock_find_in_range() + memblock_reserve() with
  memblock_phys_alloc_range()
* Stop checking for low memory size in reserve_crashkernel_low(). The
  allocation from limited range will anyway fail if there is no enough
  memory, so there is no need for extra traversal of memblock.memory

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/x86/kernel/setup.c | 40 ++++++++++++++--------------------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index d8de4053c5e8..d7ced6982524 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -419,13 +419,13 @@ static int __init reserve_crashkernel_low(void)
 {
 #ifdef CONFIG_X86_64
 	unsigned long long base, low_base = 0, low_size = 0;
-	unsigned long total_low_mem;
+	unsigned long low_mem_limit;
 	int ret;
 
-	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
+	low_mem_limit = min(memblock_phys_mem_size(), CRASH_ADDR_LOW_MAX);
 
 	/* crashkernel=Y,low */
-	ret = parse_crashkernel_low(boot_command_line, total_low_mem, &low_size, &base);
+	ret = parse_crashkernel_low(boot_command_line, low_mem_limit, &low_size, &base);
 	if (ret) {
 		/*
 		 * two parts from kernel/dma/swiotlb.c:
@@ -443,23 +443,17 @@ static int __init reserve_crashkernel_low(void)
 			return 0;
 	}
 
-	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
+	low_base = memblock_phys_alloc_range(low_size, CRASH_ALIGN, 0, CRASH_ADDR_LOW_MAX);
 	if (!low_base) {
 		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
 		       (unsigned long)(low_size >> 20));
 		return -ENOMEM;
 	}
 
-	ret = memblock_reserve(low_base, low_size);
-	if (ret) {
-		pr_err("%s: Error reserving crashkernel low memblock.\n", __func__);
-		return ret;
-	}
-
-	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
+	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (low RAM limit: %ldMB)\n",
 		(unsigned long)(low_size >> 20),
 		(unsigned long)(low_base >> 20),
-		(unsigned long)(total_low_mem >> 20));
+		(unsigned long)(low_mem_limit >> 20));
 
 	crashk_low_res.start = low_base;
 	crashk_low_res.end   = low_base + low_size - 1;
@@ -503,13 +497,13 @@ static void __init reserve_crashkernel(void)
 		 * unless "crashkernel=size[KMG],high" is specified.
 		 */
 		if (!high)
-			crash_base = memblock_find_in_range(CRASH_ALIGN,
-						CRASH_ADDR_LOW_MAX,
-						crash_size, CRASH_ALIGN);
+			crash_base = memblock_phys_alloc_range(crash_size,
+						CRASH_ALIGN, CRASH_ALIGN,
+						CRASH_ADDR_LOW_MAX);
 		if (!crash_base)
-			crash_base = memblock_find_in_range(CRASH_ALIGN,
-						CRASH_ADDR_HIGH_MAX,
-						crash_size, CRASH_ALIGN);
+			crash_base = memblock_phys_alloc_range(crash_size,
+						CRASH_ALIGN, CRASH_ALIGN,
+						CRASH_ADDR_HIGH_MAX);
 		if (!crash_base) {
 			pr_info("crashkernel reservation failed - No suitable area found.\n");
 			return;
@@ -517,19 +511,13 @@ static void __init reserve_crashkernel(void)
 	} else {
 		unsigned long long start;
 
-		start = memblock_find_in_range(crash_base,
-					       crash_base + crash_size,
-					       crash_size, 1 << 20);
+		start = memblock_phys_alloc_range(crash_size, SZ_1M, crash_base,
+						  crash_base + crash_size);
 		if (start != crash_base) {
 			pr_info("crashkernel reservation failed - memory is in use.\n");
 			return;
 		}
 	}
-	ret = memblock_reserve(crash_base, crash_size);
-	if (ret) {
-		pr_err("%s: Error reserving crashkernel memblock.\n", __func__);
-		return;
-	}
 
 	if (crash_base >= (1ULL << 32) && reserve_crashkernel_low()) {
 		memblock_free(crash_base, crash_size);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-15-rppt%40kernel.org.
