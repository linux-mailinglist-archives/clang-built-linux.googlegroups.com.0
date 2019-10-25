Return-Path: <clang-built-linux+bncBDV37XP3XYDRB4NJZPWQKGQET66E5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFBCE4909
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 12:56:50 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id r8sf853211wrx.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 03:56:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572001009; cv=pass;
        d=google.com; s=arc-20160816;
        b=IdsFk9BIVmnzMWWub2h6dp+dp1Xfa9/oxb4AYSCZ410+r/p4HlKpbckPsTDpqKfe/t
         GcPKmHN4u2WlbBrszc/jwksd3BfM7R9FQQN5YKMVzuNjKyc4V2unqkQbthkVTBQ6/FNx
         8ALGI7THKr/72CYmHcHO6ab/4IA825dpdbogQcCQv54+S16Q5iqUuOgxIkCd5RykC+D0
         Lu29B781ogqocJMAX9iCd6OOxXO4HJG/3njItjJ0xHp5uFiXUziI3Erv+XGGQOx9MP6L
         5kHueDNVIYYxT4VF6XnFSD0wfBE5zFcKlGiV2HKRSgyCUB3lSRKQO8bkwdMEuZl76cfO
         lynA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Kj3NZfq8NZPZkfK8IiOGr8dL4WHRoWZ9ZYzlkjyn0Ac=;
        b=IwqR1iS4v4uUJTwCPcaU+R4ECius7OmBUPCXDDLKlIVzysU77IbSGSguJCbcOxElZg
         ktcwG9kk8cGfdUxKOpjytigqLxAFpUfOGojtN/cqGdqbr4QbZgGadIY8MRccTVDIDL0x
         d7TaSVNUQ5AF/+atjRuyT+XuZwumT24f82MX3y9z9svDv1AYOFqyWR7o96eqnIGux7RQ
         VF8oHs5eh6soq5qHyrKoPOtRIpoftsMJtwlfHMaSCjKMgLO7UhI0WBJfTXVmQh+Vbo04
         wBNMhLXFndZq5V8Qgwp339/0gLb2WrqR7xJOULzVqvGthEVBa8/HSP4xfKBg3MtxxXWY
         lrEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kj3NZfq8NZPZkfK8IiOGr8dL4WHRoWZ9ZYzlkjyn0Ac=;
        b=hiFoEyqKwx6NCFmDMUUt1+k7WuuVRR8QtaTuDw5mDtpoStj91z0112LekypkdzgPMG
         dcEdvznSzdEl25O4HNXjIkLa8TK1xwMFMHXKxAwZWQxYcvPymNI754YHoyAMx9BpLsym
         OITbovzlRAgF6N1R/rZnsBkXARpxXvTTlEn5/Ina5rr4+jke8F+DJMIKWs8ZMF30HPj4
         G+9HzpUa2QBxIm6XVMZQ2zA9m4qMxjpmWAcgw6GATcfyyjHw9BUN5dvx/Z+EmqYO17zB
         8x77Wy2qKdKg9/Ez/st8VUv4guVtPZRRrmD10/RKYvOSWeAgCXCpVU9Boj6QmOIrLAAH
         MkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Kj3NZfq8NZPZkfK8IiOGr8dL4WHRoWZ9ZYzlkjyn0Ac=;
        b=SQUPFdlrCb7G18u2v5JrwQHs8cVGpa6FzYopUKs5VCXO0SA3muEEcvZ2nw5e2TSGL2
         e1yT/YSL9HjvDUdmpbXK3unEIdkcgTpIWdcC3im01VVh9sF7dnm7sCo6GbE02jrkXcP0
         cKINumL5vyEmHu0j73iFi0LCceORiwYrU8B9IfXvt/xRbAiDSr4Pghzad3bP+AqACGkh
         tVBpy5hPFoh0jd09InuYp2jC+I8OdaPI02m3Ne5SIXBU/N2BWOfK6ZicyhGS3oTU7uXL
         wjW/+d2wJ47Y2yKhWIpG/ntTt1RNMuis5TC3bmLRinMfkoxWcfhpodE/Zh+4ygLM/pGd
         Tt5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwcyNf/pW1gP+AGDgHGW4S2AyhYPFjzpMYUoHI35XDQLshqyUb
	IvK/e4y8yr+RElNUttQfBOM=
X-Google-Smtp-Source: APXvYqxtxG3NI+FbebQqdTyd0hr3S2VkWfOMDT67WU8RlOal7rA3w1hfyK8hPjUxTwOL01R2m08Trw==
X-Received: by 2002:a5d:5011:: with SMTP id e17mr2423689wrt.160.1572001009592;
        Fri, 25 Oct 2019 03:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd03:: with SMTP id a3ls2536154wrm.6.gmail; Fri, 25 Oct
 2019 03:56:49 -0700 (PDT)
X-Received: by 2002:adf:da4a:: with SMTP id r10mr2495890wrl.356.1572001008979;
        Fri, 25 Oct 2019 03:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572001008; cv=none;
        d=google.com; s=arc-20160816;
        b=0tXjdh9W6pyhOj3JJUe10/oXM2L9vwJ2hdg6NFcD7rH4LElzsAdMc0F1YCKDJRmabd
         w8BNisdYVQlhQZYG4haC5ow+zs5CYyqcS3XDolCKAypuKDAHZjDs5nf9Y8dAUKlIOwDr
         BGWLyO2TYwHQDp21ijT4/5ZIF+Ooiu527qoNFjHfxdchQEKagKBiwH2JqH9JfB3TZ5Of
         LOHR/jg57Wqz1sb8142B9rKLRyGljoM7gbDrYBjG+VnefvbuovSYhFcUPOoWqlQIzB8l
         5tQ52MuRfX/hVGv1KhzQvEFRmNIeB7eTAXXN+xmqz4y3yqEUFqdaTgeUFEdQxrTmNsuh
         bX2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Nbd5KeMSb6ZS3YcvyxOx/knvLzyWQEWFJc2ejkuBOKE=;
        b=J7l22BZUBvNima73RSmDw3RNCg2na5M9kqewMSX+damhkeYYGuuI3tH2PllvRskozk
         gq3DpOVWx+B1AtNiVXJyAi2vr2lLhIRipshhn8FzpW6J0JSxhyk+y2w2iOmTyDftoobi
         Q0qFHmVVwZg3VJiLFkwQqyJoMVM0anxP2M3JTmhPaAsA66KwtHy77fJrFokk5TH+1Kd8
         zmtvvn1Cfh8hEUzISMNS1ueLLTOhPTMAUMMRQ4mNavKLsS/O+dzJTBF6hCUP70JwAKXV
         MJjc5zWuymldFcBx7hTZ0La8jRHAG9ly1WMo0O7Q3VHgaLZGBTzGiXyP5h0KFNgEk/xS
         DQKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q22si281701wme.2.2019.10.25.03.56.48
        for <clang-built-linux@googlegroups.com>;
        Fri, 25 Oct 2019 03:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 233811FB;
	Fri, 25 Oct 2019 03:56:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03B9C3F6C4;
	Fri, 25 Oct 2019 03:56:45 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:56:43 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191025105643.GD40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-6-samitolvanen@google.com>
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

On Thu, Oct 24, 2019 at 03:51:20PM -0700, samitolvanen@google.com wrote:
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
> index 333a6695a918..afe5e24088b2 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs	__attribute__((no_sanitize("shadow-call-stack")))
> +#else
> +# define __noscs
> +#endif

Huh. I didn't realise it was valid to have a space after the `#` like
this. I see we're very inconsistent about style on that front, so this
is fine, I'll just have to get used to it. :)

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
> +#define SCS_SIZE	1024

I think it'd be worth a comment on how this size was chosen. IIRC this
empirical?

> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL

Keyboard smash? ... or is there a prize for whoever figures out the
secret? ;)

> +
> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +static inline void *task_scs(struct task_struct *tsk)
> +{
> +	return task_thread_info(tsk)->shadow_call_stack;
> +}
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +	task_thread_info(tsk)->shadow_call_stack = s;
> +}

This should probably be named get and set, or have:

#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)

... which can have a trivial implementation as NULL for the !SCS case.

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
> +	return 0;
> +}

For all the trivial wrappers you can put the implementation on the same
line as the prototype. That makes it a bit easier to compare against the
prototypes on the other side of the ifdeffery.

e.g. this lot can be:

static inline void *task_scs(struct task_struct *tsk) { return 0; } 
static inline void task_set_scs(struct task_struct *tsk, void *s) { }
static inline void scs_init(void) { }
...

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
> index bcdf53125210..ae7ebe9f0586 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c
> @@ -94,6 +94,7 @@
>  #include <linux/livepatch.h>
>  #include <linux/thread_info.h>
>  #include <linux/stackleak.h>
> +#include <linux/scs.h>

Nit: alphabetical order, please (this should come before stackleak.h).

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
> @@ -907,6 +912,7 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
>  	clear_user_return_notifier(tsk);
>  	clear_tsk_need_resched(tsk);
>  	set_task_stack_end_magic(tsk);
> +	scs_task_init(tsk);
>  
>  #ifdef CONFIG_STACKPROTECTOR
>  	tsk->stack_canary = get_random_canary();
> @@ -2022,6 +2028,9 @@ static __latent_entropy struct task_struct *copy_process(
>  				 args->tls);
>  	if (retval)
>  		goto bad_fork_cleanup_io;
> +	retval = scs_prepare(p, node);
> +	if (retval)
> +		goto bad_fork_cleanup_thread;

Can we please fold scs_prepare() into scs_task_init() and do this in
dup_task_struct()? That way we set this up consistently in one place,
where we're also allocating the regular stack.

Arguably stackleak_task_init() would better fit there too.

>  
>  	stackleak_task_init(p);
>  
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..e7faeb383008 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
>  	raw_spin_lock_irqsave(&idle->pi_lock, flags);
>  	raw_spin_lock(&rq->lock);
>  
> +	scs_task_reset(idle);

I'm a bit confused by this -- please see comments below on
scs_task_reset().

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

Nit: alphabetical order, please.

> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)
> +{
> +	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> +}

We only ever assign the base to task_scs(tsk), with the current live
value being in a register that we don't read. Are we expecting arch code
to keep this up-to-date with the register value?

I would have expected that we just leave this as the base (as we do for
the regular stack in the task struct), and it's down to arch code to
save/restore the current value where necessary.

Am I missing some caveat with that approach?

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
> +	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);

It's probably worth a comment on why we rely on SCS_SIZE <= PAGE_SIZE.

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
> +	for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +		if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
> +			continue;
> +
> +		return;
> +	}
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
> +	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));

Slightly simpler as:

	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025105643.GD40270%40lakrids.cambridge.arm.com.
