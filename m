Return-Path: <clang-built-linux+bncBD63HSEZTUIBBSPP3P3QKGQEHZCVQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBF220BFD6
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 09:39:55 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id l11sf8088354ilc.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 00:39:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593243594; cv=pass;
        d=google.com; s=arc-20160816;
        b=C7TeEj8RrZY1/Yv+u9G/AMht3gRSALd4ulBMpZwGrxsbfDmhXCFxXqSg4xR2ZOr7X8
         6+4VYAJSVfV0KvqGWp9x9Pxca0wNVnlWhnp8euLFeTwdaFU8rPCm+BcKbbBlkFpa44rb
         owca5S401N1I8X81hZ0pxnR1tM1h+KR41WN1snxaJNZx+BTzKR+arcm/4+lkQLFOvZAn
         YWNlu2KAwHHCHgR5vmlLjl/zb5P2e603PHpj/Umk+2zuVycgmJtew3ZllrovyRqDD481
         WmixIQoLh/VFbsPuFcGQ5zypQoRnSboZpISWYwE1kyKR7DR8TYvcP5Pp6CoyT6IbAXbu
         0uYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eIOHqGlFHoPC4RS2w0NCErJRpiVDoGSVXvUijqkmsEs=;
        b=qMr9IigKbzMckGMS6GOLF+sJw1JN5j3u24+H1pgC5c+9yDntz40cAof0vk8Va31kaJ
         uePKFoOMTdFLv0Waovh4RAtqbaMjh63b6LBC2XPvzryx0mWM8vwa2/MBrqJir4pR4phg
         9WKvDOLfxjegaNbjDPPlhBX+4/by9Va3+kjc/eWw5tKpijbGVJ1UZV4MYpWWIePI6LRY
         L5CGW0IrJYY7cvK/C2gARMvMuwxm1PST1DZwZJPkbJAj3fGfYeOIXQhykh3fEJEv2yEi
         6EoAepvmQjNLf3deWk+q10EK5sKMjh5ZARX8CRLEdxgaxfZXcx6RrVhFOVspKQt6JmBm
         TFVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gIW70rCf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIOHqGlFHoPC4RS2w0NCErJRpiVDoGSVXvUijqkmsEs=;
        b=ixcsbs0uy6PwfTwqeM70UdQ/d683keyjsmFo4r2dq9wI8sk4O7tOjGcdwKbRsYVvvS
         pjeyztBl7ejSVGmLzClv13t0y5w3vC4d3y6MDgJs0T+3qF8a7yQLlPLvqU58Yqn/ekR/
         SwT44BnXwSg8XYbgcmVN6v8IPQxYcd0dzOc8Jwhl+aJoooDeYrUC5/BYIsHf5COGspG8
         zsPa42eHjY4Pes+3Td8it/LjSwjpJyRMNX7BQR/lG3jS9E5EJ0RXM9PLukkWNffDuVkO
         vEt+JzD/HQd8gjMGGMfQlyW59D3v8mFFIqEvIXrGs7daJHEha57oD4fntDp+aebl4K1o
         S2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIOHqGlFHoPC4RS2w0NCErJRpiVDoGSVXvUijqkmsEs=;
        b=Uu1J85olo2+Dm7omOxskCnJti3Cx3RBY3uVLYTya2A3m/vIW1rbd9hb8el7JfhTVkP
         bMkpWIDJCVag3OlAiKvAejOhRjrPAhPKDUeWsK9ao7egEUp2verrH2Q9txFj8pKpBi12
         LJSaOceBSYjRuGWiTMghFTBuGPfKRfZLq531Gao9ZEG+Wv77r1/ZBMTWXuVzJWlym/+L
         kD+hB0prCCaqFjlP2PGxe/kLaLpMzzdWdN7nGN1kgNSLaAREfV4GnxppnTNSAw1qc02j
         LDOX8wrNEl7nYclBvXvC+WkVTAgJEHcpjommyPIvKlaN3gutHZGcoMIBzo+1oXh/oz0E
         UJzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dgruGUo5hphwXlOaiY77Tsq+6u1Fi6/gl/fe0Y+i+xC5t6jFb
	7KSMFigBUh6P6YxVKR3MGpI=
X-Google-Smtp-Source: ABdhPJzBO+83gbz/YgreUqDDlB06tYo6mYRFLPSPoSFsPKCSrGehDqoLt3NN3Mnw32KUcXuPufDcwg==
X-Received: by 2002:a02:3908:: with SMTP id l8mr7515848jaa.121.1593243593976;
        Sat, 27 Jun 2020 00:39:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c002:: with SMTP id q2ls3127029ild.4.gmail; Sat, 27 Jun
 2020 00:39:53 -0700 (PDT)
X-Received: by 2002:a92:c205:: with SMTP id j5mr7053335ilo.137.1593243593623;
        Sat, 27 Jun 2020 00:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593243593; cv=none;
        d=google.com; s=arc-20160816;
        b=guhOowJAimYbQmDvLiMhDwd69eJsdVctEN0S4bWuPFlkr+8ZbiBWeA5NuJuFXz+vkc
         m1qAIs5D/TBsogL4SZdIUZXKxKKGFLKhM8caXPh4ScNtou19bVUsbAUwlAfOkKvu2DJT
         LHurD7A6sXj0TWraLq9dESBBCoak5+/vPd67/T1vt8LNfuq1fgUhhvLaxsyxSFiB3fEP
         mm/VOPabRmMWDCkWm5NSBOrm6AP7d099Ase9DyvXjihNDM8OUrN9DQTR3CPewMb9dP0S
         W8E6EwNIZDtFA4cDgRNSDrkDUx9CF/N/2x1Hgk6w10NRW3IlekNfYHn+/DZueY4JTIbJ
         1zFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qztXoYJmOq8RnDt7kpLXWAxPaF8hOGAAEt9Wx6uQTAI=;
        b=FEIkz2ioDmMgM+CbAEuJN3ODwykf2WW697zNykExtvlRs/45fHUkSks/VYtyZeolsq
         //PVTEEa+f4sX8rIxjmsFNucCIN1gOLAunGTuf6o7pqS2+xfjsdxSgRa1yIkBGbWyDP1
         VMJETYm4uiKs2/MmwH8peA/DF8+GWLClcFgnaaWzw9Mf0kU/CHJMlqeykkIv/aZdDxdu
         rqn4iPeLuVpN5OBTOes/6SHpuOxoLHsZuKE3Jmnw+ZpWNu3eumqrsRKtv+yJwnJygPtU
         i8ZEiuT3fK8ZBj2L63zNPS2G4sgxDmK9SvEUOKDpQ13cncHOwtAI8+oO5nGbfnP+aac7
         w75Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gIW70rCf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5si335551ilj.5.2020.06.27.00.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jun 2020 00:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3C82212CC
	for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 07:39:52 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id k6so6178319oij.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 00:39:52 -0700 (PDT)
X-Received: by 2002:aca:ba03:: with SMTP id k3mr5269019oif.33.1593243591686;
 Sat, 27 Jun 2020 00:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org>
In-Reply-To: <20200626185913.92890-1-masahiroy@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 27 Jun 2020 09:39:40 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGee3soY=oSKLEn1-QsMOCKvp3G+d6D5sA+OKJWb+GWdw@mail.gmail.com>
Message-ID: <CAMj1kXGee3soY=oSKLEn1-QsMOCKvp3G+d6D5sA+OKJWb+GWdw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, X86 ML <x86@kernel.org>, 
	linux-efi <linux-efi@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gIW70rCf;       spf=pass
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

On Fri, 26 Jun 2020 at 21:00, Masahiro Yamada <masahiroy@kernel.org> wrote:
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

Acked-by: Ard Biesheuvel <ardb@kernel.org>

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGee3soY%3DoSKLEn1-QsMOCKvp3G%2Bd6D5sA%2BOKJWb%2BGWdw%40mail.gmail.com.
