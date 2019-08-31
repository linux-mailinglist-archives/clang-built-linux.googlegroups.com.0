Return-Path: <clang-built-linux+bncBDTI55WH24IRBRN7VLVQKGQEDSUHKYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A83A4545
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 18:26:47 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id t1sf8075482ybk.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 09:26:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567268806; cv=pass;
        d=google.com; s=arc-20160816;
        b=BIDugn3BbHh9zk5gN2LNL215bcOuqqvbaS+Yky9vIFQ0FW5ve12ZxtIJ0X5seE4QK0
         FCALzudc+uY1LBMczdJQjO7TzTh/MPxo6SIOV4waWly0PqlIJK9qtxwoo0J5P4BC/ldK
         TQ8N/CCeznb3gwj/T5kJYWLhaQY83kLy1I1KQWoKPtISjSJkd72JZuFc9rzGOKTj3dO6
         xRu53uNcPi9nPd0qpr3UemNK6SPdg5tqxrv47AAdVvN4CJLZUwRpcHqCsjywUDoGySpo
         U5Gx8UjmlFUFEq9nTyQf/zyp24VhAaHoVmz1Jsi4DTH21KKrG1DOAqcKZMf94cg/GiV5
         fANw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=CXWT2G3o4zVaiFJzRSq0MprMSif+O3ltxP3F17DpkZs=;
        b=Nl+BlDunyzAUoQr/CGVIGvQDx04GoLgVRWB8o1OvqwBY+TfZwZVgLNrXqIP6SfySR/
         yprj4IYJmokDuzpTXYebt0/bqpZLNU3uL0u+FTTA7QiVGVr0tLktKGECaxQNbZWXI2So
         kC8UfvQNJ0JMGeAkS21NBTzQpSU+51tgG+gvqKa4xHZ7lZgIe2y4FMl6UYfM+lpJg1f2
         EmTbn1kjKKcfMn2N4Q+QpjzKkZr9RPR+SFZGvuqMv+/Sf3pOZ5G+rXdapF+Pnmhe5ckz
         qaWvYBJ6gWC3Cp21sKv5LbViN0r08ATBgw1SXM3qzZeeDrj9+OHQcfIJRgkggwRXv/Kk
         bqXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BqeiHJd8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CXWT2G3o4zVaiFJzRSq0MprMSif+O3ltxP3F17DpkZs=;
        b=d4Z/8KS56SA49qQZuKnDQRZiAt7RW7yeiiHq+5L0vg/xVu6Yb61stQT4oM9Bf6qyNG
         yAgkzNxgPjpB7fawBal0VsUdurtciQXI2v+XZxZxqILaGKBXg/7cs2i4YjY4qUpNjWCS
         /nOXfHhXsEyM+5zgN1vDzIXJKch8lFL/RMF6TgwkCkuKTO13c7T4FqmMGcHoNVQRYVa2
         ZH/FhAE/2h8wqxGHLZ8Y5Cf7aZ4zW1zrvStyTlh4PwfbCgzztqSX7d2nKlRhzdVi62zJ
         ld7Y+1Y95ETEKGJ3wpWSJ+qAaVIMDKdYn4ATn9d7EjX1PPdplLBKkUMnL6L2/4TvMH8Z
         +3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CXWT2G3o4zVaiFJzRSq0MprMSif+O3ltxP3F17DpkZs=;
        b=oKgA6hMZMIfmPAn57ieB8gH1VTq8llb/6NE7x7UiR33EEUM8uNnE5gwCzl+xNLSvs4
         B+Ga1ek6VBUgElsCgv/P3AAb+dTZr4zwYHZp90c0CaA4AfARjO5Yh0RPOWV3j4+UA1KC
         aZLKJg0eZ2S9bOXprSSQ2CnjustS5g+oBXgSobd1AOg67DpzLLl0X7AsCb9WR3R9zf4c
         RPt1+cfqbuc3epLIiNm7zNLL9Fc2bvntWcWCe6AAGa43GlTq5jZhk//4uIBB0SeI8ucV
         Y+JJCftBp9dq632denrkcG82sf3XhfShi+hWdQKFcRJhh4VeOuKD5KnaiQuu5s5qfa/y
         iAWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRkex9lfV7aIQMTDbY1oBbMfd+BRbdSdAZtqU5lOQhJ59nAMzT
	AJxYqcQfmnqcbX59D9Mivr4=
X-Google-Smtp-Source: APXvYqxatE6Oj1uEXV/wIVHB6HAigPgdlW8ESHlE2K2DXUdOQ4/LDuRyRZWNx4aqaqnbQR/kFmnlLA==
X-Received: by 2002:a25:cc45:: with SMTP id l66mr15855465ybf.285.1567268806112;
        Sat, 31 Aug 2019 09:26:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77c5:: with SMTP id s188ls1032586ybc.6.gmail; Sat, 31
 Aug 2019 09:26:45 -0700 (PDT)
X-Received: by 2002:a25:5d0f:: with SMTP id r15mr15156522ybb.59.1567268805647;
        Sat, 31 Aug 2019 09:26:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567268805; cv=none;
        d=google.com; s=arc-20160816;
        b=RanzZILLwoYzom17oSt/Iu5qiAg5hUgfz6mZhL4bheBC3eXZj1JJZ8zXmBUgCsh9AV
         JjtwRkuen9miov6V5IskB7T6R0rlwy6hFA5ej6oAjo2pY621POLDr1DN1Np3EkKU/uh3
         Feg4uD2D/w0fm8vGoJ0Y1AW7EdBifFQhCzcFp/L8re7QEgtKPIxjcRTwToQMgTlIYRh7
         iG5uwrfeypGGkTnGBS5AYajo3WYr3qZ/09tE2B7puZqyFktztmpQCIJo1rUm6uXLSxWf
         Tp7BkwBl51vfcYaURyvo4hi8Gd1Wo/EjKD6SeDGLr1rnB9h/qg79LgfYMPWnQDG3Ec5T
         Tuew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=Ui9mzwIcf6q3fAmho+x2Mpzgo39jfnuLRThfNlp/A5I=;
        b=jaJSzzMnIG2+yEotmRSc2eyDpJX6XVmGcs1phqNfEujOLGOqFHYjr1ehVJHCg3oDgR
         /pEjQ3kFR0gyeHvTcZRub/FPANj+vFLZIkhQoE/OQq0O9JDNu7zAaO1Yw794AZI+Czr4
         oN6zxdcOE+62WsZ4idnava29mWxmLCQihiwsrOSFOfkBIGgfMyuytOQKO+0g19MmXHc5
         W/bgJ/D4nUBCpRhUNeEJYHmrrjb9/HhH1IygFEYw34jHklLBKBHBJCmcgJsyWUJ7KqEw
         SnjJkT5SqN79m+sl9IquP6P0oVi55l+FuneJSSYO+/4iFkeH7yTrcyJgvysY3xfffcDu
         Xr8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BqeiHJd8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id o3si664804yba.5.2019.08.31.09.26.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Aug 2019 09:26:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net [126.125.143.222]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id x7VGQ14w028152;
	Sun, 1 Sep 2019 01:26:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7VGQ14w028152
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
Date: Sun,  1 Sep 2019 01:25:55 +0900
Message-Id: <20190831162555.31887-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190831162555.31887-1-yamada.masahiro@socionext.com>
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=BqeiHJd8;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
options for GCC, but now it is a historical misnomer since we use it
also for Clang, DTC, and even kernel-doc.

Rename it to more sensible, and shorter KBUILD_EXTRA_WARN.

For the backward compatibility, KBUILD_ENABLE_EXTRA_GCC_CHECKS is still
supported (but not advertised in the documentation).

I also fixed up 'make help', and updated the documentation.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v3:
  - new patch

Changes in v2: None

 Documentation/kbuild/kbuild.rst | 14 +++++++++-----
 Makefile                        |  2 +-
 scripts/Makefile.build          |  2 +-
 scripts/Makefile.extrawarn      | 13 +++++++++----
 scripts/Makefile.lib            |  4 ++--
 scripts/genksyms/Makefile       |  2 +-
 6 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
index 62f9d86c082c..f1e5dce86af7 100644
--- a/Documentation/kbuild/kbuild.rst
+++ b/Documentation/kbuild/kbuild.rst
@@ -105,6 +105,15 @@ The output directory can also be specified using "O=...".
 
 Setting "O=..." takes precedence over KBUILD_OUTPUT.
 
+KBUILD_EXTRA_WARN
+-----------------
+Specify the extra build checks. The same value can be assigned by passing
+W=... from the command line.
+
+See `make help` for the list of the supported values.
+
+Setting "W=..." takes precedence over KBUILD_EXTRA_WARN.
+
 KBUILD_DEBARCH
 --------------
 For the deb-pkg target, allows overriding the normal heuristics deployed by
@@ -241,11 +250,6 @@ To get all available archs you can also specify all. E.g.::
 
     $ make ALLSOURCE_ARCHS=all tags
 
-KBUILD_ENABLE_EXTRA_GCC_CHECKS
-------------------------------
-If enabled over the make command line with "W=1", it turns on additional
-gcc -W... options for more extensive build-time checking.
-
 KBUILD_BUILD_TIMESTAMP
 ----------------------
 Setting this to a date string overrides the timestamp used in the
diff --git a/Makefile b/Makefile
index 06e1e21c0f45..016d72eb3ddf 100644
--- a/Makefile
+++ b/Makefile
@@ -1538,7 +1538,7 @@ help:
 	@echo  '  make C=1   [targets] Check re-compiled c source with $$CHECK (sparse by default)'
 	@echo  '  make C=2   [targets] Force check of all c source with $$CHECK'
 	@echo  '  make RECORDMCOUNT_WARN=1 [targets] Warn about ignored mcount sections'
-	@echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
+	@echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'
 	@echo  '		1: warnings which may be relevant and do not occur too often'
 	@echo  '		2: warnings which occur quite often but may still be relevant'
 	@echo  '		3: more obscure warnings, can most likely be ignored'
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 2a21ca86b720..f72aba64d611 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -85,7 +85,7 @@ else ifeq ($(KBUILD_CHECKSRC),2)
         cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
 endif
 
-ifneq ($(KBUILD_ENABLE_EXTRA_GCC_CHECKS),)
+ifneq ($(KBUILD_EXTRA_WARN),)
   cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
 endif
 
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index d226c5fb13e2..53eb7e0c6a5a 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -8,14 +8,19 @@
 
 KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
 
+# backward compatibility
+KBUILD_EXTRA_WARN ?= $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)
+
 ifeq ("$(origin W)", "command line")
-  export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
+  KBUILD_EXTRA_WARN := $(W)
 endif
 
+export KBUILD_EXTRA_WARN
+
 #
 # W=1 - warnings which may be relevant and do not occur too often
 #
-ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
 KBUILD_CFLAGS += -Wmissing-declarations
@@ -48,7 +53,7 @@ endif
 #
 # W=2 - warnings which occur quite often but may still be relevant
 #
-ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wcast-align
 KBUILD_CFLAGS += -Wdisabled-optimization
@@ -65,7 +70,7 @@ endif
 #
 # W=3 - more obscure warnings, can most likely be ignored
 #
-ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wbad-function-cast
 KBUILD_CFLAGS += -Wcast-qual
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7ab17712ab24..df83967268ba 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -248,7 +248,7 @@ quiet_cmd_gzip = GZIP    $@
 DTC ?= $(objtree)/scripts/dtc/dtc
 
 # Disable noisy checks by default
-ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
 DTC_FLAGS += -Wno-unit_address_vs_reg \
 	-Wno-unit_address_format \
 	-Wno-avoid_unnecessary_addr_size \
@@ -259,7 +259,7 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
 	-Wno-pci_device_reg
 endif
 
-ifneq ($(findstring 2,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifneq ($(findstring 2,$(KBUILD_EXTRA_WARN)),)
 DTC_FLAGS += -Wnode_name_chars_strict \
 	-Wproperty_name_chars_strict
 endif
diff --git a/scripts/genksyms/Makefile b/scripts/genksyms/Makefile
index baf44ed0a93a..78629f515e78 100644
--- a/scripts/genksyms/Makefile
+++ b/scripts/genksyms/Makefile
@@ -12,7 +12,7 @@ genksyms-objs	:= genksyms.o parse.tab.o lex.lex.o
 #
 # Just in case, run "$(YACC) --version" without suppressing stderr
 # so that 'bison: not found' will be displayed if it is missing.
-ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
 
 quiet_cmd_bison_no_warn = $(quiet_cmd_bison)
       cmd_bison_no_warn = $(YACC) --version >/dev/null; \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190831162555.31887-2-yamada.masahiro%40socionext.com.
