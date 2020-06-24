Return-Path: <clang-built-linux+bncBC2ORX645YPRB37QZ33QKGQE6ZFMT3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 151B4207CF9
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:32:49 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id z6sf2159722otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030768; cv=pass;
        d=google.com; s=arc-20160816;
        b=tML61n8+iX2M4MnJwcoLkqqC+/SZFSmnayE+uXM5BuRqzKqVsMPJnmINzSFmre2AOB
         d+4FnqoF/4BqK1iP5u0g35ak/F5pO7enkRsa2hMU6JSxpL0FN9A4QZf8tSx99jUkZVLf
         XaRbGqVj8qgRFp1JyMwD5HSAyf8GYyj6cmhPh798EFQXvL4HGYqg3GSRE1tQ04Rgcr05
         Y2CJ4u5Gd1wu0eIRJpui//t1zWfa5gxgLGswaH8F6/M1xxUZuoAtFAvP/nlMMHsxkCDS
         3P+GtP8uhbqi+vx/A5seOWB7rCwG5cLLHtG8DSMn4+yGKsqcq0Ns2D3iELdn9Q5h+j8w
         w8Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=GuZhuD6CH8CCb+dQmcARdi80JMxihj7WKRjbUQlGh2g=;
        b=uzBBhjoNvyA4SKUVIoS+vS1fbkLO5rmgYOXCwc1X/jC37Hdyx9ggyvmLHEYfEX3PdX
         y71pK/hD6amGIgfKK1NnfZX4E5nPL4BtHiXxgpyrnwyog8lbxHBc2WpUmXdukL2TETsQ
         c6VbjI4MMCYpkcUmn5aVJvlX9ynmy8VHErF3dRzzilhcbksFmCvOP7/xOZsPvzC0SoEZ
         wmr0O+lKTviuhlGTzXTfJbdcmG1EDt6cvocMAfmQ8kyC54kjcxdOVN/eXAVpeg/oq0eU
         KobYABzbJTN0IeXnlQNWwm+lui3UZ5GYArJaekqqhVj76t9/33H9ivHdpZXO8WlwiGod
         tGpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uawx1Hym;
       spf=pass (google.com: domain of 3b7jzxgwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3b7jzXgwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GuZhuD6CH8CCb+dQmcARdi80JMxihj7WKRjbUQlGh2g=;
        b=LW9R1Mwvh4v0y1e4Gc2lfHrHzqfXnm/gfoBA/kCj2GT9Ab00+DpPE5hylpZn2j7Z+0
         S97v90xVFSffY6IMliBIOtUORO5HNKLh9zwiAYNHAi61sDAMfkDXqsad3xwh3wmGIGsP
         eaHINlJKC/PIWfQDoKum8oXyIaV1DXdCuOyzyUc35CePHMgyP8eFisNStBohP1sqfPDH
         +vZbdh3TQ65FCRV6JgCdsecz1M8a8n67VNVYKKn+RASSrb1ovKPUFhI9kPVRjNii8ds1
         ypO5Mg3k/tvi0mud31mKX2WmdkuJwya6uclMVHhuhBmhtB3BnbFZvdAqv3JwLfL2nWuT
         hR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GuZhuD6CH8CCb+dQmcARdi80JMxihj7WKRjbUQlGh2g=;
        b=Kj30bliu8QEAvxlO9qvcDN2BD6HWMw/QzRvblbUbcs158L1yW+mnnX9SbAzKGdrTsq
         7R/ohJby30Hin4smPv4FeWa5ixhWXWbenGnHk5WKJn05EgKfkM/E2Heb8DIzI8iQW5HF
         QSOitfUnq6v0MOvTg6M06PEYzHw8pdkB/a8ya4YWMIfwBOQ/AxYvDwuB72BDm2PLfdh9
         RB8Eo151ZRdjRqEUi2oyE9dyUPZTXDzAIbiYscipa3krkrGBg8tQy1QOwDcUNgZ0fDR7
         TbFbh51HkgYjWlMEj3LDTbgPSR/SSJNzSUIiatpd9ym3qwk4XjKKvzsFGYdFI5/7QTIL
         gVVw==
X-Gm-Message-State: AOAM530GrUp05Y61iO/KMTy44ZvtMDKKnPr7s/kj5fSztNTMqAwlKKxT
	SEymC6Y2a+9ROwHYvsZ75SA=
X-Google-Smtp-Source: ABdhPJxU5GTxsICtBCS9hoHYiOZ/0o3eDn3Mr8aL8ubA6ffXuxKzmLB7FwYCShiPmAdREPvzaQcMkA==
X-Received: by 2002:aca:cdc5:: with SMTP id d188mr22757531oig.33.1593030768002;
        Wed, 24 Jun 2020 13:32:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3957:: with SMTP id x23ls220238oog.3.gmail; Wed, 24 Jun
 2020 13:32:47 -0700 (PDT)
X-Received: by 2002:a4a:e049:: with SMTP id v9mr24759678oos.22.1593030767619;
        Wed, 24 Jun 2020 13:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030767; cv=none;
        d=google.com; s=arc-20160816;
        b=p92x0we7mz0aBg+pei+WRGqAloQTcKuUWEMXNpf3jAiqVq0ri+V54UBcVgnoU3pVlu
         XNPKbqC5MKAn9jq/J+sKSNHJnkQxdI4gbV4DIsOnIGSjH7dYI6n+6CgpBcj0cEtDdI+h
         qUZyU8nhi9mhcUBSKBU17yKu8EcDdA6bMNigjxyNLcnZacP0keAFhga3Lee6SsCN2dAL
         CbJZ9D665EeY8YOSqtNDbRNCU0aOlyN7BgCZaMzIJ8B2Qyp3YHKkVkzWtOVkI6Uy5qiy
         WEfCLOnBbivOAiBEJk+ekKWxvLKI4fozCavrs8GTcpii7CBLpO98awhA4RdKKCL04p79
         CpFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=geZqQu8Pc2IZyEmyfjSbirVoyCHoNCVPX8WSrD5/a0I=;
        b=fyzc/fOm7HgWkX2XT3ui02z6iC06oJAoU0RnfYUOVwItgQuqU8cLH8FsBmTBmo7gf6
         IZq1fnxQF94n0s2h5p3348J56LNIFP4SLy1ADpC6j3gKAjInQwCJhlMsvRRnJfeMBUw8
         eKMwET6341niwzU4jndqWGG3Skp52+3xSpD91V3+pIm160ILIQSB92KmuR5oEtiW4ahh
         jvs1Ihoh2fd1JCO00EukJdEsfprBlzWphvE62dsvVUeJ9Ag6BiyfZw/9zUMG5drednLf
         /x65qJ1wTUIXFYm6xMO2F2bbL8qHr8ODmSDQp0Y8O/W3YxeNgQZHdGPR0gbhsoSeXVfa
         ueqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uawx1Hym;
       spf=pass (google.com: domain of 3b7jzxgwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3b7jzXgwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a13si1125609otl.0.2020.06.24.13.32.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3b7jzxgwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f130so3480150yba.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:32:47 -0700 (PDT)
X-Received: by 2002:a25:3342:: with SMTP id z63mr44129932ybz.200.1593030767109;
 Wed, 24 Jun 2020 13:32:47 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:38 -0700
Message-Id: <20200624203200.78870-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 00/22] add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Uawx1Hym;       spf=pass
 (google.com: domain of 3b7jzxgwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3b7jzXgwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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

This patch series adds support for building x86_64 and arm64 kernels
with Clang's Link Time Optimization (LTO).

In addition to performance, the primary motivation for LTO is to allow
Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
Pixel devices have shipped with LTO+CFI kernels since 2018.

Most of the patches are build system changes for handling LLVM bitcode,
which Clang produces with LTO instead of ELF object files, postponing
ELF processing until a later stage, and ensuring initcall ordering.

Note that first objtool patch in the series is already in linux-next,
but as it's needed with LTO, I'm including it also here to make testing
easier.

Sami Tolvanen (22):
  objtool: use sh_info to find the base for .rela sections
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
  kbuild: lto: fix recordmcount
  kbuild: lto: postpone objtool
  kbuild: lto: limit inlining
  kbuild: lto: merge module sections
  kbuild: lto: remove duplicate dependencies from .mod files
  init: lto: ensure initcall ordering
  init: lto: fix PREL32 relocations
  pci: lto: fix PREL32 relocations
  modpost: lto: strip .lto from module names
  scripts/mod: disable LTO for empty.c
  efi/libstub: disable LTO
  drivers/misc/lkdtm: disable LTO for rodata.o
  arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
  arm64: vdso: disable LTO
  arm64: allow LTO_CLANG and THINLTO to be selected
  x86, vdso: disable LTO only for vDSO
  x86, ftrace: disable recordmcount for ftrace_make_nop
  x86, relocs: Ignore L4_PAGE_OFFSET relocations
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                            |   1 +
 Makefile                              |  27 ++-
 arch/Kconfig                          |  65 +++++++
 arch/arm64/Kconfig                    |   2 +
 arch/arm64/Makefile                   |   1 +
 arch/arm64/kernel/vdso/Makefile       |   4 +-
 arch/x86/Kconfig                      |   2 +
 arch/x86/Makefile                     |   5 +
 arch/x86/entry/vdso/Makefile          |   5 +-
 arch/x86/kernel/ftrace.c              |   1 +
 arch/x86/tools/relocs.c               |   1 +
 drivers/firmware/efi/libstub/Makefile |   2 +
 drivers/misc/lkdtm/Makefile           |   1 +
 include/asm-generic/vmlinux.lds.h     |  12 +-
 include/linux/compiler-clang.h        |   4 +
 include/linux/compiler.h              |   2 +-
 include/linux/compiler_types.h        |   4 +
 include/linux/init.h                  |  78 +++++++-
 include/linux/pci.h                   |  15 +-
 kernel/trace/ftrace.c                 |   1 +
 lib/Kconfig.debug                     |   2 +-
 scripts/Makefile.build                |  55 +++++-
 scripts/Makefile.lib                  |   6 +-
 scripts/Makefile.modfinal             |  40 +++-
 scripts/Makefile.modpost              |  26 ++-
 scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
 scripts/link-vmlinux.sh               | 100 +++++++++-
 scripts/mod/Makefile                  |   1 +
 scripts/mod/modpost.c                 |  16 +-
 scripts/mod/modpost.h                 |   9 +
 scripts/mod/sumversion.c              |   6 +-
 scripts/module-lto.lds                |  26 +++
 scripts/recordmcount.c                |   3 +-
 tools/objtool/elf.c                   |   2 +-
 34 files changed, 737 insertions(+), 58 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl
 create mode 100644 scripts/module-lto.lds


base-commit: 26e122e97a3d0390ebec389347f64f3730fdf48f
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-1-samitolvanen%40google.com.
