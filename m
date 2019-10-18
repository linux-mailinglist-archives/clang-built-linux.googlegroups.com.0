Return-Path: <clang-built-linux+bncBC2ORX645YPRBOGIU7WQKGQE7X7H2TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C82DCA7A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:37 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id t65sf4961392pfd.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415096; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJNidfc4XKZxbFbdoOMysaqZi+9gPM59PpY7kwWWFrEfHN7K4wVVT5TSYX/kDbYOXb
         sqqx5wtNN3vmjV4MOYfPcmSgwscX5KX8dxZKkMlOnSDxbqwKPql5EdTPIutunbGf50wz
         tB6KMFPpTlQ6Ni2++rNrakrIgwWk+tHtndj9WTjJB/oe0PVQUYt/SClYc7Giufwlc3KZ
         WLkJA4fsmf9pVEeGoN2Szi/LuHvCoxOP05CsQ6AnmjkYpmwL77Muz5CX4cZm2RwcUSaq
         J77OYXlI2qfPGVOGOzN6VBwmlyRjWhqhdXfMXvSM9F9OwBlu65/iwJO4CW1GwE972sMh
         CeIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8vohnovJImYTzgce3/XNYSu74nePuYZZoZycoCg6d/8=;
        b=FAkMvqVraCIiXJEa/tXRbNoUPsQKT74opyVIfJzlgUjMGxwem1SpUXKA1NnKsPdYMd
         RzeDkRq+fcSHZ3cAC0EdV1pm9FgUrXkI4WuueB7fBz367EqBgh3vjqaQMbhkYGsFdOYH
         RMAPVyPCpFWauEKWyBA9xKXidqiVFziOuLeULpRBF22Ryare75uw3BIUV0mmGdnUv8/2
         jdR3+WbDj2aFc+YDjzvx6f71E16nTwAnyh//TZcIjukl2KUP/SXulkgJl235dD9NLjTr
         wQFUVnkognH+g9gvx3b5N9fp+kzs629gvIM2AArozok79MVO8lLItd6XtDZ31p8YlFlF
         NoHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFUqOFiJ;
       spf=pass (google.com: domain of 3n-spxqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3N-SpXQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vohnovJImYTzgce3/XNYSu74nePuYZZoZycoCg6d/8=;
        b=AFQ6oCHvGqswvN25l5iwFdG5yKudEST5qWXjetIilIOg7Z+ZwLdAC6+nGjpfaMdYXx
         34xG7Rk4ir+1S3mzkPdDYYIm9jp3pJpekQtxLkC67NQDkW1UcA37F49fJdkSIHCvwm2g
         SxzBefbUxFKVzLk34hp+ydR/DfYgKk2fVjFjnr7o8/MEer/guW6qEBQYHKg5EXTEeX0B
         jRy+fmv+51QzdJQVGAGhmp0bDp5/LyD214K9TIy7X8PocVCSL6VmsEeyIwKdqeMbURs8
         pM9wJSt8/n1qhWF1Qz9piuhcJmXmgaMXKXbqrPXUvG5b8JjuhVffUmgZLLDlEwMrzQR7
         srFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vohnovJImYTzgce3/XNYSu74nePuYZZoZycoCg6d/8=;
        b=hHjBrZ26aGTyUgQj9OmRhhfi9TW3n3PLQj+nKWClq6BlnzHgbeN0hUboLVsFM8+PZv
         7ACjAEnAMvdQW604wXtwSfV+poN3Fe9e5rAuircLBDxKrsvM5TKwYFo/+JpNE7g23B4h
         h17H3kpH9Ew5El/1DEjJydj52m2Q6Aoy6rcg3J8cKcFE6W/xNbbJYMVQVUCq9119X8ed
         EETwWrEyIvMPJAMz4k66lrztvaKF/wxogMGLptxlcqtrAxUlwZvjrKR0+nLQGaT/namy
         r+dfwVuXzvEn5O74B0W5XFTYaBurbrqz+Vfh2uCRTuBkyBE85ko7sF8FrdrfXsYfSo4F
         dZuw==
X-Gm-Message-State: APjAAAUheNgeMhRMPEM6sDhjO0/Xa+Q+wCxdCP8QC7PG8nJr+xecqhL3
	ZWhKsnq1a7QZ4UWSqrVbahY=
X-Google-Smtp-Source: APXvYqx9kHSvTYso1ndnkRamf0dcCsy/NdpRWg/wgrhX1o2RqvyAbVFdJpVemz0TCTrhkW1TY+hxlA==
X-Received: by 2002:a17:902:9b85:: with SMTP id y5mr10815463plp.138.1571415096490;
        Fri, 18 Oct 2019 09:11:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa91:: with SMTP id d17ls1978501plr.2.gmail; Fri, 18
 Oct 2019 09:11:36 -0700 (PDT)
X-Received: by 2002:a17:90a:3623:: with SMTP id s32mr12401387pjb.42.1571415096084;
        Fri, 18 Oct 2019 09:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415096; cv=none;
        d=google.com; s=arc-20160816;
        b=Y24mSFT+ciQZrmXD/CCZkSF626oK06kj4GtRaudWoMAMSD23DerauUFf7ZgZ+mX2WB
         LPJ+Yhy5ZBoJC0j1EYAXhELNOvFKClQb6SmItFpFNmWzrSyu9xyZI8HMSnnx9yY7vfct
         Q+oC43yaWnoMD5vNTTkSDrDlRia40/GyC8v5OkC5yOVuUobLmo1R/CFZdNwnDnLKfzB1
         uEHvkyyfIqvaYlr3sqzzGh/6EoipbT7wRib06h9qwnPkRz3ha5UlB29XqnR4UEUAVcaI
         zfTgU+zn9BPTG5Tji3MYEpk4u5ab1ITL9ix/uHL8bcu2RmiekqSBgGrE45wRD7F0Nt4d
         Y8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=UZX+R+9PK3foZtlSwTu2VkSnILWNlGOO043crMQhF3g=;
        b=eJmHXrrfeM/YgsA+mAX5txkoKE0ZbJNZoZIi2HksctYQWHzAdMYKtzlXNnMqi5LJNQ
         yPYHbtRuTAxfPnYo4PY5drEdgk5RG4u/tIoM85xB3nltSDNJbTlo6c96Tnr62wjgQgQD
         UFCgs3S5X7Gr0e1Sw6OkrAGoCHNkOhhQtcwWEwv4D9uCx72QSb6b/qWZw2GquMnGYmOf
         sLUoOR/jufCRElUDA1yrqoOPFpbHCHDgFjl+nHnIsOdYyYJKaeYHP8XN7k5oRGpRF4bB
         zL5Zwxa1jXgwh1Wutb6rKbF+GV9U95d9cb+66jc0ogXcUwgAzqd1GfYpe1UXdEOI4u/L
         N5RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFUqOFiJ;
       spf=pass (google.com: domain of 3n-spxqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3N-SpXQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id x2si362317pfq.3.2019.10.18.09.11.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n-spxqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id q127so4960898pfc.17
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:36 -0700 (PDT)
X-Received: by 2002:a63:78cc:: with SMTP id t195mr10900935pgc.304.1571415095479;
 Fri, 18 Oct 2019 09:11:35 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:33 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 18/18] arm64: implement Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VFUqOFiJ;       spf=pass
 (google.com: domain of 3n-spxqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3N-SpXQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
---
 arch/arm64/Kconfig                   |  1 +
 arch/arm64/include/asm/scs.h         | 60 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/stacktrace.h  |  4 ++
 arch/arm64/include/asm/thread_info.h |  3 ++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  3 ++
 arch/arm64/kernel/entry.S            | 23 +++++++++++
 arch/arm64/kernel/head.S             |  9 +++++
 arch/arm64/kernel/irq.c              |  2 +
 arch/arm64/kernel/process.c          |  3 ++
 arch/arm64/kernel/scs.c              | 39 ++++++++++++++++++
 arch/arm64/kernel/smp.c              |  4 ++
 12 files changed, 152 insertions(+)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..9bf179db5da9 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -66,6 +66,7 @@ config ARM64
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
 	select ARCH_SUPPORTS_NUMA_BALANCING
diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
new file mode 100644
index 000000000000..14ba192dc6f0
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,60 @@
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
+static inline void scs_save(struct task_struct *tsk)
+{
+	void *s;
+
+	asm volatile("mov %0, x18" : "=r" (s));
+	task_set_scs(tsk, s);
+}
+
+static inline void scs_load(struct task_struct *tsk)
+{
+	asm volatile("mov x18, %0" : : "r" (task_scs(tsk)));
+	task_set_scs(tsk, NULL);
+}
+
+static inline void scs_thread_switch(struct task_struct *prev,
+				     struct task_struct *next)
+{
+	scs_save(prev);
+	scs_load(next);
+
+	if (unlikely(scs_corrupted(prev)))
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
+static inline void scs_load(struct task_struct *tsk)
+{
+}
+
+static inline void scs_thread_switch(struct task_struct *prev,
+				     struct task_struct *next)
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
index cf3bd2976e57..ca49938b99d0 100644
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
index 71f788cd2b18..4490632047d6 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,6 +52,7 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
+#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -508,6 +509,8 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	ptrauth_thread_switch(next);
 	ssbs_thread_switch(next);
 
+	scs_thread_switch(prev, next);
+
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
 	 * the thread migrates to a different CPU.
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-19-samitolvanen%40google.com.
