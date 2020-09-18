Return-Path: <clang-built-linux+bncBC2ORX645YPRBOVKST5QKGQEANGQX7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B84270620
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:51 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id l138sf3058032oib.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460090; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQWNXRHI50XffOxsS9qvmQaymPCjQC686zj9B9JgBQRdLfNN09W1e0X3UfYYklHP9i
         FFP+kGjEEo4xBllTDvKXYF+2i5F31ACkjKDC3x4SRn4m0kB1d4wvhJgrsmHiWJ0RfvlJ
         rztrtgs5tJ7+NIEvcwDJOK2+ZU35jvdunrn0/pIqBTXs+neXGMfPwROHi1VrHufpDY7L
         uEcukMuQorrp/sKqK1/QBDPwpUI1vmt8f0f2JpcKJi7POY7k0hsSxqJf0N4hQrpAv2TI
         SgZ2wlMXl8LxIcJmRj8rv0rMwBiuxIHNRjTy+dp8PmXK0OajwVjHbwN8ql9Jyz2GGYX6
         ORug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=EvFsXoRh9zeE+ZoFppAquqCAx1Gc8iy6ud1bt5vqKvE=;
        b=ewQr4rpyBinjunyG67iKufMppIdDLb61uDTLFn71Y/sguOVC2kJ5XC+u7+JZjG0Age
         sX1P3NnFxmrdez6P42MRA03cY90a4KjDs3X6oC+6UGaCr9zlqXh02Hp8lAML5xj/AjiW
         jcej3nJj1lXOAYqK9r0SPHUswhyB7vGd/wkNE2yZRqi65IRa+d6FsB/oqs6aWgoeuwMk
         ypj2QTIyZ1RAMqQBPuGBlKNtIGPWpL5QmoAQU6/S7e/DahRoh3Iw+HLonLY1K3znKBN/
         AXRdalRz2+lItv/jOeuCwG5D23S4lZHxJCe0lRGxqporB7+BFUOSt4mxZIzo5mf0G0U5
         M5XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=any3V5lS;
       spf=pass (google.com: domain of 3orvlxwwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ORVlXwwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EvFsXoRh9zeE+ZoFppAquqCAx1Gc8iy6ud1bt5vqKvE=;
        b=DtyET1tv42c1aMG3bP6bNf+yQYOKJyi6o/hUh2enu5RNkmj/ClEm0wjrWqK3v6/D/0
         cN1QhLJLlDQ/M6+5wIaPjXTRDZOWfLArFsjmi1z5S7bnvzznx0iD9LYdY2JkHBk7HiLF
         jQNY5gxBLAfAOlXefQrDi2MB8dYt6WMMw2dlzN9Rd5Uvx+alaLyJzrdaT6AWEqIYVe8g
         eR6vpYg/MLqcpYBFjh/yllCV3c4L8Jq3tgRfOOyaB6x8zJmXx3UYrACc2mYxJgSuNOC9
         X2Ks9vwAYhWBnUSB7k6Al4bLH0Qb18jxXWakie5pA3/UkpnbuE78YVjmamzPYGfwp6m5
         r+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EvFsXoRh9zeE+ZoFppAquqCAx1Gc8iy6ud1bt5vqKvE=;
        b=CGYNprh+ur7AYyLQ5O8dsVhZnu/DVFgZ6kQC814ItgYzPGc4ahMu6CL3q0ebNn7Jt6
         asvuTkegMzr9gcxSxnb0p+Rx5lRatm/PqGQii3CP/7NprMs9zG9vP4Vpq+U3Z5Nwok9k
         QGqMA2WDGmyfzFsuMDc5sR3Fj1N4ar5007SWMFKH1MRetgOZHKchqdI/JytLmmYzuAn7
         HDVmDdu60bw3OkS/G+8Zd7Wr/uGRxI8RCPyDJyr9bzlOTktV38FKJr6y30PAdGtNpQwE
         Sc0nzFb6RwuwZ4UwfkQFVszQwmfNWSxiePJNKc/r1GbTMFoP4M1Po/h/opl7gu/XQdMC
         HjuQ==
X-Gm-Message-State: AOAM533IzqlgEYeOg09whd8uu9c5CZ/p30CHEydk9OkQPQWd8W4MS+hi
	dc2pkjBU/CsadrPGAlLUCgQ=
X-Google-Smtp-Source: ABdhPJwELsEOlpNMOzkw7EF7x+4WOUxIbbuP/aKoziKsdQWPWfsNQqbpU5sQfLK0THCBT58PjiT2eA==
X-Received: by 2002:aca:f0d:: with SMTP id 13mr10169608oip.124.1600460090613;
        Fri, 18 Sep 2020 13:14:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d888:: with SMTP id p130ls1566924oig.11.gmail; Fri, 18
 Sep 2020 13:14:50 -0700 (PDT)
X-Received: by 2002:aca:4fd5:: with SMTP id d204mr10943296oib.58.1600460090231;
        Fri, 18 Sep 2020 13:14:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460090; cv=none;
        d=google.com; s=arc-20160816;
        b=YaiI5iK49/ZtinWBJy8qucPNpFwO0IxE9gQ6fkLteGqc8fjDKwcL9gltQZ0bdBQbDG
         4qKi7gG2xOixNcfwNF216jEDqC6UvqDu0BwjVEcw2GA7NEWlqwXX4s1OETuhAURF1h7l
         knOYyTJ3eaTuC1hMaeNQgbQpNjHvj5Vk3059lhokycnj/AW4pupcvgtcAH0MbVJPKgRB
         cYoPkyOUNkrBuhe4Bsb88FVvouPvK8v/uoSptmJJal2o2+vnRn+b0BVqDptfvvzkIjcb
         R5535vV0KBrJOnSPjSj68XwCl/KDmFaF02+/rG0fWE5bquuXWpuReiiBEZR4rFHkHmJr
         ivbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=OUE+m0OGAklb8Nux4jCl1L3mjhO5wTbpcVUk0tOPDMA=;
        b=b4KCP3FxSyHwNJWganYmXxxd7wzKbImzO4aMZ/SXp4FbRwFa/izsL0fw25fANyVMwo
         t0wTRHl1A51wV+shHD19NPEb/Ss2F/lqQddmwDey4z7h7lgJd73Ourxzy2TPz0phNJfS
         dbup115em6YPhnD69sCo2DimsGUQRCXaFPIDZIsCnSYVKMrSc4cPF8o5UseR7sgkRXG0
         +f68qbu1c2TBOLykJ6oJ5MXCfvSWffCr7OQCSkOEvHoGrPqdO90tgcNNlFcU0dtb3BRb
         4SrxECvVX3Is0RKDTEV6ZIJMQFpTlF2ayqR0wRl1dDlnQ731oqZP2sh5PC1IPfFx2dyz
         6ylw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=any3V5lS;
       spf=pass (google.com: domain of 3orvlxwwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ORVlXwwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id l19si385174oih.2.2020.09.18.13.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3orvlxwwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a19so3770073pff.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:50 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90b:4ac4:: with SMTP id
 mh4mr14973735pjb.224.1600460089349; Fri, 18 Sep 2020 13:14:49 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:11 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 05/30] kbuild: preprocess module linker script
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=any3V5lS;       spf=pass
 (google.com: domain of 3orvlxwwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ORVlXwwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
index 19d012810fbb..24fd733c142e 100644
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-6-samitolvanen%40google.com.
