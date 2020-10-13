Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXLSP6AKGQEKIWOEQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id E100A28C5CD
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:23 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 1sf4623832pgd.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549142; cv=pass;
        d=google.com; s=arc-20160816;
        b=meavYWBT2+eJzuYwcU5r2cRCNjenDMtTyPnC1EIoHaPZFDX4cVTpBUIXBA58QlVXIv
         1Rpwk3Y5O2cLRWcCKvoj1Tg/Bq/p4LZH5FOnSvzyE9646bf5apIyqx3iJCE6Ph7wWaIM
         SDw8IwKxor6W/JHBqpx67AdRzQHGFE+YscqZyufHhaxxbC8HRFpsLIRF408sHKMWGu17
         QbHK903J/t4IX2rvO/DZCM6c0mQJagGC6RdiycPBvLEY+u+sKQXOCzexJvn0GNHIS0qf
         swqifYoV6hE7SrBaDUuYXF6oZhGA++aj4mjApp/kZ5zBnb7qqtfIylkN+LEdtkdpNHqq
         Sh1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=anRXEEbLs4O1Ec1bSkTpe4AtFxBclneMqBWrkotN0Gk=;
        b=j0yLS/CqdFZuuiMKY5tkSB/4Bg/KnUT5FsZGq0BJ7UnRkuYBWq+Ku8pPNVoI+b4xUv
         ijIrxU9MX0kzvGs33Ssgtve/qvzMvVy1n+ys2y2lU+CXYHuAVQyDryBwTaWODekcEVDU
         0XfTLcuBGIpORAPQ2iGxVNQzPJZUkv+O8CnXYlKGmWzh5Xpg+BnXileA/nplLkmCeP7z
         HpSsEmHfLjbwXo8XpIG2RGhwV6o5aKE+2yiZsugCq6znVKnfIxdkh+CbIfMAa2OUAG35
         WZhXcLH5+CR8u0J6xPA/9yqgCkA2RrQUIHD7u3G2lZac9V/dCB25zDekRN3UyIRapPFB
         nJcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RXU63nRy;
       spf=pass (google.com: domain of 3lpwexwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lPWEXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=anRXEEbLs4O1Ec1bSkTpe4AtFxBclneMqBWrkotN0Gk=;
        b=JwabbRK6JZkmzFKslJTcu5Id51WXJDkPgCBkZ7VTsTg0caWqd/dib5/erSUA+Z/Pwf
         Rmk54LgK9hQLB2KF7bcA3ebsmg+CMOim1hddLmhsc2/oVvfRBwkbMWwfvmmJlqddNUhB
         uaSH+5kD5TehwiIBTnX+N46eKB+35S3pFjsSS9g79VmZIJSwl5TY7SvAwuHuQ6R0U2y3
         rImJ/NFbMDRBj+rLMDKuGmcF8VH01+xgb78MVSBtGHR1qFqF+KETP8gjWfYGkMAGyzTa
         amhlsdDhM9N9B4B0DWS7FGMYDlqrese2ODxepxv4noBsD+5Jw3Jv7TP9m5a8oYhNy6aa
         ItOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anRXEEbLs4O1Ec1bSkTpe4AtFxBclneMqBWrkotN0Gk=;
        b=aeBfnKLrMPTPT0kUhHB88ELzZBrrS5mr1ohjSgAlmHGOSsU00n0G2fDo5voBytLHoG
         Ro+NlAjA3CENl00hnF3XzNgetBiEDPrjL/H4ZuAm/32qtvVkmOuBpVcwIgDXsHbNl3Oo
         VVDk0z9XO3erthq0HkVzMdhOo8Xv4A66GTxDckJuh2ej0C2ACm9tY7cr+eGkbs0QXj6b
         cjFZvvagJce0ZSDRmkX28TJyVfjHSCfkEo9Q1NOKptchq4Ew2Qvnap+lczHOxbal8Nuf
         BfHMQXwG7SGqWfJ2F6d9vkTcvWRxZoA2YKNXo9tm0JI1CJbsp41ZsjyboqcKMokmrjrA
         LDYA==
X-Gm-Message-State: AOAM532ew6sUjki+kOd6olI9tcJU7GneZRgQ9RjektCN6ycFRMgCppvF
	W3zbfT++vpVPqi3thsHmdRc=
X-Google-Smtp-Source: ABdhPJz1VvJlTswK3DVr3EL45g7OomqrHYNKL73VLiZUMTS5sGi7ix+hnmmQgWgJxZEz4MAqEChmKw==
X-Received: by 2002:a63:f514:: with SMTP id w20mr15347169pgh.313.1602549142598;
        Mon, 12 Oct 2020 17:32:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b4b:: with SMTP id b72ls6188588pfb.2.gmail; Mon, 12 Oct
 2020 17:32:22 -0700 (PDT)
X-Received: by 2002:aa7:9905:0:b029:155:73b6:6f7d with SMTP id z5-20020aa799050000b029015573b66f7dmr19374640pff.78.1602549141918;
        Mon, 12 Oct 2020 17:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549141; cv=none;
        d=google.com; s=arc-20160816;
        b=QA4M5v+8VXSqLe6/4WWUuFno0p1cTBd6T05osM6xuBixoaki0R/Z1FuJfCnPhrPALM
         oeOfw/Pfiiu3tQGuy/u/ve2BMZaN0EQDn6ztokYCfLGljPTxroo1bOftCJeqFNqUpsKj
         jxMvgxT78uzTJ4XoK8zRDUNVvSAsVidmmSUmgbLStLBCXNm/V6S3UGOsCSyH2CUJgHUs
         qbGMkYMwfx3hTOi2M7IJBmoH4aGkIsBb/YV2cetd3z7NK86zOh6FzTQGXzxdaC5atri5
         3Me+vaRj+WwbRvTP+9ZnL37nDhfBUo2XMkjpNu7HplpCOu2P+ax0FiBYH3n1jbLssvDk
         A55w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=qE83d2elAZP27CB1PRHA3Fr1lT1xa1WkQfnE8zZm1tE=;
        b=a1AfqTrmNyubU9gUTctOSR58YQ2cz4GuAloSLT0gGF7EBH1oqg5W6flfcW4R8UtV5S
         rxytxZkzHuBVntTfA3SxUZL3qlu/Az5lNSfflQBZKyEBwQuiAAwtHWJ6lryIq4Dhbyyz
         3KFnkHLSFl5UYh9fp2luZ/xzIjkd/+naneIg8aH5mcdI3m4FSZ2wYLab+sUE9dBoJRwb
         vku9ge0cJYiC5R3lJ/fjXUh/WSK452YaZyR5CaLR+qfawJrmbNV5fDTk8ZRPR96cEMrR
         spKEw6ITSZGGsqmp4jsaqBSQpUESbmqx8k0reCse6rPvSmQgaMeZbsu5bqZI3TZW/Vu9
         l+7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RXU63nRy;
       spf=pass (google.com: domain of 3lpwexwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lPWEXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t15si1470207pjq.1.2020.10.12.17.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lpwexwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 139so13820756qkl.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:21 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:bec4:: with SMTP id
 f4mr28443151qvj.14.1602549140951; Mon, 12 Oct 2020 17:32:20 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:46 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 08/25] kbuild: add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=RXU63nRy;       spf=pass
 (google.com: domain of 3lpwexwwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lPWEXwwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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
index fda1f8a0b1c7..e91347082163 100644
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
index 6db5b1f55b14..81750ef4a633 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -111,7 +111,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) -fverbose-asm -S -o $@ $<
+      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
 
 $(obj)/%.s: $(src)/%.c FORCE
 	$(call if_changed_dep,cc_s_c)
@@ -428,8 +428,15 @@ $(obj)/lib.a: $(lib-y) FORCE
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-9-samitolvanen%40google.com.
