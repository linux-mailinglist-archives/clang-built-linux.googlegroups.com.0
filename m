Return-Path: <clang-built-linux+bncBC2ORX645YPRBXFX2XZAKGQESYOZQRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EADD16ECA3
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:39:42 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id v14sf9413079pgo.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:39:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652380; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7ln4y+5JxPfyV5zbLrP8vc+pBJ86UDQf9M9pNM/I4sA6NMZ8J6bJ9sIbGM3Yk13pX
         /TI/Zwopn6ktf7Sq9oEF5FdQosL+gXgp74ZVyT+soUT+MD6y9Kee5JBWBS7OJncnPAxe
         zjvxDGuvgBHMFhxff8a5EfAL1l0x13KM3Fngcz4rdEcatSUHRl6/aINHL4dov8VH4Rd+
         MtSLcxzSK8Rvh6UulZ6g1SMaTHbgwzuluuNP/VTA+QBKYeF3x/RSWCZRUlK/AHOZcSdo
         rxIZ3/WFkXKeNOsWgOENHBXWDasbyXOwM4MEAfHfqQCksxEVS1AXvyShf7y+/+AZhGwe
         7RWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tc7lQyoFv0ZqjciV1+ngclJmAn0L8gh7wtCOQTsJwtw=;
        b=ztvuUykavetlNjsBM3e62VAQbp72nL8lI+gobG6a6DtK3SUAMj5C+pqtKkJ4cynQxv
         6XeRrelwd053+Nrot7UrgsO/0gcBeHEXNLP1P/hmWUdU9fbWxBbLLcdkuJyE2FX/ypZi
         QN8sDclHbKTfpWIz1y2+raDEvOGz3WHOrPEpIqatX7ZXUQNTYrzLKdSKfa63wRq80Cw3
         dP7VLKUiI1T4qqSL3QVggaC/LfRn/9oPmdw/pJ1DpUPVHqGgJL2ufEstKsyer86elVmn
         StBnXPgZU7EH349Gj4CCR6ur+XfYPLT85dBiFyff6a2QzAVBt89y+q0U+ORhfCecy+oD
         Ht3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iz9ghN3t;
       spf=pass (google.com: domain of 321tvxgwkaoaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=321tVXgwKAOAUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tc7lQyoFv0ZqjciV1+ngclJmAn0L8gh7wtCOQTsJwtw=;
        b=UoGn9T/F9jMjRHe8UPdXDrMrWeHSH2qtLcCnOWawSL5Z1ftHVA4TZLztLL1uGuH/IN
         mGL+DXL2vs4o05626JNK14+FCCxhyWlEIpazJADCHmsfYjZd8cTTsqS9GBhHPs3euPAN
         dz1XU/HyR7WXBfFzw4S6IYr+dG0h59TFEm2GiFltd70al0cDLadWhofihnkg1tOSO0Ck
         VrJ57yNdGUVOBYe7VEJAiHTt7XPP3bQUZWnOjpQlb+9l38LmIVSNTNV+62zrslsQP05c
         etvoZZp+7C1YhlZdK0ITNax9G6Zx64aI0XbnkN6br7yQFOZo3G8WB10ogiHOv0tu95I+
         WLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tc7lQyoFv0ZqjciV1+ngclJmAn0L8gh7wtCOQTsJwtw=;
        b=Vl8Fu5M/f6dSh0mMHxArF16KXiWBPPZpM3rc0FIEnqqG2QMU67NjXcGV3Gark4jQ4I
         h0qE4Cgj1cJSpWZ8+AxvOi009VujCjSyfMleOJSVX5t69khTSe8X8zW/bSD/XK+YvB4S
         uldumRL2LCs4IyAEOV2UdIpb9iJdtGzZ0IhN/Ly8N+XO8f5nuBjDCu1rVqrRzkuzQW1j
         1FrmE1iS3hF45I5iykcowPS9zPxxCUOD4QgSdZ9BYDeuQxbEiYnoIu6llW3K3DFhLRB2
         A7l9ABPqo6PCq8p2XAAcKsAxbjjlpn1zG3lpFS2mnwdSHVNkuEZl8UYn5vapsXW7V9nz
         lnmg==
X-Gm-Message-State: APjAAAW4iqOvR+vTtmn7UFKlegFFCykJvphtAi+wO9lAv1mO+kSI/xAP
	MByWLEHFToTHt9LWjycEL8Q=
X-Google-Smtp-Source: APXvYqwQ9wwa3g23QXX/oNCs56ZwSfsj+UEqycSJjK76EQfxyg+J2+c0JY3lcJLIbTt1G4tpPnuSUg==
X-Received: by 2002:a17:90a:348a:: with SMTP id p10mr94767pjb.120.1582652380558;
        Tue, 25 Feb 2020 09:39:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7744:: with SMTP id s65ls4427496pgc.3.gmail; Tue, 25 Feb
 2020 09:39:40 -0800 (PST)
X-Received: by 2002:a65:4647:: with SMTP id k7mr59656683pgr.11.1582652379919;
        Tue, 25 Feb 2020 09:39:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652379; cv=none;
        d=google.com; s=arc-20160816;
        b=CfJQh+WcjHZ9jX24Yls4eKTjqxc7lk9nfID0onn5os7gcFALVfnknium2bbR8nwk57
         h5RK10UhaYZPiYbTLWqxUeTLxNtQr7jjtRMVAjXMk9szfL4YADj7ji5z73zQwqAwkmCd
         6BCXepzsI/HgzAhwgijI64WQzco0+dB6UtQ36fcSz5jarQd+EOeVaCR+oe9uz6fPQAzn
         Te5h17yos5FT8HhmxmYxbZ8onqJJG8tuCk/EjvyaJu7v3FVQpie+64CDWvxlcWf5eDDC
         q4eNfPHxd+uwzoZDiFZuQOislwA67gIlRDCyHD45w951kdjOfmyvi1H9QC+SlqlPx4+a
         TBOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=pTqCjcEa9EXisQdFRd13/e3ghlAPwJ8mGDn87xFJvf0=;
        b=oy+z762cbX9egmSjFulhU/Q7cNCRoXqXNkgV2Diy1JAw1+ydIugI5i2G8+4nImjuMQ
         3ddkLEGR0TFYXgISTCYiORcYRwo6Cy8NSwd9Z1RO0XaekJEFDcMUkv9ifdp6tzFOP9de
         JlArghQlSfoWsgRnayCERuQOiO8uDVZRX/0Dn8Wq9yZPxbyCOjn/Nj80CQpj+z3ERgqZ
         T81ul5uY27T4joXvK5yIpK3zU0PQbUgKQb3LZKFc+eAPtzxBxybIVVUhOtRQ4z3PQ8Kj
         AHWl4Z5ZiqT6Cg+aLe6hVcXlQDUw9/c3iY3601NzMkNPiWNQ5cl+CUTQ53OnzJRpXMfM
         ZLSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iz9ghN3t;
       spf=pass (google.com: domain of 321tvxgwkaoaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=321tVXgwKAOAUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id j123si9167pfd.5.2020.02.25.09.39.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:39:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 321tvxgwkaoaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id ce2so12084qvb.23
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:39:39 -0800 (PST)
X-Received: by 2002:a05:620a:1326:: with SMTP id p6mr36826889qkj.50.1582652379174;
 Tue, 25 Feb 2020 09:39:39 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:21 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 00/12] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=Iz9ghN3t;       spf=pass
 (google.com: domain of 321tvxgwkaoaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=321tVXgwKAOAUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
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
in the kernel stack to alter control flow. A copy of the return
address is still kept in the kernel stack for compatibility with
stack unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

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


base-commit: 63623fd44972d1ed2bfb6e0fb631dfcf547fd1e7
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-1-samitolvanen%40google.com.
