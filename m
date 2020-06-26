Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7MP3H3QKGQE52CONVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AA020B917
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 21:09:51 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id b5sf6420176pls.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 12:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593198590; cv=pass;
        d=google.com; s=arc-20160816;
        b=nvxxfG9t+NfEgiANdsGLgSHEgNhOXSccn8Kzg1yTwuxv0o4ocXwYuklA8fIwB2u6WT
         q6XToGHSOBmp4797hfWTBoHG6PFp4bM0NuWYFt4fPIdr9sbgcNI5IFzzktNtEfBXqyP4
         BKg8OItf+p1pHR5tsjknZ+tYwQn88p04jcFZjv8xo70v1z+68u5O34Ny4bSZHPQV5q/+
         tGOmTwYVVbqG9IewggfwSCK9lcaE+9yT/ems1B7zRBzYjT9IDqBO4TAa9Yw7Ip09JCBs
         61fLQr6D9hzgxYfDCF1buLTZpbpB4JkWwGXVU891Y7eYl0uMzXM//aEqqG211SS+fYcO
         /i8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P60TojNIZ74EesryytKqaWPYR5Xu5+S78BwJuV4rKEw=;
        b=hhEn3yHxE73p8SmtsK8sGNLqo7Cp1JpsmIbipQhQ3DTPHhWfBmYAZ4nfvyys8Vrpky
         w7vRtbt+4XWdzJXUAMLGKFA2922bmd+PH3EV2fX2BFbO76v1T75QYM/S+4zCM0id42yb
         GPtL6a9etNRPkfyzqIUA3c6Vv8yL5KbMMgqQSDvl/e2f9v4zUA3tHzkQfYtp5Vvqs1rj
         Sz4aGYw4ynfvWl1lfktjbaqdQkcTqttQZGznfwyM+K2163kKgoD6MD416UwvB7LzTP55
         olF0qTIH6cvADjzfv0usf41R9pYNW2aNtop8jOwSv8O48m1sPkFUpsgKStZ6KNgfij4/
         hmsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nv13wLEC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P60TojNIZ74EesryytKqaWPYR5Xu5+S78BwJuV4rKEw=;
        b=mHbcvHUpBgp9gsAIi7phgGn5Yqn35NCcevQ4fNg/gwe4Hn4ExxJX79XTNkKbusrsLd
         iYh3NXGz2Hcqpu7QoMrSMZJGFYs8elX8TIy/qUxDrs9He05Ikmpm2jQKnb7k+2z5OnT2
         dYrmGFRR+PkgOw6zBIt9pHeXesNeOHXfQkEoMcuRea58D6o9cRKMVXabHRpdzotF25iL
         lxsa8Ci6CHLdIImfDLN4522Iuz/h07n5tw9ThaZJjSDlcDL3LocLRh9p+h8EKSWczVdT
         R8lJ/DJIKj4/oBOkquQLR3H2x1+/Eb3219d0JPVYd7fuqj+pbtcS0kVHfvMFmnvwchiK
         YNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P60TojNIZ74EesryytKqaWPYR5Xu5+S78BwJuV4rKEw=;
        b=Kenn3wyQjc7OairdluCMU6/2MGEblOaCO20iOZTzjoQvmWGhZql5bEngpPeUhmN1h3
         B0fYkgmx0AEifc4TfL+uAZXZUOGvyD/jPe0oJgJAYQofj7FieMDMUqHBhAAz/BtQnBMK
         3zhyECY4hlQKZVyfxeYjxFGJ9CTltt7E41mX9RmIDCMsgPlpdNKsDhh303h4qp6D+Eca
         m51Bje7TpPTAgsvI8brotPyRd5HKGraqqUO1T9G0W8iOon9A7nCbv3vfpjT59QQvkyGj
         laJKYsh9kSsVyZJyTTxtkb3MkEqwL6BO0DnFnSayVOif/iD36BkZ1UP/yr8TD5eSOGpn
         H9WA==
X-Gm-Message-State: AOAM532JUrYr+8SF8bTT5oWp6Bgsha3Xmp3mBl00nQmNDT1S2L4wCz9u
	k3G0wBOr9yWVdkXJftWgOZQ=
X-Google-Smtp-Source: ABdhPJzi7pG+11ZNEl3KPWMVHKYISn8hDdN5ogCOf9rYobf1guXMp/w9N2eQUha4U1sagxOc5+lAzA==
X-Received: by 2002:a63:9d87:: with SMTP id i129mr162992pgd.412.1593198589814;
        Fri, 26 Jun 2020 12:09:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls3821518plf.2.gmail; Fri, 26
 Jun 2020 12:09:49 -0700 (PDT)
X-Received: by 2002:a17:90a:e283:: with SMTP id d3mr5282014pjz.170.1593198589359;
        Fri, 26 Jun 2020 12:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593198589; cv=none;
        d=google.com; s=arc-20160816;
        b=F/MZIjKW35fE/wjVMl7hhwHfgwB7UeMSMwgITTgut8FkPTrtFsd/wXwWB+eZAdrNf6
         yK/Bjg+Z7+Iy9ehORVJKAkjmzeKfketmpHxmLTRv6wRcH6KrVNJIqlPemjVy2rihVdar
         v9rDg4mVm2tbwZSpUzYSD8p8E5iBGOko503J1k51yi1a4eI+/pLYuXNoosjO+lItMkUp
         cTy8xg+Cyp/bqluQ0P3V+P2jgCYEKeLsoGUAtv2ub/9rUhAI8KxceIzmA2J2k2BTpGhj
         JUWb/XUHNJ8bHMW31wRWdRfbyis0705xinNPrJBMYDk81tmxMAaXiROHP/nmzjcO/2rr
         uQFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XZcFCeJCh8+hTufNOqUdyvF9uO8D4rYXwyZaYpA63AE=;
        b=egoKqcitaiUQYdt1W21qnlS7qYSOme2MeRprynfwtVLWU4zcneqb3QQpBihnuYp3We
         O12b2NetsSnEs0paM0Ptb7k7bHUjWB4wKaqH7q0ySMgpBByaUaJQxJYXqrsRFexg3M+S
         YsrZShL6ru9T/W5SqqspVAExnlYTIpS1eBUIP+09diKtarE5rlf5xT8ZmC+XLiRb8YOs
         oCtcL1XcVP0wsMzVyuURBUCknvGB339acxf8yUq/+eciNpw3WIgzICtqkrQyGXmQkdL0
         YZGii7nZZlrolOtWunPOrN1rhCPzj1kqfzW0TtGVzMn079vwFT0JTuV4pY4mt6MUOVr6
         aUkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nv13wLEC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c1si579459pfb.1.2020.06.26.12.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 12:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f9so5037896pfn.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 12:09:49 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr185439pgf.10.1593198588417;
 Fri, 26 Jun 2020 12:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org>
In-Reply-To: <20200626185913.92890-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Jun 2020 12:09:37 -0700
Message-ID: <CAKwvOdnK4KZaE=D40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nv13wLEC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Some Makefiles already pass -fno-stack-protector unconditionally.
> For example, arch/arm64/kernel/vdso/Makefile, arch/x86/xen/Makefile.
> No problem report so far about hard-coding this option. So, we can
> assume all supported compilers know -fno-stack-protector.
>
> GCC 4.8 and Clang support this option (https://godbolt.org/z/_HDGzN)
>
> Get rid of cc-option from -fno-stack-protector.
>
> Remove CONFIG_CC_HAS_STACKPROTECTOR_NONE, which should always be 'y'.
>
> Note:
> arch/mips/vdso/Makefile adds -fno-stack-protector twice, first
> unconditionally, and second conditionally. I removed the second one.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Documentation/kbuild/kconfig-language.rst | 4 ++--
>  Makefile                                  | 2 +-
>  arch/Kconfig                              | 3 ---
>  arch/arm/boot/compressed/Makefile         | 3 +--
>  arch/mips/vdso/Makefile                   | 3 +--
>  arch/powerpc/kernel/Makefile              | 2 +-
>  arch/powerpc/platforms/powermac/Makefile  | 2 +-
>  arch/sparc/vdso/Makefile                  | 4 ++--
>  arch/um/Makefile                          | 3 +--
>  arch/x86/Makefile                         | 2 +-
>  arch/x86/boot/compressed/Makefile         | 2 +-
>  arch/x86/entry/vdso/Makefile              | 4 ++--
>  arch/x86/kernel/cpu/Makefile              | 3 +--
>  arch/x86/lib/Makefile                     | 2 +-
>  arch/x86/mm/Makefile                      | 7 +++----
>  arch/x86/power/Makefile                   | 3 +--
>  arch/x86/purgatory/Makefile               | 2 +-
>  arch/x86/um/vdso/Makefile                 | 2 +-
>  arch/x86/xen/Makefile                     | 5 ++---
>  drivers/firmware/efi/libstub/Makefile     | 2 +-
>  drivers/xen/Makefile                      | 3 +--
>  kernel/kcsan/Makefile                     | 3 +--
>  lib/Makefile                              | 4 ++--
>  mm/kasan/Makefile                         | 2 +-
>  24 files changed, 30 insertions(+), 42 deletions(-)
>
> diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
> index a1601ec3317b..2538e7cb08e6 100644
> --- a/Documentation/kbuild/kconfig-language.rst
> +++ b/Documentation/kbuild/kconfig-language.rst
> @@ -540,8 +540,8 @@ followed by a test macro::
>  If you need to expose a compiler capability to makefiles and/or C source files,
>  `CC_HAS_` is the recommended prefix for the config option::
>
> -  config CC_HAS_STACKPROTECTOR_NONE
> -       def_bool $(cc-option,-fno-stack-protector)
> +  config CC_HAS_ASM_GOTO
> +       def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
>
>  Build as module only
>  ~~~~~~~~~~~~~~~~~~~~
> diff --git a/Makefile b/Makefile
> index 5496a32dffa6..73948798ce3f 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -762,7 +762,7 @@ ifneq ($(CONFIG_FRAME_WARN),0)
>  KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
>  endif
>
> -stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> +stackp-flags-y                                    := -fno-stack-protector
>  stackp-flags-$(CONFIG_STACKPROTECTOR)             := -fstack-protector
>  stackp-flags-$(CONFIG_STACKPROTECTOR_STRONG)      := -fstack-protector-strong
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 8cc35dc556c7..1ea61290900a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -478,9 +478,6 @@ config HAVE_STACKPROTECTOR
>           An arch should select this symbol if:
>           - it has implemented a stack canary (e.g. __stack_chk_guard)
>
> -config CC_HAS_STACKPROTECTOR_NONE
> -       def_bool $(cc-option,-fno-stack-protector)
> -
>  config STACKPROTECTOR
>         bool "Stack Protector buffer overflow detection"
>         depends on HAVE_STACKPROTECTOR
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 00602a6fba04..cb7a56c6723c 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -84,9 +84,8 @@ endif
>
>  # -fstack-protector-strong triggers protection checks in this code,
>  # but it is being used too early to link to meaningful stack_chk logic.
> -nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
>  $(foreach o, $(libfdt_objs) atags_to_fdt.o, \
> -       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
> +       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt -fno-stack-protector))
>
>  # These were previously generated C files. When you are building the kernel
>  # with O=, make sure to remove the stale files in the output tree. Otherwise,
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index 2e64c7600eea..57fe83235281 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -35,8 +35,7 @@ cflags-vdso := $(ccflags-vdso) \
>         -O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
>         -mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
>         -fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
> -       $(call cc-option, -fno-asynchronous-unwind-tables) \
> -       $(call cc-option, -fno-stack-protector)
> +       $(call cc-option, -fno-asynchronous-unwind-tables)
>  aflags-vdso := $(ccflags-vdso) \
>         -D__ASSEMBLY__ -Wa,-gdwarf-2
>
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index 244542ae2a91..3a83f2b876a5 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -16,7 +16,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>  CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>  CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>
> -CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
> +CFLAGS_prom_init.o += -fno-stack-protector
>  CFLAGS_prom_init.o += -DDISABLE_BRANCH_PROFILING
>  CFLAGS_prom_init.o += -ffreestanding
>
> diff --git a/arch/powerpc/platforms/powermac/Makefile b/arch/powerpc/platforms/powermac/Makefile
> index f4247ade71ca..cf85f0662d0d 100644
> --- a/arch/powerpc/platforms/powermac/Makefile
> +++ b/arch/powerpc/platforms/powermac/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  CFLAGS_bootx_init.o            += -fPIC
> -CFLAGS_bootx_init.o            += $(call cc-option, -fno-stack-protector)
> +CFLAGS_bootx_init.o            += -fno-stack-protector
>
>  KASAN_SANITIZE_bootx_init.o := n
>
> diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
> index 708cb6304c2d..f44355e46f31 100644
> --- a/arch/sparc/vdso/Makefile
> +++ b/arch/sparc/vdso/Makefile
> @@ -54,7 +54,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
>  # optimize sibling calls.
>  #
>  CFL := $(PROFILING) -mcmodel=medlow -fPIC -O2 -fasynchronous-unwind-tables -m64 \
> -       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
> +       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
>         -fno-omit-frame-pointer -foptimize-sibling-calls \
>         -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
>
> @@ -93,7 +93,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 := $(filter-out $(SPARC_REG_CFLAGS),$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 += -m32 -msoft-float -fpic
> -KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
> +KBUILD_CFLAGS_32 += -fno-stack-protector
>  KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
>  KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
>  KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
> diff --git a/arch/um/Makefile b/arch/um/Makefile
> index 3f27aa3ec0a6..1cea46ff9bb7 100644
> --- a/arch/um/Makefile
> +++ b/arch/um/Makefile
> @@ -121,8 +121,7 @@ LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
>  LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
>
>  CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
> -       $(call cc-option, -fno-stack-protector,) \
> -       $(call cc-option, -fno-stack-protector-all,)
> +       -fno-stack-protector $(call cc-option, -fno-stack-protector-all)

Just curious, looks like we could do the same for
`-fno-stack-protector-all`, here or tree-wide, right?  Wait, what
compiler recognizes -fno-stack-protector-all?
https://godbolt.org/z/QFQKE_

>
>  # Options used by linker script
>  export LDS_START      := $(START)
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 00e378de8bc0..89c3cdfba753 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -37,7 +37,7 @@ REALMODE_CFLAGS       := $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
>                    -mno-mmx -mno-sse
>
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -ffreestanding)
> -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-stack-protector)
> +REALMODE_CFLAGS += -fno-stack-protector
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
>  export REALMODE_CFLAGS
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 7619742f91c9..c88a31569a5e 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -36,7 +36,7 @@ cflags-$(CONFIG_X86_64) := -mcmodel=small
>  KBUILD_CFLAGS += $(cflags-y)
>  KBUILD_CFLAGS += -mno-mmx -mno-sse
>  KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
> -KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
> +KBUILD_CFLAGS += -fno-stack-protector
>  KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
>  KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
>  KBUILD_CFLAGS += -Wno-pointer-sign
> diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> index 04e65f0698f6..215376d975a2 100644
> --- a/arch/x86/entry/vdso/Makefile
> +++ b/arch/x86/entry/vdso/Makefile
> @@ -82,7 +82,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
>  # optimize sibling calls.
>  #
>  CFL := $(PROFILING) -mcmodel=small -fPIC -O2 -fasynchronous-unwind-tables -m64 \
> -       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
> +       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
>         -fno-omit-frame-pointer -foptimize-sibling-calls \
>         -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
>
> @@ -151,7 +151,7 @@ KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
>  KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
> -KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
> +KBUILD_CFLAGS_32 += -fno-stack-protector
>  KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
>  KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
>  KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
> diff --git a/arch/x86/kernel/cpu/Makefile b/arch/x86/kernel/cpu/Makefile
> index dba6a83bc349..93792b457b81 100644
> --- a/arch/x86/kernel/cpu/Makefile
> +++ b/arch/x86/kernel/cpu/Makefile
> @@ -17,8 +17,7 @@ KCOV_INSTRUMENT_perf_event.o := n
>  KCSAN_SANITIZE_common.o := n
>
>  # Make sure load_percpu_segment has no stackprotector
> -nostackp := $(call cc-option, -fno-stack-protector)
> -CFLAGS_common.o                := $(nostackp)
> +CFLAGS_common.o                := -fno-stack-protector
>
>  obj-y                  := cacheinfo.o scattered.o topology.o
>  obj-y                  += common.o
> diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
> index 6110bce7237b..d46fff11f06f 100644
> --- a/arch/x86/lib/Makefile
> +++ b/arch/x86/lib/Makefile
> @@ -24,7 +24,7 @@ ifdef CONFIG_FUNCTION_TRACER
>  CFLAGS_REMOVE_cmdline.o = -pg
>  endif
>
> -CFLAGS_cmdline.o := $(call cc-option, -fno-stack-protector)
> +CFLAGS_cmdline.o := -fno-stack-protector
>  endif
>
>  inat_tables_script = $(srctree)/arch/x86/tools/gen-insn-attr-x86.awk
> diff --git a/arch/x86/mm/Makefile b/arch/x86/mm/Makefile
> index f7fd0e868c9c..5864219221ca 100644
> --- a/arch/x86/mm/Makefile
> +++ b/arch/x86/mm/Makefile
> @@ -22,10 +22,9 @@ obj-y                                :=  init.o init_$(BITS).o fault.o ioremap.o extable.o mmap.o \
>  obj-y                          += pat/
>
>  # Make sure __phys_addr has no stackprotector
> -nostackp := $(call cc-option, -fno-stack-protector)
> -CFLAGS_physaddr.o              := $(nostackp)
> -CFLAGS_setup_nx.o              := $(nostackp)
> -CFLAGS_mem_encrypt_identity.o  := $(nostackp)
> +CFLAGS_physaddr.o              := -fno-stack-protector
> +CFLAGS_setup_nx.o              := -fno-stack-protector
> +CFLAGS_mem_encrypt_identity.o  := -fno-stack-protector
>
>  CFLAGS_fault.o := -I $(srctree)/$(src)/../include/asm/trace
>
> diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
> index 37923d715741..6907b523e856 100644
> --- a/arch/x86/power/Makefile
> +++ b/arch/x86/power/Makefile
> @@ -3,8 +3,7 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
>
>  # __restore_processor_state() restores %gs after S3 resume and so should not
>  # itself be stack-protected
> -nostackp := $(call cc-option, -fno-stack-protector)
> -CFLAGS_cpu.o   := $(nostackp)
> +CFLAGS_cpu.o   := -fno-stack-protector
>
>  obj-$(CONFIG_PM_SLEEP)         += cpu.o
>  obj-$(CONFIG_HIBERNATION)      += hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 088bd764e0b7..183ac60e5990 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -34,7 +34,7 @@ KCOV_INSTRUMENT := n
>  PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
>  PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
>  PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
> -PURGATORY_CFLAGS += $(call cc-option,-fno-stack-protector)
> +PURGATORY_CFLAGS += -fno-stack-protector
>
>  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
>  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
> index 0caddd6acb22..5943387e3f35 100644
> --- a/arch/x86/um/vdso/Makefile
> +++ b/arch/x86/um/vdso/Makefile
> @@ -42,7 +42,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  # optimize sibling calls.
>  #
>  CFL := $(PROFILING) -mcmodel=small -fPIC -O2 -fasynchronous-unwind-tables -m64 \
> -       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
> +       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
>         -fno-omit-frame-pointer -foptimize-sibling-calls
>
>  $(vobjs): KBUILD_CFLAGS += $(CFL)
> diff --git a/arch/x86/xen/Makefile b/arch/x86/xen/Makefile
> index 084de77a109e..5f1db522d06b 100644
> --- a/arch/x86/xen/Makefile
> +++ b/arch/x86/xen/Makefile
> @@ -9,9 +9,8 @@ CFLAGS_REMOVE_irq.o = -pg
>  endif
>
>  # Make sure early boot has no stackprotector
> -nostackp := $(call cc-option, -fno-stack-protector)
> -CFLAGS_enlighten_pv.o          := $(nostackp)
> -CFLAGS_mmu_pv.o                        := $(nostackp)
> +CFLAGS_enlighten_pv.o          := -fno-stack-protector
> +CFLAGS_mmu_pv.o                        := -fno-stack-protector
>
>  obj-y                          += enlighten.o
>  obj-y                          += mmu.o
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 75daaf20374e..f8418763cd79 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -29,7 +29,7 @@ KBUILD_CFLAGS                 := $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
>                                    -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
>                                    -D__NO_FORTIFY \
>                                    $(call cc-option,-ffreestanding) \
> -                                  $(call cc-option,-fno-stack-protector) \
> +                                  -fno-stack-protector \
>                                    $(call cc-option,-fno-addrsig) \
>                                    -D__DISABLE_EXPORTS
>
> diff --git a/drivers/xen/Makefile b/drivers/xen/Makefile
> index 0d322f3d90cd..c25c9a699b48 100644
> --- a/drivers/xen/Makefile
> +++ b/drivers/xen/Makefile
> @@ -5,8 +5,7 @@ obj-y   += mem-reservation.o
>  obj-y  += events/
>  obj-y  += xenbus/
>
> -nostackp := $(call cc-option, -fno-stack-protector)
> -CFLAGS_features.o                      := $(nostackp)
> +CFLAGS_features.o                      := -fno-stack-protector
>
>  dom0-$(CONFIG_ARM64) += arm-device.o
>  dom0-$(CONFIG_PCI) += pci.o
> diff --git a/kernel/kcsan/Makefile b/kernel/kcsan/Makefile
> index d4999b38d1be..d111f32bd5fd 100644
> --- a/kernel/kcsan/Makefile
> +++ b/kernel/kcsan/Makefile
> @@ -7,8 +7,7 @@ CFLAGS_REMOVE_core.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_debugfs.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_report.o = $(CC_FLAGS_FTRACE)
>
> -CFLAGS_core.o := $(call cc-option,-fno-conserve-stack,) \
> -       $(call cc-option,-fno-stack-protector,)
> +CFLAGS_core.o := $(call cc-option,-fno-conserve-stack,) -fno-stack-protector
>
>  obj-y := core.o debugfs.o report.o
>  obj-$(CONFIG_KCSAN_SELFTEST) += test.o
> diff --git a/lib/Makefile b/lib/Makefile
> index b1c42c10073b..0cda70649f1c 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -22,7 +22,7 @@ KCOV_INSTRUMENT_fault-inject.o := n
>  ifdef CONFIG_AMD_MEM_ENCRYPT
>  KASAN_SANITIZE_string.o := n
>
> -CFLAGS_string.o := $(call cc-option, -fno-stack-protector)
> +CFLAGS_string.o := -fno-stack-protector
>  endif
>
>  # Used by KCSAN while enabled, avoid recursion.
> @@ -300,7 +300,7 @@ endif
>  UBSAN_SANITIZE_ubsan.o := n
>  KASAN_SANITIZE_ubsan.o := n
>  KCSAN_SANITIZE_ubsan.o := n
> -CFLAGS_ubsan.o := $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)
> +CFLAGS_ubsan.o := -fno-stack-protector $(DISABLE_STACKLEAK_PLUGIN)
>
>  obj-$(CONFIG_SBITMAP) += sbitmap.o
>
> diff --git a/mm/kasan/Makefile b/mm/kasan/Makefile
> index d532c2587731..370d970e5ab5 100644
> --- a/mm/kasan/Makefile
> +++ b/mm/kasan/Makefile
> @@ -16,7 +16,7 @@ CFLAGS_REMOVE_tags_report.o = $(CC_FLAGS_FTRACE)
>  # Function splitter causes unnecessary splits in __asan_load1/__asan_store1
>  # see: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63533
>  CC_FLAGS_KASAN_RUNTIME := $(call cc-option, -fno-conserve-stack)
> -CC_FLAGS_KASAN_RUNTIME += $(call cc-option, -fno-stack-protector)
> +CC_FLAGS_KASAN_RUNTIME += -fno-stack-protector
>  # Disable branch tracing to avoid recursion.
>  CC_FLAGS_KASAN_RUNTIME += -DDISABLE_BRANCH_PROFILING
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626185913.92890-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnK4KZaE%3DD40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw%40mail.gmail.com.
