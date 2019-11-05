Return-Path: <clang-built-linux+bncBC2ORX645YPRBSMYRDXAKGQEQ3API3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7079CF0AA2
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:58 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id z26sf8871038qkj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998217; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkkvPvCowxChMoRsiTNlPRza1oUWorwHR/vsBoHrLy1v6aKbxqdn8XksFo0MAWv/G7
         OH9sgTJLi+1OAkD+MW5LGZp5jsTuoSQXYRpvYY4ed/vlDWBfSr6G+OPiCo1vVNkF9qxA
         kkhMvYuNLS1RVQ39WQJXI43v7hKCpM5M6h+DoEWqpLAQR0qgtL0rt4u0whPhCikW1HX2
         D3VUL1RDyo0i3ZGq+y3dgefXi0vHU7kRug1b869MDU+glIT8kWIUfxNxisviF9Bx+221
         raNejmQHmm2DuKcb4z5TvQLcqJeWOzSufab3nfopk6SKPFdZy/B27+4C9V9gOPGd6AdN
         7v4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3mBbAgXFIz3bd8ycqdixI/I/MzUhkZedxN9PMm0H/J0=;
        b=W8H6BljMf8Orz2RHELGsbUH03LoENCgg66SnREulU9zOLEfIkqj/0Bi9tel0A6ppJU
         Hmi4Mp39WTiBrUMuRUin+cwO4FRgebgsr4ulQkS5r0OoJbmI63lhezEHWBa0jocevxXs
         tg9uqwsnim4nuhunQW+zpX6T6Pp4rg+hIK3RNjC8De8C45AUGUwBQ8azTrjxfVwAdmEI
         DWsKMCxqpr8V6NlbzynyqDmPIlIf4pk/b9+Ko5umESXrG2nlRwDcyzCBDmZj6mQetb7e
         J5TdDoKu3esI0iN4RGO2BzVatgV9rklnbF0d+wMTnXBdJL51fWp7R/CRh5lIDoxkajHX
         hEtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LsQ5nRDi;
       spf=pass (google.com: domain of 3sazcxqwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3SAzCXQwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mBbAgXFIz3bd8ycqdixI/I/MzUhkZedxN9PMm0H/J0=;
        b=LnTbsA39iVyLwv5+zz6SeNyyfyXFXOWbZB8awyed1iUcPytTzDIMiYUBL9I9hl1MzP
         y8IqHu0TTtGtnj70+zSYfmTjXjgn7oFaXrZrt1ed3WlKk4JQ9/3lTVF9GB0q2l1BF8AI
         eyANKkfw8V7cObH16o80BHEpRRJj2xEOXeBYE8MvD3hOtpRE5MHsQVonUa9AygCen8k0
         lstzumOOXRjKvw5mIwf+OU46ibm8AyOojtAxulHR/176wCDAlfAHGKpRVamEdZXGrumO
         gLewUQ4jDsQDIk2FhjTLVBJ3X99AEG/IDxxQNaGglE6bvNx+q2LgYqhPHtt89zL53rsb
         x2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mBbAgXFIz3bd8ycqdixI/I/MzUhkZedxN9PMm0H/J0=;
        b=bsraOWf6dstF26yvxRzrIZhGzfV6n0DQZxFoXsILfkFuUgxu0JUAucVaXAg5bWlbyZ
         c1JtgYodCWv9WcQRxzpV03L6Jjd6LKWF3AYHxR6fTJFpxFRddEXseZEkKA6w6qqm82QW
         WOOOJhEMlFLRe7mowLOiLrCJu1x8Dy4uScPAuZKskpvBL1sfxZGwiWLt4CdvPhYfQ5Da
         0+OpQi2GoPZ4anKUsLaR5LXDhK8IOMRRLnfDFG/3TuKT9V6qQ8CPt6/huZ/oGgokiZ4u
         vXEmOCUSanJhY6ZIhLCHQJUwZkB/9lxKKXzGEnJiPwBP8ulQCKBeP83x5tL1byKAiCh+
         qQfg==
X-Gm-Message-State: APjAAAULE6wwkSwU3/ViAEdqgQmW7SNaiA8OTfFyEYFqneSdA+k+/l2E
	qhj4Wv61/ENYEWl1x2QSadU=
X-Google-Smtp-Source: APXvYqwG9GCQN2nO+mis/lGQ1E0kOItFUKfsd/vMYwpT7XL+diYNq3nxgarUWVVZsPVxfqCEhlI2ZA==
X-Received: by 2002:a05:620a:1319:: with SMTP id o25mr1717757qkj.83.1572998217433;
        Tue, 05 Nov 2019 15:56:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls83301qtk.3.gmail; Tue, 05 Nov
 2019 15:56:57 -0800 (PST)
X-Received: by 2002:ac8:6d3d:: with SMTP id r29mr10725460qtu.285.1572998217096;
        Tue, 05 Nov 2019 15:56:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998217; cv=none;
        d=google.com; s=arc-20160816;
        b=CxtBtRZKquDibFOVx3uWtrtkxDPAvg/78QmMgiOJveNTs7k4NpSo8oTwJ57IlbMnmd
         8Fqz3vdeCz8fKfVSPqh3pyQfYmA5GBqTkfKbm4kIR4ETy9m5ALJlsJvkgOvSBVpHxcK+
         uYeq69txQ0L9cibzvKGAz4U3NQ98sGw0zEeV7B97L4ZO2gW2fgPuH/y8JlA77etrLwAl
         Mvjlz81MXk0XWwoit7JHOGyYYVyfVzIqgt2WkO1eURV1apSjosgC8KirjlsjDJt06u+e
         1IcdN1LKuV0asho82c/HIiTMHaOnEuQ5Y2V8vFT1hFThzoZMHlf2p6G1ADMPeGE8Q975
         qtBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=EORujaaoDl5CyEMEo7ESY7Wd3JkreW+Wpr9MONYQK/w=;
        b=rwIUmRUoHCVnNvoZAXrG2mUMQKAatIjEWMk67LEZgxyc0/fCLNZz1fgDoctdHVWSi9
         +WMjL8uCWzNw5YZedhLLTYAfOj+kunTSPr2v+RUkuqoqcCDpE/nmKK1pzBbpOc9pT58R
         xrG+jwcoCYvKX6Hox/9gracGa7mfL4l7SzX5NgPsrEER3pQ1COlbeVkObzFDtK4wC/p+
         ky/hqsrVxU4BLBCzMSpxfszP8D9sVnGmptS4kVdtrJwhHcWHfSi9lKdrCiHAGlDG7fYh
         +vzl7sj4X0/D4eNN1qxyueGQEJQO3nNdAGLzSPEPNtqwWzdLPCe7wh3ETcCWKiUo3Gas
         Iejg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LsQ5nRDi;
       spf=pass (google.com: domain of 3sazcxqwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3SAzCXQwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id v189si381102qka.2.2019.11.05.15.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of 3sazcxqwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id n6so9947536vke.22
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:57 -0800 (PST)
X-Received: by 2002:a1f:7d84:: with SMTP id y126mr15258241vkc.99.1572998216495;
 Tue, 05 Nov 2019 15:56:56 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:08 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 14/14] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=LsQ5nRDi;       spf=pass
 (google.com: domain of 3sazcxqwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3SAzCXQwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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

This change implements shadow stack switching, initial SCS set-up,
and interrupt shadow stacks for arm64.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig                   |  5 ++++
 arch/arm64/include/asm/scs.h         | 37 ++++++++++++++++++++++++++
 arch/arm64/include/asm/stacktrace.h  |  4 +++
 arch/arm64/include/asm/thread_info.h |  3 +++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  3 +++
 arch/arm64/kernel/entry.S            | 28 ++++++++++++++++++++
 arch/arm64/kernel/head.S             |  9 +++++++
 arch/arm64/kernel/irq.c              |  2 ++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 39 ++++++++++++++++++++++++++++
 arch/arm64/kernel/smp.c              |  4 +++
 12 files changed, 137 insertions(+)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8cda176dad9a..76e32d01d759 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -66,6 +66,7 @@ config ARM64
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
 	select ARCH_SUPPORTS_NUMA_BALANCING
@@ -948,6 +949,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
 config ARCH_ENABLE_SPLIT_PMD_PTLOCK
 	def_bool y if PGTABLE_LEVELS > 2
 
+# Supported by clang >= 7.0
+config CC_HAVE_SHADOW_CALL_STACK
+	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+
 config SECCOMP
 	bool "Enable seccomp to safely compute untrusted bytecode"
 	---help---
diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
new file mode 100644
index 000000000000..c50d2b0c6c5f
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_SCS_H
+#define _ASM_SCS_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/scs.h>
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+
+extern void scs_init_irq(void);
+
+static __always_inline void scs_save(struct task_struct *tsk)
+{
+	void *s;
+
+	asm volatile("mov %0, x18" : "=r" (s));
+	task_set_scs(tsk, s);
+}
+
+static inline void scs_overflow_check(struct task_struct *tsk)
+{
+	if (unlikely(scs_corrupted(tsk)))
+		panic("corrupted shadow stack detected inside scheduler\n");
+}
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+static inline void scs_init_irq(void) {}
+static inline void scs_save(struct task_struct *tsk) {}
+static inline void scs_overflow_check(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* __ASSEMBLY __ */
+
+#endif /* _ASM_SCS_H */
diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 4d9b1f48dc39..b6cf32fb4efe 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -68,6 +68,10 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk);
 
 DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
+#endif
+
 static inline bool on_irq_stack(unsigned long sp,
 				struct stack_info *info)
 {
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index f0cec4160136..8c73764b9ed2 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -41,6 +41,9 @@ struct thread_info {
 #endif
 		} preempt;
 	};
+#ifdef CONFIG_SHADOW_CALL_STACK
+	void			*shadow_call_stack;
+#endif
 };
 
 #define thread_saved_pc(tsk)	\
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..b3995329d9e5 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
 obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
 obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
 obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
+obj-$(CONFIG_SHADOW_CALL_STACK)		+= scs.o
 
 obj-y					+= vdso/ probes/
 obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 214685760e1c..f6762b9ae1e1 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -33,6 +33,9 @@ int main(void)
   DEFINE(TSK_TI_ADDR_LIMIT,	offsetof(struct task_struct, thread_info.addr_limit));
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
   DEFINE(TSK_TI_TTBR0,		offsetof(struct task_struct, thread_info.ttbr0));
+#endif
+#ifdef CONFIG_SHADOW_CALL_STACK
+  DEFINE(TSK_TI_SCS,		offsetof(struct task_struct, thread_info.shadow_call_stack));
 #endif
   DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
 #ifdef CONFIG_STACKPROTECTOR
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index cf3bd2976e57..1eff08c71403 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -172,6 +172,10 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
+	str	xzr, [tsk, #TSK_TI_SCS]		// Limit visibility of saved SCS
+#endif
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -278,6 +282,12 @@ alternative_else_nop_endif
 	ct_user_enter
 	.endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	.if	\el == 0
+	str	x18, [tsk, #TSK_TI_SCS]		// Save shadow call stack
+	.endif
+#endif
+
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
 	/*
 	 * Restore access to TTBR0_EL1. If returning to EL0, no need for SPSR
@@ -383,6 +393,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x20, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -400,6 +413,12 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	/* switch to the irq stack */
 	mov	sp, x26
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* also switch to the irq shadow stack */
+	ldr_this_cpu x18, irq_shadow_call_stack_ptr, x26
+#endif
+
 9998:
 	.endm
 
@@ -409,6 +428,10 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 	 */
 	.macro	irq_stack_exit
 	mov	sp, x19
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* x20 is also preserved */
+	mov	x18, x20
+#endif
 	.endm
 
 /* GPRs used by entry code */
@@ -1155,6 +1178,11 @@ ENTRY(cpu_switch_to)
 	ldr	lr, [x8]
 	mov	sp, x9
 	msr	sp_el0, x1
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #TSK_TI_SCS]
+	ldr	x18, [x1, #TSK_TI_SCS]
+	str	xzr, [x1, #TSK_TI_SCS]		// limit visibility of saved SCS
+#endif
 	ret
 ENDPROC(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 989b1944cb71..ca561de903d4 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -27,6 +27,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/pgtable.h>
 #include <asm/page.h>
+#include <asm/scs.h>
 #include <asm/smp.h>
 #include <asm/sysreg.h>
 #include <asm/thread_info.h>
@@ -424,6 +425,10 @@ __primary_switched:
 	stp	xzr, x30, [sp, #-16]!
 	mov	x29, sp
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
+#endif
+
 	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
 
 	ldr_l	x4, kimage_vaddr		// Save the offset between
@@ -731,6 +736,10 @@ __secondary_switched:
 	ldr	x2, [x0, #CPU_BOOT_TASK]
 	cbz	x2, __secondary_too_slow
 	msr	sp_el0, x2
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x2, #TSK_TI_SCS]		// set shadow call stack
+	str	xzr, [x2, #TSK_TI_SCS]		// limit visibility of saved SCS
+#endif
 	mov	x29, #0
 	mov	x30, #0
 	b	secondary_start_kernel
diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
index 04a327ccf84d..fe0ca522ff60 100644
--- a/arch/arm64/kernel/irq.c
+++ b/arch/arm64/kernel/irq.c
@@ -21,6 +21,7 @@
 #include <linux/vmalloc.h>
 #include <asm/daifflags.h>
 #include <asm/vmap_stack.h>
+#include <asm/scs.h>
 
 unsigned long irq_err_count;
 
@@ -63,6 +64,7 @@ static void init_irq_stacks(void)
 void __init init_IRQ(void)
 {
 	init_irq_stacks();
+	scs_init_irq();
 	irqchip_init();
 	if (!handle_arch_irq)
 		panic("No interrupt controller found.");
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..5f0aec285848 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,6 +52,7 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
+#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -507,6 +508,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	uao_thread_switch(next);
 	ptrauth_thread_switch(next);
 	ssbs_thread_switch(next);
+	scs_overflow_check(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
new file mode 100644
index 000000000000..6f255072c9a9
--- /dev/null
+++ b/arch/arm64/kernel/scs.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/percpu.h>
+#include <linux/vmalloc.h>
+#include <asm/scs.h>
+
+DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
+
+#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
+DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
+	__aligned(SCS_SIZE);
+#endif
+
+void scs_init_irq(void)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+		unsigned long *p;
+
+		p = __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
+					 VMALLOC_START, VMALLOC_END,
+					 SCS_GFP, PAGE_KERNEL,
+					 0, cpu_to_node(cpu),
+					 __builtin_return_address(0));
+
+		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
+#else
+		per_cpu(irq_shadow_call_stack_ptr, cpu) =
+			per_cpu(irq_shadow_call_stack, cpu);
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+	}
+}
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index dc9fe879c279..cc1938a585d2 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -44,6 +44,7 @@
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
 #include <asm/processor.h>
+#include <asm/scs.h>
 #include <asm/smp_plat.h>
 #include <asm/sections.h>
 #include <asm/tlbflush.h>
@@ -357,6 +358,9 @@ void cpu_die(void)
 {
 	unsigned int cpu = smp_processor_id();
 
+	/* Save the shadow stack pointer before exiting the idle task */
+	scs_save(current);
+
 	idle_task_exit();
 
 	local_daif_mask();
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-15-samitolvanen%40google.com.
