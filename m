Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWWX2KAAMGQEUCOPTJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4984B30910B
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:44:11 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id y26sf1229854uap.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:44:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967450; cv=pass;
        d=google.com; s=arc-20160816;
        b=c4u/HGzRCIoA6Eg6yA8FXSK9EHeReI2OJsDhw1BBfbM8tOpjH7FdiYLxpqsRntvLiA
         aGl//KzpH2XjmDfCQCps9Q2iGn6CeVNnn9LZUqDpOHVuejTYsLONjSFxyysRyn6JHPwD
         kJzEKeRI6KrZ/greieoZSMxDVqOY1suDqIUqAwFgbuur8KRTxV2wwyxsifaGZf/WKH+r
         NxjWKurczyWtT7731W2+wcZ7Iqugb8LmAxeqFR2+BRSNCOjEQ+gyWc3/RFCSd9NIFhmN
         T7cuJ4RHcn5dGtRkqTttnnYx/Eh5J5zBpA1xQnC9M1ilcgLulmgRHphkYRyWloGL6NQB
         kkTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=BDm3Pae/f3ChaK4t6H1bQ+ds33NePtj/pHmKfwVlqWE=;
        b=i8wLRefRJTd48YX6GNmkwzt8BJStaEwuajrVeK7LPchpj+M5QEJLOhHm02RcaF138v
         0AOTRHvZnyD8ynEu1TRWzn0GuK1/hYRwNBa8lm+vbFYVhIHQutp2N81kkvOTjyNI30pf
         knqiCjRIY3/W6928tAEUvJ7U5nIAt13//7AjYV7INKbAzb3N0fkThlOyX1KhEgtcvcwk
         ZobxnMWm5zv+b1exol52FQqjmPqRzIdTRZlzGTm9Csu/6QeY95WQSuMEdlaXlmI9S9XN
         +2SwIRzmzOitjvWzHT5VaPT4l9FydsV5gmIgEivTscPhcdwdntPIOxIMaC4oA1Xuo6Xa
         TdAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s+z2URkp;
       spf=pass (google.com: domain of 32asuyawkaio1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=32asUYAwKAIo1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BDm3Pae/f3ChaK4t6H1bQ+ds33NePtj/pHmKfwVlqWE=;
        b=LaswcCXd9M8g9F/6fFXqVI6rVyIF6ck92FT1XDPdIHdUpdc86l2rdEOhQ6cDBYLI0d
         GT/0AFbGHRf1i8mNqdV2itr9q7YCkyblTUkofsof/Uy4tk+lfZG1FBxgkxx7ArjMEEQ3
         Dyy9YFS2lGaKsQmC1pJwokVDZEdOGHem3DiJTOyco4E2Rr+m2N0qZnbg/SapdQI/1zVT
         LFb4EG8m3Zy+2hf1X7ifqZ6NvJjupIlYWZKOxvB6p3jFwgplQvze9/YvGTgn/s2VeOQN
         M3GElYU6d6UXJh847li/HJZ0tlTFgBx8tywLBNRVFAX6AHwbPUDbXhxiZVr+JfwFSRXa
         3SLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BDm3Pae/f3ChaK4t6H1bQ+ds33NePtj/pHmKfwVlqWE=;
        b=oowoSOzHxxpeWH0hZ8FRh+gU9q6/Av3tWVbhOczk7nyTHbkL3O7V/VXByWn7G8vsS8
         vxgiC/xvbVqnZDZKl9S1+tT+H18JDj6whERTBz9grGLUlHN95Rz1xgIahJ2dILKXNuuL
         lREop4fDnCx3gEQKv/yI+mnh54EonYCV0yZHPjW5FmY9hSpug62QOhhhSEEpsgYwdZ3g
         khXzq6ZaT/6bfxT7Y3cUJRGyjcH8iXxNEpBb0DZLnVr+29daHMzuFfDfm4PfetdI+C4T
         Vlf3TjHX8uDYfc4HkFWv3fcofkuK0796GiI8F7K9Zl/M2wjZcaaZ5RZiRZTowWGz9cy0
         BTuQ==
X-Gm-Message-State: AOAM532BnPi0hAmoGYwGEDkztyTr/xvoFY9tPQhWh2pzyQBhp0Dj8DAT
	lT54C7P0jpQGi0l1TXJoP50=
X-Google-Smtp-Source: ABdhPJwfdAprWTSg5iki79LFGsfZl+Y9XqOrcctt9jc8qJo+5wuZG22RAAb8TRw8PgPzCsIAdTq43g==
X-Received: by 2002:ab0:685a:: with SMTP id a26mr4401136uas.16.1611967450335;
        Fri, 29 Jan 2021 16:44:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f902:: with SMTP id t2ls1373391vsq.1.gmail; Fri, 29 Jan
 2021 16:44:09 -0800 (PST)
X-Received: by 2002:a67:6602:: with SMTP id a2mr4644894vsc.5.1611967449864;
        Fri, 29 Jan 2021 16:44:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967449; cv=none;
        d=google.com; s=arc-20160816;
        b=0QSNYAO9Q3A2s8UQkrUJjZLlBPO6uNrvUyhFa8w3MtAkF0AOu1fuAwcIrT+0aegQOE
         FQQDihME4YxHHmTdZkS+WG/dojr0TubKvbUy3vfLTBHYrMWZKHbofZ+Ambzcf8FJBpp6
         /Ulk1kkeNDisLEwCHAGAu6dhHLsQElaSksKi1WtHHV/r8Zb/nIfkboQljNm20eoWWP00
         echn/mL6mIFuLDpvxukGrq8av5q5GuLmfn4kqhcUsI4IZs0TiwXpjva5Kb0tU23pSO55
         bRCvA2BFR5GKS1eIskGN2OhIeLIwU604R6BzzGN7bkTXSYOY84ZcXvFOLQ/WTseiVbXb
         EFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Ofun504N86O16xMMFIX9BZnji2IL0CpoNJxh7Yk7aGY=;
        b=vlnnQNmB2b/fktm5eqhU4XqlR1YdGdt0auyTXeyp0g4Qpt1l5ttZiqX4KnZbwFYI8c
         Z44drdGpvifnxkParh4seKX4lj4aAZu6oGDkJUYzGwmODZWxRrg46xNZtsOTZLWzzet7
         4CsXJ9NeaxkZy/Bu2wl+ty65F2RcrD4wLbCqqv0ywptzYYVcukua6cX4AMOp8O+9bFj9
         gxajZRsvskKk8EtkiTjJ1c4bW6nm9WOQM9QAT/kyrxHEg4g2mPf2RahmuNB8i4LQSGuu
         TXrmkFUfuMGRIjLoLPz8BS7Q0SIoldqV7wAhNMBDl7XEV5LAcJi80iOxHEn2DrdbfF3w
         z30w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s+z2URkp;
       spf=pass (google.com: domain of 32asuyawkaio1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=32asUYAwKAIo1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id e11si757823vkp.4.2021.01.29.16.44.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:44:09 -0800 (PST)
Received-SPF: pass (google.com: domain of 32asuyawkaio1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id a12so6535065qvo.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:44:09 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:ebc2:: with SMTP id
 k2mr3510569qvq.0.1611967449511; Fri, 29 Jan 2021 16:44:09 -0800 (PST)
Date: Fri, 29 Jan 2021 16:44:01 -0800
In-Reply-To: <20210130004401.2528717-1-ndesaulniers@google.com>
Message-Id: <20210130004401.2528717-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s+z2URkp;       spf=pass
 (google.com: domain of 32asuyawkaio1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=32asUYAwKAIo1rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
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
 Makefile                          |  1 +
 include/asm-generic/vmlinux.lds.h |  7 ++++++-
 lib/Kconfig.debug                 | 18 ++++++++++++++++++
 scripts/test_dwarf5_support.sh    |  8 ++++++++
 4 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index d2b4980807e0..5387a6f2f62d 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130004401.2528717-3-ndesaulniers%40google.com.
