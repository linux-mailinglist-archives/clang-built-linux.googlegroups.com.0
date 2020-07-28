Return-Path: <clang-built-linux+bncBAABB2PH734AKGQEDYGRCGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC3D23014B
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:13:15 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id w8sf11178748plq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 22:13:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595913194; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgbpJrx5RDrDX0dWHoZY+cucEUbHlgKKEcmdKrINV10KCVtpkYpAmLABwn/jTMVF9J
         D8ymzF1/jtMMDhwQy59tpU8eqXBeGHl2s6muxdWVCTkltCu3fWwBCWpElEUCCk7hqTjk
         rkqw+bBbWrxzAhRiZrB02HGduIlypDxjP8vRG5okLF7YddmYt/9tvL+UbrxXT9fnDn7e
         d7mvnLHN8jjwA6RwUC3TsaOpe78B1iv/8EQt1Y8RZ/+dIbVf0ZdK9HL5nzPS5+bljFfn
         0x0w4HyML6d0RmYP8TCiNwERFjJimvjBIvWkME3sbCD/+kR/gfxr0zjlX39GCD9yvHu7
         MK/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+SaLQp2bcUvaHsD40uVjbld125BVSvUy03yaAebA/n4=;
        b=UzVBPypIPF17MDQcFPfQ+f5HVFZdcdJuG6o6WSd6HpIm+o01qYS9nojWpojG0d26Xg
         4ORLvshVhwFDdPAQzZwkBV7EDw6tb4aYAOI19B0rdpjAkzWchblTB21RGy9aI4MUEQtr
         SAT+QgVSVa/JXJY/VdhU/93i3JMoJ/QgYLi2pCF6vJtPJu7gTIGygswMfVoHyOvusrBS
         YVu0QMNE3ta8UUbVExOfTKvJCsT4p52FKnQ2WH0m+S1r1wSc9jETGwxUgF36pylP8SRF
         mEoO/0z6coxr5fj5Ddi/Ied81wW7t/5rqiX3r1LUtSP9PFZBbKZYaSO8xn/dgmflBcYB
         GS4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YAjIiROU;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+SaLQp2bcUvaHsD40uVjbld125BVSvUy03yaAebA/n4=;
        b=OgiTz6iH/6UWuspgIiL2A2bmV+sp+EUa2RYCnE0uXR74g42MflSKxrOxiytY8MC76a
         0S8farOFnPvQjrdHOQedGmnmSjfneIOX8YnLfwa19PrxdZI3lCEnCv2mv1/PomKl2At2
         KzHrFocDVXAe8bbW+ccmDzgTX4mJsPqSoAr1QznBG+/QzKqgWhcNh925uX7yFUkDlv6h
         +Iirrjrft+5waA0HYjIX3n9RMeMEW53WmsiQw2DlAvXTN6j5Jr4pwKe6bcG46MNQdFBL
         TnL1pxcfIcajO5XMAJkr5s9YksBUap4+5QXQHLkLYCPHlWd06q71A4x0F3Tzn/2k8vuV
         joGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+SaLQp2bcUvaHsD40uVjbld125BVSvUy03yaAebA/n4=;
        b=EDJBwwbN0+XSR56ZEbUALfICXbAl/j/T4ATvUdr6evfTSQx0SZ0K+wUgm1N1BnC8tK
         0AYNojm715j29fBmUQAIDnU/Gi/FmX+RmE0v54TNfnXA1nnjZOx0wqeCLJ4aoc/EcZ1+
         x1bGSUJOfPZIVM/iUS+kBUdNkLlC5Vh6ybaOkFUToDaKzHzMAKXOEAS0VTyxEavLZXKp
         3ihAIr1FHrFkGfwQIrEKScBRYanKB6XufDOB8uGR+3qYrjPHMuf3hTFyC3Ava7u97Il/
         m0s6uarTiujl7c5i63ywUbgC2W5MrUCqwosGOM4iTZx80tVKjxDakWNr1dCOAMFySr1F
         GN4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cdI2yPV8r4VAKxDP+6Ewa3YtUIyg8sRTPZYhadpmUI80PYWhb
	OG4fvoFJovWWKQYGpJJlu8s=
X-Google-Smtp-Source: ABdhPJwKfAEzGrTnexP2a5GMMy0wcBEdTZCqU86L57nz2iqJVtaPFvc8nw8bUABQ9pVLxwnO4D0adA==
X-Received: by 2002:a63:135b:: with SMTP id 27mr23671709pgt.37.1595913193594;
        Mon, 27 Jul 2020 22:13:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls3694289plc.2.gmail; Mon, 27
 Jul 2020 22:13:13 -0700 (PDT)
X-Received: by 2002:a17:90a:1589:: with SMTP id m9mr2789841pja.122.1595913193273;
        Mon, 27 Jul 2020 22:13:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595913193; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3u/CD4eqbYom9LlqTeXJK6huAlLbbbLLtqLyGmiQ4VTlw2O/wWLTovCjzP0nvZFsu
         KzLbeZTxtUSFvNiUqXQsKta1BQcNa02KmkpM+2fpeRKJS1uFmqaPEvg5/tBReJVtSOIC
         8DvM/605csXS1I+1fr/yU+neaUmAG3/NnMBHtsIjm3E3QmU3QN0oyP4PmHz63TV93t/J
         np4vamLaA2PUZurmnO7x3bivBdQ5EvyprkBejIHh1IdTm32d4YAPjtGzfRwZBTvdQwru
         EZQRXaafcd5ce7MZy8lK8A5evTxXWV4B4EzmfbQyjIS0sd/i7/Id+AQm9mRJSuEgUDNX
         2s+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ARIeX6EktzdOVeN4CzUF9ycWUesnb4uBXsy/u2DtiHc=;
        b=hkwlkFoUeNn2Uc7nrJE+KUDYKecs0wK5wMtVsrBG+V9VJGnYjP9SIYcTJrHYyEYLP3
         KNaX+167gvaREEB/9OoqLFGLPDAOEGTT91akkk7ARJDoNExk6HIfTBbGtR2+JfqQRmNn
         sVfU6Acc9lpQuxHbCsnxCrW5EibZSaf+ImYSVGhcGj4h1/RfFK12mHEop54AsnykQCBr
         t6d6uZUbVmGLzZv1PraePQP0P4QDHMECIQIfPZZXQoQn2BlfBnBP09molVy7x9KoVGux
         5Mc/rdyhmYLhnNupsA8qUBbDPNs4sT3Zjh5w0JY0oiH1MlxXgFv9Fl3In8itqmTryJCB
         aw9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YAjIiROU;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si719084plq.3.2020.07.27.22.13.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 22:13:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B649522B45;
	Tue, 28 Jul 2020 05:13:03 +0000 (UTC)
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
Subject: [PATCH 06/15] powerpc: fadamp: simplify fadump_reserve_crash_area()
Date: Tue, 28 Jul 2020 08:11:44 +0300
Message-Id: <20200728051153.1590-7-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728051153.1590-1-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YAjIiROU;       spf=pass
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

fadump_reserve_crash_area() reserves memory from a specified base address
till the end of the RAM.

Replace iteration through the memblock.memory with a single call to
memblock_reserve() with appropriate  that will take care of proper memory
reservation.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/powerpc/kernel/fadump.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
index 78ab9a6ee6ac..2446a61e3c25 100644
--- a/arch/powerpc/kernel/fadump.c
+++ b/arch/powerpc/kernel/fadump.c
@@ -1658,25 +1658,7 @@ int __init fadump_reserve_mem(void)
 /* Preserve everything above the base address */
 static void __init fadump_reserve_crash_area(u64 base)
 {
-	struct memblock_region *reg;
-	u64 mstart, msize;
-
-	for_each_memblock(memory, reg) {
-		mstart = reg->base;
-		msize  = reg->size;
-
-		if ((mstart + msize) < base)
-			continue;
-
-		if (mstart < base) {
-			msize -= (base - mstart);
-			mstart = base;
-		}
-
-		pr_info("Reserving %lluMB of memory at %#016llx for preserving crash data",
-			(msize >> 20), mstart);
-		memblock_reserve(mstart, msize);
-	}
+	memblock_reserve(base, memblock_end_of_DRAM() - base);
 }
 
 unsigned long __init arch_reserved_kernel_pages(void)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728051153.1590-7-rppt%40kernel.org.
