Return-Path: <clang-built-linux+bncBAABBLXC574QKGQE5BBZI2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C39324890D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:18:07 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id b18sf14587219qte.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:18:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763886; cv=pass;
        d=google.com; s=arc-20160816;
        b=yVvnUsDa+ssGskjmi16V9ZqkwZqMaIGDiEOpQN3pqcyEuBdxz2o7ugfLcCXAVDXMZr
         x1jtExkBgsJ2RZrk5ZImUaMQ20p5XUFGD0VH6XBL3+hknOmyWIYCUsbG9yT6yotmZYW4
         2QEaMoMYkKRqM7zaRXZVFp8DZpKdF/1G8y9iC2bkMxNk61nttzjwrXDT62l8J1D07/72
         mrXS3tBPlr/x5LxSYi3VfIh24i6BZQ+Gi0KE91GUo4BVKjWekFPiy6cn8vdUp1j2fReu
         viECbeKcR+at396lf2LGYaPS6ARIPA3ZQCRrw3Y9fszYJMTajjA6rJW3tBvqK8HU5Gx7
         lt0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5ZrSsLGCgFPYW/M7qtMmDjlaaACh/olhAc5K/lNFEOo=;
        b=LuJURqDJLEavPi2Dmlktb/GLW9mOl1eRn/kbS3Ba/qdVY4yYqdbmTPa2R4nbvc13zc
         c4hj4IfeWVRIrU4mcvK3oj+OSx3J4wiE5Qp+OOEKujrxcw6Aqy9U2hVr8VJeIvt6QbVN
         SbGDvqHwJy0S9CoLKAHi9gQ581m+zVyfMBxZt2CXkdg9NidIxB5Ql4IesBemGQZAbJ2c
         p+5BBfzsAkPLk5i1Wrbxl03z50D37BgruJNmNMjCBhRkeqWi/qmLB9JDY/RqEpP64zWd
         Gnur+q3cmP+IJv6UY6Xnd/EtkgVdffwnqGidBctLz5DIZRH1JORmpHsRDTN5eIvzZblY
         9FjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZRkPL5Ut;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ZrSsLGCgFPYW/M7qtMmDjlaaACh/olhAc5K/lNFEOo=;
        b=I9mZvuCIfFNFSTTPnTLy1Wm5T/FSuDV5Hmk3YCG0sVXVJwWSmtu1QYlgJRZjpEP8Qz
         noEW0g4EXAXTsMOX0sJhQTkeRen4Cs1A4MWo8CzlYL+DARMD9Wkc1het6YqaLPTugPzw
         nZGi3DRkjHPD6Xyd1th52w5jKaFohwhghiZZEf/fe/oHK7qv7FQnAWrIMvaAQK8HM8Dd
         Ki2umg7vEfnNbb3dzWsSsrNOcy8f9BKwYbpEBNv3o4RtBWgRoeuwTmzarTvhtOEAUmWW
         HILAzGN/9o38Exh/uwvjzGvzOSrLIoT9DOFdhHM0omQQDirdnA+JuBzHC16jUHQXoV/a
         sCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ZrSsLGCgFPYW/M7qtMmDjlaaACh/olhAc5K/lNFEOo=;
        b=PauXzPri8xlNzjfyRK+speax6MEkdSppRzCM7Bk1w9CJoXS7gxTULXFWfCzehP2GNH
         yanDsPr12wWHM/nHJhIRUIzyGInhIgHmNoKe4AbgXkrsUe4yRLcpL58kX4dkKNv1rleG
         bMHFM/Fxkbvp9a4YWAIqlY5TDiV+7R4xoFm9J70MRT5yZ6r2JcvYA3BEQnNi+JVWAR/5
         MVf89kwNYdu6J6mHmr1mif6eqLjBo4kOlJy6cIk74slmtBYnLJmmRMqVNj1Pb/6WxddA
         eH50D+3xrh5mGbK03RJuxATo6yqar05rhoaUQ94ucDM9iQ+O7tpLNHZUUE/jCLp6sDmb
         S+xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GN1Cg0TT87MEPc3qG7FtXvd6e6RCeXfupEtRJt8MqNlvL0J0G
	z9sLDkvRnMj4co8VPbpclnw=
X-Google-Smtp-Source: ABdhPJwhhcIG+f0LtgMs6iC6T4aLwMl7IzaUp1OqobtdQm4EFCpwlT9TPzARKVPgPjaMFQn6QoUYng==
X-Received: by 2002:ac8:7c96:: with SMTP id y22mr18601893qtv.70.1597763886540;
        Tue, 18 Aug 2020 08:18:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:246b:: with SMTP id s40ls8032095qtc.5.gmail; Tue, 18 Aug
 2020 08:18:06 -0700 (PDT)
X-Received: by 2002:ac8:7402:: with SMTP id p2mr18329252qtq.19.1597763886089;
        Tue, 18 Aug 2020 08:18:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763886; cv=none;
        d=google.com; s=arc-20160816;
        b=EA09kk1Xt1+6aLvi436TwUkIxagb/idBTXeEpVL5LOxoGVZ8vfF6D3slFeVeNUHrUB
         62syZ7YFcSSu67aotCXZd20FU/vTs1FUI37/iNRN9nsOzQYBITuXino/rcLwMj+6gB4L
         Lp+YzXQ0q695xmG8TFD4/wIDI0wbZEKCe/m/MlJD4/iALwzwDiDUPiW67y84pkT/6G0r
         z/gE+jLmhDYDKF6CXO2EVZBZF/+HfZRUz/Rqio4ctab42l6XPL+OpW9+MeHnJe1OTJ/7
         y1iwCGOPg3fxxjGXyb7TlNyg/+ggK9uIFKCY33GHsoCBDi00iIwkcZIVIZr/Z85pVarJ
         0HeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ts6lACgUCLziCpDstfyb6605hx7O05bGZXiiz6SAurs=;
        b=FJXhgk8A8HCQ2LVKrBAcxXOSQjvCJFMPwHcVGgx+/nRnwiKeW/z8b/CLhTdYd7jN1U
         JcT0/W6Ug9nBnMSYNZlzHbLcpO3rhwClsdlYVPljaigT6h8tnqOu4mQMRPYgLE6cA38M
         FYcGl9ZAcwLfIv3+rCnXgvtYm516b6ysI1cMWFeMyHnKfMdQyrd9MGVaX/c0lZ6ehWB3
         8lMTeil1Y3rOQd4sJS1JL0/3w0eAJGKtjOTAorNxh0c3LOat/ORvyFuPQhjeQwszUiXe
         PrUYbZWeE4GVzMl1Ms842F5o76rvB2leCP6p2Dkbrl0HP4iYGkGCWC2i5HB7p1zYMmyw
         6wzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZRkPL5Ut;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d1si1150455qtw.2.2020.08.18.08.18.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:18:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF0552080C;
	Tue, 18 Aug 2020 15:17:54 +0000 (UTC)
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
Subject: [PATCH v3 07/17] mircoblaze: drop unneeded NUMA and sparsemem initializations
Date: Tue, 18 Aug 2020 18:16:24 +0300
Message-Id: <20200818151634.14343-8-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZRkPL5Ut;       spf=pass
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
 arch/microblaze/mm/init.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index 0880a003573d..49e0c241f9b1 100644
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
@@ -161,17 +160,6 @@ void __init setup_memory(void)
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
 	paging_init();
 }
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-8-rppt%40kernel.org.
