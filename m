Return-Path: <clang-built-linux+bncBC2ORX645YPRBM636LWQKGQEVM3SCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A241ECAF0
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:05 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id c72sf8306566ywb.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646324; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGRl6qHuYMDperggFMsIDIejL3iPa2jgJfatZGsJNzMf5zHahuBK2ZeLn1w8K3Cq3Q
         INIrO8eXU+e/OlW5XeRAY+gt9NTRtykb3z/6dWFDtv08KjxoNf+2OEdoQhKt3awAQh7c
         qA67gEbuEHhCYUeR7VQoGGDCY5Ttkn8PuZYMIlOY8Uyw1ZgIa3ISiyfc/afsVzZECOHh
         lAzYeb2FXUUUgtGNsl0ieqfX+1q34KPlOt2bYz7tlEK6pdwYaPbs1LNRBICtP3hGkQkx
         pXARvFaFN7haSbYy2RT7QLVioJGcextF8iDJ0bwJQWLeam7dLW5shEsZsIYSfIe3VUGR
         Yx0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rT2hMjJf4nzXRdIL2cF1E8NOdklYidAIjSm7jqP3PSc=;
        b=TrxI928vdG33QE97Lp0Nzkp5n18srMbKxcJeDR88vxzYWaXzSYSwbI9jIfmcpZg+k+
         +VfuCgWWOsYUGof0axSCqKlxNWBnXZDQDaa2YcCU3ziiKmLMtHMehjYJf5+f7NcYQUxM
         QKXs1Mz2YAND7Z5pl/WgP/8JvTUudaq72Jt1Uf677oSOGm9RX/S7qThPjjliYr4ZMDKs
         oHKea92VNwIdxUyYJc+6fzEXmhkhoTrCV5QB/7faEpkvaWgqFcahxCmnhZLob94AAmrZ
         A/XQ3Las2mvTNDrxg8xUfh8wF6bM/f4LXNJG4F0EjU/vIblA/upLCb6x5PCLkbjBYij3
         hD5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bzUzyeY2;
       spf=pass (google.com: domain of 3sq28xqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3sq28XQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rT2hMjJf4nzXRdIL2cF1E8NOdklYidAIjSm7jqP3PSc=;
        b=Da39GDBF91StHjnQU/5zqsECCOuBnZVc+jeTDrF+kMi882U+Qz+j0UYdcx24XsBx+/
         BXxTSgIBbHh9Gp/UCWH9vzX25wMzzy2GcAG2uFNNQfT4CC7Xg3BjkCzqYhRy1Q94qdT6
         TQbQDbjVzmzgSTXSlcle5oGvgYpboUdWQL9mQhvSyT831/qxZqh7QfRbftY664q88utb
         coqsbXTfvvWH1fctfGDU/xMj4AqZzSkSqrYo+gtU2iihOlRgMXLsNaonaiL6I+fPyFRA
         E2rMg/tuXl1FyQkd1+HR4xh4GBNipDhWRqfJ2/pLXExU9YwepwCgb6fY5X7sRpz1hc1e
         Sf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rT2hMjJf4nzXRdIL2cF1E8NOdklYidAIjSm7jqP3PSc=;
        b=CjBejGSvuI1ZpukrYtYBm1dVo/7QdmY9gYHqtRfhFKC9o7Eagk0RTPQCz4YFtUEEDK
         28SneC5gJB0Zen9SxJ9yVL+V2Si5JA9pYGB+/bAx5prO7ozLF8ie1EsE5igw+l2a/HNB
         za/Ey0xGGLzoSWA2oogxy9krVf4spk/eANEMrFZNPgwMxt+nMhyFM4hyoO1TFJIXwMoo
         ++YtZ9f2e7vXg/9Cx6UULnMatWxUZwPMSj6D6IEHLVe02nSS/x0d0mXqIuvyu/W2e0ef
         DUV4n7nL/GGcCPYA10SvQW8BOPxAWaTUsbt2yWJnUs521HpTgvTVFnfLg1kMV33CohSZ
         kHjA==
X-Gm-Message-State: APjAAAVizkvgb/m+swFt68FZcCaSJx0xEnLVTlZwLvqGTubnlpxlQjwE
	pxQ8tEVLh2xO274DWtF0Msw=
X-Google-Smtp-Source: APXvYqyiK8EsojGagAQPb34910DDSJuL0Lku7tVZwiolDOt7p0smkriMUWV3X6ZCfcx5541kIOXC7A==
X-Received: by 2002:a81:114:: with SMTP id 20mr3241526ywb.207.1572646324023;
        Fri, 01 Nov 2019 15:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:af0a:: with SMTP id n10ls1150986ywh.4.gmail; Fri, 01 Nov
 2019 15:12:03 -0700 (PDT)
X-Received: by 2002:a81:db45:: with SMTP id b5mr10591521ywn.378.1572646323568;
        Fri, 01 Nov 2019 15:12:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646323; cv=none;
        d=google.com; s=arc-20160816;
        b=H4e1Ljdjd0Oenkl510naKh7jJVjQ58w12M/TJLT9R6BOEF09KsvAjr4/jue+qKqSwB
         qpZfrqIjtNPFX0u1SzOaNU8Gf4SatfHiAKcuNLXSaRv97ZZkdt1bpVMnheBmP3FfVjuz
         gS/wT6F48RChdbcODpYG+Ihx7veVEyd3zIHvPPpVzD4iP6aoCsGyYGm2PwDzdxUi4k/n
         +X9Q4sQbCVWmw8UlUjR4SO8UVQqKOwYfPk2pnLemOUhchV6eOrPSaE0X/jf30pUWSR/T
         tk7PYjmkM57QqU6sHuptZdplE/P26Fz77J3/2YbplKPwePBT/TtpR/GT3tbsbQjYe9Lv
         brVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LP5ER91yDYZoiG1DiO5iJutGGta/8W2YsIEILYrERFw=;
        b=jqwd9YFgAxtYHWD4HJPpEaz8IoNfVNct8U0HPLuzXt/6w21V3ZU4SRYormf20jKdqd
         OTpjul8qUH5vlwbJAUr2HBPxSIH2bekj7+/K6a2uupHg4mdbhitHW5Xc0GXjMFgmdHmw
         7miSgEeY8IlkqI/rWdFbwEvQpgUaMyld5AxScZbUxAeubAeTaIXzY45QeMwnhU7n+3Ir
         ZJ6/WTuZY88yDWXuQ5KWZtFFT21DWP32Q/XbkJ35hqJkyAGLJe+wXetLQCxla4Av5JEM
         wa6xNcvgSkM3FG6XSpG9SDqk/Ma7kpPZnsvXHaO2dxs/GkafVbGpT3V8yegTLJCDKkni
         S71A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bzUzyeY2;
       spf=pass (google.com: domain of 3sq28xqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3sq28XQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id 5si504611ybl.1.2019.11.01.15.12.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sq28xqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id r187so8428408pfc.16
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:03 -0700 (PDT)
X-Received: by 2002:a63:535c:: with SMTP id t28mr6291818pgl.173.1572646322264;
 Fri, 01 Nov 2019 15:12:02 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:36 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as caller save
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
 header.i=@google.com header.s=20161025 header.b=bzUzyeY2;       spf=pass
 (google.com: domain of 3sq28xqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3sq28XQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

In preparation of reserving x18, stop treating it as caller save in
the KVM guest entry/exit code. Currently, the code assumes there is
no need to preserve it for the host, given that it would have been
assumed clobbered anyway by the function call to __guest_enter().
Instead, preserve its value and restore it upon return.

Link: https://patchwork.kernel.org/patch/9836891/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message, switched from x18 to x29 for the guest context]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/entry.S | 41 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..c3c2d842c609 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -23,6 +23,7 @@
 	.pushsection	.hyp.text, "ax"
 
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -32,6 +33,8 @@
 .endm
 
 .macro restore_callee_saved_regs ctxt
+	// We assume \ctxt is not x18-x28
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	ldp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	ldp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	ldp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -48,7 +51,7 @@ ENTRY(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
-	// x18: guest context
+	// x29: guest context
 
 	// Store the host regs
 	save_callee_saved_regs x1
@@ -67,31 +70,28 @@ alternative_else_nop_endif
 	ret
 
 1:
-	add	x18, x0, #VCPU_CONTEXT
+	add	x29, x0, #VCPU_CONTEXT
 
 	// Macro ptrauth_switch_to_guest format:
 	// 	ptrauth_switch_to_guest(guest cxt, tmp1, tmp2, tmp3)
 	// The below macro to restore guest keys is not implemented in C code
 	// as it may cause Pointer Authentication key signing mismatch errors
 	// when this feature is enabled for kernel code.
-	ptrauth_switch_to_guest x18, x0, x1, x2
+	ptrauth_switch_to_guest x29, x0, x1, x2
 
 	// Restore guest regs x0-x17
-	ldp	x0, x1,   [x18, #CPU_XREG_OFFSET(0)]
-	ldp	x2, x3,   [x18, #CPU_XREG_OFFSET(2)]
-	ldp	x4, x5,   [x18, #CPU_XREG_OFFSET(4)]
-	ldp	x6, x7,   [x18, #CPU_XREG_OFFSET(6)]
-	ldp	x8, x9,   [x18, #CPU_XREG_OFFSET(8)]
-	ldp	x10, x11, [x18, #CPU_XREG_OFFSET(10)]
-	ldp	x12, x13, [x18, #CPU_XREG_OFFSET(12)]
-	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
-	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
-
-	// Restore guest regs x19-x29, lr
-	restore_callee_saved_regs x18
-
-	// Restore guest reg x18
-	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
+	ldp	x0, x1,   [x29, #CPU_XREG_OFFSET(0)]
+	ldp	x2, x3,   [x29, #CPU_XREG_OFFSET(2)]
+	ldp	x4, x5,   [x29, #CPU_XREG_OFFSET(4)]
+	ldp	x6, x7,   [x29, #CPU_XREG_OFFSET(6)]
+	ldp	x8, x9,   [x29, #CPU_XREG_OFFSET(8)]
+	ldp	x10, x11, [x29, #CPU_XREG_OFFSET(10)]
+	ldp	x12, x13, [x29, #CPU_XREG_OFFSET(12)]
+	ldp	x14, x15, [x29, #CPU_XREG_OFFSET(14)]
+	ldp	x16, x17, [x29, #CPU_XREG_OFFSET(16)]
+
+	// Restore guest regs x18-x29, lr
+	restore_callee_saved_regs x29
 
 	// Do not touch any register after this!
 	eret
@@ -114,7 +114,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +123,8 @@ ENTRY(__guest_exit)
 	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
 	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
 	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
-	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
 
-	// Store the guest regs x19-x29, lr
+	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
 	get_host_ctxt	x2, x3
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-4-samitolvanen%40google.com.
