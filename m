Return-Path: <clang-built-linux+bncBAABBLGXTP4QKGQEGQA6UOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CBE23589E
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:02 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id t136sf9685276oif.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386221; cv=pass;
        d=google.com; s=arc-20160816;
        b=wfW19GbFVSDmnmWXZCCfpuYjsbf6CZXdori5A4uuSfueJqb0Kv7mOAMNYXF4mOoDbD
         xWgjfLm99oW4XmraxnAAMjzI0yFBbk87792Vq2Y1jAtc2Cbt0A+rj9McpfpYnpJsX1RK
         dpxucrW9LGeOpJeQK8WBUi4R0eJ2kjwP/+lew0l8XUpNhwPozOWIBBCvhmrBgEhvvlr/
         oW7ErXTSjx4P7fOcvFYbA0S0xsSYrATOy7jYRAZB2Kz6x+G/5L5Q70cQ2AdouQ9TaIPp
         hTLBPT8OlzrJmorpAk4cK9Ym93ugqGQVg42ZgxqhCnKGr4fKIMLKVzRNoWoJyA/rb9vE
         jL7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ny77vXj+5r7VyAtzFxwZUXKdhWBUVlM64cAaTa8V4bY=;
        b=BnyfgzBb9cuabuoCSuHsTvt6ELacjt0xDkryUf+Y/lz6AOHVOoF+jz7VOK/77NMTSQ
         /BiXRzI6/yahG+LDCLwuneS8cOI84HtgoFs8FEtxt9dqz+xhohbE7XjDFFy+/J7Hm1T3
         f2NKcr/9KuIM1LsMwUEhx/2WqdZaK/7EfpdU9Pd+skcV5TqzBFpHhT47GqBQBufCBh5u
         D4kPed8TP5fVDXxUX9SmaYGm4TpVe/IzsDDHYBnWjLJZLNBvxrek50Jecc8CDRMvw+Es
         7WjqyJPRXfQMxZUP0UotzC8MKMqyIojnGeFi0/oQ+UMUsQjo4KxzlVzKpgoJqVrcHC9O
         RfiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pHqq6Fah;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ny77vXj+5r7VyAtzFxwZUXKdhWBUVlM64cAaTa8V4bY=;
        b=Dn4hYh7bgjmlzStZJFVf1ivMJbKegBcHLTNB27Iobwt6crbQRxGEJvjewVCf3wzIxL
         uFjvJL9SPstaxmmVQhs4yY4CA3Yhwg0hN1YxIeDEq9Ib4gpWqZrzha9WNs5r+1Uoyu87
         /8qUTraY51RkV6za9MlYVNgdH1angmReH1km7dp4HNG3JPcxFl5guAUI5RDfQWSyVEzo
         5zZmaDtL1L7kSDk/D7KzJN84Qg4DjLNHISfBlQVljJwcZSWiotQwccwGg0hsrJJ4lndv
         S4q7QhZaoMDtlxCexkF3+sMD8gHbJGlekjuhUZFSywU1u/OTd+ASKFnXl61xrHoPnCNx
         cMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ny77vXj+5r7VyAtzFxwZUXKdhWBUVlM64cAaTa8V4bY=;
        b=tZfbKOuCejdZZOwJ3RFF/KXguod1L7k46qjl+2vBl7CA+RUvaSwtDINbiH1P6S2q+r
         NOu8a4+Zcj3nauNaffr55gJiQfNdM0Twop4yc1L7clzhdwb3pNLAOqqTyl4qykuzfP4W
         zEyxFphk7ctm5/esAzj2uWv2Dzq2iVkSaEUyCF55fncGeEx1YHY0A0uNUvrtC+wFSc1Z
         jj78WO3tQiMeCGPdMhFB+SwrF5i2hmUFAxpPTPrRW/FwWYiqSbcOgmuFes4jJFX7DO88
         91+skP4xO0WLPCbq8nW558cz9D8MPawaTg9JCv0zROYZUYdOvgQUu9Iz0fAJxVAgiVGj
         USbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qgPAgAWtHwafNbc+mqrFF9PnId3nCTOY7gLhQGiNRSySDwwv+
	6iNrCREBOv/WH3b8jzj7jYs=
X-Google-Smtp-Source: ABdhPJxQMVjE32zc1d3yzZ/JVF5bgxvYAZKA5nfaAHehASwgYtikRGCBjzAKwcfKWvVoi2iGwtr3Jw==
X-Received: by 2002:a9d:1785:: with SMTP id j5mr10389267otj.64.1596386220963;
        Sun, 02 Aug 2020 09:37:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:181:: with SMTP id w1ls85148oic.9.gmail; Sun, 02
 Aug 2020 09:37:00 -0700 (PDT)
X-Received: by 2002:aca:1904:: with SMTP id l4mr6094346oii.67.1596386220645;
        Sun, 02 Aug 2020 09:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386220; cv=none;
        d=google.com; s=arc-20160816;
        b=xw0KakTnJ8tS1+z1SCQGjXRvxktTEU3E8M1ZErFo7hn29YCSKkYuK/j6VBeR1yuRjw
         2fHb8DrNxFKUtHO0ZG0Z5Dp3iM9u2dJ8bPgvWVhesKL66RA6F0oIzBBS88UTmmmTh06g
         ecrywQWkPiDt5yOLV9ZE3Z9d2wvfbqxsoAnsSQri5KzLhYfqYvININVfEA6khrGsGufZ
         C/Xc4WqrFx26xCLClNyKgxKj83CYSj2hnXCNI56QxYsTfpDCBFOPSYMwZ4cN5DjngK1T
         +HY6aVjNXY1qRi+vNXd6onO0C8StXCwZN+gTIUoabItZ0Jq9kQv3uMsnndm9azThyeUL
         ZSMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ee4EHn08KTDfGu8HUwtz3LNuqDkEK14Vt+bO9Es54NA=;
        b=E+ZX7PZ41Q7rh8bL+DkGsnd+x1H3iWHD01JnouHW8LKnKbusjcTulFU939G2p2oZG0
         eyG+UOI8yDvjRXBOmGBCJ3VRW/6S3/KBfzhpnK6MbMS0GomBD0qK5fHW+HJavDgBJk8H
         j90bFpcp2LWI3TWvPHNcRsevik23Tg5SVniQnNdl1TA743+NvVFs0Qr7uk8yZ/K/7UA1
         Vav2YGR0t/leVmtJBTRqGq3xwwEbifTOzfwMum+S2HAYvPrk5nSugqT75Nfai6WEVOQV
         yc6MMGVbxKH7A6yEgLVwKx8WVPqT6CrPFfMzhtHdzJ/gxTak9IYYz5TMHy7sCFUSkqDs
         qwCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pHqq6Fah;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c142si831333oig.2.2020.08.02.09.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 61207207BB;
	Sun,  2 Aug 2020 16:36:49 +0000 (UTC)
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
	x86@kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v2 04/17] arm64: numa: simplify dummy_numa_init()
Date: Sun,  2 Aug 2020 19:35:48 +0300
Message-Id: <20200802163601.8189-5-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pHqq6Fah;       spf=pass
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

dummy_numa_init() loops over memblock.memory and passes nid=0 to
numa_add_memblk() which essentially wraps memblock_set_node(). However,
memblock_set_node() can cope with entire memory span itself, so the loop
over memblock.memory regions is redundant.

Using a single call to memblock_set_node() rather than a loop also fixes an
issue with a buggy ACPI firmware in which the SRAT table covers some but
not all of the memory in the EFI memory map.

Jonathan Cameron says:

  This issue can be easily triggered by having an SRAT table which fails
  to cover all elements of the EFI memory map.

  This firmware error is detected and a warning printed. e.g.
  "NUMA: Warning: invalid memblk node 64 [mem 0x240000000-0x27fffffff]"
  At that point we fall back to dummy_numa_init().

  However, the failed ACPI init has left us with our memblocks all broken
  up as we split them when trying to assign them to NUMA nodes.

  We then iterate over the memblocks and add them to node 0.

  numa_add_memblk() calls memblock_set_node() which merges regions that
  were previously split up during the earlier attempt to add them to different
  nodes during parsing of SRAT.

  This means elements are moved in the memblock array and we can end up
  in a different memblock after the call to numa_add_memblk().
  Result is:

  Unable to handle kernel paging request at virtual address 0000000000003a40
  Mem abort info:
    ESR = 0x96000004
    EC = 0x25: DABT (current EL), IL = 32 bits
    SET = 0, FnV = 0
    EA = 0, S1PTW = 0
  Data abort info:
    ISV = 0, ISS = 0x00000004
    CM = 0, WnR = 0
  [0000000000003a40] user address but active_mm is swapper
  Internal error: Oops: 96000004 [#1] PREEMPT SMP

  ...

  Call trace:
    sparse_init_nid+0x5c/0x2b0
    sparse_init+0x138/0x170
    bootmem_init+0x80/0xe0
    setup_arch+0x2a0/0x5fc
    start_kernel+0x8c/0x648

Replace the loop with a single call to memblock_set_node() to the entire
memory.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/mm/numa.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index aafcee3e3f7e..0cbdbcc885fb 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -423,19 +423,16 @@ static int __init numa_init(int (*init_func)(void))
  */
 static int __init dummy_numa_init(void)
 {
+	phys_addr_t start = memblock_start_of_DRAM();
+	phys_addr_t end = memblock_end_of_DRAM();
 	int ret;
-	struct memblock_region *mblk;
 
 	if (numa_off)
 		pr_info("NUMA disabled\n"); /* Forced off on command line. */
-	pr_info("Faking a node at [mem %#018Lx-%#018Lx]\n",
-		memblock_start_of_DRAM(), memblock_end_of_DRAM() - 1);
-
-	for_each_memblock(memory, mblk) {
-		ret = numa_add_memblk(0, mblk->base, mblk->base + mblk->size);
-		if (!ret)
-			continue;
+	pr_info("Faking a node at [mem %#018Lx-%#018Lx]\n", start, end - 1);
 
+	ret = numa_add_memblk(0, start, end);
+	if (ret) {
 		pr_err("NUMA init failed\n");
 		return ret;
 	}
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-5-rppt%40kernel.org.
