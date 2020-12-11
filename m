Return-Path: <clang-built-linux+bncBC2ORX645YPRBDH5Z37AKGQEFU62DRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E22D7E4F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:38 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id m15sf7130978pgs.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712397; cv=pass;
        d=google.com; s=arc-20160816;
        b=UfJQMkmXOK1nxkYhfQpKPS4ZZEc5waBLggublRYucTjOk664p6J/g/W4KtTlINR9QP
         XPsPuEc6X2jtb2JYM0NQOtr1qLlMsqdbVmOZKeSWXwRfCfMZmWCbp5i/Va0JQ/ogmjE4
         tIe/cnAJUNF2ygaNMMWOLYRz+iWdY37+G2e0UVKI8Amp1vm87IfMJUCfbIDUDd6kPCGz
         LB1LSH9jvkd56R/fykV4AJH546LIM+opq+LYdgcpgFOz81Pnv8oHC1I7au+lftn1Cmva
         eArCaF73BZOou4YCq8be7H035u5C2ZU9QGUKFoM3WXC2cxq/zheYJr7ffaWHLDyGDuco
         2ibQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=VpYr2vnTpMgrISRQBY4jD3o0DgFk/FP0dEuaeOgse2I=;
        b=tP6UXO4aTvmmaIR8I4N9s2fY7plpRxHm58/t+cQLt+2mB5oC1dqNZeDLPCvtvVCLC7
         zK1LbZ0DF8GJ+ZlVjj78+Dcz8eH5sYXJfKIu9cJgwKIazy2Npptf739W9ttnhchowfzt
         ZIg8ti21vYDc7RKAnMdlx6BOZ3q7KX6kU4+//eJZocHE8E0EydnH/hkUn39wolLKUD7d
         U/Z9Z3tlD556ijxfvIDw8BXLb92z4hsEe6P240Z1sJL/EWlU4Ck9whzzXui/NXJhPw+O
         BowsIcc7ObgO1VWKGoiVLL/MGvPboenQUh9rBcU+fYBIET1kP6EB+EnafdDGRyGw/IFi
         pR1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dDPDz2ow;
       spf=pass (google.com: domain of 3i77txwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3i77TXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VpYr2vnTpMgrISRQBY4jD3o0DgFk/FP0dEuaeOgse2I=;
        b=Qospd4CVqWuwu2zq4C3Q2t20DRsgvanBMjShNcC+eJKAAn+qXH+FvBq4yZHmNcESWl
         uL5/JTwUxz4K5NYPPnfICoVgEwgyngnpnPGQSw2AWKca75b7G9++uxHutK0cq0Q16may
         qptzP4x6IUGhTcvoX/e7JEbagyrQc3Z4RdJviAQMenid2yB8nmR6Z0nkFWR6mUBQlm3K
         cpCHGgWBXpuJqYGd63X6R26b7M1KhZB9UzrNNOnm8lxhGHZHMmRkHQOofaI8TLvbI8X7
         BxNyi2MFYNMAqOvgKXgydZ5gs4zndfxyP2GXtYN5V6Bs7nbmr5cz1/RbDeG4vsp6ZIEx
         cDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpYr2vnTpMgrISRQBY4jD3o0DgFk/FP0dEuaeOgse2I=;
        b=qQSXKvUeE1sLRng2yOo2APhESRJHFstqP1OabhvhcLlapjOSR3qtQqQMNLzXz4n9Dw
         SSpnjD5IkZlvGvz7n50xJ81vjo0tsBumY+EVoJLjisfndLt1p8AtDCHk2zDiRfvmjA76
         gXF8R5gsUyD++DgfA9Qf7pHF14uW8rfE7LQBz0cVH5vBEI3urynjQ3j7DoNH5fKuipSr
         c3xYAIzPJsXmZn+0oo7Tj4F8ambhcrXvJeVi18f2jhcPe1u7Fcltb/XW3u/HtYoFJIc3
         cUnMo53HxagKYJhSPMzPUh0lB0xG0/ycGlAy8z1cUJnt0LuvXMv3ZExupmyj+Rp54VKy
         1d9A==
X-Gm-Message-State: AOAM530OGLDYGzzKUsRV4ilov/W6KFy2omxT/JKvV2ffliwcgIm2uHb2
	NqBA4H6ids4PvwYFhynL3oo=
X-Google-Smtp-Source: ABdhPJwhA7v0b7Ol1sesbWrybzykfVB4Yfx/+m9Am4B9wdnr4JaTFPt20Ujz1IfJzdAP19taEq60UA==
X-Received: by 2002:a17:902:467:b029:da:9ac2:24ee with SMTP id 94-20020a1709020467b02900da9ac224eemr12300616ple.22.1607712396883;
        Fri, 11 Dec 2020 10:46:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e54c:: with SMTP id z12ls3845981pgj.8.gmail; Fri, 11 Dec
 2020 10:46:36 -0800 (PST)
X-Received: by 2002:a63:ce17:: with SMTP id y23mr13040662pgf.444.1607712395950;
        Fri, 11 Dec 2020 10:46:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712395; cv=none;
        d=google.com; s=arc-20160816;
        b=SFT/q7Tnfk6vgGUgK3VnASBlvVICqdGd0x6zXT4XKWpvxlMyBS4O8M5YeNZIbLdcjb
         6orV1RX3UMqYoMsuHhnOKlgWe/Ypu1qcTyPRkOAhts4IX5uJH/RClBifa0T6dqmphJGc
         kBKBDCUlHNm5/Qwe2niL5AdoV+kBzM+vpUANYrodtz2MOkOnQHAoc2OR5w0urlmUfnBk
         xa6dWys2mt7cRqAyplreUg+eaJpZd0iDv9kI0IRTNgW++acZF6eWATEnnF6l3Ujw0Oa7
         uqmSLm4ejOrkzpHX2HfBXhFp9UgywbsJk3yRCO8oOeyw4pC/FA5wUmQgsroR8fYyloet
         X3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=9znxVvQ/9PAVTHgEOV292+fDBKHMlDcfsU9d9H/6O4k=;
        b=mDAQWlUCHQhkyvJuzeG/yk43a/o3oUKETzPTBw8ieYvaBaJKeV0HWtBXRd+HD0oEZK
         zHW312ao7Bl1cLHSqiNmrhRuBqV9WW5QOAyeScn/Vqc3idr5wHNR2iqd70GihDfYTdVH
         5kov266LOdoUtYb+HuBTPG8tkAU9xS5NRnT6KIydY9LyU/+sbpKIdlib8gNd7xK1bPHu
         BGoTOFtLf6d53aQFNql5j37x+TxLhV2m/j7ibc9Qo2PodwcJpH1ZxABOeJoc0DCFujuL
         dYg0hpeI7cbjBXlPNiunpeFbYXUJUQbeRY2mKAAV+P6uHRWf9ZjtzNFn8pKfSE7pM5+X
         b3pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dDPDz2ow;
       spf=pass (google.com: domain of 3i77txwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3i77TXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v8si806381pgj.1.2020.12.11.10.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3i77txwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id b9so11766414ybi.12
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:35 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:22d5:: with SMTP id
 i204mr22729999ybi.0.1607712395089; Fri, 11 Dec 2020 10:46:35 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:17 -0800
Message-Id: <20201211184633.3213045-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 00/16] Add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=dDPDz2ow;       spf=pass
 (google.com: domain of 3i77txwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3i77TXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
to be used in the kernel. Google has shipped millions of Pixel
devices running three major kernel versions with LTO+CFI since 2018.

Most of the patches are build system changes for handling LLVM
bitcode, which Clang produces with LTO instead of ELF object files,
postponing ELF processing until a later stage, and ensuring initcall
ordering.

Note that arm64 support depends on Will's memory ordering patches
[1]. I will post x86_64 patches separately after we have fixed the
remaining objtool warnings [2][3].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
[2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
[3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux

You can also pull this series from

  https://github.com/samitolvanen/linux.git lto-v9

---
Changes in v9:

  - Added HAS_LTO_CLANG dependencies to LLVM=1 and LLVM_IAS=1 to avoid
    issues with mismatched toolchains.

  - Dropped the .mod patch as Masahiro landed a better solution to
    the split line issue in commit 7d32358be8ac ("kbuild: avoid split
    lines in .mod files").

  - Updated CC_FLAGS_LTO to use -fvisibility=hidden to avoid weak symbol
    visibility issues with ThinLTO on x86.

  - Changed LTO_CLANG_FULL to depend on !COMPILE_TEST to prevent
    timeouts in automated testing.

  - Added a dependency to CPU_LITTLE_ENDIAN to ARCH_SUPPORTS_LTO_CLANG
    in arch/arm64/Kconfig.

  - Added a default symbol list to fix an issue with TRIM_UNUSED_KSYMS.

  Changes in v8:

  - Cleaned up the LTO Kconfig options based on suggestions from
    Nick and Kees.

  - Dropped the patch to disable LTO for the arm64 nVHE KVM code as
    David pointed out it's not needed anymore.

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


Sami Tolvanen (16):
  tracing: move function tracer options to Kconfig
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
  kbuild: lto: limit inlining
  kbuild: lto: merge module sections
  kbuild: lto: add a default list of used symbols
  init: lto: ensure initcall ordering
  init: lto: fix PREL32 relocations
  PCI: Fix PREL32 relocations for LTO
  modpost: lto: strip .lto from module names
  scripts/mod: disable LTO for empty.c
  efi/libstub: disable LTO
  drivers/misc/lkdtm: disable LTO for rodata.o
  arm64: vdso: disable LTO
  arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
  arm64: allow LTO to be selected

 .gitignore                            |   1 +
 Makefile                              |  45 +++--
 arch/Kconfig                          |  90 +++++++++
 arch/arm64/Kconfig                    |   4 +
 arch/arm64/kernel/vdso/Makefile       |   3 +-
 drivers/firmware/efi/libstub/Makefile |   2 +
 drivers/misc/lkdtm/Makefile           |   1 +
 include/asm-generic/vmlinux.lds.h     |  11 +-
 include/linux/init.h                  |  79 +++++++-
 include/linux/pci.h                   |  19 +-
 init/Kconfig                          |   1 +
 kernel/trace/Kconfig                  |  16 ++
 scripts/Makefile.build                |  48 ++++-
 scripts/Makefile.lib                  |   6 +-
 scripts/Makefile.modfinal             |   9 +-
 scripts/Makefile.modpost              |  25 ++-
 scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
 scripts/link-vmlinux.sh               |  70 ++++++-
 scripts/lto-used-symbollist           |   5 +
 scripts/mod/Makefile                  |   1 +
 scripts/mod/modpost.c                 |  16 +-
 scripts/mod/modpost.h                 |   9 +
 scripts/mod/sumversion.c              |   6 +-
 scripts/module.lds.S                  |  24 +++
 24 files changed, 696 insertions(+), 65 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl
 create mode 100644 scripts/lto-used-symbollist


base-commit: 33dc9614dc208291d0c4bcdeb5d30d481dcd2c4c
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-1-samitolvanen%40google.com.
