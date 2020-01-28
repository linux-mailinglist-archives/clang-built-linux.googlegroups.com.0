Return-Path: <clang-built-linux+bncBC2ORX645YPRBREEYLYQKGQESMNPNRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AF714C02D
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:41 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id y15sf9118696pgk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237380; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNbarK9uePyOXIf+zXsmhfmmaMgWBBh3+/MtFr+M8qaUNOBDSnFJ6Exs4r+YZ5dqxJ
         PdM7aQ8bbOVBHqmGRxLsRSnuGhcHO435NKbO8eX1L2fhB0dErROvXkC7DXu++tZZbB1Z
         TKobbknD/D/hkqwr6e+cMUGYEbo24dD9bKo4Q3dlccDxgTCRpSFEkWg0fQAA75bXlDQM
         +43qeI3LYI3Nqic9XDkCsrqUuVhTM/HfPG42YFPDNZ6Bd0AqtSaQGMhA5sys/w2yK9BR
         EVFF7YO1pLsxUsdoKP8SrVBclWEsDEXSnXXkH2tptnTV/jopDVFiFHQuNGOVRrfM6bhW
         uA1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HgPUYS256Hd9EchaT0Lc4ULcowNVudk6XVB+T7fNl68=;
        b=ppO9opz6ePkBH+o2rSIMYlolVeF8PUqR7RPqWNp8Wzl5v4qkfSU+rkIOGRF8NpEpLb
         3SMD6CU3x1b0hAm0mnI9CIuIWN543BgLteFWHv0ovF3XldBAmWyR5RtX6p+L26Wl1CIt
         GHbAyG+A3sKQiAGZ+N5YqqgElI1XsjQEJXKohsQ5ZQMOvo+h+2KGA8MxtoKzuWjJj7EO
         GWHEO/zh2mOGd9bofSpmXDnh8f5ZWSgCpCN/vNbh3Mj4C63l8PgESZHdCvSCVNDWog2J
         uMucBAbwRNf3LllEjlStUFRe7E212j8fMbtmZLaLBn5+dvSiTnXBrlVlMuNGRDSYv0cR
         48Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JH4Ntoko;
       spf=pass (google.com: domain of 3qoiwxgwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QoIwXgwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgPUYS256Hd9EchaT0Lc4ULcowNVudk6XVB+T7fNl68=;
        b=COQO8MA/uRK7R4t7k8/hQ4ScZEDJM80L1NRfFUREOWt+Z2ZKilXFN/E/gIcb1WD45u
         6VoCYcjRkOwkA42+pngEO0YT4i3+kzlIu71QpiZQGqhQRM4rAWspi7wMWq/wlFaWAGXY
         tNIYwICIynD16UOfeaM0K6xDjVH6DwPcroyX5yS9fxBc3JMzB+kJvrzshyfowxFZ2yWK
         rJxyBJPa0PkegFOlsQrC6YxpBxtk72SWDHfITYtbIItdeyAhFV1rKQ0S7r21c275dJfI
         6KgcmcDy8UDY81SJeSSJ1NQq8q0vxtjkW05kTyXFsTfPk5rMyZSkbtM8AQjahlLAZSnb
         wmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgPUYS256Hd9EchaT0Lc4ULcowNVudk6XVB+T7fNl68=;
        b=gPd6YY8hrknLHlCTCjsMPJGGyF21AYv9NTOp/jqkmjYK5a1SnfyyrK0jIpSoIeRVI7
         whqXL4asVA/uy2VhqokCvIQn9j8gEnt2Pk24E1gZHfakUuBtE+PZq4cAgxB1r0RGFLjb
         V/RN4oVInhRkTRIPtWVSMDBsMGLQTfxyWcrkV+104jVGk895jSTAuh15jgAwCzPcI+hb
         nZF0NTOAoXcHt83dXjNoFM2b54bl3xxE8LSp7u8wGmQLsR0iHEqsEmsDSHZEcmiS6/S+
         us5pgXs5UQ5oEC12Ed0rueD2RJjFOvNS1LZfsnhsxSh+5Jysmoubdyz5rJDxMRZ3Or3d
         0hLw==
X-Gm-Message-State: APjAAAXXDwzqvzRoTZ2AKW6LFVJEBOLttU6OOFjdypgl7PsGoWJFBC+K
	yHbl1qDUwPWMaQlFvaY2r6I=
X-Google-Smtp-Source: APXvYqyuAkuvfbw4sYdh0J29Xr5FK1M3xVCvsa6f0efx/JSMguSsQyXIke10amtEgy6mTxYUhhlqyQ==
X-Received: by 2002:a62:160a:: with SMTP id 10mr5474633pfw.7.1580237380314;
        Tue, 28 Jan 2020 10:49:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls1792529pjq.3.canary-gmail;
 Tue, 28 Jan 2020 10:49:39 -0800 (PST)
X-Received: by 2002:a17:90a:2ec7:: with SMTP id h7mr6388498pjs.107.1580237379766;
        Tue, 28 Jan 2020 10:49:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237379; cv=none;
        d=google.com; s=arc-20160816;
        b=meSQEwSo3sU5cHPZTi1erpMtYZ1YoJyktAKv0JUPIxpDyRSKVVmV63ucD+jUckYAL9
         +6yXGkCboiKz+bHYLi6eDhMpW59hSFL/JYKEUq59fI2Grfo4i4Te6sJoHX+pyJ3jZQVw
         nV02N16Z01rXoB1pzRYYv89rTV/zmUvM/MnMkjUhq9zVcM95WsNOEIXe/0GR4GQ4xUSG
         2eDEEgTC2g2zKxtbPP7Uv1Nsq1PMVOOgVT+9LTJouASIx/SPm1c/SzbXCpbOWd2O0Big
         uw2lZpe7Fg/jZWLeFNxCvtqAiGUkZ1+BTVpVo+jIgni1zWqLea/ZrHi64DshNkU523km
         H0YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5NrTkJC9S7I2hhj4XJ8xHV8Qq0f8F627XO3WJbo8N6M=;
        b=Hd1D5PRc5d6oPqTQ65fAEc79uJBkYqtOVhntVj+jeEgag6kmZax0vJ5kfBXubF6PwW
         TNekynK3Q6ER5g2g88ggHmXVIxrTmWBwFcHof8nqDOVX802USNvDVe/c2PoSVvDlxdrB
         zSGHJXXUp7qMiEhZryTV9POUQKQoexBvZDf5tKNJPOyRBCSDu80mDMVTrqfgfBKm8m8w
         VlO80wpbL6tM4JTxNb6c6FNrshrN9GgYJJzkeqwsupjUvBF9P+ruTDti8bfpqoP3D48/
         hE+w5PBGUmMP5/7eW0Wpr1lZ6MGfK6wB82gH5jyqeRuvHjk31aaWl+885nZYFZHFng52
         7O/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JH4Ntoko;
       spf=pass (google.com: domain of 3qoiwxgwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QoIwXgwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id x13si1091259pgt.3.2020.01.28.10.49.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qoiwxgwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id t4so9133183qtd.3
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:39 -0800 (PST)
X-Received: by 2002:a37:9ce:: with SMTP id 197mr24284571qkj.194.1580237378796;
 Tue, 28 Jan 2020 10:49:38 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:23 -0800
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 00/11] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=JH4Ntoko;       spf=pass
 (google.com: domain of 3qoiwxgwkaaetbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QoIwXgwKAAEtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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

Sami Tolvanen (11):
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

 Makefile                             |   6 +
 arch/Kconfig                         |  35 ++++
 arch/arm64/Kconfig                   |   5 +
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  39 +++++
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/efi-rt-wrapper.S   |  11 +-
 arch/arm64/kernel/entry.S            |  46 ++++-
 arch/arm64/kernel/head.S             |   9 +
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              | 114 +++++++++++++
 arch/arm64/kernel/sdei.c             |   7 +
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +
 arch/arm64/mm/proc.S                 |  14 ++
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
 33 files changed, 661 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: b0be0eff1a5ab77d588b76bd8b1c92d5d17b3f73
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-1-samitolvanen%40google.com.
