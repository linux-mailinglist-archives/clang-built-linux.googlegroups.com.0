Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLGWWCAQMGQEPISYUYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE9831D18D
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 21:29:33 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id v16sf4721808oos.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 12:29:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613507372; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLaHolXBjqV/cCxHLfM750w6Vn0G1wZWhKqripuuuFpLyT1q53qvhSh2pBOC323a/r
         9xrrbPqwgSg/H2hJL/7gwgLH6ed7uEY2HDJ99eH6fIBIVtBTzor8yVl33mawuG2KuDJJ
         V4QPTCq0//DJq/F16F3swBrCWJUPGdneBTLf9oM7fUStxsG57mk1lXYqNjCJ2y10rESz
         p20o2ezXrlbjgS4LHNYzdPLxfSTHWyph0NkLUO6gukP/6QyjVr5FwirxArOZojO7hM4+
         edvY5lnHek/ntG4RdahfdsYxDxKAGS7IE9FPVcO9ZkGXGJ+wyyztq0EFU6G3CId/cVPy
         186A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=H/TpV1K/5/hDbdCp1O7kL522twNcx29IPw0pwU4HxcE=;
        b=BedZlxfttOF9ElUefwqoSO8Zw+oojNXNhVtEA93AayFf4sOvss94hYZJA8jtYzoS85
         AFLfTAvhMs+OKuKJvR68n9d7Gr3ETNI1UDpp48hKoNUHCqg4hTdTq1B1rAYzsFlDmhxd
         gb9sp74CHXhwGluQjBtU+juLcEsrcfHeYybgA4ir3ytu7UPDdtHvU3vPNWCMGNBrryN9
         S5EUfifZYO3fTLc3DLiwlADc8MXOZampOCZvemmEz08y3zGQ2LZyPc3nghSoCIP/3E09
         QcOzj76GkDBeNjuj2SgsiLD8fP+5r5XwJKaaoOrOEEt5G4x9gvihtSeAHhwWl5wjtbS1
         3wZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nIKcSVjb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H/TpV1K/5/hDbdCp1O7kL522twNcx29IPw0pwU4HxcE=;
        b=IrMk2Wh1m0Hois5qqsQhVwbALx48zdtCdJQj6CZuJOIvm6KG6plFhehJjoJkwGGnE2
         tp88UJDks/qapVu6GHkvoVNGNsS/UPUKpo/sM6iT6jhbendrvWvjG7fCZSEJdWTj0vo9
         9cTMewdLYW6sapPIQ1M3GVlkD1z61EtmPnoceK5JMPFPOPZqqSoyeHq1ubv1HhZtJXMb
         DFb3R8Jy2KkVW0iNcv42rMHONmWk0/nkQFIOVBvIudOVF7gS6ll+1XcXkNVypeVluIAb
         2QnwfgE+n96YZJQuWIQNfWgDPVBqvuyHdWu3IYPDILKd525DyONQCw9HlfSPVGGV19sw
         ICQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H/TpV1K/5/hDbdCp1O7kL522twNcx29IPw0pwU4HxcE=;
        b=nSXiYw01TfUTINgA9Cch5Es6NONuWFy/BLUqXbUJpLF+t8prP9dQcyBKiu7IP8rT31
         qrXuf+epeJw8XiIwuPjrDkq1boxXavx5+6DUFRcS5hJnbapEusQHEG5DkIBZOlUBcpxa
         PyHLArGBIZMryfPjtroABZRIRMJ7x8G+ZMl4NFxjF5/OVfBph5MpphgmhCF+SdKEnQGx
         FobUTjKJ29G4VKIqPxC2DMI9+0bDEPiIWjw1wLHChVH9t2GwYlcNZDvAoAfdbWdHo6+V
         h7PGRsixzSL4awj45JjBph02AD4MZz3fSpGfunfZ9iyT9dd/yBvjDT62PG/o2+WL8Udt
         W1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H/TpV1K/5/hDbdCp1O7kL522twNcx29IPw0pwU4HxcE=;
        b=bts2IHp9CUhWvECLfx9man72aRiLPJWgx8ND81Pau12aepoJESFzJtRSZVQDcP2qM/
         OtNF8+Dmvs2fBlR40bvunY4fNknaADrwuO1Fu6km9yGODyppf2oeitUsKAdIZgv2rRA6
         WlWTBOLqK8B3q2H6md+jX2x3Nk3AOWiFDlh5zRGuaYaZg0FrmlSPqNEwxZEKJvXBQzPt
         xkMfVllrcGjzCwaRweO9dLHAZU9n9cPuw7Y2FcEVJ9+7nYlIFowgV8RRNAABLQ8doNNg
         GF9RPqUBxvXxr4JzQua8Iqm5N+Rc482Bvgdgnstln8GQKp7QXX1pXdtMEpJSwFlcRpsR
         TK5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+fGDmmhm9AkyJOXeBxz8wm/uip8HtzSI6BKaO6y14kph51X45
	A2RK+KkHr2gEFjeesU2A4/Y=
X-Google-Smtp-Source: ABdhPJxOCvlAkX0hxAXw4d+WuYX90HXMGn8bN2eWWL/XDIht/mnI35283kgzNBMHtDdMI8ZpPXx23w==
X-Received: by 2002:a9d:6ac5:: with SMTP id m5mr16078471otq.365.1613507372426;
        Tue, 16 Feb 2021 12:29:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls5041802oif.10.gmail; Tue, 16
 Feb 2021 12:29:32 -0800 (PST)
X-Received: by 2002:aca:cfd0:: with SMTP id f199mr3867741oig.64.1613507371992;
        Tue, 16 Feb 2021 12:29:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613507371; cv=none;
        d=google.com; s=arc-20160816;
        b=zxS4qzSCqJrkdxZcMie9+gkBScoq2ykVqIs6rKpgixHH8MMpPoiFm4DnPdEfCpavFA
         iENLc+LaOuQb9vm7zhtzoGiX0OPYTFbcr46i6To44VKVebXFkGX0Wv7NeyvADSqPXjYJ
         Jl4FUssxzRv87D82hOpWIBo2GBVTMUpnycm90+DFVVtBhLqGxk0NtRXBqsa1wycXUqv1
         9hDxfSP7AMPzfNL7HsxuU0jJUmA+CwluvFX8vIolRgOI+wR/HUqQsiSPlgQERQI2xS1t
         b6mBQrFUoRbXLgjFceiUitR0E5KfNriQpD63nUB0zKgJu67/Bif1nU3q+vKPbsHHTLtX
         mdyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vit/YkUFpK/sqx9/dDZuMvcp4Hu2f4Dqx/0sMFso1XI=;
        b=HutFfWQx3qFq2tv8LKqkkEgC5As1Yfw2oGHPhWkD3xOP+wi2C/Xuw9EbmhEtz8I0ip
         CAQSngtg21hnWRbCZQ7RG9gBcQKXTHmO522sWEBb1ggtwcIXVTftUv9asZVPduytcdxG
         S2DKTKxddyQRhQ3wVrcYE6ZeO1EsGOxBrp1eSZrFQ96eqiwnU7WooHzDM7Nmat9VMbaE
         484XC0wQJvrIzXUwoXREp1kfnz180lbbYf8FjhvBggI9VHfr3asY6ASRmsbZk2UgCPpn
         OYzIZ63KC6Vx+pbOKEbST7bK7TNvPn1Cz7n2Snz/ciwG8+tX48LmClPjFM4zeaXHIH7e
         ze9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nIKcSVjb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id y189si2067454oia.4.2021.02.16.12.29.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 12:29:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id e133so11509223iof.8
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 12:29:31 -0800 (PST)
X-Received: by 2002:a02:74a:: with SMTP id f71mr21436327jaf.30.1613507371296;
 Tue, 16 Feb 2021 12:29:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1613243844.git.luto@kernel.org> <c0ff7dba14041c7e5d1cae5d4df052f03759bef3.1613243844.git.luto@kernel.org>
 <CAKwvOd=Mrmb9T1h-+y-vXq1fC59U-hfMEO4sg8LV4ZoYJfLLEQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=Mrmb9T1h-+y-vXq1fC59U-hfMEO4sg8LV4ZoYJfLLEQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 16 Feb 2021 21:29:19 +0100
Message-ID: <CA+icZUXrJOnE1kfVVWp6bEbNf42g-u5pHM5+NfC5boOrsyJDig@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] x86/stackprotector/32: Make the canary into a
 regular percpu variable
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sean Christopherson <seanjc@google.com>, Brian Gerst <brgerst@gmail.com>, Joerg Roedel <jroedel@suse.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nIKcSVjb;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 16, 2021 at 7:45 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sat, Feb 13, 2021 at 11:19 AM Andy Lutomirski <luto@kernel.org> wrote:
> >
> > On 32-bit kernels, the stackprotector canary is quite nasty -- it is
> > stored at %gs:(20), which is nasty because 32-bit kernels use %fs for
> > percpu storage.  It's even nastier because it means that whether %gs
> > contains userspace state or kernel state while running kernel code
> > depends on whether stackprotector is enabled (this is
> > CONFIG_X86_32_LAZY_GS), and this setting radically changes the way
> > that segment selectors work.  Supporting both variants is a
> > maintenance and testing mess.
> >
> > Merely rearranging so that percpu and the stack canary
> > share the same segment would be messy as the 32-bit percpu address
> > layout isn't currently compatible with putting a variable at a fixed
> > offset.
> >
> > Fortunately, GCC 8.1 added options that allow the stack canary to be
> > accessed as %fs:__stack_chk_guard, effectively turning it into an ordinary
> > percpu variable.  This lets us get rid of all of the code to manage the
> > stack canary GDT descriptor and the CONFIG_X86_32_LAZY_GS mess.
> >
> > (That name is special.  We could use any symbol we want for the
> >  %fs-relative mode, but for CONFIG_SMP=n, gcc refuses to let us use any
> >  name other than __stack_chk_guard.)
> >
> > This patch forcibly disables stackprotector on older compilers that
> > don't support the new options and makes the stack canary into a
> > percpu variable.  The "lazy GS" approach is now used for all 32-bit
> > configurations.
> >
> > This patch also makes load_gs_index() work on 32-bit kernels.  On
> > 64-bit kernels, it loads the GS selector and updates the user
> > GSBASE accordingly.  (This is unchanged.)  On 32-bit kernels,
> > it loads the GS selector and updates GSBASE, which is now
> > always the user base.  This means that the overall effect is
> > the same on 32-bit and 64-bit, which avoids some ifdeffery.
> >
> > Cc: Sedat Dilek <sedat.dilek@gmail.com>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Andy Lutomirski <luto@kernel.org>
> > ---
> >  arch/x86/Kconfig                          |  7 +-
> >  arch/x86/Makefile                         |  8 +++
> >  arch/x86/entry/entry_32.S                 | 56 ++--------------
> >  arch/x86/include/asm/processor.h          | 15 ++---
> >  arch/x86/include/asm/ptrace.h             |  5 +-
> >  arch/x86/include/asm/segment.h            | 30 +++------
> >  arch/x86/include/asm/stackprotector.h     | 79 +++++------------------
> >  arch/x86/include/asm/suspend_32.h         |  6 +-
> >  arch/x86/kernel/asm-offsets_32.c          |  5 --
> >  arch/x86/kernel/cpu/common.c              |  5 +-
> >  arch/x86/kernel/doublefault_32.c          |  4 +-
> >  arch/x86/kernel/head_32.S                 | 18 +-----
> >  arch/x86/kernel/setup_percpu.c            |  1 -
> >  arch/x86/kernel/tls.c                     |  8 +--
> >  arch/x86/kvm/svm/svm.c                    | 10 +--
> >  arch/x86/lib/insn-eval.c                  |  4 --
> >  arch/x86/platform/pvh/head.S              | 14 ----
> >  arch/x86/power/cpu.c                      |  6 +-
> >  arch/x86/xen/enlighten_pv.c               |  1 -
> >  scripts/gcc-x86_32-has-stack-protector.sh |  6 +-
> >  20 files changed, 62 insertions(+), 226 deletions(-)
> >
> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index 21f851179ff0..12d8bf011d08 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -353,10 +353,6 @@ config X86_64_SMP
> >         def_bool y
> >         depends on X86_64 && SMP
> >
> > -config X86_32_LAZY_GS
> > -       def_bool y
> > -       depends on X86_32 && !STACKPROTECTOR
> > -
> >  config ARCH_SUPPORTS_UPROBES
> >         def_bool y
> >
> > @@ -379,7 +375,8 @@ config CC_HAS_SANE_STACKPROTECTOR
> >         default $(success,$(srctree)/scripts/gcc-x86_32-has-stack-protector.sh $(CC))
> >         help
> >            We have to make sure stack protector is unconditionally disabled if
> > -          the compiler produces broken code.
> > +          the compiler produces broken code or if it does not let us control
> > +          the segment on 32-bit kernels.
> >
> >  menu "Processor type and features"
> >
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 7116da3980be..0b5cd8c49ccb 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -76,6 +76,14 @@ ifeq ($(CONFIG_X86_32),y)
> >
> >          # temporary until string.h is fixed
> >          KBUILD_CFLAGS += -ffreestanding
> > +
> > +       ifeq ($(CONFIG_STACKPROTECTOR),y)
> > +               ifeq ($(CONFIG_SMP),y)
> > +                       KBUILD_CFLAGS += -mstack-protector-guard-reg=fs -mstack-protector-guard-symbol=__stack_chk_guard
>
> I'm guessing the CC is because this removes stack protector support
> with clang, because it does not yet support
> -mstack-protector-guard-symbol= (as Sedat notes)?  I would like to see
> this called out explicitly in the commit message.
>
> (If folks are looking to use various compiler features/flags and find
> support missing, please let us know ASAP as it helps give us more time
> to triage and plan work around existing schedules.  Our ML from
> MAINTAINERS <clang-built-linux@googlegroups.com> or
> linux-toolchains@vger.kernel.org works.)
>
> For now I've filed:
> https://bugs.llvm.org/show_bug.cgi?id=49209
>

Thanks for the bug-report "Bug 49209 - [X86] support for
-mstack-protector-guard-symbol="

> > +               else
> > +                       KBUILD_CFLAGS += -mstack-protector-guard=global
> > +               endif
> > +       endif
> >  else
> >          BITS := 64
> >          UTS_MACHINE := x86_64
> > diff --git a/arch/x86/entry/entry_32.S b/arch/x86/entry/entry_32.S
> > index df8c017e6161..eb0cb662bca5 100644
> > --- a/arch/x86/entry/entry_32.S
> > +++ b/arch/x86/entry/entry_32.S
> > @@ -20,7 +20,7 @@
> >   *     1C(%esp) - %ds
> >   *     20(%esp) - %es
> >   *     24(%esp) - %fs
> > - *     28(%esp) - %gs          saved iff !CONFIG_X86_32_LAZY_GS
> > + *     28(%esp) - unused -- was %gs on old stackprotector kernels
> >   *     2C(%esp) - orig_eax
> >   *     30(%esp) - %eip
> >   *     34(%esp) - %cs
> > @@ -56,14 +56,9 @@
> >  /*
> >   * User gs save/restore
> >   *
> > - * %gs is used for userland TLS and kernel only uses it for stack
> > - * canary which is required to be at %gs:20 by gcc.  Read the comment
> > - * at the top of stackprotector.h for more info.
> > - *
> > - * Local labels 98 and 99 are used.
> > + * This is leftover junk from CONFIG_X86_32_LAZY_GS.  A subsequent patch
> > + * will remove it entirely.
> >   */
> > -#ifdef CONFIG_X86_32_LAZY_GS
> > -
> >   /* unfortunately push/pop can't be no-op */
> >  .macro PUSH_GS
> >         pushl   $0
> > @@ -86,49 +81,6 @@
> >  .macro SET_KERNEL_GS reg
> >  .endm
> >
> > -#else  /* CONFIG_X86_32_LAZY_GS */
> > -
> > -.macro PUSH_GS
> > -       pushl   %gs
> > -.endm
> > -
> > -.macro POP_GS pop=0
> > -98:    popl    %gs
> > -  .if \pop <> 0
> > -       add     $\pop, %esp
> > -  .endif
> > -.endm
> > -.macro POP_GS_EX
> > -.pushsection .fixup, "ax"
> > -99:    movl    $0, (%esp)
> > -       jmp     98b
> > -.popsection
> > -       _ASM_EXTABLE(98b, 99b)
> > -.endm
> > -
> > -.macro PTGS_TO_GS
> > -98:    mov     PT_GS(%esp), %gs
> > -.endm
> > -.macro PTGS_TO_GS_EX
> > -.pushsection .fixup, "ax"
> > -99:    movl    $0, PT_GS(%esp)
> > -       jmp     98b
> > -.popsection
> > -       _ASM_EXTABLE(98b, 99b)
> > -.endm
> > -
> > -.macro GS_TO_REG reg
> > -       movl    %gs, \reg
> > -.endm
> > -.macro REG_TO_PTGS reg
> > -       movl    \reg, PT_GS(%esp)
> > -.endm
> > -.macro SET_KERNEL_GS reg
> > -       movl    $(__KERNEL_STACK_CANARY), \reg
> > -       movl    \reg, %gs
> > -.endm
> > -
> > -#endif /* CONFIG_X86_32_LAZY_GS */
> >
> >  /* Unconditionally switch to user cr3 */
> >  .macro SWITCH_TO_USER_CR3 scratch_reg:req
> > @@ -779,7 +731,7 @@ SYM_CODE_START(__switch_to_asm)
> >
> >  #ifdef CONFIG_STACKPROTECTOR
> >         movl    TASK_stack_canary(%edx), %ebx
> > -       movl    %ebx, PER_CPU_VAR(stack_canary)+stack_canary_offset
> > +       movl    %ebx, PER_CPU_VAR(__stack_chk_guard)
> >  #endif
> >
> >  #ifdef CONFIG_RETPOLINE
> > diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
> > index c20a52b5534b..c59dff4bbc38 100644
> > --- a/arch/x86/include/asm/processor.h
> > +++ b/arch/x86/include/asm/processor.h
> > @@ -441,6 +441,9 @@ struct fixed_percpu_data {
> >          * GCC hardcodes the stack canary as %gs:40.  Since the
> >          * irq_stack is the object at %gs:0, we reserve the bottom
> >          * 48 bytes of the irq stack for the canary.
> > +        *
> > +        * Once we are willing to require -mstack-protector-guard-symbol=
> > +        * support for x86_64 stackprotector, we can get rid of this.
> >          */
> >         char            gs_base[40];
> >         unsigned long   stack_canary;
> > @@ -461,17 +464,7 @@ extern asmlinkage void ignore_sysret(void);
> >  void current_save_fsgs(void);
> >  #else  /* X86_64 */
> >  #ifdef CONFIG_STACKPROTECTOR
> > -/*
> > - * Make sure stack canary segment base is cached-aligned:
> > - *   "For Intel Atom processors, avoid non zero segment base address
> > - *    that is not aligned to cache line boundary at all cost."
> > - * (Optim Ref Manual Assembly/Compiler Coding Rule 15.)
> > - */
> > -struct stack_canary {
> > -       char __pad[20];         /* canary at %gs:20 */
> > -       unsigned long canary;
> > -};
> > -DECLARE_PER_CPU_ALIGNED(struct stack_canary, stack_canary);
> > +DECLARE_PER_CPU(unsigned long, __stack_chk_guard);
> >  #endif
> >  /* Per CPU softirq stack pointer */
> >  DECLARE_PER_CPU(struct irq_stack *, softirq_stack_ptr);
> > diff --git a/arch/x86/include/asm/ptrace.h b/arch/x86/include/asm/ptrace.h
> > index d8324a236696..b2c4c12d237c 100644
> > --- a/arch/x86/include/asm/ptrace.h
> > +++ b/arch/x86/include/asm/ptrace.h
> > @@ -37,7 +37,10 @@ struct pt_regs {
> >         unsigned short __esh;
> >         unsigned short fs;
> >         unsigned short __fsh;
> > -       /* On interrupt, gs and __gsh store the vector number. */
> > +       /*
> > +        * On interrupt, gs and __gsh store the vector number.  They never
> > +        * store gs any more.
> > +        */
> >         unsigned short gs;
> >         unsigned short __gsh;
> >         /* On interrupt, this is the error code. */
> > diff --git a/arch/x86/include/asm/segment.h b/arch/x86/include/asm/segment.h
> > index 7fdd4facfce7..72044026eb3c 100644
> > --- a/arch/x86/include/asm/segment.h
> > +++ b/arch/x86/include/asm/segment.h
> > @@ -95,7 +95,7 @@
> >   *
> >   *  26 - ESPFIX small SS
> >   *  27 - per-cpu                       [ offset to per-cpu data area ]
> > - *  28 - stack_canary-20               [ for stack protector ]         <=== cacheline #8
> > + *  28 - unused
> >   *  29 - unused
> >   *  30 - unused
> >   *  31 - TSS for double fault handler
> > @@ -118,7 +118,6 @@
> >
> >  #define GDT_ENTRY_ESPFIX_SS            26
> >  #define GDT_ENTRY_PERCPU               27
> > -#define GDT_ENTRY_STACK_CANARY         28
> >
> >  #define GDT_ENTRY_DOUBLEFAULT_TSS      31
> >
> > @@ -158,12 +157,6 @@
> >  # define __KERNEL_PERCPU               0
> >  #endif
> >
> > -#ifdef CONFIG_STACKPROTECTOR
> > -# define __KERNEL_STACK_CANARY         (GDT_ENTRY_STACK_CANARY*8)
> > -#else
> > -# define __KERNEL_STACK_CANARY         0
> > -#endif
> > -
> >  #else /* 64-bit: */
> >
> >  #include <asm/cache.h>
> > @@ -364,22 +357,15 @@ static inline void __loadsegment_fs(unsigned short value)
> >         asm("mov %%" #seg ",%0":"=r" (value) : : "memory")
> >
> >  /*
> > - * x86-32 user GS accessors:
> > + * x86-32 user GS accessors.  This is ugly and could do with some cleaning up.
> >   */
> >  #ifdef CONFIG_X86_32
> > -# ifdef CONFIG_X86_32_LAZY_GS
> > -#  define get_user_gs(regs)            (u16)({ unsigned long v; savesegment(gs, v); v; })
> > -#  define set_user_gs(regs, v)         loadsegment(gs, (unsigned long)(v))
> > -#  define task_user_gs(tsk)            ((tsk)->thread.gs)
> > -#  define lazy_save_gs(v)              savesegment(gs, (v))
> > -#  define lazy_load_gs(v)              loadsegment(gs, (v))
> > -# else /* X86_32_LAZY_GS */
> > -#  define get_user_gs(regs)            (u16)((regs)->gs)
> > -#  define set_user_gs(regs, v)         do { (regs)->gs = (v); } while (0)
> > -#  define task_user_gs(tsk)            (task_pt_regs(tsk)->gs)
> > -#  define lazy_save_gs(v)              do { } while (0)
> > -#  define lazy_load_gs(v)              do { } while (0)
> > -# endif        /* X86_32_LAZY_GS */
> > +# define get_user_gs(regs)             (u16)({ unsigned long v; savesegment(gs, v); v; })
> > +# define set_user_gs(regs, v)          loadsegment(gs, (unsigned long)(v))
> > +# define task_user_gs(tsk)             ((tsk)->thread.gs)
> > +# define lazy_save_gs(v)               savesegment(gs, (v))
> > +# define lazy_load_gs(v)               loadsegment(gs, (v))
> > +# define load_gs_index(v)              loadsegment(gs, (v))
> >  #endif /* X86_32 */
> >
> >  #endif /* !__ASSEMBLY__ */
> > diff --git a/arch/x86/include/asm/stackprotector.h b/arch/x86/include/asm/stackprotector.h
> > index 7fb482f0f25b..b6ffe58c70fa 100644
> > --- a/arch/x86/include/asm/stackprotector.h
> > +++ b/arch/x86/include/asm/stackprotector.h
> > @@ -5,30 +5,23 @@
> >   * Stack protector works by putting predefined pattern at the start of
> >   * the stack frame and verifying that it hasn't been overwritten when
> >   * returning from the function.  The pattern is called stack canary
> > - * and unfortunately gcc requires it to be at a fixed offset from %gs.
> > - * On x86_64, the offset is 40 bytes and on x86_32 20 bytes.  x86_64
> > - * and x86_32 use segment registers differently and thus handles this
> > - * requirement differently.
> > + * and unfortunately gcc historically required it to be at a fixed offset
> > + * from the percpu segment base.  On x86_64, the offset is 40 bytes.
> >   *
> > - * On x86_64, %gs is shared by percpu area and stack canary.  All
> > - * percpu symbols are zero based and %gs points to the base of percpu
> > - * area.  The first occupant of the percpu area is always
> > - * fixed_percpu_data which contains stack_canary at offset 40.  Userland
> > - * %gs is always saved and restored on kernel entry and exit using
> > - * swapgs, so stack protector doesn't add any complexity there.
> > + * The same segment is shared by percpu area and stack canary.  On
> > + * x86_64, percpu symbols are zero based and %gs (64-bit) points to the
> > + * base of percpu area.  The first occupant of the percpu area is always
> > + * fixed_percpu_data which contains stack_canary at the approproate
> > + * offset.  On x86_32, the stack canary is just a regular percpu
> > + * variable.
> >   *
> > - * On x86_32, it's slightly more complicated.  As in x86_64, %gs is
> > - * used for userland TLS.  Unfortunately, some processors are much
> > - * slower at loading segment registers with different value when
> > - * entering and leaving the kernel, so the kernel uses %fs for percpu
> > - * area and manages %gs lazily so that %gs is switched only when
> > - * necessary, usually during task switch.
> > + * Putting percpu data in %fs on 32-bit is a minor optimization compared to
> > + * using %gs.  Since 32-bit userspace normally has %fs == 0, we are likely
> > + * to load 0 into %fs on exit to usermode, whereas with percpu data in
> > + * %gs, we are likely to load a non-null %gs on return to user mode.
> >   *
> > - * As gcc requires the stack canary at %gs:20, %gs can't be managed
> > - * lazily if stack protector is enabled, so the kernel saves and
> > - * restores userland %gs on kernel entry and exit.  This behavior is
> > - * controlled by CONFIG_X86_32_LAZY_GS and accessors are defined in
> > - * system.h to hide the details.
> > + * Once we are willing to require GCC 8.1 or better for 64-bit stackprotector
> > + * support, we can remove some of this complexity.
> >   */
> >
> >  #ifndef _ASM_STACKPROTECTOR_H
> > @@ -44,14 +37,6 @@
> >  #include <linux/random.h>
> >  #include <linux/sched.h>
> >
> > -/*
> > - * 24 byte read-only segment initializer for stack canary.  Linker
> > - * can't handle the address bit shifting.  Address will be set in
> > - * head_32 for boot CPU and setup_per_cpu_areas() for others.
> > - */
> > -#define GDT_STACK_CANARY_INIT                                          \
> > -       [GDT_ENTRY_STACK_CANARY] = GDT_ENTRY_INIT(0x4090, 0, 0x18),
> > -
> >  /*
> >   * Initialize the stackprotector canary value.
> >   *
> > @@ -86,7 +71,7 @@ static __always_inline void boot_init_stack_canary(void)
> >  #ifdef CONFIG_X86_64
> >         this_cpu_write(fixed_percpu_data.stack_canary, canary);
> >  #else
> > -       this_cpu_write(stack_canary.canary, canary);
> > +       this_cpu_write(__stack_chk_guard, canary);
> >  #endif
> >  }
> >
> > @@ -95,48 +80,16 @@ static inline void cpu_init_stack_canary(int cpu, struct task_struct *idle)
> >  #ifdef CONFIG_X86_64
> >         per_cpu(fixed_percpu_data.stack_canary, cpu) = idle->stack_canary;
> >  #else
> > -       per_cpu(stack_canary.canary, cpu) = idle->stack_canary;
> > -#endif
> > -}
> > -
> > -static inline void setup_stack_canary_segment(int cpu)
> > -{
> > -#ifdef CONFIG_X86_32
> > -       unsigned long canary = (unsigned long)&per_cpu(stack_canary, cpu);
> > -       struct desc_struct *gdt_table = get_cpu_gdt_rw(cpu);
> > -       struct desc_struct desc;
> > -
> > -       desc = gdt_table[GDT_ENTRY_STACK_CANARY];
> > -       set_desc_base(&desc, canary);
> > -       write_gdt_entry(gdt_table, GDT_ENTRY_STACK_CANARY, &desc, DESCTYPE_S);
> > -#endif
> > -}
> > -
> > -static inline void load_stack_canary_segment(void)
> > -{
> > -#ifdef CONFIG_X86_32
> > -       asm("mov %0, %%gs" : : "r" (__KERNEL_STACK_CANARY) : "memory");
> > +       per_cpu(__stack_chk_guard, cpu) = idle->stack_canary;
> >  #endif
> >  }
> >
> >  #else  /* STACKPROTECTOR */
> >
> > -#define GDT_STACK_CANARY_INIT
> > -
> >  /* dummy boot_init_stack_canary() is defined in linux/stackprotector.h */
> >
> > -static inline void setup_stack_canary_segment(int cpu)
> > -{ }
> > -
> >  static inline void cpu_init_stack_canary(int cpu, struct task_struct *idle)
> >  { }
> >
> > -static inline void load_stack_canary_segment(void)
> > -{
> > -#ifdef CONFIG_X86_32
> > -       asm volatile ("mov %0, %%gs" : : "r" (0));
> > -#endif
> > -}
> > -
> >  #endif /* STACKPROTECTOR */
> >  #endif /* _ASM_STACKPROTECTOR_H */
> > diff --git a/arch/x86/include/asm/suspend_32.h b/arch/x86/include/asm/suspend_32.h
> > index fdbd9d7b7bca..7b132d0312eb 100644
> > --- a/arch/x86/include/asm/suspend_32.h
> > +++ b/arch/x86/include/asm/suspend_32.h
> > @@ -13,12 +13,10 @@
> >  /* image of the saved processor state */
> >  struct saved_context {
> >         /*
> > -        * On x86_32, all segment registers, with the possible exception of
> > -        * gs, are saved at kernel entry in pt_regs.
> > +        * On x86_32, all segment registers except gs are saved at kernel
> > +        * entry in pt_regs.
> >          */
> > -#ifdef CONFIG_X86_32_LAZY_GS
> >         u16 gs;
> > -#endif
> >         unsigned long cr0, cr2, cr3, cr4;
> >         u64 misc_enable;
> >         bool misc_enable_saved;
> > diff --git a/arch/x86/kernel/asm-offsets_32.c b/arch/x86/kernel/asm-offsets_32.c
> > index 6e043f295a60..2b411cd00a4e 100644
> > --- a/arch/x86/kernel/asm-offsets_32.c
> > +++ b/arch/x86/kernel/asm-offsets_32.c
> > @@ -53,11 +53,6 @@ void foo(void)
> >                offsetof(struct cpu_entry_area, tss.x86_tss.sp1) -
> >                offsetofend(struct cpu_entry_area, entry_stack_page.stack));
> >
> > -#ifdef CONFIG_STACKPROTECTOR
> > -       BLANK();
> > -       OFFSET(stack_canary_offset, stack_canary, canary);
> > -#endif
> > -
> >         BLANK();
> >         DEFINE(EFI_svam, offsetof(efi_runtime_services_t, set_virtual_address_map));
> >  }
> > diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
> > index 35ad8480c464..f208569d2d3b 100644
> > --- a/arch/x86/kernel/cpu/common.c
> > +++ b/arch/x86/kernel/cpu/common.c
> > @@ -161,7 +161,6 @@ DEFINE_PER_CPU_PAGE_ALIGNED(struct gdt_page, gdt_page) = { .gdt = {
> >
> >         [GDT_ENTRY_ESPFIX_SS]           = GDT_ENTRY_INIT(0xc092, 0, 0xfffff),
> >         [GDT_ENTRY_PERCPU]              = GDT_ENTRY_INIT(0xc092, 0, 0xfffff),
> > -       GDT_STACK_CANARY_INIT
> >  #endif
> >  } };
> >  EXPORT_PER_CPU_SYMBOL_GPL(gdt_page);
> > @@ -599,7 +598,6 @@ void load_percpu_segment(int cpu)
> >         __loadsegment_simple(gs, 0);
> >         wrmsrl(MSR_GS_BASE, cpu_kernelmode_gs_base(cpu));
> >  #endif
> > -       load_stack_canary_segment();
> >  }
> >
> >  #ifdef CONFIG_X86_32
> > @@ -1793,7 +1791,8 @@ DEFINE_PER_CPU(unsigned long, cpu_current_top_of_stack) =
> >  EXPORT_PER_CPU_SYMBOL(cpu_current_top_of_stack);
> >
> >  #ifdef CONFIG_STACKPROTECTOR
> > -DEFINE_PER_CPU_ALIGNED(struct stack_canary, stack_canary);
> > +DEFINE_PER_CPU(unsigned long, __stack_chk_guard);
> > +EXPORT_PER_CPU_SYMBOL(__stack_chk_guard);
> >  #endif
> >
> >  #endif /* CONFIG_X86_64 */
> > diff --git a/arch/x86/kernel/doublefault_32.c b/arch/x86/kernel/doublefault_32.c
> > index 759d392cbe9f..d1d49e3d536b 100644
> > --- a/arch/x86/kernel/doublefault_32.c
> > +++ b/arch/x86/kernel/doublefault_32.c
> > @@ -100,9 +100,7 @@ DEFINE_PER_CPU_PAGE_ALIGNED(struct doublefault_stack, doublefault_stack) = {
> >                 .ss             = __KERNEL_DS,
> >                 .ds             = __USER_DS,
> >                 .fs             = __KERNEL_PERCPU,
> > -#ifndef CONFIG_X86_32_LAZY_GS
> > -               .gs             = __KERNEL_STACK_CANARY,
> > -#endif
> > +               .gs             = 0,
> >
> >                 .__cr3          = __pa_nodebug(swapper_pg_dir),
> >         },
> > diff --git a/arch/x86/kernel/head_32.S b/arch/x86/kernel/head_32.S
> > index 7ed84c282233..67f590425d90 100644
> > --- a/arch/x86/kernel/head_32.S
> > +++ b/arch/x86/kernel/head_32.S
> > @@ -318,8 +318,8 @@ SYM_FUNC_START(startup_32_smp)
> >         movl $(__KERNEL_PERCPU), %eax
> >         movl %eax,%fs                   # set this cpu's percpu
> >
> > -       movl $(__KERNEL_STACK_CANARY),%eax
> > -       movl %eax,%gs
> > +       xorl %eax,%eax
> > +       movl %eax,%gs                   # clear possible garbage in %gs
> >
> >         xorl %eax,%eax                  # Clear LDT
> >         lldt %ax
> > @@ -339,20 +339,6 @@ SYM_FUNC_END(startup_32_smp)
> >   */
> >  __INIT
> >  setup_once:
> > -#ifdef CONFIG_STACKPROTECTOR
> > -       /*
> > -        * Configure the stack canary. The linker can't handle this by
> > -        * relocation.  Manually set base address in stack canary
> > -        * segment descriptor.
> > -        */
> > -       movl $gdt_page,%eax
> > -       movl $stack_canary,%ecx
> > -       movw %cx, 8 * GDT_ENTRY_STACK_CANARY + 2(%eax)
> > -       shrl $16, %ecx
> > -       movb %cl, 8 * GDT_ENTRY_STACK_CANARY + 4(%eax)
> > -       movb %ch, 8 * GDT_ENTRY_STACK_CANARY + 7(%eax)
> > -#endif
> > -
> >         andl $0,setup_once_ref  /* Once is enough, thanks */
> >         ret
> >
> > diff --git a/arch/x86/kernel/setup_percpu.c b/arch/x86/kernel/setup_percpu.c
> > index fd945ce78554..0941d2f44f2a 100644
> > --- a/arch/x86/kernel/setup_percpu.c
> > +++ b/arch/x86/kernel/setup_percpu.c
> > @@ -224,7 +224,6 @@ void __init setup_per_cpu_areas(void)
> >                 per_cpu(this_cpu_off, cpu) = per_cpu_offset(cpu);
> >                 per_cpu(cpu_number, cpu) = cpu;
> >                 setup_percpu_segment(cpu);
> > -               setup_stack_canary_segment(cpu);
> >                 /*
> >                  * Copy data used in early init routines from the
> >                  * initial arrays to the per cpu data areas.  These
> > diff --git a/arch/x86/kernel/tls.c b/arch/x86/kernel/tls.c
> > index 64a496a0687f..3c883e064242 100644
> > --- a/arch/x86/kernel/tls.c
> > +++ b/arch/x86/kernel/tls.c
> > @@ -164,17 +164,11 @@ int do_set_thread_area(struct task_struct *p, int idx,
> >                 savesegment(fs, sel);
> >                 if (sel == modified_sel)
> >                         loadsegment(fs, sel);
> > -
> > -               savesegment(gs, sel);
> > -               if (sel == modified_sel)
> > -                       load_gs_index(sel);
> >  #endif
> >
> > -#ifdef CONFIG_X86_32_LAZY_GS
> >                 savesegment(gs, sel);
> >                 if (sel == modified_sel)
> > -                       loadsegment(gs, sel);
> > -#endif
> > +                       load_gs_index(sel);
> >         } else {
> >  #ifdef CONFIG_X86_64
> >                 if (p->thread.fsindex == modified_sel)
> > diff --git a/arch/x86/kvm/svm/svm.c b/arch/x86/kvm/svm/svm.c
> > index f923e14e87df..ec39073b4897 100644
> > --- a/arch/x86/kvm/svm/svm.c
> > +++ b/arch/x86/kvm/svm/svm.c
> > @@ -1467,12 +1467,8 @@ static void svm_vcpu_put(struct kvm_vcpu *vcpu)
> >  #ifdef CONFIG_X86_64
> >                 loadsegment(fs, svm->host.fs);
> >                 wrmsrl(MSR_KERNEL_GS_BASE, current->thread.gsbase);
> > -               load_gs_index(svm->host.gs);
> > -#else
> > -#ifdef CONFIG_X86_32_LAZY_GS
> > -               loadsegment(gs, svm->host.gs);
> > -#endif
> >  #endif
> > +               load_gs_index(svm->host.gs);
> >
> >                 for (i = 0; i < NR_HOST_SAVE_USER_MSRS; i++)
> >                         wrmsrl(host_save_user_msrs[i].index,
> > @@ -3705,13 +3701,11 @@ static noinstr void svm_vcpu_enter_exit(struct kvm_vcpu *vcpu,
> >         } else {
> >                 __svm_vcpu_run(svm->vmcb_pa, (unsigned long *)&svm->vcpu.arch.regs);
> >
> > +               /* Restore the percpu segment immediately. */
> >  #ifdef CONFIG_X86_64
> >                 native_wrmsrl(MSR_GS_BASE, svm->host.gs_base);
> >  #else
> >                 loadsegment(fs, svm->host.fs);
> > -#ifndef CONFIG_X86_32_LAZY_GS
> > -               loadsegment(gs, svm->host.gs);
> > -#endif
> >  #endif
> >         }
> >
> > diff --git a/arch/x86/lib/insn-eval.c b/arch/x86/lib/insn-eval.c
> > index 4229950a5d78..7f89a091f1fb 100644
> > --- a/arch/x86/lib/insn-eval.c
> > +++ b/arch/x86/lib/insn-eval.c
> > @@ -404,10 +404,6 @@ static short get_segment_selector(struct pt_regs *regs, int seg_reg_idx)
> >         case INAT_SEG_REG_FS:
> >                 return (unsigned short)(regs->fs & 0xffff);
> >         case INAT_SEG_REG_GS:
> > -               /*
> > -                * GS may or may not be in regs as per CONFIG_X86_32_LAZY_GS.
> > -                * The macro below takes care of both cases.
> > -                */
> >                 return get_user_gs(regs);
> >         case INAT_SEG_REG_IGNORE:
> >         default:
> > diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.S
> > index 43b4d864817e..afbf0bb252da 100644
> > --- a/arch/x86/platform/pvh/head.S
> > +++ b/arch/x86/platform/pvh/head.S
> > @@ -45,10 +45,8 @@
> >
> >  #define PVH_GDT_ENTRY_CS       1
> >  #define PVH_GDT_ENTRY_DS       2
> > -#define PVH_GDT_ENTRY_CANARY   3
> >  #define PVH_CS_SEL             (PVH_GDT_ENTRY_CS * 8)
> >  #define PVH_DS_SEL             (PVH_GDT_ENTRY_DS * 8)
> > -#define PVH_CANARY_SEL         (PVH_GDT_ENTRY_CANARY * 8)
> >
> >  SYM_CODE_START_LOCAL(pvh_start_xen)
> >         cld
> > @@ -109,17 +107,6 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
> >
> >  #else /* CONFIG_X86_64 */
> >
> > -       /* Set base address in stack canary descriptor. */
> > -       movl $_pa(gdt_start),%eax
> > -       movl $_pa(canary),%ecx
> > -       movw %cx, (PVH_GDT_ENTRY_CANARY * 8) + 2(%eax)
> > -       shrl $16, %ecx
> > -       movb %cl, (PVH_GDT_ENTRY_CANARY * 8) + 4(%eax)
> > -       movb %ch, (PVH_GDT_ENTRY_CANARY * 8) + 7(%eax)
> > -
> > -       mov $PVH_CANARY_SEL,%eax
> > -       mov %eax,%gs
> > -
> >         call mk_early_pgtbl_32
> >
> >         mov $_pa(initial_page_table), %eax
> > @@ -163,7 +150,6 @@ SYM_DATA_START_LOCAL(gdt_start)
> >         .quad GDT_ENTRY(0xc09a, 0, 0xfffff) /* PVH_CS_SEL */
> >  #endif
> >         .quad GDT_ENTRY(0xc092, 0, 0xfffff) /* PVH_DS_SEL */
> > -       .quad GDT_ENTRY(0x4090, 0, 0x18)    /* PVH_CANARY_SEL */
> >  SYM_DATA_END_LABEL(gdt_start, SYM_L_LOCAL, gdt_end)
> >
> >         .balign 16
> > diff --git a/arch/x86/power/cpu.c b/arch/x86/power/cpu.c
> > index db1378c6ff26..ef4329d67a5f 100644
> > --- a/arch/x86/power/cpu.c
> > +++ b/arch/x86/power/cpu.c
> > @@ -99,11 +99,8 @@ static void __save_processor_state(struct saved_context *ctxt)
> >         /*
> >          * segment registers
> >          */
> > -#ifdef CONFIG_X86_32_LAZY_GS
> >         savesegment(gs, ctxt->gs);
> > -#endif
> >  #ifdef CONFIG_X86_64
> > -       savesegment(gs, ctxt->gs);
> >         savesegment(fs, ctxt->fs);
> >         savesegment(ds, ctxt->ds);
> >         savesegment(es, ctxt->es);
> > @@ -232,7 +229,6 @@ static void notrace __restore_processor_state(struct saved_context *ctxt)
> >         wrmsrl(MSR_GS_BASE, ctxt->kernelmode_gs_base);
> >  #else
> >         loadsegment(fs, __KERNEL_PERCPU);
> > -       loadsegment(gs, __KERNEL_STACK_CANARY);
> >  #endif
> >
> >         /* Restore the TSS, RO GDT, LDT, and usermode-relevant MSRs. */
> > @@ -255,7 +251,7 @@ static void notrace __restore_processor_state(struct saved_context *ctxt)
> >          */
> >         wrmsrl(MSR_FS_BASE, ctxt->fs_base);
> >         wrmsrl(MSR_KERNEL_GS_BASE, ctxt->usermode_gs_base);
> > -#elif defined(CONFIG_X86_32_LAZY_GS)
> > +#else
> >         loadsegment(gs, ctxt->gs);
> >  #endif
> >
> > diff --git a/arch/x86/xen/enlighten_pv.c b/arch/x86/xen/enlighten_pv.c
> > index 9a5a50cdaab5..e18235a6390d 100644
> > --- a/arch/x86/xen/enlighten_pv.c
> > +++ b/arch/x86/xen/enlighten_pv.c
> > @@ -1190,7 +1190,6 @@ static void __init xen_setup_gdt(int cpu)
> >         pv_ops.cpu.write_gdt_entry = xen_write_gdt_entry_boot;
> >         pv_ops.cpu.load_gdt = xen_load_gdt_boot;
> >
> > -       setup_stack_canary_segment(cpu);
> >         switch_to_new_gdt(cpu);
> >
> >         pv_ops.cpu.write_gdt_entry = xen_write_gdt_entry;
> > diff --git a/scripts/gcc-x86_32-has-stack-protector.sh b/scripts/gcc-x86_32-has-stack-protector.sh
> > index f5c119495254..825c75c5b715 100755
> > --- a/scripts/gcc-x86_32-has-stack-protector.sh
> > +++ b/scripts/gcc-x86_32-has-stack-protector.sh
> > @@ -1,4 +1,8 @@
> >  #!/bin/sh
> >  # SPDX-License-Identifier: GPL-2.0
> >
> > -echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c -m32 -O0 -fstack-protector - -o - 2> /dev/null | grep -q "%gs"
> > +# This requires GCC 8.1 or better.  Specifically, we require
> > +# -mstack-protector-guard-reg, added by
> > +# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81708
>
> And -mstack-protector-guard-symbol= it would seem, since that's what
> will cause this to fail with Clang?
>
> What about -mstack-protector-guard=global which can be used for non
> SMP?  I'm guessing that came out in an earlier version of GCC than
> -mstack-protector-guard-reg, so it doesn't need to be checked?  FWIW,
> some of these were added to Clang in https://reviews.llvm.org/D88631.
>

That might be better to check if compiler supports
-mstack-protector-guard-reg=<arg> flag/option.

- Sedat -

> > +
> > +echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c -m32 -O0 -fstack-protector -mstack-protector-guard-reg=fs -mstack-protector-guard-symbol=__stack_chk_guard - -o - 2> /dev/null | grep -q "%fs"
> > --
> > 2.29.2
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXrJOnE1kfVVWp6bEbNf42g-u5pHM5%2BNfC5boOrsyJDig%40mail.gmail.com.
