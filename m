Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5FVPXQKGQE4CQUNXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3204C11590E
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:36 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id n34sf6426520ywh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670475; cv=pass;
        d=google.com; s=arc-20160816;
        b=CLnNmcItgC8mBfQ0mtIPBrS4G7oo2c/M9Ww+6RIWEfdWIp73II8TH9QVPvnwrRGkLG
         JT+g1ntH99rqZ+F0NXPrb2KTBS6ebdOmgqI5Ia+26yb4acg7lcr4ttuqI6bfmvZFgDRM
         hCnERXOUeUs0sFHsHqgF+uowdBTuErMrES5km+jxMeHPCBD6Ov69nqOEAjXAAtZIrnZ8
         WBC5SzTtb1vjv62U4F1YqB4bK37rlTwycuSqoZ3v8RkgSYc6WiJnlF3s1Xj86gZALR4X
         BsdFOg2sTKhIktyDss2Rbfosf19RkxTi+tX/k0JIssm8Nm9f8HzHr8OwGy4Dank+Absl
         rY3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QqOKI08Httfw/Iw9dNgpg6yb1TmUy7+rEb+whNNSZS4=;
        b=xWSGJRRFeM96IfRbXWJofzXPEnUBL+Bek2fadKlDxbBX4KuKXaekwUEeIweTVSXKm3
         i7kmEbUf910eU0HTHJRcbnLkZD+FJqTQu2a2Xl2z32u7gdG5umSkqBRs39PK9Cfzc6ji
         wtDzZdn+OrsAS3NN0qLuiQvlWMlm1tNuzF+BBsC2flhT/tck7BDrrhm61yN/7vxoArV7
         zmPleoC0KiVlV9Kdmq0va2rsPdlYl3eO1uD07shzfKN2x44dS3u1rcb+Ytr2Ug05tl6X
         F4159KFRSRedZRr9CQL15t/iHSRs9XORMNs8IWOhw2/6Vdu4tvjaFRdCJaUXJcSddpW/
         rjew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IKUt7ka9;
       spf=pass (google.com: domain of 3ydlqxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ydLqXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqOKI08Httfw/Iw9dNgpg6yb1TmUy7+rEb+whNNSZS4=;
        b=FtY9wBeUNOa3qpqmrepui5eRCDlV3C/ZeUkxB//D4VuPkKnK30HbLOrHITnrzDS3VX
         0VFV3ATvK0KmbtS7K6abaEOUI+PvNyyyLr8CCu8TT6PWRzyfEwoRC9xhcbDEEUx5bIPo
         ETIMWKRbiP6Ev7W7RZ8tizeTo/m1BnLXOFC5UGExZ4HbLimhFtE4//im8XgKPQbj3Tee
         HvtTdiwh0l9FZUmxq3xUkkQ+CnzWDI+lkoieesdv1dK+XGwwLWgKmmNlI+HJQNi2QyGF
         6rOBumHtPxgqDPP+wLThLEiie43soxKUkxeLNKdNQgzJM9N1LwoPqcw3fRqufMz8Yuzq
         Z5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqOKI08Httfw/Iw9dNgpg6yb1TmUy7+rEb+whNNSZS4=;
        b=XFJ2u04N+gP3OqRGavB0hcVCk0X7s747+Ptd/U6FovJpC7CnXehoJOAR9gzPtix/mi
         JLtZOI4ngif+e0EmgC44SLO538QedBrmp8vjSWTiqSUcpq+CJGcDTbcbhq03lcqeIuoN
         8uSGWg8TkFccuH4qs7OYVdXIszeLDM1Sy1PqjeTb/bCbOw0QOmxKo2iyjlc27XxXuK5N
         JR+wooRXQm7q3l2jUQm1iP4KEtU1tC2FhLhv+coqgPuHZKuKzMRJRly8hYEMI5ZzFh9w
         l9DyVqosYYDpE55Mke7+zyzEajS19gbyaNU8mMOX9f+PAgUmRlVPTpWCJSb4a3nX9WWi
         zpMQ==
X-Gm-Message-State: APjAAAVkiBwnfeqP0g8BeEh1d7QUg8fU8YtXUctFx2NmnAgM79U8ZB0P
	yeETpzLA5Ylm5CuAXfs68Ns=
X-Google-Smtp-Source: APXvYqzor1qH7y4i6LDj1JFdsD0K2JkjibbrmqD33UaddBROQO5vfV2IHXhnARFRHS2t3kizR8fZMw==
X-Received: by 2002:a25:b3c9:: with SMTP id x9mr11970393ybf.31.1575670475196;
        Fri, 06 Dec 2019 14:14:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:c842:: with SMTP id k2ls1073608ywl.7.gmail; Fri, 06 Dec
 2019 14:14:34 -0800 (PST)
X-Received: by 2002:a81:2ed3:: with SMTP id u202mr8163100ywu.506.1575670474725;
        Fri, 06 Dec 2019 14:14:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670474; cv=none;
        d=google.com; s=arc-20160816;
        b=eK2ceBMJPe5DQo5o2IX7LEypeOj/pnrqlXKu2xgUNCosPh88oebD6C3VOAQ9Hkvzrw
         b57FsaQ3M0DWu4GE9TI5eKhmxZO36Fxs0BeBffPKLpaPfvf6hMqBZmp+CCtYqpCtM+9j
         MA+wZax+nljRW537JqUqnskYoYBTN3QdMdcVMEzSIjv2AeuaW8fWSKJFw6KkIHGDWvPJ
         dRorEQAcpirnkH6jYUrRcKaLjWJQ+kXPx+4X2x/3ZwUIjtNTP3zkxK5WohX8RHUoomRM
         mUv9rL7KgbyY8hWlpro5iD949FeY+mB5soeZIu139EzRsh+5uKs1wTfFp7N8qCCe5NEv
         v01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RFQeZBUfRbHmuBkixdwdHyK03/i2WwDYL6zKZ0PVNPE=;
        b=Ga5hTXBPYJSbuqPUScfBWCh/Vf5XaIrwEe0f7QhPWMj4fs6rqQrlDdhKMlOSt0iPXW
         jsI82mfyVYfSmm+PE1y0CLlSpaZhnGCHgoXZibylGXbrKbLiaOlJfdL57BqNhcslrfUB
         CKAoCdMVU0XCN64FZeTe8elAhTxkCShjtBumw30ElyQcJv7gSgi87YCbjRO3RFA6OP/u
         cgNckYqOQuuhs5NeYYkZWPMSdgx0ZYso37MUKKhbTRlN+GS+08Bzvo7Ht0D57BFsuvg3
         2Blgw5n3Az0PxcbrSjycErMMLjlYRXmyMxQ7CguvjA8MgDctXQdlOG0VC93gmxuHgTGe
         d6qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IKUt7ka9;
       spf=pass (google.com: domain of 3ydlqxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ydLqXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id g9si976420ywe.2.2019.12.06.14.14.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:34 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ydlqxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id a4so4526842pgq.23
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:34 -0800 (PST)
X-Received: by 2002:a63:3484:: with SMTP id b126mr5874359pga.17.1575670473753;
 Fri, 06 Dec 2019 14:14:33 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:51 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 15/15] arm64: scs: add shadow stacks for SDEI
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
 header.i=@google.com header.s=20161025 header.b=IKUt7ka9;       spf=pass
 (google.com: domain of 3ydlqxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ydLqXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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
index 7aa2d366b2df..9327c3d21b64 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1048,13 +1048,16 @@ ENTRY(__sdei_asm_handler)
 
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
@@ -1064,6 +1067,15 @@ ENTRY(__sdei_asm_handler)
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
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-16-samitolvanen%40google.com.
