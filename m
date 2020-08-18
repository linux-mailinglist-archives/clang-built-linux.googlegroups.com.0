Return-Path: <clang-built-linux+bncBAABB57B574QKGQEJQ5Q64Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DFD2488F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:17:12 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id t79sf14611831ild.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:17:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597763831; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5YSAMAFAIAj8e5TIxsaiJCU93uv/Y9G96P2ghqz2kfPUqSKkvjl29Irn4PqCgsdoJ
         jnNFBlmUkpu6KbUCAxFu9U3oc05DyfPSJYOHMouHTItre/HdbjDugfScxVYwhHX4VR19
         WiZhxRxS/eF8Y4TtrZG7I4LPlktQA/fIvHLlonl/Cc5o/AllQ+DX03hds2TFBuoi7y9u
         lUgx3FpCpSq5lyLwsBZAO2g1NVLVT7AYoEgH/6n6vyOS/y7hFZNuHe/m7K7jZ9TPZvAZ
         +4ygNdsb5cO+mqazW2s88UpRHMKPNJ44l6FVtCyS9Z13QAVfK4vR54WtI9F3iqdL50+x
         r/hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fC+UO6+f9iekUkDm4WPq58Z8L4pDvZ5DTMKKSPB+CnY=;
        b=fzrPlno28CzvZAh1iErpDsxeFxrR9Pt/ERF4Evp7YXXroMI4+ouc4BUsV2uqZ+8pU6
         lzxMxqivbtYfMis+dBkXDGeuAG/UyCbPYYr7H0q57HdL3uusX8Ky4NHYBnOdOj1Pm3eK
         dfqGaimk7pEkYKeNsNOWILWQtZx1HFQ6e2P3WCBd+S7FalHU9tUdYF8U66zMKVlkNxvo
         4GYwkZJ9ZIMcvZ95CIsE7O50qU1InqEJvgBtvUKCiO+Yh6PGDdd+CW0h0Olik8toKxTy
         54Nv/Ke1OFWSBYFRQJhouRceEzMgLLLoJRGlGiAo3GmobO5Fgazo2lx3auGTzxecmpys
         Ah9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LGeqCVGq;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fC+UO6+f9iekUkDm4WPq58Z8L4pDvZ5DTMKKSPB+CnY=;
        b=Cl8irAjvANpfJVYah/l9LL+KYJ+PGuICPW82/Y3lPPduGlpFDeSsdxLdHMLMyHPjYC
         T9i8JboQYfL5jcRfx4VoEft7ukDDENA0F9RTh6D2hgn8sKBNfnJxdKSngehSqyZnTTn9
         VQ2Oe/HPNtxbZ7JjFYAHH714IHuYgKSULi3RKL8+rr3oVBFb+qQmD+OULXFvhCqoXgRY
         X/IZ3WjfWTyxKpaxdh9DL4U6eReQhM0rove4p5pzHNyJnqizul4vwAzR6AM92wVB0ZuY
         naCb1t0MNYXVSraAJIrP98BHwvZd8+qyo8XrndILuYn9ETMAT0eIRPBAPqkMygAHvDC8
         rzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fC+UO6+f9iekUkDm4WPq58Z8L4pDvZ5DTMKKSPB+CnY=;
        b=it5U3uOtwXohzJnf8poiCt77bkNSNcEtr+O5yc10R2jl7NBeF8/drBril7jTA3x9Qo
         N1KIGIrSY7nERYtNw54Nrjjs2A0CScSD/OViNhmqh+EmjVY0AwUyeowWg/i+xrRdgS9C
         CcNzGdlj05jZAOpRgZRnUwUXYJJYOW7wuM2IXWiuGYcXrlPoOOPyH89q2BP+K5oyWbPn
         P5y4chQMNxZwTM1PSoR3j5liOe9s/yKb492bbsUd6KrPOJU12MBP7Yw/ALuEMG7f8cIZ
         KzzyCgEt/cf9Xnd5B8VcIgRT9prQtcYqUTlhxlOWsfRxGfH1em3jFlhGJpjOHcpZgtL8
         ntxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JByX0NevX/NvTnr6pc66Kv24s+A1+dQtDrZRPW/0PZZw4RUbn
	dVc9zcJA5UKeuPcnnWs7zZ0=
X-Google-Smtp-Source: ABdhPJxx8mPFSsWRhiJWiEOVhCZBrtOpa4ShqMPwPbyRimyLc6j8ars+KIEog+IkKw7BsoxKb57QtA==
X-Received: by 2002:a02:820b:: with SMTP id o11mr19889912jag.136.1597763831495;
        Tue, 18 Aug 2020 08:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1489:: with SMTP id j9ls2694595jak.4.gmail; Tue, 18
 Aug 2020 08:17:11 -0700 (PDT)
X-Received: by 2002:a02:82c3:: with SMTP id u3mr19607339jag.81.1597763831186;
        Tue, 18 Aug 2020 08:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597763831; cv=none;
        d=google.com; s=arc-20160816;
        b=tgVelnZ7PFNt1+piP3i+tRofcMGFeYPbSIqtmrwtZLM74jSG9tBh5BIad47pTjUI9W
         V00iHfMqDoen2CLOQZXSl8xbuxPAJRQttfX+xhqiECtvByJZ/y583UzLYRlYTDxkV3fA
         BXbtWWjwiyraSJcjgv67mnbwqJ0HHrJsJWL1URjJU+MDc1pamfjFtcpxIdF4SiFVEk5u
         9qCPFv6mKLFpboYEhOTPpe0Puus1K5lFF/amH2uN+w2IRbCN/FpT7EK2YVXy8cQyeG8M
         rP741vtvtaT4evUVCJiszKwnRoPcSAPRxTnoWgm8nSd2UjANFTkh1X8nsW2Ds2moIzPi
         6adw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XPY2fbApRKaaHMlgperg95cW4EzjO/sE3QOYnkrxhEY=;
        b=tdGBcfmxIdzs2J4vIYaEe22jdUrkgb6sQONy7LdQlt7Zp6kiyeST/168NB6E91qZ1T
         MuSUCy9r/cpzQZGyL4kBoDdjhdsiUBpPl9dfu+xXxKD1A9tp10s2iqBdJjslOpXfIn9U
         X55Ux4S6nJrO0xCDVODPkjSAxdYNDjJC595KGYaV4OL9WNo8XkDGtxwzG8v5Df3EhB7G
         jmiVVU2PW1Exsr1dPuS3Znvnc2/xBYAR3+TfdQsNFVRBky9S+KyhcT9+KwE5WT+Me+oW
         p2HbFQBC74iztginYButUyCESRzYq6+y1ULmav7XwVJAJMnteevxihBeZNaHmBsrdVI3
         pDOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LGeqCVGq;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t6si1091852ioi.1.2020.08.18.08.17.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 08:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3188A2054F;
	Tue, 18 Aug 2020 15:16:59 +0000 (UTC)
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
Subject: [PATCH v3 02/17] dma-contiguous: simplify cma_early_percent_memory()
Date: Tue, 18 Aug 2020 18:16:19 +0300
Message-Id: <20200818151634.14343-3-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818151634.14343-1-rppt@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LGeqCVGq;       spf=pass
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
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Baoquan He <bhe@redhat.com>
---
 kernel/dma/contiguous.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index cff7e60968b9..0369fd5fda8f 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818151634.14343-3-rppt%40kernel.org.
