Return-Path: <clang-built-linux+bncBAABBDPC574QKGQES4FKO5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 83134248901
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:34 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id j68sf7683538oib.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763853; cv=pass;
        d=google.com; s=arc-20160816;
        b=edRcB3ZANaPWG/UL5QBmiiqMppvm0RbfcqwEkkzDBLah5tv5o1etkMURlDI0fcMO2u
         hIoIb2oN2zri9YJ0KVldOI6h97cCZzlI4F5N9maVmNRicXCXAYgUSuYfvdBIZFfKoXqs
         Hffh1Q/Ip5uGBC9O3ldHlkmTrUY3IVE7AlBcZjwkLonQCPM9n9gh2zvdI/+XsXgtDWJK
         VDySlSlXfGDeruWYEbVG9A8JHhvOpA2cUJFK1JohWr0DEeK4mswjzs67FGENvyYQjAzD
         wfS97V3wmXXgl9+NhoSEJQmsZKs4tk1yAe4g+tbLywV/egXtyglK8ApED0IRMRL1LKHB
         zOGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iV2PLf/1DVesTOg1xs+ogT67tNdjFfRPA4RnqIHZewg=;
        b=PyyXFZ4BE4jft1sQayuv8OPM9wGIt/0Pmno8KC43Z/T+QJOXAL5KR8+oCwFq+49IxB
         pfK/2A0CpvGBHN2/D9hrmXSQuOb5KnOCWDat2GsYeC6b4xUdYHy24TYdaQcPFHyT0Tvz
         oRrru+kfU2X0wMzTaFz14Msha9M6TeS7k2eDZVua822z1fEhxZ2L3jwm5ufwORVfG9IF
         l8Emm13i5V2bvByonSZD1e62wFSxSBLhoka6CzO8Ryo6W8bJTLL555PN/F3kPGex+eIo
         HE4CACu9TAok84qGxyswrxVwHwI0GJyFeo4RaGlRMvDyNXRNoGNUnKVmith4NXklhtA3
         eKBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sb4tO818;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iV2PLf/1DVesTOg1xs+ogT67tNdjFfRPA4RnqIHZewg=;
        b=MByCGWpI6fUuoGQ/ImBwv/V1ICH6BsQ2Ty1ZJFKTmI1a0888qGwBs/m7be3RxqDG6M
         2Wb6meAzJyN7sX48fAUngl38e5i0I/I9I8Mw9nlwmo3wDUDdC5jwRN0/gGGchkSGPUOp
         QGzS0TEdVpOYBzc9KKXg6aGbOLvfpCdjGnc/zgNDPdtw8EKj8dhNkInzNrs+huWkYa4s
         s0io/4bml4VPzj5S3T8vKGCi4vY6UEpiEEFsEZMvabP+B2GHW6GqjP9L1aLxVeW7VKCf
         ArCtXprWQIYb2tMExX99Ijur23voyzk2c2avdXj+qt2N3+Ly78DsI/kq20iHeC0xMjBu
         5dTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iV2PLf/1DVesTOg1xs+ogT67tNdjFfRPA4RnqIHZewg=;
        b=L7wSaI17uC+i2rbRPbujWjmZL+XEtmms5cTePQg73Gl/n5+wlTfWFRO7uOhhFO84Y1
         uuY8e8AC2l7fWKVAiCkJ65Dg7osEfZsfN/lfzByjtyZRme3GM0DBD28vwY5ZDWy1x0f6
         ArA2iVELZvmRHUiNaHyoywg9F2DCciU8RUAPwTzxses7oM6yih48GJSLoNgyrJh03Zyr
         m/VP+2HasQyGhonvYqhAkLUX4D5J+9S8jITxXGdUQrTU4KT74yHCXEe3IjcuHba3hFuS
         YT6m+dJbNfcUSGtPpo5n7FEn4PT6eClPmZFE6vt1pgKHyjClPPGI+SsHCqnUh+u6YLXN
         TeLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531k8KcuGkN5KitRcugopF4iR41AP1juXqzMtcX4eENca3oBi9dw
	NPOLOQB5HMEQAZ3EOj9r+4M=
X-Google-Smtp-Source: ABdhPJzHpnJxSl5Xc1rmzrpMO2/eEbK4fo3Pz/djo/Yt/tQfZ6cDkFHExWNwhknmYyX41JpaYG48xg==
X-Received: by 2002:a05:6808:258:: with SMTP id m24mr372634oie.112.1597763853429;
        Tue, 18 Aug 2020 08:17:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cc:: with SMTP id z12ls1207357otq.4.gmail; Tue,
 18 Aug 2020 08:17:33 -0700 (PDT)
X-Received: by 2002:a9d:4783:: with SMTP id b3mr15880883otf.316.1597763853097;
        Tue, 18 Aug 2020 08:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763853; cv=none;
        d=google.com; s=arc-20160816;
        b=SmNJ/yeRDqpCT1OSPUlD11ZQP2sLhzaaRVXl27g41rajxGhncXYsXrtuBd9YHLG/0v
         LuvLh8XpQGIFLfuBkmU+rIa1PA02LKe78XgWtfQgygK3lUSHuBPXURbaQCvt/uPXtykn
         VeetN7fRjmaBxJuV/f64/CBF5v2zz7/H4NYO0vG83oI+jYYljAjdqfT/qu24o87C2T2e
         idOFZp1HM4uujzpKedaaA+HMwwD/LzmDusoTxci5y+y+/AWojCHIAnL+hy9gM7QtW7mf
         qDEPGLEsuw3cIWVFIbRX9y5pga4k6it2I8xJH7Wfs3PPmv3Mpbed5IFLDFkx3j6qUJbV
         tAqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SuGHE3nXwn7AGvrwe2SrD0HswdYOCpcRxLYBNJ3l058=;
        b=CndYmKggTYFemgQDC00BCjVJ8J+okRsRlQlKyhsHYigQjPHYxsiPRSSTXozH3y7B/d
         pzw8STuAn095sTkFJ819CA+u2B7NlDBzKmZKK77Y4I8ORNQYru8Y9of1RNU2aAvqsejc
         QvYWVpVxQOIHtSKuyWDHSU7QDfQA/MG1p7+vhTSSTvONlRC/9UjN8v08rlG5y20JrytD
         QeTR5o5VBldWbXdOCWxghXYU8mjIvpbNxsUcCt8uzUkurHLHnzUiMBK10XcfYqrg3Fkv
         euv+C4peix3Sizks/99O/Jpf7MX+SkeU7P09KZ5Bmh0EIEkJh54HyjmGEveZ2Qg6pMUc
         3/wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sb4tO818;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m19si1383009otn.1.2020.08.18.08.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E54462054F;
	Tue, 18 Aug 2020 15:17:21 +0000 (UTC)
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
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v3 04/17] arm64: numa: simplify dummy_numa_init()
Date: Tue, 18 Aug 2020 18:16:21 +0300
Message-Id: <20200818151634.14343-5-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Sb4tO818;       spf=pass
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
index 73f8b49d485c..8a97cd3d2dfe 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-5-rppt%40kernel.org.
