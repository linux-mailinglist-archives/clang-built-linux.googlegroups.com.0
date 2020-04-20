Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBMFS672AKGQEAYKCVPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DF1B12BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:17:37 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id l26sf11688283qtc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 10:17:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587403057; cv=pass;
        d=google.com; s=arc-20160816;
        b=moke2vCRf6rilGeMjqg+FK2kPLh7iGfDEQ9E25hPpBRvuExl+AWUbi+Ay8zgbDJ8MB
         RfEAOij0TRa5B258I3pDcRuV4Kfu58GPih/Dg0XHsQ2D0HhGEpzAdECQ2NIXiHDD+6WQ
         +2o4IKoX2aIArnFhtfW2ah3gcuMH7NlxA5ikrnhrgsBcfFwUjZz3jHnSMW9RjwC/F7Br
         cq4B90fi8IRjsLtO6RgmZc37cCXhqEWbdVd5GDdkrESks+C9AB1H8UeAizI625yxEl28
         iBOJXgYvyFg5Y7huAxiKnpwn26gMsGL26bimPuTHwQavjMQTE2/T+rVDCbFhCTsut1SM
         cOgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/sjBp5lP3AL4LL4HAjOFNaWQcBb6VUfUxFMo8SSRFmQ=;
        b=J04Cn2myPjECKIDLanvNAB+Iq0ckkGrR1SM70D4yypTsl8KvE22TciOAgaHcxVlC8B
         XhBB9p0QlIJ67QJHUMJsPa2sJIOSOLQ6NQeaHFq0qSj55CgsA8O1mo/RJ1cLlhX/iWgU
         2spiuu315063yqn9Oxi9qTMJEzy/2QiUxguwExYiwiZSg42IC3VAcDtlz2Yb0tJSX4BS
         K8Fg+buwGHUrX8Y/QqBUxr7okjQmQvjgZ8z+gZTeVo4euGPIHLE1WX8i2w3FHUqOnPts
         saY/LwsOCT8UL2QzM0ESibUf0+z86gl15LkO9JeWvdCVTLoHMDyWm2+tPmj+NdX52jAS
         5xCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TvIor7yF;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/sjBp5lP3AL4LL4HAjOFNaWQcBb6VUfUxFMo8SSRFmQ=;
        b=ogwZy7D0un8NoYrS/be23pBPK+Cnmbpr3TFbM/cc6I5ea9WR1YvE9l7kGyw8nDKI/0
         DJSd0uJao6H5Gk6jplsyw5PB9Ya1OwBhu+VzKSkMmOor+G1xjR6zu508y6yg7KH44v0/
         gB4lHM4bzfnSVFKCN/Ct3IVODUZUVDy6IrgcXi4iTB13fi4EUsMVxzPdWQ5QoOok5EIe
         DT+hIn3KogKydACE1DpgGzwD2ljJL3BcJuLIRAkimdOTgIW0/5wX7pbVPtmaAVdGOm/u
         ZiYDjetHx+VxbB5fNJwGQZwXvTvY4I0u3zM5OxJTqyLhOtJfMlIPyGCduJKTqi0Z7LAF
         /Lmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/sjBp5lP3AL4LL4HAjOFNaWQcBb6VUfUxFMo8SSRFmQ=;
        b=l+6tAXeVsDyuc4tYX6fNWLtjLXzAXsy6VeXYxeyy0uSgnOG9LRSeQD+2j+NlrqZcKi
         34BL2ECGda+PlkTRRbGjsauc2hOLJj/MAzbjojqm/ypzpcfVCn5vKI8svvLz4lXtj4PV
         1BN37ogIyZfipNNm+Tfe40I8CFW14ZS09F6MDEE7sKcSqcdkky3acM4uIOrXIbJCbt4s
         zUtl6b1wN0BOBUTcg5nRmoQdpOShd6yeZsmFuaS1TJjrywaZKLNj4R0gcDMeP7EsDxrg
         UpmhGnvIb9Zhpt+rjw+LpcQWYMGzdpoTWJbN+/fRCFiCrJlezu0zBv+tK5dPpmJbQ8N3
         pXDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub6aXIfvYlPUp2DZhdvz6vd0lDAfrFZwuR1Esz1peAfo4n7pveV
	pbWe0zMvbNg3d9EK9FGata4=
X-Google-Smtp-Source: APiQypJzTkeXPcGtqO9GtZmXG6hgxHtYUBiOU74E9ftdyOgF0Mz1WXesSSsghYOuGs9BD+po5Uhv4A==
X-Received: by 2002:ac8:65d4:: with SMTP id t20mr17133999qto.358.1587403056685;
        Mon, 20 Apr 2020 10:17:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e17:: with SMTP id h23ls7313716qke.7.gmail; Mon, 20 Apr
 2020 10:17:36 -0700 (PDT)
X-Received: by 2002:a37:9b0a:: with SMTP id d10mr17712067qke.50.1587403056177;
        Mon, 20 Apr 2020 10:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587403056; cv=none;
        d=google.com; s=arc-20160816;
        b=TOLX4EtEaQehpMNUq1UHYlehUbgIAvbMot/D+cfbCGx5y0AAWjr4MPde5a8FPY4DlW
         8lsHTfddwPBfe9MVqKIcjwTYeGEGzpHZ4VBLxtZkoBuVTwLtFsoLMMK67TdMQvsJ8xD/
         u8mPRWvom7QPMoNk7F5d8w/kUu7sd4cwUCI2t5Cs6W4zL9GLs+SCCHyEOn7/Suwmg2IG
         msMXNnPJbb9fkdxaB0OSzOTI4x3SgsCpqaMb/xokDnMOMs7YPI8Hw6aBYwWFMMHVSSR/
         mipWK5Sq6EZgFdZy196g9r9XjJPGbW8DDebMAP5HedQspVlDzqGdXDXm35gUEbM+281O
         6SSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H73L0Pxx/42SBzZiEhfc4EuwF9bJoRs+7htcLwSBqEQ=;
        b=Ztk/MMP40rE6QRfA0XHfduQaJEkdbWYg2VRP9MwtJSQHzMLQcigobm0jHt868EPO0A
         XAQyaxZLZSnlJbp1qLdx4WHvJgSv/k7uxfLJfXmw5MLmv+4CamT/sj6g7oQTe2ylczQb
         lWK4j9B6KHRnu5rf87Wkj/swjmhcZMT5wqbZP5galKdgMAZ67QT5FxajOipp2CF8yhSW
         Ri+S3iaPEU43h2/SE1nNS+gumO9cmpNE+yuAKd0TsEIIFVNT3Fe2OfaS+F3/OyNxQBA9
         cYb6vWbWIVfj/ieX6ThHhJ9B5+y9xMESRxvjc4ftHNldxl9aQZpS50mQ4LIhb8TCu4AZ
         kOSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TvIor7yF;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r205si3383qke.3.2020.04.20.10.17.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 10:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 53A5E208E4;
	Mon, 20 Apr 2020 17:17:31 +0000 (UTC)
Date: Mon, 20 Apr 2020 18:17:28 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200420171727.GB24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-2-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TvIor7yF;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Sami,

Comments inline.

On Thu, Apr 16, 2020 at 09:12:34AM -0700, Sami Tolvanen wrote:
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
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  34 ++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 ++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/scs.c                   | 187 +++++++++++++++++++++++++++++++++
>  10 files changed, 314 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index 70def4907036..baea6024b409 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -866,6 +866,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif

CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
way.

>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 786a85d4ad40..691a552c2cc3 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -533,6 +533,40 @@ config STACKPROTECTOR_STRONG
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
> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	help
> +	  This option enables Clang's Shadow Call Stack, which uses a
> +	  shadow stack to protect function return addresses from being
> +	  overwritten by an attacker. More information can be found in
> +	  Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +	  Note that security guarantees in the kernel differ from the ones
> +	  documented for user space. The kernel must store addresses of shadow
> +	  stacks used by other tasks and interrupt handlers in memory, which
> +	  means an attacker capable of reading and writing arbitrary memory
> +	  may be able to locate them and hijack control flow by modifying
> +	  shadow stacks that are not currently in use.

Shouldn't some of this depend on CC_IS_CLANG?

> +config SHADOW_CALL_STACK_VMAP
> +	bool "Use virtually mapped shadow call stacks"
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.

Given that this feature applies only to arm64 kernels built with clang, it
feels weird to further segment that userbase with another config option.
Does Android enable SHADOW_CALL_STACK_VMAP? If not, maybe we should ditch
it for now and add it when we have a user.

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index e970f97a7fcb..97b62f47a80d 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -193,6 +193,10 @@ struct ftrace_likely_data {
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
> index 000000000000..c5572fd770b0
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
> +#define SCS_SIZE	1024UL
> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +/*
> + * A random number outside the kernel's virtual address space to mark the
> + * end of the shadow stack.
> + */
> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL

This seems like it might be arm64-specific. Why not choose something based
off CONFIG_ILLEGAL_POINTER_VALUE (see linux/poison.h)?

> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index 3a61a3b8eaa9..c99620c1ec20 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -11,6 +11,7 @@
>  #include <linux/nospec.h>
>  
>  #include <linux/kcov.h>
> +#include <linux/scs.h>
>  
>  #include <asm/switch_to.h>
>  #include <asm/tlb.h>
> @@ -6045,6 +6046,7 @@ void init_idle(struct task_struct *idle, int cpu)
>  	idle->se.exec_start = sched_clock();
>  	idle->flags |= PF_IDLE;
>  
> +	scs_task_reset(idle);
>  	kasan_unpoison_task_stack(idle);
>  
>  #ifdef CONFIG_SMP
> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..28abed21950c
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,187 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/kasan.h>
> +#include <linux/mm.h>
> +#include <linux/mmzone.h>
> +#include <linux/scs.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)

Please avoid using 'inline' in C files unless there's a good reason not
to let the compiler figure it out.

> +{
> +	/*
> +	 * To minimize risk the of exposure, architectures may clear a

Should be "the risk of exposure".

> +	 * task's thread_info::shadow_call_stack while that task is
> +	 * running, and only save/restore the active shadow call stack
> +	 * pointer when the usual register may be clobbered (e.g. across
> +	 * context switches).
> +	 *
> +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> +	 * upwards, so we can mask out the low bits to extract the base
> +	 * when the task is not running.
> +	 */
> +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));

Could we avoid forcing this alignment it we stored the SCS pointer as a
(base,offset) pair instead? That might be friendlier on the allocations
later on.

> +}
> +
> +static inline unsigned long *scs_magic(void *s)
> +{
> +	return (unsigned long *)(s + SCS_SIZE) - 1;
> +}
> +
> +static inline void scs_set_magic(void *s)
> +{
> +	*scs_magic(s) = SCS_END_MAGIC;

You added task_set_scs() for this sort of thing, so I'm not convinced you
need this extra helper.

> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Matches NR_CACHED_STACKS for VMAP_STACK */
> +#define NR_CACHED_SCS 2

Then they should probably both be derived from the same thing?

> +static DEFINE_PER_CPU(void *, scs_cache[NR_CACHED_SCS]);
> +
> +static void *scs_alloc(int node)
> +{
> +	int i;
> +	void *s;
> +
> +	for (i = 0; i < NR_CACHED_SCS; i++) {
> +		s = this_cpu_xchg(scs_cache[i], NULL);

Might be worth a comment about the re-entrancy here.

> +		if (s) {
> +			memset(s, 0, SCS_SIZE);
> +			goto out;
> +		}
> +	}
> +
> +	/*
> +	 * We allocate a full page for the shadow stack, which should be
> +	 * more than we need. Check the assumption nevertheless.
> +	 */
> +	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
> +
> +	s = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				 VMALLOC_START, VMALLOC_END,
> +				 GFP_SCS, PAGE_KERNEL, 0,
> +				 node, __builtin_return_address(0));
> +
> +out:
> +	if (s)
> +		scs_set_magic(s);
> +	/* TODO: poison for KASAN, unpoison in scs_free */

We don't usually commit these. What's missing?

> +
> +	return s;
> +}
> +
> +static void scs_free(void *s)
> +{
> +	int i;
> +
> +	for (i = 0; i < NR_CACHED_SCS; i++)
> +		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == NULL)
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
> +	for (i = 0; i < NR_CACHED_SCS; i++) {
> +		vfree(cache[i]);
> +		cache[i] = NULL;
> +	}

Hmm, can this run concurrently with another CPU doing a stack allocation
with this_cpu_cmpxchg()? It probably works out on arm64 thanks to the use
of atomics, but we shouldn't be relying on that in core code.

> +
> +	return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +	WARN_ON(cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +			scs_cleanup) < 0);
> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +	void *s;
> +
> +	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +	if (s) {
> +		scs_set_magic(s);
> +		/*
> +		 * Poison the allocation to catch unintentional accesses to
> +		 * the shadow stack when KASAN is enabled.
> +		 */
> +		kasan_poison_object_data(scs_cache, s);
> +	}
> +
> +	return s;
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +	kasan_unpoison_object_data(scs_cache, s);
> +	kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +				0, NULL);
> +	WARN_ON(!scs_cache);

Memory allocation failure should be noisy enough without this.

> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +	/*
> +	 * Reset the shadow stack to the base address in case the task
> +	 * is reused.
> +	 */
> +	task_set_scs(tsk, __scs_base(tsk));
> +}

Why isn't this in the header?

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
> +	return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +	unsigned long *magic = scs_magic(__scs_base(tsk));
> +
> +	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
> +}

Same here.

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

Aren't we about to free the task here? What does clearing the scs pointer
achieve?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420171727.GB24386%40willie-the-truck.
