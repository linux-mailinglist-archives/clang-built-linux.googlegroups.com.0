Return-Path: <clang-built-linux+bncBC2ORX645YPRBF7T22DQMGQERTMU4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4D3CE8E5
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 19:42:48 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id o8-20020a92c6880000b0290214927ba4d8sf6514046ilg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 10:42:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626716567; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8zjHaOxP7DVXyjTYr0+GknG1Xr0GgQGe+icI+ZuNoZEAznUgYzygTnEwWrXey4Qqg
         iyDRFEf+bB1b0c3druAX1QWSHcG6iYuwyRWBYYI4sOJxkGaNj11i94SqVRIrmVLQFPyW
         bBNw2BssEHkdV1A62VpLDmwms+rdEERyjhGM6NAxSi0tYVvR5hDKwq/q/KfnmXSsdAZh
         sNjRQG92HujAYzKFSlEACMvx5LPptOJUnE5IEq/qR9jd711EhQMnn6b5cMqCFbvZP++W
         tljq4cMvY2cca5Czx/KeHbVRNdyQzb5vubDXmS6B1roO/u0n/+H5ChyrUzQOBI68nt3W
         NiJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=TIu/Kt/IWCMcSGts7/xKM8HExf043diMA8YTWDyxJa4=;
        b=fDO67AXjZy+OeixVMVS8L6ErIVxHQVOS4/IXM6zZ7Y/N4CJFbQP4eL8GrxSqPCl7uR
         SARQ41jhNR53EHZII4rOg6cAmeTlhlihCay/1NQ7oQQULECW5s2ob/LjlK61AVudY2nf
         vgQiBnl00hFiFIp8HGgdcYvCmEx5KZllwVPd88Mk3uykcXN6sbqBRpfofglIpNnYcFzc
         sVSCBCYNePbewAMSiIGUHP2ESe/gN8R2nlh5zDWHWP9sUeQrykNtpb4cV+wq+lzd41/p
         q5Dxmor41XukJiGYIXqIggU8SbTJhN1f0e8RBd51/Z2q7SvZCii3FqNfgTk/xNez9lo2
         +tVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iN55n9sI;
       spf=pass (google.com: domain of 3lrn1yawkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lrn1YAwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TIu/Kt/IWCMcSGts7/xKM8HExf043diMA8YTWDyxJa4=;
        b=XxuzgXG12H9VyNJ6/nnCTexlM3nCIrPrGPqak7nOXD51+/Zvz9HrCFj2M05kzYr36S
         044cvmq9B10WDRvXt8eAo9dTq/yPdsXphwsnf+iTwdjRnF4w5AxTfNZw8IJwTwRfWLzQ
         8PGJwxhx/xmdkwnH8fHYcqdEXi77QT+Z+C2XOt+mub9rJwA4HYo2jJ2eB8RZVVansb7m
         tDf8czGc8o7y+eTiDlNPCVUZRhsmRIe6wHMYY8ZJrskhC8+XJGNrR7blLNmJDEArmLI5
         h8ttV5Hbl5va/9kC20F2P5jrVb8+qkhsoQqN4LbF/7dn01svmR0UpxQQQ7tRE7EGYzet
         CMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TIu/Kt/IWCMcSGts7/xKM8HExf043diMA8YTWDyxJa4=;
        b=UUuxqAfHjhTkqHaJ1x7e5UMpsHI94S0wJom6kHZt1df4H8sCJ/elO41YsMQNC4fRLO
         TWcUOnUgSlcJ5wcskMfojPq6a7cj/jBecQ6X7gSiQgXndFMDSzjOrj4o35nExHzktKAz
         Q95VXK1j47nZy+XeNd6+yRTAcWAPNnznkan+S8zmcA8MhqnZ0gaeH1NcSU825btJ8yUK
         XmSwacLpqRpQcnXnhGuyF2ar1yDzxjnXagz00qk72tgvLLK3p1f28BsYwAP+Y0MRzYio
         EAKnASNIJc2BW9G4LV24m+2Hprtd5WbJSDJqha5xffnOkjEJhpVynVbnL0y8fulq6oDE
         EnWg==
X-Gm-Message-State: AOAM531h5zLSBDyJXd+pvf9JwXgz25EFMdyWMux3gSDXFXu3Pbt/mzVE
	MKU33Lv73puqlaxWVcJelBs=
X-Google-Smtp-Source: ABdhPJyFu/k9tep6it62th/ZMRcLhmKNvIjqkqOQ2X4DihaYg3CMQ6DJXmV+cEUe+5iEcUXLYzSzQQ==
X-Received: by 2002:a02:2b21:: with SMTP id h33mr22335834jaa.31.1626716567141;
        Mon, 19 Jul 2021 10:42:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8e09:: with SMTP id q9ls3592398iod.7.gmail; Mon, 19 Jul
 2021 10:42:46 -0700 (PDT)
X-Received: by 2002:a5d:914a:: with SMTP id y10mr20082940ioq.140.1626716566704;
        Mon, 19 Jul 2021 10:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626716566; cv=none;
        d=google.com; s=arc-20160816;
        b=nBihnK6/puw+SdRzHA3sflJVlJClWJOgX7kXj8bsE5Splt94FW75CQqMc7wG8EwoHS
         MXie4RJdhN+w7PRPrgT8m2ZJ8OvVB0Sc670lVOer4BUYjOVKviqWLiCOsu9PrmpSRgvI
         yRntmbeYXR+TZH2H3YvDOrABAbo319BYJGe/g9mYh/6uDZOMNZ9RLkTS/jzhKyxfDOCC
         mBFbPjLQsfBQFfgctaES7DR860LtUjZKLdBHzgTJyQv+fe6/wYk3+E+5fDyIVgsbA93/
         kDv8Kyqi+B7eScnsS4A4pw4G9GNe+w6MUZakKojqzPZAdZi16jxYvOHE41LvIJmWvwdC
         fidQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=PnXVhrtpNSY8K6Airi4QeOTjIwthOHKmstGMgKKPkpY=;
        b=bAJwk/pwKr+8xsAB5EMRS+0Q5HEnkFZbcggQevEjqUqShM5Ry8lnrlLAmn5uVbsFG5
         m6tUUqdX9MvO2SxNQmTIxfrix21m+3KdGACANdUMsD/zWd2aTPg5hB6yh8+mRpHjTmZ7
         Lmnv36S/vQ6zt/ujW8pJqWnRnwCZYbxBJsjq+55aH2WIhhYx5kvDiNFfOEfNzui64hqx
         i74IOaBmstT2Z1AtFmUGlPWW4C03pA6EMoepdFUvAANfbGLfmkrDQ84oISbWdFPzvUtE
         HjQfSDY6HvN/xfhWIC+G/MR+0aKmNBHD8RRgdfppuJYtyJWkXTq3zcf/nxKMR88jKbTl
         mJIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iN55n9sI;
       spf=pass (google.com: domain of 3lrn1yawkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lrn1YAwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k3si1667954ioq.4.2021.07.19.10.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 10:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lrn1yawkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id h22-20020a05620a13f6b02903b94aaa0909so4784347qkl.15
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 10:42:46 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:38da:abb3:1d37:359d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:be85:: with SMTP id
 n5mr25977700qvi.59.1626716566123; Mon, 19 Jul 2021 10:42:46 -0700 (PDT)
Date: Mon, 19 Jul 2021 10:42:42 -0700
Message-Id: <20210719174242.3901354-1-samitolvanen@google.com>
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
 header.i=@google.com header.s=20161025 header.b=iN55n9sI;       spf=pass
 (google.com: domain of 3lrn1yawkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3lrn1YAwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719174242.3901354-1-samitolvanen%40google.com.
