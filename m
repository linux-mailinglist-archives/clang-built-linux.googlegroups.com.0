Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBOGI5KEQMGQE6LDB3TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id E23AF4060AF
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 02:18:01 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 62-20020a3706410000b02903d2cdd9acf0sf303301qkg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 17:18:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631233081; cv=pass;
        d=google.com; s=arc-20160816;
        b=FneDwXZ7Pw3bM6Rl6pOZiQvy3evs+0s6GXLkf0MQYT0CgMG1jYUoWC28rL6Z10Gm3q
         LBQAiTw/IbTVsFRUWlxz8Ck/g+wTas9uRjVNMpwvwRliB9nVnyECGE+OAUHWRugSS2ai
         ChmjMJaFPUtqxhyS3yzDfxlQShensvwqyhxrJ5BU3+PtIDxcSv2ckwAPkIei+kwTz+rb
         QAk6j9EcmR9ZCVl5sjk+zLZ2ZtYsBlyKmc4uIiKdA3owOAYDyfReYXOnAu5QzdjX5F9L
         EhFa14UnNPFhSUima11Phh+wssaMvZTi8MBzeCuyHkF6QTUetGrgl1BKN8GD4dHCyL+9
         ug8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=urdDtkwhQ8RcocUPgwomirjIsdlk4FapY6vU/bU11Wo=;
        b=rUhdVoRRZujV3jBKf8QZ+rlIv1rbVoUXQS0RWrvq1iaKRbRLKAkLVnAsUl3kmEELG8
         ovQG47ql+S0eMjp4OoNpz1y5ydZPUKVH6LtSpk/puXNiVNSwpgG9YccyWZuchhfio92q
         qpeR+JH4+/dlLB2AWvcYiGen7qiKtXh5gu0F1wnF0px6oOfx93TiMLaFS1CQeh4f+3QS
         hEAgGae+pDnO8mLwNUToLuyfxF73yRriCHsnt6ZrTPcL7XVoeHGlQ7wRDoD9pptxFEW1
         Y1+rRcnU4AxfdHgCuAaj1qwHlX90DMre/iNTa+nYEcBbc2pq+qJCGI0Df+QOyq+U2hCl
         ywlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nUf995v4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=urdDtkwhQ8RcocUPgwomirjIsdlk4FapY6vU/bU11Wo=;
        b=oIk1Jof7KRNn5eonA56mK0whqq/5gZm1xl+XTa+p3s+x+uM1S2Mgty3B2gIZ/aE2Ds
         cHGnh9nKVn/8/2feRkKQyTRdgxCFWALnIsVcut9IFvpSmMzcE/tlxwaPniU1Q/BbTE9I
         uqA7Mqb4MOpDz6YL6e05q87iKCeROiP3WlTHtdDbhCswKEANCyC3vJET20QVbr9oCcvq
         2cUSW1zav1+v8IRarfmg/7V4VUgboiucTX0cjZv7TnvYtlz6GqHUwXvuLoRESZeNilJP
         hlaQ7kmy0qhlWT4Lk2RWCwRej/1jxFgk6CfXC72AmOlqBpYalcgoQSfIi481P/cMmg1Y
         cMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=urdDtkwhQ8RcocUPgwomirjIsdlk4FapY6vU/bU11Wo=;
        b=q03iTUuFbT1VQ+OGSElvX7S3sxg+sgBojnAKuKBgq55oAH9eTti9onf46ZHUPnRkhz
         XoPq2UW1wGghRyOXGKmUxWF9Xyx8U3ZErpnLc1JLtGvqnZ4zHzEV9uYsjveF/0yhzST9
         g7NfuyhfrKA96YhfSlT8hn/tKRfI+BHgDnd/6pYym2bQoMJ0w7GlxN/pwu5oUR/8i4JJ
         nsnoC1IpE6unzRzXS/TjKx1vzwddccnKWkfcshClrDNsC3S4dhBdgACtJ9UpNwLlf2Y+
         QmaqjYg8wZVhzzye5iq1mGNoqDzb182yA3E2hpYKc1FED4awQp60aE9ptP/vtYh3sw4n
         9yiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yh450jqSLoUTevWVeXugH3wVUvWAMa0Y4rGyG77++bd0QnWYx
	D9WYSbva4aC9dqMbaW6DK1Q=
X-Google-Smtp-Source: ABdhPJz3V743GXKEOzYkpt3RcK/0rzvm6HPYGH4TLTX3R3QaxBV1IY03oSlq/xElq7AV2SHuSnGcVA==
X-Received: by 2002:ae9:c011:: with SMTP id u17mr5523423qkk.365.1631233080977;
        Thu, 09 Sep 2021 17:18:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4891:: with SMTP id bv17ls1386413qvb.11.gmail; Thu, 09
 Sep 2021 17:18:00 -0700 (PDT)
X-Received: by 2002:a05:6214:592:: with SMTP id bx18mr5934251qvb.26.1631233080431;
        Thu, 09 Sep 2021 17:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631233080; cv=none;
        d=google.com; s=arc-20160816;
        b=LcMv+IFq3fIzWpcojoiK8QSKN6vivsjnRPsVE4/0mQ570M0HzLxSnYktpt4O0OOKiu
         4L90hQz2L5gxEpnE9sjQ1+HRd3dgz3tGwgqpCSVfFXCcZ9HNpoxvMn2UGMg8E4AXcE3X
         q+oHkbWfZeMWl6FHPXgH3mETGqYC2AaVPizDWlL8uW/fawnaxfAEEvM46EC6/4RDfxxa
         PFA1F5TspdxCZ+kR7n3B/v19UqKFzcZcAAwYbeuV1JIA3v3Vz3ZcljQ/0t2GmRqOKLsR
         gGfjSku3x8w24Ji7GQhIZdg/f7rk3HDdlTo7ba5wezWru/xHsLejx+32K4in8FpPjrsP
         ac7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=46D2plkoiH/woE/LLL8enpQpQoGblaT9k9Fy9kIlvKE=;
        b=PZWrMcChR3kDgoJfxMVdKqtvo6b2Khm5hu+Nc0krNxazfvXoWBMsiFzRJNuUmHUdLD
         yLXSHUmpYOVSgQpeUO39mCoePAN+KTvr6GP3EekA7G9oADzDuX9Bsdwnf6ikDmCULzNa
         5ZQx2u3wCeFNOkUhpYzjTQf4o3aa80l6nNJUefaONaHhxjEnZXxy1wA3RWgrDhqOKwCg
         XO4nVQQAz9nWSIORz8waii8LSPWrix1d40CPfjRHTvgVmtVgAOKCWOGR7zABv7sRN4/D
         zdxxcPX/tZ+vxYprSV+svfn4b78kRh/UQNTH+NR5Y1tao1eejDN1eyPeYnJaNZZV/fMm
         Cq5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nUf995v4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q27si284542qtl.0.2021.09.09.17.18.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 17:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D250611C8;
	Fri, 10 Sep 2021 00:17:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Alexander Lobakin <alobakin@pm.me>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.14 87/99] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
Date: Thu,  9 Sep 2021 20:15:46 -0400
Message-Id: <20210910001558.173296-87-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910001558.173296-1-sashal@kernel.org>
References: <20210910001558.173296-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nUf995v4;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit 850ded46c64299f04d15e39caaba21963fb966f8 ]

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
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Makefile.build    | 27 ++++++++++++++++++++++++++-
 scripts/Makefile.lib      |  7 +++++++
 scripts/Makefile.modfinal | 21 ++-------------------
 scripts/Makefile.modpost  | 22 +++-------------------
 scripts/gen_autoksyms.sh  | 12 ------------
 5 files changed, 38 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 02197cb8e3a7..ea549579bfb7 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -88,6 +88,10 @@ endif
 
 targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
 
+ifdef CONFIG_LTO_CLANG
+targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
+endif
+
 ifdef need-modorder
 targets-for-modules += $(obj)/modules.order
 endif
@@ -271,12 +275,33 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
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
+		--whole-archive $(filter-out FORCE,$^)
+
+ifdef CONFIG_STACK_VALIDATION
+# objtool was skipped for LLVM bitcode, run it now that we have compiled
+# modules into native code
+cmd_cc_lto_link_modules += ;						\
+	$(objtree)/tools/objtool/objtool $(objtool_args) --module $@
+endif
+
+$(obj)/%.lto.o: $(obj)/%.o FORCE
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
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210910001558.173296-87-sashal%40kernel.org.
