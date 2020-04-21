Return-Path: <clang-built-linux+bncBC2ORX645YPRBJFO7H2AKGQE2YXKIRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 519061B1B92
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:02 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id k1sf10358675iov.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435301; cv=pass;
        d=google.com; s=arc-20160816;
        b=eC2yACTnwuQTEazAvUb6wV258Ik1XrsEit5fDUJJ/DKsHbLtwKGxR3fiB2jM+sJjcH
         TfHV5/Elu+UsIpyBLmFrvKgpP1XLaq1UX/4rh/beF5U79DQP4WpxOsrtPHk7Q7HSSPqi
         nNwu/Pn58UZqZKGSf+Oqz/87Du2WKgkW73GfQ+Ii0ce0JXZlueHqH+OmjJitKouTEaEI
         S6NUPUQJeE0JHUM8XDc/s8nCHGavD2Ge00OFpClgyWcuzzgDlByGiVcGGiP9FuwD4Ps6
         aRLfcmjw8F8r205U/RBwdIioX+vGTQce9xI60kvNwVRTTFnsEX1Hvzix7kitmvXrNxTb
         QJhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Y7zk34X4WppOTbyWAYWSPgF5CO5E0uHCAY/Y4ZTmzQU=;
        b=bvkXRr0ChqbekgQhMJzUxtjjoK2GlVWe1Bfb6g2V/FhoSVGM5turF298WGDaiZx8sM
         ZwJNkFkJPTJ5LLOEJr+7A109o+yMGJecDA28zQbbBw3uROYZ6cq1mQpeqUQTeuOGlQFK
         wkF5qnGazUkRYwpAQDdnA62NfWIJubI8BOFBBu4gmZfv2xTN7BgoNAQC8oKiahQ6vNF4
         iR2ijKejE7JEo3F3tDZvXAPQJFmEBBzlGnL/+gXrFdkJDz3CHV1OYVZomc/DngwMZ+JC
         mf9p4c62W4VsJZn0dfq1RmageFh0ymMIxdBbo4EtPODNzWW3ES0XGnLZCTgGkGg6spPI
         nepg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f4mnh0pW;
       spf=pass (google.com: domain of 3i1eexgwkaey0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3I1eeXgwKAEY0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7zk34X4WppOTbyWAYWSPgF5CO5E0uHCAY/Y4ZTmzQU=;
        b=ZTGqjCCnPVmo+7uef23c/i+ASG8oJMMSew/lBFpuEFBLFl3N4myaauf1suIOyZK0LI
         2bbdf1YfQFjS77bVqUD1Xvbfc9ghtKBp3PDPmjelto+8PmlfiyTp8u+S215oz0IRunIG
         yAmyJOXeXuan3ZHFB26JUszw8KKw4fSxk1tSvsqPRgs55rInXYNR7If0L7bOolRwZjiP
         KGGiP7KnyvnA6SCy2VLJcA3buR3vM5PiDdUqMHbZATPyXWkh5PNRPGNtxFvkHfGEX5WA
         yK8nYdV5t1bnTDC0Em5Np7N/o0kdFsW/bV3tsCmkgCmlCa/tPqi1qISZw24L9eOV6IYI
         +uLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7zk34X4WppOTbyWAYWSPgF5CO5E0uHCAY/Y4ZTmzQU=;
        b=SrMo2SdYjf0B4EcryzvVHU51FIlpvP8TcaTaeUN3lYDToUbV6vfB3Q4/N/UblJ6fOm
         muqe6GbplSxA6zh7/abs7nj554DZGV7F+doNYbTTuNsaaBRLJTkoN6njHM3s2J9YlEw7
         DnJIaOUxeRkfa5Tz6zDsCkTxc1abR4kcZuUpTxcC6OvuJ7pxoQI9flcO0ZqUvSQ3QPlR
         mqRfqqPVU09Xq0/4TvV9bMgD69BcZGTBFusXemKXg+ELCJYm0qwAgMAC+TrEUm7t+d6E
         9STVsioazvXg/BrdWKAuaXkloeOsIZrD6j/DsFxaJ8qzD/nUeNaIKLOcIqvu+Oitv4o0
         9OYg==
X-Gm-Message-State: AGi0PuaRMG3uRa+Kukaxh67dMHy1V1QbkDlXQ5LBKdjjRqwaUVIaFRx1
	q/4/f25NNtffj9m7UPjbqqw=
X-Google-Smtp-Source: APiQypLxB0Kmf9YDmMfuWn2eXHtA9Ecd4beDKBxrHNb86EgcNg/gVxyI14Xh7Hk3D40ZJozbtAI9/Q==
X-Received: by 2002:a92:c14f:: with SMTP id b15mr19690147ilh.134.1587435300850;
        Mon, 20 Apr 2020 19:15:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c381:: with SMTP id t123ls4185328iof.2.gmail; Mon, 20
 Apr 2020 19:15:00 -0700 (PDT)
X-Received: by 2002:a6b:bf83:: with SMTP id p125mr12170226iof.118.1587435300453;
        Mon, 20 Apr 2020 19:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435300; cv=none;
        d=google.com; s=arc-20160816;
        b=TiK1z7NtCgu5lBGeE/WMGi1GGb/3OVcFLa3f4AlTON1WdIAot/Ar3QORyetomsGahb
         oEnvYe1dwKWMCKr/lvZiwMbVOGiRMTxqdObSxXsS4bDZ4GSNOp974qSWbTbDJ5lSENlN
         B/HeVvkkse3gKXWAS/KH4jr5/RQD5tGUrstwtKPHjgJi0IuVURs/RgKhBMMpc9P766Gp
         qqUU64wcr3JYBv1sEAShJon8Gf5ET+7gGyZ05ngam4Dd63FG+Z9bdNUqIc64T6De/J2m
         jGSzCB+Qz4nWJs2ocyu3aoFE5gXx4ZmwZhLUs/IKKeLO4ntz+fSeOM2Glcp1dqEeER6Q
         8qog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=O6cTFRpJP9X3Ho0tpm44ZbomQwaxFpLQPG8cGKQ1jrA=;
        b=wYleg335z0z+RDzY0wnz12P8K7W2CntLDHFCKiIybNmgWWXuzJXTGoPkcly+u0D0Lw
         FK4yMjiFYdN7nqIwPhsrM3JYcnawhO/mkc4KmibBQu2yUhfNona4n0W3xbKXV5W9GGH0
         zvdGFW7zoWnolVXZf+hXa3WX9CR2dHLxj46723HjHzJtKwpgCkAACxY5MB0SLhpQBZu8
         HrERTgUf2O9NR/rdCYXJe7864JnGFffHPI0S2q/rc3yiGUztxdzqxDa/3mOzl7FORE0i
         32nfNG3sINkpr8t8gyXkRZz9kAucGAOMddkCJFI9KCknH/OnOgyuKybMX2P2+Wv59JlC
         ivPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f4mnh0pW;
       spf=pass (google.com: domain of 3i1eexgwkaey0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3I1eeXgwKAEY0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id k13si163356ioq.3.2020.04.20.19.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i1eexgwkaey0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id r5so11863826pfh.12
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:00 -0700 (PDT)
X-Received: by 2002:a63:5b57:: with SMTP id l23mr5400781pgm.391.1587435299723;
 Mon, 20 Apr 2020 19:14:59 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:42 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=f4mnh0pW;       spf=pass
 (google.com: domain of 3i1eexgwkaey0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3I1eeXgwKAEY0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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
 Makefile                       |  6 +++
 arch/Kconfig                   | 25 +++++++++
 include/linux/compiler-clang.h |  6 +++
 include/linux/compiler_types.h |  4 ++
 include/linux/scs.h            | 92 ++++++++++++++++++++++++++++++++++
 init/init_task.c               |  8 +++
 kernel/Makefile                |  1 +
 kernel/fork.c                  |  9 ++++
 kernel/sched/core.c            |  2 +
 kernel/scs.c                   | 67 +++++++++++++++++++++++++
 10 files changed, 220 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 49b2709ff44e..6094db2c7252 100644
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
index 786a85d4ad40..8450d56e6af6 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -533,6 +533,31 @@ config STACKPROTECTOR_STRONG
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
+	  Note that security guarantees in the kernel differ from the ones
+	  documented for user space. The kernel must store addresses of shadow
+	  stacks used by other tasks and interrupt handlers in memory, which
+	  means an attacker capable of reading and writing arbitrary memory
+	  may be able to locate them and hijack control flow by modifying
+	  shadow stacks that are not currently in use.
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
index 000000000000..051d27ad3da4
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,92 @@
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
+#define SCS_SIZE	1024UL
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
+
+/* An illegal pointer value to mark the end of the shadow stack. */
+#define SCS_END_MAGIC	(0x5f6UL + POISON_POINTER_DELTA)
+
+#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_scs(tsk) = s;
+}
+
+extern void scs_init(void);
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	/*
+	 * To minimize the risk of exposure, architectures may clear a
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
+static inline void scs_task_reset(struct task_struct *tsk)
+{
+	/*
+	 * Reset the shadow stack to the base address in case the task
+	 * is reused.
+	 */
+	task_set_scs(tsk, __scs_base(tsk));
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
+	unsigned long *magic = __scs_magic(__scs_base(tsk));
+
+	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
+}
+
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
index 3a61a3b8eaa9..c99620c1ec20 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -11,6 +11,7 @@
 #include <linux/nospec.h>
 
 #include <linux/kcov.h>
+#include <linux/scs.h>
 
 #include <asm/switch_to.h>
 #include <asm/tlb.h>
@@ -6045,6 +6046,7 @@ void init_idle(struct task_struct *idle, int cpu)
 	idle->se.exec_start = sched_clock();
 	idle->flags |= PF_IDLE;
 
+	scs_task_reset(idle);
 	kasan_unpoison_task_stack(idle);
 
 #ifdef CONFIG_SMP
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..e1a8fc453b86
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,67 @@
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
+	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
+				0, NULL);
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
+	scs_free(s);
+}
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-2-samitolvanen%40google.com.
