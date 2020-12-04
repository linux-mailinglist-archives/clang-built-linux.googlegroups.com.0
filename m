Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTEZU37AKGQEELCTWEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E022CE4B8
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:11:41 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id y199sf1883561ooa.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:11:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607044300; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ydvp58oCfvE9z/eKOKB6n9yak8hTJrla5ErNLZQBADXHzZfI7VBu2ZaGtKrnNCyz6Q
         T/E+Bcg1vZtVTsnlzeRIP+fLK8/v4i6LYoC3CMm92JcMlimP9xTuUc5TohTs+8X1LTA6
         b9UgcYODnaZQd10imEhAz7W5j1guCQ3h9djpteMH6fZBSQ8n/hSjuMW3HwsNFdvfcUqP
         ZuM4P0BL93HQ+wueHFvNnmifcTsKgWUiIpGRBIOhom0g4rFZKt3fC3p4U8aElE7p0p2z
         dVQQlsiFZ+C2Sc3z9P8Q5riWcegyxkMN/Am8jCM6VVgxI6t9vwKggIys75sgXN0V/bCQ
         i6xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=9bnX1AMS8hFHKX3hDi/ZcsLgklRMeioi05Buc01U9g0=;
        b=IJgvQjIaCU5c23k+ksuS6tDEu/MP3Isw5YOfrOoDVibr+g4ShFTcY/rhlg1BKHNsG6
         7ZNh83+kTjOVG+z7C4UwWk77MAhoHTDMUr/z7rvtw6moDlzhme+lm1sU6n/IejWmXi47
         6k2L4Ioja4lJ5lizOkYVccrjEc4q2rzFn5NKYZMQ0bY99oCITAWUKiCn/6ywzrzbR7bP
         WZ10kiGA3Eq0l8hBau4Ej6NM9TPr4lhKCuB559D9BWZE0XEU0VhJ2witXlstVjenKoDH
         pG/rq2QyTLnT1iSr/Im3g5nS5/G1Ysc/nSDsTaiuuTK/hh+VtfTEKhip5h2Soxc92lmV
         ok7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFGPrKi4;
       spf=pass (google.com: domain of 3y4zjxwwkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3y4zJXwwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9bnX1AMS8hFHKX3hDi/ZcsLgklRMeioi05Buc01U9g0=;
        b=o+mx60AAjiRWyods7NwdvrZR+Mf7bd2aQZy7AAuN3+z+9Ukr347nNi5FbmGRrBMOnC
         OyyW0Kd8atDTqvC6MaB1vNDb2xHID1XOJrM7T5MEwQMNenpEOHfR3Y4Xq1B19fXgySIy
         6SE5BSuUT6EaBJ+VvqnSkhFZJdQRIBbdOKk14Re811JZLDkt2il+/R49+WSrFmt3xeCe
         VMjCQhMfx3ZzJkTQSULN9IKDJZIaG5Ua175WKewm8HfJT2Mgm+K3PWcRjsKj7nLTdaT8
         eQtOSdWX2HQSLZH525kSGriBv5iraKtcRby1kFy5QXeS9ohuLWld5Cj8zDGBsStpVfIj
         xSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9bnX1AMS8hFHKX3hDi/ZcsLgklRMeioi05Buc01U9g0=;
        b=MjkQHpE2LqWpWnnxrh5WHwFhYnTrCD4itagpC3Uc8Ob0lVWFpMGFrDgQ8auZVE83Iq
         qzvMEnmn5WkGXsjv3Q8PbuY1E6ZAl1Hb5m/ei6K8P7uOqXx4KqBDQIlYxjj5oWv9qNc4
         7Q55uYm+3osrUE2g0Mjnrlq+slOL5rpMpyndamRjWgNgBTo2c0tlVBmgG84EEW2uRR7V
         VNHfiS2ghRfK1Cnpc9ushZCZ2Jm46LKMmGBCKC6ZpPlfWyJ0VC50YRG2voKiCuoQovUF
         Ahe/DSEdqYJ1G7UBaNdBp2npamjQtvM030bMe4d3ayUXz+y4jeQgr51DnEwwXCkf20fW
         6+pw==
X-Gm-Message-State: AOAM531g3LfCPt+z34S+bbJ4SkV7vud/4p73Ilcu5A6fP8x2BIMPLcJy
	o4mSWh7zsdPjWSsN83apNbo=
X-Google-Smtp-Source: ABdhPJyLZF51LIWP7v0BKBwXbjvMwcp2B73pO/IqexnW+B3AnPe8V9OLm6SLkuf39nRnrGVqR1q9SQ==
X-Received: by 2002:a9d:74cf:: with SMTP id a15mr1666996otl.182.1607044300460;
        Thu, 03 Dec 2020 17:11:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls600692oif.11.gmail; Thu, 03 Dec
 2020 17:11:40 -0800 (PST)
X-Received: by 2002:aca:919:: with SMTP id 25mr1356215oij.95.1607044300055;
        Thu, 03 Dec 2020 17:11:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607044300; cv=none;
        d=google.com; s=arc-20160816;
        b=TntuTdYkSsGrB6iqeyKQfmw7y+uwJOxmXCsoblXjud5KNK9oxsOsH98173QSgeJRaJ
         mhH4h+WJjvI8tX1WGiSQJ7/0dwpt+15/SNi7LSTUnn/jlxMBHbyci0H6vgdKPQ3Crjqc
         GU5Np4iebtQxTDQ3sHeEJf2hHV+J2k1D4tQVXWITTJZIIoonih4qiTtOb9CHEHrRbuQx
         Sv2vARume23abq7N6CoI4MKA3kheH0Cw+WmbvuvfjvISLsXmOxeCZyJuP+ne6NOqJRD8
         fU5cnmmi2IUiFL06pcqAmAg5jCA02YyPUWcGRAITNa7vjChLQc7+o3WOF4yD1Ny3vcUn
         cRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=pLRRzZdi/63YiDhRi+XJakRixQ1i8h1osfRwCQB8g5M=;
        b=C8H/tv0BFk6sAzOdR56bV0Y1QYtu7E6ODHSAqPnzVGTBfWafmD7nbQikpzQz1QdhO5
         KAcVzV8qFSEQd3NJrnq8skDUeY0YhRXoKm3EJG5GUEtTY7/rQfFwmRSCFoFQF1VLpJbX
         fM4n45PvMzfWBHc43frvhYziS07tcCLuRcMRiykclNbeyhV8uCNMtVlbDuUcYJ1OJbDx
         lume3izbjF6sTYMn8rlF+KLpYxnP8eXmIq1AvySXx969bS8JUQftfVxKRGpZDkWUFUh6
         Tt4n9uzYhlzKtbPFjYQi/0f9aiuC/UwrLag5hSrE/kESmTIwln3y908SmFZ5sfD/Q79t
         DrAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFGPrKi4;
       spf=pass (google.com: domain of 3y4zjxwwkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3y4zJXwwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id l192si86711oih.3.2020.12.03.17.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:11:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 3y4zjxwwkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id ca17so3275608qvb.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 17:11:40 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:5106:: with SMTP id
 g6mr2373201qvp.1.1607044299523; Thu, 03 Dec 2020 17:11:39 -0800 (PST)
Date: Thu,  3 Dec 2020 17:11:27 -0800
In-Reply-To: <20201204011129.2493105-1-ndesaulniers@google.com>
Message-Id: <20201204011129.2493105-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v3 2/2] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux@googlegroups.com, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Changbin Du <changbin.du@intel.com>, "peterz@infradead.org" <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VFGPrKi4;       spf=pass
 (google.com: domain of 3y4zjxwwkaba3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3y4zJXwwKABA3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

DWARF v5 is the latest standard of the DWARF debug info format.

Feature detection of DWARF5 is onerous, especially given that we've
removed $(AS), so we must query $(CC) for DWARF5 assembler directive
support.  GNU `as` only recently gained support for specifying
-gdwarf-5.

The DWARF version of a binary can be validated with:
$ llvm-dwarfdump vmlinux | head -n 4 | grep version
or
$ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version

DWARF5 wins significantly in terms of size when mixed with compression
(CONFIG_DEBUG_INFO_COMPRESSED).

363M    vmlinux.clang12.dwarf5.compressed
434M    vmlinux.clang12.dwarf4.compressed
439M    vmlinux.clang12.dwarf2.compressed
457M    vmlinux.clang12.dwarf5
536M    vmlinux.clang12.dwarf4
548M    vmlinux.clang12.dwarf2

515M    vmlinux.gcc10.2.dwarf5.compressed
599M    vmlinux.gcc10.2.dwarf4.compressed
624M    vmlinux.gcc10.2.dwarf2.compressed
630M    vmlinux.gcc10.2.dwarf5
765M    vmlinux.gcc10.2.dwarf4
809M    vmlinux.gcc10.2.dwarf2

Though the quality of debug info is harder to quantify; size is not a
proxy for quality.

Jakub notes:
  All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
  option that enabled some small DWARF subset (initially only a few
  DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
  after DWARF 5 has been finalized) started emitting DWARF5 section
  headers and got most of the DWARF5 changes in...

Version check GCC so that we don't need to worry about the difference in
command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
validate the DWARF Version in the assembler feature detection script.

Link: http://www.dwarfstd.org/doc/DWARF5.pdf
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Caroline Tice <cmtice@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                          |  1 +
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 14 ++++++++++++++
 scripts/test_dwarf5_support.sh    |  9 +++++++++
 4 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index 2430e1ee7c44..45231f6c1935 100644
--- a/Makefile
+++ b/Makefile
@@ -828,6 +828,7 @@ endif
 
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
 # Binutils 2.35+ required for -gdwarf-4+ support.
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..76ce62c77029 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -829,7 +829,11 @@
 		.debug_types	0 : { *(.debug_types) }			\
 		/* DWARF 5 */						\
 		.debug_macro	0 : { *(.debug_macro) }			\
-		.debug_addr	0 : { *(.debug_addr) }
+		.debug_addr	0 : { *(.debug_addr) }			\
+		.debug_line_str	0 : { *(.debug_line_str) }		\
+		.debug_loclists	0 : { *(.debug_loclists) }		\
+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
+		.debug_str_offsets	0 : { *(.debug_str_offsets) }
 
 /* Stabs debugging sections. */
 #define STABS_DEBUG							\
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 04719294a7a3..987815771ad6 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -274,6 +274,20 @@ config DEBUG_INFO_DWARF4
 	  It makes the debug information larger, but it significantly
 	  improves the success of resolving variables in gdb on optimized code.
 
+config DEBUG_INFO_DWARF5
+	bool "Generate DWARF Version 5 debuginfo"
+	depends on GCC_VERSION >= 70000 || CC_IS_CLANG
+	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	help
+	  Generate DWARF v5 debug info. Requires binutils 2.35, gcc 7.0+, and
+	  gdb 8.0+. Changes to the structure of debug info in Version 5 allow
+	  for around 15-18% savings in resulting image and debug info section sizes
+	  as compared to DWARF Version 4. DWARF Version 5 standardizes previous
+	  extensions such as accelerators for symbol indexing and the format for
+	  fission (.dwo/.dwp) files. Users may not want to select this config if
+	  they rely on tooling that has not yet been updated to support
+	  DWARF Version 5.
+
 endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
new file mode 100755
index 000000000000..156ad5ec4274
--- /dev/null
+++ b/scripts/test_dwarf5_support.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
+# in binutils < 2.35.
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
+set -e
+echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204011129.2493105-2-ndesaulniers%40google.com.
