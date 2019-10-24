Return-Path: <clang-built-linux+bncBC2ORX645YPRBDGWZDWQKGQE3TDI5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A02FCE3F93
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:57 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id e15sf196914pgh.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957516; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOY5h4SfK2Z43mT1ncJgY8qQB0k3G9EAq+A7fURE8Ks9GUhWj4hp7jQgWi/5hf7pLS
         SQQrjpBeIrr1qlIsDX1wnNqU15FISWAke4Bf4HUPKwpZD2Tr3uOCRjfs/K3RYBiJ914A
         WKAcjYJry0n3yUojQJa8YKjrdJbwdrR8X7f+jJF/9t7J+HZ+DKAuTfoglOfm/kFLbt5C
         aWcGR9N7SpDpFn5txxyFFDSBCA19EwX4NatTOD4gERjHwijRp2qvVtxC9cKavCt6Lc+2
         dbKg4wbA7HVMKnLAz9oWhqyqDra/3n5VBw94tsTc31FLbsaNpZQ9aAFV2lXVVaP6TxcI
         1JkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qiCvDbD1IPcMyIPpvVUdV/pabV5tIHgFT+CxTuG8JBo=;
        b=pkKNl5/fkkcNDI/CTcG5TXFfNbYfx8NEIDYVEK1GCSZRiQ7iDrmgoPbMLDWIkIrhjh
         XVwqXIHb68ue2Wy5bkRJMBKhw+7Xgc5fABzFpveQb7ZLCip1+LmNBVBmghbSQ3rEoWg4
         7W3jmXVpFd9urWEsBFl6xdWBb30N6fws+hYzBZuu9fM1wGw2eydiT5kvXFIdakmXtTIE
         e+Z3Sg6BV2yBDpWQgrgP4NBg0l0G60nd+O0923ODUxzLFQLIgUe/TbW4r+elqR64YQI+
         m4im7vakWVkfmwBNjH1uUejyC7QULe7ofKCLk3IhoSW4kNQALEVezYLmCrpj8QtDrxTx
         GtrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P8G3cS30;
       spf=pass (google.com: domain of 3ciuyxqwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3CiuyXQwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qiCvDbD1IPcMyIPpvVUdV/pabV5tIHgFT+CxTuG8JBo=;
        b=Ol/107LHHbYHIlOjK3V2nBAxVi1NpnFvoAoN5+9Xyk9zphru+5GxYg+oHGfoR/eIBE
         JqdiM0mBVGwSF0d1qVnjonLHS+Gjn0zWs9Ki7MCWRpbPZw89jibzYKD3VFvUhzGQfCzq
         Z+M6l18DZwi0SBPyYvovCm4OFOYIhN68JQHK9sb+f2C4joSJZNOvV87Wd2tay1TIFpU/
         rC9gEWTNFemokowLE2WjCeQSRvLf0kDz+5eG7maXsZPAvRYaqjCuSFbsoBnHLIVPDq3c
         7NWGc79Y/G6rh+ZgDQ48pkOvjif+vMy1BnztaMB1I+4ESSnYhhGZYg7cnCG0huiqRwto
         QxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qiCvDbD1IPcMyIPpvVUdV/pabV5tIHgFT+CxTuG8JBo=;
        b=L/G4vfqTlE4T5eNLfqvITQTj/sPWyNE8b0NmCc3nFMA/KIytbUDiQ+jA1Itq/pwBmR
         sEBWuAvFwzBOsR2bEyLttCYg+1OU/zZFnQx+0Xdu8GdfL0pqvUDLAW+bttET72VUEQO+
         6vFPCLqmrcmFoIraWykZePIn4t42wr7ueDIWJ0ay1RXz1emvgEmp0yV4P1DzEqkiaKPd
         xnc3Q2TGk4t1jceaNLpVLfGHCvz/dMviu12pJqheG7G6MiKiRCeFZPRkvoTrvdOUk2Pe
         KRl7QYjDiyuH3PFVpCBnVHvjYDVTfUicDVZ++iZqTvqqB/ls4gqBTQH/qwSa/jk70XKc
         ebHg==
X-Gm-Message-State: APjAAAV6+U31xzo2LrdyQ2GOxbZnkMUQOL4ucL8MwipVuXP5V4NKEuF2
	diqD+ifzIyidxCc+gbMnDwg=
X-Google-Smtp-Source: APXvYqwJjuFiCvn+YS3U4jDg1SSJOAqVf+OLuQ3Pf8yZUQx1TARysoGii1daqu8GoPhjWW4UgAr/Tg==
X-Received: by 2002:a63:1a46:: with SMTP id a6mr486468pgm.3.1571957516155;
        Thu, 24 Oct 2019 15:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls2267459pfb.2.gmail; Thu, 24 Oct
 2019 15:51:55 -0700 (PDT)
X-Received: by 2002:a63:3156:: with SMTP id x83mr475065pgx.347.1571957515666;
        Thu, 24 Oct 2019 15:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957515; cv=none;
        d=google.com; s=arc-20160816;
        b=K4o6tfd7Ot4NhrwLPR4ygwP7Nyh4G6ES8JT/+biFefhb3YcvQVSQvQ4bTt0spfnAd7
         i6kJNvZxd4zy7SJpClbtfB7qeEdLeOU2Q4R2/Np6ItVXpwvzzBX8nkswEy6kwcHcYdIm
         BKC2rzecXsKusAyrYXH+hzmzbLTuheELhn2jA3gSNa8tfvVPgnKUFs8jbP5VuCI4fOss
         IufKDxlbfgSmoPvbQQAhlFbUtCjFCwi5XdeYqTEyjR59RMvOUeBJbJ3xIWWPye8wgBYV
         3NpOOxz5ggpziZOHzfmDFaDw/LpFkPXJxNmxgNeR0oJMmGkl2LRZV6f4PWJ2TfedneZ2
         OqWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=KIWKK5tzLIPoTh2S7f/9vxWq3XCSgl7vPelXfuAvI5M=;
        b=HrmbQSKZeLLQakJUSr2p+PGP59FiSlIZV2qxzIxfcwJt4hsGXB47iFrQ0nRrv/UhbW
         RbwNR2Tytcum4SUAIK/7hGkmegjeo0HDQpD/dcXio+8ABYEwFLAkXM5RF8uq8naOyAYr
         njavKiqyHje2xRNSuJ48B3cBJoDJZLgbM+bLGvLGCAX1a/35e141cxznPbgmewO0VWU7
         Kxm27Gl1TjZlsgA4PXrgp574ZRuNwNfwtykllMKOv/m+8T9XxwfTKIHQFViT3YGPZ3rK
         OM/8lyJ0i/gZLKYaB/HkQfqsXbHPLJ4QZwA5atsDfVyOP0XRKrB3/nLp40ItyMpDsm+Q
         IZUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P8G3cS30;
       spf=pass (google.com: domain of 3ciuyxqwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3CiuyXQwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x94a.google.com (mail-ua1-x94a.google.com. [2607:f8b0:4864:20::94a])
        by gmr-mx.google.com with ESMTPS id t71si10168pjb.2.2019.10.24.15.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ciuyxqwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) client-ip=2607:f8b0:4864:20::94a;
Received: by mail-ua1-x94a.google.com with SMTP id t16so104968uae.21
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:55 -0700 (PDT)
X-Received: by 2002:a1f:9d14:: with SMTP id g20mr512654vke.43.1571957514425;
 Thu, 24 Oct 2019 15:51:54 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:20 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=P8G3cS30;       spf=pass
 (google.com: domain of 3ciuyxqwkab0l3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3CiuyXQwKAB0L3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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
 include/linux/scs.h            |  78 +++++++++++++++++
 init/init_task.c               |   8 ++
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 155 +++++++++++++++++++++++++++++++++
 11 files changed, 303 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 5475cdb6d57d..2b5c59fb18f2 100644
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
index 333a6695a918..afe5e24088b2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,9 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+#if __has_feature(shadow_call_stack)
+# define __noscs	__attribute__((no_sanitize("shadow-call-stack")))
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
index 000000000000..c8b0ccfdd803
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,78 @@
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
+#define SCS_SIZE	1024
+#define SCS_END_MAGIC	0xaf0194819b1635f6UL
+
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
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
index 000000000000..383d29e8c199
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,155 @@
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-6-samitolvanen%40google.com.
