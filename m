Return-Path: <clang-built-linux+bncBC2ORX645YPRBNWWZDWQKGQEQ5ZQNDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id D41BFE3FAA
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:39 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id d25sf351230qkk.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957559; cv=pass;
        d=google.com; s=arc-20160816;
        b=T92vqIbVFbK2Wty7is7ZX8AStTB7V+m4Kxfox3IWD5WYvFB5egpxGecDYN0IO9hJzk
         gN1E66+8VSz0tG4iEyo26U+pbOVkGuDoSW6LPjW990h5QdZlyV/F6aAKTpyf4eVNMvcY
         zRDfguRLcqej9karrwtMz9fUJZyEunTxG4H8o+beqifvEAnGy9ox5qpISm6nUHiz04f5
         /jvU6ASBegH/fV4Dn/X4SQmhJqH0cs+A2J1B4NKcbuR43LYDBQJbNWoXQQ4h/64NflG7
         HqUZcvl0Y/tJUiVVFHcsk1S02wWSzmn6cTID25gK9eZ+dz+paosN2KVBYmzHuMuoMjCm
         gkXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=SVgdD9e179s3Rpe7ntHDUINhJw2M3JZq2EkbwmIEgNc=;
        b=rPgWSK0KoAntmH8Mtii1g2pezqAqSGaiEyQKYi40by+uqV3RHAJWAyRGJIAe/aRfec
         zhSN94Ww2f/BAmxvkhwIEsUdmhJGG7D+xgL5gIsujWjHC60e1l+tXJ9IfLnvRJjcTHWU
         CwQY9+xYWXH0SYcPlRO5qWPh/iA5yv9yLC0tRwBbEj0SU+M71dr0MHuL/e1pb0gbs3RC
         wjTAb5xhyOLozdTdg6fDO7vqufzIM4glFMHob8+AbfAbukQTaIzTfHwuuwrK/sDHlLVy
         xfvnZvKAD7Cn7dfQiPbpgT6vC0L/qFYiYm0p/Oac087sw44hIWQNWaxTjMNgZn2zp1n+
         yG0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hAhjVTL6;
       spf=pass (google.com: domain of 3nsuyxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3NSuyXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVgdD9e179s3Rpe7ntHDUINhJw2M3JZq2EkbwmIEgNc=;
        b=lsHoBELDotx4mRaCwkqSZwDIZd2hmNRmFh2H0ROUUdiYPM6VB7HuMelD5f87uAKxVL
         owzUqfF9byz+uOQtWos/ccvzH9vCDNIygnJ39BiZs76Xhi2OqWZ1waZ2shMvc5Y640wR
         aZJ89nc9bBBxpy1gcyxRBhAvW4U79AU5FcU0IH+OoE7qzNv0kBLLds5363nYpfHmlFPT
         SsXub52om1O2MqE5Ed1hK8cuzFgTf4Sao91OAaio7bcBmX2GcGkk4xP3QtR8ifcMhEUK
         /tVxWafLVZt5o/0O1dG8noL2d1UQTvz5hFNGJk5WcH6j/idaPByTjoon09ZRtP6v1fDT
         uaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVgdD9e179s3Rpe7ntHDUINhJw2M3JZq2EkbwmIEgNc=;
        b=iRfuzThqI6c0F0r7eARqsXIh+enJ1AWBdMtbuiP/pK8H+AedEXdt/83Dlz0pii6tfn
         55q3GeTkvJN69KzCbm3PvDRj/Z2FhENPORqvXu/81QHtmFcEESqLztC/8nWyrMnDpI37
         1tMVy2VtlXbtdStjHjTU3tivY6iK+diRTOqUF9fqp3tQzHx9fvQuSbhqB9dUWxN/YwEs
         norRAOwDNy8qA+Hdjpj0rZVN/ZWq0H4yEOOCdmyLZHI9vdHSK/+qQ8823E76zF9t+g5B
         BkrRAMRoLJTLUAFODJugnYkEjMsNowrEkbwXk+iUcidyT/hwsKqiNQaqQyl/LdH+zQog
         xGuA==
X-Gm-Message-State: APjAAAUgBgYsux0J/qtdbBQEDtl98vWGnHiIYnFKt3RbnWcpqocYhBuh
	nZKZ4LK3nHCSwjxXKKzcMLU=
X-Google-Smtp-Source: APXvYqwWoy2q+O9uxo6ase5FB9fSC5wRhqI3m9LNnPPGVoElROByyn0KB3eu+heOqW9IweFuX0caLQ==
X-Received: by 2002:a37:4817:: with SMTP id v23mr271866qka.264.1571957558818;
        Thu, 24 Oct 2019 15:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5493:: with SMTP id h19ls2288150qtq.15.gmail; Thu, 24
 Oct 2019 15:52:38 -0700 (PDT)
X-Received: by 2002:ac8:7546:: with SMTP id b6mr160409qtr.104.1571957558440;
        Thu, 24 Oct 2019 15:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957558; cv=none;
        d=google.com; s=arc-20160816;
        b=R0D+I3LjWm4gsJqQ8nYqe3EyB6fyscVfYDygWi6GNgikPLCN0brGb0x+tTGigDJttI
         3kdeZkJ3waOijhZxY7F6rHXXo4k0z8o4uj9g0SOwNKWu3b46syH0mhtlYz/uZ1usccCY
         I9K5UQk7zj2+PB4rQz5bNJVkzJrbe0wVd7aQ+CSo2HMcUMVJ/ewl0n/hvYbrZzX75bRl
         Io0hfAXm0c2SqViT3ltfWcaFLT2MpZ6M/ETP6Qc11bbXq680uZ0tZXxEDy/C7UUTJYOL
         2Pq8bsJdotrfCWZjgKBtFbWcTy6pMIoq9XCLJBh926GUADKcvqUAOdUU3/mLYvBvbymo
         q2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=laHam8Bnh9szHwPpPFYZjoC0jp7B6WsVFsvms1hxAEc=;
        b=FGywCSlq+rfjdQpsuyPjIVaPTb6NkbHPM1S8KbXDXMJ9dwaL4K/UmUYLcUCoViP/63
         WTQ/onPOyKnTVDTrUUX8bdV8Oe1Xt5jtWhNknUcAftnOMvmuGM1J0zF4Tu37Nr72hJQc
         38g9dbl1KDjRwfgrZeJWqpbDUC9yXQO8Mw9ebsBsrT26NrEGv6GSpX+8CNNFnEFRosnb
         muxkxgKoBfnobFTnjooJtJEnhkt7R/nTVEgVfdy+RWBdAfHuz2/kfkvRzY/5l1RMmWK7
         3MO+IXi0AsPVg6+EpO7NO59BFrIiz2IwcWHE3goZ6deuP+C5QkH/Nrhv2oIf6bN+L/YF
         LGzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hAhjVTL6;
       spf=pass (google.com: domain of 3nsuyxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3NSuyXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id t186si17197qkf.3.2019.10.24.15.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nsuyxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id z4so348959pfn.0
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:38 -0700 (PDT)
X-Received: by 2002:a65:6203:: with SMTP id d3mr515180pgv.272.1571957557198;
 Thu, 24 Oct 2019 15:52:37 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:32 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 17/17] arm64: implement Shadow Call Stack
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hAhjVTL6;       spf=pass
 (google.com: domain of 3nsuyxqwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3NSuyXQwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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
---
 arch/arm64/Kconfig                   |  5 ++++
 arch/arm64/include/asm/scs.h         | 45 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/stacktrace.h  |  4 +++
 arch/arm64/include/asm/thread_info.h |  3 ++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  3 ++
 arch/arm64/kernel/entry.S            | 28 +++++++++++++++++
 arch/arm64/kernel/head.S             |  9 ++++++
 arch/arm64/kernel/irq.c              |  2 ++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 39 ++++++++++++++++++++++++
 arch/arm64/kernel/smp.c              |  4 +++
 12 files changed, 145 insertions(+)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 42867174920f..f4c94c5e8012 100644
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
index 000000000000..76dda1228935
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,45 @@
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
+static inline void scs_init_irq(void)
+{
+}
+
+static inline void scs_save(struct task_struct *tsk)
+{
+}
+
+static inline void scs_overflow_check(struct task_struct *tsk)
+{
+}
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
index cf3bd2976e57..12a5bc209280 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -172,6 +172,10 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
+	str	xzr, [tsk, #TSK_TI_SCS]
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
+	str	xzr, [x1, #TSK_TI_SCS]
+#endif
 	ret
 ENDPROC(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 989b1944cb71..2be977c6496f 100644
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
+	ldr	x18, [x2, #TSK_TI_SCS]		// Set shadow call stack
+	str	xzr, [x2, #TSK_TI_SCS]
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-18-samitolvanen%40google.com.
