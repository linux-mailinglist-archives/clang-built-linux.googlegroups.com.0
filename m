Return-Path: <clang-built-linux+bncBC2ORX645YPRBD75Z37AKGQERAJOKDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF342D7E51
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:40 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id l9sf4711162oih.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712400; cv=pass;
        d=google.com; s=arc-20160816;
        b=DB7bxg6DVBN9IIT+VDqU4cWmGx/sxPQHoVPTEhlUqfcdSRDn0q3kh32f2CdWZ9yDqS
         yjISHl4yeszJzBgZczWSBH2FU47jidwtnNguMNgqr6U0xV+TQ7LKwwstB4U74twN44yl
         KzFlvUPZ6FH+SXe/K9tyrrYHzEyqdx1VWgIYndO6By2SSSx0+v32wN5fC51INii4PW3h
         s24yP6Jtzhiqz+z8kOp7gLGV0/rlLww9PzJF2ZuQlz56lSXKoUdK7f998MbmA20dEnt2
         r8Z4tnO+ESG9Oy6gKyd5f43pkNzH58Yw+ydTCLWj0lbfXmnb8wwuYfMngcN85XlTYQtO
         ZPvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=iN5BRPxsUWFXBFtN4SYXfrp3LxFNj1mxP9yFoUo72vI=;
        b=AsM6V0Il0ynycrOdauwWG/SjO4cpuU96Ypgcx+QNqN4G026uEtYRza7oD2QQAnYDNP
         EUEIlSc9OxMzGFs526WYLN7iERtLcno2vXYQyo7fNaSdgYBixz/Axe44H/C3ysYDVhwr
         V6/wGwfVkTlyAl90v+AgTDur8rFWtPk635Ftb/pmlredE25Jey5lJyqwcseNTGr9lMOA
         Dz5Tf1DRQRc5IPF1C3tz1jVwvnAgsSpn5WDt4VWVZbgGEgkatwDKpj/cOSnrQyQEX6Jq
         KJx8cLOp7nlh3O+MpiKc3DZai8z9kuZYsRgZ8Qlq4ALsswmccTWwdK/6aUZKUXmmSA7n
         SYfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Md8RoTVK;
       spf=pass (google.com: domain of 3jr7txwwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jr7TXwwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iN5BRPxsUWFXBFtN4SYXfrp3LxFNj1mxP9yFoUo72vI=;
        b=j2JEW3S042CpKRSRuXwiDqnCvrCsyQRi8u1Rfnq/XA0ooLCqhBO+KmmgYFEFOatkuq
         Mk1f8kpwRRRiXRhIZR92PJ0wjSI1cFMkX8G2jFNkW1ReBTRHPB6MmqJJ5Qse7DY6++Dk
         TgT/fEe9Fn+JII01kFePgglfYnAM/DSE2cFVRBVRDcBqIoGF/IY0w+RDlqwhWd6p/0Hz
         kFJeTe6mVLr/HigtCysG4NMVKFuVQ+vb8uREOLo/+LBQsylbwzI4K545yt5sGsPfjuMS
         q0XpdzOFexfshMIzWpf24HGk8JK2A0WLPCiQe1mIx7G4OIBW9bADH/XsPOtzg4l4Iv6k
         pEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iN5BRPxsUWFXBFtN4SYXfrp3LxFNj1mxP9yFoUo72vI=;
        b=ncpy/yl+gP0cFQyO67XKnNHLLVZzX4sVux5qCUyaAMQT2sCzSoqLkeViC57MQL9g0+
         u09qebB1g7cF5pCJ9s1WJayY9vqaKs5ahzok+Xb42B64uBv+uHiGKZJa0Y3hB0tEsW4q
         83RWh+Kb3wii7nEnnqLavcD8k5dcXbF2KYBX7QNIpy9DKGEHZc/3WBiBJ78Nh4jbuxv5
         rjpI57gkbHra2Os5+5qc0DtuwHbR6DSlV08X/EZA29hHxcVv+N8HVBDYcNwtJ0Yyyg0q
         y/XDFae3/lbcjf+AtB9dxo5fsgzeYYYMW49V+U7i6rsUij013Uhhkl3VQvXOnM0sUVhI
         Ml8g==
X-Gm-Message-State: AOAM532GDY6ECYy0xsrYNzOghJWV6TJEIicoiej0VIcP8+A+HBqydJJo
	DcxOnA/NiI/Uk1dmtCcqrSg=
X-Google-Smtp-Source: ABdhPJyh/s7bJHAOOdZx2KNjuGS4VZWdr7OHAt1uj8KLiV3dTEOjeRkc987tmDr+UAI/ijC3SY2IzA==
X-Received: by 2002:a05:6830:1c34:: with SMTP id f20mr8761936ote.147.1607712399913;
        Fri, 11 Dec 2020 10:46:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls2653089otf.6.gmail; Fri, 11 Dec
 2020 10:46:39 -0800 (PST)
X-Received: by 2002:a05:6830:2397:: with SMTP id l23mr1847854ots.357.1607712399407;
        Fri, 11 Dec 2020 10:46:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712399; cv=none;
        d=google.com; s=arc-20160816;
        b=C2xXKGRW9GWRrzuZTU6VqJGse3UcZ8ixafLhXUno3C46sk9YHRSeILlO7dMWYOaigz
         NJw6PfKXXfLhqiNZnCr3mvHGuMvOLXpXm6vkJvtWxLueRsdk2e3du+4feLKyIQ/S1kx7
         jJorib9i9WvyssRNSqowxWpYndc9RVZmW7ssTtL7r6tHF1SDbs8lfVzDWdsQPPf8aQMa
         HnVX+nknwCdYF5rJ2Vh1P7DAqukP2Gu4fXfKiAFIKfqTI2FYghv6SqQAqQcRD0ErztYo
         ANRHn417kM7FgsPzQJolgzk8T2korSeSEArJm24jDXlP/uMf+6/kbrL8dK86N0vK85kP
         TaCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=AuOrLBmuUfwYPKASzmtENK7jnWCPJ6uAdYLnNJ+ay7I=;
        b=FK/BnIWiD/fWEOtNYdP3s9LXhx42BESN+QG/ca0vuJR8cz/q7+C0BKQBs+Q/5hawwa
         Voyu3JiU0m07mXmMyd9HkVA+vmFxBEOzKdM9L6dvhiey3qXx3RGqSki3b5OR7qXTKkSO
         jPa5RsL+8Lx4fobVqC1DsXSvnEfFjtZ9x6oSfG+9NObJWYWdkcGWhUG+9iTrhmSnD+KZ
         4YyKSWXe4PLABSBEyjSjH0uI6ZI/NVJOYNb8s3gdNXsizSol9mt3hEv523Hjt0eeOahi
         pe9bbYS0ujzKA7ebWZSqn8LAqxi6YlI7e8YIUUDO70xFqZJetjcopB5PS857EsOatGAY
         s6ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Md8RoTVK;
       spf=pass (google.com: domain of 3jr7txwwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jr7TXwwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g13si750989ooo.1.2020.12.11.10.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jr7txwwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z125so4896222ybb.15
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:39 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:3f41:: with SMTP id
 m62mr20393529yba.367.1607712398944; Fri, 11 Dec 2020 10:46:38 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:19 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 02/16] kbuild: add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Md8RoTVK;       spf=pass
 (google.com: domain of 3jr7txwwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jr7TXwwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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

This change adds build system support for Clang's Link Time
Optimization (LTO). With -flto, instead of ELF object files, Clang
produces LLVM bitcode, which is compiled into native code at link
time, allowing the final binary to be optimized globally. For more
details, see:

  https://llvm.org/docs/LinkTimeOptimization.html

The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
which defaults to LTO being disabled. To use LTO, the architecture
must select ARCH_SUPPORTS_LTO_CLANG and support:

  - compiling with Clang,
  - compiling all assembly code with Clang's integrated assembler,
  - and linking with LLD.

While using CONFIG_LTO_CLANG_FULL results in the best runtime
performance, the compilation is not scalable in time or
memory. CONFIG_LTO_CLANG_THIN enables ThinLTO, which allows
parallel optimization and faster incremental builds. ThinLTO is
used by default if the architecture also selects
ARCH_SUPPORTS_LTO_CLANG_THIN:

  https://clang.llvm.org/docs/ThinLTO.html

To enable LTO, LLVM tools must be used to handle bitcode files, by
passing LLVM=1 and LLVM_IAS=1 options to make:

  $ make LLVM=1 LLVM_IAS=1 defconfig
  $ scripts/config -e LTO_CLANG_THIN
  $ make LLVM=1 LLVM_IAS=1

To prepare for LTO support with other compilers, common parts are
gated behind the CONFIG_LTO option, and LTO can be disabled for
specific files by filtering out CC_FLAGS_LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile                          | 19 ++++++-
 arch/Kconfig                      | 91 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 ++--
 scripts/Makefile.build            |  9 ++-
 scripts/Makefile.modfinal         |  9 ++-
 scripts/Makefile.modpost          | 21 ++++++-
 scripts/link-vmlinux.sh           | 32 ++++++++---
 7 files changed, 174 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 94549264dd5c..bc867bc3ebda 100644
--- a/Makefile
+++ b/Makefile
@@ -893,6 +893,21 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
 export CC_FLAGS_SCS
 endif
 
+ifdef CONFIG_LTO_CLANG
+ifdef CONFIG_LTO_CLANG_THIN
+CC_FLAGS_LTO	+= -flto=thin -fsplit-lto-unit
+KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
+else
+CC_FLAGS_LTO	+= -flto
+endif
+CC_FLAGS_LTO	+= -fvisibility=hidden
+endif
+
+ifdef CONFIG_LTO
+KBUILD_CFLAGS	+= $(CC_FLAGS_LTO)
+export CC_FLAGS_LTO
+endif
+
 ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
 KBUILD_CFLAGS += -falign-functions=32
 endif
@@ -1479,7 +1494,7 @@ MRPROPER_FILES += include/config include/generated          \
 		  *.spec
 
 # Directories & files removed with 'make distclean'
-DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
+DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
 
 # clean - Delete most, but leave enough to build external modules
 #
@@ -1725,7 +1740,7 @@ PHONY += compile_commands.json
 
 clean-dirs := $(KBUILD_EXTMOD)
 clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
-	$(KBUILD_EXTMOD)/compile_commands.json
+	$(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
 
 PHONY += help
 help:
diff --git a/arch/Kconfig b/arch/Kconfig
index ba4e966484ab..9b4f556fd777 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -598,6 +598,97 @@ config SHADOW_CALL_STACK
 	  reading and writing arbitrary memory may be able to locate them
 	  and hijack control flow by modifying the stacks.
 
+config LTO
+	bool
+	help
+	  Selected if the kernel will be built using the compiler's LTO feature.
+
+config LTO_CLANG
+	bool
+	select LTO
+	help
+	  Selected if the kernel will be built using Clang's LTO feature.
+
+config ARCH_SUPPORTS_LTO_CLANG
+	bool
+	help
+	  An architecture should select this option if it supports:
+	  - compiling with Clang,
+	  - compiling inline assembly with Clang's integrated assembler,
+	  - and linking with LLD.
+
+config ARCH_SUPPORTS_LTO_CLANG_THIN
+	bool
+	help
+	  An architecture should select this option if it can support Clang's
+	  ThinLTO mode.
+
+config HAS_LTO_CLANG
+	def_bool y
+	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
+	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
+	depends on $(success,test $(LLVM) -eq 1)
+	depends on $(success,test $(LLVM_IAS) -eq 1)
+	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
+	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
+	depends on ARCH_SUPPORTS_LTO_CLANG
+	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
+	depends on !KASAN
+	depends on !GCOV_KERNEL
+	depends on !MODVERSIONS
+	help
+	  The compiler and Kconfig options support building with Clang's
+	  LTO.
+
+choice
+	prompt "Link Time Optimization (LTO)"
+	default LTO_NONE
+	help
+	  This option enables Link Time Optimization (LTO), which allows the
+	  compiler to optimize binaries globally.
+
+	  If unsure, select LTO_NONE. Note that LTO is very resource-intensive
+	  so it's disabled by default.
+
+config LTO_NONE
+	bool "None"
+	help
+	  Build the kernel normally, without Link Time Optimization (LTO).
+
+config LTO_CLANG_FULL
+	bool "Clang Full LTO (EXPERIMENTAL)"
+	depends on HAS_LTO_CLANG
+	depends on !COMPILE_TEST
+	select LTO_CLANG
+	help
+          This option enables Clang's full Link Time Optimization (LTO), which
+          allows the compiler to optimize the kernel globally. If you enable
+          this option, the compiler generates LLVM bitcode instead of ELF
+          object files, and the actual compilation from bitcode happens at
+          the LTO link step, which may take several minutes depending on the
+          kernel configuration. More information can be found from LLVM's
+          documentation:
+
+	    https://llvm.org/docs/LinkTimeOptimization.html
+
+	  During link time, this option can use a large amount of RAM, and
+	  may take much longer than the ThinLTO option.
+
+config LTO_CLANG_THIN
+	bool "Clang ThinLTO (EXPERIMENTAL)"
+	depends on HAS_LTO_CLANG && ARCH_SUPPORTS_LTO_CLANG_THIN
+	select LTO_CLANG
+	help
+	  This option enables Clang's ThinLTO, which allows for parallel
+	  optimization and faster incremental compiles compared to the
+	  CONFIG_LTO_CLANG_FULL option. More information can be found
+	  from Clang's documentation:
+
+	    https://clang.llvm.org/docs/ThinLTO.html
+
+	  If unsure, say Y.
+endchoice
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..8988a2e445d8 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -90,15 +90,18 @@
  * .data. We don't want to pull in .data..other sections, which Linux
  * has defined. Same for text and bss.
  *
+ * With LTO_CLANG, the linker also splits sections by default, so we need
+ * these macros to combine the sections during the final link.
+ *
  * RODATA_MAIN is not used because existing code already defines .rodata.x
  * sections to be brought in with rodata.
  */
-#ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
+#if defined(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION) || defined(CONFIG_LTO_CLANG)
 #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
-#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
+#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
-#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
-#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
+#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
+#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
 #define TEXT_MAIN .text
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 22654a463ad8..65d4bea937fa 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -111,7 +111,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) -fverbose-asm -S -o $@ $<
+      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
 
 $(obj)/%.s: $(src)/%.c FORCE
 	$(call if_changed_dep,cc_s_c)
@@ -421,8 +421,15 @@ $(obj)/lib.a: $(lib-y) FORCE
 # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
 # module is turned into a multi object module, $^ will contain header file
 # dependencies recorded in the .*.cmd file.
+ifdef CONFIG_LTO_CLANG
+quiet_cmd_link_multi-m = AR [M]  $@
+cmd_link_multi-m =						\
+	rm -f $@; 						\
+	$(AR) cDPrsT $@ $(filter %.o,$^)
+else
 quiet_cmd_link_multi-m = LD [M]  $@
       cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
+endif
 
 $(multi-used-m): FORCE
 	$(call if_changed,link_multi-m)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index ae01baf96f4e..2cb9a1d88434 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -6,6 +6,7 @@
 PHONY := __modfinal
 __modfinal:
 
+include $(objtree)/include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
 # for c_flags
@@ -29,6 +30,12 @@ quiet_cmd_cc_o_c = CC [M]  $@
 
 ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
 
+ifdef CONFIG_LTO_CLANG
+# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
+# avoid a second slow LTO link
+prelink-ext := .lto
+endif
+
 quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o =                                                     \
 	$(LD) -r $(KBUILD_LDFLAGS)					\
@@ -36,7 +43,7 @@ quiet_cmd_ld_ko_o = LD [M]  $@
 		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
-$(modules): %.ko: %.o %.mod.o scripts/module.lds FORCE
+$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds FORCE
 	+$(call if_changed,ld_ko_o)
 
 targets += $(modules) $(modules:.ko=.mod.o)
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index f54b6ac37ac2..9ff8bfdb574d 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -43,6 +43,9 @@ __modpost:
 include include/config/auto.conf
 include scripts/Kbuild.include
 
+# for ld_flags
+include scripts/Makefile.lib
+
 MODPOST = scripts/mod/modpost								\
 	$(if $(CONFIG_MODVERSIONS),-m)							\
 	$(if $(CONFIG_MODULE_SRCVERSION_ALL),-a)					\
@@ -102,12 +105,26 @@ $(input-symdump):
 	@echo >&2 'WARNING: Symbol version dump "$@" is missing.'
 	@echo >&2 '         Modules may not have dependencies or modversions.'
 
+ifdef CONFIG_LTO_CLANG
+# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
+# LTO to compile them into native code before running modpost
+prelink-ext := .lto
+
+quiet_cmd_cc_lto_link_modules = LTO [M] $@
+cmd_cc_lto_link_modules = $(LD) $(ld_flags) -r -o $@ --whole-archive $^
+
+%.lto.o: %.o
+	$(call if_changed,cc_lto_link_modules)
+endif
+
+modules := $(sort $(shell cat $(MODORDER)))
+
 # Read out modules.order to pass in modpost.
 # Otherwise, allmodconfig would fail with "Argument list too long".
 quiet_cmd_modpost = MODPOST $@
-      cmd_modpost = sed 's/ko$$/o/' $< | $(MODPOST) -T -
+      cmd_modpost = sed 's/\.ko$$/$(prelink-ext)\.o/' $< | $(MODPOST) -T -
 
-$(output-symdump): $(MODORDER) $(input-symdump) FORCE
+$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(prelink-ext).o) FORCE
 	$(call if_changed,modpost)
 
 targets += $(output-symdump)
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 6eded325c837..596507573a48 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -56,6 +56,14 @@ modpost_link()
 		${KBUILD_VMLINUX_LIBS}				\
 		--end-group"
 
+	if [ -n "${CONFIG_LTO_CLANG}" ]; then
+		# This might take a while, so indicate that we're doing
+		# an LTO link
+		info LTO ${1}
+	else
+		info LD ${1}
+	fi
+
 	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${objects}
 }
 
@@ -103,13 +111,22 @@ vmlinux_link()
 	fi
 
 	if [ "${SRCARCH}" != "um" ]; then
-		objects="--whole-archive			\
-			${KBUILD_VMLINUX_OBJS}			\
-			--no-whole-archive			\
-			--start-group				\
-			${KBUILD_VMLINUX_LIBS}			\
-			--end-group				\
-			${@}"
+		if [ -n "${CONFIG_LTO_CLANG}" ]; then
+			# Use vmlinux.o instead of performing the slow LTO
+			# link again.
+			objects="--whole-archive		\
+				vmlinux.o 			\
+				--no-whole-archive		\
+				${@}"
+		else
+			objects="--whole-archive		\
+				${KBUILD_VMLINUX_OBJS}		\
+				--no-whole-archive		\
+				--start-group			\
+				${KBUILD_VMLINUX_LIBS}		\
+				--end-group			\
+				${@}"
+		fi
 
 		${LD} ${KBUILD_LDFLAGS} ${LDFLAGS_vmlinux}	\
 			${strip_debug#-Wl,}			\
@@ -274,7 +291,6 @@ fi;
 ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
 
 #link vmlinux.o
-info LD vmlinux.o
 modpost_link vmlinux.o
 objtool_link vmlinux.o
 
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-3-samitolvanen%40google.com.
