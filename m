Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZPWXSFQMGQE5T7JADI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EEB4340B2
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 23:40:55 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id j3-20020a056a00234300b0044d605e3e0fsf622226pfj.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 14:40:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634679653; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYC9xgoiOcONnyo0KyxMD25qm5c79b8yCLpYhlTl0eL1VpHOJtDeQAdUgpyQNE9MJr
         TSENLX+cXW92LbRAoU+sXsr3uzwNg8ypbQ2+HmxX0gqVqMl3MXKLllxesqxPEYKHq2N+
         qbAtMr+ja3MnpB14gSzvf2u71BryeMLY0X3jWWb3sCTYBBLAgkVi/8oeOYw1qObEnQJj
         wvW9PRb/ok06ypIPTyuskuxvEXQzwjUhNz4h1MmdYLKp6j3kD/N4Zmi4DDV/Y1d0PmYP
         xVtz9CoRpuXDGBJsotwEvjbutmkE8ynmg798HCa3eBXywDc3dD4jVtTkFBvn7fmgxa/Y
         YPOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/8rKyyJyuqN6q1Q0Lr19GYudwZ1fTggGTfWHeTeVFNU=;
        b=hgpks07un808I9i3zoQIDjqsLmdoS3J2xgMunUU2R/DkantyR0F1pxG/JRvvK8k9Sr
         J4JBXfHtM+Y2wWVD4PHLPulPo2Kk1SZRnjmxIaMthhCz6wsGg08Xm2E+m2vw3iexatrw
         81k9bt5BMLcJxxAUXhpjPuJWoL67hiMJUmqnuBNNjGVQDvxzv22iRM6S3F18M+gx5OFD
         PaHg1r3CJKoNl+im6lmTyLSHE80imjfofCI1XGkSSQEOk8+/0MLVJDhkvVqOE2YEyqD9
         FDSfnbkUEbC8GxnVq++2HVZ2f3hbkRq9o6lgNPfND5OOX1t5Gkg91w8nXrnn1p6pZP+7
         i8LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fEy6dIM/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/8rKyyJyuqN6q1Q0Lr19GYudwZ1fTggGTfWHeTeVFNU=;
        b=ZwB7SR8dvCbDE9R/A7TqVQ3DDnzJ6rqgZE+4yE7KfipgAw4HcQEuta90aH8bX3NxQQ
         ZwicV2dZ1j6hY/pv57lDk0lI87g+fSJKBSYxRdJkfABl9Y5/jj1aOo/k+vxQZUhWH+6S
         haYK+O8PCqyS9AYWZcV8H9bVY/GvrzIJqes/V+/FTIltrj7Ea+5IvcMsfgme6IRAQhxp
         VxXVqahzWRa8mMQOuxapjQNpkpJi1QY9QwDEM/lMGURbkTDZAwrGrmWshVo0f2L0+h7G
         Wht2tQoAGgNAP59T4j7w33l/R24rApIH4db58fFZBjBjLlpX/rb79/DVEzOXZlFM22v7
         BdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/8rKyyJyuqN6q1Q0Lr19GYudwZ1fTggGTfWHeTeVFNU=;
        b=3CikBkFERA82ny16NMsiF52lEjvPHQ4A9HSMnDNWvbZZhq1pjQo03Dtb35uEeOQwvD
         FZpv3YOFIPjVxUw6XyG0r4DeA2POvuDvrkAGsC6pPRb/x3sL6t8EUaXB90h1rquIXBjC
         YqdIK/0/guQ3Io0csBwT4hi7yiexiVS/GKRDLi7u6ksxGZSe0Brv7fmGJ4ymAHlHP+BB
         EqZ24RzRYLVI2eIeqEumajZtco38Vs7ItgkdQpN5sTJt2vWiHTJXqeJiDOAwoS3UyGIt
         adDc6dZ+2OeQHolxNRGZF6srRbrnwjz48WFASB6GmR4vFxz/Xv61x/yNU4xt2al/6B6b
         8PpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304/M3DIEDmumn90Zam1Y1mudKIm/+EvNpMiHmZSng+CnUL43iI
	hf2h3x7+TMw4UDbvfuEvSkc=
X-Google-Smtp-Source: ABdhPJxOUiYz4wda0OURU0Vyh5phMLefDp3RNwvx5zCA/lyxHxUslvcMSvnCr38du0GoMkMhK/BsqA==
X-Received: by 2002:a17:90b:1d8e:: with SMTP id pf14mr2526793pjb.125.1634679653149;
        Tue, 19 Oct 2021 14:40:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:cec4:: with SMTP id d4ls108917plg.1.gmail; Tue, 19
 Oct 2021 14:40:52 -0700 (PDT)
X-Received: by 2002:a17:90a:7d0a:: with SMTP id g10mr2764213pjl.73.1634679652559;
        Tue, 19 Oct 2021 14:40:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634679652; cv=none;
        d=google.com; s=arc-20160816;
        b=ebAHawqF2t8Nw1Ko/XcW2coJunoJEkOpCxsToZSu6MpJm9MI/dSGcBmx1WyQQ5YVTQ
         WtqmOfiNSR87n0+cMGlKx3BcNyWh+crIUKMixVtjsInfrxHDaDJvSek4MTSGPNSXZNt8
         TJAg7Ssr1GvFnNb9DW5cJJNN7jxkoa1X6sXRxacuBkRKk3+zp7leCtSTs7I520LOl3ez
         DJKVAJAUB4BitRj6Cz6EOi2I+nHi3oM1ImHCVZtcmYPxoTU8RLB/jexxNJkD5RqLxh4D
         FtQxlBm7r3Dp1+1HUQm5/Ny/rV21PvkgvBjmPPLXYdx289t71E9ypPJNAuT25Mbn+fk5
         hu0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zWtOO/v2hnFSEhmtipd+frJ/MBFm3urnVpd6FwGzIII=;
        b=jB2Q/oPX8PjyqNZEejqyLUIWEhia3cQ3D6iLLUzYTyXiKMNjLajvwRI9kI4yJGFaYN
         p6qBLaa9FWN5cvVAj+xBI80/E96O5fRmruBduOwvYnu9TorrmGQZM0JR2aFgbaIwDKsb
         MuOd0+fhzxn2ai9dHM55pNNvVNtTBDgmkTOoeTAmFe4JVjxGegh9C0kAIrSJBVxAuLmp
         vr9vCF5aij59ekYQ266JzNgTW6xY6WR4wmNa2ORvZCSrkfgJKPW0AShM9acWnhEjhoUK
         K3omPaNJIHSc3p7ZlHJNIUS7nHlGuAGv7ebYRw5feNz8urSFJdzFMDv34CtgQ9MVGRLR
         KO4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fEy6dIM/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id o22si16127pjp.2.2021.10.19.14.40.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 14:40:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id ez7-20020a17090ae14700b001a132a1679bso954114pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 19 Oct 2021 14:40:52 -0700 (PDT)
X-Received: by 2002:a17:90a:600d:: with SMTP id y13mr2692674pji.84.1634679652074;
        Tue, 19 Oct 2021 14:40:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t4sm194400pfj.13.2021.10.19.14.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 14:40:51 -0700 (PDT)
Date: Tue, 19 Oct 2021 14:40:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Li <ashimida@linux.alibaba.com>
Cc: Qing Zhao <qing.zhao@oracle.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ard Biesheuvel <ardb@kernel.org>, masahiroy@kernel.org,
	michal.lkml@markovi.net, catalin.marinas@arm.com, will@kernel.org,
	nathan@kernel.org, ndesaulniers@google.com, tglx@linutronix.de,
	akpm@linux-foundation.org, frederic@kernel.org, rppt@kernel.org,
	mark.rutland@arm.com, yifeifz2@illinois.edu, rostedt@goodmis.org,
	viresh.kumar@linaro.org, andreyknvl@gmail.com,
	colin.king@canonical.com, ojeda@kernel.org,
	luc.vanoostenryck@gmail.com, elver@google.com,
	nivedita@alum.mit.edu, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [PATCH V5]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
Message-ID: <202110191006.68BB660@keescook>
References: <1634337180-92127-1-git-send-email-ashimida@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1634337180-92127-1-git-send-email-ashimida@linux.alibaba.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fEy6dIM/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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

On Sat, Oct 16, 2021 at 06:33:00AM +0800, Dan Li wrote:
> This patch supports gcc-based SCS protection on ARM64 by adding a plugin.
> 
> For each function that x30 will be pushed onto the stack during execution,
> this plugin, similar to gcc's pac implementation, will normally:
> 1) insert "str x30, [x18], #8" at the beginning of function's prologue
> 2) insert "ldr x30, [x18, #-8]!" immediately before function's
> epilogue return/sibling calls
> 
> If pac is enabled, scs push/pop will be inserted between paciasp/autiasp.
> 
> At present, this patch has been successfully compiled in the following
> gcc versions based on defconfig with kernel 5.14 and startup normally
> with commands:
> 
> make ARCH=arm64 defconfig
> ./scripts/config -e CONFIG_GCC_PLUGINS -e CONFIG_SHADOW_CALL_STACK \
> -e CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
> 
> Tested gcc version:
> * 6.3.1
> * 7.3.1
> * 7.5.0
> * 8.2.1
> * 9.2.0
> * 10.3.1
> 
> A similar feature request has also been sent to gcc.
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102768
> 
> Signed-off-by: Dan Li <ashimida@linux.alibaba.com>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>

This is very cool; thanks for working on this! I am, however, struggling
with a few overlapping issues that touch this area of functionality.
I'll try to give you some background on my thoughts here...

For a while now, it's been made clear that Linus isn't a fan[1] of the
gcc-plugins (and Masahiro hasn't been too happy either, as the plugins
complicate[2] things for the build infrastructure). However, it's been
pretty important for proving out various compiler-provided security
defenses. I view them as being in one of three states:

1) stuff that isn't available in either compiler
	- e.g. structure randomization
	- e.g. per-task canaries on arm32
2) stuff that is in Clang but stalled/unlikely in GCC
	- e.g. stack initialization
3) deprecated

State 1 hasn't changed much really, and serves as a good "try out this
idea and see if people want it", as a jumping-off point for actually
getting the feature into GCC and Clang proper.

State 2 is what happens with something from State 1 gets implemented in
Clang but not GCC. (i.e. Clang upstream has been convinced of the
utility of a given feature, which should help with upstreaming it to
GCC.)

State 3 is what happens when the feature exists in GCC, but not in all GCC
versions supported by the kernel. It makes a plugin follow the kernel's
GCC deprecation schedule.

Notably, since we don't have Clang plugins, there's no corresponding
"State 2" for where something is in GCC but not Clang, but we can still
enable it under Clang builds.

Anyway, this is a long way to say that I don't think I want to add
a new gcc-plugin when it is at "State 2" (i.e. Clang has support but
GCC doesn't.) There's no need to "prove" that the compiler feature is
generally desirable, so it's best to get this into GCC directly.

On top of this, there is the interaction between SCS and PAC, in the
sense that the kernel will need to be able to dynamically select between
SCS and PAC (likely via the "alternatives" infrastructure), and that
needs work for Clang too, so it'd be a good time to coordinate this with
GCC. (Sami and Ard have been working[3] on this, though I realize I don't
think there was a specific bug for it, so I've opened one now[4]).

So, I think the best way forward with this would be to implement this as
a feature in GCC directly, and to see if there's some way to coordinate
work with Sami, Ard, Qing, and other folks who look into this.

-Kees

[1] https://lore.kernel.org/lkml/202103031334.8D898CA@keescook/
[2] https://lore.kernel.org/lkml/20200729031537.37926-1-masahiroy@kernel.org/
[3] https://lore.kernel.org/all/20211013152243.2216899-1-ardb@kernel.org/
[4] https://github.com/KSPP/linux/issues/168

> 
> ---
> V5:
> - add gcc feature request's URL in commit message
> 
> V4:
> - change CC_HAVE_SHADOW_CALL_STACK def_bool
> 
> V3:
> - fix incorrect description of the compilation option
> 
> V2:
> - fix incorrect config dependency
> - tested against DYNAMIC_FTRACE_WITH_REGS
> - add support for sibling call
> - add support for ARM64_PTR_AUTH_KERNEL/ARM64_BTI_KERNEL
> 
> FYI:
> - The kernel compiled by Linaro GCC 7.3-2018.05 runs for more than 10
> days, ltp> 24 hours without crash.
> - This function can be used to test whether the shadow stack is effective:
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
> when compiled with:
> CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
> CONFIG_ARM64_PTR_AUTH_KERNEL=y
> CONFIG_ARM64_BTI_KERNEL=y
> 
> ffff800010013b60 <scs_test>:
> ffff800010013b60:       d503245f        bti     c
> ffff800010013b64:       d503201f        nop
> ffff800010013b68:       d503201f        nop
> ffff800010013b6c:       d503233f        paciasp
> ffff800010013b70:       f800865e        str     x30, [x18], #8
> ffff800010013b74:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010013b78:       910003fd        mov     x29, sp
> ffff800010013b7c:       910003e0        mov     x0, sp
> ffff800010013b80:       f900041f        str     xzr, [x0, #8]
> ffff800010013b84:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010013b88:       f85f8e5e        ldr     x30, [x18, #-8]!
> ffff800010013b8c:       d50323bf        autiasp
> ffff800010013b90:       d65f03c0        ret
> 
> If SCS protection is enabled, this function will return normally.
> If the function has __noscs attribute (scs disabled), it will crash due to 0
> address access.
> 
>  Makefile                               |  20 ++-
>  arch/Kconfig                           |  13 +-
>  arch/arm64/Kconfig                     |   4 +-
>  include/linux/compiler-gcc.h           |   4 +
>  scripts/Makefile.gcc-plugins           |   7 +
>  scripts/gcc-plugins/Kconfig            |   9 +
>  scripts/gcc-plugins/arm64_scs_plugin.c | 299 +++++++++++++++++++++++++++++++++
>  scripts/gcc-plugins/gcc-common.h       |   4 +
>  8 files changed, 346 insertions(+), 14 deletions(-)
>  create mode 100644 scripts/gcc-plugins/arm64_scs_plugin.c
> 
> diff --git a/Makefile b/Makefile
> index 61741e9..8039e61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -923,12 +923,6 @@ KBUILD_CFLAGS_KERNEL += -ffunction-sections -fdata-sections
>  LDFLAGS_vmlinux += --gc-sections
>  endif
>  
> -ifdef CONFIG_SHADOW_CALL_STACK
> -CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> -KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> -export CC_FLAGS_SCS
> -endif
> -
>  ifdef CONFIG_LTO_CLANG
>  ifdef CONFIG_LTO_CLANG_THIN
>  CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
> @@ -1034,6 +1028,20 @@ include-$(CONFIG_GCC_PLUGINS)	+= scripts/Makefile.gcc-plugins
>  
>  include $(addprefix $(srctree)/, $(include-y))
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +
> +ifdef CONFIG_CC_IS_CLANG
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +endif
> +
> +ifdef CONFIG_CC_IS_GCC
> +CC_FLAGS_SCS	:= $(ENABLE_SHADOW_CALL_STACK_PLUGIN)
> +endif
> +
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif
> +
>  # scripts/Makefile.gcc-plugins is intentionally included last.
>  # Do not add $(call cc-option,...) below this line. When you build the kernel
>  # from the clean source tree, the GCC plugins do not exist at this point.
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 98db634..1065cd0 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -593,14 +593,15 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	  switching.
>  
>  config SHADOW_CALL_STACK
> -	bool "Clang Shadow Call Stack"
> -	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool "Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>  	help
> -	  This option enables Clang's Shadow Call Stack, which uses a
> -	  shadow stack to protect function return addresses from being
> -	  overwritten by an attacker. More information can be found in
> -	  Clang's documentation:
> +	  This option enables Shadow Call Stack(supported as a compiler
> +	  option in the case of clang, supported as a plugin in the case
> +	  of gcc), which uses a shadow stack to protect function return
> +	  addresses from being overwritten by an attacker.
> +	  More information can be found in Clang's documentation:
>  
>  	    https://clang.llvm.org/docs/ShadowCallStack.html
>  
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 62c3c1d..8aaa16e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -81,7 +81,7 @@ config ARM64
>  	select ARCH_SUPPORTS_DEBUG_PAGEALLOC
>  	select ARCH_SUPPORTS_HUGETLBFS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
> -	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> +	select ARCH_SUPPORTS_SHADOW_CALL_STACK if (CC_HAVE_SHADOW_CALL_STACK || GCC_PLUGIN_SHADOW_CALL_STACK)
>  	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
>  	select ARCH_SUPPORTS_LTO_CLANG_THIN
>  	select ARCH_SUPPORTS_CFI_CLANG
> @@ -1062,7 +1062,7 @@ config ARCH_HAS_FILTER_PGPROT
>  
>  # Supported by clang >= 7.0
>  config CC_HAVE_SHADOW_CALL_STACK
> -	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> +	def_bool CC_IS_CLANG || $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
>  
>  config PARAVIRT
>  	bool "Enable paravirtualization code"
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
> index 952e468..b45bd8c 100644
> --- a/scripts/Makefile.gcc-plugins
> +++ b/scripts/Makefile.gcc-plugins
> @@ -46,6 +46,13 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
>  endif
>  export DISABLE_ARM_SSP_PER_TASK_PLUGIN
>  
> +gcc-plugin-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK) += arm64_scs_plugin.so
> +gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)	\
> +		+= -DSHADOW_CALL_STACK_PLUGIN
> +ifdef CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
> +    ENABLE_SHADOW_CALL_STACK_PLUGIN += -fplugin-arg-arm64_scs_plugin-enable
> +endif
> +
>  # All the plugin CFLAGS are collected here in case a build target needs to
>  # filter them out of the KBUILD_CFLAGS.
>  GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> index ab9eb4c..92f7f76 100644
> --- a/scripts/gcc-plugins/Kconfig
> +++ b/scripts/gcc-plugins/Kconfig
> @@ -19,6 +19,15 @@ menuconfig GCC_PLUGINS
>  
>  if GCC_PLUGINS
>  
> +config GCC_PLUGIN_SHADOW_CALL_STACK
> +	bool "Plugin for ARM64 Shadow Call Stack"
> +	depends on (!CC_HAVE_SHADOW_CALL_STACK) && ARM64
> +	help
> +	  This plugin is used to support kernel CONFIG_SHADOW_CALL_STACK
> +	  compiled by gcc. Its principle is basically the same as that of
> +	  CLANG.
> +	  For more information, please refer to "config SHADOW_CALL_STACK"
> +
>  config GCC_PLUGIN_CYC_COMPLEXITY
>  	bool "Compute the cyclomatic complexity of a function" if EXPERT
>  	depends on !COMPILE_TEST	# too noisy
> diff --git a/scripts/gcc-plugins/arm64_scs_plugin.c b/scripts/gcc-plugins/arm64_scs_plugin.c
> new file mode 100644
> index 0000000..bb72baa
> --- /dev/null
> +++ b/scripts/gcc-plugins/arm64_scs_plugin.c
> @@ -0,0 +1,299 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "gcc-common.h"
> +
> +#define v_info(fmt, ...)							\
> +	do {									\
> +		if (verbose)							\
> +			fprintf(stderr, "[SCS]:" fmt,  ## __VA_ARGS__);	\
> +	} while (0)
> +
> +#define NOSCS_ATTR_STR  "no_shadow_call_stack"
> +#define SCS_ASM_PUSH_STR "str x30, [x18], #8\n\t"
> +#define SCS_ASM_POP_STR  "ldr x30, [x18, #-8]!\n\t"
> +
> +__visible int plugin_is_GPL_compatible;
> +
> +static struct plugin_info arm64_scs_plugin_info = {
> +	.version	= "20210926vanilla",
> +	.help		= "enable\tactivate plugin\n"
> +			  "verbose\tprint all debug infos\n",
> +};
> +
> +static bool verbose;
> +
> +#if BUILDING_GCC_VERSION >= 10001
> +enum insn_code paciasp_num = CODE_FOR_paciasp;
> +enum insn_code autiasp_num = CODE_FOR_autiasp;
> +#elif BUILDING_GCC_VERSION >= 7003
> +enum insn_code paciasp_num = CODE_FOR_pacisp;
> +enum insn_code autiasp_num = CODE_FOR_autisp;
> +#else
> +enum insn_code paciasp_num = CODE_FOR_nothing;
> +enum insn_code autiasp_num = CODE_FOR_nothing;
> +#define TARGET_ARMV8_3 0
> +#endif
> +
> +static rtx_insn * (*old_gen_prologue)(void);
> +static rtx_insn * (*old_gen_epilogue)(void);
> +static rtx_insn * (*old_gen_sibcall_epilogue)(void);
> +
> +static rtx gen_scs_push(location_t loc)
> +{
> +	rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_PUSH_STR), loc);
> +
> +	MEM_VOLATILE_P(insn) = 1;
> +	return insn;
> +}
> +
> +static rtx gen_scs_pop(location_t loc)
> +{
> +	rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_POP_STR), loc);
> +
> +	MEM_VOLATILE_P(insn) = 1;
> +	return insn;
> +}
> +
> +static bool scs_func_ignored(void)
> +{
> +	bool is_ignored;
> +
> +#if BUILDING_GCC_VERSION >= 8002
> +	is_ignored = !cfun->machine->frame.emit_frame_chain;
> +#else
> +	is_ignored = !frame_pointer_needed;
> +#endif
> +
> +	/*
> +	 * Functions that do not push LR into stack are not protected.
> +	 * Functions that call __builin_eh_return is not protected(consistent with gcc's PAC).
> +	 */
> +	if (is_ignored || crtl->calls_eh_return) {
> +		v_info("No protection code inserted into func:%s in file:%s\n",
> +			get_name(current_function_decl), main_input_filename);
> +		return 1;
> +	}
> +
> +	/* Functions with attribute NOSCS_ATTR_STR need to be unprotected */
> +	if (lookup_attribute(NOSCS_ATTR_STR, DECL_ATTRIBUTES(current_function_decl))) {
> +		v_info("No protection code inserted into %s func:%s in file:%s\n", NOSCS_ATTR_STR,
> +				get_name(current_function_decl), main_input_filename);
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +static rtx_insn *search_insn(enum insn_code code, rtx_insn *seq)
> +{
> +	rtx_insn *insn;
> +
> +	for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
> +		if (code == recog(PATTERN(insn), insn, 0))
> +			return insn;
> +	}
> +
> +	return NULL;
> +}
> +
> +static bool scs_return_address_signing_enabled(void)
> +{
> +#if BUILDING_GCC_VERSION >= 7003
> +	return aarch64_return_address_signing_enabled();
> +#else
> +	return false;
> +#endif
> +}
> +
> +static rtx_insn *scs_gen_prologue(void)
> +{
> +	rtx_insn *seq = NULL, *mark;
> +	rtx tmp;
> +	bool ret_sign_enabled;
> +
> +	if (old_gen_prologue)
> +		seq = old_gen_prologue();
> +
> +	if ((!seq) || scs_func_ignored())
> +		return seq;
> +
> +	ret_sign_enabled = scs_return_address_signing_enabled();
> +	tmp = gen_scs_push(RESERVED_LOCATION_COUNT);
> +
> +	start_sequence();
> +	emit_insn(seq);
> +
> +	if (ret_sign_enabled) {
> +		/* For functions with pac enabled, insert scs push after the 'paciasp' insn */
> +		mark = search_insn(paciasp_num, get_insns());
> +		if (!mark)
> +			error(G_("Non-standard insn seqs found:\n"
> +				"__noscs attr should be added on func:%s,file:%s\n"),
> +				get_name(current_function_decl), main_input_filename);
> +
> +		emit_insn_after(tmp, mark);
> +	} else {
> +		/* For functions that do not enable pac, insert scs push at the start of insns */
> +		mark = get_insns();
> +		emit_insn_before(tmp, mark);
> +	}
> +
> +	seq = get_insns();
> +	end_sequence();
> +	return seq;
> +}
> +
> +static rtx_insn *scs_gen_epilogue(void)
> +{
> +	rtx_insn *seq = NULL, *mark;
> +	rtx tmp;
> +	bool ret_sign_enabled;
> +
> +	if (old_gen_epilogue)
> +		seq = old_gen_epilogue();
> +
> +	if ((!seq) || scs_func_ignored())
> +		return seq;
> +
> +	ret_sign_enabled = scs_return_address_signing_enabled();
> +	tmp = gen_scs_pop(RESERVED_LOCATION_COUNT);
> +
> +	start_sequence();
> +	emit_insn(seq);
> +
> +	if (ret_sign_enabled && (!TARGET_ARMV8_3)) {
> +		/* For functions with pac enabled, if 'autiasp' is used in epilogue
> +		 * (!TARGET_ARMV8_3), scs pop should inserted before this insn.
> +		 */
> +		mark = search_insn(autiasp_num, get_insns());
> +	} else {
> +		/* For functions do not enabled pac or used 'retaa' as pac check,
> +		 * scs pop inserted before the last 'return" insn
> +		 */
> +		mark = get_last_insn();
> +	}
> +
> +	if (!mark)
> +		error(G_("Non-standard insn seqs found:\n"
> +			"__noscs attr should be added on func:%s,file:%s\n"),
> +			get_name(current_function_decl), main_input_filename);
> +
> +	emit_insn_before(tmp, mark);
> +
> +	seq = get_insns();
> +	end_sequence();
> +	return seq;
> +}
> +
> +static rtx_insn *scs_gen_sibcall_epilogue(void)
> +{
> +	rtx_insn *seq = NULL, *mark;
> +	rtx tmp;
> +	bool ret_sign_enabled;
> +
> +	if (old_gen_sibcall_epilogue)
> +		seq = old_gen_sibcall_epilogue();
> +
> +	if ((!seq) || scs_func_ignored())
> +		return seq;
> +
> +	ret_sign_enabled = scs_return_address_signing_enabled();
> +	tmp = gen_scs_pop(RESERVED_LOCATION_COUNT);
> +
> +	start_sequence();
> +	emit_insn(seq);
> +
> +	if (ret_sign_enabled) {
> +		/* If pac is enabled, sibling_call will always use 'autiasp' as pac check */
> +		mark = search_insn(autiasp_num, get_insns());
> +		if (!mark)
> +			error(G_("Non-standard insn seqs found:\n"
> +				"__noscs attr should be added on func:%s,file:%s\n"),
> +				get_name(current_function_decl), main_input_filename);
> +		emit_insn_before(tmp, mark);
> +	} else {
> +		/* If pac is disabled, insert scs pop at the end of insns */
> +		mark = get_last_insn();
> +		emit_insn_after(tmp, mark);
> +	}
> +
> +	seq = get_insns();
> +	end_sequence();
> +
> +	return seq;
> +}
> +
> +static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
> +{
> +	old_gen_prologue = targetm.gen_prologue;
> +	old_gen_epilogue = targetm.gen_epilogue;
> +	old_gen_sibcall_epilogue = targetm.gen_sibcall_epilogue;
> +
> +	targetm.gen_prologue = scs_gen_prologue;
> +	targetm.gen_epilogue = scs_gen_epilogue;
> +	targetm.gen_sibcall_epilogue = scs_gen_sibcall_epilogue;
> +}
> +
> +static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
> +		bool *no_add_attrs)
> +{
> +	/* NOSCS_ATTR_STR can only be used for function declarations */
> +	switch (TREE_CODE(*node)) {
> +	case FUNCTION_DECL:
> +		break;
> +	default:
> +		error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
> +		gcc_unreachable();
> +	}
> +
> +	*no_add_attrs = false;
> +	return NULL_TREE;
> +}
> +
> +static struct attribute_spec noscs_attr = {};
> +
> +static void scs_register_attributes(void *event_data __unused, void *data __unused)
> +{
> +	noscs_attr.name	= NOSCS_ATTR_STR;
> +	noscs_attr.decl_required = true;
> +	noscs_attr.handler = handle_noscs_attribute;
> +	register_attribute(&noscs_attr);
> +}
> +
> +__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
> +{
> +	int i;
> +	bool enable = false;
> +	const char * const plugin_name = plugin_info->base_name;
> +	const int argc = plugin_info->argc;
> +	const struct plugin_argument * const argv = plugin_info->argv;
> +
> +	if (!plugin_default_version_check(version, &gcc_version)) {
> +		error(G_("Incompatible gcc/plugin versions"));
> +		return 1;
> +	}
> +
> +	for (i = 0; i < argc; ++i) {
> +		if (!strcmp(argv[i].key, "enable")) {
> +			enable = true;
> +			continue;
> +		}
> +		if (!strcmp(argv[i].key, "verbose")) {
> +			verbose = true;
> +			continue;
> +		}
> +		error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
> +	}
> +
> +	if (!enable) {
> +		v_info("Plugin disabled for file:%s\n", main_input_filename);
> +		return 0;
> +	}
> +
> +	register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
> +
> +	register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
> +
> +	register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
> +
> +	return 0;
> +}
> diff --git a/scripts/gcc-plugins/gcc-common.h b/scripts/gcc-plugins/gcc-common.h
> index 0c08761..7251b00 100644
> --- a/scripts/gcc-plugins/gcc-common.h
> +++ b/scripts/gcc-plugins/gcc-common.h
> @@ -27,6 +27,7 @@
>  #include "except.h"
>  #include "function.h"
>  #include "toplev.h"
> +#include "insn-codes.h"
>  #if BUILDING_GCC_VERSION >= 5000
>  #include "expr.h"
>  #endif
> @@ -535,6 +536,9 @@ static inline void ipa_remove_stmt_references(symtab_node *referring_node, gimpl
>  }
>  #endif
>  
> +/* RTL related */
> +extern int recog(rtx, rtx_insn *, int *);
> +
>  #if BUILDING_GCC_VERSION < 6000
>  #define get_inner_reference(exp, pbitsize, pbitpos, poffset, pmode, punsignedp, preversep, pvolatilep, keep_aligning)	\
>  	get_inner_reference(exp, pbitsize, pbitpos, poffset, pmode, punsignedp, pvolatilep, keep_aligning)
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1634337180-92127-1-git-send-email-ashimida%40linux.alibaba.com.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202110191006.68BB660%40keescook.
