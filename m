Return-Path: <clang-built-linux+bncBAABB67C574QKGQE2WGKH4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 04537248945
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:19:25 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id n185sf7000425vkg.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:19:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763964; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCQfqp3qDbZVlBXODg8Vy3C1rgIdqZVCMe0ISKtNFzrQnaBKUupUFT/YRx/qkVTBxP
         7GebjIekeP+wYgsg1nOE/an8qUT/Bl1+nIgrJqnkmXoLn9Y6b5GoZCpbfH60IHVCHO0Z
         MPs2QFcIBPkdhwFzi7JQZxgDeJaJedQXGLF8KuTq4YQiL9K3SM9lrgY2qr2VMAUZaUUx
         Y/nYaKiCkQOPcxAHZeAtwCofvsPdQwJfB1LDSFtWw1sRHfsuMIO8/EMAZktT66Yhb/UO
         pLfaMUk77WmqhQc7uBVouA65GhT+CLfCPzrewxL7RWhUCAhtqSv/w+Uy99fYrllHPet6
         EJlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bqwE0axRp2gdTvFegB5S8aHDdO9zBvtkhFMmpO9gmk0=;
        b=TrHs9gv7T1hz6xsuJeRmoTjf9pSpHKQdGa078IhCw32epSDBPrPEqX7Cm/E126nu7y
         cmqgNISbbIzzknnDFYjDWe2xFbXbx/KJfLjyvbXBRBs8aIYRjP9b2OwGy1k2oewTHN/g
         +iMFVurynqg84v4seg4jde68rkLOW3S7vXxGzF/3kg3RU5Ild71Y1PsVmgsPzJGnRTXq
         d+JokVcGdRiMpLvlL/tWrXIeKwlaWLxbcAco0Epxull3ZqVf+MvjVTs6h6Z6iOzWW+Y1
         F1bqZsvEd/eO0PyzxW1QLDejgKxsfOChXKMOAX1/zIYQozK/5VK7ToBZwUXHFRTrPEs3
         vyUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="W7/1L7PM";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bqwE0axRp2gdTvFegB5S8aHDdO9zBvtkhFMmpO9gmk0=;
        b=YUFGlyzZWnBDPWeYVMrB/T3j8F6boo6Er7/BoS2GkSVkjueKd9rQEUdJ/TXPENDA6F
         /ViqqSI2DOOtpzHdfBoc3gW6vbvlGZCiKFvwPUxtlDS/GcV8zesTGTcwnmowtV0Qozfx
         +8RWckGmdrPOVVsN4RgRsQ+9PPzzYsdcieRhOmIOoSysxFIgezSV70RrA9bZph7r+1L+
         vFQQ2bEzEfItquzIncMr44kEnTLhNB/tzST5MpVq36lz0u6tkzuNKul9weT13F8DZMvy
         5c1/+nhp4ur7CTxMN5+tq9yYNMyFmlKvxLWphbCDSzDl87zlgzAuIrYLiCDY3gDHROjp
         lCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bqwE0axRp2gdTvFegB5S8aHDdO9zBvtkhFMmpO9gmk0=;
        b=SzrcpnWlgxZGfotu9kE0DYkeVrrWrolacGPgohy4KFr4z6qUW0fFE/zUHhu6772SJP
         YxW580n/N1ByIJsm3qc3n1lY8rb3JbSYkzr2MCWpXQCqUDooE/tn+PsmC9+em/v4vscu
         2XQMK3heHDFyVIPuPHrdwk0aMtqycR6BMUTqbmfZfnsw3WmHftmSi+Nq815r4B+B1emZ
         4H8tX7nYtwt9viYclkH2jsLn5YDjaO9+XSmJ6xRXmJjqyMCEhR9wYRbfsi4yE5vtUMGG
         eQlrVeXeY9AIDNfUIPddc5QOiAcK2Lpn0kkl5CtsHr7mWSS8rQMfBgC+ttxFWzPW/7cO
         Fl5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cBK/3FK+Epz+xWbMxiP3qlOAJVR+m85fuV/Pej0/m/yeSwaD4
	El5YpG5FfVBt/F+IAxNMA/0=
X-Google-Smtp-Source: ABdhPJxlq6UJfaAkcaYSTPHjqJQ0ngHz4Y2UKOp/UBPCkyRrwgE+szHTgJ/f4jtYinU/kbP/OV3aaA==
X-Received: by 2002:ab0:2042:: with SMTP id g2mr11157001ual.51.1597763964018;
        Tue, 18 Aug 2020 08:19:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c416:: with SMTP id c22ls2382604vsk.4.gmail; Tue, 18 Aug
 2020 08:19:23 -0700 (PDT)
X-Received: by 2002:a67:fdca:: with SMTP id l10mr11939316vsq.175.1597763963459;
        Tue, 18 Aug 2020 08:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763963; cv=none;
        d=google.com; s=arc-20160816;
        b=lhj7qwN9lpMwHnAdMIhU632/VNeBYTw7PBgt5T2wu6gXRpAXSBT62iG4g4SLs8xJJl
         Og/pQXl65x9d7E/0V1J+oSKrpR1HJBnpPhbCWg/1phOMbHtHSbrAJdvxFp615bi0u9HT
         lqeJ5KW/4BDevc++7LhCrAVUm23zNFoQ3ehViZmxF6/ETWijFtDdO/EjxYkVRrm02TlL
         5EsOx2pDhmMRGG0JPyQJCbA4Shbg71/Li2wnU9+2I5veJSyHcMPzCAdQLtMd1b2Gtw3+
         xMNoEZY/HtwTPScyQn+WMPUUWrefk5ks/tHn+yBIkSLKd/dBPIjJX+80cBz1Jjjbb3lV
         VQfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m8NcckuLpLNDXDwdNLnxDyjRnzgEg9+XfGKjQvDdQjc=;
        b=YFiOg+ZF1Tlq/mG8ZYOs3CbN8okBbjfqLXh+qpQGAsWKSq5O0yybvof1LfTTGrM4z1
         Xu806qf8CTZe2S5IXlmreHp/ArkYXsRVjClN6vn1VGUthAA27Re/7eWgHEfWaYmT0zXa
         YgBIOOE3vH7K9WtJNAGnADxGts/hLi3x0kwv4DuLvkpUh8XqFA2whoHGj9WuaJmHknW9
         pOQzjPlZvfljNtylHMJ3sJDWw1lD3dW4LVFsdxjN8myTNMp9QEbSMqiaA9CihlCx4mg2
         IGO+/s0jJlxEzyKWD/ONM2jQtJF5wno2vijen88JWh7pYmXoLRo/90yWeWYxUCY3T1sS
         JaSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="W7/1L7PM";
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p197si1102503vkp.0.2020.08.18.08.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA0A22076E;
	Tue, 18 Aug 2020 15:19:11 +0000 (UTC)
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
	Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 14/17] x86/setup: simplify reserve_crashkernel()
Date: Tue, 18 Aug 2020 18:16:31 +0300
Message-Id: <20200818151634.14343-15-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="W7/1L7PM";       spf=pass
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
Acked-by: Ingo Molnar <mingo@kernel.org>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 arch/x86/kernel/setup.c | 40 ++++++++++++++--------------------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 2cac39ade2e3..52e83ba607b3 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -420,13 +420,13 @@ static int __init reserve_crashkernel_low(void)
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
@@ -444,23 +444,17 @@ static int __init reserve_crashkernel_low(void)
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
@@ -504,13 +498,13 @@ static void __init reserve_crashkernel(void)
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
@@ -518,19 +512,13 @@ static void __init reserve_crashkernel(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-15-rppt%40kernel.org.
