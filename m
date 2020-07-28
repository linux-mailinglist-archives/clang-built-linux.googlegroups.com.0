Return-Path: <clang-built-linux+bncBAABBEPI734AKGQEF7MPG4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAEF230167
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:54 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id y124sf9913419oig.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913233; cv=pass;
        d=google.com; s=arc-20160816;
        b=KUJY6WaphRThxU0bCwjUqJVarO2XrNqIumMaRgA3noLI8lAOkU4HY1sZ+yhFQsg+85
         UErVwUoCiMfysbwfODS0xpFY96x38RiA2497OKO1MIL7mTz3Vq+fiNjaSPM4pHVGwTmb
         hFCWps2okpsRmMG4Z7romS82TAbSR/NgBUzb1Sd2o5Ep0J85I9vIJsSgczi+nRoZhTXs
         EAXFPCQsrd/lHrWbquNw3LC2U5ErgFt0qw5PyxJUo+OoYpliF++ZCOX50O/l/uVxp089
         I7Hif/RRFl0MNWhz3WQmNH93zvkG7KJcYZCKnzzThmO6G+S/DFEL2ojGRKKiVg7s/TKu
         vJRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iRFOphQLZlYfF49lkR8LL5jPpw6faTfRlZHX/5Y+UDE=;
        b=BmNdhXcob9uGv5t4BFiz3ffk0F8+SfviGAyi0OH2iSu60GEdB2w927o/rl3q0PpiWZ
         MV0YnALaObUO9yVi5GHu/YQwmJvnP9Kpq9/L2HP7msuuVMObG/R7PwSJfn3vRL75bbHy
         lYaXn8fP8yLnP2/8udv5EDLvMGx3iviINWei+jauO+wr0Q9YvPtSaDsGox/f4kXcp84H
         s8DFZ2FXe7mozwec8GzAYJVW7XjFsi/S7E3vrzQeseeaq69LW7tN6eHefH0zd/a4644D
         C1vMFfRcC91M5qsnAsxn7hxkeusAaTmQHwOTmmMdt1dzuU/id2kySqyFJrCiUu9Kg086
         wOAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yyfhBe3Z;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRFOphQLZlYfF49lkR8LL5jPpw6faTfRlZHX/5Y+UDE=;
        b=Kk3QBbq3ZyKrubjPnlsrJ2ockl6O2CQ3J6DzCptV+hXMzZfXq4vLPrDyr5t0m+SIks
         CGGZbyLUEhJkMIfhzO/yf4dkzo7R9BDv91+RUg8CaJqlrRDp9ASsxSz6D7eTzx9dy1ye
         b8qycoCE6Mr1gcZXp6MYskY0Vwc9wvEpQxcrctlQyD7FH+0SqK/AkZ5PRx4wsOSlxbX7
         b+O6UB9IB0taTGqAZnUyHWAZmJ6XwYUDDDSddiF/akBvA9oR8qfKCKDNaRMrDocvVB/r
         MsYwds6gD1Xz+KztvtzIHsmu5Lo9rD+jMtGbc7k7C6Cd3JVujKOZMt1V7tkCON1aFHFR
         CX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRFOphQLZlYfF49lkR8LL5jPpw6faTfRlZHX/5Y+UDE=;
        b=nWcS98M/p6QpQRQx0Z22SrcZ1U3LEtuRNH2+vShN3UN0EVNAJMsfTISJ0x2hipknP9
         nVKfP9yutqro0pl9wLXazP7Z8j3KBZPWUOKg1M573hF7Agrc8kqRuWnFrBkWe0FzQU++
         BvcszvS5g2grLOEPNdRgvHiqg6B48I1hv3oT7k9zw5idsJEtXkcHR6gSOLevc3bnF/W3
         TXTQ9tiXsLRgfrP1iaW43c6agVBRTC6bFm5/sE2uZz+3kGEVaBNFNOqwHSzmcPRHcUtw
         BEFjnix3ZrTOe8W8S6DGzqzxHpScj2NrAD8jAFMI1nyVsY64eDV8gIFnSFqgRDyc/5jN
         TEhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I+NCIo2MJ+S/cFyaI9pAEZ6mm1I7Qo8Mj4jtBMdpwOCX/RpH6
	95sI+zbAVu1Q7Iar+FWsTOU=
X-Google-Smtp-Source: ABdhPJxZLElRmhPArMqsz5t4coQnC5+sdeDZoTNAh/l5wUlWKy9d/lYw8qsIECMsUw4d29J4JZO8Vw==
X-Received: by 2002:a05:6830:1e22:: with SMTP id t2mr22780370otr.332.1595913233656;
        Mon, 27 Jul 2020 22:13:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls3646900oib.7.gmail; Mon, 27 Jul
 2020 22:13:53 -0700 (PDT)
X-Received: by 2002:aca:c697:: with SMTP id w145mr128539oif.52.1595913233155;
        Mon, 27 Jul 2020 22:13:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913233; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkPwXCD4m7BEg07GhUU7IWrwPO7X3hSw/nZMPgOBrG5llZTTCnYz9+cTxhaTMUWWc8
         wWz9d4GcThM2B6iOOcjB8EeSb/HxjsuSIHARuaxFJg5r0sPfaN0ANywMOswi5+IOlwO8
         J7EgutzzLn5Hox7ff+hLeO8Q4REHIW0WcTYW+HXYyWEhs432dH1go9jBzjRHVkfOs4Ht
         FYl9kIU76GlrHbqMJEMd7KdvmkMigmSZFHxK8HisJsgLBhi/Pa/b1R7+togHMNZ3E4mH
         MPR+0mKtNiEHCsS5hl0FCnxdIBMnIyP1t6fxRxVGnbOi049hMeA1GNqW292pPDBOKYG8
         f8SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ts9QR/K1DcNu9z/0InEgkgtzQmv494j4EF619WqEV1A=;
        b=lp7+6bEnTydh6GhZk141bigrxSs+E7m2bvp3obMp/p/d2qJXz3QPl5qIkfueeJh95x
         LsAhCBq9rRLyN7siF7YEEMgGYnnCowqfj0Hj22TBDfelQiq3CaHH249Ju9ZE/zffRY84
         1uBqiC/BHsReYRYuG/QbmFkmVYRFJQGji39RaIfe4WaPMQHZAZocYwirHdcAsENvcmaV
         GVEpUctkNlOtrEPHcHwmrQ2ItjXW82vaGE/IyCe0vsDpIVq4jkWdIRpWAdN427zizstq
         pAyK6xPsmMbwcvO/wtrXYaOalVssaBKwsZX25cdP/rWtTzS2HV5uvPgtNd8/zqk1Ek+P
         faOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yyfhBe3Z;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w28si821097oti.1.2020.07.27.22.13.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CFBB22B47;
	Tue, 28 Jul 2020 05:13:42 +0000 (UTC)
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
Subject: [PATCH 10/15] memblock: make memblock_debug and related functionality private
Date: Tue, 28 Jul 2020 08:11:48 +0300
Message-Id: <20200728051153.1590-11-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yyfhBe3Z;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-11-rppt%40kernel.org.
