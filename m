Return-Path: <clang-built-linux+bncBC2ORX645YPRBOHHQOFAMGQEZ6J222Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7489A40B783
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:10:49 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id m8-20020a05680806c800b0026702f1769bsf219991oih.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:10:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646648; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngLdC0Tw6uan68HCwxSA9uYW4s/CaFwyGcnglYOH7/D2Z8oU7cqs+ej4KcM8HinuRE
         +qO3PnTodiYJeFLmAJo9jnTvtl+HGAHtc0lMuAKmvIqM5lxNyW+PJgWFUl5SXENpkOWW
         gZNqIFPtUWwfebv6f1dyLeSYraAK26hR44Nt3icFxcMDBl1weYOgNvcvu94tN9Smdv9i
         +XuCFtWiuJdaTo65PgIgdBzUtATzXq8FC6uLQ0FjuzCzgYseAh80ADSH5ikPiChZHbXM
         EjAKQDvFyxYA0rcmvd9wDX/0adLYJ7GAfjBXo+24jsa1Uybmpd6TWxK3AAh2TPkOiKoz
         9jsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=VGw8AGdkgSJ2JleummjUa25O/qcCATxtfDWcmA3zGLc=;
        b=NU8PUSzTaqxkM0lp0eY/FPdLk+ckqAjirnwbD7ncD4Nc513+ewvY6Y8HBP2EBdOjVS
         7Wow354Z2Zt7sTVnJXU83S7c+TkinjefbtCRATWtx8EcMpjlX9Pc3cgBs1GHneThtbKA
         AdbgQMCBwjWvDuSuXn76Ef/rxs/btHwk65yor8YXtI6I6jyAtPXAjuNuayqI2kgOKIIn
         CO88aqNuUvPcTM89NjNg2VzEnxhn7o4neQJMXsQDiMlr7KxBQhXGK9FOHNYt841ZVvdj
         57aGOXlpnH7P36SXh42IOBn/gwMQoV8G53hOOdJ7vujfo1dPEMzZ7KqH9/5qfkiQlkku
         NNOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ZYLtvV6X;
       spf=pass (google.com: domain of 3t_nayqwkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_NAYQwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VGw8AGdkgSJ2JleummjUa25O/qcCATxtfDWcmA3zGLc=;
        b=W8asQ3SoncQm93E6THdFoGWje12vywH/PZA2ipGenieCBmSed6vNYRNjDTsTT09jOz
         T7czXaM8U93YO3RbrtrFyp9F2bUq4/WaGj1pLScX/OBciLuO8yU7UVmx+rkmVMnHAaw7
         dXV/HmRQEf+DlSgEMnVk0HuyRxPQvBnFjmkVeBOiszTQPH2EJCgmsECtsy7jTsnIWbkw
         RZF3EcIUi0dr7bcNtWQIUzhs9z0EARXqzyGMHvYoAXRXsPBUk2tMA7r0QuxpOi4aHh1P
         Rx4gRVsvwBDuoGljnVrCfEhmCb/lX0FWGMNS3JY/HtRrZjfTdAN+pacjX7CcP9H3PkNX
         N8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VGw8AGdkgSJ2JleummjUa25O/qcCATxtfDWcmA3zGLc=;
        b=DeWy5xNcAWXO0VLvmW/8C7unKQiDps+X9SNxj9MK4n8VOMI0rmxX5/YxG4IG7Uh0p2
         yLiB1i/nOjHrub299VdtZe4XY40xJGI9BHAgt8Nh2nwoA/1fMpeOrgNv7DSky7QLcMZW
         Xxzhe2rOCLUxvnE1YFy/MiFC2RQMJzww7Apc+Oz/Wn72QOI5aXmoXLocHsIHf4ueQaL4
         lQhPRGb2UZoqrrNfXBOzTS0pHm9x8fGn6573tSViSOPROXhfE8OwOcNbPsHkf+XPkR9I
         AvZAO8NpDaKKF+chc8+z3lzckJkGomK/2cUQ6SLUOdQmv+p2kIfaEVZCDYn7T7Nn7Agl
         NByQ==
X-Gm-Message-State: AOAM530Ex+COldmMXbaFAK7EBqwU5dep+Z4FEKLLnnMwfm3hxnY+eg+y
	ssMmiMfOh4eLzyO9dlkAWsU=
X-Google-Smtp-Source: ABdhPJz+d47/lY174ZGa9UbdkJDng3gGhRtjfHmIdgIEsM7ZbnQ6hsby4h2TSD/BLalITUmz9gA9TA==
X-Received: by 2002:aca:645:: with SMTP id 66mr2600367oig.145.1631646648449;
        Tue, 14 Sep 2021 12:10:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:53d2:: with SMTP id h201ls2313397oib.0.gmail; Tue, 14
 Sep 2021 12:10:48 -0700 (PDT)
X-Received: by 2002:a54:459a:: with SMTP id z26mr2555115oib.165.1631646647957;
        Tue, 14 Sep 2021 12:10:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646647; cv=none;
        d=google.com; s=arc-20160816;
        b=TEJNsjU/45laMzaO0w87HfrYH0eqAHCGEuPa17YXMTQ3PPI5NQ+ejMPbK3RWDdoVla
         S+fJsyNsWBnTdcLnu38LKvU9iMKPAq1jKgpCW1/5rlC3qTyJu/wHqUBFuSf2yqpl+SGf
         roQflWgLN63ErTpgzuFugsCtSmuAI7fOHY7jU2Ci3gHuw4X1E1c3VjGnpdH+YGtx8tZ7
         nL8CaHnkTQOKopTRDOARBu6k0Na3oM/mvIXKY8is3XX1+vQ2PtZyyjoyTNDD5kSXxjRC
         m8A+Jme3ukvBfC85lkWmRriiH4rf/Kht48nVtKHWAo5+ehCOhouldVvVq+04+QAE/li6
         S2Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=0GzzZ7fzGEuoqvnrH5xkZsITGuoIfAORG+08eeMzet8=;
        b=xwnZmliybIwKQeO9aK1fvQ4nq7yJk6RM7Wb29iiwBY4Gn8F5+2QxbmLEaOw4kjapoX
         KgJgIsrj8e9Fh5AJ5/Eg12YYs0Kaf4anKeRFxVwmUlpksQ2/SdM9Yr3JHWSMk5FUuSE/
         RwTvDhtP1L1lhxwG8ceWkmGRtb6iatNNaBBFkymZCso7VyTy6JthIIK1mYU25IgLW1ov
         ORs5me8EiDdyIwzHuL9zTP580/oXTZpcn6xme1lSccV3QZzdpSnKcpHr5PWnV0R5iLQm
         kQUl2ZytYTNp0ZQQlLTikcMgJspTp+NKL6Y7iAxb6f+6IHg/89N8s0AvVaAnSoGVu9Gm
         +Z7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ZYLtvV6X;
       spf=pass (google.com: domain of 3t_nayqwkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_NAYQwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w16si1025779oti.5.2021.09.14.12.10.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:10:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t_nayqwkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id h10-20020a05620a284a00b003d30e8c8cb5so689668qkp.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:10:47 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e0c7:: with SMTP id
 x7mr6956102qvk.55.1631646647327; Tue, 14 Sep 2021 12:10:47 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:29 -0700
Message-Id: <20210914191045.2234020-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 00/16] x86: Add support for Clang CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ZYLtvV6X;       spf=pass
 (google.com: domain of 3t_nayqwkaliksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_NAYQwKALIkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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

This series adds support for Clang's Control-Flow Integrity (CFI)
checking to x86_64. With CFI, the compiler injects a runtime
check before each indirect function call to ensure the target is
a valid function with the correct static type. This restricts
possible call targets and makes it more difficult for an attacker
to exploit bugs that allow the modification of stored function
pointers. For more details, see:

  https://clang.llvm.org/docs/ControlFlowIntegrity.html

The first two patches contain objtool support for CFI, the
remaining patches change function declarations to use opaque
types, fix type mismatch issues that confuse the compiler, and
disable CFI where it can't be used.

You can also pull this series from

  https://github.com/samitolvanen/linux.git x86-cfi-v3

---
Changes in v3:
- Dropped Clang requirement to >= 13 after the missing compiler
  fix was backported there.

- Added DEFINE_CFI_IMMEDIATE_RETURN_STUB to address the issue
  with tp_stub_func in kernel/tracepoint.c.

- Renamed asm_func_t to asm_func_ptr.

- Changed extable handlers to use __cficanonical instead of
  disabling CFI for fixup_exception.


Changes in v2:
- Dropped the first objtool patch as the warnings were fixed in
  separate patches.

- Changed fix_cfi_relocs() in objtool to not rely on jump table
  symbols, and to return an error if it can't find a relocation.

- Fixed a build issue with ASM_STACK_FRAME_NON_STANDARD().

- Dropped workarounds for inline assembly references to
  address-taken static functions with CFI as this was fixed in
  the compiler.

- Changed the C declarations of non-callable functions to use
  opaque types and dropped the function_nocfi() patches.

- Changed ARCH_SUPPORTS_CFI_CLANG to depend on Clang >=14 for
  the compiler fixes.


Kees Cook (1):
  x86, relocs: Ignore __typeid__ relocations

Sami Tolvanen (15):
  objtool: Add CONFIG_CFI_CLANG support
  objtool: Add ASM_STACK_FRAME_NON_STANDARD
  linkage: Add DECLARE_ASM_FUNC_SYMBOL
  cfi: Add DEFINE_CFI_IMMEDIATE_RETURN_STUB
  tracepoint: Exclude tp_stub_func from CFI checking
  ftrace: Use an opaque type for functions not callable from C
  lkdtm: Disable UNSET_SMEP with CFI
  lkdtm: Use an opaque type for lkdtm_rodata_do_nothing
  x86: Use an opaque type for functions not callable from C
  x86/extable: Mark handlers __cficanonical
  x86/purgatory: Disable CFI
  x86, module: Ignore __typeid__ relocations
  x86, cpu: Use LTO for cpu.c with CFI
  x86, kprobes: Fix optprobe_template_func type mismatch
  x86, build: Allow CONFIG_CFI_CLANG to be selected

 arch/x86/Kconfig                      |  1 +
 arch/x86/include/asm/ftrace.h         |  2 +-
 arch/x86/include/asm/idtentry.h       | 10 ++---
 arch/x86/include/asm/page_64.h        |  7 +--
 arch/x86/include/asm/paravirt_types.h |  3 +-
 arch/x86/include/asm/processor.h      |  2 +-
 arch/x86/include/asm/proto.h          | 25 ++++++-----
 arch/x86/include/asm/uaccess_64.h     |  9 ++--
 arch/x86/kernel/alternative.c         |  2 +-
 arch/x86/kernel/ftrace.c              |  2 +-
 arch/x86/kernel/kprobes/opt.c         |  4 +-
 arch/x86/kernel/module.c              |  4 ++
 arch/x86/kernel/paravirt.c            |  4 +-
 arch/x86/kvm/emulate.c                |  4 +-
 arch/x86/kvm/kvm_emulate.h            |  9 +---
 arch/x86/mm/extable.c                 | 64 +++++++++++++++------------
 arch/x86/power/Makefile               |  2 +
 arch/x86/purgatory/Makefile           |  2 +-
 arch/x86/tools/relocs.c               |  7 +++
 arch/x86/xen/enlighten_pv.c           |  6 +--
 arch/x86/xen/xen-ops.h                | 10 ++---
 drivers/misc/lkdtm/bugs.c             |  2 +-
 drivers/misc/lkdtm/lkdtm.h            |  2 +-
 drivers/misc/lkdtm/perms.c            |  2 +-
 drivers/misc/lkdtm/rodata.c           |  2 +-
 include/asm-generic/vmlinux.lds.h     | 11 +++++
 include/linux/cfi.h                   | 14 ++++++
 include/linux/ftrace.h                |  7 +--
 include/linux/linkage.h               | 13 ++++++
 include/linux/objtool.h               |  6 +++
 kernel/cfi.c                          | 24 +++++++++-
 kernel/tracepoint.c                   |  5 +--
 tools/include/linux/objtool.h         |  6 +++
 tools/objtool/arch/x86/decode.c       | 16 +++++++
 tools/objtool/elf.c                   | 51 +++++++++++++++++++++
 tools/objtool/include/objtool/arch.h  |  3 ++
 tools/objtool/include/objtool/elf.h   |  2 +-
 37 files changed, 250 insertions(+), 95 deletions(-)


base-commit: d0ee23f9d78be5531c4b055ea424ed0b489dfe9b
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-1-samitolvanen%40google.com.
