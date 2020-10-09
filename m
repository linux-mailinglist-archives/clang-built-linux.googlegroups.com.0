Return-Path: <clang-built-linux+bncBC2ORX645YPRBRUYQL6AKGQEDSBBOWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFFE288DEE
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:00 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id y45sf6085031qve.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260039; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3l3DcWywyRmSa0jW2MgdTqIJEkXJNYXrnvGS2sx7Ldpk/aDgm8IJrj0IZjWJtFzrO
         OAZTtJ1fdi3F1kB/MeEgBL7keDv5TAQAiGtaqujuuz4usheZsgxuQcqNlovC/K1hmXUP
         O4oMn0JmIYtZ/ttocGh6I6awv0Wb0Az7+/opB94d3Qe0R0CJTpMSzXWDBiVk37QQmzZQ
         spsL0NFLQaynFYJzG5nVCkwNLRno0+W6OgQ/nT3ah/UUlQUx6G7C+2oRm23hXRZ6Dxax
         lKFS1tWi7znCOiuZV8ntSA5LPtliMrJHZuJscd2/V+8JGJxrQIM6Ta1+I/MyRgCYqhHK
         fOrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=fYhNBiOVx8GoD8puFYngreFK1HVSYOpuhQU10A4CXto=;
        b=aNXG3m7XyiZ3lJvvmmVLHjvMoi3uJeXGmQecr1toMiE3P7Y74h7HeuEc+gD6bgorEr
         d1eEopUq8is3QtURDqvcKZhN5chSPKZ4DIGrAVp6Ps+pV8TBYH6g81y/6ILl1MnMjTyD
         Jv1mBkFYl0TQ22th234fuOK7EjSBKvPbWOAvZ6Iwxb8z7scaGm13RD2PGOy8XOamu//q
         y29adXQsy3QnaHrELuItUrSXucTKNVFvY+xYmUA42yYzT4dZx0KSdBOY3pBenvkmMVgw
         5vRygUoSwSshpQz313OpmdbWgjpcuf0qv+aLFQy+sITg2vjaG2NGDFvqd0PgqWSzGG35
         HI0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DEolHWER;
       spf=pass (google.com: domain of 3ryyaxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3RYyAXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fYhNBiOVx8GoD8puFYngreFK1HVSYOpuhQU10A4CXto=;
        b=A8HHUENmAnOnURmITaa2VxhQtaJK0nRzHj7Sk02/IDrqgLqHcpsfsAEcLLH8nwlXXf
         y1ZesQoV+RSPNYicOClYnCUECORNUnRkzZbP6ok4P7FVyjqNOaPIfO/NXBMG3a5aD5V9
         U2mjtdR05jdyuXySpkzK+fC8SUfKwimkKvvYnl4NNPwJTZXJIMksB/qMMXNCO70PO1E/
         hgv/OTF0cwKiin0+RsKcoEmPw2Uji6KJ6z/4FIMJPvAGlLEozBs6SEfSunfUSSkC3Sds
         rtceCIk0QLKMmpyq50GU4W0CDkT7mUxuFtkG6vi+I0r4O0Uqaj8T0Ln/EEaVoAHw4ESA
         Y1qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fYhNBiOVx8GoD8puFYngreFK1HVSYOpuhQU10A4CXto=;
        b=m0eUVig3HVVJWYLt1GNe5Sc2EM2Vlunzr3s0JlYhX8IpHvHtXi5I9dLxfUtOKi0Qh5
         sGn20r7nl/dZmxILH5mwyFRzPN5soIzoenKzCjvc5aptUz21O4KU4yBDGhuZw4cQitjW
         gwccJetBFzNK0rJqmz6RFjag6/78kXbEPiUIGLW/8jNI5aCOsMV0d+u6GNd4L5s8jeYx
         AEKn7ipfob2j787WubwFowFwZoCBmiajRbJu6jlLmAiF9jZnRN8CCcZUHFBSfsQSNHU8
         MlYe/u7tdQQAvvJ9Mh2G3jHQi6gHBk1OjB+foqmnWViiCX2wPwyHQ1Oc0qchTWCLbcv2
         gUuA==
X-Gm-Message-State: AOAM530F//u/Zvz7N+jJfwCeLSvRelrHczzKHjx8p5GBY9u/7wO/sBft
	13GiwCJEpqgDx8EGaChN4pU=
X-Google-Smtp-Source: ABdhPJwcscnVtXyKsFSZj3R/fVRTfaB3dc5FzubOGoKW6j9l0pkzAxysVyK0eyAnS8N5GXhrUy26kg==
X-Received: by 2002:a37:4f8d:: with SMTP id d135mr4083591qkb.104.1602260038843;
        Fri, 09 Oct 2020 09:13:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3895:: with SMTP id f21ls3778906qtc.10.gmail; Fri, 09
 Oct 2020 09:13:58 -0700 (PDT)
X-Received: by 2002:ac8:1093:: with SMTP id a19mr14412940qtj.319.1602260038337;
        Fri, 09 Oct 2020 09:13:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260038; cv=none;
        d=google.com; s=arc-20160816;
        b=GttXG2xNTHTq+ZqH0tyWjyT/qey0TGMj0Vzz+OldbbTwsrZPh1+tVtjDfTnsnodgqz
         leD45l3Zr6ZdXh7JIL9pzjuLWhRpRGYE0AKUxoescNYPDhHyZHxgyBzZSZwf+X7mMB7A
         gNZESLcNcJqsOftOE0sn5ELqqV1OUf6FQH9VCR+Bu+9aFHevx55aeAprL/bAcdDtpbOI
         tFbhB/1Gf2/tYl6WQIryPnxQEOE7Fleh/KOTKH2X6p4mbnHfrV1VCohiI67Hs2+Io8Pd
         iALMYwcCvQd8jlE9CadWeoVPiCXj5UNKEbXDxj3S62+QQR5j0VH0RBhorUTzpGoPSgGa
         CE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6MhybcrKlg1P23jgaNZU5i1r+XSaNTfwKI7rpW0jbGQ=;
        b=DFhVTbvZTLjxZ2o13uq5a0/Z4Ngv3EH5and0zKrn8Z6B5JGBp+C1O78nk0kwO73rG7
         XJpPEDLQ7dt5l1KhE8C47Tvrbg18ubhMnAnQ5LUD7J2yMsuMHLa2fIHhJ/I0YSuDFHMQ
         DwjTumVa5l6WIznVrGrEeHqT+GC6+xcj96OaEmqHgob5e9kZpbFgrWxud2W4kidxpjuG
         GllnicDu8MwhPtJ9n074DK6RnAxXA4IpzFgkAddm7us8IHR4lC5VrWe3nX5HVCT4prgA
         +1FC9easvh0wsfVyMN3EOdSLIV9ujTI2m4sQJi8RQWk4LNGhzYnx0S7Y86QdK/O5FRJL
         /9xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DEolHWER;
       spf=pass (google.com: domain of 3ryyaxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3RYyAXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id k17si661438qtf.5.2020.10.09.09.13.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ryyaxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id r128so7119012qkc.9
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:58 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a2a6:: with SMTP id
 g35mr7751296qva.4.1602260037408; Fri, 09 Oct 2020 09:13:57 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:17 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 08/29] kbuild: add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DEolHWER;       spf=pass
 (google.com: domain of 3ryyaxwwkagisamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3RYyAXwwKAGISAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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

Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
follow-up patches.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile                          | 20 ++++++++-
 arch/Kconfig                      | 75 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 +++--
 scripts/Makefile.build            |  9 +++-
 scripts/Makefile.modfinal         |  9 +++-
 scripts/Makefile.modpost          | 21 ++++++++-
 scripts/link-vmlinux.sh           | 32 +++++++++----
 7 files changed, 159 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index fb2cf557d3ca..a3baf8388163 100644
--- a/Makefile
+++ b/Makefile
@@ -886,6 +886,21 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
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
@@ -1477,7 +1492,7 @@ MRPROPER_FILES += include/config include/generated          \
 		  *.spec
 
 # Directories & files removed with 'make distclean'
-DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
+DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
 
 # clean - Delete most, but leave enough to build external modules
 #
@@ -1714,7 +1729,8 @@ _emodinst_post: _emodinst_
 	$(call cmd,depmod)
 
 clean-dirs := $(KBUILD_EXTMOD)
-clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
+clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
+		   $(KBUILD_EXTMOD)/.thinlto-cache
 
 PHONY += help
 help:
diff --git a/arch/Kconfig b/arch/Kconfig
index 76ec3395b843..4ac5dda6d873 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -558,6 +558,81 @@ config SHADOW_CALL_STACK
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
+	depends on !FTRACE_MCOUNT_RECORD
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
index e1843976754a..77e5bd069dd4 100644
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
index 372c3719f94c..ebb9f912aab6 100755
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-9-samitolvanen%40google.com.
