Return-Path: <clang-built-linux+bncBC2ORX645YPRBJNFVPXQKGQEHMRWEBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B31158F2
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:13:58 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id e11sf731502qvv.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:13:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670437; cv=pass;
        d=google.com; s=arc-20160816;
        b=IzQjQZRAiflQJVpSBTNkM8nPex2tACu+BlCWuFaIZqrhYU3V14jZqxyBHwRojOCXf+
         RvyM7VGO22UMe5Q6paWbwQQjK9EYdfWIYGn0mQ0dwZkTIP5g19i9Z6Kw7J0Whq7d/p0z
         UgbmBR9sjsXTfVCUVVEWLLN6zidrcueKr26r/KLw0IIudE4kMywONFU2rMN5LGekqggE
         5HSW9oadTGU9UdfJCw/sGQj2HsdEytdszQwHcusREBl6sX8dcXgkV9/sn6Ql9NJtRRXW
         zNdjIElYNd6eSigq0mB0ivdyliojKLM8iqmY9ZpB7Bnf9bZo6y1GhM0K1ok3mYNvcPk1
         mVig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3EB8QpukoJ2l08ca4d5gzVgAiI4FoxmsFP70o5c9L8Y=;
        b=VfBNPwm9UB61mRHiO9jgBKX6XkjytILclVsxmbJqp6Yhztq2WDfZ00Ng0ozdZd3Qp2
         c6Z2Et7eB27dFj6UKe7qf5iXTJAFHx7bCg0bN/1f7CCR1bJzrrfQ6mOblCIw816l0TEA
         bbjLHwqCzw+GXr+99c0LF5A6aKUuFxrVy6jWhopDulFsTJY0tqcxaUv8aoxJk1eUcbDn
         FzXSc/tj7zm2L95rViq5Oy7MuRiRk8IMoVP/kEONx5dY4lNkMqgR4k0yCYA0kNgxiiGs
         sF370/FqJA2edHC+Arnh8rTdCEfGpVsfiFlJ+NhU0tP85FZtNUB5ypaWpfqZucs9TcAi
         4DcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d2vclXMh;
       spf=pass (google.com: domain of 3pnlqxqwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3pNLqXQwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3EB8QpukoJ2l08ca4d5gzVgAiI4FoxmsFP70o5c9L8Y=;
        b=HIQRkvmTF66rkigItHfobA081CrhDVtTMnXlAypv/Z/kdLJK5mDYYRuo27e16MHDMG
         NBEF23u8aHTcc6cFE/czTlPpJlWz2PjrI2B5mUWj5X3C152wQVfTWy5NKT9Ox2PLRk6A
         9/uzOZxEDnkjGh3LLMjM8dRVuaF5dYnYOgQYdbW/hv24wLsNnD8UO7yXdnK+xDgnoxJY
         tC++ZOp6R0UZAmDR4nn3BvYdiyv9wOzBa5Niazzly9x4gf7zNJMLZURZbIUP9FRYBxHN
         XcIVteEx2CMhdneW02auRZkIWDkKWasiVDc8T625Nft2O2gsCBhzAHOyWBZ6RbGh/bw8
         K3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3EB8QpukoJ2l08ca4d5gzVgAiI4FoxmsFP70o5c9L8Y=;
        b=DO1k33AJgTJuDzYK9/TxgjSDUrRelnibOYQZEotSl6mlS8SbUuWl8pTQaKsacdz4EL
         /AHUqZbPV1TUQ1Yy4vQIhsBXfbfXaJI/w6XUk/YN+mqhQWESb0YwyNByEcNquy5xt3Nw
         zUpUWj+P/0OXmU5eYjhrzCtBAyG2jGk4cAAAY0dSRWzfvGrm6+jugJs0lnxQ9iCAl+au
         zbcfjrXZMlVfrQZnzmkNVWJcaY74MsKPVqGWs/+E+FR539gwfnBQUmNAuCeMFg2C2+eB
         Zwt48XaRCBEitx+nzo5tofssKJBqPQItc00fJfDzGX6sfl7Fm/LkBbVuXuaUYIZLyIui
         Umfw==
X-Gm-Message-State: APjAAAVyLLXXMIL/HI/Cp+PJfnB5ZiwK3IiRdrYZnUdQjBsa+OAA+1nP
	McDpjcjaLCTkHjDHeLqyHj4=
X-Google-Smtp-Source: APXvYqwyzcqPWUdpNBJyx2n0xlFnAP2kv834RCV5ZWiZ2Ppky27MglCl/WvF4BzJdQR5HfCEqqsU3A==
X-Received: by 2002:a05:620a:15a8:: with SMTP id f8mr15994691qkk.170.1575670437481;
        Fri, 06 Dec 2019 14:13:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6d22:: with SMTP id r2ls2310445qtu.10.gmail; Fri, 06 Dec
 2019 14:13:57 -0800 (PST)
X-Received: by 2002:ac8:2e0d:: with SMTP id r13mr3727625qta.79.1575670437102;
        Fri, 06 Dec 2019 14:13:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670437; cv=none;
        d=google.com; s=arc-20160816;
        b=C3GmFRf+cv9SAIxLrDooVpFrVvfeggj8c9ulBhM5d6Dj2gxc+ZAnjnWRjJEKIdCGfV
         ZgGrbN0IX5+7TASkDPObhm9Sg6jolnE7A/GEOKeudAY9OBAnSBNrxj+AZYiKu6JCoVLB
         tlYBlbJ+ZChkkAoU5CjkawS+n+dHk05v6KoAqGxBKVU4R5sHszAOtHCzIOdLBaVW0LQx
         ws0ZZsXNwJ94wCQEh9iHIrCDt0+qXPIh5mzAEcTqSSggd2H/nPXLtAeSHN165s92h0XX
         ptNDk7TiMWPgPAEsKrUlXNhuCnPq6uWIFxjb+sHKSlAXK3aMLgHl91Yz2/JuxvIiiD0L
         oX7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=P8fbWG/Z5un4zHr4yZo6/sC+j0yFT4/adyKoRQiLZAo=;
        b=iOCKAepZ0pwyg5cV5QEZUDT65ghA1dZqUFgtSqOc2V+44nw9HCh0LQDcBfhY9bi8v1
         dYeUguimD2TlhA7/1iDQOPklJ0jO4pyNrno4/diq1x4oFHB9TH3zrTVZb5nryv2xbYJZ
         fDXc4fCCg0y2Hrv19M7jfRWytA54iksFyFHVfBLzkX4EBuCMjLc4mDQDx/UWxbdIPfrM
         F0N3YoLs72IELes/mbhAguJPQ/8K1lwLsrMsYkYv9jI7erEJHT/7WPQ18jdGaOUy3XZn
         7+ziS/L7Dgu+Fk+4Gwq16WlbsUheqJV2HImFlKxuPSiX674IX+DjBPp+6n84C6/892zZ
         sR0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d2vclXMh;
       spf=pass (google.com: domain of 3pnlqxqwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3pNLqXQwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id 123si625579qkh.3.2019.12.06.14.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:13:57 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pnlqxqwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id p1so3015412pgg.19
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:13:57 -0800 (PST)
X-Received: by 2002:a65:5cc2:: with SMTP id b2mr5940615pgt.171.1575670436052;
 Fri, 06 Dec 2019 14:13:56 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:36 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 00/15] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d2vclXMh;       spf=pass
 (google.com: domain of 3pnlqxqwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3pNLqXQwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

This patch series adds support for Clang's Shadow Call Stack
(SCS) mitigation, which uses a separately allocated shadow stack
to protect against return address overwrites. More information
can be found here:

  https://clang.llvm.org/docs/ShadowCallStack.html

SCS provides better protection against traditional buffer
overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
that SCS security guarantees in the kernel differ from the ones
documented for user space. The kernel must store addresses of
shadow stacks used by inactive tasks and interrupt handlers in
memory, which means an attacker capable reading and writing
arbitrary memory may be able to locate them and hijack control
flow by modifying shadow stacks that are not currently in use.

SCS is currently supported only on arm64, where the compiler
requires the x18 register to be reserved for holding the current
task's shadow stack pointer. Because of this, the series includes
patches from Ard to remove x18 usage from assembly code.

With -fsanitize=shadow-call-stack, the compiler injects
instructions to all non-leaf C functions to store the return
address to the shadow stack, and unconditionally load it again
before returning. As a result, SCS is currently incompatible
with features that rely on modifying function return addresses
in the kernel stack to alter control flow, such as function
graph tracing, although it may be possible to later change these
features to modify the shadow stack instead. A copy of the return
address is still kept in the kernel stack for compatibility with
stack unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

Changes in v6:
 - Updated comment in the EFI RT wrapper to include the
   explanation from the commit message.
 - Fixed the SHADOW_CALL_STACK_VMAP config option and the
   compilation errors in scs_init_irq()
 - Updated the comment in entry.S to Mark's suggestion
 - Fixed the WARN_ON in scs_init() to trip only when the return
   value for cpuhp_setup_state() is < 0.
 - Removed ifdefs from the code in arch/arm64/kernel/scs.c and
   added separate shadow stacks for the SDEI handler

Changes in v5:
 - Updated the comment in __scs_base() to Mark's suggestion
 - Changed all instances of uintptr_t to unsigned long
 - Added allocation poisoning for KASAN to catch unintentional
   shadow stack accesses; moved set_set_magic before poisoning
   and switched scs_used() and scs_corrupted() to access the
   buffer using READ_ONCE_NOCHECK() instead
 - Changed scs_free() to check for NULL instead of zero
 - Renamed SCS_CACHE_SIZE to NR_CACHED_SCS
 - Added a warning if cpuhp_setup_state fails in scs_init()
 - Dropped patches disabling kretprobes after confirming there's
   no functional conflict with SCS instrumentation
 - Added an explanation to the commit message why function graph
   tracing and SCS are incompatible
 - Removed the ifdefs from arch/arm64/mm/proc.S and added
   comments explaining why we are saving and restoring x18
 - Updated scs_check_usage format to include process information

Changes in v4:
 - Fixed authorship for Ard's patches
 - Added missing commit messages
 - Commented code that clears SCS from thread_info
 - Added a comment about SCS_END_MAGIC being non-canonical

Changes in v3:
 - Switched to filter-out for removing SCS flags in Makefiles
 - Changed the __noscs attribute to use __no_sanitize__("...")
   instead of no_sanitize("...")
 - Cleaned up inline function definitions and moved task_scs()
   into a macro
 - Cleaned up scs_free() and scs_magic()
 - Moved SCS initialization into dup_task_struct() and removed
   the now unused scs_task_init()
 - Added comments to __scs_base() and scs_task_reset() to better
   document design choices
 - Changed copy_page to make the offset and bias explicit

Changes in v2:
 - Changed Ard's KVM patch to use x29 instead of x18 for the
   guest context, which makes restore_callee_saved_regs cleaner
 - Updated help text (and commit messages) to point out
   differences in security properties compared to user space SCS
 - Cleaned up config options: removed the ROP protection choice,
   replaced the CC_IS_CLANG dependency with an arch-specific
   cc-option test, and moved disabling of incompatible config
   options to an arch-specific Kconfig
 - Added CC_FLAGS_SCS, which are filtered out where needed
   instead of using DISABLE_SCS
 - Added a __has_feature guard around __noscs for older clang
   versions

Ard Biesheuvel (3):
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kvm: stop treating register x18 as caller save
  arm64: kernel: avoid x18 in __cpu_soft_restart

Sami Tolvanen (12):
  arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  arm64: disable function graph tracing with SCS
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack
  arm64: scs: add shadow stacks for SDEI

 Makefile                             |   6 +
 arch/Kconfig                         |  34 ++++
 arch/arm64/Kconfig                   |   7 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  39 +++++
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |  11 +-
 arch/arm64/kernel/entry.S            |  45 ++++-
 arch/arm64/kernel/head.S             |   9 +
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              | 114 +++++++++++++
 arch/arm64/kernel/sdei.c             |   7 +
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +
 arch/arm64/kvm/hyp/entry.S           |  45 ++---
 arch/arm64/lib/copy_page.S           |  38 ++---
 arch/arm64/mm/proc.S                 |  77 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   6 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  57 +++++++
 init/init_task.c                     |   8 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 +
 kernel/sched/core.c                  |   2 +
 kernel/scs.c                         | 246 +++++++++++++++++++++++++++
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 36 files changed, 737 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 3cf2890f29ab6fe491361761df558ef9191cb468
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-1-samitolvanen%40google.com.
