Return-Path: <clang-built-linux+bncBC2ORX645YPRBMNOR6EQMGQEZICOB5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 069EF3F4F07
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:25 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id gg8-20020a056214252800b00363a9ba9f52sf11495448qvb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738802; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZQhUJLXT3q5rLvwd6OyMhh2qlM3/a04Rt3NrqwM6H3MsVbHbpxml+owEMIrxvhWLu8
         0EDETv9YlrRKGIdu+tQCFsMxU8QHwU8UXa9H7QchFW5S38jfo7ywrcrVj7iPMJsa0LZQ
         k6KdscvCnB6yJy5qMARUgPCZhUFVTBLY2OQRHTeny1yfezJlnfAnDQrjvHDsFxXliBI/
         4cgMSHtTCFZlV7jeyq7QMdKkK8O3w/5JvHkkhMoAiCry+FyXhbbSPf4qvJsIv5u8g159
         dbZeBsLIlqYpzC0HAFaDxwFtIB3jzQHpXeJ4HKyK8QUIqFqzsf3cZVcubNsLqNO6Dw9n
         297Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=eJqxuwU0tQ43QjH8fnBty27OQs81cngOyIMMn1EBOJU=;
        b=flZJS8EJTht1yo9GzD1kAGRO59AR8YVL1uqjUf74LUIxTbJ/+odjI0O+ThPfmUH3XQ
         ka4KW0MmYHfMp1svXK7ptBj2tV1gCKo6e00HdEGk2zFcUC/lhQ3DsPHYWq3ogYN6Ush5
         s1Nfew5oALAVIDXtxN+ORcYuPMcjG1MjZdYX+400iNrUZIYg2eLShomkZePQOZnRngJv
         UzRNEsNazwm8CuDzMAqqGsa6aUGP7GNj6QKa6OjnKEhXY1yAQgeAvqu2S2Pt1ZaU7L2w
         koQ8UjRp6OpueFmQ2JoMDa+vVBZOXEfEPlNG2uyYNZ9+Nls4hdyCzzxXchuqUcqLWPif
         ViXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MWCB6Wvx;
       spf=pass (google.com: domain of 3mncjyqwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3MNcjYQwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eJqxuwU0tQ43QjH8fnBty27OQs81cngOyIMMn1EBOJU=;
        b=jbcw5MijI+hgJRujwKjtg9suRWdCxx7549/vDHBvR4IR0RIePwivLFN1/pJO8PiKYw
         IfwtKyAHKN9m0ECBxeiroGLURjjt2KB81r5pwG5k/SMHRVBxpzuQ8oKYKpWiwgrykwd3
         8Y8Jz3huLUS78fe+hu4kj3WkcKlObVesH+5Mj2W/jn+CMibDqabAOW8Az0f2yYrT8sJK
         Zxe0eI7hUS/pN0fK4JZDfN+J9+oBFLkyCYburvWi13Knz7dI9kBGhEDCuNpTpjqh19v7
         LJeQcetLoSE35yETlWVMxllSU7r8wPMXIpWrmPZ027qrdmVC3E+/JMhxPgVHls4624PS
         DOXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eJqxuwU0tQ43QjH8fnBty27OQs81cngOyIMMn1EBOJU=;
        b=MiSih6YRLVooZJGAKnzR+vtwByNyCQpye7HdJKx6yAZ27YG8H1/srPo3tavURqELIA
         Z7LdBDBYumsjcJCvYRdyBIS/tBkHjJQWScQOdY1+PsmBDY3itFGXh/yaSui6LCB5rXIp
         anOX0Yr5nsYwn8GPLCC5g3Hbh3oCOQIHNKN7uXYo78I9dc5vdA8Jnk8kjCGEV+HljXZR
         U6SSjStkD9kW+NWw9e2AfynIHlNkIcEZfjxTaBoWZ7l8Kz6ZNbfozLVraHvVkpMoBGu8
         X34mgBahG3BLlKwcJYYj7Efj7koR37Yh8e7oCrlzZPnMBpNB7Ak3jZdU9m6GJ8aWjyBP
         JrtQ==
X-Gm-Message-State: AOAM532lK1bRGkj0Ori3+UG74QV6gXTzursxtUD4OychdRq2vGU8+rOd
	bySQdjqoe0v/Jcp/xViRXqU=
X-Google-Smtp-Source: ABdhPJw5hH7qGAtMlZS6jFePTz1m8ucuZbczlNdPewKqx27gTVlSuqsUMzyeBn9U+cXuYgR8NZ8bqQ==
X-Received: by 2002:a05:622a:15d2:: with SMTP id d18mr15042233qty.145.1629738801769;
        Mon, 23 Aug 2021 10:13:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f81:: with SMTP id t123ls345471qkb.6.gmail; Mon, 23 Aug
 2021 10:13:21 -0700 (PDT)
X-Received: by 2002:a05:620a:2155:: with SMTP id m21mr22458531qkm.499.1629738801267;
        Mon, 23 Aug 2021 10:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738801; cv=none;
        d=google.com; s=arc-20160816;
        b=ZpYanmFpnMnGbbGEJoQ/eL7ki9Sl54Ti9pyfK3gt6lXOHrqRNN4URgrhu4AZiHiCkC
         3K+bCEH1kDCUFqBmzWcSPNejpqb/o6c2YktCN+NuubajHv+Wzk1i2FukkyZWrMVMBAK2
         dOGS2jMSxjA/w+mJvu3a5NIPePk3pl7yKzk58NSfB3Odmob9P7sgLANW9ug5gASA0JZg
         1QhSMJ5cb3sY6xzGCA3AQCapYAWDD5ExBcJ0Pt8j3iUAG2hukjKIcuD+lTTCjAVeP+BW
         30lG4x6IeRNtLW1xKnBrhoCpElQEd6WTlOiQmg7z8fvnuwvRYG8TOYHSJTKRS0eA39HB
         J9hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=TzNwsac26TTE64TPkO8Zw+SslAPN+OSf9Wllga1ByII=;
        b=REbrTRSpfk3pUfLum4neT5sEYTSDwY1p9wZAz1x5bh6yORBArPhs1zvroqDPBzWO3b
         ji4wtWQGkH7wyosouu/dWmP8Mw3H4idPuI3hKgUSEG5Ft5InyrVXfncc6MPYI/7lmkFB
         o4uumsocv5Q9gfdKwFmwKt3YWHhLIOES8OFNBZPu0QMrxrxM5ifXouYd34v3fWG/Avt3
         MeLmDHMdxyEKPiWVg8eMFqvO35VX/HZUizobT4fV35XbMUVQarrDE/+0tPjk0P4N7tE1
         70wgP7LyDAmdago3G0ErdXpu6Tqn93x4pBZ+peOJNsawZLegzYdzuz2Gal6/jFF9e10x
         8otQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MWCB6Wvx;
       spf=pass (google.com: domain of 3mncjyqwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3MNcjYQwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id i4si1223790qkg.7.2021.08.23.10.13.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mncjyqwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 13-20020a05620a06cdb02903d28ef96942so12307098qky.19
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:21 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:23cc:: with SMTP id
 hr12mr34346389qvb.56.1629738800924; Mon, 23 Aug 2021 10:13:20 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:04 -0700
Message-Id: <20210823171318.2801096-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 00/14] x86: Add support for Clang CFI
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
 header.i=@google.com header.s=20161025 header.b=MWCB6Wvx;       spf=pass
 (google.com: domain of 3mncjyqwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3MNcjYQwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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

Version 2 depends on Clang >=14, where we fixed the issue with
referencing static functions from inline assembly. Based on the
feedback for v1, this version also changes the declaration of
functions that are not callable from C to use an opaque type,
which stops the compiler from replacing references to them. This
avoids the need to sprinkle function_nocfi() macros in the kernel
code.

The first two patches contain objtool support for CFI, the
remaining patches change function declarations to use opaque
types, fix type mismatch issues that confuse the compiler, and
disable CFI where it can't be used.

You can also pull this series from

  https://github.com/samitolvanen/linux.git x86-cfi-v2

---
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

Kees Cook (2):
  x86/extable: Do not mark exception callback as CFI
  x86, relocs: Ignore __typeid__ relocations

Sami Tolvanen (12):
  objtool: Add CONFIG_CFI_CLANG support
  objtool: Add ASM_STACK_FRAME_NON_STANDARD
  linkage: Add DECLARE_ASM_FUNC_SYMBOL
  ftrace: Use an opaque type for functions not callable from C
  lkdtm: Disable UNSET_SMEP with CFI
  lkdtm: Use an opaque type for lkdtm_rodata_do_nothing
  x86: Use an opaque type for functions not callable from C
  x86/purgatory: Disable CFI
  x86, module: Ignore __typeid__ relocations
  x86, cpu: Use LTO for cpu.c with CFI
  x86, kprobes: Fix optprobe_template_func type mismatch
  x86, build: Allow CONFIG_CFI_CLANG to be selected

 arch/x86/Kconfig                      |  1 +
 arch/x86/include/asm/ftrace.h         |  2 +-
 arch/x86/include/asm/idtentry.h       | 10 +++---
 arch/x86/include/asm/page_64.h        |  7 ++--
 arch/x86/include/asm/paravirt_types.h |  3 +-
 arch/x86/include/asm/processor.h      |  2 +-
 arch/x86/include/asm/proto.h          | 25 ++++++-------
 arch/x86/include/asm/uaccess_64.h     |  9 ++---
 arch/x86/kernel/alternative.c         |  2 +-
 arch/x86/kernel/ftrace.c              |  2 +-
 arch/x86/kernel/kprobes/opt.c         |  4 +--
 arch/x86/kernel/module.c              |  4 +++
 arch/x86/kernel/paravirt.c            |  4 +--
 arch/x86/kvm/emulate.c                |  4 +--
 arch/x86/kvm/kvm_emulate.h            |  9 ++---
 arch/x86/mm/extable.c                 |  1 +
 arch/x86/power/Makefile               |  2 ++
 arch/x86/purgatory/Makefile           |  2 +-
 arch/x86/tools/relocs.c               |  7 ++++
 arch/x86/xen/enlighten_pv.c           |  6 ++--
 arch/x86/xen/xen-ops.h                | 10 +++---
 drivers/misc/lkdtm/bugs.c             |  2 +-
 drivers/misc/lkdtm/lkdtm.h            |  2 +-
 drivers/misc/lkdtm/perms.c            |  2 +-
 drivers/misc/lkdtm/rodata.c           |  2 +-
 include/linux/ftrace.h                |  7 ++--
 include/linux/linkage.h               | 13 +++++++
 include/linux/objtool.h               |  6 ++++
 tools/include/linux/objtool.h         |  6 ++++
 tools/objtool/arch/x86/decode.c       | 16 +++++++++
 tools/objtool/elf.c                   | 51 +++++++++++++++++++++++++++
 tools/objtool/include/objtool/arch.h  |  3 ++
 tools/objtool/include/objtool/elf.h   |  2 +-
 33 files changed, 166 insertions(+), 62 deletions(-)


base-commit: d5ae8d7f85b7f6f6e60f1af8ff4be52b0926fde1
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-1-samitolvanen%40google.com.
