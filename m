Return-Path: <clang-built-linux+bncBC2ORX645YPRB7E75TWQKGQE7CMVX4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id A39FBEB520
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:54 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id w11sf4275133ply.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540412; cv=pass;
        d=google.com; s=arc-20160816;
        b=JnnCJdJMPP7GDavmT+EsjUqOvOeTYgWg4EvEnt7crJ/AY9rznDCxsieu8r6GIh//iv
         xvwkHfVhR0oPCBEaAw2efc6Kd3BqREjSZytkVCxBgLA3nzPGi9SUqZtfYMMpYvsLGMXW
         VhwAx6lzr95D47rgD0d8N5gSkzsW1a+FMa2f7CTVtIpYdODgKAi2mUWDNEjA3QW8T4JQ
         DNpMhp1P6vhf6zx/YLuUpYx1/SkdgWDJk15KwuzWavayotC/4mEYsd9wY6pIa4+I7NGO
         Eint2+81dL/nIJz605ZfbSnJfyJHPZD1ieN1Dkv9WWeQAaq0NN+m8XYlEY2vrCxo75pS
         lI7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3RI/BEIgfzNtH1qPlTl1EgOh6Bj3nTQKQrGKcdGhOLA=;
        b=JhDDaXeVaNDurGShf4Y+XUquGw8bSRryIrvMFOVZEivEQw1Zo7nwNCjJACt47AHrlN
         H7ddCo22RnGVstnEL6lJyWj1F8eLEw7DJppCjI/7R00i6ItFJAm1V8uQKmmnRBw/nliM
         +mHCLVMXMGmH0aeb+2YXaCtKpI9X1zbJIuDBm7Z2VYF9F4gO+W36/AOYcMLOwklr0wcf
         JRGZfrVh9I7F6Grse55vWhjTw7OjnP1z5poOt1+b2nR86cWQ/PdjJnACu8p9mR3imd4J
         2Js1suT11+A5OFWAtF9OO3CXLxSxgqpHdZ3LjapOZ5/AL6OyifC3g9AEE15H4H3G9p4q
         bgjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VeV07+y/";
       spf=pass (google.com: domain of 3-w-7xqwkapoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3-w-7XQwKAPoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3RI/BEIgfzNtH1qPlTl1EgOh6Bj3nTQKQrGKcdGhOLA=;
        b=QiAzk3H8VDqQYVIh1XaH+4AGoqbslQD2IsVgzUj7h/H+RRl0dfR1oxTDjmy7utqTtk
         P0J//Fm9xWvYWt+lyNyi/33z4op4na5JhvQFFDmS8W4CaP2oka2QKvPrywrhNTndXrrv
         jcXi5MmZ31P0X2D/+0FXlstTWXjdGUXRm2CnD0e8sAYCX3e4cKOHXttGp3kYoHWG9uPt
         afQQWVuNvUuCrbOneHcSqofQlOmlAAJwrvuWIQL1sjDir0G/pI+ArJSW8TMEENu5U6Si
         cR1i1Mgs5z2Ykan5v52V54/tijuLpsJCEvd8eWNCAP4RGeGPrhF9lWuca8r7NeiXvIzt
         RD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3RI/BEIgfzNtH1qPlTl1EgOh6Bj3nTQKQrGKcdGhOLA=;
        b=YuigfvGzs/Hc7o0tFZ/oPj+Q8qggHXAXPYOcAKrBbdR4Chdwf/cuINUdOBxlAkix83
         /Zp3Th8sjLbKocxPq5yWsYPPRurzgobEYrTzsp6ej/joIUWgQ+6dDmYrSJxWBHRyQIJn
         I0aLfnnhN0msFBxT1wtGaalqAQI0i0bEWNO8cGkQ89mt14PlVy83Pe5n+NLvLdfNArUc
         vogbVwQw17+KbDLEnfE25XH9xBQQwN82n6YRGtR0/BiDCH7Wei770715Vw4cZbTeigOG
         ExafNNEAu/nHB6eWFTLpD34xPgySBXpGpRN9JuISl07YaaQng4WeJrjxcXhdVk5mOkeG
         9jJQ==
X-Gm-Message-State: APjAAAVTsMfcqhtfflzhJ82Bm9JEXffqNfk5oaU4+LwlnR5fSVlLY79P
	QX43j6gKQN5tEPJJciLgAJs=
X-Google-Smtp-Source: APXvYqwpI6jA5S34qtStfXVlGClLaF3gyEp2LLFOsP/h5Ge+OVr6d6PYxNOXQYmdFmZk89vFFuAl+w==
X-Received: by 2002:a17:90a:6283:: with SMTP id d3mr8945131pjj.27.1572540412619;
        Thu, 31 Oct 2019 09:46:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a40c:: with SMTP id p12ls863239plq.3.gmail; Thu, 31
 Oct 2019 09:46:52 -0700 (PDT)
X-Received: by 2002:a17:902:9897:: with SMTP id s23mr7612375plp.189.1572540412136;
        Thu, 31 Oct 2019 09:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540412; cv=none;
        d=google.com; s=arc-20160816;
        b=noQ2XV9pTCcbP94m5ryGaIzFxMMWFo2t7bz8jxnfuIM8WI8PdV5gHrvyREtjU6x7uh
         KN8K667SBCzB4g6aHEkpp4a85FNMyYF2XeA0BgnMoJJ5mj8meBq0kpz6FGRLpBItMYQC
         g1lturCljVS+Asn/ZxnI3JO2Ct8YXXavpbjshZHmZ6t2Z5o12krmwRLDgHS0KZhQR+sZ
         XMzjwBLsJjNo4qCQYLhjORL+SqyqiHt707hYZfBntvQk6vbZg2G9Z5effb6N+xP6OugA
         6+joMtocZpCutzwCxMPkL8UAAYKGYuFXQIp4nsJUgDqygrsctpQxzCwqisdGjPL1QH2R
         Zs9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FBkL0U7+mf5tcaSnPbZxQ7YN9ZSyYOV+Z9+Nl88/ERI=;
        b=HARBR9DRanXqBx7ZAaU+e5wV8i6VEhVMvtFcnwZ+c2/bjSP5xBu25pVNh+YeCw4+7D
         Qn5N4rdRKdX5pH9jNz8OA/+GWt9oKoMtej15DFeGnUNVGaYOEcM5cpfEuMWj+fA7a7ow
         m1odpE8Dx6Zte3SL+hmpcdFZcapH7ZoxZI7qWygZZynDHiOK/2CrPwCVtM04eDMv5iMb
         MUJ1vKb3TPWN4Bp8FcYt91ayDdSR35y/1Y5MHpXTEtN9zn0SeteUDv9S9Umihd6R/cbu
         k98CjgSLUnDxq2gMX6HxxIRF+sWcezhFpwEr78IIjztFKLE9qBSPK2HKwQgVc3vzv0St
         EF5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VeV07+y/";
       spf=pass (google.com: domain of 3-w-7xqwkapoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3-w-7XQwKAPoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id b17si288559plz.1.2019.10.31.09.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-w-7xqwkapoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id u4so4780860pgp.23
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:52 -0700 (PDT)
X-Received: by 2002:a63:cf18:: with SMTP id j24mr8035896pgg.406.1572540411406;
 Thu, 31 Oct 2019 09:46:51 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:23 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 03/17] arm64: kvm: stop treating register x18 as caller save
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
 header.i=@google.com header.s=20161025 header.b="VeV07+y/";       spf=pass
 (google.com: domain of 3-w-7xqwkapoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3-w-7XQwKAPoucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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

In preparation of reserving x18, stop treating it as caller save in
the KVM guest entry/exit code. Currently, the code assumes there is
no need to preserve it for the host, given that it would have been
assumed clobbered anyway by the function call to __guest_enter().
Instead, preserve its value and restore it upon return.

Link: https://patchwork.kernel.org/patch/9836891/
Co-developed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[ updated commit message, switched from x18 to x29 for the guest context ]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-4-samitolvanen%40google.com.
