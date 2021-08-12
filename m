Return-Path: <clang-built-linux+bncBC2ORX645YPRBKVN22EAMGQEXQ5XAJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6E73EACC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:46:19 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id b24-20020a4ac2980000b0290269ebe9b797sf2651739ooq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 14:46:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628804779; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgB+SL3M7GdwQw1qvAAKqniqVwOnwClgaMmUVWGc0tCYP4gaNppgEIL4s+1KYWa1XF
         4AUHqi95bJ8p+LqlrG1dcJim986S6tljTkp+OnFwX82CVz+VJrjTx90FBDyxpkWRouUf
         on97J9WwBcXvPT+HWPGnpAyWoycblFNFmsC5cha8CH2IgMV+ea/tkA/7RTAXuSI16UVx
         pCKy3wYi0CZhpc6x2S5Xpl+y+6v2AiUlIalubRP5kMBQsx4OmBdXIyTWoBNqjUrSLywX
         wiXeqJCMdTytZawRjFEbLQqRdyUUN8JIeH7Hh9TzmToDekW9A6x9Ov0hsUFoyE47uTk/
         IRfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ZlQtsinz2MWfiVsnI8Ko2n07TppMtI1u62ct6agQJFA=;
        b=iH0lMCJpTO8QaeL0nuMBxaLIi9hynR8XoB7dp+4UYPMp4k87kLoDn6nVk5kS0Qflgm
         3FMaFz3jj8bqaUlPzH/Du5kjOjppRoJ/A7pFn0oABZFD28XOTYq+R7W939mAFLlP+AwJ
         G70ZFrQN1+FHE660ZjsdL8aNbOEzjAJU4f6KYl/NxuMPh3Y3B8KvMqYYSNqC9RbCcwAK
         Egx8kPXOcfnqxIQYHP+U3tjuO3kAQznexeuQPf01kKorjepThdjYd6jfA+tPp7btIsuT
         gi7oiYnEdpaiIV+7+840Ndy49lip7+Tg5p/XYN2Pwhj7VV9wxYJqzUbUuSXEwkqnuNHW
         n3iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M1L7KG5/";
       spf=pass (google.com: domain of 3qzyvyqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qZYVYQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZlQtsinz2MWfiVsnI8Ko2n07TppMtI1u62ct6agQJFA=;
        b=lXtKpw5KE5h9kvZvzSf5KSR8q//mK2r0H4w/pjnhYmuCMLJSj54YRFInMoVdCCghhn
         nHnBmEOygsCdOx369y6BPFdIiT1VcJDYTlIo0lniE9XFM0XtqNFAQd6x27jvCNnDs6Al
         23f8yH95JPE3/7eDFbDaVdEq54Xd9V1x8I9i83omjxMPtkPlJFEJNUtpxgsj6l6ZFBWr
         q0HadDf4y0LJB3XhWWOvyiiokzhpCqj812GYdxKQeQ5ZRYj3d/7QU/qGMttV87Nwa9kk
         lA8v2Oc9GBSH2+4l11J2xLiYXem8JVWAyotrlXRBDwN8tA+N21yGv3lVkXX7PgnrhVJI
         iiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZlQtsinz2MWfiVsnI8Ko2n07TppMtI1u62ct6agQJFA=;
        b=uWXyZwsoX4nXu181Wbfzs3naBPYX2dKSKacp3jBwN9LkHiRe3wUeqzxVc8iUyVH07I
         RRDPsyBYtaHI6cpzUwei1UIsSaA7sw4Y5GGJKZkGzCSHHq6Sue0mi/29thb60f2LTsQe
         txOX+81naHpU/28fmLF2pz2u5ZmNUJ8QEkLenzLIqLiNJaItvDxz7CDOTiTe6hQR0hkl
         9p2Bvc/goI9a6AINfvqs5Tv2DqLcf26uM81n/WqmkQQb8VwN2uvLtpIVcxcluW36glnM
         kfyF9RARX7wJiVV2ZVJEDFLsKJIQ6qigxnIr2A/qxScXyycmsLWj0lBqhFrJQz8/Kj/j
         Nucw==
X-Gm-Message-State: AOAM531r+kYh5Z97Q/SMl33CY+dodfXn85Ovdl/1l/qrlzGbfvZFRY+C
	Y0X6u2AnEXU7c+495XydGO4=
X-Google-Smtp-Source: ABdhPJzCMzsAo0Rx697/41lX0cizaRl0TBV/6YSmC+nRnIf5QgZddwW/zBjq5FBTJv+h8zjSo9DT6w==
X-Received: by 2002:a05:6808:1494:: with SMTP id e20mr4953725oiw.111.1628804778883;
        Thu, 12 Aug 2021 14:46:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:188:: with SMTP id q8ls1582449ota.7.gmail; Thu, 12
 Aug 2021 14:46:18 -0700 (PDT)
X-Received: by 2002:a9d:2903:: with SMTP id d3mr4987117otb.117.1628804778448;
        Thu, 12 Aug 2021 14:46:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628804778; cv=none;
        d=google.com; s=arc-20160816;
        b=MQn4pfMYt1Kv2mG9zO+DGY3ESAcuMNXJkxRuUGzOm/eOR/Op2XLZNqD9gTwoLInR0v
         pGn804g1+QNz9Af1v2S5g882J30T2sMXv8lBQbD4gx9ZfMa4NsAbp2iqMqzExlXynlwF
         x80mfmiMiqQ4M+riYijcQrw40oscJIyHd4Cek1PiS8KGUrDStc1bUm/NRUkoE7A+RFr+
         Cc5j3byPci4vYMecRBjQeUcK4UGPtkCIDQKbo2jBgDxyz6qnvp5IWjTVqJQEU7VohATv
         9SOj5bILk/b5rHC2+fRNMosVk5LsRQSwYG6pzzt7Yc5l62eEKDJKr99dLeCEAjzn3gXW
         roQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=sjTPZGTvZKiaOAM86brwyuK7yAS2+708sFuV4hc9PT8=;
        b=j7d8wcdLvhUqgR/7NzS9jPANA1aq7moy+ss6+vDD6ZSs8udMWXDWHqEUeE5i9uF5dw
         qnFXurTmBt+hUPSOWAVrOQjZpe/Oe8GVbaV9s8EPpfoL/HNZdjihqTTfRk2lxpFXqhiV
         HbysOcON+LhoaQwNQIufFYcCNheXaltziPWfKzju9CXRnvOW2BCDYMP501OZIEA5P9FU
         RsoTIOrtuEj8p5C2IWCUYBepCXkSvA2S6y9/XRkYhB7yBewCsUvHTIQEeeivgN44ubzZ
         tnlgyD8CsJKsJjuGQYEbEQnpFOaJjoLaY7ikLHMi2svmcMWzlQPQTyu1GUZQDGUWAn6l
         mXOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M1L7KG5/";
       spf=pass (google.com: domain of 3qzyvyqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qZYVYQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id d16si285781otu.4.2021.08.12.14.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 14:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qzyvyqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id p123-20020a378d810000b02903ad5730c883so4462433qkd.22
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 14:46:18 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e70b:1371:bfbf:9b2c])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b450:: with SMTP id
 e16mr6056860qvf.25.1628804777971; Thu, 12 Aug 2021 14:46:17 -0700 (PDT)
Date: Thu, 12 Aug 2021 14:46:14 -0700
Message-Id: <20210812214614.1797845-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v3] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
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
 header.i=@google.com header.s=20161025 header.b="M1L7KG5/";       spf=pass
 (google.com: domain of 3qzyvyqwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qZYVYQwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
Changes in v3:
- Added missing FORCE.

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
index 02197cb8e3a7..524701d9896b 100644
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
+		--whole-archive $(filter-out FORCE,$^)
+
+ifdef CONFIG_STACK_VALIDATION
+# objtool was skipped for LLVM bitcode, run it now that we have compiled
+# modules into native code
+cmd_cc_lto_link_modules += ;						\
+	$(objtree)/tools/objtool/objtool $(objtool_args) --module	\
+		$(@:.ko=$(mod-prelink-ext).o)
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

base-commit: f8fbb47c6e86c0b75f8df864db702c3e3f757361
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812214614.1797845-1-samitolvanen%40google.com.
