Return-Path: <clang-built-linux+bncBC2ORX645YPRBPNXVX2AKGQEO2BJKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA3019FA5E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:35 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 78sf22699pfy.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191293; cv=pass;
        d=google.com; s=arc-20160816;
        b=fixFJermAd2QkPDsJMCW4UWbJdvjJGiDUiVnDy1OzKh48rM43tkZsd5ir95dLWeKCx
         HrVJaQR4IehZ5Cc17OJdeYfUnoRvc64qWFJ5H+w666rdgL3m9UZZnEOIAU6SV1CiF+0e
         4Twy03gRUxczV+6DutqO35ZCP1THXkSpM9wAbz54chexA0rfLAglKS4UP23yIYlAsNu6
         FU1jAR4q5QFPCcs43wnPh9L8yGNB9ZkYn3kPhOv4sZToPnmQpgNVlqQ/MJl5Pf0OVCeB
         I8Npo4kdGT5kHph8LNgBeVesWExt+yoxXS0iXx3vHnhrVbVE5p6NRnGTuK2y+6rLgLEy
         mcjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=dIOFw2R1IMh5uRN1pkeQUKKTsggAVXejTOgHL92u+hs=;
        b=UCL/Wy9U+WcPf56hHhLqLImga1eNuQXMbEGkOIgmxhBhUL16ALxevfLDZcNZbkNb66
         lvcJV++y8pznFwIz6/hWNJxBBLXYjdrZaEFJK5wgrccW1M1XBwwg7oZUKgU6CkkeTwOD
         jNyp6CzJWbSP2QAXRC6alAN1PVRc3wvyui4+aDY2j/T9rm/Gpe0/VAiDy/7jh0z2qTU8
         8SbnKSDF7snVSQ9nQ2DuelcGwE1MUQdzpaCxvmwWii4egLXmRYDFI9SCivB3ACdn5Mmp
         Y/N1ysI5jkSw3AJsNeMRRSwTwTvd9mmksFMjZEyBuw0xfe0r53JgPtHWHCHwkLjK5YEO
         V3mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tlEf7Wn2;
       spf=pass (google.com: domain of 3vfulxgwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3vFuLXgwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIOFw2R1IMh5uRN1pkeQUKKTsggAVXejTOgHL92u+hs=;
        b=OBhvM6C18suhabrN5gGRcR8RTZ9nvoqZmhwcD4/nxbRnw8mEj1w5/2II/WjG11GUQS
         pf1bYEjGAR8LxAGbD2vUsUrO9VV6Qe6rb3Gb36WaIlPU77cmFjqoSTpRZyYhvhuAF1Fd
         Mpu6mArTjXWr4Oedc29YfFEZ8Q0Bk/qfLa/9dDPufuhQ1RgI/mb3bTJAFZFc5HIAE+lD
         58oMFNMYJnhoHJeEhQnQYdGIw0SKLeXSJp9cKxwhNF4xbAXT+AWRZL3TncH/PxJYLLSu
         2sOsIqcZq8In+WA9bI2BBes51VF0CHpxKIWpjs4KL7jODhhOdwPURMqHXHARKLQKY5la
         iArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIOFw2R1IMh5uRN1pkeQUKKTsggAVXejTOgHL92u+hs=;
        b=C5oo4WE1OpR2OifWPE+a/C4rJbduDQfFmtwgwHGuBAou2+lKX1oBvwzlOO74sPqgRx
         6gZjwfe5wDZwyVZZeZFvS9y/CxW4fbAGR/DVzXWNQYnGEN98Sb5d28uwde6zBh7ka5Hu
         DVRqK4G1l+UcCabjV6mr4/NffS7TpLMq44APl9l0/FHpsg4uSSwV5lGS0wOTBb4JGHAj
         4eisGiHSm3sujMa1HMud/6f/K9aFb70CrsC9GCXYIiiB+ASPVDb6EsPoNz1U/9tXqcJ5
         enpPL9mSwKmpFDK0jLLNvDMwE9O6GrqlL5N9gEXCGLGqu8i2CYxG7n/45mJLnNUdzGoJ
         XkxQ==
X-Gm-Message-State: AGi0PuZWkEgNpMWiwWx41iQ/DSeSI6CP5zvaGC0/gWDKyiabk5jYiCSR
	nO22LWrQCub1PYH8ldciuqk=
X-Google-Smtp-Source: APiQypLuTgbyHeqp7AF169XkLQI0TWDmU9wFzJlleZhPNgE+uluZd5KBM5x1Fs/qUpZp3lV66bLUvQ==
X-Received: by 2002:a17:90a:2e15:: with SMTP id q21mr41687pjd.166.1586191293544;
        Mon, 06 Apr 2020 09:41:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4c4:: with SMTP id 187ls73930pge.5.gmail; Mon, 06 Apr
 2020 09:41:33 -0700 (PDT)
X-Received: by 2002:a63:3141:: with SMTP id x62mr22278987pgx.275.1586191292931;
        Mon, 06 Apr 2020 09:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191292; cv=none;
        d=google.com; s=arc-20160816;
        b=uORy2dMBKZW2r7C31xsoD2L85YZZA9Mc9rOvMQXtQU612bc3iGN65VE3/q+WevlRFL
         aZBNB5FpVUXxMOjaAZQKMLGUMVjvIYDPcVp7sro5fkoeSxgqvoV3KjCyF3LZXCTArHNo
         YkdLelNgkYWf2DKfxGmWahEqBiOQprX34JG7s76qqBvdAUd3/cnbv6EW3+exmVxpkdqi
         qO0aaCZgGeRtvOqM8fvEfaL60tfqqNDJIArUyM0C+yR1ENeyN/ElMY0lO2RWt1GKoU32
         BNjG8u/8b294SZUsM8HgEOu7RV+7H5/YMRsdii6mExkeR9C+DsBJQjkrQdnFKBuwE3sP
         fB5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hNd/HG0KaDX+Yh49hL+OKYKSwe823koA4Dp0UmE6Oic=;
        b=XEM1Y9/JcmOE2Vr1v0vjrKaHv2Dqur+5KpNMB2vndbdTRs4BnWtjv6bYsAlEqjLCqf
         LFtg44pQVKY+4P6HyLuaNbO+w1+zJyXGHFco/EzAkKuT9nUuscDHmYazKTTdV3c3tSn7
         1gIsJjYeb7F3abHmWfJqPVDEw3bnUTS5OPVLt9+PWXRQ8GTnUpX+aECnD561IbsP/p1E
         ssJQUG0aJ6zvzcvVR9g8qN7uWZDyktJ1aWD4mNNhf9zCoQn1vlj+iAUtXPqUEEMGeeYB
         s8XOzQkUfTNur4f24usmS3Wx4wOffIlXBVJMd9a7fyzcKgdQO1GuPPOYINHTXfjZvDRH
         6nUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tlEf7Wn2;
       spf=pass (google.com: domain of 3vfulxgwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3vFuLXgwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id w18si43582pfi.4.2020.04.06.09.41.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vfulxgwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id f14so61624pfk.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:32 -0700 (PDT)
X-Received: by 2002:a17:90a:fa17:: with SMTP id cm23mr10647pjb.121.1586191292561;
 Mon, 06 Apr 2020 09:41:32 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:10 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 01/12] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=tlEf7Wn2;       spf=pass
 (google.com: domain of 3vfulxgwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3vFuLXgwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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

This change adds generic support for Clang's Shadow Call Stack,
which uses a shadow stack to protect return addresses from being
overwritten by an attacker. Details are available here:

  https://clang.llvm.org/docs/ShadowCallStack.html

Note that security guarantees in the kernel differ from the
ones documented for user space. The kernel must store addresses
of shadow stacks used by other tasks and interrupt handlers in
memory, which means an attacker capable reading and writing
arbitrary memory may be able to locate them and hijack control
flow by modifying shadow stacks that are not currently in use.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  34 ++++++
 include/linux/compiler-clang.h |   6 ++
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  57 ++++++++++
 init/init_task.c               |   8 ++
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/scs.c                   | 187 +++++++++++++++++++++++++++++++++
 10 files changed, 314 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index c91342953d9e..cb2ed7443d57 100644
--- a/Makefile
+++ b/Makefile
@@ -851,6 +851,12 @@ ifdef CONFIG_LIVEPATCH
 KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
 endif
 
+ifdef CONFIG_SHADOW_CALL_STACK
+CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
+KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
+export CC_FLAGS_SCS
+endif
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 786a85d4ad40..691a552c2cc3 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -533,6 +533,40 @@ config STACKPROTECTOR_STRONG
 	  about 20% of all kernel functions, which increases the kernel code
 	  size by about 2%.
 
+config ARCH_SUPPORTS_SHADOW_CALL_STACK
+	bool
+	help
+	  An architecture should select this if it supports Clang's Shadow
+	  Call Stack, has asm/scs.h, and implements runtime support for shadow
+	  stack switching.
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a
+	  shadow stack to protect function return addresses from being
+	  overwritten by an attacker. More information can be found in
+	  Clang's documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+	  Note that security guarantees in the kernel differ from the ones
+	  documented for user space. The kernel must store addresses of shadow
+	  stacks used by other tasks and interrupt handlers in memory, which
+	  means an attacker capable of reading and writing arbitrary memory
+	  may be able to locate them and hijack control flow by modifying
+	  shadow stacks that are not currently in use.
+
+config SHADOW_CALL_STACK_VMAP
+	bool "Use virtually mapped shadow call stacks"
+	depends on SHADOW_CALL_STACK
+	help
+	  Use virtually mapped shadow call stacks. Selecting this option
+	  provides better stack exhaustion protection, but increases per-thread
+	  memory consumption as a full page is allocated for each shadow stack.
+
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918..18fc4d29ef27 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,9 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+#if __has_feature(shadow_call_stack)
+# define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
+#else
+# define __noscs
+#endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c..be5d5be4b1ae 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -202,6 +202,10 @@ struct ftrace_likely_data {
 # define randomized_struct_fields_end
 #endif
 
+#ifndef __noscs
+# define __noscs
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/scs.h b/include/linux/scs.h
new file mode 100644
index 000000000000..c5572fd770b0
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#ifndef _LINUX_SCS_H
+#define _LINUX_SCS_H
+
+#include <linux/gfp.h>
+#include <linux/sched.h>
+#include <asm/page.h>
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+
+/*
+ * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
+ * architecture) provided ~40% safety margin on stack usage while keeping
+ * memory allocation overhead reasonable.
+ */
+#define SCS_SIZE	1024UL
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
+
+/*
+ * A random number outside the kernel's virtual address space to mark the
+ * end of the shadow stack.
+ */
+#define SCS_END_MAGIC	0xaf0194819b1635f6UL
+
+#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_scs(tsk) = s;
+}
+
+extern void scs_init(void);
+extern void scs_task_reset(struct task_struct *tsk);
+extern int scs_prepare(struct task_struct *tsk, int node);
+extern bool scs_corrupted(struct task_struct *tsk);
+extern void scs_release(struct task_struct *tsk);
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+#define task_scs(tsk)	NULL
+
+static inline void task_set_scs(struct task_struct *tsk, void *s) {}
+static inline void scs_init(void) {}
+static inline void scs_task_reset(struct task_struct *tsk) {}
+static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
+static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
+static inline void scs_release(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* _LINUX_SCS_H */
diff --git a/init/init_task.c b/init/init_task.c
index bd403ed3e418..aaa71366d162 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -185,6 +186,13 @@ struct task_struct init_task
 };
 EXPORT_SYMBOL(init_task);
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)] __init_task_data
+		__aligned(SCS_SIZE) = {
+	[(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
+};
+#endif
+
 /*
  * Initial thread structure. Alignment of this is handled by a special
  * linker map entry.
diff --git a/kernel/Makefile b/kernel/Makefile
index 4cb4130ced32..c332eb9d4841 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -103,6 +103,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
 obj-$(CONFIG_IRQ_WORK) += irq_work.o
 obj-$(CONFIG_CPU_PM) += cpu_pm.o
 obj-$(CONFIG_BPF) += bpf/
+obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
 
 obj-$(CONFIG_PERF_EVENTS) += events/
 
diff --git a/kernel/fork.c b/kernel/fork.c
index d2a967bf85d5..3f54070a7a53 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
 #include <linux/kasan.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -455,6 +456,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -838,6 +841,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -897,6 +902,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
 	if (err)
 		goto free_stack;
 
+	err = scs_prepare(tsk, node);
+	if (err)
+		goto free_stack;
+
 #ifdef CONFIG_SECCOMP
 	/*
 	 * We must handle setting up seccomp filters once we're under
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index a2694ba82874..9bb593f7974f 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -11,6 +11,7 @@
 #include <linux/nospec.h>
 
 #include <linux/kcov.h>
+#include <linux/scs.h>
 
 #include <asm/switch_to.h>
 #include <asm/tlb.h>
@@ -6050,6 +6051,7 @@ void init_idle(struct task_struct *idle, int cpu)
 	idle->se.exec_start = sched_clock();
 	idle->flags |= PF_IDLE;
 
+	scs_task_reset(idle);
 	kasan_unpoison_task_stack(idle);
 
 #ifdef CONFIG_SMP
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..28abed21950c
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,187 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/cpuhotplug.h>
+#include <linux/kasan.h>
+#include <linux/mm.h>
+#include <linux/mmzone.h>
+#include <linux/scs.h>
+#include <linux/slab.h>
+#include <linux/vmalloc.h>
+#include <asm/scs.h>
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	/*
+	 * To minimize risk the of exposure, architectures may clear a
+	 * task's thread_info::shadow_call_stack while that task is
+	 * running, and only save/restore the active shadow call stack
+	 * pointer when the usual register may be clobbered (e.g. across
+	 * context switches).
+	 *
+	 * The shadow call stack is aligned to SCS_SIZE, and grows
+	 * upwards, so we can mask out the low bits to extract the base
+	 * when the task is not running.
+	 */
+	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
+}
+
+static inline unsigned long *scs_magic(void *s)
+{
+	return (unsigned long *)(s + SCS_SIZE) - 1;
+}
+
+static inline void scs_set_magic(void *s)
+{
+	*scs_magic(s) = SCS_END_MAGIC;
+}
+
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+
+/* Matches NR_CACHED_STACKS for VMAP_STACK */
+#define NR_CACHED_SCS 2
+static DEFINE_PER_CPU(void *, scs_cache[NR_CACHED_SCS]);
+
+static void *scs_alloc(int node)
+{
+	int i;
+	void *s;
+
+	for (i = 0; i < NR_CACHED_SCS; i++) {
+		s = this_cpu_xchg(scs_cache[i], NULL);
+		if (s) {
+			memset(s, 0, SCS_SIZE);
+			goto out;
+		}
+	}
+
+	/*
+	 * We allocate a full page for the shadow stack, which should be
+	 * more than we need. Check the assumption nevertheless.
+	 */
+	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
+
+	s = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				 VMALLOC_START, VMALLOC_END,
+				 GFP_SCS, PAGE_KERNEL, 0,
+				 node, __builtin_return_address(0));
+
+out:
+	if (s)
+		scs_set_magic(s);
+	/* TODO: poison for KASAN, unpoison in scs_free */
+
+	return s;
+}
+
+static void scs_free(void *s)
+{
+	int i;
+
+	for (i = 0; i < NR_CACHED_SCS; i++)
+		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == NULL)
+			return;
+
+	vfree_atomic(s);
+}
+
+static int scs_cleanup(unsigned int cpu)
+{
+	int i;
+	void **cache = per_cpu_ptr(scs_cache, cpu);
+
+	for (i = 0; i < NR_CACHED_SCS; i++) {
+		vfree(cache[i]);
+		cache[i] = NULL;
+	}
+
+	return 0;
+}
+
+void __init scs_init(void)
+{
+	WARN_ON(cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
+			scs_cleanup) < 0);
+}
+
+#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
+
+static struct kmem_cache *scs_cache;
+
+static inline void *scs_alloc(int node)
+{
+	void *s;
+
+	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
+	if (s) {
+		scs_set_magic(s);
+		/*
+		 * Poison the allocation to catch unintentional accesses to
+		 * the shadow stack when KASAN is enabled.
+		 */
+		kasan_poison_object_data(scs_cache, s);
+	}
+
+	return s;
+}
+
+static inline void scs_free(void *s)
+{
+	kasan_unpoison_object_data(scs_cache, s);
+	kmem_cache_free(scs_cache, s);
+}
+
+void __init scs_init(void)
+{
+	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
+				0, NULL);
+	WARN_ON(!scs_cache);
+}
+
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+
+void scs_task_reset(struct task_struct *tsk)
+{
+	/*
+	 * Reset the shadow stack to the base address in case the task
+	 * is reused.
+	 */
+	task_set_scs(tsk, __scs_base(tsk));
+}
+
+int scs_prepare(struct task_struct *tsk, int node)
+{
+	void *s;
+
+	s = scs_alloc(node);
+	if (!s)
+		return -ENOMEM;
+
+	task_set_scs(tsk, s);
+	return 0;
+}
+
+bool scs_corrupted(struct task_struct *tsk)
+{
+	unsigned long *magic = scs_magic(__scs_base(tsk));
+
+	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
+}
+
+void scs_release(struct task_struct *tsk)
+{
+	void *s;
+
+	s = __scs_base(tsk);
+	if (!s)
+		return;
+
+	WARN_ON(scs_corrupted(tsk));
+
+	task_set_scs(tsk, NULL);
+	scs_free(s);
+}
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-2-samitolvanen%40google.com.
