Return-Path: <clang-built-linux+bncBC2ORX645YPRBCGIU7WQKGQEH74N5DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0701EDCA66
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:10:51 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id g25sf3491668oiy.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:10:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415048; cv=pass;
        d=google.com; s=arc-20160816;
        b=MSy4JHMHqx5mqyefYL6kZObDEtOdxWkFK7/MfF6KKOpu4NCsk3FSo/9lG8U+YuDLMa
         ZSiUz55NaHv8PQv8od9rEz8VNabbp7cVGmLfeS5LlTedkj0d4tlrfY3fSAa7xkTRdh4S
         UBhzjQiG/PRC2+iEBtoheoDBEUcuQXw2ep3PY/2wgm9xofGy4BELtff7WELnTZGxfH82
         HIbTmqmN1P4s6z7wDvKDloVrL8pigkYc8wdiL5/twrBFJ/PHp4jLyHLOlXGILXWpiXHG
         90P+/2T8ZqcbDrM6bKvmO7RakZaZX6aQ/7Z6Rf5PE/YZYDepbCOAayKfV4hPtJTuRzjs
         AWsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4IFbj7enW7+8F611Ce5o91Afw9zXfBp9Om2JSyzmONs=;
        b=oH7gQZpyGenBzEvra9b7rYfVN1phJ8hHS737sFjMIopHmaWCDLme+wPwIN7p2sjXya
         UGuuQD3wae2J0fPQ0DHpYLEj7VoowX1Gkn/ylMNfhZtP+VSi3cWF4re8ijlUAKIJfLgI
         fWFeiTGQll+v51rHHTYGeUfuft0KD816IbC6ZRlvufvaR2xRbcRbnUeRYrf+aCHVMy28
         rqLA0hh7VDDOxLvh8xLczjH1TYyPg+J1MOtDCMaIqE/jSuNQyPRQsCgPqPWZziKE+mgK
         unvZSRKVjaLXEdCTpM8kQ8XCcDJ9AtpfjOPRBkFu4Ds/jyY58SwGnp80G6ngDbFXkXqC
         p/yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gMmfpLUm;
       spf=pass (google.com: domain of 3b-spxqwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3B-SpXQwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4IFbj7enW7+8F611Ce5o91Afw9zXfBp9Om2JSyzmONs=;
        b=fYYIBiHCe4jd5KhRByuOk9gVzI2AsHy80nny3C6bQzNXPPTjjGA79znEv8e93jtTc1
         IK+lMHknb/AdT4dfcrZoS40QcDdrUOAX7dcKWTPOiJzS95zM+XcqiPHLiDWCg088Ea3l
         PjoQPanR8UTCW2Y34Gjq28voRI1CsI6eWKVWjQ2LWrQLxxQRjq9YzK0AIl2N9sfCzvs3
         ChAzdvNFbvxY5nLKJPXswuuvA6ZgUPlDEpJP5dN4eiJb4S3f+igzkkmfruWgr2qodRoX
         neUlnHpTN0TmTDiegj5UBIQfNBjUwXcj5qhUn9BI7ikhrm1nNdeDhv0tNC96kQcA1nwa
         bIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4IFbj7enW7+8F611Ce5o91Afw9zXfBp9Om2JSyzmONs=;
        b=Q5kITj1lKhFeE7rq93zjiH2cYTVnOPbYWWiL18nR1VzwJTViXXWoZTGgo6j9kcVwGk
         x5GLVQQheHTmEuQBhdXOU5WP5jaOFLGLbtQ01+B0PSiNqzhzNrnprihwZSUIaYGin8Fy
         nLndMQrHXPvrosaSJYLUUl2d4gshO+fSisDq6dar4CFlBKIylx26X5n3tWLaM9JsGBw7
         cHJlBFCUx36LyRxGc862y9R61fvt9qCCaidKBqBOH7eMV4cRAHYT2v6/ER4Ch5vjcr7E
         Xk02GKJwvE+8Lt3teM7ph/rA5KKnw2kMTB2uqzlCa0ADclBCsE6JbbkYpaIgZVRJEZ8b
         WdZg==
X-Gm-Message-State: APjAAAX9BS/TxPqMAzf1SgWZAk3g66BqjMDuSaumFuvSbW4tgM4/+u2G
	SJFG8KOGYbatMFKwIVkQC1s=
X-Google-Smtp-Source: APXvYqxOgnKu1WAUP7/B/U+2bj0Ml/W2vorSdPZ8CVUMjSydGjHcVQj/ab0AzxhcFBxBz2+xIP//rA==
X-Received: by 2002:aca:4fd8:: with SMTP id d207mr9052872oib.33.1571415048627;
        Fri, 18 Oct 2019 09:10:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed43:: with SMTP id l64ls1113761oih.3.gmail; Fri, 18 Oct
 2019 09:10:48 -0700 (PDT)
X-Received: by 2002:aca:f1d7:: with SMTP id p206mr8890403oih.97.1571415048215;
        Fri, 18 Oct 2019 09:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415048; cv=none;
        d=google.com; s=arc-20160816;
        b=pFzJBVuriYgyfMC6YDVSPSrcs3P00uQ/jj+G8zieuncmhECqzNiW2Xr4eNGEtjTBnK
         ZZPIo3QmM7g3hFcVKZiS6ntO+GNhvIZDjK26rZ9vyE+AMJvk7n/JtY2sVn2BpGQoX2G1
         E4a6sesYOwDdKVRsARMZAl/s9OnwE4M2mQJx+fBrGYOGKej2j49NlHxgUDQ3mcRyniut
         turU+Z20wO2iBB8HYOnaFxAPAbktFllbpfFIHj6jl768Gy+VsNbaPRB59zY90IMzqn3Z
         4DZ1HrBBC8rEJ0OX5beSbFWXZWlbamxTtP2/0He2Hum1E1A7Q+/ymcr+26xjjupkMuHM
         /xng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=fOGiRQkTcafFw3kdPLJfkScWMPKQ55OPiVpVgBq1L2Y=;
        b=voKO8WUJrxoWd58im1uhO84gDuHkkoiqgvYWyI/dHr1tsdKrvcYX/se0boWPq/QfFA
         59bnu3jGq6MxYiZxKHeYZ+2Z03qZ8dcZ5TZQNMSjWnFUIv3oynUpwSJJ1zNUgtRdXeiq
         r0s29hhWvZiN65+JhP3AMXXNGyfw0w424qgJHNEDbCCHasM+88DL5OdtLECCDqVQP4l/
         Yi0K61no0ujyXFATmJu+DEbOxfif3tbLggXPiZHYHyA4J4hdwNOPvbtUSlE4Mpgo5Ze1
         gkhxnv5Z0Xg2kr7tcNjq6rWJy+qlJEfpxwxYbojJE+SbZ9pqDMhPfdbO+e2dQuu3e1gW
         k8Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gMmfpLUm;
       spf=pass (google.com: domain of 3b-spxqwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3B-SpXQwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c136si444392oib.4.2019.10.18.09.10.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:10:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3b-spxqwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 194so4983243pfu.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:10:48 -0700 (PDT)
X-Received: by 2002:a63:3c5a:: with SMTP id i26mr10727727pgn.207.1571415047168;
 Fri, 18 Oct 2019 09:10:47 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:16 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 01/18] arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gMmfpLUm;       spf=pass
 (google.com: domain of 3b-spxqwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3B-SpXQwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-2-samitolvanen%40google.com.
