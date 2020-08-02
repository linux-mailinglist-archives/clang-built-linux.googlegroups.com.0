Return-Path: <clang-built-linux+bncBAABBTOXTP4QKGQE7Q5SAZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E102358B5
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:34 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id d30sf4536497qve.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386254; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHbUayvDiEADOoUvGUOmdKd8xYRnykN1WkwltMOuogbMHRQwD7OU/5Kto2UxWUKAV0
         ireNkiJMc0iyorJnJQIfwkfdand4ZewPx50LT+6Tlm+xEekxiaGFLmqtJ6zveEW21rEM
         5Vd2aoCgnDfwZ1swHMDBArpK/iBqsfsKUfjCOkW0WP6gHlqWTf+9+9eD1yMDky626OTg
         +fSU1IrsBqMgI7vALgG4Ob2OTVpRkCqSelvWwMTHN8wGbpb9J7sHtHoIVJaUeT1tDxKV
         MGbZjukfN3P++cebV8UilvkuqM9P6oIYE0y9eBFsKdHT66RqyPsC8Q2M1eZ1ksmuzc/x
         ik+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jn8qJYoWB3klMsy2SnDk+lZeNQ2KKB4H2H1AA/shVAE=;
        b=QotRZ0xz87wYgS+WPU9NsViHlA88CzPmMvsg6ddVL3qefgwtpGIxrQptKW9J+yFjUX
         IL/LUQJFSlXyUjpSCCp9Y1vkhbpNtQMHqJ51ckrhtxThBYbWJTYHL4tNSW9UmQdGlR/r
         OBCRw37ZjbDp2sl/DmYhGc2RQ7sRV6waP15XlUi4U/X3BGTExJvUOyTbQyHNspA8Xs6r
         PSp7z/LU9zuWTMf27HyzWIDt5jrrOD/Yy5klHJB5v+GlND+WhLCozVhaBEB94LPxg99o
         sZZWRdCZEOwGHr5zWYa9uKqA5KxKQySdYN50fVuvV1aUwAcNn6FeScHzOSR2hCuUQG69
         LFsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i6snSLL+;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jn8qJYoWB3klMsy2SnDk+lZeNQ2KKB4H2H1AA/shVAE=;
        b=ONMJdqVlKGtJWyLHeg/duVa+ELXA+vL42utDJfIWRunv7+IYjdD9sSHZ+MBXungQQD
         hDnWPsWJNAssc5LA6+jFPPFoeE+FA5qWhqtQlqB+eahm2/qJRczXWRg+JxLTXYqIXKaa
         hipzKoQSv09/NHE9boz24okoTrUuCg6Nuf9ZWUq2w7KiVq9nQ/iNbqDV+LpWKho1O3Hi
         EemOwAAzC6XHbS+Rp0WyE7niusWvd2JvSvEVvL2is98H4dU84HuOvi3xa2SAvxw0uPG8
         mdZwp0dEI+RkOK3oX1GNgxc93YTMxK/r/WkbjHfhJxTLrAeAghguvxmRiwHTNkeOvWry
         nshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jn8qJYoWB3klMsy2SnDk+lZeNQ2KKB4H2H1AA/shVAE=;
        b=GuMmAgTjrfZmA7MXbspPmTfL4Q8RlKxPao2Ph94QpIamqknHNJRiNT8pD4DAZ5Bhtz
         yonLglWhYtzfhBeQ9YMSxHSBYJdoZ2NPst2djFS6zy2mSITPCQ5Fxm0jExeGd0Nrr5y3
         vH2VCJ3lDp3HLqsZTpYIQS3mAFxl+kBVMQ0YvBWEi9DnxmxJtgY2h+AmlWc1F8a6qUK1
         HCs6HGpJ/8sDflRZeeF1bXG7grCItWDJVEtDftCRra60eQ/MP8amjIeyi3jbv7SJ3RXw
         XT0HFdYOzIS5LZC7irirQBM4pXwnquHlED/h3HxguoG6sIozbt+naXGnU169rXceDFNu
         U8nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53175k35lFq+gZYjYf3jSr+SETG+NvEqOv8nTSTSFm+aDFncItYE
	kxBERVZ9zkK1ASch8LmyW9A=
X-Google-Smtp-Source: ABdhPJyAXUczcT1ZVlL++IrCSMV3YgSqHKvnDRaR1nedkXgefYcMk0nx4aRAWKKlgFeS+eQQJRHM1Q==
X-Received: by 2002:a37:a0d1:: with SMTP id j200mr13234521qke.212.1596386253803;
        Sun, 02 Aug 2020 09:37:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:141a:: with SMTP id k26ls1765396qtj.4.gmail; Sun, 02 Aug
 2020 09:37:33 -0700 (PDT)
X-Received: by 2002:ac8:4d5c:: with SMTP id x28mr13229324qtv.35.1596386253510;
        Sun, 02 Aug 2020 09:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386253; cv=none;
        d=google.com; s=arc-20160816;
        b=w+dwSzIb0OK+SmJ1BNJNIJ8JfAybRbZa0UdIvchnXx0aIehbGSo3PlUt2bC/0lU+gp
         l5ZW27qhe99QSrX3pGhKacngAPTPil6fAhLVqPzTOUI9xuVF+jNyv4VaNkNvUY4piGpd
         GtwbxoMYpTTRbexjMxLcKyKSi5Yy1FrRwhmKa1PcD8a5qOWu7fD7BaUdxXjFrR8ARiH9
         ZkLbOytngpq3tUkRQbEntfob1Ah+QHISWBqKZVc/FW2QkXR5epme+BieIU6TUCJkRfe3
         cZIVo3GzaAXxTUvdUbW5dTGUsm6lkpDtwB1v2ccKRQw9EYfG6P3fixxXHgxBh6Hr12vC
         CQDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kGR2uXBco99IS12aSwf8XTjSL+4ZB+f9kOObb7IRxkg=;
        b=QgNqcn52VTRExF2XBgl/q6ebhszBWjpdbU1PSV28bVdBGryek+0zTHJeLnM5DFc8lR
         S/uuSfhTL1u3gM6rRX2lgujXjYUe+zM+XFK4SrpYVSM5EfKjKeLqnCUu+WEBn5vjHEYH
         bJTtk3oCxk++Suj0A7K4LGO3IFS3SwWHSTx7k8et02s1Jpe82MzR/DDUJW5JcI7koEe3
         BL57+1qXfPaSxhh+mVyxFvxJmeoaJVF/kJbDjLYT/dFh1vTftfYJelIi9Ok+uPTQwzX2
         JjllAKmVbWDxGLyUg1GX8ZdlDHH5qm0M1H1+KeAhr+scXmS26hPHy4FRP7VpeLRcHQkQ
         HtMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i6snSLL+;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c14si546806qkm.6.2020.08.02.09.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3666920738;
	Sun,  2 Aug 2020 16:37:21 +0000 (UTC)
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
Subject: [PATCH v2 07/17] mircoblaze: drop unneeded NUMA and sparsemem initializations
Date: Sun,  2 Aug 2020 19:35:51 +0300
Message-Id: <20200802163601.8189-8-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=i6snSLL+;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-8-rppt%40kernel.org.
