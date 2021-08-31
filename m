Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBXH7XCEQMGQELRSRWDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 474A43FCA21
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:38 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id fy13-20020a17090b020d00b001939890b4d6sf1520818pjb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420957; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOETE8zkULMyOPPSlzDoidoQRG9vopnesymEgCshbMxvoFXptrI67zY8brtDJlYXYd
         Yoiokg5LWyagKn4yQy9jAB04dFYGdIpGPHGBxegGUkUME8KnrsrbhEUVK1uSavffljot
         tmxK0XEQ/4C2OCcNs7jnQ6UcA2zy6eyaNjFjIHFCZv0o8X7zo//BtJmnh0roZFnDGU6b
         Ek3Mn6F4HfM+cCTZ1sjNauvjrQBhiDPxHuFhhY0JI+w6lsh8M+SAU3ZUXcV31XoebbWo
         OeQXJ7DMkfGlJ+H0pit6+J069SJn9U4h6kQC245qKpbgRlmT3RMZ94xe6WOWLjVCa943
         VIfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=El4l//shxPXQ8Bf9eFYMzVzlkP0oFGJXNvc/zpyfWr4=;
        b=fNkw/ixrHBfM2sbjhDl5Y1lI5h84xMKN4VIQOiNawP6OyY4M1PqVP9+u/fknnq8q/O
         xkAtT6eVNMUP6i/RpYMMqZ2rNAdgMSqaPtWpjpsRVCg06SFxyggkbJSvCQQl617enbVJ
         Gimsc9QaLtv0noFfRpburFEp/4fg1aAQmuBqMl1cm8RV3X8KE5UlAFGbGY7jzXU/PidL
         iqErtl5uYpXZA/67gEtX+H7eNScrSfX25ekHjofxVJweVbfCf4CsfWYnJ08ahro0toBC
         vgUEXp593/bRyP9uZG6avaWutN0sIE/ld8VEZ8r3zkLqvONHIlwWfgRgpyi64YA1U1A7
         FnRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=El4l//shxPXQ8Bf9eFYMzVzlkP0oFGJXNvc/zpyfWr4=;
        b=th1l3oHJHBmLJlrICq9JG+fbEEcFNbP4EAVcKLaKKShSMQmy9uUQKUREtdQrIgVGJw
         gdjaKnz5z1iSpoCJBwofx+aRA2+NrY+tw5VSa1Sfb12I/RHF+RP7TW8fkF9dwrjDMEk8
         tKjo20jMGnke08kNAIxifMx3qgltcpu3OqAV8aFcxu/8BNNhcFGE8M2O6uRa+8DCOtU5
         jFWU2fawzuLvMHWClPw/kpJfHJvkikGRdgVjsPWgZD57sFmBSqLi4E0aK/OtyMGNjO7H
         72CXBt7RMexEH40FmCKFCZb6tO/o/e5PSLp3boG4QLji9WpZo37UKXp3C6v9Dgroaf9M
         9QeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=El4l//shxPXQ8Bf9eFYMzVzlkP0oFGJXNvc/zpyfWr4=;
        b=O+M+H9hwtLj/W58upDcThIh7X8Qpyl2cjKqFtTIk1yoY9ntpOX/3LgYE10BDyQDJfw
         0wqa1HZ40TFr6UqFtiLuIiTJm9/q4QpmcEmxcwTph7x6nUlSCxDrayE84mmR60PCipt4
         YBcsScPSlydOnl2nabs5EzhMH1XvapDzslip6wISl0WvPIPdIDp3vI6+dMgPWnmOYB+S
         k4GnEdF5a9IV6v56nTqFlivcMX4PhVKcIZ9vtdUcaLT1FhxShDZzHwvLfQ5Xbrd6iDZr
         w2MTlFBsbhIQzY6pdDmOX/uugzMIb44Y/CGmdsbbE+vFEgL9Cdb0LcsFWIEHA7WXc/fi
         TJVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bPs9zSbzZx0g4JO9hhG4jBDkAF1XeBx5s5ri/1yOyUA/2zApE
	AiIJDC0ocLedmbLa1ggel+o=
X-Google-Smtp-Source: ABdhPJzm/4hjmotcGR4VRPt7jIU+lzvX7HPzcfp1cYGkgz1umy5XXxWw2Hv7LOmBU8Jc3k5Epezc4A==
X-Received: by 2002:a17:90a:c293:: with SMTP id f19mr6005532pjt.106.1630420956982;
        Tue, 31 Aug 2021 07:42:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf47:: with SMTP id u7ls11016079pls.11.gmail; Tue,
 31 Aug 2021 07:42:36 -0700 (PDT)
X-Received: by 2002:a17:902:a986:b0:138:d732:4708 with SMTP id bh6-20020a170902a98600b00138d7324708mr5007362plb.37.1630420956443;
        Tue, 31 Aug 2021 07:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420956; cv=none;
        d=google.com; s=arc-20160816;
        b=v9MiCJSH5S6MPi07KJ+KxCBlkMXIdnXnvQhOS6AePak+HZsCWRZCx7gVopicfdJG6e
         jdzUgEOgi1uZRMg05IfZWzMMvimHboQ8FVV4xYpoJsFkzccyUi9iJUhb+sWkqoUhfWa2
         wX9ynyVBgMozHZal6OK7gA2kN+32CdjyakAHKJcRhs4l3Bv54GXKMGPEPOOvfFQc935n
         5VLG9JoXH5yX+bUF0L2UnktfEJnW2qp5QAY0iedoLGfIOtD0HFAqzugt/VNKeJUVGpWG
         Wtz/zBkpSpGkKC1aVAuXMnmYaMJ5cQPkwQlnnhpoI6guOP4DPhg45EYBL+UCO0JxxhSr
         Hkag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=X3sEG/zQgeb8XVj2MqHD/Uq5jJS6ziQjt2XdJwE0sak=;
        b=GpS3sujFGTEL6TgHtIzybbH9Gav9KoNEOyuDyk//ZniNVxQZJNvz8qTUQlvvUoAwLn
         nYPiQKWr8nZRRifdDAljNZcZGssODp2mYvHVAYyggXZqIDL309tl847DDd1++4UxYQeK
         cLGkDoQlR2KO1S89zBBd7zpAI6IJJ+MElVfCGrisiJmP3eJuzcohpK3FMzwIbco8fXhx
         u6wxHZulx4WpYOb8/zh8jI0Ovw25iF9Kbph25ykRcF5H+vaTnovnVcpXzXWaax7TwmVf
         QptwfUJ+F7furGS533JmZ7DbTMbA2qk/f3tET/gt7wpjpyM+qt/Fgd9qqdtqNKoKKFpj
         nBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id r9si1031373plo.0.2021.08.31.07.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218533034"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218533034"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="446126336"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga002.jf.intel.com with ESMTP; 31 Aug 2021 07:42:31 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfk002209;
	Tue, 31 Aug 2021 15:42:28 +0100
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
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 20/22] module: use a scripted approach for FG-KASLR
Date: Tue, 31 Aug 2021 16:41:12 +0200
Message-Id: <20210831144114.154-21-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Use the same methods and scripts to generate an LD script for every
module containing all the output text sections.
The only difference there is that we don't need to reserve any space
as the memory for every section is being allocated dynamically.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 include/asm-generic/vmlinux.lds.h | 12 ++++++++++++
 init/Kconfig                      | 15 ++++++++++++++-
 scripts/Makefile.modfinal         | 19 ++++++++++++++++---
 scripts/generate_text_sections.pl |  7 ++++++-
 scripts/module.lds.S              | 14 +++++++++++++-
 5 files changed, 61 insertions(+), 6 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 70fac18c786e..561f3ef06745 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -127,6 +127,18 @@
 #define TEXT_MAIN		.text
 #endif
 
+/*
+ * Same for modules. However, LD_DEAD_CODE_DATA_ELIMINATION doesn't touch
+ * them, so no need to check for it here.
+ */
+#if defined(CONFIG_LTO_CLANG) && !defined(CONFIG_MODULE_FG_KASLR)
+#define TEXT_MAIN_MODULE	.text .text.[0-9a-zA-Z_]*
+#elif defined(CONFIG_MODULE_FG_KASLR)
+#define TEXT_MAIN_MODULE	.text.__unused__
+#else
+#define TEXT_MAIN_MODULE	.text
+#endif
+
 /*
  * Used by scripts/generate_text_sections.pl to inject text sections,
  * harmless if FG-KASLR is disabled.
diff --git a/init/Kconfig b/init/Kconfig
index e8158c256ee9..8e0b5973fb72 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2333,7 +2333,6 @@ config UNUSED_KSYMS_WHITELIST
 config MODULE_FG_KASLR
 	bool "Module Function Granular Layout Randomization"
 	default FG_KASLR
-	depends on BROKEN
 	help
 	  This option randomizes the module text section by reordering the text
 	  section by function at module load time. In order to use this
@@ -2342,6 +2341,20 @@ config MODULE_FG_KASLR
 
 	  If unsure, say N.
 
+config MODULE_FG_KASLR_SHIFT
+	int "Module FG-KASLR granularity (functions per section shift)"
+	depends on MODULE_FG_KASLR
+	range 0 16
+	default 0
+	help
+	  This sets the number of functions that will be put in each section
+	  as a power of two.
+	  Decreasing the value increases the randomization, but also increases
+	  the size of the final kernel module due to the amount of sections.
+	  0 means that a separate section will be created for each function.
+	  16 almost disables the randomization, leaving only the manual
+	  separation.
+
 endif # MODULES
 
 config MODULES_TREE_LOOKUP
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index ff805777431c..ac1b8415519f 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -28,13 +28,24 @@ quiet_cmd_cc_o_c = CC [M]  $@
 %.mod.o: %.mod.c FORCE
 	$(call if_changed_dep,cc_o_c)
 
+ifdef CONFIG_MODULE_FG_KASLR
+quiet_cmd_gen_modules_lds = GEN [M] $@
+      cmd_gen_modules_lds =						\
+	$(PERL) $(srctree)/scripts/generate_text_sections.pl		\
+		-s $(CONFIG_MODULE_FG_KASLR_SHIFT) $(filter %.o, $^)	\
+		< $(filter %.lds, $^) > $@
+
+%.lds: %$(mod-prelink-ext).o scripts/module.lds FORCE
+	$(call if_changed,gen_modules_lds)
+endif
+
 ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
 
 quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o +=							\
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
-		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
+		-T $(filter %.lds, $^) -o $@ $(filter %.o, $^);		\
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
 quiet_cmd_btf_ko = BTF [M] $@
@@ -55,13 +66,15 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
 
 
 # Re-generate module BTFs if either module's .ko or vmlinux changed
-$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
+$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o
+$(modules): %.ko: $(if $(CONFIG_MODULE_FG_KASLR),%.lds,scripts/module.lds)
+$(modules): %.ko: $(if $(KBUILD_BUILTIN),vmlinux) FORCE
 	+$(call if_changed_except,ld_ko_o,vmlinux)
 ifdef CONFIG_DEBUG_INFO_BTF_MODULES
 	+$(if $(newer-prereqs),$(call cmd,btf_ko))
 endif
 
-targets += $(modules) $(modules:.ko=.mod.o)
+targets += $(modules) $(modules:.ko=.mod.o) $(if $(CONFIG_MODULE_FG_KASLR),$(modules:.ko=.lds))
 
 # Add FORCE to the prequisites of a target to force it to be always rebuilt.
 # ---------------------------------------------------------------------------
diff --git a/scripts/generate_text_sections.pl b/scripts/generate_text_sections.pl
index 5f3ece2ee0ea..d5b16057b9ff 100755
--- a/scripts/generate_text_sections.pl
+++ b/scripts/generate_text_sections.pl
@@ -44,6 +44,7 @@ my $readelf = $ENV{'READELF'} || die "$0: ERROR: READELF not set?";
 
 ## text sections array
 my @sections = ();
+my $vmlinux = 0;
 
 ## max alignment found to reserve some space
 my $max_align = 64;
@@ -64,6 +65,10 @@ sub read_sections {
 			next;
 		}
 
+		if ($name eq ".sched.text") {
+			$vmlinux = 1;
+		}
+
 		if (!($name =~ /^\.text\.[0-9a-zA-Z_]*((\.constprop|\.isra|\.part)\.[0-9])*(|\.[0-9cfi]*)$/)) {
 			next;
 		}
@@ -120,7 +125,7 @@ sub print_reserve {
 	## we reserve some space for them to not overlap _etext while shuffling
 	## sections
 
-	if (!$count) {
+	if (!$vmlinux or !$count) {
 		return;
 	}
 
diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 04c5685c25cf..f32437783edf 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -3,6 +3,11 @@
  * Archs are free to supply their own linker scripts.  ld will
  * combine them automatically.
  */
+
+#include <asm-generic/vmlinux.lds.h>
+
+#undef SANITIZER_DISCARDS
+
 #ifdef CONFIG_CFI_CLANG
 # include <asm/page.h>
 # define ALIGN_CFI 		ALIGN(PAGE_SIZE)
@@ -57,9 +62,16 @@ SECTIONS {
 	 */
 	.text : ALIGN_CFI {
 		*(.text.__cfi_check)
-		*(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
+		*(TEXT_MAIN_MODULE)
+		*(.text..L.cfi.jumptable .text..L.cfi.jumptable.*)
+	}
+#elif defined(CONFIG_MODULE_FG_KASLR)
+	.text : {
+		*(TEXT_MAIN_MODULE)
 	}
 #endif
+
+	TEXT_FG_KASLR
 }
 
 /* bring in arch-specific sections */
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-21-alexandr.lobakin%40intel.com.
