Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTXXZWJQMGQEBKOZUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CC751B8BA
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:04 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id l5-20020a170902ec0500b0015cf1cfa4eesf1886640pld.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735503; cv=pass;
        d=google.com; s=arc-20160816;
        b=rGVrmaZBrsLTYPORg4k1W4icBBCwZhC+zGwZA2fF56IjDKhkcrn4bhzPJR3uxkWlBZ
         BzZ94CmA7GHQaYCfyFq+/pW2zZe5Rxh+WNqRHJ5gr9UPxWJex6m654LpyZ6/i5zqCRH0
         fXThQwuQu46OGo8k69WCrc86MzBGG6aBkrQShdjmXTrJ+ARnz+Rj88Ih0CZluIx///nJ
         0HJwx2PHCVDs4RS79NEHU3V1KWZ/TMZVynhfaWA/V/yz+9h3H4fX9gNddjvWVBcJVp2o
         Mqvtt+IdKQ6IycWGiLOjwK3i5/xrtogIa8CaQ+hdqqrgwJXgqI1Y7/2mdeF6HvjvaweA
         ofkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=NFTRaArWWpRw2gy3naEoyYhLg3E7p8PNRyPOtR+DgpU=;
        b=XwVkcMq9wv8ct2/VAndJlDHZfb1quI4m804JxYBN2bjDJhMaSTOkP3US4QiU5M4Zrb
         F0ar8YmDfgXORUHs+ANCfHJp1wL6iyhlbaxGo9diRo2VJsyanlWT2pKHERAbIg66gOC7
         739vudpwX/Vhdp8syM6HcfaQovIuffAZVqP7vQTWJKEnV0NNp7+Lmy6g4Wg698px9vXl
         KGMRIGMGnvNUNXb7mGnuMaMZW845qfOV0sclGlYwi3XVIyJa5oGJHAzaW/1QazLHHdU1
         4nzJT5I77Smzfu4GbjM1QCHeRW/tO5ivP6Lt20GhQ5EVdTZOFfBbjseMezrwSVqpYKCg
         fg1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sXrF0HyL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NFTRaArWWpRw2gy3naEoyYhLg3E7p8PNRyPOtR+DgpU=;
        b=s82bAevtEmBa+ltd+nb/gtY6flbrKISs2GbA8HJU8lU7Wh7glWZ3qRVq+wxdFHb3w+
         LdFOVswshRc+PDy/j/RuX2kTJ3XtPfzKUGEHj6uMv9c/x4uYjOFI3DdPoae1EnPoLBmr
         tC4HXZjwq2tqFOaYzP35x7mEEKvkacGw4jHlrP0bYShZFaR9DUPbO4cKracQXkmW4RQd
         N+9zq9OKKoN+Vg/1PEsvCmG5Os3aoZ9/swFoIyR2zdGR4/8nNMdcmCDKjJO/4+yr1aeT
         0Fb7x/gf4/1Z5wICbEF6qL3SLV3ZZsgkfbNuJ7YZJLB7PF7YAdJnk0tG5rajkpphFI1+
         xoBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NFTRaArWWpRw2gy3naEoyYhLg3E7p8PNRyPOtR+DgpU=;
        b=SUmjGck9cbPIilXrqejvh4ATLCg8PcWu4Rm7St0PPYtqExUw55w0sLh+9pb55y6pk5
         St1pq4ZrXioJFOwHOANdLgH16JQMdJJvDywxKBoiTulMuj/3dRTlCxEX8o07e8Gse0Ej
         0ZWGYTsEC3baNy9mVgLCJLaHr2kUWoWkyB6kHXeUlMBvqS4P2G1KcL80Lz5FD8VV54AF
         oNsEors66DEb3i3K6UmueHM/Q0qR+BiqR3wga7xJgs7cS2kd6rPMv+uP48024OM43Fw8
         tgo5xejoJaoc39t9TR6hKpPgsUqYyefe8X1DCEV1qnHG9KmBjhoIyn/LZOQ/0kNCOa5I
         U49Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KgWsOyYbJMRuMqQhOAs1Dg+o4ziQ05d9vTaVGxwl/9otiEPOT
	0vqmBMPOfuwGHwCpyjrHVkY=
X-Google-Smtp-Source: ABdhPJwwnNs4gaNGsEXUpid1Osv/bVFxVH5LDV/SeNriVpynE6tg3kOHUZNY0GY3M34Xr1YiKXwtBw==
X-Received: by 2002:a17:90b:3849:b0:1dc:b686:34e2 with SMTP id nl9-20020a17090b384900b001dcb68634e2mr3551348pjb.164.1651735502920;
        Thu, 05 May 2022 00:25:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8a81:b0:15e:a8a0:2a7c with SMTP id
 p1-20020a1709028a8100b0015ea8a02a7cls2827289plo.3.gmail; Thu, 05 May 2022
 00:25:02 -0700 (PDT)
X-Received: by 2002:a17:902:7686:b0:156:47a4:fc8f with SMTP id m6-20020a170902768600b0015647a4fc8fmr26499420pll.98.1651735502248;
        Thu, 05 May 2022 00:25:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735502; cv=none;
        d=google.com; s=arc-20160816;
        b=v2Ow+0j18vMl1XDGMdPpoiY6D5ehHnJURL87PXAWmm3IhQso39Rh4UHrGSLeYj35Uw
         j5eI9lPAKkEV4nF5uMk16I2DtO4XMXoillnc1isMuVN9nngwDoLX1xxVlVmNAiL1/Jg9
         X8cPf8PAyaEsWK6co04hqgQC3fTFPlUJfKdBA0c5eve/t78mWKDtJLaiUiWzPfRkmn79
         HPlqmDXC/Wlo8gkCaq2469eOo4d4SMQWBk1M4eg9KJDK8p6ZsDTbLTeTvp65aPJ14nEN
         jOZM5r/Z7NLSBgxcKZUvOL8oL2Sb3huwfaWVdQW6+jDTT05VVc2RWGH+CtfrpajkEpqN
         +xdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=eseHbA5mmCxHLt+kP5ER3nifaTbZ92UQuDW3XQ0lhpk=;
        b=Qqyvj5QTfDNpb4t0h2RS4hF7X8AzWta/c1jkSD5wsCXaEB8eEQSJ7Cz13Hx+u9zQb2
         r9h/tRAb3/LKvGZ5+14vUaUxcXfhFQ07MOKSQX/21tLbvAxPOrohQ/XrrBtaa+/DMlRd
         AIZk6n2r+MRCH0XujuOin25rImaMgwkrS4q4rBb9kl4YZU4FY/HtCYJQcGHOZoTvE/ui
         eFOB7B5gPDpMFsi1mEBsFdfSGHL76RlWkYOBjokzo6B+OSq1t0ze+J0MdDAgeMT9bamV
         iZcT/cUF8I/0BimZgENDca4mZvuuAqhwzBkFqHD+3s9Av3MUHBMBMGlC7NtUFrRcPWkn
         xqJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sXrF0HyL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id w23-20020a17090aaf9700b001d9832f7b82si389989pjq.3.2022.05.05.00.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nent019426;
	Thu, 5 May 2022 16:23:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nent019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 11/15] kbuild: do not create *.prelink.o for Clang LTO or IBT
Date: Thu,  5 May 2022 16:22:40 +0900
Message-Id: <20220505072244.1155033-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sXrF0HyL;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

                                    [+objtool]
           $(CC)                      $(LD)                $(LD)
    foo.c --------------------> foo.o -----> foo.prelink.o -----> foo.ko
                           (LLVM bitcode)        (ELF)       |
                                                             |
                                                 foo.mod.o --/

 [2] multi-object module
                                    [+objtool]
           $(CC)         $(AR)        $(LD)                $(LD)
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

           $(CC)+$(LD)[+objtool]           $(LD)
    foo.c ------------------------> foo.o -------> foo.ko
                                    (ELF)    |
                                             |
                                 foo.mod.o --/

 [2] multi-object module

  Previously, $(AR) was used to combine LLVM bitcode into an archive,
  but there was no technical reason to do so.
  This commit just uses $(LD) to combine and convert them into a single
  ELF object.

                          [+objtool]
            $(CC)           $(LD)          $(LD)
    foo1.c -------> foo1.o -------> foo.o -------> foo.ko
                              |     (ELF)    |
    foo2.c -------> foo2.o ---/              |
                (LLVM bitcode)   foo.mod.o --/

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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
index 461998a2ad2b..0436ff94800e 100644
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
+cmd_ld_single = $(if $(is-single-obj-m), ; $(LD) $(ld_flags) -r -o $(tmp-target) $@; mv $(tmp-target) $@)
+endif
+
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
-      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $< $(cmd_objtool)
+      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $< \
+		$(cmd_ld_single) \
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
index be7d8adc5d31..e07542a90fc6 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -1911,10 +1911,6 @@ static char *remove_dot(char *s)
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
@@ -2034,9 +2030,6 @@ static void read_symbols(const char *modname)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-12-masahiroy%40kernel.org.
