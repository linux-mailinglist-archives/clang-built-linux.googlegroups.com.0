Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5GM5H5AKGQECUGLNAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB20264BB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 19:46:29 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id s68sf1993561vss.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 10:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599759988; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tq2BRWuXkZsALLTTnZZVSht2i03SnRIg6AVxtPz9MULzua4QyCLF2hSxB1SYdeRiJj
         wipyo7uKtqdrq5SwJjFU2UNOfcT4T58iTqTZmvSUF9yY1ot2t3d1U/Ayyus8LvF1Z+1A
         iW3/aq8W/tSv1ua0Z9agFmuwwZZByIFgvVRXwvXr6AB6/fT7KO7GIvKkawhxq5/uvpUL
         mi6m6TgmZzSQPKBxevDlIapatGJWC3/0ZawUu/x5rNLI0QQLIu1OgxqNk1LHuBVUfGYl
         Hb1EAj5gDO9PfKuL2YZfEE9n9SYMQA9tGgikYEzNcA/JryttECiHLqF6mSjcloGib4iv
         mvkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LRxebhAXeUrWcQgGlrQfYTH+jwIPwZkJi+NRF2rorVA=;
        b=nj1NocmsXR6P07vmF3lB64uk+s657UX3g7PlvSiX74R41tRScwDUnLXtuCSGJzvuvg
         Cwj1gtJN6rdQ6LbAoaL3rHKovt8k0Kpqbqhnh7A7UslUuKk5H4Rbq0udmuFhu712kyVp
         zBm+W0urqhRvQjAgQ+x9c5M2LH2oh/rhC1Mlc9i/9qlFULs97fbWIG5f0BJdg3ATeXkr
         J05r4j+0CIEK4UzIgXg8I1DmuyBzx6I3q8hp95QeBtRKyF4zW8ao8UV8QyRyXMaeIdB+
         C4IZfdh3MLM81aBvncYfxsI0I+SPTj2oH5Y4EKVetU3RfQnkPe2RekmACGpg5rvwloNN
         Q/2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqzAkTQ4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRxebhAXeUrWcQgGlrQfYTH+jwIPwZkJi+NRF2rorVA=;
        b=gI8CAEhKLSlA9iwOA9EPmc5AT1pQm+4a0p8u4KzDmSQH4Ju18902UIR4Qe6WiyHVnR
         gsKQVe6CImJ5Zfxgg5Adan5BUzuWsAeZcyQgRzkn8H6JTApn6/nz2XFu87LRYG5NjKzu
         +CXvW8eGe+I1+RCZlf9pGQiiXYuj+D52x6c2yETHGW2J+NPcYO0KcPLrQUKHNoEx/HrX
         wM7B9vhclMFAFm4A8Pds2ovLW8a8RFs4xyUv9uGUxdJrUPcWB07Fls1syYb29dL8m0Mv
         YnsHGg7Geah2Tu8bA9ViX9il2TkRwQuVSj5t3WteKmsARwf4dS/FW7h9hgsVmArSMn7N
         vNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRxebhAXeUrWcQgGlrQfYTH+jwIPwZkJi+NRF2rorVA=;
        b=uneu0cgFxt1qeJklUNDDTgkFloRTYf0i1ilFMYeeKh8gy3SPb8ojqRA9bVlyFbvOxg
         GgSrDGk+RLot+jI3NNzN74v5xl55cqc5ot6b1512XXduwFroU/Y3IKTY30rwv3jtQ+Rp
         vXX/VDyual+G0ZuuNR884ywAte5vJkvRkazrv4+/BG2bYRGLVEw1znFtQKvYnlVebxoE
         xUDsvs0FxraUQSuBtVytIoJ1Cx+HbT37urIM0RU+V6f+PIMyeNJKh/XfvQ4kGkIMPYx3
         JwTFJytln047TrvRo+k6vuNFydBQ2YoZreAUxJKC95vM6v5hmu34a9CKfEmz9kmid1Tv
         8vRA==
X-Gm-Message-State: AOAM533FVZUVk0de+piw0CMxXFpH+gDAYwQjwQnSbfHD3Ic5suGBeHc4
	7Gi7a+QoaNv6qKvwRqLdd0Y=
X-Google-Smtp-Source: ABdhPJy3YZW6DwasOXxuCz6WVjM3wmjFPnODYoAGjo8gu52vaebzkcbNKnlJXJMgIx/k+LQJCwlvCw==
X-Received: by 2002:a67:cb97:: with SMTP id h23mr5052261vsl.43.1599759988644;
        Thu, 10 Sep 2020 10:46:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1f6:: with SMTP id 109ls542691ual.2.gmail; Thu, 10 Sep
 2020 10:46:28 -0700 (PDT)
X-Received: by 2002:ab0:130a:: with SMTP id g10mr4859948uae.100.1599759987991;
        Thu, 10 Sep 2020 10:46:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599759987; cv=none;
        d=google.com; s=arc-20160816;
        b=XClaEA2Lom2j4lUxLgS1jmp6vy5+kq0MX9/RsF0lzLrwB1a0pnoaP+aWiNkbF1x7Mv
         7PSFlaBsa3VF05PHkDh4+H6nWZzuC0SJAUhIE1206baObGfs4DYOgQFwR6OcCiWTfSBZ
         FP8tOlTxC34VN1ryi3MZ9LSOqfeMvLUF0p9kMd0B7FzzLh7BLFdxquadrGwQ/c0pDJR8
         oT6A5zm22ENxG7vpqA39c/pA9xvW+tzkxsJ0+wFTZ+oIfjiHrOcCo+KWfmfg8pg7s7XF
         zqRWJXtTjJv32bXj6QfOMgGmI6NaL7qMZEqhy2Zj7sBz3YKuVyjAFDWbUdtAl69bTxgB
         oiSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O7GfQG+sKNUFe8kKRZiVLdxc1h3BX3Djc8swi3u8Dlg=;
        b=QFo/AlIwUodP01z5vjWKmZqxaTFrJ6HVz3DB/fM6uyf/uh5yrP3ymF2HgKnhqWDCGY
         RVwWxDkSlEN2jzDOJxwXuM3+OeCxbXJmnoJUV3pDTWZCIeVEEdw1soJoZEQ3ptL7OtSa
         CavVUNj96jk0MLCOPjb/9N+CW1PKJRexLmuU4qSaSP4IdgkayWPfMUqsJuZCSbfvo/dU
         jM6QE8Nm0v0VC7WOpDHLlEy5ACTA22GEr4yk8CyS2ZyJwsiElN4QfEarD6Mx+zXaQKKS
         gZICPowtKjYy4YVARkfQxXEUleeXagEhLE7YR6uEjXnPicXZcEImbEaw3EAQMB9E77uB
         oX8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqzAkTQ4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y65si511058vkf.1.2020.09.10.10.46.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 10:46:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id x18so1285112pll.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:46:27 -0700 (PDT)
X-Received: by 2002:a17:902:d88e:b029:d0:89f4:6222 with SMTP id
 b14-20020a170902d88eb02900d089f46222mr6538920plz.10.1599759986870; Thu, 10
 Sep 2020 10:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Sep 2020 10:46:15 -0700
Message-ID: <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: ian.bearman@microsoft.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vqzAkTQ4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

Hey Ian,
It was nice to meet you at Linux plumbers.  You might want to take a
look at this series.  It implements builds of the Linux kernel with
LTO.  It would be good to get eyes on it and help review it from folks
working on this from the GCC angle.  The series has some configs that
split where Clang specific changes need to be made; it might be of
interest to think about what would the similar changes be needed for
GCC.  Also, congrats on your LWN article!
https://lwn.net/Articles/830300/

On Thu, Sep 3, 2020 at 1:30 PM Sami Tolvanen <samitolvanen@google.com> wrote:
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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6%3DbSn4-AbRyd-5oYGJVNSw%40mail.gmail.com.
