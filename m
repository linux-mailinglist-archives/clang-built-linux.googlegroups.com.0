Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXWX53WQKGQEMCFY44Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AACEBC81
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:51:59 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id n6sf3266869vke.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:51:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580319; cv=pass;
        d=google.com; s=arc-20160816;
        b=fz769LFiyLXr7QUj+vguNG29M2lORCloqo4ujDQCRkTkanOCHJ1ypryrvmsZwMWWEc
         I8Sipxz3TgyVVSVu8TT5jhhWV7hHmYH+lT9UHHEbCbiT/rCSegcee/HzwL8mE8E/Z06C
         pR/gYIf/U9lm/Mz8VF9sZSdr6RFveC7HW/bFCUMaQBp7iQldIfrlFDRqSj3sBAGstyVi
         uvdfEUKGoUGATwEiKviPz3hJUIzuT7Q2PEBaHZFrItpcJyTsImgxV+EnaHh0h4RYXj/s
         KsACn5x6UlfzX16TrK9lvK5n5fTfMBqqA/TqVVxmFH8FEKRYn/uqLbz9OeKnB5cvAJbL
         ty1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wOHhHcDBGgHCyqjMQd7umJmmlAjz326O7vYbLano2kk=;
        b=MCENmXA+1E/WuZbCzEM6k585+35YwMxMqLqOAy/5klHWzQuiV01ufQDBGujDnignXs
         j1cmb820lShBX0ZJHWx3Ckj3p3oFtkGhWzrkIkWE6oVmS3nQIbubuGbMlOc2xdbaMB+o
         2DIMFgFiWJhn8eUj2DsekYsHldbV6lrraadP4QAcHB+r/pqovh2c5IO8KtOcZoSxorgL
         Vh3bydVOjmJptSFgUb0D96IdignFWHaYnDcIDZ6mx9bSwGI8s5R3zKAQxdRGYSSxPS20
         sx2kyNgVBmg7BDEKYBDknF5Sy6JCWCt5u0mqsHKLrEgyspe7Rah6FiIj5BZ/bi02++3C
         nnNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KjCA8bVn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wOHhHcDBGgHCyqjMQd7umJmmlAjz326O7vYbLano2kk=;
        b=IiUlwLa91FyWTo4NIHy8Ykig/Bjv9UfMgI8Ks7hKXo0L8CC9RtDs9MqeWY5m/3Q0Nx
         NW6cmtX+W7QEKl9YO5xUxEqit/ite8+1QnvpzSGBGHva7YJn3rwSkNLXKZtU+UXUWyiq
         jB+UrTAMbYpiE3/P6BwozS/MDlQo0w+RIA9TbtywkF+ikPFz37z5lN96VZtG4w1d1HlK
         /xbP5nwrl5Nj2y6NJoD7DWeYBmJnJr3zfCrwCmzKzMjcowThYMQwvYMNVENXFqwuSqUI
         aMt4vl+C9mQ0KXdwe2S8IVNOf7PrEAi4yINM3XfiuzVQa/56y8QSepDr9IA5atGUb28s
         +gsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wOHhHcDBGgHCyqjMQd7umJmmlAjz326O7vYbLano2kk=;
        b=uf48vzgaTjOu0KSViKRnhZpkK7vVcUgNh2K8qoY7+6ht2UetyBLNeDy+g0OtpjjGlQ
         d4G/VXgGNpILkpcP4CNu5naDhoszljXprRSAX8JCSpTFCMLe2fdBc6//xVC3pResBvJu
         Wf+kgAkRNvn3YVLTzszEehsR8c7E3IyJ2g83IYZOHp8Lm3sDDO8JOC/J+3zo3BRi80nL
         bTFlylTGBZvXL37slahc1pbRUbouCED8V3iQ12g4gw7sepikB+U/3BJ2hEFhkVxSj+AL
         hiHYslpCRHgyfhlvWP1CVs+3ToNhpPfoGjCYbvTR3ga/WWW3EneBsu8cqabqpQlmp6iZ
         og+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+50S3DXLODMWIHU0l+6dS9UVzGIWrAoIgU8Vbk9NEyIxKSQbG
	tM/wzuE9ajuWpXada07PFcg=
X-Google-Smtp-Source: APXvYqwpcAvoYeSw45coWYdO99ji11J/pzb/LKhIAD7kj+q/IMar9AeW+mcZ3EPo8ElYdtNBiXMLFA==
X-Received: by 2002:ac5:cb4f:: with SMTP id s15mr2273771vkl.68.1572580318823;
        Thu, 31 Oct 2019 20:51:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8c04:: with SMTP id o4ls197707vkd.4.gmail; Thu, 31 Oct
 2019 20:51:58 -0700 (PDT)
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr4388301vkc.71.1572580318374;
        Thu, 31 Oct 2019 20:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580318; cv=none;
        d=google.com; s=arc-20160816;
        b=KBpqWjMCkAYEpjMn/Ndf5h+CPsQcIqFVbqVebL6WaDwn9JxaTMTLXA7OEJu4LNsG2N
         X7Cn4XWNRqbBaG0te8KTmv6ljTRYAuuFeh66DeatuVVw3eKSm03L1JO6qbed3Q/2rvGY
         RhDtR4PiiDsRP++jMMDR68FrIUgK5jbv/t7EcP96zPQRVL1Uds4ayEquABwVH81wL5OL
         lhENE5Jqj2H64IOjK7HpH9ygcDwsLz+VVIlnjnYgTj4PEEMQdbI5LS8yYKVVtTk2UDID
         BhPssAlNjG/r5Qj4QQpJSAm/3IRaIq6xPi13tw3UrnUj/7AgLDlyb4yx/dpeC02pssAD
         kDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3N/kbwv+aZ80/XkFnwYipvFdd8tPhEiqzVrO0Dj5k5w=;
        b=WCVOq87PF7m23PKbBo22fPMio/kNm+n7HeJ85ndqapOWrIxwleojnEiX/Qwe7WHC4W
         ZPrZdhbDQ4lX1TF4rwCYF1xaM5DEwtRImxwFWb2wpotLpyNiooupuu1OI3xfTpBdOADN
         w0fozdVGXcLbYPPevoqT7DeEC9uzOY0r0SaL8nEJPyaapsxsKIewZnobGqjn6IAg6LbV
         lbo8srGRrqtnsI6RRHqOZzpbAK2Z/7kMQpwPdUrgmGlGuLmW2/lAoSSR4T9TMr6XAiOU
         D1poko0iPB6KyfRcFfxFHgUx8GnK9bm1ym175zRgUVLTakFaoYZ3i8bLzJfpODR4DcjD
         Y2iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KjCA8bVn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p78si501815vkf.0.2019.10.31.20.51.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id d13so6091727pfq.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:51:58 -0700 (PDT)
X-Received: by 2002:a17:90a:2e03:: with SMTP id q3mr12234903pjd.63.1572580317292;
        Thu, 31 Oct 2019 20:51:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u65sm5312830pfb.35.2019.10.31.20.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:51:56 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:51:55 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <201910312050.C538F8F3@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-6-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KjCA8bVn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 09:46:25AM -0700, samitolvanen@google.com wrote:
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
>  include/linux/scs.h            |  54 +++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
>  11 files changed, 293 insertions(+)
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
> index 000000000000..0b70aff3846a
> --- /dev/null
> +++ b/include/linux/scs.h
> @@ -0,0 +1,54 @@
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
> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +/* A random number to mark the end of the shadow stack. */
> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL

Is 0xaf.... non-canonical for arm64? While "random", it should also
likely be an "impossible" value to find on the call stack.

Otherwise, all looks great. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
> +	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
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
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312050.C538F8F3%40keescook.
