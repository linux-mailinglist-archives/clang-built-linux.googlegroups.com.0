Return-Path: <clang-built-linux+bncBC2ORX645YPRBB7PTL7AKGQENBNUGAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D69EE2CAE81
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:12 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 185sf1778604pfw.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858631; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7TIOZXNhuXsH45wV0iULP/TZeXq9VzFsW6r2y0G4Q9tIRuwO+qeAginGwNyq4PNLt
         BkYJ+1NeTl/V7GA45WXer0TP2l79xxcZFiNsl9+u3YHsdASmM+BmL6aCEfoQLmJrXM1G
         YlFYxM64xU7BwGUuVOKSxsdiEzWwLKYgXhk3S97sZJkU1++suymIgx5qwGkxLlbhT+PW
         8h0drgsCLJYPyhdHeMJ+jh+f0lXCBPV7jLEaE5JCjeesLfG2mM2uW6ihR+0qSNfLyBPu
         20gEKaiQweaGBWHJswq5gZvbANLcD1VKUpmEvNs5I1yHI8uCXLzuwf9Cs5PvLo8TQ0L+
         dyLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Bf65fzPaBxkVt/6qADR3RhjtgcvRQ9buFQBDE9hkOGA=;
        b=sqrx0ABn3MT6qHz0e/Th04hy1bUQDKIIaWU6p7vtU7IaO1eN28k5v39iuMpkBptcJk
         DuaRUrAn2WCEVkn9d9rEy28m11lg5vYOLw0T91QNCTBz4vV3oV5Ef9tWhmjJ2dHirx4q
         srnUp3kSpp+k3MsJn1hXztzrdYVUFXCI8O1u2yEdeTw36eKQ+N6EkeU4h/NBdi77aIVD
         W9kIldEcg5sfOXhu9+VAi4CrXrfhw4WNSZpGj301Z4pQ4KXlRuU2eJB7qTw4OWag6sBp
         kFwsFpXmEwJof0KrYgWtOK1zi31sHZIzIkLcpxI3Ey+jx5LQbOoClkunu1/yM3p5Q7u3
         v6wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uP8b9Pac;
       spf=pass (google.com: domain of 3hbfgxwwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hbfGXwwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bf65fzPaBxkVt/6qADR3RhjtgcvRQ9buFQBDE9hkOGA=;
        b=rSD2ohJage47DctMk8Ho5uH3Q7tmsORyFYaSc3rtYVLKuUAsS6r8L1jFnieI7nVSgx
         WOL8SOihhv/ijWuh8rs0hM166mTtpAEXYc5nH2p2oTuJbpOhbaFG4qaobuqBaS1ru0eE
         qMbdnmzkCRXJk+XhFjinTRV/bkFnBiO72OU4lCVZk1pIiYi753OlAcKTdFf3glxAkCRk
         RfWjJvnyJrJyGer6uT/dom3IBIKKlwm/0C/ZakVA8nn1ay1HtRciTMHFl1ACbqybjVzF
         4+lDj/0/i8+ctF9WAq8q1eCap8lZhWxupjkitqBTsYxHRal6q4bDvzRUWHthKhKs0K3J
         ouXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bf65fzPaBxkVt/6qADR3RhjtgcvRQ9buFQBDE9hkOGA=;
        b=I+akVa3QX1YQo2E2iC76tBUWJx7O9LVDF5L7TPmZpKXKYa5OGgkQRG8GquC1KCwJf8
         0djWf9xBF4+G7Uq/E9G6b5SS3r05WhTUqw1xgg5zAUUzBXWdacHqmjDnvRVQzUpY8RXH
         sErVE5PXzPrtRVHUOSk6y+jGj+ApBvaly9VU3v+tsQBvqJ+iQcu2bLd9OpIam75uBgya
         +GCnO2kPZvfUBTW0Vk/hncuLqYts4hPuFs+Z+jmMOYn9IT1vh+9XKlFozXWQN7Mcf/ct
         /VOfmYgP6pZ6m0W4EeHZVIZaqDG4471RY/Vr7XceSa2OafJhzeJgU/CGguQDD5hhMlJ1
         +80w==
X-Gm-Message-State: AOAM530DvKGko7J9ehdU/H855C+qNC5yZiixRwYPgxrpK7Xr2iCHrW1r
	zgsuz+mcMQxrf80AT4ToHv4=
X-Google-Smtp-Source: ABdhPJxEHCzvoSWuzPJwAICCWcQ6xSm2ilfcKHe28zv36n+9NVpoEDd/B3SfT7jeKInAZ8zalCQHJw==
X-Received: by 2002:a17:902:ab98:b029:d8:c5e8:978a with SMTP id f24-20020a170902ab98b02900d8c5e8978amr4671063plr.56.1606858631381;
        Tue, 01 Dec 2020 13:37:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e287:: with SMTP id d7ls66968pjz.0.gmail; Tue, 01
 Dec 2020 13:37:10 -0800 (PST)
X-Received: by 2002:a17:90a:aa14:: with SMTP id k20mr4708405pjq.131.1606858630563;
        Tue, 01 Dec 2020 13:37:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858630; cv=none;
        d=google.com; s=arc-20160816;
        b=HKJ2c8OIRsznNCRvJ8RSGtNQ5iBRRrtgfVbdcV8MbH++NE9HIBpkpSzgo8ZIEvNFW+
         0WN6FUY75tRqWHISPQiEySsukTFZV1dymyUiC7oSWN4TVicj61+dzH1ngKGP8ez92xBv
         nICmVRzgjM9DkRwscNaRhfRcfAGS3hAdzh/r43keEac9WMpmuFU1YasO1p+geDGrbBm5
         pWneAqgiKZpzz3XWpcyYbqdiaEl+FwT0gh03pJTKsSORGzxzT0ToVsmS1iueSci8XYz7
         behzqVuBKBtXjJn98d5AM80eVbm02OouseOs61tQ1Gaul0PtQYPz2RSM+XjEEUEuZgyN
         6ytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=/Ydp+qeiWXHO6I7zK5gxOYIhZihlQbGAyMr7COYjNo8=;
        b=duZ6NoPWnJWxIhxkWScrFIVF86eN+IkP49fyCQ4VOyrv8j5LJ3bzH3MVHzJwpzcJsD
         P92l6tgOESoES1fKARKi9vSNSQSlUJfMK4aq4F8wegsLOF/4B4XTi2I6d8kKNunLdK43
         29REELu4Em3aITdXx5h3DxhapmQVsnX8BBROW+CW/BAXU1B1rFSQm3YyDfOM3L8bKOaz
         ALinL2u0Koo9442XvVRW7I6y+YHLPZGe5eKrpU6hXgNQO984PlQrLP+huDg9eiWdknFv
         mmhqDBOh7xpMxwQtWBc8QocTTgqxC5KZAfplehL5Z9BdF/lNrDK4ADVIystfCgRuqI/z
         gRfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uP8b9Pac;
       spf=pass (google.com: domain of 3hbfgxwwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hbfGXwwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d12si57415pll.0.2020.12.01.13.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:10 -0800 (PST)
Received-SPF: pass (google.com: domain of 3hbfgxwwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id w8so4010596ybj.14
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:10 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:abae:: with SMTP id
 v43mr6680681ybi.397.1606858629755; Tue, 01 Dec 2020 13:37:09 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:51 -0800
Message-Id: <20201201213707.541432-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 00/16] Add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=uP8b9Pac;       spf=pass
 (google.com: domain of 3hbfgxwwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hbfGXwwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

  https://github.com/samitolvanen/linux.git lto-v8

---
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


*** BLURB HERE ***

Sami Tolvanen (16):
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
  arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
  arm64: allow LTO to be selected

 .gitignore                            |   1 +
 Makefile                              |  45 +++--
 arch/Kconfig                          |  87 +++++++++
 arch/arm64/Kconfig                    |   4 +
 arch/arm64/kernel/vdso/Makefile       |   3 +-
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
 22 files changed, 688 insertions(+), 66 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl


base-commit: b65054597872ce3aefbc6a666385eabdf9e288da
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-1-samitolvanen%40google.com.
