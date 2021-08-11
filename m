Return-Path: <clang-built-linux+bncBC2ORX645YPRB4HG2CEAMGQEZK5KFPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F543E99B5
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 22:30:41 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id x13-20020a5eda0d0000b02905976d643e4csf2247078ioj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 13:30:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628713841; cv=pass;
        d=google.com; s=arc-20160816;
        b=TlxyaZ2cGF77luOEdM86amq6ySYDA+SaDLZuvMAT5J62hKkCs8pepYOuGSGL2FpOyh
         Cfj600qDK66MfyAiyv2oojnG0MerqpLsCSu52OO7J/RkOxqRrmLlbFWkuUI9kSgWIN5Q
         mjXxbgQhDkiCe/0X0eSZc+ntVzuawusGXaksuHaGKHtHXp6pwTJaXAmIGSJyUV9qPawQ
         B6OprctmGN06IZzJ4ryuVR4ubFws4NFApAXMipJrNm60R7El5/lGtW1OXUW2Al4MQ7X0
         UrvAYyezlPWuToOnRyxd/9bsOtRh8XkUHHt2oTyhi1mWw7pOh2LNq+X04xIgzLTVmuR6
         PyKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=3r1aRSX7jrFapwaGOF/JxjiWaQHg0h8aiHF1gu/Ugt0=;
        b=0u6BnSU+0QFfX0lq8VACFlU+3jPtkW+yO2J1OUfPSAWwIXmeV6hhFlv+j0ps0ZrUUB
         W+pIm9z+XRjP1f2BKSJItaHuI4wsxyNYfYcDFia3fYyEyRqMsfxna/0ATwDV9CAZAM1j
         digWTtWYDxbjNlqmYMWfi+iTHwfLWvUZ9SP908hfAPgAA0N4MJp7H4MYVfrrLxkZy+RF
         XiZXcCsinPCspkp7+XJAfP+K8vjafaiMstb2LXqG3D7Fy7rv4K//veLQ2Tisc1z04LeQ
         V/rA41+cVNT1KJgcqwrYYePKffy/Oak+4QjAtoUzYlEKsQf4+akBSAK1HuzSlUSZItiN
         ZShQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bic0sYHp;
       spf=pass (google.com: domain of 3bzmuyqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3bzMUYQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3r1aRSX7jrFapwaGOF/JxjiWaQHg0h8aiHF1gu/Ugt0=;
        b=c1vTaOJdtNWgt6IK7Y/9gRtyZlXpI70F7d9IVMgGpJ3MgfjaDzLJQGSBqlbrFsFj5V
         SZvcemc4ACh4DMCfZ55zGfbczg8wu/ZopS01CH5A8ryofVPyxvbht5E+wZEnXjdVCzVp
         Wh4xg+J9OrBBK8YhDdf1rXTB3KdQ5j84OnZtp47276bDk/jdwjJeDOVD1vB+j1FU79x7
         hB+6if1kh1f9DbiAsO3GzSMh7G6GJc1WRI3xXeatMtK222jDag3+MvXRRjfNIweZXvNa
         vj+1aLWSas035FFr3WF5diSqEUx7g9wh3j5NdHRXlAd1frYpHXvmKfpNixfNLrNbqPgm
         Zsjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3r1aRSX7jrFapwaGOF/JxjiWaQHg0h8aiHF1gu/Ugt0=;
        b=TjlEC6fdjy/3QRRyKx8FB2yoPb6wk2Q502LhjWVb43Y9GlOSzgAMjCLJzaZn9VKZCO
         leIqDkcx18UPERZY7WGyRGQYk7wu98L9FCwF7QctEu/icUzyQdNhuB1TbvG3zdGRgryt
         kkLPhGtc3LIIQuExV36icU5FcQWUr43tb36LyRwJGC6jLfViqmpEqaMaLw1iH0toftYa
         CJ+Z1to0Hrr2efJ8EWvtIDAku34AYClMchShFnXsPPMcgYxUhOttQvJ0DfV4ktktO2Ga
         F0dI9VegTWiAbw9KQYg7nsbDndZ6Ew/Qc6QmXNfRlfAhfYo6mLvsHB2Vfu+fjdJDPo4n
         Vc0A==
X-Gm-Message-State: AOAM533WCMxzDjv7NmVjwrySWdYH4rABHIEvJ0V7nNiILv4XButoPwAM
	wBtcIKI1ThDwg/KgwNiXdLQ=
X-Google-Smtp-Source: ABdhPJyiAqNAMVdde/nMqfaCJPWPTmD+XKxBoCa8q+4z7qkKojhDrxHHAYadrFIVDJNuF7HOuwd3lQ==
X-Received: by 2002:a05:6e02:216b:: with SMTP id s11mr208819ilv.288.1628713840825;
        Wed, 11 Aug 2021 13:30:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:27c6:: with SMTP id l6ls495012ios.6.gmail; Wed, 11
 Aug 2021 13:30:40 -0700 (PDT)
X-Received: by 2002:a5d:9253:: with SMTP id e19mr324856iol.35.1628713840414;
        Wed, 11 Aug 2021 13:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628713840; cv=none;
        d=google.com; s=arc-20160816;
        b=BnaP1p1fWIMyPB7vkegFEP8m6yPg+bbYt4tJAnGi+91u7pkBZX4jp+fYTp0V9bNrOY
         DCPvsqvo6etgxxUP21CPv8DsECPVMRWYfUFgKplmxfximcxbz6kDzsZzqFPTDr56Fs7J
         xDRGOwxnCqi/rPPjdHzTuwQJInu5CmY/H+C09h0hMhsWndHoh5msF8NwRLXMSbgXOYfx
         GcU2Gt1Iwpe/EgzfsgrnZeHvbzfNBHfK2j0h0keqDVzcepw+/qwfjhfFHx/0/ukUNuYE
         OA4zDNSlmwBiQ3IPApKJmiNoUp2lRuwZp1gLXE1L9P4tkUo0ccqJuEb+FUwHCSE0vsRW
         nyKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=yb6wLhOcRUPhCOqiLmn5Y+E5X6yFSzK4zbEE9m+mURA=;
        b=veQ2FiOP3QcpE5Zk/fZ48jhO4sokbfximO0YyEjEme8PJ+ialfxfctKC2/7hNVszmE
         qpsapjYFYzLZ3ZaOwZCC06PAxxhfCKCUVOmwvVMabzqMsunIojKbk/UWmPNMkMhqMgrf
         rqicosrdkuN+ACc55gZYPffHBFDj0IhmmvRLoptvE/Du4jKza3qEna1DTuEpxNeZOswx
         +slieKbhkQ/iHIzqbM+CFn7Qy8J4ydDjLpHtXHbtqbDF0mKooJ5Iv2np+WIL8CS/hg2E
         I6IOObyCLYm8vl/Xtq0ZFZMWLSIMV/u0IHAga6eQLhrM1Jv5jmd3yfY/yBqRInEvkfwy
         oPaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bic0sYHp;
       spf=pass (google.com: domain of 3bzmuyqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3bzMUYQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id e12si24021ile.4.2021.08.11.13.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 13:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bzmuyqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id u11-20020ad45aab0000b029033e289c093aso1971418qvg.10
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 13:30:40 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:299:25a:1086:94b])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:9ce:: with SMTP id
 dp14mr474184qvb.42.1628713839917; Wed, 11 Aug 2021 13:30:39 -0700 (PDT)
Date: Wed, 11 Aug 2021 13:30:35 -0700
Message-Id: <20210811203035.2463343-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH RESEND v2] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>
Cc: Alexander Lobakin <alobakin@pm.me>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Bic0sYHp;       spf=pass
 (google.com: domain of 3bzmuyqwkadyksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3bzMUYQwKADYkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Alexander Lobakin <alobakin@pm.me>
Tested-by: Alexander Lobakin <alobakin@pm.me>
---
Changes in v2:
- Fixed a couple of typos.
- Fixed objtool arguments for .lto.o to always include --module.

---
 scripts/Makefile.build    | 24 +++++++++++++++++++++++-
 scripts/Makefile.lib      |  7 +++++++
 scripts/Makefile.modfinal | 21 ++-------------------
 scripts/Makefile.modpost  | 22 +++-------------------
 scripts/gen_autoksyms.sh  | 12 ------------
 5 files changed, 35 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 02197cb8e3a7..778dabea3a89 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -271,12 +271,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
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
+	$(objtree)/tools/objtool/objtool $(objtool_args) --module	\
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
index 10950559b223..af1c920a585c 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -225,6 +225,13 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+ifeq ($(CONFIG_LTO_CLANG),y)
+# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
+# need to run LTO to compile them into native code (.lto.o) before further
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

base-commit: 761c6d7ec820f123b931e7b8ef7ec7c8564e450f
-- 
2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210811203035.2463343-1-samitolvanen%40google.com.
