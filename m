Return-Path: <clang-built-linux+bncBC2ORX645YPRBAVA5TWQKGQERDVFVOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D33EB522
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:59 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id b26sf3246922qtr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540418; cv=pass;
        d=google.com; s=arc-20160816;
        b=DoN9ACdlguRKBhp+ouzSRDlJrNGTknc8tsX8XHIuvqkVGxRmQbDoSTliaWEJPCFZBl
         u9OzeMe6M7kFqLmijFZnrc3BVDainOUD12+nmxnfEIrA65nOGZoYIDyn7NXX/rNJokyJ
         30CG8suAf8J431EYpwj9VsiKVbeco0pnnmP9qaclSKcFEigTpmgsGvCoHwLIZuFG0KXZ
         7tjPGIyI40PUuwsqwH/d9T5B83g3YHys/RzgLRCzpGBt8OC4Lt1phqOITFSecus+zBt7
         AwsgifXguEOU/kERo2ygpgBp2OzsWoR3HrIFqB2H7sMSn5gbX7K0+A2Esk6FxmQlMIXn
         rApQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nSr65Qd19L44iIkKtM8NdQOElBrRuPLocp3l6GvptFs=;
        b=hmDkor2zLVI+NdKa1MzlWbUH5enRPfJXeuQNsuwBbwjr6WECF0L65xKiOhlCjGJmyO
         z+ACVQk/dPqZkOMzs+TxIqCjjPXJJ0YSxyGzNe0JqePQMNvYwHOpse1r0mLqJh07bBXc
         9kViCPOJf7F1LvSF/vmbfF5HmhpxAHPw6qLYKNCwhR6SmY6fFNNB1A0hi37UZIu+TaiH
         nxG2MKGi1+Wy/hoQ8BbKUFH6lgFi9jeIUMzCGANrFJBsTU0sdTG1WcbmzmoYmAg/NzRU
         770SfP+6ys2culTQcNPhVDA25VZM4a5Hn9odR9v/K7JnWyyY9PhFRLEePujO45KjKWBo
         hzWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cxw4194T;
       spf=pass (google.com: domain of 3abc7xqwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ABC7XQwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSr65Qd19L44iIkKtM8NdQOElBrRuPLocp3l6GvptFs=;
        b=mCQk92nquaK40hwERIf14NGhqvK5VYPej8498uFbPVrB6Pnl/x7reFXPW4hxRSuM4K
         gjICvm83koNQPuqPBzYM+FpN3G+FD47ZbUw93wItQwuns97pxmWOZC01CbccTmRcIqEE
         qMxZiZ9A8+ofw+fRVLw0cmqWRSVAQUNu5l+gp+DfqndVaaiNuX0Ld30wMrmnaoqgflPh
         Q7kIzY/714MqbJq0jPGVNFg11XEXq1gm/vitCB2FHgttpn2uYYgSTXt/n72h0t/nkhW3
         wIbWPJ3OGuJdZTRRmQXq6NlDbAIms7y5CBYwaBTTWkE2TLUh2wa8du3zzY5Evhb9t/H7
         UU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSr65Qd19L44iIkKtM8NdQOElBrRuPLocp3l6GvptFs=;
        b=n/QeVw1fmHm5uOpy2c5leyWnvm62a/2kwRfAB/XNOMliRCArBvckH+yOL9Wc1+yxyl
         OErRKPx/Zm/EQnsY/roQ1N72D5r9dUxOuaqFbuVqkoKjEg59+4JfSL/jinv/LfG6szJR
         LikYFhH5cvdwWNnL/YWWEoQSbPBNKrzckocIvhSVqFjBAuii1FQMJ7DMhr0O7WP9ws75
         7uYnflft2lJaLsbM/FVZUEghrPOJAwRUTDtB9JrEUxVW/fEotv1d7aXLqXaza/gUCvyp
         URPmXoW+Vdzux47W9UfeWjSRRsgxPu7CR86s3eV52PHoHOfT09hGxMfiDex/WJI/QIuJ
         QYGw==
X-Gm-Message-State: APjAAAWm6DE6mZNSkO04Z0U+sOsjPraeieBxYNAVFp0bLELtUWCHh3Dp
	QYwSyZosEIJNHL5cI0QvimU=
X-Google-Smtp-Source: APXvYqx2AfztAe2X9WV7Dy18hfKt0zvYzMgA+hLewQfrygHFRVM7cGbg04oeBvlPpjxfIDMJ3mXssw==
X-Received: by 2002:ac8:40c5:: with SMTP id f5mr185124qtm.344.1572540418101;
        Thu, 31 Oct 2019 09:46:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:37a4:: with SMTP id j33ls853701qtb.14.gmail; Thu, 31 Oct
 2019 09:46:57 -0700 (PDT)
X-Received: by 2002:aed:3924:: with SMTP id l33mr6565075qte.6.1572540417606;
        Thu, 31 Oct 2019 09:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540417; cv=none;
        d=google.com; s=arc-20160816;
        b=Ql3lsMBPU56pqMvNIYhfh6jX02WKKdolxxicsrdnqa1C7tjqY7lN8nOaDjF6pR/yBV
         7ZVqsV4FbDz4YTaIj2qWyyX6LqrADy3Uxi8IWA+u7eWsh84ipgT8enoPvYWGoXt/egv5
         EgYLe1+ETasEI8srq82A6kO58IDZ40ShxkStyfuxEJyk13yenesOy/ynu6N6uZXvmIV8
         DowFq3jnG13VmTpvk5+i4Km3aIDqIsvKZY6nx9HUs5SeNk9y4/84QiiEvV0PjfgEXzcP
         f2I+v1DNBhBzn9UzQq9SvYyT1rbLHR8OK6iLe3dzM+arCI+aUn+uGsnQx3NPtuzaSVeV
         qSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QhD+o6YtodNWQks2/cBiCtYNgYirv7RnSf25vOq25FU=;
        b=Q9boR1UKyC9wDUlMip6Bg+YfOl/KVV/PX3rAjFsZxmeTkCjit8M0IApGJnrrb44KUX
         RqGv6GhJBkLS3XzLDtnDpZEkLzsPA04QtDwGYK9msIDxUO7IlrZDpgpV+8grbo9tc6E5
         P8l9WvUW92XrUQicb6IDRF3U+Dv/2NQsYfnXDyjuavjd16cV2GaGLpzfms0gXWHuJcYj
         W9Mb783MSeUVK4xKZ/xiZTOc9a0kb1CUZoirVrsxkw8/U2v6i3k02fIOPF6VIeL7jerp
         fqlHbSwYrp9Jt5EhOik1NWpKCqV3VxgIAhJxxYX8h/gruW+qifKZxmTju+7Px/vzUXi+
         5HeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cxw4194T;
       spf=pass (google.com: domain of 3abc7xqwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ABC7XQwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id x135si209133qka.3.2019.10.31.09.46.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3abc7xqwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b71so4814031pga.0
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:57 -0700 (PDT)
X-Received: by 2002:a63:d703:: with SMTP id d3mr7706600pgg.102.1572540416660;
 Thu, 31 Oct 2019 09:46:56 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:25 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 05/17] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=Cxw4194T;       spf=pass
 (google.com: domain of 3abc7xqwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ABC7XQwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  33 +++++++
 include/linux/compiler-clang.h |   6 ++
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  54 +++++++++++
 init/init_task.c               |   8 ++
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
 11 files changed, 293 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 79be70bf2899..e6337314f8fb 100644
--- a/Makefile
+++ b/Makefile
@@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
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
index 5f8a5d84dbbe..5e34cbcd8d6a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
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
+	bool
+	depends on SHADOW_CALL_STACK
+	help
+	  Use virtually mapped shadow call stacks. Selecting this option
+	  provides better stack exhaustion protection, but increases per-thread
+	  memory consumption as a full page is allocated for each shadow stack.
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a
+	  shadow stack to protect function return addresses from being
+	  overwritten by an attacker. More information can be found from
+	  Clang's documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+	  Note that security guarantees in the kernel differ from the ones
+	  documented for user space. The kernel must store addresses of shadow
+	  stacks used by other tasks and interrupt handlers in memory, which
+	  means an attacker capable reading and writing arbitrary memory may
+	  be able to locate them and hijack control flow by modifying shadow
+	  stacks that are not currently in use.
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
index 000000000000..0b70aff3846a
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,54 @@
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
+#define SCS_SIZE	1024
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
+
+/* A random number to mark the end of the shadow stack. */
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
index bcdf53125210..3fa7ba64c62d 100644
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
@@ -893,6 +898,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
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
index 000000000000..7c1a40020754
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/cpuhotplug.h>
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
+	 * We allow architectures to use the shadow_call_stack field in
+	 * struct thread_info to store the current shadow stack pointer
+	 * during context switches.
+	 *
+	 * This allows the implementation to also clear the field when
+	 * the task is active to avoid keeping pointers to the current
+	 * task's shadow stack in memory. This can make it harder for an
+	 * attacker to locate the shadow stack, but also requires us to
+	 * compute the base address when needed.
+	 *
+	 * We assume the stack is aligned to SCS_SIZE.
+	 */
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
+	/*
+	 * We allocate a full page for the shadow stack, which should be
+	 * more than we need. Check the assumption nevertheless.
+	 */
+	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
+
+	return __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				    VMALLOC_START, VMALLOC_END,
+				    GFP_SCS, PAGE_KERNEL, 0,
+				    node, __builtin_return_address(0));
+}
+
+static void scs_free(void *s)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++)
+		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
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
+	return kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
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
+	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;
+}
+
+static inline void scs_set_magic(struct task_struct *tsk)
+{
+	*scs_magic(tsk) = SCS_END_MAGIC;
+}
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
+	task_set_scs(tsk, NULL);
+	scs_free(s);
+}
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-6-samitolvanen%40google.com.
