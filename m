Return-Path: <clang-built-linux+bncBC2ORX645YPRB57YWHZAKGQEU5ZFW6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D97163808
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:24 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id r30sf10042513qtb.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070904; cv=pass;
        d=google.com; s=arc-20160816;
        b=b7eF50I3pJgyoTANmokzsyYOUUafKLZzxHV9fDDZkV2yuuDBEw/gb5HO7pswRkTECi
         cWr2ICLTQa2VkZ6ccVMwnEhwd4FhCPEJah5S8ewCsk6a4AMymqPauOctXsPnZwWOZVI6
         T7+xscrYievwXP+avEkVwvWEAj5mJbp5s8xAlZNgOKYyUM3JYa0OWU/wS7ZY1AM5koL2
         ySFNF43Gb1luKX0PE6hHXbsfsgbVDBhqO/AMoHo72LvbeDLNe/cDOK49lbgm4CjbPIoD
         ObED4vJPdJ09IdSw1RDZC6R27G+qWOoRpq6wDH70fo7mWi/IQRNVjcwzoQU/wvgKBttv
         i7/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=O/F6wisVAzqG9RUjN3y63CmcNIW4LiR3khfbvUQdNf8=;
        b=zl5TBgKWQvJRNSdWkNfkzLWRl6eQaECPg4Oq13rN2M0zVxOsT8wA0E8xXLqnUPQ1xe
         2hQm98j8kpVx3Iu/SOfhKtzWKX6YqVk0U1eP+9Pu28ORACOb0aYwTHR5uAn6DeQ2stYQ
         fUojzwjOPEU+IKn4RetvgrGcuffPzW1QgUTW8T8r+pPUNQqJWDFaMpnevbpPI7hUWqQd
         +nCUwgWdYZxZIBqJQgbkNt/xwnUfGadx9lUPyle6rK5KiJefF3ZpRk8Eq3kSmW2vlWRl
         pzoEbMLpSpmzDbx2dep58T9o0j6POyYzn1lEoKylXxxdXtK5ms9mftUS++Y1KhHRS/Ug
         XbwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sv1LRMr2;
       spf=pass (google.com: domain of 3dnxmxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3dnxMXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O/F6wisVAzqG9RUjN3y63CmcNIW4LiR3khfbvUQdNf8=;
        b=NtDtutQz0waG00g5PVdDwpMiTOI78b/FDaoan4MaS8tS7csvQ0jok2IFOqNr+oNslO
         IATg59OdnFcyzJS018qHoOery2gzRVkTn40suNLQbxlAGWLT3nv1MQd274voaJsJ9RbO
         zN/PmJi8jUAdIJRbx6Igkt5gzR0dbnb0mytfhfG62ZjNJvCJPb05nQdTuPR4xh+cDETs
         pwSHJn9P4rKXoyRk8jh24anT4ROG8gQnGA1c4OeyrNFTTlsr1jtVSHavoVgLS7SDr4WD
         WR2H9Cx68RVX2RZkIy7CfxCQVD/rw/tjM+dk15tC68NKZD0SYnPbDYepniECL4e3g1Ui
         arBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O/F6wisVAzqG9RUjN3y63CmcNIW4LiR3khfbvUQdNf8=;
        b=leX0iNVTxmqeSL/HexcxTYfdvhtY/lv+O70u96hJCX5J4gV7xvJp64niIeWbaUMt/s
         2iLS9uV3tK1u2DFbamT8pDv84lYm8TORACoQxKlRqmKZYFRm75aUHIuaRyAlTM4S2D9n
         Q1OevahR9rQhtoJQZ92UeXyU/qY+zh5xEbWXdYAUCCvLz1pgnEwRGHKrF0CzhJ+H/Cbs
         W4yXkwFUlMaZj9l/5wz/hU4jDO75AO2W0l8RewC195gC/qx0mTbEWW+LDhT5MYrkT9yv
         W0X2zc8AfsxNHM1nTOBl+GGUnTpS8HNNlQJEiLRZ/sdZL3CpCgmPfU7bYnWhL76Yy+qF
         /TEA==
X-Gm-Message-State: APjAAAU8bJ53evJVX6xc16nKHEJCO8h+OIwWCl9p5oc5drKPV40dDr7+
	MwXgBBak/rTdy7MG03OtCjA=
X-Google-Smtp-Source: APXvYqzhTwqBSzPlp95K4maIn6FZs3ZMQcwdUUKhbGyoJfFlTJSyO82bDYOHpJgTgLTgSDIQ7hQ50Q==
X-Received: by 2002:ac8:1937:: with SMTP id t52mr19144260qtj.215.1582070903821;
        Tue, 18 Feb 2020 16:08:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:74d:: with SMTP id i13ls2485684qki.4.gmail; Tue, 18
 Feb 2020 16:08:23 -0800 (PST)
X-Received: by 2002:ae9:eb03:: with SMTP id b3mr21483837qkg.473.1582070903442;
        Tue, 18 Feb 2020 16:08:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070903; cv=none;
        d=google.com; s=arc-20160816;
        b=jqs8rechcrtLxROUtDgN1LOAwT8S2t+Op4dgsr+A+xCMj7w1fyztH416xY8ncoJXAe
         SIhKarIJLtSuZatnqmrY+lDaICo55lHfyF6DTCMlH3i/3OJZ1443PGSjzhLpbl6u6A+P
         V6Jhlv6t6OZJEAQItRPOq9xF/QoV/nFkzHFfqskV0nhDm1HOzfYSG2YHt/nY5JvDF/4n
         AQL9W3FVpnLq1v/50XRrVc8uAILx5unS4kHnjCk6Zs+285/4ScIo0SgV7TJw5uF2QC2N
         KPCxFYzzZIyJu6XEgFkav8BxGvtdhOYEIMLS00z8jiB6dEhbTKWhU8fv4fQyqFpBLBvW
         6yzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wI9MsagFq1grwrdVGJiVm+FDO/Y2AjN+jkbAVkowicc=;
        b=gR8XR3ovdjAACL8j9kXq/5g8fNfyE34lxOTYYrVrpmP/h4pGZpN0gyde9ktApsZEUh
         BiAyTZ3Bn3syxmJbDxzQ1Qe5NzUp4BD5+spKG0aLUFv+tJ0zxPBhm/dfGXbWeKCKhm2T
         fJ1bJ/+ptezvpShiDDq8cPVVmflxiNYXxp7cpOmnDmVUkjadvvyZzXRTLmD+PveENUaJ
         exxDpDIijCzER+B6iR1icREktdjqnLsAXEy/8up9AWuHbf+OZXnwazb4mQlxhmb2LTDB
         3IISLcS50RTssCBm1UcPGcQ8MKSSjg+oM+ESiBTb19rk0+YJYdI2/DDH0g24stkdH3UH
         i/Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sv1LRMr2;
       spf=pass (google.com: domain of 3dnxmxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3dnxMXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id o21si25981qtb.3.2020.02.18.16.08.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:23 -0800 (PST)
Received-SPF: pass (google.com: domain of 3dnxmxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id kx17so1081469pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:23 -0800 (PST)
X-Received: by 2002:a63:9251:: with SMTP id s17mr25013691pgn.127.1582070902440;
 Tue, 18 Feb 2020 16:08:22 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:05 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b=Sv1LRMr2;       spf=pass
 (google.com: domain of 3dnxmxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3dnxMXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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
task's shadow stack pointer.

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

 Makefile                              |   6 +
 arch/Kconfig                          |  35 ++++
 arch/arm64/Kconfig                    |   5 +
 arch/arm64/Makefile                   |   4 +
 arch/arm64/include/asm/kvm_hyp.h      |   2 +-
 arch/arm64/include/asm/scs.h          |  39 ++++
 arch/arm64/include/asm/suspend.h      |   2 +-
 arch/arm64/include/asm/thread_info.h  |   3 +
 arch/arm64/kernel/Makefile            |   1 +
 arch/arm64/kernel/asm-offsets.c       |   3 +
 arch/arm64/kernel/efi-rt-wrapper.S    |  11 +-
 arch/arm64/kernel/entry.S             |  46 ++++-
 arch/arm64/kernel/head.S              |   9 +
 arch/arm64/kernel/irq.c               |   2 +
 arch/arm64/kernel/process.c           |   2 +
 arch/arm64/kernel/scs.c               | 114 ++++++++++++
 arch/arm64/kernel/sdei.c              |   7 +
 arch/arm64/kernel/smp.c               |   4 +
 arch/arm64/kernel/vdso/Makefile       |   2 +-
 arch/arm64/mm/proc.S                  |  14 ++
 drivers/base/node.c                   |   6 +
 drivers/firmware/efi/libstub/Makefile |   3 +
 fs/proc/meminfo.c                     |   4 +
 include/linux/compiler-clang.h        |   6 +
 include/linux/compiler_types.h        |   4 +
 include/linux/mmzone.h                |   3 +
 include/linux/scs.h                   |  57 ++++++
 init/init_task.c                      |   8 +
 kernel/Makefile                       |   1 +
 kernel/fork.c                         |   9 +
 kernel/sched/core.c                   |   2 +
 kernel/scs.c                          | 246 ++++++++++++++++++++++++++
 mm/page_alloc.c                       |   6 +
 mm/vmstat.c                           |   3 +
 34 files changed, 662 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 2b72104b8c12504176fb5fc1442d6e54e31e338b
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-1-samitolvanen%40google.com.
