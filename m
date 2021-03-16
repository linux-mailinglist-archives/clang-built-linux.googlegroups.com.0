Return-Path: <clang-built-linux+bncBDYJPJO25UGBB26HYOBAMGQEHHM7HWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 870BF33D9F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 17:59:24 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g7sf18764474plj.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 09:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615913963; cv=pass;
        d=google.com; s=arc-20160816;
        b=C3Drk31luZq2ks5ljo/iR/NlrntMdcwcPcx8DGGiZxaGRdboA3HX6sg+ZdZ9a6B1tT
         KKkM7vLXX/euo51UdG61yhK6xUPoC3h9yCFman+p9xc/5RJ+VR54FCw9xvuPuKo66sGh
         +hBVCfCcxtUgZZk9vNJQ/f5pOQ5yBIPCoxhIGGYphioEaVrFnzMbsEd1K8U78ZILT07r
         Wh8XJV4H4p9pyx5m6xh4kBU3ojUBMyEgpL9QKJuCGSo2LhXvte71jB6wv7gnkZlZCteO
         6YUX9M8sA5+d9iblMXO3EImX5WH6+NtEPlZF2x7GnzgEwZCOcHyMGh7BakSTiqz34loa
         WQpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=I1R352FJ7c5qQFd4g3xfOtdh/a7NZvxwyn8Iz4+o6og=;
        b=QiALEtW3InhObV+RsWmJUA7BatPHOa9Q95BOGwOAfgd00TGBRx96S4xF1nP+XVZk3Z
         JvrELBHuGjiQU2k6X0RO9NaXei20Lq8zvnt+mK/tpU67jZupg0WZfydJGIjxPzHmT5ke
         Y+TYTfcp5vmGE04h9FJYAvbUIRr/LvpV3Y1O8JPGvISWepGVRdVyjQkXmLdG15gm0y5z
         ZMR++A7HjFkT3+37em2CJVbyqQcF5cbcNpP/rdvrJMnYzhB/cMwg3rck/rfa4mtvciIp
         1N6e4p2q6An0NOF7Z+POLLeUaXLCYsdSDX/mkl/5/C/UHdEgx5fjQrh+IQDeMH/NXKcq
         3hDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sqg90j2z;
       spf=pass (google.com: domain of 36enqyawkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36eNQYAwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I1R352FJ7c5qQFd4g3xfOtdh/a7NZvxwyn8Iz4+o6og=;
        b=CdflORbXHxIniII2MuyyzK/+LzLRm7OyLxQlQYPaexiK2yVxOwKl7ziHHlp9QSdd7Q
         9aFcKg/qkljJk+b5gemG3XAjeOrTXOisgmMawhTWysITF5ayd9nIOO8WWhENvWpaiCwY
         4UeD9bUuRUJH6Ltthz3vN4AxAqeZ+N19avnyKEg4kW73IfVryu6l+C/eyIPGtxm5aMRG
         3YP/4orbspPXZdYCfz2bRGf02fPGxF2ZAlU4f+haBktTDe2Nac/ysvufOio3qpP/dtK1
         PYzgYGEaETWnEUFZ9y03LVVGV5yTSf68/993doJeWTL3AYDbLXPSfOLgddIOcbNIUPK0
         LsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I1R352FJ7c5qQFd4g3xfOtdh/a7NZvxwyn8Iz4+o6og=;
        b=JmAXlgDMmH1wLX0T4hNBelRsOrbQCWUx3yrmqepRjWIj2O7HMaYQ0iJHso3y/csFJE
         Tb2Da8c9ltvc//kztJBH62ulVrmQ2AUKJsxu39oMpF/+s8ymNAUwix217VMW8Zn0GGAW
         lo5XrBIuDGjcu+hZdnBCEnwO5l8vgdzFlX1IrQR3B6N18LNfCKpN0aDuBS9tuD7iz9H5
         v0qeBWW/Ix+8vOAntl5WXDOMlK9XWk9Je9e5MlupUQczkDeV6u4tDUY/cpTl4Ylp9pPM
         jFU4vvhVnSssZd5/ToaQDI+ZWqfFcsw9ofPEOkKwZ1pDBvMnT9K7cIOmcNzHRFYyRWBA
         UUzg==
X-Gm-Message-State: AOAM530nDZ5CRPJqROIf/7glyfT62McXS5kqRPeUpMikykvFEoVXCeka
	kQhlbOJJl+kDgfv0w8ycECA=
X-Google-Smtp-Source: ABdhPJxzm1GQevNpwQP/4Oot+9OfR+kqNFn8DI6o0ZrmGcnypCfD5m25ZpP1OkOoFQ5Pd5rdCEN6OQ==
X-Received: by 2002:a63:4f1f:: with SMTP id d31mr585981pgb.104.1615913963158;
        Tue, 16 Mar 2021 09:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls10773941plq.3.gmail; Tue, 16
 Mar 2021 09:59:22 -0700 (PDT)
X-Received: by 2002:a17:90a:c210:: with SMTP id e16mr48887pjt.92.1615913962642;
        Tue, 16 Mar 2021 09:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615913962; cv=none;
        d=google.com; s=arc-20160816;
        b=e35b4j5H7AY706uXJgimasOWPUjBw8NbZExTpBX58xu6GHD6+SUyxw4I0O9PqJ0BIf
         iruiME7yx8j6ROcN92q85gFu8Oh/nvfqtlHnKK+5gBmLQqmHI65yzRBAKk35BOOiQCMt
         V/CW2eJ5ee/Vv0ZZZ2xQKgg9+EOM3bLeAPRM9pj+fuYRWAkaGjTJnlYMZhugsmw8RN8l
         SsvVX0a6H/ZqX0kX1CI/34SHjWMxjRutkF4BMp4GyfJY7yfBCoXADaLlo1ph1qz41H5e
         fUlAMRpU2XtxIorKWKfJrPXJXoAKd5Miu7fGZBNuVY6w/juuwpWK19ZY0j65vapvLIBq
         Ygdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qFPd4GCvjOnAI114zyj55KKPv7/vXpPXUVChFNLgXOc=;
        b=bD4Ro3pbxoVR449V0JSsw7R36vLVC4nJ6i8TiyosTfrUj2rEQLwEQoVvkPeW/EwQiD
         35KOOZLXwyRbsc5Y4SgPebH+3Fpzf41rXDWV8e9GOSawLAJiAcY+csyDU/+MHQO8k7Ov
         +07EYP/T00w9bqBVoSwYipFcXq4FD5rDemBuaUqmN0P/7OoVAC6ZVFm7NVukP/4PCMIa
         Cy7XVMTu1hAtFZc46FaZlkylNEq7mZP7F24Z5mSSb4kJqCSSXNFEEdTmM7X2xYjUL3bp
         fkfjlvIHA26w483YIru+KZS81NVMMHi2LuFxUh1+UqGptxYpCpDOchOFzSAFOBrzxbu4
         mrzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sqg90j2z;
       spf=pass (google.com: domain of 36enqyawkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36eNQYAwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e8si789894pgl.0.2021.03.16.09.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 09:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36enqyawkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b127so42356818ybc.13
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 09:59:22 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:b408:7c5f:edf4:6c69])
 (user=ndesaulniers job=sendgmr) by 2002:a25:1008:: with SMTP id
 8mr8392167ybq.21.1615913961773; Tue, 16 Mar 2021 09:59:21 -0700 (PDT)
Date: Tue, 16 Mar 2021 09:59:18 -0700
In-Reply-To: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
Message-Id: <20210316165918.1794549-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 5.4 2/2] ARM: 9044/1: vfp: use undef hook for VFP support detection
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gregkh@linuxfoundation.org, sashal@kernel.org
Cc: ardb@kernel.org, candle.sun@unisoc.com, catalin.marinas@arm.com, 
	clang-built-linux@googlegroups.com, digetx@gmail.com, jiancai@google.com, 
	keescook@chromium.org, linus.walleij@linaro.org, llozano@google.com, 
	maz@kernel.org, miles.chen@mediatek.com, ndesaulniers@google.com, 
	rmk+kernel@armlinux.org.uk, samitolvanen@google.com, srhines@google.com, 
	sspatil@google.com, stable@vger.kernel.org, stefan@agner.ch, 
	"kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sqg90j2z;       spf=pass
 (google.com: domain of 36enqyawkapwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=36eNQYAwKAPwrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Ard Biesheuvel <ardb@kernel.org>

commit 3cce9d44321e460e7c88cdec4e4537a6e9ad7c0d upstream.

Commit f77ac2e378be9dd6 ("ARM: 9030/1: entry: omit FP emulation for UND
exceptions taken in kernel mode") failed to take into account that there
is in fact a case where we relied on this code path: during boot, the
VFP detection code issues a read of FPSID, which will trigger an undef
exception on cores that lack VFP support.

So let's reinstate this logic using an undef hook which is registered
only for the duration of the initcall to vpf_init(), and which sets
VFP_arch to a non-zero value - as before - if no VFP support is present.

Fixes: f77ac2e378be9dd6 ("ARM: 9030/1: entry: omit FP emulation for UND ...")
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
This is meant to be applied on top of
https://lore.kernel.org/stable/20210315231952.1482097-1-ndesaulniers@google.com/.
If it's preferrable to send an .mbox file or a series with cover letter,
I'm happy to resend it as such, just let me know.

 arch/arm/vfp/entry.S     | 17 -----------------
 arch/arm/vfp/vfpmodule.c | 25 ++++++++++++++++++++-----
 2 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/arch/arm/vfp/entry.S b/arch/arm/vfp/entry.S
index 0186cf9da890..27b0a1f27fbd 100644
--- a/arch/arm/vfp/entry.S
+++ b/arch/arm/vfp/entry.S
@@ -37,20 +37,3 @@ ENDPROC(vfp_null_entry)
 	.align	2
 .LCvfp:
 	.word	vfp_vector
-
-@ This code is called if the VFP does not exist. It needs to flag the
-@ failure to the VFP initialisation code.
-
-	__INIT
-ENTRY(vfp_testing_entry)
-	dec_preempt_count_ti r10, r4
-	ldr	r0, VFP_arch_address
-	str	r0, [r0]		@ set to non-zero value
-	ret	r9			@ we have handled the fault
-ENDPROC(vfp_testing_entry)
-
-	.align	2
-VFP_arch_address:
-	.word	VFP_arch
-
-	__FINIT
diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
index c3b6451c18bd..2cb355c1b5b7 100644
--- a/arch/arm/vfp/vfpmodule.c
+++ b/arch/arm/vfp/vfpmodule.c
@@ -32,7 +32,6 @@
 /*
  * Our undef handlers (in entry.S)
  */
-asmlinkage void vfp_testing_entry(void);
 asmlinkage void vfp_support_entry(void);
 asmlinkage void vfp_null_entry(void);
 
@@ -43,7 +42,7 @@ asmlinkage void (*vfp_vector)(void) = vfp_null_entry;
  * Used in startup: set to non-zero if VFP checks fail
  * After startup, holds VFP architecture
  */
-unsigned int VFP_arch;
+static unsigned int __initdata VFP_arch;
 
 /*
  * The pointer to the vfpstate structure of the thread which currently
@@ -437,7 +436,7 @@ static void vfp_enable(void *unused)
  * present on all CPUs within a SMP complex. Needs to be called prior to
  * vfp_init().
  */
-void vfp_disable(void)
+void __init vfp_disable(void)
 {
 	if (VFP_arch) {
 		pr_debug("%s: should be called prior to vfp_init\n", __func__);
@@ -707,7 +706,7 @@ static int __init vfp_kmode_exception_hook_init(void)
 		register_undef_hook(&vfp_kmode_exception_hook[i]);
 	return 0;
 }
-core_initcall(vfp_kmode_exception_hook_init);
+subsys_initcall(vfp_kmode_exception_hook_init);
 
 /*
  * Kernel-side NEON support functions
@@ -753,6 +752,21 @@ EXPORT_SYMBOL(kernel_neon_end);
 
 #endif /* CONFIG_KERNEL_MODE_NEON */
 
+static int __init vfp_detect(struct pt_regs *regs, unsigned int instr)
+{
+	VFP_arch = UINT_MAX;	/* mark as not present */
+	regs->ARM_pc += 4;
+	return 0;
+}
+
+static struct undef_hook vfp_detect_hook __initdata = {
+	.instr_mask	= 0x0c000e00,
+	.instr_val	= 0x0c000a00,
+	.cpsr_mask	= MODE_MASK,
+	.cpsr_val	= SVC_MODE,
+	.fn		= vfp_detect,
+};
+
 /*
  * VFP support code initialisation.
  */
@@ -773,10 +787,11 @@ static int __init vfp_init(void)
 	 * The handler is already setup to just log calls, so
 	 * we just need to read the VFPSID register.
 	 */
-	vfp_vector = vfp_testing_entry;
+	register_undef_hook(&vfp_detect_hook);
 	barrier();
 	vfpsid = fmrx(FPSID);
 	barrier();
+	unregister_undef_hook(&vfp_detect_hook);
 	vfp_vector = vfp_null_entry;
 
 	pr_info("VFP support v0.3: ");
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210316165918.1794549-1-ndesaulniers%40google.com.
