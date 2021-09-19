Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5G6T2FAMGQE7RMYPYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FA3410D82
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 23:45:25 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r5-20020ac85e85000000b0029bd6ee5179sf161383602qtx.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 14:45:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632087924; cv=pass;
        d=google.com; s=arc-20160816;
        b=vNgVmQq2hQWBG4yZkc7yimAQ69tZfW2aKX+0Wlo9mokeB9sF0W9yk/PeZRDT+QQGia
         yJLCiNhK1MXRtkG7xVCLL8hv/I5mWAxZllTKEIdF26hfm5nJVykjVb81D1Zb5S/wQKSP
         n/EJFBQIuZs0EIOA5Pnw9utVIVzuGT1ZmjtfBTVQ+fEu78yYddjgvWfRA/yTrti0k4HC
         +Yy2FFg4aJef7XEOo72OoVd796kgiTEw1+M5atL5/X3pgcEovYKEJwpvE6b3SlLp4MQW
         CXyxK6Td4OSHt6+s7GHlL8GTXDhFHs0DPGfb3s1DU1RWNsqtVMQv8SOo8ixTBml7MhFA
         jcQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WCaydRua/5lKQqNi4pOc5u+xEss6xreBVKdLKJO6XLQ=;
        b=eGeW4bZGoZN7GlCnMbhV7ume3HLh+QLZlOheKAYtWPGIBAOpSAeZoO8T6pqwxipGd6
         Md901lucfiuxCgsvYT8gYt1e0P2g8Loznpq3FFQ9KT8TPeYsmYTbEWBJszLwJLxNzqDy
         AMEflfnkuc03tIATLr3Aqjy31bEPKyGxRAU3wh8tAyRuGH2EYo+AeTABgghvboAjVRlM
         pd0rnDSVOODYD3ZgtcOyFdzMMVQWWf2/u43xwcV1fIrPA1Ank8wdO1XVkbN0pthdyb1o
         2vsSXF8F+4dqsd+vpJugi3E5eiOasEimh5vxoG9uSLZ0MXOlyzV5ICSIIlXCNaoncEcR
         ieqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jkNZeaa9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WCaydRua/5lKQqNi4pOc5u+xEss6xreBVKdLKJO6XLQ=;
        b=M4Bs0ylLkVEGKRar+RsAIKNyoej0Rf0FDYju5BijqTFltbbIi9bAyPXIQUAx/6PlbL
         UaJZJgp+pVrYd8QyiN3/vW/xLwEdsoZ69WD9eyZA5y3xbf/s9xpc23UBw4dcRetHpmev
         6WvLlDMLz+D0ASw3LxeOpegTZb63zW7rnWtyZZJQdI1BgOZ+JPk9/CxpyN68xWtz1dtU
         px9JY9IlAyOrzBAy+o8ppvlvRKjTRQF7L9bIKoYoPcg4hBZwtRjsdym+lYMhtjK1hEM9
         IB7QoEPEmkRWvG8XC6cMGeReIG6qMeE2UkkhqlB/zQT6AQee7RFaLQvem1SIAkD6Db3b
         UJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WCaydRua/5lKQqNi4pOc5u+xEss6xreBVKdLKJO6XLQ=;
        b=OOgpOVgEDPx5+FKjJV6zLGFcZgKUOi1002Y7wF3hL52y7iPRFtzgXjdYOkPo+r2YHh
         gnk2dZlhfhdDesR6Daw0nOA73lO9YTXO8k+I9Y9Dr7VdmxN6Wx2QuWmQZGm3M+4ilqNZ
         2KOauat/cGELQwf5pXUvpwv7drnk55hb7m+kwBxac2XB0NY2+KTBQhTsQahApKy0N7C0
         GP2e4bN6d/rI6/zItFTP1JXdH7GfSzdX08beCzYwQ+NuOedlFq5cBbznbvIA+xG5V8uH
         6Ate+iL342mI0A/ump+DGkp2ju1hO+nvcKJ/2BBxKUpGpLhD4hB8UTw0YIVnHn3GABJF
         +9Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lZhcye79DQ3+QrrA3wv9uZO9pZXDB4oSUUyrIWIg/Tm+pqDfO
	wTcZnraHIax67177Acfyk/M=
X-Google-Smtp-Source: ABdhPJx4AtXdm4NJ+c/vfW2J4mUJoA5I/1+7HKWYCTIByhZxh9h8WiUUf7+ww589iVeIev7Wj6nmAQ==
X-Received: by 2002:a25:c612:: with SMTP id k18mr29079416ybf.69.1632087924540;
        Sun, 19 Sep 2021 14:45:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d7d3:: with SMTP id o202ls3304773ybg.3.gmail; Sun, 19
 Sep 2021 14:45:24 -0700 (PDT)
X-Received: by 2002:a25:2256:: with SMTP id i83mr28001321ybi.269.1632087924022;
        Sun, 19 Sep 2021 14:45:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632087924; cv=none;
        d=google.com; s=arc-20160816;
        b=yhLh1SIP9XmAdgB7IlZ0SkVBPKE3Iro+K+d58aQrwL4vkVx6Xddbo/QIlPZ3pPyMH2
         zhuTkqjixvDGjpDkn9LpHAkYx0bgGJLa6bIaI0qHV8hHJ0G93SfDLud6v+pb8e1L+B7G
         LruyNBKteZ7HxQNzQaPvvLZFi0H6QoeEJ8OCJUa6p5Wv2m515tTKkpi78sZyqXLhx7Ef
         PurjcmS5g6UyXsebXKjzC+W4x0MdzEV6QwRBdTR8SoHNDnjEiXq5y+kornn/XAf9C9s6
         6o5OfiBdqjzcpCohs1Oh9To423HD+Lo/1gMT4RDUktvD5zoCFlIIU57HRLvFjsypMHGW
         rO0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rKQ6ckwwSL4MH6zofcIeDU8LlxpAB+FUB44Y3MwMFn0=;
        b=Vgly48Rw8NCoaEaBjzcp7ScOztoh+M/DNubYcu/F8+Nvn4o/FkDnB9gkF/VCk1GJaD
         8rVAo1pqHChRhprg+Va/0UMwzBkx/Fai/5qCuIHJjCAlmPKG3PJ8r50Izu6W/xnUIwMb
         R0SbVeaz/tWasSFwk2uIf24lhhdb1qfjmHClcVlXYSGeT5OkgAeHib4q5C5LCXJT0RKC
         9VK2pJD2374XkA7Pfbz4LkJooU6M5XMF9awYSaXWc6Sk2R5sisJJTZdrBrJrXl/c6wbv
         51cecedX0+smEk5usNzgFca25lfujMSPWQMl1ZvW1U3dQiB4qdYy+27l+fTYeLZ4dmmi
         18ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jkNZeaa9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x6si970239ybn.3.2021.09.19.14.45.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Sep 2021 14:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 72FBC60F92;
	Sun, 19 Sep 2021 21:45:18 +0000 (UTC)
Date: Sun, 19 Sep 2021 14:45:15 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Dan Li <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, keescook@chromium.org,
	ndesaulniers@google.com, akpm@linux-foundation.org,
	tglx@linutronix.de, peterz@infradead.org, samitolvanen@google.com,
	frederic@kernel.org, rppt@kernel.org, yifeifz2@illinois.edu,
	viresh.kumar@linaro.org, colin.king@canonical.com,
	andreyknvl@gmail.com, mark.rutland@arm.com, ojeda@kernel.org,
	will@kernel.org, ardb@kernel.org, luc.vanoostenryck@gmail.com,
	elver@google.com, nivedita@alum.mit.edu,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
Message-ID: <YUeva0jP7P2qCr+R@archlinux-ax161>
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jkNZeaa9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Dan,

A couple of initial high level comments, I do not really feel qualified
to review the plugin itself.

On Mon, Sep 20, 2021 at 12:37:16AM +0800, Dan Li wrote:
> The Clang-based shadow call stack protection has been integrated into the
> mainline, but kernel compiled by gcc cannot enable this feature for now.
> 
> This Patch supports gcc-based SCS protection by adding a plugin.
> 
> For each function that x30 will be pushed onto the stack during execution,
> this plugin:
> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
>    to current SCS
> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
>    restore x30
> 
> At present, this patch has been successfully compiled(based on defconfig)
> in the following gcc versions(if plugin is supported) and startup normally:
> * 6.3.1
> * 7.3.1
> * 7.5.0
> * 8.2.1
> * 9.2.0
> * 10.3.1
> 
> with commands:
> make ARCH=arm64 defconfig
> ./scripts/config -e CONFIG_GCC_PLUGINS -e CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
> 
> ---
> FYI:
> 1) The function can be used to test whether the shadow stack is effective:
> //noinline void __noscs scs_test(void)
> noinline void scs_test(void)
> {
>     register unsigned long *sp asm("sp");
>     unsigned long * lr = sp + 1;
> 
>     asm volatile("":::"x30");
>     *lr = 0;
> }
> 
> ffff800010012670 <scs_test>:
> ffff800010012670:       f800865e        str     x30, [x18], #8
> ffff800010012674:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010012678:       910003fd        mov     x29, sp
> ffff80001001267c:       f90007ff        str     xzr, [sp, #8]
> ffff800010012680:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010012684:       f85f8e5e        ldr     x30, [x18, #-8]!
> ffff800010012688:       d65f03c0        ret
> 
> If SCS protection is enabled, this function will return normally.
> If the function has __noscs attribute (scs disabled), it will crash due to 0
> address access.
> 
> 2) Other tests are in progress ...
> 
> Signed-off-by: Dan Li <ashimida@linux.alibaba.com>
> ---
>  Makefile                               |   2 +-
>  arch/Kconfig                           |   2 +-
>  include/linux/compiler-gcc.h           |   4 +
>  scripts/Makefile.gcc-plugins           |   4 +
>  scripts/gcc-plugins/Kconfig            |   8 ++
>  scripts/gcc-plugins/arm64_scs_plugin.c | 256 +++++++++++++++++++++++++++++++++
>  6 files changed, 274 insertions(+), 2 deletions(-)
>  create mode 100644 scripts/gcc-plugins/arm64_scs_plugin.c
> 
> diff --git a/Makefile b/Makefile
> index 61741e9..0f0121a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -924,7 +924,7 @@ LDFLAGS_vmlinux += --gc-sections
>  endif
>  
>  ifdef CONFIG_SHADOW_CALL_STACK

I would rather see this become

ifeq ($(CONFIG_SHADOW_CALL_STACK)$(CONFIG_CC_IS_CLANG), yy)
...
endif

rather than just avoiding assigning to CC_FLAGS_SCS.

However, how does disabling the shadow call stack plugin work for a
whole translation unit or directory? There are a few places where
CC_FLAGS_SCS are filtered out and I am not sure I see where that happens
here? It looks like the plugin has a disabled option but I do not see it
hooked in anywhere.

> -CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +CC_FLAGS_SCS	:= $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
>  KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 98db634..81ff127 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> -	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK

Is this logic right? SHADOW_CALL_STACK is only supported by arm64 (as
they set ARCH_SUPPORTS_SHADOW_CALL_STACK) but now you are enabling it
for any architecture, even though it seems like it still only works on
arm64. I think this wants to be

depends on (CC_IS_CLANG || GCC_PLUGIN_SHADOW_CALL_STACK) && ARCH_SUPPORTS_SHADOW_CALL_STACK

>  	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>  	help
>  	  This option enables Clang's Shadow Call Stack, which uses a
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index cb9217f..426c8e5 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -50,6 +50,10 @@
>  #define __latent_entropy __attribute__((latent_entropy))
>  #endif
>  
> +#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
> +#define __noscs __attribute__((no_shadow_call_stack))
> +#endif
> +
>  /*
>   * calling noreturn functions, __builtin_unreachable() and __builtin_trap()
>   * confuse the stack allocation in gcc, leading to overly large stack
> diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
> index 952e468..eeaf2c6 100644
> --- a/scripts/Makefile.gcc-plugins
> +++ b/scripts/Makefile.gcc-plugins
> @@ -46,6 +46,10 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
>  endif
>  export DISABLE_ARM_SSP_PER_TASK_PLUGIN
>  
> +gcc-plugin-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK) += arm64_scs_plugin.so
> +gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)	\
> +		+= -DSHADOW_CALL_STACK_PLUGIN
> +
>  # All the plugin CFLAGS are collected here in case a build target needs to
>  # filter them out of the KBUILD_CFLAGS.
>  GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> index ab9eb4c..2534195e 100644
> --- a/scripts/gcc-plugins/Kconfig
> +++ b/scripts/gcc-plugins/Kconfig
> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
>  
>  if GCC_PLUGINS
>  
> +config GCC_PLUGIN_SHADOW_CALL_STACK
> +	bool "GCC Shadow Call Stack plugin"

This should also have a

depends on ARCH_SUPPORTS_SHADOW_CALL_STACK

if you are selecting SHADOW_CALL_STACK, as selecting does not account
for dependencies.

> +	select SHADOW_CALL_STACK
> +	help
> +	  This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
> +	  compiled by gcc. Its principle is basically the same as that of CLANG.
> +	  For more information, please refer to "config SHADOW_CALL_STACK"
> +
>  config GCC_PLUGIN_CYC_COMPLEXITY
>  	bool "Compute the cyclomatic complexity of a function" if EXPERT
>  	depends on !COMPILE_TEST	# too noisy

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUeva0jP7P2qCr%2BR%40archlinux-ax161.
