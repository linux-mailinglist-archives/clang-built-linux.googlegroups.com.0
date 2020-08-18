Return-Path: <clang-built-linux+bncBAABBIXC574QKGQE2GZUSKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A595C248908
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:56 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id r187sf4156709pgr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763875; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xkm0cwnJAJ6rHnOKwHhZmsZPwpxIYHHXDAQhG9cPrrktPIZy95DToA+9h5m3+NBgqe
         8FCYRNBuzp+rXRfUEkEuyi8CupUUtsYQVcw1A3CB+QOUFTxlNTGdGkC0YgPFLTrW8GVk
         JWURD7ajEB55hDAT/0z1rjdyGliOgiTPLdtXz1zfTImJW3U+xpJeeRdmXjK9ivr1TF77
         VtdfBN3ExXgAwgON8hjIhmtKpZdsG82TP1DEbLUPnN+mtAIjYV4zOaVloqCnl1fJxKGS
         Dd3F/QSULf1igxyAMP4cdvDFloobqkhpOlJxRDRWIY4TdGO1/Tr79G2EJQn6PhxFmy35
         JAbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aTuxv/rEatzpd4Cr7X1WcaZM5t0i/6YgLLs25AZpF1E=;
        b=d+eA4fVzD/wLpLdidF7RDxPK+TknC+fciq2kj9L6wf1hZ1G3Z7fglgVLcnpkP5UtHj
         NHqzZgDkXom/Ity6iCzJkMKqD/q43UrsFf/et7ppxVQyOLESDCkFwPN8HujBxGelZd9X
         UcQj6FdybxReqInot8CWW3LQbKfr2tBHMl8WnJRsKCzcJZBFzxrsHtl771eIarOSjAuy
         23HLX7mvupzSPSwPNAycD5wDX3hpnRXBEd2brWIOChTnJ8MK1k3CrFtkA+BxaVcvOQRl
         S5PrbrX6ntcoTbQD97mGN+HZlsUaG8syC4QWF2tU826DtH3K08AWfQSyJHl0oxtVwrNf
         3+5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nnpj9aHP;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTuxv/rEatzpd4Cr7X1WcaZM5t0i/6YgLLs25AZpF1E=;
        b=Ng8Iy4XhI1o59L+qtpjaYM2HDLpBgfghhxMeMo4lOcN4y1BKy3/piOBGQ98CbGcsWM
         XVPczAhik6xAKMH0a6hQ7EZn96jtt2m/iObo/KrjN4bkZpuVNeQJ+mt37w/ISND5X22L
         zeUHU92PfcsA7SVORbivSRiHYqGz0mm9D089GG8qwSDSAQ3/Sn2VQjuV90ur76b9Bful
         KqzZK0thC0ctr0tn5uMO4QeMxpcBxut23EpsnMovZObYVy1BAqKMvpdKxW/vdvujrXym
         WVkuyMNW3apwOL82SktG9IVMOHtHOIXejefQ3sDtfzBGFr1B+BC8/6IzTdhxd0EMo9qZ
         iJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTuxv/rEatzpd4Cr7X1WcaZM5t0i/6YgLLs25AZpF1E=;
        b=Q0xFy4HTT3Ywa1OphA72pw7r/O5BLKb51YK20c3lrlDX4ga4uHxHb+OBQIyAIPhB4m
         8fRk59QT6OW3XLg9s4RKZRliSPd9WNxZzZ/Un5/o7BfEFS59chut85C5Dd+gJxGrsRS9
         aIdr4LvLgZrVi/Deel7IHKmhY8D/bfmGwHzEmANq96gnUOT/iplM9DYjrBYLzObsUd5R
         GSKa9AH7yMF5YwhTaiDUEuPcHBpIiA/EINWbVIax9/sNsMAWgTx63WnipJZTZRPnFpbo
         SMtBn+HfSAG+uSrO/G6N0m3zU9od+PI3IGQsqZI7G0Ef5Tub+ppdLM9RVIBKYW2KRj+S
         n5uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oulQ2dJMZ+Ks+Mu49Z+fO1XOav7V0Q5+AkRtI3SpBtscgVMiS
	mTlgh1EeNBXI+TWfukHk8T0=
X-Google-Smtp-Source: ABdhPJx9NI4baT9S4QeOpHS0hQmTdIbAvtiuFmDlDfbrHt2j8oKPOoTcrLIrc8mNNqaEoEVbtlCPyg==
X-Received: by 2002:a63:5810:: with SMTP id m16mr13643534pgb.193.1597763875097;
        Tue, 18 Aug 2020 08:17:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe08:: with SMTP id g8ls8798784plj.1.gmail; Tue, 18
 Aug 2020 08:17:54 -0700 (PDT)
X-Received: by 2002:a17:90a:4e89:: with SMTP id o9mr391776pjh.178.1597763874601;
        Tue, 18 Aug 2020 08:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763874; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1UcMOZA0v0/fNJYh5++7zbSqnq9XGYeVwz+MCVewxuPexV8YajuvRUU3PlYcSoZu7
         H18j1uejf0cWzpZbV8PwIUStN70s/DNld3YMdN9irdE8eoOgHHpm9A7VWh1AAotm0dlv
         RzRhYcfzPk1QFHt1mfB4bNaccA6yJeZ26fDSEiiQ8SO/7u7HOhT/3xJuk1ahpDPtTmBh
         XXIWwZBU3DvCfm6wpnxqAA/5tetWMxdD6zanbkUzjZS9Y5Rn3LCPvW+Eyr2ueUWRGzB6
         H0HbVsLtVAHbEPxKd355+FZL5R4jc9peyfRL3rFhKRR8blLRAxuveo8OMsvVk8XFvmU7
         UgFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S487+3ue64bb9JXD1xMuAhd5tlgqspoVuGd72jAaE2g=;
        b=KYA9v6/mrTcPdRtRQF25f4lnUjQjQw4GQfjrijZFzPNv1J8vy1aElj12yAgMJCWHyH
         nKDqDljq3rbXJ7pJSUz4CwcMseM8XITKWD0ud3ue0uKx9yCZaB1nICgREjpSqeEpjJ+u
         UnQ/0hrQy67Hvl0NDCohTnWb+HV3lZ9F/YD2vM2kni0UpMcVuF92iGMJkLEQTugIrtX9
         iHcWKT0toeqfQhG/wd4hmmwYjYWLgh7qQZKLiZnZNgHX/UzSOua1rXZdee8KcGaotWzS
         pmtzegjp60hjoQ41Bnqq0DgCf/lrHnjhk1OAlJnjWEwmqD+N8FyTli74imzWO6Snt/h5
         sBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nnpj9aHP;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bx1si140190pjb.1.2020.08.18.08.17.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1557A2083B;
	Tue, 18 Aug 2020 15:17:43 +0000 (UTC)
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
Subject: [PATCH v3 06/17] riscv: drop unneeded node initialization
Date: Tue, 18 Aug 2020 18:16:23 +0300
Message-Id: <20200818151634.14343-7-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Nnpj9aHP;       spf=pass
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

RISC-V does not (yet) support NUMA  and for UMA architectures node 0 is
used implicitly during early memory initialization.

There is no need to call memblock_set_node(), remove this call and the
surrounding code.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/riscv/mm/init.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 787c75f751a5..0485cfaacc72 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -191,15 +191,6 @@ void __init setup_bootmem(void)
 	early_init_fdt_scan_reserved_mem();
 	memblock_allow_resize();
 	memblock_dump_all();
-
-	for_each_memblock(memory, reg) {
-		unsigned long start_pfn = memblock_region_memory_base_pfn(reg);
-		unsigned long end_pfn = memblock_region_memory_end_pfn(reg);
-
-		memblock_set_node(PFN_PHYS(start_pfn),
-				  PFN_PHYS(end_pfn - start_pfn),
-				  &memblock.memory, 0);
-	}
 }
 
 #ifdef CONFIG_MMU
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-7-rppt%40kernel.org.
