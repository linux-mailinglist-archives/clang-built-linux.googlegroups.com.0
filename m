Return-Path: <clang-built-linux+bncBC2ORX645YPRBAHRZ33QKGQEHQUYEQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F73B207CFF
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:05 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id r13sf2337608oic.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030784; cv=pass;
        d=google.com; s=arc-20160816;
        b=BqM7CDKOLFqMvpUKNJ/2BYXalfkCAkIeDUOOu9/KGKtghJAy3FlP9v9RmsJywCDnKa
         bfADvy+uApTi9XzHqwbqPh5KUrIqwv0+aoPmlQFQsGZU7LCH1t5R7k/55Y+elldKAJ/z
         VNjF94/aPJxj2t63mMjU7qAznhellRU+1nN+uVrZLLjlxOkvHHUuz0CX0Ily4rxvk43c
         /E7eZZS0D9S6saPLMvFtdxYWnl4/5M5moRI2GP1wlKaD9CdRsCfiq9SB/S5dY03JWfzC
         oH0399b8T0cIcHaLJXPn9sDwFhhAUeItic531+YLEuoHCEZbthJ6/aDKcK9uUKoo1TT7
         N4SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Ux8Jx4MU5zsyUjqlQ0+J5ekIKIyvImnCMYa0etYHOy0=;
        b=hTVP67pLXb2F21ozxG3Dd27wBLtqDX0Vwi0jIxW6xmXlRKhr9gIfHKbWaPyVUSzGPR
         uqzWrlXLxUokPdUl2C2gkWzZsuczJyNEYNqaasQd3gUqd9OoCYneMcE1QlQ0cqfyDhaw
         Gcxx53+oI+Qh9cbtlLqFZ5V538rvdA4UEazctZ6G5I38Kj8OaHiBng6DdALHE6meuHgm
         3/FLCnBUdXEtE6H6HdNKkLLIlBX/kE2BWu7yxJtHkJQSopjhHQ+2NvwPAE1mXfgvL5Xo
         P6qNNWjhIoNn7vLzh9C46sjPwY7Jko6eatf5pmym5hhVCtsTP4iFvLIR/uPqMISzBYbp
         IbEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o2nKUag0;
       spf=pass (google.com: domain of 3f7jzxgwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3f7jzXgwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ux8Jx4MU5zsyUjqlQ0+J5ekIKIyvImnCMYa0etYHOy0=;
        b=ruW/c+mgcp95X1P+Yn5dklWUqUjyOpqat0k2jwgZ5tSMksFcTmRwij9mwVBYauJb37
         ZhBtEOh0n6Vy49Aqt10WRZcKFli/s6YM0vkjdw72Anb/tKnB7fKNn0ahJB7EKbLAF7X6
         2Gqfeuh6ED2dW/CCyZfM+TA2OdpZ7gMpoxutWlW5HmMlpvvigkeGsJLlCpjGY+WQhia6
         7DntZ0NKxNZqYbYxZ3Jv1QWZD3ChZz0v1066SvOBnK5woMqhUUyqFzyuQi9NffnRrz+D
         W4lVZOpzXNl9mM3SRF12SirUa6fvX5kQvA1fDBy+XBLbSiDIVBooiwJJZMs9hdCASgts
         01YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ux8Jx4MU5zsyUjqlQ0+J5ekIKIyvImnCMYa0etYHOy0=;
        b=VyNo7MCpsDoO1USsHmxuokQHeohPCk2E9RHDOtg1mHecrpWl0MAFdMhedTUqo4xSEQ
         5A0pO0mZbUCPDP4IJeAbH3awA8HJY7F8MsE1hQqcE6LD5xRAn/nOuTlmwaJkyofNftgv
         m8JJuqRp0HisRqRUhHcfLPil7h9tU80kjOopN5BAU46is/+Ak+j1HRKIaf1enS3J2/EH
         6guTZRO40M/U7ltYqwyVDFyo3j+PJVfLhkikPX4zhOi69+GETnkXrf8G/Xa7dZC4uTTy
         D0zSnF7FVZ9AvX7LnjeyUcPSeYpongrBOvqScOjK0wlbPfaq32/h/KyVwUAbBQA+h5Nu
         QReA==
X-Gm-Message-State: AOAM530KtLUzgagJagtWRyZwBbSEWWHTLwNXg0eUArg3UjSJ7N8LwZuy
	kftnwrsnUbvpWvMM3lqBb5I=
X-Google-Smtp-Source: ABdhPJw8r2DfkffsJEpOkRNol0MCAELgGoOiIPMWVwYOYI7c43UraOI4ghDSa6ySI0JWRE2XzAYDzg==
X-Received: by 2002:a05:6830:2003:: with SMTP id e3mr22918693otp.89.1593030784330;
        Wed, 24 Jun 2020 13:33:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls652083oib.9.gmail; Wed, 24 Jun
 2020 13:33:04 -0700 (PDT)
X-Received: by 2002:aca:c143:: with SMTP id r64mr21178079oif.7.1593030784024;
        Wed, 24 Jun 2020 13:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030784; cv=none;
        d=google.com; s=arc-20160816;
        b=nMW88ljV3EJ8kHBXCoIBgupEnUZeAgnfjdOkx/kCas6PBsiFWyVTFKzcjQgJV5zAs2
         H8Vk8eWdI77rZ8jTsbKseQ1OkWK32J3eCUKLlOlujDvu9oMUUmczRq4cytjNfIERKKX4
         Hp7TFYsqMBhR2rZ99WgH9x2ydwwvSoTZMiAaR1+Vlb1NLfuumHpqU1Er840KfV7AQ4lJ
         jWG9lFpPYPl6QY7lY1YLypyxs9oV4O8oloT1zPjGfQwJ9aG9xn/8SjnwbWS1FNPXorW+
         1tBRxKqaKojKR6OnugCLfkt/DRSILzeZTFiOySXxfVR59LAT7JzeQcaqjc/OKYAJ1oi8
         hNzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=apr/xMGBKChEUgpglsm7SLvi5EseZ2l0OlujVaKR1Ng=;
        b=VWUpmk7C+m2+kEKM/W1W2w7jnXIDhbQbDI5tRyTomFtCAEzsmIlxGHV3JwiYIEi7nX
         KTNYftAaqN1Od92xtuQi6thfyxRDsIfhGKB7MKpx523TYR1Hx/aXtM1wW0B7uj1Wkxp3
         C9T3pVHMloS5Qe+WHOWJ4YRCTb8dkTWhVhLArW4dBq9YjhK+iQmAV67L+s/VvkhOS77q
         Tg8Zh8voShDa//EQ/PFTU2Xhj8TvXkslxkOlOLOdLbrBe8wwHl8krIoskInlUx+O4hQl
         5g7NuH7D6STNatkOET+rQmjQAxXR6lDv9xEVqZLQ7sWw6dsObPuXKiAbT5nEV6l1jJP4
         5tBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o2nKUag0;
       spf=pass (google.com: domain of 3f7jzxgwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3f7jzXgwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id j145si208705oib.5.2020.06.24.13.33.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f7jzxgwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id l9so2736350ybm.20
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:03 -0700 (PDT)
X-Received: by 2002:a25:df15:: with SMTP id w21mr44302291ybg.210.1593030783493;
 Wed, 24 Jun 2020 13:33:03 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:42 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 04/22] kbuild: lto: fix recordmcount
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
 header.i=@google.com header.s=20161025 header.b=o2nKUag0;       spf=pass
 (google.com: domain of 3f7jzxgwkalwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3f7jzXgwKALwucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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

With LTO, LLVM bitcode won't be compiled into native code until
modpost_link. This change postpones calls to recordmcount until after
this step.

In order to exclude specific functions from inspection, we add a new
code section .text..nomcount, which we tell recordmcount to ignore, and
a __nomcount attribute for moving functions to this section.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile                          |  2 +-
 arch/Kconfig                      |  2 +-
 include/asm-generic/vmlinux.lds.h |  1 +
 include/linux/compiler-clang.h    |  4 ++++
 include/linux/compiler_types.h    |  4 ++++
 kernel/trace/ftrace.c             |  1 +
 scripts/Makefile.build            |  9 +++++++++
 scripts/Makefile.modfinal         | 18 ++++++++++++++++--
 scripts/link-vmlinux.sh           | 29 +++++++++++++++++++++++++++++
 scripts/recordmcount.c            |  3 ++-
 10 files changed, 68 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 161ad0d1f77f..3a7e5e5c17b9 100644
--- a/Makefile
+++ b/Makefile
@@ -861,7 +861,7 @@ KBUILD_AFLAGS	+= $(CC_FLAGS_USING)
 ifdef CONFIG_DYNAMIC_FTRACE
 	ifdef CONFIG_HAVE_C_RECORDMCOUNT
 		BUILD_C_RECORDMCOUNT := y
-		export BUILD_C_RECORDMCOUNT
+		export BUILD_C_RECORDMCOUNT RECORDMCOUNT_WARN
 	endif
 endif
 endif
diff --git a/arch/Kconfig b/arch/Kconfig
index 87488fe1e6b8..85b2044b927d 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -598,7 +598,7 @@ config LTO_CLANG
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_RECORD
+	depends on !FTRACE_MCOUNT_RECORD || HAVE_C_RECORDMCOUNT
 	depends on !KASAN
 	select LTO
 	help
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 78079000c05a..a1c902b808d0 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -565,6 +565,7 @@
 		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
+		*(.text..nomcount)					\
 		*(.ref.text)						\
 	MEM_KEEP(init.text*)						\
 	MEM_KEEP(exit.text*)						\
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index ee37256ec8bd..fd78475c0642 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -55,3 +55,7 @@
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
 #endif
+
+#if defined(CONFIG_LTO_CLANG) && defined(CONFIG_FTRACE_MCOUNT_RECORD)
+#define __nomcount	__attribute__((__section__(".text..nomcount")))
+#endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e368384445b6..1470c9703a25 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -233,6 +233,10 @@ struct ftrace_likely_data {
 # define __noscs
 #endif
 
+#ifndef __nomcount
+# define __nomcount
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index 1903b80db6eb..8e3ddb8123d9 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -6062,6 +6062,7 @@ static int ftrace_cmp_ips(const void *a, const void *b)
 	return 0;
 }
 
+__nomcount
 static int ftrace_process_locs(struct module *mod,
 			       unsigned long *start,
 			       unsigned long *end)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 5c0bbb6ddfcf..64e99f4baa5b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -187,6 +187,9 @@ endif
 
 ifdef CONFIG_FTRACE_MCOUNT_RECORD
 ifndef CC_USING_RECORD_MCOUNT
+ifndef CC_USING_PATCHABLE_FUNCTION_ENTRY
+# With LTO, we postpone recordmcount until we compile a native binary
+ifndef CONFIG_LTO_CLANG
 # compiler will not generate __mcount_loc use recordmcount or recordmcount.pl
 ifdef BUILD_C_RECORDMCOUNT
 ifeq ("$(origin RECORDMCOUNT_WARN)", "command line")
@@ -200,6 +203,8 @@ sub_cmd_record_mcount =					\
 	if [ $(@) != "scripts/mod/empty.o" ]; then	\
 		$(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";	\
 	fi;
+endif # CONFIG_LTO_CLANG
+
 recordmcount_source := $(srctree)/scripts/recordmcount.c \
 		    $(srctree)/scripts/recordmcount.h
 else
@@ -209,11 +214,15 @@ sub_cmd_record_mcount = perl $(srctree)/scripts/recordmcount.pl "$(ARCH)" \
 	"$(OBJDUMP)" "$(OBJCOPY)" "$(CC) $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS)" \
 	"$(LD) $(KBUILD_LDFLAGS)" "$(NM)" "$(RM)" "$(MV)" \
 	"$(if $(part-of-module),1,0)" "$(@)";
+
 recordmcount_source := $(srctree)/scripts/recordmcount.pl
 endif # BUILD_C_RECORDMCOUNT
+ifndef CONFIG_LTO_CLANG
 cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),	\
 	$(sub_cmd_record_mcount))
+endif # CONFIG_LTO_CLANG
 endif # CC_USING_RECORD_MCOUNT
+endif # CC_USING_PATCHABLE_FUNCTION_ENTRY
 endif # CONFIG_FTRACE_MCOUNT_RECORD
 
 ifdef CONFIG_STACK_VALIDATION
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 1005b147abd0..d168f0cfe67c 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -34,10 +34,24 @@ ifdef CONFIG_LTO_CLANG
 # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
 # avoid a second slow LTO link
 prelink-ext := .lto
-endif
+
+# ELF processing was skipped earlier because we didn't have native code,
+# so let's now process the prelinked binary before we link the module.
+
+ifdef CONFIG_FTRACE_MCOUNT_RECORD
+ifndef CC_USING_RECORD_MCOUNT
+ifndef CC_USING_PATCHABLE_FUNCTION_ENTRY
+cmd_ld_ko_o += $(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS)	\
+			$(@:.ko=$(prelink-ext).o);
+
+endif # CC_USING_PATCHABLE_FUNCTION_ENTRY
+endif # CC_USING_RECORD_MCOUNT
+endif # CONFIG_FTRACE_MCOUNT_RECORD
+
+endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o =                                                     \
+      cmd_ld_ko_o +=                                                    \
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
 		$(addprefix -T , $(KBUILD_LDS_MODULE))			\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 69a6d7254e28..c72f5d0238f1 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -108,6 +108,29 @@ objtool_link()
 	fi
 }
 
+# If CONFIG_LTO_CLANG is selected, we postpone running recordmcount until
+# we have compiled LLVM IR to an object file.
+recordmcount()
+{
+	if [ "${CONFIG_LTO_CLANG} ${CONFIG_FTRACE_MCOUNT_RECORD}" != "y y" ]; then
+		return
+	fi
+
+	if [ -n "${CC_USING_RECORD_MCOUNT}" ]; then
+		return
+	fi
+	if [ -n "${CC_USING_PATCHABLE_FUNCTION_ENTRY}" ]; then
+		return
+	fi
+
+	local flags=""
+
+	[ -n "${RECORDMCOUNT_WARN}" ] && flags="-w"
+
+	info MCOUNT $*
+	${objtree}/scripts/recordmcount ${flags} $*
+}
+
 # Link of vmlinux
 # ${1} - output file
 # ${2}, ${3}, ... - optional extra .o files
@@ -316,6 +339,12 @@ objtool_link vmlinux.o
 # modpost vmlinux.o to check for section mismatches
 ${MAKE} -f "${srctree}/scripts/Makefile.modpost" MODPOST_VMLINUX=1
 
+if [ -n "${CONFIG_LTO_CLANG}" ]; then
+	# If we postponed ELF processing steps due to LTO, process
+	# vmlinux.o instead.
+	recordmcount vmlinux.o
+fi
+
 info MODINFO modules.builtin.modinfo
 ${OBJCOPY} -j .modinfo -O binary vmlinux.o modules.builtin.modinfo
 info GEN modules.builtin
diff --git a/scripts/recordmcount.c b/scripts/recordmcount.c
index 7225107a9aaf..9e9f10b4d649 100644
--- a/scripts/recordmcount.c
+++ b/scripts/recordmcount.c
@@ -404,7 +404,8 @@ static uint32_t (*w2)(uint16_t);
 /* Names of the sections that could contain calls to mcount. */
 static int is_mcounted_section_name(char const *const txtname)
 {
-	return strncmp(".text",          txtname, 5) == 0 ||
+	return (strncmp(".text",           txtname, 5) == 0 &&
+		 strcmp(".text..nomcount", txtname) != 0) ||
 		strcmp(".init.text",     txtname) == 0 ||
 		strcmp(".ref.text",      txtname) == 0 ||
 		strcmp(".sched.text",    txtname) == 0 ||
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-5-samitolvanen%40google.com.
