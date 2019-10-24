Return-Path: <clang-built-linux+bncBC2ORX645YPRB6OVZDWQKGQEXQNF2LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AC4E3F89
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:38 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id 18sf194703ioo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957497; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzs7uIfLXaMc58z25otCp++MqWaQvX/iypsh7OsgOOe3Xb2xZ1xErE8F/AoWiqcp3g
         qgLoJs9kJ8tEfRcdeTRzz8qNU5V+nT+pgL6UU/GBC8suywAOFq+UTe7VU3E01eMWva3H
         RAoK++UqMNnR2QUSrFuFiyOPvDQYZfKTAdVapplUUpttH1c6/06qIKTgv9fhEnd3iXrU
         SEFnxkoUmCI4ovjsBUc9whGXx2XNoH1WDLLF7bAJDKfjWKtg9qu3sZbjTdPP6Lu066S1
         WPB7nAtJqWLeU1nPOp/r4Xdq0bGc7khdIq9/RVNKp6FLEeT0XRh4QYCmQ+J6XNq5YKQ8
         VILw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5i+rE4UEFLdeJNbqH/OnHqz4Cmqqna6txp9ykOirO00=;
        b=s3UWZSaqWqHTKBf+IWUph/NvPKpBH73IuUnp9iAdTl91lUfzwF+j9KTo7Kwjl280+w
         nvFnSJSCVdrBT8J6PG8g3nxIHkR4h72I4ZwbJoyoZR82YAZP3Irb0B2rsYjeWE2JQqcI
         P47yX6ghRZfkzf34J4m8HrIhcAltspnXfYQIZxcl76xjk2HZX+41E7H8rF+Ayn5/sdoW
         oCyUBTKeeOGNpJvc6XIzq1jX3Lw+1WAl5xgJX3JeDsT+3iN5liZeHA2XQRFF1lAXTOtI
         ZVpykoRT1HsOQIAhtn/HXD3P5GR9aunwSMghzPIZ2grX1lX7FfuBfOa1qXlDmqaqHKZ6
         k1Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pogRYPkg;
       spf=pass (google.com: domain of 3-cqyxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3-CqyXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5i+rE4UEFLdeJNbqH/OnHqz4Cmqqna6txp9ykOirO00=;
        b=A/xc61JGSvPgAM5gKMHWVMKA015GGzsv8vbVSVPNNL57H4ectEqZaqoY6YdQNcsb/H
         JlUTya/OGmnsV1nBN8Mm1BFVc/Zl14G3SiOVvCpJpovP9tl8i+DWL68lG7/DxGO4wqyd
         sOHMR2RCsDDLyMTxdkTFmT5SlN28lVWPCvpnVOb37D66E/ibVLDPyZ1AdKUJgsSn4XiH
         0UDkP+mF72Ccig+1G/aE5Xei/i4F3Y9uRp1BdIWycXcsqa8rYUB3z7XeHL7tqeYQDMpR
         FsyhN7tmKRTLN4st9c9C5VOqUB30e7d/wfvQL7GIlL9KUQna66VBX4jcsYWBCrB+ViNh
         g8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5i+rE4UEFLdeJNbqH/OnHqz4Cmqqna6txp9ykOirO00=;
        b=Rbk2uDHRsaxOFyDqTyt0MSGDbQzG91R1+UhxUQg2La+4E54+q6CVYShUmyhJKlDyIh
         MtRJsJcUJSfMYIj2EMy/CUWHpSOOC1DrDtqaBdVNdoCDrH1+H/7TvDNmI0conKrnoYMX
         X16h7GuIx+wmTCoStf/drsq4zh9eN/ZLgRIt9IbkluyYluT5Y56OXwONfkMdQQLSAcgx
         RCpM8FrqjvSH+rekj0Dn7ZYMkbOK7bHPAjTLUdAPVlGNOdMVMOXPM7sZhM3ILewLzpV1
         aMJ4V3wNtpNFHcSnOx/hQXGc0e46/Qu4Bch4cGWXhVxnlzXPgXn9eZIc1W0Iu2nAhPFy
         G6wA==
X-Gm-Message-State: APjAAAUqeaDcUuzzF3bFZtnIOkCzM2q5cKlmkLi3PX4Al5obFOMr0dl/
	zm+R9pT4ZugfqvFx+HjzG3I=
X-Google-Smtp-Source: APXvYqyLdvBmqYePmTSTRUiIllYSuTx6/A5FOXl49zBXcXOmnEUFqqd04pRfNpxBY0kxnhSLtu7apQ==
X-Received: by 2002:a05:6602:158:: with SMTP id v24mr536683iot.91.1571957497801;
        Thu, 24 Oct 2019 15:51:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8707:: with SMTP id m7ls1371653ild.2.gmail; Thu, 24 Oct
 2019 15:51:37 -0700 (PDT)
X-Received: by 2002:a05:6e02:6c2:: with SMTP id p2mr493651ils.307.1571957497383;
        Thu, 24 Oct 2019 15:51:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957497; cv=none;
        d=google.com; s=arc-20160816;
        b=o8ep3/QD9aVZlpLS9vT0XXceC+xa22SbYOnUbLSDtPQgvL3RpzI3cLBXkcIbMgQS2Q
         tZbdfZwMO5Ku/JmeumLU/3sytwvOtZoPITTZ7zbkMfqHkyE/DwaXx4Dx5M8lUhjv3xs6
         RQFhVMHwn2W5Dq/Z1a2P/VksOpkbUG5jOE9jjtXvFsjxGgfMneBKcLB4kvc0alx+Wg9y
         sk6vCy8+OGM9wnxSkYuZz7+u3PUWaqKmv07W6ygTH4+s98X2TfkedB58wXfjeA0Ifj7l
         Vmp8ziJJfJf5oZ2DoCYZm3erAQ3E/UPuwAJ04eb4sALheXJ+4oNaD6KeYPoFZ8M2TODv
         RgPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oWllzh5vaeGWMmnhX95Qs3eA6Ovd/Uui8NGiRBr6Pe0=;
        b=nzM3Ey7e7W1V4a9UhoRu8jgNmv9Ht0/9zjhNf0WGMocG2MzVoZ1y3A6O8TmwiDohZ2
         eKArt0ffMd1Ll1/DLFR2K3sD2Ws6i/ifw13KnOjDp8GYS9HW9cfEZ937SmF6XEgKtnlM
         Ft0gmfz8eJu7ZsZhSGM3IubCl3+pV7v3CD0tTmynGwJha6FxaD7Bjlv28b/z6psi/Out
         q3E3agsxnc875FktmNZKcMpux8O6GtsgTgFhP9v6N3ukFx/+cYLycC2HA8cdlqh+KvRf
         w3Qw901CXf1Hh6KX5u/GSZSw/47H4lmJhmVl/XrtakL6gG9wqHgXOr1Okb3pxsRBQACz
         5QXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pogRYPkg;
       spf=pass (google.com: domain of 3-cqyxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3-CqyXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id z130si25202iof.5.2019.10.24.15.51.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-cqyxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id v2so176358plp.14
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:37 -0700 (PDT)
X-Received: by 2002:a63:6f02:: with SMTP id k2mr494747pgc.163.1571957496395;
 Thu, 24 Oct 2019 15:51:36 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:15 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 00/17] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=pogRYPkg;       spf=pass
 (google.com: domain of 3-cqyxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3-CqyXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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
feature to modify the shadow stack instead. A copy of the return
address is still kept in the kernel stack for compatibility with
stack unwinding, for example.

SCS has a minimal performance overhead, but allocating
shadow stacks increases kernel memory usage. The feature is
therefore mostly useful on hardware that lacks support for PAC
instructions.

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
 - Changed the shadow stack overflow check for vmapped SCS to
   use SCS_SIZE to avoid surprises when changing configs
 - Renamed SCS_GFP to GFP_SCS
 - Dropped the patch to reserve x18 unconditionally, it's now
   only reserved with SCS
 - Added a clarification why restoring x18 in the EFI RT
   wrapper is safe
 - Added a missing change to arch/arm64/include/asm/suspend.h,
   and a comment to arch/arm64/mm/proc.S to remind that struct
   cpu_suspend_ctx must be kept in sync with the code
 - Moved x18 loading/storing during a context switch to
   cpu_switch_to(), renamed scs_thread_switch() to
   scs_overflow_check(), and removed the now unused scs_load()
 - Added compile-time initialization for init_shadow_call_stack
   and removed scs_set_init_magic()


Ard Biesheuvel (2):
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kernel: avoid x18 as an arbitrary temp register

Sami Tolvanen (15):
  arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
  arm64: kvm: stop treating register x18 as caller save
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  kprobes: fix compilation without CONFIG_KRETPROBES
  arm64: disable function graph tracing with SCS
  arm64: disable kretprobes with SCS
  arm64: reserve x18 from general allocation with SCS
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack

 Makefile                             |   6 +
 arch/Kconfig                         |  33 +++++
 arch/arm64/Kconfig                   |   9 +-
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  45 ++++++
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
 include/linux/scs.h                  |  78 ++++++++++
 init/init_task.c                     |   8 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 ++
 kernel/kprobes.c                     |  38 ++---
 kernel/sched/core.c                  |   2 +
 kernel/sched/sched.h                 |   1 +
 kernel/scs.c                         | 214 +++++++++++++++++++++++++++
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 39 files changed, 649 insertions(+), 97 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-1-samitolvanen%40google.com.
