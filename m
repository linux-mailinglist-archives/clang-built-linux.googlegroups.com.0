Return-Path: <clang-built-linux+bncBC2ORX645YPRBJVW236QKGQEILNVMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 510BF2B8722
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:35 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id f66sf2946667ilh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737254; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcvtTUMAVNHlFr/xf5jkbCcGgOLO/RU2mJyMlm5m/3nnWX4lGU/d0Hhi/USP2E/BAm
         GusdfUMYNCGkHhcMrx8+MKFUG2jHiyL5uOLe+9SdMStrr8ck9tZzMI6YrtozdnKFbjZy
         +9KA7AlYs6km3pZVBQmnOYTdYAhlF9g23rGBMlVbH0JhpVvmR3VBciGuReNsVv4pYomh
         oI95MTXRAc599fj2vhl8uCyPq7wIrGN+hQSRQAHzClC5YNFOVfFVJRullgJKj6kNXHja
         SoL3kZ8EthgbC+72Z6/Xm5jNUINuWCOD4joKZHvJRSaq/ic+GFJWZup3Nm1eQkgrKBTX
         JjNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=ie8UZzXiHM0jtv7c1jdmmrVMF/5QDapV1dTUnkJnbsc=;
        b=EK9cpghizc7lCSzhPACeLmjH8AQ1DAEzUydvJtXZmagBr6IrtIENiDNuys0hasSM/k
         lhwrWLtJ9kB7P7Uwv4rtJQOXzTaxT6jjJXRSYheZXMYJWzVGG3GJN90mzItfkm7DKsOP
         K3glePwzCNUvQWnc7QeYwCXHo4v5tddnaxm9NBQw3X29j0SYKNb7i6MvXnkgOzHeTkkK
         HaHAhW1HdmlUrbRfabzpt/DtrWufuOsuHLHajldBMlocISDW+kPlvtCzk+SlhI8UA3sM
         h0LUMXBSwYSEvN5SqI8xpeoMsN7HrRGzP9oqvE1azvzo9NPL4gHWrUPwv5bumsS4hsZw
         2xQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEACl+hP;
       spf=pass (google.com: domain of 3jzu1xwwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JZu1XwwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ie8UZzXiHM0jtv7c1jdmmrVMF/5QDapV1dTUnkJnbsc=;
        b=gi6xUskO4CYc6TpCl7usVIFVJt0eE/9fHXnSUkG00EFbO9Oe8FssxQgoW8tmV0GO6F
         Ec7uC6yJDXVOudmN5qs2IUFlx4G/cn0cqBumSi0Ko6ARZpaNyDWhCfbrkPiA1D+83Jk6
         FvzEuRYyDf4LYaBCTyBAiihOrgXhTrUDT0WEhFULRPYvnnTZMH8fvdpXc51ypEWsKGZV
         8o9Bihgsi7OdjmIfTc+QBhc64IXUhgb0w9YRfENXTdvgHV6GPXWWxmE/WPuROzXb9qD9
         adWI6cbIrSsT+QYsSfPRkOQuVEmNoocE6IPBcUVVkKc9nnXvZ1/yT4x0+PVMLFUWp0pM
         8HRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ie8UZzXiHM0jtv7c1jdmmrVMF/5QDapV1dTUnkJnbsc=;
        b=Fui6akQtJWTLS28X3NyMALgAyA/hF9H9BoqCfCFdsBA8ymG/VP3BGii+wK1jwFpulh
         /ufJUIQAYsiyfUwwAF4P2wkaZaSvEntmIccksu5P6KsB51ce+EoWa9hBLxk3DSdShffN
         GLF321eL005xegAl2Sp9Xs8mf1UjZRjn2v9Ex3xNRRLAf/GMvvupFXWJ2frgtyRgLbxU
         zyN3M1xocvfBuH7pY8w/wv0keJtG4VPm3qyCChzne1K7WJyJnxBWhUzLHV/4eQ+EQu4T
         w3kk2qUmTEZo2NDTAy8haGV1FScSmVi44w9jGhB9mEGOfZy2jMqLrsEu5SaYvtznhEza
         CqKQ==
X-Gm-Message-State: AOAM532qPALMeOF63dUvIGV71bNhlO76UazpMeTipx2zd08JY4fejt8D
	F3MtvIWajKl2pQzI0yDJQHg=
X-Google-Smtp-Source: ABdhPJwCSsJSe2XqbLRXdLublClfkQxSxiiyZYLHocynPh6oBvc+KR85oTiuCTry7iUyZoPf0WvFjQ==
X-Received: by 2002:a92:d04:: with SMTP id 4mr15969341iln.210.1605737254171;
        Wed, 18 Nov 2020 14:07:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c557:: with SMTP id g23ls177030jaj.9.gmail; Wed, 18 Nov
 2020 14:07:33 -0800 (PST)
X-Received: by 2002:a02:a15b:: with SMTP id m27mr11043614jah.116.1605737253629;
        Wed, 18 Nov 2020 14:07:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737253; cv=none;
        d=google.com; s=arc-20160816;
        b=UhuTwVZHeLJdQwyrTSEuDEV2yZf21RSs1bt0WGVn6evmSnKJrPsHjSBYuDoKEorAKA
         La1cLJZ4BpHTmn+stL8I9sCtBLi2TIKc15KANVVb2BobnFxZEd0lClP+X53g7dQWHsl6
         JaAJxIAk0udp60V+vV19/Wtg/iJyhKWBwXYU6zKHIC6Ct7Y3u2yAm+JSEVTH8rWWkYPP
         L0JHBR9bk80Nj1i5SrNFEI9LKuBvLhJvi9NuVO8tNTx18G3Gc2c7jhU7NHxaDEOD3pTB
         rYfk2zYLLI8fioD8Dk66zs1gVcpKXQEouHBBCiq1FFcAD0XyNID355wEBnmDjypC+c3Z
         MYWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=RLGcqGrpsLlRbzosDVd0xMcJRplKck51D58hnCA0m40=;
        b=DhTFz9mzumKBrScotCnZZ455r2p3eDAp86iP1ApJ6uUuXvPxj/Fkik/7d/xH/A8Bbd
         U/56xZguETNU2H7Znq7ScPyi8KvN8UTa9pN8yZ6x7JXCj6fJJoR2tLnGkTk7qQsay9/c
         Tt8Yxw/sHyVVnrLqoUTO46l5VH0WfM4CbheRNK7ZJwG+IPKcIuqWIIw70novie5Kksb7
         O6mloiz6Kvz5ojl9uncsRC1pQrp/xgLeTatHTkjSHcESKIP6PCTUQXoH9Id5keX4v/Qv
         lD2xzjYBx1OcJPtc3RFtUsNKrLryISWxNDi2SgDFlIZHWRt8wcxLNzUNvtPD9BLo11rt
         YYEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEACl+hP;
       spf=pass (google.com: domain of 3jzu1xwwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JZu1XwwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u18si700020iow.2.2020.11.18.14.07.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jzu1xwwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b25so4611204ybj.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:33 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cb11:: with SMTP id
 b17mr8848931ybg.236.1605737253032; Wed, 18 Nov 2020 14:07:33 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:14 -0800
Message-Id: <20201118220731.925424-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 00/17] Add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FEACl+hP;       spf=pass
 (google.com: domain of 3jzu1xwwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JZu1XwwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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

This patch series adds support for building the kernel with Clang's
Link Time Optimization (LTO). In addition to performance, the primary
motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
be used in the kernel. Google has shipped millions of Pixel devices
running three major kernel versions with LTO+CFI since 2018.

Most of the patches are build system changes for handling LLVM bitcode,
which Clang produces with LTO instead of ELF object files, postponing
ELF processing until a later stage, and ensuring initcall ordering.

Note that v7 brings back arm64 support as Will has now staged the
prerequisite memory ordering patches [1], and drops x86_64 while we work
on fixing the remaining objtool warnings [2].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
[2] https://lore.kernel.org/lkml/20201114004911.aip52eimk6c2uxd4@treble/

You can also pull this series from

  https://github.com/samitolvanen/linux.git lto-v7

---
Changes in v7:

  - Rebased to master again.

  - Added back arm64 patches as the prerequisites are now staged,
    and dropped x86_64 support until the remaining objtool issues
    are resolved.

  - Dropped ifdefs from module.lds.S.

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


Sami Tolvanen (17):
  tracing: move function tracer options to Kconfig
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
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

 .gitignore                            |   1 +
 Makefile                              |  45 +++--
 arch/Kconfig                          |  74 +++++++
 arch/arm64/Kconfig                    |   4 +
 arch/arm64/kernel/vdso/Makefile       |   3 +-
 arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
 drivers/firmware/efi/libstub/Makefile |   2 +
 drivers/misc/lkdtm/Makefile           |   1 +
 include/asm-generic/vmlinux.lds.h     |  11 +-
 include/linux/init.h                  |  79 +++++++-
 include/linux/pci.h                   |  19 +-
 kernel/trace/Kconfig                  |  16 ++
 scripts/Makefile.build                |  50 ++++-
 scripts/Makefile.lib                  |   6 +-
 scripts/Makefile.modfinal             |   9 +-
 scripts/Makefile.modpost              |  25 ++-
 scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
 scripts/link-vmlinux.sh               |  70 ++++++-
 scripts/mod/Makefile                  |   1 +
 scripts/mod/modpost.c                 |  16 +-
 scripts/mod/modpost.h                 |   9 +
 scripts/mod/sumversion.c              |   6 +-
 scripts/module.lds.S                  |  24 +++
 23 files changed, 677 insertions(+), 68 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl


base-commit: 0fa8ee0d9ab95c9350b8b84574824d9a384a9f7d
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-1-samitolvanen%40google.com.
