Return-Path: <clang-built-linux+bncBAABB3HB574QKGQE26OANPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E820B2488EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:01 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id i66sf14588358ile.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763821; cv=pass;
        d=google.com; s=arc-20160816;
        b=xparlSYtC2TrVRSCA1FIBR/c1jh8K4TCN6uMAb44duykIuFNqib14+OlOhAQSMISBD
         t8MGOu/kcm90WewXnfV8qPce+Ey4T22FzM3B/9eNYiLhEWPz/vfREB9gFpdPK0vrf2qP
         6HkMPmAgxbTXHVJAeW4GiM1n1tyPZ1ipNb3bJ3byeKXqTF6x05rINTg7jBhCdomPl52f
         iTj3VrMsqgDxzxDPhKIfAb2Lnsy5x6s/8LH/dBgfNKDxORGjMt4Ie12XFU0DfYv/Ni4w
         fXmxLOtEqutxKd0yv3+5QEtsj8wWQr5rQXj0lA1j2eqMDnsE0OeY31j1pHWVyRL58MHD
         uOYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8vE/SrAfCsd2MFQ5pZA0sq86+vr2Xn4s5EcYu/QGNQw=;
        b=Vx4aJpNMTRsRxs6KfxM88exnTrtAbjc4a9iix6hgDZyFNaQMhd9eypA7k3XzaOyAWk
         t4faymZgDh9ENiAozxnQwUXaYRywxxtSv+SqvqqZoVpFYRBJsgj0yfaAtgd7zrAK49DE
         ivRrcQBI1zthMOP3MzDlepkmBIDIbW4HUkYhFlL1NPChZ9gFVCRQ0TqYmFK78UujANuL
         QClbOA5rkmRGKSPq6k60QLjKiCIflqz8Lr08anfTMljNU+kmxrH6+mXIeJfOuZ8Jvbyk
         l+cfkOB4r9T3gbKI952eOmxhfRCujRUZrltaQPE+E+MR8XyUB8p1U+GnO8p7J45Fk6ht
         5Ucw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lVcTgt1q;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vE/SrAfCsd2MFQ5pZA0sq86+vr2Xn4s5EcYu/QGNQw=;
        b=JrPSuyKir+njPsZW4SJKZbse+9rpLEye8ke++KEueXp78MtILet1065Aqw0Yk55Om/
         0v9bxWXQn9ccrVabgzmK8uDzmX3suxjJe0IYogF+iTSVfEiAAS9LQpppemq31mpXYALe
         SJIgWngxH8R6grDDOfBVTF0f4Tyqszm22kIQ7pgOd4R6dROuXcxXD5BdYe+ZcdX8ggZI
         s4GsbSv5GbZ2cVpN83FGHOYodwZ4L1lAob2lPMQISfdXPxhNOR4cN5Il7I/BSWf02D9k
         0Ks8Vy8JXyDEJBnccLdQDYQvsZfAno/LGC/eOmr7tk+O5y7GRIg8vdztS6IqKOXFO3cN
         yHaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vE/SrAfCsd2MFQ5pZA0sq86+vr2Xn4s5EcYu/QGNQw=;
        b=Dn1ag2Nc/i4rDGHpDlO5uMnVxqC4hoBDhtbmSOekx5oFnUqyWwqSOfXIP5ZKfH6xmm
         pd+5p5mPbzp0fOykkRl3OHd9ZWBoQv3acCwO/QmRf2Yocn2R/DaRjEFIhA9f6cRZxBYw
         3aCzvRbgefWUI3FW553/MmI9s5AdWBByrrIH5dG7Segq7GJY9mHNd2bMYu+0HUSgZYIk
         K19xZeKD9dXi/2F+iZw3DOWRAO6pS3NVjZ95xMLA5uRED2H0W7uxoiA1I69WXEFTYLls
         P0Y1Yqh3wMATXpaWyVzuF127Ohfx8iVN+O6e42SdoNX3t0a6fOqY2G6e4oPOroVBQXHl
         QNAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327wh5aZX2l85Bzb0WzaHMPdh4/mJgEPOiBIUrWBYL8j2ZQVfaV
	9D31MzaIdJO6Txw2qzs+50U=
X-Google-Smtp-Source: ABdhPJy7ljMyoNYINJpqw2PsGh7EpQkpVNGZH0NzYjl2KVvxCGVN9hJVIJ24HYzvmeuF9Cu5FViULQ==
X-Received: by 2002:a92:364f:: with SMTP id d15mr18227312ilf.89.1597763820833;
        Tue, 18 Aug 2020 08:17:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9a0c:: with SMTP id b12ls2683730jal.10.gmail; Tue, 18
 Aug 2020 08:17:00 -0700 (PDT)
X-Received: by 2002:a02:cc53:: with SMTP id i19mr19866937jaq.33.1597763820478;
        Tue, 18 Aug 2020 08:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763820; cv=none;
        d=google.com; s=arc-20160816;
        b=uRbMm16wmDmv1hu859cDFKqMaC0mltwxIjmRYrN+X68ag+FgTn9pP8i1Qg2RZ7Nth7
         to20LFu5tkLZBUQzvf8wnVxfWAieRJKmcTJwZ7rvTQRRgbEoWucBxS/V7H6FMnLEiaRT
         XNFFtV5rZzmVaXIwRpH0xziI3KgwJ9kWYacqimc0yIql86MwPO/IUeJCX89koC7viLeT
         ledAqibL6F+aioKYspWhrVrozfWOhEKSgn7N8+bqjZwXDMD4RuVg9Uhfz6OeWp/aAfa5
         wWYGTCx54jaavSBqAFVWaOvU4ZNKTFV5ZfQgWFseQKfvuJezQPoY9Cn8GiWIAkG4AUsp
         iQWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Cvs5jW45qvbPGw4w4a7sn58HyNnciyHCsroVRB9nXSs=;
        b=0Cw49ahc5QfsGxWNZH3nFrdgBSC/zCVth6/yrkWCeWnkuczToT8RB5K01PBNT5Wkw6
         h4Zmejn6LCPTSWh+MK4uIiE8o70ixvhorwD/698C3CQvDEJjgOOhODXVD/OimU5qC244
         YTaSkSpIAncnsVeBoP93/YYufrMCUIsLXDy/w4u3zvpVtr43h6LDgluoH9RaUTZLOQL/
         kvaLKjQ9agzTBhu7AZKQvqAhaMj6ZcuDXWxgHvTy65d/jjfUiY5E4NrK+rE2XLz6Td1d
         wmalm0QF6NQqb+zz6QAigCQjLR4LljkiArdymnItja4O4sA/UOIi+FmidbKJWy3jmggS
         tu8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lVcTgt1q;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t7si1095165ilh.2.2020.08.18.08.17.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 263212076E;
	Tue, 18 Aug 2020 15:16:48 +0000 (UTC)
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
Subject: [PATCH v3 01/17] KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
Date: Tue, 18 Aug 2020 18:16:18 +0300
Message-Id: <20200818151634.14343-2-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lVcTgt1q;       spf=pass
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

The memory size calculation in kvm_cma_reserve() traverses memblock.memory
rather than simply call memblock_phys_mem_size(). The comment in that
function suggests that at some point there should have been call to
memblock_analyze() before memblock_phys_mem_size() could be used.
As of now, there is no memblock_analyze() at all and
memblock_phys_mem_size() can be used as soon as cold-plug memory is
registerd with memblock.

Replace loop over memblock.memory with a call to memblock_phys_mem_size().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/powerpc/kvm/book3s_hv_builtin.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_hv_builtin.c b/arch/powerpc/kvm/book3s_hv_builtin.c
index 073617ce83e0..8f58dd20b362 100644
--- a/arch/powerpc/kvm/book3s_hv_builtin.c
+++ b/arch/powerpc/kvm/book3s_hv_builtin.c
@@ -95,23 +95,15 @@ EXPORT_SYMBOL_GPL(kvm_free_hpt_cma);
 void __init kvm_cma_reserve(void)
 {
 	unsigned long align_size;
-	struct memblock_region *reg;
-	phys_addr_t selected_size = 0;
+	phys_addr_t selected_size;
 
 	/*
 	 * We need CMA reservation only when we are in HV mode
 	 */
 	if (!cpu_has_feature(CPU_FTR_HVMODE))
 		return;
-	/*
-	 * We cannot use memblock_phys_mem_size() here, because
-	 * memblock_analyze() has not been called yet.
-	 */
-	for_each_memblock(memory, reg)
-		selected_size += memblock_region_memory_end_pfn(reg) -
-				 memblock_region_memory_base_pfn(reg);
 
-	selected_size = (selected_size * kvm_cma_resv_ratio / 100) << PAGE_SHIFT;
+	selected_size = PAGE_ALIGN(memblock_phys_mem_size() * kvm_cma_resv_ratio / 100);
 	if (selected_size) {
 		pr_info("%s: reserving %ld MiB for global area\n", __func__,
 			 (unsigned long)selected_size / SZ_1M);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-2-rppt%40kernel.org.
