Return-Path: <clang-built-linux+bncBC2ORX645YPRBINO7H2AKGQELXHKVUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A305F1B1B91
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:14:59 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id ev2sf1808583pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:14:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435298; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+ujRKp5AUE3yxPPOsKQ2oKbQJEld3JM3YTANvMJ4hcHaJTsiOeFKf1OTzrfJppcnc
         96gYnY2PLd8l9nKIHz9gOA2e79Bcg49OjF6vBlkPchebYccQbZzJIWDv2n+GFHHKYMZU
         KTYMDxYfH4CSNxTAJpf3FOZpPh8DvAQscngYIcHNHS+cUn26Na3cKrcjHGOLuvurzcCX
         A9NV3T9IyWkyqB7qEj7K3iZj6OA5luzrxlnof+g0IOICsH/Zf8B7NGb1A53PtU7P0HWo
         S1zYq97s13sOo4SPS8iKSNVXonshGPlK2xh+IySmjV8eJWGO3Lg4e+lbf2wGzfNwYCNf
         zw2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YEObszIL3yD076rDf5XPvhTp0IrGVo5nDMztR33qZoU=;
        b=PlbQLDwkB8lUMK02GSjesn2jlykl4lU1RNMRixI7fikt69uRW9vo+CTc1szQtU7ag0
         qv4HsB509i4k6m/qefO7Ui46zuAdKZFqRyxyiW8jQYzAP9OgAh9gEQyEJ+4k5F/PgEiW
         W5NbGogjyQl8uMfGWAUMM3pHXxVXt47e6zdgpZ9fGlnkVcj2iC7UltMNs+UG+1h1WlRD
         ZdMInMivmbfFyjniMDfKUPJJtOaMaPl9mR4J154r7HAkagNZD+ORYRpAq++rOHST14JH
         lMn1FnbRqTMmU2RfKYm3IHO95pOvxxll97VM+Q054KKbmzPmus3ixGtRoppjS7Ns2eOg
         l0aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jKUvEIXK;
       spf=pass (google.com: domain of 3iveexgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IVeeXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YEObszIL3yD076rDf5XPvhTp0IrGVo5nDMztR33qZoU=;
        b=MuwHK6l4yhpU7rdJQFDxWuSxi/s2Y3wdX9B1XoeZKTzBvFFRPPRviW/T9Hqm/07FiA
         UV5kWoCVeQj0BEFfmHKj3x8OBtfkyccDfGk7EOqQLnNqd4zrUbK1ttFG0D7uZKIF/q2R
         EPXFCZOzqSDCC7yIb6FKlgRmmAhitT/JHH9lhTFr5TPp4fTJ0y+QcJP00VFcVFiHvjWb
         wcl3aSC81pfeq1iCzUlX0aoSXbUgCfgSVLdZgB1TA7RZcRE7wUIkFU7QJ7BhnkTva8kc
         DJPAdNTR5zRG+fmCHtyaeJ+xZ7fAmuyKt1QZJsDxFYLidilUWSbJQhjluDapb1DOKDds
         RavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YEObszIL3yD076rDf5XPvhTp0IrGVo5nDMztR33qZoU=;
        b=LeTMAzv5wgMICG4Jm+068KXjzd1Xd35fkguDrFLID7542VXzgGrkwninu4alSqXprf
         YnmHziGqsMwcwirkEk7BHVxkkvDEszcWgoCfZ6nGoMTbdkMNf/agLXxQRy4Xt4KzJhFj
         YHfoaw+Z32BvN3yXA+FZdA6yLFzQ9SW80USI3vLD4ySza+pC0J+QB4fQHN360UbcEjfD
         caQHwWloysLq3Gj0jhkGH7hxJl4TCFFg52JMgzNBTzC7Cb6z6O8Bcd1QPTxBl1/I5zij
         icsanLJaZje9WRohbU1dr5rH7Ym6aMHCERPsAA6mkUrX2V6MfvVFu7SUQfBdPKddlxyw
         4jdw==
X-Gm-Message-State: AGi0Puay2jB/kE4dhLzsUYmUduuOfLB/tuDsvABRTyQWHXNjvvHfXYb3
	3Y6MbRqAqH/d9RgKrALsCRc=
X-Google-Smtp-Source: APiQypJJIkCBpomrWsHGydxd+TCAkr2qKTqepMHy1YA/BahWyyIv5QxfYAuYHmoF1PDtdcHuB+AWbA==
X-Received: by 2002:a63:4f1d:: with SMTP id d29mr19428976pgb.112.1587435298181;
        Mon, 20 Apr 2020 19:14:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b58d:: with SMTP id a13ls12442858pls.0.gmail; Mon,
 20 Apr 2020 19:14:57 -0700 (PDT)
X-Received: by 2002:a17:90a:ad93:: with SMTP id s19mr2880884pjq.73.1587435297497;
        Mon, 20 Apr 2020 19:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435297; cv=none;
        d=google.com; s=arc-20160816;
        b=jIwFTwct0xje7O4d32xQgGsOq5xC6u5LruxH6aSBUUSohcsmCvCL7/oGoelds/qsHL
         Gjtg2lJnouXqY0m1Q2ofWZD6JqDliOmpjy0dAEfs3LPMsd2t9ii/KuWGrQU/lJtGFUkN
         URIX+CQRFFIxXlWZ85oPbf8SQ1n1PzJ+J/ImdpHhIR2pz5WjCQ5h+hapBeTAsQLtsopp
         BKE9HhiI0L7LafDtjR1c774B3HnlQVQS8iwo1fAkm4nVWMLORpjQfjblJTspjrnwYWL0
         58mn4Fmwu/9rZKiF/VfNqid+D2oz7AkbUwZnI2OAr+D5EIV/wXAJo8PXHsXjxAORaZWC
         MQOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zO2dq0dcbhJ815P0MdiGU5l5HoFPErQL7jVCuXU15vU=;
        b=YUTsmitaw9YFITL45eMD3Z3rVmWRyjosyTgSIQ7838/Zj5cTZE/dLKl6nyqrUn5wJN
         DzjKgL/Tlmyl8tU+Nq/kzWZap5dVIqaML4ZQYeCMzif9q1MaUaHHv6e+/+OZuMfrySIv
         DQhXL/32Euz0xy38vwTzZry6vB78aBc5Hgyx9pFzV4l+9m7WfKkNUYNhuSNpnKn7Ehyt
         m3Xhrzb7Z88Sq+waRryrtrggYrP9fvJLqA4oGEOpYz1uYim+UuFRB2tQhErr2UAGvT/d
         NvUQjS7BDCyz1WiU4ISeRIoTTkTKj0hzIo4xav3C/R5KGJyGXLvVPIS0/lPvB9pt+MGi
         +f5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jKUvEIXK;
       spf=pass (google.com: domain of 3iveexgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IVeeXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id a13si32504pjv.2.2020.04.20.19.14.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iveexgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id z2so1830207pfz.13
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:14:57 -0700 (PDT)
X-Received: by 2002:a17:90a:fc89:: with SMTP id ci9mr2810302pjb.140.1587435297066;
 Mon, 20 Apr 2020 19:14:57 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:41 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 00/12] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jKUvEIXK;       spf=pass
 (google.com: domain of 3iveexgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3IVeeXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
memory, which means an attacker capable of reading and writing
arbitrary memory may be able to locate them and hijack control
flow by modifying shadow stacks that are not currently in use.

SCS is currently supported only on arm64, where the compiler
requires the x18 register to be reserved for holding the current
task's shadow stack pointer.

With -fsanitize=shadow-call-stack, the compiler injects
instructions to all non-leaf C functions to store the return
address to the shadow stack, and unconditionally load it again
before returning. As a result, SCS is incompatible with features
that rely on modifying function return addresses in the kernel
stack to alter control flow. A copy of the return address is
still kept in the kernel stack for compatibility with stack
unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

Changes in v12:
 - Removed CONFIG_SHADOW_CALL_STACK_VMAP.
 - Added CC_IS_CLANG as a dependency to CONFIG_SHADOW_CALL_STACK.
 - Changed SCS_END_MAGIC to use POISON_POINTER_DELTA.
 - Removed the unnecessary scs_set_magic() helper function.
 - Moved scs_task_reset() and scs_corrupted() to scs.h, along with
   __scs_magic() and __scs_base().
 - Removed a redundant warning from memory allocation.
 - Removed an unnecessary task_set_scs() call from scs_release().
 - Changed the accounting code to calculate KiB instead of bytes.
 - Replaced the lock in scs_check_usage() with a cmpxchg() loop.

Changes in v11:
 - Rebased, added maintainers for kernel/ changes.

Changes in v10:
 - Removed an unnecessary <asm/scs.h> include from head.S.

Changes in v9:
 - Fixed grammar in the Kconfig help text.
 - Changed Kconfig to allow SCS to be selected with the patchable-
   function-entry graph tracer.
 - Changed the EFI stub patch to not filter out -ffixed-x18, only
   SCS flags.

Changes in v8:
 - Added __noscs to __hyp_text instead of filtering SCS flags from
   the entire arch/arm64/kvm/hyp directory.
 - Added a patch to filter out -ffixed-x18 and SCS flags from the
   EFI stub.

Changes in v7:
 - Changed irq_stack_entry/exit to store the shadow stack pointer
   in x24 instead of x20 as kernel_entry uses x20-x23 to store
   data that can be used later. Updated the comment as well.
 - Changed the Makefile in arch/arm64/kvm/hyp to also filter out
   -ffixed-x18.
 - Changed SHADOW_CALL_STACK to depend on !FUNCTION_GRAPH_TRACER
   instead of not selecting HAVE_FUNCTION_GRAPH_TRACER with SCS.
 - Removed ifdefs from the EFI wrapper and updated the comment to
   explain why we are restoring x18.
 - Rebased as Ard's x18 patches that were part of this series have
   already been merged.

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

Sami Tolvanen (12):
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  scs: disable when function graph tracing is enabled
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack
  arm64: scs: add shadow stacks for SDEI
  efi/libstub: disable SCS

 Makefile                              |   6 ++
 arch/Kconfig                          |  26 ++++++
 arch/arm64/Kconfig                    |   5 ++
 arch/arm64/Makefile                   |   4 +
 arch/arm64/include/asm/kvm_hyp.h      |   2 +-
 arch/arm64/include/asm/scs.h          |  34 ++++++++
 arch/arm64/include/asm/suspend.h      |   2 +-
 arch/arm64/include/asm/thread_info.h  |   3 +
 arch/arm64/kernel/Makefile            |   1 +
 arch/arm64/kernel/asm-offsets.c       |   3 +
 arch/arm64/kernel/efi-rt-wrapper.S    |  11 ++-
 arch/arm64/kernel/entry.S             |  47 +++++++++-
 arch/arm64/kernel/head.S              |   8 ++
 arch/arm64/kernel/process.c           |   2 +
 arch/arm64/kernel/scs.c               |  21 +++++
 arch/arm64/kernel/smp.c               |   4 +
 arch/arm64/kernel/vdso/Makefile       |   2 +-
 arch/arm64/mm/proc.S                  |  14 +++
 drivers/base/node.c                   |   6 ++
 drivers/firmware/efi/libstub/Makefile |   3 +
 fs/proc/meminfo.c                     |   4 +
 include/linux/compiler-clang.h        |   6 ++
 include/linux/compiler_types.h        |   4 +
 include/linux/mmzone.h                |   3 +
 include/linux/scs.h                   |  92 ++++++++++++++++++++
 init/init_task.c                      |   8 ++
 kernel/Makefile                       |   1 +
 kernel/fork.c                         |   9 ++
 kernel/sched/core.c                   |   2 +
 kernel/scs.c                          | 121 ++++++++++++++++++++++++++
 mm/page_alloc.c                       |   6 ++
 mm/vmstat.c                           |   3 +
 32 files changed, 456 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: ae83d0b416db002fe95601e7f97f64b59514d936
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-1-samitolvanen%40google.com.
