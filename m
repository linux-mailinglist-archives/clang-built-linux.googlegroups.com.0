Return-Path: <clang-built-linux+bncBC2ORX645YPRBIEYRDXAKGQEEL23PDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EBEF0A80
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:17 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id r12sf15688832qtp.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998176; cv=pass;
        d=google.com; s=arc-20160816;
        b=HzehmG1sV7crF5/cMjOHKWCeX2QA6ogtv62H0I76L07yTPIedw0GOtwoGSJU8zus85
         p92L0vfbrzedgZLP+2dvwwA/BJwuA57i5LEAaYlVUljmFPTYGJ/nX3hfIA7tebfFctGJ
         a3cyCjHy88gotBWdz1ZLWGeto1vfSXkh+1mrNZ5tBytz6vKyjfzaF/wkDOH9pYVIDV7P
         ha2nttSX5v0kzfPNBVQxqEomVe5LLHZFlZIJURsUKZeNufRTwZqDuGutikt2A0bN8jbs
         1i+oJDbN7tWFLiyxfDcUtHRGSXeo4qBi9h1LV5/Wq8MODgQsTyomZWOya8wpXr8LaeZm
         EQ8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0jdi2sexm9y4bBR0uOr2hjk8lpvXTbSM1RgmTokOU3Q=;
        b=xjy05w5zwBUREvl6IHcBEcTVEhHWMz2HlRHDk1cnQON2739Wq6uIS1lu6qCLor2OGu
         EeG7G4Oap9SoI3IET7Gic6GtZNBmdH3gXWxU4HPHQWoWqqE6qYR2Ffd6ePlz9UoBB4VR
         ZAxdxXcjLXnPLHzgCxC0FoXKNyYhUZfQi9tGOxr/CEMD9ASCLlSszZAAAzIPgXRq3TcR
         JjA9hP+nvHxl7Lb2pUwcjKG4Ikd5S8ge7ryRHfwROYHvTH3Y41wO0BDpXJ3iT7s9fXcw
         neLXoR9YkEyfub4U/ydgDk1Af7hIpa81ureK7d9w4ZUOWAmVC7jVO9Fmtq65pdfe1NWC
         YSrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=scmM5jNf;
       spf=pass (google.com: domain of 3hgzcxqwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HgzCXQwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jdi2sexm9y4bBR0uOr2hjk8lpvXTbSM1RgmTokOU3Q=;
        b=mU37sPxSGclAPgP/f5kTJNTqamryP04Besbvsk4CuHDDY5mOm5JuZmhFpUL4gLAyBT
         WdtDhVxqE8HD3F2gieoVo2zfkDBz1xYFfNkv0mfEf1vRZm0m7DB6bpzokJYLwOmEbdUN
         jW54lY6ZoOet1KHcAywuuJYitslCDuT6tItnBGgT9Ak9Mvb36Kkboch3T8FCUO2/tpTJ
         52eRx3injS6xZeTEemMmjcAmtWhh3S7XYUiSfmos2a8GGGh13bABtA3P5i++4LfN8ohj
         RpFqWq/M7+rP0ca8O+fIy0x1LpJGN8z8CmbuHIgH0sQBNdFkJZCeGZzg5SQkSr0Cxkku
         HXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jdi2sexm9y4bBR0uOr2hjk8lpvXTbSM1RgmTokOU3Q=;
        b=H0hjL8taVge6urJWzNtC766Hd7fEatJEMfvPAqOkZD4Gjc4uFB24b9QdxP/50HqPYW
         um7a4GSKw8ASHn2koXwPIGENTqoTyf7wvBSRSpkRgcYESA1mtff2rwqTvCu9LAbKkgFB
         oZV7JkQ/yx42f2zHx1/w5aYl5Vsb9Hgxxt8WL9jj+vuYlxBW64SHarc2Uh8Vz/6kPrS0
         dcFmKdCaddNeASZPX6Vtc+q04+KfyIiKqZfTvDjgg0z6kchcItBW9+5LyrcUeoZzoe9n
         C+xtaG1Fg50dii6N73Nj15HZhLviGOZsuDcZETrdopjZ68Cft3UUZhdoNTr1xXBBYJfN
         2C3Q==
X-Gm-Message-State: APjAAAW1Dkh3SrkBqK20a7Gyv4JCwXlI75pP/KjS1TgSusR7IY+q7WcE
	1hDF6yxfe6wb6fPN3HimGuQ=
X-Google-Smtp-Source: APXvYqz5n3sLCEr5SOmlbqjCCK+ha9wGbYjxqTbDHKDhTzErm5OFFuZH5ojPeBS+z7CxQmMPfNWEgw==
X-Received: by 2002:ac8:1ba5:: with SMTP id z34mr20654730qtj.162.1572998176599;
        Tue, 05 Nov 2019 15:56:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ee02:: with SMTP id i2ls141980qkg.8.gmail; Tue, 05 Nov
 2019 15:56:16 -0800 (PST)
X-Received: by 2002:a05:620a:9c4:: with SMTP id y4mr22408971qky.113.1572998176100;
        Tue, 05 Nov 2019 15:56:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998176; cv=none;
        d=google.com; s=arc-20160816;
        b=bdlEdpV2L3PA0JhtZ8sA/1FdMVD6ChPtPiZS2FavaJJueLvMfkJ3zbSGRUstcbLYWR
         7QUyzemqUshc7GMHt326uUQ4BYA6eL0hXN2yx/1X/eg0/wb80ce02KNbBeTCIqmT2wil
         3JWWFMUdYDd3Y2Ch4Vo0dFlfByzfR3HQdTy8HShRB1fJ3ZplCNPXL7I6CS4lF6x+5gx1
         G2747N1Huve9IjkysY1XVeorjpexbck84Y/ZsSplN6eTD87HrZybk6Ke5GRM91z2S2Sj
         SpWBPHpeAyD4CWoNMFHSoykkYHMNQgOOFFMHDk6GBjAoUN0/XxzPvI1XW8UsujdTM7mj
         LFiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K/shn7Sj8cjIAOcXeYGvWEwPxEjEzE6xK48ExW4epXg=;
        b=EXeQ+uYZDNm+K6/RLgE5jmvD6s+tkDuKfKJf1M2JlDOS/r0kyeQMdGkF9NON7EB1OI
         ldf0X7nc5qEoFYOIQTZEVVXPEi0XBV2VDKhxEBrj2oy7/KHzoVvl2c12c/EMjbJvdG5Y
         6P1r6pQigvWMwkgyT5Q6DQeva7h7SOcZ1Sq+rMfAh6hWqlgsWQBps2PsFtFRf0UTV+/S
         HXhoFJUDesQkr4zptSSrNe05Snm/8PhaUW7i+H4wrSV0mlbPxQN+VzxQ2l3lNlLB8Ev4
         wrqkFLVfKOddCMC6FjGc90DvHZEsOL8r4zinOeI/WS8MJ4hu67urSo7A3t35ByRspxfI
         jTcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=scmM5jNf;
       spf=pass (google.com: domain of 3hgzcxqwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HgzCXQwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id v189si381005qka.2.2019.11.05.15.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:16 -0800 (PST)
Received-SPF: pass (google.com: domain of 3hgzcxqwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id w17so4152326plp.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:16 -0800 (PST)
X-Received: by 2002:a63:5960:: with SMTP id j32mr39727761pgm.281.1572998174570;
 Tue, 05 Nov 2019 15:56:14 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:54 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=scmM5jNf;       spf=pass
 (google.com: domain of 3hgzcxqwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3HgzCXQwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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

Sami Tolvanen (11):
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

 Makefile                             |   6 +
 arch/Kconfig                         |  33 ++++
 arch/arm64/Kconfig                   |   7 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  37 ++++
 arch/arm64/include/asm/stacktrace.h  |   4 +
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |   7 +-
 arch/arm64/kernel/entry.S            |  28 +++
 arch/arm64/kernel/head.S             |   9 +
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              |  39 +++++
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
 36 files changed, 638 insertions(+), 77 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 26bc672134241a080a83b2ab9aa8abede8d30e1c
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-1-samitolvanen%40google.com.
