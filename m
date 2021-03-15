Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6XX6BAMGQESWWKWUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DE133C9D6
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 00:19:56 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id l7sf4612321qvz.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 16:19:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615850396; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zz1f2GfMVoJrIntNxYQJsuG8BVSL6akC/LkXkdqOpL/DL4DNdObynbrVWmr+oHbCEw
         EexVYKze5iBOiB+ILrYRC5DbNTkFbXlYu2n+bo3hOcoA80NtPZbQl6sKs+Qak2OiYcl9
         MSYRjy1VLaHXJN6rJtqqC4mZlutPZ90M7UyIopnuw73bWQbT6ktu2O7XualU31KWTQTy
         bfI3e4e4l8B/RicsQGP22Wiqo3F7Tsd6sMZzmarEUWXNG7j6PqUKogrO0vzJ/7PhUe6a
         P7Kr+7DgRGXO4YiGeR1E6V8lgsmOzFID0yGSpR2eac0PnkK2DCzkGnGiIsxHAvOrRopz
         rzJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Iz63do7QzARryYpqf37FXH6vkxF3LtmFPZcGHY/xkOk=;
        b=m3KUeoFmWM5IkWeOJSfIeC2R5mjeN6jaUX9zhaQNVgsa0Aq7g9UV5ccTuwNwr6jfXJ
         TQv9rsxvyf903s79eGsxqSdRPhvla9ioX1QuaMLq0abn5b7qjV+7hVflOh0F1AP/X2C/
         cExWccvC0UnyMkKYZFl1rrRvHAivxYipV+2YgArvUq8kB2wv3QYBqPsM7kurPYz8gnB7
         3bh964r5Tay8LKbqwiXEcXAcCzJwa2YSDwd1ssYFQDMTQ/I1HM43/1sWc6jNgAxl8LMq
         meIpef/E0jDAhZHBusC7EkAQcq0eJyHWjCe03MZ9U5QutdDmL69gAFqLtF+s0lhshhme
         WMZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S1gNE/gl";
       spf=pass (google.com: domain of 3m-tpyawkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3m-tPYAwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iz63do7QzARryYpqf37FXH6vkxF3LtmFPZcGHY/xkOk=;
        b=pDodwRkS6HsD1ua5i4PJgL6PzTuEeSXl2bKemBuOc0LI/X1g34OBCAYzXo1cslpH7o
         RITqSL7Eua6WiKPLZSSUBUbTuyv1p0KQhQgWkBCwHMnG//W528qKm6y3hti5NdL9/LQX
         JPwc3fX7VMLJdiWR4y1lpQF4ov14GWeHDJZVUbTd7IESvRktjPq8ha4tjBiPrXxDBBhn
         sP/KGoXzkU5EblwpiE09hf+wbY43VaMchHPWrRtdi3cE3uEzdA3Ko5vAYGOOpeqg8S80
         Yeey46Gwvq87yFJVsz6i7ATw1lnR3b/0McJz0lKzETpEmCZdUxWdBn5sFpiu+hYssAl/
         zVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iz63do7QzARryYpqf37FXH6vkxF3LtmFPZcGHY/xkOk=;
        b=uOeF1gkP06Ke+H2VRbrBVAcaWN41LbQTrxLh+xYFv2S9wZeW1mX0iFrfSd4bdBPh8a
         O3kFR1JG57CrRa7VJib+ZB3ZFHcBqnsO53M2uJF1PqSFAyh3EnLH9xq68sldmNYnJYu0
         xjJNNyRSLsaqcCeIqYi0Q/4/pEfZnfA27F4hJ85uuERuCJJOdW3YzD9tL23dIZtGN4Rv
         kkwXA/VbWwkjFVmefBlpWvf4Y1ihVELymVHKmZBm9XbIDRp/5RowjU1tYgQf6D0q+KpZ
         sozCXDH+W8hKbKodsU4NfzLW/H0+MkSwSsSDA28TEZ/+DexqVQcUG7Wg2pErfdVc3GPK
         udmQ==
X-Gm-Message-State: AOAM5308fZf6X9eh48CVblVNnQI6Oo/usKUf7YfnD7L13WXT5U62dZpi
	GwIyQfaUqp5VNSpyN5SfNB4=
X-Google-Smtp-Source: ABdhPJzhGsjFwbQHTJSaO0lx4hoiy9xrXVsuki44DpasvzNk+75wRnr6WtkKjSfhtqMINKWRk3myDQ==
X-Received: by 2002:a37:392:: with SMTP id 140mr27387532qkd.236.1615850395994;
        Mon, 15 Mar 2021 16:19:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd64:: with SMTP id k4ls4727312qvs.1.gmail; Mon, 15 Mar
 2021 16:19:55 -0700 (PDT)
X-Received: by 2002:a05:6214:1144:: with SMTP id b4mr13455391qvt.12.1615850395564;
        Mon, 15 Mar 2021 16:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615850395; cv=none;
        d=google.com; s=arc-20160816;
        b=GBYMi5JX/w7gGnG63guof/8UZ5s2dXrb0SSM64poKxnAajJHV3XG1wccmdx+xbZT5q
         Fiod4Vc19qEYTT5sC/5TtrcLSzkdJrGxhYebqk/FPjDYFXt23RKvGppz8rvbhlmW+Kbm
         UTMoFeEmo73xnWqldDlM5Ox5XI4bj0jpZvi4iWExODEfA3kxq622rbKAfCvfMOM8xhTn
         nSM0mWl6iyiDRimrO/r7ZIiq4NFG9WG9wJrN2OG9A2PT2JEZXpv5zR/K51HsxOP69ELC
         ndu92s09KSrqAfHxWgioWu6J6LSCBUzjEjk4pVcAM+Caz5fjAXK6y4KaW39ia7wGLH1e
         bNBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=F6nYO3V+VuZGXayaevZL3OZZ8YDIZPahFyJ6m7t3CHo=;
        b=sQJkEcAeZaa9a3NVoUZFP90C2jy9OEazA1WMCt7zMSld9FzHvvjiNoDltlX2yOMpqI
         /naTObTAr9BBlJ+/GvQcnmfwezaN7hGiMav1BpO1rYMI3u/9zWkJyFG0+4ue42el+dOy
         DQVFhtnbYnTO5aq8CD4lqBSQ5G+vzCNQntMr9KKNKCfYIAqzFvVICKZHNIjp5AfGGg+/
         6GISHWhAM+qmWlF7GSbKKApjfpv8vziGxdBRMHMpTbm9A4XjCtKBihLEGdX22Q9kNtGT
         hN7hrV5LbGQ4eH0kS7hToA6XjogBdrP8WwR3EHkY7lTDJr+t17iH5MoOQX1JNdw7tXy7
         WSqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S1gNE/gl";
       spf=pass (google.com: domain of 3m-tpyawkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3m-tPYAwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id f10si693081qko.5.2021.03.15.16.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 16:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m-tpyawkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id y22so20785809qkb.23
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 16:19:55 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:5a8:abe7:9948:175e])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:50c7:: with SMTP id
 e7mr13169796qvq.58.1615850395286; Mon, 15 Mar 2021 16:19:55 -0700 (PDT)
Date: Mon, 15 Mar 2021 16:19:52 -0700
In-Reply-To: <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
Message-Id: <20210315231952.1482097-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 5.4.y] ARM: 9030/1: entry: omit FP emulation for UND
 exceptions taken in kernel mode
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gregkh@linuxfoundation.org, ardb@kernel.org
Cc: candle.sun@unisoc.com, catalin.marinas@arm.com, 
	clang-built-linux@googlegroups.com, jiancai@google.com, llozano@google.com, 
	maz@kernel.org, miles.chen@mediatek.com, samitolvanen@google.com, 
	sashal@kernel.org, srhines@google.com, sspatil@google.com, 
	stable@vger.kernel.org, stefan@agner.ch, Dmitry Osipenko <digetx@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Russell King <rmk+kernel@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="S1gNE/gl";       spf=pass
 (google.com: domain of 3m-tpyawkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3m-tPYAwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

commit f77ac2e378be9dd61eb88728f0840642f045d9d1 upstream.

There are a couple of problems with the exception entry code that deals
with FP exceptions (which are reported as UND exceptions) when building
the kernel in Thumb2 mode:
- the conditional branch to vfp_kmode_exception in vfp_support_entry()
  may be out of range for its target, depending on how the linker decides
  to arrange the sections;
- when the UND exception is taken in kernel mode, the emulation handling
  logic is entered via the 'call_fpe' label, which means we end up using
  the wrong value/mask pairs to match and detect the NEON opcodes.

Since UND exceptions in kernel mode are unlikely to occur on a hot path
(as opposed to the user mode version which is invoked for VFP support
code and lazy restore), we can use the existing undef hook machinery for
any kernel mode instruction emulation that is needed, including calling
the existing vfp_kmode_exception() routine for unexpected cases. So drop
the call to call_fpe, and instead, install an undef hook that will get
called for NEON and VFP instructions that trigger an UND exception in
kernel mode.

While at it, make sure that the PC correction is accurate for the
execution mode where the exception was taken, by checking the PSR
Thumb bit.

Cc: Dmitry Osipenko <digetx@gmail.com>
Cc: Kees Cook <keescook@chromium.org>
Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
[nd: fix conflict in arch/arm/vfp/vfphw.S due to missing
     commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if
     available")]
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
This should have been sent along with
https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/
it's my fault I missed it.

 arch/arm/kernel/entry-armv.S | 25 ++----------------
 arch/arm/vfp/vfphw.S         |  5 ----
 arch/arm/vfp/vfpmodule.c     | 49 ++++++++++++++++++++++++++++++++++--
 3 files changed, 49 insertions(+), 30 deletions(-)

diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
index a874b753397e..b62d74a2c73a 100644
--- a/arch/arm/kernel/entry-armv.S
+++ b/arch/arm/kernel/entry-armv.S
@@ -252,31 +252,10 @@ __und_svc:
 #else
 	svc_entry
 #endif
-	@
-	@ call emulation code, which returns using r9 if it has emulated
-	@ the instruction, or the more conventional lr if we are to treat
-	@ this as a real undefined instruction
-	@
-	@  r0 - instruction
-	@
-#ifndef CONFIG_THUMB2_KERNEL
-	ldr	r0, [r4, #-4]
-#else
-	mov	r1, #2
-	ldrh	r0, [r4, #-2]			@ Thumb instruction at LR - 2
-	cmp	r0, #0xe800			@ 32-bit instruction if xx >= 0
-	blo	__und_svc_fault
-	ldrh	r9, [r4]			@ bottom 16 bits
-	add	r4, r4, #2
-	str	r4, [sp, #S_PC]
-	orr	r0, r9, r0, lsl #16
-#endif
-	badr	r9, __und_svc_finish
-	mov	r2, r4
-	bl	call_fpe
 
 	mov	r1, #4				@ PC correction to apply
-__und_svc_fault:
+ THUMB(	tst	r5, #PSR_T_BIT		)	@ exception taken in Thumb mode?
+ THUMB(	movne	r1, #2			)	@ if so, fix up PC correction
 	mov	r0, sp				@ struct pt_regs *regs
 	bl	__und_fault
 
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index b2e560290860..b530db8f2c6c 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -78,11 +78,6 @@
 ENTRY(vfp_support_entry)
 	DBGSTR3	"instr %08x pc %08x state %p", r0, r2, r10
 
-	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
-	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
-	teq	r3, #USR_MODE
-	bne	vfp_kmode_exception	@ Returns through lr
-
 	VFPFMRX	r1, FPEXC		@ Is the VFP enabled?
 	DBGSTR1	"fpexc %08x", r1
 	tst	r1, #FPEXC_EN
diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
index 8c9e7f9f0277..c3b6451c18bd 100644
--- a/arch/arm/vfp/vfpmodule.c
+++ b/arch/arm/vfp/vfpmodule.c
@@ -23,6 +23,7 @@
 #include <asm/cputype.h>
 #include <asm/system_info.h>
 #include <asm/thread_notify.h>
+#include <asm/traps.h>
 #include <asm/vfp.h>
 
 #include "vfpinstr.h"
@@ -642,7 +643,9 @@ static int vfp_starting_cpu(unsigned int unused)
 	return 0;
 }
 
-void vfp_kmode_exception(void)
+#ifdef CONFIG_KERNEL_MODE_NEON
+
+static int vfp_kmode_exception(struct pt_regs *regs, unsigned int instr)
 {
 	/*
 	 * If we reach this point, a floating point exception has been raised
@@ -660,9 +663,51 @@ void vfp_kmode_exception(void)
 		pr_crit("BUG: unsupported FP instruction in kernel mode\n");
 	else
 		pr_crit("BUG: FP instruction issued in kernel mode with FP unit disabled\n");
+	pr_crit("FPEXC == 0x%08x\n", fmrx(FPEXC));
+	return 1;
 }
 
-#ifdef CONFIG_KERNEL_MODE_NEON
+static struct undef_hook vfp_kmode_exception_hook[] = {{
+	.instr_mask	= 0xfe000000,
+	.instr_val	= 0xf2000000,
+	.cpsr_mask	= MODE_MASK | PSR_T_BIT,
+	.cpsr_val	= SVC_MODE,
+	.fn		= vfp_kmode_exception,
+}, {
+	.instr_mask	= 0xff100000,
+	.instr_val	= 0xf4000000,
+	.cpsr_mask	= MODE_MASK | PSR_T_BIT,
+	.cpsr_val	= SVC_MODE,
+	.fn		= vfp_kmode_exception,
+}, {
+	.instr_mask	= 0xef000000,
+	.instr_val	= 0xef000000,
+	.cpsr_mask	= MODE_MASK | PSR_T_BIT,
+	.cpsr_val	= SVC_MODE | PSR_T_BIT,
+	.fn		= vfp_kmode_exception,
+}, {
+	.instr_mask	= 0xff100000,
+	.instr_val	= 0xf9000000,
+	.cpsr_mask	= MODE_MASK | PSR_T_BIT,
+	.cpsr_val	= SVC_MODE | PSR_T_BIT,
+	.fn		= vfp_kmode_exception,
+}, {
+	.instr_mask	= 0x0c000e00,
+	.instr_val	= 0x0c000a00,
+	.cpsr_mask	= MODE_MASK,
+	.cpsr_val	= SVC_MODE,
+	.fn		= vfp_kmode_exception,
+}};
+
+static int __init vfp_kmode_exception_hook_init(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(vfp_kmode_exception_hook); i++)
+		register_undef_hook(&vfp_kmode_exception_hook[i]);
+	return 0;
+}
+core_initcall(vfp_kmode_exception_hook_init);
 
 /*
  * Kernel-side NEON support functions
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315231952.1482097-1-ndesaulniers%40google.com.
