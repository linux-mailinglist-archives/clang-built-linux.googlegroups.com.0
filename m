Return-Path: <clang-built-linux+bncBC2ORX645YPRBKNW236QKGQEDXQDQFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F9D2B8724
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:39 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id z9sf1433249oop.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737258; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvQE2hew/Nn/XxuV44rw54x3j6ZTwO1AY9ydVdrYZFoV2S6x/HmLuPMThL6Xofhh23
         E+oNWrtpLJi6+RtyQwdBCzf8cZk7x7zKmahvF4TlolAxsHM4wxp5TrHstnVmrj4/PIvs
         eXmnoeHrJzF34xG9InZeP/WQFCQ28qa4bqaUhK1q0bOGiUv0fVZk301R69OwycjDpOcZ
         AdtBGKW8mbIh5nTUMZs1XyGJGqYuOpWgnlxAf/mptyNOx/gkcPMQaMSYsXdwVGKl3D/7
         drcewyRwx+c1BhizoUvcwjcmz4IvYIlIuyaHv8lf/LYZ4+8fPKrTPJDNx53HbtsiSw48
         D1zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5prI02CojMmXssFhL34KxdrjMIOZWRD3zVXad336ulc=;
        b=twQKH4l/ZHLMTy5W81FGM7Y8WDl37iVwI1w+aUrgmSI/L70bx+3eaU92opQZJ3946c
         kTY3a8DWbj4LWFoMGkF0zMtbI4eeqIjxCHIDZLqJsCytUHu4NF459squyPmHeMiP96+B
         rgO0MypWpD5Z6HKelDEfEYVv2oHmBk+eWUAQZ4uMAhCAc+I1XlmEbL5b28kqIOx7qt/A
         k7rO9i2T3txxa93tkVulZQ7NdIx733AqcZZYuyhykqAMqNMar2B2nhxkfEGb6hViNi8s
         TQ5P9xhzPfr+2NXC4U7Xi/gn0ABOKgLQuuzKvlcklxDi4DTXjB/tmdxofbHw38GU7JN5
         2ShQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uCMHBbW2;
       spf=pass (google.com: domain of 3kju1xwwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3KJu1XwwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5prI02CojMmXssFhL34KxdrjMIOZWRD3zVXad336ulc=;
        b=B2152ggvy23VrkK74hvSKJRlt5eWRhXVq90CG76Jcs2DJ+kcA8Cubnrv0eDJ57ca7S
         KTFqJPSqmg6r1BzfpR3SkydqbJpANp4piYyVGU1RIsRerbRTyK2APXzTZ9OeiAqoefU0
         PX22/07TSmbxtRlboOl+FkcsEeMpFLT12boIkqRRCqtA0HqYsBXFK+qMB54891gHfRN9
         74chsvPs0eSOdjK2Uh/RxVd0tM5e853N4vEdxSBxrqSecc4pmTMFjEh4BitV511JRsDs
         EVYJ8u6J9YC8aYlbvVqDGreubPqLhTWKDELXkdIprxiGiuS4hBiI384D7AhU18k9u4Gx
         5M5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5prI02CojMmXssFhL34KxdrjMIOZWRD3zVXad336ulc=;
        b=RqTJ5yyxobXIaq5S7BntWn9U5LB0HhhRE+qJhnCtMsNAc1luXCRCr2cv78+SN6/OCY
         rdbym2iIq8ZTZEDAWAGhMy4n1+y5nKUJbhg7xMQkm3fL9TiOevV43zZJqhupuhiSE5UN
         ng9hDteFJe7sQXB7fCWPKbwvBQq5w4fMIsRS+jMV7sCDJ3nm+VkEQIvaVHoJeWU7eXpZ
         4D7tA1YRfGgJ764kcQpjxcfesNJPIWSCRIf6W7KXTCqCzeQu5ru4nkjN3N122gkgcI8y
         HXf2QWfjwRFXyknTF4dHfXY12dN15xl0Zuhyk/B9fo0XCnLasIzSplgm9kVAOXmMF4vN
         fKwQ==
X-Gm-Message-State: AOAM533MZuxbxG8l/IzZABq7y5Ne9nnE0ONAIbqaBP0sIiRiaZXVaZNb
	kf1z95U6sdT7Ll6lRq3sSvE=
X-Google-Smtp-Source: ABdhPJyy79AJ1/DNkzHlpJxWo7pHyy5pGKGnl92Yz7xL6NU1+9WL5Tej2oWrNLsUZzCU3yzP+oHMbg==
X-Received: by 2002:a05:6830:1692:: with SMTP id k18mr8503122otr.130.1605737258064;
        Wed, 18 Nov 2020 14:07:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls251752oth.1.gmail; Wed, 18
 Nov 2020 14:07:37 -0800 (PST)
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr8324980otf.248.1605737257582;
        Wed, 18 Nov 2020 14:07:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737257; cv=none;
        d=google.com; s=arc-20160816;
        b=aed7tNSjwEc+030BT3x2wHSNfK/5ivYmZH9vtb8rhOfbJtcgZuvHo/yAdMn2dIMwun
         NmvPg0H+5oeamABfolXzae1kx3NO/oCTki1ONCd556mrlPnazMQ+1yymAiQfplmi2MXz
         GFNgA7wSW+O+NNizkSGx8gyKc9iIb9OyF4t5nxOG6HO/PhAqitTn+nI4JBqQwyDwWfMS
         s/+w9nkYIjcIlXv4qTI/mMDPEj5WUUBrGfIKbSBk74TMB8HH00RhOrvJjGgaI8UIqZSy
         rFe130ITaH0R/WnVKWFx+KdJjh/9za3XQrsinf+/6RMiRCJ9Wg/bNyksNrp17npk9Nje
         ydoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=gvMc2k2xloEFnp0MdDT7TdZSkW74AB0e8LqiQDHemRY=;
        b=l14uoga+I0VNCCyZ/0j6McYi5RzTfUfiteZmhp7Jd+/tMRO8qCPHDXRaETPNiP0sPe
         dkujExLZ9M7KrMytG+6RgEdGJVY2wyRatoDJwMMS47lwO1RrLAbgzmdC4nwBNvMlsQTk
         OduDULhE56N5iQ9oEQR7Ya/w8jTgRJiP7F3rJP8/gSTB8vmJZbFolVNpqNZJ5b8gUynx
         lTtqok5jTPKiaTT9mh1ZVWKxecp10Ztz+JRcAlMBr1qYlCQJ1W4johjQ83CVRlqM4w3p
         EX+ZhHIgopwSwXRQf40GotjUzCg1TaL1e/8X2nsspm9wqkHFaxmOUWvP+wp84LZQiBzK
         il7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uCMHBbW2;
       spf=pass (google.com: domain of 3kju1xwwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3KJu1XwwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id e206si2459504oob.2.2020.11.18.14.07.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:37 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kju1xwwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id i20so2676773qtr.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:37 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:eccb:: with SMTP id
 o11mr7376030qvq.0.1605737256947; Wed, 18 Nov 2020 14:07:36 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:16 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 02/17] kbuild: add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=uCMHBbW2;       spf=pass
 (google.com: domain of 3kju1xwwkadknvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3KJu1XwwKADknVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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
  - compiling inline assembly with Clang's integrated assembler,
  - and linking with LLD.

While using full LTO results in the best runtime performance, the
compilation is not scalable in time or memory. CONFIG_THINLTO
enables ThinLTO, which allows parallel optimization and faster
incremental builds. ThinLTO is used by default if the architecture
also selects ARCH_SUPPORTS_THINLTO:

  https://clang.llvm.org/docs/ThinLTO.html

To enable LTO, LLVM tools must be used to handle bitcode files. The
easiest way is to pass the LLVM=1 option to make:

  $ make LLVM=1 defconfig
  $ scripts/config -e LTO_CLANG
  $ make LLVM=1

Alternatively, at least the following LLVM tools must be used:

  CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm

To prepare for LTO support with other compilers, common parts are
gated behind the CONFIG_LTO option, and LTO can be disabled for
specific files by filtering out CC_FLAGS_LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile                          | 19 +++++++-
 arch/Kconfig                      | 75 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 +++--
 scripts/Makefile.build            |  9 +++-
 scripts/Makefile.modfinal         |  9 +++-
 scripts/Makefile.modpost          | 21 ++++++++-
 scripts/link-vmlinux.sh           | 32 +++++++++----
 7 files changed, 158 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 8c8feb4245a6..240560e88d69 100644
--- a/Makefile
+++ b/Makefile
@@ -893,6 +893,21 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
 export CC_FLAGS_SCS
 endif
 
+ifdef CONFIG_LTO_CLANG
+ifdef CONFIG_THINLTO
+CC_FLAGS_LTO	+= -flto=thin -fsplit-lto-unit
+KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
+else
+CC_FLAGS_LTO	+= -flto
+endif
+CC_FLAGS_LTO	+= -fvisibility=default
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
@@ -1473,7 +1488,7 @@ MRPROPER_FILES += include/config include/generated          \
 		  *.spec
 
 # Directories & files removed with 'make distclean'
-DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
+DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
 
 # clean - Delete most, but leave enough to build external modules
 #
@@ -1719,7 +1734,7 @@ PHONY += compile_commands.json
 
 clean-dirs := $(KBUILD_EXTMOD)
 clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
-	$(KBUILD_EXTMOD)/compile_commands.json
+	$(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
 
 PHONY += help
 help:
diff --git a/arch/Kconfig b/arch/Kconfig
index 56b6ccc0e32d..a41fcb3ca7c6 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -598,6 +598,81 @@ config SHADOW_CALL_STACK
 	  reading and writing arbitrary memory may be able to locate them
 	  and hijack control flow by modifying the stacks.
 
+config LTO
+	bool
+
+config ARCH_SUPPORTS_LTO_CLANG
+	bool
+	help
+	  An architecture should select this option if it supports:
+	  - compiling with Clang,
+	  - compiling inline assembly with Clang's integrated assembler,
+	  - and linking with LLD.
+
+config ARCH_SUPPORTS_THINLTO
+	bool
+	help
+	  An architecture should select this option if it supports Clang's
+	  ThinLTO.
+
+config THINLTO
+	bool "Clang ThinLTO"
+	depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
+	default y
+	help
+	  This option enables Clang's ThinLTO, which allows for parallel
+	  optimization and faster incremental compiles. More information
+	  can be found from Clang's documentation:
+
+	    https://clang.llvm.org/docs/ThinLTO.html
+
+	  If you say N here, the compiler will use full LTO, which may
+	  produce faster code, but building the kernel will be significantly
+	  slower as the linker won't efficiently utilize multiple threads.
+
+	  If unsure, say Y.
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
+
+config LTO_CLANG
+	bool "Clang's Link Time Optimization (EXPERIMENTAL)"
+	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
+	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
+	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
+	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
+	depends on ARCH_SUPPORTS_LTO_CLANG
+	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
+	depends on !KASAN
+	depends on !GCOV_KERNEL
+	depends on !MODVERSIONS
+	select LTO
+	help
+          This option enables Clang's Link Time Optimization (LTO), which
+          allows the compiler to optimize the kernel globally. If you enable
+          this option, the compiler generates LLVM bitcode instead of ELF
+          object files, and the actual compilation from bitcode happens at
+          the LTO link step, which may take several minutes depending on the
+          kernel configuration. More information can be found from LLVM's
+          documentation:
+
+	    https://llvm.org/docs/LinkTimeOptimization.html
+
+	  To select this option, you also need to use LLVM tools to handle
+	  the bitcode by passing LLVM=1 to make.
+
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
index 2175ddb1ee0c..ed74b2f986f7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -111,7 +111,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) -fverbose-asm -S -o $@ $<
+      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
 
 $(obj)/%.s: $(src)/%.c FORCE
 	$(call if_changed_dep,cc_s_c)
@@ -425,8 +425,15 @@ $(obj)/lib.a: $(lib-y) FORCE
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-3-samitolvanen%40google.com.
