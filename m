Return-Path: <clang-built-linux+bncBC2ORX645YPRBA4I4L2AKGQEM56GS2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DAF1ACCE1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:12:53 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 75sf3566879pge.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053571; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsCOILInI3ikgvKOCCFPha0Ow1grtbpTOdUBdjxYx6of/dF0agyeKd4LQZ+w0tKw9B
         3VRDC65RpOCRz9s52U38gsQs3zL5wpjdAvUod4DHLTZJdxubiuimqYq3r6xUV+c3I78b
         UrRxsnxjVEA1SLudnTdeqUsvo/z3ruB63/rn5np9SvaMQ/T5XF/nG7AP59XEtG8QVeMk
         WeIpIDNV5KI075wD874WGfGl+k2gpLy+bKewyjO+N2rsPEY+9didxG1e2HuoM1moSIR1
         uRo7/SmHlR8r091sfkHxYxggXDyWRF9P0dPUPFiMBi4JEvw0r5JS17qrj5KMJHKNBuLJ
         0r3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6UzZEndym4XarK8G9VCyiwQqLXbBENojeuibCxNLp5k=;
        b=v8c4/qAhoyghQI07NB/lYCUjqnmIKeFqvYobjoT1H+Ydo+35VJLnb5G2fi62in8SiP
         niGWI7MUK3rH/YcuLoAL21MXepBFKHc+jZwDiD1UJTQXz4Wyyu0qUQXSsOAKvUYwSMxu
         FPy5rGvuy8jkJGIdnMVmISygq+Pq5cGH+PJT9mmyFQP9XbA/z83YhcaqSc0DWNZO4yUu
         cWF2ncJ3iSWPwvGJyyguW+ksRXY7BPlcFeIDOIqsF148iKCsgISiFtWWEQME9V8x0Z1Z
         9jqK5lLPAigyQIUjgDrlEbwCWrJovyyaL2N80eOspfA6PcW2VRY0L63UmEJzW5iQqzyY
         9+cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASpRbtOQ;
       spf=pass (google.com: domain of 3aysyxgwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3AYSYXgwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UzZEndym4XarK8G9VCyiwQqLXbBENojeuibCxNLp5k=;
        b=r4AZiA4nh+N6ZPJ4Tj2E5idT6oCQHOAmK5OSFzJJDZQvUu3XdDSk64Zb+Yu/sPEmux
         p16tjwKuirtsdNkqJkHVMtV87ougb1nRM8u9uqNpDiHtNTqCh/qjkQDyoSJSAHSkw0Rg
         +W01H68kmt6Un1oe1oP0nLZoVo5LZrxWLboCGFgJdcryD3t574u6WAbay+Jl8jyBa8OH
         FXknnA7rtHlay/840k/5AsCD6PYafZjJ5zoo8laxGtywBXiVi6bhpolzQfWQsqpb0lV+
         Cpx+fh2VjD+9XpIc/z/m5M4WlC6O7TR8NEzZYkhHepbYW7VDzMNjiK6mzSVSkotByhVh
         2wrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UzZEndym4XarK8G9VCyiwQqLXbBENojeuibCxNLp5k=;
        b=Q2CSK2GLZ8t8qvbi9WWkY34H6tp8bkeFEOA/OR2Qr9PNkDF8g0skTvf1hhF1sIpcM5
         4OgBrrNvWm5tKwhXswMlQIxrClDZNw+OJlCfimriuFSvQIFdSh1tqTtKsjJocvLTn/1B
         nWAYVMM94hIGaPuLL5KIr+W3u/f2iiR/3FMuZJ/hI8h/JUFNbfmSsrQH0nLiNcbHUw3F
         nVlo3b+NcqnEsXYnPix8crxeZzqtEmEEILPN/1sx9cDlcmslEmnYHwrO2hIietJXHcOJ
         9KLoE4gS+b3z2f/vAeDUHeQVtA5syAJDQ/fx2lytr0RWsjKKlABduiSBjKOwijTavpf5
         i+sQ==
X-Gm-Message-State: AGi0Puazop0KKU0308h/4bJ47gQx6ynshONR8WU19VJfU608qJ4nMt1t
	GSNHvk4OiBMv5lf2PwTltSg=
X-Google-Smtp-Source: APiQypL2CI04TcQNaXxuezJrWpk62T0qLVlIxKi3ROvfeF+w9ocBndWp+FXZ09N8Cs86jVY83zgXew==
X-Received: by 2002:aa7:9e91:: with SMTP id p17mr32022294pfq.139.1587053571400;
        Thu, 16 Apr 2020 09:12:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:bd15:: with SMTP id a21ls8109458pff.6.gmail; Thu, 16 Apr
 2020 09:12:50 -0700 (PDT)
X-Received: by 2002:a62:64c9:: with SMTP id y192mr33807773pfb.26.1587053570795;
        Thu, 16 Apr 2020 09:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053570; cv=none;
        d=google.com; s=arc-20160816;
        b=QyU56RkE6Md72mp1AQhfB/NOUYnT+IJQZzvcsqn5w/AlCXqObH+EXaSVTr4LCmdli4
         yzo3MPRCecEgpDxFpFaJgme611M7RQLpyphlLm5qSqz5JVKAv801O9bRV8pc7rVaACEF
         UuGjrIjwDL1KwthqZn+imLx+pVXcQyeNhTJ2sazZEPx1dUqiaZ5sGjWb75LqTvRQp3DH
         t4QndT8j5IjoSRQKbMHwiSDVtNnXHUwlmf9b70/xD3zlbXCtMwXKUkl5Ok8QWtUJOS0m
         MwnAKzVz1q4vU1ZJSWoN8J7RKQ4TZuEW0mS3EDvPewavF+UaxM1oJPi90IZrsWPvi38Y
         6QjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0kkAHIxDjdEuIMyQzc7N1rVk9JLIqCObiTf23aNDlDc=;
        b=HJNM+MBqJJ3weJG9GKTM6YNH7WReCc3Lyc1h8/tikFOp+Du6RAsgrvoE8OmRTcUN/M
         PLwcHu0bLOvlQc1xJBaimRxBD5Boozd0692irMDOAuxMBbYi7uIKIdHhcDFK3jgZOfl/
         ddPTwPZRe2+qpvnwtSJM4GqsZzQxfAAd5h9gphkx3UURD6WgaJO0lwttyv44oWZZNBay
         zd6nxV0LjIoLeTI+d9QkV9EqPgxV5usdVKk8zvOCN/jTQIpFgMEJ8rMjibjrvF0/xKl4
         T5krX62ebiXaERufg+DUnwLegKM0EXrjE+aOSz4aNvPykgKFcboS7MBN7on0OGjD1/+X
         jfSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASpRbtOQ;
       spf=pass (google.com: domain of 3aysyxgwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3AYSYXgwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id a21si287792pju.2.2020.04.16.09.12.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aysyxgwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id d205so3554325vke.8
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:12:50 -0700 (PDT)
X-Received: by 2002:a1f:b64a:: with SMTP id g71mr22582515vkf.27.1587053569730;
 Thu, 16 Apr 2020 09:12:49 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:33 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 00/12] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=ASpRbtOQ;       spf=pass
 (google.com: domain of 3aysyxgwkagyweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3AYSYXgwKAGYWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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


base-commit: 00086336a8d96a04aa960f912287692a258f6cf5
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-1-samitolvanen%40google.com.
