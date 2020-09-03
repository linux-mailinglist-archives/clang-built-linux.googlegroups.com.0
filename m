Return-Path: <clang-built-linux+bncBC2ORX645YPRBEVFYX5AKGQEU5NTB3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6247125CA4F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:15 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id w16sf174014uau.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165074; cv=pass;
        d=google.com; s=arc-20160816;
        b=g38CayLr4KFqeJbT0hKXVhxZ1P8BL4UGydriAyJukQ0hkUXu30Mad7SxQMUyyZ5tpO
         KEzyu6AAXa8E6NybSAU82lX+4G0GCZ8hIsXQu4VN0olWs3VvU7OB0sDiY4YVE7IsxbaK
         1iuovffLUQSuLMN0HP0Cyu0gu1ikdSCDaZfEzDCaFTtdeufnmjyPHdbfwPfirnKyNvI0
         vpEBzJ0W4EOIjUM+g+4zjIZimgbgSrSSIyt6c0vaw0pBlV1WMWhOQqzBchYbj1KhvqTP
         99ImDJKqU90llm0k2WcOUk5vhWDX0fWkwKnyCdLPJGudEHGV26LiBJ+p/3hgcoVqdNRI
         Ib5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=tpyb79yv4n1vMQPsnXJSrqFePDg0puufJ0qZRueFo4A=;
        b=Q7Kjx9pqLpc3sekySgKkTrtFVtaONXgrR+kSylhGFkwvMFoMqpeisrih4f3WY4niD0
         z+QphzkdK1xU6i8hWhmvlI0q/MTAJIUj9Si0T3UCzXsWrjBY3s5BKqCVWUVS2sBz+a2a
         eYXsOJvHFo4Vsz/UwXtEZ/qZiuAwLvmVWgSC4stlptbhacP9zL2g4kuxClfzfc9Dr0Ei
         iHFaevSPDz0B1c9AYVvy8FcncwPbkXI8vTu3+LilrZypT6W6kptswlJO85/dM8DnaTio
         NmBuxrfPsOVvmEbRO10QeGMMPuWA6jJLa/mXq7E+v7cUSnXihKV0xg1YSsYhoM83Y7QW
         qZrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yqqnvr3t;
       spf=pass (google.com: domain of 3kvjrxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kVJRXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tpyb79yv4n1vMQPsnXJSrqFePDg0puufJ0qZRueFo4A=;
        b=DaO+j9GqFdQKB74Eqr4RxZvPh3UWe2Lap8uLMRWSt/j3HtBHFiwbm+q+Ny6Cjay0zq
         K7EdKqZPQ6tebFjlrsscQWUhzMVIVgovY0/95c36+iHiP6Ckv/IOic7tV9zBc4Lyu+6U
         rxsZia05udwrO7KslcQrZIIb2NmwVSLFyVXQe9mCAI1+UKFJ/Z3BwP34xrAxt52yd+29
         XT+MhSLwXKASPy+w33pqe+GX7LnfcBXid3lH33RwDvxtElKBan+0jebdwx5+WBKduxql
         fwKqHlVWRylLvTFMR6PD36CvlOxutIy3GL7Pzx5wftxmfOtpUDlF2A3UhLCGm6DbzBSA
         xbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tpyb79yv4n1vMQPsnXJSrqFePDg0puufJ0qZRueFo4A=;
        b=nS7r+XIR1tPhIKKp/JmYKAEKAyAly3JYTaJfCjFubdDF2BMg77c3M/cnEQU1rJEF9w
         b5t2XpEQyw6vat8+gREhs0CJsWoMsQ5t0yeY4hpiMNC+fOWLNEKlBPf1lCY8O4eNfBkx
         qhTmQosmIIfjJQLz3xSQJ/jP1D/8XA+/bvIUZl6JibUawLf4uvdy2g0dsfpsIZyWlitA
         4eXCAgz34U67RRlkLprtbr7zwMiXxtlxf5mNOH4otk/Vg5qJf/hvEblwAR4U4sH5TfnZ
         Boij9g8xByVmlgGn0c6JrCzA9AVqvo0BFibs8WnGcHQrGCcPpgvO6f4Wp9hTUi94X7tb
         SbCg==
X-Gm-Message-State: AOAM531EOdd6/VYyDkQkN0G5GD1Z20m0p7/AYHpNSfZHESmsTnolx3SA
	T/6PQt3SKHbo5+YHObDI4IA=
X-Google-Smtp-Source: ABdhPJybi27Or9Fjga5Un8YuKsNiX7f2r5GB50KqagLczIb4ZefioyD/6lZcIdfEa997yx8yR5GICQ==
X-Received: by 2002:ab0:142e:: with SMTP id b43mr2903159uae.7.1599165074316;
        Thu, 03 Sep 2020 13:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3211:: with SMTP id y17ls431222vky.2.gmail; Thu, 03 Sep
 2020 13:31:13 -0700 (PDT)
X-Received: by 2002:a1f:6050:: with SMTP id u77mr3398470vkb.78.1599165073855;
        Thu, 03 Sep 2020 13:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165073; cv=none;
        d=google.com; s=arc-20160816;
        b=m52UncFZQL+ClaVpP9Xy32ysl5pBwt77K6lH+JNdVsCtUZBs3Z4TgKWah0fWkD6CkL
         YoiJvxas2nPcH6kosUuXo6zSyCJ9Ma4yOW/oCaVnLQTIHTcQns8zPlOjIsnIyCYgb9kX
         36hgPxaIJV9+fmhvxk4EB5a+60TKVBF7jRDAWoTzwKBy+sUutO79MpxeeFen64LCpaYx
         XG0kLcecefZzqdY2NQbHY/eQXw9tErf4MyQSgSGR4dgHkSw5ac4V9cYpmk8E+cqyKpla
         FcmhGCAIYW8crLNeRH9ZhUYU0b0ab/kVvz6oB4ROoR4a2xY93Vep/2KjzhSx4oqzYZVM
         sSYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=u+3vdj9H+PBk/yyMuttkQ5QOlq+9x6lXaGv/+ogfos8=;
        b=BUIoAkQxp6WUFwrts9NHk5zsl0C/jbppimeThHo0R0PBjLkRW3yVp0C93111IncVJY
         vqq1IbRlpeUTeizxKZh4J8ifZMS69qE8DglzXhEkGk0EKmuSxivPpOopTGWKPO+LmOEe
         3C28olDp81rWykpHp4SacDyLfk23uHuZMc6biZFh37BXqzLeDHSpnoKj/upjTPY+cuIm
         ou8/VhvwuQOa8qPMIDLk0OVyfnDn9n+hFaaMN1iMCuijLglObNeHMlf/eDcgfL8hI1rU
         eEaEJKcjdIqR9zb698S6oQBm6gsmSvpeOKHczI0pH7pvczLzVWp/+HnEeILfzrofPkWU
         /xnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yqqnvr3t;
       spf=pass (google.com: domain of 3kvjrxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kVJRXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id a84si228789vka.4.2020.09.03.13.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kvjrxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id t4so1108356qvr.21
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:13 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b7a9:: with SMTP id
 l41mr3693643qve.7.1599165073361; Thu, 03 Sep 2020 13:31:13 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:34 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 09/28] kbuild: add support for Clang LTO
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
 header.i=@google.com header.s=20161025 header.b=Yqqnvr3t;       spf=pass
 (google.com: domain of 3kvjrxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kVJRXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
---
 Makefile                          | 18 +++++++-
 arch/Kconfig                      | 68 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 +++--
 scripts/Makefile.build            |  9 +++-
 scripts/Makefile.modfinal         |  9 +++-
 scripts/Makefile.modpost          | 24 ++++++++++-
 scripts/link-vmlinux.sh           | 32 +++++++++++----
 7 files changed, 154 insertions(+), 17 deletions(-)

diff --git a/Makefile b/Makefile
index a9dae26c93b5..dd49eaea7c25 100644
--- a/Makefile
+++ b/Makefile
@@ -909,6 +909,22 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
 export CC_FLAGS_SCS
 endif
 
+ifdef CONFIG_LTO_CLANG
+ifdef CONFIG_THINLTO
+CC_FLAGS_LTO_CLANG := -flto=thin -fsplit-lto-unit
+KBUILD_LDFLAGS	+= --thinlto-cache-dir=.thinlto-cache
+else
+CC_FLAGS_LTO_CLANG := -flto
+endif
+CC_FLAGS_LTO_CLANG += -fvisibility=default
+endif
+
+ifdef CONFIG_LTO
+CC_FLAGS_LTO	:= $(CC_FLAGS_LTO_CLANG)
+KBUILD_CFLAGS	+= $(CC_FLAGS_LTO)
+export CC_FLAGS_LTO
+endif
+
 ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
 KBUILD_CFLAGS += -falign-functions=32
 endif
@@ -1499,7 +1515,7 @@ MRPROPER_FILES += include/config include/generated          \
 		  *.spec
 
 # Directories & files removed with 'make distclean'
-DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
+DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
 
 # clean - Delete most, but leave enough to build external modules
 #
diff --git a/arch/Kconfig b/arch/Kconfig
index af14a567b493..11bb2f48dfe8 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -552,6 +552,74 @@ config SHADOW_CALL_STACK
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
+	  If unsure, select LTO_NONE.
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
index 6ecf30c70ced..a5f4b5d407e6 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -111,7 +111,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
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
+	$(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)
+else
 quiet_cmd_link_multi-m = LD [M]  $@
       cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
+endif
 
 $(multi-used-m): FORCE
 	$(call if_changed,link_multi-m)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 411c1e600e7d..1005b147abd0 100644
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
@@ -37,7 +44,7 @@ quiet_cmd_ld_ko_o = LD [M]  $@
 		-o $@ $(filter %.o, $^);				\
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
-$(modules): %.ko: %.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
+$(modules): %.ko: %$(prelink-ext).o %.mod.o $(KBUILD_LDS_MODULE) FORCE
 	+$(call if_changed,ld_ko_o)
 
 targets += $(modules) $(modules:.ko=.mod.o)
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index f54b6ac37ac2..a70f1f7da6aa 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -102,12 +102,32 @@ $(input-symdump):
 	@echo >&2 'WARNING: Symbol version dump "$@" is missing.'
 	@echo >&2 '         Modules may not have dependencies or modversions.'
 
+ifdef CONFIG_LTO_CLANG
+# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
+# LTO to compile them into native code before running modpost
+prelink-ext = .lto
+
+quiet_cmd_cc_lto_link_modules = LTO [M] $@
+cmd_cc_lto_link_modules =						\
+	$(LD) $(ld_flags) -r -o $@					\
+		--whole-archive $(filter-out FORCE,$^)
+
+%.lto.o: %.o FORCE
+	$(call if_changed,cc_lto_link_modules)
+
+PHONY += FORCE
+FORCE:
+
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-10-samitolvanen%40google.com.
