Return-Path: <clang-built-linux+bncBC2ORX645YPRBO5O7H2AKGQELFI2VNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A891B1B9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:24 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id g55sf13298714qtk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435323; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVPsXC1noPZiL7a1Z8nupJido++E6+WMN1N90EehE+egjiMtncc3nCzzL2cgOU12gL
         +KO+DZn7R7i84MNfUaUZXcxkw+qmvG2H8zEuP7VfZX0TaZePy9rpgie216agG8CF4+Gi
         O76c64xWLOH+jbmeTob0t5M9NUDk8rGO8NyuA8lsc9rk2+nmxFe6lMQUyc7xsPRb0e3k
         C3C2xsimWPmBX5rEIxviGmHhalk9gInIdo4MgS60yCk1nZK/gPIFZcXufolPXhgTv1CI
         0MgZ1UWSpgbrx/MdKft8ytwy11sZiXHOhzD790XPldus5rAsLZ7/P5AwZMyroXv7++ZS
         JznQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=UotykhapeOaee7wmQjdkohkVsUKhLCgz9JymDnRA7J4=;
        b=IzNDwhft7r0WyBvWLNMUNG+jXBrqTkaXvPDqwY7F5jGiv3xpa3qsDxJUdFwjDpI1ju
         z7nfgT4jdcP1vZDTWLz7CDNoBapGGu6IYn1cozH4KiSxU0QynRtlz7JaROhOhVA96jGH
         5O8zTzwj165XH6oVM1laHcTVrdPUT0d+kGA7EuQx0YoY9kcRUKcLEYo7z5g7xUFhaDA6
         1F7c9f52jjHKS6FPuFh/FEx9Pm/+PAu9LLtnG6Jo9kJRu5hvfE3P3CCWRMgIRqc4nvpw
         VsNRUqcA8z1WPXsLZ6z1cPMcog9FCXWDMbLBA8DZgJ4s4z7zS5F3HTDlh+Eidz1cVTUO
         FyiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vRokBmFY;
       spf=pass (google.com: domain of 3oveexgwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3OVeeXgwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UotykhapeOaee7wmQjdkohkVsUKhLCgz9JymDnRA7J4=;
        b=j8ByQ2vFwc4E8aVaf58HHfThIW1xhOvuFPTc2Eh/tTZNr5buPHuFpxdVgQdWP0lPbk
         kzRltOalFmtvG2i5GC/RP5nIDjorUu4xekhwioj2Ky4fKjbvA3+ukfWM7IZemem5hWz/
         6ICpw6iwnoF2ZfWubxZarPkqjM2avHDMJQFopA1EjFTbtUXErJxrJePjpFt5korDbDAF
         9z7EwXWOVZdn+l88PGPlL/8hXyaZJQSYcqzyLqqsKFcDqnxmaDPxJCFwNtRaBfZKQz67
         2MxipRY9//LkM455jy4PWabgocKLjFK5I+MdyKYO8h7rYex2AMP8snOgqrIanrn/Yz2H
         2pjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UotykhapeOaee7wmQjdkohkVsUKhLCgz9JymDnRA7J4=;
        b=VpmhlrpvOsWQgUMSJiGFJlbvY4Y9MG1y0FlYFcLHl7W6n5XgXAE3oTbk8VJv6bZVwr
         wxB5iCY69pZ/7qcfHkThBkqcNr9XG5g04bgKLIw9mzyeU3T1eHG5aZsChYM+1Z4SIJjP
         ToY4rLLKR/T+IOnY1aYROPivk44/zHiLypu7RxUUrRLc+KzmRfLIl7HIr727s3NKoSxE
         3S95OtpT8i6GKgQ77Opz0XK+SZYMmpYkzC11k5+VSCgYfty/HdYy3ool9nTtM/KsMc7s
         Vl2PdSXxMIWy37uhumrlnXyRh6dWAT5/AaiUI3n7QWuY7KjivXY3cv0lUySJ6PK4StHM
         3jdQ==
X-Gm-Message-State: AGi0Pubivq7yqsM1MEJPq0neH7/p8rk9c6NBdfcEAgdti7WFUmaytG5o
	zp40trAWLyVcyAHtJyVml5A=
X-Google-Smtp-Source: APiQypJL/tB4VMvIkrqbuOZyP4zjSIRX1G0t7ML6H+kIIZJmbUy3QbaaQamS/aI3Xiz69Q+1+AxdqQ==
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr19681823qtt.165.1587435323097;
        Mon, 20 Apr 2020 19:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15d9:: with SMTP id o25ls5952639qkm.6.gmail; Mon,
 20 Apr 2020 19:15:22 -0700 (PDT)
X-Received: by 2002:a05:620a:1647:: with SMTP id c7mr19459795qko.473.1587435322723;
        Mon, 20 Apr 2020 19:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435322; cv=none;
        d=google.com; s=arc-20160816;
        b=ngWrPRFEIXZQsl87+OGNhRcZrvld4DnQcNi6qj5d2Rpw8589OVAE9pU0L1xbUr0bUO
         FvT8rZyns2wo86VF8GlIXIATF/koNIiYbXUgVZ0wauY5kYrm3noFo8tIqn7mPXpgFKBi
         YKWoYB75AN4/XcPjxnky89fKN8Z2eV5He6m1nmJpovV1l/c1q2qAvQWi6eSTSJF1UloT
         1gESOz3WI+kOvrvQoI1o0pquZyys9m8AUncr+lvBKk7CXklzMdwJmJXE73qEyaEWEehp
         +4UYykECioiM5dSe8rDHLus4Cy0Y/Kxu/jY03B/tMdeG2S5O5aNHo2J+fGW6MbZTf1Iw
         Nfeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6eRw7Y3w5tFwzaDk4cwrjvOp2ujNvhfVr2XLQsgcDIc=;
        b=KYzTAnTmBSw+WYzJ/jyWXgmqICVc5kjApDjDJoMQUzn7RQ5v6uvejLFuocYzwSCtHm
         3oFJzNUOVWUvlflr/fIuy+axelSavGrvNOXBFgDiUL1nE2Cx9Jv9oa2e0WTQBKvNAiFc
         XqvGjyZse+1Z0x11pC0/mTBA2UH5RXAdeh/8LJ1LM7f8vZMx0ry3wXTAwRo/PtsnNspD
         txCuHmm5eTDDzhZ88psw7hYcP1sPUmO4xKc33U1R4RicPIBTVmrNX0hVkDZJN7ODqtEk
         CY93XHhxFt/ofXlc09ieRZe93rH18t1D3Z/vVf6/BhIcyRlHwzUNiRkii9YhRL3EEluK
         uCbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vRokBmFY;
       spf=pass (google.com: domain of 3oveexgwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3OVeeXgwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id f16si103711qte.3.2020.04.20.19.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oveexgwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id s6so1824800pjq.1
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:22 -0700 (PDT)
X-Received: by 2002:a17:90a:2645:: with SMTP id l63mr2922202pje.54.1587435321715;
 Mon, 20 Apr 2020 19:15:21 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:51 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 10/12] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=vRokBmFY;       spf=pass
 (google.com: domain of 3oveexgwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3OVeeXgwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/include/asm/scs.h         | 34 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/thread_info.h |  3 +++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  3 +++
 arch/arm64/kernel/entry.S            | 33 +++++++++++++++++++++++++--
 arch/arm64/kernel/head.S             |  8 +++++++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 16 +++++++++++++
 arch/arm64/kernel/smp.c              |  4 ++++
 10 files changed, 107 insertions(+), 2 deletions(-)
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
index 000000000000..27dced9cbaf7
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,34 @@
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
+static inline void scs_save(struct task_struct *tsk) {}
+static inline void scs_overflow_check(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* __ASSEMBLY __ */
+
+#endif /* _ASM_SCS_H */
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 512174a8e789..1fb651f73da3 100644
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
index 9981a0a5a87f..777a662888ec 100644
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
index ddcde093c433..14f0ff763b39 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -179,6 +179,11 @@ alternative_cb_end
 	apply_ssbd 1, x22, x23
 
 	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
+	str	xzr, [tsk, #TSK_TI_SCS]		// Limit visibility of saved SCS
+#endif
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -280,6 +285,12 @@ alternative_else_nop_endif
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
@@ -388,6 +399,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x24, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -405,15 +419,25 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
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
@@ -901,6 +925,11 @@ SYM_FUNC_START(cpu_switch_to)
 	mov	sp, x9
 	msr	sp_el0, x1
 	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #TSK_TI_SCS]
+	ldr	x18, [x1, #TSK_TI_SCS]
+	str	xzr, [x1, #TSK_TI_SCS]		// limit visibility of saved SCS
+#endif
 	ret
 SYM_FUNC_END(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..1514445bbccb 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -424,6 +424,10 @@ SYM_FUNC_START_LOCAL(__primary_switched)
 	stp	xzr, x30, [sp, #-16]!
 	mov	x29, sp
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
+#endif
+
 	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
 
 	ldr_l	x4, kimage_vaddr		// Save the offset between
@@ -737,6 +741,10 @@ SYM_FUNC_START_LOCAL(__secondary_switched)
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
index 000000000000..086ad97bba86
--- /dev/null
+++ b/arch/arm64/kernel/scs.c
@@ -0,0 +1,16 @@
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
+		__aligned(SCS_SIZE)
+
+DEFINE_SCS(irq_shadow_call_stack);
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60fe452f..1d112e34a636 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -46,6 +46,7 @@
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
 #include <asm/processor.h>
+#include <asm/scs.h>
 #include <asm/smp_plat.h>
 #include <asm/sections.h>
 #include <asm/tlbflush.h>
@@ -370,6 +371,9 @@ void cpu_die(void)
 	unsigned int cpu = smp_processor_id();
 	const struct cpu_operations *ops = get_cpu_ops(cpu);
 
+	/* Save the shadow stack pointer before exiting the idle task */
+	scs_save(current);
+
 	idle_task_exit();
 
 	local_daif_mask();
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-11-samitolvanen%40google.com.
