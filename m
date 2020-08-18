Return-Path: <clang-built-linux+bncBAABBGHC574QKGQEDBPKYZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id C2206248904
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:45 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id g7sf9389277otn.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763864; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4tLYc76l9T0K7swnZ7f38ykFKIatiBWeBNI4T3lf1n0DeHZHoYOvzO8sliwEQnxee
         Dv/1ucklKVFFMZFc0S1xfo1pOB0hJn+JFNXkh/QQ4xrirU7vwlDSS9qg2ZUCN4SpjBp3
         6dIz4OHApY2joRFqJvaNJS52qu0LGRcg3bFZr5+lD98wnhMAz9ZMKfXjf2WbsaOXvo1h
         ENmUjo+J8R/oO6OrcjGBl4/acozIZZLEm/3ZXJrkLhaJMiLMPK81WNcxpdQHqLFekq4L
         TdOn6EJHY9s/beOlSV7xmaaDBz6OhegABXKHhJXM0/6gVFD+NwBc3M5HpdUOqP7rHfEp
         r+Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xViEF+BXERqE1uIKZ8NrM7/TypWcRPbTWcge383ZcT4=;
        b=JTHLAdsyYJ5DFREB2N70ttUGEsY/dom1rmOl2D192S5WqlNA27zNtKHnLaW7F3B6sN
         0dh6+8h5HaVj89olhbNxkzNyK+G0C9fGZm6dq7hwnCrElzWelCSN96WpzloP2bbDT8Pf
         jD2jP9os5qD+M3PA+Eo2BU/Y3nLnD4Ha6zkK97k13ONhDdpFLeWdko/Q28nFHGUYmRsi
         IOkglaz/JgXluCqdgBEn1gkHsgHzqVofQLt3fmkDau6irGTfKB3TjCM+iwBhuvYdc6DP
         KirXCusUVA4ibakzCLOxFLpFcslCBw29mQdOckrk7whgWtA9CQXPRsPsCCXu0j2MPhBg
         xMeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m1XiJCmb;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xViEF+BXERqE1uIKZ8NrM7/TypWcRPbTWcge383ZcT4=;
        b=F9M2cOAb59q7GUtirtT5QCya7MUy18K3KFpzmJlmedCDfOnX3f43Ba/WU2AMXtCOdv
         f8q9+zIWGJscAE1OzKff1sjIl0prIHd8/jPOiGqwKVmrHf7U/zoeiRwLkCOhegwcMqjs
         5nT6Q7B3k7dB0Khzf5XWVKHl5skN5actZlmjXT0GP2DJeisEiWIbLHIlcIFXN8JJ2yES
         +CmkfYVdBLpT1w9Q7q7IDM+b2xu9CTWuQuNZb8O9oki61XzbTu935qrFWxq10DYDsJ9e
         zBkEcuxr5VT/PMZ+jqVnjbtzlp4jelWZ8qQCNcojPf3QtG/VIshBJ5rwAWNHyrfKZOal
         nTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xViEF+BXERqE1uIKZ8NrM7/TypWcRPbTWcge383ZcT4=;
        b=ulHmW2q1h30t0+OHH3gMT6kIPnMD2eBvzHh4ELiBPdDcLB+eZrz/DqrqHjipmdV3Lt
         lhwrv0jlpwwU8pBXXr9LQLtmb40xKopEQhwn79aoXGpKq4gGc7Na+lDYFPY3DAxXVDzc
         hS/tUSLNdH05dYVyjFOljcw6HcdySsj8tVwF3CZK3lr8TEKoRvaTOl+Y6Ial+qgGpEv1
         sJXqnz+dq3wWDCsYK2dt34+/5SYTZjMHn6d9oEZhHGI2f3MGHOukdrduHXlLCU/9u3AN
         xgCulv4BhIXvsl2/XNg0gm9BNcPLf0+Hfkqk96/yMtxrrRuD/ir8jhuWggINhOkON8T4
         emHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yetu28271EyCpRxECXnG65rDfWvXqJChXNT09d40lWTG/IRmH
	wNwngGsPrFR0PpZ4WV9IiWg=
X-Google-Smtp-Source: ABdhPJyBerC2kKaFNIP0PS65plK5wIK+d7VlnxDC1VQfH/KMp6TsC9vDHVaZGWbnQdaxrM/WyAWVjA==
X-Received: by 2002:a05:6830:354:: with SMTP id h20mr15350075ote.290.1597763864675;
        Tue, 18 Aug 2020 08:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3e51:: with SMTP id t78ls1172783oot.5.gmail; Tue, 18 Aug
 2020 08:17:44 -0700 (PDT)
X-Received: by 2002:a4a:e9f7:: with SMTP id w23mr15246568ooc.56.1597763864371;
        Tue, 18 Aug 2020 08:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763864; cv=none;
        d=google.com; s=arc-20160816;
        b=eaOqOooq7Yeywzp8TeT8G3oaa3UMjeuHp1n4eDz7L+c0PziPao84kCQvxGVyji7sfh
         geaoFBSZsKsg+t1qekMiMcZPBv+dpazoKpLye2A3Inw1Zdbnp136HC80J7Bfn9VJwPQc
         qbow3Op+Q3sI/u9gN1t9j8tQc9x1XySuWkXI8kKUiE6bZkN3JU7FqA3/FQ11gvFW7mdu
         8Gtum56d49zp+hsyZtfGHMZ0xJplO+IFUrj6LDPVOxg0ZBrMWTs+fsDsHGUmbgojzbeH
         Pvn0TVaiYSU0MkZJlXlUaqzk5dMxJOpo358xTGSwGGrElxP3PvUJJ4f8RPWo2nh00tLm
         TkFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t7inXRQ93AKURs7jA7DWN9mOU8Lot/vf7BV0jWDAVI4=;
        b=dL6+FrPYQDlPtSFVc4xHoMAZhm9MOF5uyh53KIOFydwzgzGqWWhPnsKrinILBtfxjc
         i1ZWAB/icM0DgKdbYzFXeAX9GAhAxFKwET6cKRSZPZ9yVU19wbS2FwKLyCN4QAqsLlMJ
         60QtqF75pLZ/7GCDWvwpy7xvn6fz8qghQ/xYfhuVK6cNBG65/tVrXEEKfr0WDDORP0zS
         MmrrcN5w6ic9GtwG7owzEV2LBpb3lqHu52GD9uOfZsZwhcYyc9NIzcljIdMAVs7m832i
         lUnkCxEuOt3ARHQ5nPyLMrFx5YW7VsLpJGrDzoggLsRwyKLLMKIr/jpL5A2F+ESc+i/p
         en9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m1XiJCmb;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si1542828oor.0.2020.08.18.08.17.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB9C120829;
	Tue, 18 Aug 2020 15:17:32 +0000 (UTC)
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
Subject: [PATCH v3 05/17] h8300, nds32, openrisc: simplify detection of memory extents
Date: Tue, 18 Aug 2020 18:16:22 +0300
Message-Id: <20200818151634.14343-6-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=m1XiJCmb;       spf=pass
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
index b18e775f8be3..5a5940f7ebb1 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-6-rppt%40kernel.org.
