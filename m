Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBBWEQLYQKGQEVL57BPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E65B13EB2E
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:48:55 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id c127sf8522352vkh.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:48:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196934; cv=pass;
        d=google.com; s=arc-20160816;
        b=gB1HcnW3y+vsr0RQaLAmdP5pg9aS2ryAFIcYJbD/10DCh6c9sJ/8ykABRMEwOe/cxV
         sKgZDevUzv2wyxn0Mv8laHrOC6y2lFuT071KPRHJ6zQGlrtT8acxrH/p9XThNgQXkSBp
         riXyos1dJiCnM1G1c2QfzvD/w3fkM980FqIxk8lMCL8e4OvJByB1dzASuy8XGV8O+zsg
         9mbKYPq+U3McscAzgpCUcRpf7xa0qeAqo6PTr3lvjkl7o/dgL6wb0oMrofa7nucuzmkU
         /9ObRbNGRGfYFri5iqctcNWxqrZhNTjZKr4uAgMa/4qIa6V/uWoVVIXMeMk3v1QJmQhT
         o56A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/tnUjlQrEhtoho7JQHF9Bdsj6CrXiBpMQQYtYvdDW08=;
        b=YDhArTtpPSzLMX887sUR1wijwxadOuY4M/Ar33ILdAPv23LxQ0lE5d/Yj15roEfvKS
         lElHhi0/wrYFAkM0yvUcXMqy2XJzRgnbTngtYoqiuuuXF+a+JK9gcTbBtERM+oc6OMpQ
         awDU/9eBI2gc1+Atpjc15hxqA5mVCNUQg59yI06ifvwxgWNS6BZPaCEjBMtwXpGugS+3
         Nr5m3UDCegvkhDClrsahcKguE9iZFe5Iw5Q/KTcHG3MvJ1CFV1DrPMtuXDorruyLIx2U
         pA7evf3PUn0XPlc0jR79V9Dem2iIMno95iWsX3lBx8gvOLszYY32+sNLm1t/lFknXeji
         0vXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qZiF6LJX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/tnUjlQrEhtoho7JQHF9Bdsj6CrXiBpMQQYtYvdDW08=;
        b=CzzMqTbopFtTHGqrNfvXjZVrl9jYjcmCnqVLDJgD40yC2L8fjCHrINhinC+i0g7qt8
         20lwttP6JVXupBzEjrIx1DG8RdH3tYusRj2KZLolnB28SrBAu3+vxrNd67OU2OF1TEP1
         Avg9LCn0xVnqzJ7AObG5dRHy3sFwO/h6fJr75CDWI022rZWEfwVLlLE4/wpzfKCIEH5M
         AZBEQX6XNix5myYMlkXzkdcrpNXkhz6sYh2VOmnfOBEbxEDrPLCL2sLArIpZc9HZfEuB
         N5NeU6T183vdblV8MaQA4ev1TdVj8cpGBUem98kJ4Hd/c1wWDov6Tyua8PTMzy2juO3I
         IjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/tnUjlQrEhtoho7JQHF9Bdsj6CrXiBpMQQYtYvdDW08=;
        b=ru4L8XChiIEO4NluBi+A2uoTDO/VM6WEYQx1pIFymi9BGPX9/hGohUL03sOPy3b9nU
         sZcnSQF/SG3TVb+ga22GNS7LGtMQ8agW31D9I3OM/88ddDpaZ6NCFT8yF4c1uzXSbsPz
         qNRBPUwKqwfMi38FpavvPMwnfoiOz+pgitKkJe15L4nBi2B2geT53yCAAmVXxTz6fY31
         716EEpr6avJf7q66P7o79YxXcLR5Uu7AXSts4CqO/HmJAS5Cwy/J2ceburgUqaZCxePz
         +OUf4umscQMZMV971Qtdu/B3rJEMytIbZrNMQITK4f7woe2e1P7s9ItrKEeVIp87hCy8
         bACw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWigNl+u4eZ1fhq0A6yegIUT0vUnovS/nIPQtiFQ+hBlNs/2Lbw
	PWnr+ts8ZxWB+EOM57eD8Lw=
X-Google-Smtp-Source: APXvYqxy76ha0bBpiqciz43BXXmEcRH5MqAs3n/WMq76+i/aj47agA9Rh/NGzF6P+ihO6E6XNphgAQ==
X-Received: by 2002:ab0:7219:: with SMTP id u25mr21382830uao.10.1579196934313;
        Thu, 16 Jan 2020 09:48:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:201d:: with SMTP id p29ls933981vsr.5.gmail; Thu, 16
 Jan 2020 09:48:54 -0800 (PST)
X-Received: by 2002:a67:15c7:: with SMTP id 190mr2311850vsv.178.1579196933964;
        Thu, 16 Jan 2020 09:48:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196933; cv=none;
        d=google.com; s=arc-20160816;
        b=Y94zDkmo9hWU6Ejhv46aR5T4M8DHblOK+Yx484KV9HoWdU2TN4JBYlzjkjejRbueer
         K51Iu1FY82JV3uXexoT412/GdFuEcsM+7ZgaEml4dZ/Hytlm5Fa5k3CEGNNdHBNnXcuZ
         XGidsrmrcu1GY6hWEkkhaacISwSwskHPycwS1mcwtKcKcxxjVn/WIiJRMIJhZElHGZ/G
         oJVOHQihxfWlgjkwwHWW4uzU7DoPHuxNQMD+lu7lCRFs8XcaY0Luddw+8NMUN1w2lo5o
         ZgwylFa+5InGa3wLfmut0w9LFsYLmItjhtv/9UB2YbLBWq4reqIIf7B6uJhjrEjdn8Pk
         bkFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OYztDe2tzBi+CmHGFwOVSuTdnjSx93pdzK65apb7rvg=;
        b=sVBBS2TFNKQi1fIPfk84czsG5Eek7Ep8vLoKFRjfR03TbndXkf+2js+Sm3+Z8Hrbc+
         75X83l6pHw27T/XzxLfTq1SQPml3q1v0KVheHSQ7tQmmBeh8Scl+YFntO7zqu0IQfQj9
         a5C1/7KVVEnrDxrP9sWaY53xg4M5p5D+JdfXaP+/yaxxm5EkK7IlON8aNAR+kCzTlFrM
         9i+yuke6xDg1zk9LD0G/QNo/Cl/WBFFkc0LtZOTYasPxb+/cidHzB9sEHKYLz7OPO0JZ
         V7f6JFx+XwIQ0gHYM2HZmOZJtWf+9MtP5wO206zZfI/e7O1b7U/nlx+5NiTTPUu25y7K
         Dxcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qZiF6LJX;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t16si351991vsn.0.2020.01.16.09.48.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:48:53 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F0A5D246A0;
	Thu, 16 Jan 2020 17:48:49 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:48:47 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>, james.morse@arm.com
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: Re: [PATCH v6 15/15] arm64: scs: add shadow stacks for SDEI
Message-ID: <20200116174846.GG21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-16-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qZiF6LJX;       spf=pass
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

[+James, since this needs his Ack before it can be merged]

On Fri, Dec 06, 2019 at 02:13:51PM -0800, Sami Tolvanen wrote:
> This change adds per-CPU shadow call stacks for the SDEI handler.
> Similarly to how the kernel stacks are handled, we add separate shadow
> stacks for normal and critical events.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/scs.h |   2 +
>  arch/arm64/kernel/entry.S    |  14 ++++-
>  arch/arm64/kernel/scs.c      | 106 +++++++++++++++++++++++++++++------
>  arch/arm64/kernel/sdei.c     |   7 +++
>  4 files changed, 112 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> index c50d2b0c6c5f..8e327e14bc15 100644
> --- a/arch/arm64/include/asm/scs.h
> +++ b/arch/arm64/include/asm/scs.h
> @@ -9,6 +9,7 @@
>  #ifdef CONFIG_SHADOW_CALL_STACK
>  
>  extern void scs_init_irq(void);
> +extern int scs_init_sdei(void);
>  
>  static __always_inline void scs_save(struct task_struct *tsk)
>  {
> @@ -27,6 +28,7 @@ static inline void scs_overflow_check(struct task_struct *tsk)
>  #else /* CONFIG_SHADOW_CALL_STACK */
>  
>  static inline void scs_init_irq(void) {}
> +static inline int scs_init_sdei(void) { return 0; }
>  static inline void scs_save(struct task_struct *tsk) {}
>  static inline void scs_overflow_check(struct task_struct *tsk) {}
>  
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 7aa2d366b2df..9327c3d21b64 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -1048,13 +1048,16 @@ ENTRY(__sdei_asm_handler)
>  
>  	mov	x19, x1
>  
> +#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
> +	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
> +#endif
> +
>  #ifdef CONFIG_VMAP_STACK
>  	/*
>  	 * entry.S may have been using sp as a scratch register, find whether
>  	 * this is a normal or critical event and switch to the appropriate
>  	 * stack for this CPU.
>  	 */
> -	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
>  	cbnz	w4, 1f
>  	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
>  	b	2f
> @@ -1064,6 +1067,15 @@ ENTRY(__sdei_asm_handler)
>  	mov	sp, x5
>  #endif
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* Use a separate shadow call stack for normal and critical events */
> +	cbnz	w4, 3f
> +	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal_ptr, tmp=x6
> +	b	4f
> +3:	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical_ptr, tmp=x6
> +4:
> +#endif
> +
>  	/*
>  	 * We may have interrupted userspace, or a guest, or exit-from or
>  	 * return-to either of these. We can't trust sp_el0, restore it.
> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> index eaadf5430baa..dddb7c56518b 100644
> --- a/arch/arm64/kernel/scs.c
> +++ b/arch/arm64/kernel/scs.c
> @@ -10,31 +10,105 @@
>  #include <asm/pgtable.h>
>  #include <asm/scs.h>
>  
> -DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +#define DECLARE_SCS(name)						\
> +	DECLARE_PER_CPU(unsigned long *, name ## _ptr);			\
> +	DECLARE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)
>  
> -#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
> -DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
> -	__aligned(SCS_SIZE);
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +#define DEFINE_SCS(name)						\
> +	DEFINE_PER_CPU(unsigned long *, name ## _ptr)
> +#else
> +/* Allocate a static per-CPU shadow stack */
> +#define DEFINE_SCS(name)						\
> +	DEFINE_PER_CPU(unsigned long *, name ## _ptr);			\
> +	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
> +		__aligned(SCS_SIZE)
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +DECLARE_SCS(irq_shadow_call_stack);
> +DECLARE_SCS(sdei_shadow_call_stack_normal);
> +DECLARE_SCS(sdei_shadow_call_stack_critical);
> +
> +DEFINE_SCS(irq_shadow_call_stack);
> +#ifdef CONFIG_ARM_SDE_INTERFACE
> +DEFINE_SCS(sdei_shadow_call_stack_normal);
> +DEFINE_SCS(sdei_shadow_call_stack_critical);
>  #endif
>  
> +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
> +{
> +	unsigned long *p;
> +
> +	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				 VMALLOC_START, VMALLOC_END,
> +				 GFP_SCS, PAGE_KERNEL,
> +				 0, cpu_to_node(cpu),
> +				 __builtin_return_address(0));
> +
> +	if (!p)
> +		return -ENOMEM;
> +	per_cpu(*ptr, cpu) = p;
> +
> +	return 0;
> +}
> +
> +static void scs_free_percpu(unsigned long * __percpu *ptr, int cpu)
> +{
> +	unsigned long *p = per_cpu(*ptr, cpu);
> +
> +	if (p) {
> +		per_cpu(*ptr, cpu) = NULL;
> +		vfree(p);
> +	}
> +}
> +
> +static void scs_free_sdei(void)
> +{
> +	int cpu;
> +
> +	for_each_possible_cpu(cpu) {
> +		scs_free_percpu(&sdei_shadow_call_stack_normal_ptr, cpu);
> +		scs_free_percpu(&sdei_shadow_call_stack_critical_ptr, cpu);
> +	}
> +}
> +
>  void scs_init_irq(void)
>  {
>  	int cpu;
>  
>  	for_each_possible_cpu(cpu) {
> -#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> -		unsigned long *p;
> +		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP))
> +			WARN_ON(scs_alloc_percpu(&irq_shadow_call_stack_ptr,
> +						 cpu));
> +		else
> +			per_cpu(irq_shadow_call_stack_ptr, cpu) =
> +				per_cpu(irq_shadow_call_stack, cpu);
> +	}
> +}
>  
> -		p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> -					 VMALLOC_START, VMALLOC_END,
> -					 GFP_SCS, PAGE_KERNEL,
> -					 0, cpu_to_node(cpu),
> -					 __builtin_return_address(0));
> +int scs_init_sdei(void)
> +{
> +	int cpu;
>  
> -		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
> -#else
> -		per_cpu(irq_shadow_call_stack_ptr, cpu) =
> -			per_cpu(irq_shadow_call_stack, cpu);
> -#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +	if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
> +		return 0;
> +
> +	for_each_possible_cpu(cpu) {
> +		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP)) {
> +			if (scs_alloc_percpu(
> +				&sdei_shadow_call_stack_normal_ptr, cpu) ||
> +			    scs_alloc_percpu(
> +				&sdei_shadow_call_stack_critical_ptr, cpu)) {
> +				scs_free_sdei();
> +				return -ENOMEM;
> +			}
> +		} else {
> +			per_cpu(sdei_shadow_call_stack_normal_ptr, cpu) =
> +				per_cpu(sdei_shadow_call_stack_normal, cpu);
> +			per_cpu(sdei_shadow_call_stack_critical_ptr, cpu) =
> +				per_cpu(sdei_shadow_call_stack_critical, cpu);
> +		}
>  	}
> +
> +	return 0;
>  }
> diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
> index d6259dac62b6..2854b9f7760a 100644
> --- a/arch/arm64/kernel/sdei.c
> +++ b/arch/arm64/kernel/sdei.c
> @@ -13,6 +13,7 @@
>  #include <asm/kprobes.h>
>  #include <asm/mmu.h>
>  #include <asm/ptrace.h>
> +#include <asm/scs.h>
>  #include <asm/sections.h>
>  #include <asm/stacktrace.h>
>  #include <asm/sysreg.h>
> @@ -162,6 +163,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
>  			return 0;
>  	}
>  
> +	if (scs_init_sdei()) {
> +		if (IS_ENABLED(CONFIG_VMAP_STACK))
> +			free_sdei_stacks();
> +		return 0;
> +	}
> +
>  	sdei_exit_mode = (conduit == SMCCC_CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
>  
>  #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
> -- 
> 2.24.0.393.g34dc348eaf-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174846.GG21396%40willie-the-truck.
