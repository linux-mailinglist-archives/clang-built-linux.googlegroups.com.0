Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLVAQL6AKGQEMNO6FTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E989288EE7
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:30:39 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id v129sf1603530vke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:30:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602261038; cv=pass;
        d=google.com; s=arc-20160816;
        b=j32pOUss71e0YAfm1un0RHoyGHxSl7SmWGaQNql0EE22cVMlG4lStE/gzyS7+aJjv9
         wMcrOW7T2naj0cgkzOwQ3SYqkgWOIKS3ItgHGNYMTGUPyI7aCenDejzAvExoq6Zc1AR3
         Rf688LJ5H1RMRQyoR7uD7VnmtlP7JzwkGSBNuP5Ht3voxQPYZCG7ywnn4fZgxNG4V4DK
         9CP+T+Y4/eNvDauww9yX8FzpUHHMjBAtT6MTaECQKWxaZNl0JxWspneuBzIGshVdj4/D
         0wvcoZ3xk7jDl5dgnwVsrNhMfd304/4iQqpvFeJ+jTqbHYtfqNgMg7tz3cGCsfpJicwj
         6E7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lH1Ph1ImYsv7RT4GkijThkzlXs7JB2b/ZiAYnaBBfLI=;
        b=GuH0XkK9Dsiemc1DxeYGWg2VNMmAEBjtxCIxBewchiSiMg1X7TuWanSBW8m/TW5qFq
         dt3sfnJStMgQsIyQ34KYIjJrX5FQCoOfEk9dTn5JNALuzuyeYfBtGuYL21iTABKQOgPx
         H/jy7oHRPctBt3Xw6N65jFubPGrZ3YrDp06XdkzHS3WfSkJkc3r0z2EmLNPgM4oWlv09
         guym5fqmn/2ExCKKS6sdF54EBS9Wy9TZtUgv5UkOdLgoGJ9s4WZS8fvWPyAyRSUUexfk
         EHi7F2DAKK5hPrq0mw43N7ZWVB25f+UXbHsR+qQKn4lUcap1R7Qr/sYi9nuca69Ue5eo
         rzEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEJDk5aB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lH1Ph1ImYsv7RT4GkijThkzlXs7JB2b/ZiAYnaBBfLI=;
        b=dwrM6rKRVA5Qe/QjMkc/maWWKbzBNIikkR0Jgv4QMRAMWM184rsSMpdLxeaWwpI9ni
         zl0E1dtXvUpetx2vNI9/kuSF4yq03UtoVqp5rsuGwIQh5gpceNXJt8pmJebLeuwRuZSz
         1BRuQjAhe4M5yNV65hVIdcipwa6upfm8X74NkOwpeGqBu8Vv6lNs1HKa/U+mzDEtwgc0
         WM/2e2A1+JuUNjXEPLW1TjtWn7E1FCrvP3JVJJ+aHZpyLgwSf0s8BBRn/Dcx+BIKrA5y
         ZR3lo9hkVs/32jSY0Xr/piIK3qKuKZ04TYSKD84qixaS4RMyNbVvQG+nWlEVg+r8nhSj
         ztPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lH1Ph1ImYsv7RT4GkijThkzlXs7JB2b/ZiAYnaBBfLI=;
        b=W8AcsPMRLSIrRlEGTZxyI4kb4ezAJsGbOmvbZ0O778q2A5LY2V+8bXY/VJKqK1wgXq
         vwjzOXLvJPXfDvfGXdWnZ4aw8IS3ApunW9Sb17AhJLT8AwtH0zJLSKvS9nFaTp/SfUTn
         mg8wPyVGgcFir0ecS4rZB1u/fxyWeRhxZQiSfdr/8FpiJ+43gbQRvV6yW4wirRsmRB4Z
         0Ne+il77Bnht473HCbREKcq12gM2NufYjcovas1ndciknRn5Om/0mguSoLbW0gITAy6w
         LQ+lPDiCYOilK6LyhAqjiwk415leA7iZxrpjvHmkHxyachhQ/dFpsBz2PtlqCi+MPPR3
         CPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lH1Ph1ImYsv7RT4GkijThkzlXs7JB2b/ZiAYnaBBfLI=;
        b=rOOgFrMah15Cewyt+geD1gO0iPjODAHIhVgQ+j8mO0p97IWybZ1+yMBIgprjC+LNwQ
         OD5GV2PtxLMdHuqUD9IRNEsozx/9RgF+zuimod6RIhFD51Ztbft8np2KFE2mU0LYNAMr
         GThSgK3FjSg/7VVrigseLtF9Z3Q33zh6SAuniYXSqtdwaX3JM+jV35+gRMtZ/RAKWyVO
         XR/HOu1WtJ3OO5yFTdMSS/lf3Hc4qe8wfIvl0ponK8u3In6oYELu/sNJHi/Ff05gZZbE
         JhWkzmibdLzN+rULG1znvU4qwNJp6ozVSz1X4nHDockMtMMVG6sm4tSQTk10eHUx9JMw
         ntSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X9o7fYomhmUchDa/JtDbXFdvPlO0fhI+cSH+tFwRuV4iDSKpr
	lvlMVMPinHZylijc1tvbuhc=
X-Google-Smtp-Source: ABdhPJzNzLfueXZxr3uxuXudRGLlLBsSXLP/0zB55YVym1RcfoaI7DbwBxK7BGQg/Q5MFaMS1gD3vw==
X-Received: by 2002:ab0:7709:: with SMTP id z9mr7624752uaq.33.1602261038497;
        Fri, 09 Oct 2020 09:30:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc17:: with SMTP id x23ls1074102vsj.8.gmail; Fri, 09 Oct
 2020 09:30:37 -0700 (PDT)
X-Received: by 2002:a05:6102:30b2:: with SMTP id y18mr8107025vsd.51.1602261037897;
        Fri, 09 Oct 2020 09:30:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602261037; cv=none;
        d=google.com; s=arc-20160816;
        b=dG5j4vII+yriq21BnBOPY7RNnMBqpB3I3i6+mXYGh/Kx86c/6cPc6oRihFg+IQ5ueh
         eQdyUsNVM7QaLdb7AjbBT4VhknkKp/8QwSkAk2BTreWNRoKC9Hye1md+RWQtkxQG+bV3
         epx58N5q+JVxUji1QO9frjJcKAcsUUGj+Nzs8vX4J/70oZccmT9twJ6M1GpKr02FwYU5
         Z0KsknwNOiM1oKFoXNBy5nBbFBLCBbvGP7uXS6yVG5g2nFSVLcJmcmcI0V3mfh/MPhZA
         XV2JZ6DFzCfkJyd6k8MZqTyeF0WdlLCsy6x02gkBBW12O82y5x/knFeSqSjkuO4XNEA8
         1+GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2Gc2VbZdU1IXiw57R85Qt4LavpkHTDXOYsNp+15DYcg=;
        b=kkDjR94COQt2+DzTQ0S2YaWN1N7KsUmxU31Jvrt5qOTurQPGFO8AfZNVIZu3CvHsfb
         MA0k47kz/12gusGVVjZLvPgQPvpNaNOnvTk7/cYHz7RsCc7EEjx4fcFDhDM+F9hyZ+Mp
         xZp/a1m2loqZGEr3/Y/kQGOALLVEhR5T/2FkeZmqZp6fH7biuCP5lzUPh1AOkcNedyaz
         FPdew6u5nKkwCRygq4FYiFokTqVzvzs0r+BMx4CSeCt396dh8flptva/8JGOA9PuxJxE
         h3KuDEmhunxkuZzIEEWPDJXbqeg/oF68viNJ1HaGRsaSjIS1reK3EIwb9Dv/xUEFzFLu
         cxBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEJDk5aB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id u25si637864vkl.5.2020.10.09.09.30.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id q7so9667811ile.8
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:30:37 -0700 (PDT)
X-Received: by 2002:a92:7f05:: with SMTP id a5mr11486123ild.112.1602261037165;
 Fri, 09 Oct 2020 09:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 9 Oct 2020 18:30:24 +0200
Message-ID: <CA+icZUVWdRWfhPhPy79Hpjmqbfw+n8xsgMKv_RU+hoh1bphXdg@mail.gmail.com>
Subject: Re: [PATCH v5 00/29] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hEJDk5aB;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

On Fri, Oct 9, 2020 at 6:13 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
>
> In addition to performance, the primary motivation for LTO is
> to allow Clang's Control-Flow Integrity (CFI) to be used in the
> kernel. Google has shipped millions of Pixel devices running three
> major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
>
> Note that this version is based on tip/master to reduce the number
> of prerequisite patches, and to make it easier to manage changes to
> objtool. Patch 1 is from Masahiro's kbuild tree, and while it's not
> directly related to LTO, it makes the module linker script changes
> cleaner.
>
> Furthermore, patches 2-6 include Peter's patch for generating
> __mcount_loc with objtool, and build system changes to enable it on
> x86. With these patches, we no longer need to annotate functions
> that have non-call references to __fentry__ with LTO, which greatly
> simplifies supporting dynamic ftrace.
>
> You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v5
>
> ---
> Changes in v5:
>
>   - Rebased on top of tip/master.
>

What are the plans to get this into mainline?
Linux v5.10 :-) too early - needs more review/testing?

Will clang-cfi be based on this, too?

>   - Changed the command line for objtool to use --vmlinux --duplicate
>     to disable warnings about retpoline thunks and to fix .orc_unwind
>     generation for vmlinux.o.
>
>   - Added --noinstr flag to objtool, so we can use --vmlinux without
>     also enabling noinstr validation.
>
>   - Disabled objtool's unreachable instruction warnings with LTO to
>     disable false positives for the int3 padding in vmlinux.o.
>
>   - Added ANNOTATE_RETPOLINE_SAFE annotations to the indirect jumps
>     in x86 assembly code to fix objtool warnings with retpoline.
>
>   - Fixed modpost warnings about missing version information with
>     CONFIG_MODVERSIONS.
>
>   - Included Makefile.lib into Makefile.modpost for ld_flags. Thanks
>     to Sedat for pointing this out.
>

That was a long way to detect this as I had very big Debian Linux
debug packages generated with CONFIG_DEBUG_INFO_COMPRESSED=y.

Thanks for v5 of clang-lto.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1086#issuecomment-705754002

>   - Updated the help text for ThinLTO to better explain the trade-offs.
>
>   - Updated commit messages with better explanations.
>
> Changes in v4:
>
>   - Fixed a typo in Makefile.lib to correctly pass --no-fp to objtool.
>
>   - Moved ftrace configs related to generating __mcount_loc to Kconfig,
>     so they are available also in Makefile.modfinal.
>
>   - Dropped two prerequisite patches that were merged to Linus' tree.
>
> Changes in v3:
>
>   - Added a separate patch to remove the unused DISABLE_LTO treewide,
>     as filtering out CC_FLAGS_LTO instead is preferred.
>
>   - Updated the Kconfig help to explain why LTO is behind a choice
>     and disabled by default.
>
>   - Dropped CC_FLAGS_LTO_CLANG, compiler-specific LTO flags are now
>     appended directly to CC_FLAGS_LTO.
>
>   - Updated $(AR) flags as KBUILD_ARFLAGS was removed earlier.
>
>   - Fixed ThinLTO cache handling for external module builds.
>
>   - Rebased on top of Masahiro's patch for preprocessing modules.lds,
>     and moved the contents of module-lto.lds to modules.lds.S.
>
>   - Moved objtool_args to Makefile.lib to avoid duplication of the
>     command line parameters in Makefile.modfinal.
>
>   - Clarified in the commit message for the initcall ordering patch
>     that the initcall order remains the same as without LTO.
>
>   - Changed link-vmlinux.sh to use jobserver-exec to control the
>     number of jobs started by generate_initcall_ordering.pl.
>
>   - Dropped the x86/relocs patch to whitelist L4_PAGE_OFFSET as it's
>     no longer needed with ToT kernel.
>
>   - Disabled LTO for arch/x86/power/cpu.c to work around a Clang bug
>     with stack protector attributes.
>
> Changes in v2:
>
>   - Fixed -Wmissing-prototypes warnings with W=1.
>
>   - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
>     scrubbing to make distclean.
>
>   - Added a comment about Clang >=11 being required.
>
>   - Added a patch to disable LTO for the arm64 KVM nVHE code.
>
>   - Disabled objtool's noinstr validation with LTO unless enabled.
>
>   - Included Peter's proposed objtool mcount patch in the series
>     and replaced recordmcount with the objtool pass to avoid
>     whitelisting relocations that are not calls.
>
>   - Updated several commit messages with better explanations.
>
>
> Masahiro Yamada (1):
>   kbuild: preprocess module linker script
>
> Peter Zijlstra (1):
>   objtool: Add a pass for generating __mcount_loc
>
> Sami Tolvanen (27):
>   objtool: Don't autodetect vmlinux.o
>   tracing: move function tracer options to Kconfig
>   tracing: add support for objtool mcount
>   x86, build: use objtool mcount
>   treewide: remove DISABLE_LTO
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
>   objtool: Split noinstr validation from --vmlinux
>   kbuild: lto: postpone objtool
>   kbuild: lto: limit inlining
>   kbuild: lto: merge module sections
>   kbuild: lto: remove duplicate dependencies from .mod files
>   init: lto: ensure initcall ordering
>   init: lto: fix PREL32 relocations
>   PCI: Fix PREL32 relocations for LTO
>   modpost: lto: strip .lto from module names
>   scripts/mod: disable LTO for empty.c
>   efi/libstub: disable LTO
>   drivers/misc/lkdtm: disable LTO for rodata.o
>   arm64: vdso: disable LTO
>   KVM: arm64: disable LTO for the nVHE directory
>   arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
>   arm64: allow LTO_CLANG and THINLTO to be selected
>   x86/asm: annotate indirect jumps
>   x86, vdso: disable LTO only for vDSO
>   x86, cpu: disable LTO for cpu.c
>   x86, build: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                                    |   1 +
>  Makefile                                      |  68 +++--
>  arch/Kconfig                                  |  74 +++++
>  arch/arm/Makefile                             |   4 -
>  .../module.lds => include/asm/module.lds.h}   |   2 +
>  arch/arm64/Kconfig                            |   4 +
>  arch/arm64/Makefile                           |   4 -
>  .../module.lds => include/asm/module.lds.h}   |   2 +
>  arch/arm64/kernel/vdso/Makefile               |   4 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile              |   4 +-
>  arch/ia64/Makefile                            |   1 -
>  .../{module.lds => include/asm/module.lds.h}  |   0
>  arch/m68k/Makefile                            |   1 -
>  .../module.lds => include/asm/module.lds.h}   |   0
>  arch/powerpc/Makefile                         |   1 -
>  .../module.lds => include/asm/module.lds.h}   |   0
>  arch/riscv/Makefile                           |   3 -
>  .../module.lds => include/asm/module.lds.h}   |   3 +-
>  arch/sparc/vdso/Makefile                      |   2 -
>  arch/um/include/asm/Kbuild                    |   1 +
>  arch/x86/Kconfig                              |   3 +
>  arch/x86/Makefile                             |   5 +
>  arch/x86/entry/vdso/Makefile                  |   5 +-
>  arch/x86/kernel/acpi/wakeup_64.S              |   2 +
>  arch/x86/platform/pvh/head.S                  |   2 +
>  arch/x86/power/Makefile                       |   4 +
>  arch/x86/power/hibernate_asm_64.S             |   3 +
>  drivers/firmware/efi/libstub/Makefile         |   2 +
>  drivers/misc/lkdtm/Makefile                   |   1 +
>  include/asm-generic/Kbuild                    |   1 +
>  include/asm-generic/module.lds.h              |  10 +
>  include/asm-generic/vmlinux.lds.h             |  11 +-
>  include/linux/init.h                          |  79 ++++-
>  include/linux/pci.h                           |  19 +-
>  kernel/Makefile                               |   3 -
>  kernel/trace/Kconfig                          |  29 ++
>  scripts/.gitignore                            |   1 +
>  scripts/Makefile                              |   3 +
>  scripts/Makefile.build                        |  69 +++--
>  scripts/Makefile.lib                          |  17 +-
>  scripts/Makefile.modfinal                     |  29 +-
>  scripts/Makefile.modpost                      |  25 +-
>  scripts/generate_initcall_order.pl            | 270 ++++++++++++++++++
>  scripts/link-vmlinux.sh                       |  98 ++++++-
>  scripts/mod/Makefile                          |   1 +
>  scripts/mod/modpost.c                         |  16 +-
>  scripts/mod/modpost.h                         |   9 +
>  scripts/mod/sumversion.c                      |   6 +-
>  scripts/{module-common.lds => module.lds.S}   |  31 ++
>  scripts/package/builddeb                      |   2 +-
>  tools/objtool/builtin-check.c                 |  10 +-
>  tools/objtool/check.c                         |  84 +++++-
>  tools/objtool/include/objtool/builtin.h       |   2 +-
>  tools/objtool/include/objtool/check.h         |   1 +
>  tools/objtool/include/objtool/objtool.h       |   1 +
>  tools/objtool/objtool.c                       |   1 +
>  56 files changed, 903 insertions(+), 131 deletions(-)
>  rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
>  rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
>  rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
>  rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
>  rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
>  rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
>  create mode 100644 include/asm-generic/module.lds.h
>  create mode 100755 scripts/generate_initcall_order.pl
>  rename scripts/{module-common.lds => module.lds.S} (59%)
>
>
> base-commit: 80396d76da65fc8b82581c0260c25a6aa0a495a3
> --
> 2.28.0.1011.ga647a8990f-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-1-samitolvanen%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVWdRWfhPhPy79Hpjmqbfw%2Bn8xsgMKv_RU%2Bhoh1bphXdg%40mail.gmail.com.
