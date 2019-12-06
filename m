Return-Path: <clang-built-linux+bncBC2ORX645YPRBJ5FVPXQKGQE4XXA5CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E23661158F3
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:00 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id d1sf5838701ioe.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670439; cv=pass;
        d=google.com; s=arc-20160816;
        b=meCnvgKKM6Pkgz50SgvKM3SmxeaSXYppIyqcAfmTK6ShIJLjHUbqUyofxdAaPmxOi2
         X/BNTnhv0HuOVjajWkkwYmtw0DRAiHfBTzbtzYbiJTKWVxKb1E1gLk/Dz5+goqCtfGSi
         6fuhcy3DMRXObXM6ZRSdOrmYr3VuCgPpohmYF31nI01HdxGrKBjx+s24vuhhxcpETuxb
         xbT9p+cjcclN0aUwSOuWHdE7J6xbrjBD6iHVvAkBlg8HRmfEsN0QtztP74ucO/88bv1P
         I/dy2TKFF+lpXAUY8rRKlN1JuLUH/5hn2BDKP3JgczuxTAFn2Pid35gLKriWhjn6GtH1
         6F9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=l1GK+8T3O8GrviLufeFBzTyjc57K3U6nPIzC3umA534=;
        b=OtWfScsV8ytnCzXgkK4rRWDS4nXzthbu+Q8OimTtR+wjlwM3N/fDDS0MwgJRA0lgm9
         OUzXqvzAYqovRzk7Y+oeA1+Pnw2LORiLkV7oqeKqnGgJ1cCHz6eQC5bVVVyLer1PrmvJ
         X0jMaPaBVraW4rgKBMgHN+0qYdcTSoqqCS2pEc6mnnzTI0W+qQugdVxEJQIPvQFFaHR9
         XgIW6A3kiPbqYCkdbujh+TyJprwKlehf6Jud8sJmGvcYY0dVGRu82Q/a7SXEUmSa32BG
         pNYqGkF1BwQtfeAr19BRq9BidMkYoPHCziKDcum+l1C182xDVGZnPiCytkY26x3b7WZW
         ZYfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sql0AUQx;
       spf=pass (google.com: domain of 3ptlqxqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ptLqXQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1GK+8T3O8GrviLufeFBzTyjc57K3U6nPIzC3umA534=;
        b=eyvzENda4s2x0FhqjyILywrn9oNyrBazqfEduP34eduTtSfvQC7GzEGzIAhDCM0P3/
         eIkxytQSMOQmNhXto++Ho304gdrPmRbY4LQLDeMPlW6pMlVIT9pRpsRPGOvqhscPd3hf
         zCrxBMaswEL/MDQHqbZDFbE0ijE9FrIVTj+uYC4mBmnHo+ao2eMF+F5kzwvUKpjVKQmo
         XcwrQMzyCeIwqydMmy0JjqsQE8bVqjN+XEaZlog19a/LwiTYCbU5B2iR4yPRIR6GSYWi
         V5YBgfWJljlNPA5PoAYajYuUp6lRcDYPgDLQSZD3XTsVmrW6vHdbEzOBIQPK+m/7nk5m
         i3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1GK+8T3O8GrviLufeFBzTyjc57K3U6nPIzC3umA534=;
        b=nUqchL0ubqKC553eAJc76ASVQpSaU3birkq21AF8BIuzXs8lA0FT+zM+tWjuz26OBu
         0MP5H3U+Lv5fQuNp42zPgkU7Lv4oqrww4CDlydkSMzdAeNTshYT81ee4/HRJs/ZHaduT
         qSv/DF3A1K8l/81yGNFahajWRwpkLyzFBRpqietxfDpcjmYQIycQhBuJoGfbtV61xfXT
         nC2vid36w/lFw8x7LcdEvyIRV1BA2In1zKLIky14zL6oEuFv5Rus77EOGPkSWJCkQNrT
         jjSj46bQNNTVQn7eILSmUbLqfCWQDwj5jbVL0KLrTW5Eq6WMvHcF9OEQj9+DX9VTzTHM
         ACeQ==
X-Gm-Message-State: APjAAAUegnH21iLU/qnMw+s1F83sgjM3dLuFgmim0WDkJYJ09wpr+4Xe
	clYzUk3PLrhA/Bacopu8YF0=
X-Google-Smtp-Source: APXvYqxnGGQ8ZinCNcJdB7wki5hJ3B3FT8L0/oR0ssoVtekIJV4/YBfzcgz3IeUxRMj53nokkSgZ2Q==
X-Received: by 2002:a6b:c84b:: with SMTP id y72mr11920986iof.87.1575670439564;
        Fri, 06 Dec 2019 14:13:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3c19:: with SMTP id j25ls1361981ila.12.gmail; Fri, 06
 Dec 2019 14:13:59 -0800 (PST)
X-Received: by 2002:a92:5bdd:: with SMTP id c90mr17617031ilg.78.1575670439155;
        Fri, 06 Dec 2019 14:13:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670439; cv=none;
        d=google.com; s=arc-20160816;
        b=vIIJcg/DwRGB5vLL7ibiGrOPFiWUDzdrtfkZSebQNb3/rIpJrlBDk0R2tdCDdSc+zl
         etqOORb+CFFrgEXz5aBJOahw/nqYGF6DcFze50MpXpgJL1+IlBbCmvmhfY1cuTMX+aHq
         41GhJ5d72LNTshTW8Z4OpHwIeKttSfW3+B6D7eapAUVAyNWsO8KdOssWmUe0q042Lriy
         laAAify8NmbmmFsWGfapRLhJjbRm98NGN8KKaE9vDZirFI2cbTXW/vclEHZ8X25oxkIi
         CJUXLeOOad5sN75Gehgy08cuIEcfnkHwVxRxWo2IXt7Fh3VmkzL97hN1KJE7ag5FcbNF
         Wqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Y+PZLTAB8cI7c6J3sLNCtDVk2nPLg4lB7Nz2OXbvgbI=;
        b=rHJuHTru98lJ2XFdGh6u+vU6d3F5cJUmqgAHmIJysW4F7ATSZyV+3zNM/21stCe1dn
         964jt3E8RQ2whmEGx2u/96SMQ12ED61HlZMPJOLbD0pOSd5e0rOsesh71caKEsJL97Pv
         noRczKXGTGa7E9atn7+pU9VVe1fNyKTNcHAaffy7q8+JLAFJa3QDGefnQXeXlxEZs98C
         pwxRNtbLm4UTVtsfxkf2ZYnMcm33LMzmuXsukNC4+lk7+SXryqppPcJLgtq+xxV5g+rA
         OwEGjXHl1EA+c0pZYSNVG1YRIfGhrr4acwCJEZ+CyUSFH9ILdO36rhXwz0ztA+j6iXxE
         mVlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sql0AUQx;
       spf=pass (google.com: domain of 3ptlqxqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ptLqXQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id k25si674102iog.5.2019.12.06.14.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:13:59 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ptlqxqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id u14so4536735pgq.16
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:13:59 -0800 (PST)
X-Received: by 2002:a63:de4a:: with SMTP id y10mr5991658pgi.367.1575670438461;
 Fri, 06 Dec 2019 14:13:58 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:37 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 01/15] arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sql0AUQx;       spf=pass
 (google.com: domain of 3ptlqxqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ptLqXQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-2-samitolvanen%40google.com.
