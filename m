Return-Path: <clang-built-linux+bncBAABBQXH734AKGQEJXKMOYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAC023012B
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:12:35 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id u13sf5924534uap.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:12:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913154; cv=pass;
        d=google.com; s=arc-20160816;
        b=ab3WyjuVTJTAOTFUUyeax9PxYfKGHjIzosx6EZxGCRtR4ATX86YmPiVbUiIIihw1NQ
         fTuDBpDXb5huf/MIFHdQYj+X/bm3NhyAsoNCgPXhWAe10KMgCr9Mx3DukIZ6SXu9zHdt
         CNOgZmawA31aLcc1en4H78x/aFARDZs0L74ea/eUPaHz1414fYAor5hDfAcrGdzHHDaO
         PRzgm/xkHrIpXHlqP3dg97ezDfKgnNraoPJjM262At04cSTtTQ4MTmOCxuPTZS/AvuNX
         Kexv/ERsjRX5L9AxZ+s0x9XnOXPDMohh7u8kKt73yBt3/0xBdFo0AUdrpKD8vAVLXNbu
         LB1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8fXrlFlGMFnVWwBPc7r4qKX9+vj/UosvUZIFegucf9A=;
        b=AyhmU6TWrBOKMXPmWOddsfcbxnHJ6emc2gKiktCBPlguhzlrKXnGQII93DN6wQRbwe
         dhWrIa81pzRiuL0fpCgmACZqWnU6snV4vv4+RbU7xkEXfs+q3SoCSphyX0CBQoRWDmtH
         5o/5h6t0xNJtUAzPhr4LFKRh7l8Hj3Bd30WL+UhUYILXRRQuj+JoVaRk8tnuNm3+lyKz
         EgWAtsWSBFxhvznL1ax3XLNg+F6yLe9sJPu7fIhPAE7VEfrb8rK9ZQuWk7TLatWtauU8
         CTiJ3WEvhu+JSBFhk6FCobcGoKIIapI0XUE1NO1IyJkUOY1xQ0/CkmfqQXANwlMxvVhw
         3GMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m3WIeA90;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8fXrlFlGMFnVWwBPc7r4qKX9+vj/UosvUZIFegucf9A=;
        b=qTjTj4lndSBNL8A6CKrISoKko/5l8cd47Dgsq8p+r8YE+fJIaTpIvRFSt9+ec3aI7x
         jN8GyiznSZyJC2tjqDs+1CKi9iyJEAOQDTRvdWpZyldHBvgERyFLtLL4htRXTb8gBXLc
         DAu3vB1rU1DWEEwVS2GRuLAShD8gZKNuwC5DaHFEWKQTOt5pdfJDjyBm7zBFHya/f3b4
         2KP4bMSRgRk7TrUbA5Ctfb3yH/gHsQZ4dKuLezZqQdKM0Nc9FtUCLkAcylTSDBthiXgH
         IwNoQ1B42VIOL0gFlyjzVrC7zqhrGNXUQ/xic9Ma93tflIbTNf757UdCDGz2gbq6qcWT
         7xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8fXrlFlGMFnVWwBPc7r4qKX9+vj/UosvUZIFegucf9A=;
        b=cSLhn7aVzHXk7VwdaQVEgtspveCTbcCJtSZXGIPC2IhEQV8R9h91GgsLHVmuXqeIXA
         6SLrIVPfZkogZjTtKLXfVyZKYGphOPPTtwxuNKYnNUfaBeCGdfvWTyTy8egnfoHgnozG
         lw2nbUAxqQ85AdYJJxRRV31DS7xKlU72ZpiKoSAVYDrzl0Lll+SGIwpvnm9V8j+fMhAr
         u1yNv/wgfZHsUmIwO4f9rIOucVqxJI434ESNpTW3vvbiqV43OK0f8GN2slcDIk9+27AL
         amhrYBKFcwsFCzYDxX829Jn3lxFahcghqs14rYCAVuSZWzNPKB5njHeKwG7MfZs6Gjtt
         hABA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533av6z46ry0JiP53JMfTS/P4R2qV+UsADz1zZKvyiU1Pvc1YXh8
	FQQcbn26PX3p3ZMsS+SH3rs=
X-Google-Smtp-Source: ABdhPJyMncANndXfcnjdGcV2Qp9Hv2Ft+O1mnIIekS2OFaUwbyV1zx6QjmydrWMl1dJ/rVa0RYglrw==
X-Received: by 2002:ab0:2b08:: with SMTP id e8mr18358738uar.119.1595913154753;
        Mon, 27 Jul 2020 22:12:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6008:: with SMTP id j8ls288517ual.11.gmail; Mon, 27 Jul
 2020 22:12:34 -0700 (PDT)
X-Received: by 2002:ab0:6905:: with SMTP id b5mr8954588uas.110.1595913154469;
        Mon, 27 Jul 2020 22:12:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913154; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEwOPC2txCNPe6c+NBOUlmmxRWpa5+JUQhBB/znt11l/wekbGiXGh0H3x65E3jUGiy
         iyfo8U+rRHluYov9e65CJSxs7vH+iEGz3oc8r77y8ZbB7Gl4jOuc7NfJQlFljINdlv1l
         Z8VL2AH0diIGxd5i24gICKJLUHahrByaMWCKmkDxcoWVs87RWqHMwSnR9RlH5T3e49sl
         cvL+Uaik7duIIiHqgunJCvvAWSqgB375pwxlL/kegu+jj2dEggTPRs7ChY7m0KGrpmFB
         xCBk/edvFqIBxZHkxWGNfMLvMzdhCjCWi6QBeKA0mK7LpihB4KPfY3Piiv71W6YpFdCO
         y+kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qkk+OMktZIthkDXOfjZWi6RElp7feVCMSjnjOdAFhp0=;
        b=LeeILjlJL8AuhpaeSJA7CSQHfMxv1NaM56Sai0vBa30TdTFS0oLWZb/oqJZK3Eet4Q
         HAh+3dgtcoYxUWpNGmfpYJcchAY+1Jn0deeYxvU1gNfAYA5OEjb6QClz5ZRoCKoLs2ap
         g9TozGG0aXwp6lbBe+W3JgKeiDQorUeYLvHNX9v33hvyvzl3fj6f9S3hvPkN7Lw2aH3+
         /xCcSfCZpzL/08Y3+8dYSO4wtFjsxeFexcwUZBdxkltnYwdIE/d86QFdgK/Jm1T7n0LJ
         50G3Oj0JIgDQs6h/CBzrP0Hoy2Wpy/qm02Zk81aKAIDE+9fHeM1pm6BE3PoTXRoOOG2G
         LGMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m3WIeA90;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t13si659491vsn.2.2020.07.27.22.12.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B6452070A;
	Tue, 28 Jul 2020 05:12:23 +0000 (UTC)
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
Subject: [PATCH 02/15] dma-contiguous: simplify cma_early_percent_memory()
Date: Tue, 28 Jul 2020 08:11:40 +0300
Message-Id: <20200728051153.1590-3-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=m3WIeA90;       spf=pass
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

The memory size calculation in cma_early_percent_memory() traverses
memblock.memory rather than simply call memblock_phys_mem_size(). The
comment in that function suggests that at some point there should have been
call to memblock_analyze() before memblock_phys_mem_size() could be used.
As of now, there is no memblock_analyze() at all and
memblock_phys_mem_size() can be used as soon as cold-plug memory is
registerd with memblock.

Replace loop over memblock.memory with a call to memblock_phys_mem_size().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 kernel/dma/contiguous.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 15bc5026c485..1992afd8ca7b 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -73,16 +73,7 @@ early_param("cma", early_cma);
 
 static phys_addr_t __init __maybe_unused cma_early_percent_memory(void)
 {
-	struct memblock_region *reg;
-	unsigned long total_pages = 0;
-
-	/*
-	 * We cannot use memblock_phys_mem_size() here, because
-	 * memblock_analyze() has not been called yet.
-	 */
-	for_each_memblock(memory, reg)
-		total_pages += memblock_region_memory_end_pfn(reg) -
-			       memblock_region_memory_base_pfn(reg);
+	unsigned long total_pages = PHYS_PFN(memblock_phys_mem_size());
 
 	return (total_pages * CONFIG_CMA_SIZE_PERCENTAGE / 100) << PAGE_SHIFT;
 }
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-3-rppt%40kernel.org.
