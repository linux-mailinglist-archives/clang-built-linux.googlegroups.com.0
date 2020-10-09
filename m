Return-Path: <clang-built-linux+bncBC2ORX645YPRBN4YQL6AKGQE45H5OJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A2077288DDF
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:45 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id c21sf7105967pfd.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260024; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmTpMTtnY3ylq4W5/vrMjE+1Yk+wV4V4jTuu0pQYK4MP9VX5Y+CW9a3hWYccDtEPep
         Q75NXzSSrujgilr9+diw8eatP5GHXZX7sYCc3Fd9FaCaHvTyq5fIGL4CHzWJSniXd/pI
         xFQhw5yp347R86oCJ+MiA+SZtWX37LK/WIGsZH3V4zpGnBPK62M4qtuyVy+HbWH0bnqe
         fesylM1byb52VObkL10D5nW8CM9CfwI5FEza17HUbBE7ppDLjWY1bt0ZVDEZszVzl6Vy
         qA6VRYeX8lE84EBh05hpL63g8Wgd+6g3IR0DwkAc26qKCQNeDaTKI2ycHkijb8V3ijWv
         DrDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=49k+Jw2aJdQoX0i/ezpARYQO2evyrF3IiZNn2T7NH5g=;
        b=OxUDRmgGHBATZ44dh1p6WhJN32dwQOhEmyFERy9oegVyVKyEzPuSnWayVjLcg/OfZP
         uBCQ/pdlKZozZDeEFEvis1/U+oZO/yHEuyCkwqILdAZpsL46UyJNPNY7RLHEe4QA9KSK
         B2psxhySTAiCKco3Z9CtroJZdbSTM2eJqvXbzz1H8k5YxQC2cOBcJjeKHuHb15DmVGD1
         N5jNJPs/E6CvyciSEfTNDXoO8fVdrZWER2BsZNPQ05Q8juRY7eoxnWhJttzpy7mpYxpU
         vBznyQAPsrAiqPPA1K/Hsw+AHZdVd+rkTF+32YBstXk0bjRR3uUGw6iwYuuGsvttPO0i
         6abQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYoeZ1R4;
       spf=pass (google.com: domain of 3noyaxwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NoyAXwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=49k+Jw2aJdQoX0i/ezpARYQO2evyrF3IiZNn2T7NH5g=;
        b=LYLu/EItScQhYg53rp9qGXmqmdiEjBnTd603HJFdXJpqigl6umvFZbebiDb29G3/Jn
         hUp75ivJf1EZzDFlfQn31HvipYdMHd1TmSodVQhNyVr4CUgBXm3Kclr09YenRsZH0vex
         LuO0uLVmq+H+7kpxQ0sXLsq5X+6SzOBMRaxxAQOzMvwYqiBGdZABc50rHRCL6ieDmS55
         Kh5evmK61r8lXgISt3O8s2IZYvZFiuE7j0djVNcRgijlVpmT7ETB9/YUQUWsGkY4OIub
         mQpdQIGB0q/lMbEjpPrBsVv6JNkUlG7a2iIr/FUmqMvPHdFSXbL6OyG/H62zJ+lH6FBq
         425A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49k+Jw2aJdQoX0i/ezpARYQO2evyrF3IiZNn2T7NH5g=;
        b=uHcr6YHnE4njglBz8C1b6INFuo0CRveI6FoVRYEFQhf26ieRBHxJFqvZtIMQYIPjV0
         aGvTB/kP/wR/eWG433MrUU2h7jGiaXzXgQ9cpQQzBzZu/57cqYSpEV5aCJgyTfqckb7Y
         uVAoUc/6AFoExD8ncog+uF4Dhn26LWcoYCMrHSFSp5RKTQDmKqJ0oF2h4ztrZT5G7Rty
         AuRzRKq36CQy1cPmqyjK0BtMC5SiJXtleYOSc0g4458pvAFTur4SHFXLO5sNRBK7jp9E
         khTvoTBJCBKcTF629m67VkrehoofPG4OAjQ8P1/2eDrGB5d/DowG+9IzAyRgLe5L4sKj
         q1pw==
X-Gm-Message-State: AOAM5320CIZUOq/fuIx91y/9ffxxMCz1omb9WBNNZYlvCS4PjJzdRQ1T
	yJLut/oIobR9mFgJrbFVM/c=
X-Google-Smtp-Source: ABdhPJymfGl3iYtwne9LV8oSfSEGXOOSNle+vSic/F7LHyJMaaSJoCb7JLrsKeBV9wRYx4hsyd7oQA==
X-Received: by 2002:a63:185a:: with SMTP id 26mr3935166pgy.408.1602260023889;
        Fri, 09 Oct 2020 09:13:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:86d4:: with SMTP id h20ls3410477pfo.7.gmail; Fri, 09 Oct
 2020 09:13:43 -0700 (PDT)
X-Received: by 2002:a62:78d5:0:b029:154:ebc0:c92c with SMTP id t204-20020a6278d50000b0290154ebc0c92cmr13344408pfc.24.1602260023194;
        Fri, 09 Oct 2020 09:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260023; cv=none;
        d=google.com; s=arc-20160816;
        b=p86xERsLlUS4fAEh2AIbHXopdAql8t64JTT8SaJUNy1KJefnAQhPq4yW9qr/xzN4y7
         mqZoHYFuTV5T0LTO/AQDaglTToSP9ARBC95zeQtjYJ3/oDNbpn5BNAgCl752VJAwWWzZ
         gDyZBqOTW6jHQgszQUZS6uGE+V1AwgVNTWcqp6ZN5DjeCBNMfVUCI3uYXOV2T81mGYs5
         IYmd1IhBujedPLpyEPKiQjOr31Y0DPEdtXUdWPd9mQlXMvNChJsMwOGVdJTRSxmqKRiC
         QIVQKS3AAQTgb4IDcibAinFwSSOmzYtJxbjYVLKNP6ieOhLjGIoYmYZK3cVlMO5ib5EF
         B/Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=JFoopYLfUd7DZpgoj0P8Vd02vmm/x7DpogJtJ7VqXLA=;
        b=RWHBW5PhkH9ne7PaG5gxeDDVQKU53ij/XL38yz8Sgopt4tNZXNJxW3LOx3WVA+RCKr
         CiXPoPiZszbp1UXGGiCtIM92JLiMsgbE015nDaYlWb+ciT2Ik4qQBgoJ8KTaL0C9pBwt
         ts7i40KzGnVUwP1mcKc3GVnKnQgn89TfxOrG3TM9n4XkcGqy9EUoRTQ8iy/93zd3AAfn
         pnk01NjADCPp5zEFJdSUI+Zi5mvRHrEsZv+GnHPSlmG6hsUzaCBC9ICwvFhYpOs93Kgp
         +jhOyONavozZ8H5MXhmXwvKrGnTOZ9WJRakOV1VP24Gwa2PY8zvJTOCMubwO1b3YTfVB
         vU4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jYoeZ1R4;
       spf=pass (google.com: domain of 3noyaxwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NoyAXwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id np11si174320pjb.1.2020.10.09.09.13.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3noyaxwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id j13so6982526pgp.11
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:43 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:3882:0:b029:152:127a:e852 with
 SMTP id f124-20020a6238820000b0290152127ae852mr12995077pfa.21.1602260022801;
 Fri, 09 Oct 2020 09:13:42 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:10 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 01/29] kbuild: preprocess module linker script
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jYoeZ1R4;       spf=pass
 (google.com: domain of 3noyaxwwkafmdv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NoyAXwwKAFMDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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

From: Masahiro Yamada <masahiroy@kernel.org>

There was a request to preprocess the module linker script like we
do for the vmlinux one. (https://lkml.org/lkml/2020/8/21/512)

The difference between vmlinux.lds and module.lds is that the latter
is needed for external module builds, thus must be cleaned up by
'make mrproper' instead of 'make clean'. Also, it must be created
by 'make modules_prepare'.

You cannot put it in arch/$(SRCARCH)/kernel/, which is cleaned up by
'make clean'. I moved arch/$(SRCARCH)/kernel/module.lds to
arch/$(SRCARCH)/include/asm/module.lds.h, which is included from
scripts/module.lds.S.

scripts/module.lds is fine because 'make clean' keeps all the
build artifacts under scripts/.

You can add arch-specific sections in <asm/module.lds.h>.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: Jessica Yu <jeyu@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jessica Yu <jeyu@kernel.org>
---
 Makefile                                               | 10 ++++++----
 arch/arm/Makefile                                      |  4 ----
 .../{kernel/module.lds => include/asm/module.lds.h}    |  2 ++
 arch/arm64/Makefile                                    |  4 ----
 .../{kernel/module.lds => include/asm/module.lds.h}    |  2 ++
 arch/ia64/Makefile                                     |  1 -
 arch/ia64/{module.lds => include/asm/module.lds.h}     |  0
 arch/m68k/Makefile                                     |  1 -
 .../{kernel/module.lds => include/asm/module.lds.h}    |  0
 arch/powerpc/Makefile                                  |  1 -
 .../{kernel/module.lds => include/asm/module.lds.h}    |  0
 arch/riscv/Makefile                                    |  3 ---
 .../{kernel/module.lds => include/asm/module.lds.h}    |  3 ++-
 arch/um/include/asm/Kbuild                             |  1 +
 include/asm-generic/Kbuild                             |  1 +
 include/asm-generic/module.lds.h                       | 10 ++++++++++
 scripts/.gitignore                                     |  1 +
 scripts/Makefile                                       |  3 +++
 scripts/Makefile.modfinal                              |  5 ++---
 scripts/{module-common.lds => module.lds.S}            |  3 +++
 scripts/package/builddeb                               |  2 +-
 21 files changed, 34 insertions(+), 23 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 rename scripts/{module-common.lds => module.lds.S} (93%)

diff --git a/Makefile b/Makefile
index f84d7e4ca0be..a913a6829754 100644
--- a/Makefile
+++ b/Makefile
@@ -505,7 +505,6 @@ KBUILD_CFLAGS_KERNEL :=
 KBUILD_AFLAGS_MODULE  := -DMODULE
 KBUILD_CFLAGS_MODULE  := -DMODULE
 KBUILD_LDFLAGS_MODULE :=
-export KBUILD_LDS_MODULE := $(srctree)/scripts/module-common.lds
 KBUILD_LDFLAGS :=
 CLANG_FLAGS :=
 
@@ -1384,7 +1383,7 @@ endif
 # using awk while concatenating to the final file.
 
 PHONY += modules
-modules: $(if $(KBUILD_BUILTIN),vmlinux) modules_check
+modules: $(if $(KBUILD_BUILTIN),vmlinux) modules_check modules_prepare
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
 PHONY += modules_check
@@ -1401,6 +1400,7 @@ targets += modules.order
 # Target to prepare building external modules
 PHONY += modules_prepare
 modules_prepare: prepare
+	$(Q)$(MAKE) $(build)=scripts scripts/module.lds
 
 # Target to install modules
 PHONY += modules_install
@@ -1722,7 +1722,9 @@ help:
 	@echo  '  clean           - remove generated files in module directory only'
 	@echo  ''
 
-PHONY += prepare
+# no-op for external module builds
+PHONY += prepare modules_prepare
+
 endif # KBUILD_EXTMOD
 
 # Single targets
@@ -1755,7 +1757,7 @@ MODORDER := .modules.tmp
 endif
 
 PHONY += single_modpost
-single_modpost: $(single-no-ko)
+single_modpost: $(single-no-ko) modules_prepare
 	$(Q){ $(foreach m, $(single-ko), echo $(extmod-prefix)$m;) } > $(MODORDER)
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e589da3c8949..9c4d19ae7d61 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -20,10 +20,6 @@ endif
 # linker. All sections should be explicitly named in the linker script.
 LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
 
-ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
-KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
-endif
-
 GZFLAGS		:=-9
 #KBUILD_CFLAGS	+=-pipe
 
diff --git a/arch/arm/kernel/module.lds b/arch/arm/include/asm/module.lds.h
similarity index 72%
rename from arch/arm/kernel/module.lds
rename to arch/arm/include/asm/module.lds.h
index 79cb6af565e5..0e7cb4e314b4 100644
--- a/arch/arm/kernel/module.lds
+++ b/arch/arm/include/asm/module.lds.h
@@ -1,5 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#ifdef CONFIG_ARM_MODULE_PLTS
 SECTIONS {
 	.plt : { BYTE(0) }
 	.init.plt : { BYTE(0) }
 }
+#endif
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index aff994473eb2..32d7e07b0acf 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -127,10 +127,6 @@ endif
 
 CHECKFLAGS	+= -D__aarch64__
 
-ifeq ($(CONFIG_ARM64_MODULE_PLTS),y)
-KBUILD_LDS_MODULE	+= $(srctree)/arch/arm64/kernel/module.lds
-endif
-
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
   KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
   CC_FLAGS_FTRACE := -fpatchable-function-entry=2
diff --git a/arch/arm64/kernel/module.lds b/arch/arm64/include/asm/module.lds.h
similarity index 76%
rename from arch/arm64/kernel/module.lds
rename to arch/arm64/include/asm/module.lds.h
index 22e36a21c113..691f15af788e 100644
--- a/arch/arm64/kernel/module.lds
+++ b/arch/arm64/include/asm/module.lds.h
@@ -1,5 +1,7 @@
+#ifdef CONFIG_ARM64_MODULE_PLTS
 SECTIONS {
 	.plt (NOLOAD) : { BYTE(0) }
 	.init.plt (NOLOAD) : { BYTE(0) }
 	.text.ftrace_trampoline (NOLOAD) : { BYTE(0) }
 }
+#endif
diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
index 2876a7df1b0a..703b1c4f6d12 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -20,7 +20,6 @@ CHECKFLAGS	+= -D__ia64=1 -D__ia64__=1 -D_LP64 -D__LP64__
 
 OBJCOPYFLAGS	:= --strip-all
 LDFLAGS_vmlinux	:= -static
-KBUILD_LDS_MODULE += $(srctree)/arch/ia64/module.lds
 KBUILD_AFLAGS_KERNEL := -mconstant-gp
 EXTRA		:=
 
diff --git a/arch/ia64/module.lds b/arch/ia64/include/asm/module.lds.h
similarity index 100%
rename from arch/ia64/module.lds
rename to arch/ia64/include/asm/module.lds.h
diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index 4438ffb4bbe1..ea14f2046fb4 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -75,7 +75,6 @@ KBUILD_CPPFLAGS += -D__uClinux__
 endif
 
 KBUILD_LDFLAGS := -m m68kelf
-KBUILD_LDS_MODULE += $(srctree)/arch/m68k/kernel/module.lds
 
 ifdef CONFIG_SUN3
 LDFLAGS_vmlinux = -N
diff --git a/arch/m68k/kernel/module.lds b/arch/m68k/include/asm/module.lds.h
similarity index 100%
rename from arch/m68k/kernel/module.lds
rename to arch/m68k/include/asm/module.lds.h
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 3e8da9cf2eb9..8935658fcd06 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -65,7 +65,6 @@ UTS_MACHINE := $(subst $(space),,$(machine-y))
 ifdef CONFIG_PPC32
 KBUILD_LDFLAGS_MODULE += arch/powerpc/lib/crtsavres.o
 else
-KBUILD_LDS_MODULE += $(srctree)/arch/powerpc/kernel/module.lds
 ifeq ($(call ld-ifversion, -ge, 225000000, y),y)
 # Have the linker provide sfpr if possible.
 # There is a corresponding test in arch/powerpc/lib/Makefile
diff --git a/arch/powerpc/kernel/module.lds b/arch/powerpc/include/asm/module.lds.h
similarity index 100%
rename from arch/powerpc/kernel/module.lds
rename to arch/powerpc/include/asm/module.lds.h
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..8edaa8bd86d6 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -53,9 +53,6 @@ endif
 ifeq ($(CONFIG_CMODEL_MEDANY),y)
 	KBUILD_CFLAGS += -mcmodel=medany
 endif
-ifeq ($(CONFIG_MODULE_SECTIONS),y)
-	KBUILD_LDS_MODULE += $(srctree)/arch/riscv/kernel/module.lds
-endif
 ifeq ($(CONFIG_PERF_EVENTS),y)
         KBUILD_CFLAGS += -fno-omit-frame-pointer
 endif
diff --git a/arch/riscv/kernel/module.lds b/arch/riscv/include/asm/module.lds.h
similarity index 84%
rename from arch/riscv/kernel/module.lds
rename to arch/riscv/include/asm/module.lds.h
index 295ecfb341a2..4254ff2ff049 100644
--- a/arch/riscv/kernel/module.lds
+++ b/arch/riscv/include/asm/module.lds.h
@@ -1,8 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (C) 2017 Andes Technology Corporation */
-
+#ifdef CONFIG_MODULE_SECTIONS
 SECTIONS {
 	.plt (NOLOAD) : { BYTE(0) }
 	.got (NOLOAD) : { BYTE(0) }
 	.got.plt (NOLOAD) : { BYTE(0) }
 }
+#endif
diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index 8d435f8a6dec..1c63b260ecc4 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -16,6 +16,7 @@ generic-y += kdebug.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
+generic-y += module.lds.h
 generic-y += param.h
 generic-y += pci.h
 generic-y += percpu.h
diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
index 74b0612601dd..7cd4e627e00e 100644
--- a/include/asm-generic/Kbuild
+++ b/include/asm-generic/Kbuild
@@ -40,6 +40,7 @@ mandatory-y += mmiowb.h
 mandatory-y += mmu.h
 mandatory-y += mmu_context.h
 mandatory-y += module.h
+mandatory-y += module.lds.h
 mandatory-y += msi.h
 mandatory-y += pci.h
 mandatory-y += percpu.h
diff --git a/include/asm-generic/module.lds.h b/include/asm-generic/module.lds.h
new file mode 100644
index 000000000000..f210d5c1b78b
--- /dev/null
+++ b/include/asm-generic/module.lds.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ASM_GENERIC_MODULE_LDS_H
+#define __ASM_GENERIC_MODULE_LDS_H
+
+/*
+ * <asm/module.lds.h> can specify arch-specific sections for linking modules.
+ * Empty for the asm-generic header.
+ */
+
+#endif /* __ASM_GENERIC_MODULE_LDS_H */
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 0d1c8e217cd7..a6c11316c969 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -8,3 +8,4 @@ asn1_compiler
 extract-cert
 sign-file
 insert-sys-cert
+/module.lds
diff --git a/scripts/Makefile b/scripts/Makefile
index bc018e4b733e..b5418ec587fb 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -29,6 +29,9 @@ endif
 # The following programs are only built on demand
 hostprogs += unifdef
 
+# The module linker script is preprocessed on demand
+targets += module.lds
+
 subdir-$(CONFIG_GCC_PLUGINS) += gcc-plugins
 subdir-$(CONFIG_MODVERSIONS) += genksyms
 subdir-$(CONFIG_SECURITY_SELINUX) += selinux
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 411c1e600e7d..ae01baf96f4e 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -33,11 +33,10 @@ quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o =                                                     \
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
-		$(addprefix -T , $(KBUILD_LDS_MODULE))			\
-		-o $@ $(filter %.o, $^);				\
+		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
-$(modules): %.ko: %.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
+$(modules): %.ko: %.o %.mod.o scripts/module.lds FORCE
 	+$(call if_changed,ld_ko_o)
 
 targets += $(modules) $(modules:.ko=.mod.o)
diff --git a/scripts/module-common.lds b/scripts/module.lds.S
similarity index 93%
rename from scripts/module-common.lds
rename to scripts/module.lds.S
index d61b9e8678e8..69b9b71a6a47 100644
--- a/scripts/module-common.lds
+++ b/scripts/module.lds.S
@@ -24,3 +24,6 @@ SECTIONS {
 
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
+
+/* bring in arch-specific sections */
+#include <asm/module.lds.h>
diff --git a/scripts/package/builddeb b/scripts/package/builddeb
index 6df3c9f8b2da..44f212e37935 100755
--- a/scripts/package/builddeb
+++ b/scripts/package/builddeb
@@ -55,7 +55,7 @@ deploy_kernel_headers () {
 		cd $srctree
 		find . arch/$SRCARCH -maxdepth 1 -name Makefile\*
 		find include scripts -type f -o -type l
-		find arch/$SRCARCH -name module.lds -o -name Kbuild.platforms -o -name Platform
+		find arch/$SRCARCH -name Kbuild.platforms -o -name Platform
 		find $(find arch/$SRCARCH -name include -o -name scripts -type d) -type f
 	) > debian/hdrsrcfiles
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-2-samitolvanen%40google.com.
