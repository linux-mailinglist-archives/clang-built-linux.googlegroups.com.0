Return-Path: <clang-built-linux+bncBC2ORX645YPRBXG36LWQKGQEKD2DVOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFED5ECB08
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:45 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id r128sf4450162vke.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646365; cv=pass;
        d=google.com; s=arc-20160816;
        b=PEFHmCTEx3bJaLSkTpjrMwrrlaUZbwvR7L0vqa2BumWw6zpwPJGn8GH79K8+anSwOy
         faO6XXTkcbWZxKjCtzTOaSV/irKCD6Y1VNCvDFQf+LDh7otxI0si7oo2kexkw7KUBFiN
         hldfimbaX4rv0/zRcldi1emI6n7+4eMZRhNjCdwdvSuWewLP0pSR9ijwV/oovs0+NHvN
         HjjKu+y/ndmxFEnoKEjfLroPOnvojsyasf4THfgV1xKZQtt1LweOLFGhuCqwUA2aVO9s
         pRem2naJvy1Y1NEVHJ4ujfRvC1MQ9D9ipgFfbDriCaUdFVlc6a0+2ks6kAJ+iMGBaBGU
         CDJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QRbI3brsXKWRg4hpwbgvI1IzSpJRdr4fKDQHNRHVb5o=;
        b=RMT+TOFQgDY8nVPuWzvAKxr7//KhUVQ+3cKxQJvHyrjH1K/KxCcKJWg/mbvPn5fdvO
         eu+O2T6mv+77duoN0iYjuBm4fDLWM/two3hFgPcm8QnCJ2hHm7g/ZogvEMUCCqHGwijj
         kJCSZ+ejF82SH/H0vwZSIwgtzPDPSy2gj1cBVQlyC1YBheY6sBXwrYEgw1cTSrDHFrGH
         Sapy5EMGjGKO262rNSeNv6hh25936CQ3tldnpNag9L2K38+i9jhSWLy6cHYmumPHJKim
         hhVVD7MKphzTpjsW58R8/TkbitY91upaeygwR2/hEfqRSLfRJvfcZf9HfBKT20UxKO63
         KBBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFYpNtWp;
       spf=pass (google.com: domain of 32628xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=32628XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QRbI3brsXKWRg4hpwbgvI1IzSpJRdr4fKDQHNRHVb5o=;
        b=gVy3xdV3M3PdiRukap7v5tJ7zuocYuF8MsbzIX9Ke8CIl7+0w9onJSGAhdOnjiutSL
         boGAzUp52stPhQMbTqddFNjJ8T/Q7bzp+mazxh0aQLCG7BfA95g9ejaQQaWLRoLZuk3/
         aINrkduyL7+t0gSnklFLPCVSRNY2ixECPVvt74eV3aLQjwb2LiXGYiZyHT0j0Qb+IPG3
         igj7FjaXayGHiEKiuWUg5dL/dkOXvCDBWLSpCBAiZtkVPP+fkcrTTU2yE4Cvb6Ra2b8k
         nnxfRgJfVHFQfjihdo0YrqumM26Xk782bGjX471JX08ZqkBNxcOI4wqbJou7xLrJio/3
         ag1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QRbI3brsXKWRg4hpwbgvI1IzSpJRdr4fKDQHNRHVb5o=;
        b=PyrLO30ztErtHHw2g9JHNBrGRFo+/YpU5YwlMYgHT7zzArCTGfNPtavq4q7RWWOHlm
         nCH9Eba2mtagXhXZ+0VXuoXhxbXD8rHGgmcs9DmFEqIFKi/Ydz3FHKU3pD8Bc41Pn7rJ
         1oQthlEAkTL9cQiFzaGMciI+zVuDwUIevYeIOWJqTjXtZ8H0j8hZ5I+bJ0zvqCT8b7hf
         kNIpu1KENAWrVJK3lxN0g9NkuQVUOY3ENOoikRk9KOZegcY9grolGXDJiU+R+KX61nHL
         MRYBXpq3U2WtKJv982wgDcK0w1eftNE3uPKUoKZnuCdJN3iBS7VoiDkrn1ntVs2IhuB8
         Dn/A==
X-Gm-Message-State: APjAAAUMJjfV93UHrpFCn3lAdhSZIqZg8sNOaRtIsVeLL1kAa6NRTr7J
	GDR0uOFbcLosL31tE+Wsiwo=
X-Google-Smtp-Source: APXvYqxFuFZ4cJSPX5ENFVIV/WwonsKwAeungQDf7P2CFPbRvvnMV4tte+lNzUZJdS4NswYL1jgl1Q==
X-Received: by 2002:a67:e3cd:: with SMTP id k13mr968965vsm.124.1572646365006;
        Fri, 01 Nov 2019 15:12:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd04:: with SMTP id y4ls703759vsj.5.gmail; Fri, 01 Nov
 2019 15:12:44 -0700 (PDT)
X-Received: by 2002:a67:a40e:: with SMTP id n14mr7381156vse.230.1572646364607;
        Fri, 01 Nov 2019 15:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646364; cv=none;
        d=google.com; s=arc-20160816;
        b=N0L22Xl8MKTxTudn9uY7BRhe7jIJHIOY3R/61vBhquZv4Ifs3Fh/18nmKzE+g2HEMT
         q9IpFbQUnputdwdrg0SPsH4nyrzLJSwRD2Vg9tqG9hnUMzSOApg4+WUwFLg6Omm1eUO/
         xp/g+orZ840hA+v2XSKtVwRcPoY4GTk5Ml5er184sejj1QvOIfobDCOJV1VAQEC/DFqi
         QpuQM/sZufXb7X8cV0rUJBEWrDysc07GOyvQCiZZI8Qm97LY1hciO441dp5Yq05/Eir0
         5k2BCmL/63lcOJnfkR6jE0fqtAX6SpMV0H2UbHIck9eYNLEEh03549wTBd4Qx1pmZfDC
         J1Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=die3x67ovmzWsWhvopUJvu6mU5I+GEuDo3qNBzEJCbM=;
        b=ybsplCbSEHZX+WOZBfd2t1JpHm9R/AJMkn0okat9m0dW1x24005YnsBhIkuqrbgUMz
         35XPfptzdwqG/GwUPUvE/Cd+7h+io7aH78/9CMqRB0k9bs627sMEhSqcj3Q2l1F3p7HM
         bupxy3OFQeGvrcukMieZqP2PXdLsezRjT3v0NF/0yWV0jYuNwxwfc6ouVdMemTJI4mUT
         LRXO5YozQ7kfnyqFvrTRqORa9wL6TwhwwjWPB0LSkciO3yFN+o/D92YKBt0akP5bxyeb
         x7S/TmOV6AbOsocdPy3/gDnAdWANB6qAn3AimqbQPdOFCIF+BTxj/X4iTJLI8Gg9Ax4C
         /sTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFYpNtWp;
       spf=pass (google.com: domain of 32628xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=32628XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id s19si417906vsj.0.2019.11.01.15.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32628xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id u11so8027303pgm.20
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:44 -0700 (PDT)
X-Received: by 2002:a63:eb47:: with SMTP id b7mr15595265pgk.179.1572646363390;
 Fri, 01 Nov 2019 15:12:43 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:50 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 17/17] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=oFYpNtWp;       spf=pass
 (google.com: domain of 32628xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=32628XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-18-samitolvanen%40google.com.
