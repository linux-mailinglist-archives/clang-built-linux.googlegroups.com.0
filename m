Return-Path: <clang-built-linux+bncBDV37XP3XYDRBJVUQDXAKGQE3GAJDSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D50DEEDFFC
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 13:31:34 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id e17sf812520ljj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 04:31:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572870694; cv=pass;
        d=google.com; s=arc-20160816;
        b=LK0NaVVyLuxe9TErs8tMW7cHllio8xqnDrgW7kSBBQuZ6TlmYAkzmr0gDi4BSyt40u
         +zRI0P88cchzUedy8bncswpHaUmUZJm+fBmIy0E2tgnAhTSEWwpDEEKDXftEaPh+pinJ
         NLA193A8VxMsBLZeaB8TVlxfMtSY8fFvT6lG3bbnC8QI1y6/E1tzvcPrFZ2YpgqdPgdr
         jw5cTiqhGcGSJxd/AGGBSzxdrRDxC93vT/jIzxc+wwq6zo+5jZb9it8ePIwA8gx8Jbqx
         gz/auHdxWlZqapzqZ5ft/WLQsbmTb4o+OUgc7UKsW8cyCdUB6e6hNyz4mlXeBDsxKdgE
         lScw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tmkWLU0h3LfXWSVsXji+/4Dg+CDpvPZdRYntBPxBnP4=;
        b=nL/AYoXraQLod1ZlanCfF3euOOoXIRnOCt1/4R2uykWlORjFCkEEYaoBUVSWyTIfTK
         FKdUVAz0l1fhyH7L6gYvV4T3pXhKq2zPSdRi5sdQAYik20uTD1advzdzFOGMtvv0bplh
         tadaWn/QdcP5GJMl1DDyeP756epPGkS3+rrtbl20C00d6/IGfibX3JjyMIhLklzvEcQZ
         ju3kh7u5LcHNI47Dr1AXSDLXUj68s4szyH3uXlC8nd1d6BqQ9+JbNw9QGLeTNygyYOk1
         4cFYWCaRxPXU8HRJ6QqlQFuaPyBkseYWHkq3IWQ9CaTp2ljDOAPbqm9KsRIa1A9O+TVK
         TGNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tmkWLU0h3LfXWSVsXji+/4Dg+CDpvPZdRYntBPxBnP4=;
        b=c5BY0Rk6oA5pL0j8Wkb15cBxeF0/1HT1NzRip9HGDdNxAPFbfBtRKji6sIX6rMh3V2
         uhubLQhMgbGQwjhalKVXRmLNSZgvk1NHKwRnOtP9hEY27VOygrZ8ot5uXckFBJ9fFmwp
         17AAch2DKEMEQ4ZgFzngz2OGhEWQ/Qqb8+ZOw0SBIWchm5+bm1P85AqodVeLnYVWX81X
         RYXGgl8fzM2FanWdxvWk5cAQcDJ1lLs/CoEDbAfgG5PwpylgEMb2YazRYf+2aILxwBQo
         vf8S+aSo9WzQD7bqdnPjh4gAp93gZWLcj/dG1IISRm7CPtxolkR2S9sxHquOwvFnn+xp
         uvyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tmkWLU0h3LfXWSVsXji+/4Dg+CDpvPZdRYntBPxBnP4=;
        b=RSWBDg1CcoQHPezwwoumIdHIw4FTx5pMQPVQY2/OLWhAhVsnCYmJUHqJoHSrro5WiW
         cg7cP/hWGnUE5Kc2QL/9f66zvUQ0/ojXzRuz3/N1+IKKx1oJ/BErgb9zBpTGvoGzYuKL
         oYa1pVnqOxJnb3Paic8ck73CjbYVEsr3Epse/sw2tMlCLiyradwEGWtBwMVQXUOj7Ba4
         AOWJphdY+nLFuydKy5nOMeuIuWiig7duFbAQVFcY1v+J4ROXlmZnPdqqBG0sFYcHtgmR
         08SO52wzWcIi73YU5KqGU5ww+Cd0Lf6QDTdVzv9G6W6nAjdftq4C5LCyQvRSwjWLU92u
         3aeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWH0m2N4S5ztzGB7VGrkjCS33T2mJZm9fXS5VrrLBLSaqXH2E8w
	YwUC5QSd+nl52slRqEWl9kY=
X-Google-Smtp-Source: APXvYqzXKS3w8sYp7nmCQ2LHJG3TH43T2tWXBUnlMNFOPfjM0ms/Lv2cmtpAOfc7Nw7ki2iZK5feGw==
X-Received: by 2002:ac2:46e3:: with SMTP id q3mr16895423lfo.9.1572870694374;
        Mon, 04 Nov 2019 04:31:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6715:: with SMTP id b21ls1246015lfc.15.gmail; Mon, 04
 Nov 2019 04:31:33 -0800 (PST)
X-Received: by 2002:a19:957:: with SMTP id 84mr16108401lfj.123.1572870693638;
        Mon, 04 Nov 2019 04:31:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572870693; cv=none;
        d=google.com; s=arc-20160816;
        b=sHgANiazcfYLMe/TQsMqQ8ppXp2R0q2kniiQpvgCecEX7pnAED1ytzmro1bcdBIhB0
         gDFJuYQhGDE0ZeVyFKPxU4kCgTbIAVZ5tpP+lEbdbmiR1QkcG/nwe2zpQK8nOaKeF0kX
         uIK1DJbxVyoQ5MIoLB3ciF6QXYHBs1sw8tHdTDvB1VI/UMXFO86vlOlqzQsla59OBoOZ
         a02A+piQG/b+XLSjGbXh7yjBgIFQ0DcoFt0jXg5RNZZAq9ofpiRQSTqW1VrG9W9uZhEv
         ZoCGYZ0pRmebEm7xISjlDOXoBNHNgJ5HN1OPYc5UMCSBN5E5UVNblPwqT0/3KD+U1Ha9
         VgwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=1jT5uQWvdfTzsBChNtb4W3tWP/g5LYBAURbYPyiZ26c=;
        b=BkpokBZUpLUQoz4Jh4Xa16vNZl8gyccCpJthU+MWrn+TatM9T4unCQESrkJRMraGnn
         z6qjYT9rtyBRf6iOOBKPfZ7NPLB8Fnbj6bWi8Oyy/8pkh7PXsm58x0BM9mihIL37d+Mu
         U9zAe4b2F6jKywgJUuGXjWQ5Lv3FWPxyRQbyJ3QxKwdEYm8R9rwTEMPdlatRmz7Or18M
         eUVeQYynBfq+LjmakeeLuRbP7/C4aLeWqzyCviXKt4c1j59QC/k/WEHGjLAJ+np5qvkM
         3OpklXoOznmzXepNFzA3Th96IcRfEDBPgPP5uLPWtM30mEJRRLRF5/T2tbdzTO8VqYb3
         w2vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j14si947433lfm.2.2019.11.04.04.31.32
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 04:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 585081FB;
	Mon,  4 Nov 2019 04:31:31 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 194EB3F6C4;
	Mon,  4 Nov 2019 04:31:28 -0800 (PST)
Date: Mon, 4 Nov 2019 12:31:27 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191104123126.GC45140@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-6-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Nov 01, 2019 at 03:11:38PM -0700, Sami Tolvanen wrote:
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
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  33 +++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 +++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
>  11 files changed, 296 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index 79be70bf2899..e6337314f8fb 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
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
>  	  about 20% of all kernel functions, which increases the kernel code
>  	  size by about 2%.
>  
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	bool
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.
> +
> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	help
> +	  This option enables Clang's Shadow Call Stack, which uses a
> +	  shadow stack to protect function return addresses from being
> +	  overwritten by an attacker. More information can be found from
> +	  Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +	  Note that security guarantees in the kernel differ from the ones
> +	  documented for user space. The kernel must store addresses of shadow
> +	  stacks used by other tasks and interrupt handlers in memory, which
> +	  means an attacker capable reading and writing arbitrary memory may
> +	  be able to locate them and hijack control flow by modifying shadow
> +	  stacks that are not currently in use.
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>  	bool
>  	help
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..18fc4d29ef27 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
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
> index 000000000000..bd5ef4278b91
> --- /dev/null
> +++ b/include/linux/scs.h
> @@ -0,0 +1,57 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
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
> +/*
> + * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
> + * architecture) provided ~40% safety margin on stack usage while keeping
> + * memory allocation overhead reasonable.
> + */
> +#define SCS_SIZE	1024

To make it easier to reason about type promotion rules (and avoid that
we accidentaly mask out high bits when using this to generate a mask),
can we please make this 1024UL?

> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +/*
> + * A random number outside the kernel's virtual address space to mark the
> + * end of the shadow stack.
> + */
> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL
> +
> +#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +	task_scs(tsk) = s;
> +}
> +
> +extern void scs_init(void);
> +extern void scs_task_reset(struct task_struct *tsk);
> +extern int scs_prepare(struct task_struct *tsk, int node);
> +extern bool scs_corrupted(struct task_struct *tsk);
> +extern void scs_release(struct task_struct *tsk);
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +#define task_scs(tsk)	NULL
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s) {}
> +static inline void scs_init(void) {}
> +static inline void scs_task_reset(struct task_struct *tsk) {}
> +static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
> +static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
> +static inline void scs_release(struct task_struct *tsk) {}
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
> +		__aligned(SCS_SIZE) = {
> +	[(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
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
> index bcdf53125210..3fa7ba64c62d 100644
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
> +	scs_release(tsk);
> +
>  #ifndef CONFIG_THREAD_INFO_IN_TASK
>  	/*
>  	 * The task is finally done with both the stack and thread_info,
> @@ -834,6 +837,8 @@ void __init fork_init(void)
>  			  NULL, free_vm_stack_cache);
>  #endif
>  
> +	scs_init();
> +
>  	lockdep_init_task(&init_task);
>  	uprobes_init();
>  }
> @@ -893,6 +898,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
>  	if (err)
>  		goto free_stack;
>  
> +	err = scs_prepare(tsk, node);
> +	if (err)
> +		goto free_stack;
> +
>  #ifdef CONFIG_SECCOMP
>  	/*
>  	 * We must handle setting up seccomp filters once we're under
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..e7faeb383008 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
>  	raw_spin_lock_irqsave(&idle->pi_lock, flags);
>  	raw_spin_lock(&rq->lock);
>  
> +	scs_task_reset(idle);

Could we please do this next to the kasan_unpoison_task_stack() call, 
Either just before, or just after?

They're boot addressing the same issue where previously live stack is
being reused, and in general I'd expect them to occur at the same time
(though I understand idle will be a bit different).

> +
>  	__sched_fork(0, idle);
>  	idle->state = TASK_RUNNING;
>  	idle->se.exec_start = sched_clock();
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

This include looks extraneous.

> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..7c1a40020754
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/mm.h>
> +#include <linux/mmzone.h>
> +#include <linux/scs.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)
> +{
> +	/*
> +	 * We allow architectures to use the shadow_call_stack field in
> +	 * struct thread_info to store the current shadow stack pointer
> +	 * during context switches.
> +	 *
> +	 * This allows the implementation to also clear the field when
> +	 * the task is active to avoid keeping pointers to the current
> +	 * task's shadow stack in memory. This can make it harder for an
> +	 * attacker to locate the shadow stack, but also requires us to
> +	 * compute the base address when needed.
> +	 *
> +	 * We assume the stack is aligned to SCS_SIZE.
> +	 */

How about:

	/*
	 * To minimize risk the of exposure, architectures may clear a
	 * task's thread_info::shadow_call_stack while that task is
	 * running, and only save/restore the active shadow call stack
	 * pointer when the usual register may be clobbered (e.g. across
	 * context switches).
	 *
	 * The shadow call stack is aligned to SCS_SIZE, and grows
	 * upwards, so we can mask out the low bits to extract the base
	 * when the task is not running.
	 */

... which I think makes the lifetime and constraints a bit clearer.

> +	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));

We usually use unsigned long ratehr than uintptr_t. Could we please use
that for consistency?

The kernel relies on sizeof(unsigned long) == sizeof(void *) tree-wide,
so that doesn't cause issues for us here.

Similarly, as suggested above, it would be easier to reason about this
knowing that SCS_SIZE is an unsigned long. While IIUC we'd get sign
extension here when it's promoted, giving the definition a UL suffix
minimizes the scope for error.

> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Keep a cache of shadow stacks */
> +#define SCS_CACHE_SIZE 2

How about:

/* Matches NR_CACHED_STACKS for VMAP_STACK */
#define NR_CACHED_SCS 2

... which explains where the number came from, and avoids confusion that
the SIZE is a byte size rather than number of elements.

> +static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
> +
> +static void *scs_alloc(int node)
> +{
> +	int i;
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +		void *s;
> +
> +		s = this_cpu_xchg(scs_cache[i], NULL);
> +		if (s) {
> +			memset(s, 0, SCS_SIZE);
> +			return s;
> +		}
> +	}
> +
> +	/*
> +	 * We allocate a full page for the shadow stack, which should be
> +	 * more than we need. Check the assumption nevertheless.
> +	 */
> +	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
> +
> +	return __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				    VMALLOC_START, VMALLOC_END,
> +				    GFP_SCS, PAGE_KERNEL, 0,
> +				    node, __builtin_return_address(0));
> +}
> +
> +static void scs_free(void *s)
> +{
> +	int i;
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++)
> +		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
> +			return;

Here we should compare to NULL rather than 0.

> +
> +	vfree_atomic(s);
> +}
> +
> +static int scs_cleanup(unsigned int cpu)
> +{
> +	int i;
> +	void **cache = per_cpu_ptr(scs_cache, cpu);
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +		vfree(cache[i]);
> +		cache[i] = NULL;
> +	}
> +
> +	return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +	cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +		scs_cleanup);

We probably want to do something if this call fails. It looks like we'd
only leak two pages (and we'd be able to use them if/when that CPU is
brought back online. A WARN_ON() is probably fine.

Thanks,
Mark.

> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +	return kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +	kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +				0, NULL);
> +	WARN_ON(!scs_cache);
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static inline unsigned long *scs_magic(struct task_struct *tsk)
> +{
> +	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;
> +}
> +
> +static inline void scs_set_magic(struct task_struct *tsk)
> +{
> +	*scs_magic(tsk) = SCS_END_MAGIC;
> +}
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +	/*
> +	 * Reset the shadow stack to the base address in case the task
> +	 * is reused.
> +	 */
> +	task_set_scs(tsk, __scs_base(tsk));
> +}
> +
> +int scs_prepare(struct task_struct *tsk, int node)
> +{
> +	void *s;
> +
> +	s = scs_alloc(node);
> +	if (!s)
> +		return -ENOMEM;
> +
> +	task_set_scs(tsk, s);
> +	scs_set_magic(tsk);
> +
> +	return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +	return *scs_magic(tsk) != SCS_END_MAGIC;
> +}
> +
> +void scs_release(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	s = __scs_base(tsk);
> +	if (!s)
> +		return;
> +
> +	WARN_ON(scs_corrupted(tsk));
> +
> +	task_set_scs(tsk, NULL);
> +	scs_free(s);
> +}
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104123126.GC45140%40lakrids.cambridge.arm.com.
