Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCFL4CJQMGQE25EXSXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCB351EF1D
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:01 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id h17-20020a056602155100b0065aa0081429sf8694603iow.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037000; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSnbRxMV3+/l2+Ssl1lQeGroardL7mHPpSd96h0HFbD9OId3lOqMyn1Y93bXcU97NU
         /29eIAVHzhdm3DkFE8rg64dJZMiKUs7mZ76EI7tRTw022sTaIVJ3Ekh7YDunNeQlNvx1
         nWdTwEbWIJDlF5Y2tGm+Sg5dPrg9MetR82rgxrBeNmdSEp4EC/p9+j292T454UKd76RP
         5Yjjbjocmfh3+9NiBcckO+vgs9O/vf3/HQBJIMmkP7GxZ+iAowq9vqGdFyMAbjf4KOeO
         A739SYDQtmgeD/OvsaVUIj8gffgPl7VYNPurJqFAN6fwwEbi2nw32ToMFOiN/jkCFg0b
         RRFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=gK6rGMq4VaD48Ztr6xN8cE+2K8sQ0BAKxJYYoKTMYhA=;
        b=mg8nY6/AIk156D6st6sHO4uV2pOjkTBKkvLPSfHlqLNrX62fUbzauOtoSJI+XkbOtL
         iblKMEifvsb0Vg9BaX3sbgR0dsINgFh2cXLxym8I+iNzEkNMDMr+72kMyTLZ8WNU+sku
         N8aP/sqIe7+J9aR4s4A6YxBhaOvcDvH6OLA+8Tu5mYSlR/kB6E5e2bdofXSQDCCirPl7
         SioF6DX0BGP7thMbPkcET8euYBjHy7yRG2BWB9rODW481kk9WNkim9GJwiqvXfY4u/ut
         sia3/FvwvOaHVJb7orBQlaTX7YH5pStQ9SiWL9WiESlJQWWP3G/xGNjUqH7mGjML9XzR
         q4aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gMjpBo08;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gK6rGMq4VaD48Ztr6xN8cE+2K8sQ0BAKxJYYoKTMYhA=;
        b=Ickmu6PALPedFQmZPQ0rktudlgc0NQGsUuTP5p23OuwXCie90xLL7ITEu0DJgJUe5u
         81x1LHKuuWZI34YetDkIU8/RpVAlTJ/q0iGJkm0BjLDXKxRD4lQmx1QoeA1V5+L4FZcV
         XFdFJfKJdUdT0IczURJ2aIhLWpF8qu8IIHyFcEHkb1mWfXAyMLvYDcSWv2j1LvAXIbnL
         nNoeIKfkZ93AgaFuzVSUUR/4PRLcRZhg2j+eoURiiW9Q0Nm07H4Eoq8PYmJ7MxIbgYWx
         zwk3DEvjRXl9cJbjOEOLPK2ek5NTGvEaDF8TbB2p/dl12weTj23jlO0XoIG4KJbm5kuH
         SNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gK6rGMq4VaD48Ztr6xN8cE+2K8sQ0BAKxJYYoKTMYhA=;
        b=EpiTaPeVc6hFMjnhmQBEAki8z1jdTKIgy/tVb5jr252HzqlL1OmKt3jBAwh+hvMC+M
         RnigG26ae7z/+Zxr5W3Mw/xaCkiv5eLlaE+hmNDn4bi/q9o3xnC5Fb0/u9C6sJocxn0O
         sz3sTh0GXDZGVFWjQgO5Y892z+oHAwieSl95hfmtT5JqGAjW693QCIE1SEa8PMN+bT9/
         0RKORbGRMDYW5od1aoPFvrEwYmtU1ipf6C+SdabOB7OTi2KJinOEBCVTFVG/GiYn7hvZ
         LIGRqPGKEBhWlpt4SjSTrmKeUpupizwbElCdvgma9wr0SKGgYmqnPqUXGRDupO03iUIO
         FZGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RBkDMhgVB4sqUEkILyDLW557WdERB6IQnv69/VcoUSlrlRTzf
	WcJMQoEblCJwafOYE3Tj/gI=
X-Google-Smtp-Source: ABdhPJwYbdejHwkuppRkW22wRI++/jVwo3eYMiF5DTzvKAO02YzpnJ2Jvkq8w696ScJYftG5wjJCJw==
X-Received: by 2002:a05:6e02:1cac:b0:2cf:55af:2dd9 with SMTP id x12-20020a056e021cac00b002cf55af2dd9mr4922089ill.259.1652037000575;
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3710:b0:32b:ea47:b136 with SMTP id
 k16-20020a056638371000b0032bea47b136ls432677jav.2.gmail; Sun, 08 May 2022
 12:10:00 -0700 (PDT)
X-Received: by 2002:a05:6638:d06:b0:32b:da48:4879 with SMTP id q6-20020a0566380d0600b0032bda484879mr3419079jaj.117.1652037000178;
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037000; cv=none;
        d=google.com; s=arc-20160816;
        b=SwfmSXqTfUgFjPBchl3kCRLAi+5JPKmRwVgLL9EuE63WoV6cqnEQdST1iYcyw2XrkI
         804ZkIImSxHMjn3mQsiDAkyt04ZxtTteF6pUjWfjYsUOlzWeVw+kvPUAhvx4qVgIDfhX
         CFj16mlQEU5gUtgySwv/gMsw3EWbeyhugkuDxuEABX2C4kDlgUVIEhtuGUta4g8sgM1m
         c4JUUgZZuFbL+EXnknYDBt4ABArhGvYWribB8ZGF3ZYv7kwRIy1WQrG6xDuUQraKBzUM
         E7vo9NzOB6jSjRqnaBYBksYqi6Xgml5j1hMzgITXRE2VgLbtmTblhtfYIFH38/6AJqrU
         rVsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=C2arjqjMnqW/2vP8/HANG7RVhUBPKrPzWxX1ZKHXvlo=;
        b=wy/otDM6YooRg/hdkzXGEBKaUiXz2SAv8xG6faRTx88SDgH4PaVz0kgDoCt4S8bMjl
         sh5TMxfKCZX/FtgPHU/xbGqquz/7wLqqhLTXYYofJTSw0ZqpGG36DHHopd3jx8z8FZvL
         /GOd5zASPnpt1N285oII2j+9MkFe/OVPfIXHLc3N3Q2exDBauAS1GnkaQQE5UuSOtcHy
         vToFLQICQ866ekuVIf0KAi6FDUea6QYzYccaw4+/zs1I6vsQsor2Yif4xwEhAgtZupPs
         naPenfJvZePyHrQ2jYo+bMRUGa+YyslNotd8RGaLBLcZzbweEHlfLH5y97ZVE3Gt7PZd
         XX8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gMjpBo08;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id i21-20020a056638381500b0032b603bf16esi1253751jav.2.2022.05.08.12.09.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSW030019;
	Mon, 9 May 2022 04:09:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSW030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 09/14] kbuild: do not create *.prelink.o for Clang LTO or IBT
Date: Mon,  9 May 2022 04:06:26 +0900
Message-Id: <20220508190631.2386038-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gMjpBo08;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

When CONFIG_LTO_CLANG=y, additional intermediate *.prelink.o is created
for each module. Also, objtool is postponed until LLVM bitcode is
converted to ELF.

CONFIG_X86_KERNEL_IBT works in a similar way to postpone objtool until
objects are merged together.

This commit stops generating *.prelink.o, so the build flow will look
the same with/without LTO.

The following figures show how the LTO build currently works, and
how this commit is changing it.

Current build flow
==================

 [1] single-object module

                                      $(LD)
           $(CC)                     +objtool              $(LD)
    foo.c --------------------> foo.o -----> foo.prelink.o -----> foo.ko
                           (LLVM bitcode)        (ELF)       |
                                                             |
                                                 foo.mod.o --/

 [2] multi-object module
                                      $(LD)
           $(CC)         $(AR)       +objtool               $(LD)
    foo1.c -----> foo1.o -----> foo.o -----> foo.prelink.o -----> foo.ko
                           |  (archive)          (ELF)       |
    foo2.c -----> foo2.o --/                                 |
                (LLVM bitcode)                   foo.mod.o --/

  One confusion is foo.o in multi-object module is an archive despite of
  its suffix.

New build flow
==============

 [1] single-object module

  Since there is only one object, we do not need to have the LLVM
  bitcode stage. Use $(CC)+$(LD) to generate an ELF object in one
  build rule. When LTO is disabled, $(LD) is unneeded because $(CC)
  produces an ELF object.

           $(CC)+$(LD)+objtool             $(LD)
    foo.c ------------------------> foo.o -------> foo.ko
                                    (ELF)    |
                                             |
                                 foo.mod.o --/

 [2] multi-object module

  Previously, $(AR) was used to combine LLVM bitcode into an archive,
  but there was no technical reason to do so.
  This commit just uses $(LD) to combine and convert them into a single
  ELF object.

                            $(LD)
            $(CC)          +objtool        $(LD)
    foo1.c -------> foo1.o -------> foo.o -------> foo.ko
                              |     (ELF)    |
    foo2.c -------> foo2.o ---/              |
                (LLVM bitcode)   foo.mod.o --/

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v2)

Changes in v2:
 - replace the chain of $(if ...) with $(and )

 scripts/Kbuild.include    |  4 +++
 scripts/Makefile.build    | 58 ++++++++++++---------------------------
 scripts/Makefile.lib      |  7 -----
 scripts/Makefile.modfinal |  5 ++--
 scripts/Makefile.modpost  |  9 ++----
 scripts/mod/modpost.c     |  7 -----
 6 files changed, 25 insertions(+), 65 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 3514c2149e9d..455a0a6ce12d 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -15,6 +15,10 @@ pound := \#
 # Name of target with a '.' as filename prefix. foo/bar.o => foo/.bar.o
 dot-target = $(dir $@).$(notdir $@)
 
+###
+# Name of target with a '.tmp_' as filename prefix. foo/bar.o => foo/.tmp_bar.o
+tmp-target = $(dir $@).tmp_$(notdir $@)
+
 ###
 # The temporary file to save gcc -MMD generated dependencies must not
 # contain a comma
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 461998a2ad2b..838ea5e83174 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -88,10 +88,6 @@ endif
 targets-for-modules := $(foreach x, o mod $(if $(CONFIG_TRIM_UNUSED_KSYMS), usyms), \
 				$(patsubst %.o, %.$x, $(filter %.o, $(obj-m))))
 
-ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
-targets-for-modules += $(patsubst %.o, %.prelink.o, $(filter %.o, $(obj-m)))
-endif
-
 ifdef need-modorder
 targets-for-modules += $(obj)/modules.order
 endif
@@ -152,8 +148,16 @@ $(obj)/%.ll: $(src)/%.c FORCE
 # The C file is compiled and updated dependency information is generated.
 # (See cmd_cc_o_c + relevant part of rule_cc_o_c)
 
+is-single-obj-m = $(and $(part-of-module),$(filter $@, $(obj-m)),y)
+
+ifdef CONFIG_LTO_CLANG
+cmd_ld_single_m = $(if $(is-single-obj-m), ; $(LD) $(ld_flags) -r -o $(tmp-target) $@; mv $(tmp-target) $@)
+endif
+
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
-      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $< $(cmd_objtool)
+      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $< \
+		$(cmd_ld_single_m) \
+		$(cmd_objtool)
 
 ifdef CONFIG_MODVERSIONS
 # When module versioning is enabled the following steps are executed:
@@ -224,21 +228,16 @@ cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(o
 
 endif # CONFIG_STACK_VALIDATION
 
-ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
-
-# Skip objtool for LLVM bitcode
-$(obj)/%.o: objtool-enabled :=
-
-else
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
 
-$(obj)/%.o: objtool-enabled = $(if $(filter-out y%, \
-	$(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
+is-standard-object = $(if $(filter-out y%, $(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
 
-endif
+delay-objtool := $(or $(CONFIG_LTO_CLANG),$(CONFIG_X86_KERNEL_IBT))
+
+$(obj)/%.o: objtool-enabled = $(if $(is-standard-object),$(if $(delay-objtool),$(is-single-obj-m),y))
 
 ifdef CONFIG_TRIM_UNUSED_KSYMS
 cmd_gen_ksymdeps = \
@@ -267,24 +266,6 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
 	$(call if_changed_rule,cc_o_c)
 	$(call cmd,force_checksrc)
 
-ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
-# Module .o files may contain LLVM bitcode, compile them into native code
-# before ELF processing
-quiet_cmd_cc_prelink_modules = LD [M]  $@
-      cmd_cc_prelink_modules =						\
-	$(LD) $(ld_flags) -r -o $@					\
-		--whole-archive $(filter-out FORCE,$^)			\
-		$(cmd_objtool)
-
-# objtool was skipped for LLVM bitcode, run it now that we have compiled
-# modules into native code
-$(obj)/%.prelink.o: objtool-enabled = y
-$(obj)/%.prelink.o: part-of-module := y
-
-$(obj)/%.prelink.o: $(obj)/%.o FORCE
-	$(call if_changed,cc_prelink_modules)
-endif
-
 cmd_mod = echo $(addprefix $(obj)/, $(call real-search, $*.o, .o, -objs -y -m)) | \
 	$(AWK) -v RS='( |\n)' '!x[$$0]++' > $@
 
@@ -294,7 +275,7 @@ $(obj)/%.mod: FORCE
 # List module undefined symbols
 cmd_undefined_syms = $(NM) $< | sed -n 's/^  *U //p' > $@
 
-$(obj)/%.usyms: $(obj)/%$(mod-prelink-ext).o FORCE
+$(obj)/%.usyms: $(obj)/%.o FORCE
 	$(call if_changed,undefined_syms)
 
 quiet_cmd_cc_lst_c = MKLST   $@
@@ -416,16 +397,11 @@ $(obj)/modules.order: $(obj-m) FORCE
 $(obj)/lib.a: $(lib-y) FORCE
 	$(call if_changed,ar)
 
-ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
-quiet_cmd_link_multi-m = AR [M]  $@
-cmd_link_multi-m =						\
-	rm -f $@; 						\
-	$(AR) cDPrsT $@ @$(patsubst %.o,%.mod,$@)
-else
 quiet_cmd_link_multi-m = LD [M]  $@
-      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ @$(patsubst %.o,%.mod,$@)
-endif
+      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ @$(patsubst %.o,%.mod,$@) $(cmd_objtool)
 
+$(multi-obj-m): objtool-enabled := $(delay-objtool)
+$(multi-obj-m): part-of-module := y
 $(multi-obj-m): %.o: %.mod FORCE
 	$(call if_changed,link_multi-m)
 $(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0453a1904646..f75138385449 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -225,13 +225,6 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
-ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
-# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
-# need to run LTO to compile them into native code (.lto.o) before further
-# processing.
-mod-prelink-ext := .prelink
-endif
-
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 7f39599e9fae..35100e981f4a 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags and mod-prelink-ext
+# for c_flags
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -54,9 +54,8 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
 	$(cmd);                                                              \
 	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
 
-
 # Re-generate module BTFs if either module's .ko or vmlinux changed
-$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
+$(modules): %.ko: %.o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
 	+$(call if_changed_except,ld_ko_o,vmlinux)
 ifdef CONFIG_DEBUG_INFO_BTF_MODULES
 	+$(if $(newer-prereqs),$(call cmd,btf_ko))
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 48585c4d04ad..f2ce411acd59 100644
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
@@ -118,8 +115,6 @@ $(input-symdump):
 	@echo >&2 '         Modules may not have dependencies or modversions.'
 	@echo >&2 '         You may get many unresolved symbol warnings.'
 
-modules := $(sort $(shell cat $(MODORDER)))
-
 # KBUILD_MODPOST_WARN can be set to avoid error out in case of undefined symbols
 ifneq ($(KBUILD_MODPOST_WARN)$(filter-out $(existing-input-symdump), $(input-symdump)),)
 MODPOST += -w
@@ -128,9 +123,9 @@ endif
 # Read out modules.order to pass in modpost.
 # Otherwise, allmodconfig would fail with "Argument list too long".
 quiet_cmd_modpost = MODPOST $@
-      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
+      cmd_modpost = sed 's/ko$$/o/' $< | $(MODPOST) -T -
 
-$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
+$(output-symdump): $(MODORDER) $(input-symdump) FORCE
 	$(call if_changed,modpost)
 
 targets += $(output-symdump)
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index b46653d46e3d..018527d96680 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -716,10 +716,6 @@ static char *remove_dot(char *s)
 		size_t m = strspn(s + n + 1, "0123456789");
 		if (m && (s[n + m] == '.' || s[n + m] == 0))
 			s[n] = 0;
-
-		/* strip trailing .prelink */
-		if (strends(s, ".prelink"))
-			s[strlen(s) - 8] = '\0';
 	}
 	return s;
 }
@@ -839,9 +835,6 @@ static void read_symbols(const char *modname)
 		/* strip trailing .o */
 		tmp = NOFAIL(strdup(modname));
 		tmp[strlen(tmp) - 2] = '\0';
-		/* strip trailing .prelink */
-		if (strends(tmp, ".prelink"))
-			tmp[strlen(tmp) - 8] = '\0';
 		mod = new_module(tmp);
 		free(tmp);
 	}
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-10-masahiroy%40kernel.org.
