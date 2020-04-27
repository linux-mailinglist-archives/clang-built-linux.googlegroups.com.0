Return-Path: <clang-built-linux+bncBC2ORX645YPRBOUDTT2QKGQEQXWSAEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id E498E1BA987
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:59 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id 9sf16526601pjz.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003258; cv=pass;
        d=google.com; s=arc-20160816;
        b=LepoKJ4HpkJpa+UrhfycIBn8jwBlSAujkjj6xEmuX/K5f0h3HRxaZWtZ00Rca84P6z
         hd5Y+cQX6xNaKn+TbqCackbrNRqlKm+VWAR+Kky0tS/bQgLtJm8lZx3L2Dm7NE2G7cCn
         sqCVE2sUG6r/93gAUrXA4x3jfU95NK9YPYRpSFuv17MCKpeSKjGvQ7Htt8DIVdahZynR
         1+Mi0L9ObPvBtsMT4PiaKTQjIJSkjxsDUbKt4/5w3ASDenK0A6zKhtcFtkHRvwt35ksm
         yPhxe5sm+bbhKI8P4cC9Sd57KkICDzPMDAYnbppu2c1OSIWgLm8Nqy6cl0iIz1aXamoj
         m6bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Xm2z4s5gPhWRWmtmY4jlbHbzinus6dV7yUAuQSb9SyY=;
        b=ItnafIjmlZVBEEzQmeIJgMiFr6KdUo8+xOF+o582/Wfh9ceCM66gqOkGGVWwKheSty
         cjWtt/3yZhqj4HLpzwE15A/lMoSS7FvJWCAVjL4SR+M75pm4wGei/rRMgOHjkk+PWj1G
         BEM7lk0tzv5OWkY+ymD78Suj4bBN3BOU6NjUFpahUmzmDlVIkIy//vp5YmWKSSAfW+lF
         YQ+L+TjBhXNRDNNHPsnIsXaQ9kSSXdlpezbYd1/SOeFekt9OSu4QRNycxax2W255rvF+
         bQ326B489os3y8t1janKeGwsDkwFbJrUATiwFFq8pOZUzUHvJB4+7ql4jEnvXSE65bmT
         YmsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DIh3ZpqH;
       spf=pass (google.com: domain of 3uagnxgwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uAGnXgwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xm2z4s5gPhWRWmtmY4jlbHbzinus6dV7yUAuQSb9SyY=;
        b=Wvsg2CH6cYwOJ7lc9Bur5aZbL1Tsb8+zmzzZbf6K5hehn4703iB0WyFuhisltqIjik
         ly2KULpq+c5rlkbAHW7HMKHirz621wcCIVA2k3NsZzGwL1IP+TmnibbY0GHSUSgHNuNm
         XQcgCW7JgqvzNlu95l285JyES3inYCFXtM2IbDdz0ZnF5+OKxudUqWvjKx1UivdMXBAF
         rm7h0C6WrbDkBFaR7zJ0bjWd5xQGesdwzdvdX6qwI2XKgqT0SKJL1oOduV3y15Z2pVjM
         TKouBLAgU9M1Qu0psiWodH0EN8wl64Q/NHpbN130Il0a6GPwF3Fr4jNhs7jYZuvEVGXm
         O4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xm2z4s5gPhWRWmtmY4jlbHbzinus6dV7yUAuQSb9SyY=;
        b=gLoPA3JAquOViMmMazIGK7vP3e4nEguBgp9jCcyXJF+H5cFK7t9y71UIg+RsELYOrO
         aRz4AWflO2OETuGiCOxr3Q03hPYZLyeRIoDCmaZiAl7ToTFNCVy6EPMK1u8CrTmtC8TX
         ZQWGQkcrHLtxxMf/cXZv1lqied2LYeChs0K3v4bO+Fi+K24Whit4UTaQNsnkjdUdx3ep
         Nrkvm5xEpIseK6BtnaiMAmE3acbpWEW/KO6J0aE+frarMGIFyg6Z1iudH6AbWy2U13FQ
         DNc1fTMWXVRA7jeDdRVq9x5RPvpx0w/NLO15yLNy0WagkdmdiVB8hT+GOahjGzTECsKD
         T2NQ==
X-Gm-Message-State: AGi0Pub0bLTecrD8HumAxvKIB8PJ3zFp83wYcoTWRFTr8O7B6B+XT8Ce
	e//CfSy1UbExdqcohDBs3B8=
X-Google-Smtp-Source: APiQypKtIJBdkPCCqn6SI0eMSaQlHtToEmP/qvYYiOat1Rtd7ID4ZQEZhPrH7pdZ8QxN6ElFdTTQdA==
X-Received: by 2002:a62:e113:: with SMTP id q19mr24346971pfh.107.1588003258542;
        Mon, 27 Apr 2020 09:00:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fe52:: with SMTP id x18ls14010399pgj.6.gmail; Mon, 27
 Apr 2020 09:00:58 -0700 (PDT)
X-Received: by 2002:a63:3304:: with SMTP id z4mr23434233pgz.8.1588003257980;
        Mon, 27 Apr 2020 09:00:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003257; cv=none;
        d=google.com; s=arc-20160816;
        b=Gck4vJFItS+GWeSgrUzZilHH1wfg3ab/UwhvlOW9gCKGvp2sEM16wSM3ATdcGU9BsC
         ByaTMttgMjoyMt/89d729a3b73pe+Yq8oy1VVL2UmvoxVux1JAWIGZAiNZULukXX2htx
         TjbSsgnmEH6+hui0f25ZR1lXWNfbkjKGsSwGRQiLDwrDOJOG25nqd31c9MmFYo1M6oMt
         Lxpm5E56z9E+cVg/VdSnpr9LBAHEmHbESqsu4/ShjOgP2eY91sRMf/vxvsZw9zmSkXk8
         xDKwASb66Jk9ccSH/PBO/bEG1qUtcXFjifZutagD85Cvzur/kM+9lMom7npONsfyJIAe
         Njig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mTuo+Q1m3yKttGwW9SEPV1YXcR0ZfdxZB+S+BHE7GOg=;
        b=irJIIfEA5ibNXjQS+0c13Ai61DiQT3eVTwJyFeFG5S9Z0fvkXfD5VpnZq/uiLg65aJ
         DHNez7XwNnBa43PcxyTljnSNEDl1vhax2xHEEQ0ofJ9EwqpNQRc3kyEFNLRsUgYXliGA
         D58B3kWafwOmbq51T7M54vjHxiwN78JZRTPGz6LtfdiYY76VyqVfJyOnEj9zPnY5CUxU
         +YoCBecGrElTs6h+fXlbH+HzrfloLuRAgcZojGe1xISLw0HBPT+jyn72t68Xh8UByQkv
         p//JzsvOBmkkY2+qm6rgTy8gZHnOzEDvr5GELQzsYRS91fdgzweKm0TF8rW1f0SiErGM
         lRTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DIh3ZpqH;
       spf=pass (google.com: domain of 3uagnxgwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uAGnXgwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id z1si59811plo.3.2020.04.27.09.00.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uagnxgwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id u5so19150596qvt.12
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:57 -0700 (PDT)
X-Received: by 2002:a0c:8324:: with SMTP id j33mr1090078qva.23.1588003256950;
 Mon, 27 Apr 2020 09:00:56 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:16 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 10/12] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=DIh3ZpqH;       spf=pass
 (google.com: domain of 3uagnxgwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uAGnXgwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/Kconfig                   |  5 +++
 arch/arm64/include/asm/scs.h         | 46 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/thread_info.h | 13 ++++++++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  4 +++
 arch/arm64/kernel/entry.S            | 24 +++++++++++++--
 arch/arm64/kernel/head.S             |  6 ++++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 15 +++++++++
 9 files changed, 114 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..c380a16533f6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -64,6 +64,7 @@ config ARM64
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
@@ -1025,6 +1026,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
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
index 000000000000..96549353b0cb
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_SCS_H
+#define _ASM_SCS_H
+
+#ifdef __ASSEMBLY__
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	.macro scs_load tsk, tmp
+	ldp	x18, \tmp, [\tsk, #TSK_TI_SCS_BASE]
+	add	x18, x18, \tmp
+	.endm
+
+	.macro scs_save tsk, tmp
+	ldr	\tmp, [\tsk, #TSK_TI_SCS_BASE]
+	sub	\tmp, x18, \tmp
+	str	\tmp, [\tsk, #TSK_TI_SCS_OFFSET]
+	.endm
+#else
+	.macro scs_load tsk, tmp
+	.endm
+
+	.macro scs_save tsk, tmp
+	.endm
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#else /* __ASSEMBLY__ */
+
+#include <linux/scs.h>
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+
+static inline void scs_overflow_check(struct task_struct *tsk)
+{
+	if (unlikely(scs_corrupted(tsk)))
+		panic("corrupted shadow stack detected inside scheduler\n");
+}
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+static inline void scs_overflow_check(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* __ASSEMBLY __ */
+
+#endif /* _ASM_SCS_H */
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 512174a8e789..9df79c0a4c43 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -41,6 +41,10 @@ struct thread_info {
 #endif
 		} preempt;
 	};
+#ifdef CONFIG_SHADOW_CALL_STACK
+	void			*scs_base;
+	unsigned long		scs_offset;
+#endif
 };
 
 #define thread_saved_pc(tsk)	\
@@ -100,11 +104,20 @@ void arch_release_task_struct(struct task_struct *tsk);
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
 				 _TIF_SYSCALL_EMU)
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+#define INIT_SCS							\
+	.scs_base	= init_shadow_call_stack,			\
+	.scs_offset	= 0,
+#else
+#define INIT_SCS
+#endif
+
 #define INIT_THREAD_INFO(tsk)						\
 {									\
 	.flags		= _TIF_FOREIGN_FPSTATE,				\
 	.preempt_count	= INIT_PREEMPT_COUNT,				\
 	.addr_limit	= KERNEL_DS,					\
+	INIT_SCS							\
 }
 
 #endif /* __ASM_THREAD_INFO_H */
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 4e5b8ee31442..151f28521f1e 100644
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
index 9981a0a5a87f..d7934250b68c 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -33,6 +33,10 @@ int main(void)
   DEFINE(TSK_TI_ADDR_LIMIT,	offsetof(struct task_struct, thread_info.addr_limit));
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
   DEFINE(TSK_TI_TTBR0,		offsetof(struct task_struct, thread_info.ttbr0));
+#endif
+#ifdef CONFIG_SHADOW_CALL_STACK
+  DEFINE(TSK_TI_SCS_BASE,	offsetof(struct task_struct, thread_info.scs_base));
+  DEFINE(TSK_TI_SCS_OFFSET,	offsetof(struct task_struct, thread_info.scs_offset));
 #endif
   DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
 #ifdef CONFIG_STACKPROTECTOR
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..244268d5ae47 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -23,6 +23,7 @@
 #include <asm/mmu.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/thread_info.h>
 #include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
@@ -179,6 +180,8 @@ alternative_cb_end
 	apply_ssbd 1, x22, x23
 
 	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
+
+	scs_load tsk, x20
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -343,6 +346,8 @@ alternative_else_nop_endif
 	msr	cntkctl_el1, x1
 4:
 #endif
+	scs_save tsk, x0
+
 	/* No kernel C function calls after this as user keys are set. */
 	ptrauth_keys_install_user tsk, x0, x1, x2
 
@@ -388,6 +393,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x24, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -405,15 +413,25 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	/* switch to the irq stack */
 	mov	sp, x26
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* also switch to the irq shadow stack */
+	adr_this_cpu x18, irq_shadow_call_stack, x26
+#endif
+
 9998:
 	.endm
 
 	/*
-	 * x19 should be preserved between irq_stack_entry and
-	 * irq_stack_exit.
+	 * The callee-saved regs (x19-x29) should be preserved between
+	 * irq_stack_entry and irq_stack_exit, but note that kernel_entry
+	 * uses x20-x23 to store data for later use.
 	 */
 	.macro	irq_stack_exit
 	mov	sp, x19
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x18, x24
+#endif
 	.endm
 
 /* GPRs used by entry code */
@@ -901,6 +919,8 @@ SYM_FUNC_START(cpu_switch_to)
 	mov	sp, x9
 	msr	sp_el0, x1
 	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
+	scs_save x0, x8
+	scs_load x1, x8
 	ret
 SYM_FUNC_END(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..2b01c19c5483 100644
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
@@ -424,6 +425,10 @@ SYM_FUNC_START_LOCAL(__primary_switched)
 	stp	xzr, x30, [sp, #-16]!
 	mov	x29, sp
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
+#endif
+
 	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
 
 	ldr_l	x4, kimage_vaddr		// Save the offset between
@@ -737,6 +742,7 @@ SYM_FUNC_START_LOCAL(__secondary_switched)
 	ldr	x2, [x0, #CPU_BOOT_TASK]
 	cbz	x2, __secondary_too_slow
 	msr	sp_el0, x2
+	scs_load x2, x3
 	mov	x29, #0
 	mov	x30, #0
 	b	secondary_start_kernel
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 56be4cbf771f..a35d3318492c 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,6 +52,7 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
+#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -515,6 +516,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	entry_task_switch(next);
 	uao_thread_switch(next);
 	ssbs_thread_switch(next);
+	scs_overflow_check(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
new file mode 100644
index 000000000000..acc6741d1a40
--- /dev/null
+++ b/arch/arm64/kernel/scs.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/percpu.h>
+#include <asm/scs.h>
+
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+
+DEFINE_SCS(irq_shadow_call_stack);
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-11-samitolvanen%40google.com.
