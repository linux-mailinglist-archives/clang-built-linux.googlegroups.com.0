Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU6CZTWQKGQER6DHVYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 191D5E5118
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 18:22:45 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id b128sf2120344pga.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 09:22:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572020563; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoCFUiQ6QhIFdDYfS3NISgrH2TRDtHm3aOl1RscR/aT0AcQQRPq+ukpKDuzBMFUbJR
         /22FcssOwQjY7nJiWqQUXkuE38JUh28r+EhXu5TOQim6jSORwwRgFCkqkHuh0HLDpd4g
         +Hz6ugilf2EXoBT8b0m8mHrQTZHqK6fLcS6HBghQg2OpmCm9H0cRiqtEtxWZZRRt6Om2
         /qpGIyDrsDpyGA7c49+B+pYjH0pKyEZfl6dDRdo8YpYV2A57u0OsU+yHnmyDm8CodagX
         bMUR7ZAvcWyxsXxX70D4laWmdW2MBOEHvsky5iMcAcW/uMmoKZoKzgqmJfUX8IkdKu1l
         cDPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PCRmWVou78410bzgQtiKAibg2EeYHtr/LW3Ac6wgqt8=;
        b=aQ4Qsi5bChINXl2MqAJr+rdVYKI5D0whvU1u0jDdcLKK0ssXt4PCKZkZr50txfZpR3
         a8q3QDTLVwG1da15T4A1nFbmUmnMqQ9lgOcjcFFpGtPOH9wYHyAz6QxIP36fuvcOGnyJ
         EmuK8krqaZ7tjDco06pgTo9JvTE3rhlE0fcpwkw0eBa6pcsBt25tOLsLJaJeHkaHDoYQ
         CXU650PqZ6FWxqYYdNtkbr5SnDswHf5bhLG1+5APGiN7Ael3gZn3G7TOU4mZJT6B1y0j
         Tsihu9MZTCFsIaBiNV+FrLOAsGL9xJtgfMbKx5YoRN+BkHXEwU4oqSyDTwO/ZfXcG/C3
         ebZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqVpSPtD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCRmWVou78410bzgQtiKAibg2EeYHtr/LW3Ac6wgqt8=;
        b=JqPucf4r48P7UbUAoCoxQTBGZydN7E16+KY7XygNmwJZdN/cZBKPWgG3LHrP9mSvvw
         CHd1snloSYiV+iztMc2z2KDpA9qTH/31a67OeJe3kUrXfXZWIrwvy64fxb84bvvV4dmc
         UiozBQiW7n0g/cuo18C1OU6lT9IpQ9TUM/21TMstE2/2iEqgwW8AcLBPOIippP7reUle
         vgBF7DiMR5rTNkKj3f5vc+Qgq4pNuAiDdReTNjD5oPmpXxPOAb8ND3KF1ejGuxFSYYdB
         VjEyum4gWTj1ZtcCQukIpy0SqcsN1o0gUCXCUfXQVhpvBgEer5zpWfMlGcGkMSlSdO4+
         FhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCRmWVou78410bzgQtiKAibg2EeYHtr/LW3Ac6wgqt8=;
        b=TOKdslDxt5xEzEkaVRjRRFPJ95+acaxQ3WDG0IYMwfiHaBF5NZ3e8TZyEzNf8psicY
         L7JTFOIWHGTzL5ogccQ/4gJlofGDZkhC9nw5XYI8LStGunmYX7Xe+td0lFrq/lBJxNPj
         Mb0LbchdJzNMXBfk9xbDzCGpyUYiftkZSuu31SIUDWVzZBB4J+JUAEPfE0xUOS62pUFq
         TkyVXvZRoTfRKCN1WxHYdYPhQXSq5QEkxXsCwadtLgPzeDDMZO7meZ8FQ74u/50rXXDE
         zzHpTHow2a9hEyf8A2v4NdwqlAX7vg5V3n3PRzOP499mW+52pP/BAmSlTaE0kk/GpYOq
         daiA==
X-Gm-Message-State: APjAAAW4a1QxlSjpGrXHix2kO2p7bSAsPG4yhfLkr44pKupW992ZGUZT
	6g12L4wTJPgWRjJlMmqSlm8=
X-Google-Smtp-Source: APXvYqwaIAxLsWPGd598LvhrF0p2NgON8XV2DoRmsf7Rq/AC4VIeMCo/S1JW4jbd0Wsv3uwAHCAfPQ==
X-Received: by 2002:a63:5c57:: with SMTP id n23mr5486091pgm.132.1572020563596;
        Fri, 25 Oct 2019 09:22:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:45:: with SMTP id 63ls93664pla.14.gmail; Fri, 25 Oct
 2019 09:22:43 -0700 (PDT)
X-Received: by 2002:a17:902:be06:: with SMTP id r6mr4877448pls.282.1572020563151;
        Fri, 25 Oct 2019 09:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572020563; cv=none;
        d=google.com; s=arc-20160816;
        b=G7XLubp3uQsh1783MO1Sa2jjOs+MXsVqS0m6yfxCsCPqgSFEFyOmDlZ6E14z5GP6XN
         q9evd+DJ90CkmVMi1rnx4nVmjXxkt+ti6Oh1X7DquiCj4v8z0oG3qDxWNbaKAf/7dXp0
         WwzL/TmIQ1bmagcw1UY5d7OcUQxqIQMZNqhqGy0IpO8PZpVzxMy9Ks+nG3G20q4uHvcc
         7X4xm3wg3uFb/17BJeuuEEcVFFkTcvCaSzwnyvO/G8d7+UcDlnu6TIDqg3xQhwkCDVo2
         TIwO40oe8l9iS1fEpK2xEiZdmCEmHMXyiOwEoRTFoRHmerLhvS+wXcNaGc8OzNlDsdXL
         RDLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a8UEe/c9YA3geQLwqM8fOG4XnH0IN/vmDkDyQNkiYZU=;
        b=EHh0M5N5ONBq9AXAHaGaGQoS7Z5jbJDHnfuLwswlyw+pVeHXrW6kuerztXQV4Tcjz9
         la3/0HqBcBLyRVxCpUmDLLjgvUsDK6Yb5+8dqDL4X7yDVTkFQLcJ7+dxxWhxk0H7AgEb
         9X/FYhCcCoROLG0fonIYRZtNkKLNa2uDAPHfZNx8QBXI7IrSml6boVH1P1JJQ1hxnDJe
         bAk5J/BPoC9gx2D2Pfz36vWNl0lCrMRwY2oremGCa9f9BwW6jvuM3gxPV0JTLtoDFrmd
         ADeqmh9Rc0LcQl0fRez1eVXGH1HnGEbpiOSkc0PYMKoR0gRlKpl0TgRqyM87Pf/g6shC
         zhlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqVpSPtD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d3si96159plr.4.2019.10.25.09.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:22:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l3so1841043pgr.8
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 09:22:43 -0700 (PDT)
X-Received: by 2002:a63:5448:: with SMTP id e8mr5390739pgm.10.1572020561975;
 Fri, 25 Oct 2019 09:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
In-Reply-To: <20191024225132.13410-6-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 09:22:30 -0700
Message-ID: <CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc=eq-pbfmotCCBaRN-Cw@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vqVpSPtD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Oct 24, 2019 at 3:51 PM <samitolvanen@google.com> wrote:
>
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  33 +++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  78 +++++++++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 155 +++++++++++++++++++++++++++++++++
>  11 files changed, 303 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
>
> diff --git a/Makefile b/Makefile
> index 5475cdb6d57d..2b5c59fb18f2 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 5f8a5d84dbbe..5e34cbcd8d6a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
>           about 20% of all kernel functions, which increases the kernel code
>           size by about 2%.
>
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +       bool
> +       help
> +         An architecture should select this if it supports Clang's Shadow
> +         Call Stack, has asm/scs.h, and implements runtime support for shadow
> +         stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +       bool
> +       depends on SHADOW_CALL_STACK
> +       help
> +         Use virtually mapped shadow call stacks. Selecting this option
> +         provides better stack exhaustion protection, but increases per-thread
> +         memory consumption as a full page is allocated for each shadow stack.
> +
> +config SHADOW_CALL_STACK
> +       bool "Clang Shadow Call Stack"
> +       depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +       help
> +         This option enables Clang's Shadow Call Stack, which uses a
> +         shadow stack to protect function return addresses from being
> +         overwritten by an attacker. More information can be found from
> +         Clang's documentation:
> +
> +           https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +         Note that security guarantees in the kernel differ from the ones
> +         documented for user space. The kernel must store addresses of shadow
> +         stacks used by other tasks and interrupt handlers in memory, which
> +         means an attacker capable reading and writing arbitrary memory may
> +         be able to locate them and hijack control flow by modifying shadow
> +         stacks that are not currently in use.
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>         bool
>         help
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..afe5e24088b2 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs       __attribute__((no_sanitize("shadow-call-stack")))
> +#else
> +# define __noscs
> +#endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a8c1a6c..be5d5be4b1ae 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -202,6 +202,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>
> +#ifndef __noscs
> +# define __noscs
> +#endif
> +
>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
>  #endif
> diff --git a/include/linux/scs.h b/include/linux/scs.h
> new file mode 100644
> index 000000000000..c8b0ccfdd803
> --- /dev/null
> +++ b/include/linux/scs.h
> @@ -0,0 +1,78 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2018 Google LLC
> + */
> +
> +#ifndef _LINUX_SCS_H
> +#define _LINUX_SCS_H
> +
> +#include <linux/gfp.h>
> +#include <linux/sched.h>
> +#include <asm/page.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +#define SCS_SIZE       1024
> +#define SCS_END_MAGIC  0xaf0194819b1635f6UL
> +
> +#define GFP_SCS                (GFP_KERNEL | __GFP_ZERO)
> +
> +static inline void *task_scs(struct task_struct *tsk)
> +{
> +       return task_thread_info(tsk)->shadow_call_stack;
> +}
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +       task_thread_info(tsk)->shadow_call_stack = s;
> +}
> +
> +extern void scs_init(void);
> +extern void scs_task_init(struct task_struct *tsk);
> +extern void scs_task_reset(struct task_struct *tsk);
> +extern int scs_prepare(struct task_struct *tsk, int node);
> +extern bool scs_corrupted(struct task_struct *tsk);
> +extern void scs_release(struct task_struct *tsk);
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +static inline void *task_scs(struct task_struct *tsk)
> +{
> +       return 0;
> +}
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +}
> +
> +static inline void scs_init(void)
> +{
> +}
> +
> +static inline void scs_task_init(struct task_struct *tsk)
> +{
> +}
> +
> +static inline void scs_task_reset(struct task_struct *tsk)
> +{
> +}
> +
> +static inline int scs_prepare(struct task_struct *tsk, int node)
> +{
> +       return 0;
> +}
> +
> +static inline bool scs_corrupted(struct task_struct *tsk)
> +{
> +       return false;
> +}
> +
> +static inline void scs_release(struct task_struct *tsk)
> +{
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* _LINUX_SCS_H */
> diff --git a/init/init_task.c b/init/init_task.c
> index 9e5cbe5eab7b..cbd40460e903 100644
> --- a/init/init_task.c
> +++ b/init/init_task.c
> @@ -11,6 +11,7 @@
>  #include <linux/mm.h>
>  #include <linux/audit.h>
>  #include <linux/numa.h>
> +#include <linux/scs.h>
>
>  #include <asm/pgtable.h>
>  #include <linux/uaccess.h>
> @@ -184,6 +185,13 @@ struct task_struct init_task
>  };
>  EXPORT_SYMBOL(init_task);
>
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)] __init_task_data
> +               __aligned(SCS_SIZE) = {
> +       [(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
> +};
> +#endif
> +
>  /*
>   * Initial thread structure. Alignment of this is handled by a special
>   * linker map entry.
> diff --git a/kernel/Makefile b/kernel/Makefile
> index daad787fb795..313dbd44d576 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -102,6 +102,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
>  obj-$(CONFIG_IRQ_WORK) += irq_work.o
>  obj-$(CONFIG_CPU_PM) += cpu_pm.o
>  obj-$(CONFIG_BPF) += bpf/
> +obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
>
>  obj-$(CONFIG_PERF_EVENTS) += events/
>
> diff --git a/kernel/fork.c b/kernel/fork.c
> index bcdf53125210..ae7ebe9f0586 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c
> @@ -94,6 +94,7 @@
>  #include <linux/livepatch.h>
>  #include <linux/thread_info.h>
>  #include <linux/stackleak.h>
> +#include <linux/scs.h>
>
>  #include <asm/pgtable.h>
>  #include <asm/pgalloc.h>
> @@ -451,6 +452,8 @@ void put_task_stack(struct task_struct *tsk)
>
>  void free_task(struct task_struct *tsk)
>  {
> +       scs_release(tsk);
> +
>  #ifndef CONFIG_THREAD_INFO_IN_TASK
>         /*
>          * The task is finally done with both the stack and thread_info,
> @@ -834,6 +837,8 @@ void __init fork_init(void)
>                           NULL, free_vm_stack_cache);
>  #endif
>
> +       scs_init();
> +
>         lockdep_init_task(&init_task);
>         uprobes_init();
>  }
> @@ -907,6 +912,7 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
>         clear_user_return_notifier(tsk);
>         clear_tsk_need_resched(tsk);
>         set_task_stack_end_magic(tsk);
> +       scs_task_init(tsk);
>
>  #ifdef CONFIG_STACKPROTECTOR
>         tsk->stack_canary = get_random_canary();
> @@ -2022,6 +2028,9 @@ static __latent_entropy struct task_struct *copy_process(
>                                  args->tls);
>         if (retval)
>                 goto bad_fork_cleanup_io;
> +       retval = scs_prepare(p, node);
> +       if (retval)
> +               goto bad_fork_cleanup_thread;
>
>         stackleak_task_init(p);
>
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..e7faeb383008 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
>         raw_spin_lock_irqsave(&idle->pi_lock, flags);
>         raw_spin_lock(&rq->lock);
>
> +       scs_task_reset(idle);
> +
>         __sched_fork(0, idle);
>         idle->state = TASK_RUNNING;
>         idle->se.exec_start = sched_clock();
> diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> index 0db2c1b3361e..c153003a011c 100644
> --- a/kernel/sched/sched.h
> +++ b/kernel/sched/sched.h
> @@ -58,6 +58,7 @@
>  #include <linux/profile.h>
>  #include <linux/psi.h>
>  #include <linux/rcupdate_wait.h>
> +#include <linux/scs.h>
>  #include <linux/security.h>
>  #include <linux/stop_machine.h>
>  #include <linux/suspend.h>
> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..383d29e8c199
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/mm.h>
> +#include <linux/slab.h>
> +#include <linux/scs.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)
> +{
> +       return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Keep a cache of shadow stacks */
> +#define SCS_CACHE_SIZE 2
> +static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
> +
> +static void *scs_alloc(int node)
> +{
> +       int i;
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               void *s;
> +
> +               s = this_cpu_xchg(scs_cache[i], NULL);
> +               if (s) {
> +                       memset(s, 0, SCS_SIZE);
> +                       return s;
> +               }
> +       }
> +
> +       BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
> +
> +       return __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +                                   VMALLOC_START, VMALLOC_END,
> +                                   GFP_SCS, PAGE_KERNEL, 0,
> +                                   node, __builtin_return_address(0));
> +}
> +
> +static void scs_free(void *s)
> +{
> +       int i;
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
> +                       continue;
> +
> +               return;
> +       }

prefer:

for ...:
  if foo() == 0:
    return

to:

for ...:
  if foo() != 0:
    continue
  return

> +
> +       vfree_atomic(s);
> +}
> +
> +static int scs_cleanup(unsigned int cpu)
> +{
> +       int i;
> +       void **cache = per_cpu_ptr(scs_cache, cpu);
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               vfree(cache[i]);
> +               cache[i] = NULL;
> +       }
> +
> +       return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +       cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +               scs_cleanup);
> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +       return kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +       kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +       scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +                               0, NULL);
> +       WARN_ON(!scs_cache);
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static inline unsigned long *scs_magic(struct task_struct *tsk)
> +{
> +       return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
> +}
> +
> +static inline void scs_set_magic(struct task_struct *tsk)
> +{
> +       *scs_magic(tsk) = SCS_END_MAGIC;
> +}
> +
> +void scs_task_init(struct task_struct *tsk)
> +{
> +       task_set_scs(tsk, NULL);
> +}
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +       task_set_scs(tsk, __scs_base(tsk));
> +}
> +
> +int scs_prepare(struct task_struct *tsk, int node)
> +{
> +       void *s;
> +
> +       s = scs_alloc(node);
> +       if (!s)
> +               return -ENOMEM;
> +
> +       task_set_scs(tsk, s);
> +       scs_set_magic(tsk);
> +
> +       return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +       return *scs_magic(tsk) != SCS_END_MAGIC;
> +}
> +
> +void scs_release(struct task_struct *tsk)
> +{
> +       void *s;
> +
> +       s = __scs_base(tsk);
> +       if (!s)
> +               return;
> +
> +       WARN_ON(scs_corrupted(tsk));
> +
> +       scs_task_init(tsk);
> +       scs_free(s);
> +}
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc%3Deq-pbfmotCCBaRN-Cw%40mail.gmail.com.
