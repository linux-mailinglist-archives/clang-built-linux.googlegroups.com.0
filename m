Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNX77D7QKGQEVHW4I7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DEC2F3CBE
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:32:55 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id r7sf70478vsp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:32:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610497974; cv=pass;
        d=google.com; s=arc-20160816;
        b=kng1zuIQeOeUX28XwXWSmKefLsN9RfFKC+wVV9uDXYP2WCjrvXcIlnuTOQQQ0VJYXH
         EPBevBzu5eAwlbpkYf+YXowEazftDgWWfnaRyhtAL8pTmLCRbcVM0qCj6jVgIOcDCBGX
         WUlQJGdOdz4w/ZfYj63M22eaRj8tXDY/Jp5acT94Bt4Eekiodqyu2jdqvoR6OsdFu+dC
         H4afEe2dRgIvC3xUIo2tQ2J+JxeKy+rVll8I3UeG04dweSo0VmKMzuENZQgPRbaNZ3iC
         KfWiIW+S3O3zQ6veZqjKBF0/s7JyGotARAy+jU5GW1VmumVzAlZOgCaH9HrOptV5ujLr
         MjmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=1VPsJdd2aS4vsaMcfkvnu0/8Fb0S55Y9Dhx7HhssfbA=;
        b=L0cUGQCgka1s/UDp0kQUTrDFUO2VdU2WESIKoT3/hBmf8fkYRyGwPbkmFIlGKkaiTX
         mB9mZNs8hT2kisMDvr8FnwVsmuGghOyutTGVaL8NPeP+duEFbhYLiAnBQoMvRgOM6x4d
         ZUA0wS+FhKV1ixaykMA/huAMu/FpNS5vJ8c9F6n2ewgASLjFQQGV09xNClGfmxErHvH8
         i3kVZ6s1f13y6GwrreDXGQAPaCRCPUpsk7PhKqvWn2OoEiUdq5/w0ZbQ/gyBocgGE7Fl
         45iBh+xKYHbS4GzlE1DniR+boyeRQ4gy1WmqJgbl6DlV36VUIDnK+d4O1xK/yFlL5QvF
         UnUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ql7lCCLN;
       spf=pass (google.com: domain of 3tt_-xwwkadqdtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tT_-XwwKADQdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1VPsJdd2aS4vsaMcfkvnu0/8Fb0S55Y9Dhx7HhssfbA=;
        b=DFvrta/Zma6GveL8MJZt7pFc4KzDIcLqlrj+foF3AwPcKKdXuVbUKqo/eKEzlrJdQs
         9L1D7W3i9CcoUbldC5IlgnFwpnvEkQeQRWPxbPb/M8SqVY5iOuyutAMqnuGyuynaDVQI
         AVVUnzcRzNHGQQY5wee4MuuxHJ51DW0PUG7lVYp9rF5aSl2YxQgBoQl7U2tI/6LtJTS2
         EKCfCIFfFGKGTACGwfOXQwr+8R7ZjqY2K7awy0BiFuPIDdIgdwv8LejUXzsSsRHFThIJ
         U1xH3SOAkPmvpNdx6xguYJfoDEsR0pFsP6nqKy4ng31z+jlgjTtagMWZbLA72+K0UUZ0
         QuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VPsJdd2aS4vsaMcfkvnu0/8Fb0S55Y9Dhx7HhssfbA=;
        b=V5FWNbzNt1sRkvLohIVeXgWlJI6JFgrN8zpyowggFlEiPhE5FbnO3nnTpfrap+bSN1
         TYYJvndLRADA/mHVN9kK4IVSZX5L5o7xembA5U6c1PdN4ZkL3qWkGk+J50q/NooCMBJk
         dUI3y3A6o2ixSzc33Xndmv02o5DF1N29J8qdSOVkVUewypwxPOc9jTk69xgQN4hCKS3S
         7lskLg62j+LLs4ffOjdCBgF7xbqLNJSi50u12VWHhn9W30eICmFO2sC/2Hp8fX94ol58
         AKDA1pNikgonqjWj0/f6RsTwYHj4FgiHQSGjhcSw0GcKqe0doIcI4XaU05+xcZGBzhQI
         gD9g==
X-Gm-Message-State: AOAM532/bN1muUw5Ey1UFL7mYrtGu1S8MUW5dlLTJ5lObCCswn1EMECJ
	/SfG6jmlJQcMhiQIdpR363U=
X-Google-Smtp-Source: ABdhPJwJuhBwJQvoadhd4lIw91HOEe+ab8hVEwuFs4nXttJ3BcErXMZA10Byik78SJA/Lg5gATvKNw==
X-Received: by 2002:a1f:24d3:: with SMTP id k202mr2060466vkk.0.1610497974140;
        Tue, 12 Jan 2021 16:32:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f9cb:: with SMTP id c11ls31750vsq.1.gmail; Tue, 12 Jan
 2021 16:32:53 -0800 (PST)
X-Received: by 2002:a67:e9c7:: with SMTP id q7mr2205713vso.26.1610497973592;
        Tue, 12 Jan 2021 16:32:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610497973; cv=none;
        d=google.com; s=arc-20160816;
        b=cpXfs29I/QQHizCSuKA5Qt/KlQgMrvKCGojSIyM8+ZbAbvwlJ3R+ETBHRpUI5IwrkP
         fk3uNX/hTFfk3VeMbBrQ/iCFwYCdIAGOEaT+S95WmL0wZ8n1YMSRBVq6puj/wctN9WO2
         gjlTotRE1fmP6IfwE/uMlU3mmSb2IojPe37b4A3tFG7J1h5y4kBiG4yAL312rgOWRg/6
         +j0L5H6PIS4tSENIhL8gtYMG/vMIFDltl2qjU/qyHB/9khQ2qsOYQ+DrmzozuSIe3mmv
         MPiA3t0o0dKYaoBqIipROBgWN9veYSw7LJkaGQ4r9Ua5fN0uDGIJxqzE4QMq3LnWhbCR
         m4Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=zQ4L+JyR4fS6Zw/UsbG4Lq16kk6cB+cu31P+ux/3yCo=;
        b=ByGonTr9q7Xk8nsLkHZj4tryusRgGPsM5qSFuNrLlkvuyLnjBqT1vb4bTqKNrXCXob
         ruTc9DRl9iOYXNwBweabbbut7azbUXnlZ/DGGUQuREW04eiWArvrb4sP/092WDctiwxn
         9MD9AfZtao11rCwtLf0PS69IUjK2x0L3buczBEYHlk+a7zYAs27itBQPUKmuym6jJIQH
         QcNrKUmk7KulLXbYmumKMjM+CWyvATg/55GZegHkq9rowq3LYFjWHiOp+/MlGgLkzghH
         RGrtMXtElIvLwvViDpkrDavNJzxi32YhQpyP7WlzkygbHJCryrFcCedwCKK/Gyu0lNIW
         K7pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ql7lCCLN;
       spf=pass (google.com: domain of 3tt_-xwwkadqdtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tT_-XwwKADQdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g3si21452vkl.1.2021.01.12.16.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tt_-xwwkadqdtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w17so561478ybl.15
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:32:53 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6902:6b1:: with SMTP id
 j17mr3137592ybt.438.1610497973189; Tue, 12 Jan 2021 16:32:53 -0800 (PST)
Date: Tue, 12 Jan 2021 16:32:35 -0800
In-Reply-To: <20210113003235.716547-1-ndesaulniers@google.com>
Message-Id: <20210113003235.716547-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v4 3/3] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ql7lCCLN;       spf=pass
 (google.com: domain of 3tt_-xwwkadqdtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tT_-XwwKADQdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
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
 lib/Kconfig.debug                 | 17 +++++++++++++++++
 scripts/test_dwarf5_support.sh    |  9 +++++++++
 4 files changed, 32 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index 656fff17b331..1067cfd98249 100644
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
index e80770fac4f0..60a4f5e27ada 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -273,6 +273,23 @@ config DEBUG_INFO_DWARF4
 	  It makes the debug information larger, but it significantly
 	  improves the success of resolving variables in gdb on optimized code.
 
+config DEBUG_INFO_DWARF5
+	bool "Generate DWARF Version 5 debuginfo"
+	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
+	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
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
index 000000000000..142a1b5c7fa2
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
+echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113003235.716547-4-ndesaulniers%40google.com.
