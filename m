Return-Path: <clang-built-linux+bncBC2ORX645YPRBBXLSP6AKGQEJFZQU7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1F928C5C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:08 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id t26sf3382116pfl.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549127; cv=pass;
        d=google.com; s=arc-20160816;
        b=AXNTA/g7RLCLpPpVb+iWtds3LGIdDVjmTpL/me/qComoN2xayWLmdBYffHgxZd/vDc
         STt96LTahoPdc7rFdeofkaPn/BViZLQI4I2ZO59BmHBzsj8lgyX9afh2rY61ZD+wdxyk
         USKrqc/9yhK2GavdFfeQnwZsFmk8UafkLXRAr/tZYzOjV9DConqeIHfCXKpLY7VAzGuL
         9uVWV6qYyagqZzzy+YiEEo+DELh46b7pD640VEI+5MkOx1e2Vagp8cNpgzl4Lq7+84Ci
         FojL2IAjG6tlJvjGVnq02OAr9ueJNnSSDMpCLP9kFu84FpLNeffNzvYihU3YZtpZtAdg
         G1Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Q+Ck4AJmsVRtRfQmLKksELD+C9B7exRw1nRCe0RBPB8=;
        b=DLWiwt0VJqkx5pLt2PkckWTTTFTpG0uEs+l9aV5c6LGC23QYkhp4NM9n+BysExOLA/
         X+Q4mIo68TVplLeKUoy6tKN928bYXN/pRydxVM6o03V4r+4rEK0y+fG+yekq/+uJtuz9
         +F9Li97GFOGCzv/v8YCPVdqq8Ejf/Dei7mFIQcPsrXwqwEMoS2yVI7xUkzIvqsczANaU
         DpgWUDrqPG6VcfZGrgVvOmspJNzxKKLltGkJo7RltS6zdcVWieCoRHdJYs3xT0DfrEwQ
         DY0JmEEOK56jZYBAhiVLNDc4i3yEzJlkp7g2o2b2ewsaK/jZmLMZpirIr0MwnZDx9Kib
         vIbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UojFnS6w;
       spf=pass (google.com: domain of 3hfwexwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hfWEXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q+Ck4AJmsVRtRfQmLKksELD+C9B7exRw1nRCe0RBPB8=;
        b=jBukpawuAgiBJBCOOdKnjGBL6fNC6oBaRxnQuKjoO5Rr31RDx+LQozCDDka0+Wtac4
         +NwRMlDUAttCcjyf3DCHse8tVl45ASqOkDWbTfjbJ1fOMtpDfZqNHt77uUsf9WBuo95r
         ktMpZtLXuK2DdbZ252KbkfBZPDiFqHLH/cXqdlW8Hfj+XoSahohybJEmTavV/CWxk3bg
         TStzOCROG0wtmI6mATGQDQewB3bk3mvjAKA4HCkaVnU86AOotSBOnEnpeNSyIqkqQhqo
         Si6P/zI17gTKcldl3gEDfYrVaxqxf2E+I7Ea5GKVLyvRvXPK46GdcoMHSm/RjsyMoYJw
         N+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q+Ck4AJmsVRtRfQmLKksELD+C9B7exRw1nRCe0RBPB8=;
        b=CCQekMxZgoCqXIKoCMykmoAG62IGHYVMk1KjTEKx36GwUR2NEslYa6WNcrIxFNWgKq
         QiuwDuCT15apmgNi3Q4idkFrzI9RqjVxj7U95y3O/Y/aKihk3XsttySQGVz67P8TK6Zd
         kzNnNa93+wCEEvunsYHHtGENRayc3PdWmRCOyN5Uou2oTWufeV2JvKeHPBrcC3L1DEXV
         QVa7pr9ZKGOR2UgYe3sRT5kkbj5gQMbjBe42cdBzeOlMqRi5PI63ue8BjkZ8MY7zRrqW
         DgdYCe8ANEAX2Gp4r7/6DUwLBPojxo0xk5IBge56DnOBCwVpKnOssY3ApSxiMXfPPaBT
         64vg==
X-Gm-Message-State: AOAM531Dn8pcX91N20M3wB+RTq25kOP9oFtBkAguD4tG5W0Bf1AVydBf
	p47sl/t1tRIPMMJjdd6CKG4=
X-Google-Smtp-Source: ABdhPJzOJ1tXIfMMWUCBdoi0WkGVWjHKztwlXuOuv1Pj/RUixX4nMXiRQk6AT67nVmGPd082J70SIw==
X-Received: by 2002:a17:902:7001:b029:d3:f0d8:d271 with SMTP id y1-20020a1709027001b02900d3f0d8d271mr25920093plk.48.1602549126824;
        Mon, 12 Oct 2020 17:32:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1847680pjs.2.canary-gmail;
 Mon, 12 Oct 2020 17:32:06 -0700 (PDT)
X-Received: by 2002:a17:90a:410d:: with SMTP id u13mr22464992pjf.79.1602549126169;
        Mon, 12 Oct 2020 17:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549126; cv=none;
        d=google.com; s=arc-20160816;
        b=LH9OnJ1uTR53dM7QyArmo0l7BwoonvVjYNb9tw+mMAF3imsPtdczSdZhddxw3pxuMh
         uJXq2Tlr2F06+Iv1osoWnuvv36NOQcxM0VpbBg/BEYmiOs30ZCWRoK0JdiQP4SV8VjWt
         Vpv9hyzgvQUY5+pvsCNevANkR8Mbdi11C/R7T9VGVN+9M6ZJgyPNACAg48HymDr0O/ED
         F9t3dFAFINmDP/1fVH6hubP36nYpCdZpyPvafQqwI+4w8/7+iNMIa/FcY2TjyMxGboi9
         /SIvY2QpLbcSgRafFGkSMFsWfMd5DmERVDRTzpD+1jHzEQzYKzHmMylTTGby+imxKMN3
         rqjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=OJOo2mPtwLVt3Btef9tCd4OBHWCay8DKkoOT1RdZm54=;
        b=nErq29DbOebrwjH2eGNLb6VBqflJm3gSxmXPIKy2aoOSfyAHJkhCzKwKAG9KU+tXUt
         P0/xfZcgqEEvQEwiWrKkBduu9VXQcjLWy5EAX2+lYTHCTN8ADvuRqFdm5ws1qYp0KBBv
         Rj3SNYMv3Q9HYUqmymqikKlrbT67NW11QvuzMnRxp9AVJzbnaXT5HePQz1CiIkZ7OTqz
         y1Y5+K+AGNzXrnlCqz4cchp1CKTCZV3Ua7RfcrgooKYCiOS5AKDdeHgGG+RKYHkoElih
         L+TR4DK+6ccFtIKYnWlTb9DW5kTTr1fit8zTIf84PBs8LooFubGtZ4V8HkcKnbfOD2WX
         yokA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UojFnS6w;
       spf=pass (google.com: domain of 3hfwexwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hfWEXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id ce17si1255188pjb.3.2020.10.12.17.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hfwexwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id y8so5020155qki.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:06 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d848:: with SMTP id
 i8mr28244513qvj.31.1602549125192; Mon, 12 Oct 2020 17:32:05 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:38 -0700
Message-Id: <20201013003203.4168817-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 00/25] Add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=UojFnS6w;       spf=pass
 (google.com: domain of 3hfwexwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3hfWEXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

This patch series adds support for building the x86_64 kernel with
Clang's Link Time Optimization (LTO).

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

  https://github.com/samitolvanen/linux.git lto-v6

---
Changes in v6:

  - Added the missing --mcount flag to patch 5.

  - Dropped the arm64 patches from this series and will repost them
    later.

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

Sami Tolvanen (23):
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
  x86/asm: annotate indirect jumps
  x86, vdso: disable LTO only for vDSO
  x86, cpu: disable LTO for cpu.c
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                                    |   1 +
 Makefile                                      |  68 +++--
 arch/Kconfig                                  |  74 +++++
 arch/arm/Makefile                             |   4 -
 .../module.lds => include/asm/module.lds.h}   |   2 +
 arch/arm64/Makefile                           |   4 -
 .../module.lds => include/asm/module.lds.h}   |   2 +
 arch/arm64/kernel/vdso/Makefile               |   1 -
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
 tools/objtool/builtin.h                       |   2 +-
 tools/objtool/check.c                         |  84 +++++-
 tools/objtool/check.h                         |   1 +
 tools/objtool/objtool.c                       |   1 +
 tools/objtool/objtool.h                       |   1 +
 54 files changed, 895 insertions(+), 128 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 create mode 100755 scripts/generate_initcall_order.pl
 rename scripts/{module-common.lds => module.lds.S} (59%)


base-commit: a292570e9f694ed50d3e69afd6d54272fd40deca
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-1-samitolvanen%40google.com.
