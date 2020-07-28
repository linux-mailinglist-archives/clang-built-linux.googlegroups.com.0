Return-Path: <clang-built-linux+bncBAABBYHH734AKGQEHHLRVPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C174230143
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:05 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id x26sf10175197oog.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913184; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+mFged/Vx9zAPFKYkagkFtQqbK/sY+RrcHmuiScTzqxU73LqECraie0QaW77UDBXZ
         WwCDNLqzrbqRw5d2jvsGjsNZ6eOJIOxkANR5G0FX8qyeMHvxx87PXOpIcNVqyuzjq+3z
         nDNpcAUj8uH/teYQZvwD0uxjpV2rV8K+DHWxUfKKwalVrMR4tr9OJq+DdOsphqX5Ql4n
         VDd8HcbCiYmq/0apFPp1am4LgD1xAlYhq0Ak8js/q7/8E8WCKen54waBqmI6NCHNRQHQ
         gxv8ZJJw2ofwf/a6xbbbYNYemhCCB1A6P7cvqHnjB2G6T+MHaCScE4dZozbJc3VrrDmp
         wCJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2NPCqsAXz5kTICU+kHYJCTcgdYwWSCWMgIesudDH7a4=;
        b=lNo970FvLL+i+qbQB7iwDp0eIyr1rD+mgbm5846oW29mx0pmKJNLRX0x8XYSYnNGCY
         AUfDcjr9P9Nwb5wsj6KmToErZQZNWRfCpvljxIDavlDNCjWbvA9cmJP61DDExzhXA1QP
         T08a3W1OdByhCuqonGRlitMjT5wIBx4Wgxixv1M5FM//dssTnmg6V/XRkYzasnrH6uBA
         nt7RulAywuLAH86WBeH+EqePUEQ5lNHcL9KTPbh8jFWxac9Ovh7m7oBPp5Usw3Em77Y1
         7sAtg6YaH8kLSoylFQPQmRvlUUUm+yehEFJhwObSZuc9wuGZwOevs3RR8CYC9cQo3Xfh
         Ql+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Say3vh4Q;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NPCqsAXz5kTICU+kHYJCTcgdYwWSCWMgIesudDH7a4=;
        b=HcxFI4vH4i9wpk5ImAvbPyflKhzDFSm77uVhNRbNu/AmA2k6VcVHyWQ3+ubW32J+ES
         YpO0IGOYv3cqwXKBZQ7a8l9NNKJReW09HI589TSWfWClx4gtnMU8BD+REW3dh1vI0k9V
         l3E7Ip8JLgGo+oqH9ABt9WS6T0Yjjn6snYQwfS28+ni3ExzecYvsSsGPf+sraszUl4Aw
         +G3SAv2kqJPrM9+MVB9vTLMjhEVbDg6VTvKyw8j3PsaEOa5CqzjiSHIPsapUlT4a8T2C
         dvfbHQAv4h7DcPIrmr25ZrENZyCzwVDf35TzkXRAq73da6r+rJL4E7OSy0Rj6xR8SKsC
         VPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NPCqsAXz5kTICU+kHYJCTcgdYwWSCWMgIesudDH7a4=;
        b=ARESjgLhFLb5DG0kU5K20GrkOmQrf870biprOxAmnn19/2Y/0uo5qtTKL1Pp/OXkJc
         NLRYaNEmRyskAHbuEoZsIUxlG67i9cHyTypMz16IU9f4XHVg1CEtfuViC+l2IEmJ23ou
         vxE7IbFBfBT4ue0Nmhu3zm6p8lhBwfcIYlWZ+UOusdbc5PeDKnMpgljS3E+qkNxs+QLG
         16Zaeen4vq0onsB2rzpcZhhrwcLSq8fexQoW/6ClTvyib4DuqyNwD2+JFSVbt3NofiQc
         kfAWrPEvTErR8KWFpvzJEn9SCcBGKOFDlRgBzW/d1PG4hEqY9Ja36Ysv8+C7ol8sWsz4
         v5Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wTNPRknAuvLBYpX10j7DBJM2B2y/OTNYWSYK4SfQ/245K1Llk
	IKItJ5EFN+QfhxKuHQmF4fQ=
X-Google-Smtp-Source: ABdhPJzV+YkxutoYhXNI3I1dpPJP/gbOysctjud/xSwY66535BTR/mVFn1qXBzgKxKtHpj8wh7FVoA==
X-Received: by 2002:aca:180b:: with SMTP id h11mr2156258oih.125.1595913184225;
        Mon, 27 Jul 2020 22:13:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:761b:: with SMTP id t27ls152178ooc.3.gmail; Mon, 27 Jul
 2020 22:13:04 -0700 (PDT)
X-Received: by 2002:a4a:bb8a:: with SMTP id h10mr22985319oop.28.1595913183926;
        Mon, 27 Jul 2020 22:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913183; cv=none;
        d=google.com; s=arc-20160816;
        b=dWZ7uZxHNClhvm/Fk1ahTioMxn1ItTIbcV9X8NqGD4ZobqQDUVa6qdXBwGqOnSow6j
         HMceS22ZgSbOjXQXTQL2orwxmIpX/8QUvRR1O39bfwwiHJf+5bSZQaiBr0WSYVHw0pvV
         nXLEZlJJZDK2uNMw4R3RwdPAzD4FiIYG+Fp6syIoUqeLCi25x3/LBJMxsfdC5vVKruzC
         QTNaQpvS4YaI+Pl3HsvroIkxX8ojavLVWqT0VgY+HhjLaDk4LutpfV+1hFLioay3CgnY
         AaG1dPCYULtmiDV5XBmtmx7mnGdCGsrEWRacVJ8r627A+OOa8AlNfAWK8Zgs3l58Q0Z9
         l3Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KBvaHZ++NKnFy73AitMDXJ8lu9zcZFU+m9FIS2X65Xw=;
        b=aQoHPurrBIxpS7gwhYWHR9suQghKroRXrh0VCvWzrniiDBNKZdJqkfmxK6kRVlx7bv
         sC1Kuif29n5liAoHHQQE9B9Cae8NmajGzwADmCfnoQsu3evILkq6GN9yMFQ7NbEiy6rM
         nwfLK8U0b3sliQfbRZOQGcwXiLFvopSiBMK/QC/F54rrOCyCrzMlDcQzZw5NzdosxJsm
         JdQfMT+WMFLKaDDFqOGPwK1Ackqna3LiN//pWc3u+7tPHZQoMg92YleqKggC+ziY1imq
         bo7pK1pGOh5LGMXVCmWwQAzeWtg2BlbL2Xwt4Kc3d/qt//h00Sa8MT728K60v1ul+Ne3
         ns0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Say3vh4Q;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si1311608otk.5.2020.07.27.22.13.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF6522250E;
	Tue, 28 Jul 2020 05:12:53 +0000 (UTC)
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
Subject: [PATCH 05/15] h8300, nds32, openrisc: simplify detection of memory extents
Date: Tue, 28 Jul 2020 08:11:43 +0300
Message-Id: <20200728051153.1590-6-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Say3vh4Q;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-6-rppt%40kernel.org.
