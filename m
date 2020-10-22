Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCV5YP6AKGQE7Y63FJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC562955FF
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 03:21:16 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id d21sf129227pjw.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 18:21:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603329675; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZsYdSahAEnTk0O8i4T0ptrM81fD4qyyFUZljhcSzHQMiwWcLPa6ktnVjiKD6ei/Zn
         jyRmE1dwweRErwWRK6P1O+l0MFRFCnyHT2no5d/KWJKjgO6/m0iu43LIJoBvmvb1r2/D
         qfPWIyfyNwzrSuPr/5+baJxac/rN2HF4xsTpAQAYx3f/8Vm0qdhqFiszhmgGkiYHCdmE
         tX55m5jOsuuy6IKHTZqmsDsP3w1fg2G00gDxpBdpv3UhpIo+bvRRttUokU6xVGrlYRw8
         E7nUXuP99qkMVXmMNqSGbFUHsHnAu29lbTT3N/sXP6nnqkZfRUf/qbkfogJ1SsEqsUAY
         SREQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=pjFnEOenotyZ3zKm+p+Ia6brbyxbYysfw7QdHt1o9mc=;
        b=lfC9EtWNASDtPKMK6okTmCu9lEYWeB+op/eczaG8ubhZQEgViUM2vJz07b5o/U1+B7
         MFBa698Y7Nn7i0sm6nyrSp0AYhcWZ0MwBUxg/xS81mYhMlJG7HSDHGNFtmk7XD8HO4Tq
         unS3rFKhm7cr4zgSO+63PYzGI9Ta1nzfZYmGI5JD1hIPZka/g1YHqgtBg2VeInBXvW9Z
         U/Pp1z2Hjrt+d1R1bCAMJy8QppYLOWXJ/mmR41ZsQNw4P2/HyQJck8z4GoWZmcLD4ZeX
         LDNCmhnbeovqyv5//cYQnlXX4BxpTyWSyr4C9lBke4fiJkBUUfi+F1SGS6geX6Es9KgI
         6VRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2Rk3NTN;
       spf=pass (google.com: domain of 3id6qxwwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3id6QXwwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pjFnEOenotyZ3zKm+p+Ia6brbyxbYysfw7QdHt1o9mc=;
        b=cGnoBUzYrd4lywea79wPpFjpK3uBKgeGUeFOi+7bLkY6+KSIIUGMRGLovRkFCYk5NT
         ZtHGmdvyUT1xzadAImuCzFFWrz7nm/TmZ/wbQVlTfjJJXHF+vOdSBYZTGb/lmDqw6t7X
         djgBcuiodZkT+iAIuE45BGjZxu+SKm7+ri39xSTbF3RkRX0nRsSqmrtSfKuvR5HdZ3PC
         wHUjII/fa329kvBYFRc+onxGMLIebhwRA+VZgHvNlnq2LZv0BVHYnwwf+f6m8v3lfmen
         OVYq/qb6HVsPAB9bIMuQ4zwy+sIRRc8A6/5SPmwKbe7DpGJI5uY2cETpZRbEg3mRoOUM
         t8zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pjFnEOenotyZ3zKm+p+Ia6brbyxbYysfw7QdHt1o9mc=;
        b=XjGTs6HMukJ7ZjBESTSB44uv2FufcQ6HJC5ga14Ts4LCVmUaQ/cDXCZPjVsP34NRyr
         zWVw/WD5kSBw9Jal7m1Ewj3GrTlfn7WKb9MtL5VI+mHYxnmaOeGNZ9GlXFb1IN8FAYNK
         0BhozZ/4p97uuqg7i0KpHI4kFIOEyRNbTvz6w3SKj6u6dg60Zig06mVDNYxz2nrN48cx
         v53JBP40bIvQDR+wZyNeAMskC6nDA51/QkRoROeyA344S3UWg2/gF5/H6Huy6i62JSql
         Ao/4yNCHPL8aN1qqcl09rfyqlEG0xP0w0JlcPz1MyZBaX6LkkMw6+EFoi3kjBSKc15fl
         qdHQ==
X-Gm-Message-State: AOAM530iLaS+ZBn0uvcju31Y3isNzMb9LyKTBxqTXpeq+aq1GdRCy4Ty
	IhZ5f5t2CV/O4l7N6sCXms4=
X-Google-Smtp-Source: ABdhPJwumJnVlH7AOfTzKBMzP1e6jbF3TKnh2O6dulNGnA/B4lPX+L4S/5SBA4TsbTviOUo/rUNfZw==
X-Received: by 2002:a17:902:b604:b029:d5:d9d6:1938 with SMTP id b4-20020a170902b604b02900d5d9d61938mr70876pls.52.1603329675110;
        Wed, 21 Oct 2020 18:21:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d4d:: with SMTP id i74ls520185pgc.5.gmail; Wed, 21 Oct
 2020 18:21:14 -0700 (PDT)
X-Received: by 2002:a63:ba49:: with SMTP id l9mr304446pgu.246.1603329674558;
        Wed, 21 Oct 2020 18:21:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603329674; cv=none;
        d=google.com; s=arc-20160816;
        b=aUzYJzX78Ra4yLg7ZcYZ5tJ5Xrh2FQAc5KtmcQlr+lcOSLeXRfcUv9m94zq9xzIV4j
         LciC6CIRvSDQDqBGAQGiXnVu8awNcq0wWr78JPSfJtpkKqY7M12WgRsRDHmFYJGaR5Nf
         OkTRRWhVVAkKTDRhtaRR+Y4wLkbaX/Rf360DCXNWMX9GGQ46X/+jVhsCMwEyyjcfApXp
         91SRaP4e/8LZyiS071vAmxXowovGzmOAefaYSoAuJ22LmscLrm2jg7EKxkmSVjUouUGL
         PrGjAWeEAiTSIlBku1Mf0EIYmdeCvW8gprGhLk4kxGX3lfFhGBwGvhk8k0KFbCA8W4T5
         g9xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Js6xKSsQarFSzAqlLNbqSKDvsIAL2Ulu7vmD2P/qCQ0=;
        b=pfYbHvhIbXM3xH2CFJKsSVgCXSIjJCzDT/2s2N3KjYXxoV+vB+v6QLtp+oA3EgqdXr
         eLtVlJXJVl3Ht26ldbgO4LSxl0JilcDCsRpvrbcaiAi3auP8IL6zCEcqUzW5SiN/zH58
         Vgv4gkEeaTzmonk4QiEtJ9iMfpU10BlYJ3S/Guqc3qda6J+n/RbMecRWg8ZZAE6mzddg
         ixSysEDFAiATZCDjrWQBeqRIAHufZNdDyNeeBjb3aqpOUH7e1E+pEkdf+bkGYp0gcsXP
         QYoBK3j3WK2MOXUB4VKJGL8j4Ul6DmYJFC3qf6gnhJ6HbvWY9RmVTftC/1EKRHvfzo7H
         BtAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2Rk3NTN;
       spf=pass (google.com: domain of 3id6qxwwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3id6QXwwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id i4si13342pjj.2.2020.10.21.18.21.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 18:21:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3id6qxwwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id d22so85461qtn.0
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 18:21:14 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:46a8:: with SMTP id
 br8mr234132qvb.24.1603329673641; Wed, 21 Oct 2020 18:21:13 -0700 (PDT)
Date: Wed, 21 Oct 2020 18:21:06 -0700
Message-Id: <20201022012106.1875129-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
Subject: [PATCH] Kbuild: implement support for DWARF5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-toolchains@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G2Rk3NTN;       spf=pass
 (google.com: domain of 3id6qxwwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3id6QXwwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
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

DWARF5 is the latest standard of the DWARF debug info format.

Feature detection of DWARF5 is onerous, especially given that we've
removed $(AS), so we must query $(CC) for DWARF5 assembler directive
support. Further -gdwarf-X where X is an unsupported value doesn't
produce an error in $(CC). GNU `as` only recently gained support for
specifying -gdwarf-5.

The DWARF version of a binary can be validated with:
$ llvm-dwarfdump vmlinux | head -n 5 | grep version
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

Make CONFIG_DEBUG_INFO_DWARF4 part of a Kconfig choice to preserve
forward compatibility.

Link: http://www.dwarfstd.org/doc/DWARF5.pdf
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
RFC because this patch is super half baked, but I'm looking for
feedback.

I would logically split this into a series of patches;
1. disable -Wa,gdwarf-2 for LLVM_IAS=1, see also
  https://github.com/ClangBuiltLinux/linux/issues/716
  https://github.com/ClangBuiltLinux/continuous-integration/blob/master/patches/llvm-all/linux-next/arm64/silence-dwarf2-warnings.patch
  that way we can backport for improved LLVM_IAS support.
2. move CONFIG_DEBUG_INFO_DWARF4 to choice.
3. implement the rest on top.

I'm pretty sure GNU `as` only recently gained the ability to specify
-gdwarf-4 without erroring in binutils 2.35, so that part likely needs
to be fixed.

 Makefile                          | 19 ++++++++++++++++---
 include/asm-generic/vmlinux.lds.h |  6 +++++-
 lib/Kconfig.debug                 | 29 +++++++++++++++++++++++++----
 scripts/test_dwarf5_support.sh    |  4 ++++
 4 files changed, 50 insertions(+), 8 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index e71979882e4f..0862df5b1a24 100644
--- a/Makefile
+++ b/Makefile
@@ -828,10 +828,23 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-KBUILD_AFLAGS	+= -Wa,-gdwarf-2
-
+DWARF_VERSION=2
 ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
+DWARF_VERSION=4
+endif
+ifdef CONFIG_DEBUG_INFO_DWARF5
+DWARF_VERSION=5
+endif
+DEBUG_CFLAGS	+= -gdwarf-$(DWARF_VERSION)
+
+ifneq ($(DWARF_VERSION)$(LLVM_IAS),21)
+KBUILD_AFLAGS	+= -Wa,-gdwarf-$(DWARF_VERSION)
+endif
+
+ifdef CONFIG_CC_IS_CLANG
+ifneq ($(LLVM_IAS),1)
+KBUILD_CFLAGS	+= -Wa,-gdwarf-$(DWARF_VERSION)
+endif
 endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index cd14444bf600..0382808ef9fe 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -828,7 +828,11 @@
 		.debug_types	0 : { *(.debug_types) }			\
 		/* DWARF 5 */						\
 		.debug_macro	0 : { *(.debug_macro) }			\
-		.debug_addr	0 : { *(.debug_addr) }
+		.debug_addr	0 : { *(.debug_addr) }			\
+		.debug_line_str	0 : { *(.debug_line_str) }		\
+		.debug_loclists	0 : { *(.debug_loclists) }		\
+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
+		.debug_str_offsets 0 : { *(.debug_str_offsets) }
 
 /* Stabs debugging sections. */
 #define STABS_DEBUG							\
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 537cf3c2937d..6b01f0e2dad8 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,14 +256,35 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+prompt "DWARF version"
+	depends on DEBUG_INFO
+	default DEBUG_INFO_DWARF2
+	help
+	  Which version of DWARF debug info to emit.
+
+config DEBUG_INFO_DWARF2
+	bool "Generate dwarf2 debuginfo"
+	help
+	  Generate dwarf2 debug info.
+
 config DEBUG_INFO_DWARF4
 	bool "Generate dwarf4 debuginfo"
 	depends on $(cc-option,-gdwarf-4)
 	help
-	  Generate dwarf4 debug info. This requires recent versions
-	  of gcc and gdb. It makes the debug information larger.
-	  But it significantly improves the success of resolving
-	  variables in gdb on optimized code.
+	  Generate dwarf4 debug info. This requires gcc 4.5+ and gdb 7.0+.
+	  It makes the debug information larger, but it significantly
+	  improves the success of resolving variables in gdb on optimized code.
+
+config DEBUG_INFO_DWARF5
+	bool "Generate dwarf5 debuginfo"
+	depends on DEBUG_INFO
+	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	help
+	  Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
+	  gdb 8.0+.
+
+endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
new file mode 100755
index 000000000000..82c0eea45845
--- /dev/null
+++ b/scripts/test_dwarf5_support.sh
@@ -0,0 +1,4 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+set -eu
+echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
-- 
2.29.0.rc1.297.gfa9743e501-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201022012106.1875129-1-ndesaulniers%40google.com.
