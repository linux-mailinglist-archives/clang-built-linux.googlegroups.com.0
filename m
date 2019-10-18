Return-Path: <clang-built-linux+bncBC2ORX645YPRBBOIU7WQKGQEPQKGDHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40ADCA65
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:10:49 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id n59sf6347126qtd.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:10:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415045; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8f0uBx/Q1DHDinAGMTkCkNJmyBw1RzNz6Cn3szcK7iOlrFirN5rhA7GdDFQenp65b
         tLFHUAfyJNBJSQ/71bvmBmlgzOwIskFF+Edo0VSoZeOMvQm8sXUGzh1eJs9wqHbmJoW5
         1wOYhz+e5BCXhHyyDGXXbkknrkqhCu+FT8GS60W+qiRWcfUTCzewLcNd1/e2U5cYDG+G
         2bh3S5ff4QIQJFLxpxJNGGM1mH20ybWvdpJRMgLysGQ6QlSi8yp87jzy4t4AsjzaGHn8
         WAAfgTaMTh/STOlaPngh20Nypq++jV1/NWw8jgGHr4/ABzzTX83DLIkW1C/8s6F0XK5h
         N1mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=9N8dqzjG7pQzVhJzVBabDkcP7WPJqsW9Rlokst+9X+Y=;
        b=jyDukIEestYXw/Pd3bM/LhY+cGewXlkYtriTslGemMN/iTgs3cZGI75CX9QW9YM5ng
         4rZZGldurcC5o2wDZLo0VMGSqjQKIs9l876XkcYHwJa9YpUoRBQLzfotQ135ukdjRF5d
         oGrkYPkPzijpYrKI9/bgEuZ9wzbKesv1JOFo4KyQ4TM9dDfP5WKN+tIEno3DCtvTkEx5
         GrAQ+EKAyFhSbm5w3o1PEQeMO7C+J8xJ2XKCVl+xHinLpZLBZA9Wa8GVTLDsnx9Zx6ld
         9KBTM6W2LAnBMjakh7PkESH4BbQHkST7lXDG2TgS6y9XPQmWNf+yu6Nc3qbesKjyETsY
         K36w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qgbEQaGz;
       spf=pass (google.com: domain of 3bospxqwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BOSpXQwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9N8dqzjG7pQzVhJzVBabDkcP7WPJqsW9Rlokst+9X+Y=;
        b=fi7E9DK/rfdrQC7tj8FFVT4pJCHbhJ0FxPd/mWZzCTBlG2DjRLipjSxRepa7o9wXTs
         d4eRQWE21j4qg0TYATxyIzu41Y7A8nxEZqn3hVrxfk3fNxToSALy0QFkwGyCtWZ2kmBj
         t15dv5vNndCcsc1uRtsJe1lrGqbfB7ZeG9OKwtN/r7MZGXXmtyAi/w/yKWO9KxuQQZiU
         bFWZ9Sy0jzVy8rcytoUIheOE7fv63KmMKJX5nvAHkhyWPLTpAgWZw3XyNReJW4T+JdEi
         ePEGdzg45tKWbCdGe8xM0Z+uRrmCmwafeWmJDRa834VdvResqoX9Ncx5qpxcdf3f/InC
         FBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9N8dqzjG7pQzVhJzVBabDkcP7WPJqsW9Rlokst+9X+Y=;
        b=ZQoBPNk6czaD4ylD/ojsUqqDwbYGu+HpRwz1pJ2aSm2XKymUYV8IluNY1c2Y0Eauqs
         8qIPdxUhP6/jrJibZexg23F58oAb0vTTaO7amrElClRX1YI4aYeUF4bsqqIHNz2B6VLN
         vjmeVPSgldMvQB1SDhNlNrnkmxtf11/9mL+b0VliVOnV8CIrTjA7brY/WPLjgX0eg9G6
         cTlvekhVUm6tK/SAWr6h29K3TXN+48Gvkf5qKrkyNbh3fH4anJabK3Yui8oAaQJqhle4
         wzkqink5h/SijCPQOKOUsYnVuAft4qmWBxUauEPgjCIc8Xar2Kc3JjsGKOTeYtACMjul
         w4dg==
X-Gm-Message-State: APjAAAUoRU1YjuvslRRDRG30bv3dhQaL3icYAPGqjlrlS9yfM3nlEc3a
	b5v591ukIij4rFrgEi+gtMM=
X-Google-Smtp-Source: APXvYqzRiWYm0q4DY2b5HsZSAuOb78HjLWrdIYvbr7pWQ8z0W2n8YFyFCnUa/GpG5NhrOepoxgeHng==
X-Received: by 2002:a37:56c6:: with SMTP id k189mr9274528qkb.124.1571415045135;
        Fri, 18 Oct 2019 09:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5493:: with SMTP id h19ls2055670qtq.15.gmail; Fri, 18
 Oct 2019 09:10:44 -0700 (PDT)
X-Received: by 2002:ac8:110d:: with SMTP id c13mr10601402qtj.209.1571415044820;
        Fri, 18 Oct 2019 09:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415044; cv=none;
        d=google.com; s=arc-20160816;
        b=U0E2PsfrlWfcvsjH6thaU/la7p5TA2Al4vSu6o/d3t1CnyaBpdbhOi8fKkJ9RCUcWW
         u4YFHhrivGJ3Z+/JUNftYtQM6W3gpiFg5CDRL+JpvOzjEJ7EPJnYqZyRYG+v/bdUI8PG
         YFcO/T53taYJavp4JkUZV28BTs6F+nXgzKIu7LiNIq2fo8AjjCY0tN084YmZ6TPZs05V
         XIEOHQWZ9wh/4BUGoqgQZjUYNckilMpWS0cMMMNuA6eE/AYvEp2qjOgfPpDYSOyfzf3E
         k39OB4J1lDBWavaf/js2LaEtYxoQkq8tWo9D/pxJPMfJgKacqjwKa08K4zKodVWI+6wZ
         qN9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=t+DRDqz67Twe6Iyofi8RQAeNodEvIc7fNPUNsIrBR+w=;
        b=bXL3yToUGvjtOVob5XDcg8EUeEEWBZ16xP9qsNMCIabn38idRMnMkzpDepKqHRguTt
         4JMV+kxAUkRPfpCXp/xP8QAv0/Jaqu52JdayN9DaHxLuWMioI2lmLNsbCVOwjHp2dWuK
         lyhvYNpxA0sjNUtu8Qbs/ReS3q3cFri23eYGY/VbLCWjvh/09DUrp6qnPbD3saD2kFiF
         +WYnd/2fzEUwPJ3KyyxDqcRRHX931YnCk7+2EK5dbRjBBnOJ7zfUzu8LiUoz7Z4mOsEv
         Ma+RWt+JtO+QiF/hmpNNLRVuguO/WRgJTPtMN14XQl9LDyeN+LdcShZzwTgUW1uqdaXi
         qoFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qgbEQaGz;
       spf=pass (google.com: domain of 3bospxqwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BOSpXQwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 129si201608qki.1.2019.10.18.09.10.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bospxqwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id w9so4781085ybg.17
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:10:44 -0700 (PDT)
X-Received: by 2002:a25:a324:: with SMTP id d33mr6752834ybi.58.1571415044349;
 Fri, 18 Oct 2019 09:10:44 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:15 -0700
Message-Id: <20191018161033.261971-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 00/18] add support for Clang's Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qgbEQaGz;       spf=pass
 (google.com: domain of 3bospxqwkagcxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3BOSpXQwKAGcXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
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

This patch series adds support for Clang's Shadow Call Stack (SCS)
mitigation, which uses a separately allocated shadow stack to protect
against return address overwrites. More information can be found here:

  https://clang.llvm.org/docs/ShadowCallStack.html

SCS is currently supported only on arm64, where the compiler requires
the x18 register to be reserved for holding the current task's shadow
stack pointer. Because of this, the series includes four patches from
Ard to remove x18 usage from assembly code and to reserve the register
from general allocation.

With -fsanitize=shadow-call-stack, the compiler injects instructions
to all non-leaf C functions to store the return address to the shadow
stack and unconditionally load it again before returning. As a result,
SCS is incompatible with features that rely on modifying function
return addresses to alter control flow, such as function graph tracing
and kretprobes. A copy of the return address is still kept in the
kernel stack for compatibility with stack unwinding, for example.

SCS has a minimal performance overhead, but allocating shadow stacks
increases kernel memory usage. The feature is therefore mostly useful
on hardware that lacks support for PAC instructions. This series adds
a ROP protection choice to the kernel configuration, where other
return address protection options can be selected as they are added to
the kernel.


Ard Biesheuvel (4):
  arm64/lib: copy_page: avoid x18 register in assembler code
  arm64: kvm: stop treating register x18 as caller save
  arm64: kernel: avoid x18 as an arbitrary temp register
  arm64: kbuild: reserve reg x18 from general allocation by the compiler

Sami Tolvanen (14):
  arm64: mm: don't use x18 in idmap_kpti_install_ng_mappings
  add support for Clang's Shadow Call Stack (SCS)
  scs: add accounting
  scs: add support for stack usage debugging
  trace: disable function graph tracing with SCS
  kprobes: fix compilation without CONFIG_KRETPROBES
  kprobes: disable kretprobes with SCS
  arm64: reserve x18 only with Shadow Call Stack
  arm64: preserve x18 when CPU is suspended
  arm64: efi: restore x18 if it was corrupted
  arm64: vdso: disable Shadow Call Stack
  arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
  arm64: disable SCS for hypervisor code
  arm64: implement Shadow Call Stack

 Makefile                             |   6 +
 arch/Kconfig                         |  41 ++++-
 arch/arm64/Kconfig                   |   1 +
 arch/arm64/Makefile                  |   4 +
 arch/arm64/include/asm/scs.h         |  60 ++++++++
 arch/arm64/include/asm/stacktrace.h  |   4 +
 arch/arm64/include/asm/thread_info.h |   3 +
 arch/arm64/kernel/Makefile           |   1 +
 arch/arm64/kernel/asm-offsets.c      |   3 +
 arch/arm64/kernel/cpu-reset.S        |   4 +-
 arch/arm64/kernel/efi-rt-wrapper.S   |   7 +-
 arch/arm64/kernel/entry.S            |  23 +++
 arch/arm64/kernel/head.S             |   9 ++
 arch/arm64/kernel/irq.c              |   2 +
 arch/arm64/kernel/probes/kprobes.c   |   2 +
 arch/arm64/kernel/process.c          |   3 +
 arch/arm64/kernel/scs.c              |  39 +++++
 arch/arm64/kernel/smp.c              |   4 +
 arch/arm64/kernel/vdso/Makefile      |   2 +-
 arch/arm64/kvm/hyp/Makefile          |   3 +-
 arch/arm64/kvm/hyp/entry.S           |  12 +-
 arch/arm64/lib/copy_page.S           |  38 ++---
 arch/arm64/mm/proc.S                 |  69 +++++----
 drivers/base/node.c                  |   6 +
 fs/proc/meminfo.c                    |   4 +
 include/linux/compiler-clang.h       |   2 +
 include/linux/compiler_types.h       |   4 +
 include/linux/mmzone.h               |   3 +
 include/linux/scs.h                  |  88 +++++++++++
 init/init_task.c                     |   6 +
 init/main.c                          |   3 +
 kernel/Makefile                      |   1 +
 kernel/fork.c                        |   9 ++
 kernel/kprobes.c                     |  38 ++---
 kernel/sched/core.c                  |   2 +
 kernel/sched/sched.h                 |   1 +
 kernel/scs.c                         | 221 +++++++++++++++++++++++++++
 kernel/trace/Kconfig                 |   1 +
 mm/page_alloc.c                      |   6 +
 mm/vmstat.c                          |   3 +
 40 files changed, 656 insertions(+), 82 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-1-samitolvanen%40google.com.
