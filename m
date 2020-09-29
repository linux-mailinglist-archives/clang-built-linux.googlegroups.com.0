Return-Path: <clang-built-linux+bncBC2ORX645YPRBVWWZ35QKGQETF2SEOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7827DA80
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:03 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id u190sf2209164oif.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416023; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3BqUry7892Sd+/dpuGg1yGx/2tmdHVq2ihBMqM4pePao7BZf15MJHIBn4lVypM97m
         BMt3rCkc3RXEoz1ZNa6Xnxxx+muJ2+afZTKi/QwmYGW2UrlvqdbTuGTrWDG6ycxJ27lA
         njI+gp6PcaS05GeTaGMFErXd0xkdWBX7AyBVIOiqUVStqBP3CkdJjqIVxrp9TqSPCtoW
         KuZPG9Sfsbqnln8J2qVsGig9Cj+EMfsq0/oaofh3Izm8mdUL85D/hL3Yyp460DdTM97u
         cAQVd53d4ol2AeK/wn0eUePgTudzEaCx7GjzSCcP1fqE5OBxzvtheMcW9pyC5QqxVRgi
         5h8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Bhqab1PizxnHlyEi9xbZ9xKdgPtr9d/lzZnxsLLbTuQ=;
        b=ayJGsaLVhgaA1zwugSrLCsVN7+BwIRlUg0O120QsgaW2hwPiwrSEorL5HnwGznHP3R
         ZUgCKNoNBijmPM+YjnaOXQha4+Ic3iynR9TC63LRU24vm8+JvvhGGAVDb5cq+RxMS4aB
         +r1HGfIjLfJ/+ftUs220j2UJGZv3QqRaHHhlMLGTd+ewVJel+lXEWgkDEW3+JhNEPJRL
         mpDC51y2l61aPg5tg6/RSKPZ2ciNIwXMquwlTVlxhYqrrLL4fBZohG3zyH1iLmg8XN0Y
         +6J0I5ld/4f3/TklugMX265n4vKTR+mxYZnLLNQFkZKjvGm3ooadnWbD7JeFubheiQ0+
         msNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kToejlLl;
       spf=pass (google.com: domain of 3vatzxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3VatzXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bhqab1PizxnHlyEi9xbZ9xKdgPtr9d/lzZnxsLLbTuQ=;
        b=s2Tnc/f4qtBYBboohp9yZC2mWPc0aCX1DIxCgRJK4Elglsa6RRJAGFRj2Qt/j6qynv
         0eFtO8ACyVbgazTXhcVmNadX3SIfism8ajrdfdV+8dN2AWZB7eCWgqtjzcm+fcmT6Haa
         /ZKwS7oyr8Ip+n2WgFpdvrPeSqaEq8LQeBJH/vR1DHp2GvoPpPQe94fkrU4Gqa4tajj2
         mu89UNyeKDiLVwPXA4BmwbmeBML55YFOcZg2nskL1ZhaNOo/8ZpKFe24oYnKYbhna5pb
         mFzxUu2ns0nAE8sW5h2bsWof0TZmi6xpU/qDn323w73tbqTW/zg9CUjrN9cCJw9ytglU
         kowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bhqab1PizxnHlyEi9xbZ9xKdgPtr9d/lzZnxsLLbTuQ=;
        b=en+YVuH+pE0X3kvAeUmz+GGXL8ltp1lJSXlw2u1qS3EyDSlbZwAHkJPQRJfnXFU85o
         7QnTQr3vQucbsKIYcuk95l0b4SWj4zPw72HdgqUODt7yPhe6qpApgDsKIhI8uKEWuMHH
         j5LlUDORAFll4LyhAYfjVq8jTUeIsrynXr75ZGZY3DpBkQz3db1LLzJsSpstMs83Ryk3
         ehfgxHTWKhRL8Ra4ZsBbk07pZJ9Yvuy/4wEyty7g9e8dYxzvQ77Dhc3D8Zz38SQxECXk
         4BNtaIRovKt7a4CSFnQNR+5IXtOsK+52zDYuzhI+KPuCJDUTWBTONlZmFbycmSAXeOG9
         iEEg==
X-Gm-Message-State: AOAM530OBvQXSk6Xp2gine9QiMJB7PAKlzBySVsdHROXciu5tp5aHjyS
	deWDfE4P1Ajp2Z4r0XwrzIc=
X-Google-Smtp-Source: ABdhPJyV2O4Jd6JuBxyS6N7Xb4/BkLabVKD6rHvklVrb84bRpnkVtUYwa9lkeZ22esAclfGc9EQn8w==
X-Received: by 2002:aca:ecc4:: with SMTP id k187mr3667312oih.138.1601416022739;
        Tue, 29 Sep 2020 14:47:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bb81:: with SMTP id h1ls1644oop.10.gmail; Tue, 29 Sep
 2020 14:47:02 -0700 (PDT)
X-Received: by 2002:a4a:e946:: with SMTP id v6mr6148173ood.38.1601416022350;
        Tue, 29 Sep 2020 14:47:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416022; cv=none;
        d=google.com; s=arc-20160816;
        b=OPruxfHPSozI38lg1XAT/oV0vQC3bmrFBfctV6QDFcKg7dh/nYMOzmQ/5yUrdePCC+
         MGJ0LaHmgM440zrzu3NBLeuYNg67FFbeRk8eRI+0brOOefi4H985OPKmTq9LSYuMHJwy
         mKlslfu/+BeC1PzQCz93NXhJQk2tS/2wypJoEdPDC+1UyhdD9/2aot/0iKToJinhFFhJ
         6G7o1t7EE5G/gZr398JOZrnaI8nypIkOD7SUi8OWDo7yPm6gFvIRqSIN1mUoJ5HN2Zop
         uXklFoGq2p/nyE2k9J1CbbRxBUoV9n9CSnE80XOJhRzz7lWkiae6Mh1aNu0C84DHljM2
         lksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=2okmmeDec87SvOMXd3N63vsJjy9YUD5GxywHhacqWBg=;
        b=SOTAXU4FK7vrUeKtUTAzmqzqXmWCv38Ew7Crz8uKrq6segdw+ye1pgDEjb1zedjTyZ
         KOQQt/rixPh5bpzdcBIPT2fnnTU3fUC5Yh3nq/RndaPbZxeRa6HYEtPqsOqJvtYeHsrY
         pbmiwMEznYDTJoGCAF5pJNwtynOTiMhGo0In5hk07Jo9+APKraYRLp7abvNmgGYSVZ00
         OTNKmiRyUwELPPXeE0InbnZnPy/gvRcwfGCBAAqjb6VWjGGL4OzKW2J3glSOJB+1xbPC
         0uIWiyobOm3MnexheCK2PIHA4PNEzUGqX2jAybKMpZ4ZvLdbQCLJuOwG0s1x0tmv0f2c
         d5Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kToejlLl;
       spf=pass (google.com: domain of 3vatzxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3VatzXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m3si586575otk.4.2020.09.29.14.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vatzxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id r128so3691098qkc.9
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:02 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:a899:: with SMTP id
 x25mr6108251qva.46.1601416021752; Tue, 29 Sep 2020 14:47:01 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:15 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 13/29] kbuild: lto: postpone objtool
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
 header.i=@google.com header.s=20161025 header.b=kToejlLl;       spf=pass
 (google.com: domain of 3vatzxwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3VatzXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
modpost_link, or modfinal for modules. This change postpones calls
to objtool until after these steps, and moves objtool_args to
Makefile.lib, so the arguments can be reused in Makefile.modfinal.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/Kconfig              |  2 +-
 scripts/Makefile.build    | 19 ++-----------------
 scripts/Makefile.lib      | 11 +++++++++++
 scripts/Makefile.modfinal | 19 ++++++++++++++++---
 scripts/link-vmlinux.sh   | 23 ++++++++++++++++++++++-
 5 files changed, 52 insertions(+), 22 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 520e900efc75..db57ea19649b 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -600,7 +600,7 @@ config LTO_CLANG
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_RECORD
+	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
 	depends on !KASAN
 	depends on !GCOV_KERNEL
 	select LTO
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index eae2f5386a03..ab0ddf4884fd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -218,27 +218,11 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
 endif # CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
+ifndef CONFIG_LTO_CLANG
 ifneq ($(SKIP_STACK_VALIDATION),1)
 
 __objtool_obj := $(objtree)/tools/objtool/objtool
 
-objtool_args = $(if $(CONFIG_UNWINDER_ORC),orc generate,check)
-
-objtool_args += $(if $(part-of-module), --module,)
-
-ifndef CONFIG_FRAME_POINTER
-objtool_args += --no-fp
-endif
-ifdef CONFIG_GCOV_KERNEL
-objtool_args += --no-unreachable
-endif
-ifdef CONFIG_RETPOLINE
-  objtool_args += --retpoline
-endif
-ifdef CONFIG_X86_SMAP
-  objtool_args += --uaccess
-endif
-
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
@@ -250,6 +234,7 @@ objtool_obj = $(if $(patsubst y%,, \
 	$(__objtool_obj))
 
 endif # SKIP_STACK_VALIDATION
+endif # CONFIG_LTO_CLANG
 endif # CONFIG_STACK_VALIDATION
 
 # Rebuild all objects when objtool changes, or is enabled/disabled.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3d599716940c..ecb97c9f5feb 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -216,6 +216,17 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+# Objtool arguments are also needed for modfinal with LTO, so we define
+# then here to avoid duplication.
+objtool_args =								\
+	$(if $(CONFIG_UNWINDER_ORC),orc generate,check)			\
+	$(if $(part-of-module), --module,)				\
+	$(if $(CONFIG_FRAME_POINTER),, --no-fp)				\
+	$(if $(CONFIG_GCOV_KERNEL), --no-unreachable,)			\
+	$(if $(CONFIG_RETPOLINE), --retpoline,)				\
+	$(if $(CONFIG_X86_SMAP), --uaccess,)				\
+	$(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount,)
+
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 2cb9a1d88434..1bd2953b11c4 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include $(objtree)/include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags
+# for c_flags and objtool_args
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -34,10 +34,23 @@ ifdef CONFIG_LTO_CLANG
 # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
 # avoid a second slow LTO link
 prelink-ext := .lto
-endif
+
+# ELF processing was skipped earlier because we didn't have native code,
+# so let's now process the prelinked binary before we link the module.
+
+ifdef CONFIG_STACK_VALIDATION
+ifneq ($(SKIP_STACK_VALIDATION),1)
+cmd_ld_ko_o +=								\
+	$(objtree)/tools/objtool/objtool $(objtool_args)		\
+		$(@:.ko=$(prelink-ext).o);
+
+endif # SKIP_STACK_VALIDATION
+endif # CONFIG_STACK_VALIDATION
+
+endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o =                                                     \
+      cmd_ld_ko_o +=							\
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
 		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 3e99a19b9195..96cf5a5d19df 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -93,8 +93,29 @@ objtool_link()
 {
 	local objtoolopt;
 
+	if [ "${CONFIG_LTO_CLANG} ${CONFIG_STACK_VALIDATION}" = "y y" ]; then
+		# Don't perform vmlinux validation unless explicitly requested,
+		# but run objtool on vmlinux.o now that we have an object file.
+		if [ -n "${CONFIG_UNWINDER_ORC}" ]; then
+			objtoolopt="orc generate"
+		else
+			objtoolopt="check"
+		fi
+
+		if [ -n ${CONFIG_FTRACE_MCOUNT_USE_OBJTOOL} ]; then
+			objtoolopt="${objtoolopt} --mcount"
+		fi
+	fi
+
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check --vmlinux"
+		if [ -z "${objtoolopt}" ]; then
+			objtoolopt="check --vmlinux"
+		else
+			objtoolopt="${objtoolopt} --vmlinux"
+		fi
+	fi
+
+	if [ -n "${objtoolopt}" ]; then
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-14-samitolvanen%40google.com.
