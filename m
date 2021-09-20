Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBZPLUCFAMGQE3ZYE7VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221A410FF5
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 09:19:03 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id l23-20020a17090aec1700b0019aefe0a92fsf13884497pjy.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 00:19:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632122341; cv=pass;
        d=google.com; s=arc-20160816;
        b=QtkLHoWts0ddBZItQ1xgjoxSEYnJsnlgXqpazI3crDnWY3FVXdenEwP9FoYwIFNxjF
         3cMWce72F12y4yxs0INI43SxrnnuZcateJbrs1gS268ia7IW5GmA4ltM/FWLIhgq4MdF
         7CZtHHhm6xPubn4y8bAkU2O3BLEM5AqHoegjhRtRJzuRkq2DTeEZtXC9bHAAtcwCwLZm
         R9X7vuDYLy8rln/HavJL591sn95TQInZ+e/pM+uGYO4BvGsk/aClSREFRog5BOtYVdYZ
         eLouFfOTSG3hm977cxuYEetvqXT8s1FAntAOTIvrGq/hKPGVnxoX3vbmEgFMa1m7cIR0
         X01A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lN/bAu3/zd6lOszctrUyonEoLfA5yNssrokIkaViU2s=;
        b=RgAvdIN8WtPrCskdiyhGc1Mp4c5ECElDWWGQWA5QFxt2RXhxRAXwE76B97U1HgM9N1
         vTNQVo3ZprFW1j9VJ9J7D/ttbVdlWTgYN+aLUS9JwMYo8u9i2iFnVQ+DjPS6rDo4eiEq
         L2YAnNAFsYAhNWOww07mj7y4VOjj4irv5WQXY6HUG8Vu5+cilrpdQhDE6Lwd83QtJQ6i
         Kk3GQkfcgWNFkuGag52EXBzuEXNncxRYHO5WuCRZcNzR8LSQL+SaR/qSKhDA6QWgBlPE
         vUftgTDtILjmQWy9pplqWpYK/gggbHmLcls7b0SU4JSJ4y3kyJkYP7Tb3qUK7JNYaIYr
         iolQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jF+w21fK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lN/bAu3/zd6lOszctrUyonEoLfA5yNssrokIkaViU2s=;
        b=jZLNlQ4Be2lauXAa+yIxHBeUp6DLhHkl4Nh/IS94DUmBGNF1TqGPZrXs7Ia2ip8VW+
         vX+UsXXHhbB7MB9wrq2Nl5owJO5hQ3g69g7rDPYNACPPnWB+ArjB7yZ27DXYai5yEOG4
         0TYYUa48zQexnU0qskTPyGvg42UFAN8rz6aUwAXXePfdgGA+priWuk6k//OEUyUGB2KG
         0IqrgoPx4WH24grHZaw3JA8wM7wOzGY1AYpZa01v3VDBAoMPAYLn69LBAkKb12tduAaz
         RffP2beq2FLSp8D9TdgJ2EWJLDReJ4nEaaNRpqQNVQRaOZTDvCzE06sOqukNNbSnmtO4
         CWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lN/bAu3/zd6lOszctrUyonEoLfA5yNssrokIkaViU2s=;
        b=vuK/nacMyjHVPZEDS7OslJXr/Nk3BWLfsOgy8e/8y5Zvj+X1mjYNm6AeF7BVJa9SpZ
         dALJTiA3JsXi2iWCl8oKiZrfc+6YJQ1WLUjAZYAuVdPtqZng+lZdBU8el7mlBvPWff/N
         L/aHFiLcCPGSekpFsK0rXY42U2V2vTv/Y5lAIUh5LoZI812FrVYSHijLIhSVxprZ0Wf7
         w0V0S0YpcjwChaBRUbzTKbyh44yZ6J3uciBLku3VgsmFya4jF+Nm22Cw/suD2xPLRvDq
         JxnIzJ65ntLBe8gWlP2MtuFTp1h89N3YExeLXxnAtWXebBk1sIcm396ky78fYS+slnsm
         AXQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hTkQ/Van0FfrM5Dy5mMBXuev4qCEWYwMYm46gV9N9NOsUPvLr
	6pLy/1RR0X/LeoX/XrlCNSg=
X-Google-Smtp-Source: ABdhPJw/Ogju1C84k0ZuyDNWq+V2YEf2/gGqw3+JT/mpBfLXj4o5IlsFGAwIO+zuRSpPNtQt28ZPAg==
X-Received: by 2002:a17:90a:7085:: with SMTP id g5mr36763987pjk.214.1632122341430;
        Mon, 20 Sep 2021 00:19:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cd8:: with SMTP id s207ls5974952pfs.11.gmail; Mon, 20
 Sep 2021 00:19:00 -0700 (PDT)
X-Received: by 2002:a63:6f82:: with SMTP id k124mr17670575pgc.218.1632122340695;
        Mon, 20 Sep 2021 00:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632122340; cv=none;
        d=google.com; s=arc-20160816;
        b=Av9Bfco8RLSTHy86MAQgC+sgdWNma/YTEiU/8P5hyl53MBKLzJJcXSqT6pt00hFXKS
         AyfZ5kr0yHBkjgs16KItSI2+a2YO6ONAhm+w+FN/rhJ9diMAi5gbN89y6TLtCI6wZGou
         wxgj3klaa8k0jmWtRHPoLc7EKDLgDtqIpCAH/MnrlTGhSmkYpgEU7UYYRirLAjNNO2lu
         5R4vZdz27MEhjDMtbEjel7IPDGrLwV4X4WLmcrxB39U1mkkKd3zIGAQ5ntz8jzitcxuw
         EcSY0lAi2GohDP7jGphp/KDcqRUQV9A1Pkku9UlU9rbgcvPAA0JdXGXFWPmihVOS9ASr
         UR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MYwk2Wr4yRzvyGekkYjsoV3/GBm+S8vSWos5nYY6Mio=;
        b=VnlUE4IacGQrs+Bry/IXl5jWIkq6F3SbBWUZ7l8FLo+3FUFPFsrPZuLcZtHXZyDc8c
         OKt4tkJzEgbDIm6WWksYWtmvM9nQr4YQqx6yEbRHwvDHkkXgHAc42b73SzypFxrNtSH1
         br7V2IuUYd0rP+g/QV7lml5z5epW/Vf+U+XLtb5C/z2Ty4HsbWAsCZs5O0o5qpP7o19n
         ZrmfSNSl1F4BWsLVODEwyI4U9iLRucONKR7X9ySOrIYujyqM28zRrucgvFclVQ/5VtvB
         wwEQj9eGJMnbtTVXY8BH4xmXgVBFWnj+i18TdE+HrXemok49WAakVd+5GNADpjxjdjyh
         WXMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jF+w21fK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v9si730038plg.3.2021.09.20.00.19.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Sep 2021 00:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64BFD610CE
	for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 07:19:00 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id s69so16028233oie.13
        for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 00:19:00 -0700 (PDT)
X-Received: by 2002:a05:6808:15a2:: with SMTP id t34mr20968961oiw.47.1632122339704;
 Mon, 20 Sep 2021 00:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
In-Reply-To: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Sep 2021 09:18:47 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com>
Message-ID: <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com>
Subject: Re: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Frederic Weisbecker <frederic@kernel.org>, 
	Mike Rapoport <rppt@kernel.org>, YiFei Zhu <yifeifz2@illinois.edu>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Colin King <colin.king@canonical.com>, andreyknvl@gmail.com, 
	Mark Rutland <mark.rutland@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Will Deacon <will@kernel.org>, 
	luc.vanoostenryck@gmail.com, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jF+w21fK;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Hi Dan,

On Sun, 19 Sept 2021 at 18:37, Dan Li <ashimida@linux.alibaba.com> wrote:
>
> The Clang-based shadow call stack protection has been integrated into the
> mainline, but kernel compiled by gcc cannot enable this feature for now.
>
> This Patch supports gcc-based SCS protection by adding a plugin.
>

Thanks for working on this. I had a stab at this myself about 2 years
ago and couldn't make it work.

> For each function that x30 will be pushed onto the stack during execution,
> this plugin:
> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
>    to current SCS
> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
>    restore x30
>

This logic seems sound to me, but it would be nice if someone more
familiar with Clang's implementation could confirm that it is really
this simple.

Looking at your plugin, there is an issue with tail calls, and I don't
think Clang simply disables those altogether as well, right?

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
> -CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
> +CC_FLAGS_SCS   := $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)

This variable should contain whatever needs to be added to the
compiler comamand line
>  KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 98db634..81ff127 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>
>  config SHADOW_CALL_STACK
>         bool "Clang Shadow Call Stack"
> -       depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
> +       depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK

This logic needs to be defined in such a way that a builtin
implementation provided by GCC will take precedence once it becomes
available.

>         depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>         help
>           This option enables Clang's Shadow Call Stack, which uses a
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
> +gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)       \
> +               += -DSHADOW_CALL_STACK_PLUGIN
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
> +       bool "GCC Shadow Call Stack plugin"
> +       select SHADOW_CALL_STACK

You shouldn't 'select' something like this if the symbol has its own
dependencies which may be unsatisfied, as this causes a Kconfig
warning. Also, en/disabling shadow call stacks for the architecture
should be done from the arch's 'kernel features' menu, it shouldn't be
buried in the GCC plugins menu.

> +       help
> +         This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
> +         compiled by gcc. Its principle is basically the same as that of CLANG.
> +         For more information, please refer to "config SHADOW_CALL_STACK"
> +
>  config GCC_PLUGIN_CYC_COMPLEXITY
>         bool "Compute the cyclomatic complexity of a function" if EXPERT
>         depends on !COMPILE_TEST        # too noisy
> diff --git a/scripts/gcc-plugins/arm64_scs_plugin.c b/scripts/gcc-plugins/arm64_scs_plugin.c
> new file mode 100644
> index 0000000..c5a66140
> --- /dev/null
> +++ b/scripts/gcc-plugins/arm64_scs_plugin.c
> @@ -0,0 +1,256 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "gcc-common.h"
> +
> +#define v_info(fmt, ...)                                                       \
> +       do {                                                                    \
> +               if (verbose)                                                    \
> +                       fprintf(stderr, "[SCS]: " fmt,  ## __VA_ARGS__);        \
> +       } while (0)
> +
> +#define NOSCS_ATTR_STR  "no_shadow_call_stack"
> +#define SCS_ASM_PUSH_STR "str x30, [x18], #8\n\t"
> +#define SCS_ASM_POP_STR  "ldr x30, [x18, #-8]!\n\t"
> +
> +__visible int plugin_is_GPL_compatible;
> +
> +static struct plugin_info arm64_scs_plugin_info = {
> +       .version        = "20210926vanilla",

I will respond to this obvious invitation at bikeshedding by saying
that 'salted caramel' is clearly the superior flavor of ice cream.

> +       .help           = "disable\tdo not activate plugin\n"
> +                         "verbose\tprint all debug infos\n",
> +};
> +
> +static bool verbose;
> +
> +static rtx gen_scs_push(location_t loc)
> +{
> +       rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_PUSH_STR), loc);
> +
> +       MEM_VOLATILE_P(insn) = 1;
> +       return insn;
> +}
> +
> +static rtx gen_scs_pop(location_t loc)
> +{
> +       rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_POP_STR), loc);
> +
> +       MEM_VOLATILE_P(insn) = 1;
> +       return insn;
> +}
> +
> +static bool arm64_scs_gate(void)
> +{
> +       bool is_ignored;
> +
> +#if BUILDING_GCC_VERSION >= 8002
> +       is_ignored = !cfun->machine->frame.emit_frame_chain;
> +#else
> +       is_ignored = !frame_pointer_needed;
> +#endif
> +
> +       /* No need to insert protection code into functions that do not push LR into stack */
> +       if (is_ignored) {
> +               v_info("No protection code inserted into func:%s in file:%s\n",
> +                       get_name(current_function_decl), main_input_filename);
> +               return 0;
> +       }
> +
> +       gcc_assert(cfun->machine->frame.wb_candidate2 == R30_REGNUM);
> +
> +       /* Don't insert protection code into functions with NOSCS_ATTR_STR attribute */
> +       if (lookup_attribute(NOSCS_ATTR_STR, DECL_ATTRIBUTES(current_function_decl))) {
> +               v_info("No protection code inserted into %s func:%s in file:%s\n", NOSCS_ATTR_STR,
> +                               get_name(current_function_decl), main_input_filename);
> +               return 0;
> +       }
> +       return 1;
> +}
> +
> +enum scs_state {
> +       /* The first valid instruction has not been found in the current instruction sequence */
> +       SCS_SEARCHING_FIRST_INSN,
> +       /* Currently searching for the return rtx instruction in this function */
> +       SCS_SEARCHING_FUNC_RETURN,
> +       /* Found an EPILOGUE_BEGIN before the function return instruction */
> +       SCS_FOUND_ONE_EPILOGUE_NOTE,
> +};
> +
> +static unsigned int arm64_scs_execute(void)
> +{
> +       rtx_insn *insn;
> +       enum scs_state state = SCS_SEARCHING_FIRST_INSN;
> +
> +       for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
> +               rtx mark = NULL;
> +
> +               switch (GET_CODE(insn)) {
> +               case NOTE:
> +               case BARRIER:
> +               case CODE_LABEL:
> +               case INSN:
> +               case DEBUG_INSN:
> +               case JUMP_INSN:
> +               case JUMP_TABLE_DATA:
> +                       break;
> +               case CALL_INSN:
> +                       if (SIBLING_CALL_P(insn)) {
> +                               error(G_("Sibling call found in func:%s, file:%s\n"),
> +                                               get_name(current_function_decl),
> +                                               main_input_filename);
> +                               gcc_unreachable();
> +                       }

Sibling calls are an important optimization, not only for performance
but also for stack utilization, so this needs to be fixed. Can you
elaborate on the issue you are working around here?

> +                       break;
> +               default:
> +                       error(G_("Invalid rtx_insn seqs found with type:%s in func:%s, file:%s\n"),
> +                                       GET_RTX_NAME(GET_CODE(insn)),
> +                                       get_name(current_function_decl), main_input_filename);
> +                       gcc_unreachable();
> +                       break;
> +               }
> +
> +               if (state == SCS_SEARCHING_FIRST_INSN) {
> +                       /* A function that needs to be instrumented should not found epilogue
> +                        * before its first insn
> +                        */
> +                       gcc_assert(!(NOTE_P(insn) && (NOTE_KIND(insn) == NOTE_INSN_EPILOGUE_BEG)));
> +
> +                       if (NOTE_P(insn) || INSN_DELETED_P(insn))
> +                               continue;
> +
> +                       state = SCS_SEARCHING_FUNC_RETURN;
> +
> +                       /* Insert scs pop before the first instruction found */
> +                       mark = gen_scs_push(RESERVED_LOCATION_COUNT);
> +                       emit_insn_before(mark, insn);
> +               }
> +
> +               /* Find the corresponding epilogue before 'RETURN' instruction (if any) */
> +               if (state == SCS_SEARCHING_FUNC_RETURN) {
> +                       if (NOTE_P(insn) && (NOTE_KIND(insn) == NOTE_INSN_EPILOGUE_BEG)) {
> +                               state = SCS_FOUND_ONE_EPILOGUE_NOTE;
> +                               continue;
> +                       }
> +               }
> +
> +               if (!JUMP_P(insn))
> +                       continue;
> +
> +               /* A function return insn was found */
> +               if (ANY_RETURN_P(PATTERN(insn))) {
> +                       /* There should be an epilogue before 'RETURN' inst */
> +                       if (GET_CODE(PATTERN(insn)) == RETURN) {
> +                               gcc_assert(state == SCS_FOUND_ONE_EPILOGUE_NOTE);
> +                               state = SCS_SEARCHING_FUNC_RETURN;
> +                       }
> +
> +                       /* There is no epilogue before 'SIMPLE_RETURN' insn */
> +                       if (GET_CODE(PATTERN(insn)) == SIMPLE_RETURN)
> +                               gcc_assert(state == SCS_SEARCHING_FUNC_RETURN);

These assert()s will crash the compiler if the RTL doesn't have quite
the right structure, correct? Could we issue a warning instead, saying
function 'x' could not be handled, and back out gracefully (i.e.,
don't insert the push either)?

> +
> +                       /* Insert scs pop instruction(s) before return insn */
> +                       mark = gen_scs_pop(RESERVED_LOCATION_COUNT);
> +                       emit_insn_before(mark, insn);
> +               }
> +       }
> +       return 0;
> +}
> +
> +static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
> +               bool *no_add_attrs)
> +{
> +       *no_add_attrs = true;
> +
> +       gcc_assert(DECL_P(*node));
> +       switch (TREE_CODE(*node)) {
> +       default:
> +               error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
> +               gcc_unreachable();
> +
> +       case FUNCTION_DECL:     /* the attribute is only used for function declarations */
> +               break;
> +       }
> +
> +       *no_add_attrs = false;

I'm not familiar with this idiom: what is the purpose of setting this
to true initially and then to false again when the expected flow
through the function is to do nothing at all?

> +       return NULL_TREE;
> +}
> +
> +static struct attribute_spec noscs_attr = {};
> +
> +static void scs_register_attributes(void *event_data __unused, void *data __unused)
> +{
> +       noscs_attr.name = NOSCS_ATTR_STR;
> +       noscs_attr.decl_required = true;
> +       noscs_attr.handler = handle_noscs_attribute;
> +       register_attribute(&noscs_attr);
> +}
> +
> +static void (*old_override_options_after_change)(void);
> +
> +static void scs_override_options_after_change(void)
> +{
> +       if (old_override_options_after_change)
> +               old_override_options_after_change();
> +
> +       flag_optimize_sibling_calls = 0;
> +}
> +
> +static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
> +{
> +       /* Turn off sibling call to avoid inserting duplicate scs pop codes */

Sibling calls will restore x30 before the calk, right? So where do the
duplicate pops come from?

> +       old_override_options_after_change = targetm.override_options_after_change;
> +       targetm.override_options_after_change = scs_override_options_after_change;
> +
> +       flag_optimize_sibling_calls = 0;

Do we need this twice?

> +}
> +
> +#define PASS_NAME arm64_scs
> +#define TODO_FLAGS_FINISH (TODO_dump_func | TODO_verify_rtl_sharing)
> +#include "gcc-generate-rtl-pass.h"
> +
> +__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
> +{
> +       int i;
> +       const char * const plugin_name = plugin_info->base_name;
> +       const int argc = plugin_info->argc;
> +       const struct plugin_argument * const argv = plugin_info->argv;
> +       bool enable = true;
> +
> +       PASS_INFO(arm64_scs, "shorten", 1, PASS_POS_INSERT_BEFORE);
> +
> +       if (!plugin_default_version_check(version, &gcc_version)) {
> +               error(G_("Incompatible gcc/plugin versions"));
> +               return 1;
> +       }
> +
> +       if (strncmp(lang_hooks.name, "GNU C", 5) && !strncmp(lang_hooks.name, "GNU C+", 6)) {
> +               inform(UNKNOWN_LOCATION, G_("%s supports C only, not %s"), plugin_name,
> +                               lang_hooks.name);
> +               enable = false;
> +       }
> +

Do we need this check?

> +       for (i = 0; i < argc; ++i) {
> +               if (!strcmp(argv[i].key, "disable")) {
> +                       enable = false;
> +                       continue;
> +               }
> +               if (!strcmp(argv[i].key, "verbose")) {
> +                       verbose = true;
> +                       continue;
> +               }
> +               error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
> +       }
> +
> +       register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
> +
> +       register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
> +
> +       if (!enable) {
> +               v_info("Plugin disabled for file:%s\n", main_input_filename);
> +               return 0;
> +       }
> +
> +       register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
> +
> +       register_callback(plugin_name, PLUGIN_PASS_MANAGER_SETUP, NULL, &arm64_scs_pass_info);
> +
> +       return 0;
> +}
> --
> 2.7.4
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGQ%2Bx243wK-8NP%2Bkxs2dCgSa%2BMD5%2BTv3Xzo3510Td1t3Q%40mail.gmail.com.
