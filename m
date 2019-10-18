Return-Path: <clang-built-linux+bncBC2ORX645YPRBGWIU7WQKGQE4YMBMBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id A17ECDCA6B
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:07 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id y10sf6382562qti.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415066; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3sZFd6PKLDxdMemZHAKf2m6s+Rks6VeJAg33sVfH1GsJmjfVz9InMxVv0aWL1nN+y
         n63UmimvY1+JWfJdDoEw6/QaAsJ/0hLxZzCXRDAho1YPQsRlbd4qDR2hW/oUr2fcvE/A
         KeJgsHOTVRIdPbJSXb+d6s0YwpCKnNNBBs06eWE0w2VIQ1e2o1sHtwqx0kr3tVIbQWq1
         AdDZRxdSQN0gn+VlAOYIwb3bUWoSLAoBA9nBfynN7ltRxgpMym4Kz8iQqHGMqhK6wDJP
         NdEsYKoXSsyHK57oXoZwtDv/fMR7MJQwTk4D+XuiohETL0SBYFsAQAj2sLlqJhzbsLFj
         yvWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pFy2AIYsTkIadeW8DbbFYi0br2nFnb3uHaMghYbL77g=;
        b=cdFGDch9u1pf6QmP7e8EenS3WOebzXGCFfcbOOu2rtI2PpktIb93cbPZZrBQgSTCVB
         xmCviaIwuihx5Oq3OFimxFpssjCnLbdJg9i1aWuIIzR22TWhMddLuHmbsEYsft4l+Zby
         KqDIG+Zu6Q0rnGwuG0lsujBtmezctvB2JIxM9pL3MnT/v/P4zFFBcvs/4h4FT/trsOvx
         EhhxVTVXClOVHuCUS54ghRb8P7vlv749DfM6HS8Fm9vX5YPX3cWvUCktMi0K3IrqOQmZ
         sv0K0v1uB/ZNbBwH+Q9Hy14ZQ6xYVdBFGGNbK3M044XFKDmn5imhJoJFPU/fpBd0a85y
         0Lpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/G2C0eH";
       spf=pass (google.com: domain of 3gespxqwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GeSpXQwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFy2AIYsTkIadeW8DbbFYi0br2nFnb3uHaMghYbL77g=;
        b=J8RHchAKlUrHRzSZws9MHfsd+8I7uHSNl36mBtLbyDF4CAru9Z1AHVY+AgklDPeC2P
         /KFeoPolysB+2kDtMvHSnAi1a+P+owDcQ4EQCopu0sCiiuoDH7gfAUmT+i4aCHhFv/2H
         2BSwrKGN/DYIHtW51ABU3VYSst2xqULJWm7SmA7uLtltpMOeO+0fq2wKcP7ZiQXvHuvC
         BQzH9xSSi9e+k0maVCzn7U3rUGOK3dtg71itNlRPkLU91EPv9FK6jrJjAu43Ca8kCAR3
         87WUPUtll5tml/DbIoIB1/zHYL3r7PPh0OoXx5N/3B67F+YMm8mQdn5wmFVWix4eDuL0
         hNGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFy2AIYsTkIadeW8DbbFYi0br2nFnb3uHaMghYbL77g=;
        b=O0oFssD5TIlrb0L1pXMY1J9DIwwA0paMRyF9bYhWejWKcQUPwwtaUaP3+fF2vb/H+u
         Czrre2cZ/2blv3U8k0Cp0Vt7B2+8ZrF2B+qilZay5XNVU4TYUR/FqVY823eyHzRItB5m
         xLevLhPlzQ/LDZ32JxZfhqouI/y/DMe/bGYQLArfSA1oJU4L9cT201TNcw4Ua4RGBeRY
         4hNfu2/ZjEvzOI2WembWlpZvosX+7pYd+O6wAnQbKd6ANQ2ORWr6Sjph8ENAPLurJECq
         LvjWbxPdX2L4r609Ccn7HT58f6yclMoaEeVUxrr3r7VaYMOTsK1LxkO46w5BLsB+AGpJ
         jpvg==
X-Gm-Message-State: APjAAAWzgM+mPPOjqM1OqNvdDnuHmhrcs6iTwtFQJa2ljawSmQe2W9de
	SVAcxGBbNHxgi3MRxBkaTic=
X-Google-Smtp-Source: APXvYqydPsS1jfFp+5eXs69Et/O/T7o6gZE/obyjVYEUL53CwP+L7yEdZOuuK6fARV0VBxiUt2NiRQ==
X-Received: by 2002:a37:bcc6:: with SMTP id m189mr9662128qkf.434.1571415066615;
        Fri, 18 Oct 2019 09:11:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f084:: with SMTP id g4ls1181633qvk.7.gmail; Fri, 18 Oct
 2019 09:11:06 -0700 (PDT)
X-Received: by 2002:a0c:b254:: with SMTP id k20mr9966943qve.151.1571415066267;
        Fri, 18 Oct 2019 09:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415066; cv=none;
        d=google.com; s=arc-20160816;
        b=07gIstMNFTKeGeD6R6olZKZHQpXk5mDAxtDVm0x5grGkqHfb20NS7fn65nRRCwq9Yu
         ypqOk9kMTsD45z9/JZEzLyIVnLdZd0Zt2IS+JTbiCV9d99O3nJ8cL3TKVQIC8EU1Uxy2
         4SVaipaEQhlEVdBSnKaOcK0ooEHa2Rma5ZZcuww6Wxo90tkZYZP2VRA+ckXFBaCi8EFG
         79gXYhbEnIBF4hIBncqLDdaj/AcIWOKuIuJcqzyHGYz2J88OFXKYDGt3un6Bjdokw5Yu
         GQznLyQ//PoDwmTzFbcTE80IA5OJCcqBBdTPN4K8Tv4mmQxhb9w9d7nQ/GLhfCrxv76v
         IV8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nb/Sj1uUqCudVY1GzIbe2UX9PioIzl4YsjEJIj4hCD8=;
        b=rO20raVd7IVpjhktakEr7TYH++vWoCKK7u2htc7iqC15c1F5MZVB6t50DTqetKQmw9
         YW0v0RyC0EFmAOzDYVd+zDhu8vFmLcCq3kTzdX5g38k0ux3wbVtacQ8+BJUNwunDiOET
         9cXb3PHO7Ipz8/lJ4M5CDbplYjIXJB1ovBgvlO/AHIZVvRd/V85V60llvfM/OQR0zlBC
         ObWS3exl+9L7JWH0hCVdB93wGXmW0po56S1qhI0JE+/NJPoQoc82XS2xKZmfVG1zGXbx
         ym1gpmsrHH9eAi3PvndCGnOAOK7cJAZjLdQPItdqdiYC/UgmTOTT8lIgzGaZ4fBycJcs
         CJtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/G2C0eH";
       spf=pass (google.com: domain of 3gespxqwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GeSpXQwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id c78si289493qkb.7.2019.10.18.09.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gespxqwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b26so4572388pgn.21
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:06 -0700 (PDT)
X-Received: by 2002:a63:ce07:: with SMTP id y7mr10981743pgf.234.1571415065039;
 Fri, 18 Oct 2019 09:11:05 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:21 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b="V/G2C0eH";       spf=pass
 (google.com: domain of 3gespxqwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GeSpXQwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

This change adds generic support for Clang's Shadow Call Stack, which
uses a shadow stack to protect return addresses from being overwritten
by an attacker. Details are available here:

  https://clang.llvm.org/docs/ShadowCallStack.html

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  39 ++++++++
 include/linux/compiler-clang.h |   2 +
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  88 ++++++++++++++++++
 init/init_task.c               |   6 ++
 init/main.c                    |   3 +
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
 12 files changed, 323 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index ffd7a912fc46..e401fa500f62 100644
--- a/Makefile
+++ b/Makefile
@@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
 KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
 endif
 
+ifdef CONFIG_SHADOW_CALL_STACK
+KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
+DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
+export DISABLE_SCS
+endif
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 5f8a5d84dbbe..a222adda8130 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -521,6 +521,45 @@ config STACKPROTECTOR_STRONG
 	  about 20% of all kernel functions, which increases the kernel code
 	  size by about 2%.
 
+config ARCH_SUPPORTS_SHADOW_CALL_STACK
+	bool
+	help
+	  An architecture should select this if it supports Clang's Shadow
+	  Call Stack, has asm/scs.h, and implements runtime support for shadow
+	  stack switching.
+
+config SHADOW_CALL_STACK_VMAP
+	def_bool n
+	depends on SHADOW_CALL_STACK
+	help
+	  Use virtually mapped shadow call stacks. Selecting this option
+	  provides better stack exhaustion protection, but increases per-thread
+	  memory consumption as a full page is allocated for each shadow stack.
+
+choice
+	prompt "Return-oriented programming (ROP) protection"
+	default ROP_PROTECTION_NONE
+	help
+	  This option controls kernel protections against return-oriented
+	  programming (ROP) attacks.
+
+config ROP_PROTECTION_NONE
+	bool "None"
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on CC_IS_CLANG && CLANG_VERSION >= 70000
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a shadow
+	  stack to protect function return addresses from being overwritten by
+	  an attacker. More information can be found from Clang's
+	  documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+endchoice
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918..9af08391f205 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,5 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+#define __noscs		__attribute__((no_sanitize("shadow-call-stack")))
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
index 000000000000..dfbd80faa528
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2018 Google LLC
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
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+# define SCS_SIZE		PAGE_SIZE
+#else
+# define SCS_SIZE		1024
+#endif
+
+#define SCS_GFP			(GFP_KERNEL | __GFP_ZERO)
+
+extern unsigned long init_shadow_call_stack[];
+
+static inline void *task_scs(struct task_struct *tsk)
+{
+	return task_thread_info(tsk)->shadow_call_stack;
+}
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_thread_info(tsk)->shadow_call_stack = s;
+}
+
+extern void scs_init(void);
+extern void scs_set_init_magic(struct task_struct *tsk);
+extern void scs_task_init(struct task_struct *tsk);
+extern void scs_task_reset(struct task_struct *tsk);
+extern int scs_prepare(struct task_struct *tsk, int node);
+extern bool scs_corrupted(struct task_struct *tsk);
+extern void scs_release(struct task_struct *tsk);
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+static inline void *task_scs(struct task_struct *tsk)
+{
+	return 0;
+}
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+}
+
+static inline void scs_init(void)
+{
+}
+
+static inline void scs_set_init_magic(struct task_struct *tsk)
+{
+}
+
+static inline void scs_task_init(struct task_struct *tsk)
+{
+}
+
+static inline void scs_task_reset(struct task_struct *tsk)
+{
+}
+
+static inline int scs_prepare(struct task_struct *tsk, int node)
+{
+	return 0;
+}
+
+static inline bool scs_corrupted(struct task_struct *tsk)
+{
+	return false;
+}
+
+static inline void scs_release(struct task_struct *tsk)
+{
+}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* _LINUX_SCS_H */
diff --git a/init/init_task.c b/init/init_task.c
index 9e5cbe5eab7b..5e55ff45bbbf 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -184,6 +185,11 @@ struct task_struct init_task
 };
 EXPORT_SYMBOL(init_task);
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)]
+	__init_task_data __aligned(SCS_SIZE);
+#endif
+
 /*
  * Initial thread structure. Alignment of this is handled by a special
  * linker map entry.
diff --git a/init/main.c b/init/main.c
index 91f6ebb30ef0..fb8bcdd729b9 100644
--- a/init/main.c
+++ b/init/main.c
@@ -93,6 +93,7 @@
 #include <linux/rodata_test.h>
 #include <linux/jump_label.h>
 #include <linux/mem_encrypt.h>
+#include <linux/scs.h>
 
 #include <asm/io.h>
 #include <asm/bugs.h>
@@ -578,6 +579,8 @@ asmlinkage __visible void __init start_kernel(void)
 	char *after_dashes;
 
 	set_task_stack_end_magic(&init_task);
+	scs_set_init_magic(&init_task);
+
 	smp_setup_processor_id();
 	debug_objects_early_init();
 
diff --git a/kernel/Makefile b/kernel/Makefile
index daad787fb795..313dbd44d576 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -102,6 +102,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
 obj-$(CONFIG_IRQ_WORK) += irq_work.o
 obj-$(CONFIG_CPU_PM) += cpu_pm.o
 obj-$(CONFIG_BPF) += bpf/
+obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
 
 obj-$(CONFIG_PERF_EVENTS) += events/
 
diff --git a/kernel/fork.c b/kernel/fork.c
index bcdf53125210..ae7ebe9f0586 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/livepatch.h>
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -451,6 +452,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -834,6 +837,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -907,6 +912,7 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
 	clear_user_return_notifier(tsk);
 	clear_tsk_need_resched(tsk);
 	set_task_stack_end_magic(tsk);
+	scs_task_init(tsk);
 
 #ifdef CONFIG_STACKPROTECTOR
 	tsk->stack_canary = get_random_canary();
@@ -2022,6 +2028,9 @@ static __latent_entropy struct task_struct *copy_process(
 				 args->tls);
 	if (retval)
 		goto bad_fork_cleanup_io;
+	retval = scs_prepare(p, node);
+	if (retval)
+		goto bad_fork_cleanup_thread;
 
 	stackleak_task_init(p);
 
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index dd05a378631a..e7faeb383008 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
 	raw_spin_lock_irqsave(&idle->pi_lock, flags);
 	raw_spin_lock(&rq->lock);
 
+	scs_task_reset(idle);
+
 	__sched_fork(0, idle);
 	idle->state = TASK_RUNNING;
 	idle->se.exec_start = sched_clock();
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 0db2c1b3361e..c153003a011c 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -58,6 +58,7 @@
 #include <linux/profile.h>
 #include <linux/psi.h>
 #include <linux/rcupdate_wait.h>
+#include <linux/scs.h>
 #include <linux/security.h>
 #include <linux/stop_machine.h>
 #include <linux/suspend.h>
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..47324e8d313b
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/cpuhotplug.h>
+#include <linux/mm.h>
+#include <linux/slab.h>
+#include <linux/scs.h>
+#include <linux/vmalloc.h>
+#include <asm/scs.h>
+
+#define SCS_END_MAGIC	0xaf0194819b1635f6UL
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
+}
+
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+
+/* Keep a cache of shadow stacks */
+#define SCS_CACHE_SIZE 2
+static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
+
+static void *scs_alloc(int node)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		void *s;
+
+		s = this_cpu_xchg(scs_cache[i], NULL);
+		if (s) {
+			memset(s, 0, SCS_SIZE);
+			return s;
+		}
+	}
+
+	return __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
+				    VMALLOC_START, VMALLOC_END,
+				    SCS_GFP, PAGE_KERNEL, 0,
+				    node, __builtin_return_address(0));
+}
+
+static void scs_free(void *s)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
+			continue;
+
+		return;
+	}
+
+	vfree_atomic(s);
+}
+
+static int scs_cleanup(unsigned int cpu)
+{
+	int i;
+	void **cache = per_cpu_ptr(scs_cache, cpu);
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		vfree(cache[i]);
+		cache[i] = NULL;
+	}
+
+	return 0;
+}
+
+void __init scs_init(void)
+{
+	cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
+		scs_cleanup);
+}
+
+#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
+
+static struct kmem_cache *scs_cache;
+
+static inline void *scs_alloc(int node)
+{
+	return kmem_cache_alloc_node(scs_cache, SCS_GFP, node);
+}
+
+static inline void scs_free(void *s)
+{
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
+static inline unsigned long *scs_magic(struct task_struct *tsk)
+{
+	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
+}
+
+static inline void scs_set_magic(struct task_struct *tsk)
+{
+	*scs_magic(tsk) = SCS_END_MAGIC;
+}
+
+void scs_task_init(struct task_struct *tsk)
+{
+	task_set_scs(tsk, NULL);
+}
+
+void scs_task_reset(struct task_struct *tsk)
+{
+	task_set_scs(tsk, __scs_base(tsk));
+}
+
+void scs_set_init_magic(struct task_struct *tsk)
+{
+	scs_save(tsk);
+	scs_set_magic(tsk);
+	scs_load(tsk);
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
+	scs_set_magic(tsk);
+
+	return 0;
+}
+
+bool scs_corrupted(struct task_struct *tsk)
+{
+	return *scs_magic(tsk) != SCS_END_MAGIC;
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
+	scs_task_init(tsk);
+	scs_free(s);
+}
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-7-samitolvanen%40google.com.
