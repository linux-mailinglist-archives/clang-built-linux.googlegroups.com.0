Return-Path: <clang-built-linux+bncBC2ORX645YPRBKEYRDXAKGQEEGO7LAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC54F0A84
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:26 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id y64sf17580904ybf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998185; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBAEik8XAjNQrZuCu9MzgMUfIztLnaSj+JRHJrr7m34L5f/h+PpEaqLMHEKxo4o1SW
         /TiIGKYezHKIF9msbjB4hXA1dNs80OuBXytkLY9Tbmkm4qT/+wNDc81VbOZXhwtSKIfk
         6nFTLNwAjfTjUIDsObQKuU0/AleuAv1VExYx/MW1O9YyPZ0RU3Pjhfm+UVI2bw6nTxqU
         2FKT4IxoB+/VrFnl5EOgiS0nAQRz6P1inmX7/fSVZqGhfcShNi03jLC5P9fIdP+79x36
         uyB/VnvQ9dE7zkUBZccSv7l4mI9U4QsNrZkX6bRuUAc9uU+nMtpldMqdGnn2VElxvSRP
         B9+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tlzc82uBhZNrJcLhdenbdKqqMilhidb+L/6EGFBm/5I=;
        b=0a3doG43aZezAre6WRHtTjI8Wf7sDY8edgmTutNaIqewXvm70pk2ga87aqURbhMXS3
         LdtCb61T+wFbLThE0pZgOa1e/NSvF5TWJH3Vgq8u/kRFCWm+5EJBF+H0/QlvWD5Y9pg3
         SH/HKmCl4VAS+pYDyEuK6tH69yMX78Z52y/uWA4FTGh0SdZ2IK8aetnGJcYiy+/ktXzG
         PK6uuo/T2Wiy1NSN6TGMRgyi/RHNUA4oFv/Mjcwn3t5Gfm0PA6DhqqXea3tBn7umrz0O
         yYqgyYVj0FY3p877hTpSMEIBA/hapxTS2uqo4ONxYCnw4pdh/B0KIMO8EJO0HZgMi5tl
         YoWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bDliSoyY;
       spf=pass (google.com: domain of 3jwzcxqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JwzCXQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tlzc82uBhZNrJcLhdenbdKqqMilhidb+L/6EGFBm/5I=;
        b=XTive9RliAkfYqVDo40m6UzPTlVlCmVE4djt731/pkpjgB8upJvt7QPSEr1vC+DOwi
         BrCy0E3VWC65PzRXBiK77OE6q5x5Rd70O5hI/+5/Ndy6QG9FptruqR5MlXuKpWMg4zBn
         axLgGiG5pXa7P1673Cx0p8kLdNnkgqtDZ95V5lorOi33Z8VOgzXqM3xVPAziJBnSC++G
         SwzIzB0sHue+7yxrVum7uEShvaxY1gqrxlJ6ogVkAvMJ9BPHiQjvk6bgf/SrG64s0fag
         9BFyq3YPTYPQ4VDEeU1ZFfn03bUGhkE7gvBBVDym/Rl7cIkqaKE9lURZ2KwNOTKBn5yM
         uixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tlzc82uBhZNrJcLhdenbdKqqMilhidb+L/6EGFBm/5I=;
        b=bmfZD3uX3D/BFkJl5n06zDJetzcyU/13cR+gB7Cb2FTlJz9g3CEKxf/6Q/+lF5v1LZ
         e9ErdB4/oupTMD2UHrKbDGrK6EakVK0l5qqh6OzNhoBGipU4MH6BHOkNtcpodmLGfjo8
         fwdDQlhH3Czjgz1A5LKlF2xd0WTqIplNtMRDLo6KGNWrZZl70YTZfZrnkMjDeWvsPEe+
         gratOz4CCG/Ha5d1ER55+eDgRbupMbp3sfe0bvu2ZJh7lZGUJSSRgPHeCZIR/+4qT9aX
         fRjOWcCKz7PV8g2mOTT2M2hLdzZ+NjcJSTJOZYxkdUlbruZbYofqNmn9+eTAHUDVE9S/
         I3pA==
X-Gm-Message-State: APjAAAW74nMYe/RxrF7wAOUa/3MZEmfn8v5PNU0dCbf+reF0KzRtBoMQ
	siIFil5k/IOjK9/+Weh7Rfs=
X-Google-Smtp-Source: APXvYqz9pLwlCaxEH97HbscXnsIjBhdRhO2ioDt843n1pOsVXrGsP+dA6r4lcMOYgXSSn28Hn7HE+Q==
X-Received: by 2002:a25:4688:: with SMTP id t130mr29599499yba.270.1572998185050;
        Tue, 05 Nov 2019 15:56:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4114:: with SMTP id o20ls100354yba.13.gmail; Tue, 05 Nov
 2019 15:56:24 -0800 (PST)
X-Received: by 2002:a25:c008:: with SMTP id c8mr30666954ybf.318.1572998184492;
        Tue, 05 Nov 2019 15:56:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998184; cv=none;
        d=google.com; s=arc-20160816;
        b=YObZDzThzjiv45Dz+rbKd3FgSi9OnJ8GQHQ657YJweYyoniMVsPXHP1XmPHXFpp2IE
         tIND1sBuVC1gamOEJ4rfcDISCNit+bir3NCoo2eGQO+pM4Zp6gIn5EF/v9YvIsg8qJ9L
         x4J+jOt3EFDGDcmpHY6e75I+lLnwF03vqTzSrPvGdgiwlx/pJps51YKk6SU5+RdATljV
         KuMffcohziiB925mu5cusbcUW4nfguS8B74VJkRMNr1+d+3I2S1jRBf8qrj5gi+iBjtc
         bBZMfr6iM8xe6DQBXuQmni+lH4ILq3xPOFlaHak6n8CmE/nKSCkbIiVNiwWP3jO6XSoV
         wglA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dHd2oAd25v1QFamm49bKYnI+SDWrPmb9Vs4EgTfDEXk=;
        b=lMHJPY++jXiRyb8qnnrbv1YCV9zRK3BBkwGUzUCNm/QNHN0FCDhpOp4xXaYH2KnAKw
         C9Kd7wHRCsELxm1mU5sd/gPf2ivSm1aEsVCLbwFY7aS3L2s5DoEko+6ihiDwiTzpcrvM
         4FeOzGw2WRm+2Cjja25NF8XJdFtETlqn7awFFBLJNc8mGK7qJlau2OM5rDWJjYNdGt2S
         9BsJnuovlCA9vRwReuY8+H6gVxEIyDuaqaflfzl+g52bWv4/E98qAsoKScYRR2vSzVb2
         cVXEvbIDY50FSxPVpj6WOgIK9UyT/DclboHiQ7avqlb39cinclg5B9aDTb+bJSwmhCmZ
         2TkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bDliSoyY;
       spf=pass (google.com: domain of 3jwzcxqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JwzCXQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u8si318948ybc.2.2019.11.05.15.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jwzcxqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id m1so4990473pfh.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:24 -0800 (PST)
X-Received: by 2002:a63:750f:: with SMTP id q15mr14598354pgc.422.1572998183307;
 Tue, 05 Nov 2019 15:56:23 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:57 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 03/14] arm64: kvm: stop treating register x18 as caller save
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
 header.i=@google.com header.s=20161025 header.b=bDliSoyY;       spf=pass
 (google.com: domain of 3jwzcxqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JwzCXQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kvm/hyp/entry.S | 45 ++++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..0c6832ec52b1 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -22,7 +22,12 @@
 	.text
 	.pushsection	.hyp.text, "ax"
 
+/*
+ * We treat x18 as callee-saved as the host may use it as a platform
+ * register (e.g. for shadow call stack).
+ */
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -32,6 +37,8 @@
 .endm
 
 .macro restore_callee_saved_regs ctxt
+	// We require \ctxt is not x18-x28
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	ldp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	ldp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	ldp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -48,7 +55,7 @@ ENTRY(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
-	// x18: guest context
+	// x29: guest context
 
 	// Store the host regs
 	save_callee_saved_regs x1
@@ -67,31 +74,28 @@ alternative_else_nop_endif
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
@@ -114,7 +118,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +127,8 @@ ENTRY(__guest_exit)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-4-samitolvanen%40google.com.
