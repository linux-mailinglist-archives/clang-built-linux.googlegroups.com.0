Return-Path: <clang-built-linux+bncBC2ORX645YPRBANY2XZAKGQEVAHNEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C9916ECBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:20 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 71sf50207uae.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652419; cv=pass;
        d=google.com; s=arc-20160816;
        b=qSNWU5/Y/bAHG91rvIZzO2+ByQ9Pn5q4ZoXfbYecp/HrkMLEDUKMnexbSQEmaCOAFa
         6c/P6PL7U2Qtjci0t2KcOqqnBAEwGZe5JPUQ3zUnodOBngpzOWPclDSyRXTZhbJbYG4H
         APwOeI52wUiC1JgVzD47GhuXLDJ4BhPg+GDUxWQaTQg46if4BJybLYTikCdSr/zReyin
         Cq7zoaB3GYWPWNoeqL9AUBCx9QKZy6ECNKVPdXezS6LbExMpgt2DaZvrmA9QPOfxDlXM
         oOc8zioF2eYdspe1si1uAoePc0XjIHLNZQdjlHUos7zTSDFv15pS6siNVzFM9K2liRoL
         R2gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rb+ky/0zQYEJzLxz1QIpMeyT1odwbFTCiCgLARrhqsM=;
        b=s281T7UTejR+er0Nj3wwK4KK/7eq386h3uGE0OlLwlUY1DpOjaJ1yAmug3VA+1V2Uj
         W7rRYZM6E/UakKX0WofxKlsWh+pPLN/y0NKY5P4V8HriYWZribuNdlu770sgQPQ14L5w
         rDQHlTEro3+rUtWMfF4Ol9BwbBm5djkWiyrFgJA3uxk+bSb2/ppBWaSsIVHblsMz21Sy
         P34fYCfUzqbJgnEhI5WAcABhIhpNV8WpSkvjiBh7K4pw21eFALo9zOboSJhuZwC9Tykx
         m7aPan6nPrfMJlNfo+bdjR5yEIjsCTJDATp1sJMFjqxDiUsPz37/KXpFVXx7LIjmfcH0
         6chg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QBeeCatb;
       spf=pass (google.com: domain of 3avxvxgwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3AVxVXgwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rb+ky/0zQYEJzLxz1QIpMeyT1odwbFTCiCgLARrhqsM=;
        b=tkuBJGQq1F3vQtJ5wJ4eMmioU2sLc2+K968gWEht/41/7oE/hGRUI3CFfKLeam/6jY
         peaz70B+rrg2rTLjQl0qMWAUy17fzpT5XxHwjjAjzLl/ImPmzV5ZFabfry+cxhT4XGrt
         PXwrQ2NgDqCa2SOdw1UGdJtNmJIZAn8JsJFJ/sMz6QiebcKe8QBO+bzBnBVJ2oY9Muk+
         rNKHnc4sVBI7c9VoigFsB1jgw5GwIIP24WGOJfGj/9GjTroVcKJY2b+yw0q0sR4RnlQs
         JlmA/60es6a5OtlDSigKa8e4Up8KTcrUrgL2iJRqWQ0OvELhv9rqHEONkmVSt4AP0jaL
         2sFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rb+ky/0zQYEJzLxz1QIpMeyT1odwbFTCiCgLARrhqsM=;
        b=XUOj5WTC98di2Lb1wEKdCmex65tHdmfuPRY46A17EmXOBbGIfCSRBuL6OhWY6B1Re9
         22/0+tCaDbxSPKtHfPo+JG2G4gcrcnYee/+Sxq6uKK6qtdJ2h4onHpoywV8wNMl/Gty3
         xY+n8Yf4j/1FqSmVLRQd4je28Loc2U3d3bHDeTobB9EHiu/Px0hsFh6pE7eOCc8/13xS
         oQ2kyMJEWntESs7NXcmlHJLuct/+332qSckNKFT3y9B/qY505DhafQYQJUOUEjv2c0Y8
         AQ4+rWn/ASnOiCc7y0Jc+RRoEp0IkUVfh0B6TmbGuaAhGH+AIA6SZuq9F8+1IUdWHNO1
         DZMA==
X-Gm-Message-State: APjAAAXvAowXr5UMOrna5ICWiamN2UXJXi9aBUDgEGBxfRvbWm9pn+HR
	WHIZZ3dTaie7smj8IwlMBuQ=
X-Google-Smtp-Source: APXvYqxsKuXzAZcf7SAwEMTPOxBok/G4ykFD9ya+Gkqbms6ucW4Y7pNlYCDr4teyKhcQQfRvyrKJQw==
X-Received: by 2002:a1f:7288:: with SMTP id n130mr10274vkc.46.1582652418013;
        Tue, 25 Feb 2020 09:40:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls924354uah.0.gmail; Tue, 25 Feb
 2020 09:40:17 -0800 (PST)
X-Received: by 2002:ab0:48cf:: with SMTP id y15mr275415uac.26.1582652417628;
        Tue, 25 Feb 2020 09:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652417; cv=none;
        d=google.com; s=arc-20160816;
        b=s+qitvFU4eTAvorav68mcg0KOfA7HJqQhjWvI9fTKZeKb7n0qrWfdf3AMdwxsQgQDD
         kLi8wzfti7pTfLXbElEEbzkLCPcGaKZ3FV6HdgBAioQjdeqjwpWxclwnChwlGb3bySHM
         36B6CAiu4m2waha8QRa6QGTPEfzqlojAYxbLYYAd8JV08EexZeAoEeggPLhnW3PhONkN
         8P07eZrHzY8NIoLudL4S0GRSaAEVsClSIABusPHvzfRzOdyEFd6QfDmuJyPXgL6x1iUL
         e2krw/P3BNK3Eh/kYQnRP5StrQ7ef7D8aWeY+EIdPg2TpcSrZSXUxKIPyUI4FxslChvP
         FxoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dz7r1q013n6NcVaMMRs0TXOzsYswHRkIsJwZpxS1u88=;
        b=fES3RGkjFGdY970/3CFgr/pb5NMxv54nIbxdEy7ZdCdjoIJVFnz8YVo7nxEIPPFoRw
         sRomzeei2nO5XUFri7SkMtxcoKfSleAxV3vZhWz8NOK+Z/sma/dhjkukwkH++dqWaH7v
         Uzw6u7//s7ul5MhnL2SrGz9pS21Ma7PX3Uy3T8yhes4u2TOxQ8LryuTpk6ZrI43Ph0oL
         HqQW3LsTunUMjj6zW0xN/M/dCg5liQfYKnVjW3phi26yJE1b/kfnzEOrFHluDPuYxLj9
         bQLdA0ilpyEMrNro2AVUtpPIcTz8WsqyPVWl5gGhxE1cIwB0+RgD/En81a+gpDuuQtbd
         N9MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QBeeCatb;
       spf=pass (google.com: domain of 3avxvxgwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3AVxVXgwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id h6si16541vkc.3.2020.02.25.09.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:17 -0800 (PST)
Received-SPF: pass (google.com: domain of 3avxvxgwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y3so244022qti.15
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:17 -0800 (PST)
X-Received: by 2002:ad4:4e24:: with SMTP id dm4mr49827392qvb.170.1582652417166;
 Tue, 25 Feb 2020 09:40:17 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:32 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 11/12] arm64: scs: add shadow stacks for SDEI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=QBeeCatb;       spf=pass
 (google.com: domain of 3avxvxgwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3AVxVXgwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-12-samitolvanen%40google.com.
