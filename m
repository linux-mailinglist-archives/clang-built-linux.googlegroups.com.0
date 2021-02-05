Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDOS62AAMGQEFAA4SNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBD9311243
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 21:22:38 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id n23sf4207486oot.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 12:22:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612556558; cv=pass;
        d=google.com; s=arc-20160816;
        b=JAkUr0cgSKcGhCl2WEyZDUKDHPS8vXf+Spai30s3j+UxQq48OQEMjjRaRTWzBbIS7e
         JLOsltWH5uSsTgeFWSTvnSRPoBAjTTCwtLlBWhrvcZhRbNAr4AOCRxS8NT1W6Vf2XYKF
         nsrjkjdV4vgyonRapLO2hTbpdR12LNx+URgYBW6JgZLSwyfNWzuyxRw1A4tiN5UZ+jHr
         M3HealvxLzzGcX0+Ck4uHpfy2kywqdMTndXeBRlgdJlC0kknWZU5cEd+VlagOfaoAhMd
         HVER8/1HCchaGXcC3VLVgV65VJyLhgHq9XODu7mGv3h0OwsOAIyza60BhKYAtYy2t83E
         U3Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=wB2S7liAbYfGclH+MEt2Lw2JC0I/qPMUGDk6NVYnR/g=;
        b=CDbyGL35owGRTYXf0VjBHjT1QSwYRM2M/QgKxa3hqtatyrmH1cEzNVpgqScejAdUEq
         4zugoGB7cGzcUU0ZZez13isMTmnq63Ty66VhQ0EgfjjdNKhy0Qot0nXiErAwtyxEs4Hf
         u6KWWwrlSXVqJ0dlMeabf2PYCTYoh+D1PrYH7hnwBPWwbgQVJLN1YaaZ6Uv21G6TycRz
         YGIMpnF6d3loGBTD9y0batYdtGrrV4KIcEyQLaNX1p14vrIFfE6MfDdDdBEzBf++65F5
         yVL2GJBzYp3JctRmzk7vKKmVHbm6r7T3k1nMTC7V6nTbrez0UWg9Q0ZsRdv0tLqZSrW/
         ZU9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="UzSV3/Ey";
       spf=pass (google.com: domain of 3dkkdyawkanskabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DKkdYAwKANsKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wB2S7liAbYfGclH+MEt2Lw2JC0I/qPMUGDk6NVYnR/g=;
        b=pr/0rdMn7mwY8NUrtg1VnHAIlQEaMnjio1iHQr7QxJaXCp+E+XkJLSsYrnZcosVmZK
         bm7fLKSrRyUUEm25Kk4b12nEZfYy2/swWhRahBLJLEBcBRCI1QfW9y9kLqpxkzK4nHdh
         e+uJgIrMXklCLGY2haAY7xZ8oEPeykR01GV6NVlql2paIkTlh/1+RuIAa8VRjIZQcjAU
         L9E882zF1bZW5QPiy1Rxst0NCem5bFxRYuFERmFA4k+lviqpk3afPl0mMSTJ8AOJDojw
         pwi4npG5HQSuPaTU+zOVeqHoDQpkqRKYhXRMNqZeenpPUUdyiBlv1QEQtNwuKAdMA9Jh
         3FKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wB2S7liAbYfGclH+MEt2Lw2JC0I/qPMUGDk6NVYnR/g=;
        b=qhwxb/BLBt0kKRmLQdWMzqMrmTjSgfAyY34LIENrrEccMcEFdN9Br8JATYrswNB5Et
         fANpMs+EcydK9MMwqWpRKoRDApxyyfeDjJSFpPn5UnH6zeGaVTldoLZmL+2BZvDnqDJH
         QK7t11q+VDtJ8yXAKvBjxwl8C8aE0yHASupEEM+FY8ooy/6TwnFmKBcplgXPatc4p9Bz
         APRqc03gNdPlDWBeoSYFefEdgD5bnnb3EOtKnhR6cHc6f7nGCf3ak6++NFNlhesMRHMR
         +0TZ1N2Cn0bVJpKS0pV59nq05gRhQjtRExBLBp5hLiJ9v8IDg8nxgZveNDjUAVT9pEqy
         wPvw==
X-Gm-Message-State: AOAM532LYZuHxQ35DkVo+lNPOBdg9TiQuLowOx1NXGrZ119wX6QIPPyR
	61khhMopialxs0DBuQ8eBQA=
X-Google-Smtp-Source: ABdhPJx+WlnxdSF1vSJ6fi0UnJ1+gfrA0cTXr8rY+CvomjgIaPxDlMQ+mr52Ik4GW3/7xJzlpJC3/Q==
X-Received: by 2002:aca:c655:: with SMTP id w82mr4110239oif.165.1612556557890;
        Fri, 05 Feb 2021 12:22:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7290:: with SMTP id t16ls2551707otj.11.gmail; Fri, 05
 Feb 2021 12:22:37 -0800 (PST)
X-Received: by 2002:a9d:4b05:: with SMTP id q5mr4677238otf.228.1612556557451;
        Fri, 05 Feb 2021 12:22:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612556557; cv=none;
        d=google.com; s=arc-20160816;
        b=d5FfyaiS6uMSH9EbhjYP9NNrlTa5/DIbZelZBY9yKBERHsQ1ZPwVtuhuw0i1KQZlT7
         Qoyugyrj4xKEeo7oJaIhbu79iSkfAKj9ZUCAS4b12GS9wJlN/7Wxlb3ZAtZj84JrVgY3
         /F2Yj3/Ped2R8PfJCeG3o/AoDkagSvkCS/Du7VjLgnlZXfDwaAWgjS3CUppxOseVUnF+
         gyVIDJj+bTHEYcWm39MGgkMjLQvWUsfIpZq1i6j+qmXS9eZjiFxLpErEWKXiKJ8RR89n
         fvJMQqg5m2Qwf+Lhw/RNLG+RndyAKCnbDfJenQvfCXNVGbkcJ7tRXRt0NWKCJ8Vph3uB
         BTTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Ac6X1Rdkx1EJk+C0lhpfh2FkmSOBw6HTNuqApzD6R7U=;
        b=dL2iVDjkQO9yCh2V0Ux//UkvUiFJ5Hce+etIDWBcsy3iyts6imXVoYO6pl+6Lk7bJo
         BsTPJZQxndf8BFeVI74IjodgyP3vm+7iHXPi6wDiygGWW0ByDTRDBye5Z0jWKLYhNl2f
         32Mf9bM8Mzuv4n0kee2vu1+5b6olop7ApbGr0D/QkYvajiEU8oF2ZODjLNIBl+v1pnsW
         5KCRcyLEVZiPl1vNmFknZGviZP+pYhpPXKpBCZTsYteKkVJQpKTGOvF2dYbjGeYGrDHy
         eSkheuMBVoWaeLi+DpSz+C1mgyajSKo+lINiDg0T8EX6AfPtHTi7IZg6a5b7bwo7AARc
         emAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="UzSV3/Ey";
       spf=pass (google.com: domain of 3dkkdyawkanskabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DKkdYAwKANsKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id g62si517876oif.2.2021.02.05.12.22.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 12:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of 3dkkdyawkanskabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id z10so5788791pfa.1
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 12:22:37 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:8d83:: with SMTP id
 d3mr547398pjo.0.1612556556283; Fri, 05 Feb 2021 12:22:36 -0800 (PST)
Date: Fri,  5 Feb 2021 12:22:20 -0800
In-Reply-To: <20210205202220.2748551-1-ndesaulniers@google.com>
Message-Id: <20210205202220.2748551-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v9 3/3] Kconfig: allow explicit opt in to DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Mark Wielaard <mark@klomp.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="UzSV3/Ey";       spf=pass
 (google.com: domain of 3dkkdyawkanskabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DKkdYAwKANsKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
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

Allow users of Clang and older versions of GCC that have not changed the
implicit default DWARF version to DWARF v5 to opt in. This can help
testing consumers of DWARF debug info in preparation of v5 becoming more
widespread, as well as result in significant binary size savings of the
pre-stripped vmlinux image.

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
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Caroline Tice <cmtice@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                       |  1 +
 lib/Kconfig.debug              | 18 ++++++++++++++++++
 scripts/test_dwarf5_support.sh |  8 ++++++++
 3 files changed, 27 insertions(+)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index a7eee28dd091..a85535eb6a7d 100644
--- a/Makefile
+++ b/Makefile
@@ -831,6 +831,7 @@ endif
 
 ifndef CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 endif
 
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 3ac450346dbe..c85d82d3c6ef 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -282,6 +282,24 @@ config DEBUG_INFO_DWARF4
 	  newer revisions of DWARF, you may wish to choose this or have your
 	  config select this.
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205202220.2748551-4-ndesaulniers%40google.com.
