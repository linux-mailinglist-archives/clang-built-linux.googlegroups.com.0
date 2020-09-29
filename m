Return-Path: <clang-built-linux+bncBC2ORX645YPRBUOWZ35QKGQEHP5TJLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 006E627DA7A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:59 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id b3sf6376593ybg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416018; cv=pass;
        d=google.com; s=arc-20160816;
        b=O1FYpry6XmYc6TDTnA1olJ8a+DwPqulCS0U4NBObrZeMlW/1ZboJE7O8Tji7c+grHq
         XFVlDqQBXB/Nyr/aJD04kBH0kE5DW3RMUS89fpQrh/VV1sS0B9GVuMw4AElRIPaWlmCj
         XsxB5kr3wyNemNmSu5T4iGgFcqiS7kaWJX2zxEmbGBwjUqj9TNZoJy22ibqrG8yxDtrI
         1Ht4/Jg6/UPac/VQT3tDaxClbVxgrojSOEnm3e4gSeHvj4xx7IZ/Gcfn6bKg1qHft8ld
         aiiMlgTR9DfOVylMD5pWSAnq5VDY5b7vJri9/2VQRrlqPzMClLBev7mKr2qUtA+lfoHS
         dxNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=lg0GmGawljJs7d21ySEIXA7NEc8MYBPkwK3yDopIxSo=;
        b=jEfXN8g+eBadiWJ/mfMXcnKxfW5sJktj+4xNBeRsPPbvmLVF7qJLy2X2Mtadawiu2p
         vs9eSYHyIO9IRLc8vozKiqu9bWvWYrybh8LNEPIg2shk0e6ySpl3BiMDB8uFJMsh1Wbx
         hIq63Sc/KNR7TtgO3jf4oYJSwLtK+79yx3mWlDomP6tSMmPg3CaWWL2b+j0psmot43Sg
         BqxFyAS99axagBJpcfWaqdTyh3Uk/Ua1+44vdkDBFv/HcrkiP6byyt17uMN/DX9TdWa0
         AcLnen6FaunnGJIDOF1UidcUKyJRxzaHXEn7w4HYGX2oIPIJ2Vya0rqz1o7oX2g+HWQa
         bSFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EAGHPVT8;
       spf=pass (google.com: domain of 3uktzxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UKtzXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lg0GmGawljJs7d21ySEIXA7NEc8MYBPkwK3yDopIxSo=;
        b=FEfhQR1rOz6dkrg/9vml3mlNFGEE5IBp4v2GzFVUTWHGcdmohitJ6QwqkvLTWgLiey
         gdOM5rHtKzx44GaRe7Eb89F0+JEGfx4IFzMDRSA34fY+/MB/RWw4RWbbL87TjOumdBr5
         CDKx4AR2YQIV8vlc5r0KVgSCxR5yHzKnMY+wPqAQ4SrvFYUVBZ4fFu1OTAeXEKIEnwAf
         LJCu3wODDkhYCQFA38nesuHbBeofc+b2s/oXFnBOMFmKsJYf2UKclXy1bQc131pKTrai
         xZkZfK0To6xcQft8gUKEe1q56hCC3uBzmUPoe/06d27sUSFxnHAZDpVH/U0bUQEDZ6jU
         lOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lg0GmGawljJs7d21ySEIXA7NEc8MYBPkwK3yDopIxSo=;
        b=njwIo6p4D9ZxVP0CjiSCKVZdHxhBdVhpLOXlHl2k+RCIwwc4Zb1bhh8t78HN9bsADt
         yZ661JPODRqb8HQe31oQR+mqp6ThPkb5yoC3dtCZXO5Oep+G/h8Hy/PltGYHb3Jq7vvf
         1kTJ1im0gtAXzZmiCY0j7NSCOxEv/1Hy/RA0A9L13Zn4Vfp0jm/MTXvICwytk/gKI1Ep
         O80Ee3EI464iwlUpEcCO1ZjFGKrWGW1yKS0bKID3mrEFAz1q/T5jgDX3FVMEHzdv0WRH
         pUziXF3kkgdglkFoPvYQwZPgDqMrXqD+vqrQ9pUcBnLZtZleSj8B/B7ZcQRUNbwqrMCy
         49ow==
X-Gm-Message-State: AOAM530EIq4YgklPAdUIy1TjH6bvydcXJKXQ7do7EVOmRYyyQ/oTCYU+
	Q8YLleCdflUqneagmnZwzzk=
X-Google-Smtp-Source: ABdhPJwRn4Er/kEqQ+opkM1bS92He2dLX7sDiOiVfNMX8NWjn1LWZRToCpva/LKXfgAMtE/HZW13Zw==
X-Received: by 2002:a25:ec08:: with SMTP id j8mr8855778ybh.265.1601416017846;
        Tue, 29 Sep 2020 14:46:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77c3:: with SMTP id s186ls194492ybc.0.gmail; Tue, 29 Sep
 2020 14:46:57 -0700 (PDT)
X-Received: by 2002:a25:bcd0:: with SMTP id l16mr9714312ybm.129.1601416017299;
        Tue, 29 Sep 2020 14:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416017; cv=none;
        d=google.com; s=arc-20160816;
        b=pC+LnmnXCqBAokBiA/y6frKaFeClo+FUaN7nqWs8pmv4FkqRr3niCga+9QdUfitmEN
         q3QDZVhCSI/T3kjksoGhhFvkLYC2kvHcAltVd+83P0zm3y2EhlaRca5GqYmyaV6CXJ2Q
         tBYix8PSbHv5yIqHcLuilozLZEJuBFoaKB6HeRxl2OBY4R1ZlHqzkW/g49/tDHCZ3t4Z
         LTppOYP23NX6BI9kLLsQ8KUD7KGqZcWJgJOs2Jy7b9mtdZvUYSjTZCRRohfag8qteQ/0
         gJQ/XQXQ0JYKtrneQy1LryRV5pv1z3mtL6YipaIc7DPxkoYTIR9AScsxpzO2DqvLeP0l
         yG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=CkK8Er6i+gCrmdSW3+K/FPll9uotwfr/3yE7+isnYFw=;
        b=AjEU/YIN8FcZW+bMuU3OsgtP2moYKwIYE0HSnTJqtg2l2uxMwqed+jnpinW2KWdSGC
         eRguXDKQIQyfFv4HK5xNQeJPxfbFOIBX6FlwWSeZnYmRxwp1wcx+3oCQbez/ILg+4k+3
         UyYHgc69NDYjGMb1zelmh2BZl0192IILRcPOrbxUbA9AcfM2jaFbFtAf1/EEgm0W6/zC
         uX+L9EZqyazULUbEywWZ8ip2Oyf4Dn9FMje9nT1q9B8LwTxgd5p5EpqlGgJ/wu2UJf3v
         VxJntgHeqCXH1nKjB/U6sszaXCHLpRoMP9/9CDSilCoGT75hh328DESd3FLRvKjtu8cC
         hp8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EAGHPVT8;
       spf=pass (google.com: domain of 3uktzxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UKtzXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y189si390250yby.5.2020.09.29.14.46.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uktzxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k3so6383528ybk.16
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:57 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:d1d4:: with SMTP id
 i203mr8807871ybg.429.1601416016931; Tue, 29 Sep 2020 14:46:56 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:13 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 11/29] kbuild: add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=EAGHPVT8;       spf=pass
 (google.com: domain of 3uktzxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UKtzXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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
 arch/Kconfig                      | 69 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 +++--
 scripts/Makefile.build            |  9 +++-
 scripts/Makefile.modfinal         |  9 +++-
 scripts/Makefile.modpost          | 18 +++++++-
 scripts/link-vmlinux.sh           | 32 ++++++++++----
 7 files changed, 150 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 9717005e41c4..8e2eaf6452ba 100644
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
index af14a567b493..0742ec643d79 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -552,6 +552,75 @@ config SHADOW_CALL_STACK
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
index 5430febd34be..c1f0d58272bd 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -89,15 +89,18 @@
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
index f54b6ac37ac2..66e0c256403c 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -102,12 +102,26 @@ $(input-symdump):
 	@echo >&2 'WARNING: Symbol version dump "$@" is missing.'
 	@echo >&2 '         Modules may not have dependencies or modversions.'
 
+ifdef CONFIG_LTO_CLANG
+# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
+# LTO to compile them into native code before running modpost
+prelink-ext = .lto
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-12-samitolvanen%40google.com.
