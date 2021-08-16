Return-Path: <clang-built-linux+bncBC2ORX645YPRBY6R5KEAMGQEI27HAKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8163EDCC8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:05:24 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id o6-20020a056122048600b00286ac0ff45asf380792vkn.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:05:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629137123; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIfjqO9xwazmEh5O44ODzWpuagFT1xqgmZAZxayoj1jYige/N2aU+1V5cWZfTlUklE
         WNyKXfTGaq631dZ1bpyYtKUjEwPJYufSBraTFVe9Z+kgkWmzqvCL8mVrH9ijutE6d/YZ
         BmwGOBhNRYxxk76OI5M5zIV91GMNql/g6CJCL1NHsuTKeRVph9VYE+7viD9QHG5wnJJv
         zgmCRdf3ujMoYRGoPaj/jTUTA7IbaubbnS98TZWKyc+ADooYUba0JL9nhtknTTrwpE8g
         6k+tija+K2aIlavWlvohN+KGouNCG+Xq+ZvXsC7QXRQ907B8f/i3ze11hzecze3Byj/s
         D25A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=44FlcMDnv4RrENOcXrSEtuSWdSOYaHPiiAAjAbSr730=;
        b=OQEqXal1JDYu/ofiNcushrDRenvxiu1z6Ehp3FXS6bZX8uWWJMtR3tnbILr6BWs3q/
         vjK/G3KWPbnGUYF4H+x6tMeQ0RmJlpjhlljWovhlOUf2mEjHLTDj4LwDbOaRuy5PJ5bt
         qggLFRDGrZMNJ2+5/wtrFcg5glduKRX7TCxAYh4lNFUmAOwuxATWZbq+JIXBE4MoMpSj
         37ej+UO0mXkwCa6499DcPA2XECRtl+BZgo/X2fi9FSKSuXnKu4T/VthjwcQiDwS/zMPi
         HEA5xMV5jGxULFE4x1IfVvDQS0JI6zYxGrPUGEOno6PurG6cZbvEb7SnL+g0eVx/zsdg
         mSuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBIC7Krj;
       spf=pass (google.com: domain of 34qgayqwkak0fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=34qgaYQwKAK0fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=44FlcMDnv4RrENOcXrSEtuSWdSOYaHPiiAAjAbSr730=;
        b=sYRdouplDJ5g+DGTc0+tpTMEZn6ZoOIub53OM+lsmdnzXXFEpeSEosNu+gT0pW2DIA
         XZT2ScnGuRFCkQnF6Tsk5Noy0oXIOgNFdpRvlfO0O9FfuJasM0F4HWXzGjAN9PGYn/kM
         6umKhENeacmzPUMr/YjJm3o/HOnTqz1ICcIa/6t0XnK/DyCvQng4MbzlCzEDxqpfU0tY
         SJ4GiYGj0v2rk2LgwVWH5L/mq1qE6yVZ8QNGEroGuA+hviEE0/nNB3Ck4nkfnJuorleC
         Qtkz7O1HqwpCueE1Vr/j4S9FJrYBEvqbkgq4Gcv+mlxebluy3X3RN3MQuc4jAGhvMunw
         MULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=44FlcMDnv4RrENOcXrSEtuSWdSOYaHPiiAAjAbSr730=;
        b=S2Vmxm070UEeBvBl6Tb8O6CzedF0P31YHxiGGaXrmUNA5uLnyIKGxs+qUNuI9Hzxs4
         SArjoUA60qHcNDZQ/1NRSFJ68YbyKwmx/YvyOIUdKbczQXxwk7xZt461qt5hpOaShdww
         +ev6FtCUUSF5lKT20MWfU5q/xN8FBNSMmo2qcZO9qG2lxBZ9zdbM8VLnchkLtlpEWFIw
         XvEIEVXep5tL2KytHN/upEXBeUOkbRMZCGbdctZhJ11x5R/5fwc+GrZakoo6LX4Owp2c
         B1TEvseGOX04AIDN/7XrROrhY+1NVPWqBwKy/r7UaBlKAqDUAyXBhRS0om1FWxYny7a/
         yvsg==
X-Gm-Message-State: AOAM531xW6r2IjVUo35p3+99nVZ/kqC0L64oeHY5HZrZby54rCjhWz1j
	uwa9j/r+0WpwSLqRMZiq4Nw=
X-Google-Smtp-Source: ABdhPJxGbl5Ql3BTmnxZ4FOEEsj/G85O1nw1SIZyX9Db0Rfj6hJwXtamBnbqftVtLdiaDcMO+SgIbg==
X-Received: by 2002:a9f:204e:: with SMTP id 72mr10581174uam.110.1629137123629;
        Mon, 16 Aug 2021 11:05:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a1c4:: with SMTP id k187ls628286vke.8.gmail; Mon, 16 Aug
 2021 11:05:23 -0700 (PDT)
X-Received: by 2002:a1f:ad50:: with SMTP id w77mr10054381vke.24.1629137123099;
        Mon, 16 Aug 2021 11:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629137123; cv=none;
        d=google.com; s=arc-20160816;
        b=DctUbNhZBvgSql/lOvlUO/bLhog1KQzyFHDhgwx+AD/cOit6f3sExrlw5jNaq50vRw
         BWam/UpkWRCUf70qI8HUYAqQqD1OEVqucCqdJJS8crNfsN11uyNr01MBypc5aNLLpcUk
         wClcDoJocv52USRwqmpY/9DQ1BeHMyKtj9lWBKGBZqtMfJDTtL+K/7rqAHbopfcLfXNO
         OE+f7DH+XUA/BcMGmEa1PB93+BKFHeP7Ni6nMadZ4eH/acQ50UCq6xW+B28KBjEb07yu
         b01XEirGkZfVH9CQ0UcFD0vm96bo5jWz2XXJ+KUaz53lcUHsjI1obi8VXzqZvKhmzXKr
         X7Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=WUhrLDawJHutBQtlsVgOUTtq1I0JwrxuJFZxAOpOQh0=;
        b=mMKc7lWdWDIpwjeOjshpDpmHKNciwk92+kB8LJo1BAdvQhXagozmYWgnFIohe+kqm6
         GFphGQayALr2JjNOun5oCU/u8PAqwBNjPtlB9wij9mTa4SyuHzANStXd35gvTqd3UxN/
         rRfjzw+nd/JUNay50VAF8EvZXuBbxoOeqIIx3vj+DwuYMPxf6jQYl7BanWxo19jKWNIh
         tn4OcBkbjNDyJ8jwrF/1T20U5UKG98nB8pP8jN2Fu1h/nelymgwAsMl0bSCbSbyfUOGI
         15bU2ztqc7zWf341X4zUFlBaFUjL2MXNQQ9FEegTnUu08BoGUhf8Ywxhtv3aH457KR5W
         38SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBIC7Krj;
       spf=pass (google.com: domain of 34qgayqwkak0fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=34qgaYQwKAK0fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id z25si16056uae.0.2021.08.16.11.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34qgayqwkak0fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id h10-20020a05620a284a00b003d30e8c8cb5so4415659qkp.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:05:23 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:5676:2fb8:7851:2301])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:892:: with SMTP id
 cz18mr17100881qvb.60.1629137122793; Mon, 16 Aug 2021 11:05:22 -0700 (PDT)
Date: Mon, 16 Aug 2021 11:05:19 -0700
Message-Id: <20210816180519.1021311-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v4] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
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
 header.i=@google.com header.s=20161025 header.b=SBIC7Krj;       spf=pass
 (google.com: domain of 34qgayqwkak0fnzvgbyinaratbbtyr.pbz@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=34qgaYQwKAK0fNZVgbYiNaRaTbbTYR.PbZ@flex--samitolvanen.bounces.google.com;
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
Changes in v4:
- Added .lto.o to targets to actually fix the use of if_changed.
- Replaced an unnecessary mod-prelink-ext with .lto.

Changes in v3:
- Added missing FORCE.

Changes in v2:
- Fixed a couple of typos.
- Fixed objtool arguments for .lto.o to always include --module.

---
 scripts/Makefile.build    | 28 +++++++++++++++++++++++++++-
 scripts/Makefile.lib      |  7 +++++++
 scripts/Makefile.modfinal | 21 ++-------------------
 scripts/Makefile.modpost  | 22 +++-------------------
 scripts/gen_autoksyms.sh  | 12 ------------
 5 files changed, 39 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 02197cb8e3a7..a6f43afd09bb 100644
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
@@ -271,12 +275,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
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
+		$(@:.ko=.lto.o)
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

base-commit: a2824f19e6065a0d3735acd9fe7155b104e7edf5
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816180519.1021311-1-samitolvanen%40google.com.
