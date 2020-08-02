Return-Path: <clang-built-linux+bncBAABBJGYTP4QKGQE347SRVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id F20DC2358F4
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:39:01 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b16sf4046083pfp.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:39:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386340; cv=pass;
        d=google.com; s=arc-20160816;
        b=odh1B73rL/IiyQhlUneICTdzbWyDXP6+73sTybGfg7LHIoHRCqwypQPaPE/RhYBM4g
         +R3uyO1+iNi+DFv4LaP8SKQJvH0eVU22UWUz6r9Nit6NU/nZDWKplaaIaLq4H9gNxc4q
         XCM+CEzqBHkqayzIbF4dI+pvKJkKs8HGt46STX8PsjBlQ3NwpHJzLvG1mFDhXqmohphG
         sVgqmbD9zsCkWlwxnwMVvUAqYQ+ILfFU6X7JkhBSwedgiQ/esUY4dhK0hRlcTy9gNhkp
         p8W9GMUzpJ6eL3eP4kkSUcfJxqyspZyNlkwc/1chlYiAN+eKSjEPNZOM19Rono7E8pUP
         ojeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gQxF++Hc5InRE7fCB3xxabaE9szmreW3G4K1oE9Aeo4=;
        b=AX5Q/oMvxEQ1JSmxZHeznbS5Q291vd8eFfwWSCXuEGPtVy1jNnN/LhPG+DNbZxnqik
         cSwzSkBEP3IfDbKqcOBaiExGc/DamjOmCAvxcv0KGg+/B+1tue4zBS901ppPbQ4GJMMo
         olv+FGeMBTULFCJCRyxOrrdLs6BxMkqNprUve0JVe81mK2MGE14WqIaDhpfXOoBXLwHF
         8ybECEmvZgoye999fk1BsyfLrFksGf7caq5hrC7HT93x0eQ/0mo1SBPMDyvbQ28HQTV4
         Xuwk1+q3VTqaP58vClwltIgLOx0XHulauqKjek+xFU7Nbzc3cH2NDKuKMCfaz2TcWyqJ
         H5Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U3pdMYel;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gQxF++Hc5InRE7fCB3xxabaE9szmreW3G4K1oE9Aeo4=;
        b=r9oVLw/b4VA2BIDZUe3CBCcnk5NoRKEhcvykV5SzQWGabw3KHVeBA8tkUIVvshbypB
         hpRk/m2THa3o1PAWP1x/2evF1atbqQDrib5YSqVeiCWK4p9G53AxTOtwI1F3mI3SdLio
         AYr2FjkS1azOPD6Ykx3AIsxl+2hALoOF2/R5yiIAN5/yB0KIYKylrnI/wygO5JrUav2Q
         q5mpJ7iqNLev1308Lms1sCs0hB+fN6k/R1Fr9JljXRLunxCSmvpXS08cNn8Bgz/TSl6X
         APl8AQW8WjFFD7x3JEfVLLeVozF+EOsOlpir+b11a6rrLrmZguEXO+nT2796jwFq/uqH
         5KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gQxF++Hc5InRE7fCB3xxabaE9szmreW3G4K1oE9Aeo4=;
        b=r7en1HuMahDneCrSjVCezWseqS70Re9JUBubPkDZVXfZpMSrJCy3ZnuaJbOcGloEf7
         iYw4p0lnKWVMeAj2Nd0KNIV+OoQBYiNvgVh4igXmfG9U9ABUTD/OnyCmIgKoMejU4yUc
         oIePNfkXYxuQERvqeV1vwyJzQ8GwxlqMGI/HsuLZbOAhltwogBd+kzBZ6WfSDVUrHVaP
         wRIPblZaUK2T/YWmz5GdKGkiPq2HnYcBWpBjdCR3QeBafIl5qM2C6IGIlD6HGSNLwiBK
         Xva9cBgc6bIUSEU5G+V6gs5OjDEcpSQTPZEGGDV8mDKq19TyMMDleTx3e0wRt2JKZ07L
         xEaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YHufogwxi4xQNwMjbOEZChYBP0yp/V76R2l1rVf2d/8dGl+eI
	fZusZWzcM7BiCZRlVJWgY54=
X-Google-Smtp-Source: ABdhPJz78WWHnEytJrApxGsSAsdZWnQkVTo7MkAbjbShwVMiaWl4lCB3OUf9G1fZe3c6S9mXBA5xUQ==
X-Received: by 2002:a62:2c48:: with SMTP id s69mr11984180pfs.63.1596386340682;
        Sun, 02 Aug 2020 09:39:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1b4d:: with SMTP id q71ls5925131pjq.2.gmail; Sun, 02
 Aug 2020 09:39:00 -0700 (PDT)
X-Received: by 2002:a17:902:9309:: with SMTP id bc9mr191839plb.51.1596386340328;
        Sun, 02 Aug 2020 09:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386340; cv=none;
        d=google.com; s=arc-20160816;
        b=Ih/ua4prkVsrPcAF9ZQYfiDfPSBKeh1i34CM2Jn8DSaqXXyFABeSAlByvjSqBa6Rvv
         aJ0ToX9CfAQH34HpafIMuvoGwssUmvFjvugRlO5FZu2YrGevmCbGRmqhyK/JZWMZ4E2Y
         1p3Zv8PvBxhVT5WmGIBOFRc5q033k4+WdHaDOKNGZ4Knuii4qiYKAk4UgpugcDQ8g6vF
         a5ywhYoxaCUSuBWnoyLx49lqpcOTYx9RAyI0hK7g1x4jxGG8pTsoIlAmFioSWg64pSys
         5iQGJDmqEG022XeXHpzAta7qFbqeEw/enwxWt8WpgogI3BhufMgBFxn7g2IvV07XiVO/
         mKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VhcSyI2AFa4JDwDxAHooOFZL0IWr0B9rnQC2hWOlUJ0=;
        b=KO37UIg+W8nIcc+8JjGd0QhxLbF7XLD/LGG+U9yu1LjLF7SNLo8gVg4FuV83I/dI3V
         WhL99ZKHqlKusywn/Utf/8CCdShUV9qUHz4PNt4iNlB0pkctIRrYy4fMUPE+K/LjdXxI
         2c1XhXUoXPTXtYkVGO4V/QALURGCeAeVoakIW6NL9wrzL9spCKA8v7OpxAJkMKlLmULL
         lzYpQrbnG6lmlZ/OHxDH6yMFpdfJwCUlIvYMUKUGfKSxfxXCsHkMBABoneTn6HIRa611
         Ud0jo36BGJMA4hX7F50fVad8QXCY9cAZIpyEDfkbTK0drEApRFInAGpwO9T+GFtqdBJh
         UBHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U3pdMYel;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z72si928953pfc.5.2020.08.02.09.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF63120738;
	Sun,  2 Aug 2020 16:38:49 +0000 (UTC)
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
Subject: [PATCH v2 15/17] memblock: remove unused memblock_mem_size()
Date: Sun,  2 Aug 2020 19:35:59 +0300
Message-Id: <20200802163601.8189-16-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U3pdMYel;       spf=pass
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

The only user of memblock_mem_size() was x86 setup code, it is gone now and
memblock_mem_size() funciton can be removed.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 include/linux/memblock.h |  1 -
 mm/memblock.c            | 15 ---------------
 2 files changed, 16 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index d70c2835e913..ec2fd8f32a19 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -450,7 +450,6 @@ static inline bool memblock_bottom_up(void)
 
 phys_addr_t memblock_phys_mem_size(void);
 phys_addr_t memblock_reserved_size(void);
-phys_addr_t memblock_mem_size(unsigned long limit_pfn);
 phys_addr_t memblock_start_of_DRAM(void);
 phys_addr_t memblock_end_of_DRAM(void);
 void memblock_enforce_memory_limit(phys_addr_t memory_limit);
diff --git a/mm/memblock.c b/mm/memblock.c
index c1a4c8798973..48d614352b25 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1656,21 +1656,6 @@ phys_addr_t __init_memblock memblock_reserved_size(void)
 	return memblock.reserved.total_size;
 }
 
-phys_addr_t __init memblock_mem_size(unsigned long limit_pfn)
-{
-	unsigned long pages = 0;
-	unsigned long start_pfn, end_pfn;
-	int i;
-
-	for_each_mem_pfn_range(i, MAX_NUMNODES, &start_pfn, &end_pfn, NULL) {
-		start_pfn = min_t(unsigned long, start_pfn, limit_pfn);
-		end_pfn = min_t(unsigned long, end_pfn, limit_pfn);
-		pages += end_pfn - start_pfn;
-	}
-
-	return PFN_PHYS(pages);
-}
-
 /* lowest address */
 phys_addr_t __init_memblock memblock_start_of_DRAM(void)
 {
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-16-rppt%40kernel.org.
