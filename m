Return-Path: <clang-built-linux+bncBAABBF6XTP4QKGQEUKXVLPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A3E23588D
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:36:40 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id p26sf2654027vsm.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386199; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHT6mXbwLaVBbsThOj1NICLbLlIqEnI2/x//aD5Xr3S3z814h3ngYna50Q1q9u2ddv
         XsFybG3VmjhApQ4IgdBQe1+koAqIy6SlAVGQ+ToUt5bUKd8fZtNheJwgS0czpz0tEhHv
         uVz7G4Y9W6ysSAFWZxuT6kPTbP3reIyDVDKJd3arlAvWpd5GKTsdfjB3Hm2IJ3pI7gFq
         rSJHgjrOQjoUfg9/flXQqWIiz6oXdVuawT5JL/2EH0dSHtTi3AjVFNzPNVMfb9GYowbC
         IjlU3kF/ae0uQ5//VEjjTttBYqdZONbbrC8QhC1uuu6rSlpoljcm3OzuO627KV7zmKJr
         gmvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3GfkATqYcyuVULHDDfpiJQ9K3nflhI3rF1tr32w6/fc=;
        b=gbpXDUIZjGJZ3M1M2k7+86z2Nq0b6E1Fn9Vs+OKFVbaTuWpYsqhUxnF4R36fAfJ0jc
         6toIaytH0AAQpVqh3G7kn2dR6xE0YqpNcmbzu1vFiiEa/2TTMSHQlNYv+PvBjXC5ke8z
         tiOSj1CNctDd6cWUgW9dmzIc1hfSkK3NYCPs/q08LNKnqV28Y5hDNvOWLFuiv4P2/tlC
         vj04+I6TnoNXDAefoA1xUXLyo3DQMMLg6DSy0PsGHB5w43xgRBcb99bhn+jUdd4MFIXm
         eQdVZv4B8Ftelu2zHKrODaIntIBERizQFiBUWJhkS60Kx90CXCOiVVmCbpNTUGGppKbf
         9aOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SOgVggGM;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GfkATqYcyuVULHDDfpiJQ9K3nflhI3rF1tr32w6/fc=;
        b=A8yALo7ydVvJfEQxijv3aR4XsNkjZRPYAELgGUzFXnxOW4K1L/cxv/T5uwlU8I5E8Y
         XZqvSVz2gDTJG0NevPHlcuKIWJarMG0VegOpApA0w1z06satGBw2gUFqIHXMu1X85zIz
         XX6l4NGCrWfWtQpUyxciW4gKKP+fIFH3lxSbmvwIYRS1B/1/QYbv160YTCbSQrudJ7hl
         NHQLbwYtBo4Rvd4gk3TQHRPxvnQf3LW2ZXZi5GY310Flic847Vp533yxnTTBOcJVaWhi
         2m4Sn5nLZecSga4Ka4P3O34D7dlh6FbZRA284FeP8M3VqGz54pTUvuDlltJE9/w5b7ok
         BiIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GfkATqYcyuVULHDDfpiJQ9K3nflhI3rF1tr32w6/fc=;
        b=nGzSu8XAvqSRLMjrlnEhQYT1fM/Tuwe4tfcQRWX9s8IwAOO4S66sqkkPMW54tpNTih
         tD9joPQ0cgAOtbRaSYh0K0A7+pq4NKmegnrd/iZvaY/h5EReyeWfeyJTuaZpd2SdAPy2
         aTjHnZAfm+mzr5bqrMD0n4OhqeHMbXVLlVNAN8nuvmIDwUs6eQo1tcgK0vJQhb8990Ts
         WBm7JTSKpTyDDQtFhn0J2lvJljfYvQjdxMU7jZfQEdBnPg7Gkd0T0edWkLbUGqeHQ6s+
         adN/Bg4GvoublkSQxdscy85LQgS3Ne996C/3V5CTzDq03XX2U1uoavc2RxTN7ec8T4B5
         /uAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UgLjSJO9TLHZZ69xfZnSupe3hPmyDAM3Fw5y4U8YQIWnoDTbf
	bqwhi67goNQFyr0in97uqtY=
X-Google-Smtp-Source: ABdhPJyv/gxY/39ARLFeY2VL9lIF9oQYawnwKetwKT6TeepTf1kXTzauqAmPH5FKpaZVGa5XJpL0UA==
X-Received: by 2002:a1f:a282:: with SMTP id l124mr8963429vke.28.1596386199121;
        Sun, 02 Aug 2020 09:36:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:d1c5:: with SMTP id i188ls677031vkg.3.gmail; Sun, 02 Aug
 2020 09:36:38 -0700 (PDT)
X-Received: by 2002:ac5:c845:: with SMTP id g5mr444560vkm.0.1596386198797;
        Sun, 02 Aug 2020 09:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386198; cv=none;
        d=google.com; s=arc-20160816;
        b=QSEKHbglTJP3qPLN4UNCoymnbePDMzTSk2WN9nCxZpr+zRyh788yi0QhTwRUZpqr27
         Bpci3o+IC2r1FGTgGaelnGgZhqjE6WlOTBheBMQJGQylm+2AsV8mNwx+mmm8dJ8BggEp
         ZNH8ibJyojB1+GHUCHFiB5/C23Q0YRjrCNPxvhW1vjEERsSBXsDO2MaTnqLs2BGMh60j
         swoguXYAUYGF4x8A4T+E+s4SvC1vqKmYeTEqh8HiBwUXldPRLlt1ugKmUyX4YWjWtLp4
         l00jtzq1jQeCTH+Kgp/nx7swa+7ZapYVoqgcUswnuoSpiyInTGrXhiRyLgzhwidx7Eaq
         p8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c5eFxK3DdfkcSt31OAyWpkrPS2CV1RkuShT63Y6567I=;
        b=FOw1ZD6rMN4a68e87IxTxiDjQy+bi1kSTBP59FohYp1Q/b4/Dp6su9JCMUksMTuDdV
         5SUegkYsebo1CpjEvFyRAXnJ/NQGdbu6GzBbOaXFMH6KbxhvtC42HZP957VMXnMn4fpq
         ioPPdHpjmDF2PooQipY9sfJIlOoLztGQtBukNcT2FMz37sI2waHcmM0YGoJKNCqpZDr+
         V2xGEF8vbCAA/P6Q9Ew0xmJud1GIO7cDQ/txvG2CnNlMSERfaoGHrMY2nX9MZ6vBJLkf
         Xsppmw7DUHUOU2CTGtx/s3LQDTgv/LSRJOr98ESUd3ca2ZzIAcvas3RIkakg764DC5P+
         8Tfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SOgVggGM;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c186si1094691vke.3.2020.08.02.09.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6A00E207BB;
	Sun,  2 Aug 2020 16:36:27 +0000 (UTC)
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
Subject: [PATCH v2 02/17] dma-contiguous: simplify cma_early_percent_memory()
Date: Sun,  2 Aug 2020 19:35:46 +0300
Message-Id: <20200802163601.8189-3-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SOgVggGM;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-3-rppt%40kernel.org.
