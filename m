Return-Path: <clang-built-linux+bncBC2ORX645YPRBX4EYLYQKGQEYGNW7KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7FB14C043
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:50:09 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id r2sf6027566pls.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:50:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237407; cv=pass;
        d=google.com; s=arc-20160816;
        b=q5llMfR7Qk/iYqOaf16V6GbpTlUZBtr0S+x/SvVWWA7Q32ZBAAJ9l3v5f4DSVHnjPW
         KWutBUyBNTPH1ZC59IFfBffHTg/c/5/BC3yJ0pCK9UQ6Vi4rN59gGbUXxG+vqYZjGYRp
         63pw+hWL9xgBF5zYOdMPySY7lAZd555kXfe9MNrk14OFQ0ph6jev6tcVzl4fFZH7Ih6b
         Mt8xX9eoftJN7HU20ebMUW+LT87UStYa5IHamIBdMBDjpQwDsWzaRF2fsOuueG5aUq7f
         cOm5xPjNp1UxOddlFGQwGN19FwOOR0s5bYGMe8v4XaOwuYTRoPKviA/hpmu6vwH2i57W
         cYuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AfL2uEMzxa6IMzYTLFpXUHUExgWErSzaqRTWhIOfZrQ=;
        b=pP64y2epxHDpwhOD8cyO9JoYDpM52dy8gXFLfBLIhEm5yfOvI29QUYtoPmzUuOb6lB
         tg/bQjxkgYMW5ttFmvClzhvpj4yGg97NA0aW3hjbM4Kvq5NlRhnWTnC5Ig5vPcSHIr7Q
         +Lav0AxumG8s4ExL21H8bb4SFDAuDVAo3LE4YGarM+EPJWkwyEel8ZPE3LHmojU5Q8T+
         S5sGZuSW5XCh6rdauIQHdgxTgAVrrDb6L0rSw54tDhYiLi7qCf3TKn4+mMQORg6c9elv
         XixM35KpGgAt7H0FkhLpKrx5gjsOsJhsrCfAfWuxtwQ0KcTOLgh+aE4m7AzX7JVAzYfk
         wtzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vkgliyxq;
       spf=pass (google.com: domain of 3xoiwxgwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XoIwXgwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AfL2uEMzxa6IMzYTLFpXUHUExgWErSzaqRTWhIOfZrQ=;
        b=cF4lwF2iRcvOxdeyMhqYy8knEMyuO+Lp5jMzsZSBMBhhT7kPtROTvsVVfSuhNEyRti
         U3B+GTSfDtIZZbOf0kEi1KkwPFLGF1p1wpJrXsriw5/ze8ThPFzRlHAybYhIytzjP0qs
         5CaKFB6wImHUfBXbIKyocgkdzn2NSxCq85OQdx1ST2EuR0ABbgWm6BAXuN2tF/4ZKzhq
         78AratQjrMIT6yvIPIXT7kNK7feZkTno385kBtrw9D3V8loDX/LUnGFgIBL/b6XHYvrr
         G8F1i4i5FWgyHbiFyvTjWsMkjD0rbSXh4GegZB9GyNuD0RlglR7dRj/jkylxHUc07R3i
         JLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AfL2uEMzxa6IMzYTLFpXUHUExgWErSzaqRTWhIOfZrQ=;
        b=byz6iJwnJl2tZ63XIkrVPUhEkU9oUL33zTk+saOdpvKzu0RgcnONQaTS+Bbt1n8c74
         RF6Nqo1YzPezpNJoAjzna2AX/y+0RMC8llX3yTLh/tqRb4dqeZBxdEqLGLPS6smMLkof
         +38VIOfabvfVoBrBWbuFqxXWHstxBzaBgujXGqBkExkrff+WgsZgleDie/zqaKN3kE76
         0ECakANjZU8vRhGRegYNzYe0rEkvZjKPwWRMHZOGTcwfi7Iif2jmfYRkoQt2hNU4qFeu
         b1JqUhI/eInjCtks+EEZMXT/POCVO9bMpsxzkGuJEHOOkNMhlpWzpzwKii/ky+SwP2kz
         G9rQ==
X-Gm-Message-State: APjAAAVtEbbLxJzKTzH7phJ+kX8tEPqSEWQ6nKFTazMHro5KUJY4NO7F
	KQxddQvkSytcVJVbG3U2xiQ=
X-Google-Smtp-Source: APXvYqysBT9uIZKBad2tufveC46eH2gbNI4u+plamhFXscJ3ebafAIQYFyC2/UWbrsblrt5eTiieiQ==
X-Received: by 2002:a65:49ca:: with SMTP id t10mr27382598pgs.37.1580237407680;
        Tue, 28 Jan 2020 10:50:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls6345053pfn.2.gmail; Tue, 28 Jan
 2020 10:50:07 -0800 (PST)
X-Received: by 2002:a63:e911:: with SMTP id i17mr26638607pgh.42.1580237407146;
        Tue, 28 Jan 2020 10:50:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237407; cv=none;
        d=google.com; s=arc-20160816;
        b=LmfkM4B0KPfrcPaq5xuRvu43mSDgXO6LU5Pcstj3NeiDCVsACiAdTqYVTNiuxcDYjb
         vT6RUX6gVmVtrrJ7/pnYxQVJdH1r1tC4lu6eyWhAMRcSavTN1G3XJq/m1RYKgo6TQwBS
         m2f6//7lUEO8nkQWjnVEsPcTdBVUIGotS5LO1Y4IF6s79RmEZAXhh2Tjc1bdJBRXdp6t
         T4ZIolX1f1iVD6l8xzwC8jaoj5vBlhdftXpKvCJQzFcJT7PsUocSZfXhIfLp+w1ZuMst
         28erKCXSgnZ8T9n5HjjoPI16HAIPr2mIlqbwD67DtOw4e1vW2sHOoPuNkPEp1A61pty9
         JZiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4B2WqvviuVIoria6yyW+igrLG0CrIUR2gBtuNcWMbWY=;
        b=Q64wVCt7BR55pq8CprAa5j9hSVgc4dfysdQp1jwoduDt1a7smSDU8d3BcxVmwzjmcW
         EauZ7a9jBW+P4/u6hyNX5qQgWz9K6Ct9GmN4Q3/DcoL/AjqsNUrwIlCFMJiaUdj3uXRV
         QNnkMMMVu/l/FDEGarOq7re2ctB6x3NTC1qAVxA98I2xgQKyu+1cSCfjUFvevTsnzb3N
         z0ADFMpVrCdDsVoKuf1fxCu9fHstuqig9eSTXMxjWhs1ehsOJXZ3GRaGr5W3o1LPSqR/
         amUP5UXYkDIA8JQZAh+U0ow+5eW17mNcs2nEmKpfyiojMydbM1klpqEvmiQFNgopqmef
         h3BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vkgliyxq;
       spf=pass (google.com: domain of 3xoiwxgwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XoIwXgwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id x13si1091355pgt.3.2020.01.28.10.50.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:50:07 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xoiwxgwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id d9so9120325pgd.10
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:50:07 -0800 (PST)
X-Received: by 2002:a63:4b49:: with SMTP id k9mr26409444pgl.269.1580237406557;
 Tue, 28 Jan 2020 10:50:06 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:34 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
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
 header.i=@google.com header.s=20161025 header.b=vkgliyxq;       spf=pass
 (google.com: domain of 3xoiwxgwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XoIwXgwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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
index f9370d768494..42183895fb84 100644
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
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-12-samitolvanen%40google.com.
