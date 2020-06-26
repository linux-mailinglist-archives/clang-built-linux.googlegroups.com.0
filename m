Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEVI3H3QKGQEHHRZUNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E5A20B99D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:01:24 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id h8sf1916942pja.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:01:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593201683; cv=pass;
        d=google.com; s=arc-20160816;
        b=HVU/ADufm4uu1Ix4VNqUQdPF55UfG2sbXW6b6eqFeMo0Fjj/4ruVguwnNYnI7tZRf6
         yDW9hVcV6aTEx2wm7/WoSyXgURki6zB1q9zwrlawzaCR924fex2vBJ0IkWDJ2dz/SiFY
         +Q7yLrpgIARKwBcd+W4g5/mSTldj+MeN/2aeXE1pB5LEoqKDRyG6e94nr8Fw/WelISyT
         GQuEg0drW1Yi9MZbPeeIFH3bVPkXnh3PjNhvJtRxvV5k5uK/D1uWAeRmZJvQUPkm70eB
         NY5S3iVywX/3qL6h8pPLiOlGrH9SKHXrbfHM1Awqy9f9ruoXZSJvLVUCTgy+jnLtmitu
         N40A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=AtQJ0qmZyOpYMBbvoYlI35hMMoRlZNswRpGUkW555Zk=;
        b=KtgYxKy8Ki3MReZ2BLXmLoe4hqxjacX7mWx1N7SXBeMfGlIYG285HknEc6O7LIf1WD
         +NBq25wyvN4TSVH7V5OfS5RIz5GpO6D3QOC3X0n5IXWgfv4sKcCyoAUYFUf9wClo6Ng8
         wfgqLCAR6A0UPRuKrdPSAuaZgVuzhCWV+QfLZnZEsbXakdqixNEjuttGJb+KlRrvckVS
         mLhNGfJZI0Ir2UwfvxNufuU8LKBiRgB6J4wnhlUyeyBWF/JUYpAxSHGuS4q7tIlONllF
         2xJby3VHIs7C5t86zMH6nME62ea356eXAgBLp9VXvcFRQyamrFvX3m/KBT0sLQ+hUye4
         VrBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fHAHcOXe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AtQJ0qmZyOpYMBbvoYlI35hMMoRlZNswRpGUkW555Zk=;
        b=dUQzltw1VHc/SlxFZoiSDVPnkiAccnH6NdzkUv58CUeU096N7mHVA+ZkLJQ7FTRgTk
         Z5ipGM4tOc72rt5dUe+lU0QwkP55K7uIL8peDbYGYu9xSpQDK7sD1vNzLhU+Qxiz5ipg
         VbrjFJrvpxY/72IFHM0o7VhNsLgoBQLH+oXyQEuTWRAV+5iiJLno1Id/r3REV7zP4Ue3
         3wiBWxi/42sjms0SFkFC7vY9j09iiHIgQQszFaneSg+wWNEwmtvamomoe7C4natFcaEY
         r2mvh+XGBiOCespcr0byKeuoQjZ2PB4C25yCWKiSGQnudtF9BjRW04jDmAsvDwi9fBS+
         m11Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AtQJ0qmZyOpYMBbvoYlI35hMMoRlZNswRpGUkW555Zk=;
        b=BjSm6SkEy++YivmJNs80DI66pZfWvoO9mssq95QTwM4hHlQU7iW62UFzHNUIwKNgHL
         lvwKZi1+loeUbIpB/glS/ciXtO4GQ8aKBopenyM1AS7zicyYG/cQq+FJTpgEDTBUsz9x
         e2xkFOcNjZi/xOwP4p6xSNYYdaC3zz+8rirX25V2RAUn/coxy0xjyLUzCav4vcwJfaks
         fjDf123jt9CgbNGeWoUKDsLpmhBubW13exNM22EehUhjlZ137gyYx0ZaIG/Rl+peYIoB
         fLOtHVNYi9Ccas+xJugH8JgwZNuCZd4yG+l/FqnkYrIbn4rHtLtzbV2rziKZZAai/e6t
         lM2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334q18G084gk9XV+lhfhUZv4sOS2tSqsmSNjVFSyyJzVZka4YfM
	10903pl5gjsdTP1bouNlxoQ=
X-Google-Smtp-Source: ABdhPJw9buIg/iIGeoM2yrylA12ESFUJ7v7BBd451LoHssgRVDUDnc6IZOYjJ1/6MCHciecBkut+YA==
X-Received: by 2002:a17:90b:1981:: with SMTP id mv1mr5096766pjb.41.1593201682662;
        Fri, 26 Jun 2020 13:01:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls2789330pgf.6.gmail; Fri, 26 Jun
 2020 13:01:22 -0700 (PDT)
X-Received: by 2002:a63:7f5a:: with SMTP id p26mr334808pgn.117.1593201682292;
        Fri, 26 Jun 2020 13:01:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593201682; cv=none;
        d=google.com; s=arc-20160816;
        b=KCwlyP0wC0cRh7eZk6QiYqCP/O/D0nxo0P6tOWVmbB/ByWartAAq1dgZUpC2sBSXg3
         mJWBVQ/EV2DvjWPhjh5a/3PXAqGSCjOgyqkMLhjwBnWVcm6w3GSgNqvfNTRtPh//Shy6
         au9fSCD9XS3SWMZWxGXvqzsHWArrTTLWCflMyBUYOsmv+ezh7eNZor7k4I83KzGYcLYr
         oEhu0/9aKo+dF11fChK2oUf+mAEpDhAW2+R6cu5eX0ocjn+XQIFXzLyD+ZTzRMgz5Dcz
         lb3FsVibeDL3cgizbk3lsu1QbcBc7qk6vooUUofKeiZsjC/iTA6XRUra6nIfcUivO17Q
         ejvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=OXHwkDS97YKhUrAvqCEhi2sUp24PxBPo/pfpCJH3QVE=;
        b=efKdW6/DPOo2RZE5BxVdG9MQkDJF0hHEFJui02QxbcyPZAML5jzKqBLEftJ34s5Txf
         ft6zXEOhG2y37o2XWVJWJrmdTux69B95WM4WpWJ2Zk8zAwvkWWolR1xi5rRqTyZYy+vm
         9ZzBcojb5EJxfzuQRIcNYvawzqoCODYmp2HRHcoaDWnvPChcStoQ2M+wiwumLfFr9MKT
         2h8BbCIwJS+eOx4v1uCFqt0IrMmX/SKybO1LOJGyPSN6bmi8DrWZYcVmocPdoyTZq1fi
         GteRBOH1vPFBcVjbyss91ywG3EnpVEDADb+stYVfiFE7jzGGU17oJh8pXW37n02Tda9D
         L2NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fHAHcOXe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id q13si292548pfc.6.2020.06.26.13.01.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:01:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 05QK0nPV029791
	for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 05:00:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 05QK0nPV029791
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id e15so6125658vsc.7
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:00:50 -0700 (PDT)
X-Received: by 2002:a67:f813:: with SMTP id l19mr3783323vso.215.1593201648927;
 Fri, 26 Jun 2020 13:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOdnK4KZaE=D40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw@mail.gmail.com>
In-Reply-To: <CAKwvOdnK4KZaE=D40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 27 Jun 2020 05:00:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNASx-kj=fHFN9=NDB-HKRSdWAEpGyKF86q8127SqFc07Ag@mail.gmail.com>
Message-ID: <CAK7LNASx-kj=fHFN9=NDB-HKRSdWAEpGyKF86q8127SqFc07Ag@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        linux-efi <linux-efi@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=fHAHcOXe;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jun 27, 2020 at 4:09 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Some Makefiles already pass -fno-stack-protector unconditionally.
> > For example, arch/arm64/kernel/vdso/Makefile, arch/x86/xen/Makefile.
> > No problem report so far about hard-coding this option. So, we can
> > assume all supported compilers know -fno-stack-protector.
> >
> > GCC 4.8 and Clang support this option (https://godbolt.org/z/_HDGzN)
> >
> > Get rid of cc-option from -fno-stack-protector.
> >
> > Remove CONFIG_CC_HAS_STACKPROTECTOR_NONE, which should always be 'y'.
> >
> > Note:
> > arch/mips/vdso/Makefile adds -fno-stack-protector twice, first
> > unconditionally, and second conditionally. I removed the second one.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  Documentation/kbuild/kconfig-language.rst | 4 ++--
> >  Makefile                                  | 2 +-
> >  arch/Kconfig                              | 3 ---
> >  arch/arm/boot/compressed/Makefile         | 3 +--
> >  arch/mips/vdso/Makefile                   | 3 +--
> >  arch/powerpc/kernel/Makefile              | 2 +-
> >  arch/powerpc/platforms/powermac/Makefile  | 2 +-
> >  arch/sparc/vdso/Makefile                  | 4 ++--
> >  arch/um/Makefile                          | 3 +--
> >  arch/x86/Makefile                         | 2 +-
> >  arch/x86/boot/compressed/Makefile         | 2 +-
> >  arch/x86/entry/vdso/Makefile              | 4 ++--
> >  arch/x86/kernel/cpu/Makefile              | 3 +--
> >  arch/x86/lib/Makefile                     | 2 +-
> >  arch/x86/mm/Makefile                      | 7 +++----
> >  arch/x86/power/Makefile                   | 3 +--
> >  arch/x86/purgatory/Makefile               | 2 +-
> >  arch/x86/um/vdso/Makefile                 | 2 +-
> >  arch/x86/xen/Makefile                     | 5 ++---
> >  drivers/firmware/efi/libstub/Makefile     | 2 +-
> >  drivers/xen/Makefile                      | 3 +--
> >  kernel/kcsan/Makefile                     | 3 +--
> >  lib/Makefile                              | 4 ++--
> >  mm/kasan/Makefile                         | 2 +-
> >  24 files changed, 30 insertions(+), 42 deletions(-)
> >
> > diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
> > index a1601ec3317b..2538e7cb08e6 100644
> > --- a/Documentation/kbuild/kconfig-language.rst
> > +++ b/Documentation/kbuild/kconfig-language.rst
> > @@ -540,8 +540,8 @@ followed by a test macro::
> >  If you need to expose a compiler capability to makefiles and/or C source files,
> >  `CC_HAS_` is the recommended prefix for the config option::
> >
> > -  config CC_HAS_STACKPROTECTOR_NONE
> > -       def_bool $(cc-option,-fno-stack-protector)
> > +  config CC_HAS_ASM_GOTO
> > +       def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
> >
> >  Build as module only
> >  ~~~~~~~~~~~~~~~~~~~~
> > diff --git a/Makefile b/Makefile
> > index 5496a32dffa6..73948798ce3f 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -762,7 +762,7 @@ ifneq ($(CONFIG_FRAME_WARN),0)
> >  KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
> >  endif
> >
> > -stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> > +stackp-flags-y                                    := -fno-stack-protector
> >  stackp-flags-$(CONFIG_STACKPROTECTOR)             := -fstack-protector
> >  stackp-flags-$(CONFIG_STACKPROTECTOR_STRONG)      := -fstack-protector-strong
> >
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 8cc35dc556c7..1ea61290900a 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -478,9 +478,6 @@ config HAVE_STACKPROTECTOR
> >           An arch should select this symbol if:
> >           - it has implemented a stack canary (e.g. __stack_chk_guard)
> >
> > -config CC_HAS_STACKPROTECTOR_NONE
> > -       def_bool $(cc-option,-fno-stack-protector)
> > -
> >  config STACKPROTECTOR
> >         bool "Stack Protector buffer overflow detection"
> >         depends on HAVE_STACKPROTECTOR
> > diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> > index 00602a6fba04..cb7a56c6723c 100644
> > --- a/arch/arm/boot/compressed/Makefile
> > +++ b/arch/arm/boot/compressed/Makefile
> > @@ -84,9 +84,8 @@ endif
> >
> >  # -fstack-protector-strong triggers protection checks in this code,
> >  # but it is being used too early to link to meaningful stack_chk logic.
> > -nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> >  $(foreach o, $(libfdt_objs) atags_to_fdt.o, \
> > -       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
> > +       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt -fno-stack-protector))
> >
> >  # These were previously generated C files. When you are building the kernel
> >  # with O=, make sure to remove the stale files in the output tree. Otherwise,
> > diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> > index 2e64c7600eea..57fe83235281 100644
> > --- a/arch/mips/vdso/Makefile
> > +++ b/arch/mips/vdso/Makefile
> > @@ -35,8 +35,7 @@ cflags-vdso := $(ccflags-vdso) \
> >         -O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
> >         -mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
> >         -fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
> > -       $(call cc-option, -fno-asynchronous-unwind-tables) \
> > -       $(call cc-option, -fno-stack-protector)
> > +       $(call cc-option, -fno-asynchronous-unwind-tables)
> >  aflags-vdso := $(ccflags-vdso) \
> >         -D__ASSEMBLY__ -Wa,-gdwarf-2
> >
> > diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> > index 244542ae2a91..3a83f2b876a5 100644
> > --- a/arch/powerpc/kernel/Makefile
> > +++ b/arch/powerpc/kernel/Makefile
> > @@ -16,7 +16,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
> >  CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
> >  CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
> >
> > -CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
> > +CFLAGS_prom_init.o += -fno-stack-protector
> >  CFLAGS_prom_init.o += -DDISABLE_BRANCH_PROFILING
> >  CFLAGS_prom_init.o += -ffreestanding
> >
> > diff --git a/arch/powerpc/platforms/powermac/Makefile b/arch/powerpc/platforms/powermac/Makefile
> > index f4247ade71ca..cf85f0662d0d 100644
> > --- a/arch/powerpc/platforms/powermac/Makefile
> > +++ b/arch/powerpc/platforms/powermac/Makefile
> > @@ -1,6 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  CFLAGS_bootx_init.o            += -fPIC
> > -CFLAGS_bootx_init.o            += $(call cc-option, -fno-stack-protector)
> > +CFLAGS_bootx_init.o            += -fno-stack-protector
> >
> >  KASAN_SANITIZE_bootx_init.o := n
> >
> > diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
> > index 708cb6304c2d..f44355e46f31 100644
> > --- a/arch/sparc/vdso/Makefile
> > +++ b/arch/sparc/vdso/Makefile
> > @@ -54,7 +54,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
> >  # optimize sibling calls.
> >  #
> >  CFL := $(PROFILING) -mcmodel=medlow -fPIC -O2 -fasynchronous-unwind-tables -m64 \
> > -       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
> > +       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
> >         -fno-omit-frame-pointer -foptimize-sibling-calls \
> >         -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
> >
> > @@ -93,7 +93,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 := $(filter-out $(SPARC_REG_CFLAGS),$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 += -m32 -msoft-float -fpic
> > -KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
> > +KBUILD_CFLAGS_32 += -fno-stack-protector
> >  KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
> >  KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
> >  KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
> > diff --git a/arch/um/Makefile b/arch/um/Makefile
> > index 3f27aa3ec0a6..1cea46ff9bb7 100644
> > --- a/arch/um/Makefile
> > +++ b/arch/um/Makefile
> > @@ -121,8 +121,7 @@ LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
> >  LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
> >
> >  CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
> > -       $(call cc-option, -fno-stack-protector,) \
> > -       $(call cc-option, -fno-stack-protector-all,)
> > +       -fno-stack-protector $(call cc-option, -fno-stack-protector-all)
>
> Just curious, looks like we could do the same for
> `-fno-stack-protector-all`, here or tree-wide, right?  Wait, what
> compiler recognizes -fno-stack-protector-all?
> https://godbolt.org/z/QFQKE_


-fstack-protector
-fstack-protector-strong
-fstack-protector-all

are supported.

But,

-fno-stack-protector-strong
-fno-stack-protector-all

are unsupported.



Perheps, -fno-stack-protector is enough
to disable all variants of stack-protector.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASx-kj%3DfHFN9%3DNDB-HKRSdWAEpGyKF86q8127SqFc07Ag%40mail.gmail.com.
