Return-Path: <clang-built-linux+bncBC2ORX645YPRBLFFVPXQKGQEBI5S3NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 316611158F8
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:06 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id l21sf4530661ota.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670444; cv=pass;
        d=google.com; s=arc-20160816;
        b=PM6d+mYKuQaiuJ8LouIW3VMFiV8oHMYTDwIlply9UrHtgLp/YHfc5f2WXPWQ5FLIMf
         5XQkrlNK9J+iUaufPl9ggDeRwxJBQLLZNTCW//5wqmqF8ZNqeyFx8wBryiCvTck42yTw
         mRGsmS+wSQFZvG56S2FtJc3vWEnFWN7pmv8gSMSZKjddQg6xwSFRDGasgslZLJ53wjq2
         D7cNpORovxRCt3cvDfI/9zzmBkZhI2D/HryD04GmD2c9YtLqKSeU7WI5bUFfxfyzvCdS
         ugwdfjzfT8648RoisR2q5s0jXLDUqhW8xUMdo1Z7FeU6H0r5oso1k/0ADKYMlf2DMlag
         HXMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GNfuq8cAbonufVGJWKSH73o66Gg4+pqlFp867fuCzDM=;
        b=m2ERTSMvkWkhG/sjR4OT+NcFfbfhapA7E0eZ155Yb02yG6VMblSfkP9ISQ0y+gPcVB
         Djh5Slf4DVxvPbT+1HRcDs8jeM0MsJQgcIo1fXfWRxgrVIHKqZ/wPATmHUCCUOmimiFd
         tHGAEbv25jBo5ZC8k3Nndn8G9KuRGDAoY30yVNcu6H47h1p6kgwxxb0oaQNu/3rDyzQm
         v2NHSNzoJkieceSzFF8bXMRpH9ATYf7rA7Agl9MVlaJ23naGC0vbcaTmI3h+qqaGVkZy
         wJAskZBzirMnt3GwoXE6bcqaOorAWx73URrUwyLz4xcjcB25R1nxkMskHpEqJBplI4yL
         vtZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JVSCGAex;
       spf=pass (google.com: domain of 3q9lqxqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3q9LqXQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GNfuq8cAbonufVGJWKSH73o66Gg4+pqlFp867fuCzDM=;
        b=a/27FVyECp3y0JC44lQzs9Id3vAy75nVtSIOymyyDbBtkfMJe0KYP0QQK9rormS7NA
         Qr1/VOfY3tQXEFwug9RyK5Wgshe35AlooWgGT09/XvC84WyN62vx30xWiqHgGGCSp6uf
         CmvDJDT1y1WTAvtmyJVC6Lr/IXQkfs8EdDNRNg74jYjywoyoa5lsOrEKZBhyty06mXpy
         zF7WGG83qFj9g4CQ2splXge+qfjeSeYFdvPUkAVHo/HELNoQq4JbPoFid5hqeVZs4r1Z
         3d0A95ZuRsrOay9yy0Ce5V34Z3oVHveSDHsyP8gqrWUT8szEuYFblLPsXJinM7M7C11T
         xPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GNfuq8cAbonufVGJWKSH73o66Gg4+pqlFp867fuCzDM=;
        b=aROOtqGe5q/hFAhffZTENsiNksVoWxsIgp45Cb3PIxTYBS0YjJwXg6SH8d4hWMKNtB
         LrD2tj98mVogMt6Kl2UKsyw7s6HJYUbSdfEzUwQOFKC5UBUqSmJC/G4c/jX4F5pBlbYr
         6S2hrwOAWD8qTnXeI4oX8E48UACEBC5d2V1fAHOqtGZlBcVDWX0vjcP5LGXw7U65XrwH
         vhjMOkFKzKL5UcWpLJ4FY115AZCiLpeJZBKzfpQ7PEZ2v7VhVp9dnE0wUASvDuTunMVh
         MFp6G1QKEvhW/9AuQVzJwjb7juRrdYt/GbD7333JMSpahxHaNf9jx3nd8ZnnricLmNjR
         B46Q==
X-Gm-Message-State: APjAAAXkogYjG1CERzrctLaWkY9ogx2UnbS+6xKHj1KR3c1L/09T7Ni0
	vXsGS3RRqq0EiH49GVY0jOw=
X-Google-Smtp-Source: APXvYqw/fuybg5Qm659tLODSLvP59+pYEtcTWsica5gjpU7eewdFJzGss+BgRODy4Bht7J/jVWKv1w==
X-Received: by 2002:a9d:730e:: with SMTP id e14mr12333843otk.62.1575670444771;
        Fri, 06 Dec 2019 14:14:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1a0d:: with SMTP id a13ls1555644oia.14.gmail; Fri, 06
 Dec 2019 14:14:04 -0800 (PST)
X-Received: by 2002:a54:4e94:: with SMTP id c20mr7586350oiy.27.1575670444351;
        Fri, 06 Dec 2019 14:14:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670444; cv=none;
        d=google.com; s=arc-20160816;
        b=lo8X/8ParaJh3xK6WX23uCND5bSRFa+/Kngb/bJcGL3HpogzkaUxfWZJXsUVTJqpi1
         EbNnRf1w0rNB5nLNEpgOW2jPMCIzDuIP2ulf/7ikEVlA0l5Bw1sD/0EMqYtyKE8WfPC3
         B0ComknQkxozPchvrbNgF80Phy/5Wy7pgFvXjT0DAqkyYh6NDnoi0qQHJm+c6t9lqY90
         OEv8+ujcYlCfsTXBE7aNfy66aQ/oWSyECjvugPPo+pMmgm62DRRhUNrLwAtS91v2swZ8
         ZvuODKrJzZXT0mqzvK2x5z7tauHK4py2hHJA83oxGOMgrLCjn3YqMv+YSJs8o4ukbJzo
         EhYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uHQktI1tJwpSEASWzTTpFz8grSSRR6XNFC+ZxIDfRWA=;
        b=uiDmJvbPCLCzWk4MfapvSDV1la8nZT6ybFliO5KPZPkccIetWRbDQIRCq6Jo03KypJ
         dJpCb4hqv9sqPL6h2nZCB5SF54xUvEkrvNhguICSQFK2InOBT5W+7EZySoWmGqUPf954
         ynvARbDgYuxhzTdjxXlpVTNOlrqK6170puIefATheoKtXhBO3I1VRaDURioPQOjFnYdQ
         6cK5jG6AELiINlfU40F0LVZbHiTH1kZw2Ga/6YTwvfqj8XBDtKJmQJkTFjMOTKi8qBGZ
         gJd+l1uIcuxRMtXBRnmx+hUoqfMpLXSx09e/ySoQtpM1Coax4hp/gwSZxEoRErD/waNf
         ofUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JVSCGAex;
       spf=pass (google.com: domain of 3q9lqxqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3q9LqXQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id w63si867583oib.4.2019.12.06.14.14.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 3q9lqxqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id z12so4348203pju.0
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:04 -0800 (PST)
X-Received: by 2002:a63:ed56:: with SMTP id m22mr5943958pgk.261.1575670443383;
 Fri, 06 Dec 2019 14:14:03 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:39 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 03/15] arm64: kvm: stop treating register x18 as caller save
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
 header.i=@google.com header.s=20161025 header.b=JVSCGAex;       spf=pass
 (google.com: domain of 3q9lqxqwkapaksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3q9LqXQwKAPAkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-4-samitolvanen%40google.com.
