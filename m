Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVEHRCAAMGQERFO2BHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C3E2F8725
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:06:29 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id i9sf5054764oih.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:06:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744788; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8qZMLXyKN9+fU90fOtL9A+SL0GIC0bJxFvXm85+YnRDuvx7uoPXoLIXUcKD73dV4R
         yJFrHXH5p20/2ozj83bOwGW/N79nsUYC/UrKqChYhFPes+PmNr2ThPiV2UQxCKDDupRf
         bPe53DGmqMj/b1tEuobQGfqrmZZNoLgofnhg7gFg9hmVndBKaQ9TurXc/2bFSYCquc8R
         zgReYwGbGD/Ivbz6s8pyeXhiz9vcQWCwiCUoCAaNySUH3r9FWRxOtU2yzcKZuIhzXJBt
         gNCM6VJO/mB59HIRoTQCiiEbUFNU58QPKGf810oQVM66VwntuwJOd+sFVymuKVrF/Ds/
         xUpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=zmB2s2K1oAc8Tj4PbRkThL0y8XcjrfJmNcIW/KRIM84=;
        b=J2DODxgMLd5mpGy5vinZuxUId2kvR0s4qgN3JygW68FWcTMA6BjFDYW8AScWPLf7YV
         foNJ0hrZsVin5YMkAGbAXsod3JWZiq4N7hb1Kkl4XWlEAIP+hZg6AU3UHk0sZM2TJGaQ
         izc8o7qdGfsLtIBBesVWYSWB6e506bec3pwmFWooHsRghOvF5EeXpzKAT85KffNUkBnP
         j/qKhnsQpdi+P9SST5yZiBdHeZnGNImApY74gHPHOJyRRQvYR00ub3PydIVHMDcauqUT
         ffcVA8DGU7cY92bGTl2+U/dq7FEQ0dlgfnsbVTIm53oGhjDN4EinpwN6TgLlnj9Q2cew
         MsEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhblPhm4;
       spf=pass (google.com: domain of 30qmcyawkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30QMCYAwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zmB2s2K1oAc8Tj4PbRkThL0y8XcjrfJmNcIW/KRIM84=;
        b=iVfkXXwmY93nsBmEXGjtrBq+HNlenQY29zbto8X3nnDQyC5KLLfZZoLbQowRDNgWUX
         eHWhzNWvr6P9MZ+79ZHDK9VuX+YSYi1O15/XB/tOpmvunY/cLXJtFAV1dj79hfzD43Vo
         mTIxh0qctVbJIZXHkzcAzEuBBW3tH90fctp9aURW37ymrBECJhSTkMe9xWwLiHhHznnY
         4pLbiQr1F+3/Mw+f2ObLUvh4ZvaQnydpux+xSiw5KFYr2zWxZFmArr0K1WNQ2MMJ0Z2J
         eAA3xq1EdkcGx4iYwIYEBVkSc5mGnQLSCim7rL3iNsS7FQoL0H5InNohaoGylV7btvAo
         cVuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmB2s2K1oAc8Tj4PbRkThL0y8XcjrfJmNcIW/KRIM84=;
        b=M1XOyMJlO6z6Hukw0WNl/TNDckHrUXQandnNNgZt7g0c9ziWXlYfnJe1lYOefoKwSe
         xUgzjyJJ54RPqyFiLb6SWwx6e750f+PEjlB4yQHHW+AnxX0woncUnPohM3qdpjv0DiVp
         vhtrvoZu+x3CerEh/B1uAIdMzx+P/hm+3H7yaUQ2aUqYJreUbSJ1HmSlCGUs8qIGWw4J
         ecZHXR4L0ukwvPJq8vE+WkW9YNsReO18jaAqfy1R+6iUgHM7NZqXBwFwmyYQ6ZXsaNJQ
         1aX2gHMABCg8Hdrt8gACbtXlJZe1MAHZN8bYrH+Yxf5WzHAw2yHrrDtc66jpkV0+CAlp
         hOtA==
X-Gm-Message-State: AOAM533euDS47mr9K6nup2iptFM1h9YE3qxEVOQhZD1cWT4ApCCzaULB
	JFTxehl08zLlwif2iQbw1mM=
X-Google-Smtp-Source: ABdhPJyDV5LnWSdmTORRd3kU8jLZm1fiFITS5k1iZ6ufnuPThWrn+Z4jukydAZLgvLzDzQgJl28ziw==
X-Received: by 2002:aca:4d4:: with SMTP id 203mr6849586oie.113.1610744788709;
        Fri, 15 Jan 2021 13:06:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c95:: with SMTP id q21ls873192otn.7.gmail; Fri, 15 Jan
 2021 13:06:26 -0800 (PST)
X-Received: by 2002:a9d:7344:: with SMTP id l4mr3685049otk.181.1610744786492;
        Fri, 15 Jan 2021 13:06:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744786; cv=none;
        d=google.com; s=arc-20160816;
        b=c2xfwnhAxusZRWJDbzahEiUAN+3frNZ4WqQCBYzbu30hjQzdZo7rcpqXpiRRTf6pDv
         KwtnxOCQif6EBASGTn7+WhdR0JPGTi1YuHQFzA3WgCESZPUtvUcQLKBm/5+LSogimXoj
         okI/KQkQNIhoQg1vjNVbEITuDP6hByZIjfdmdZPhmQDCd9UTEW3XiBWrpOiRWuCdKc4n
         pcaJlf5DxxS3p6PC5ysXcF2cmx3UdbEK+s6ERE0oiaf4OWkaSznBCUIN93GRyJDW7h5b
         6J4VFoDe7bEX5u9wm47oViOGkKzsavOJWC5IOUIx+FMPVx7ST1bMZjnMWgBgZgX+xp4d
         y0Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=hLpMcuoMrHdKRuRQ10ZvVy2SGH1r/TsEXPc2P6puki0=;
        b=FKLMx0exEhWLJjoi2y3RlVq/2W2OuBGKfyVD53xrgmLRAric88HKjW/sAFz+pXOdAS
         pR9cG7Ic1sRp0wvnEt3EHbyli4RSuqd5f8+2jsD3ZqQ6hOHg/Quv39quwpoG5swru88x
         ZGoOc+7QYbKUk0oU4R5g7URwhH3b+KxDgih54vr/lHt7r+ddGvh4MPF8lErLxvNIpEXP
         NmVyg2zFkhVKWj+hPXHx8ZV5T/+/6VBDG6Xn7VFBms4Ye3HVLwX4SfoiSWHaczxl77jM
         CiaWZXHT3qDt9rRcehQgFYvJAFROny6kl65jUicxn3D3smXgWQGo+CEUJdT0ARHC5Wm9
         FIag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dhblPhm4;
       spf=pass (google.com: domain of 30qmcyawkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30QMCYAwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id f20si715790oig.2.2021.01.15.13.06.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:06:26 -0800 (PST)
Received-SPF: pass (google.com: domain of 30qmcyawkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id m65so3910495pfb.20
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:06:26 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:ac09:0:b029:1a9:dd65:2f46 with
 SMTP id v9-20020a62ac090000b02901a9dd652f46mr14422249pfe.15.1610744785693;
 Fri, 15 Jan 2021 13:06:25 -0800 (PST)
Date: Fri, 15 Jan 2021 13:06:16 -0800
In-Reply-To: <20210115210616.404156-1-ndesaulniers@google.com>
Message-Id: <20210115210616.404156-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v5 3/3] Kbuild: implement support for DWARF v5
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
 header.i=@google.com header.s=20161025 header.b=dhblPhm4;       spf=pass
 (google.com: domain of 30qmcyawkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30QMCYAwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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
 Makefile                          |  6 ++++++
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 18 ++++++++++++++++++
 scripts/test_dwarf5_support.sh    |  8 ++++++++
 4 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index 4eb3bf7ee974..1dcea03861ef 100644
--- a/Makefile
+++ b/Makefile
@@ -828,10 +828,16 @@ endif
 
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 # Binutils 2.35+ required for -gdwarf-4+ support.
 dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
 KBUILD_AFLAGS	+= $(dwarf-aflag)
+ifdef CONFIG_CC_IS_CLANG
+ifneq ($(LLVM_IAS),1)
+DEBUG_CFLAGS	+= $(dwarf-aflag)
+endif
+endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 49944f00d2b3..37dc4110875e 100644
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
index e80770fac4f0..658f32ec0c05 100644
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
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115210616.404156-4-ndesaulniers%40google.com.
