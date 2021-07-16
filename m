Return-Path: <clang-built-linux+bncBC2ORX645YPRB767Y6DQMGQEOFJ2LYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 551FA3CBDF8
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 22:45:53 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id x17-20020a1709027c11b0290122d280f05bsf2528159pll.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:45:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626468352; cv=pass;
        d=google.com; s=arc-20160816;
        b=iFnQttI6HD9rn9IAo4mouasL6ygjM9h1nRgWr+UU0x9TBAUCAlKM0xZ2+IEHbZP14A
         2G2eB4vyO3/TegrIuh3mofSXjf42m+wSC0kV8/SmtJp6m9/FDXW5GFZJx3l4r3XWCKSb
         Dci7H04vohISubHQqu/wniMsByHhacsdZ9m/iJVLT6BHM3Sh/K1aKJRYx3xFaZrNQrU7
         ddhrlurTmvlWCPVxp4viC2Raf7adsvQxj2vBagLpXdTJH+zZWPruIU8AIHTq+ErfL9sW
         GBz3LWtrNfFme6RKBtqOxS1rvSOpqxLndpAO+hwlstfC0gVHs9FvZ5YYjl/ccbelzCT6
         ZZWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=MzifEdAtmBgZKHGVfWzB70XykfFw4LUm27NnL9ZlcWg=;
        b=ajcmZE40Ie3aU33rTDqPQmPxnZ2Hq4F/0DeYjXKbN+PGbCDhKOmLdDPnGvOFZ9kYBM
         tye/ict3lUwzMd9p/NzwCfifpeSMh6Qis4yElDA/g5O9ufvpddYTmdF3eM7yU+Ad5vUB
         8K1j5u2nlUOkvHcEjLUcZcFcSirkQ7v4DtzKEyiK6UPBUjG/aCFvyQqWTW/rvpwqwpli
         Ll5iNhOU9rZcQg8zENKH5bZS41hR/PvxfB1FkeUTolZmdT614Ya5q1S+tX4H3lJrIwYG
         ofAESQ8smXS/klIgG9Uju8gyDxFI1vp0E4sfdFjPDmIqKmHjfiKHDwnzOqVMpeYMeAt+
         tc3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WCi9oN7b;
       spf=pass (google.com: domain of 3_u_xyawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_u_xYAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MzifEdAtmBgZKHGVfWzB70XykfFw4LUm27NnL9ZlcWg=;
        b=G3i7TSJJhXlmUA0HezHw9/aXZR6jhZ+b/x3gFd+tGsT6O4pFpINLpVvvBSFWRN5HTt
         JTW6yJxsB/FGSPTPPkDSMBFuKaX0JyydAxI9vH1XU0VgeQnigCDg7fL5xt2Exir2TApR
         ODmUMFYyi6GZRO83Okse51KR9JVoZz7FQW/UyV6XlmD7Yw3krw//+QqyuW+HC1I9BTUJ
         AucH3PtjkHSa3tAX+aWfobG5WCF9vNPR6PluafRYeJsLw66j4hLvvobR1SqB4rgkZM7l
         VUlY2T2AUp4eP2VX0MsYV+Ttyfa5vV5+yWQ/1mjB1rCDkQJLdZHowWEZSFwv2bsCNy3C
         N8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MzifEdAtmBgZKHGVfWzB70XykfFw4LUm27NnL9ZlcWg=;
        b=tlVw41ytv/HwLE5CPU+bQdg/OEUqYiPYHBwgWf9973V25ghm+8sUCfP01KT8UGVN3H
         25TSJnoCwPidxAqgUDaav1ASbZMB40Kk9jLn+LSpRTwBPuxblci6DAHlsioP7CjQUcKX
         MOkgyUaogLVpXUMbltcqAoIro6kvWezN1tzkMM4MIMRKwixGjMWDz7227t+SDXJvPRnY
         UcgPkG+yNH8dISBRSkM5kag5KwFHPrTX2A5By9lnQ2n+dlv7a1OUz8kWUrA2LpYgIlyc
         /CzVjAryAKDKztC2TbOdRGJnLjLc3qB2w3Ozf0zp7E49wvnMNDisqZtNismqTqWrS98D
         0qtg==
X-Gm-Message-State: AOAM531F9i57CM3IUtZ6oDRAzMqUFXxl52wf3ti7ZMdiKsrhjxS/CyG4
	7RJhdmaFxWhZW8fRpRiEfn4=
X-Google-Smtp-Source: ABdhPJyByr07UrXBI2eUQF++sOXzg4Qd0ZQSl7HvZOnxYOu1/QtKQesC51mocxtfUgWJoxq2sAY8Bg==
X-Received: by 2002:a17:902:d20b:b029:12b:59ab:189b with SMTP id t11-20020a170902d20bb029012b59ab189bmr7083347ply.7.1626468351972;
        Fri, 16 Jul 2021 13:45:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5386:: with SMTP id x6ls5335317pgq.9.gmail; Fri, 16 Jul
 2021 13:45:51 -0700 (PDT)
X-Received: by 2002:a63:1960:: with SMTP id 32mr11819203pgz.86.1626468351321;
        Fri, 16 Jul 2021 13:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626468351; cv=none;
        d=google.com; s=arc-20160816;
        b=lGZ1jU2RhOnROZ+k44LMKIz6qCScYC554pJieJV27TsCH8aBQ1VROjo9JVcwbiX+Ad
         R/X5v7DBSuSMQwo952lixkAnIxzgAQYw1QN+UJohmsr+MrKKoNM3JV9+bEKOTgD2jd+r
         QKV8FY64b8/8RjempkkemjpIWUTUQOc1To0Uwkx/Rada4U5o+PRrkRRAknT0t6nFD9HY
         rjWSLJdVaW7B7feg6nFiZlBUbJ9LJ0NJuXu29NBGEngNd8pce7wx6qBIDRPnFMk8xnsD
         qZl96L/B1500yy1epTEwUISLsVe1N9ynSekK3qZws+WPdo/6j0XNg8LUztuMvsCXOuD/
         DzIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=6xOtLIYGyLB17xvo4gQCXAgOrNxU3pti+/trSkcx+rg=;
        b=JhJm6TyiNmlHZ+SYdJR32y+3YCMHMNrjd+qLTC1mAmkfHzzO3YycpS8fKzJKwacAPl
         qlZ7vWktnRtdXfpCXhreTb4miSX42Q07THqr6ZhKaopLKZSlf5yt/ImhHdsHBs+pHZF/
         Em+B11AOZK0JZ1vN/epWskTG2DG2jgMskKDo9nT50as9/5bBOZcFff/FkaBFQ1xrjVPY
         gLFLe357PSP0f3DFP4wFTBhswjh3cyZNTq58qjq6M2mO8THxqznNEb4tGSsn/4mHDT8E
         WkDXZIreW2DX4Nukxuv33NRJF01QhjqTCfwhJqEFU02pEsU1VjLM3GfTS5M7G6VZ9btx
         ol1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WCi9oN7b;
       spf=pass (google.com: domain of 3_u_xyawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_u_xYAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id gd22si1140634pjb.0.2021.07.16.13.45.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 13:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_u_xyawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p20-20020a05622a0494b029024f09fe9ec9so7093520qtx.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 13:45:51 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:1ce:e9d9:963c:dd36])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4949:: with SMTP id
 o9mr12208799qvy.56.1626468350421; Fri, 16 Jul 2021 13:45:50 -0700 (PDT)
Date: Fri, 16 Jul 2021 13:45:45 -0700
Message-Id: <20210716204545.3536354-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.402.g57bb445576-goog
Subject: [PATCH] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WCi9oN7b;       spf=pass
 (google.com: domain of 3_u_xyawkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_u_xYAwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we currently link modules into native
code just before modpost, which means with TRIM_UNUSED_KSYMS
enabled, we still look at the LLVM bitcode in the .o files when
generating the list of used symbols. As the bitcode doesn't
yet have calls to compiler intrinsics and llvm-nm doesn't see
function references that only exist in function-level inline
assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
work with LTO.

This change moves module LTO linking to happen earlier, and
thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
entirely, allowing us to also drop the whitelist from
gen_autoksyms.sh.

Link: https://github.com/ClangBuiltLinux/linux/issues/1369
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 scripts/Makefile.build    | 25 ++++++++++++++++++++++++-
 scripts/Makefile.lib      |  7 +++++++
 scripts/Makefile.modfinal | 21 ++-------------------
 scripts/Makefile.modpost  | 22 +++-------------------
 scripts/gen_autoksyms.sh  | 12 ------------
 5 files changed, 36 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 10b2f2380d6f..80e0fa810870 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -202,6 +202,7 @@ sub_cmd_record_mcount =					\
 	if [ $(@) != "scripts/mod/empty.o" ]; then	\
 		$(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";	\
 	fi;
+/
 recordmcount_source := $(srctree)/scripts/recordmcount.c \
 		    $(srctree)/scripts/recordmcount.h
 else
@@ -271,12 +272,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
 	$(call if_changed_rule,cc_o_c)
 	$(call cmd,force_checksrc)
 
+ifdef CONFIG_LTO_CLANG
+# Module .o files may contain LLVM bitcode, compile them into native code
+# before ELF processing
+quiet_cmd_cc_lto_link_modules = LTO [M] $@
+cmd_cc_lto_link_modules =						\
+	$(LD) $(ld_flags) -r -o $@					\
+		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
+			echo -T $(@:.lto.o=.o.symversions))		\
+		--whole-archive $^
+
+ifdef CONFIG_STACK_VALIDATION
+# objtool was skipped for LLVM bitcode, run it now that we have compiled
+# modules into native code
+cmd_cc_lto_link_modules += ;						\
+	$(objtree)/tools/objtool/objtool $(objtool_args)		\
+		$(@:.ko=$(mod-prelink-ext).o)
+endif
+
+$(obj)/%.lto.o: $(obj)/%.o
+	$(call if_changed,cc_lto_link_modules)
+endif
+
 cmd_mod = { \
 	echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
 	$(undefined_syms) echo; \
 	} > $@
 
-$(obj)/%.mod: $(obj)/%.o FORCE
+$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
 	$(call if_changed,mod)
 
 quiet_cmd_cc_lst_c = MKLST   $@
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 10950559b223..ee985366dddf 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -225,6 +225,13 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+ifeq ($(CONFIG_LTO_CLANG),y)
+# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
+# need to run # LTO to compile them into native code (.lto.o) before further
+# processing.
+mod-prelink-ext := .lto
+endif
+
 # Objtool arguments are also needed for modfinal with LTO, so we define
 # then here to avoid duplication.
 objtool_args =								\
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 5e9b8057fb24..ff805777431c 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags and objtool_args
+# for c_flags and mod-prelink-ext
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -30,23 +30,6 @@ quiet_cmd_cc_o_c = CC [M]  $@
 
 ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
 
-ifdef CONFIG_LTO_CLANG
-# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
-# avoid a second slow LTO link
-prelink-ext := .lto
-
-# ELF processing was skipped earlier because we didn't have native code,
-# so let's now process the prelinked binary before we link the module.
-
-ifdef CONFIG_STACK_VALIDATION
-cmd_ld_ko_o +=								\
-	$(objtree)/tools/objtool/objtool $(objtool_args)		\
-		$(@:.ko=$(prelink-ext).o);
-
-endif # CONFIG_STACK_VALIDATION
-
-endif # CONFIG_LTO_CLANG
-
 quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o +=							\
 	$(LD) -r $(KBUILD_LDFLAGS)					\
@@ -72,7 +55,7 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
 
 
 # Re-generate module BTFs if either module's .ko or vmlinux changed
-$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
+$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
 	+$(call if_changed_except,ld_ko_o,vmlinux)
 ifdef CONFIG_DEBUG_INFO_BTF_MODULES
 	+$(if $(newer-prereqs),$(call cmd,btf_ko))
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index c383ba33d837..eef56d629799 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -41,7 +41,7 @@ __modpost:
 include include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for ld_flags
+# for mod-prelink-ext
 include $(srctree)/scripts/Makefile.lib
 
 MODPOST = scripts/mod/modpost								\
@@ -118,22 +118,6 @@ $(input-symdump):
 	@echo >&2 '         Modules may not have dependencies or modversions.'
 	@echo >&2 '         You may get many unresolved symbol warnings.'
 
-ifdef CONFIG_LTO_CLANG
-# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
-# LTO to compile them into native code before running modpost
-prelink-ext := .lto
-
-quiet_cmd_cc_lto_link_modules = LTO [M] $@
-cmd_cc_lto_link_modules =						\
-	$(LD) $(ld_flags) -r -o $@					\
-		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
-			echo -T $(@:.lto.o=.o.symversions))		\
-		--whole-archive $^
-
-%.lto.o: %.o
-	$(call if_changed,cc_lto_link_modules)
-endif
-
 modules := $(sort $(shell cat $(MODORDER)))
 
 # KBUILD_MODPOST_WARN can be set to avoid error out in case of undefined symbols
@@ -144,9 +128,9 @@ endif
 # Read out modules.order to pass in modpost.
 # Otherwise, allmodconfig would fail with "Argument list too long".
 quiet_cmd_modpost = MODPOST $@
-      cmd_modpost = sed 's/\.ko$$/$(prelink-ext)\.o/' $< | $(MODPOST) -T -
+      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
 
-$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(prelink-ext).o) FORCE
+$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
 	$(call if_changed,modpost)
 
 targets += $(output-symdump)
diff --git a/scripts/gen_autoksyms.sh b/scripts/gen_autoksyms.sh
index da320151e7c3..6ed0d225c8b1 100755
--- a/scripts/gen_autoksyms.sh
+++ b/scripts/gen_autoksyms.sh
@@ -26,18 +26,6 @@ if [ -n "$CONFIG_MODVERSIONS" ]; then
 	needed_symbols="$needed_symbols module_layout"
 fi
 
-# With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a binary
-# when the .mod files are generated, which means they don't yet contain
-# references to certain symbols that will be present in the final binaries.
-if [ -n "$CONFIG_LTO_CLANG" ]; then
-	# intrinsic functions
-	needed_symbols="$needed_symbols memcpy memmove memset"
-	# ftrace
-	needed_symbols="$needed_symbols _mcount"
-	# stack protector symbols
-	needed_symbols="$needed_symbols __stack_chk_fail __stack_chk_guard"
-fi
-
 ksym_wl=
 if [ -n "$CONFIG_UNUSED_KSYMS_WHITELIST" ]; then
 	# Use 'eval' to expand the whitelist path and check if it is relative
-- 
2.32.0.402.g57bb445576-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210716204545.3536354-1-samitolvanen%40google.com.
