Return-Path: <clang-built-linux+bncBC2ORX645YPRBXUWXWBQMGQEMHLE3UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EC3358C28
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:28:47 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id q14sf2836531ybk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906526; cv=pass;
        d=google.com; s=arc-20160816;
        b=d28F6p4/3b588Eeek+mtdGV2fRmehsEMkW8KdBmieyNp0XxM4P1AlBG7w3w+Gl8xvs
         XykwgRgfXT7yhhNXoUAaY/Dqxmxt7kkwL1WkoxF7WV8XuWYUlSsCNbG1QjM4vFeEXV9f
         rbLIH5vJ9OBtuIa+dJ2Di514mTBdOM32LJ51dFBIONCv7iM2p1sq+5dYeLL7mBrSZuUw
         gnQ6IaRvdwpc1ekZhTY1ydldBdCNBZww0FCZuqGqBr65E3KGz500XHh4Mf7dG5q0cjK2
         LynWwiWQ5bf4ELUm33rtMNQlE3Qh60wcELvyagbkpLrZUHAwm8bmCeSiFdoTE8gohK4l
         h9pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=xGaOMnqSuUUj9IqaGnRNfLmeicLXKU+JIg+fYRynQPU=;
        b=sDwwjusiZOb5u1CGo6O3Z7bLZ1XK4Eogyg+dj8REsYEAc3OBcepNva/HY43p9hocZG
         vtMXcsYMYDOPIvhQHocxO0hDbkJQ/oN3ocvfIFLw0I2pI8kZ+ApVseWD7qJzyWc9/Bso
         s7VP49scApbbRttE/+XS3kjCKAH7QbJmMGIxVDCE4nCmc6uar3trS8XjMJi2y0Md0YfK
         gOWhvqCTb++HKg0uCumhW2Ut879w0T2TA2nfBopZrqWmq/3cJ9yn75oVQOHk9czGfT+C
         vv1Wsj6Pm5fCh0rD725E4Lt/1vv8FlLPSb+pcsNNMsvap1ds1+AWtITQMvAbG+DsvKuP
         QvfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JBj3h6xq;
       spf=pass (google.com: domain of 3xutvyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XUtvYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xGaOMnqSuUUj9IqaGnRNfLmeicLXKU+JIg+fYRynQPU=;
        b=T3QJjt2uAYiWTxQMpBbNLNbbkQRoK1KROpKKD29WmWVcoyVx1J4ovoqnUl2TVaZb7y
         NtWzwbAPgKy0d9+YpHnEPoZgQf9D7DKv07sKPxcUIFxGBfKF/AB+nNYs0Sbg3PcGTCfX
         u2iXwGI2z/M/mIZxgWvDlBV59lx5QGQ9S9d99X2JYb8/6miVlh2aorEteEm5jnqe+tJW
         Tg1N8+26EBRZYKFgM6cFch6ErE4mKmvZUIdGCoouJyuvzz3dRteT1FahAheH5KNo47F8
         RXRHOfD9IbgQAg+9s7snYB/2TH9OSZbSlAdAZnuJrp1MTuDdh7RWSSc4TcyNG43pyer/
         vtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xGaOMnqSuUUj9IqaGnRNfLmeicLXKU+JIg+fYRynQPU=;
        b=uWjKoX3f9QFGKWOnpFqu4py3Z4dMi4xInqGmRgM3mVAvtjLSeXr7Uajc0/O5bNVNFl
         h+yLBKwC+gCRBKOJWisPHTJQ+v2I2B3Z+IvNan+nqrBsvkgiAGRZPdu08e2uhawkEFgX
         oQswntFH0L3lhvmvYdb32JFX/7IrPKFkdmllSD/yxClyhJdUayp15710gPGcFhkYkOdi
         UoO5Qdfjqj4Py8oFpTcUOR+UEzb+xqEOhYHEfanKKteRtRIZ2PQt/W/kcstTgnVRbH+V
         bwVJTQ6EgK15nIuaO8255nLDq9gJ7wdUILE8vaWmv1O2jfbyQvu748LaZpCzNTsBehD/
         44fw==
X-Gm-Message-State: AOAM531/cFV2zFF/BhLmFouwH7MiN2JttzvhoaR73UzMmWjbj9tAw0HG
	UEcP2xQDau0o+Ux8/EKhqF8=
X-Google-Smtp-Source: ABdhPJyVUvHZvff913i7jnYSbFoW8Os9d0q4+r+AUWqR5OM0Z5z7Eixhj83rQBkIzAycUdIpswY9Ug==
X-Received: by 2002:a25:bc0a:: with SMTP id i10mr13859437ybh.43.1617906526263;
        Thu, 08 Apr 2021 11:28:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls2876972ybt.8.gmail; Thu, 08 Apr
 2021 11:28:45 -0700 (PDT)
X-Received: by 2002:a25:1689:: with SMTP id 131mr13379712ybw.375.1617906525711;
        Thu, 08 Apr 2021 11:28:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906525; cv=none;
        d=google.com; s=arc-20160816;
        b=HdteikPm6g4BRrBTBApx+HwhPCkREs00V31tKk0+UJzE88qvDGwIEoz8PDj/YrgStj
         HWIoFri9rRlA4E3+/iLxSza5pQyYWSWSFOfZJbDHQc2rUEjk5QOAgNBrNGVPbZEAuuGb
         kqdfJbp64IfKZ5sFEL/g80ehRTV4dq/Y09C+52EBsqGVQXWWZs43gmS5qj9cKOpUXy1n
         CtAh70vGhgTYZzI1xNn2kD41nocGCqasWwUstWdXr4TLD8QkCFQ0OfXrKhCnTFWNJRad
         ScnL2vzrmSkmjZSNCoHabVG/wMkaSTIK/+JTrKdQ+EgMg0PufW1NpM5Yhh/0LsloRC43
         Pypw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=hFbfrV6NLQcaUFBI7qoKubPMd6hwVRmqL95jk4+jyxc=;
        b=zVADt6fs4WTlYKCn70uRuTHMAHTXt+Z+RIyzNYka18ovmTBy7J4T+Jjn1qF4amPUhL
         jiUOv1xNVHO/4wAVAL+eS+7uOzAw8ujEEEPSexbjZZCYV5eYU3cuu8I/fgCy50kpo/69
         6160CtGCwBEzSjenWnrHrQJBh6TVqBgdKmoeQGwpKPaHMTu4TZoWvBzhi+oJyrUUypcK
         +CBzLsuu0ckjsl6CWvlhBWjZqVR9GItM3eeIwcQY/YwuP9mbqqPkoUk7UPEMnCPu+ElC
         oKPbrxRQEDuhSGpqzulvEd06bwSL2BqDQxjaviw9o2cJ7EVyzfppoWgGWKoxFBLw8xiP
         1wRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JBj3h6xq;
       spf=pass (google.com: domain of 3xutvyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XUtvYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i10si5636ybj.3.2021.04.08.11.28.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xutvyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id z39so2799361ybh.23
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:45 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:31d5:: with SMTP id
 x204mr13666827ybx.3.1617906525373; Thu, 08 Apr 2021 11:28:45 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:25 -0700
Message-Id: <20210408182843.1754385-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 00/18] Add support for Clang CFI
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
 header.i=@google.com header.s=20161025 header.b=JBj3h6xq;       spf=pass
 (google.com: domain of 3xutvyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XUtvYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

  https://github.com/samitolvanen/linux.git cfi-v6

---
Changes in v6:
 - Added temporary variables and moved assembly constraints to a
   separate line based on Mark's suggestions.

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
 arch/arm64/include/asm/memory.h               |  16 +
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
 75 files changed, 760 insertions(+), 113 deletions(-)
 create mode 100644 include/linux/cfi.h
 create mode 100644 kernel/cfi.c


base-commit: e0a472fffe435af52ea4e21e1e0001c5c8ffc6c7
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-1-samitolvanen%40google.com.
