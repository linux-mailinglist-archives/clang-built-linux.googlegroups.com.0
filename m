Return-Path: <clang-built-linux+bncBC2ORX645YPRBBNQTGBQMGQE4M7YDNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD12352394
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:23 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id q17sf4241513pfh.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319942; cv=pass;
        d=google.com; s=arc-20160816;
        b=uPbSR3bTklY0v+Hj1bhG7S9faW6lS0BL1Ouf4Rj0SCRBTz5wD/XsUhIpecopjORc4/
         DIZsFGlYECPsUDnbGfsGuAbvBAJDlS69EvFw8gZoGcrrGElhpKANrfCWLqvLj1GmbmU+
         OutN7OdTudQbPS4A7QDNLls0WUDHMkdeE3W2dj91LJIdnAM9CCqNjoMZAv5j1iSmRmoj
         puL2zaCpW7tKxF9/5DO0G59hPrNsgClEKkce/KyXT0/LTO3yYqWhE856YOLVV3EeB0Oe
         43M2UkLr6u8FQFts1TK4FbodmZxUB+EdzJQ0SUkriI3LVTjD2oydFwpPZZfftlpJXmF8
         hqXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=oTY+3N4JdX8KOEm63PvYRNnc9ePO8wQoLYeqUjbHArw=;
        b=YWRLyPpN8pSMMjLo5stXlpfmbQieDr6iyRFmHSq87bP8tyyEqSOH6HWyVWBuV9n3Rl
         krOUdWoGQNAW7Pz5U3mVytiLfi00OAloBzIx9gHGWBrCRCcfshIgJyoYrgqGDWMxgc/W
         IHU909C2t2VSedx4PGfEJq2BjmPSHSn400hQJCrlCdGMEZuvuDWWdhhhot5m0au1crlh
         EIbsBplwGF0O1UKtRv1Ulb6KIOuJ25rBrVqqvSW8cnrTNZaBdUjT2/pRRHpFY22TM8hE
         ZgNg8Vi+qPn+d1+Ape1x4J4sJ7idHq6bUTnAe3KKLeflW9byW/R2fxdp6KcpPFPFD2LY
         PGug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XOFf2TU/";
       spf=pass (google.com: domain of 3alhmyawkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AlhmYAwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oTY+3N4JdX8KOEm63PvYRNnc9ePO8wQoLYeqUjbHArw=;
        b=AjF48CjImm6GtaQd40Cfbcx2plBgHqM9i9q/ckoS91lDjWqWoGLk356XdEfIPEelnO
         PGHKQhIYnX0ZSMP8C19nPKdcs/Tpdd4LR2y5Xog+Nfvgj8XHdMTDCWB8UidHb1+iCW2U
         1r2Td6t8IJf22z58/cyESFMLXY1qbZVx8pBd57hbo8zgQIBUfQEt6oDqCyPKjKtbhHn0
         XYCybHvbI6mKafeRS6eMTqrRxP3SUfmmziI0MsAn4DW+tt1XnqvzjsgvNwk6oOZ3pOts
         BmA0hKlbADK4tiX06k+K9PB6JL7Lit0IdGPr55h0oPui5m7+g6DVK0HnzQp8eaXi4gzt
         b5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTY+3N4JdX8KOEm63PvYRNnc9ePO8wQoLYeqUjbHArw=;
        b=TLE83X2XEMrxDQKswH1wWH78MYaJ0CNIGcc1yTjgcR6dDUNRnXob22ijqbUcU2YJtG
         a9SPsifCqfgUQY1BuJsHMv6BR15h35gPtg7ZAn3N8dQ0kloR6J1xCatKaDswcdUawRkd
         igJlDm4nH96uCy7y7o6+yiAVMvWmZmxiiGg7SOgc7wX6us98gxbTHg6IO0oMW53pMI8o
         h+65FZd30MNDZRxMmvew775RXgLvyARvtsxJcOzKiZCQDcuTakyopI03ZBkoqV2e386c
         vMjIaBbnEPxWR9Bqfu7Li+IvQ3leAsOLsl1cXRe/NO6SbZpKostjgzdXV03oS0TOTpPR
         9AsA==
X-Gm-Message-State: AOAM5338Wway4RXh0yP4rwMhAnoI3kQsLk5olrpWkwD6h9LRmQZ4cKfc
	rrbDxEahHcpkxD/UK1+0WOE=
X-Google-Smtp-Source: ABdhPJxfMn3PzBcEv5AWNv793MFKFTg9vBUktv3QgK5Qw5LSaqI1UaJWxDOZKtORSwygjEWgQp7+5A==
X-Received: by 2002:a17:90a:9281:: with SMTP id n1mr11083471pjo.146.1617319941924;
        Thu, 01 Apr 2021 16:32:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb43:: with SMTP id i3ls3479486pli.7.gmail; Thu, 01
 Apr 2021 16:32:19 -0700 (PDT)
X-Received: by 2002:a17:90a:eb0b:: with SMTP id j11mr10803844pjz.62.1617319939296;
        Thu, 01 Apr 2021 16:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319939; cv=none;
        d=google.com; s=arc-20160816;
        b=Rpq4Qns/6YeP52Ug+wxhLZz2kgTWd7ItgqU3kcLpimg/xvMxB/E1keBKiJKNdYonFj
         EI+prq2D9Ba7gSG7uwVbUpa2Jm4lcYZ3c5sUmiu7HeZscjwiQLSqG18++N+XiOaqq06L
         sjIn+fxRvAPBj2mWgSIc9kUCjMvgT4ZumiPdaceMMdUz7eUOoMzs7p5KCKjhyaQ+qg8i
         ZO/zON7jcrMog21u5iSjQ+q0eTyDTn9ZHEYKbpBckfe8bKX5n60yQDkLlDTsbhPI97Az
         6pGrLI7f5r2lGHqqHuCayoU4ZVKcZ0pAGhDQDhW03s14DMTEifjbLd/8YL+I9hqSeyJr
         gIcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=InV0o2ZlUPC6Ozgp8oy9RGMYSJbRTmoBDGoK3rQjBsY=;
        b=cCqskshrDZTIzmYCi1RJIePvHsEsrCrBNISDB+OnOzMB0pdGPrxYask812I5GPVfIO
         EWneyHd3JHzHgzXK+GJMeEt0Gde7rd6fgXolk5vNLzsbylMAAcLZJxQc/qc1F/+aZqp6
         YIh7OjrL2LapKqMVgyP/IKnpGQoExIRCJa2oZDqmZ+FuyIjGjbC40+d/7R+Ges2pHRrd
         wdwGKJj9Rgkvdr/dikjZDbVHy2GPl0KP/IX6EA3QTe0tukNjx6wIz7orZTlVutibIiY/
         5TF/ftxvTHqgavRda0YTdnd5R1GsOyeE4SvI3Lo4SCEohfHMJ25q0jqRcGa6TDqVpOqI
         9F3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XOFf2TU/";
       spf=pass (google.com: domain of 3alhmyawkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AlhmYAwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h7si465054plr.3.2021.04.01.16.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3alhmyawkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i2so7505517ybl.21
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:19 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:790d:: with SMTP id
 u13mr15103634ybc.427.1617319938477; Thu, 01 Apr 2021 16:32:18 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:31:58 -0700
Message-Id: <20210401233216.2540591-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 00/18] Add support for Clang CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="XOFf2TU/";       spf=pass
 (google.com: domain of 3alhmyawkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AlhmYAwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

This series adds support for Clang's Control-Flow Integrity (CFI)
checking. With CFI, the compiler injects a runtime check before each
indirect function call to ensure the target is a valid function with
the correct static type. This restricts possible call targets and
makes it more difficult for an attacker to exploit bugs that allow the
modification of stored function pointers. For more details, see:

  https://clang.llvm.org/docs/ControlFlowIntegrity.html

The first patch contains build system changes and error handling,
and implements support for cross-module indirect call checking. The
remaining patches address issues caused by the compiler
instrumentation. These include fixing known type mismatches, as well
as issues with address space confusion and cross-module function
address equality.

These patches add support only for arm64, but I'll post patches also
for x86_64 after we address the remaining issues there, including
objtool support.

You can also pull this series from

  https://github.com/samitolvanen/linux.git cfi-v5

---
Changes in v5:
 - Changed module.lds.S to only include <asm/page.h> when CFI is
   enabled to fix the MIPS build.
 - Added a patch that fixes dynamic ftrace with CFI on arm64.

Changes in v4:
 - Per Mark's suggestion, dropped __pa_function() and renamed
   __va_function() to function_nocfi().
 - Added a comment to function_nocfi() to explain what it does.
 - Updated the psci patch to use an intermediate variable for
   the physical address for clarity.

Changes in v3:
 - Added a patch to change list_sort() callers treewide to use
   const pointers instead of simply removing the internal casts.
 - Changed cleanup_symbol_name() to return bool.
 - Changed module.lds.S to drop the .eh_frame section only with
   CONFIG_CFI_CLANG.
 - Switched to synchronize_rcu() in update_shadow().

Changes in v2:
 - Fixed .text merging in module.lds.S.
 - Added WARN_ON_FUNCTION_MISMATCH() and changed kernel/thread.c
   and kernel/workqueue.c to use the macro instead.


Sami Tolvanen (18):
  add support for Clang CFI
  cfi: add __cficanonical
  mm: add generic function_nocfi macro
  module: ensure __cfi_check alignment
  workqueue: use WARN_ON_FUNCTION_MISMATCH
  kthread: use WARN_ON_FUNCTION_MISMATCH
  kallsyms: strip ThinLTO hashes from static functions
  bpf: disable CFI in dispatcher functions
  treewide: Change list_sort to use const pointers
  lkdtm: use function_nocfi
  psci: use function_nocfi for cpu_resume
  arm64: implement function_nocfi
  arm64: use function_nocfi with __pa_symbol
  arm64: add __nocfi to functions that jump to a physical address
  arm64: add __nocfi to __apply_alternatives
  arm64: ftrace: use function_nocfi for ftrace_call
  KVM: arm64: Disable CFI for nVHE
  arm64: allow CONFIG_CFI_CLANG to be selected

 Makefile                                      |  17 +
 arch/Kconfig                                  |  45 +++
 arch/arm64/Kconfig                            |   1 +
 arch/arm64/include/asm/memory.h               |  15 +
 arch/arm64/include/asm/mmu_context.h          |   4 +-
 arch/arm64/kernel/acpi_parking_protocol.c     |   3 +-
 arch/arm64/kernel/alternative.c               |   4 +-
 arch/arm64/kernel/cpu-reset.h                 |  10 +-
 arch/arm64/kernel/cpufeature.c                |   4 +-
 arch/arm64/kernel/ftrace.c                    |   2 +-
 arch/arm64/kernel/psci.c                      |   3 +-
 arch/arm64/kernel/smp_spin_table.c            |   3 +-
 arch/arm64/kvm/hyp/nvhe/Makefile              |   6 +-
 arch/arm64/kvm/vgic/vgic-its.c                |   8 +-
 arch/arm64/kvm/vgic/vgic.c                    |   3 +-
 block/blk-mq-sched.c                          |   3 +-
 block/blk-mq.c                                |   3 +-
 drivers/acpi/nfit/core.c                      |   3 +-
 drivers/acpi/numa/hmat.c                      |   3 +-
 drivers/clk/keystone/sci-clk.c                |   4 +-
 drivers/firmware/psci/psci.c                  |   7 +-
 drivers/gpu/drm/drm_modes.c                   |   3 +-
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   3 +-
 drivers/gpu/drm/i915/gvt/debugfs.c            |   2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   3 +-
 drivers/gpu/drm/radeon/radeon_cs.c            |   4 +-
 .../hw/usnic/usnic_uiom_interval_tree.c       |   3 +-
 drivers/interconnect/qcom/bcm-voter.c         |   2 +-
 drivers/md/raid5.c                            |   3 +-
 drivers/misc/lkdtm/usercopy.c                 |   2 +-
 drivers/misc/sram.c                           |   4 +-
 drivers/nvme/host/core.c                      |   3 +-
 .../controller/cadence/pcie-cadence-host.c    |   3 +-
 drivers/spi/spi-loopback-test.c               |   3 +-
 fs/btrfs/raid56.c                             |   3 +-
 fs/btrfs/tree-log.c                           |   3 +-
 fs/btrfs/volumes.c                            |   3 +-
 fs/ext4/fsmap.c                               |   4 +-
 fs/gfs2/glock.c                               |   3 +-
 fs/gfs2/log.c                                 |   2 +-
 fs/gfs2/lops.c                                |   3 +-
 fs/iomap/buffered-io.c                        |   3 +-
 fs/ubifs/gc.c                                 |   7 +-
 fs/ubifs/replay.c                             |   4 +-
 fs/xfs/scrub/bitmap.c                         |   4 +-
 fs/xfs/xfs_bmap_item.c                        |   4 +-
 fs/xfs/xfs_buf.c                              |   6 +-
 fs/xfs/xfs_extent_busy.c                      |   4 +-
 fs/xfs/xfs_extent_busy.h                      |   3 +-
 fs/xfs/xfs_extfree_item.c                     |   4 +-
 fs/xfs/xfs_refcount_item.c                    |   4 +-
 fs/xfs/xfs_rmap_item.c                        |   4 +-
 include/asm-generic/bug.h                     |  16 +
 include/asm-generic/vmlinux.lds.h             |  20 +-
 include/linux/bpf.h                           |   4 +-
 include/linux/cfi.h                           |  41 +++
 include/linux/compiler-clang.h                |   3 +
 include/linux/compiler_types.h                |   8 +
 include/linux/init.h                          |   6 +-
 include/linux/list_sort.h                     |   7 +-
 include/linux/mm.h                            |  10 +
 include/linux/module.h                        |  13 +-
 include/linux/pci.h                           |   4 +-
 init/Kconfig                                  |   2 +-
 kernel/Makefile                               |   4 +
 kernel/cfi.c                                  | 329 ++++++++++++++++++
 kernel/kallsyms.c                             |  55 ++-
 kernel/kthread.c                              |   3 +-
 kernel/module.c                               |  43 +++
 kernel/workqueue.c                            |   2 +-
 lib/list_sort.c                               |  17 +-
 lib/test_list_sort.c                          |   3 +-
 net/tipc/name_table.c                         |   4 +-
 scripts/Makefile.modfinal                     |   2 +-
 scripts/module.lds.S                          |  19 +-
 75 files changed, 759 insertions(+), 113 deletions(-)
 create mode 100644 include/linux/cfi.h
 create mode 100644 kernel/cfi.c


base-commit: 6905b1dc3c32a094f0da61bd656a740f0a97d592
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-1-samitolvanen%40google.com.
