Return-Path: <clang-built-linux+bncBC2ORX645YPRB5E75TWQKGQETFDDBDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A4CEB50B
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:46 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id y7sf5765708ilb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540405; cv=pass;
        d=google.com; s=arc-20160816;
        b=xdQVC5PEjR8YmVJgTO8/cO2Nie5LU1o+rSfvlm7+fTeiuO0q0Pw0gtCo/dwXXh1afr
         n6vsNNboaaN+iz35xQ8r5rDf6baVTAku98ULujgl9b7qBhS8BaS4yUJQfhb4HaYYTIy9
         1mxBliXHWAjsxeVCpVq+Pf/nJ6TJ/z69m4JqXnUrZHMqFHE92CIhtx6Gvg9/2U9PzHN4
         MSBcC3hhtDEWf9leVvNTeR5oKb5ouZkcGyJqDgpEVQyY3yJEv/uFk72fk6uBCBUgy4fP
         t3lIWnFQTmBe65yH3cV8xazqY5QG1Cs8wKvsuMCCluygnC627t0Qh8pUnJpJNBIfXx5+
         LvbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TUuRndWHFhMCE20ivMSgPUqr4GKLbCok4ECjkF4ohIU=;
        b=o4s1kekcxyHy2IGscHONgEB6g8bV+1QkXzDpJqRJzqL2ZXXM0pvAMkSEC3FWOWHEbB
         paOu5PLhPRgZszzgiLCpICJ1Si7AtB5vmcpHHiDPlSpqltdiYUdZdA8txa9hfSKeYKDa
         iOsTXxJRfnKX02ekgJPWNmTsC812yJYOf4TqfkcV2yxdKCpmqvRIdURgAzvKcXE767hi
         gR5WUVQWQahpCwcWMbbSFpjPFL8CMsrGE+Du7GmitUaxGvZEKW2Cf8xFUfjaU1Qr7kjm
         MAf4DlmYW7cb+cCJVpLrJ8eFTCQxbRO8C0mIbcuRy36VUGgb8YCBzolB0qt7jNo2s3mW
         UTFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X72pCBme;
       spf=pass (google.com: domain of 38w-7xqwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=38w-7XQwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUuRndWHFhMCE20ivMSgPUqr4GKLbCok4ECjkF4ohIU=;
        b=lqwzN8VcAnOSXzU3JO+/zMiLHY7EDx+ytAMIIl6yVCzDNVcaL7P6kuV0+31SG2iWLy
         dQisrLz1Uby/as4Nn/0qofB9ajRyXw6zltARSxLxRbVYZehO+QeRAVOjoGYCbQJJ+syw
         npMmKMi4ZVFAbMJKsx1K+eaUE8nsM+G01k6j5s0JV4bFrR+f24IMlwC+vk0pGwIse2PH
         K9OYRo0h0ByLCXQpJXYj+hvJRHkNZr5QjglxDQ00WZ9V3kAai/Re6FgkF6CS8zBuEkrE
         c1URO5afn/HuXBnyOYcdSNiblb25N4oB3p6rCH3IVe0xGhcaMUjzAnxiC9V4Uv6s+hIp
         OzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUuRndWHFhMCE20ivMSgPUqr4GKLbCok4ECjkF4ohIU=;
        b=lBbsZHP58700clbPvgQzEwJ8/u8Q9IyXi2EBJgfRHzSTZzjGFOMtsGuGJVVibnacfO
         nqkx3DQfArgbfAIx4q7IIHEAs+KHkt2U3FClNMaAcxRdeFWK/hJmXgkUR88YzwL0uwq8
         DZOP/QgBCoFMRRBgITPguuKZMEFyNLgIt8a8tyOwETaw1OzeQ+aXUCv1JWBCzQez9ao3
         b4qkQvkNqLqJGNNwMIftfCVzHzDOz6AbsIBkORiQtjVCopC5vMecG0P9zOEnDPvTT5q9
         Ez/sBmst24/vMObGq73fJJNeZu4E8nFafsLDQWTIEI1hdXJfR2yajTBP7nUb/i70E7YH
         6TNQ==
X-Gm-Message-State: APjAAAXrnbkyzuWJxrvMcFJ6s0SgQisENUyaRDd3iVKTQQI7XMNagfoG
	+YAiZIViQ9fPSdNTut1FVEY=
X-Google-Smtp-Source: APXvYqyQ66uIoWHjk4eqFFGP+hCs8ZpYycqcqws5cRhbyB4slb+z0rC4KPMoB07hcpgEbstJguK2Ow==
X-Received: by 2002:a92:d211:: with SMTP id y17mr7411635ily.28.1572540404963;
        Thu, 31 Oct 2019 09:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls695546ili.5.gmail; Thu, 31 Oct
 2019 09:46:44 -0700 (PDT)
X-Received: by 2002:a92:d392:: with SMTP id o18mr7477055ilo.300.1572540404576;
        Thu, 31 Oct 2019 09:46:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540404; cv=none;
        d=google.com; s=arc-20160816;
        b=mxN0Yt9+p4UskZE8T3fg6V/aq6j1UsWOf2TskKoalfcwrlsao1Aizjl2d4WIEgEOmr
         PGZR4Wl1V+1fa0GmcWv03yP+/cJHg78DZstSFm2RtqWgFSq9sjfLvJAtBk/V474UcFeZ
         VScgk3wLcAlVv7ozADGRApXPB26nUaOZBw0Wh9njbl9DmYdDNsMr5o9VjLcg++aK2BFh
         dJ0raQ4oJrJXUa60SeRHeXCtqZPJYhec3XYRv3N+h8R/P4+JN2uXcazzUVOOL0z2L+XN
         UQTG1qEw0jE5PxxpFJKZKaPRjBxIybumu8SdUoaAbmG8UjDIILhQenZSCs0MHMefeKLV
         eSzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VJW4EixJ7eoVvGoW8WXB816KDrFUl4nwPba/L9J0fDM=;
        b=knCultRk+d+n5hs16XPFYTBa1ND0CWyUYCIewqNph6QvIjNbMv/tWwCqVQplGNajM6
         I7pJ4nzZrAMaU74DGg3gxEVnl2/qjzZnNpdb/skvFgHjtUB0BhQhVImperZhGtUcKSuF
         Pu7tjaPOJsqMxdlSxXRPFIvRUipoEl4Kz7ilWTb2yTxCmCxmjyFVrzys5nfh444ZCfh2
         ZvICLoIx1DjjOKz+mUp3+Qnio6GvPfymJ1B6SDkw6ZWnIEML4ykj72eNGjlIg8Lc/dEr
         TEo4j6Yg7MHiWBCtnmFcxAXZljD1FXMQpG3O7cO42gEyTF+Rgvi1S7cTUWvytburYlUk
         Nobg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X72pCBme;
       spf=pass (google.com: domain of 38w-7xqwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=38w-7XQwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id t64si297625ill.0.2019.10.31.09.46.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38w-7xqwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id g11so4247731plm.22
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:44 -0700 (PDT)
X-Received: by 2002:a63:b95e:: with SMTP id v30mr7752425pgo.206.1572540403625;
 Thu, 31 Oct 2019 09:46:43 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:20 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 00/17] add support for Clang's Shadow Call Stack
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X72pCBme;       spf=pass
 (google.com: domain of 38w-7xqwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=38w-7XQwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Ard Biesheuvel (1):
  arm64: kernel: avoid x18 __cpu_soft_restart

Sami Tolvanen (16):
  arm64: mm: avoid x18 in idmap_kpti_install_ng_mappings
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kvm: stop treating register x18 as caller save
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
 arch/arm64/mm/proc.S                 |  72 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   6 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  54 +++++++
 init/init_task.c                     |   8 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 ++
 kernel/kprobes.c                     |  38 ++---
 kernel/sched/core.c                  |   2 +
 kernel/sched/sched.h                 |   1 +
 kernel/scs.c                         | 227 +++++++++++++++++++++++++++
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 39 files changed, 630 insertions(+), 97 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-1-samitolvanen%40google.com.
