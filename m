Return-Path: <clang-built-linux+bncBC2ORX645YPRBYFX2XZAKGQEJTJJSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AD316ECA5
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:39:46 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 2sf7869271plb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:39:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652384; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSEdzV2ncdwsCkMfpmV6egOTLwm697p7f521RsKSDirPILm52ck0cAoEbj4tnCrqbH
         8JjqVQgrmSgXJ/SdBWA0c4Qoh0tdgytJ61+BJZ4qY0Hidbx6GXaHGI4RmtFO8DmIrDQb
         QLVPE8GUZw7dvTmf54u00QOiWJmpHbOt+8Kw6dglrYerjXx7WlFcUwyYXXDj4KAQ7VxT
         oaOxNa3OXX0Smq2KfG9h4wuN6LtoM9yyprawCHE8xutZrN81i88W1tMmUbcYGoIIOPvb
         jMY+S7Pvvz6NZHTgBpPCYtECEVBdddaP8Uv9XvhBCbJHbEbY4/mT/JHC5NgMsfYl6I22
         9mSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=npxGhfRm0zzw0hD7qIpQlQ3ak8SLvahMP1ic1NU/OCg=;
        b=SC2lLUe29SC2E3RNN90EiYz5dyfQf+2ObYETJzywr3UPt11IeDImummsq7K8sACwFm
         iS2g9GbBwWZlkQpzHrkQ2LJKhuO0J2EmV4P4xVPV1z2XmugvyLixUfPbSf/YmsTjl+aX
         /Zl1/Lxv+qEA9Kd84wkCi9jMdeegTjqwb6eabJ0hVPqP0mkQp8fhLMqvEOLyOLl7KTMD
         INOGAKfgbsQCetg4ue9uEbRYN3AFtuPrB9TLnHlP0ZI4slXL0ABeS3Ce6WZ/Uwtprf//
         ZXL3i/nCstBTLtwwcfMjbXd/sfxxc3f+K2Jbfs4U+a2QwhY7ZliZvJugNswbcONMts+D
         Qtxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jBIWXZpl;
       spf=pass (google.com: domain of 331tvxgwkaoqygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=331tVXgwKAOQYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=npxGhfRm0zzw0hD7qIpQlQ3ak8SLvahMP1ic1NU/OCg=;
        b=PvVobTfk2jPoJG3N9B5kuYhLG5wuM9JFrHqCmvEUnwLeSvHe/ALM6KNq5w/4YwpbVL
         DW3hz7TMqDOrkZgp3kz6Yk9LG+M71ymkD8VOrLGX3ghBoL67sgZ+kMpP9cKfxidYBZ+v
         Nieh1GYrWf26uFSQgZGl36d7tQGJR/UqnLY53TzGpVDWfYTXmNdoLg6H4wJCLPIWzVol
         c4PIpFmtRO3ykbmU5S9sF8Cv9QFn2a/2fnqr+6MSRnis0QSxdWMx0Uj7XB9x822lw8tM
         rUa+WAqezdbIrI1HVqkLgJNomcShMjWmL951G92lW16PoHNe6sXFoQzK9cELvcvdRozM
         DFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=npxGhfRm0zzw0hD7qIpQlQ3ak8SLvahMP1ic1NU/OCg=;
        b=DBWQxZegKQViU13KFEYAbVxJPVEci3mQDzWm71aZGljG12JYKGwdHoexX+p1BJRz9O
         auNA8c4LfL6I3WAfH90WTOCYmntbyhrldXraldBRNS/a4+i1n8GdvHETJEU7Ywj7IPx5
         TZzuRdMnpZ88jk+hg4xIOzwrVcTUdcjjYSMyAO4JLzlzpjJD6cguU9a8LOkAtFh8Nwtb
         P/1+81S8e9nY/3LuTuiT5MOz6dQKlpizPFJCSUr3AgcIM5aKY84HVsgRgcmGGBQVCVyx
         /ERD0BOJWYFY4ozVSsd2tbWHPzxrcI4ZqeMTbByFFT00E6UXKf/WVD3qVHvqb46g9PhU
         l3Iw==
X-Gm-Message-State: APjAAAX6g9nQ2LXq8ri1Hw1eSyZ0oPCzTJoMatmEi5lNPB3IkjdMtrsA
	wz55w1LCXEjHCSr41nlaGxE=
X-Google-Smtp-Source: APXvYqw6DuLL+6+C2vvN8QTU0EYHI4jCTHyX7xYUihbPPt5N2Lo2CmbOdKVl1QnoICxPqiAjotG/Eg==
X-Received: by 2002:a17:902:bb83:: with SMTP id m3mr56972578pls.258.1582652384494;
        Tue, 25 Feb 2020 09:39:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2a04:: with SMTP id q4ls4427872pgq.6.gmail; Tue, 25 Feb
 2020 09:39:44 -0800 (PST)
X-Received: by 2002:a63:3048:: with SMTP id w69mr30630076pgw.184.1582652383896;
        Tue, 25 Feb 2020 09:39:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652383; cv=none;
        d=google.com; s=arc-20160816;
        b=xgtkpP/TtNWIOkA1Tq/LYJGhxxptmm6VrsPq/K0S01zsswq7zkqJk/qQbW4DsI3drF
         r0oYfXDLquIZpjA5lyVdQGO6XSH+UM/CsyL0ZgWPITqWj4rbhBlmHMaMu72pEHCgIJ4x
         xjENNMEKlURUKwPon3AXht9XgDJjgakcP5yIv1XNDxomoPYpomH+somW/AJWiOJVHVBq
         nW7vUcnygBEd+wNesJrZ9fQSKo45j0eVCzWb4SYjCm2fDRv1WOLAaAK9eulyUnlcbnJy
         Zm2NI2PKVtoQXxorNEhTetpkjYy/qIlB9cAsyc0oa5iQ80pAPdi8cK3fy7c4WD9faTlz
         SncQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kuv4yLONMoYmLvMJSNsDa6eBWytQP6sdLL4Di/E6Zfg=;
        b=WDfasM94EVtc/bv+hlCGMX1tCEyeh2aPEiE1oZSlkMpal/g0bpKPgrjUTpkXQaO2bE
         Ck6T3pH2J7jD3QxOTWf39f1d5eEbUguIeCE+3Xg2gzWCMBOGqpXcGvaq37/IU+7Dezd8
         AES7zzhTgLvrTr99lcfocgIMelu0EbGBp8JW5w/3CPJcsk1DZJ/uZ+x2yCig/HMejNkX
         Bm/Q/4lhMl7pEiIhjf4dwbktsikMXm6ktGSYKnqteNqvvzAuveLlzQBNZNbAogqg0f2J
         VcT/JK0gN+BskTnVBvX5RiQYRmTlM12SEmeSofF37aPDJM5NnvN6i41353LZT6lCQpsl
         yU4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jBIWXZpl;
       spf=pass (google.com: domain of 331tvxgwkaoqygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=331tVXgwKAOQYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id n20si6574pgl.1.2020.02.25.09.39.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:39:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 331tvxgwkaoqygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id q5so9747185pfh.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:39:43 -0800 (PST)
X-Received: by 2002:a63:74b:: with SMTP id 72mr16324743pgh.320.1582652383492;
 Tue, 25 Feb 2020 09:39:43 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:22 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 01/12] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=jBIWXZpl;       spf=pass
 (google.com: domain of 331tvxgwkaoqygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=331tVXgwKAOQYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
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
index 0914049d2929..ea465905b399 100644
--- a/Makefile
+++ b/Makefile
@@ -845,6 +845,12 @@ ifdef CONFIG_LIVEPATCH
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
index 98de654b79b3..a67fa78c92e7 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -526,6 +526,40 @@ config STACKPROTECTOR_STRONG
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
index 9e5cbe5eab7b..cbd40460e903 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -184,6 +185,13 @@ struct task_struct init_task
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
index 60a1295f4384..2bc73d654593 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
 #include <linux/kasan.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -454,6 +455,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -837,6 +840,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -896,6 +901,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
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
index 1a9983da4408..7473cd685560 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -11,6 +11,7 @@
 #include <linux/nospec.h>
 
 #include <linux/kcov.h>
+#include <linux/scs.h>
 
 #include <asm/switch_to.h>
 #include <asm/tlb.h>
@@ -6036,6 +6037,7 @@ void init_idle(struct task_struct *idle, int cpu)
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
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-2-samitolvanen%40google.com.
