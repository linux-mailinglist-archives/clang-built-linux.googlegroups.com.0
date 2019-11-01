Return-Path: <clang-built-linux+bncBC2ORX645YPRBK636LWQKGQESBVX75A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 715AFECAED
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:11:57 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g7sf7167157plo.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646316; cv=pass;
        d=google.com; s=arc-20160816;
        b=w1fM/+tSCl1Z8G2ssCW0qFktYCpjg1SBfr6AJ1yJyYsMd8iwY4NH9Svf+JeUh82tzd
         FIXTbypEs19w/as1+KTriAZpQhor8CLgUrm6hJsAGwVk0xMxDOjreadVNTMFVjezZ/yI
         zZqmPGfSWrhCOXqI2vJOMUgOT+pYMJIZWJZCzpRtJefGVC1gFJPYm/6iKYex/+q4IsOo
         UsiobqueMt33ImBQohu6DjH/NzLRWbOE0gs1RcncBpcQ9rqfsgIuF7okyAs28QraPHK4
         J1n0In7TrEfQtIowRy0+tjAQtV9fN8NGw6D1nyN6TTZBPrgiuH/pOsYZF+A70kHGCe6p
         yfpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/Yq2y9432PRi4BOsgqacH+mNMZU2Y1HV5TcqgTkq1BE=;
        b=MhtkTC0toOLbdlx1l70Jt4x8/pFuVPPn2cG6CxrRwva6ov85qpXnzCBMfge4U+5vf5
         Oxm0T3OYzNEG17Onc9nuDhPZFRp0gq8UqVoUsjUpIfdmQxnEMOtZb7v8UNmzxtV0r6oS
         B/nA263dKuwqAIX9oJHgjbipocMz6HztaX0JJlmODEA4H/SOuuzPl8R02fa05JBsTfWu
         KWWao40WCgUM9D6sLMdd78xHrursRY0b7W5bI90oZ0JAJK8BuwSfd6RNPzdtrgb/vgmH
         w6hhleM+rsxf5tI5EmnDtvgxNKZrE1QHnrauLspKCBRHW5HKL6PGgri8Ku9VZk/qQkjz
         qLOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pA7VrUMF;
       spf=pass (google.com: domain of 3qq28xqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3qq28XQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Yq2y9432PRi4BOsgqacH+mNMZU2Y1HV5TcqgTkq1BE=;
        b=mAe+3hVKy9XNC/CIGV5zuNz4vqdLv01ouecYVbh74vzI+n9WoBTTZwFl9bONnuDtXj
         vrreO/mFqGfXk8okGQrhGBwFJbIDaVjFfFzUzrjr7TRXvq0Lo/G5LJcMwyXvShm0t7gz
         IoDD3BAPKOBw0IR2wXSMv6c1FXyQcgKVgdmk5U0s0Bmy4E+2KDOjLvyVIadjRJGdHYtG
         QBEFpR7AcS9qiJe8eGhup1vqfHev66aV1oFlaou+9LmKItOpTo2AOhGJOhCSWLnPsVo+
         f5VLtTOBqxpGbNptdUD2v1h1K1nSTHKTYPrFECMXKRODC78KOIyA26FWYCDt1fdisRsk
         iPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Yq2y9432PRi4BOsgqacH+mNMZU2Y1HV5TcqgTkq1BE=;
        b=hmGQaoHobvI2iCo8koSU+TQ+KYg+kqQ/1ULNqzE4pagxnO+7MzHXvCsmwSEr3GlqhB
         uakLgGcYv0QG8iqXtMc+UIXU+OtcwIf6SPpQP3MthtZDk/CocaXYQlu3FPhjRHLcQQ4l
         vWPloySlNI8V4ktVBdVtJObIz2DQ8kkSl/b8gtfKf2tFAVNW+h6cn2qGHo5IDXV/7ZjY
         jy202wQugvRzyIWYcaJ2TEdA5jIawIYeyazZr3+1HX1O56hcMn0SWJikoHkG1pZ+pits
         HS4qe/dxzT/iW2J251dGRvwg49suPwnMSoTeQkiPopEQfoHSPbbrQ9fCHNAEkJB+40Vn
         R3wg==
X-Gm-Message-State: APjAAAWZcnm4niYk5E8YrlMdeyXkMxqyM0az6q/LcXAP/zCOiUmJWA0r
	iJJOirQCRqDR3avZPNwfmPM=
X-Google-Smtp-Source: APXvYqwW11vsuDdcXW5vC3NCjV6VIStu0npD3QFPIfIyPpdwdOWMzLrgXdIkH6E4btzRBiqIK9FKNw==
X-Received: by 2002:a63:fb15:: with SMTP id o21mr15602517pgh.193.1572646315807;
        Fri, 01 Nov 2019 15:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9f85:: with SMTP id o5ls2035639pjp.1.canary-gmail;
 Fri, 01 Nov 2019 15:11:55 -0700 (PDT)
X-Received: by 2002:a17:90a:db0b:: with SMTP id g11mr18693467pjv.15.1572646315289;
        Fri, 01 Nov 2019 15:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646315; cv=none;
        d=google.com; s=arc-20160816;
        b=CwypK64LRe+dgu0pxMiqoYr3dOLasB5TiQvSqgGlxM0Mq3goD8JzynSrN5iock0+7M
         lDgcYFMT/CrVuod5YrN25pmVAJMSfuZN7EMcGmN/FzmQygDXVj6wNZZduFCc0gVc1+Yw
         brMQ/KjEdzh0dlIFHeOwGRlQI9nFcDFMlCZb6ptnR0UIEg/E8hUM3C5JUOUamI8NrTdC
         UAy+deSG/L4+r17xt+8hXDzUnrP4+9TY1ULxmwurdy/Rh5xQeW6KjHkU1nHF5zOjXjEh
         9QkVNON1p7dao5nMtRRrFHomFmGliR3J0dDkkHqxJcCGy1HIiTKe6FgErWjsTTy5R/Dp
         KY6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QMYlUo6go1QaBsrZ04QyWd4mPltUOCdHxfrp1U4piPI=;
        b=MxQfmqmxeKWcf5sw5U1ZNB8rJX0+poga/Io+xa4p8jdh6ACaJzzIK2ZHiwKNehI1Mf
         mJYNLvI5eKHI63uyq74pzLy2xg9HAem3+ci8MzASJKeBWhqjBNJpTX+RrzvoGv2wV0Z7
         eUikLMiNaCgPR7YoM1JrTLua0ALNejUVwITUMhrCSqZgW07kqzMo816xv/HtU7d61VtI
         J+1AeN7i7DoGrbGCp3CjFyOTkuq4BjZbqyY85YQMgLR5PvSgd+jlfYGlA48UjdIp/3bN
         Ea7HDrmFazKiQWhonz6zpffaRHFjSHQhgjgtizV/UEi5oDYeQgq5tSk44BPkYAUOEVFA
         vboQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pA7VrUMF;
       spf=pass (google.com: domain of 3qq28xqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3qq28XQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id x10si527131pfi.1.2019.11.01.15.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qq28xqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id t28so8018275pgl.21
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:11:55 -0700 (PDT)
X-Received: by 2002:a65:64d4:: with SMTP id t20mr15535375pgv.181.1572646314485;
 Fri, 01 Nov 2019 15:11:54 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:33 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 00/17] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=pA7VrUMF;       spf=pass
 (google.com: domain of 3qq28xqwkaosfnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3qq28XQwKAOsfNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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
shadow stacks used by other tasks and interrupt handlers in
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
to alter control flow, such as function graph tracing and
kretprobes, although it may be possible to later change these
features to modify the shadow stack instead. A copy of the return
address is still kept in the kernel stack for compatibility with
stack unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

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
  arm64: kernel: avoid x18 __cpu_soft_restart

Sami Tolvanen (14):
  arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  kprobes: fix compilation without CONFIG_KRETPROBES
  arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
  arm64: disable kretprobes with SCS
  arm64: disable function graph tracing with SCS
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack

 Makefile                             |   6 +
 arch/Kconfig                         |  33 ++++
 arch/arm64/Kconfig                   |   9 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  37 +++++
 arch/arm64/include/asm/stacktrace.h  |   4 +
 arch/arm64/include/asm/suspend.h     |   2 +-
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |   7 +-
 arch/arm64/kernel/entry.S            |  28 ++++
 arch/arm64/kernel/head.S             |   9 ++
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/probes/kprobes.c   |   2 +
 arch/arm64/kernel/process.c          |   2 +
 arch/arm64/kernel/scs.c              |  39 +++++
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +
 arch/arm64/kvm/hyp/entry.S           |  41 +++--
 arch/arm64/lib/copy_page.S           |  38 ++---
 arch/arm64/mm/proc.S                 |  73 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   6 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  57 +++++++
 init/init_task.c                     |   8 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 ++
 kernel/kprobes.c                     |  38 ++---
 kernel/sched/core.c                  |   2 +
 kernel/sched/sched.h                 |   1 +
 kernel/scs.c                         | 227 +++++++++++++++++++++++++++
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 39 files changed, 634 insertions(+), 97 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c


base-commit: 0dbe6cb8f7e05bc9611602ef45980a6c57b245a3
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-1-samitolvanen%40google.com.
