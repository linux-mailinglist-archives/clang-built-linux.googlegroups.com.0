Return-Path: <clang-built-linux+bncBAABBD6YTP4QKGQEJQUQ7FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BD22358E3
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:38:40 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id w15sf23721252qtv.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:38:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386319; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQUJ8nzfhKqiG+ppo7HrdSS6zWAS2ASjevv4WCJa1NOdE1wMpU+MUl4fp/eb2WIR2m
         TeFdPpkinnG3+3j59zn0qaDwwuG+ZY4PEdP5OeBmry3jsRlwPOwG1QONTIEdjjh0akQq
         pqsQj9kUPwpD8vW0Pm9+P4Y3HIPBf8GwSZRAwmiDBp3VmPOIlnfJdLVXHSrfZGYVAH3b
         8pUg2tg07AO1nz5f9lWVbpHGKcZcqY6N9FnoX4gd3k68FYCAnKiLIxY63rB5/WEov+rK
         Y9PmCMcBqVihoQxuHs7U0IFUJMOanq7d6HF/J0ohaIQ3/RhaAukgi6uhRB5K8MuCj4vq
         Iupg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hC0jTX8IHDmXrJSUqNYtpQbKDol0goJ3tI8NXfdfh5I=;
        b=F4kXxUahh1QfRf9nD3OmhGWKVa1xFnSF54/uY4l6KIlRUdUfdTrQDayAfZftX++/+E
         awfbXhemQqAwGOyM/nxnQU4Ee000tc1aOshFRKirrcKQnv0vX/2GZ6aT5UihetfSUeYS
         HX+XHnLtykmHaq9DYJtQmd2ByAuP0Cuv6dpfYZ/+lq8yDo0f/IkmLD1fxoCEADyQn0VQ
         G+M+J44OcPfvY88ORddAF8wHdT5OgnJOQOZf+ywzdB/Ni8wsTJ+OouovnaBoJIx33CSM
         rOB6TEMe4iKdC+5xWUdDxjXjnokxviQ+ACZ/bZQFED1iyhzHsUf302EZDwbxnbeSr+A+
         qgMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgzlknYs;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hC0jTX8IHDmXrJSUqNYtpQbKDol0goJ3tI8NXfdfh5I=;
        b=MEeBzisv1mJQrLZ0Yi/I4BDPkUp84z6KXENwhHq7LKuIsQcN89CizqyCAtRO623/3+
         tol5biQGQQF8rLTifNicx/6rK13XIHr2lc65e79+bfnE3UjrAXJCmkj9YqQuLLn0gEcS
         W9UrPsY3QmzFSTXJySrd33VF0ZnjY575qeBYm4lUrmf8lPxDlRluEDEEBVGRVDBV1uaM
         QhqAoi+5j+2oI3JCJ0e/NqMSOEa0fULcXp1hSHB5NhK8baNxuo8knrBboMNRSXSAJA6Y
         nVbIHLYK8Ud449qjZp1f/0GLXnSImCGltg88CVZDBq8MFDm3ylSAHX+rW/MkT+8LzjDN
         fcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hC0jTX8IHDmXrJSUqNYtpQbKDol0goJ3tI8NXfdfh5I=;
        b=iwq4bsa9Kgq3mPfo/DRBeuIfx85Rce5Q2RLMvknmoNBIB0CBs132LunIVux27xsQvq
         dApUcyMG6EgYkkEUJ3rJ36NOBiYsC8sGTbje6UBDxlLv9LR5sch6ujtJfj77rr73MFp/
         bGqKc1AkxZyuoiU7I5C9FyV5a4t25zvo5Cnxnpg3SGV4CW4EmMwIvoaqR2+mxxiOJzNM
         J4PWwmI6/h5sswF7WAiOo7FFhybcdZQBVVx8W4luTO+cegganykls+TkEz6pHwV5z9Sy
         DiRRTneCXSANFRefbSrq14CYi5mGG2GMgwrqpxLf4Bp2OzLv/Sl2/bfPo4xHwpBJu7WW
         eUaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mfCDLMhDjUKc+jO6gJXmEVsbamytsItL9jUXoU9xeXx9jAowx
	txcDbF8rKLdE4gw64vmT0BM=
X-Google-Smtp-Source: ABdhPJx9Su7/QURtIjdp+7x8+sGa/ygylhnGxadfRYgM3lEX3OJurCmoCHkzpQMT0lK3k47BLInDWA==
X-Received: by 2002:a37:4f07:: with SMTP id d7mr13616550qkb.144.1596386319413;
        Sun, 02 Aug 2020 09:38:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f7c6:: with SMTP id f6ls3468738qvo.1.gmail; Sun, 02 Aug
 2020 09:38:39 -0700 (PDT)
X-Received: by 2002:a0c:f1c9:: with SMTP id u9mr13091040qvl.76.1596386319182;
        Sun, 02 Aug 2020 09:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386319; cv=none;
        d=google.com; s=arc-20160816;
        b=1I8lYL0UiV6e0iiS2Tze/aMeMVfeM0/xYkqyFfH0Hc8zc59T+YBQMgjmZ9aFFY/Lld
         93hEaKpAlNuU0XUwSj3YxeUVsjCMv8bHO03xLQa1zehGK3/0yYvooZhH5ouXUvjpF6FJ
         +kDQM8KNRiYZhw6VNNzP3ydMW+cuwCVi1+WDl/xDOPTT3Ac7ikc+hVriLjrD+/b6c9Ti
         iQ5ArH/X3Piso9S9KtQ0DlNbZTQfg/ah6cQgd0yXyqG8YOpG+5KQlHe5euj2tcFfix4e
         47mlAspwp8joU7RbTAdSx0kxAOC8zPvMT7axqDnnKgF2DIk41+Hn5MRWYbRqcPZWsJs9
         PsLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wu8MKRa/f//09WHB2jjh5NjApKjrv6YPTayXBr79zH0=;
        b=sn9qM00xFP5lL5bZwqEXp8tpJb8oH6usK9MD7b8MTXK1xyzZxIXv1xGmSZhI8TNI5B
         jav08VzaRRhb6+uyLneqit2XDnUhksuS5u+LWR47hLunRBY3gCjnEBBDR1IABvDPXZfX
         Bzeq/9daKZpU3EOZaqhIMJgyfsOuKEaTpp4+fxdns4Q3xU8VjORs1wiDu87xwgxHOq41
         FTsFsIhNVlwUSEmg/7BcQWuIbrDRzydu3B8m1YbNNOfTUOZrdUx+ycI4lyxOtUhhu70r
         o6q72zr0e/6Bxxl1U3Epx5wDN6xb+jVCPQ7SnF+yZWMI7ZipqYNcqWdNSvvIuW7/Zx4+
         nDHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgzlknYs;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si101060qto.3.2020.08.02.09.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D797220759;
	Sun,  2 Aug 2020 16:38:27 +0000 (UTC)
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
Subject: [PATCH v2 13/17] x86/setup: simplify initrd relocation and reservation
Date: Sun,  2 Aug 2020 19:35:57 +0300
Message-Id: <20200802163601.8189-14-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QgzlknYs;       spf=pass
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
memory size exceeds the size of initrd, the checks whether the relocation
required and, if yes, relocates inirtd to a new memory allocated from
memblock and frees the old location.

The check for memory size is excessive as memblock allocation will anyway
fail if there is not enough memory. Besides, there is no point to allocate
memory from memblock using memblock_find_in_range() + memblock_reserve()
when there exists memblock_phys_alloc_range() with required functionality.

Remove the redundant check and simplify memblock allocation.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/x86/kernel/setup.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index a3767e74c758..d8de4053c5e8 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -262,16 +262,12 @@ static void __init relocate_initrd(void)
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
@@ -298,13 +294,13 @@ static void __init early_reserve_initrd(void)
 
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
@@ -312,12 +308,6 @@ static void __init reserve_initrd(void)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-14-rppt%40kernel.org.
