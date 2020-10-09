Return-Path: <clang-built-linux+bncBC2ORX645YPRBNMYQL6AKGQEFF5VKWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5890A288DDD
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:43 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id o74sf4233916ooo.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260022; cv=pass;
        d=google.com; s=arc-20160816;
        b=a72BVWB7R1sfErImqLrV7L5rsDzi5vphXFjdv2B7b7PvwbeMCRCqHs5vUc05Fre1Fn
         ni9/qq0GLoaL+81Dt47a2rQJJLAF4tpb9Xt/Lbbi57PLO23kTv4mWYCZrWUOaITwLWUF
         rVflhl6L4zrI4d97cSLfgfrrmv77Q5vLv4k0ROPuB1vLqBq4R40gzvSXzovGeukyCC84
         yfZ9HpdPYoRRyYyyjaiWmSA33hYcglUjiulri7A4svzc8fFJZGBP+jfzC9HYuT5n1Mjv
         TQ/a49OjwCzBm4q6qHE0j4uOrYdIfD103N6IjbsnF5IiQ0K7OLEcyAjOmqALdxQuagAt
         uFJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=S0MHKkC+QJobI2xdAR4f5cHxDFmbfQpvJkDdkl7qiII=;
        b=VqSYzyFqVRT5SyeaQUDrjRkiRHO7Df6akN1cYf70ebbUpCbkjAMsudtrGwJ9n/vnnD
         dQzyMtZKvy4komreajxYxt5VYW97dzFURtAaEY71+EcFSfMwzFaZvse1yZ047kkZANXR
         EBpAKCx4aomL2z0eYxj2blHTCClte18Obgz1nlJ08GxurQvz6ZqLj4SUX6X+qijtwaXw
         Z2eC5ZZChbQsFcNnIQBW0AQ1+HaiCQGdvrHOg4tql2efLyBaO7HcwrDiA+afgvuTLbIv
         fGJg4M1jShLeSr2KEMjSl1idFFthlTbeu3+FB2NyjVmsp23d/mXoz4a4fwQxF4mL+Hfg
         CXNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vhS3dYYv;
       spf=pass (google.com: domain of 3niyaxwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NIyAXwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S0MHKkC+QJobI2xdAR4f5cHxDFmbfQpvJkDdkl7qiII=;
        b=e35JECmPXpybCRDmMpnNWT77x5DwqUjCuU8nzYKEvBFW1eW4z5BHujao8o58WJ35BM
         Jw3dyrEw+BdHeXddvzoHHfTx0fmk//q2wnmrOe26zR9idpJkw8v6qcEXJ5RI5AWI4rYm
         9PlMBQrpBH0tQHfVMPqLDIFgb4B2v8Kcn32JhL9doDAlfVDU8iJ/qkKemhy+7MEnVBBW
         pvswi4HvvbFbqVMYQzUFhXmPKXm8gtwYxmB5D0a9PYaQGFc6SR9tGng4rtJ6dg7mOByF
         uz7V0zELQkJ/FH5h0Dfot5AS7q7gPAbdEeejH4IPQwpD24a1uqjr2WrXecYly8CCwEnT
         7e1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0MHKkC+QJobI2xdAR4f5cHxDFmbfQpvJkDdkl7qiII=;
        b=UIwXXfRh+2c6JA7Nj0XGTOPFQopcXY5IQhGxOiWf6bBpH+kLh2QplMx0jREwW1XHQt
         3juKfKKcvdgFldBN+GVEuaWo72UaBqeQEqa4cBVBt3WLigDzy+slBgXfaSWUYDcyUR8P
         mmA2aapJVnErjY/Kn9y9C8lGjGXRXzrrw0/MxPpsCz7GDt9PMJliJATUaZdEREAZE0RV
         Kr3vA+TUTcsoKyw6Zwas6d9G8h0SaZrebRaquzFZljl5KuX9P7vb9c+8hdiGrAT4iBh5
         gbe7n6E/xioVE1x4M7iTKIEE4XdYX9zQ6NfLJANgwxZ6MWzDs1TXfM7wrb4n1BWSL6Py
         G/pA==
X-Gm-Message-State: AOAM5324yVuxi2ONm6pVJjDMSBTTlxMSMwmrxN+CY2MMSrmgkiGR335c
	+g4+OOBnHsJKA5AShsz/Ahs=
X-Google-Smtp-Source: ABdhPJyMCfVjIQ1VjUqnSWmLmj9IjPMT+VJxGal8Fpj1MWYjDJhFHfFdUukHD1ciLh3z+xObDHRcBw==
X-Received: by 2002:aca:4188:: with SMTP id o130mr2709446oia.167.1602260021918;
        Fri, 09 Oct 2020 09:13:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6319:: with SMTP id q25ls2232957otk.11.gmail; Fri, 09
 Oct 2020 09:13:41 -0700 (PDT)
X-Received: by 2002:a05:6830:1d8e:: with SMTP id y14mr3050095oti.267.1602260021480;
        Fri, 09 Oct 2020 09:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260021; cv=none;
        d=google.com; s=arc-20160816;
        b=mOQxn/Bs1s2gbCo5Xvt/tXEZJvmOeRwrEz+MwuzA6cqaspiMcm3AN6OMfTdkf51AKA
         hdWbza6aigl9cuw0ast0sHBCq2l2zDKMg3/MzuHbecdM20i/JNgmIU+8YxGdITHxVfSw
         z2BPQXz35XwkDICACydPQ4plgkb23wBySgHLgL6lBxPP7VwDdCpIJNwYz8pvAPwJvKyY
         LvzbaoGfwJrWSEY1Dkbq7dfKdwJa6oftOX+RbgAcVsjKkM29UM/eFZYCYwk43Drdysbb
         WZjR6xXvUqu2l5Cd4V8aNE5ARGpeOu50TJrk2PewyTKMD0xcdySRumAr8HcRFM+AJ+Ho
         TGIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=U16gZthY7GiG18hos+s39UYV/dexC5axxz2McFtoNlo=;
        b=CE0CsF6CDrtCKMDVICadl2nqLslQAzGtchVCIPiziBaJu7Y65k2EUBEgySX9A0/SCA
         KMrblawfz0Wr9oU9NVYmouDlXEEFI+BjcYP4/Nym3B43LM7lMzLE3j0g+og3p0ti0sUX
         7u8tbmrXTaHKKiiS2VbB8HXiDfqzlzeQ4IWTv9oDZ8X3Ad6Dzhnb7mTZXnj2IXMxAEGo
         0ov2t2fcLdfy2uaXVPPLkIo9kjS0ItB9sZpfjrUuX9SPu7Q1HhLy8kxVBAa4HsmeNN2b
         aUjkxM47VJw7RavzEBL50gwdkYEBtN1FMX4J22wX/Q17bGYdo72FDecUrT6PV7F0xnrP
         6VNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vhS3dYYv;
       spf=pass (google.com: domain of 3niyaxwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NIyAXwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id u15si1048469oth.1.2020.10.09.09.13.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3niyaxwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id z4so7025398pgv.13
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:aa7:8812:0:b029:154:e0ed:1fed with
 SMTP id c18-20020aa788120000b0290154e0ed1fedmr12987823pfo.33.1602260020696;
 Fri, 09 Oct 2020 09:13:40 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:09 -0700
Message-Id: <20201009161338.657380-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 00/29] Add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=vhS3dYYv;       spf=pass
 (google.com: domain of 3niyaxwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NIyAXwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
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

Note that this version is based on tip/master to reduce the number
of prerequisite patches, and to make it easier to manage changes to
objtool. Patch 1 is from Masahiro's kbuild tree, and while it's not
directly related to LTO, it makes the module linker script changes
cleaner.

Furthermore, patches 2-6 include Peter's patch for generating
__mcount_loc with objtool, and build system changes to enable it on
x86. With these patches, we no longer need to annotate functions
that have non-call references to __fentry__ with LTO, which greatly
simplifies supporting dynamic ftrace.

You can also pull this series from

  https://github.com/samitolvanen/linux.git lto-v5

---
Changes in v5:

  - Rebased on top of tip/master.

  - Changed the command line for objtool to use --vmlinux --duplicate
    to disable warnings about retpoline thunks and to fix .orc_unwind
    generation for vmlinux.o.

  - Added --noinstr flag to objtool, so we can use --vmlinux without
    also enabling noinstr validation.

  - Disabled objtool's unreachable instruction warnings with LTO to
    disable false positives for the int3 padding in vmlinux.o.

  - Added ANNOTATE_RETPOLINE_SAFE annotations to the indirect jumps
    in x86 assembly code to fix objtool warnings with retpoline.

  - Fixed modpost warnings about missing version information with
    CONFIG_MODVERSIONS.

  - Included Makefile.lib into Makefile.modpost for ld_flags. Thanks
    to Sedat for pointing this out.

  - Updated the help text for ThinLTO to better explain the trade-offs.

  - Updated commit messages with better explanations.

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


Masahiro Yamada (1):
  kbuild: preprocess module linker script

Peter Zijlstra (1):
  objtool: Add a pass for generating __mcount_loc

Sami Tolvanen (27):
  objtool: Don't autodetect vmlinux.o
  tracing: move function tracer options to Kconfig
  tracing: add support for objtool mcount
  x86, build: use objtool mcount
  treewide: remove DISABLE_LTO
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
  objtool: Split noinstr validation from --vmlinux
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
  arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
  arm64: allow LTO_CLANG and THINLTO to be selected
  x86/asm: annotate indirect jumps
  x86, vdso: disable LTO only for vDSO
  x86, cpu: disable LTO for cpu.c
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                                    |   1 +
 Makefile                                      |  68 +++--
 arch/Kconfig                                  |  74 +++++
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
 arch/x86/entry/vdso/Makefile                  |   5 +-
 arch/x86/kernel/acpi/wakeup_64.S              |   2 +
 arch/x86/platform/pvh/head.S                  |   2 +
 arch/x86/power/Makefile                       |   4 +
 arch/x86/power/hibernate_asm_64.S             |   3 +
 drivers/firmware/efi/libstub/Makefile         |   2 +
 drivers/misc/lkdtm/Makefile                   |   1 +
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
 scripts/Makefile.modpost                      |  25 +-
 scripts/generate_initcall_order.pl            | 270 ++++++++++++++++++
 scripts/link-vmlinux.sh                       |  98 ++++++-
 scripts/mod/Makefile                          |   1 +
 scripts/mod/modpost.c                         |  16 +-
 scripts/mod/modpost.h                         |   9 +
 scripts/mod/sumversion.c                      |   6 +-
 scripts/{module-common.lds => module.lds.S}   |  31 ++
 scripts/package/builddeb                      |   2 +-
 tools/objtool/builtin-check.c                 |  10 +-
 tools/objtool/check.c                         |  84 +++++-
 tools/objtool/include/objtool/builtin.h       |   2 +-
 tools/objtool/include/objtool/check.h         |   1 +
 tools/objtool/include/objtool/objtool.h       |   1 +
 tools/objtool/objtool.c                       |   1 +
 56 files changed, 903 insertions(+), 131 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 create mode 100755 scripts/generate_initcall_order.pl
 rename scripts/{module-common.lds => module.lds.S} (59%)


base-commit: 80396d76da65fc8b82581c0260c25a6aa0a495a3
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-1-samitolvanen%40google.com.
