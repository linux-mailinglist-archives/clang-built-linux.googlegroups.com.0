Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBOH7XCEQMGQEMGYSVDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFFE3FC9F6
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:01 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id u11-20020a0562141c0b00b0036201580785sf992588qvc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420920; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwMcxMr5dOyrugYxiu4ulRyV8m/mcL8SHa37IvvRALLvxBJ8Wcq0FyjfzhPuHRF7i2
         ETAxSHyXt0MqULojFQ6ThmNRkr+gVebVWgcz+2i/Tkix/67Kfjsr9AqOrmJmooa2Jc9/
         o1ojlIbY54yngSZofTBKffjmheIgRSa9bOPbKV+EYLvhXXs6ns6u31VhtmLnVC3nVYg+
         O32tEuojL9WIpG9eUWgFzzdRD4CMtw8RqbQJTS7ZpaIuHjIMGsdhyer7DL9avtXofGGk
         EQruglj/0HqAZF6eHdcguB6DZxGd/YT+CdWsz/fG1Ere+96Mv5HrQ06gdDYJ9kB0W+KV
         nnUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UQsCDz5pT3Nie9G8ZVXoUNF/rqdf1rkoHii8E7t1UQM=;
        b=0RO7k60Ha+s2c1KYn0R27E10tWbE7Opdrzlx2CLLfcwf88UUQ9nzeeEsXiCXcrqGBo
         fi5IlvhHiGef4mkQQ+PMTWOPJx2PhvMbycBInPewX70wQz7ZQ54ZFZ8xiAiVMu2gSZWp
         873w+v5N0OhnPJNEYOvx4QP4YTVLvi/O04mQm/33+1ExCpLn43FLq4jZZmtnpDwblxFE
         lxdbvVZL6far61ZRMpyk5IDvUL7VW+psqwRMZpOWcDfZTmJmvlN+P1putJeegcwOxuRd
         wUYPa84THsDcoaCc5px4MtPrnP78Y9Kf4brGgaujIxqt64wF0DgqtNSRd9sA6ajysvnM
         a5vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQsCDz5pT3Nie9G8ZVXoUNF/rqdf1rkoHii8E7t1UQM=;
        b=TwRc+u46jmbC0YDCUfML3hTigZIQWPRZaYqisJkQHWXzFtczVBEc1KWGRsh1BWOJCS
         gEDT8FfBJa5sF8rNkKJnISEnGAwfJyFCOE9Wo9F/siTaJ0TqCP1H8JUgZS2Hq75sTn5w
         tkglvJ0Jsq1orjb5enQ17tZojcqvhtm8uBzF1L3uq2Pmp5PWKTw7/AeLW+ATM0+nQ13Y
         gQkRNzmVc2WYv9joMPdMNBgSRu1wYEhw9+YrRvvfYKxk9owblocmMEmwXotnAItmASJz
         ZX58KmEodJxPSm2EqW6JKH/MspPNi5Ue/x1oss/NbLs8i9zQBueNZt/wP9l14PccyACP
         1kRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQsCDz5pT3Nie9G8ZVXoUNF/rqdf1rkoHii8E7t1UQM=;
        b=X1/wLPA+Qb3jimFl+VXRHEr8F6UhmzMDuISrCP/hHMuw6u5Ftf3rr6+Kno0vriixRP
         eywmhsTQfkJedl1T3n17f/DuZ3ZFMGjjQAmnaBMZSHe616fFYOKP6y8UTZ8ZP4l+SqRU
         PANnO7qbCWhaZFf7KItqgyijfpbYv0PQ5IkUyZXLyEZ66v76e0//lqJ0FP+bcP4o0hVn
         oagRTTwglfnCUAmMDLYqXrqZbgBYZs21XtTloXDtvtIUr/3ouMak+e1PYMsW/IXnV1yE
         OFk1Wh+8AY6MJS6wgzwA1veMCIktzRqyYwq67oaG7aEfV04aWLFAgV99KDCtC1PXyBs3
         /LGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303/T06mtc/5FK/+H7pfHb94u/bnilaCFTeXYdYeqQeAwPfqOYA
	dGqhYa87+gchKPgWyCN97Mc=
X-Google-Smtp-Source: ABdhPJzpJZTTP3CBycbBgJq8u6lsxBLNhL0pltpBlKKvGafDeDbp97hxfWYNPzm5oUr4WU/P2pxdFg==
X-Received: by 2002:a05:620a:1453:: with SMTP id i19mr3462950qkl.40.1630420920418;
        Tue, 31 Aug 2021 07:42:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f90b:: with SMTP id l11ls1006471qkj.0.gmail; Tue, 31 Aug
 2021 07:42:00 -0700 (PDT)
X-Received: by 2002:a37:66cb:: with SMTP id a194mr3393920qkc.345.1630420919958;
        Tue, 31 Aug 2021 07:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420919; cv=none;
        d=google.com; s=arc-20160816;
        b=MHYqaZMSpDUttx35vty/k94xgpfC90bCjZVOqmCBmRnzvtyUSTv1Xl8C9WsVYztDtN
         66FW9g+bB8oJMNjLLxgm0SIxgBh6zc51Vu3JmHlxb6zzTXYjH/I2S63K4E0L1Uoa7/G7
         wKjt3fESgrk44CDU650ijjOtbA7F70kUfK4NOnaNQ+bAw82H4Nsmu+ESY5ml8KfsKRni
         9GlwmlWXu07pL+2PXzsg9T3fq8VYxDS6QAY7wncZBEAawksSf6Xw3cer3ZtDZaDZV6yS
         LPmwvzXHOWZSJpMV3cJzV8isdM+oua4tVwF44aKq9y5BIYZHC4/9YpL2YnP0dRaT+4gP
         O2bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=vN6lNSbzyPAia9nGq8r30E0jC/6++m0EF2JUGF5sxj4=;
        b=UKWiatlQH6s+b81LvOpYcGEKraqKXANvpKiilEU1Uw6XG3UTHgvpPcHRd8EKB4mx98
         1SNpiXRKwyhS9EjRDpD+MolC2dk/Uka5/YrcC0m/cd32GADsOMaj3zkRSAwstVwxCyza
         89qohTEhILtOz0OEG10HdGPKN6BDCqxZGnV5bYMm8d3jtc7bGgyj2kQYIJoOKLQMWCgn
         0m9ETS++erhXVgGFgn86BnFLMbL1Rrl4qGAfctdr7/KYyNd6ote341f5CVRF1BY1Lscs
         HzfEVLpwxcjEcFS9evAXzdHe4zTHCLYK8nQQnMEiv5LYKn01mc/sbjaweP0oKVZM9DS+
         Mm3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id m8si200494qtn.5.2021.08.31.07.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="216637145"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="216637145"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="541035021"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2021 07:41:53 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfR002209;
	Tue, 31 Aug 2021 15:41:50 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v6 kspp-next 01/22] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
Date: Tue, 31 Aug 2021 16:40:53 +0200
Message-Id: <20210831144114.154-2-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-2-alexandr.lobakin%40intel.com.
