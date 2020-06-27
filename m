Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBN7J3T3QKGQE2T7YRII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBB620C12A
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 13:59:52 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id e20sf12815443ybc.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 04:59:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593259191; cv=pass;
        d=google.com; s=arc-20160816;
        b=peFXu+fCqPWR1QTIhpkCv7Ok2WY1annw/PNk0nuX3iwcZYSh+YLOhJPF3urC+TPvOL
         GnRNWNYrnuX/IMQFqpdGLG0VZLwWGpkHIMh8UoxTHNHErqW+HdG70EsDQYD5YezlEP5W
         VZKK7MftBuzi2k08ECR/E8eDJ2s8VP0XWWyHwTLsVrgtIG24Ptg4RYTEY07b/ne/qEiU
         mPxfETCPvYAeN4G2SbVgAorj5BnL6+Zim5R5ZVw+7AbDv409ORZXFRXVDbSRaRjM463E
         wAKBy7ZN+F6bvKSEknIibr1Y/tpsWpRHXFksF+MTLa26QsER3lDad8WAlc2lC/2+24+Y
         PHTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=74RCuQC+2hVzNnEgoHBy27u7sS4yH6DkxgnYAXySzp4=;
        b=kxxXhsiJ4wdmk7VnpUx6kH09VSNfIKoPjv7ZPE3WIzVnFAsaB2LSdEInL7Vt9lsl1O
         hkeErQDcdeO2lEzXgFAIafaG8imDpHpaN+LKqdeuS/gBwTOk+57RI7hVMrJDflk2ja8n
         hhlU/QARj3aAwsThZxCSlfQpw4esMjtUm2MByD9ckR79BHhTnba6IYiEM7R42evDKsgH
         go4owse/e9HWdfLPhnp7CBipGEvDmW5DuHlAOBK1elyJIu9Fp+EUqApxehHQQ5Y6wv1m
         l/P2yNJx+b3iqNF1uVJKtot8zLTFLcTE5mVj5h5bVcAtLkitMJw/eSEes1upgBoJDXYq
         tOow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IaskzhGP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=74RCuQC+2hVzNnEgoHBy27u7sS4yH6DkxgnYAXySzp4=;
        b=UPHT6IyZSZArPlEuKKL+vYakK/zByG+9Q6av791JEV6Sh1Rzq7Db2Isfct+drYIQ8q
         2jZ2l/33bcForzVHfjHoa5J/IWe9xY4+pcPI2Db361T8U+IcX2YJoj6OXy4AgKu4u+V7
         7ozGQrCUG+C/52IdS5/c9sRdzvaW4F8knptBOiI2C9XAzcnyRNd0YvFrPBOFcRSr8wKh
         QvYHHWja+MYd1UEwC9I6/IizeIbSi7gUoF5rOTu8654V2ESPuYPjzZEUmCVT0AuHGDDA
         /LUCjo56ZGmrAHE1RdkCEeHLy9gTzYhfXNDw0vJOIXiQCshJw6wu1+g8www8eNv0ucOs
         iNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=74RCuQC+2hVzNnEgoHBy27u7sS4yH6DkxgnYAXySzp4=;
        b=nHiqNyfRwCKg95iHwiW0SzxX0LHX/OPNX2CZvpNjh6SxCw1f1ekYKPB5s5t1f7L0NI
         Gv8Vxrfkqbf2CqjNdtbKSXAR0Hh+Dynw0l1qQvY3AaG4l4xKMss9xUrudOk0wZmHb2pC
         c/JNvegYppGVx0VhSAkD7Re2EOnRAeDBeB72sOroEohN/DCvHcE77ilYK9qM5g25hw0h
         KAxH8O6iMDHc3Z+xmVhbatL1kgLHcHf1+mAfTdNuSN24yHl/a22GWuGth2xAjR1NvI9q
         4yUphHgULFNFLBwHYFmKeLVIK5Jr3u4+tSJXZ6jRt3gQNMH6uQNaHjmhbtgxT42tAU8U
         c02A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53308gmhCSDeu3Vd0M5veiEx5Gw7T9ibeGfcdgA5IyPZJUgfBwsQ
	ybzpowuzUIyFJya/PeVPVp8=
X-Google-Smtp-Source: ABdhPJwlpyxJXwzMoCUYKUDz6xORV6pWSOp8aY2auHEsTeBQZTIG+CVsGwQITLCDr+8fuNPNZuwnTw==
X-Received: by 2002:a25:2a0b:: with SMTP id q11mr12001893ybq.495.1593259191412;
        Sat, 27 Jun 2020 04:59:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:44:: with SMTP id e4ls4283201ybp.10.gmail; Sat, 27 Jun
 2020 04:59:51 -0700 (PDT)
X-Received: by 2002:a25:3f87:: with SMTP id m129mr12858079yba.371.1593259191065;
        Sat, 27 Jun 2020 04:59:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593259191; cv=none;
        d=google.com; s=arc-20160816;
        b=dyPv59X9GWs2T/TdsVv29dB2hZxa5t8XUzvIdEfuvN/zP+XBncmWLIxZymUE0LrD1j
         hZhYtLkdQGoJt0s5XmQPCoWfrPuycfiG2T56E0NBJJuP1ovsc+qpv/cvNOoiR7USZaol
         uC96CdFUw8kWDyHVVkIFOgZhm/6sa8KMqGjmatFJxVTqoaYngK0U0VBLCczhbWk3wSwx
         /DJHBLF8Q/GEDjVHd9cnHumtcad4WcM8nQA52n5Fjr1zQTH10EXoNw/rKY3BPNolF9ZA
         FY6VNRnnS1R94ng/24LGTP14/AqYmoxaSlDJzubVsZJpSXMFzG6J9AhZsTSqK4yrHpiH
         wO/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=33K0o4jMyuNW1m+uNmwZD39xg5DgxY8M9/Y0nUDsReo=;
        b=stHM1GQ736dw+f+Vg7E+yRVem9uN9Ty4SIZPxZw/6I2CYOwtDitHiy0YJ3U5FM9mQg
         2OnC1eUPQCtBtDtd+Gr/3MZathWeAcw5qnIciYFDko6W4db/udHKtn4PU6MRlBfXCpu3
         qXoDC0z4gUN/e1YlKXNwRPUjc8NQtiIND7vOj4fS7EIwHq0Uikpkbx1N4HEy4I4jJCzB
         7rLxWiuzNd6YTwtOGf8VCvC2gIc3qnCTJESv6Mq9bjIosFNOUYj6TflE40an6Z5r8+WC
         h2cgBch7GlIjMFgDxLe674ORqrYb03j5IBdGhBJ3RF7s4ZMbILh0mMaXzEokYaQFLVC6
         2mbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IaskzhGP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id v16si2292017ybe.2.2020.06.27.04.59.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jun 2020 04:59:51 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 05RBxLBJ010432
	for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 20:59:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 05RBxLBJ010432
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id y7so2768693vkf.9
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 04:59:21 -0700 (PDT)
X-Received: by 2002:a1f:1f04:: with SMTP id f4mr5014768vkf.73.1593259160073;
 Sat, 27 Jun 2020 04:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 27 Jun 2020 20:58:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9=KK+qvT3FK_7y1UCzTA@mail.gmail.com>
Message-ID: <CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9=KK+qvT3FK_7y1UCzTA@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=IaskzhGP;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Jun 27, 2020 at 5:13 AM Nick Desaulniers
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
>
> Generally looks pretty good, just a few more questions before adding
> my tag explicitly.
>
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
>
> So it looks like the previous behavior always added
> `-fno-stack-protector` (since CONFIG_CC_HAS_STACKPROTECTOR_NONE was
> always true), but then we append either `-fstack-protector` or
> `-fstack-protector-strong` based on configs.  While that's ok, and you
> patch doesn't change that behavior, and it's good to be explicit to
> set the stack protector or not...it seems weird to have
> `-fno-stack-protector -fstack-protector` in the command line flags.  I
> would prefer if we checked for not having CONFIG_STACKPROTECTOR or
> CONFIG_STACKPROTECTOR_STRONG before adding `-fno-stack-protector`.
> That doesn't have to be done in this patch, per se.
>
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
> >
> >  # Options used by linker script
> >  export LDS_START      := $(START)
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 00e378de8bc0..89c3cdfba753 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -37,7 +37,7 @@ REALMODE_CFLAGS       := $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
> >                    -mno-mmx -mno-sse
> >
> >  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -ffreestanding)
> > -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-stack-protector)
> > +REALMODE_CFLAGS += -fno-stack-protector
> >  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
> >  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
> >  export REALMODE_CFLAGS
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 7619742f91c9..c88a31569a5e 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -36,7 +36,7 @@ cflags-$(CONFIG_X86_64) := -mcmodel=small
> >  KBUILD_CFLAGS += $(cflags-y)
> >  KBUILD_CFLAGS += -mno-mmx -mno-sse
> >  KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
> > -KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
> > +KBUILD_CFLAGS += -fno-stack-protector
> >  KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
> >  KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
> >  KBUILD_CFLAGS += -Wno-pointer-sign
> > diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> > index 04e65f0698f6..215376d975a2 100644
> > --- a/arch/x86/entry/vdso/Makefile
> > +++ b/arch/x86/entry/vdso/Makefile
> > @@ -82,7 +82,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
> >  # optimize sibling calls.
> >  #
> >  CFL := $(PROFILING) -mcmodel=small -fPIC -O2 -fasynchronous-unwind-tables -m64 \
> > -       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
> > +       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
> >         -fno-omit-frame-pointer -foptimize-sibling-calls \
> >         -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
> >
> > @@ -151,7 +151,7 @@ KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
> >  KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
> > -KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
> > +KBUILD_CFLAGS_32 += -fno-stack-protector
> >  KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
> >  KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
> >  KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
> > diff --git a/arch/x86/kernel/cpu/Makefile b/arch/x86/kernel/cpu/Makefile
> > index dba6a83bc349..93792b457b81 100644
> > --- a/arch/x86/kernel/cpu/Makefile
> > +++ b/arch/x86/kernel/cpu/Makefile
> > @@ -17,8 +17,7 @@ KCOV_INSTRUMENT_perf_event.o := n
> >  KCSAN_SANITIZE_common.o := n
> >
> >  # Make sure load_percpu_segment has no stackprotector
> > -nostackp := $(call cc-option, -fno-stack-protector)
> > -CFLAGS_common.o                := $(nostackp)
> > +CFLAGS_common.o                := -fno-stack-protector
>
> Any time I see `:=` assignment to a CFLAGS variable, it's a red flag
> for overwriting existing CFLAGS, which is a common source of bugs.  I
> recognize the kernel is current a mix and match for:
>
> CFLAGS_<file>.o
>
> rules to either use `+=` or `:=`, but I wish we were consistent, and
> consistent in our use of `+=`.  For those rules, is there a difference
> between the use of `+=` and `:=` like there is for the more general
> case of appending to KBUILD_CFLAGS?  If not, it's ok to match the
> existing style, but it's curious to me in this patch to see a mixed
> use of `+=` and `:=`.


I think Kees mostly answered your question.

Let me add some comments.


'+=' is the most used in kernel Makefiles, but
':=' and '=' are also used.

So, you are right, we are inconsistent.
This applies to not only CFLAGS_<file>.o, but also obj-y, etc.

For example,
https://github.com/torvalds/linux/blob/v5.7/arch/arm64/kernel/Makefile#L15
'obj-y :=' works since it is the first assignment to obj-y in that file.
'obj-y +=' also works, of course.

We can consistently use '+=' everywhere, but I do not send
patches for churn.


You can use any assignment operator to CFLAGS_<file>.o
if it is the first assignment in the Makefile.
Using '+=' is robust for future code insertion/removal, though.


If the right-hand side contains variable references,
there is important difference in the behavior.

You may know two flavors in variables
(https://www.gnu.org/software/make/manual/make.html#Flavors)


CFLAGS_foo.o := $(call cc-option,-fno-stack-protector)
The cc-option is expanded immediately when this line is parsed.
(So, the compiler is invoked for 'make clean' too)


CFLAGS_foo.o += $(call cc-option,-fno-stack-protector)
If this is the first assignment in the file,
'+=' act as '=', so the evaluation of cc-option
is delayed until $(CFLAGS_foo.o) is expanded.
(So, the compiler is NOT invoked for 'make clean')



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9%3DKK%2BqvT3FK_7y1UCzTA%40mail.gmail.com.
