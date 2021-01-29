Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGK2GAAMGQENLUTIEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE0D308D90
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 20:43:30 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id k63sf4748985oob.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 11:43:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611949408; cv=pass;
        d=google.com; s=arc-20160816;
        b=EISUNeDTKfVY+/OXi736KLcJ1xuOr5a51SxibZuCJjvjA1lwXzjDDAiSoNI+JgjT4Q
         2hBF2kozCCsDA+/wUN6HBjXUecro/H8upg4Ta+Rv7ImXBJ6bX9FpOyEySBFKGJdMoU7G
         J/mfCY2hwHYfTVjlVfL5aftpdPsG8v62OlkvZtZyYSeoBw47jQb31O9Vq4uMiYjdfXeX
         orITUbiKVXc4jfA+2TTOUKjXvGxu/qanzU06Hatn4m/ww5AqOxHxHT+fSM4pnwiL4pRt
         2NrC7eTnK+L2ae6j16+AXeeaOLXeqJxr5kfN3Q/1MMSq3ycTX2CODfOkae5tu8LddCLF
         fZTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=wboZ67Wmisf3tRyth9t/dMeEV0EnwnQ3xxn4k+ABw1o=;
        b=CUDsfEyM4fV8vqAURgY3FZrjJHl2qVvzpt60mJjNdvcxeRS50jRCEc5iI7OzNH0M3e
         /ClBgniMgh90LLEGZN/v21Q+Z6vuf1ogVx+69yFU29005K+nQnnSqdCCeUuSHPWRdJQl
         plU9vbpsEZ8y8Ze8azCp1j6b2LFHk5ZLoo3nx6AtYDdm4KbjI1OP9anwx3aPIGHSVw5v
         H8ifbCIRQsgEk/wdip3ih+ceYgkLG/Vc0RqhzSsKG5rD3EHQlc49y/bn+QtNAVjuN5iD
         Ke72cuQmASyrqBhS/MvhV0Mlf5EwV4XEQ48OujyQ5lDLDQkbuKHf/YFvo16IchkWh80q
         ZfsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/MlbpWr";
       spf=pass (google.com: domain of 3x2uuyawkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3X2UUYAwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wboZ67Wmisf3tRyth9t/dMeEV0EnwnQ3xxn4k+ABw1o=;
        b=nSQnejF7caPx/uUn69r1p62JtoXW7w+SZ9PK2aMLQixvshczxhbt7K2cjqd1I/BdQB
         Hv0WYiDUBdDGvDbREmCc57rgQRjDglzjiI75PQtYqMKe2kT5uhMRiJG35zcPlKEWaCOP
         pr/tznS3Ci9oNgbtI8ryaAaWYguUCInFn0hqB/OUXZS0jPcjNdf1Uvo1/x7Zmu+6Bz2G
         JIaYGA7+lfUtJN2hgQ3xPkm+nfs5xuLHPCAk3WhTmMklBkEMCz7FGeOBZsAncccx9W/Q
         bbRYkggcx9aiqAS4iEbvCUW96MjU7I/B2W2V1f3G1/wZSa6RbAHdjfd1voU0zv/SAjWH
         OZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wboZ67Wmisf3tRyth9t/dMeEV0EnwnQ3xxn4k+ABw1o=;
        b=ZyAMM4MhtghjEpbYWLnt4g5jH3RQumiMg8h+91PvEQS08Ne4eg9QxbF7So/wosdFbU
         +d7chp0qDRZDKCp7M8gnx6A3d+KiJW5YAA5buar2GeUWfXlL97RGY6NXvrfq33rUy2ky
         Yl/55ZgsKXGnOoDckGkXC/JfAWqIgRdxe+2Y7IJgSL7bdZCrVA0gQxzEJjcCd3n+Zc8H
         +Axg7v0N0PtUXtE+trGUYZKsWAmd+bGFqeRNhgpxPPMdULYOiFrD/w15BDJPVDcHBcGd
         TaDaQHxE+oeqXoME4uif0OEy/TZzowW7xOUkBGW1AjnPcWotBuCjiYbuzNlTOSfjGue6
         jBcQ==
X-Gm-Message-State: AOAM533jrky0PDx/gjkPFsh8gXnrraZ28/z8MuuTK30iaXpYYS8eziwr
	ACb922PETSi//8vdposXDzM=
X-Google-Smtp-Source: ABdhPJy/foG+zHvoRNvNMeFPY6iu8dBmoB5J/P8L7Aw5yeBxvCRdKqeO9F2y6Wl0LeHfN87mJ/S91Q==
X-Received: by 2002:aca:d744:: with SMTP id o65mr3466884oig.166.1611949408761;
        Fri, 29 Jan 2021 11:43:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e704:: with SMTP id y4ls626861oou.7.gmail; Fri, 29 Jan
 2021 11:43:28 -0800 (PST)
X-Received: by 2002:a4a:3b4f:: with SMTP id s76mr4057720oos.29.1611949408368;
        Fri, 29 Jan 2021 11:43:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611949408; cv=none;
        d=google.com; s=arc-20160816;
        b=aHc/+mYCgUg5eul1JYKjVC4rUFr05WPxKzCPkERs+TDxq57op+LA1cWK4KE4vKwMVN
         BoGiSwQoGTJZX6BgTS5z5102UO9JxBLyOpPLONZ9dadmvMwcEOsl/2i60VLp6aUrzF+e
         4/mopxSA17nK8MCSQtDHppT5JSdoWkxrpwNHc4puEPKz9vu5hsnOe6FKR9JlrbMASm2/
         AfFe6VTOUGFoXEHfhTyxE27bTTZj01MPrDWGMF68mDIzdYyoy8XwROZb/kpW7y5dhIlN
         Tj8rCJqWMTvLxhChniJEWHFABkCB9XaaRdlmQuj89jbwVjo+SeWdrL2Ppo1RwalNPcmZ
         l8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=GEKeeKHmAPTG6av/vdrBVpAGk6oSoBQtlWTtIBlm4NE=;
        b=s8ycBWgNHXprVSlmUNeo9/OLMWqqbMf6OyKoRWcqdAtlkyNSQ4f12lvNswAEg9guTa
         BlkI9DUnmSWSwMS3ExOFJTU8gQt/1Ecnj7DjBHpiK/yeV4IzJPiFGDYMtZxDbBYD8jPu
         R9eNHFBseRMxkyT44b4XQWtA2p17O2hGYcv4vgbi3xcBCeWPursHoQtnYsoq2b8TFeoZ
         Chr29K1DCwAvSTxQaH4TW+CNuRHzmqTK5/yOYraNdTHSJX1nA3KCNin/X7K6BuCxQU58
         UDZPW2TsyWGX6PtQ8d9O0zcA4ZvxG0DiUtyZtlJw7XQCmWFVzieFgrHr8Asl8B+qLQBJ
         N9Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/MlbpWr";
       spf=pass (google.com: domain of 3x2uuyawkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3X2UUYAwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id g62si501799oif.2.2021.01.29.11.43.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 11:43:28 -0800 (PST)
Received-SPF: pass (google.com: domain of 3x2uuyawkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id o12so6545740pfp.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 11:43:28 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:902:ee14:b029:de:19f0:91b4 with
 SMTP id z20-20020a170902ee14b02900de19f091b4mr5652880plb.78.1611949407609;
 Fri, 29 Jan 2021 11:43:27 -0800 (PST)
Date: Fri, 29 Jan 2021 11:43:18 -0800
In-Reply-To: <20210129194318.2125748-1-ndesaulniers@google.com>
Message-Id: <20210129194318.2125748-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="O/MlbpWr";       spf=pass
 (google.com: domain of 3x2uuyawkaiitjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3X2UUYAwKAIItjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
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
support.

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

GNU `as` only recently gained support for specifying -gdwarf-5, so when
compiling with Clang but without Clang's integrated assembler
(LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.

Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
recognize the new additions to the DWARF debug info. Thanks to Sedat for
the report.

Link: http://www.dwarfstd.org/doc/DWARF5.pdf
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Caroline Tice <cmtice@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                          | 12 ++++++++++++
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 18 ++++++++++++++++++
 scripts/test_dwarf5_support.sh    |  8 ++++++++
 4 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index 20141cd9319e..bed8b3b180b8 100644
--- a/Makefile
+++ b/Makefile
@@ -832,8 +832,20 @@ endif
 
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 
+# If using clang without the integrated assembler, we need to explicitly tell
+# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
+# detect whether the version of GAS supports DWARF v5.
+ifdef CONFIG_CC_IS_CLANG
+ifneq ($(LLVM_IAS),1)
+ifeq ($(dwarf-version-y),5)
+DEBUG_CFLAGS	+= -Wa,-gdwarf-5
+endif
+endif
+endif
+
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
 		   $(call cc-option,-fno-var-tracking)
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 34b7e0d2346c..f8d5455cd87f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -843,7 +843,11 @@
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
index 1850728b23e6..09146b1af20d 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -273,6 +273,24 @@ config DEBUG_INFO_DWARF4
 	  It makes the debug information larger, but it significantly
 	  improves the success of resolving variables in gdb on optimized code.
 
+config DEBUG_INFO_DWARF5
+	bool "Generate DWARF Version 5 debuginfo"
+	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
+	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	depends on !DEBUG_INFO_BTF
+	help
+	  Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
+	  5.0+ accepts the -gdwarf-5 flag but only had partial support for some
+	  draft features until 7.0), and gdb 8.0+.
+
+	  Changes to the structure of debug info in Version 5 allow for around
+	  15-18% savings in resulting image and debug info section sizes as
+	  compared to DWARF Version 4. DWARF Version 5 standardizes previous
+	  extensions such as accelerators for symbol indexing and the format
+	  for fission (.dwo/.dwp) files. Users may not want to select this
+	  config if they rely on tooling that has not yet been updated to
+	  support DWARF Version 5.
+
 endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
new file mode 100755
index 000000000000..1a00484d0b2e
--- /dev/null
+++ b/scripts/test_dwarf5_support.sh
@@ -0,0 +1,8 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
+# in binutils < 2.35.
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
+echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129194318.2125748-3-ndesaulniers%40google.com.
