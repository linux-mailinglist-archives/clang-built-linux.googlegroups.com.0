Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB3PFVCJQMGQEZ5M2HYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B155512B6C
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 08:23:42 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id sa27-20020a1709076d1b00b006e8b357a2e7sf2365399ejc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 23:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651127022; cv=pass;
        d=google.com; s=arc-20160816;
        b=AkH5wkrdbWpqx1iAkQ7oI5qcoHFtOgIX79xrixuLvppfXek6ExEkti6D8rNUzNCMsd
         nAaQe6YXXRkSHbMLxxdzc6I0Qd9XsBkbHgFowzehxrosaxhtW9f8q9b4ArUf0AAU55RI
         v8h3lhX2fc5UQ6Qoj8mVXvvTUe5PhHxOuBGwhEu99AGRKAavW3tgYkTdzBDuxGIXJFoN
         S/n9xssPsYmb6BOHHBq9qLiSvGrDvmNfIFGcwtXU2saFBtIpKrLihMPRvWMGLRkfl9FF
         kmuoZGLYYm20s0eh+jZ0bXbX3ct7YsyRiSxw1iVkGkif+SOdfCHDiuTQ2QT5gE6DfSik
         5l/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WLFXLsDaiHLU7Y/IHXr30ZyTOTayF0eXTrhBYEpbgAY=;
        b=ye+4Ka0yd5NVbAbQO4e66bL31vCMYtpLXpww+uqoGTCvH0sOj/fOJF90SOXsqzFsnz
         aChAo9qIL3RZlRYF1Gr7AdrAuWqLU2N6bYuPACfmNreUe5PmpRCFUyfSoebFx2KmXwBQ
         cl7kiUYADmpwugGUhd95r8GYLnXWS9fzINimW4XJXU0ia16dfw34ONQNNzBGIWseS/ew
         wg85rgN6Xmvf60CbWo8sxXvY0aB2MoeQw5W+diiLsyKuEFS+ggllIfdzRBPsNe17OEa6
         bfNPNQVgmuvrZor6MgaZ0lAhrvkHWpy7/EDlB3PDh/TYrcpTyEFbHfcbXYvwzL7+XlSD
         5eIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fb2Jfadz;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLFXLsDaiHLU7Y/IHXr30ZyTOTayF0eXTrhBYEpbgAY=;
        b=qMIs5hJpeW5zksFh3dSgpQnziJI2We8c/aJY25229AyMrx0e0B65jmEEEcogKo0a2R
         B2cNZiW0fabK3YwlwBtMH+1MCJOUwEbG5AyK1b4nQE0GayaDdcwY4kd75rh5P8O66f2C
         Ig0jcd6BS+zNv3l09Rd/JjXvna8Rb87+OHySfkduvUsNXoxRHOYGv4PQg6bsLafjsOeX
         U+6fCZRUa2lcnJdt4IzyQURURc3f/e2BkRAxjOsl9P6FNefJkzBFwj9HagGH1oLjM5e7
         CMBw5BZi4zQ+7kw39hSui1B4bfsBfS956E2F1KoEzRfPnzQT/hezlZunlFaZPviaAm05
         Zicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLFXLsDaiHLU7Y/IHXr30ZyTOTayF0eXTrhBYEpbgAY=;
        b=kNbpowUqlRiX9+YjStYLAkv8v9JyVkeAWFB+/PTBF1k4mKRuuNiePEcbDhMnhOuSTf
         jdpXCsgPQArhALq7REGfM+jGkWvivpK8pS2oYd3ToSliNhrMbEoCJZrc4jwQ9yRLadBt
         zh8pwnNV0r6RO7VU8f/dG5s0mlYZ8+pL38wa0uJpi/5svFCzBidc/EYgd7KBClNwS17Y
         rcD6ivnxPqPizUM83gAoekiLfSm+TS0dvpsoDhCO5PqxRZPHfMFQGYcCRMZ6psMIjkdH
         P1qzAuekc93GgzzU/+tw2EA1L2dtg4VOxbeEU3XH9uUxTtOy61WVHQOF/3xZFuI1wyWL
         Tuqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZPA+1AAHm272B315FERN5/9QnH8eb85bw/ZNZEEg1664lsId5
	IwpoDJuTUbEZGzL1SyhiJq4=
X-Google-Smtp-Source: ABdhPJyw4uxUlEKPNg5V+/8dsMy0OJU3ssfjehwau0neu978WilhCrlEdXs1bywYRqNY57NQuBZc5Q==
X-Received: by 2002:a17:907:9728:b0:6f3:d090:ae5e with SMTP id jg40-20020a170907972800b006f3d090ae5emr5260369ejc.389.1651127022022;
        Wed, 27 Apr 2022 23:23:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:34c8:b0:423:f341:6e06 with SMTP id
 w8-20020a05640234c800b00423f3416e06ls614801edc.2.gmail; Wed, 27 Apr 2022
 23:23:40 -0700 (PDT)
X-Received: by 2002:a50:ce14:0:b0:425:cb75:5322 with SMTP id y20-20020a50ce14000000b00425cb755322mr28593199edi.386.1651127020712;
        Wed, 27 Apr 2022 23:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651127020; cv=none;
        d=google.com; s=arc-20160816;
        b=KVU2Q9pDPUEgEuCsgFN9gmpfJdiP8Xh7Dd2jXXs4Sn4eyLxRp1qpqFNakLn3H7Vd0o
         yC3NTZIV+l50fjj6avRZaa9tRl9tGvWfiKwgsTNeR+jqEeoLDNfuZJvDObPAhtSag9SQ
         hWYqB5/FDPxerFnqvzRyyk8Pbnxr+shiDxotlVhS6d2CsZcDE5FpysaamfedoTUfrNbr
         WYi/8L16NCcjcMHyo2JFyfyIbZZi4HtqBaR8OHvkuFspr2Nsp/wRXEA2d2tw/3KIYcCE
         sk/C1jm31nOieKlp7TA7Hckvt5+rzv1PlV9XwVKxdW01ih72S6uxi2lCROSTLCE/mCip
         CNCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MDmkjBvg7nWUW6y5NSA9mIuTN4IafU25Ea21fUbgOKs=;
        b=uHBUDIeYRgbF3B5NYY8trbdRyQRo8bH/4/kpLeDKODbBWNJIG9hwP5pdXDB75L+3dO
         9wwz7JfFOiCq9AuNsDoRtXE0QpHDcHoTto1n0iM5BzfBENBPc2tpSwrszfMZSr4fSOBk
         dQF6LRVHKQSI0DKNu2F8vVNk+Vu0wGUi/WPsAdBRpimThi8+DNVbAiMATgbcREaDHsIh
         3f3Fj1xFAq5/951onwG5FrYBuklsQ/4rnVfRFp5TCSuBGqX8xeRn22BwYIA3lUvFwQaF
         z3GNYDMNsE1x9RcO/MadyYyRJ3dFHqEN19Ub8SLe8M69DXS1IlJLgyHlaI2gLgvYlYDx
         fCVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fb2Jfadz;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id ee31-20020a056402291f00b0041b5ea4060asi161615edb.5.2022.04.27.23.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4768CB82BA9
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 06:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEFE1C385AE
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 06:23:38 +0000 (UTC)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-e67799d278so4244850fac.11
        for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 23:23:38 -0700 (PDT)
X-Received: by 2002:a05:6870:b4a4:b0:e9:4fdc:8ce with SMTP id
 y36-20020a056870b4a400b000e94fdc08cemr7172378oap.126.1651127017894; Wed, 27
 Apr 2022 23:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com>
In-Reply-To: <20220428024030.gwxb746c5gwvcnw6@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Apr 2022 08:23:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
Message-ID: <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
To: Fangrui Song <maskray@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fb2Jfadz;       spf=pass
 (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted
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

On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
>
> On 2022-04-27, Ard Biesheuvel wrote:
> >We currently use ordinary, position dependent code generation for the
> >core kernel, which happens to default to the 'small' code model on both
> >GCC and Clang. This is the code model that relies on ADRP/ADD or
> >ADRP/LDR pairs for symbol references, which are PC-relative with a range
> >of -/+ 4 GiB, and therefore happen to be position independent in
> >practice.
> >
> >This means that the fact that we can link the relocatable KASLR kernel
> >using the -pie linker flag (which generates the runtime relocations and
> >inserts them into the binary) is somewhat of a coincidence, and not
> >something which is explicitly supported by the toolchains.
>
> Agree. The current -fno-PIE + -shared -Bsymbolic combo works as a
> conincidence, not guaranteed by the toolchain.
>
> -shared needs -fpic object files. -shared -Bsymbolic is very similar to
> -pie and therefore works with -fpie object files, but the usage is not
> recommended from the toolchain perspective.
>

So are you suggesting we should also switch from -shared to -Bsymbol
to -pie if we can? I don't remember the details, but IIRC ld.bfd
didn't set the ELF binary type correctly, but perhaps this has now
been fixed.

> >The reason we have not used -fpie for code generation so far (which is
> >the compiler flag that should be used to generate code that is to be
> >linked with -pie) is that by default, it generates code based on
> >assumptions that only hold for shared libraries and PIE executables,
> >i.e., that gathering all relocatable quantities into a Global Offset
> >Table (GOT) is desirable because it reduces the CoW footprint, and
> >because it permits ELF symbol preemption (which lets an executable
> >override symbols defined in a shared library, in a way that forces the
> >shared library to update all of its internal references as well).
> >Ironically, this means we end up with many more absolute references that
> >all need to be fixed up at boot.
>
> This is not about symbol preemption (when the executable and a shared
> objectdefine the same symbol, which one wins). An executable using a GOT
> which will be resolved to a shared object => this is regular relocation
> resolving and there is no preemption.
>
> It is that the compiler prefers code generation which can avoid text
> relocations / copy relocations / canonical PLT entries
> (https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected#summary).
>

Fair enough. So the compiler cannot generate relative references to
undefined external symbols since it doesn't know at codegen time
whether the symbol reference will be satisfied by the executable
itself or by a shared library, and in the latter case, the relative
distance to the symbol is not known at build time, and so a runtime
relocation is required. But how about references to symbols with
external visibility that are defined in the same compilation unit? I
don't quite understand why those references need to go via the GOT as
well.

> >Fortunately, we can convince the compiler to handle this in a way that
> >is a bit more suitable for freestanding binaries such as the kernel, by
> >setting the 'hidden' visibility #pragma, which informs the compiler that
> >symbol preemption or CoW footprint are of no concern to us, and so
> >PC-relative references that are resolved at link time are perfectly
> >fine.
>
> Agree
>

The only unfortunate thing is that -fvisibility=hidden does not give
us the behavior we want, and we are forced to use the #pragma instead.

> >So let's enable this #pragma and build with -fpie when building a
> >relocatable kernel. This also means that all constant data items that
> >carry statically initialized pointer variables are now emitted into the
> >.data.rel.ro* sections, so move these into .rodata where they belong.
>
> LGTM, except: is ".rodata" a typo? The patch doesn't reference .rodata
>

I am referring to the .rodata pseudo-segment that we have in the
kernel, which runs from _etext to __inittext_begin.

> >Code size impact (GCC):
> >
> >Before:
> >
> >      text       data        bss      total filename
> >  16712396   18659064     534556   35906016 vmlinux
> >
> >After:
> >
> >      text       data        bss      total filename
> >  16804400   18612876     534556   35951832 vmlinux
> >
> >Code size impact (Clang):
> >
> >Before:
> >
> >      text       data        bss      total filename
> >  17194584   13335060     535268   31064912 vmlinux
> >
> >After:
> >
> >      text       data        bss      total filename
> >  17194536   13310032     535268   31039836 vmlinux
> >
> >Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> >---
> > arch/arm64/Makefile             | 4 ++++
> > arch/arm64/kernel/vmlinux.lds.S | 9 ++++-----
> > 2 files changed, 8 insertions(+), 5 deletions(-)
> >
> >diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> >index 2f1de88651e6..94b6c51f5de6 100644
> >--- a/arch/arm64/Makefile
> >+++ b/arch/arm64/Makefile
> >@@ -18,6 +18,10 @@ ifeq ($(CONFIG_RELOCATABLE), y)
> > # with the relocation offsets always being zero.
> > LDFLAGS_vmlinux               += -shared -Bsymbolic -z notext \
> >                       $(call ld-option, --no-apply-dynamic-relocs)
> >+
> >+# Generate position independent code without relying on a Global Offset Table
> >+KBUILD_CFLAGS_KERNEL   += -fpie -include $(srctree)/include/linux/hidden.h
> >+
> > endif
> >
> > ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
> >diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> >index edaf0faf766f..b1e071ac1acf 100644
> >--- a/arch/arm64/kernel/vmlinux.lds.S
> >+++ b/arch/arm64/kernel/vmlinux.lds.S
> >@@ -174,8 +174,6 @@ SECTIONS
> >                       KEXEC_TEXT
> >                       TRAMP_TEXT
> >                       *(.gnu.warning)
> >-              . = ALIGN(16);
> >-              *(.got)                 /* Global offset table          */
> >       }
> >
> >       /*
> >@@ -192,6 +190,8 @@ SECTIONS
> >       /* everything from this point to __init_begin will be marked RO NX */
> >       RO_DATA(PAGE_SIZE)
> >
> >+      .data.rel.ro : ALIGN(8) { *(.got) *(.data.rel.ro*) }
> >+
> >       HYPERVISOR_DATA_SECTIONS
> >
> >       idmap_pg_dir = .;
> >@@ -273,6 +273,8 @@ SECTIONS
> >       _sdata = .;
> >       RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
> >
> >+      .data.rel : ALIGN(8) { *(.data.rel*) }
> >+
> >       /*
> >        * Data written with the MMU off but read with the MMU on requires
> >        * cache lines to be invalidated, discarding up to a Cache Writeback
> >@@ -320,9 +322,6 @@ SECTIONS
> >               *(.plt) *(.plt.*) *(.iplt) *(.igot .igot.plt)
> >       }
> >       ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
> >-
> >-      .data.rel.ro : { *(.data.rel.ro) }
> >-      ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
> > }
> >
> > #include "image-vars.h"
> >--
> >2.30.2
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-3-ardb%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEW-KPVWqS33OX0Qw-EAeX%2BXfocHGisVw8gsb2k_KffJA%40mail.gmail.com.
