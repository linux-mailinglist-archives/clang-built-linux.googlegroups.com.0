Return-Path: <clang-built-linux+bncBC2ORX645YPRBV7L46BQMGQEP7Y2GSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6DD362969
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:48 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id c4sf7537205ybp.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605527; cv=pass;
        d=google.com; s=arc-20160816;
        b=VD2pUMxWMl2cfO8zdJExp+mQ/BFUKXjfbCe6vT1h+U9isVsd/Q8ilROZVzgUQkiv7B
         w3Cj119PV1Gmjfs8xgWSCWzBfmvPpGhHngQYjnrOK9zgCfJjRowTpOLz0wNdlTx+8O/q
         Yypj5poWDLXjjocjLtXZzSDfVAxEhjEOd5ZqHtL0zlCXFYgkSyQPozFI5Eok/z7eNHQ9
         2JmLvxY5fiZFwCBeT9NNWvDHBano96lUR2Nvq+GKQ7tCEMrGaqJqyO7ucdqBO4V+QNj3
         oekRiYzn+DMvFhZYBLwp+1hS4GgXoC3jkJ6I7lmRvXr+uMOhHU/w/BdHFbgxdjAmJQhA
         ExUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=byoneNZ28Cqce5819sGtD2Bhq2L2mKN+2O0HoYcNnuI=;
        b=g+XUONtljeY8dVbXPpO+bSrPs3uvcMILgKBm6YY9z6vrDpna9lJ0hNq9o+f/MQk14x
         F8nEBAGRI5wFFA8A7caq73v32MTQmToa4+HfxO9oTSPwwBWjFxJ3zy0QOAJlMRtMhsLQ
         +m295t4RqK0wut3KRiG1hqw06kGjvWrLUsG3gZ6hEhduHVQlccFK7SAGrB4iNK6NmCUi
         dgJRg+uy2gNAgWc9YBXKYZFMCVerUy8B3ztNP6tJQVEu2YlVpl5qIlSOc1nHLA/rjdx6
         coAeYB3VuFQWDtx31abzEsClrUCRSyltuGqCmlvfKrzLn6wnhW0U47rR7wKabI+tlvfc
         TtGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gRhfGBlg;
       spf=pass (google.com: domain of 31vv5yawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31vV5YAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=byoneNZ28Cqce5819sGtD2Bhq2L2mKN+2O0HoYcNnuI=;
        b=AOr5WY4TOPaKaOqC+gmq5Aw8M7Qmu5SniHgQFJxQ+xv6CKUUrhEVbYep3/mgJcTxPg
         k1Feb0wRgBGa0//pZ5bj6wAjVCGzNliKPQnLIqwuWZgrM/1C5PJVQn1O20cc0gfgTkqh
         v/Xdvmv9wMt6/m+EgXp1xomJ45M8MTIrXD/EHg/vSuvLXAfomHz8CsIh3pgqs5vkaeiw
         GUgjv5fzNhPM0UyTO9q/YPgMFuGh/lHbxndiKkBtUDGLYh3XEstvlxPxhHNQ4Tqm9WSg
         MgKFmK6YwLaJlZChq533fjYqH2RCXNFuaXIVCnxCHswXotcMCMZh42WHg+OiBdOrlj6o
         yCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=byoneNZ28Cqce5819sGtD2Bhq2L2mKN+2O0HoYcNnuI=;
        b=DZ4UuEmnoM+9bvn/fhPipKU4sjjOpftCw3JSJw+LfFWcsA6KVOkDIjPNoWCYUMTA1k
         2avvzLcO9WgGVc1vZ18Fo8AdDiEJ7JKvbQ4AFBzoGsouTWLRmCaQ/jg96kbMzF0ut/h5
         h4hLBZPSZ0fKtMRTI1fH+9BxtsEqDHZH1zu/JSu02Hp+xaRTtAXHNnK3C1q73f1nW4xr
         N8a0e6CSbl52nUhisMaja5PS4tndWEAXHOXygLmLfwohytYwSRmF8An0yx6nzfcNsenR
         /a09es0eeqYhLzMhN+rh/Fr9HGmWABUs5GTgUR0UvdkQcOdSLAZt1ozr3monAVEGszDO
         XgYg==
X-Gm-Message-State: AOAM532mzGigNWKM4lrGmrRHErj16f9FDyHaGNCBCrligj2DLad8gO4w
	5MoMsRMbKA30vgpFo7IzaoQ=
X-Google-Smtp-Source: ABdhPJy66vhJkXnUH6T/l/lKWSEZ3/mRL0TMfRyZZ1J8WjwhYCt3Hcti4JtmsAEUz0s+egB+I2an+g==
X-Received: by 2002:a25:b19f:: with SMTP id h31mr1378529ybj.393.1618605527525;
        Fri, 16 Apr 2021 13:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls4941192ybk.11.gmail; Fri, 16 Apr
 2021 13:38:47 -0700 (PDT)
X-Received: by 2002:a25:348c:: with SMTP id b134mr1418064yba.296.1618605527033;
        Fri, 16 Apr 2021 13:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605527; cv=none;
        d=google.com; s=arc-20160816;
        b=H65N/IVuaJG/8jndrgGyYAlsDJd57rUZRES093JFUPC0qmw1UVwqb1lSLeAUr5wVdP
         ZkJQkOqaCRKLyUILxQ8yf3Ub8XD496yj0RRbrOPtbHp2btdFxk7A8VT0TrNByj8pbZf7
         jyxkUvgH1c9PMVcahKeTnpUnmTOWDBrrQzLPu7Cnf3KsUeDqqkNMO1QiFgOnmz3g8Jz/
         B57pVhkard+62EQHNXrGEV8WKGQ6b+z53sNVu4XGUyOclGIL27EhrdBPRKmsOHn+ugn+
         qQweRDeVEdqNXTioHE1BWhVVJMedJM2bRynoYCs0P+iw5z6YX79Z0P6KIRhT8/vIZwYE
         p9kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=nrK50TUoHxhq1t3QCwcADDrYS4vmPROmKvSMBMSjkd8=;
        b=jTo+3HMzOKD5zmzKI4rWP/t12HUnqqgvYw0YI7Ryl3wxcx33vejulWOky97ZiSKKQF
         Zu4ZaqLRsh44CTdbndHEy3CjShYqBKvWM9Nf/pu9FURPsIUoL9pmAX0IzCf6LAVgH8dU
         QtNQv+tqmh2/NUBbMg7pA1SIUvGARfxLp4PXrGXCSQcXBFFPufyYDG2QbdmfKYKAid5x
         4AXIJF/0Lrv0Lglzi+f6sdCYewBNJ3s5KKXA/1SnNH5mea/zYCtNlcoPvG5SordimcIy
         DlENw+WV08DVFRDHtM+tMMOfYr5eQLtU+fObtDO/gtB7vmzn2CfK18rhaV8iVmtMv9hg
         ZtwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gRhfGBlg;
       spf=pass (google.com: domain of 31vv5yawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31vV5YAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i1si587568ybe.2.2021.04.16.13.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31vv5yawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d18-20020a25be520000b02904dcf9ea2dabso204254ybm.21
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:47 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a25:56c2:: with SMTP id
 k185mr1395704ybb.131.1618605526690; Fri, 16 Apr 2021 13:38:46 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:29 -0700
Message-Id: <20210416203844.3803177-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 00/15] x86: Add support for Clang CFI
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
 header.i=@google.com header.s=20161025 header.b=gRhfGBlg;       spf=pass
 (google.com: domain of 31vv5yawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31vV5YAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
checking for x86_64. With CFI, the compiler injects a runtime check
before each indirect function call to ensure the target is a valid
function with the correct static type. This restricts possible call
targets and makes it more difficult for an attacker to exploit bugs
that allow the modification of stored function pointers. For more
details, see:

  https://clang.llvm.org/docs/ControlFlowIntegrity.html

The first two patches contain objtool support for CFI, and the
remaining patches disable CFI where it shouldn't be used and fix
other smaller issues, such as type conflicts that confuse the
compiler.

Note that the patches are based on next-20210416. You can also pull
the series from

  https://github.com/samitolvanen/linux.git x86-cfi-v1


Kees Cook (3):
  x86/extable: Do not mark exception callback as CFI
  x86/alternatives: Use C int3 selftest but disable KASAN
  x86, relocs: Ignore __typeid__ relocations

Sami Tolvanen (12):
  objtool: Find a destination for jumps beyond the section end
  objtool: Add CONFIG_CFI_CLANG support
  objtool: Add ASM_STACK_FRAME_NON_STANDARD
  static_call: Use global functions for the self-test
  x86: Implement function_nocfi
  x86: Avoid CFI jump tables in IDT and entry points
  x86/ftrace: Use function_nocfi in MCOUNT_ADDR
  x86/purgatory: Disable CFI
  x86, module: Ignore __typeid__ relocations
  x86, cpu: Use LTO for cpu.c with CFI
  x86, kprobes: Fix optprobe_template_func type mismatch
  x86, build: Allow CONFIG_CFI_CLANG to be selected

 arch/x86/Kconfig                    |  1 +
 arch/x86/include/asm/desc.h         |  8 ++++-
 arch/x86/include/asm/ftrace.h       |  2 +-
 arch/x86/include/asm/page.h         | 14 +++++++++
 arch/x86/kernel/Makefile            |  3 ++
 arch/x86/kernel/alternative.c       | 21 +++----------
 arch/x86/kernel/cpu/common.c        |  8 ++---
 arch/x86/kernel/idt.c               |  2 +-
 arch/x86/kernel/kprobes/opt.c       |  4 +--
 arch/x86/kernel/module.c            |  4 +++
 arch/x86/kernel/traps.c             |  2 +-
 arch/x86/mm/extable.c               |  1 +
 arch/x86/power/Makefile             |  2 ++
 arch/x86/purgatory/Makefile         |  2 +-
 arch/x86/tools/relocs.c             |  7 +++++
 arch/x86/xen/Makefile               |  2 ++
 include/linux/objtool.h             |  5 +++
 kernel/static_call.c                |  4 +--
 tools/include/linux/objtool.h       |  5 +++
 tools/objtool/check.c               |  4 +++
 tools/objtool/elf.c                 | 48 +++++++++++++++++++++++++++++
 tools/objtool/include/objtool/elf.h |  2 +-
 22 files changed, 119 insertions(+), 32 deletions(-)


base-commit: 18250b538735142307082e4e99e3ae5c12d44013
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-1-samitolvanen%40google.com.
