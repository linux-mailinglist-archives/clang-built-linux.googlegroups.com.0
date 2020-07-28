Return-Path: <clang-built-linux+bncBAABB7PH734AKGQE266UGNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 931F0230158
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:34 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x2sf6014933pfo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913213; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnriOxCsakgze65+Qsewn8CPKvpi/IZFUv9uF92T7SGenNHePpwgBlCkP3E0e0Vcgb
         T3h9S0u4WQBaWheVA3+tyw56CrX+QzP+yzK2Ssy+jJ2qdbWopnDRtKyo6uboUL6fJW5S
         ALrDKseI/myRDtcSHAtlb0sEQ5S3Cl5HeMnSaFMAwQqytLwdqqWdt4ByKPxlJzaUcep3
         MWQth/kpjMa5xhTG0+BaKJaJPHQAQWC9wFf4T2UPJg2lyFs6wHSCVDryAj5kF83jaYzF
         7BrfHHU2HwwYmD8rrHE2xhUaDFTGtGQupn5V08gcOemgVD/6erB7SnQUalDzHXMEjyKb
         jXrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rGuvRiQ4dhf0bFv+bltKEqYkzmlUg3y7nd3CdTjzIms=;
        b=WzFFgHn7qNT9+s58oaRYhEuDQtXJUEDcrcl1jyZ91pSM9UrYtXKD0GMFIEciYNbRIB
         rMU7akvsGOs8fGR529/zTYV5a9wtCNaLjvAjnYdCnRmJSROEg/baTmIW767H/QpZoT6v
         +/ORzKn/VNg7XGazPD+AihVuSbRgOlCf6K6MChBd6yBYsIILnrY6qjaFIjrlpi1bxbBc
         u7LQybN/1h1RCyYUw/xItLn4oiJt/qZHZCLW43RRSF0qOMJQImmI0pEYWQs29NNVBbBn
         3A+PEjmYZwFRIadOhgsinxXuyKQ+6NH/1N2LMNdNFzViPyvW3/JdGVQGftlvphYqSu+M
         SyiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BIqPSBvj;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGuvRiQ4dhf0bFv+bltKEqYkzmlUg3y7nd3CdTjzIms=;
        b=LIcfjDgrEB3PWcmkMnlXP0Pn5oQ2XoXwqO58jj1rRlhILrfvB5sWRakZnr75LxRml8
         4UWBCHzYk46pmMRXoj2U/YGXL1jM8DXEMl4shXug/Rbu4yQs1et/gwMkQ/P7+FFFYP0U
         krmM9IGi6BOaUaz9rwZ7/8fIGOV7Q3MMcrjLu+ytoMA4G09KGu8WD5vrFOJFAj1w7ZQt
         aVoEiHGNxyZsj+oPlMxt8SDU+9tN6ota7DSDouY3ysBIMsNfGfrqReROTDm811Cvi2iO
         M1hQa3o7lm4A+ubXgukOkKx0zVpYivctnR+pgupJhwR3ZhyiREIfki8SNpwdyb46YgIq
         zKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGuvRiQ4dhf0bFv+bltKEqYkzmlUg3y7nd3CdTjzIms=;
        b=plGXDp3cf3aUmbsYDsdxNg19CvJJrya1lHaQMMNBOX6SJpME2KOt6HZzOt4qSInFu3
         1lB/mbQo2GMKRjG/ayhg3effh4UD5gUDtzAVH1f7vvdkRoIP32md3OEffHKOwESGcIHK
         DFXAe/sU7Zrgdn0M7dm7M7QNtRP4Vhz4RUadiCgRI4dViqf6JykeiD40v+TKX9tz3ZJ5
         MBidBM9243L2wI5D32WS628VnGUtzTsVcBgtXUInraQi3b+PLRspEQmelELQbeYRWE5s
         Q3Ib6bYP5TfAdATfO8tTgBU3xc6qY3NJtuQ4xMzcQ5yVfdzJgj10C5pUoE6y6pq6eBtT
         SuNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gfuCyF/A1fgdzD6ARxpm7XmcFzWCWFsMifitMrOJRj+kG2nbe
	XLzKO+Uy8wxrHoMyRY56Wbc=
X-Google-Smtp-Source: ABdhPJzbf9qHO2EX40vhhXRT5wa4/4eYv1KguESVhwagwrCDDMEJvAIAOCXviG80MqvP2ZMriWVFZA==
X-Received: by 2002:a63:405:: with SMTP id 5mr22245848pge.449.1595913213277;
        Mon, 27 Jul 2020 22:13:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls5899966pfc.9.gmail; Mon, 27 Jul
 2020 22:13:33 -0700 (PDT)
X-Received: by 2002:a63:2223:: with SMTP id i35mr23755053pgi.64.1595913212930;
        Mon, 27 Jul 2020 22:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913212; cv=none;
        d=google.com; s=arc-20160816;
        b=NMVF6Lj9ifgNh+UfhGuMvULuqxjkHAUjNvN+rw0CeE0Z89LERd76ee4VAFxMRPFwiR
         UZtPH+m3/cZQLE7ZLTaAS7CP5REuv6vdFUWJZcSqnqBnalPSfhIlcC80scs9xOH+5PAi
         otChkzqhggYzzc7fAFqlv2ynEbv1jYUyK3h2QoSzYP6eIq5L3+QLgZ/5/mUjZmVc33iZ
         LQLW0+ksmHfGidWubPsgoEpXCHRkPayDtIOwwgFfdusNE4LvZ/GBYlOlxnFVnaI8o8Lz
         NavDJWqiw+L9FOTfRBiZi4JtD55ejbWWaNlHVpCURzweXoIEv5Teubi6eUTOb9aAFZnt
         PAEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kGR2uXBco99IS12aSwf8XTjSL+4ZB+f9kOObb7IRxkg=;
        b=iM/ciiwKty4/YY8xrxNy+8U0hTP3E/OP0StaBhQ/Q50crvS062CFPXK4nPBx/Y9xyL
         KmOc/oJMrOgmj5afIj9jliLbgNW7TLx0M0olHsAuPljtsC7ufniT3pUgeaNfHSLsL37A
         v6YksaFoNo22QC6FF7YEsUHtyHkFeoKMScT8/U+GwmFq5wsWiTKeCJwwqGVsQVsxL3I2
         OV3lHVLbW8LRtFrZEGe2YSZ8xWKpMiUFjK56Wx8QmeYar4QpizFUxs7w9GnEDd51huHU
         0tll5voJjB7Jg03TlZy2Hmpba39x6l+kcLALF1xcFBOGpFt9+vW907i1a51yDZpKgBAV
         vrOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BIqPSBvj;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 10si949905pfp.0.2020.07.27.22.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 626FD21D95;
	Tue, 28 Jul 2020 05:13:23 +0000 (UTC)
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
Subject: [PATCH 08/15] mircoblaze: drop unneeded NUMA and sparsemem initializations
Date: Tue, 28 Jul 2020 08:11:46 +0300
Message-Id: <20200728051153.1590-9-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BIqPSBvj;       spf=pass
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

microblaze does not support neither NUMA not SPARSMEM, so there is no point
to call memblock_set_node() and sparse_memory_present_with_active_regions()
functions during microblaze memory initialization.

Remove these calls and the surrounding code.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/microblaze/mm/init.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index 521b59ba716c..49e0c241f9b1 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -105,9 +105,8 @@ static void __init paging_init(void)
 
 void __init setup_memory(void)
 {
-	struct memblock_region *reg;
-
 #ifndef CONFIG_MMU
+	struct memblock_region *reg;
 	u32 kernel_align_start, kernel_align_size;
 
 	/* Find main memory where is the kernel */
@@ -161,20 +160,6 @@ void __init setup_memory(void)
 	pr_info("%s: max_low_pfn: %#lx\n", __func__, max_low_pfn);
 	pr_info("%s: max_pfn: %#lx\n", __func__, max_pfn);
 
-	/* Add active regions with valid PFNs */
-	for_each_memblock(memory, reg) {
-		unsigned long start_pfn, end_pfn;
-
-		start_pfn = memblock_region_memory_base_pfn(reg);
-		end_pfn = memblock_region_memory_end_pfn(reg);
-		memblock_set_node(start_pfn << PAGE_SHIFT,
-				  (end_pfn - start_pfn) << PAGE_SHIFT,
-				  &memblock.memory, 0);
-	}
-
-	/* XXX need to clip this if using highmem? */
-	sparse_memory_present_with_active_regions(0);
-
 	paging_init();
 }
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-9-rppt%40kernel.org.
