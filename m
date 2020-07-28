Return-Path: <clang-built-linux+bncBAABBVXH734AKGQEF63KMJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B13E5230137
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:12:55 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id a3sf7802628otf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:12:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913174; cv=pass;
        d=google.com; s=arc-20160816;
        b=WpkPzsGM38uGKqnssDjY6F/FSYN29JIJ0bQ+RnjIASxeTd5KJhUud9Uv1LiheC2jFS
         3qNkITGHt5hh5QHRyQrSjQldIZIWfizB91wBkaaV9ZoccM7tY51BiJjPWFk6OjOvsBAM
         eUHSUuNhN/lmjRxRgB+H+UjGCMScjQZwmB5gZH49U0hj7sw64eKzoGoa5BLazClOafbI
         MAiTs4uL5hmi7CInQjHEPxr2Dii4tK7WTnWCnoGUmPGZyMaVkSHXmyEeRLzBixx26bII
         R2oZLj92Hsvo/0gvtze/zZAhL1ub4GqblxYkab03f/1EGhncpjt4HYRL2U2GiEFecxr4
         lCWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=//Kh+wBEj/HunEAIgtQ7z4sGc9zWdIA6VJi4VOWHvAE=;
        b=AB5zGz7sO5G9UYhm2R3zRiyEaz4zsRZBgFbuOoH7+QKApQ7W43nTCQwgdONb4ye1uR
         CVXe+HET6dNpfhV+TWBqWckbgH6efYP5pTxNEWm7DxNHk5l8Fdz+sUv5YiDPLurdxYFD
         xJPkH3YqhIKcVGZkiEkOPEsr3ZmCTy4noRoGg+mI1aAYbiLzOOciXPu+IVbw13ezoQAf
         alvw2DnvNVbUZimaMdeKQ2qDH8elVkXHdnFs/CNTwRup7BZ35imMcOXmoh01dmc9l9or
         wHUZnjsd3ekE/DDJWkPR0Znoj4kWMk+05jwOFtfspE6UV3anQ+pGHFijpjfPMwIzrkzN
         92pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wt1p0YyB;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//Kh+wBEj/HunEAIgtQ7z4sGc9zWdIA6VJi4VOWHvAE=;
        b=D7/rlz460N8MIz+XiyXBuIsM6pd+eUDGwZDUzFWinu6k4QWHvdrLXTbtxS8W7RscYt
         q7k1fM6FElCtnwdN16Xcs6M5WwRcwcdsWve32qokniJtxyM0Z3fkIIMsSu2RT9WknxXI
         pCB5x/6DZIiUgofczDdDxl4rbYqE1aUl6pc/aVzwIXrezYpOG57WeTR/70PbmZJf0j1l
         wQyeQBAp95MS54Uf0s6pin7cbzjatCDELj8YtQzSHhX1mwy4PK/AWCEE6R28YOETkZhi
         ZfJz0QauD/RJ22j8rtFmpvZAm33Wn9EPCR+RO+hDhEiTb87q7xCs4i8NY2MzbwJdKc8Z
         D0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//Kh+wBEj/HunEAIgtQ7z4sGc9zWdIA6VJi4VOWHvAE=;
        b=HxFlzNJ9+T69DeMM7ArA0XS1wEXSWHNsj8Gnwx9z5SSKF3R6pJyfe26VxjWzrW0P6c
         qdVJp9xdWMvfWrSjkJ4PCEyCtnWWHz8Fm+RQM5uGXwjgB62I2Z6yQPx+2u+9OgX1TVPN
         svv+F3ZRKcG3ys3NnnXbzw3n5t1m3LGm9Q6VG8Kx3gvM79XQ4NlfG1Ns+tE8aI1Bt8Ut
         RmiKBIcbNR3edHu44gpVLMy005UQjRk6/EKDYI7r1/6qzgosAb4tv7iIXs8p3XkoAbWP
         6Rgl0bMuqe+fR4Cdci8MEWrhuNCbRAW+w10fOO/8T2amsjvK8LCHKRhO6Sn/WmoVhL7D
         ZAlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yFNx6B4TDKeDKxfL5KoT1oqz2nIcF+R7hRLD4XYYkTyljhXf8
	HZtztD6c92LcKm8k1MMSZhc=
X-Google-Smtp-Source: ABdhPJwmAHemwEBfi7RE6+Dq2o2qH9rmPYHjWyX7zNMzBK5CmFyXdGD/jRcdDevz+ENh9AHlAt6QFQ==
X-Received: by 2002:a9d:328b:: with SMTP id u11mr11886068otb.98.1595913174645;
        Mon, 27 Jul 2020 22:12:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1247:: with SMTP id s7ls3802717otp.0.gmail; Mon, 27
 Jul 2020 22:12:54 -0700 (PDT)
X-Received: by 2002:a9d:eef:: with SMTP id 102mr21251529otj.225.1595913174212;
        Mon, 27 Jul 2020 22:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913174; cv=none;
        d=google.com; s=arc-20160816;
        b=qqePe1I71iYHoapVkQITuuN612LQkNSf+1XZoEo1Dn6+x7PZMJRrAfA780QP21cK5D
         cD7ATNJDZdIZEdLXI3IwydNGgkHDVzpNS+sFxYKEtop/our7IhAhap0GV9LeQdNRqiXQ
         kexia2DoBwfU5KGTQrRYqBuk9aEOANBVjwpm9tcKuPQ7ep9vjTf2/wNjUWKpkSs/lG2y
         m89tbOItsUz2hQ2t9GVbpnx7YpQ5AMDGFJ0apqo6eDCi0CxF8IedLZdZLU8OtlCsrCu7
         AzoWJL1zSP9X0u4HzOUYqMEm6/YiRcb+SsnXiQ/u0zK+/JxLmdgDdjYPzfmT7xecBQvV
         PqRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GeANWERKVARe4XVwSXHCbbUf18W3eVYaAhUixvPrGg8=;
        b=wvBd+zxJpwLweDlYWOlreLCBVpGTCWV3o77SIQWtwFFApFqgjipkCELA2mwdngtW8I
         /1uUgjahxCXACHLBHLTDX7j8n5+aUtUp4eEBuwMi278Ioy73LC1WLB0shzb32ngk8bLY
         DRV+WcXgmUvecDXSv/n5chuqld62BZ8EQnh2iH2Q2r49CzHZjUQws0O2hbUETsjknvxT
         cGVxzcy82QqF5qLSXJu3dInQNKbLrmWWFmXfc209oHkksnjYolfsMA492dSgD3JvZ5of
         tab1MO79F0psfkanRuUU9T91L8vpjQFlubbPT6EssLsM9hFjtqOCRqZNsbba/hrRnJbC
         9QNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wt1p0YyB;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m21si696910oih.4.2020.07.27.22.12.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13A8121883;
	Tue, 28 Jul 2020 05:12:43 +0000 (UTC)
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
Subject: [PATCH 04/15] arm64: numa: simplify dummy_numa_init()
Date: Tue, 28 Jul 2020 08:11:42 +0300
Message-Id: <20200728051153.1590-5-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wt1p0YyB;       spf=pass
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

Replace the loop with a single call to memblock_set_node() to the entire
memory.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-5-rppt%40kernel.org.
