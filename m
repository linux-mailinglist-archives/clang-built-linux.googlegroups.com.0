Return-Path: <clang-built-linux+bncBC2ORX645YPRB6HQZ33QKGQEX4H247Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A25A207CFD
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:32:57 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id e192sf3478282ybf.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:32:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030776; cv=pass;
        d=google.com; s=arc-20160816;
        b=TP6tT3zikJ2UN25KRpjMfp4h8muatpTvL9mMckdfMGHlsQueTvSR07hVjBHfG46Uct
         D8O3EbgKdUHcNDx+PxZSY61C1grS6AjHgtS+HO7MVSaJcNSsCvhhf1f3R7NJPnOoTRuQ
         sB3NAcEGYXPyrPPFLYht9oD6c70xN+NfeLdi7XXWhy0i18IBzDwm05rVNkRXwi8vIHTn
         BBuvtShpARV1u+/qEH+8UJm14Bl8lBFVQSRMOcgG9pE73O/OtvQFAC8hBs1zv7HPaHhA
         0YrGM6/ANMoT6BeCD0IEveUbZyGa5cgsNzmWtb1CPld0y9C63OA6y/pcVpWLsrEiTwc1
         JSfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6Fd1BtPz26E5zomyI6giEYQ4u+Y5ufoK9rTs6eAHqhQ=;
        b=Tx0koKFiRkLjCIjRL5Owy56AbuYtSXVUextUHhqY6GmpJTRx0aU/V6446UTedV7GU+
         WkAtJI8y73wRikqEG6j/ixIiKwBIDxYwUNt6i4xu8zE/zEl2RcREsoop7JgQ5otAz4j3
         rXxRlXsJ2Ds6GjAvBOgi1xPpkc81CEHDCuWKHRxwiLEUh/aSCjSm92nJ3KdbnnykwfO8
         xiI22WaTkGD8YPBRDHGt9h/y2MPcZGNNk4jtChRXLlt0+lRcEe6C5quH9p3KG2KlfYuD
         ctufzZCwQrzzdqbFZFgl57wFIBrthJziUqA2kmocPHOiZXkd8kIuIkPgGSWxVpYhLRPy
         zNRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=COoeXSQl;
       spf=pass (google.com: domain of 3d7jzxgwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3d7jzXgwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Fd1BtPz26E5zomyI6giEYQ4u+Y5ufoK9rTs6eAHqhQ=;
        b=PBKDm/n4MTHmPw2ITbKOGqnUY+bf2bC1ZMQrIOm0GhQjra23xK8EoWXBUfeXOMejhE
         bpL8cOgvu6ioEAkc30TzsevMgtIfcEWpSGFxlnj0XM0apxQOOHGZE0YUXXep1j6XeaFN
         BsihiE+IBPQzc4kRkcevCjhAxZyRMMQ1CM3xHN4lDWwvCInbQ2WnsliO0dhjSIhAhPzU
         oKKes3NzMBsLEs64ZNZ0LPw4b3WsBBK8hubZBiLsmAXA9ibjf8S4LmtptJ7zhiQipQZs
         fpUV7QuBVLpEXVTYCNilDbDRVJl5CKje0PCiS9jFqw7S4JbF9VfZnAtLQt0OktqxsvxE
         FadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Fd1BtPz26E5zomyI6giEYQ4u+Y5ufoK9rTs6eAHqhQ=;
        b=tbhRipyexwTjTFhMrWWUBL0M1oXro+KQufQZHEtWahq/NQICoQTZky0uYbTPuM8MA4
         azXUGwznoQ/oGJrIUPJJVk51gah81lqexRNunen7Au0KsA+OSMf8DGn6T2xcGr63ujlI
         t7ULhnUpCLCgGp5CCOOFdwlrWamYq0Re9+etachxiZJDlYmn7ZphAjE2tr8Lu1dRxYdq
         ME8kB5YB4x8kK6K7zY2aYmr5c2FKqSGagKC3rNp3DR0zWB7vf9NKQXTqdprQBQwR7hyZ
         8X8OUIOjxgd1se4WsLSc+oi4MrrFaRKG7JN/zr0h+VGVs5yjuI423+6M0FhWq1TlJWol
         3kYw==
X-Gm-Message-State: AOAM532avMBmd6nBt+SYXijN1cQQU0we39ICkTpUx+hazkejsKEpykAS
	QxKtn5PKZ4hbh8z1Xc98eZY=
X-Google-Smtp-Source: ABdhPJxur0y9tyhTM4/QYKblUrKlTeqQSNeijPmXkf9OUw+0WegaSmqNHGeOpvv35gy7WrQ6WLszug==
X-Received: by 2002:a25:ed10:: with SMTP id k16mr27632432ybh.189.1593030776537;
        Wed, 24 Jun 2020 13:32:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec5:: with SMTP id 188ls1200619ybo.11.gmail; Wed, 24 Jun
 2020 13:32:56 -0700 (PDT)
X-Received: by 2002:a25:d297:: with SMTP id j145mr47967516ybg.18.1593030776117;
        Wed, 24 Jun 2020 13:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030776; cv=none;
        d=google.com; s=arc-20160816;
        b=VnF3UCOS3blw4iCj2NJ3VQ1BNg4urCQJLGfoGo0BlTxGF/qPrcKX72C2L7mvT1PCHZ
         nMakuOCdu0iY2S/phRc4XuanYtkt5guM/nqCLmeid8/P7IITEsJVqSdERqODx25/9mRr
         2MrYwuQhk8JJoeZJII07+QZfXz6HIt4IhKrkZKoee66z0rlNYPjHYtG2bWaF9r23oLHE
         IpDFAMMs2tiy30PnRm9abgTsceJ6URLws8LEuCuqU/xmx8GGYHhQsd47ac13mOI6Eg5V
         uGnnoFs6NrMx/7OZuklPPlZMl+MmGjWhWsadxoorxQ8IhoZ+RFlwYHg4PxzAsPYcE+CD
         Q+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/wrr17V+FsCXcFbmRN2vHICWLIelteQsueKzbrVs9hw=;
        b=MbOMsEuCfffCa/oX9K4BYoe3VRXV5T3fUHguOCnSw6U3cpaFyrPRnAG37Q9119GFE/
         DKLV66ZfSZeZl+QWfaz0knJgV1/7XdBFX2AKfm3U+pSp8pmGgnInKXJxYbuEhbBq9wvp
         JkqI5VwZ1PXFQmk4LxFcZ1fdaZ7Fz/UA3sRq2+cpysQ+j41dmAdVcIj3Qig4Z3hHfIzf
         j+9j5+nF7lzh5rt0ZpPvoQkVxbA+CMe8DrkzUVMTSOSLNOD8UhGKT4TZC3UCNpot0vCW
         ezcGiNbPC/3XLwrcyhk8qZv2MxqF3Pg9+eBrsD/zV4NS81T5dzL4mdxZ7QcgbJT3Y8mf
         oL7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=COoeXSQl;
       spf=pass (google.com: domain of 3d7jzxgwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3d7jzXgwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v16si1760006ybe.2.2020.06.24.13.32.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3d7jzxgwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e20so3465723ybc.23
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:32:56 -0700 (PDT)
X-Received: by 2002:a5b:307:: with SMTP id j7mr44548339ybp.292.1593030775736;
 Wed, 24 Jun 2020 13:32:55 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:40 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 02/22] kbuild: add support for Clang LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=COoeXSQl;       spf=pass
 (google.com: domain of 3d7jzxgwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3d7jzXgwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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
 Makefile                          | 16 ++++++++
 arch/Kconfig                      | 66 +++++++++++++++++++++++++++++++
 include/asm-generic/vmlinux.lds.h | 11 ++++--
 scripts/Makefile.build            |  9 ++++-
 scripts/Makefile.modfinal         |  9 ++++-
 scripts/Makefile.modpost          | 24 ++++++++++-
 scripts/link-vmlinux.sh           | 32 +++++++++++----
 7 files changed, 151 insertions(+), 16 deletions(-)

diff --git a/Makefile b/Makefile
index ac2c61c37a73..0c7fe6fb2143 100644
--- a/Makefile
+++ b/Makefile
@@ -886,6 +886,22 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
 export CC_FLAGS_SCS
 endif
 
+ifdef CONFIG_LTO_CLANG
+ifdef CONFIG_THINLTO
+CC_FLAGS_LTO_CLANG := -flto=thin $(call cc-option, -fsplit-lto-unit)
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
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 8cc35dc556c7..e00b122293f8 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -552,6 +552,72 @@ config SHADOW_CALL_STACK
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
+	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
+	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
+	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
+	depends on ARCH_SUPPORTS_LTO_CLANG
+	depends on !FTRACE_MCOUNT_RECORD
+	depends on !KASAN
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
index db600ef218d7..78079000c05a 100644
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
index 2e8810b7e5ed..f307e708a1b7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -108,7 +108,7 @@ endif
 # ---------------------------------------------------------------------------
 
 quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
-      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
+      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
 
 $(obj)/%.s: $(src)/%.c FORCE
 	$(call if_changed_dep,cc_s_c)
@@ -424,8 +424,15 @@ $(obj)/lib.a: $(lib-y) FORCE
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
index 3651cbf6ad49..9ced8aecd579 100644
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
index 92dd745906f4..a681b3b6722e 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -52,6 +52,14 @@ modpost_link()
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
 
@@ -99,13 +107,22 @@ vmlinux_link()
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
@@ -270,7 +287,6 @@ fi;
 ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
 
 #link vmlinux.o
-info LD vmlinux.o
 modpost_link vmlinux.o
 objtool_link vmlinux.o
 
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-3-samitolvanen%40google.com.
