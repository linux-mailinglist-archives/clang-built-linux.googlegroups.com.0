Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB65ZW6EQMGQELKUUMOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B47323FC380
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 09:40:44 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id a127-20020a4a4c850000b029028b35f322edsf8357417oob.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:40:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630395643; cv=pass;
        d=google.com; s=arc-20160816;
        b=coNqJpNFElC3Xgsq5RYZv5djBfsvUYRogNJDvcFSYU7aURJ4eMb79MNjgkLttDsXS5
         1ol5eD45PDcT7EDy8Ajo2KACbWMvdGzD+t8ryU0WXT3Dzok04Zaz+OQw7JEv8f+ktpDQ
         B8vH8D86vBXcDkQymwYvlm1mt/B9tlupBxMdpM7mFLDaptkqmn00tbVQQckF1OPQE5tj
         IXwxfLruj7WELmIJtcpWqbV/9ZVDPjuIMNkD1glil/kLYMP8mnl8iUT+7sSZHfLbX7hs
         FCEXJT7h7TpjbePoYSX5OSHZVDQVlbZqMvkmnGrq6so66IXxftubWh0JMxmSiYiZRTVI
         d6mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=pviIBG3jDSz7Pl8pKQ9iJ2gn9MHzR5TQLUgj437qNLA=;
        b=qpOnbzgx7iR2EhhBtWVEmiVeoba13a1ltp7Gs8tdKFtXBZA2J0Th94IR1bif6kJX1D
         o5KpmnekXCGTrTv8AFZ1xFC5MXnll+jGyvAmANLx9l7jwF1cXsUnwhLD6W8MUH0TFRvM
         YYppH6AXUpt9sqbi7uuwe2Moi88TKxA84EXfgfweOoCQ9Ih0inCTmymOkzBqQo8dOXGq
         qq1nLJnHXbgTYp4KADrE8uJdBjsGOpPZJBB47oWGagn1jFtYsqGvK5Hw/MqTfF74tB+K
         2MitoULCvo6p6fPysnB7JyR90Y71l9zxBjlGUx0ZuZii+4DBqPTOUA9JBOx01hkYP8VD
         RX1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Cm2yo3IC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pviIBG3jDSz7Pl8pKQ9iJ2gn9MHzR5TQLUgj437qNLA=;
        b=Zt5psgvjA0bg1BOOtG7qg9xE23HZZF4ZHVmrtbDiG5h9UAY3kQtviH8powvejYJQ9z
         tpAFuJ66zMuWuAr9ly8D+Nq1hZAHwM7sxgAVnIEFmbYQiqtjzb6BZra5m4JaZK+RbKal
         7tJNPHbC56i8B2tklgDCJo3U5nfJK15saHQfvFIhBbzovgPE8XkM+vnOouPRCrcoGd5h
         m9z6BtZTEDG6ufgQS3oFJgt04IhVBELLHNzlBaZNmLIY449yOPMfFSbvzDO2kDlzvuAM
         OuGRVQSilbgqTvvcj1/tFQyklUkXpBGvecSDBvi2fINxmpolNDdDx5SA4Wn1zHpEWHSY
         SHBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pviIBG3jDSz7Pl8pKQ9iJ2gn9MHzR5TQLUgj437qNLA=;
        b=bv9DXiRLualwJN8RDebJnjzNfjs/LXEdEzNH8ew/MCWqaEGNNHbTaH6MHn7qjrxrrM
         mZnEMNiojTsVinSiKlGYjQ24XDiO1ytLyBuJL5GAYDMKJ04PCDERVp+0H9oPtn2v6sNE
         P+HConP5TIZ5Y4OVDOSIsBQTEg5Et6irdRaxI0sM0YIMBR4sGjV0LpNGif5rhOZUQSzP
         DZQl94u4oIK1mfkC/WppwPc1ZSkmxLXg81riTEV9PNLIaHNpLDo1vgSbWf/rMXuXoRgv
         cfEo8F0p+aBl290kUcPfx7/ssuVLB+LeoQZ+1S8R2KNRn6Qr1SnEIfsq0B269WZUADcf
         j5YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53032aV9OLneS1wT4wEp7kDYIG7X8N4vfAt+KFkGe0cBLaC4QtM5
	1sJbW+BAbHxKVapGs+UquAU=
X-Google-Smtp-Source: ABdhPJyRTgNWTjNgr6qVmFPT8kZiCVVwlhTeeV3gl6+88rr4A2a4YtJ6slBg/6Ycx7AllhglVT64/A==
X-Received: by 2002:a54:4d88:: with SMTP id y8mr2188328oix.154.1630395643280;
        Tue, 31 Aug 2021 00:40:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f02:: with SMTP id 2ls3500237oip.8.gmail; Tue, 31 Aug
 2021 00:40:42 -0700 (PDT)
X-Received: by 2002:aca:acd5:: with SMTP id v204mr2291857oie.124.1630395641918;
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630395641; cv=none;
        d=google.com; s=arc-20160816;
        b=H2r2yhHFABKHDQvn/R4rnhq7NmmawbDBQhT7BM6lBAIB6tboKuDJFuetSPhcHjnVSL
         FcnQRVo813/aUUTeek10RqKtXb/iOAhZTmiPNJGPsFW5QjMV7K/SGpKD2ppPbN+5KMaA
         YL/84b9nVf1doZbasgsfGnz+EnWnXKwCH76G8chzbyb6j2pZaZsUkdPTT+KH1JwKdLKy
         IA+tO+Oyb5FlweNgnqp4ACaMJrxszbcpnqoht7MvL3BmnutoGRBfiUjEHySoKPtCqFYZ
         r5szb9NM/oFpUfUIw21S+jbFKLkwCHuVn2KFQI7phFXUIHwbk9PcFdX4eaZBIF3mHsbe
         do/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=HIk7t4k5IvRe1mCW8RsOXOaBbd50uvMHV7MHl9tdi+A=;
        b=Pb86KXqSLfqdNcah597rLSO6/LIiPPaOI93+Vn9aj6/a7iF25hXdCWFaRH8XlosQK/
         3t0A6N0lJBwZcuY2B/V0oSHtPN74AjY6NTxmcg+IBHndwcFUm1tHbR3zHwZE/aekMoD7
         LU369D6KvFiV9tV8v//S/D8cfFj0affj2SzLoZZ6IiSnqxft4l64XLOY1hKNWyDxVbEa
         GMhQqkixFxxIqGFO9RrBUz15Tg0wgVtd9ICMH+PoMa9IWkLTTko+s+AHCxSwzgIXMrwM
         nY1k9QwQTZsg+tBLY18KwLaMyPyRH7rXfJGuSnBQ/YgAcZ3Lf1T1hKlrJ6z3OdkTTvC+
         zZ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Cm2yo3IC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id b26si1148969oti.1.2021.08.31.00.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 00:40:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17V7e8EZ031407;
	Tue, 31 Aug 2021 16:40:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17V7e8EZ031407
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/13] kbuild: build modules in the same way with/without Clang LTO
Date: Tue, 31 Aug 2021 16:39:59 +0900
Message-Id: <20210831074004.3195284-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210831074004.3195284-1-masahiroy@kernel.org>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Cm2yo3IC;       spf=softfail
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

Since the Clang LTO introduction, Kbuild code is complicated due to
CONFIG_LTO_CLANG conditionals sprinkled everywhere.

Another confusion for Clang LTO builds is, <modname>.o is an archive
that contains LLVM bitcode files. The suffix should be .a instead of .o

To clean up the code, unify the build process of modules, as follows:

         $(AR)            $(LD)                     $(LD)
  objects ---> <modname>.a ---> <modname>.prelink.o -----> <modname>.ko
                                                      |
                                <modname>.mod.o ------/

Here, 'objects' are either ELF or LLVM bitcode. <modname>.a is an archive,
<modname>.prelink.o is ELF.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build    | 100 +++++++++++++++++---------------------
 scripts/Makefile.lib      |  11 ++---
 scripts/Makefile.modfinal |   4 +-
 scripts/Makefile.modpost  |   7 +--
 scripts/mod/modpost.c     |   6 +--
 5 files changed, 56 insertions(+), 72 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 3ad1b1227371..cdc09e9080ca 100644
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
@@ -243,9 +241,12 @@ endif # CONFIG_STACK_VALIDATION
 
 ifdef CONFIG_LTO_CLANG
 
-# Skip objtool for LLVM bitcode
+# Skip objtool LLVM bitcode
 $(obj)/%o: objtool-enabled :=
 
+# Run objtool now that we have compiled modules into native code
+$(obj)/%.prelink.o: objtool-enabled := y
+
 else
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
@@ -255,6 +256,8 @@ else
 $(obj)/%o: objtool-enabled = $(if $(filter-out y%, \
 	$(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
 
+$(obj)/%.prelink.o: objtool-enabled :=
+
 endif
 
 ifdef CONFIG_TRIM_UNUSED_KSYMS
@@ -287,32 +290,12 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
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
-		--whole-archive $(filter-out FORCE,$^)			\
-		$(cmd_objtool)
-
-# objtool was skipped for LLVM bitcode, run it now that we have compiled
-# modules into native code
-$(obj)/%.lto.o: objtool-enabled = y
-$(obj)/%.lto.o: part-of-module := y
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
@@ -416,17 +399,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
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
@@ -446,10 +418,10 @@ $(obj)/built-in.a: $(real-obj-y) FORCE
 # modules.order unless contained modules are updated.
 
 cmd_modules_order = { $(foreach m, $(real-prereqs), \
-	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.o,%.ko,$m));) :; } \
+	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.a,%.ko,$m));) :; } \
 	| $(AWK) '!x[$$0]++' - > $@
 
-$(obj)/modules.order: $(obj-m) FORCE
+$(obj)/modules.order: $(modules) FORCE
 	$(call if_changed,modules_order)
 
 #
@@ -458,26 +430,44 @@ $(obj)/modules.order: $(obj-m) FORCE
 $(obj)/lib.a: $(lib-y) FORCE
 	$(call if_changed,ar)
 
-# NOTE:
-# Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
-# module is turned into a multi object module, $^ will contain header file
-# dependencies recorded in the .*.cmd file.
-ifdef CONFIG_LTO_CLANG
-quiet_cmd_link_multi-m = AR [M]  $@
-cmd_link_multi-m =						\
-	$(cmd_update_lto_symversions);				\
-	rm -f $@; 						\
-	$(AR) cDPrsT $@ $(filter %.o,$^)
-else
-quiet_cmd_link_multi-m = LD [M]  $@
-      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
+#
+# Rule to prelink modules
+#
+
+ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
+
+cmd_merge_symver = $(PERL) scripts/merge-symvers.pl -a $(AR) -o $@ $<
+
+$(obj)/%.prelink.symversions: $(obj)/%.a FORCE
+	$(call if_changed,merge_symver)
+
+targets += $(patsubst %.a, %.prelink.symversions, $(modules))
+
+$(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
+module-symver = $(obj)/%.prelink.symversions
+
 endif
 
-$(multi-obj-m): FORCE
-	$(call if_changed,link_multi-m)
-$(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
+quiet_cmd_ld_o_a = LD [M]  $@
+      cmd_ld_o_a = $(LD) $(ld_flags) -r -o $@ --whole-archive $< $(cmd_objtool)
+
+$(obj)/%.prelink.o: part-of-module := y
+
+$(obj)/%.prelink.o: $(obj)/%.a $(module-symver) FORCE
+	$(call if_changed,ld_o_a)
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
+
+targets += $(modules-single) $(modules-multi)
 
-targets += $(multi-obj-m)
 targets := $(filter-out $(PHONY), $(targets))
 
 # Add intermediate targets:
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 34c4c11c4bc1..5074922db82d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -106,6 +106,10 @@ multi-dtb-y	:= $(addprefix $(obj)/, $(multi-dtb-y))
 real-dtb-y	:= $(addprefix $(obj)/, $(real-dtb-y))
 subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
 
+modules		:= $(patsubst %.o, %.a, $(obj-m))
+modules-multi	:= $(sort $(patsubst %.o, %.a, $(multi-obj-m)))
+modules-single	:= $(sort $(filter-out $(modules-multi), $(filter %.a, $(modules))))
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
index a26139aa57fd..56cd9b7a5dd0 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2000,9 +2000,9 @@ static void read_symbols(const char *modname)
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
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831074004.3195284-9-masahiroy%40kernel.org.
