Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ7W22DQMGQER5Q7HTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4F53CE8FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 19:49:56 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id y59-20020a9d22c10000b0290451891192f0sf15894982ota.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 10:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626716995; cv=pass;
        d=google.com; s=arc-20160816;
        b=LX8hEBft0lQAncrcgFv0/9ZoZt46841XfMWH/okmogODBAJ92xMJ8I+eifSnSrAHMu
         6BQNRASINqRmPlrA+Jm3WxMy41BIQy6qyo5Pyy4oZXkt0IoNIzTQFHo8OWsKW57jP+We
         /NYQ+ItBn4ebpdh+IUPq2izlSt3in2aRirGc/GWs7sWUFyhg5G1E/5N7F+icOCvPR83U
         Gri8kS0kxQmmL8zkl0EgMiCAO3RW/bFEBAK0MsG4VW2OBSAOoSIb2YblObMuO7F4XUIK
         7T+3TPq4pv8CJV1umNzoCx+06vmjNercV4a0cE5iEAsqnr/hIFcB9WeCkmuTDRTegzST
         FNPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=gQhUeU3TDD0t7Rebz4E0RBf1vFmumtey0+cw0XQY5eU=;
        b=lD/4RQc2faW5d1si/K656EKxBBpYXW9/DuOjhmd6PyPusMnjpyFMLGR1GX6XWkQrkS
         NuhJ0gJD8qTDkSp3A47Fnv+S8pRN7z4Q2aWgqodU2Ru/qPL53or2RVHnVO/QZluXwyPW
         G7zTTItA6QhtVKuzwLGL/DH8nKJgSF1v6yZh2XrxUAPjo9qfRos451XQ8awCMYo/O5xR
         XvRcwpO1kK4w18slHbkhzQX3QXToGJS3q1AGeA3kJBiZgQUR5AEZUzmdd/Jr3U9NkRm2
         O6OqZ7l0dizp5g4GXJd45Ca6rsEwhfXJ9Ne4PgAKcaCfbjQ0n+6n59LTK1LUVViK8w9Z
         KJjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iCuEeYmk;
       spf=pass (google.com: domain of 3qrv1yawkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Qrv1YAwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gQhUeU3TDD0t7Rebz4E0RBf1vFmumtey0+cw0XQY5eU=;
        b=Lbwm19/hWF9FCYpADTm4IudGuA9mCSpY589QFsJMe7dHaT5o/IsW9w13cyBKgSKVkm
         H4uBErzfUChNTX+WP2Fnsj+iTPrjKX8dhrRtKRgAOuU3CM5XqkosrvnKyb9DJurXNkGw
         3gvT0zKVhl6h05WHjWU7rfT40gPcAOWQDuCBNyIRIOK1cEmqvyXZ3WBc7lCrnNm5jE8A
         vCHxsfFaDALC9Oh/l62eluXud3IDIYfQmsWIBTB9bxNaxHCVedRgrxj5qtaPl4gT8krQ
         7O2zxmqi+Ws2EZAWutb9bDnagC0uGi+ufRox8V9G3IcypMblDfzMt9eZhlewMbDE86Ih
         qUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gQhUeU3TDD0t7Rebz4E0RBf1vFmumtey0+cw0XQY5eU=;
        b=o4Wg58fGjAMXIYg8L1fK8FFAwvPYJOuneHjW75i2ODOHBrwxbZ6ynzjzF8z7UwOlFu
         eo6MLwB8MOTkhYqawhImUvN1BOqIUJhBoaKW3pY7bCBOyB797wjLV6kwO1qDzCW4/3vJ
         EdDlKKuY+n8D+fBswj3cPRk3vaV24LqyHSc512rWmPsGfrmL1ITBNvhQIoo0LPQ6U3d0
         0rrj9/DcRsrtni2lHDhxvs2LqIVYtZGsOwSCEMoZQsP3Br5VFH9xqzpgoWU9aYliCmhx
         Hoskk3i9cZvIrvVvhMwkrBgmJF2BL/y0Q1b7UkXxkhH84oTZz/9wEFQrNmmxpT22pUkb
         te0A==
X-Gm-Message-State: AOAM533hLp5sBpQd8i+Lbzs0XhcgRvD/k8qPaJ9lisB24iYWq4sAIfWa
	gjCexu6E2YA4AfWjCDstFFE=
X-Google-Smtp-Source: ABdhPJzIrBCTQUIRP3bceQIuuT93C5YAkzv9V05Ecq+9QllYAMfMrjQqZjzMf0Vk7vIfITxLlMUtlg==
X-Received: by 2002:a9d:550e:: with SMTP id l14mr19832387oth.241.1626716995367;
        Mon, 19 Jul 2021 10:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1642:: with SMTP id h2ls5528182otr.5.gmail; Mon, 19
 Jul 2021 10:49:55 -0700 (PDT)
X-Received: by 2002:a9d:5d14:: with SMTP id b20mr19411658oti.307.1626716994976;
        Mon, 19 Jul 2021 10:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626716994; cv=none;
        d=google.com; s=arc-20160816;
        b=shPBhy5CPuJ+jb5eUuxixtXv535AeKNsKO4Er2gPE27qpLV5FJJGNBO21t5/5RFH1c
         T2X6FEYcOwLDtQBLtzxvQ/L5iUn2v/w4IKl9lru3vrI6IlXuVm4+/lY9Bc9Q9GZDfSas
         diH4JvmdYujl4UdpWrWQuQLHQBqtnz/fDR+S2X8eYR5yPxMgFVhPfRIbqQfKgPzfdgTT
         W7WmICJ6Hr9Ji00f9J81ZnOY7mU7FI9G42vTMYbawgjKjBdcbGiwtXwbCvILkeOn3JF9
         MpYgL08x+OSlwQpThlUSqv7prqF0A7YjMtnsha5mSyHH3l5oTc4ZiZNJSPaYbi2/Wa6/
         MHSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=PnXVhrtpNSY8K6Airi4QeOTjIwthOHKmstGMgKKPkpY=;
        b=TSGwGUl9tCKNIIF7HvhuBqFikpsNRoYEDx1pijoASgpcWj7h4FAg40/aebNDQgluir
         nWTufDZPZRDHaqM7gHdVxUs6eWYVGSEmsy2BbA5GEEqMSfJqIGPzlQGHA6/WG1YXV8f3
         uJPqQx5zK2vQVBpapPuPlpS0L7mjZH4U5ROLNdFsiKOK22JG8HKyvRRJcoLWuAkb/k6i
         HXLEhgQVkHwcB4EQBT9oV8hBkTiFWKveRIw9c+Id4RQH4z/pxOxa5fO0Kipx4dH57eOD
         AqQne61qlRW8vd+314WT0KgmLGv4hdD++oTlqfljC755QXXSXDq3g2ZDym7G+Q6yMum/
         g94A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iCuEeYmk;
       spf=pass (google.com: domain of 3qrv1yawkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Qrv1YAwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k24si1915254otn.3.2021.07.19.10.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 10:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qrv1yawkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id s83-20020a2545560000b029055ae952c336so26350453yba.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 10:49:54 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:38da:abb3:1d37:359d])
 (user=samitolvanen job=sendgmr) by 2002:a25:a565:: with SMTP id
 h92mr32480939ybi.423.1626716994474; Mon, 19 Jul 2021 10:49:54 -0700 (PDT)
Date: Mon, 19 Jul 2021 10:49:51 -0700
Message-Id: <20210719174951.4087373-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.402.g57bb445576-goog
Subject: [PATCH v2] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
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
 header.i=@google.com header.s=20161025 header.b=iCuEeYmk;       spf=pass
 (google.com: domain of 3qrv1yawkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Qrv1YAwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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
-- 
2.32.0.402.g57bb445576-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719174951.4087373-1-samitolvanen%40google.com.
