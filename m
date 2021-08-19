Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQWZ62EAMGQEP7ZUGUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592E3F0FB8
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:43 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 13-20020a05620a06cdb02903d28ef96942sf3021911qky.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334722; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/30L1AIchaoFc4WG0bFn5vKvAh4kyCAxomBuaaLjgofnGIg1WuNZ3Em8XjqYoXG2I
         tNqnneweOyRs4/m1s8CjN4ecmxXLtvzZ4dRZ9UqLCrTih7pRW2QStwNV894bK4V4aAAG
         5Dp36qD91PX3rxEaY44OyBvSS/wR5W+qTtGQWomJxdeCRymHSi1rv3O8Uz6WzzQLxSlQ
         sdeOucmPzmWDa3yx5UF2igvlM3lXbHEupAsbNZbBNmdEASlvsul6DUDZ3jvivrVOeY4Y
         lNX3ZS0bAIn2jhU4DXDgdvxjcmzHf+z5s4CJfzCetrrGJo/5WdNijDE0ojeMoSD7S1l/
         dPJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=PRrY3gySd8RmjHTUDYpMEdgR59uHonVHgxGoSSrYVKY=;
        b=cQuZZ+ehtsyBeCsysMf+6BQIVCdttn2iKGMVatIjKywiUu61xpRpfifGA9FeTpAIH4
         Yb5fuAWzJAoyK3o0Cmbb7T9E5muUXKBloET+KHYl1KW0r47JzFRctngp2gb5NcZ9qAEz
         Pr2sIdqHtO/NxdEVFnmS6/egDvFm0H83u7dylUJxhpagAwobaSkhGcncqqsWJTw8Thy0
         M9xdEEtRtQ6QvnfJOu/b1W7CQRRPIEs/crj+YEpZ/1AQNp694M3vJ5drPzrtCN1gWRro
         S3RtZyephzg/JDwO1LAABa0lGA1ka803qY8mAFaSOjval4ZO5/4f1I4BR1lfhdRML7G8
         ZRNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RGZjPaYI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PRrY3gySd8RmjHTUDYpMEdgR59uHonVHgxGoSSrYVKY=;
        b=UANyMB91LpyeC518M8EMKo5kpX7oAMORA/Sdqiodrw5tIXBwJ+M3PS5curNzBdg0bN
         gEgM+9yFlqLNBo/yWDnlAMTl8bd7p25dxish5CgnwZeaVd4BWbJf+l+MSMnSSRiAhiyt
         HM2p8k8zwNylNRlBY7Gfhl+YgspTEehal+eB1L8F3nmRxTomdv5JOk0dEs1MhqV1UVIb
         q+osDYptWgzf9AB9Y9oXqHCWNtv13GcK7pDDF8r9JHt2+wVin6aVmHHodQLI0PwwYQPt
         yiaB5fH1T2DzaH3OP8xiVFbaIbf2SdyYsx5bBkGhS5MAB5ok7DezN8k+z4ZvFtCLx+rx
         6+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRrY3gySd8RmjHTUDYpMEdgR59uHonVHgxGoSSrYVKY=;
        b=iJQ3wFnwOt8cwXYrpfVbd2h2iyIw1tgG/jT5hscYV0Y3ONuUx5fLybG56z2imMUajx
         Bi8dlApVlY8zni9URThUIYLRARfVHV7IpnZBWE8KEpKunpqjB/buq4/Z6dP8RHQ702ox
         AvbSzze0o4hSoGG2BW9vL9HVe6qiFJ3MuMuOLxVl/u1aeABJdcV8ho54g/tKsTU+YxgC
         51dPbcZcNbqAs13H1SvE1zFSwnS9Wc9Xp9KaAD9F7oinMxW3Lu9X1RZnvMGJ/8IJiXE/
         TeRaVEBVbbWiLob7I3477SlTOPcEn/QSUUzFmEV+N0G14KfH6N1M5drCxvqCpJTfIeWP
         0opQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yQf+aUC1duBEuQbPzlD0AU9q493Qfn/qA0iCkz5MUiiUFOaAD
	5qd+8CY9KZArUyRlDaxJsI0=
X-Google-Smtp-Source: ABdhPJwResUWy7AVpNnypVLVwUg/PEYU+5B0CiSFNhfmR232cvzUm8FHke5VgfWF/lFoD+3pY/X+4g==
X-Received: by 2002:a05:6214:291:: with SMTP id l17mr12138702qvv.50.1629334722288;
        Wed, 18 Aug 2021 17:58:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b204:: with SMTP id x4ls327132qvd.5.gmail; Wed, 18 Aug
 2021 17:58:41 -0700 (PDT)
X-Received: by 2002:a05:6214:5288:: with SMTP id kj8mr11809080qvb.62.1629334721900;
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334721; cv=none;
        d=google.com; s=arc-20160816;
        b=m7ZX3SwcYyGA3p7cebB8IN+c3lMpf9ojRnGOGw4jKQmWqWS01qhcRP0gsKOLrkolrv
         H1YveODVqrVEjQRl/J6ru6kwunvvDgZ/5xbxpjMF2oP6SR68505xqdhXRJBO/kYsM8Aw
         N9X9RT4K/nmG2ywfPa+4FqY/+3yL8OEP+HS0+EhEn9N1gzyP/ef5BUknmV8ZjfGQvsdx
         NJPeINFs5qj5W7XASPd53jWpMiuERQiaOZ1fy7R9VnTKuxVASQS59G20SkgdjeMZG4DL
         XF+FakEvt2Z+q0tRDMfK8bz8mUoA3gyaCa/MqTORUaVzD8MueXJZ3DROOB+Ryrh13x5V
         wTBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=HwNkxravsiti3cPH3/pynEvNeo61f93j4rWZZTlauzs=;
        b=jSb9ZtUuz1SWbrl5GdO1+6PqrwxjH2MPZPQHmFWUhY/R1LmGXPsG8XKDh77HdEAgau
         GXMXDY9zljhgHnw2Tbj1sdEiMz0XSzsYxjmc3Oe6JCdNX60VCt+hUCO3X/h+MYWcUk0g
         yoF/gFQ47ZEwclUvw7z5LdTKoHV7iMx2COtNXcx0eTNYK0UofLaifpBlcQOFNLlZDhpA
         sTW/LdLS1KgM8/FwXyQh2jYKCcjCzNGgOtXKfi4AMFwiaUf79OD2fyvhcX48AFEzzUeC
         wYzpIw1L7RIc9D8UF18N/wQUz/MiKpZTPP4aavBxaFHI4F3Dhi/4sFoHdd/dSZxnZZBm
         BOlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RGZjPaYI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id i4si124473qkg.7.2021.08.18.17.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4t017219;
	Thu, 19 Aug 2021 09:57:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4t017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 10/13] kbuild: build modules in the same way with/without Clang LTO
Date: Thu, 19 Aug 2021 09:57:41 +0900
Message-Id: <20210819005744.644908-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819005744.644908-1-masahiroy@kernel.org>
References: <20210819005744.644908-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RGZjPaYI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

When Clang LTO is enabled, additional intermediate files *.lto.o are
created because LLVM bitcode must be converted to ELF before modpost.

For non-LTO builds:

         $(LD)             $(LD)
  objects ---> <modname>.o -----> <modname>.ko
                             |
          <modname>.mod.o ---/

For Clang LTO builds:

         $(AR)            $(LD)                 $(LD)
  objects ---> <modname>.o ---> <modname>.lto.o -----> <modname>.ko
                                                  |
                                <modname>.mod.o --/

Since the Clang LTO introduction, ugly CONFIG_LTO_CLANG conditionals
are sprinkled everywhere in the kbuild code.

Another confusion for Clang LTO builds is, <modname>.o is an archive
that contains LLVM bitcode files. The suffix should have been .a
instead of .o

To clean up the code, unify the build process of modules, as follows:

         $(AR)            $(LD)                     $(LD)
  objects ---> <modname>.a ---> <modname>.prelink.o -----> <modname>.ko
                                                      |
                                <modname>.mod.o ------/

Here, 'objects' are either ELF or LLVM bitcode. <modname>.a is an archive,
<modname>.prelink.o is ELF.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build    | 103 ++++++++++++++++++--------------------
 scripts/Makefile.lib      |  11 ++--
 scripts/Makefile.modfinal |   4 +-
 scripts/Makefile.modpost  |   7 +--
 scripts/mod/modpost.c     |   6 +--
 scripts/mod/sumversion.c  |   6 +--
 6 files changed, 61 insertions(+), 76 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 37d6f6da34d6..957addea830b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -88,9 +88,7 @@ endif
 
 targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
 
-ifdef CONFIG_LTO_CLANG
-targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
-endif
+targets-for-modules += $(patsubst %.o, %.prelink.o, $(filter %.o, $(obj-m)))
 
 ifdef need-modorder
 targets-for-modules += $(obj)/modules.order
@@ -282,33 +280,12 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
 	$(call if_changed_rule,cc_o_c)
 	$(call cmd,force_checksrc)
 
-ifdef CONFIG_LTO_CLANG
-# Module .o files may contain LLVM bitcode, compile them into native code
-# before ELF processing
-quiet_cmd_cc_lto_link_modules = LTO [M] $@
-cmd_cc_lto_link_modules =						\
-	$(LD) $(ld_flags) -r -o $@					\
-		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
-			echo -T $(@:.lto.o=.o.symversions))		\
-		--whole-archive $(filter-out FORCE,$^)
-
-ifdef CONFIG_STACK_VALIDATION
-# objtool was skipped for LLVM bitcode, run it now that we have compiled
-# modules into native code
-cmd_cc_lto_link_modules += ;						\
-	$(objtree)/tools/objtool/objtool $(objtool_args) --module $@
-endif
-
-$(obj)/%.lto.o: $(obj)/%.o FORCE
-	$(call if_changed,cc_lto_link_modules)
-endif
-
 cmd_mod = { \
 	echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
 	$(undefined_syms) echo; \
 	} > $@
 
-$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
+$(obj)/%.mod: $(obj)/%.prelink.o FORCE
 	$(call if_changed,mod)
 
 quiet_cmd_cc_lst_c = MKLST   $@
@@ -412,17 +389,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
 $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
 $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
 
-# combine symversions for later processing
-ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
-      cmd_update_lto_symversions =					\
-	rm -f $@.symversions						\
-	$(foreach n, $(filter-out FORCE,$^),				\
-		$(if $(shell test -s $(n).symversions && echo y),	\
-			; cat $(n).symversions >> $@.symversions))
-else
-      cmd_update_lto_symversions = echo >/dev/null
-endif
-
 #
 # Rule to compile a set of .o files into one .a file (without symbol table)
 #
@@ -442,10 +408,10 @@ $(obj)/built-in.a: $(real-obj-y) FORCE
 # modules.order unless contained modules are updated.
 
 cmd_modules_order = { $(foreach m, $(real-prereqs), \
-	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.o,%.ko,$m));) :; } \
+	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.a,%.ko,$m));) :; } \
 	| $(AWK) '!x[$$0]++' - > $@
 
-$(obj)/modules.order: $(obj-m) FORCE
+$(obj)/modules.order: $(modules) FORCE
 	$(call if_changed,modules_order)
 
 #
@@ -454,26 +420,55 @@ $(obj)/modules.order: $(obj-m) FORCE
 $(obj)/lib.a: $(lib-y) FORCE
 	$(call if_changed,ar)
 
-# NOTE:
-# Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
-# module is turned into a multi object module, $^ will contain header file
-# dependencies recorded in the .*.cmd file.
+#
+# Rule to prelink modules
+#
+
+ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
+
+cmd_merge_symver =					\
+	rm -f $@;					\
+	touch $@;					\
+	for o in $$($(AR) t $<); do			\
+		if [ -s $${o}.symversions ]; then	\
+			cat $${o}.symversions >> $@;	\
+		fi;					\
+	done
+
+$(obj)/%.prelink.symversions: $(obj)/%.a FORCE
+	$(call if_changed,merge_symver)
+
+$(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
+module-symver = $(obj)/%.prelink.symversions
+
+endif
+
+quiet_cmd_ld_o_a = LD [M]  $@
+      cmd_ld_o_a = $(LD) $(ld_flags) -r -o $@ --whole-archive $<
+
+$(obj)/%.prelink.o: $(obj)/%.a $(module-symver) FORCE
+	$(call if_changed,ld_o_a)
+
 ifdef CONFIG_LTO_CLANG
-quiet_cmd_link_multi-m = AR [M]  $@
-cmd_link_multi-m =						\
-	$(cmd_update_lto_symversions);				\
-	rm -f $@; 						\
-	$(AR) cDPrsT $@ $(filter %.o,$^)
-else
-quiet_cmd_link_multi-m = LD [M]  $@
-      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
+ifdef CONFIG_STACK_VALIDATION
+# objtool was skipped for LLVM bitcode, run it now that we have compiled
+# modules into native code
+cmd_ld_o_a += ; $(objtool) $(objtool_args) --module $@
 endif
+endif
+
+quiet_cmd_ar_module = AR [M]  $@
+      cmd_ar_module = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
+
+$(modules-single): %.a: %.o FORCE
+	$(call if_changed,ar_module)
+
+$(modules-multi): FORCE
+	$(call if_changed,ar_module)
+$(call multi_depend, $(modules-multi), .a, -objs -y -m)
 
-$(multi-obj-m): FORCE
-	$(call if_changed,link_multi-m)
-$(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
+targets += $(modules-single) $(modules-multi)
 
-targets += $(multi-obj-m)
 targets := $(filter-out $(PHONY), $(targets))
 
 # Add intermediate targets:
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 34c4c11c4bc1..f604d2d01cad 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -106,6 +106,10 @@ multi-dtb-y	:= $(addprefix $(obj)/, $(multi-dtb-y))
 real-dtb-y	:= $(addprefix $(obj)/, $(real-dtb-y))
 subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
 
+modules		:= $(patsubst %.o, %.a, $(obj-m))
+modules-multi	:= $(patsubst %.o, %.a, $(multi-obj-m))
+modules-single	:= $(filter-out $(modules-multi), $(filter %.a, $(modules)))
+
 # Finds the multi-part object the current object will be linked into.
 # If the object belongs to two or more multi-part objects, list them all.
 modname-multi = $(sort $(foreach m,$(multi-obj-ym),\
@@ -225,13 +229,6 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
-ifeq ($(CONFIG_LTO_CLANG),y)
-# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
-# need to run LTO to compile them into native code (.lto.o) before further
-# processing.
-mod-prelink-ext := .lto
-endif
-
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index ff805777431c..1b6401f53662 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags and mod-prelink-ext
+# for c_flags
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -55,7 +55,7 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
 
 
 # Re-generate module BTFs if either module's .ko or vmlinux changed
-$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
+$(modules): %.ko: %.prelink.o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
 	+$(call if_changed_except,ld_ko_o,vmlinux)
 ifdef CONFIG_DEBUG_INFO_BTF_MODULES
 	+$(if $(newer-prereqs),$(call cmd,btf_ko))
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index eef56d629799..11883b31c615 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -41,9 +41,6 @@ __modpost:
 include include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for mod-prelink-ext
-include $(srctree)/scripts/Makefile.lib
-
 MODPOST = scripts/mod/modpost								\
 	$(if $(CONFIG_MODVERSIONS),-m)							\
 	$(if $(CONFIG_MODULE_SRCVERSION_ALL),-a)					\
@@ -128,9 +125,9 @@ endif
 # Read out modules.order to pass in modpost.
 # Otherwise, allmodconfig would fail with "Argument list too long".
 quiet_cmd_modpost = MODPOST $@
-      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
+      cmd_modpost = sed 's/ko$$/prelink.o/' $< | $(MODPOST) -T -
 
-$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
+$(output-symdump): $(MODORDER) $(input-symdump) $(modules:ko=prelink.o) FORCE
 	$(call if_changed,modpost)
 
 targets += $(output-symdump)
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 270a7df898e2..8c63c52af88d 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -1991,9 +1991,9 @@ static void read_symbols(const char *modname)
 		/* strip trailing .o */
 		tmp = NOFAIL(strdup(modname));
 		tmp[strlen(tmp) - 2] = '\0';
-		/* strip trailing .lto */
-		if (strends(tmp, ".lto"))
-			tmp[strlen(tmp) - 4] = '\0';
+		/* strip trailing .prelink */
+		if (strends(tmp, ".prelink"))
+			tmp[strlen(tmp) - 8] = '\0';
 		mod = new_module(tmp);
 		free(tmp);
 	}
diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
index 760e6baa7eda..8ea0f7b23c63 100644
--- a/scripts/mod/sumversion.c
+++ b/scripts/mod/sumversion.c
@@ -391,14 +391,10 @@ void get_src_version(const char *modname, char sum[], unsigned sumlen)
 	struct md4_ctx md;
 	char *fname;
 	char filelist[PATH_MAX + 1];
-	int postfix_len = 1;
-
-	if (strends(modname, ".lto.o"))
-		postfix_len = 5;
 
 	/* objects for a module are listed in the first line of *.mod file. */
 	snprintf(filelist, sizeof(filelist), "%.*smod",
-		 (int)strlen(modname) - postfix_len, modname);
+		 (int)(strlen(modname) - strlen("prelink.o")), modname);
 
 	buf = read_text_file(filelist);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-11-masahiroy%40kernel.org.
