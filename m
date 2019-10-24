Return-Path: <clang-built-linux+bncBC2ORX645YPRB7GVZDWQKGQE3GKX6RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 76560E3F8B
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:41 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id x20sf80956otk.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957500; cv=pass;
        d=google.com; s=arc-20160816;
        b=zPKe+KusMUcRkDD/wge5HZwQi/zA/5SSRwRXWOpEB1YwFDJOvKU+ieCPEsoKK+Z1Xr
         +PlEBjBIInFqsZQHrfKV0rJmbwAuF7ot4jqeTjGbLRtEV5sCng7OZJL/gJ46FqwYWYPA
         d3zEKot4R+4JTwiS6XBzmRgsiI0bmLU5kSCZl3mv4esyhPkEQC7YHRsFTZRvAqFIPSzG
         etAaogbE5kB2h6cecxRr/CA2LVva/phEQ3Y4Z6aIwDLpC9WDkct7I7MfFtZINdgOZ+HR
         f0cPDg+3E1NKD8us1B1J19rHNaNjPsCpPcmluX1b7prpsQAqOBOz9Hsjhlp0MoTR1Tlq
         ksSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=s+en8MkTdejxt89EBARidtsvo1DozT/Q+qAMOKzR8l4=;
        b=zkbD9gjwbg+wG9qhN0KyObvQLZLuZ4LHxvs8vNd1w47/2oltHJoC3Iup8rWivMhwru
         8CyMJzOL/DpggZKTF0c/bA7yod3PXyfA6q0wvB9kRN8aqzmt3MFbsv+Afkd1tVFX35MU
         j3uDax/fBZY9WO3nbNus3l83GTxBhArc5gDOX+kKOvBFIW2IsuXZ+Sp5d4i/skK9/MLi
         prtr0SujHJCOtbsmv7W/5yitNsQ+XFkn84vKHJf+iXoX3yuOSnUE1xMNzfh5JYkm67Zf
         3PhMjt4Y5sr/KMDTq6I8IkMwI5cF60FNAG2z9XJk/0gcdRTUdbCds3wfTbLMdRnMZhUq
         JKTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dp0UmrUQ;
       spf=pass (google.com: domain of 3-iqyxqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3-iqyXQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+en8MkTdejxt89EBARidtsvo1DozT/Q+qAMOKzR8l4=;
        b=pyHA4sOaion4Igq4jtvkqC8hUHa4N8o5N2kWzRVyM3cw2U85QVs+09/CwByGbpW/bE
         ELXN50YyEO+2AmU0dVM7L+8QAwjfHI93y4N9wNn5YAN/W6NQRnRwrO6aX3V4fXTamG/x
         1RXhsKkLSLzG7MWd2qffS4KbzSdMx3VxzpLZ8ZadzNQwXMnX2906t7pvhSY4e+ivoQVV
         uPQMStDsc3MaSdWHmHZZGZdGwypaC36R/1nhQS+HClwpDHOlGXq4IGxFzNgwd6rdKspX
         FKvZsNgpbWHlEjdMjLlM4RlthzELx00yYoyRFLcpBCCQiQPtB/J7ktrXUJXzSeXgll7b
         skIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+en8MkTdejxt89EBARidtsvo1DozT/Q+qAMOKzR8l4=;
        b=GNIntbYPx6tA0jqjQR4u0NklpYZE95yK3CGH38JfXCsrFdFWmjnsyrBDDoyxwUDXSp
         yJ+sFc1SPqauA6KA/AVYxnAKmM5Jrmr0P/f6kqlXW0kvIBQ7zw+oHOdhJDQAGk5IqT7g
         A/Nl2ItK3qO4cupCZSFNb5VkOdA7shf85vh1WEr5+QqdiSjG1B4EKR34rfp8q2Nuxg2G
         YJXWciCZaiErXNkdOHfV+y0WieJHuxW344oGx+R1A+FlYfOIIJDfpaGb3/AtuFTY1pT7
         zFC8xk6bcevTj3c2dHrlMPmw9mt+vl1pqpDuFmSOCkfSP1ZWTPnvCVaeo1Dj0XPuzhIP
         N1cA==
X-Gm-Message-State: APjAAAUhpYGj+ykVWQvZt6eKg+PjZdSQdbtiqLBaPD4Fl91aaHLjKUxE
	Tbk5V7zZlYCSNmVh6P1jLpE=
X-Google-Smtp-Source: APXvYqzPew7uMfCkz0LSB9rOiEr3thGGgXYeaLRNtF9/eiADaoBWV9OK0DvluJtLjVxIqC9Qe7zQJA==
X-Received: by 2002:a9d:7f8d:: with SMTP id t13mr228426otp.27.1571957500366;
        Thu, 24 Oct 2019 15:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5f09:: with SMTP id f9ls2629539oti.13.gmail; Thu, 24 Oct
 2019 15:51:39 -0700 (PDT)
X-Received: by 2002:a9d:7398:: with SMTP id j24mr228338otk.287.1571957499942;
        Thu, 24 Oct 2019 15:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957499; cv=none;
        d=google.com; s=arc-20160816;
        b=shkTSCQ6A2CJjgxcngOiQxGS2S5Wzp3DTf0YEYbIePku298mhEDHnB7fv31N3hNEYj
         jFkunndyqzlMAkdfz2F6Z4MYZciMDAGnCQ4rpJ6jyoR7bj8nZlO439IeGgrV4jH+3c6O
         4z6sidD5Edk2cxdJVESWK9+J7mIdIxwi8esffK93dlS7LpYCpmkzhEDjIxXDU93ZumMX
         RbjKWmjHeK1Utjb4jFtwCqoXg98MHrXMKj+gdanlb0YGrBqOJ1T7SUlwgfIt9eSVfK3c
         TgQWk7ekOBM1dA6gPeYRdUmHqNk0aATcjNeDThku9eLupkjVAoachnXbRs15GXQLa7aJ
         XGmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oYhKasrQ/oDAzwydw84m8gManKQcI9IzSNuMU71leso=;
        b=tSKdcw4EK01vYzrGiWPvpy7mYQMy4fgox7Jmjdy8yjiZjkNoQU68jGJe99WvJugXyj
         cNjTzJ6c00Ee/uo72gLTLH/lUQi7aoWu+2oOw2mBH4lZrl3f9NZ/fV+5UN7rW2VBSm8X
         H+9Z9QqEzvZcWMoHmridOv+qiapZvn9zur9cV0WNHz/n4eVmi1IWfWBJ1hWYMVC2zIfu
         g3nfSbCkfMQ+S8dO6Vq3HlWDsu8HveLgWddyzV7iaQsTrUckTBR6UWH35oSfYeDbljHX
         FzNbf/gAuiQtkF5Y3gb1HM5kXY5mx35iu4lKR61eUH1sup/GDKZF8aORq3/VeLbJQyWp
         i+iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dp0UmrUQ;
       spf=pass (google.com: domain of 3-iqyxqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3-iqyXQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id b11si6505oii.5.2019.10.24.15.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-iqyxqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id u21so312229pfm.22
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:39 -0700 (PDT)
X-Received: by 2002:a63:d25:: with SMTP id c37mr534543pgl.154.1571957498912;
 Thu, 24 Oct 2019 15:51:38 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:16 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 01/17] arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
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
 header.i=@google.com header.s=20161025 header.b=dp0UmrUQ;       spf=pass
 (google.com: domain of 3-iqyxqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3-iqyXQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-2-samitolvanen%40google.com.
