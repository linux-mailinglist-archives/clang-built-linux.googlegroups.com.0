Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FN52AAMGQE34UHDWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id DD64F30EC91
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:40:49 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id 94sf1143548oti.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:40:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612420849; cv=pass;
        d=google.com; s=arc-20160816;
        b=FslLamx6fmk2bAe+7nIuhstcfpQSGeu+pxQPwNI2irIeGhYB1jdYOpN30H06wD3XZ9
         sd3ZSqhuCvGaPa67+33UU0h+ZVKGxBo/LQQRDXhqqeQqoGD21DuBujdQjOp/PYJjByhr
         SB00wyBXKWML5qV7edgAu0rsavMXjKAAaApCbnM+tPU2EbfpBVNBoKiFJ9PvjPzDc1Tl
         nshX4J5ky2HMivBsqOGP1SW9hsTR2cL+u1PqWbJuA2siFF/wNrlf+hmHHZxfwgZ8eCEA
         X/GlhV5TaaHKqO7PwL1s8Y8rxA1NplEl73ZCx7Es8nnFLKL/JUhVsPPYUrEh/278aLge
         THbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=7AUdbCWXft1L8SA7DEZT7uCY/11vsIDS4xYOi0+WVKs=;
        b=YbOMc4mwHg9wh1s6JYfeP7gJihvXfm3Mv9QoZ90cYpMeJ8dlDYas6m+1CFEhsvn7JY
         qNY9ibYZxrkNliUZ+69Lixsas+0BqbsfKXCMIqcLRGW14iuYl7lciTku3xwfrSqp+NT1
         3IcjxLQcK83KvkV5aGzV1EoUkjlEpPDYC5cJCtOguXdV8aWvhfqdKFMxN5OT5qzSifAW
         7G5g4CXCgVzqD20C/gqAh/qq9xGwlMmhutyQjwc6T580sCg72WRZuYDR/hI6cjWEXFhG
         cf9WAja7lU5XbqaOX6pSuwcyz+u+ArrFS/mh2BlWbVtdEkdg/iK+1hWxWQo7Fd4Yh5YJ
         Er8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y5YEpMRP;
       spf=pass (google.com: domain of 375ybyawkaji9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=375YbYAwKAJI9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7AUdbCWXft1L8SA7DEZT7uCY/11vsIDS4xYOi0+WVKs=;
        b=KvzrtLMLZDL97UUWVvlCUreY0txlh81YH6DGIvz+BMkXhGBlwNoWBN37js/Vs7E7k9
         troBuhBMxt5mvjXm2a/+QYSbcp4lw5PpRY9XqvmjBEbsjuWCtsxJLInBrtkUgvS8dtcB
         2XRVpo8sLKGryV9qV3kFalrbm8HDa+Thf92wVuiqv/+xFnafuFBo3HCrw/jys/0r0pIu
         bPa07mzxOjvWgooJC05rR9hIjaMMBV22kN3LptBW4JQmEUG5dKz0Vyk+9OXJwMgkPDiL
         kZnbbc6vnat7gQEqMHkfj1KJms+aN6g57xJATe1u9WW1+tAm3BxubiMmPIDdBxYvfCkS
         46Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7AUdbCWXft1L8SA7DEZT7uCY/11vsIDS4xYOi0+WVKs=;
        b=cxks1dkjr+qjATzZjTfNs/7aKdZ4aqihfqZkYtOjTIKbanIyfYJJzC6pSdRGXcIh5c
         uJVfitfYq0zolScasamBnxTD4rZPpProCEN+RJ/IshxBoorpIWlRLmHu55PzxHuMe1pA
         xcJx4G+78SuYnKEToB+ZFl2EUKEgbyUhdN0GUDPSNzEzTzknpN4a6RC+O8n7+y7foX5+
         HmdSOiwFpWeOZtLN52sVhPD5Hc/QlYEFvBsi04BenS2BsV9KnKnpcGnEoc/IQ0BcORXg
         ZZFSooim24/JukNwwR20jRz6yv3ObtwRX+yQBNJMg5ZW/YJ0w4Oe4KtVXrGwQ582tQII
         vUaQ==
X-Gm-Message-State: AOAM5325bs4Clidqe3sClNEfArpSMz6pP/tsPBtdZlPtI6VzsJA7QGJY
	MeB27MvRjHXvH+IYQXawNdI=
X-Google-Smtp-Source: ABdhPJyca0C5Cpjt1HH3xWczyBUoLj59/p3ROnW2omPbqPO6aQYvp5ufdjLM34aXhz0XsxqkfEYCtQ==
X-Received: by 2002:a9d:3604:: with SMTP id w4mr4600257otb.107.1612420848901;
        Wed, 03 Feb 2021 22:40:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1592:: with SMTP id i18ls1096751otr.10.gmail; Wed,
 03 Feb 2021 22:40:48 -0800 (PST)
X-Received: by 2002:a05:6830:1142:: with SMTP id x2mr4851160otq.293.1612420848353;
        Wed, 03 Feb 2021 22:40:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612420848; cv=none;
        d=google.com; s=arc-20160816;
        b=YiPjR8oegvs+avogZFoTdJih7bKL5wIM3wVtd0TzPjxAQU+0jOwfjoSXTPRhE/pSFQ
         3G8/t6gbGgx80FrQTRSBnt3K4lhl5Jby8fw+IXEWvQuKDXWYT1jB1yVd3beCmd2tpwZI
         d2e3ptLFjosQaUNKa3Etj9wJ/pczhPCD+whjS+YKa2oRA2xGKH5VNasd3caJ2H3Qm2rs
         biZ5ZT0YofTZE04mc/XTVvFw2ErmrTJQK1yYmzSPYH4sz+fA5kytxyWVKOWCPALoMUiO
         vXUJggy0KO36JLrDRin5BC1cUJs8/i6xg+HdhFzx+Fbh+1khxNI33C8xyEos1m8ZRzPg
         czaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=1kYL5naolZq/u7s+YLc6NTOf19bf1kc+RN2+cQNmUto=;
        b=mlNRrpH6/Uz4xRtWpqDMtOpBYHtsCkfv50avG31hRZu6/rBWFHDXn5vG0TxNwnDnNV
         cV8XiFbL4Hyu/v5nY0ZdVvTn5hQ6rSuWn3y2T3X4Jx/M0Tsny/fA4XjpOIjqzjk8DP9d
         OpnErIM4fx4k6R+iRTjZoEnC5Kx6pXUGZ+p80hsyObEslT+HP2BiSI0BwMuMcplJeGfs
         B+XDYyj8+ndk6y8xbwbBCXvMl9/bmfNtnuo2mDfjDFU7r0pXdIRjocAkGBVrbiMiwCQ+
         Di9iFkMxCFMA4A7J/zVeAdHO0Lf8j0bXb4ZaW8bo5Xf19tfUfRK7UoxnxXIBu0HuQNs6
         cp7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y5YEpMRP;
       spf=pass (google.com: domain of 375ybyawkaji9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=375YbYAwKAJI9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id s139si322382oih.5.2021.02.03.22.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:40:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 375ybyawkaji9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id g80so1731372qke.17
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:40:48 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:e070:bc84:c4fd:eb02])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:2ee:: with SMTP id
 h14mr6477655qvu.34.1612420847819; Wed, 03 Feb 2021 22:40:47 -0800 (PST)
Date: Wed,  3 Feb 2021 22:40:37 -0800
In-Reply-To: <20210204064037.1281726-1-ndesaulniers@google.com>
Message-Id: <20210204064037.1281726-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210204064037.1281726-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v8 2/2] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y5YEpMRP;       spf=pass
 (google.com: domain of 375ybyawkaji9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=375YbYAwKAJI9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
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

DWARF v5 is the latest standard of the DWARF debug info format. GCC 11
will change the implicit default DWARF version, if left unspecified, to
DWARF v5.

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
  One thing is GCC DWARF-5 support, that is whether the compiler will
  support -gdwarf-5 flag, and that support should be there from GCC 7
  onwards.

  All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
  option that enabled some small DWARF subset (initially only a few
  DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
  after DWARF 5 has been finalized) started emitting DWARF5 section
  headers and got most of the DWARF5 changes in...

  Another separate thing is whether the assembler does support
  the -gdwarf-5 option (i.e. if you can compile assembler files
  with -Wa,-gdwarf-5) ... That option is about whether the assembler
  will emit DWARF5 or DWARF2 .debug_line.  It is fine to compile C sources
  with -gdwarf-5 and use DWARF2 .debug_line for assembler files if as
  doesn't support it.

Version check GCC so that we don't need to worry about the difference in
command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
validate the DWARF Version in the assembler feature detection script.

Most issues with clang produced assembler were fixed in binutils 2.35.1,
but 2.35.2 fixed issues related to requiring the flag -Wa,-gdwarf-5
explicitly. The added shell script test checks for the latter, and is
only required when using clang without its integrated assembler, though
we use for clang regardless as we do not yet have a way to query the
assembler from Kconfig.

Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
recognize the new additions to the DWARF debug info.

This only modifies the DWARF version emitted by the compiler, not the
assembler.

The DWARF version of a binary can be validated with:
$ llvm-dwarfdump <object file> | head -n 4 | grep version
or
$ readelf --debug-dump=info <object file> 2>/dev/null | grep Version

Parts of the tree don't reuse DEBUG_CFLAGS as they should; such cleanup
is left as a follow up.

Link: http://www.dwarfstd.org/doc/DWARF5.pdf
Link: https://bugzilla.redhat.com/show_bug.cgi?id=1922707
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: Chris Murphy <bugzilla@colorremedies.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Caroline Tice <cmtice@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                          |  1 +
 include/asm-generic/vmlinux.lds.h |  7 ++++++-
 lib/Kconfig.debug                 | 18 ++++++++++++++++++
 scripts/test_dwarf5_support.sh    |  8 ++++++++
 4 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index bed5cc150009..8b2deca568ee 100644
--- a/Makefile
+++ b/Makefile
@@ -831,6 +831,7 @@ KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 34b7e0d2346c..1e7cde4bd3f9 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -842,8 +842,13 @@
 		/* DWARF 4 */						\
 		.debug_types	0 : { *(.debug_types) }			\
 		/* DWARF 5 */						\
+		.debug_addr	0 : { *(.debug_addr) }			\
+		.debug_line_str	0 : { *(.debug_line_str) }		\
+		.debug_loclists	0 : { *(.debug_loclists) }		\
 		.debug_macro	0 : { *(.debug_macro) }			\
-		.debug_addr	0 : { *(.debug_addr) }
+		.debug_names	0 : { *(.debug_names) }			\
+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
+		.debug_str_offsets	0 : { *(.debug_str_offsets) }
 
 /* Stabs debugging sections. */
 #define STABS_DEBUG							\
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 94c1a7ed6306..ad6f78989d4f 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
 	  It makes the debug information larger, but it significantly
 	  improves the success of resolving variables in gdb on optimized code.
 
+config DEBUG_INFO_DWARF5
+	bool "Generate DWARF Version 5 debuginfo"
+	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
+	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	depends on !DEBUG_INFO_BTF
+	help
+	  Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
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
index 000000000000..c46e2456b47a
--- /dev/null
+++ b/scripts/test_dwarf5_support.sh
@@ -0,0 +1,8 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
+# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
+# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
+echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
+  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204064037.1281726-3-ndesaulniers%40google.com.
