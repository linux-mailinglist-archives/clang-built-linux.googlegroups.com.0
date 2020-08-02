Return-Path: <clang-built-linux+bncBAABBQ6XTP4QKGQE5ZJ6WAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553A2358AD
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 18:37:24 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id m25sf3752542vso.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 09:37:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596386243; cv=pass;
        d=google.com; s=arc-20160816;
        b=yDFZD6MM/yOvouoN697lx4c1vLjlpff/8X5HasOj6biUhOYNDE6urwrjihvLBhJ+0m
         Xl+7hNvNXwsouJh1xU5yMKs5jgnH1m8tJLrU+WCTF+KgQjNQNF9PdxpOyf6W05C7CLeT
         E1rQZJmW7PeoDAKnqfaY49aaz0JJPt5oaGZLSdwWZBudb6zo//caDc3p7GWSZBRgyLA/
         kB2mR+TWLWaYAU+TY0Ip9kUVr5IHUNsZjhJ+9cdJQ6fkJwIT/62CCqqwWfY50wK0y/80
         hsqXPjHOapS6fBABmXb2QIi2hSiGVqFaouQ7G+tfX5rJDBlEgn/vGJfzyGYB5hDoBG6N
         daZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0Bp+l7wLIdDrx8Mldw8KA7Ct6RCua8HDQHnnZ+iaKxY=;
        b=fi4PI0vT4fqRvu6dXgj2lg3hJuGdY+JaPGuo6X5SqTbFaWlgadNitEFH/vK6O+SRWc
         PB745r1OxYWCQlrWzGnSqEslcMCBccx56RRr8djYQZYPxx5630FBp0h1le0bCw6rYN6Q
         ey5E7vttlWKxRJrmTJTezX3CQFN21EhotXI7aWr9SXAdDyll0f3+Xm9xmYCsV27mMWpC
         dUAvXA1cUJ06ClHydtN4yNtC2tWOyW0aAIOL+WyoW5i51guMrsp3BsnFDpiRUWDc4ots
         TevDi7N5wU1nxw2ZhTkEhFB2Ngc2ssA4hm7nXy/v0QlBbpNW+pH1ZSNZjrVpeDa3z0zJ
         3edg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FwMLBSAm;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Bp+l7wLIdDrx8Mldw8KA7Ct6RCua8HDQHnnZ+iaKxY=;
        b=C/EJwGPC9oGDokrmNY7r5ujeMTYHIjQDPKnYnttr+/LOYsWOm31wIQ4cWEQh0o9s7R
         a0Y7rnb6FlM/E94rMqjStxNzmQXsuEquCR6s4u4jrpx5b6fnTHDnORZIWNiYhaKAYxWu
         zqCmBrFCjmcHspUKd1zaYeC1epTGQZPWWbPxqt1C8iWW5JFumVqYtarwXAD4boSEhiMc
         rkjIcWEwzEu0pbsx3t72mAcATBBtQoVex5Z56mYADDJ2Zp43Mjg3iUpAXQTC0Xu4psrN
         9FH5C3tAVICLehUQEkz7HJb8bOJkeHPRc/8yfexKxtpNJuq/nMgHt+mZekr7cM8d5fK0
         LBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Bp+l7wLIdDrx8Mldw8KA7Ct6RCua8HDQHnnZ+iaKxY=;
        b=esNR9dNYGTeN2qrsGrbA29RzKU87mhYkeYXJ1gRLefaCq6XSib45F9MGNqlxgoo29v
         1ZeGmYMpMlZiTTPXJDWdQVolp+E0lTKo4HjCHxXB61nA8Q2VTOtSQo50f4P8RcWrUGk0
         U2xjc559ey0V9WrXyAUU+tUj1GnZSfBl4ybYcEICI8FvBZPVM9ycuHIS1lNAdr+1qmcD
         hnGrNxxcmNP3PZkdC778PEmhUAbhIiB6khEnHtDPfhy8D7Jq4OlGjxa8BeEdqHUEfoVy
         loj+bTnI4GWCqFKHhfl+h5R6QpBBcgsQnruHICdLh74bRrKy2SClpN5qhOw/UjXMcowq
         4GTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xaQg6NtJqF7M4/9WeaiHlGJTHq5rEopeOhNsxhI4XdhQrmaMP
	5+TuVdiVJubLmvHNRiCsz6I=
X-Google-Smtp-Source: ABdhPJx8Ruu0qHUiNp7EIp/CQv/ua6bSvKrrSVLRt4x3IuQ7lsSWXdQnOxKOvRUNj2n2kZv2DaRE1w==
X-Received: by 2002:ab0:222:: with SMTP id 31mr1597684uas.127.1596386243061;
        Sun, 02 Aug 2020 09:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6686:: with SMTP id a128ls98456vkc.0.gmail; Sun, 02 Aug
 2020 09:37:22 -0700 (PDT)
X-Received: by 2002:a1f:5c17:: with SMTP id q23mr8781646vkb.75.1596386242634;
        Sun, 02 Aug 2020 09:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596386242; cv=none;
        d=google.com; s=arc-20160816;
        b=WQK/JjxbrqDdLChhPl4mqcWFlMjtrneDW4/nibBJ7YGXJmIEoUKaRQ2n57ghKTtXEs
         f6YsES3fXr9Nf65g8+cneL4m55Or4QcM4+DC/sNkl4MXP7pV5HlTrAEZrl2408/KUgbv
         wExjXWX7+6eXM5FmSkjjlerWab4K899K7zIAqreGWRIddLvn5MHATVHuxr/762GIrb0m
         Rinfms8b/URLkP4FsIR0FRGapwEPMDsI9a5vVFGhdFhnZus3N/tWYM4ceN37jn3lmqHE
         pxBI/GN0YOU16YrcAQ1avUtU+rPtE8p6ebCzI4Khtq6L6ySuPZxvei9Wzx+Affnj6W3k
         Bchg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Clz9jqKNUXv+X/HA1+cnKmg8P4giP0bEAa6bb8dn+JA=;
        b=nBZr7rBBCGTg68YhXfVY9ztw86clrx6HQ1ao/yUYgYieNdzMIGEWzZqS6ySonGjmRp
         9lT/p9BRn7SUjU4ruv2SYc/Jx27VWUeyCyLUUnhcSK/aAuIg/4HbeGLuOVilQmHfZypk
         HdRa/MJj+lDiNosapOjP+NX1JrNKGXehZAjiEucsl6N261rGiYEI0N31BFYtHDGhgKYp
         NaKcP5X3OmSs+kd/qwxwCXUbNdVuv4zxlK6yEpsne4Xl5yNsyTczfXljnzcHmDwkdSJL
         XjyJwNeeYq+gJ+3YUEMFLCCJYk4HJMxCeyOBcnhw82fxxHM345J/587I61XVNdrjKlGQ
         BGeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FwMLBSAm;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si513299uaq.0.2020.08.02.09.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 09:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5601320829;
	Sun,  2 Aug 2020 16:37:11 +0000 (UTC)
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
Subject: [PATCH v2 06/17] riscv: drop unneeded node initialization
Date: Sun,  2 Aug 2020 19:35:50 +0300
Message-Id: <20200802163601.8189-7-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200802163601.8189-1-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org>
MIME-Version: 1.0
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FwMLBSAm;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802163601.8189-7-rppt%40kernel.org.
