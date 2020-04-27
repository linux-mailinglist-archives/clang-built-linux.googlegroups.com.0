Return-Path: <clang-built-linux+bncBC2ORX645YPRBF4DTT2QKGQEWWUUW5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4870D1BA975
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:26 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id p23sf16581015ook.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003225; cv=pass;
        d=google.com; s=arc-20160816;
        b=n5kRuapMTkAN5lKO2gP/PB0JWxbGcV5cZV7eyR7tpTvdpIk+cXcjdllQjh7PNkTDhY
         5mP6FJHvXhwrnL5oppgzMnl//zQSEvQMmpIZLNbLE2v3lNXvCap/suWfylTTFnf83EeU
         MhAa/Bse5vfcAL9D9jf4juY5pvxmBwhb2W8Jf44nc7mj9MqYb0mnIcIPyd9I3Z+LeP7Z
         JExhvuvD1587c/r1MFkzEWwpulo6gmkcyy+Vz0iYkD8kQ6XXJJ73HxQIbabuR6d5xunk
         RE5/SvxiQPe8bh3Z4k36zZdCw57LMEkwIdU/+DT0Mq7DnJADfaI+W/TP/z9XNEV9t+yd
         Y2LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yq0PjIJfNZBi7ld+sUUU9/GW/VCrtS//aCCsYja0EVA=;
        b=n7l/+sy/Jw0poHL23N6jSx2PtEx/iBkisXEjB91rL3p0RoCksnnUpyc5bdBR89HbsU
         AfhtQdU95ylADRi9KmjMhP2EEC5rOwP41H/F1spAjSOeqXMPFIuZ7Pltsr2ouvlQgYKk
         /s6QvPqLS871JQ+1rsyrO5DiTOFhJB4Hu/GRLG7fOW5bkx4PrCeC/S9VIp2mpeeN9t29
         Hu63FfOP+OG8N0cIIN9TTSgjAfikVfgFxVE2LyKcnyPLcbZhTXoYV/r+H3gbP2YZJDgl
         8IBEDCXTfdrKQaA3+tpbgnAyyZeoLcjfbsKsjDDOzZxiBr+NLaRXgo1g4Ht4h1tcdYcm
         xIsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n9KrHF2m;
       spf=pass (google.com: domain of 3lggnxgwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgGnXgwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yq0PjIJfNZBi7ld+sUUU9/GW/VCrtS//aCCsYja0EVA=;
        b=GeL62IYJD25sKP1QnJnNU62VodzNbMeT7lDSuXUTNVXez5DqA7Rrgi3U6xlBzVHAZ9
         f1er44JqhkVdwNiRGiRX8LE+ouXRt8GxzqOJ0tvsBjEs4Oi/toQ8I4HroEytJZkbcs8f
         LX46gwFYicVNKZK3IADgDHiIHcpePT9Ha/BcHL/D4Q/BW+Q0G3xeCqJ2PBRNvDghZPj3
         jY3xYpg/leZzVtddt+ug7tVyJDigYEHjG5gzQqs3qJGHgvQkP91KIIl/6xu2DVdJ/54y
         Ae+uWCayN3p+g4Z2LMUaxmIv/L5586qOQ4PiY7xVih1Jj1en9gKRwCoSkQ8S+oBv2xzd
         7MPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yq0PjIJfNZBi7ld+sUUU9/GW/VCrtS//aCCsYja0EVA=;
        b=hC8Mzylw/3QILKCowng+N9aX0a0pkQ3JpK5/KaaaPL1q9tCEJWkEdX15czpTSSDJmf
         MJNisSBh3B1o1CgIlXIDAvBDbMsXByxzyiBuVnlXd8QSjX2egYOBJ979gMEZh/nVjPTC
         OHsRrLj7Pm4KdQmfXP2u9Y/hHNDbflT2wtJa3CO0TV3Us5v0LPmvBq6HEta4bxQ5A728
         Jx5gyikL05QPyWthDhX72IY4O0gLetRAMyoBnCTXbcs1XDdOt6ic2IlADEbytROFfDLA
         L1U1Z/dK1ERv4t8/OjycVZR5SFudxOx/tga6JbGgNFGlEXf0LYogTD1/oTCm3cYy2WEi
         jE7g==
X-Gm-Message-State: AGi0PubEMu4CMruvVOMpaaeAIuroqOs2w3ZOShRAwPWH1p7jg1hI5b6n
	XFi27TQ6nv2DUPPrWasrVC8=
X-Google-Smtp-Source: APiQypLkOmeVVXUaRnW0GyHaq+ILf7Nkd5NuDG/Kh+uJOWvLH9JgxraSiQ2KYycKA+pF11zaPjr77A==
X-Received: by 2002:a9d:6644:: with SMTP id q4mr19535390otm.229.1588003223835;
        Mon, 27 Apr 2020 09:00:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls4183556otl.5.gmail; Mon, 27 Apr
 2020 09:00:23 -0700 (PDT)
X-Received: by 2002:a9d:4508:: with SMTP id w8mr5654385ote.130.1588003223310;
        Mon, 27 Apr 2020 09:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003223; cv=none;
        d=google.com; s=arc-20160816;
        b=Ox1x2Ojn8UrxSoHWOQeMexqmTqgG9vONfeM3tDivEHryDkuvhZv7J0Y2Vuq+NU2qtJ
         LQY71EMK5PG8Zm72h2fZJ4HaE03Zu+/G7ZCd6QaGweSgruBYGW3TmGvLMb0nSN8OPOcF
         WHC33PkDidcU8TlMDdG3dCFSiPuysWlYW28Pbm02cBdCwM2f2wiJjm1jJ4x022J7GAOG
         uBZoQc+lryyJxzpGhj285EguDsM2H6HsKLwueYKNDmM556uhXGMqPf6+5blv2SuXU/x6
         vp7iBIAfiS1kUzFzuUAKsy/38a/XJV/xYj7cIMOokKmJir8K0a/q0BDUTwdn2iNRa9aI
         CSRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/4Lv0RwdLpBbP8q3ppNzsCXSA3vQogZDo2gd5muLx+Y=;
        b=pcvcvDKqUZxAcOHc1awx+EmxsDYUU5+iKtWImmXfhtHlDfpuD/d9/G5rVGNOCySyzI
         gMqCm7IRtMTfhH/0fmW9v3NAuH30KjaIavdfJE53gtQivq5Uf6mVGn85foTc+mO+OUbu
         Mwn6Y3v9vzeO2Ohtoi9h4kCUSkWSeIlwKFNmaIeuCW61Fdcs2vc0BM+OUuvVygSAJ80x
         3lSLq0pPUyUj/6rO5eI/ywdEzu0fRl0ac7kJxKKVtXBvK8irMgSmW31eAGoyrVi2nhvr
         7N42InTge7aFSkaMcgCxr0OFJ0my08ASRkHAnJoLld+MJtg6j26FXRlzAudHQ8em/hfw
         Nhgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n9KrHF2m;
       spf=pass (google.com: domain of 3lggnxgwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgGnXgwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k65si1433569oih.1.2020.04.27.09.00.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lggnxgwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g17so21077562ybk.4
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:23 -0700 (PDT)
X-Received: by 2002:a5b:345:: with SMTP id q5mr35788916ybp.494.1588003222670;
 Mon, 27 Apr 2020 09:00:22 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:06 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=n9KrHF2m;       spf=pass
 (google.com: domain of 3lggnxgwkadefnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgGnXgwKADEfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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
shadow stacks in memory, which means an attacker capable of
reading and writing arbitrary memory may be able to locate them
and hijack control flow by modifying the shadow stacks.

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

Changes in v13:
 - Changed thread_info::shadow_call_stack to a base address and
   an offset instead, and removed the now unneeded __scs_base()
   and scs_save().
 - Removed alignment from the kmem_cache and static allocations.
 - Removed the task_set_scs() helper function.
 - Moved the assembly code for loading and storing the offset in
   thread_info to scs_load/save macros.
 - Added offset checking to scs_corrupted().
 - Switched to cmpxchg_relaxed() in scs_check_usage().

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
 arch/Kconfig                          |  25 ++++++
 arch/arm64/Kconfig                    |   5 ++
 arch/arm64/Makefile                   |   4 +
 arch/arm64/include/asm/kvm_hyp.h      |   2 +-
 arch/arm64/include/asm/scs.h          |  46 ++++++++++
 arch/arm64/include/asm/suspend.h      |   2 +-
 arch/arm64/include/asm/thread_info.h  |  13 +++
 arch/arm64/kernel/Makefile            |   1 +
 arch/arm64/kernel/asm-offsets.c       |   4 +
 arch/arm64/kernel/efi-rt-wrapper.S    |  11 ++-
 arch/arm64/kernel/entry.S             |  38 +++++++-
 arch/arm64/kernel/head.S              |   6 ++
 arch/arm64/kernel/process.c           |   2 +
 arch/arm64/kernel/scs.c               |  20 +++++
 arch/arm64/kernel/vdso/Makefile       |   2 +-
 arch/arm64/mm/proc.S                  |  14 +++
 drivers/base/node.c                   |   6 ++
 drivers/firmware/efi/libstub/Makefile |   3 +
 fs/proc/meminfo.c                     |   4 +
 include/linux/compiler-clang.h        |   6 ++
 include/linux/compiler_types.h        |   4 +
 include/linux/mmzone.h                |   3 +
 include/linux/scs.h                   |  72 +++++++++++++++
 init/init_task.c                      |   8 ++
 kernel/Makefile                       |   1 +
 kernel/fork.c                         |   9 ++
 kernel/sched/core.c                   |   2 +
 kernel/scs.c                          | 121 ++++++++++++++++++++++++++
 mm/page_alloc.c                       |   6 ++
 mm/vmstat.c                           |   3 +
 31 files changed, 442 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-1-samitolvanen%40google.com.
