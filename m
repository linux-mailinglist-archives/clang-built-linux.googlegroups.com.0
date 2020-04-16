Return-Path: <clang-built-linux+bncBC2ORX645YPRBHEI4L2AKGQEKRUHSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0885C1ACCFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:18 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id b16sf4744671ybk.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053597; cv=pass;
        d=google.com; s=arc-20160816;
        b=KzkoTdNmlWWuC4mRa2B5VcPR0aAfF6162FbG19TV2h+cDqv/qcsyQ4XY/fJTGccBpm
         LoBF+4aSZsZ2xJKwQ9aI3SV/GYZD2VUuJrj9NxX1eoUchY2Lz5y/SAPSyMkM2XfAGgmJ
         121zZYUDS1ba4QFZc+HXdRoxUS6xH7tbWcrTyZikyMSTnkRxNQLJ+05JWswiF3zBtkxR
         LV1eBC7kd86hZGTp5Le3LSs1AeoX0entv9Y/d+fDQSgKwbOzXFeuyN4Ad8MwuRd97Svm
         PlW42N4dZ16pP7Tntv2VDgX00bTn6H5aCaudaXuUZM482YR/uMniypIVeua6tqizz7sH
         GTOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=180hchqef91+rZ3OCrTPupiReMt/vTtoXZq4PCWRhqg=;
        b=GEMHaUYBZHyjui9pe1vFlAR4BwWGh3MTiqb7Mdo+uDcM74rG+s0jP7IkzxGKc2/26G
         VKnWDZq6iyktp2SgoQUNqU0EHQlBUXWRdd3aOurTzQhAxpME9HdTJn3aMYrNZYSmcFWN
         mrrOie+ChBGqjHJk+BZNzsukv6a4oAiyST38hjnS04sn1J6XzeagWCLt6JjtqI08nYgZ
         0zhP8tbXd0OBi/wlfxAlajmX2ffLBDWoVO4LlhCZRWxLDSzdGj6ic/p/o0Pw+ezXMGIZ
         9SD1L48dOxr9AXZB8iDHUR/v5z/5uDbCBx4F8BbR3ZCAMmSxSXfYEilr1URP/3Jo9Bzq
         xV2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fu1W4Jaf;
       spf=pass (google.com: domain of 3hisyxgwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3HISYXgwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=180hchqef91+rZ3OCrTPupiReMt/vTtoXZq4PCWRhqg=;
        b=j5EoWwpQ058ff1shF1D+lscTBco6O1XDq4SjybP6xNHwQcfC8eSXcEm6MsIua+r3iR
         wT/S0vUtCPlKZ237DpC4LOrnVxyBhyzf51kzVzRtyt3uT5zKlKwGt/kBmFBoeJBeBT2k
         GoaZIHEj39iGZdHa+I22q2YeEhPTEuh8ZbrauuuEPfftZy0Zb0DkJA+1RtxTYmrsunhX
         xK49RdZ9DL6xLoCn3AT0iVgYTsdVqvuiacUkDtCooR8ZtuJER8lzM1O8xE/LX4N7mmPf
         Lu91wPaYSqziOavapEjJJrfC4RrRkfUnIbdD7GMxYBASYQaB9qDoPJ5z8KSjaI4KI/s7
         Vtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=180hchqef91+rZ3OCrTPupiReMt/vTtoXZq4PCWRhqg=;
        b=o54m+JmF7/FPCvYubSwLBylLhrSAYCQ1DLWr7o2n9a8uYru4T5N0UzBhikNdJvuNug
         w0zsjVNzKi9MRNWLHZ3xPCPgbMoPNu5eZRPXp1tsTAU8ld6PGYGfauc1zaN1M8j3DVc7
         JabsDCGMeXTrp+QOn1UEmDx8iToSsSK5zUR+PGLS3v0QqLkNoSjd56fPwQCr1YYEslZd
         mqEsiTZ//LCcHUnbOnRJSWGrsdfP/xrB6OC8kI5iZrQaJVSH926INXkp7MuVYKH8Lvkr
         fN5DrCqdLPiyIdjQdt/fA5OoLF1HPQYx/qU0xIDZgyAImvICknZ6/fAJFvhdFk4JrfWn
         cBwg==
X-Gm-Message-State: AGi0PuYaiZgfkhSo9XwRR//qt2WA+QsADKAJFU6gG+/Kzcy3VrTKKsKs
	Saw8bpdxP792y2I15AEm6Cg=
X-Google-Smtp-Source: APiQypJdGGveFMJuIUGrlhWEyweaa2GoX/rbt+PS4wM7e2fIl0xrGSbKvjW6Ht8khIWr6MCq/rm9fA==
X-Received: by 2002:a5b:e89:: with SMTP id z9mr11984127ybr.4.1587053596971;
        Thu, 16 Apr 2020 09:13:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:408:: with SMTP id 8ls2100677ybe.8.gmail; Thu, 16 Apr
 2020 09:13:16 -0700 (PDT)
X-Received: by 2002:a25:602:: with SMTP id 2mr18233318ybg.359.1587053596563;
        Thu, 16 Apr 2020 09:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053596; cv=none;
        d=google.com; s=arc-20160816;
        b=iwZimSEHsYjHTRRSi+bqFkx4VmB/z2VGbqj8cRR43gkbI3YB7qDFEbOUtArZ/vQ0Z4
         egtbZkUvXf1lYmHV+QY/2J/Ez4KbP833CFynYkXsXczp8gkh9p2wYyw2rsnkI4CH7oWi
         5Lj7f2TDmQgNf/v+bipbyEUqNONOPPlXw0E7VIclm++AVpA0goY60XdqzrFHIhKsj3Px
         h0VYZEGIsXH04pe4pSDLIs47s4j/5CfXvvRoNlOKnK809R2a1VrJR//YR6bkrjs7u2WL
         fzvK1JNYkNB0M2Kz8qSP71W65R5inZSc/qpRfdH0snI6WRTOSZpjJVZHM1LXHrjnhACb
         FYlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hEmpFtr1j91FcLAOVORJZwbS3k3EwuLiK8/TK1VpwGo=;
        b=fXWM8kBAkj4yIb9C9oWD9RZQtDjcU1ZAL3z+4rjIq5xcfc4FCl1hRn4JSHbNfAwpKX
         w9ODpX1rL4XxB2PE10uaUgrgay230rDHccEiysUCpomSFUuJw/3IdRDSvsmQflE7U2vz
         miyRiJu9Ae+NKWtExPUCt04jWIx4FALXV0Mf8MG/XQZR6M3NytO4qnRhvlZUPpfVkOFb
         7M5oFxlUkc94G4pELM5IXV84iRawrx92OqeezroCguLGCGvdCIU34agNnJxhJTLgCho0
         yMnw+eAn2yJyr3uv23kdXOJVNjG0yJwqSMOxrnN739w3MExmVoy4lXD5uGhX8Z7Lj9FT
         RQJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fu1W4Jaf;
       spf=pass (google.com: domain of 3hisyxgwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3HISYXgwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id y140si1277880ybe.1.2020.04.16.09.13.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hisyxgwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id z16so3804320qvo.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:16 -0700 (PDT)
X-Received: by 2002:a37:7987:: with SMTP id u129mr32380183qkc.312.1587053596089;
 Thu, 16 Apr 2020 09:13:16 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:44 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 11/12] arm64: scs: add shadow stacks for SDEI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fu1W4Jaf;       spf=pass
 (google.com: domain of 3hisyxgwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3HISYXgwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
index c33264ce7258..768cd7abd32c 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1058,13 +1058,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
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
@@ -1074,6 +1077,15 @@ SYM_CODE_START(__sdei_asm_handler)
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
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-12-samitolvanen%40google.com.
