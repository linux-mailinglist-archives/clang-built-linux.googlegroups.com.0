Return-Path: <clang-built-linux+bncBC2ORX645YPRBI4YRDXAKGQEQQYM64Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF21F0A82
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:20 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id o185sf19948093ila.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998179; cv=pass;
        d=google.com; s=arc-20160816;
        b=Abcunqq/UqNHUJBGkM4ZHTI32h+1IPbnztfnD26nUr8nN25LNviEZhPHSd4hiEKoSq
         NF17ylBXOotUpCd4FkrTR1gUPhwYeU4r3t3BcX5Zfw+rrcdHpESXhZ7E53yu2PO34QgK
         fCepUHH0MANZG2hUzPnBmY+1Jajub3dmv0njRIPOKZDSbPeo9ALYwaKoERlYigrfUugv
         ULOBV9o3inKzqbwAeO/nkQRNOqoZeFTxbJRIAEWaJaMbtVtRkwny0ebyxnBpgL+e03i8
         pHNzFj6Rb8GgC/3dNGsBGJV74t+o8zz8vl6JRL+CtGWGHI1UQFBGbiogowUTlohWuM/B
         fq7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qpO8f1Qnb/k6ghntahWYHOSTlhse/iADu1jV1wQ1IjU=;
        b=eAyeTDlkYGQxB1YZmvvGxP6AJgTNb607X9c3JViNleaCkK8z6POZvQ933oWL1FiHZ3
         BQ76CHVmzAyMZMR/FyZBcoKbubPaMpTJwhcv9+MF05d4b416SwToclmAL13KeTn2/c0V
         9FMh0b2wDfzbHZT7dPm7woVcK41rinX6CfMKLRSGzngaL1vMyT46dLLOsRUbHIJqnJr/
         qC9Kqm4WABOEtiVaA1DndcXfzPWjAHvsYBK8E4comO/FJm9RcBr3dV11C54PY7LH0N4l
         BPcoPkNqv6PBKeX+XnWsJQFC2hkstgkw5X3Nbxy6jTAliU6mvXONo3+CtT6P1H8BBzHV
         7fxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LjxE0fDU;
       spf=pass (google.com: domain of 3igzcxqwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IgzCXQwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpO8f1Qnb/k6ghntahWYHOSTlhse/iADu1jV1wQ1IjU=;
        b=TEJtsp1lP4XcScSuBnxaxMgACUVVVOWRuNxw4u9Dfb+xCGVDQw1L/9k4ZOQeRSSy3D
         f8nsNuq1NXJ0JBI6fmFk1FZ51PdO/GdX9apFuw0G1hi/SoPEQzj1f3cRUwQcY7MVGigO
         VR+Ef7ay0u7ElIPUn1HQlP3MxPhOLGpMZSxd081d6Q+yM7wqutgu+pwe4ymuHxjTof1H
         P6l15Jh/piwdJFuMDaf/hIIJ9MvuhXl1LVCFuZhefWdj+zVl5U9D1lfwgsosnJDIEUQy
         4ON1YYgUzcBHkSXV6are5Jrj+2wNAj8plUEWBaOk9dJXcSEkRuPxYkt9s9KI6kMOzeMI
         KN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpO8f1Qnb/k6ghntahWYHOSTlhse/iADu1jV1wQ1IjU=;
        b=Gc36MSRHIx58ZqhAQUJ8lKGLZTPs21lGKyqocmsLdLE9lXHbEIbpBJTCTLbZjWzS9r
         Dgrt51nBrGI7u4XmJirWXGEQQ4YfIG2n3C2QSmDqhKs7kMHcrOFTGqWaZFXr++9b9q2H
         GtHnroQEf4GzDudkpD/zVb2pL1imSbPMoTIC7lfp1m0j60Bft/1FALZ5PQ6MxTJCNRXb
         jIFExLeXWYUGQnB+TRVNTPc7BFMK5LT17dp53ifUu9io5nrb9I/u1n1Zf3Wm2b5vgGaa
         v5faBhveRSrthBBQHZaieqTzsS08FBbZsebvJiFCnQ7pNW7XrZ18hzwHQkzLekui23AX
         lX5g==
X-Gm-Message-State: APjAAAXfVIUum2EiJNTXeIIgKDxIKv4uEEaDWG/zTxWcnnw1Yg0WCRsB
	KqyCV8QRq7uIzaP0KU1pDkY=
X-Google-Smtp-Source: APXvYqyBD702BoBuTAWJ/ydIg/SNXaVibVQsG21m5VCwJPS/HPkjXiQmU9pZqFr1H6dwRxZACBY5MA==
X-Received: by 2002:a5d:848c:: with SMTP id t12mr3146724iom.5.1572998179257;
        Tue, 05 Nov 2019 15:56:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls99077ili.5.gmail; Tue, 05 Nov
 2019 15:56:18 -0800 (PST)
X-Received: by 2002:a92:ad12:: with SMTP id w18mr20368626ilh.230.1572998178851;
        Tue, 05 Nov 2019 15:56:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998178; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbJ5AOIgqGumr7f0Jl3c8PKm+pYg7ss33h9reV8KiXmXlognX42lHHamcfCEdFwIfr
         gnK7y7ML4okK1LbgWD50BBW/3pdA3ipT+EJpryL6xx1xDIoC5Eecqcj/DdzjPaW6bp+W
         kGtF6QfYyZmtwYvGFarCRfm/9/9JPRylgibu6YGZfojfWb0y38DP19+wY0PTZa+8zb8T
         nqX5OmkOdzGRyp5cIT+HjH5Kdm3c1y4pOMwF//T7oqVRaAwruYhk2qt8EDt5yctSb2UL
         PfWw0QjF3npwH1gyv+0x6T1dj1aSR/BvN0qzNMLJqBvIZL8nOL1COa3/ZgqLuSBe4Orz
         4hSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=g+FZBFl4/jtEHUrecvJjSJDyfo/JMaY/R05FvQww7Ew=;
        b=bI2vMmFrWYO4ovIFLJDr6WaQ3DQbLEodkZvD4J0LG+8qFsXoHGt0H93FR4MMQCZxJR
         9A9++eKrWf2PnmCDwe3qcCE865YAM4aGoUCtxb5We4nWXCR+iWigLaVUffoCFM/6CPJ3
         QzSfGJKv20/Jod/2wHk6FUaBcP1AdjgX0I+BgvQqMjXBUlVFWOHSYZ3DE/hivPq/dmOd
         cQped1wkidAq6Y8w6qVB8fYFvEsRL200Vp5NElLhjFFiTRaj9iW4J7jGkjXFKzPUl+7E
         EPJX1IEIJ/wXxt8q9I29z/J9xFvYBPh+dJkBhxR9MXtIwLPPtm7CfH4w0SI4H3ENb1nn
         y9Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LjxE0fDU;
       spf=pass (google.com: domain of 3igzcxqwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IgzCXQwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id z78si1504603ilj.5.2019.11.05.15.56.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:18 -0800 (PST)
Received-SPF: pass (google.com: domain of 3igzcxqwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id h12so16349642pgd.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:18 -0800 (PST)
X-Received: by 2002:a63:6cf:: with SMTP id 198mr39116524pgg.259.1572998178011;
 Tue, 05 Nov 2019 15:56:18 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:55 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 01/14] arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LjxE0fDU;       spf=pass
 (google.com: domain of 3igzcxqwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IgzCXQwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
will result in a conflict when x18 is reserved. Use x16 and x17 instead
where needed.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..fdabf40a83c8 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
 	/* We're the boot CPU. Wait for the others to catch up */
 	sevl
 1:	wfe
-	ldaxr	w18, [flag_ptr]
-	eor	w18, w18, num_cpus
-	cbnz	w18, 1b
+	ldaxr	w17, [flag_ptr]
+	eor	w17, w17, num_cpus
+	cbnz	w17, 1b
 
 	/* We need to walk swapper, so turn off the MMU. */
 	pre_disable_mmu_workaround
-	mrs	x18, sctlr_el1
-	bic	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	bic	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/* Everybody is enjoying the idmap, so we can rewrite swapper. */
@@ -281,9 +281,9 @@ skip_pgd:
 	isb
 
 	/* We're done: fire up the MMU again */
-	mrs	x18, sctlr_el1
-	orr	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	orr	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/*
@@ -353,46 +353,47 @@ skip_pte:
 	b.ne	do_pte
 	b	next_pmd
 
+	.unreq	cpu
+	.unreq	num_cpus
+	.unreq	swapper_pa
+	.unreq	cur_pgdp
+	.unreq	end_pgdp
+	.unreq	pgd
+	.unreq	cur_pudp
+	.unreq	end_pudp
+	.unreq	pud
+	.unreq	cur_pmdp
+	.unreq	end_pmdp
+	.unreq	pmd
+	.unreq	cur_ptep
+	.unreq	end_ptep
+	.unreq	pte
+
 	/* Secondary CPUs end up here */
 __idmap_kpti_secondary:
 	/* Uninstall swapper before surgery begins */
-	__idmap_cpu_set_reserved_ttbr1 x18, x17
+	__idmap_cpu_set_reserved_ttbr1 x16, x17
 
 	/* Increment the flag to let the boot CPU we're ready */
-1:	ldxr	w18, [flag_ptr]
-	add	w18, w18, #1
-	stxr	w17, w18, [flag_ptr]
+1:	ldxr	w16, [flag_ptr]
+	add	w16, w16, #1
+	stxr	w17, w16, [flag_ptr]
 	cbnz	w17, 1b
 
 	/* Wait for the boot CPU to finish messing around with swapper */
 	sevl
 1:	wfe
-	ldxr	w18, [flag_ptr]
-	cbnz	w18, 1b
+	ldxr	w16, [flag_ptr]
+	cbnz	w16, 1b
 
 	/* All done, act like nothing happened */
-	offset_ttbr1 swapper_ttb, x18
+	offset_ttbr1 swapper_ttb, x16
 	msr	ttbr1_el1, swapper_ttb
 	isb
 	ret
 
-	.unreq	cpu
-	.unreq	num_cpus
-	.unreq	swapper_pa
 	.unreq	swapper_ttb
 	.unreq	flag_ptr
-	.unreq	cur_pgdp
-	.unreq	end_pgdp
-	.unreq	pgd
-	.unreq	cur_pudp
-	.unreq	end_pudp
-	.unreq	pud
-	.unreq	cur_pmdp
-	.unreq	end_pmdp
-	.unreq	pmd
-	.unreq	cur_ptep
-	.unreq	end_ptep
-	.unreq	pte
 ENDPROC(idmap_kpti_install_ng_mappings)
 	.popsection
 #endif
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-2-samitolvanen%40google.com.
