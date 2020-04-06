Return-Path: <clang-built-linux+bncBC2ORX645YPRBO5XVX2AKGQEHC7LCSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AF619FA5D
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:32 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id a8sf382790oia.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191291; cv=pass;
        d=google.com; s=arc-20160816;
        b=CT9ws6lEZUCYXzfsPle6cViKL0tinTVK/80u93twa0PpdYNQXSPMiNBcicBC+H1B6N
         zBUkcNOfVAqRJt4HOcToSnGsNsyHuSpXv7QkxcLaFm2oC44ha91J6XgWq6QhMFUbLryj
         9FxSMND8ESI0eVrdZau0FXzWa4n6JlDraX6MAMjyb5JqcH7LkKfSi7DDhWLU9OcP6tzG
         DJyJGaqsWqqtAeWko9dE8jZHMZZ1Wf2tdoBUyYiobxLAOjt/Nu4+Whq1+GEvncrIwegv
         JDm1oIAiu09okr9iJ6zWWIySg5gCrlgkJ3dMjjn2NQa5geSxedy2ROTiGhK5CjGt5pr5
         WK5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=foqFEbkFQe5kggqKbnwuGmc4677XCPUd61LdKVRZak4=;
        b=S6pVrvREg2/M+AommCwKQKq1xfThK9lsh6oKaDaMXN6ZWmhN38KY5jsSrUTiOf3MlH
         Cznjx8BhxDv4ZrSQGjA/HBGpSwAmW9EwrmOriSnrSmNIQtjxpyZjDuZWA0mdXakcDWAb
         nxCHVYDTlWXDNz56JIXnWhY1u9xAHY25t56PRzo+Y0chNxPy80/YAfEghtNuuBrpIN22
         PDCO4+/aEOBoa4aDqq1E/p9bp7R7Z0JWEQ52Qx+TDWtki970aWddwIfXbtq/fuh8xQ7I
         WJ68Fk3Ap30ihWpRX/RtN5Cb4E6nR96DvQp7OOj8n8H9QowsftyLhoUEbj2AIN045A75
         mNww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b0BIjk7a;
       spf=pass (google.com: domain of 3ululxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uluLXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=foqFEbkFQe5kggqKbnwuGmc4677XCPUd61LdKVRZak4=;
        b=M3tLKh4taCNa78HXbaGToRzjkOyPz+83zuAqANM2Drv0Bw5tRI7Vqa0CZ7/rmC3Hbr
         5pJBN9JXCl6kyeMwq0yr+QMRBb389Td762i0cmZjYgVcZUF164e/FdeAQ+00rT8LPo5K
         16e49rlX4FmRelwnZgzmh7d1iEEOU9df+PodbtzePhsPOPjisOSv3s8F7Uc9CnOBdsRt
         xSTb9ILd+y1Ye8hywvx/XSnRTJpnbqFoYSqzSa4RJxs8vyij1hrlT/flUWiD4j/t13p/
         tCUvbvPOfRNdf3GWwwbQ768bZd6rI+rX0F9C2+CGXD4+nUGRkmTRSsvYkeMuWJ7Ib9sl
         V3BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=foqFEbkFQe5kggqKbnwuGmc4677XCPUd61LdKVRZak4=;
        b=HgeSnpyf3Oh1UgBAWuqxnSm7+a0hZaqZH57I7vIGNUZoWbOhZXmOnq9HIZswrsrxKt
         OSk+wccMaERrqDYjZhDKlMv8pg7picUj8pE3SV4Zs5HC1w/b9Be0y7xUgliU/3waQmAO
         mrtF0LPV6KM/mcDI7f71a7TveoX5ngQOn8g6tqiPfVrBpoofVs2uinAVXoFQQfYfAR1o
         wFIhO/NekfHMro/MmBiUceENXGpCJjr7G4LGEEJq3YTyUot2ip8zA/+yMKP9apV1SmsH
         TrY5cKX0OoUcQ+jMnw8b6xZ5YUFhs/nQoPCbFrt8NEHH9C+1lIT9NaXZ/TKtm07YxvCe
         Y6wQ==
X-Gm-Message-State: AGi0PuZH9MERP3XD6mVTq4Ca9wm0BhXabjDqGaWM5inADpBWrpq6gTGc
	iUKxIz2vo6yc3MKA3Hx4ziY=
X-Google-Smtp-Source: APiQypJTnrdvX209u8GrD/XQEdk4tulv11WQwOEwdF6U9hFtbdjRyVEHgAFN48JKIeP8Xg4glHO2ig==
X-Received: by 2002:a9d:7992:: with SMTP id h18mr19187664otm.315.1586191291413;
        Mon, 06 Apr 2020 09:41:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls151264ots.0.gmail; Mon, 06
 Apr 2020 09:41:30 -0700 (PDT)
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr18528266otr.317.1586191290721;
        Mon, 06 Apr 2020 09:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191290; cv=none;
        d=google.com; s=arc-20160816;
        b=JEsgi2PEJ8O+p0nPvGfqEVSqKfsUJePgQqavIASwuLWTlaGHvW/ssuS0srotnhoPBS
         QGYGokn6wDwuOYZ+qp/7qAPT6+RMIDzcB48aASknqKwYyygAsQezaJr6cicANJknt3YC
         1NYklr8ov4Dv+RQ4X6ex3bH3BhjtqYFnR9z0fNMzq0o19gDgx5dbC2AmMzR4NtKtQTtF
         oNUsEmOiXrjZyfg1ymhIGo8J6GcBSr88fD8lgvgiTPrJIbX0DbUOqkYSgfJN+DUpNY6D
         8GQ0/QuTIFB58iciK2AAihCaOUjQaUM61iKaIBBBOS4mCK7eS9eb44/YmPTa3rNvoVz8
         pBvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dVFwXUGExu3yMa+UTv67d2nterjPqRkmOOvIg26dlAo=;
        b=jv0hRlIg8pM500dWn3gsQ11MFtXenLfnnd4IrBRSe7XiovoNpCnOW+yMErVrRrUU1d
         6yXhPhBLMkuGMeaAwoscREWjDvcN++ZoVfVKIMrCDauauQiZD0INLrr++gdlHmo/vzNI
         rU2JTA0hR0P+qko1w39c0Jrg3Fl2wCN9qGSywt338qGxmRXphpoJJzG+cgK/d4wG33Ya
         na8vfuqH6xBtAwQpv4yfc7e8Do2/6fanTzAZb/Qzs/8JqsaR+EWxnJvU0ZMXf8mVYISd
         HK751E/O3Ux0dQSN2AqZQcjs1pDAyc5+8naXk0CMHew/pHvWFSOR2BRkoq12q+/8MfKz
         10+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b0BIjk7a;
       spf=pass (google.com: domain of 3ululxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uluLXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id d188si42224oig.0.2020.04.06.09.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ululxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id j7so288312qvy.22
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:30 -0700 (PDT)
X-Received: by 2002:ac8:7351:: with SMTP id q17mr247532qtp.237.1586191290072;
 Mon, 06 Apr 2020 09:41:30 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:09 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 00/12] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=b0BIjk7a;       spf=pass
 (google.com: domain of 3ululxgwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3uluLXgwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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
 arch/arm64/kernel/entry.S             |  47 ++++-
 arch/arm64/kernel/head.S              |   8 +
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


base-commit: a10c9c710f9ecea87b9f4bbb837467893b4bef01
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-1-samitolvanen%40google.com.
