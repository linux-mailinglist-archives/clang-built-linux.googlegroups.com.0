Return-Path: <clang-built-linux+bncBC2ORX645YPRB75X2XZAKGQE37ZZBOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E3516ECBA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:16 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id a16sf12808103ywa.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652415; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2F5tApWJ8AEA30AS2rNH/klAetdGJQnHd4otxyPJhDaicchojUpJWeT4pkKbk0PSU
         dWS5MNp/Rq0CVspSOnqHYCdiMLRUVGOI9/fb/8izjQMYw7OkhJctSk0aEPCeHO+PWBxF
         xNjuyNSMcZ9IOnzc7EihwVRAFAaBGSblF9IJlcMSBLOsV7Lq5DlOry5LXFr8o7o/WlUL
         ly9/hBjiG7ftDQJisZXiC7QxP+OcfjO8tg4j6jY/SrbxSmHzpfPibXa45dCS1T5vKbmc
         lRlAPLnB4evmD230oYBSawx5Tc5MvfLhgV+0eF9zVfTimq4Q6tRNcW0v843z8o3rfdgY
         6IIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=I33xzpGknRewWZVuW2JNRWx3nYJexkqSGzoUE9bBzSk=;
        b=ZIcuC3Nzy0QfNRiTpFGEa5osQ0z5Gb1DKfLDH0Cuuo/n3HY4euyJLHwcCFu9VWoKkM
         Pa1k4NWskPhzE8Zpy7WrvtaGJA1D0QWghfC0X+9zxZMQjpFTy6c6mdNYVj/fu2TMmVSt
         hNuSFwKuGFGXDe+RumhJEhxfXh6eeKaIB4SdpL5RwT438on3OxUrA46/FQsKawG73nPL
         RLsIL0Hs4qyAkKuZJK327dUvlKCLyc6szoyio9XmnPHWT9l/Tmg9kZ3Kj6UdKebywKmV
         wC/1VVbJu6yEQHzU9/YSbxkfi6ABNXTgXbjzrVYrFuIhN9jo2/BtdbcziO4vhRi81hfO
         BhSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WnsqAWuL;
       spf=pass (google.com: domain of 3_ltvxgwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3_ltVXgwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I33xzpGknRewWZVuW2JNRWx3nYJexkqSGzoUE9bBzSk=;
        b=X5+6IIYhVIWmmkp4Hw9OhvMtfH35Nc30TWzNZhPoUvnSphfZUXI/Y+V7qg90lyK9/P
         JT+Gs6aWIMEPi6LXuQ2mYTKudCMpeZUpXCIPB4FHoM0VViurhXmdgZWO/62JVFq6DOSW
         TqU1xarQFkPuwlVDN2yjTucjVG+ORJ+FKnJfb+dJoNVcedaB/l1xrM2c1crL5sEhds1Q
         +pq/BOxp1ZPlrKfsEokx3a4y9Egg4oK8Pg6pmitv2tHKrtAiNcPK6vNnzmPdrdyMBKOS
         DW4ehYUzbDXBl5jt6u6/BsQd7s06yaSiaTnlrOcnxRCujpWA3sFcoGQ9F1FwfIsKBnjd
         KxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I33xzpGknRewWZVuW2JNRWx3nYJexkqSGzoUE9bBzSk=;
        b=kCjL7rD9Utwietu861cZ98dART7xs5XrYy2/geJisc2tGbsxqkur99GAOtd09m3kbX
         I7zrlSJTByj46/JaRoVSSknK08zi5Up5rW42K3YSNB1Q16QSd/t5QtJNJnrWmRMrmQUR
         t5uev2dbw6CCqRP6pzqPxFkPY3Dgw+eFxg5rr16ay/eZEG51xGDW1J0vpic1+i+rxXwK
         3AiTePD3OAdIzHRHlannHwDqWw0tAcqKOVKi01o5rYhyAbNrdJq+f9eeoGZHUtpx/4KD
         N6rKejcok92tFHGQvX0GCt7MOFy3bUqR/raqq5/71S403d+KQr3zGN8TOuuSlEDBUKd8
         kHXA==
X-Gm-Message-State: APjAAAWSU2bVFMCFdL638JdzWvredywitlqaPxSb9wQOt1Qsu1uIQBj2
	LWuY7IgmmkLuPw/vBLv65hI=
X-Google-Smtp-Source: APXvYqxooS9K6SjnKeej0OOr9Hkkk/710WN/1aKEbR9c+wrr2VxU3J6ue6borYdWbw3NPz2GPIlBSA==
X-Received: by 2002:a25:7489:: with SMTP id p131mr418386ybc.311.1582652415386;
        Tue, 25 Feb 2020 09:40:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2e01:: with SMTP id u1ls24749ybu.10.gmail; Tue, 25 Feb
 2020 09:40:15 -0800 (PST)
X-Received: by 2002:a25:2d0c:: with SMTP id t12mr513138ybt.282.1582652415038;
        Tue, 25 Feb 2020 09:40:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652415; cv=none;
        d=google.com; s=arc-20160816;
        b=wZgtFgn914OEB7VXWwLhnnRwtf5i6lUSWIuPSrBvexE4683fUKIKSUs6/pTey89VL/
         d7oVa8Dz0292IV6wH2S1FZjIQdEIuxmiqbDf+9xvmDOWuojzlHud7wcQDGAGlULlfc5J
         1JTklRvvQpAIz7GI6+wcIfpHftU7AkLFGBK3JhpHvJbF6Ejk4PL9Hre2j/UCggZIKLxy
         DnGaGU8QSkRjiIoR6Ix5+86ZnYQMIH1qCO4YjTX+UJ1jlfJPI0X3YD4/ZQ+ApzwUHRwG
         Pb/Zuw1+O043dv86KrX4BUXOFmP5f7C6p/CqeIsY/YlgOGLiL6truVhgEespO+FXC66w
         aLqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=HxSYBdgam0Oo55tV66MssX9ym6F+6IzxUZWIIcNmGrg=;
        b=LOQKjTqPhwSMV/CgNQCswl28GtraPi3z+T5CggjkJlxmXqIyMH6RQIUWbuY8T8vg5O
         sgofHv2w9DCN/5oV0rwzeoSkwtvEuMRk5a0fnLiGgBWmOxxcObv0kcMwVt3ZBUCWpOWz
         8xL6yaJyrDY8paeRYtnWzEtMz12gUg5BPi4hTu2OVyGww/5gQR87aPU+JAfmvXgLTxDY
         Q9dj5KRrR4FsuDeZBUnX60PuTrApO7Jd9lgrWenu5Xn65zu2JpHH9dSzQv7c0ODul1WH
         aR7Pe2jJvEPELad5dxpxTh0rIr/f7k0X39KQAzur/z5gbrQdg4bg8eijTjqKmMlYrLfY
         OKGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WnsqAWuL;
       spf=pass (google.com: domain of 3_ltvxgwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3_ltVXgwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x94a.google.com (mail-ua1-x94a.google.com. [2607:f8b0:4864:20::94a])
        by gmr-mx.google.com with ESMTPS id o185si7660yba.0.2020.02.25.09.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:15 -0800 (PST)
Received-SPF: pass (google.com: domain of 3_ltvxgwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) client-ip=2607:f8b0:4864:20::94a;
Received: by mail-ua1-x94a.google.com with SMTP id b15so49681uas.23
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:15 -0800 (PST)
X-Received: by 2002:a05:6102:3235:: with SMTP id x21mr229653vsf.8.1582652414506;
 Tue, 25 Feb 2020 09:40:14 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:31 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 10/12] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=WnsqAWuL;       spf=pass
 (google.com: domain of 3_ltvxgwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3_ltVXgwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/include/asm/scs.h         | 37 +++++++++++++++++++++++++
 arch/arm64/include/asm/thread_info.h |  3 +++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  3 +++
 arch/arm64/kernel/entry.S            | 32 ++++++++++++++++++++--
 arch/arm64/kernel/head.S             |  9 +++++++
 arch/arm64/kernel/irq.c              |  2 ++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 40 ++++++++++++++++++++++++++++
 arch/arm64/kernel/smp.c              |  4 +++
 11 files changed, 136 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..eae76686be77 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -65,6 +65,7 @@ config ARM64
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
@@ -1022,6 +1023,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
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
index fc6488660f64..08fafc4da2cf 100644
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
index a5bdce8af65b..d485dc5cd196 100644
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
index 9461d812ae27..4b18c3bbdea5 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -177,6 +177,10 @@ alternative_cb_end
 
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
+	mov	x24, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -400,15 +413,25 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
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
@@ -895,6 +918,11 @@ ENTRY(cpu_switch_to)
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
index 00626057a384..9151616c354c 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,6 +52,7 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
+#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -514,6 +515,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	uao_thread_switch(next);
 	ptrauth_thread_switch(next);
 	ssbs_thread_switch(next);
+	scs_overflow_check(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
new file mode 100644
index 000000000000..eaadf5430baa
--- /dev/null
+++ b/arch/arm64/kernel/scs.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/percpu.h>
+#include <linux/vmalloc.h>
+#include <asm/pgtable.h>
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
+		p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+					 VMALLOC_START, VMALLOC_END,
+					 GFP_SCS, PAGE_KERNEL,
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
index d4ed9a19d8fe..f2cb344f998c 100644
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
@@ -358,6 +359,9 @@ void cpu_die(void)
 {
 	unsigned int cpu = smp_processor_id();
 
+	/* Save the shadow stack pointer before exiting the idle task */
+	scs_save(current);
+
 	idle_task_exit();
 
 	local_daif_mask();
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-11-samitolvanen%40google.com.
