Return-Path: <clang-built-linux+bncBC2ORX645YPRBP6WZ35QKGQE2X6EY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F090227DA67
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:40 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id z25sf1894767vsi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416000; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygV7zvtc/O0xPWk6FDtt4IfIwQo+bxBSm+Xf+hzOuZ+8NxUwl8++CLTeBHcMywu9XU
         1KLpwO8eRCAnRLwho7SGbCfFmxrwJA0gYxIDRJs6bFITCQoYRuTcEKlufNvQ4jgN45Yo
         dQVWKEJXkRH4dGKQJOeceVPDrZsLonIpvh17S6hTx8FMZ70+HXPKbUVQMmNf67QfFaLs
         S6C7jvnnlZW1bVboxWFzDkugByal3kvUucS0HKPQEEglbJ8gFzjZV1T5lo3Bmp3snsqo
         dHpSWQnEZSKgpsLYAQOTKElv0KlTMHgxXrb6op1DhmpaN2kjgSxDk38vUdLLFFB743Vi
         fJmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JceNYTnKu0zZKsaDdQa8mUaJOHnCKpKJRpU9cSQPV44=;
        b=wxRD8ccWxmYYFjCgnOjkqVOhu98CDndrb6pxycJGFcibZJqclXFG4b98JPOpopS6+Z
         MMl3Ye5XvXfLT4Ff9cecsXCGgl5A4G3kMOixF9Dw7+3QoV7kweeiQtfu/1+TnooiRPkO
         mARaPkymsbJwpfR1w21dOPf3syYUYS2xaBqmHVa8mWjfFCnB3XTmTKWaLcvk1z4CDbNN
         33WBclf0HVQnrMlHohpRvEnn3KQDp5XvPszCQ21lL1aOrCuO4iT8SCyEJZDj7Cr1T0Ep
         zsa2MtKUjy8e2ZZ5bLS5eYF6CVxuEhIYAqw6pM1eH4HbiGebB7AAOln6dsYSSEPylLbI
         BSZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pq4MBXnW;
       spf=pass (google.com: domain of 3pqtzxwwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PqtzXwwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JceNYTnKu0zZKsaDdQa8mUaJOHnCKpKJRpU9cSQPV44=;
        b=BCpznYw+RR2fSwiWpgF48CWy0xH6hnEIVC0U/2L0a2msfcx3e9tZiwJ5LsCj9rMHM4
         eVG97YObj12xhCVSOtf+Qqroj1LpGO0SGVbmUUkFaUy2qLx6qVE26hjAnzHRhmh6kPj+
         I9X7UEx1uWFEZ93GOI5u5WjlhqOOVtp7iQ05PyN/Bl64HYDljIxCoqf0iHDoOVk4paHf
         SEExaA6X3utpACDhxhtOi9Gzp8gQ0XcRe9DK/WfXEo/YOnZ5n3UfT7Bmf51M3/n4AVCd
         UJNXzRrgzI5aqhisWeOFViOLp8HLdtoYc1RT+fvg/wqkU1j+GVOTqnhgB2aGFpyFBBmE
         BiiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JceNYTnKu0zZKsaDdQa8mUaJOHnCKpKJRpU9cSQPV44=;
        b=X/nZ2YDK71pZu0Hzs/j/1A9ec7ng/79lFgM8MR89X8H2nsrdsX30YAZ1aF8iPGPjbG
         +L8D/5VbBd/RV1p6p3gkSNA4tSTbz6HCQMpsQ+KlqMQQmP42ELjZ2PLAJQp8+kL6fRgj
         HVCamzdROieGBhpZ7+P5a6c+LK0NPZihkD6CsD+kv5+6OoCmX9YizXNtDv1KUsjOYgGN
         /1CcZWGClCdZ07krSXMIB5RHdYE8PVItVz/Qmp5VV1VNMhCcln/ItBivndoqhdUaF1uG
         /cG3fJ17Kyu4OMcLjD0BClFBh1mcDNfCfjVrgMbakdOeU2PiQT/FsSUTXSHmD001mO0l
         aBvg==
X-Gm-Message-State: AOAM533lHeqwld5jV6YcDDWAssRlgBBlX5b5+HcO1FhKNtsyCi2hY8WA
	258wvXnUxPyYBWA14pvCSrs=
X-Google-Smtp-Source: ABdhPJxC3ZpXtcZTU3MJ10/njbQUWUEjTRba2OzaOsEW1E3wsPJ8sdaMKThDpm16xLLFioRDAUkRNA==
X-Received: by 2002:a67:cb02:: with SMTP id b2mr4838177vsl.46.1601415999982;
        Tue, 29 Sep 2020 14:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c4:: with SMTP id a4ls885477vsp.10.gmail; Tue, 29 Sep
 2020 14:46:39 -0700 (PDT)
X-Received: by 2002:a05:6102:3107:: with SMTP id e7mr4787210vsh.1.1601415999453;
        Tue, 29 Sep 2020 14:46:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601415999; cv=none;
        d=google.com; s=arc-20160816;
        b=elTHins4I/lVqa2U2wA3Cx77/C0KgKtTaNl8HXebhYEdKZJEX8mGjcP4bA2p8wfJqx
         ot8yfYCnucTocRiwqxY8FhbEru+RKW6Sur3lshMvsHDqIOYlUiETx8Ls5N4a9fP5Jc4P
         9ejNevmA0QMEV23aNc4I21yd77T5SzXQWzmPOrJI5VOy4h+bJwSJaB2AT42n+yyq0fQ1
         7ZCVryg12CTH6eafXHnCU8ltvTyiQTtbwTU6ny4DsmPswVBAPLjasR+3hHmFfhURUAn2
         qH6s7FGRUZ710dYd7MQ2g736D47uLPyEsHM7ePEg780LJ8pzJNuzEeab2jFbNRs5O7NO
         GW7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=NhHOjYsFaFFcumTgSvxig+//dvp+jYI1MNf0OBoFKZY=;
        b=wU78DjQdQspGciSYJpuJEpozm6QGPPb3GRcKcf5NYkaGwZo5L8R6mI3ThPyQDAs/Oe
         ztvYsxBi86GRAPugdeHr7k9OtxJ2ORIJcPBUXZfEazxOcgPkzP76S4gNYceoyE4OoWlu
         9UEzoLppfRF/LkN1HoupW37VOtOksLDkVGwsDJLlvGZGA3ONBYfP0ptluk4++JgmLZGI
         GWCvUq3T3i2pYhB6H5biBnbjjGhEk06oQ61vjWgwmZsmUqQWepEj8nfImUKAh5aUwxNu
         BVPJFPEw1UMEbL9457zG5NXJsYIt1tFerdvK9dX/AF/JLO+iobgD+rmhhUxjd3esAZhv
         2Ebw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pq4MBXnW;
       spf=pass (google.com: domain of 3pqtzxwwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PqtzXwwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h9si337343vsh.2.2020.09.29.14.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pqtzxwwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n13so6324310ybk.9
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:39 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:69cb:: with SMTP id
 e194mr9075851ybc.243.1601415998991; Tue, 29 Sep 2020 14:46:38 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:05 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 03/29] kbuild: preprocess module linker script
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
 header.i=@google.com header.s=20161025 header.b=Pq4MBXnW;       spf=pass
 (google.com: domain of 3pqtzxwwkaguvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PqtzXwwKAGUVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
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
index 992d24467ca0..476f19ccac17 100644
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
index 4e877354515f..a0cb15de9677 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,10 +16,6 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
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
index 130569f90c54..4e8bb73359c8 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -120,10 +120,6 @@ endif
 
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-4-samitolvanen%40google.com.
