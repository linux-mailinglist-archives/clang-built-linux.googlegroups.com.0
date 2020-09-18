Return-Path: <clang-built-linux+bncBC2ORX645YPRBL5KST5QKGQECFFZ2XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE28270616
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:41 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id h23sf3173349oof.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460080; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDd7RZxxUx7+gKa47N8h8dLBD70xLW2jBBOtmiJ63OLw46FWbvdiq+Ice5YJEU6m+4
         8qhA08ySIGFc+PQw0+4TI4fh9+swSVjJOTAYmpVoCaa0kNZvs7JYVCGSE6MRd1ic+i+K
         CTqh+zUyHnRu+5pIHZKpfDpDzFq9jFQTeKv8M8onjfdOyBEv1Gyb3DmXTKm4Rvh4vT8n
         QzYDYifp/Ywp1fL60eFMc4wcQBEr/210nNv7d4Cs5ORE+B3KCgI+sfhCR4pqcpv9upum
         EkjztajJggcWhISPWASphWKVeJWPuOMZ9Juyb7iDfm+7EHh4gDWJ8+thPli7iELNxY8j
         x9Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=9dmhIooKiB+SM7xow04CixOfSj0WcC3YUjEM9kDWiV8=;
        b=JuHcLWkWwH4BgbEFOKS3an5hMLDl+0TgMOU652iwC3b1vwRTcWUhenpD2P3Nk46XhU
         Wvqn0BtvD1nbfFcBd5ajQ8hNvBtB2CF0lxN4/airbxZJ79kN0q11DQMSvRNfLXpyo++o
         U2LUle6lBhBrk+1YTDJT0L52ygtuwc8ySG/ndSoqbXHujL8Xx+W64rQV7cHgJ8fcKvID
         OlXc/FvJlBKP/SGVpIBXAwSf9VGJBeehYlbR6z9o6hnT1ZL/EBqTtpvfb55sSAQk+Dnj
         DK+D1rRWgBFzkSgZsygnyd5SyfNnJP+O95j9PjVnscgo5F8nfQFTIYbdlkbbECUQ98mN
         UCQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PXIGbZNr;
       spf=pass (google.com: domain of 3lhvlxwwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LhVlXwwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9dmhIooKiB+SM7xow04CixOfSj0WcC3YUjEM9kDWiV8=;
        b=MhBpUlTqgf5vpH70b+OYKybkYyZ+yIapUlyGmvqyQz1Z4NtCRDh+u298Zh3/Cvsk/R
         IUTdRgl+Bxb2yhHVR7m8pEKiaIlKHW2ePmlDnJjhp6JKihrYKAOK2iUANwntE8BeeHV+
         TSzgnDIfjc1DQw4dfC24MyGUU8KFGN/z5A+TMMGPYM0ieqHsTpcCxHgf0T1gOqPPwbXV
         Z9UgmMyw9vnbrKrf43Ye7+ar1sPXGrBVkh17GSVfQ+EmLozCNDav4+36uZW/m4BOC/MY
         COABPLmTj+Vzc9qVL6bWwxagVc9wXvhiDhWumkLXgnnu7bRDusLL8gUY9gymrZjU2okQ
         +Kdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dmhIooKiB+SM7xow04CixOfSj0WcC3YUjEM9kDWiV8=;
        b=IYBlU8fko9M4D+zGI9Q4vCG3hgP1k0GW8evhfpX+PeKUSIk+KAw7IW3P/Fxa2F9L7b
         AKHtuk4z5xtK6XHxknAZSVryjKqOje5f+kNhP6UHw7EUYNUZmByzZjr0/AG8qygUVwxD
         +Q9+0ngnWRlCHASy2SbufyuzSjkERkB3AiXji9Ifm65ewH6dDhxhXvr7TR6/iamR5WHW
         sFDSn8kvDd9zthm5616I8M66ghiyDk1yxslM4DC0ra272SRLl0dUusw7kRdirAb83Vl9
         2yldAtadbVJZdJFHooEq7ZKQ0li/0rlG8Hnl05T/Bo94i4wUMcOeIO4OIib7mP20u7px
         1rqA==
X-Gm-Message-State: AOAM5324iNqSsnnH0UhurRVPJhNtYkPoprMk5pl11a22T6RkrRqCr2+a
	/eYNZ2mxLpWWTPYyon07JvE=
X-Google-Smtp-Source: ABdhPJxP5nl6evjoYogAvArr/c6s5ATNXyou2DqDql5Bk+rWvIzSG+i4BnXtRZOBXftS71g+pqLvOA==
X-Received: by 2002:aca:4d91:: with SMTP id a139mr10032635oib.151.1600460079783;
        Fri, 18 Sep 2020 13:14:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls1570263oif.10.gmail; Fri, 18
 Sep 2020 13:14:39 -0700 (PDT)
X-Received: by 2002:a05:6808:914:: with SMTP id w20mr10972998oih.72.1600460079389;
        Fri, 18 Sep 2020 13:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460079; cv=none;
        d=google.com; s=arc-20160816;
        b=XyuJU+UxCVAxpE2wNjeA6TuZ2uxE1VSsyWBF4CukXSjyUUHuX0m20M6c5PdAKvg/mW
         BuWKswCZcbKpVAxBjmRnIq90HQMpu7XzSeR6ixlnJTzGRzm6rqHjeVK+CJMSnX/q0CAb
         Dx8WVdEyI9EkCFkiWerok/O/nwo23IN7X76R3cxKjaP0fDY1r9XyQ7Fj7mcZC4q2+GEn
         8I9BV/8pCl0yBTs1uFNLQ4u3TpH5r/CjxbEAUfZMsQzxrNRdaLDeI0ogGDeAoYLk+/Sx
         iyL6Oj3cFDf/sDmGV79wcogeZP+6ASttcOGG8We8PEL5Gmq/Kwm3am+fg+gXa8RDCIm7
         nbeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=m9GgocfY8+01Ep0T8Ve9tfyfiZGzmhYAiMkUJNd91bc=;
        b=YI9iKAcbguE6C3WSbIWp+/Fy24t1OOjA+1En/srBeT4Db71s0vgmwnnm+YKiO6Un0y
         H4Z9BYwMNB2j9N4/tUUNIB+8yLdxXNwJos3dd/7MQsHysJYmXn+XHy5AKnKSlmSsOA+A
         IF8HscaiVx+LwgM55hX5CAqZ/Yfb+0nQ3Kcr1d7IB8sMgy4rdldetCElJdR9mVTKnR7V
         uTzYaozz4hIWD8Ovol7s9mF/dFhjDOs1QEymhlyLpUnYRyuQX6Je5tWyQa4B6KqTM+vm
         /648aHBirFEjD3AgxhXm+k3uBV0/dfUzt5T1Wfuqtya9JtL53heGMUGCtNKwwM2ZqpYz
         hubg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PXIGbZNr;
       spf=pass (google.com: domain of 3lhvlxwwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LhVlXwwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id l19si385139oih.2.2020.09.18.13.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lhvlxwwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id p13so6766288ybe.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:39 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:652:: with SMTP id
 o18mr17602824ybq.121.1600460078808; Fri, 18 Sep 2020 13:14:38 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:06 -0700
Message-Id: <20200918201436.2932360-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 00/30] Add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PXIGbZNr;       spf=pass
 (google.com: domain of 3lhvlxwwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3LhVlXwwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

This patch series adds support for building x86_64 and arm64 kernels
with Clang's Link Time Optimization (LTO).

In addition to performance, the primary motivation for LTO is
to allow Clang's Control-Flow Integrity (CFI) to be used in the
kernel. Google has shipped millions of Pixel devices running three
major kernel versions with LTO+CFI since 2018.

Most of the patches are build system changes for handling LLVM
bitcode, which Clang produces with LTO instead of ELF object files,
postponing ELF processing until a later stage, and ensuring initcall
ordering.

Note that patches 1-5 are not directly related to LTO, but are
needed to compile LTO kernels with ToT Clang, so I'm including them
in the series for your convenience:

 - Patches 1-3 fix build issues with LLVM and they are already in
   linux-next.

 - Patch 4 fixes x86 builds with LLVM IAS, but it hasn't yet been
   picked up by maintainers.

 - Patch 5 is from Masahiro's kbuild tree and makes the LTO linker
   script changes much cleaner.

---
Changes in v3:

  - Added a separate patch to remove the unused DISABLE_LTO treewide,
    as filtering out CC_FLAGS_LTO instead is preferred.

  - Updated the Kconfig help to explain why LTO is behind a choice
    and disabled by default.

  - Dropped CC_FLAGS_LTO_CLANG, compiler-specific LTO flags are now
    appended directly to CC_FLAGS_LTO.

  - Updated $(AR) flags as KBUILD_ARFLAGS was removed earlier.

  - Fixed ThinLTO cache handling for external module builds.

  - Rebased on top of Masahiro's patch for preprocessing modules.lds,
    and moved the contents of module-lto.lds to modules.lds.S.

  - Moved objtool_args to Makefile.lib to avoid duplication of the
    command line parameters in Makefile.modfinal.

  - Clarified in the commit message for the initcall ordering patch
    that the initcall order remains the same as without LTO.

  - Changed link-vmlinux.sh to use jobserver-exec to control the
    number of jobs started by generate_initcall_ordering.pl.

  - Dropped the x86/relocs patch to whitelist L4_PAGE_OFFSET as it's
    no longer needed with ToT kernel.

  - Disabled LTO for arch/x86/power/cpu.c to work around a Clang bug
    with stack protector attributes.

Changes in v2:

  - Fixed -Wmissing-prototypes warnings with W=1.

  - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
    scrubbing to make distclean.

  - Added a comment about Clang >=11 being required.

  - Added a patch to disable LTO for the arm64 KVM nVHE code.

  - Disabled objtool's noinstr validation with LTO unless enabled.

  - Included Peter's proposed objtool mcount patch in the series
    and replaced recordmcount with the objtool pass to avoid
    whitelisting relocations that are not calls.

  - Updated several commit messages with better explanations.


Arvind Sankar (2):
  x86/boot/compressed: Disable relocation relaxation
  x86/asm: Replace __force_order with memory clobber

Luca Stefani (1):
  RAS/CEC: Fix cec_init() prototype

Masahiro Yamada (1):
  kbuild: preprocess module linker script

Nick Desaulniers (1):
  lib/string.c: implement stpcpy

Peter Zijlstra (1):
  objtool: Add a pass for generating __mcount_loc

Sami Tolvanen (24):
  objtool: Don't autodetect vmlinux.o
  kbuild: add support for objtool mcount
  x86, build: use objtool mcount
  treewide: remove DISABLE_LTO
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
  kbuild: lto: postpone objtool
  kbuild: lto: limit inlining
  kbuild: lto: merge module sections
  kbuild: lto: remove duplicate dependencies from .mod files
  init: lto: ensure initcall ordering
  init: lto: fix PREL32 relocations
  PCI: Fix PREL32 relocations for LTO
  modpost: lto: strip .lto from module names
  scripts/mod: disable LTO for empty.c
  efi/libstub: disable LTO
  drivers/misc/lkdtm: disable LTO for rodata.o
  arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
  arm64: vdso: disable LTO
  KVM: arm64: disable LTO for the nVHE directory
  arm64: allow LTO_CLANG and THINLTO to be selected
  x86, vdso: disable LTO only for vDSO
  x86, cpu: disable LTO for cpu.c
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                                    |   1 +
 Makefile                                      |  74 ++++-
 arch/Kconfig                                  |  68 +++++
 arch/arm/Makefile                             |   4 -
 .../module.lds => include/asm/module.lds.h}   |   2 +
 arch/arm64/Kconfig                            |   2 +
 arch/arm64/Makefile                           |   5 +-
 .../module.lds => include/asm/module.lds.h}   |   2 +
 arch/arm64/kernel/vdso/Makefile               |   4 +-
 arch/arm64/kvm/hyp/nvhe/Makefile              |   4 +-
 arch/ia64/Makefile                            |   1 -
 .../{module.lds => include/asm/module.lds.h}  |   0
 arch/m68k/Makefile                            |   1 -
 .../module.lds => include/asm/module.lds.h}   |   0
 arch/powerpc/Makefile                         |   1 -
 .../module.lds => include/asm/module.lds.h}   |   0
 arch/riscv/Makefile                           |   3 -
 .../module.lds => include/asm/module.lds.h}   |   3 +-
 arch/sparc/vdso/Makefile                      |   2 -
 arch/um/include/asm/Kbuild                    |   1 +
 arch/x86/Kconfig                              |   3 +
 arch/x86/Makefile                             |   5 +
 arch/x86/boot/compressed/Makefile             |   2 +
 arch/x86/boot/compressed/pgtable_64.c         |   9 -
 arch/x86/entry/vdso/Makefile                  |   5 +-
 arch/x86/include/asm/special_insns.h          |  28 +-
 arch/x86/kernel/cpu/common.c                  |   4 +-
 arch/x86/power/Makefile                       |   4 +
 drivers/firmware/efi/libstub/Makefile         |   2 +
 drivers/misc/lkdtm/Makefile                   |   1 +
 drivers/ras/cec.c                             |   9 +-
 include/asm-generic/Kbuild                    |   1 +
 include/asm-generic/module.lds.h              |  10 +
 include/asm-generic/vmlinux.lds.h             |  11 +-
 include/linux/init.h                          |  79 ++++-
 include/linux/pci.h                           |  19 +-
 kernel/Makefile                               |   3 -
 kernel/trace/Kconfig                          |   5 +
 lib/string.c                                  |  24 ++
 scripts/.gitignore                            |   1 +
 scripts/Makefile                              |   3 +
 scripts/Makefile.build                        |  69 +++--
 scripts/Makefile.lib                          |  17 +-
 scripts/Makefile.modfinal                     |  29 +-
 scripts/Makefile.modpost                      |  22 +-
 scripts/generate_initcall_order.pl            | 270 ++++++++++++++++++
 scripts/link-vmlinux.sh                       |  95 +++++-
 scripts/mod/Makefile                          |   1 +
 scripts/mod/modpost.c                         |  16 +-
 scripts/mod/modpost.h                         |   9 +
 scripts/mod/sumversion.c                      |   6 +-
 scripts/{module-common.lds => module.lds.S}   |  31 ++
 scripts/package/builddeb                      |   2 +-
 tools/objtool/builtin-check.c                 |  13 +-
 tools/objtool/builtin.h                       |   2 +-
 tools/objtool/check.c                         |  83 ++++++
 tools/objtool/check.h                         |   1 +
 tools/objtool/objtool.h                       |   1 +
 58 files changed, 919 insertions(+), 154 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 create mode 100755 scripts/generate_initcall_order.pl
 rename scripts/{module-common.lds => module.lds.S} (59%)


base-commit: 92ab97adeefccf375de7ebaad9d5b75d4125fe8b
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-1-samitolvanen%40google.com.
