Return-Path: <clang-built-linux+bncBAABBBXD574QKGQENZPX2EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697E24894A
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:19:35 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id k4sf6169152iop.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763974; cv=pass;
        d=google.com; s=arc-20160816;
        b=W79NjLEtMxUDdJoVopOuOm6sy+00+tcaMKAW13a6q0oYCH9Z90iwUplMVrF7qZ08uE
         DTklKzTEeDijbBG/WmjvjoCuY4UaUuuRvtPDyzmcxHDUF82uotZLdmURgUCUQAb+ath9
         igX5cTrMzEZ7IZ3cbqPdyR9cwp+fHBOWZ16USgNQTyD0kMhCrHWm4kvTAWrM1RTR1D19
         osTTZzcD4CgIeysBQtmEm0EY8tqlX4kKdsVF5IrlVH97EcTNTi5YNdp/ywZlaZ12StNd
         JHRJ9/HmOYCaxc2IQjGpznQVHEIvPLZp0SHq1MW4HiFUP0jJH9sDXr1AXavXKxOJXNye
         6sQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=laArkQLs8P4BkJYNju8yAGLSzb0Tbpn6f0/F24hioCI=;
        b=Kyj97vkpVk0YIcgCr2E78DXiWCnfG55GrJTO3dpJ8WJZQ9+Ezbk4OO8BRDPvBHkk63
         AxdXhFHQhun2uownrHhG4eUYr44/J2pcGYtB0tuoBS/tSbxx/3MXScasXxJglA7onC/p
         JTNXnXZ1yk0oqXPtGapGM6dP9JG1t9Pf9usccXcaFqpwbjwUzPqnDaviCCrylHGvIc9p
         ESDW3DI1YY79QOEOL5nA4HvOaKtFZMr2Te1ti+iXF4ttx8B1E7MyraVifaUEK3V8u9YZ
         dM2wMh0GaSxn4dyqwRI8kwK/AQHJJCEQb36tMpwEEYfqjQWPZtaz91OX/+VnTu4IFYLu
         9P5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jJdwwbdM;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=laArkQLs8P4BkJYNju8yAGLSzb0Tbpn6f0/F24hioCI=;
        b=nSNR5s1clHQLUaiG53/944NrDStrvzGdlXj82chzXkw9JH7TCv9uQKW9/TdKP6+D9L
         bsuLxXzPquU6tVbg1xuHu6jrBcDQpF/6TPnjCBg/d5DWA2IJ6Ua0tZAIyDw0lE6KfoR3
         pFejKmX8111+1amleBK22ceUXriVjd5G1GiUmbH/KiHF7PUPbNP03hZAqFNTGRCGu455
         0hzRbriCa3TN/3eOytfgOrtXn2jHPplnAajz0G1Zctbjere3E888Cerjvq0LqxxDmWQw
         uM3YGbeTJ/7RAUGeTJacpuuaA2LMUKl+kU4RvV385ZkAFFiDdFUt4rpgnEl7NQcQIYYO
         p/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=laArkQLs8P4BkJYNju8yAGLSzb0Tbpn6f0/F24hioCI=;
        b=XrPSCqHHkIn3f4yiNKn1kzX4Or3a7uAO2IeCgraJtZYYUXdmDgr8E5Nr5o4l1Qmzh/
         hVxZvEadpRfbZSRMbZN+oKceJnnOOMxFOf6uDtHkkzR/DF9LqSpKfsG3iTO9V+YDwN5b
         aZcbLuOQapTN462DgG958aE5h2Hmh8h5OW6CHzNWC/LxpnTWkijo5qT+k93Ju5r83fyI
         XBXtefqHDW2GvwWKdSuMDHvE9DowL1nSQ3PqcvQL2K6qEHEuPuBSy31PSx3+fNH7oTFx
         tTWKqbqouKrtIDGfcN1Ue3lJZxMFq9Uwqknkr3G+Y9PhIGaYWLJHW3rrJwvY2SqX7XNM
         7vVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JoI2SW9wXqOIRcNTCmd213iUxXdQYxiyD9DTvcjC1gxtmZ7FJ
	x6mtfya8hkm41rkxSazuwi8=
X-Google-Smtp-Source: ABdhPJx84uyOjlApJWisZi7Hh4ZwXpEPGymxLvXSxX23mu5FPx90cEcLg5t7rR1Ub5M08l2kGYx8zQ==
X-Received: by 2002:a02:ccd7:: with SMTP id k23mr19899885jaq.73.1597763974286;
        Tue, 18 Aug 2020 08:19:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5d03:: with SMTP id r3ls3233716iob.10.gmail; Tue, 18 Aug
 2020 08:19:34 -0700 (PDT)
X-Received: by 2002:a6b:7f07:: with SMTP id l7mr16462906ioq.203.1597763973951;
        Tue, 18 Aug 2020 08:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763973; cv=none;
        d=google.com; s=arc-20160816;
        b=hpND4/Ha5e9zCkngxK1kX2z4bQhhSLmKrrfmOVhZSqVEaXeKDTmMcfLsPIiBn8aYPJ
         E2w+ST8n9Tqh4bYERFQrhSrPTFFR0DuGEfhHUkVBIxJqw2Cu9mEx9Y21i4smTmF/uEcg
         f6/FHDkIjR+QtvKx4mbduGUt/QzK3TsMnif26bhXJPnAsBgsG9kj5ciIV52HUbyLeWxZ
         Ky+qaKm9qhtKmAzeb80eRTBDFasLIvXXiUR4+oH0MsK+0NDkSNnun6r5xRRFhZZ3fbcU
         DmMcP24lVMr1WnK8pYwux2oyZe4U7W9tdiRfdTzIfj9VLs7jkhfLnuoOxRcHQcJLogq7
         E8UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fvwyw5Xp1BpWpZ9WbKQ9mdrr1/w0luQtVCgBu5KDRjY=;
        b=To5nFRfcXUWKsakR63YzlpNFUiFkcPwrQVFR0upQbJBmhTKZpy21szybZeOaIdmTBC
         2bBIkDYTJQH1HVi+er0g9fVT7HIu/IVorwLAmU04JuSPVSsv67cbPTu240dMBhx2noWO
         B2Q+XKI8m+8t932MRqeoiQi7CwNLOsL6Z5xG86Vfir1NyIKzgm/276SBkxRB9jVImUtH
         0dQvUFNgMDegi7100iuIONYyCGz2RuKqaSctCBz28qnExKxtb5PGm69egGpiMgyl9vmu
         6PsfGCAYj6EGHRjk6O64/Clxr+3NP/GE12QDdZ0Exknv8yXa52qlGMUCet/mdWsOpf9L
         3Fcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jJdwwbdM;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si686622ilh.1.2020.08.18.08.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF31B2054F;
	Tue, 18 Aug 2020 15:19:22 +0000 (UTC)
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
Subject: [PATCH v3 15/17] memblock: remove unused memblock_mem_size()
Date: Tue, 18 Aug 2020 18:16:32 +0300
Message-Id: <20200818151634.14343-16-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jJdwwbdM;       spf=pass
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
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 include/linux/memblock.h |  1 -
 mm/memblock.c            | 15 ---------------
 2 files changed, 16 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 27c3b84d1615..15ed119701c1 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -481,7 +481,6 @@ static inline bool memblock_bottom_up(void)
 
 phys_addr_t memblock_phys_mem_size(void);
 phys_addr_t memblock_reserved_size(void);
-phys_addr_t memblock_mem_size(unsigned long limit_pfn);
 phys_addr_t memblock_start_of_DRAM(void);
 phys_addr_t memblock_end_of_DRAM(void);
 void memblock_enforce_memory_limit(phys_addr_t memory_limit);
diff --git a/mm/memblock.c b/mm/memblock.c
index 567e454ce0a1..eb4f866bea34 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1657,21 +1657,6 @@ phys_addr_t __init_memblock memblock_reserved_size(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-16-rppt%40kernel.org.
