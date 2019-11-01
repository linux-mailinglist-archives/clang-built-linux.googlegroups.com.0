Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB36U53WQKGQEFCPQ5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 697CCEBC70
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:45:54 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id a1sf6348569pfn.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:45:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572579952; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7RjQdqitZ5sN63NIx80j2oYT95LMr9LDYx+A8jclRnVh1dvfrEO49sxkt6E9C4xEG
         a/mYUq+sRux9qSdMtzQEq5uzEc3VQ07Zr0fcLNdrnKKz6qDu1tdpP8GMre0FZGsl8Iqs
         qqeluLrwpsAU5gVVBxhECq1WWuiT2adPf5ulPr0JAWGxRQ9vGADA6q2NEVAncBh2syZM
         UB65LZcn34ZEaKA5mG/L9bPEuiId3zjWYPiMBD/gKxCJ1J3wwgwrUtReYxSE2mg5slKN
         As2iLfKAI6TpfzBRlO/wVAwKiM+PaCu0JlWi6Y0ebIfQ8vxIfGt1TaVwgDCnY0CHwYe+
         +sew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PHA2rBvSI2wWwC8MYMKFi+gZjwc8y5if9cn2Roa/bNs=;
        b=IELx234pdNmzRX1l30vHo2UNOXsquT3Rjcj+W/D56/Fg7g872MozYcPnzBMFnODbg3
         BOxb/CNfCyILpsI7UB/stlMqGuh0+lTAlz8pHn6R+Y5hf08ipAwG7wjFzsEWXQhyVeK1
         2V1aRz7Fd/JJ8ldYRp1s4tKWIghNJXOLnG5mrXywMzBmTeqI430bev+sye1BtTzRkS2L
         vR/731WGI8AJmcnYJ+pxPtbYPxYVQUh7mOwrmRtIgY7byLTU2OaT1FyvCz7PMrT0+QJi
         NewQa25YBtroo/wCDZHuVJA5svRBtSy17c4G9YQVwOoi/kr85LGgHMlkdU6cAGNySXwY
         ScVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PvBowQ8I;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PHA2rBvSI2wWwC8MYMKFi+gZjwc8y5if9cn2Roa/bNs=;
        b=EkN6bOO7fzRL63Pjq6OlJ6nHpZh9xCgU1+e1sBnWDwECdfsADlI//hUGnarYqzL7IU
         l5xWMoXKfzwHjw7AXz3x6VUgS7tGh5kBjHtVZ2jO9hNsNaQ1wCXwmTQqqX78KkQYv2Ry
         aQoABm2eCkqAJRLidexHMFCGN3lprZAncftSXfN/ufwE9mf8dpCTiB2Q9aNY0+NasyGG
         UerwuGoEvQsjlZB0KvLWDaYSeb1gAjUY1eS+0fLqMhy2ByGpVEA5yWejw1gJb6aDIcbn
         QPleo0DsGyO52cQsaKnFotbAZrFn71PpmeuNV+vKZEpcAdb2St4k1DebwZKbcW8Y2XB9
         8lfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PHA2rBvSI2wWwC8MYMKFi+gZjwc8y5if9cn2Roa/bNs=;
        b=mGOrDV4IK/ttYQoKHm30n+noNRbhoxvb8CGYoISnluSljdVQlOhyMAZgdjZsV5fOfO
         5LLjvsPvCFdlBiIQ/xVVgGsBe2ekPHKPqnIqC0Kt88DjSEcel7fTAGaxJLkmhSTQJHfP
         Z8YTIDQPitbmfWWdcaGEbdI3O9Mu1wFdCmBxQcuectNrO/XD+uGxxvdtY9BT5TTvCjKL
         x0ttv8GJjuyF+UnyFlA4OSpXV4SD0zSATFVFc21CImuXrlnM/GKfEVXbltvOrLhpIit7
         JXjd4cjacV87JmuA10MB844w2T2CIs+tCTCJ88Szg8qHwBUK+dx0Jt45jB2XjVhf1tVc
         pGpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDdpGeg0HOpLbGyQWKtdlHlCuhB+I1dJzQf24ptz6i8Jnp50c3
	/SA+2mrFMpFKJ5dVUouVgH8=
X-Google-Smtp-Source: APXvYqyzcobtgKsrpMCWzfsWOlR+lIZPw5Fxa9+Mk7Q7lSHAbZsuL8NkvdLCOZSsY5CPi+lz1qvidw==
X-Received: by 2002:a63:ab49:: with SMTP id k9mr10648028pgp.34.1572579952064;
        Thu, 31 Oct 2019 20:45:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:62da:: with SMTP id m26ls1244169pgv.10.gmail; Thu, 31
 Oct 2019 20:45:51 -0700 (PDT)
X-Received: by 2002:a62:53:: with SMTP id 80mr11245645pfa.192.1572579951639;
        Thu, 31 Oct 2019 20:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572579951; cv=none;
        d=google.com; s=arc-20160816;
        b=swUzHY+axIQb6U0MUIubLKVuh5n9QMqc97bvnBbVEkAhr2EZ9NBRP/pJENoPrOQ0rV
         pGhafe8gHtkLSStJnJ1UQeuu8TP4rK+rRS2LwnPxvyD5kKCsfM+2e3WlCyE7wJ+kEVqq
         ZgeSxCKDz9ArezHI24E8B/2Hxyp2Ukj0ocB9KreXbeXatKvumdodjNvN0RbCuHMep277
         JGXblHZEzogpeMk4/VNkjYBuxapXwfpBzgFXb5mNAFBJLcRU4oYsZ2vkFeKC2fsm2UAj
         dB8yQsKoeiL6H1aFQfY0GlEztMBVQiWRQZVfesGY3zyURn5bM7TLMwayD1rrubxEMRJQ
         qDBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kif7QBlYH7HtQ8QoUYHWsgTTwYoxAYOD/DOI/uUcMFE=;
        b=BlqCqnp9p03XQHNT9dQqjRmKQDwKR6LVvjhmpznqWhefN5zOxRIAyBRKHR+Xaob2Ar
         Yb0hanEJwFemQ02XQ3hXsaH8gxlSIds+KTNh8j1G3FpFezxCtJQNMV1pEd8Cqibj3vnh
         40y7jHp4y2i0QuGpQ7hp8dK3ckDlt56PXvt/U7LfUQt1yPpoBz4Y+NHFgo3qWdLme6oZ
         sj2fsDLH4AK1iir3yHCge9PNhjgBNlwX71q0BqjxTgeYEv3w15Q6Z3yAh5gL2lcc0XJC
         AgtwqQkJkqESwRjDPU3r233gaCL7+sOIGuSvFl4cbM06gzbNcQve2F467jZpboirXW0V
         oqzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PvBowQ8I;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c101si335031pje.1.2019.10.31.20.45.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 3so6057235pfb.10
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:45:51 -0700 (PDT)
X-Received: by 2002:a17:90a:3486:: with SMTP id p6mr12503340pjb.102.1572579951233;
        Thu, 31 Oct 2019 20:45:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s23sm5882129pgh.21.2019.10.31.20.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:45:49 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:45:48 -0700
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
Subject: Re: [PATCH v3 17/17] arm64: implement Shadow Call Stack
Message-ID: <201910312042.5AF689AAC@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-18-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-18-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PvBowQ8I;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Thu, Oct 31, 2019 at 09:46:37AM -0700, samitolvanen@google.com wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

The only suggestion would be calling attention the clearing step (both in
comments below and in the commit log), just to record the earlier
discussion about it.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/Kconfig                   |  5 ++++
>  arch/arm64/include/asm/scs.h         | 37 ++++++++++++++++++++++++++
>  arch/arm64/include/asm/stacktrace.h  |  4 +++
>  arch/arm64/include/asm/thread_info.h |  3 +++
>  arch/arm64/kernel/Makefile           |  1 +
>  arch/arm64/kernel/asm-offsets.c      |  3 +++
>  arch/arm64/kernel/entry.S            | 28 ++++++++++++++++++++
>  arch/arm64/kernel/head.S             |  9 +++++++
>  arch/arm64/kernel/irq.c              |  2 ++
>  arch/arm64/kernel/process.c          |  2 ++
>  arch/arm64/kernel/scs.c              | 39 ++++++++++++++++++++++++++++
>  arch/arm64/kernel/smp.c              |  4 +++
>  12 files changed, 137 insertions(+)
>  create mode 100644 arch/arm64/include/asm/scs.h
>  create mode 100644 arch/arm64/kernel/scs.c
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 42867174920f..f4c94c5e8012 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -66,6 +66,7 @@ config ARM64
>  	select ARCH_USE_QUEUED_RWLOCKS
>  	select ARCH_USE_QUEUED_SPINLOCKS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
> +	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
>  	select ARCH_SUPPORTS_ATOMIC_RMW
>  	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
>  	select ARCH_SUPPORTS_NUMA_BALANCING
> @@ -948,6 +949,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
>  config ARCH_ENABLE_SPLIT_PMD_PTLOCK
>  	def_bool y if PGTABLE_LEVELS > 2
>  
> +# Supported by clang >= 7.0
> +config CC_HAVE_SHADOW_CALL_STACK
> +	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> +
>  config SECCOMP
>  	bool "Enable seccomp to safely compute untrusted bytecode"
>  	---help---
> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> new file mode 100644
> index 000000000000..c50d2b0c6c5f
> --- /dev/null
> +++ b/arch/arm64/include/asm/scs.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_SCS_H
> +#define _ASM_SCS_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <linux/scs.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +extern void scs_init_irq(void);
> +
> +static __always_inline void scs_save(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	asm volatile("mov %0, x18" : "=r" (s));
> +	task_set_scs(tsk, s);
> +}
> +
> +static inline void scs_overflow_check(struct task_struct *tsk)
> +{
> +	if (unlikely(scs_corrupted(tsk)))
> +		panic("corrupted shadow stack detected inside scheduler\n");
> +}
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +static inline void scs_init_irq(void) {}
> +static inline void scs_save(struct task_struct *tsk) {}
> +static inline void scs_overflow_check(struct task_struct *tsk) {}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* __ASSEMBLY __ */
> +
> +#endif /* _ASM_SCS_H */
> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> index 4d9b1f48dc39..b6cf32fb4efe 100644
> --- a/arch/arm64/include/asm/stacktrace.h
> +++ b/arch/arm64/include/asm/stacktrace.h
> @@ -68,6 +68,10 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk);
>  
>  DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +#endif
> +
>  static inline bool on_irq_stack(unsigned long sp,
>  				struct stack_info *info)
>  {
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index f0cec4160136..8c73764b9ed2 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -41,6 +41,9 @@ struct thread_info {
>  #endif
>  		} preempt;
>  	};
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	void			*shadow_call_stack;
> +#endif
>  };
>  
>  #define thread_saved_pc(tsk)	\
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index 478491f07b4f..b3995329d9e5 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
>  obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
>  obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
>  obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
> +obj-$(CONFIG_SHADOW_CALL_STACK)		+= scs.o
>  
>  obj-y					+= vdso/ probes/
>  obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index 214685760e1c..f6762b9ae1e1 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -33,6 +33,9 @@ int main(void)
>    DEFINE(TSK_TI_ADDR_LIMIT,	offsetof(struct task_struct, thread_info.addr_limit));
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>    DEFINE(TSK_TI_TTBR0,		offsetof(struct task_struct, thread_info.ttbr0));
> +#endif
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +  DEFINE(TSK_TI_SCS,		offsetof(struct task_struct, thread_info.shadow_call_stack));
>  #endif
>    DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
>  #ifdef CONFIG_STACKPROTECTOR
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index cf3bd2976e57..12a5bc209280 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -172,6 +172,10 @@ alternative_cb_end
>  
>  	apply_ssbd 1, x22, x23
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
> +	str	xzr, [tsk, #TSK_TI_SCS]
> +#endif
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_current_task tsk
> @@ -278,6 +282,12 @@ alternative_else_nop_endif
>  	ct_user_enter
>  	.endif
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	.if	\el == 0
> +	str	x18, [tsk, #TSK_TI_SCS]		// Save shadow call stack
> +	.endif
> +#endif
> +
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>  	/*
>  	 * Restore access to TTBR0_EL1. If returning to EL0, no need for SPSR
> @@ -383,6 +393,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  
>  	.macro	irq_stack_entry
>  	mov	x19, sp			// preserve the original sp
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	mov	x20, x18		// preserve the original shadow stack
> +#endif
>  
>  	/*
>  	 * Compare sp with the base of the task stack.
> @@ -400,6 +413,12 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  
>  	/* switch to the irq stack */
>  	mov	sp, x26
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* also switch to the irq shadow stack */
> +	ldr_this_cpu x18, irq_shadow_call_stack_ptr, x26
> +#endif
> +
>  9998:
>  	.endm
>  
> @@ -409,6 +428,10 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  	 */
>  	.macro	irq_stack_exit
>  	mov	sp, x19
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* x20 is also preserved */
> +	mov	x18, x20
> +#endif
>  	.endm
>  
>  /* GPRs used by entry code */
> @@ -1155,6 +1178,11 @@ ENTRY(cpu_switch_to)
>  	ldr	lr, [x8]
>  	mov	sp, x9
>  	msr	sp_el0, x1
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	str	x18, [x0, #TSK_TI_SCS]
> +	ldr	x18, [x1, #TSK_TI_SCS]
> +	str	xzr, [x1, #TSK_TI_SCS]

For example here.

> +#endif
>  	ret
>  ENDPROC(cpu_switch_to)
>  NOKPROBE(cpu_switch_to)
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 989b1944cb71..2be977c6496f 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -27,6 +27,7 @@
>  #include <asm/pgtable-hwdef.h>
>  #include <asm/pgtable.h>
>  #include <asm/page.h>
> +#include <asm/scs.h>
>  #include <asm/smp.h>
>  #include <asm/sysreg.h>
>  #include <asm/thread_info.h>
> @@ -424,6 +425,10 @@ __primary_switched:
>  	stp	xzr, x30, [sp, #-16]!
>  	mov	x29, sp
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
> +#endif
> +
>  	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
>  
>  	ldr_l	x4, kimage_vaddr		// Save the offset between
> @@ -731,6 +736,10 @@ __secondary_switched:
>  	ldr	x2, [x0, #CPU_BOOT_TASK]
>  	cbz	x2, __secondary_too_slow
>  	msr	sp_el0, x2
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldr	x18, [x2, #TSK_TI_SCS]		// Set shadow call stack
> +	str	xzr, [x2, #TSK_TI_SCS]

And here. Maybe something like "// Limit visibility of saved SCS"

-Kees

> +#endif
>  	mov	x29, #0
>  	mov	x30, #0
>  	b	secondary_start_kernel
> diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
> index 04a327ccf84d..fe0ca522ff60 100644
> --- a/arch/arm64/kernel/irq.c
> +++ b/arch/arm64/kernel/irq.c
> @@ -21,6 +21,7 @@
>  #include <linux/vmalloc.h>
>  #include <asm/daifflags.h>
>  #include <asm/vmap_stack.h>
> +#include <asm/scs.h>
>  
>  unsigned long irq_err_count;
>  
> @@ -63,6 +64,7 @@ static void init_irq_stacks(void)
>  void __init init_IRQ(void)
>  {
>  	init_irq_stacks();
> +	scs_init_irq();
>  	irqchip_init();
>  	if (!handle_arch_irq)
>  		panic("No interrupt controller found.");
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 71f788cd2b18..5f0aec285848 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -52,6 +52,7 @@
>  #include <asm/mmu_context.h>
>  #include <asm/processor.h>
>  #include <asm/pointer_auth.h>
> +#include <asm/scs.h>
>  #include <asm/stacktrace.h>
>  
>  #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
> @@ -507,6 +508,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>  	uao_thread_switch(next);
>  	ptrauth_thread_switch(next);
>  	ssbs_thread_switch(next);
> +	scs_overflow_check(next);
>  
>  	/*
>  	 * Complete any pending TLB or cache maintenance on this CPU in case
> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> new file mode 100644
> index 000000000000..6f255072c9a9
> --- /dev/null
> +++ b/arch/arm64/kernel/scs.c
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/percpu.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +
> +#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
> +DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
> +	__aligned(SCS_SIZE);
> +#endif
> +
> +void scs_init_irq(void)
> +{
> +	int cpu;
> +
> +	for_each_possible_cpu(cpu) {
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +		unsigned long *p;
> +
> +		p = __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
> +					 VMALLOC_START, VMALLOC_END,
> +					 SCS_GFP, PAGE_KERNEL,
> +					 0, cpu_to_node(cpu),
> +					 __builtin_return_address(0));
> +
> +		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
> +#else
> +		per_cpu(irq_shadow_call_stack_ptr, cpu) =
> +			per_cpu(irq_shadow_call_stack, cpu);
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +	}
> +}
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index dc9fe879c279..cc1938a585d2 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -44,6 +44,7 @@
>  #include <asm/pgtable.h>
>  #include <asm/pgalloc.h>
>  #include <asm/processor.h>
> +#include <asm/scs.h>
>  #include <asm/smp_plat.h>
>  #include <asm/sections.h>
>  #include <asm/tlbflush.h>
> @@ -357,6 +358,9 @@ void cpu_die(void)
>  {
>  	unsigned int cpu = smp_processor_id();
>  
> +	/* Save the shadow stack pointer before exiting the idle task */
> +	scs_save(current);
> +
>  	idle_task_exit();
>  
>  	local_daif_mask();
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312042.5AF689AAC%40keescook.
