Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBD7FY75AKGQE5YA7ZDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A8E25D301
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 09:53:52 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id k26sf3221757pgf.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 00:53:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599206031; cv=pass;
        d=google.com; s=arc-20160816;
        b=1FnVoT5OHvVwEoZCCkPoTsh2gNLBKifZSlzXoNcOC7Cp/Fhd/kL75Qnl7DEKtk28NJ
         xStpSI8zNUb69kDo+RosKpTwUl9U1x0z9Qg/0d7dlc4Jpjud6c2cVtJZT4gnrRir5LhN
         NcoLGYdxYGMLzqNS1tiJ4Rq9blo6f3p8VAlPkm7jYZVZcoPX1Rz76jOCUrdAXekaiO+v
         aAtJS6xkxLYQJrkJ1ziIIGFCeHeFOcoLUb1KJfPnlpvAM3m2lNbHfNyaufe3sidFFaE4
         A/JW5dNf9xtEq9ofzKp3eo/xlm8ct5j+6AiM9/XXlWtE9Tvu7rDY12PPxWSmcejWOplr
         abcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2AD0z+10Ofr9qllys1r0qT+KPrBYhEhtnDECwppWqQ8=;
        b=XeKx/3guqVsuIJbwDOOybrL2377ckZJoGworvJQjAwtmgEYIfKUp0hp5bsQny9KXfJ
         +yc4xT1xYP6GpXgdcyN9HAECiw1Q1l7NA0XxmkDMAh4ObQuwMr6JhzhuXJKeccp4lo/V
         NI2tsYvFjeI1QBkNV6sXVzMCD0GQqAFHXSbnuek0yPiGQnd2oQNBKgh8OqKYRcVDQ0Wd
         vK2e7ZzlmFVwwu+dLfOqUEpOGDZDO3Tqz+apqrXoncg09FChvRH/H3PP4bo9I07Rxflr
         lN/r2L5JbhsTrwLJUkJpilqPffFVuc/qyayEQhOrYY2wIG6T4HEzXHHUjqfyj6BnE/9/
         ULXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nq2T1guw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2AD0z+10Ofr9qllys1r0qT+KPrBYhEhtnDECwppWqQ8=;
        b=ikNp/SyrzgLh1WuBWJ9r/dUrYZbpKWPgIIytGr5HjpL6yuj22QAiE9jum6nCdDfVmu
         cDTisU5b0O4o26wd7/n5Jpk/MqzR9V8VvpNelW5Ewm7u3d2L35xVvspWQTxFheXfhAFt
         ebxWG9/LJI2Vsy1VN+dwzPdMKz9thJ6g9c5Rt7VgjG0XqsslDkG2dPQ+SdzZtfW01p7B
         sxpqOYQg5zWtwUBKKJWIZsrIPVp3RxFd6cmeuU9xCUY6+qchhnqFSEWL6luDUCBzqAO7
         9TUbbjBAjDaLLlo2955X4xyeaKKlqJ4ulQCVbtRNDTKw7RDwm9onAtLeor64ddwOXVbr
         P3pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AD0z+10Ofr9qllys1r0qT+KPrBYhEhtnDECwppWqQ8=;
        b=gth0Kxl7JU7/jBADu99IKqZYGHMzftLjxXQcfFq5xgTRN+dwvdRaByKsY6lApXzP6Z
         XmJ3W6ZBD4Ti9vZksZNIZ/sAc6GWYGl4nnlQV+yzQODKbWseS+qNto0Szgb/sF/QsSKL
         XvT9gh5tT7hOGcLhM0RVd4CvPZkp2iurf3Yg+tUk87ZLpZQ9jUCJRLREIQUMcE8m/V0P
         isoMT8VJ+XsirLDPgK/ebnUaguvt0PiBKp+uxSTXWxcHnpYKyDRatHeU5rAphoPT31xJ
         W6+qTvqc4TolIFaFLc4TuXHk2TdbB9JRdzXmyEd7JJOsP+TnwgRjxbxUBnHYXdjKsG7S
         CPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AD0z+10Ofr9qllys1r0qT+KPrBYhEhtnDECwppWqQ8=;
        b=SS2xTSiuKCmrUrY0cRcnCfEOS3hNUy1JFe1qxwa5zpriaez5dhmbfieTaQKRqqWZjT
         FKObCQh3/bBfmFS4LQwxxEgLki5BUoP0a5swvcfD6ual5E3mQNSYwx9ruBo/cCfMrtH6
         wm0rMXecs84HFHAFmV9zQ81qwxL29kHb8rjheOgT7dn5bABMAkoe4J6azAJyufv1U5R7
         aOJGk5eQ4Vf5I4o3JXUFz+3xMed8fFnmFV8dnWoZkKnQGzs5W/JyNv7YGfo6s7H+NGfi
         ji9M98oS/4GsaGIq+KrdP1FMVpyUvZ0DUGAcd1D/gyT+W4gf7iQN7wg4YERXJZlV8Tsm
         UBfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314+jzO9231eoKTVpOuGYguDKDgHZBEk4fkdpuuCrUIYpjRPOjH
	voVPNKbudsY96hu1t/i88vI=
X-Google-Smtp-Source: ABdhPJyLaqouFh0sO6T3sJxlLCW9YvFcSO4FIvezwNYVwr/QK0K2qjtBcE3LuLlPMmNssx8NvnPypQ==
X-Received: by 2002:a17:902:c086:: with SMTP id j6mr7628108pld.230.1599206031371;
        Fri, 04 Sep 2020 00:53:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:681:: with SMTP id 123ls2655761pgg.2.gmail; Fri, 04 Sep
 2020 00:53:50 -0700 (PDT)
X-Received: by 2002:a62:38ce:: with SMTP id f197mr7602716pfa.145.1599206030739;
        Fri, 04 Sep 2020 00:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599206030; cv=none;
        d=google.com; s=arc-20160816;
        b=YyqnXuPuDnWB0MXRQ+nWmY0BOSy9+NSYjbVxjJZw/69Znwq1cPMpJTkylB2G8L1QDz
         8lnlrP9sB/pFsY9Msb/YZ3mAmSYKJjDWwpydPEbbbnT51lwNtqXH2QV1bKrzVTK5Kv8Z
         GpldZyJCt4mCKv034htu6YLGWod3tN9ipIKzddCE+KaiCcnKzS3lPdb7Bmqz9G376s7C
         uHGM1m8/NqOvxw0JpAuT6QPNP/QxNtdkzLav9OfyxWKMvwbpHTwimNFfGkE2juoknfE4
         RrfbNJNlKX7EiYC5v+WFgZGhNrRZLFZHlWZTOmqHxC+udMbEsF+TbunalvF1gdv8gqQP
         Gb4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ocqyzNbaVOZzIdeNzDcK80VX4YtlWAaQQv8brVA+uok=;
        b=INbhyyWV4E2dM2iQfSlbXHlFOL3SgbLr590rmOhFJXeB8xfNNvpP8X1YEqnTNKwYSM
         DcR53jOAZ2hG2JXb+DEPgHMmTHKMoQre6YcbDraQ+TPoN4FYXOOLsvrBG06mdrb1idmo
         o1dlRwEiL8X8z1gwPy0hggbzK1aZDrMRnbzDIjJiUysSB0RrqN8hN7x9TYp+drirkT8d
         POCeFPpXrhbAbFkyhzNiU/N3WL5xISejbVGi9vdfcp4Lob92meuOHARprRnVFCZKzjHA
         Xrs1bbUqrmxJU+JO/O8gfPQO1veMYZbS5G9b9Go5XxoMFKa4ddGGM+F0HGimEsH2bjmr
         e4nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nq2T1guw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v62si304078pgv.0.2020.09.04.00.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id m12so2143486otr.0
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 00:53:50 -0700 (PDT)
X-Received: by 2002:a9d:7656:: with SMTP id o22mr4302332otl.109.1599206029992;
 Fri, 04 Sep 2020 00:53:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 4 Sep 2020 09:53:38 +0200
Message-ID: <CA+icZUW_=L5n4gAPV_sL+TaLJ0SMZOWHSNOpWD9M3fSLDCv_kw@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nq2T1guw;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
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

On Thu, Sep 3, 2020 at 10:30 PM 'Sami Tolvanen' via Clang Built Linux
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
> Note that patches 1-4 are not directly related to LTO, but are
> needed to compile LTO kernels with ToT Clang, so I'm including them
> in the series for your convenience:
>
>  - Patches 1-3 are required for building the kernel with ToT Clang,
>    and IAS, and patch 4 is needed to build allmodconfig with LTO.
>
>  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
>

I jumped to Sami's clang-cfi Git tree which includes clang-lto v2.

My LLVM toolchain is version 11.0.0.0-rc2+ more precisely git
97ac9e82002d6b12831ca2c78f739cca65a4fa05.

If this is OK, feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

[1] https://github.com/samitolvanen/linux/commits/clang-cfi

> ---
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
> Arvind Sankar (2):
>   x86/boot/compressed: Disable relocation relaxation
>   x86/asm: Replace __force_order with memory clobber
>
> Luca Stefani (1):
>   RAS/CEC: Fix cec_init() prototype
>
> Nick Desaulniers (1):
>   lib/string.c: implement stpcpy
>
> Peter Zijlstra (1):
>   objtool: Add a pass for generating __mcount_loc
>
> Sami Tolvanen (23):
>   objtool: Don't autodetect vmlinux.o
>   kbuild: add support for objtool mcount
>   x86, build: use objtool mcount
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
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
>   arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
>   arm64: vdso: disable LTO
>   KVM: arm64: disable LTO for the nVHE directory
>   arm64: allow LTO_CLANG and THINLTO to be selected
>   x86, vdso: disable LTO only for vDSO
>   x86, relocs: Ignore L4_PAGE_OFFSET relocations
>   x86, build: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                            |   1 +
>  Makefile                              |  65 ++++++-
>  arch/Kconfig                          |  67 +++++++
>  arch/arm64/Kconfig                    |   2 +
>  arch/arm64/Makefile                   |   1 +
>  arch/arm64/kernel/vdso/Makefile       |   4 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
>  arch/x86/Kconfig                      |   3 +
>  arch/x86/Makefile                     |   5 +
>  arch/x86/boot/compressed/Makefile     |   2 +
>  arch/x86/boot/compressed/pgtable_64.c |   9 -
>  arch/x86/entry/vdso/Makefile          |   5 +-
>  arch/x86/include/asm/special_insns.h  |  28 +--
>  arch/x86/kernel/cpu/common.c          |   4 +-
>  arch/x86/tools/relocs.c               |   1 +
>  drivers/firmware/efi/libstub/Makefile |   2 +
>  drivers/misc/lkdtm/Makefile           |   1 +
>  drivers/ras/cec.c                     |   9 +-
>  include/asm-generic/vmlinux.lds.h     |  11 +-
>  include/linux/init.h                  |  79 +++++++-
>  include/linux/pci.h                   |  19 +-
>  kernel/trace/Kconfig                  |   5 +
>  lib/string.c                          |  24 +++
>  scripts/Makefile.build                |  55 +++++-
>  scripts/Makefile.lib                  |   6 +-
>  scripts/Makefile.modfinal             |  31 ++-
>  scripts/Makefile.modpost              |  26 ++-
>  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh               |  94 ++++++++-
>  scripts/mod/Makefile                  |   1 +
>  scripts/mod/modpost.c                 |  16 +-
>  scripts/mod/modpost.h                 |   9 +
>  scripts/mod/sumversion.c              |   6 +-
>  scripts/module-lto.lds                |  26 +++
>  tools/objtool/builtin-check.c         |  13 +-
>  tools/objtool/builtin.h               |   2 +-
>  tools/objtool/check.c                 |  83 ++++++++
>  tools/objtool/check.h                 |   1 +
>  tools/objtool/objtool.h               |   1 +
>  39 files changed, 883 insertions(+), 108 deletions(-)
>  create mode 100755 scripts/generate_initcall_order.pl
>  create mode 100644 scripts/module-lto.lds
>
>
> base-commit: e28f0104343d0c132fa37f479870c9e43355fee4
> --
> 2.28.0.402.g5ffc5be6b7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-1-samitolvanen%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW_%3DL5n4gAPV_sL%2BTaLJ0SMZOWHSNOpWD9M3fSLDCv_kw%40mail.gmail.com.
