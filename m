Return-Path: <clang-built-linux+bncBC2ORX645YPRBSFFVPXQKGQENAHR6PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDCD11590D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:33 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id t77sf6338319ybi.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670472; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjifvP61WktyEziIFjmLc76syZ1PkGzZaczWKCJIy/LkxXY8hUBrIzzVYzFqKt0n+5
         FIP69vYF3j/nhAGM+tk1+nnZuUMrF8bG9Ecjuiz/Jswvpv6ZN4ddgGqv00R6wFHSvW9b
         rGm6Mg8pHfYmIxFKbXkTxzR2vmh5Rfv/PYjdy6YANV9dv2z/YsCTyD62adJaM8h+cNBB
         iZkfxiz/Yp3/LQhF2XlhnPTRrAeEUyRQkaY74NjWft5fVQqWIp9056z0eOC+TLYwbp39
         0lU7uGVHSl84wRviH/5zBV2satbsdT6Gu5GDY2p5C+KSstzOBBfoig6dSsnp5SDINpTC
         MAlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=43LKBn7Htp/KAwt13CliHZiAZd1IDGK1wksK6/0iWhE=;
        b=W/ZVpL48KZi21r/Jqgm9JgWuV4PAsT0+csppDTg5fjDTlKHhROfOzrg6UfjWSh3s7H
         Y44QjiaLNyzYsz3f9x0KIyvXxzGySK5l3P4zM1keJeH3lT+fU5zII0n3jweMNiq2mUWZ
         4hY3LersxhKjaP64J+2zReJ4e4m7NoDaNOacHcbVPJ9m+IKDnM5zHZUHc84E7KwJmmXE
         bc4ctpdMhZSuKgu/NCFziDwegGaKqGVkz6WhAKmTpt8MlXkOqx3aJbzvKy3FPEQ7L64C
         ePmUIS0DFCTmyDxRQ2FA7FkiRXWgmzX6AjVUEmNKFNDMEz1MP0LPo0IzOM+sY0hVi+7k
         991Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SrAYs7vU;
       spf=pass (google.com: domain of 3x9lqxqwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3x9LqXQwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43LKBn7Htp/KAwt13CliHZiAZd1IDGK1wksK6/0iWhE=;
        b=D7sw/LS+7weT0252tK348b56z2vxtyMfXOGQcXZBN0Pp4g/2EbNX4L64IogMYcvRI9
         6CFsN1mxARWrGydzzKn7muJ1+uzTdIHHSqCrmIGzD1I3ufUII0P2hG02L3aiYNJf8940
         NzXULFSWz7C2lH1XLd/ay1cJ3Nc/agW0e+ScnxyIoE52vdQI42Bd8ET6HHsaR/O0AjjJ
         trHorejXrh22fcBEsT8g2fqk9GVM8HFfyRh5X1HoQCOcv1/GUkUB2MyoUSpWRuVel7dB
         fegxhm/E1cSpxX4jAU5C436rTdGL/MTg0oyUvkNNXMvBml5pSZEK8tGN5mBy9GAw+Qzd
         u1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43LKBn7Htp/KAwt13CliHZiAZd1IDGK1wksK6/0iWhE=;
        b=LLjNA5CbzK8AMLVSiXPe6a7JIwSV67EdBq5SGFtG8Aekg8A1dHuySiGLAZ70TQLnA3
         Lp0R6JhoLilwdcdPGoPH516ZYZ3jZgES+KE3SZ4kyXs0OEnxxHo5sSPKianxYtws3Ycr
         dLnPII2E35OcCiRfApZK48QzAlKhj6pnxuWuE/Iuaq15F+/IEGYz0bpGoNXMfeog+hIZ
         2A0fICCm0nIByzGuMRW/ujC7wYfBx1KNq99TB3/+QwP2qAMRCSuWAojcHWwcuCLpFk0d
         CTXOiwFAlwP/fgakHGw4ugBqdJWxnn6llH4YRfnG4FqsN/fYmgKhkuglwRdQ6hqA1F/F
         IReA==
X-Gm-Message-State: APjAAAVanSu1/rGJEGPxikeiD7R4RAJyyrNxighlCsextXNUzZtE9pqo
	BhQJ1Q/SnyxgTwDItCeBmZg=
X-Google-Smtp-Source: APXvYqyEhkACEBCCcQGBdiWkQJfy/Tg3P0/J0RakgD4AznJpxYiBdfMTG45gjFVk99AW/+ySrBzSDg==
X-Received: by 2002:a25:b221:: with SMTP id i33mr12294783ybj.352.1575670472443;
        Fri, 06 Dec 2019 14:14:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:bc2:: with SMTP id c2ls1133347ybr.4.gmail; Fri, 06 Dec
 2019 14:14:32 -0800 (PST)
X-Received: by 2002:a25:c42:: with SMTP id 63mr12063835ybm.425.1575670471980;
        Fri, 06 Dec 2019 14:14:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670471; cv=none;
        d=google.com; s=arc-20160816;
        b=X1y3YFSks6oSvjQq4X4Le/ehROABfWNRAuPHdKLScAj8Uxtj9FZn/4Phlbhpgh3rI7
         HzIRmRiSpoEhQ5PlgaWYZ6NRJpCM2xGu+DssxP+yBHsPoLERJplOvj8NHm+7X3Do5DfT
         cXBlu8vJ0BVoKVOd2p4C3uFNyR/suAszCH4S/6dPxgSYaat7EMsIEBgrN2aNclq8JbAe
         dh0YeLmxJzhLguvQobEbmCppJSZHjdmFTqpEuhNDYq+KO5+1gKrd5IEErhWexE/+04eV
         leIWkeXVMDb3WrjqyVfVr5NXq7XC5Q6ewJnKPh8PWy3I1jb400lfAyI7tcHXcCizxfWf
         h/ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=695zLZTNdpn86wd9/0lMPcupVOX+vVGOdC46A1ua4Tk=;
        b=G/hgZZ6yXLRGZQIclQY4D3poBtWgO/I6yUNBCIaAxPX69ooGspWL3TQpqzrnKJqlCD
         BJsy9FbBJ8+A8kn9ZMcJyC65Tfa3hT/ZT87YH9FvE22Cm7OgXU0w4aGUAIBlnLXh0wrc
         zIpcVzERYGP2xiVA42wPVJc5XY+0k9zQmLrl3nN4HUAFKa7DTgGuyv1ox7OxGyUqTtEx
         p26uD0g8EDtwTAuHhmrZ7xaeZE92H7/lGGNl93LtBp5ibuduSle8Hj1Iv86bKj4dVyLO
         M4YLMmrhCVvOvhtRgKwvWrmaKcucpK9nOzj+i5IL+yq9vN/U2z+7iK683/weWzeI8eWw
         PJcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SrAYs7vU;
       spf=pass (google.com: domain of 3x9lqxqwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3x9LqXQwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id j7si980058ybo.5.2019.12.06.14.14.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:31 -0800 (PST)
Received-SPF: pass (google.com: domain of 3x9lqxqwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id e23so5372439qka.23
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:31 -0800 (PST)
X-Received: by 2002:a37:7301:: with SMTP id o1mr16677513qkc.392.1575670471518;
 Fri, 06 Dec 2019 14:14:31 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:50 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 14/15] arm64: implement Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=SrAYs7vU;       spf=pass
 (google.com: domain of 3x9lqxqwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3x9LqXQwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/kernel/entry.S            | 31 +++++++++++++++++++--
 arch/arm64/kernel/head.S             |  9 +++++++
 arch/arm64/kernel/irq.c              |  2 ++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 40 ++++++++++++++++++++++++++++
 arch/arm64/kernel/smp.c              |  4 +++
 11 files changed, 135 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 49e5f94ff4af..073b19db23f2 100644
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
@@ -994,6 +995,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
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
index 583f71abbe98..7aa2d366b2df 100644
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
@@ -280,6 +284,12 @@ alternative_else_nop_endif
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
@@ -385,6 +395,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x20, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -402,15 +415,24 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
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
+	 * irq_stack_entry and irq_stack_exit.
 	 */
 	.macro	irq_stack_exit
 	mov	sp, x19
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x18, x20
+#endif
 	.endm
 
 /* GPRs used by entry code */
@@ -894,6 +916,11 @@ ENTRY(cpu_switch_to)
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
index ab149bcc3dc7..416cf4da6f0c 100644
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
@@ -356,6 +357,9 @@ void cpu_die(void)
 {
 	unsigned int cpu = smp_processor_id();
 
+	/* Save the shadow stack pointer before exiting the idle task */
+	scs_save(current);
+
 	idle_task_exit();
 
 	local_daif_mask();
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-15-samitolvanen%40google.com.
