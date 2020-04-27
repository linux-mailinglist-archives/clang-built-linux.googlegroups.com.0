Return-Path: <clang-built-linux+bncBC2ORX645YPRBG4DTT2QKGQE3GF2AGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 637C31BA976
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:28 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id m26sf10017693uao.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003227; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyropQA+dq3j4mqIdVAT8Lq8qtb23frk8S7waC5pE8DR0nyQFCD94peaR/AFdNbDs0
         6TFCFOmHbjKksvxNXEPZVvhgYB1oNuFoGlQKPw2jtiBFQcixUOgyDAhwB8dAkycS6n5o
         yRd/zd2SxqrK/QNW/x1BC6hRgHKSCuramt0IObtNPM3Caj/C6ODP9OrlBBSG7sp17GRq
         3q/Wca/p4yyBXlPuNTeWPoarPA+y/ZdEE2et80aupJGB4Ix7ap3YwjMLl6+WEUADuyP6
         eJEbA6nERUQ7iwMH+3NrCLfLtjBfKXFmxldwE+Cp60/QIncV6nCLP0NNSsORzvkpqsxE
         so9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tJvUsw6NDAff1d6DsTL9JltSC0S1Wq2Or5hMiFBT8Bg=;
        b=gpby3OmkFJkbpjqEeeXvaBvVSmAW7LgB9mowDm4STvVep+wBgvNJoj6kal9Fo29iTD
         JFCJlXcYjQrCHAbn5qyq/KxR6ZPY6nosJ7F+7Yzn2vafKXvVo+TS01GqAJGrneZUFq87
         Tcc7VMbmnI2GNudX8aund9+HmmwNvSC2b7yBYwj2Q2rW/rtAtYCuqCkn9gjao3YUPD5n
         4NtITy7ipYQSSqKk554IjUTfT8RzoPZipc9mhKA+2gOe7v0yCuIbtTHMZeahS++24RBJ
         aspgYtfTQjy33aPqSk96ut/wxq7yz3kivAvYAK6KrUcsZVZRwpo8PUMd2ab9p+L1qlNC
         H3qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s7wahkpC;
       spf=pass (google.com: domain of 3mqgnxgwkadqiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mQGnXgwKADQiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJvUsw6NDAff1d6DsTL9JltSC0S1Wq2Or5hMiFBT8Bg=;
        b=B03ydNwTITomdtdPxZ222Nc0FlRQ+wJes8dragCMRTt5LhLiox22NoAb+CIr4SzWIq
         jIkQWkwpCYm8OSUxjO0teajvOu6yDzx+0qQXJfFeyDFRlX5jukRRSZtgbebvgiA3/Rhj
         eko4u+f78NfegcDWt7JcxIwbxtXruyPIP38mbPEcylUbTCPGejYTZ1k0SsZGX/PLR1g1
         OZF6buBeBgJIgHNJCFR4raVFgyUYH0zpI43LlVIWpUO5JJe5qjdtkX/KX1p9PR0b70JZ
         u3OOhpWk/cDGYWMqoKIsCK+SNKOL8pr7/IA/Vx32OHlnxYMxl1CSLKh6spSlrDrmBk8P
         JKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJvUsw6NDAff1d6DsTL9JltSC0S1Wq2Or5hMiFBT8Bg=;
        b=D9pBzkon5DtvDeJXU7VKExiENp0qsBW2JIErImZcPagdjPPL+7wa/JryfZOTNaNiGH
         iHGdoPjix2Eu8bqBBi7x4x+eRWRCU9pvq02OSYiqTMZ/aYd3Zk/P+4JCCX8/vwtgy3fS
         1Q16MZSmQD+aluJErm7myf6e6TfFvSL4ZfUPCqLalCnmXIPzP9JWhotBG/bsjNlhvLn0
         8OQ6RcGTZPASPWrmVYbPm5DFwD5kaa0dYfMWqIp4rokCN53WSAVSWBpevDoTiHwe2kn9
         3PNMRFUsMS2OUqqasbbFCLyqllOLmaN95a0XV2V71i6S3MhCSjJ3x2hYaN0arL0P/HOE
         Si8Q==
X-Gm-Message-State: AGi0PuYG+WX9Y34TqSu4qSTCBq5tOAdMIx7jGxpzbXbn1jMwloqHTM2I
	+29fdVO8JC5jg0FPUsrtLKM=
X-Google-Smtp-Source: APiQypKJA7wIu7cWWjnE+MIYd09C3OXiAvTOA/UvnQNw2UdDYkWOjvn7YHDWOA02ykBmYPXZwgXR+w==
X-Received: by 2002:a67:3154:: with SMTP id x81mr17385845vsx.32.1588003227145;
        Mon, 27 Apr 2020 09:00:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls2286663vsf.1.gmail; Mon, 27 Apr
 2020 09:00:26 -0700 (PDT)
X-Received: by 2002:a67:28c5:: with SMTP id o188mr18786010vso.227.1588003226709;
        Mon, 27 Apr 2020 09:00:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003226; cv=none;
        d=google.com; s=arc-20160816;
        b=bZ9tfV37XK6qqNtuDg1hW9tl0sFtdn2hb5CunkGsGMsqNqyMatGo58IytfT3+p9ObI
         tky+AHSA81UKGHKHYLQ+JvV8lnEP2BFugwvjrIqsSk1lHCYv2BNs3m6H5xgcVghF8hwK
         nCdI+VEMI7+MqOySRhrgRRD2vNPUFeGrRbQTuV6xm/Afzrc2amip1JbJlaOF5AHPc0Lu
         mIVPrZm5ubdJjOfntNKXzy/TQ2wDp/3lCjxBBMTy4PQUSEwJbfM6Gu2XnNo52ErfbdW6
         um+XZyPPKX1dot4Q7Qs49HixfImJ3s/L7ra/Qf0T3NnYwXFN/2Ppe+hgyMvQOoK+iVh5
         hzwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QBR6Lbc359enZ9GCab/6TfVF8noXTmNT1IXJtHim5eo=;
        b=Ax7p4UEb+qa3RPe8HMS/U37MKOIxmOQteXo1UzliAICWF9BLOjWJLoj9Q5LLlz//0y
         8i2vAjvF6bn98owNOfEzyLTeZWjMweabKzcKtlh8P2iC2+oXg6tZ2eeBlRLz/51kzwD2
         Vuc1Lke8KQiFbvqfrgVn68YP6mDi1nt/YVtQydM7MKgwT+jUnFAHOJEIwG5LiB2jainS
         UCI+/MI38j7+UfPbeYJpFVykuKYCKawOmcJtEBDeAM2lZ+tQKVM5TezF7CUQyqSwmI5C
         LWmB7HkmhdPAw/UuBH5SsgNY6Z2x8B4kAP/aorspiW3FfYYSi/0SyE3Z5ZCScio2Q+ju
         ksLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s7wahkpC;
       spf=pass (google.com: domain of 3mqgnxgwkadqiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mQGnXgwKADQiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id i26si48308vsk.0.2020.04.27.09.00.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mqgnxgwkadqiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j4so7122347ybj.20
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:26 -0700 (PDT)
X-Received: by 2002:a25:a3a1:: with SMTP id e30mr35450525ybi.10.1588003225936;
 Mon, 27 Apr 2020 09:00:25 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:07 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 01/12] add support for Clang's Shadow Call Stack (SCS)
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s7wahkpC;       spf=pass
 (google.com: domain of 3mqgnxgwkadqiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3mQGnXgwKADQiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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

Note that security guarantees in the kernel differ from the ones
documented for user space. The kernel must store addresses of
shadow stacks in memory, which means an attacker capable reading
and writing arbitrary memory may be able to locate them and hijack
control flow by modifying the stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---
 Makefile                       |  6 +++
 arch/Kconfig                   | 24 ++++++++++++
 include/linux/compiler-clang.h |  6 +++
 include/linux/compiler_types.h |  4 ++
 include/linux/scs.h            | 72 ++++++++++++++++++++++++++++++++++
 init/init_task.c               |  8 ++++
 kernel/Makefile                |  1 +
 kernel/fork.c                  |  9 +++++
 kernel/sched/core.c            |  2 +
 kernel/scs.c                   | 68 ++++++++++++++++++++++++++++++++
 10 files changed, 200 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 679f302a8b8b..33dc0d0cdd08 100644
--- a/Makefile
+++ b/Makefile
@@ -866,6 +866,12 @@ ifdef CONFIG_LIVEPATCH
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
index 786a85d4ad40..334a3d9b19df 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -533,6 +533,30 @@ config STACKPROTECTOR_STRONG
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
+	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a
+	  shadow stack to protect function return addresses from being
+	  overwritten by an attacker. More information can be found in
+	  Clang's documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+	  Note that security guarantees in the kernel differ from the
+	  ones documented for user space. The kernel must store addresses
+	  of shadow stacks in memory, which means an attacker capable of
+	  reading and writing arbitrary memory may be able to locate them
+	  and hijack control flow by modifying the stacks.
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
index e970f97a7fcb..97b62f47a80d 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -193,6 +193,10 @@ struct ftrace_likely_data {
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
index 000000000000..060eeb3d1390
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,72 @@
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
+#include <linux/poison.h>
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
+#define SCS_SIZE		1024UL
+#define GFP_SCS			(GFP_KERNEL | __GFP_ZERO)
+
+/* An illegal pointer value to mark the end of the shadow stack. */
+#define SCS_END_MAGIC		(0x5f6UL + POISON_POINTER_DELTA)
+
+#define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
+#define task_scs_offset(tsk)	(task_thread_info(tsk)->scs_offset)
+
+extern void scs_init(void);
+
+static inline void scs_task_reset(struct task_struct *tsk)
+{
+	/*
+	 * Reset the shadow stack to the base address in case the task
+	 * is reused.
+	 */
+	task_scs_offset(tsk) = 0;
+}
+
+extern int scs_prepare(struct task_struct *tsk, int node);
+
+static inline unsigned long *__scs_magic(void *s)
+{
+	return (unsigned long *)(s + SCS_SIZE) - 1;
+}
+
+static inline bool scs_corrupted(struct task_struct *tsk)
+{
+	unsigned long *magic = __scs_magic(task_scs(tsk));
+
+	return (task_scs_offset(tsk) >= SCS_SIZE - 1 ||
+		READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC);
+}
+
+extern void scs_release(struct task_struct *tsk);
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+#define task_scs(tsk)	NULL
+
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
index bd403ed3e418..169e34066d35 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -50,6 +51,13 @@ static struct sighand_struct init_sighand = {
 	.signalfd_wqh	= __WAIT_QUEUE_HEAD_INITIALIZER(init_sighand.signalfd_wqh),
 };
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)]
+		__init_task_data = {
+	[(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
+};
+#endif
+
 /*
  * Set up the first task table, touch at your own risk!. Base=0,
  * limit=0x1fffff (=2MB)
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
index 8c700f881d92..f6339f9d232d 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
 #include <linux/kasan.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -456,6 +457,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -840,6 +843,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -899,6 +904,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
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
index 9a2fbf98fd6f..934e03cfaec7 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -11,6 +11,7 @@
 #include <linux/nospec.h>
 
 #include <linux/kcov.h>
+#include <linux/scs.h>
 
 #include <asm/switch_to.h>
 #include <asm/tlb.h>
@@ -6040,6 +6041,7 @@ void init_idle(struct task_struct *idle, int cpu)
 	idle->se.exec_start = sched_clock();
 	idle->flags |= PF_IDLE;
 
+	scs_task_reset(idle);
 	kasan_unpoison_task_stack(idle);
 
 #ifdef CONFIG_SMP
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..43624be9ad90
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/kasan.h>
+#include <linux/scs.h>
+#include <linux/slab.h>
+#include <asm/scs.h>
+
+static struct kmem_cache *scs_cache;
+
+static void *scs_alloc(int node)
+{
+	void *s;
+
+	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
+	if (s) {
+		*__scs_magic(s) = SCS_END_MAGIC;
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
+static void scs_free(void *s)
+{
+	kasan_unpoison_object_data(scs_cache, s);
+	kmem_cache_free(scs_cache, s);
+}
+
+void __init scs_init(void)
+{
+	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, 0, 0, NULL);
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
+	task_scs(tsk) = s;
+	task_scs_offset(tsk) = 0;
+
+	return 0;
+}
+
+void scs_release(struct task_struct *tsk)
+{
+	void *s;
+
+	s = task_scs(tsk);
+	if (!s)
+		return;
+
+	WARN_ON(scs_corrupted(tsk));
+
+	scs_free(s);
+}
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-2-samitolvanen%40google.com.
