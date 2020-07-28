Return-Path: <clang-built-linux+bncBAABB47H734AKGQEHFHN2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BB5230150
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:25 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id t3sf6502937pjo.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913203; cv=pass;
        d=google.com; s=arc-20160816;
        b=qCzfF2x0KiFa2WA67F/5xZfTuniuNq+m1fsylEDk7GU7b7cyAAwWr5AdNRlyuH86D4
         G0dXlUL8FmHEjCkl8fdkHdrvZVpVrjT5Jg/9r09w9NtI2q/y15AogtARDrA4VLUA9gfo
         nwHcFpiNXonDlWAhYf4H8gtnbr+P85YFSxbu1cSShBIGvIO4xnfl39dZkWWesLDgWZcA
         HPvsU5qcmy+ZFibpldHb1cp6tn/DK+K1a0fFglUqpbGZaHFn8CrdY3GInahDb0A4jKlq
         Zs7rIlHlGlp8iJiP1y3ExoTsI+6Cyv0Usmj6Rk/PTvL4G2gUaz42T7thZqD/JlYNsHnm
         TLTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TjvS3WgUlCVlHXGRVik1HUF8OyQYdrQjlbJ1D+1BGAk=;
        b=LSy+7S8cZcbNY3rId32jE1XxeaINB3GB3dhl+I+May3ULtrvs7Jd5/M/p4+/cnWuPe
         kwkvFCBq0Ga52tXoIPCr7dfM2nyYH4lM6hw9UvWFsp76YXoCh93/GECU5IJ3Bp0oC83a
         KquyN+jwK742aQc7vXryiDln++oOzmSsjV79s2gZN46IFiUpfTwJQhJa+ivxcUB/zpVU
         L3/eOX5N5m+sz9pAdiYAa2p5lIGun1vtDNe4/Qmoark08EK1TV2av7Ue/auukbuA9JwH
         yDSwdfgYuUHOa6gboWGWHrqrkM8tc8vQKVrz6uO5dXib7jlIBBWNEgX9Q9KQv2pAtbsg
         5EZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lm11f6W8;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TjvS3WgUlCVlHXGRVik1HUF8OyQYdrQjlbJ1D+1BGAk=;
        b=sKVv5pFGeEnTii1onYU7YOp6AdQ/sw3eBPu/JlH/v5HVb12v0Qx+BHOeDC567wzktS
         tVXuX6VqYEcu2cuu9WkMECjC6go5/8mzjS2DCTRoOP50l2LjDfyXIabh7RSfeIIz7Epp
         /FXHglc3SBN30/nlURFovorcUehavrvnrwlunYw3BRaPDJ9HH42sE4/DeXm4ONk8LQAi
         Mb22Qil+zm942Bdyo9inE4UnD2vuphbzw84wgTCBYIA5+40ws97eUne7TmbdbqG+FeRv
         c3tQiexJAgl6GMVSpR+Bae/75FimPURhNWObfqikZfN89VEoBHq+UMZn5UOtOkWmLbqe
         6oOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TjvS3WgUlCVlHXGRVik1HUF8OyQYdrQjlbJ1D+1BGAk=;
        b=BUKItOdiK0V/1lyoCSrtnXSVl8v0KWFuIshSi2B/TeovsD5/uDT22ZDavF2S0TtMLh
         Rg9kwV4pP38otvvq8Dbwo+ywEQubfKUTdDZ++AeXnkeMQvgv7ZSA1ZE6zzeRjhKz4kFa
         PHWiV0XZvObKbHHRCG9eQyjF9LOp6nbE0BQESLPvxp/aMT76j/C8WeFRHDzy1dd5QeGv
         OP7AGBiRUZ6jIR7pTfIzvfu73Nxh3343qaVbHvbGCAQh1Xz1QqfP1pwLeSLexPcfekG8
         VAQb46t3mJ7Qs9unZkTd6LgzV5aPvAljtd0oSNW/sXr/8knarlC/TTTuttx32pT+gzVd
         jwfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XlwBcWmyZJW2Rgh6e31ehHyWRqOdYEX/6Oxv118Ms1Rts20bx
	ZG+sWnWrmwxVQfT6CvIlcQw=
X-Google-Smtp-Source: ABdhPJzdUsf4vOh1nDHIOhBBEOBTOkNBNbrEle3v73UAUS2XKFxoqR3r70Rxg82KLr1bt+AMr/o7GQ==
X-Received: by 2002:aa7:9630:: with SMTP id r16mr23950363pfg.144.1595913203436;
        Mon, 27 Jul 2020 22:13:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:80d:: with SMTP id m13ls2893766pfk.2.gmail; Mon, 27
 Jul 2020 22:13:23 -0700 (PDT)
X-Received: by 2002:a63:d912:: with SMTP id r18mr23113343pgg.358.1595913203105;
        Mon, 27 Jul 2020 22:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913203; cv=none;
        d=google.com; s=arc-20160816;
        b=J1YNSuCKMBNoFcogG8BQ70vLe4MINwkkOP/nIO7BCzHUAJ5Y0LCs+qsR6kHa4pJP6s
         uf6Glr7ZEayBqQq9NJFbA7Ti62yoJ5IlLdIfjAFPjf7AAE8WmdnLO7Qi2oy9Fkk1rdVb
         JAnVJxRbMOkGtGRLJ14434VNi94DExgCNPmRV8591v5XgE3OAiS5yLdM2nrGTN14VI/E
         c7pZbfXgeVDM1tYRyMF5BSHq5GTBcInDOlpMeJ+G8tEv5J831WINtFL+BHamhP3jOygB
         GMpxuq9ZM/rfc1vzhH3JOwAEE58VGY7/boVWEKj8j1t6kqlgHsHrIvYKbKmSf3S/4Q5j
         W+dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Clz9jqKNUXv+X/HA1+cnKmg8P4giP0bEAa6bb8dn+JA=;
        b=gbq1zlqXnpGERKDgPiY4XbyuVVB4TolBcMXJ19gl93kz9ZZaKNsnx0uIkJ8SQmfsvB
         0YHmVp6zZapfe19jTTwdGIXkEB6qdeOSq3Kk5tGPClRKNnSlpWlI0yBiM/wkqOvWNYQU
         lzbpwCCjtXW42e8wXtDVny7bWGURSX3zC9Xagp1Nx8kjIkvls4PmkTu56J3c4Hg1jYyf
         7R4oQ5qKRj4WX+p3EVbcRCUxFiNL3L2YIMARpY4ZsXMEz4qQdSp0EuVXAlkRo6GQEfBe
         wOOLmtnFwYeFYlLgs/p4EDP5v4ZjxzMWyR5yTxDlPN++/b7VIiZ+hQHJEht1V8iGUwyP
         4nbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lm11f6W8;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si864781pgm.4.2020.07.27.22.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8DAC422B4B;
	Tue, 28 Jul 2020 05:13:13 +0000 (UTC)
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
Subject: [PATCH 07/15] riscv: drop unneeded node initialization
Date: Tue, 28 Jul 2020 08:11:45 +0300
Message-Id: <20200728051153.1590-8-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lm11f6W8;       spf=pass
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
index 79e9d55bdf1a..7440ba2cdaaa 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-8-rppt%40kernel.org.
