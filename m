Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3X2Z33QKGQE62GMTLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A2A207DB3
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:54:07 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id z6sf2193039otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593032046; cv=pass;
        d=google.com; s=arc-20160816;
        b=CRHc2jnxe1fKWXYNhzFaB2M92jcVmo53uakVPWaKlONxjurI34Z2e6B5POjMCY/PEx
         JRVXnGQ4m3xcYSOHwG9aRKWi9WNjkEZms75y2Qi+uQ1CKp878BnXg1SXYyYutybmwwDE
         saTkv5vzaUeDetMHs8HsZQRkEXWD6l8Tzj8uz7muSKp7VMVTDe0/ozeklMCDnpj+mMrs
         xNUOWM5zmwOcCqd7dorJdqK12i/JB+hzgz9uAgkKrXX3A4sIKSiDoGC54Y8uoSkcFUhs
         bDp1EMFZeP/KSOFb/q7+T5S3CocXgUqk2fKGgkhI6erCCYjZ+tXahxOMQxJXdHeAIjwL
         V8gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Be4e04prz5Xwx36snr72NbhaaAr6g2e8+nkuqgP7oSc=;
        b=kQPBfQESiaJ3QhlIJtGTAFMoKFjeWgClhfFrzA15aUtPcdviOqvJBEow730mmB/9ny
         P9SgUbIbWYxyFR+7m1IA/bObcjo81xpCp8x9Nti9uEiyTZL/slLIKmcGkG8LIbcVshhy
         G07WlQXVxw1kpoaXxL4Is1juv/Sks6XufR68u2p0mh7XupFDNiQZD26FqjETSIwuApVZ
         +h6ddQRhIyWoqZUIq+TYhEnPreK1/yfUArKI0ktDkfe6wMjYqf8INMTVPFIw8BWgJAEv
         XaMMO05xwCUHrhbjYtFW/LTA+zkNMqDAnXEjaOSKmQY3v1xfupxgy7j2lthOleEImKLR
         dWwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H5Esc7pp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Be4e04prz5Xwx36snr72NbhaaAr6g2e8+nkuqgP7oSc=;
        b=N3DimQVrhnL8XhbhhLZ4vVt469369tlkwcC/MpkeYk0txJ9wYEUpjBQac674cLI3w9
         W7Io7ddGm0vH9Pf8UmYviVuDjBSAoFDq92muvBvskm2+0CU2H3wsUzoB7JEhEi/Vm2/W
         vaqIvgo0WzF5TY7ubNW2mPicGGUjTPV1AQpybQ5TSqqvBxHntBPz2077wn4Kc5mwLZbz
         6IU3S5/RsGmUYxdSkIPCvFBLEDiofaSh/ISRxBaHdl9cG5YQvf1HA7VRKdJ497z4voAN
         BQImAu5+mx8z1VOgDVYQirg9FO2wSf6Ya76GTVIx9JwgYHfNQVopELk9oVFA9RUMpfp7
         7HNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Be4e04prz5Xwx36snr72NbhaaAr6g2e8+nkuqgP7oSc=;
        b=DONpqNKPg/64j1cVco7CZeL4Y2uy+qUhnBP03VglyGZv28kZuxUgNqt7w3mHeiphIB
         zg8RZpgyPbuLxuG8Ya3jRitpV88/D59+iQHjh83Kc4qd3CqkAjGRsIbSJKUc/Cer55/I
         FrtnUfsuyb9dduKsMmxAYr9G8IYTlw5yzykn83Z9LOlofKLJ1iP8kxAaxBJPQSMNu9jd
         APPl3MCX2zsg3qURWPWGUqvkHuTW3L9yPsdBKsQ1mXfryjpAY+1tG0qk4Ov0O0FOxL5Z
         AT70RCVGHjPlfmAwwZRsHY+xatXR2TcoZ3op6m03RSyb8B+1i/5Wjw+RtspGcWIn+U97
         FXgA==
X-Gm-Message-State: AOAM533TxnZcGDRiEb6v560n5ABjhpJDRiue9TqLDg3dTucFCzHLVhO+
	rUiMno+bLL/14nEpwlEeZO8=
X-Google-Smtp-Source: ABdhPJwLNTf3/0Ex9Ay80JXkJmexNE7IplW++Kbwp9pUt2FLTf9BXJN4bk+LhbeUDKJtiAq7ppa7mA==
X-Received: by 2002:a4a:db4b:: with SMTP id 11mr25315355oot.11.1593032046609;
        Wed, 24 Jun 2020 13:54:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls662453oif.10.gmail; Wed, 24
 Jun 2020 13:54:06 -0700 (PDT)
X-Received: by 2002:aca:a84d:: with SMTP id r74mr22267357oie.142.1593032046279;
        Wed, 24 Jun 2020 13:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593032046; cv=none;
        d=google.com; s=arc-20160816;
        b=TGsvYSDYcdD1im97ZBlbVVKHc2k184SAAwI2LkRroOIlKqzBnO4csfT7lAP8ymjGQy
         9aOqiXZfah6uGoaS7KM75r7vfYVKFosJrFXnTIonN6yp9VKvaPTImgVQDgvXma2FyBkE
         w4t9OIEmPzMYG60ulhVDwp00Z3SovCW//Oux2Q32fm/VJa22vDlRFY6iqpaHn2K6uCrY
         D26nR7OGPtxHa4iWQkYlaebbCTCwV4HWmCThgudgaldPppvaaCboK1UQqBG6GHIKD19U
         ESTjqR9Fmg8x8ZFslC8+oDpWtQj4iDp43WyDeY5K84YozB2P+t99ErJXBJyxOkEycFpG
         EYdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d0EL9NFdX5f9VfIfl2NFPx5y5hXz1Uyj4y9f4db/Xvs=;
        b=fg+DXdpOTvKhHdPaB/BngL65hVs+pes55u8K4oxasbqIgoLH6d56f/3nLZY8EWx2U4
         2YuMJOFZnvMqZCDIuOylKjfSPVwxWhfv/byroBTIuqJMdN+0c4hhLHa8BefVZCtzp3Sb
         Jajzy0TktQpWkWy2n1OWbJzBLOoLz3+laZJefY2OISj80fzMRQbkIF2Scer7f/YzrA0V
         5OI5A1CAKc8xSeR5eizn+17G/2Q/lbWJt82r7IJQqcTwWHuDozJzkclIf9QiqCNaM3Em
         kmHw21w1c9rc6rr3OW0DIjCs+0uOw/tYWBbRs7ikyYATW/D6hauzvo60xiiVwPk0O+io
         m2gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H5Esc7pp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a13si860504oop.0.2020.06.24.13.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e8so2032347pgc.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:54:06 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr12841493pgn.263.1593032044935;
 Wed, 24 Jun 2020 13:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-3-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-3-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 13:53:52 -0700
Message-ID: <CAKwvOdm=sDLVvwOAc34Q8O85SCHL-NWFjkMeAeLZ4gYRr4aE9A@mail.gmail.com>
Subject: Re: [PATCH 02/22] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H5Esc7pp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Jun 24, 2020 at 1:32 PM Sami Tolvanen <samitolvanen@google.com> wrote:
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
> Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> follow-up patches.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                          | 16 ++++++++
>  arch/Kconfig                      | 66 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 ++++--
>  scripts/Makefile.build            |  9 ++++-
>  scripts/Makefile.modfinal         |  9 ++++-
>  scripts/Makefile.modpost          | 24 ++++++++++-
>  scripts/link-vmlinux.sh           | 32 +++++++++++----
>  7 files changed, 151 insertions(+), 16 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index ac2c61c37a73..0c7fe6fb2143 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -886,6 +886,22 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
>
> +ifdef CONFIG_LTO_CLANG
> +ifdef CONFIG_THINLTO
> +CC_FLAGS_LTO_CLANG := -flto=thin $(call cc-option, -fsplit-lto-unit)

The kconfig change gates this on clang-11; do we still need the
cc-option check here, or can we hardcode the use of -fsplit-lto-unit?
Playing with the flag in godbolt, it looks like clang-8 had support
for this flag.

> +KBUILD_LDFLAGS += --thinlto-cache-dir=.thinlto-cache

It might be nice to have `make distclean` or even `make clean` scrub
the .thinlto-cache?  Also, I verified that the `.gitignore` rule for
`.*` properly ignores this dir.

> +else
> +CC_FLAGS_LTO_CLANG := -flto
> +endif
> +CC_FLAGS_LTO_CLANG += -fvisibility=default
> +endif
> +
> +ifdef CONFIG_LTO
> +CC_FLAGS_LTO   := $(CC_FLAGS_LTO_CLANG)
> +KBUILD_CFLAGS  += $(CC_FLAGS_LTO)
> +export CC_FLAGS_LTO
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 8cc35dc556c7..e00b122293f8 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -552,6 +552,72 @@ config SHADOW_CALL_STACK
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
> +choice
> +       prompt "Link Time Optimization (LTO)"
> +       default LTO_NONE
> +       help
> +         This option enables Link Time Optimization (LTO), which allows the
> +         compiler to optimize binaries globally.
> +
> +         If unsure, select LTO_NONE.
> +
> +config LTO_NONE
> +       bool "None"
> +
> +config LTO_CLANG
> +       bool "Clang's Link Time Optimization (EXPERIMENTAL)"
> +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> +       depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> +       depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> +       depends on ARCH_SUPPORTS_LTO_CLANG
> +       depends on !FTRACE_MCOUNT_RECORD
> +       depends on !KASAN
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
> index db600ef218d7..78079000c05a 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -89,15 +89,18 @@
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
> index 2e8810b7e5ed..f307e708a1b7 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -108,7 +108,7 @@ endif
>  # ---------------------------------------------------------------------------
>
>  quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
> -      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
> +      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
>
>  $(obj)/%.s: $(src)/%.c FORCE
>         $(call if_changed_dep,cc_s_c)
> @@ -424,8 +424,15 @@ $(obj)/lib.a: $(lib-y) FORCE
>  # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
>  # module is turned into a multi object module, $^ will contain header file
>  # dependencies recorded in the .*.cmd file.
> +ifdef CONFIG_LTO_CLANG
> +quiet_cmd_link_multi-m = AR [M]  $@
> +cmd_link_multi-m =                                             \
> +       rm -f $@;                                               \
> +       $(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)
> +else
>  quiet_cmd_link_multi-m = LD [M]  $@
>        cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
> +endif
>
>  $(multi-used-m): FORCE
>         $(call if_changed,link_multi-m)
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 411c1e600e7d..1005b147abd0 100644
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
> @@ -37,7 +44,7 @@ quiet_cmd_ld_ko_o = LD [M]  $@
>                 -o $@ $(filter %.o, $^);                                \
>         $(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
>
> -$(modules): %.ko: %.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
> +$(modules): %.ko: %$(prelink-ext).o %.mod.o $(KBUILD_LDS_MODULE) FORCE
>         +$(call if_changed,ld_ko_o)
>
>  targets += $(modules) $(modules:.ko=.mod.o)
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index 3651cbf6ad49..9ced8aecd579 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -102,12 +102,32 @@ $(input-symdump):
>         @echo >&2 'WARNING: Symbol version dump "$@" is missing.'
>         @echo >&2 '         Modules may not have dependencies or modversions.'
>
> +ifdef CONFIG_LTO_CLANG
> +# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
> +# LTO to compile them into native code before running modpost
> +prelink-ext = .lto
> +
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules =                                              \
> +       $(LD) $(ld_flags) -r -o $@                                      \
> +               --whole-archive $(filter-out FORCE,$^)
> +
> +%.lto.o: %.o FORCE
> +       $(call if_changed,cc_lto_link_modules)
> +
> +PHONY += FORCE
> +FORCE:
> +
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
> index 92dd745906f4..a681b3b6722e 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -52,6 +52,14 @@ modpost_link()
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
> @@ -99,13 +107,22 @@ vmlinux_link()
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
> @@ -270,7 +287,6 @@ fi;
>  ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
>
>  #link vmlinux.o
> -info LD vmlinux.o
>  modpost_link vmlinux.o
>  objtool_link vmlinux.o
>
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3DsDLVvwOAc34Q8O85SCHL-NWFjkMeAeLZ4gYRr4aE9A%40mail.gmail.com.
