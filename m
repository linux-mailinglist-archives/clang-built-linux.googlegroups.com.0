Return-Path: <clang-built-linux+bncBC2ORX645YPRBF5A5TWQKGQEX5DCSEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2B9EB52C
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:20 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id a1sf1758489ilh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540439; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJE7VPnyXJAZxISIXVRTJIoHyLho1VZiS6oPM7hJHEiGCTFCDLv9SU+c2SiP4fPbBm
         KUqnEpp7BlBg/KI/IetIPabwI/jh1JzzojDndaDPkHjBHmQ9SSRu2bjl+S2EmJTvxu2L
         mbcpvqm69Dda6xtUFITPuxKBmUz8Pw5l3ypiYJDI96ZGKw5oB2ZOYFcxIex9XWzb6YPA
         xlveVog45K4djnx5F4f15Dgesk7IUZV7dL8Cgt0If7X77UJXFmoldqIH0Br9Th6MVxrm
         ZNzKfIfW5o3iJDMJjvU29JoKqO0SfNs86vLD6tr1D8upS2RyufRa5b+FA7GEVZkkT/1b
         9FDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=h9donPscQbSkk1KU4TScstOPmvWm9AEB3wKDmYwVVeM=;
        b=Yx+wUiYxf6jZHMxgA9lqRiTcWcuOKC/P3idvYliecQzxST+pM7uTlEFESKTpa8w9MR
         9/xYztKdxUPIGwOCTl0Oqxn5/FWaSyxmODc7/beDevlE8khzZdQMx4HTGRBpzgRSey62
         sikUdi+Z7k9H69hLhlaHGfUVB99bssjfbwrsxLTipBdhY5Evg3gWfpCMP1r3W8gsmiJx
         fgtN5zsA0SH+T2NwPQsMxpXSf0qDKg69eEN8ZNDF+x3WdEGl0toiTaO731UySu11CNqz
         UVmtYLP7fzpm7wNKkoN2+C+1XrvItYcNaDIJgF8vfu1awtBrbGDeyGbD+NhWN/OuiO7I
         YwXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M2bQgEs0;
       spf=pass (google.com: domain of 3fhc7xqwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FhC7XQwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9donPscQbSkk1KU4TScstOPmvWm9AEB3wKDmYwVVeM=;
        b=OQlGu3zFoyibodx2AZmeGczg/brNVXAoqxR/MWD4vG4HJ6sQimMb9jYT0eCYbkNvHe
         kX7dHKDwlmmqaMZpCNIIVfAG+anB3kJCLd0j1zyNXasZFK7y4nRLiStY9c0/NKlrDvGZ
         BmfxLyRTEdolP796DOgriyiLWwdL1U79/hKiL30spICtcHWbFAJnDk0xv2ysHgC+qeV0
         56vu7qaowVokQQyJvvVfFe/EGGUQ86gDRUlTLRPUKzZLS0MWddkPTK2248d9owOCRFmz
         OO/Zz+zEYnX4g9jnp/anXa3PkrJD1NBExfJrK5835Url7M4TG0+Tj0vtdz4IiAt+axgl
         j3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9donPscQbSkk1KU4TScstOPmvWm9AEB3wKDmYwVVeM=;
        b=tsAgi4jIo9LxEyxoqWKMDN64AgDtsZsGV0fZj2hNI5e4In4TyFZGhalg8JiFBkfXEM
         d8xBvQZhKBPklHw2MymE0hQY59BX5irAOD9b0KD2up1PQWvmwVTdJ9I8Oz2Mw1L5A+2Q
         9uz8QY0yWZrwNNZ5xDPj4ZIHbZ3N00roZeKFY6qn6f8UAVJFJ/5z7Inh7w1swXzdboFj
         QphAybzOSU0EdNJDm6x36HlMiEGnzGJA6av/bFHfFgw2uM58YCKBbdYaaqyZPYVL8vQw
         dPkFbZXE1WmNTTfmA+apT58RZnOYiOdhx9jR7oTEbdsvDnkkJlxTG//63DvTSzwzIdbh
         uhNw==
X-Gm-Message-State: APjAAAV2LL0GX12370bNj2c5mtvh/4on6DOxIOajdzobGP9KVQMSRyC1
	wNdCmddDXGnLShVwFdLwESM=
X-Google-Smtp-Source: APXvYqwW6uAM9uzuUiFfkZWVNRavI3fC+HbZp2A0UcSmW/iST5tMVng2OnPD+HysRKbA/EHWQhoTAA==
X-Received: by 2002:a92:9198:: with SMTP id e24mr7055599ill.184.1572540439374;
        Thu, 31 Oct 2019 09:47:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:606b:: with SMTP id d43ls279520jaf.6.gmail; Thu, 31 Oct
 2019 09:47:19 -0700 (PDT)
X-Received: by 2002:a05:6638:68f:: with SMTP id i15mr1134035jab.37.1572540439015;
        Thu, 31 Oct 2019 09:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540439; cv=none;
        d=google.com; s=arc-20160816;
        b=L1LgZxyPWDiAKNEUsoetlEG3o8xQPyIIVy7IV4RLvz7Bm0MpIKyNmPSNii/aeVMvd+
         LVipStqCZbJAtLdUfmfhIPf8jpPBtLga/ejD3MU3TBNLycvSNEObnBirPtxN4BB9NrZZ
         imfpIFboM5NXchRochnfNCK+LLCpUpQXws637sz2s9hgTr0+/wE8FibDNwA0kq1gqrUP
         NzVcb4CItsplzT4XLFeSyMgfVh6fa+8ENwLcP8rncHBGxCJhefO3ddh5stG2W06b4eaE
         ZJdlhsT4Z/CTnLIY0NeMVKDQby0XsPDEJ/xZNO1LQEfbp+poRu8qaigFi06IQQnN1UqS
         Z2oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
        b=vCv2r/HlR7KVnFviDgEiZi8dqnKWmBoM5UoALkUzBiZ6XOjZH4ebMvvp+4xXD/2zjh
         MiUQGoRHNzB8dwrlaZ+jKOzFG6+u+7LEYmkSzTFSJ7/TW7wPQIxTq/KcPiHCQ0/VFw8q
         GErAMnKn06F88d71e686w/lPK5oje5cl+iFrAaupN6tTezUq+yBj23XXDI74CdmQggk6
         X9IPFm1HAJICHZfDQaBLEr/eAuBuTlt239GoT7WKtsV2LNMcBsvW8XW3NNAp9lDYnc1m
         j47wyxZ2+qgCY86N1jy2MNKyUskuhGKlSgvkLMjQZq8FEHKH+e5J2GvgE5do5tLa1sx5
         17Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M2bQgEs0;
       spf=pass (google.com: domain of 3fhc7xqwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FhC7XQwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id f5si297681iof.4.2019.10.31.09.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fhc7xqwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id m185so4998335pfb.11
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:18 -0700 (PDT)
X-Received: by 2002:a63:d0d:: with SMTP id c13mr7797535pgl.138.1572540438115;
 Thu, 31 Oct 2019 09:47:18 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:33 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
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
 header.i=@google.com header.s=20161025 header.b=M2bQgEs0;       spf=pass
 (google.com: domain of 3fhc7xqwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3FhC7XQwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/suspend.h | 2 +-
 arch/arm64/mm/proc.S             | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..0e7c353c9dfd 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-14-samitolvanen%40google.com.
