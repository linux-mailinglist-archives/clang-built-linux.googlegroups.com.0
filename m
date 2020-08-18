Return-Path: <clang-built-linux+bncBAABB37C574QKGQEN45T2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB6A24893D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:19:13 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id p24sf12358762plr.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:19:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763952; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFyFoAy281PrvtjU5WOD+B9wDdj7ZGf3RfnCdw2l/P2xcogL+HTS2kQs5ok/9+fsnV
         crpULuxz28pPXrdpBWHcg9YwHoZXX5KYWxZH4Y4MfpPEyKR7T8aZeIJJ8g9l7CftrSQP
         JeaLTaYnoHgjF/rijXL04q/pf2QoKMq2hku9vz1XEMMHSwsH8PIzfiRCbwE45oeJW7gc
         p/bVI/KzhlBewzzoqd1JETXtcwThx/DapMUlYKR3FoZi5XF3m5IcHNYF7ZwQzGuugVDU
         o4GdjqOCatqFPvqOZq+fk4aj0NgWJavXFZLwx4nJshS2LgYT3au28RtBYYw8efrG+qlK
         igWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4fwznofjuoC/GXVBuKDXqjCEIM7bdknb93NJmkUPCok=;
        b=MqNn9MWnvRvk+igbfkgXnXL8AXi9jmhwpiMjFEpekNzKxVGDJgoZuWnvJx/vx0hRL4
         yVwgZEHogQAGP4UQA65uQK1pFx96boXFhS73BMaggjgkGtxvv19x5VfjDHEkv7/toTS8
         lzyM4pXrMs3smuCDK/UkfBM12xuE2aTqRP099cA8nyHBg4pqeijWmXsjF5VElDkzJJvd
         G0QQ0H+XG4I5AKVOMeGyycyWym0Ygm+CFeqvRBz9XKo4lMNhf807d+tvSM7f7ZX0D5g7
         5VrA5VEQTZB+LvNWBS5VEI3yhllChIxJR9CMARBTWFEJHAb6SnFQ4vOl2E1+YxSt42RC
         IPtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sECSrz89;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fwznofjuoC/GXVBuKDXqjCEIM7bdknb93NJmkUPCok=;
        b=b0F3XoPvfa0QyC8iO45xtrJKp5Bkl7aZxv9BAvTAXgD1eLahaULnCAkrYIB5/D/huf
         QGbPpMoYJZDwD+YqjsnRO94IK8stw/TcrvtKekRnHKc8Alh9tL9V92omnEHpvYmTK50z
         JTSk9i2WgibrbiH9dR8eAuiisXyHKqzm6+rdsbYyMjhUCWaPbpMDikrel3LNEg3zTZum
         mIczmvfWJNYxC1IvX0k5nkJSCzvcIU3ElT8DBCPZmDdGKP+fTSMoFM3bPjcSHyxgP5NP
         fOq7x8G+bdbrl4KlaQHfSuDkCs+iE+qB9gMuZjOJKnoKnDxwtmdfiM+PzmYhTB2CT6fk
         Ng1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fwznofjuoC/GXVBuKDXqjCEIM7bdknb93NJmkUPCok=;
        b=GHOWdZNfWIF9MbuHYuLbKpNiPfT5CB4P7cz1tx0jTy1wSr5i6bv+S0rr+5L3xC0f/D
         RMLs3vMWhKUHEnadB6c9cpI7A8PQtiLlll0wN/kIwNJMkjwKKnC477ZpWoUwZoKAWAmX
         OjvVhaixweryO2tOpicSNEz5kFNh67Pjx8ybvLmeQmsjQMpbdnDbnbxh4b/MojKV8ZxQ
         LUL7F4c1se4HspL3UHoXqePDI3grkfH4YvRFFwP8z/7BrEyY3vcPwtT+KjyH1l2D+WNC
         4epL/+7nyOltJmwJ6iTIW4sKBoix60KdiQ4CWeITq2lqYzf0RwPTGervAwc+tbVUJ9pO
         mAwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Nywl3E2UKeBI6+BD/ZpaiRtY2M18ZC+tn5u2cYea9RrNFhJNd
	WLMCeE1/xwMsPH1QoGh0vG4=
X-Google-Smtp-Source: ABdhPJzJvz9yWbmrys20MDJLNHXy9mmbkY8F5y63k0xnOZ5XxijII/jxqKHakOvDbFd0+gxoRUvoKQ==
X-Received: by 2002:a63:df54:: with SMTP id h20mr13413916pgj.319.1597763951924;
        Tue, 18 Aug 2020 08:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls7221952pfb.10.gmail; Tue, 18
 Aug 2020 08:19:11 -0700 (PDT)
X-Received: by 2002:a65:60ce:: with SMTP id r14mr13972218pgv.85.1597763951460;
        Tue, 18 Aug 2020 08:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763951; cv=none;
        d=google.com; s=arc-20160816;
        b=Dfp0T/jILBGSzV5mzSlo6HFMM85lwB88EDrBg+e9Rvxvmrvc6esZ38Rrn2b4neCLTX
         23RjRHfsQPmezXN/sk8O6sdKjQS4CPQH7tw0IwAHeHSqSUt/38eXi4JMJs3mlehO95cI
         wNwddcq+vL9xVHcElWZJ4J3iEwZ1PHOBd5YhEtEPteJXG6zEIsEFCsW/Lr/qOhgxmKTY
         lXBW9yE1yWIiEUkUn9yAbNfZJAcKYLYTb1d6SDosMergSuIlqL7SN4rVf+nJkwOpezS3
         GUR9gdcLrfUSEPBA7H442eMNJecW8HhFKC1EwZcdC5Q0vsBDYIbLtdHGS2vqF/eXs2Sw
         E8BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ngvjDkL1//Uu79oRPA+tVgj5TxHOBnAxIbma47RzU+E=;
        b=GRucW0ZlgVArlxxGk6WJ+Mg60OU4Q39RSmlen9YrYmIDt3VA/V68NT+aUwmE02DiPS
         XKcWh6kqsdez62Z+Ai3cd0nTWgsVhKIcui/bdnLf48FK0GncdrCLbX6jXwgRIYbbNPax
         3bji4fQcE9QQPiOioKrJVghAPDdFR8/wVkRw4TiTlG3dvD4CkG2dW4bdVdx/iMLNNCOH
         KPso6uXNHOyUocdD5F9nKoTN9UQ8SEfhev/95mTuWIEbCugaRwtNgItPQqGK50X4YfpJ
         ciarpdMJ9p/5+4eW1Jk7zv5sOKFtu9eWNE7Js4XeE/ENI9tonbTC97D81yYmrM7znhwF
         pCKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sECSrz89;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v127si1084101pfc.0.2020.08.18.08.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:19:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5F202080C;
	Tue, 18 Aug 2020 15:19:00 +0000 (UTC)
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
Subject: [PATCH v3 13/17] x86/setup: simplify initrd relocation and reservation
Date: Tue, 18 Aug 2020 18:16:30 +0300
Message-Id: <20200818151634.14343-14-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sECSrz89;       spf=pass
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

Currently, initrd image is reserved very early during setup and then it
might be relocated and re-reserved after the initial physical memory
mapping is created. The "late" reservation of memblock verifies that mapped
memory size exceeds the size of initrd, then checks whether the relocation
required and, if yes, relocates inirtd to a new memory allocated from
memblock and frees the old location.

The check for memory size is excessive as memblock allocation will anyway
fail if there is not enough memory. Besides, there is no point to allocate
memory from memblock using memblock_find_in_range() + memblock_reserve()
when there exists memblock_phys_alloc_range() with required functionality.

Remove the redundant check and simplify memblock allocation.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Ingo Molnar <mingo@kernel.org>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 arch/x86/kernel/setup.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 3511736fbc74..2cac39ade2e3 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -263,16 +263,12 @@ static void __init relocate_initrd(void)
 	u64 area_size     = PAGE_ALIGN(ramdisk_size);
 
 	/* We need to move the initrd down into directly mapped mem */
-	relocated_ramdisk = memblock_find_in_range(0, PFN_PHYS(max_pfn_mapped),
-						   area_size, PAGE_SIZE);
-
+	relocated_ramdisk = memblock_phys_alloc_range(area_size, PAGE_SIZE, 0,
+						      PFN_PHYS(max_pfn_mapped));
 	if (!relocated_ramdisk)
 		panic("Cannot find place for new RAMDISK of size %lld\n",
 		      ramdisk_size);
 
-	/* Note: this includes all the mem currently occupied by
-	   the initrd, we rely on that fact to keep the data intact. */
-	memblock_reserve(relocated_ramdisk, area_size);
 	initrd_start = relocated_ramdisk + PAGE_OFFSET;
 	initrd_end   = initrd_start + ramdisk_size;
 	printk(KERN_INFO "Allocated new RAMDISK: [mem %#010llx-%#010llx]\n",
@@ -299,13 +295,13 @@ static void __init early_reserve_initrd(void)
 
 	memblock_reserve(ramdisk_image, ramdisk_end - ramdisk_image);
 }
+
 static void __init reserve_initrd(void)
 {
 	/* Assume only end is not page aligned */
 	u64 ramdisk_image = get_ramdisk_image();
 	u64 ramdisk_size  = get_ramdisk_size();
 	u64 ramdisk_end   = PAGE_ALIGN(ramdisk_image + ramdisk_size);
-	u64 mapped_size;
 
 	if (!boot_params.hdr.type_of_loader ||
 	    !ramdisk_image || !ramdisk_size)
@@ -313,12 +309,6 @@ static void __init reserve_initrd(void)
 
 	initrd_start = 0;
 
-	mapped_size = memblock_mem_size(max_pfn_mapped);
-	if (ramdisk_size >= (mapped_size>>1))
-		panic("initrd too large to handle, "
-		       "disabling initrd (%lld needed, %lld available)\n",
-		       ramdisk_size, mapped_size>>1);
-
 	printk(KERN_INFO "RAMDISK: [mem %#010llx-%#010llx]\n", ramdisk_image,
 			ramdisk_end - 1);
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-14-rppt%40kernel.org.
