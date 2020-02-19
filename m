Return-Path: <clang-built-linux+bncBC2ORX645YPRBHXZWHZAKGQEWWTSYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1673316381F
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:09:04 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id j9sf16710489ywg.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:09:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070943; cv=pass;
        d=google.com; s=arc-20160816;
        b=MzZRd78RW4kkZ0QS/VQP3wWsWYg0ICOogZKm+fpgYxIhNM6Rn9KQzizHPxZAKFi/Sb
         nBLcFf/QLzL2/hAGb4obAz4lOqmvXWon0sDpPNx1kZ3wkqMRi7hPumAONdC9bPiF7i0N
         JUM/76vrWAwP8WgZJcOx6kHLrk/LJoCpgcvgDyKuhErDm5PDjpbsBFzd7z7JweahQbVO
         plrktxTGtMhcbGPvO2MsCdfkPZrw51ArHCHR0TOZ01dPetU1PEFxXcTQXOYwo4xBsNHf
         Pw0VJ9BKG0K+2d2T+04K7I13VuT21JG/z2gG844ecDtxT/wucXoO2M7iTVeQkWYlHPiV
         DJRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=f7JkHakKyOYgVNUU0gngI6yR6NvU0TGgCkjVYY5w538=;
        b=QS1dslPDeEEzSdL/O76WPp6Um0rxVOYO+dLliHG+HFhx4xjdR6Y0OARa/Pc7iMyhOw
         SWjFELOttjQQIVzURkYxfJWea0Y67dhj1QPXTQ+6ui8HiAZey1Pd33g/9jeafrh4nMEJ
         tpzYU2WWHueNjv9ulVnuVeaCBLmpgdlK1VqWGoBtKLk5vJtcEiO/ZfCaHq+A/yOLf/DE
         5Xz7YecJQgHe9jOPhoFIkLDlaCPHqvLvj4+AwUv/HZS57SDZjEx1GByv/g1xJSgpXwVE
         hydbw8fNNplXX7wgUoX4V+gikMTQumUh7J0Sar1pvdPL56QhbBrl8DwRSQikndO9mzeB
         f8+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ODNHb94S;
       spf=pass (google.com: domain of 3nxxmxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3nXxMXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f7JkHakKyOYgVNUU0gngI6yR6NvU0TGgCkjVYY5w538=;
        b=RB2bNAHDPN30QDJP9jbaJtIKPp4hsXacmx7UZv4ws6R1iWhPyTR77pZ68uTiD+pvXG
         0hPTh8SVGv8ZxIacarG8NVn7lKu4NgboUIPbRNCK5JTKQbBD24iR5LOdk+L+4V3qJE0w
         R9lA4LhIpJkfSv51f1p+tmhgAaiSI9bS1BIWqA+nfGjle8tYnONWTFJnPt5uIruWdG9M
         eLrkIs9o1Y9yemmqt9T/sTfjQ9q3mKcPvbw1afWL6AZOIMNU43FcsGb/WKNJvoqilMm3
         Q06UARn6F2jJPJpRKhZ4vZ96LVoip5mGQ+9ecR2Ae9mc1pFeG41Cfmp4ac94GRn5yFOc
         6NQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f7JkHakKyOYgVNUU0gngI6yR6NvU0TGgCkjVYY5w538=;
        b=ixpurFxbnA+b1f8eljk9/lWSDPu7FOHGwvP0Jg2LjK+OfdC56xHA4kde8t8h4kVnq3
         H2Zw0lrmsezS5cuzks4THJsWlg01n8uB5R0k60GYsobA5j+Eqmo+TtxdcyYXrS729SlH
         vYyojLNoRzHZIcALc+aR6I9+jD5kZsvGcsMCmWkFghYg/ou9xd4wNA3pO8sE7LSuyuXq
         3Inuu5uVcnxZxD+P1q75d60pVCkldq0eHlJtnmUS4vuwfU13PwLrGD1p7+b3HVJUA/Cg
         xt7boK9B2qEBSKgNVIvL+GfYgR8WVeYowc0ILQy6ABgb3vYRAEJCsdrKAQEulY3a+SXY
         26rg==
X-Gm-Message-State: APjAAAUhbe9daf6MyqR467ZuGlE2o8djxlfQUYe8a/Shw/0f0ZIFpsp1
	23iRkb0+ts6ma9OdE20LweU=
X-Google-Smtp-Source: APXvYqzV978xdw1+xH5sCxgW5UCw3lNPipHsAIaxxb94qROfBV2tfTPbDXxCDmR6BYLexBg1LkXa3A==
X-Received: by 2002:a81:7853:: with SMTP id t80mr19228337ywc.68.1582070942853;
        Tue, 18 Feb 2020 16:09:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls3240744ywg.5.gmail; Tue, 18 Feb
 2020 16:09:02 -0800 (PST)
X-Received: by 2002:a81:2fd8:: with SMTP id v207mr19419515ywv.2.1582070942478;
        Tue, 18 Feb 2020 16:09:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070942; cv=none;
        d=google.com; s=arc-20160816;
        b=0Ui05D9agUaotjt62phigG1jrXrX/YQyJGEYxSynNrqoY6+fZgylt5+iqsGit6imVp
         I8oE43+4TT8JMFRVS7pphhgco9v0+vRrDDGHWp3S1nCV/w+KAIGbSH7Hvodf2O5/HwZG
         3ICpFrUuuOpS8l2D3GM4NqaQJuDbIoTk6gMV3i8xxJvnPaJ4fQ7WvouF5ZtjHW6prmk7
         FEoCmT0WCNjGN0koYZwBHIAG+CsN3K4JJS8MuVpm02rg+gxl26gZbQIosUcfLO516XJ2
         fvJwXvTV8KTgY3V84i1wL+CNHW5GjrtP02CfB1cX6KrcPZzvd8fINo91LORPJQwN1ieh
         ZL4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dz7r1q013n6NcVaMMRs0TXOzsYswHRkIsJwZpxS1u88=;
        b=h1UeoYnFO+4A3qMYsVawSVqY7vX8M6rUa91IiIZ6mT8zSmLe9bCZ/2BGGBFhyH9lyo
         eRsjau3adhXJw0ByjYcEPnGhfsyrqokKTn0RIHnEIONtZAU6J+6BFXdGKgBxhKukUQ6t
         uavgV9mJDK+R+Z6Hp4mD8YBiMZK+PFZjmSM7dZu8u+OTIC1CRuyV8QfE7AX0IurIC3hN
         j77zTDEPY1v2xlm8x15xxVavEGy0GB4SoTFu5l7PLj7hHD47dD2f/I1yPaFuDycYSntT
         yiwuRAVAHgfMv+24CeJxpoh/vLRxJhQgz2smdC5ZyeGyAMIkS2/YX7LMqopYqGmPT6x7
         FO+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ODNHb94S;
       spf=pass (google.com: domain of 3nxxmxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3nXxMXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id s2si41081ybc.0.2020.02.18.16.09.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:09:02 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nxxmxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id d127so14263683pfa.7
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:09:02 -0800 (PST)
X-Received: by 2002:a65:4647:: with SMTP id k7mr25592307pgr.11.1582070941602;
 Tue, 18 Feb 2020 16:09:01 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:16 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 11/12] arm64: scs: add shadow stacks for SDEI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b=ODNHb94S;       spf=pass
 (google.com: domain of 3nxxmxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3nXxMXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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

This change adds per-CPU shadow call stacks for the SDEI handler.
Similarly to how the kernel stacks are handled, we add separate shadow
stacks for normal and critical events.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/scs.h |   2 +
 arch/arm64/kernel/entry.S    |  14 ++++-
 arch/arm64/kernel/scs.c      | 106 +++++++++++++++++++++++++++++------
 arch/arm64/kernel/sdei.c     |   7 +++
 4 files changed, 112 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index c50d2b0c6c5f..8e327e14bc15 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -9,6 +9,7 @@
 #ifdef CONFIG_SHADOW_CALL_STACK
 
 extern void scs_init_irq(void);
+extern int scs_init_sdei(void);
 
 static __always_inline void scs_save(struct task_struct *tsk)
 {
@@ -27,6 +28,7 @@ static inline void scs_overflow_check(struct task_struct *tsk)
 #else /* CONFIG_SHADOW_CALL_STACK */
 
 static inline void scs_init_irq(void) {}
+static inline int scs_init_sdei(void) { return 0; }
 static inline void scs_save(struct task_struct *tsk) {}
 static inline void scs_overflow_check(struct task_struct *tsk) {}
 
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 4b18c3bbdea5..2e2ce1b9ebf5 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1050,13 +1050,16 @@ ENTRY(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1066,6 +1069,15 @@ ENTRY(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal_ptr, tmp=x6
+	b	4f
+3:	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical_ptr, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index eaadf5430baa..dddb7c56518b 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -10,31 +10,105 @@
 #include <asm/pgtable.h>
 #include <asm/scs.h>
 
-DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
+#define DECLARE_SCS(name)						\
+	DECLARE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DECLARE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)
 
-#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
-DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
-	__aligned(SCS_SIZE);
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr)
+#else
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+		__aligned(SCS_SIZE)
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+
+DECLARE_SCS(irq_shadow_call_stack);
+DECLARE_SCS(sdei_shadow_call_stack_normal);
+DECLARE_SCS(sdei_shadow_call_stack_critical);
+
+DEFINE_SCS(irq_shadow_call_stack);
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
 #endif
 
+static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p;
+
+	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				 VMALLOC_START, VMALLOC_END,
+				 GFP_SCS, PAGE_KERNEL,
+				 0, cpu_to_node(cpu),
+				 __builtin_return_address(0));
+
+	if (!p)
+		return -ENOMEM;
+	per_cpu(*ptr, cpu) = p;
+
+	return 0;
+}
+
+static void scs_free_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p = per_cpu(*ptr, cpu);
+
+	if (p) {
+		per_cpu(*ptr, cpu) = NULL;
+		vfree(p);
+	}
+}
+
+static void scs_free_sdei(void)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		scs_free_percpu(&sdei_shadow_call_stack_normal_ptr, cpu);
+		scs_free_percpu(&sdei_shadow_call_stack_critical_ptr, cpu);
+	}
+}
+
 void scs_init_irq(void)
 {
 	int cpu;
 
 	for_each_possible_cpu(cpu) {
-#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
-		unsigned long *p;
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP))
+			WARN_ON(scs_alloc_percpu(&irq_shadow_call_stack_ptr,
+						 cpu));
+		else
+			per_cpu(irq_shadow_call_stack_ptr, cpu) =
+				per_cpu(irq_shadow_call_stack, cpu);
+	}
+}
 
-		p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
-					 VMALLOC_START, VMALLOC_END,
-					 GFP_SCS, PAGE_KERNEL,
-					 0, cpu_to_node(cpu),
-					 __builtin_return_address(0));
+int scs_init_sdei(void)
+{
+	int cpu;
 
-		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
-#else
-		per_cpu(irq_shadow_call_stack_ptr, cpu) =
-			per_cpu(irq_shadow_call_stack, cpu);
-#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+	if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
+		return 0;
+
+	for_each_possible_cpu(cpu) {
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP)) {
+			if (scs_alloc_percpu(
+				&sdei_shadow_call_stack_normal_ptr, cpu) ||
+			    scs_alloc_percpu(
+				&sdei_shadow_call_stack_critical_ptr, cpu)) {
+				scs_free_sdei();
+				return -ENOMEM;
+			}
+		} else {
+			per_cpu(sdei_shadow_call_stack_normal_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_normal, cpu);
+			per_cpu(sdei_shadow_call_stack_critical_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_critical, cpu);
+		}
 	}
+
+	return 0;
 }
diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
index d6259dac62b6..2854b9f7760a 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -13,6 +13,7 @@
 #include <asm/kprobes.h>
 #include <asm/mmu.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/sections.h>
 #include <asm/stacktrace.h>
 #include <asm/sysreg.h>
@@ -162,6 +163,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
 			return 0;
 	}
 
+	if (scs_init_sdei()) {
+		if (IS_ENABLED(CONFIG_VMAP_STACK))
+			free_sdei_stacks();
+		return 0;
+	}
+
 	sdei_exit_mode = (conduit == SMCCC_CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-12-samitolvanen%40google.com.
