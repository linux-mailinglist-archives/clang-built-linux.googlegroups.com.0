Return-Path: <clang-built-linux+bncBC2ORX645YPRBPGSSOBQMGQEGYSGIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 2396F350910
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:26 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id i1sf524723uae.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226045; cv=pass;
        d=google.com; s=arc-20160816;
        b=gaxItNYJCbq9DqcYgben3aH318GkT13gNvCOcxkeBM7o9JH0xmjW57A2zxX/Wb2XR1
         YJTea75b/IMSH+17EBnY9s1AxYg1lZVm4Q9oQd+e1KfNNTjteCkANuECaTHsUdHXV2l0
         PWxADTdFHaxFZ1OSOSxZMEtOp3igqdhXU4j2wxqkkXzw28Krxp8gRjxWiy52IXjP9Xyk
         4f4XX8O4UjCxyke2DfdLdgcEnGN4wS37UPV+39pkcSwS58AHquejZ7FxwD3kOLBgdeuM
         CCYqceYi8fABLOhRKl9WACfeutnWZe+Dpwx8Xo40QvWK7oSoEpKDwzancvTwC7S444vy
         cbDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=zW3bsJBL7ixzRYn+J4SRVGnp33dYfHV9QEipkg6LLyU=;
        b=fHY+hDDhyFJUIlYkGCCWbRqJO5UIYaJyBeNLyo6pq59eP3qr6sLKtNJQWOQlJ10cDc
         rnOYmxldrJyZgdkFfSls11HOEykQ6whpQutRqwgnznxgVs6ywFRNw4In2PREIkVS4si+
         qs9VdQyU+z+NwJxe124jdoxQPL9asN1j9X6JMGD6qr1oy0G/yxxLHfYBw70IKo2cqW9B
         Ix1F2K6V9VXRVohCcKozTdPPoo8EY675Ddc1FhRsDQyaPAfqGqGN0D8E8Um1L0XVmq/M
         MxBv2m574FtwrfWql29fCAlKhnVTZaT74c+izs9vcCxkbW+n0zG2e5nYCK818HMF9Zgi
         Tpjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IImtgBJ7;
       spf=pass (google.com: domain of 3polkyawkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3POlkYAwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zW3bsJBL7ixzRYn+J4SRVGnp33dYfHV9QEipkg6LLyU=;
        b=AVyYq79SzS5WZikKxxpHPzg3SYQDBKgp/imV9ixGgWvaIolVzKfgaUL7i71wSFeGOu
         nL5HKm3/R113n6MEQ1U5k4RDnxVywEGhnd7KvxZXW4xHj+6J4SjgxJUWmOMORnQzXcpi
         ewWlkb5u5QRc7VRVI9wc4y2/3LDoDFpmBr5b66JlWGxBKqTW4RXpZ3r1Xfjgn0b+91Y4
         1eoXtl/okBmyL9tfn1Gld3OlFJ8ZTikJsQeDKa/1dg9fhFY3SYjnOeOSL7hYtHAd0VWl
         WhxWj2ZM6S6O1dpZFVvyX7MAPn8uPCTLhnpzMVguX7fIOkd80+ED4qvxi3hpqNDSnMcn
         BXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zW3bsJBL7ixzRYn+J4SRVGnp33dYfHV9QEipkg6LLyU=;
        b=q/bXZ3M0G6BXkI17syEXkn1rU30vw7LqWplCQKi/fiCOAaU+A4cOoZ81UQwCYtUbMX
         M9ukchAsa1IegIsHL3KJrIya/vrk5AOcWE2Wd0BRTgM3DhbhJMRNL5MSXYSILYmkrqYg
         GrdXEEYsSS14BbCr6qBObz969a4bgZAOHdM0ct/0uKefFstOJdTY/BFJIApEcm12MgMU
         s3Te7xzbNyBo76W+A42Cp1Bh87I8xEbD4I5UWUxD+QzomMdzedgBFmtQdj5O671RcYpp
         XQmSNZKFMVcSs2WbVJs2w48j/3YiZERo3Rb5H+4KN3E9YrntkzHfg/Ve45odXw/+qDVm
         YoxA==
X-Gm-Message-State: AOAM5338ZWoDZDd2+NyJWUjtJqIAY/znXfeKQM6xH4e+MimgPsQ0bRtP
	zxySpSSjgNCvnjuRkspmhP8=
X-Google-Smtp-Source: ABdhPJyrcXuj7tna9cCg9310SPvpyPjyrbI+rvx1alImWZxTlmFb+AxpfeQ8IEKcLGLGBUwq/pcxvg==
X-Received: by 2002:a05:6122:11a6:: with SMTP id y6mr3640493vkn.6.1617226045073;
        Wed, 31 Mar 2021 14:27:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c89b:: with SMTP id n27ls201975vkl.1.gmail; Wed, 31 Mar
 2021 14:27:24 -0700 (PDT)
X-Received: by 2002:a05:6122:889:: with SMTP id 9mr3571271vkf.10.1617226044539;
        Wed, 31 Mar 2021 14:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226044; cv=none;
        d=google.com; s=arc-20160816;
        b=uLAKDTdG9vwB+oDuoSMFcwOtZnCbvChmeOkpMpB4uPOTS0ACqt+1hbQnzwXYX7ZTpE
         MwbLplf4sbXybwH2vh+hACC4sKyaTIo8u1b152QsdVMwPYPVB9JX0DRDjIAW+bqhtB8S
         Cr/8YOfLzadGshHrqIbnj9tKZ/NtudrU7e01OfgvBloW6vm5h2jYhRfHSsfKp9rkbSlJ
         2AIyETOTvLOJzEYmXHsN/KOcGBaQChGSiP/eLz2TbIZ9kwXWLq0hyf7aVBm+Xojp71eO
         NMtaNazGgbf+t1GutevrNeePVhfe+12ey2ZIo9M/npxQI30P0gvWuzt4wavuFYyaeeuU
         5gfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=yTP+LjBFDmYzEkZN/ojSVPqO+bAHNBu2aAmdwQC8Sq0=;
        b=RhoNNZFvUHmPn+V4WrHRfl6Bjerdt9Bro785OIq5wyU4p5ujupkk4CduROTMXGS1tr
         GU1LDsdnt12Q01tt+mdvIrSmzlnrVuuRqNQY1LYWVirYlAPxmKlJHa4cJRMLIdNNzFHs
         ADeBEqm6vJV7NUpiFfKpViTlhe8kGcI7lBHY/UwznD2hFE/MJgRN6bOjbiUXduhes2pn
         kDVFT9sDCajjdqwe120tqHfN3dTF8vBaE98l/DjAjrqQF7z5tTgjUTi/4Wb/TSCIHWrs
         063/75ZGOUTtT/kuhBv9+v6ODZCNgYYAfbYAbHxbKBZTwOCjgIeqK9ek+aCAYGdhkfab
         m3sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IImtgBJ7;
       spf=pass (google.com: domain of 3polkyawkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3POlkYAwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v23si236572uak.0.2021.03.31.14.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3polkyawkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id f18so748364ybq.3
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:24 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:2386:: with SMTP id
 j128mr7405063ybj.284.1617226044066; Wed, 31 Mar 2021 14:27:24 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:04 -0700
Message-Id: <20210331212722.2746212-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 00/17] Add support for Clang CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IImtgBJ7;       spf=pass
 (google.com: domain of 3polkyawkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3POlkYAwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

  https://github.com/samitolvanen/linux.git cfi-v4

---
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


Sami Tolvanen (17):
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
 scripts/module.lds.S                          |  20 +-
 74 files changed, 759 insertions(+), 112 deletions(-)
 create mode 100644 include/linux/cfi.h
 create mode 100644 kernel/cfi.c


base-commit: d19cc4bfbff1ae72c3505a00fb8ce0d3fa519e6c
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-1-samitolvanen%40google.com.
