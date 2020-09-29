Return-Path: <clang-built-linux+bncBC2ORX645YPRBOWWZ35QKGQEOLP6DUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 531FE27DA62
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:35 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id d16sf4714739ila.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601415994; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFIMvvvw5h9NqOClRdb1fVNwn5UYr9UAW+GcJHlCbqEyhWE4g5tfXCksUgGd/kV1uR
         t38m16yh21VC4CHcsjjfKoPchM0zI+P4ZLJ+UW/iq1vCaCqrxi1DldAc+f/GRTUI4xko
         VnaLWeCY/AtgkWBcoKYbXGxU/MX+8QBwDckMiHeYSY2hyKp6ys9RxDjrJzmM0Lsc6V3m
         eQhJETiSPBUyUfLfQY6FXSk9ojOjboSNDZQc1pgYFUA6GsPWhchFEwMuldYnee1Zm5Hk
         rlLceJqAQMQ4ZQ7AVHnkhhsWJKr6GltiVZ+onHvHAFgviwE0f36Rd6UWXmVM4hHREFLK
         r2Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=JSrW0jBnHBJ7OM6c5zHw2j2u2lbvmrQDyLwk5tTpqbE=;
        b=AyLvh0XZ27y7paPEhaaWc09OIAvmK+xkkVX8o/EYoYwE6M1w8YOwT57tuS10WsOo+e
         b3lc2F0cs9CdEnTkadiGUHHGPmDlYicCm5qwelbCGemKTQ4wOBleJUGKOgFLve/zZ4ry
         FqnJ7CTKbn0TIj4k3FFGpF/tdbFwGpBArmlfhzfiv4qq3plcl5FoF5XP4ZL0vnZuuIBo
         QOBqIFuO1uueYSeoLP9LzIbbVYsBPLPIyb4794VtQ4aL5nFmJnwsx5ai0HBjRNdWfRwz
         ++Ckkem4B1D0qLgp+NXIqJMQ0f0vZ+S4wxPoSEL88vJ04lCjziiCFqGrc59phTU8lFxO
         9OiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pxKmqbIy;
       spf=pass (google.com: domain of 3oatzxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OatzXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JSrW0jBnHBJ7OM6c5zHw2j2u2lbvmrQDyLwk5tTpqbE=;
        b=A1vOuGmcIqk1tF3XthhtQSd0s7jWNAK3sPvslXF2fGqN4KtdQvs3Bg1a0hXk4XxJgF
         RSUJqVcTvU00zzpSpEMGiFx6e8WfhztLiPP1N6W1ssot1HM/qqp/yLb7YSbSYw1l7pCg
         T4af9r13ywXFiKkp85sw6JG/665O8lIIkBEjYGzYU8QtjGdbNXhZMCBiDeRRQPqpFTox
         J57oSmD58VTKcFvX6rf+G8sj3gRqlxJ5xdgc7mae9geaQSY+uY1dpsrSxiB4MRENo0Yx
         +kahJ3uSQiQ8012ilMD52M9C9gNYpxr8xTk6+aB5XUXS/rk2bh+hnwvvJJMvfZzigga7
         Mpig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSrW0jBnHBJ7OM6c5zHw2j2u2lbvmrQDyLwk5tTpqbE=;
        b=rjlf/NRYzta0njxZFzWPidzVbIouqgkRzQnFsaLJMkBrTgh8VjfYcammzw8070BLG2
         3/gdguqYnbkDzlg+Or04FZEHEUw6FC+dNe4lVdwH2fw3jMiDcNEz5gnDP3sECXEMZoJh
         KBLPN2srMxFVE2nBjXOzfKpPNKx91/6Tm4bWhjST1MXWu29GtKu8N0XAITFdmYQgq8Vm
         PHZYxHL1Zxr+Fk/a9FA78TZ8ke6R+Fp0BARUsEZzKNQA79hhhJllmJd6cIAw6XknMwtA
         Yh8CFvwC1mPB4q7ng7qjOx2UMbJqFO4dYgnpV/Ur1wfKCIm2gqCACSreVDRCB0kPjZvJ
         yPKg==
X-Gm-Message-State: AOAM531/Ys1/tCJuDQpbpwqNx1DM0jxek2xqhSjpqIqz7szkoeHt5bXs
	RYdyq0T7UIH9AAGgKnYWrIk=
X-Google-Smtp-Source: ABdhPJy9dVrS5lediwjSaYyp/wzHsjDNrn9YINAyz4UnC83/OEgGXfczA7W3LW+gJAxJLH7p8xgJjQ==
X-Received: by 2002:a05:6e02:cab:: with SMTP id 11mr4480414ilg.15.1601415994276;
        Tue, 29 Sep 2020 14:46:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f910:: with SMTP id j16ls46305iog.6.gmail; Tue, 29 Sep
 2020 14:46:33 -0700 (PDT)
X-Received: by 2002:a05:6602:2e89:: with SMTP id m9mr4093317iow.77.1601415993831;
        Tue, 29 Sep 2020 14:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601415993; cv=none;
        d=google.com; s=arc-20160816;
        b=pSHC+C0uhza5gjPq7853Jlfc7WOuTJRsjzYbI8bETo/9sX5PrUDkykyp140xcR6D5d
         eTho99BWHbdQMIyUig/JSdLEilts2L4V3y90jZ8cpkYfkZhT8I1w/wL3186BKhcF0Lru
         W88j87fNfufB0vNzOlrjJOc7m+de3pO6rW69FeUWDXxr8fKdk0TcX5K+dUObV/j+RDbP
         GFJbNJIps6DLv43PHSvGYA7SECCl+WG5I49nJ5UakqTSczqxO2h40zDZiGxip3owMeSj
         e7FrYnoJlTnn6iYzJVPfzpwGJRQSJwEFMLo3h92O3cWRUXZnWkAH0hZGX4IWetPyeSsH
         NR3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Ap+f/PgcipKb6Xwr77y488UFXUT7vfttNzHvf2XvHy4=;
        b=y2ygy0CHs0KfdZXU2Tyz2gHnFEAhVHH3YoMFKqKVQikRBIUaZpXJ6DNpiPCJDMucS9
         Lo9v8Ny81HCtMxEsReK40d3BfTpfoigxreEEhPkkRjs0omkkVDfyH0cdMzdfwVlLvbVB
         RxFKNcYMdBl+rcxMRco6+Cvy21QuX1yuDCX3mLEJWwHWIgZ3mxZxL0Zqy5oZl6hb21qN
         /6+KSTzYwxbnciRyVShh1gfP0NegAfq0CXjXYAtP7S7z6RJtWqSSpw7HQfwQzgSviz5K
         OAlUTS4hN1O99le6C2YGEQpYTn4CaDuupN0+JSDZkhp5H/Vp2K9OJIRRgZSvWQD/vUPr
         Bn7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pxKmqbIy;
       spf=pass (google.com: domain of 3oatzxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OatzXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id y1si553677ilj.2.2020.09.29.14.46.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oatzxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w3so4055682qtn.16
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:33 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b409:: with SMTP id
 u9mr6416334qve.9.1601415993082; Tue, 29 Sep 2020 14:46:33 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:02 -0700
Message-Id: <20200929214631.3516445-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 00/29] Add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pxKmqbIy;       spf=pass
 (google.com: domain of 3oatzxwwkagaq8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OatzXwwKAGAQ8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
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

Again, patches 1-3 are not directly related to LTO, but are needed
to compile LTO kernels with ToT Clang, so I'm including them in the
series for your convenience:

 - Patch 1 ("RAS/CEC: Fix cec_init() prototype") fixes an initcall
   type mismatch which breaks allmodconfig with LTO. This patch is
   in linux-next.
   
 - Patch 2 ("x86/asm: Replace __force_order with memory clobber")
   fixes x86 builds with LLVM's integrated assembler, which we use
   with LTO for inline assembly. This patch hasn't been picked up
   by maintainers yet.

 - Patch 3 ("kbuild: preprocess module linker script") is from
   Masahiro's kbuild tree and makes the LTO linker script changes
   much cleaner.

Furthermore, patches 4-8 include Peter's patch for generating
__mcount_loc with objtool, and build system changes to enable it on
x86. With these patches, we no longer need to annotate functions
that have non-call references to __fentry__ with LTO, which makes
supporting dynamic ftrace much simpler.

Patch 9 disables recordmcount for arm64 when patchable function
entry is used (enabled by default if the compiler supports the
feature), which removes thousands of unnecessary recordmcount
invocations from a defconfig build.

Note that you can also pull this series from

  https://github.com/samitolvanen/linux.git lto-v4


---
Changes in v4:

  - Fixed a typo in Makefile.lib to correctly pass --no-fp to objtool.

  - Moved ftrace configs related to generating __mcount_loc to Kconfig,
    so they are available also in Makefile.modfinal.

  - Dropped two prerequisite patches that were merged to Linus' tree.

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


Arvind Sankar (1):
  x86/asm: Replace __force_order with memory clobber

Luca Stefani (1):
  RAS/CEC: Fix cec_init() prototype

Masahiro Yamada (1):
  kbuild: preprocess module linker script

Peter Zijlstra (1):
  objtool: Add a pass for generating __mcount_loc

Sami Tolvanen (25):
  objtool: Don't autodetect vmlinux.o
  tracing: move function tracer options to Kconfig
  tracing: add support for objtool mcount
  x86, build: use objtool mcount
  arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
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
  arm64: vdso: disable LTO
  KVM: arm64: disable LTO for the nVHE directory
  arm64: allow LTO_CLANG and THINLTO to be selected
  x86, vdso: disable LTO only for vDSO
  x86, cpu: disable LTO for cpu.c
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                                    |   1 +
 Makefile                                      |  68 +++--
 arch/Kconfig                                  |  68 +++++
 arch/arm/Makefile                             |   4 -
 .../module.lds => include/asm/module.lds.h}   |   2 +
 arch/arm64/Kconfig                            |   4 +
 arch/arm64/Makefile                           |   4 -
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
 kernel/trace/Kconfig                          |  29 ++
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
 56 files changed, 906 insertions(+), 160 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 create mode 100755 scripts/generate_initcall_order.pl
 rename scripts/{module-common.lds => module.lds.S} (59%)


base-commit: ccc1d052eff9f3cfe59d201263903fe1d46c79a5
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-1-samitolvanen%40google.com.
