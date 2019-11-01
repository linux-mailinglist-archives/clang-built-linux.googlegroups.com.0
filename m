Return-Path: <clang-built-linux+bncBC2ORX645YPRBOG36LWQKGQEV4EBUUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C4CECAF6
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:10 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id a1sf8457107pfn.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646329; cv=pass;
        d=google.com; s=arc-20160816;
        b=sNpGmRb/MfGRChsjA6tDZtlalWcEgXKs5JL2jxecvimcYFoDy8/D9VqYLYS0rAqU2E
         Hl+1IdAETu3hF8sxxSXM/9i4tdbCecOLsQ5PyRYeB1uPFUnGQNHQ4K6Mvkqrf3Mktwfe
         sjsXrk/VD4Vz84DJrePAx8C58bgiyAOFjlhq0R0KUokWtcA5LOvbgTSUOC2hsuNENw16
         HzNW46Nwrw2hQTNrT5O7RWrsbGiQAUbKnCD+tbGbi9fWOv3WsTyhyEDaKu/StssdizT5
         pwPsQmskKh+cytyRrBBLNCCIufUsFeB03a8x4oumU9jxoZbOO4JhuLFaF4GtpqSaVOjD
         5hRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/IFJpx2/CVU7OXa7pyTHhvAXzicU6cj+XqSgMlj2/3A=;
        b=wR7VEzHWGvLYKxRKpW0HDajs+0e+F6LNiaKJP+5IageEopwSeDnxN1eBUV7OsefC1g
         sNtwQlrh/l2ieQP4CEGdcpnNPshbvfMF/0CR9+JcTX2dPSsGUIaHDtxuUmQBcFjB6MQx
         hNAt96wVML5mQGzIJ+Gu4p1W1w8QYRRrA32pRQ6X7uZbLjfZrCFVb3/p224676sHbBBs
         SRtmOhc5NddYqwqvs18y0JBxwsCvBfOVRCAGOFtMqj6eKRYnITlC2tqs0yQXQLEBWUTw
         XdsSNvcl21buAvtCtpIKQ+kIq9JS564/D3InkW7r4yQ2gpzI0zI/CBJdWKVsKNvV8VHV
         9wmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mktcrk7B;
       spf=pass (google.com: domain of 3t628xqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3t628XQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IFJpx2/CVU7OXa7pyTHhvAXzicU6cj+XqSgMlj2/3A=;
        b=V/j2rLjTawVOeWFcQxyVnijU0nqX5p+EJplqAIkjqpjdsfCwzVZBMYHcMO6OeEW8ie
         LElSaZXZUmDmhEW8FRPLoGKOSeJmjkfuUIBXo9FG6ODs0FevRS75oxXnIN7DOUgWYT7O
         FpdQ8j7cHX5Q01nJyCAhvcsRJFq4KhNoo4Fxhdk0naVNspTNFAgRC71qEOpcYm2IoPbl
         TrbG62NbZ6D6G3USnPE6d2iRM0gherJbVlZS2QJoZgJRorkeisrkL2QZ17LrfV2rChYD
         iva1+k6eg5d4cMryWeaUyEjMzbnHhW4EH8pA3sd7CvRwjvYeksTXRQwJCF6H5fRnXC+i
         eaMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IFJpx2/CVU7OXa7pyTHhvAXzicU6cj+XqSgMlj2/3A=;
        b=FZSY/MjZFfj6a11j/lN6H5E66uF45B67u0ktdJ8vhZujVJF2WovN4BHYNHVhy/9uM5
         KgSH180CN8MWMVktx9qJHI7ivtWpklkSnarQASeQ/dW3LXDNxZYpvNITNxNJCZYE1IP5
         TOMogqyUVb17mDcFnBUGFMkV8zr1+iu+Ykh9qZJo6rQirINnFwHA8etvBp0IsGeuXmDe
         VQFzclyO1BJ9sEjq5eQjFW0dD+TAE9RVNsX9UTFlz6F308ISvyxbRN4jc+XEh6qmMpRK
         0KOoxu9PuZlBYIJ/CsgiJt0lKzJw2ap7T308ySBwuiWo19Qm9rEp/tTPRFTW0hFrI71I
         4xrA==
X-Gm-Message-State: APjAAAXbvhF5sHFckDUv4RyptlwLiAbys+NqUTsn2RyRJUyZ3Dglod4p
	EVXgBZxFMTgLa/0hFXawPCU=
X-Google-Smtp-Source: APXvYqx5zN2sTCUYV4Dmlrjz5VcIu8LGvWNMFbN3dk2Dfr3j9NUtvuAn9EBwyf1ZzZwLu0dGUNAx0w==
X-Received: by 2002:a17:90a:c68f:: with SMTP id n15mr17993440pjt.19.1572646329050;
        Fri, 01 Nov 2019 15:12:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7d94:: with SMTP id a20ls1900181plm.10.gmail; Fri,
 01 Nov 2019 15:12:08 -0700 (PDT)
X-Received: by 2002:a17:902:8509:: with SMTP id bj9mr15154318plb.328.1572646328500;
        Fri, 01 Nov 2019 15:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646328; cv=none;
        d=google.com; s=arc-20160816;
        b=Pvrcljx4gB1NLlIFx+Vg6OfmONmjYwaT4OOLEpxw2guyU+06juC0hYFC13Q4snA6Zk
         u3TdYlFbvgC0ugXbv37p69SQpf85VJhUkkASdBLbhQQz9F9IMyOrOC2JRFm0wqL+tfcv
         Xy+z272JXVc05IEIGKoDzQPuhxA3gizMIunN+DaflFgboqp1AGvqgR23JL9vvvARlAPA
         xjvPL8eYZcfazLgb3Gyg5wH+MZRIUAlEx9LXKzh+KPhxhZhUy1CpYIv1O0D8RPfXFpnd
         lKWvNRdukgOdPG/U/8Z2ickuE8q+8NZtjngMYMO+RUPqo3N8slqObR7jQUynHdxeYdN3
         qYdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qjKhzVcl5kAZVlPLgMUk9d1eGUxOad0I4GHT70kbrwg=;
        b=XlzNXtSjhPcBsgf/yRrLo3oDh7SNpvGWtuvV9i0dP4c6vmx2DXxwBfSGLaKk+6OP/I
         jjsX9xtsGoxYhl1kFfbo8yPVStajKUnvNueWUWHB0SxDU32eUQxIoee3vrlpHoWVlVHo
         X9NymqdIw+rZy00+iBiGlwYyNcS1B5acY6HNOaMMUIho/9DPDU9QywQSdfw8X6OcIZbm
         Pwfb5X7WmUQeeKrki9x24wCvppi9s+eFF/xfjYkZggHOfN4YFGBGHdy6Gr5PL/LJ8H21
         y+BYIw1JRWUPfZ+7+NkiFufF8rMDRoAYjjp6kb0APL3lIDmcTSdnqhvSJZQizE/Lfx7c
         7btg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mktcrk7B;
       spf=pass (google.com: domain of 3t628xqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3t628XQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id s4si269634pji.1.2019.11.01.15.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t628xqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id d126so8452399pfd.5
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:08 -0700 (PDT)
X-Received: by 2002:a63:c445:: with SMTP id m5mr16021319pgg.211.1572646327753;
 Fri, 01 Nov 2019 15:12:07 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:38 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mktcrk7B;       spf=pass
 (google.com: domain of 3t628xqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3t628XQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  33 +++++++
 include/linux/compiler-clang.h |   6 ++
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  57 +++++++++++
 init/init_task.c               |   8 ++
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
 11 files changed, 296 insertions(+)
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
index 000000000000..bd5ef4278b91
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
+#define SCS_SIZE	1024
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-6-samitolvanen%40google.com.
