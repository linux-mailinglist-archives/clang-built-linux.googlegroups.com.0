Return-Path: <clang-built-linux+bncBC2ORX645YPRB5475TWQKGQEXQGPMPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DA1EB511
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:48 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id m83sf6290198qke.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540407; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZRVotujv4wXGz4ipeaZZL3/9W+u7z9pbaPZWNujEXQNt2tRx3zUNYLksLcHwLIUuw
         YUEEhWtoJokJLo2/VwzB4uhWY5peC+Yk6mexE/2P7gCR56dcptbNsCpHp5zQ2vFHuvyA
         6VMAtPeJ6u7sNmAloFS8h7++hHBBCAvFGoZBuZ6okQmhWUZbnFuQP4n/+DcsV56cAta4
         WNXjNZjDcGTMHaYY5tMObMzG/DVDLGsImtznIyIl4nzUiPbOHsQUGya4r3+s7bRSxaxV
         AATIWaMjq+orNFd0wFZh8+9MeH0n5m6AZSS026tOhpb/k4nOdLKu/43qGcxkjb0HQg8t
         JVEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OqAP/0pwJ6TwUpsLASCIUzIJtJU24ayeFTHfgakoJIE=;
        b=MhVhhWAiE80LcP7u93sGLSGjug/O0mqfRAHTVIMU07QVVHrjAsN5zB8dje9ipdXkn9
         /v5MgLmzCutJpasn5GLPov5O7fXTmQbVVVXsZJfxjem4jlgV/JE+ISPIT4zEDqOVqtDL
         RY/dQwDhBiqHZFWnzJ7V8DqaL+ihanDsapX+x8jbfqgJbjDupantENfN3ujimmTuaZ+o
         dAVMlsquWkC2vOJKWCTM1mtUGhx0BTcPSWMVMqImod0HcYCv8WqCSTx1amvwbYI2WmTR
         pbXhh9whJGckpU5al7JuyJ2BOX5lADWUUcBTmsri21zHTw2fZNsaIzzQ43KVP7Y5vleX
         vDIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kscd/Ryy";
       spf=pass (google.com: domain of 39g-7xqwkapupxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39g-7XQwKAPUpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OqAP/0pwJ6TwUpsLASCIUzIJtJU24ayeFTHfgakoJIE=;
        b=SApB0THAXZPLLgz5E0wH6jHAUasIvSFfcuqGNcXf40mIQqaBUwhehPlrIscvTTT413
         7Wk1XCrNNzX4yhP7/IibTQs7H8nEA8RiBQgMrH/5SkRIja4gPY0NaRy3elRB1CINrUwe
         85mhk56z0ccoMvyr3OXUvuc83j48kmXH3wkfuWnFH89ZDMt5jeA2I44QQ/OygkRYPX6j
         9VllG8cK5l/ankd9FD2wIbD2c7cnw9E6JnPvFBOjOA3SDPazezTBauWdbSzO/MmHZ2gW
         323hUCWKS7hn/o394ZByOfHpwly6yBgL5vFjbwZF6HJMdwDXPc6GqoYujmP1P2psUOf6
         9ZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OqAP/0pwJ6TwUpsLASCIUzIJtJU24ayeFTHfgakoJIE=;
        b=EOIZOj5LPIo5KxTUSjlzl/LbDKt+Ld89kWzXpWRG5Q2YTvPWs/AOuX3Qsomf6J4aGj
         Gv+wlN4Jek4w6xaRUFNHyqIKzhNBBXia4liRC9I0b75s29gAxYAxCozwZSRUNoeIL1fb
         S+P2t7Xs0555DnuxbGmpUz2/m31EBicQ/jVScEs8Md9Odq0Sd9lgsoqWACMCYD0Tc5Up
         nD4+MsFfaOpvoNnWWcUUWqPrHpzyAho9mkEWgUFZ1ygyKWPlmG2a/tf/j9HsrcniPOkm
         anFyOPtTeo0uC4mC0T/fGTaLJ/Bn80Vwr2Z1yQM3iASmAALV8rcituXgxiH2epZ0bUqB
         +x/A==
X-Gm-Message-State: APjAAAUES08ok7Ulg8kRtwwC/5vqqN4D+IIyDx44wCBPQrbfQC9RMCl0
	LDfWBEFsIP9cQwr9xr3eE58=
X-Google-Smtp-Source: APXvYqwse0QEskJU+H2VE1Elx1JHIGT6M8uh1pgGYoiC3xW1eBv6CDbUmexQc7DNXKdIJcfYnuPeNQ==
X-Received: by 2002:a37:6208:: with SMTP id w8mr1741370qkb.446.1572540407459;
        Thu, 31 Oct 2019 09:46:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls1136854qkn.0.gmail; Thu, 31
 Oct 2019 09:46:47 -0700 (PDT)
X-Received: by 2002:a37:7007:: with SMTP id l7mr6181339qkc.353.1572540407023;
        Thu, 31 Oct 2019 09:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540407; cv=none;
        d=google.com; s=arc-20160816;
        b=BMNGi4vVwTp0ShktDc30ts+wWrYFb1N7xQOTAk1ph6yczd02/1J8vQ1JOxlOZSHgMV
         MU7TL+QiZBaFupXV50Oiodv1PWAdgDRzi5qU1OM2DjA9QL3revoZcm4DMb5Px49yiTbj
         EQn4N06qDJPIdvvGiaJ5Bb1QVvfoApI026q9h6VzFwU0Blg3BtS4g+iZWu0CTEDBVTiy
         oBNhWhcT51wZX9jmAzj+DWcVLkzrcmz13+H9rwYWwbab9l1XF1yvj3o3UXPfexLn3ckw
         nnVLsLl0Wog7uXPpOb9x/9v4RsKjlUMU9W/rLTMs28yo5f+O62KKQtB1fkYW6LEHv0tp
         n8yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=m8czdyKZmnHleycOU1GN1JDqnDhqDwUuQ2BzB2+NnLE=;
        b=JuDOJY7C7JbjomvktjwbDn95KMfwqldvQXXXiNKlwHcnYIK2mk8NSC7xBbL6yEk0q5
         ED6aL4mQPI9p4egI09sasCcEuhIP4VWKgScMqIaZqOnXtRxC1d52cmASkpVS/xarVBYd
         bNECGzvtxnvNZMxe8ECDNfAhbPgDj3rvhB23IaB75deZkxLMK8YzT/A9O0m7XPP6GzQx
         qM7Cw2+QLmRokivDMd8GqdkHoEFpScWg+urNDRJBn701HUGIuEIDD1cZDVoS4HvwPbKq
         QCZDSgJKaUhrmrMhPOjWz0amUk4/jXcALKk6kOg3xdsXy8ykJs8xwmZvhwg8HyYzBWzx
         B9rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kscd/Ryy";
       spf=pass (google.com: domain of 39g-7xqwkapupxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39g-7XQwKAPUpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id z41si370850qtj.1.2019.10.31.09.46.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39g-7xqwkapupxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a14so4999604pfr.12
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:46 -0700 (PDT)
X-Received: by 2002:a63:4b54:: with SMTP id k20mr7973543pgl.70.1572540406049;
 Thu, 31 Oct 2019 09:46:46 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:21 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 01/17] arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kscd/Ryy";       spf=pass
 (google.com: domain of 39g-7xqwkapupxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39g-7XQwKAPUpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-2-samitolvanen%40google.com.
