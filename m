Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2XF236QKGQEW7T2CJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 121212B88B2
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 00:49:00 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id 143sf3141000qkg.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 15:49:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605743339; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPAcSQ8PBC6sjMS00xpELPSAG6MVPWOx0U0d5fsDVAGb1iBYrDU/9+V5ttCbWQoIvh
         hgeoyOJT/QURYQgBxUJly9cmy2EtCE0VcfNj0UM3ztSqgp2bhRqCp9Xy7ienmM0gPVjp
         dnyNpE88qCMZJ9NwM0XeFZPK1rhd4o5TEJeCex4BIfASTKcNUGcX1kfOr31B3Hrg/DYr
         DlWEOq97WV24SKqWycAnqbHF5VAmANNXmgTLBHFFN8UOgnyPvdp6FfK4pkN6QTw8kmIa
         rGWDpkJM7pkUwbk02r8D9h+An1WS37GoxsrwbgalMXaLazSCQ5mwJSVrX2ZkjDG8EKyB
         hqmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hUDcVWd7njUJc6uQTdwMjkt8nCPEZo42i2u8wWtMkFc=;
        b=fjnP42d8mgC2lxGoqERaQnblMJW9o/HuZP/YfMuCxymVJdgFeHMkYF9fEyciQfgLx3
         eLgjBRLHkAld6Uv9GW9U++8YC+5Gc6ERImPoXsU23nrPITSRuxYMjvOf10eT8M52eSmW
         cOjKKo74oQC95ed6BIpsijm6W/aNHTx5kpr3KzRn8sr/uHGqlHAd6Um0092yg4+n4d5S
         UTZX2LjBaFrHGw46/vj+Yxd6LjUFjZM4xBkLeFZ0URbqrXZuG+77jbAK8nUE7ZCnPNCf
         +gREINQ0iCLZ7quZEwQhYyL0a3wq7Y+KiIBI7Xlpk/zFEPXb3S2YzDFMf1yCQjIuuXhM
         73OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jmbyV0dz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hUDcVWd7njUJc6uQTdwMjkt8nCPEZo42i2u8wWtMkFc=;
        b=m5HarEcOycLz6sP2MJO1tvkDH/JRo6uxwvu1/d69K0Wt5DSkI1dmNXS9085ZaDhCch
         W1J8PCR0SvfxAuB0BOX8Qe74gH6SXj5tG03JHhjmX9t0kXkcCOXxiFwS+pRpVGvbcOl2
         0U7ZzIjtN0VpIlgTI3ApjeLh7e2Qr8ky69p8P9A8+R9Wxol+I7oQgJJVa0nsYLnLPfQ8
         vnmA8BbKEpz4J75n0aoQeBcKWSL5VdOf+LywjSM8z2xLqxwVZ58+SZklks0oK9VC8Dxu
         eJHRF3r8W713k5DDUL0QhdYikcyLT/U/cfBwL+o5ClLnNQsapWd+nvD4A0YSkG3rSVti
         axng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hUDcVWd7njUJc6uQTdwMjkt8nCPEZo42i2u8wWtMkFc=;
        b=S99tB6lBpA0O0o3/wfBMxUVkfqaOCD/5vbxcdbWFni1prpVcec1NI8m/ooJEUjHKXi
         dmf3zx0D64QX6O2s6ysjjz9Xp3whGJNxW2pyL2FXsM+uHmf+DFrA8PnmmPWEBYn7xp1q
         9qWdps6wM46xkbgW4ZYBXnYvZRhMlzcM9KsmgKZsblqDc4v+9LfWIuBm+ocBy9652/Q2
         qsLjuyypjh+cMWqsaAfRueJdmkhzheUg0dyotvLehdebhkTcjxgS21UTgPLWeN2syzRH
         RZRHzECngzv/6lr31LqI8zmZ/kCmqd14K/Dvj8xm8agrCxnEjMkCW6bMsKwBlq3VF/Hv
         iiZQ==
X-Gm-Message-State: AOAM531qNFbJq+0Tkby2eHJN94HRGxOGbRyue8KlhU+WkpKJileDcX/N
	0KKhylnwuM6dEglzsLvf+Ug=
X-Google-Smtp-Source: ABdhPJwKtWSbYy+0TdSy6AjtC68z5i8VqeCQCHPJxTIID79D/m92h/Ac36nAdBg/LEiNd8QlgKOtzQ==
X-Received: by 2002:a37:9441:: with SMTP id w62mr8010483qkd.474.1605743338878;
        Wed, 18 Nov 2020 15:48:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9bd7:: with SMTP id d206ls492644qke.1.gmail; Wed, 18 Nov
 2020 15:48:58 -0800 (PST)
X-Received: by 2002:a37:9a93:: with SMTP id c141mr8301435qke.113.1605743338465;
        Wed, 18 Nov 2020 15:48:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605743338; cv=none;
        d=google.com; s=arc-20160816;
        b=ufetIIu+kBTjfqsXw7QwfFCDmnFREw1CnAeh3KKjvu0TVdfBlSfZfhU2bJb0yvElWE
         72d9c7izNV2fNm+Mk4TwlcEQc3Fh6JWLsySivYCQ/JaK+5mnBBsyfGIYkw2GNUHCHSPp
         PrywYBHKfkVl+OWg8QVvm1Q954Smks7S257MIsn+gyt+c5hWO18HSuhsp2FFL8Noulsn
         B6VlcgJI2malhMWeXz6nG492rpso6fkSYX/uobrTszcYv2u9GIuQop8IkkxkR0NvHZmO
         2k0gDd27UFz9bmwYWq6VhJLGfX3loADf8fijQHr90EV17gipsgDPj/Qx+jPY4TSSYhe9
         xQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3qJhOENprwVDBgKHWe+Nqa+ACNZQmHxei86hUJ0EJ4k=;
        b=JiTLCACPUTOiPOtxMbBFiMC5ONBjWyCuCWARjDfYDxIfg0IxUGoqMILiWa/FQQTkCU
         fXCm8d5rDjkVLYFuCUxwYaJkBoQg2WvnlmgSWIzEKJWSneRzYU2rMG9FeFAZTka/38KW
         e2vkKsUnjj26+ezMBYWQRAd6MRPDnPVJliL34Dx9LeYVWKoy6tw3qiFzwJp5ioLlAu5J
         Xe8l1j8UNuXBLHtLecCIFWdyqXd+ne50jvG+mGqxnmfSRXHSjVIwAGOw8jxw1hl0OPl2
         4ibwZ6aEvg7R48njLqPr8xFPrMDC+z5ZzogVJi5HksDloqAn6jf6621REaFvRl9VXThg
         q7+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jmbyV0dz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m27si2020956qtg.2.2020.11.18.15.48.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 15:48:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u2so1903580pls.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 15:48:58 -0800 (PST)
X-Received: by 2002:a17:902:221:b029:d8:f938:b112 with SMTP id
 30-20020a1709020221b02900d8f938b112mr6500995plc.10.1605743337329; Wed, 18 Nov
 2020 15:48:57 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com> <20201118220731.925424-3-samitolvanen@google.com>
In-Reply-To: <20201118220731.925424-3-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Nov 2020 15:48:45 -0800
Message-ID: <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jmbyV0dz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Nov 18, 2020 at 2:07 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
>
>   https://llvm.org/docs/LinkTimeOptimization.html
>
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
>
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
>
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
>
>   https://clang.llvm.org/docs/ThinLTO.html
>
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
>
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
>
> Alternatively, at least the following LLVM tools must be used:
>
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
>
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile                          | 19 +++++++-
>  arch/Kconfig                      | 75 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 +++--
>  scripts/Makefile.build            |  9 +++-
>  scripts/Makefile.modfinal         |  9 +++-
>  scripts/Makefile.modpost          | 21 ++++++++-
>  scripts/link-vmlinux.sh           | 32 +++++++++----
>  7 files changed, 158 insertions(+), 18 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 8c8feb4245a6..240560e88d69 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -893,6 +893,21 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
>
> +ifdef CONFIG_LTO_CLANG
> +ifdef CONFIG_THINLTO
> +CC_FLAGS_LTO   += -flto=thin -fsplit-lto-unit
> +KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
> +else
> +CC_FLAGS_LTO   += -flto
> +endif
> +CC_FLAGS_LTO   += -fvisibility=default
> +endif
> +
> +ifdef CONFIG_LTO
> +KBUILD_CFLAGS  += $(CC_FLAGS_LTO)
> +export CC_FLAGS_LTO
> +endif
> +
>  ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
>  KBUILD_CFLAGS += -falign-functions=32
>  endif
> @@ -1473,7 +1488,7 @@ MRPROPER_FILES += include/config include/generated          \
>                   *.spec
>
>  # Directories & files removed with 'make distclean'
> -DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
> +DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
>
>  # clean - Delete most, but leave enough to build external modules
>  #
> @@ -1719,7 +1734,7 @@ PHONY += compile_commands.json
>
>  clean-dirs := $(KBUILD_EXTMOD)
>  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> -       $(KBUILD_EXTMOD)/compile_commands.json
> +       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
>
>  PHONY += help
>  help:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 56b6ccc0e32d..a41fcb3ca7c6 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -598,6 +598,81 @@ config SHADOW_CALL_STACK
>           reading and writing arbitrary memory may be able to locate them
>           and hijack control flow by modifying the stacks.
>
> +config LTO
> +       bool
> +
> +config ARCH_SUPPORTS_LTO_CLANG
> +       bool
> +       help
> +         An architecture should select this option if it supports:
> +         - compiling with Clang,
> +         - compiling inline assembly with Clang's integrated assembler,
> +         - and linking with LLD.
> +
> +config ARCH_SUPPORTS_THINLTO
> +       bool
> +       help
> +         An architecture should select this option if it supports Clang's
> +         ThinLTO.
> +
> +config THINLTO
> +       bool "Clang ThinLTO"
> +       depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
> +       default y
> +       help
> +         This option enables Clang's ThinLTO, which allows for parallel
> +         optimization and faster incremental compiles. More information
> +         can be found from Clang's documentation:
> +
> +           https://clang.llvm.org/docs/ThinLTO.html
> +
> +         If you say N here, the compiler will use full LTO, which may
> +         produce faster code, but building the kernel will be significantly
> +         slower as the linker won't efficiently utilize multiple threads.
> +
> +         If unsure, say Y.

I think the order of these new configs makes it so that ThinLTO
appears above LTO in menuconfig; I don't like that, and wish it came
immediately after.  Does `THINLTO` have to be defined _after_ the
choice for LTO_NONE/LTO_CLANG, perhaps?

Secondly, I don't like how ThinLTO is a config and not a choice.  If I
don't set ThinLTO, what am I getting?  That's a rhetorical question; I
know its full LTO, and I guess the help text does talk about the
tradeoffs and what you would get.  I guess what's curious to me is
"why does it display ThinLTO? Why not FullLTO?"  I can't help but
wonder if a kconfig `choice` rather than a `config` would be better
here, that way it's more obvious the user is making a choice between
ThinLTO vs Full LTO, rather than the current patches which look like
"ThinkLTO on/off."

These are cosmetic concerns, feel free to ignore.  Just a thought.

> +
> +choice
> +       prompt "Link Time Optimization (LTO)"
> +       default LTO_NONE
> +       help
> +         This option enables Link Time Optimization (LTO), which allows the
> +         compiler to optimize binaries globally.
> +
> +         If unsure, select LTO_NONE. Note that LTO is very resource-intensive
> +         so it's disabled by default.
> +
> +config LTO_NONE
> +       bool "None"
> +
> +config LTO_CLANG
> +       bool "Clang's Link Time Optimization (EXPERIMENTAL)"
> +       # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> +       depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> +       depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> +       depends on ARCH_SUPPORTS_LTO_CLANG
> +       depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
> +       depends on !KASAN
> +       depends on !GCOV_KERNEL
> +       depends on !MODVERSIONS
> +       select LTO
> +       help
> +          This option enables Clang's Link Time Optimization (LTO), which
> +          allows the compiler to optimize the kernel globally. If you enable
> +          this option, the compiler generates LLVM bitcode instead of ELF
> +          object files, and the actual compilation from bitcode happens at
> +          the LTO link step, which may take several minutes depending on the
> +          kernel configuration. More information can be found from LLVM's
> +          documentation:
> +
> +           https://llvm.org/docs/LinkTimeOptimization.html
> +
> +         To select this option, you also need to use LLVM tools to handle
> +         the bitcode by passing LLVM=1 to make.
> +
> +endchoice
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>         bool
>         help
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..8988a2e445d8 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -90,15 +90,18 @@
>   * .data. We don't want to pull in .data..other sections, which Linux
>   * has defined. Same for text and bss.
>   *
> + * With LTO_CLANG, the linker also splits sections by default, so we need
> + * these macros to combine the sections during the final link.
> + *
>   * RODATA_MAIN is not used because existing code already defines .rodata.x
>   * sections to be brought in with rodata.
>   */
> -#ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> +#if defined(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION) || defined(CONFIG_LTO_CLANG)
>  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
>  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
> -#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
> -#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
> +#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
> +#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
>  #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
>  #else
>  #define TEXT_MAIN .text
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 2175ddb1ee0c..ed74b2f986f7 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -111,7 +111,7 @@ endif
>  # ---------------------------------------------------------------------------
>
>  quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
> -      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) -fverbose-asm -S -o $@ $<
> +      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
>
>  $(obj)/%.s: $(src)/%.c FORCE
>         $(call if_changed_dep,cc_s_c)
> @@ -425,8 +425,15 @@ $(obj)/lib.a: $(lib-y) FORCE
>  # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
>  # module is turned into a multi object module, $^ will contain header file
>  # dependencies recorded in the .*.cmd file.
> +ifdef CONFIG_LTO_CLANG
> +quiet_cmd_link_multi-m = AR [M]  $@
> +cmd_link_multi-m =                                             \
> +       rm -f $@;                                               \
> +       $(AR) cDPrsT $@ $(filter %.o,$^)
> +else
>  quiet_cmd_link_multi-m = LD [M]  $@
>        cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
> +endif
>
>  $(multi-used-m): FORCE
>         $(call if_changed,link_multi-m)
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index ae01baf96f4e..2cb9a1d88434 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -6,6 +6,7 @@
>  PHONY := __modfinal
>  __modfinal:
>
> +include $(objtree)/include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
>  # for c_flags
> @@ -29,6 +30,12 @@ quiet_cmd_cc_o_c = CC [M]  $@
>
>  ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
>
> +ifdef CONFIG_LTO_CLANG
> +# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> +# avoid a second slow LTO link
> +prelink-ext := .lto
> +endif
> +
>  quiet_cmd_ld_ko_o = LD [M]  $@
>        cmd_ld_ko_o =                                                     \
>         $(LD) -r $(KBUILD_LDFLAGS)                                      \
> @@ -36,7 +43,7 @@ quiet_cmd_ld_ko_o = LD [M]  $@
>                 -T scripts/module.lds -o $@ $(filter %.o, $^);          \
>         $(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
>
> -$(modules): %.ko: %.o %.mod.o scripts/module.lds FORCE
> +$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds FORCE
>         +$(call if_changed,ld_ko_o)
>
>  targets += $(modules) $(modules:.ko=.mod.o)
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index f54b6ac37ac2..9ff8bfdb574d 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -43,6 +43,9 @@ __modpost:
>  include include/config/auto.conf
>  include scripts/Kbuild.include
>
> +# for ld_flags
> +include scripts/Makefile.lib
> +
>  MODPOST = scripts/mod/modpost                                                          \
>         $(if $(CONFIG_MODVERSIONS),-m)                                                  \
>         $(if $(CONFIG_MODULE_SRCVERSION_ALL),-a)                                        \
> @@ -102,12 +105,26 @@ $(input-symdump):
>         @echo >&2 'WARNING: Symbol version dump "$@" is missing.'
>         @echo >&2 '         Modules may not have dependencies or modversions.'
>
> +ifdef CONFIG_LTO_CLANG
> +# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
> +# LTO to compile them into native code before running modpost
> +prelink-ext := .lto
> +
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules = $(LD) $(ld_flags) -r -o $@ --whole-archive $^
> +
> +%.lto.o: %.o
> +       $(call if_changed,cc_lto_link_modules)
> +endif
> +
> +modules := $(sort $(shell cat $(MODORDER)))
> +
>  # Read out modules.order to pass in modpost.
>  # Otherwise, allmodconfig would fail with "Argument list too long".
>  quiet_cmd_modpost = MODPOST $@
> -      cmd_modpost = sed 's/ko$$/o/' $< | $(MODPOST) -T -
> +      cmd_modpost = sed 's/\.ko$$/$(prelink-ext)\.o/' $< | $(MODPOST) -T -
>
> -$(output-symdump): $(MODORDER) $(input-symdump) FORCE
> +$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(prelink-ext).o) FORCE
>         $(call if_changed,modpost)
>
>  targets += $(output-symdump)
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 6eded325c837..596507573a48 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -56,6 +56,14 @@ modpost_link()
>                 ${KBUILD_VMLINUX_LIBS}                          \
>                 --end-group"
>
> +       if [ -n "${CONFIG_LTO_CLANG}" ]; then
> +               # This might take a while, so indicate that we're doing
> +               # an LTO link
> +               info LTO ${1}
> +       else
> +               info LD ${1}
> +       fi
> +
>         ${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${objects}
>  }
>
> @@ -103,13 +111,22 @@ vmlinux_link()
>         fi
>
>         if [ "${SRCARCH}" != "um" ]; then
> -               objects="--whole-archive                        \
> -                       ${KBUILD_VMLINUX_OBJS}                  \
> -                       --no-whole-archive                      \
> -                       --start-group                           \
> -                       ${KBUILD_VMLINUX_LIBS}                  \
> -                       --end-group                             \
> -                       ${@}"
> +               if [ -n "${CONFIG_LTO_CLANG}" ]; then
> +                       # Use vmlinux.o instead of performing the slow LTO
> +                       # link again.
> +                       objects="--whole-archive                \
> +                               vmlinux.o                       \
> +                               --no-whole-archive              \
> +                               ${@}"
> +               else
> +                       objects="--whole-archive                \
> +                               ${KBUILD_VMLINUX_OBJS}          \
> +                               --no-whole-archive              \
> +                               --start-group                   \
> +                               ${KBUILD_VMLINUX_LIBS}          \
> +                               --end-group                     \
> +                               ${@}"
> +               fi
>
>                 ${LD} ${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}      \
>                         ${strip_debug#-Wl,}                     \
> @@ -274,7 +291,6 @@ fi;
>  ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
>
>  #link vmlinux.o
> -info LD vmlinux.o
>  modpost_link vmlinux.o
>  objtool_link vmlinux.o
>
> --
> 2.29.2.299.gdc1121823c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnYTMzaahnBqdNYPz3KMdnkp%3DjZ4hxiqkTYzM5%2BBBdezA%40mail.gmail.com.
