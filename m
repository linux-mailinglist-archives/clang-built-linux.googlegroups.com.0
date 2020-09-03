Return-Path: <clang-built-linux+bncBC2ORX645YPRB75EYX5AKGQELTGF7II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F2E25CA3F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:30:56 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id a11sf675739vsd.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:30:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165055; cv=pass;
        d=google.com; s=arc-20160816;
        b=bT/tElCgLc4tJe2K2lOlJm9C3AeLTyo5duTD0k1erMxotjkNazD2Q44YmcoIV8XlQm
         g9HBzW9yVVCcK8U1LESyIjpMTxMQHUpW3qEedm2gtst49oQTJ10pPrzlXBpC2LXmcghm
         eU0V6cYR89PCjVFLK4T6wEmyB5P/QgvV/7aLvwy/K6nfYWbp12Ex2SzBrr9M6VlQGPdh
         ZNPHic1WlBC+DwzY01GqLJAiT6me4m79YntS/0Q8Kspwk9AP+lyjQ2O6WDiby1Ebha8u
         0u5G00JvGUnu9qGusPQ8sVWlpk4OJgvjyh/wf+0C15GBB6yDRc0z5I0rKok7Z6QtX4bw
         sBtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=2ng6qqEGkvuSgr4WvT+ftN2wypqVQ0ulPkdrUex367o=;
        b=DTpH7QcNLRUsB+71Tv0brOoDdU/q6vDmrrqzSiL0loRIVuOEf3/D1BT/2+CloLwBRX
         yGxIQew+eS/UYxqz2Og4b5ITpoeAxRq6Zdpqv8a7OLm1T+ptgtNMlT0hMDVpzOJjXCpp
         uhCjVEUSWmHoQQeXHUBwXhFv9KpGcK6Sp8i6EZ+J2PHGDR60K4JwRReyLzFuO6Gd04oj
         97z82IruGHV5+K1K/0U/alFlb4h+8CWbuO9fVWTF+cHc3pCwcKiJye6WmPwicFymqUuo
         yhgK+kN1r1hfeWJ+f7kF+cdt88UqtcYWL4dakb46tFtyrLgWutgIEbOkNscEoQvBw/DY
         MILg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0+Pz1Cs;
       spf=pass (google.com: domain of 3fljrxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3flJRXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2ng6qqEGkvuSgr4WvT+ftN2wypqVQ0ulPkdrUex367o=;
        b=orLpQ9s90juT0iBwJb8xGDaM++VD5B/8CcyVGMQ8t95+ybAUmkItgXIp782C5v/6wz
         eL23aKPulmNqDMs3pDzALP56ILkgnUZP7jpzq/iaYEs+Y1wCDnprJrh7quHP9+f3xXIP
         AiKS/8c6oYlyPoEWQZTOda6NqNwZs+2LtKk0gi+v74o9lL10I41/Qgf47620rrv5eccM
         fOnBVsd/aNJ/YZLRKpy6oXFHjKvlHba4LgFmCCEfAdWO91/06XU+Ie9shcpsGdaf4p+o
         x18ObKD9HqP9AzYxNhNyTThTQop6AiAytcqBgQjzdZo6nYO2SAXJlmA3VXrpNVkDNfcZ
         h0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ng6qqEGkvuSgr4WvT+ftN2wypqVQ0ulPkdrUex367o=;
        b=qs6sMMaapGrftDCmMw9m7kvPDhGrKWbFdMqt46Sn7PQ1TYrgmOuYBZOnPbhNoGDhw2
         PQAmdUBpNYrv4CuX0r2lSTbGMlMwmNb+/6Ek6wQA0Fs3yPTbtxdDmk+3kSQMnHPe3NvI
         9ki3DlwYxFYMj4otF9yS/UDi6wL96YT3CynZhWfONvY33QSgZEAQB3x+qJPFp/Hv1jt2
         y3yUoxEOAmrrCd7qC67P8onz1gSldRzlUeVwLuccDdQc4UWuGQfe3fuDVPsr3wSV04RT
         sio4VsXlOXx2htzAClS2vtKId+ooaEOd+o+ADZQKQwIRJvJSo0WPyxWO5cvA3mzJ6qWJ
         Oegg==
X-Gm-Message-State: AOAM533V5kcexmduCNB5QOysyQ7XRgB2SXCt87QSTnM6tGE0hhLJSPJy
	6Xf87daVzUnGPNca4nLWSv4=
X-Google-Smtp-Source: ABdhPJxTPKpdV8/4upgo7udUWaLMa4EbKoeXwTCRMpq/t8jX0v3Oxr8jtbrd8vlB/VDX7njlIRPO8g==
X-Received: by 2002:a67:2c92:: with SMTP id s140mr3127479vss.15.1599165055631;
        Thu, 03 Sep 2020 13:30:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f146:: with SMTP id t6ls298444vsm.7.gmail; Thu, 03 Sep
 2020 13:30:55 -0700 (PDT)
X-Received: by 2002:a67:fb43:: with SMTP id e3mr3476317vsr.91.1599165055252;
        Thu, 03 Sep 2020 13:30:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165055; cv=none;
        d=google.com; s=arc-20160816;
        b=nlDIzln/FhCnqYPVZaoBsSSK2fO0DaEHfWIyD7SpQ8b+GE1ftIySiRFls0MZKglyd1
         a9c8r0RNmr1goR+gyTL53omqegVSBo5OLlIUIN7Hf5UGdmZuZh4cWjkmv21bIQuNylfT
         9JF96lbLAwG/EBxmnGfhMsm8FYvDjM+cjwJensq+eB5BAfTQpzp0VKaoVJgCuMhoOwII
         gONonQNMS23AYcBizZSfJirhRBEanFnG/9r4GyVn1g0IIg03Ca/EM0YCj65XpgWEwJQB
         yDEGuQszwUFwHfxCtPhJFMNxtWUrY69CFysxru+zFdDDIz7ynvxQhuraAvXLNqdQkg9z
         ClHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=nGr4msUS0dEW75ogQM/nhSlm97UUOCMWXorkodmMp40=;
        b=lr60sDjmQIQ+zYM8YXb8KaX0+dF2jRiSxxgKELhhJajlyA5vWmwym9tGFYUxZ0Ehyt
         IunmWRTFVIgXt/boVcVF+XPiE53Y20eHbbDBh2fCqw1j/0oPo/R3bfif7dsnwykW4kwo
         r6I22jnjGuCK5FdGRAiEp3XFJ5lvFVM5rMXbotVHGpGdIHm1MphaaOdHr5Y62tzsfKED
         DZnQeN50dWJ02QWuysa3Cvp2hGWAEWwaUx1jNC2pezxNXdQH/lV/jDiaNj3USEHNNBVf
         jZH+BR9MPly19/iKQO4zM5YtBrT6zu3AjQGW1hh+ZplmMTL3j8r9g4TLd231rFUiKekk
         nZ1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0+Pz1Cs;
       spf=pass (google.com: domain of 3fljrxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3flJRXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id y3si267179vke.2.2020.09.03.13.30.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:30:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fljrxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id c67so2328083qkd.0
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:30:55 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d803:: with SMTP id
 h3mr3572282qvj.0.1599165054814; Thu, 03 Sep 2020 13:30:54 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:25 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 00/28] Add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h0+Pz1Cs;       spf=pass
 (google.com: domain of 3fljrxwwkagkzhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3flJRXwwKAGkZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
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

In addition to performance, the primary motivation for LTO is
to allow Clang's Control-Flow Integrity (CFI) to be used in the
kernel. Google has shipped millions of Pixel devices running three
major kernel versions with LTO+CFI since 2018.

Most of the patches are build system changes for handling LLVM
bitcode, which Clang produces with LTO instead of ELF object files,
postponing ELF processing until a later stage, and ensuring initcall
ordering.

Note that patches 1-4 are not directly related to LTO, but are
needed to compile LTO kernels with ToT Clang, so I'm including them
in the series for your convenience:

 - Patches 1-3 are required for building the kernel with ToT Clang,
   and IAS, and patch 4 is needed to build allmodconfig with LTO.

 - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.

---
Changes in v2:

  - Fixed -Wmissing-prototypes warnings with W=1.

  - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
    scrubbing to make distclean.

  - Added a comment about Clang >=11 being required.

  - Added a patch to disable LTO for the arm64 KVM nVHE code.

  - Disabled objtool's noinstr validation with LTO unless enabled.

  - Included Peter's proposed objtool mcount patch in the series
    and replaced recordmcount with the objtool pass to avoid
    whitelisting relocations that are not calls.

  - Updated several commit messages with better explanations.


Arvind Sankar (2):
  x86/boot/compressed: Disable relocation relaxation
  x86/asm: Replace __force_order with memory clobber

Luca Stefani (1):
  RAS/CEC: Fix cec_init() prototype

Nick Desaulniers (1):
  lib/string.c: implement stpcpy

Peter Zijlstra (1):
  objtool: Add a pass for generating __mcount_loc

Sami Tolvanen (23):
  objtool: Don't autodetect vmlinux.o
  kbuild: add support for objtool mcount
  x86, build: use objtool mcount
  kbuild: add support for Clang LTO
  kbuild: lto: fix module versioning
  kbuild: lto: postpone objtool
  kbuild: lto: limit inlining
  kbuild: lto: merge module sections
  kbuild: lto: remove duplicate dependencies from .mod files
  init: lto: ensure initcall ordering
  init: lto: fix PREL32 relocations
  PCI: Fix PREL32 relocations for LTO
  modpost: lto: strip .lto from module names
  scripts/mod: disable LTO for empty.c
  efi/libstub: disable LTO
  drivers/misc/lkdtm: disable LTO for rodata.o
  arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
  arm64: vdso: disable LTO
  KVM: arm64: disable LTO for the nVHE directory
  arm64: allow LTO_CLANG and THINLTO to be selected
  x86, vdso: disable LTO only for vDSO
  x86, relocs: Ignore L4_PAGE_OFFSET relocations
  x86, build: allow LTO_CLANG and THINLTO to be selected

 .gitignore                            |   1 +
 Makefile                              |  65 ++++++-
 arch/Kconfig                          |  67 +++++++
 arch/arm64/Kconfig                    |   2 +
 arch/arm64/Makefile                   |   1 +
 arch/arm64/kernel/vdso/Makefile       |   4 +-
 arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
 arch/x86/Kconfig                      |   3 +
 arch/x86/Makefile                     |   5 +
 arch/x86/boot/compressed/Makefile     |   2 +
 arch/x86/boot/compressed/pgtable_64.c |   9 -
 arch/x86/entry/vdso/Makefile          |   5 +-
 arch/x86/include/asm/special_insns.h  |  28 +--
 arch/x86/kernel/cpu/common.c          |   4 +-
 arch/x86/tools/relocs.c               |   1 +
 drivers/firmware/efi/libstub/Makefile |   2 +
 drivers/misc/lkdtm/Makefile           |   1 +
 drivers/ras/cec.c                     |   9 +-
 include/asm-generic/vmlinux.lds.h     |  11 +-
 include/linux/init.h                  |  79 +++++++-
 include/linux/pci.h                   |  19 +-
 kernel/trace/Kconfig                  |   5 +
 lib/string.c                          |  24 +++
 scripts/Makefile.build                |  55 +++++-
 scripts/Makefile.lib                  |   6 +-
 scripts/Makefile.modfinal             |  31 ++-
 scripts/Makefile.modpost              |  26 ++-
 scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
 scripts/link-vmlinux.sh               |  94 ++++++++-
 scripts/mod/Makefile                  |   1 +
 scripts/mod/modpost.c                 |  16 +-
 scripts/mod/modpost.h                 |   9 +
 scripts/mod/sumversion.c              |   6 +-
 scripts/module-lto.lds                |  26 +++
 tools/objtool/builtin-check.c         |  13 +-
 tools/objtool/builtin.h               |   2 +-
 tools/objtool/check.c                 |  83 ++++++++
 tools/objtool/check.h                 |   1 +
 tools/objtool/objtool.h               |   1 +
 39 files changed, 883 insertions(+), 108 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl
 create mode 100644 scripts/module-lto.lds


base-commit: e28f0104343d0c132fa37f479870c9e43355fee4
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-1-samitolvanen%40google.com.
