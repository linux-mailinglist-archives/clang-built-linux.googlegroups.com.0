Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIVOST5QKGQEJVTD5PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E52706E6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:23:00 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p24sf3982425plq.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460578; cv=pass;
        d=google.com; s=arc-20160816;
        b=o3PZ1IBDN1OdbjEvHW9x3M44Shw33TN7QpJFuNs/sGDQz4t2S7jaQZE93uOG6jE3qo
         q0LzwOIOfMjaDyhNoqVrkTx6DWfJzzKemmiWQgxyykYKsSyJFRgk0WG6cGs38Lf6o1i1
         Fkt6WsERjqKdBMxw6CINKzA3cd4WbVMFGJdbQSOOH5Jl9yW4S8rtDEL+76AAfzJo+wD8
         Uc/LluKCll8nWwP4wsovMF09QPNrPpL/FvwgW68381nRdaC97dWJpL6JHfR6w0/+IaOb
         o4rg9zACU/mDMWvosBLS84JNeqhtrDmOa/6BKvlxVx5R5xsAkSyE4uCzOcCIpFRNAnFf
         pK7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ilGOf4hrfPONY6W4jWnx8+wA5JY34JLv6QEHiTHvIsI=;
        b=P9680v89vtlCXbJ1iZq26m6hV18G+Nwmm72a2pu2KO30KexT9A47aKDLlqYww7A0tr
         9Nc4BBpnfRtHd4g3cPqV6o2XFvvp1oZPHoCPniyzzvVWOqIsGU+9dhTaNe4KacCcAWsb
         RLhI2m+TWbQjw/Z80i/wDh/UZmbArlYtiw8XBfExvPt4laUe9GEtkV89gjOisQ/Qn3R5
         mF0Y3l2+9OmFvJl5V3GO2ZHoH2EsyUOusmSIYWFtFyXu6iOf0hlSW27jPeYkfBjUCPuk
         hqWZB6aDrYH2c4d8l/3Q9e69/VcxY/fbF0kVhuVFc71DNgn8U8+p7KsY+qQRcPVka3qh
         8BpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QAjG/sl8";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ilGOf4hrfPONY6W4jWnx8+wA5JY34JLv6QEHiTHvIsI=;
        b=AwReuEW8cYD64JLDrVqGVBuTMND0D6JVIpWnTPsBNlA5BLKwPNKVa+JLrQpr5x31Ix
         x4MOBlJFXhQxVA6aqpA79Y5QffqW7auXc9V6D2W3Dl5y36juHrLncfDK1esRmnTS15qL
         xcj088UasLYFLnPocGzcN5WyXUJ0jwTTlcLyy86a9KhOhH9UdfS1of6M9vEv+3Aabnzy
         Gtwz4QvCXaXx3Wrr2m72mLnOBGOEvrx04trChUMHZ4gVhX9TBaG3rxTuRfK525GjRSAN
         +iLMdmmmUkxmwhFJbrle/RHT/CgBoQ9CAzp0IsCKeDVUiVhviWTGa2MOluhZ+ADKwDrb
         S6cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ilGOf4hrfPONY6W4jWnx8+wA5JY34JLv6QEHiTHvIsI=;
        b=nh5FraBzGA65mZkWlAL2y3CkrjTPSZE60PReiu5pbOcVhUzgKzNlgeOEU3q8RmbbuO
         qefqLWlVZp+IMZqzAbjH68b7Y/9nEjiPfQDzK7lw/tQhKUGJ+kzf1jGJNn3juQVq16Kr
         /Tt6LXcBSDu7uCAXxQou16Qi1LZTWHel5dXBgtBWZMLoclpordl6W8fN2wd/NTZkzsve
         P3M1Ur+e/HQKP/WmZ4TaiD8aRqooYQPYiKpkurgAV1bYIwob1kpeWftMg3ZvOEJ6ATc9
         hr5PRWhBVpB1guM1SNrKvEIixf1JY7rEqcU6odoqhnNPImthvvUughqVlAb5ZZE+vjBC
         APNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ilGOf4hrfPONY6W4jWnx8+wA5JY34JLv6QEHiTHvIsI=;
        b=maR29CIu9OTOhD8YnRcxE/aEBHvg6UOc7oWFi/fmXCM3dJUc2/4q70Pyh0pjg7QPYs
         Ln0/TGwpMMNBlfj/HVHodt3fYM6l2nCNvdzZTIYSkzGWEbfNZpIi63peUbHTjHIIY8cx
         Fyje2LVJ3w8WDY7cy3TiNf6uYiCO9u1kU7oO2nNTRQ0hW0r384ov+pDRolyJxhY1KFjv
         kgPN9yfW3wgMlJ1nX7QEx2T6CYiqdiSXsIZLonjtvaXoHeKS2HlWW2i5MqXOHdZ/LYs2
         F9Jb6GHg+oQgUA4kLC3DbbPsRl0FbhmvJfr15s0gsWmZInThGuUL9C6VHiuR+xIQb87Q
         FrGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321RIQSr4nvBj9AcUKvBvkOBn8dhb6AfzhJd7uNIy2U0SEUl1eA
	cby1AgpYWpLA7cW3dOS09jE=
X-Google-Smtp-Source: ABdhPJwvmCu7yQipCHIibruAPJhzVTO7ONzg8SyJ9w18klRcBYVOcKTPtj4MrbRif5O36/mGN2cUFw==
X-Received: by 2002:a63:4a0a:: with SMTP id x10mr23807640pga.21.1600460578732;
        Fri, 18 Sep 2020 13:22:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:79c6:: with SMTP id u189ls2383964pgc.9.gmail; Fri, 18
 Sep 2020 13:22:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:15c1:b029:13e:d13d:a0ff with SMTP id o1-20020a056a0015c1b029013ed13da0ffmr32828928pfu.27.1600460578105;
        Fri, 18 Sep 2020 13:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460578; cv=none;
        d=google.com; s=arc-20160816;
        b=yT+AUO9PcLYASDu+hNQ7mbkQ9oRGariNwEVtrzZYDn71VJi7dskxWs76IUsaSWSe1Z
         7l9Z4I8Cgsr8cqAMMX64VwJnbotjvMwL/1V9gERN88l1/vh2sGlkkbWLOR0XqlLRo1p7
         MVK/f1f5292Nimc1kM24/d7348CBPOjPTrH0jT8xz7NndtOKdQrJNuSZrkPGSbsvaTej
         Bzl+gq9nwcLfUzVMS+/0cLc9XnIrKyKgEC30T7hT8I9O7Bc9VMXZITmkeD1sNw92AM8S
         +TC9lJsa6o2NL3Byh+0fgS2Wp+l9OROs/B7EPRCDIefHkpGXT6AF8lMfNHJeyEBYP5+9
         PljA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=doA4ol07JEk8RvmCDvE+88F3JtPRfseL2+6tdCDWQqw=;
        b=ESZ/W6GY+vEmIqBHZ8HNh66XcD9fQfnk5qKhhM7gPr/BDEyaM9/1b1mBn1QKgGhZix
         Nq5Do46ZLQbh+QcgQREfNjdITOmlZ/7ncEl79Ih/Iw6zKvmqlIZMGTNG+tyDN+INMZJO
         F/ufpRcIibyhDOzredFRUpQ9xaLlzd5IRXfIwKO/RsY/J5ohXunkbEcG/sNEdMwqMQNe
         iEif7ijC1a1UGzd4aq4A24xQ5V4Sx5JdrMcz2Qahi5iwWJvd5wmB+VxX3otc3xTz3Ub1
         ounAHB3soI2seKOipOKpASKWCBCD3AxixA8Ef3XbZPw7iOyJKPUzV7yicCLRBgg+SLtr
         RS0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QAjG/sl8";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id t16si384399pgu.1.2020.09.18.13.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id z26so8482072oih.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:22:58 -0700 (PDT)
X-Received: by 2002:aca:4754:: with SMTP id u81mr10252669oia.72.1600460577384;
 Fri, 18 Sep 2020 13:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 18 Sep 2020 22:22:46 +0200
Message-ID: <CA+icZUW1MYSUz8jwOaVpi6ib1dyCv1VmG5priw6TTzXGSh_8Gg@mail.gmail.com>
Subject: Re: [PATCH v3 00/30] Add support for Clang LTO
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
 header.i=@gmail.com header.s=20161025 header.b="QAjG/sl8";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243
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

On Fri, Sep 18, 2020 at 10:14 PM 'Sami Tolvanen' via Clang Built Linux
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
> Note that patches 1-5 are not directly related to LTO, but are
> needed to compile LTO kernels with ToT Clang, so I'm including them
> in the series for your convenience:
>
>  - Patches 1-3 fix build issues with LLVM and they are already in
>    linux-next.
>
>  - Patch 4 fixes x86 builds with LLVM IAS, but it hasn't yet been
>    picked up by maintainers.
>
>  - Patch 5 is from Masahiro's kbuild tree and makes the LTO linker
>    script changes much cleaner.
>

Hi Sami,

might be good to point to your GitHub tree and corresponding
release-tag for easy fetching.

Thanks.

Regards,
- Sedat -


> ---
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
> Arvind Sankar (2):
>   x86/boot/compressed: Disable relocation relaxation
>   x86/asm: Replace __force_order with memory clobber
>
> Luca Stefani (1):
>   RAS/CEC: Fix cec_init() prototype
>
> Masahiro Yamada (1):
>   kbuild: preprocess module linker script
>
> Nick Desaulniers (1):
>   lib/string.c: implement stpcpy
>
> Peter Zijlstra (1):
>   objtool: Add a pass for generating __mcount_loc
>
> Sami Tolvanen (24):
>   objtool: Don't autodetect vmlinux.o
>   kbuild: add support for objtool mcount
>   x86, build: use objtool mcount
>   treewide: remove DISABLE_LTO
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
>   x86, cpu: disable LTO for cpu.c
>   x86, build: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                                    |   1 +
>  Makefile                                      |  74 ++++-
>  arch/Kconfig                                  |  68 +++++
>  arch/arm/Makefile                             |   4 -
>  .../module.lds => include/asm/module.lds.h}   |   2 +
>  arch/arm64/Kconfig                            |   2 +
>  arch/arm64/Makefile                           |   5 +-
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
>  arch/x86/boot/compressed/Makefile             |   2 +
>  arch/x86/boot/compressed/pgtable_64.c         |   9 -
>  arch/x86/entry/vdso/Makefile                  |   5 +-
>  arch/x86/include/asm/special_insns.h          |  28 +-
>  arch/x86/kernel/cpu/common.c                  |   4 +-
>  arch/x86/power/Makefile                       |   4 +
>  drivers/firmware/efi/libstub/Makefile         |   2 +
>  drivers/misc/lkdtm/Makefile                   |   1 +
>  drivers/ras/cec.c                             |   9 +-
>  include/asm-generic/Kbuild                    |   1 +
>  include/asm-generic/module.lds.h              |  10 +
>  include/asm-generic/vmlinux.lds.h             |  11 +-
>  include/linux/init.h                          |  79 ++++-
>  include/linux/pci.h                           |  19 +-
>  kernel/Makefile                               |   3 -
>  kernel/trace/Kconfig                          |   5 +
>  lib/string.c                                  |  24 ++
>  scripts/.gitignore                            |   1 +
>  scripts/Makefile                              |   3 +
>  scripts/Makefile.build                        |  69 +++--
>  scripts/Makefile.lib                          |  17 +-
>  scripts/Makefile.modfinal                     |  29 +-
>  scripts/Makefile.modpost                      |  22 +-
>  scripts/generate_initcall_order.pl            | 270 ++++++++++++++++++
>  scripts/link-vmlinux.sh                       |  95 +++++-
>  scripts/mod/Makefile                          |   1 +
>  scripts/mod/modpost.c                         |  16 +-
>  scripts/mod/modpost.h                         |   9 +
>  scripts/mod/sumversion.c                      |   6 +-
>  scripts/{module-common.lds => module.lds.S}   |  31 ++
>  scripts/package/builddeb                      |   2 +-
>  tools/objtool/builtin-check.c                 |  13 +-
>  tools/objtool/builtin.h                       |   2 +-
>  tools/objtool/check.c                         |  83 ++++++
>  tools/objtool/check.h                         |   1 +
>  tools/objtool/objtool.h                       |   1 +
>  58 files changed, 919 insertions(+), 154 deletions(-)
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
> base-commit: 92ab97adeefccf375de7ebaad9d5b75d4125fe8b
> --
> 2.28.0.681.g6f77f65b4e-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-1-samitolvanen%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW1MYSUz8jwOaVpi6ib1dyCv1VmG5priw6TTzXGSh_8Gg%40mail.gmail.com.
