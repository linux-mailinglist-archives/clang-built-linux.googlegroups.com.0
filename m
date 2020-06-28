Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB44X4P3QKGQE3BKJG3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5ED20C910
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 18:57:25 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id o71sf4063147vsd.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 09:57:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593363444; cv=pass;
        d=google.com; s=arc-20160816;
        b=uW82gyQalBJFRLa0HunZYLjsbbJqoM4v28LchAb1bh5616uOikZGn43i6sBj5z2H62
         FWQPfFocVFu5TC4W6aSfso7+kt5Z/SSvt0OzIcxAOHszAZ6BIScrZzwmjvkhWRHzEtdo
         IMW8pjhTKhQ/bp6MbykaQ5Nl2ohdnGVS4HAWurMTOsowgOnZvTA4e5Ad9dhz+au96ZCV
         /xAaf1f62I0j6ILelZvj7N8qkRLmC0sprnhszeCwd+A+VnRPZuE0PRQIkdRZKx1q3Uzm
         fMh8FJFTZOPgG4H93xCeHFRe8oaIj1dfyyP+wjdrFoS0Gh/Ki3kIM01C3CSqlzjZAY/e
         c41w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=hvgXzw3xZ5TGIYIFzYBwnvlYJnTGbf9bEwQ3loPEJmU=;
        b=kv2f2FDPZCbRfm6xlkqcTt201eSEC7CogNiHjkq/Te7PIJzDNfgaosiOdhYz2jrbKx
         buMS3Vi0IYMLovLX9AwHRFs6EBQOHKVeneQIXkHwXQM5kYWnpixKR3+LybCW5JCKaj3c
         Pw9DcWc0o9/gLrcarrjU5JK/NWS3kLmoWbt7BAwpAEDGPX41vk69JF+NqXLmv9bKniMv
         J6+4AmQih3SXs/09qTCb1EgUTY/qknMaz/Uh9IBrHXlPkTaKY5kdLPEy237/IGBy2Rsa
         qaITEeEE5igbRaLg0CfP5d/s+K0/N89NeeekjiL6pQ69yFJOIip2LBlqhsn1Tzjm6j1h
         O1iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pQVYjDhz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hvgXzw3xZ5TGIYIFzYBwnvlYJnTGbf9bEwQ3loPEJmU=;
        b=nXV+sOeUNUjRM4NOZFhq7SNpaTRqq4eRErL9D4Mk7neoGcauItRJ5kX4IONtUqJW9v
         OIB2mp+SGziF3L/2CtM+xU4w6P5PCMAErp8C6o6i5q3wwEnwUyqPaQ83PZyb43HCA/kl
         fKqetdsGfZCiUzwD0KkqxhwGzk55NRMpJIJQY00y1KgXfHyKftyLFNjyAt5lw2DJRfki
         iMjd2YjmrLU6r+cIbZYpkzrSqXl/mctzP4b5A06kDhOWvUqKy6ybLQrMIWe/K/xeUg9V
         WquQyM02z6fZfLeCX7yl6a/9h3Ez3UPE9HsDvR25pb+vjMomWFvOrhi76PK0PWYnIweN
         TVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hvgXzw3xZ5TGIYIFzYBwnvlYJnTGbf9bEwQ3loPEJmU=;
        b=kHT+wQb+IUcmaAU29VPO3Y1B+cdaZDwFF7M/QJkRdUy3eYyX8VI/LICMJx1sLxRhg2
         9p2Sg26J3SOM1PZQc4CMWeOm2E68Vj8EpERIdTvGSkSEIMF6pwz9WO0wp6Nx7IOXv4v0
         mbKUWAqAC1DhAXGPumu3N7xDlSolE5E8lQCRltTCOpgmDiDlDORAbmfqvAET+AH+CDYd
         CyFUO1Gi59/Zeiphyxm84Dogzsvq0/VcYY+ZpmZyiE+JOpm047egNx8RtD9RPlPlRPit
         Y0/xrjh0DnKsBRBoK/m/BICGdKCNAO36gg8lSbA+qv/CE2TrQdAO0GRO4atz2qClksYL
         bsWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WA0m/lHbIhWBSqctpM90wLIADbnwfUd8kEu8FAfLsfqMIbiYx
	Lm0kqVOIqnqdvLkIPI5eM0g=
X-Google-Smtp-Source: ABdhPJw88P354Q57T6PJLZ3TUQtMw14bPi8Xum9/4kni74qbZkpLHFCI3t069xriSgNE3kDG56VbAw==
X-Received: by 2002:ab0:3116:: with SMTP id e22mr8365752ual.85.1593363444062;
        Sun, 28 Jun 2020 09:57:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a04a:: with SMTP id j71ls663579vke.3.gmail; Sun, 28 Jun
 2020 09:57:23 -0700 (PDT)
X-Received: by 2002:ac5:c94e:: with SMTP id s14mr7764927vkm.96.1593363443699;
        Sun, 28 Jun 2020 09:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593363443; cv=none;
        d=google.com; s=arc-20160816;
        b=Nlxd9SQs/THKxU8IIgW3kNoEfQP+FWtXzwpm0LDs5R0cZ3VerBp//SgCFiPLSDPSVN
         cOCHt1m1W8FMGzDPuHpq99xV++VzX47mGJFERBFfoC4qaazfXoWvxS2/em63pDnwlKmO
         nIwHqLuOyj3KiZwfS/0s0eDdYAQ6yR/Ds7K23gk/m1Xj9LVZfUs5IEjimkUrWCjOa4dX
         osGcskYZah4YK5wEXSpIbB4GCsE55Ze9U2Vnko1qcTsauRCICF1+in5iLfsu/QVXYtLm
         wnoRUqkyMAIxKAZenWBn/Uz1GgzRuvM4j2UL3xRVLovShB3KSPj3eym5RosoyY8ruJNn
         OFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=dzgWJCQRhelJ3hJ0whBHzpzDiUuuI9JauHMlySTBPIU=;
        b=bp/NFpnCHGAjaq/cJZQ2oNgxXVWb4PXE/CXdyaXUMOvMdaTQsG6/uPsWat2TyyBsdi
         zi2ONIAuhHF6T7HqLmsxA49u0S/XrNnfWsYS4AqtjkWaD3ZpJeME0/MCFzIxmZJv/63z
         ELobDhrpf9vgzHRHsenE6VuWq04sgrPr03W7gifCKL38OY6U74KJbr85s1wJ+gIHkDpf
         gohVC0r3988hc66snmZ91ANJm/xK/4Rhj++w+2wxC7RiFKDfbhvAvA4jItYLk9THMI0l
         ugsKoern29yB0D9le6E2WHZWnuhfr+j2XkjjsTYSOh9QM3navSPxWWBKk74Pcg9ygkM6
         EXuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pQVYjDhz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id n24si1826535vsk.2.2020.06.28.09.57.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jun 2020 09:57:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 05SGuubH026312
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 01:56:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 05SGuubH026312
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id z9so3470596uai.6
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 09:56:57 -0700 (PDT)
X-Received: by 2002:ab0:156d:: with SMTP id p42mr8396563uae.121.1593363415963;
 Sun, 28 Jun 2020 09:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 29 Jun 2020 01:56:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
Message-ID: <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=pQVYjDhz;       spf=softfail
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

On Thu, Jun 25, 2020 at 5:32 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
>
> In addition to performance, the primary motivation for LTO is to allow
> Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> Pixel devices have shipped with LTO+CFI kernels since 2018.
>
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
>
> Note that first objtool patch in the series is already in linux-next,
> but as it's needed with LTO, I'm including it also here to make testing
> easier.


I put this series on a testing branch,
and 0-day bot started reporting some issues.

(but 0-day bot is quieter than I expected.
Perhaps, 0-day bot does not turn on LLVM=1 ?)



I also got an error for
ARCH=arm64 allyesconfig + CONFIG_LTO_CLANG=y



$ make ARCH=arm64 LLVM=1 LLVM_IAS=1
CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
-j24

  ...

  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  GEN     .tmp_initcalls.lds
  GEN     .tmp_symversions.lds
  LTO     vmlinux.o
  MODPOST vmlinux.symvers
  MODINFO modules.builtin.modinfo
  GEN     modules.builtin
  LD      .tmp_vmlinux.kallsyms1
ld.lld: error: undefined symbol: __compiletime_assert_905
>>> referenced by irqbypass.c
>>>               vmlinux.o:(jeq_imm)
make: *** [Makefile:1161: vmlinux] Error 1








> Sami Tolvanen (22):
>   objtool: use sh_info to find the base for .rela sections
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
>   kbuild: lto: fix recordmcount
>   kbuild: lto: postpone objtool
>   kbuild: lto: limit inlining
>   kbuild: lto: merge module sections
>   kbuild: lto: remove duplicate dependencies from .mod files
>   init: lto: ensure initcall ordering
>   init: lto: fix PREL32 relocations
>   pci: lto: fix PREL32 relocations
>   modpost: lto: strip .lto from module names
>   scripts/mod: disable LTO for empty.c
>   efi/libstub: disable LTO
>   drivers/misc/lkdtm: disable LTO for rodata.o
>   arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
>   arm64: vdso: disable LTO
>   arm64: allow LTO_CLANG and THINLTO to be selected
>   x86, vdso: disable LTO only for vDSO
>   x86, ftrace: disable recordmcount for ftrace_make_nop
>   x86, relocs: Ignore L4_PAGE_OFFSET relocations
>   x86, build: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                            |   1 +
>  Makefile                              |  27 ++-
>  arch/Kconfig                          |  65 +++++++
>  arch/arm64/Kconfig                    |   2 +
>  arch/arm64/Makefile                   |   1 +
>  arch/arm64/kernel/vdso/Makefile       |   4 +-
>  arch/x86/Kconfig                      |   2 +
>  arch/x86/Makefile                     |   5 +
>  arch/x86/entry/vdso/Makefile          |   5 +-
>  arch/x86/kernel/ftrace.c              |   1 +
>  arch/x86/tools/relocs.c               |   1 +
>  drivers/firmware/efi/libstub/Makefile |   2 +
>  drivers/misc/lkdtm/Makefile           |   1 +
>  include/asm-generic/vmlinux.lds.h     |  12 +-
>  include/linux/compiler-clang.h        |   4 +
>  include/linux/compiler.h              |   2 +-
>  include/linux/compiler_types.h        |   4 +
>  include/linux/init.h                  |  78 +++++++-
>  include/linux/pci.h                   |  15 +-
>  kernel/trace/ftrace.c                 |   1 +
>  lib/Kconfig.debug                     |   2 +-
>  scripts/Makefile.build                |  55 +++++-
>  scripts/Makefile.lib                  |   6 +-
>  scripts/Makefile.modfinal             |  40 +++-
>  scripts/Makefile.modpost              |  26 ++-
>  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh               | 100 +++++++++-
>  scripts/mod/Makefile                  |   1 +
>  scripts/mod/modpost.c                 |  16 +-
>  scripts/mod/modpost.h                 |   9 +
>  scripts/mod/sumversion.c              |   6 +-
>  scripts/module-lto.lds                |  26 +++
>  scripts/recordmcount.c                |   3 +-
>  tools/objtool/elf.c                   |   2 +-
>  34 files changed, 737 insertions(+), 58 deletions(-)
>  create mode 100755 scripts/generate_initcall_order.pl
>  create mode 100644 scripts/module-lto.lds
>
>
> base-commit: 26e122e97a3d0390ebec389347f64f3730fdf48f
> --
> 2.27.0.212.ge8ba1cc988-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-1-samitolvanen%40google.com.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d%3DV0CXiAXcNw%40mail.gmail.com.
