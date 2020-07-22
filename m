Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBHMP4P4AKGQE5BSSM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E269522A2D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:11:26 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id a19sf2452002pjq.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 16:11:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595459485; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6a4Xpj7IuMeXBaJQwYYpitzYYiKPwEWZ/E+y5eo7K/igmVGLnTTbW7PHGrbEKpAQ8
         ZqOcG6p6kXyOkERyQpX4JxpAypHPIqymP6p/aNk937eD/xGZv637mwB7dhDjMN5rCVns
         J5wNgIEEHr3hIWEigUwy0O/yW3k9ionX1+4nCnBhatJ4PmSa5PZP2vlhQves3RJBL+1U
         Oy6L36imsltqCf94i8f0StL8JI/VpU7+XVGuS6rJ7DYAIEGXi4cFml5GIJVOqvfeYx8A
         SJyqk6+jiy+JhsP2+o/ZvASAK47Tqee+2sjyzT7FevWmphCkDEQvnlzgcJTDVbsY88xY
         JQCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rzB9aPeMwyUBEA+GpleLT8jpViI02yt77zMVjAXdsJw=;
        b=Fs4hBrXbRADSH6tf3LEN/b9HLn8zIcz1RoSMr/Gljql0Qnp5N49k2EAj2XMoGUhV5B
         imc1KcEwLhxAA/vuCKGq56EjF/380LstunHtQRKSOcFtJrfSXz63oP2L4lUelVXE0GS2
         W8IhOVhFzmKn6eXHdyLiNTWos6l51jpNhmNmGxEZYCngVLvVR+3nZNcsIQ2Zp/7efH82
         ugCtyHd1YKxPsnOxM8xbAhrW0KL60xJzjLBKnDzGcUm33H8CWnRvSylKNL5q2yRoHzYV
         JinA7P3Nx5Ox1FCqxq9Nd2L5cH2j9KPyWMmRyYga1lPQkrGNBzaGCdT/Sk66QFo2bs9t
         tFgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d46NXFi5;
       spf=pass (google.com: domain of 3m8cyxwukeyw3xas0w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3m8cYXwUKEYw3xAs0w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rzB9aPeMwyUBEA+GpleLT8jpViI02yt77zMVjAXdsJw=;
        b=diGCSsBdGrP3g54LFMn0yh2wXR8XaEF3AYVxwE9BX2q4KKQof9/THAISbIKSgdaH16
         HMwcfLYysFS329f9UtJwV1zzN1BA+TBv1dYwoZf/Ir3+9eoeosjSw8R4ndcRxEz8aSqK
         X0Scs10tWR6U5jLUj6yKXGeuF5LinWcMt1+S/7pJ+MvdFPDV8epUDV/XOM8zaxuPK4Bb
         XTy8x4W4wSK4oDbytZXrHf6/se6uF+HOnXbm14reDe++kXy5N4e3qPHv8irsf2QS8iJG
         aSzlwAr71dvpHxA4+3+M31x/5v2Yv/axeVfFxhJHBWBKyRY8y5C0Mf0sdZarG0BE3xVo
         zkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rzB9aPeMwyUBEA+GpleLT8jpViI02yt77zMVjAXdsJw=;
        b=k3c8YmYZ4PEZdvHIAp/nya4E6j/1R6qKRhisrM0e7ewPJ4dH9iK0hTHRGEglBFSYWt
         ReBk9SCHC3xN/pJuSjYXslQGHf1qR60BWpqZX+GXkWclwaO81LW87XDyZnCKLpfxiwEV
         I2dwsx0NALlvcErKFC0Xkd1tvUjoUseM/cmVwMYMaWxV/hDvd+DB8vLlkougBPL1+U1L
         Zx0E/qb9zrTOeBf4WAeBUounKCd0twApgQD+11F8xoP7q50Qax9L92A69wh7z7G74z/x
         +dEkPaa90OebnP72rojJkM4aKWvHO6fGTEU0ts5Pt7qOOtg6okplf2aYUZbZ1q5si6RL
         v/aA==
X-Gm-Message-State: AOAM530y7Fk8OHN7hDVLAbVHZJpUG9SKgK+cbAJzEFYhV/CNv5z/rKol
	R0bQa0XBbeXZk0dN+oLYGNw=
X-Google-Smtp-Source: ABdhPJwJUE0jwvzRA5mDwEJnSKORvi1w4u22N4MFzqu1lvwvF4cwVJ0m0L20cRUu01ZIbOmGMOjO+g==
X-Received: by 2002:a65:64c5:: with SMTP id t5mr1862012pgv.28.1595459485079;
        Wed, 22 Jul 2020 16:11:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls1514466pls.3.gmail; Wed, 22
 Jul 2020 16:11:24 -0700 (PDT)
X-Received: by 2002:a17:90b:19d4:: with SMTP id nm20mr1681793pjb.206.1595459484194;
        Wed, 22 Jul 2020 16:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595459484; cv=none;
        d=google.com; s=arc-20160816;
        b=Iroy3Qpkt5Giu/Q4hMoCerPZ6l0yT2QgWTsHONr9k3l884uq8nHwX0ItVXISRcYW9Z
         WkSmeXJxdQYY/15X9rWjhzNeXlsv8GYpLCYVLLi/XOJmVrzEL4ZTTrhW8kv7O6C3w54q
         bjCBu+I/wIkmb1HkLZbWy55lsTDgrm3US/Z5T5vCvSf6TFEKXnDtsSllCGCaW5sxcpf0
         LOR56ffwx1X3eafjwnbwJXWr7eD7lOIgZaGqV6Z8tO/eUTwA7FNglZeV0AcB7ltyFRPd
         b1o73KvZBynOXdjNIl4Zg8DOdi57uo6m6ZG1+R2iTawMp8dCKgSUtQTjngeL5KPVRifm
         PAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0km8aMyCJjjdjhfFnUtIozCp8/eWA0gV2Bg/E+QIRZA=;
        b=dkfQBvoO/4bYYNWX9hCcLHUv62KqJX4vSZOpgRtVqCZT9IALSXvasaBVAjT6jHHBUg
         uAsKt157z5Wotpq07RsPqoJPNYKiEMCsD29lx/laKsBCI5byXGkJnHAotz3kg0KsEz0c
         YO5pz1u7xUiZxKxYHzQ45sHi8IevQ5wFRwraJ6Y9qfq3TsR8Pn5V0B0PR+9O0+PVaiSs
         nZ+Hw4lGQ9oJV1Mrytnf5C48ilKzfO+4t6sjWt1axWhbiwJTkZKENMSJzeyW8m82caZs
         QIy/6zkPCWlCrvLLY6tMt66bD107Ut/i1z1EcgaZCMp27iJyHSH0LSvdTW/AdCLZCIfx
         Bl2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d46NXFi5;
       spf=pass (google.com: domain of 3m8cyxwukeyw3xas0w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3m8cYXwUKEYw3xAs0w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y9si23213pgv.0.2020.07.22.16.11.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 16:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m8cyxwukeyw3xas0w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k127so4256079ybk.11
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 16:11:24 -0700 (PDT)
X-Received: by 2002:a25:ae01:: with SMTP id a1mr2585741ybj.119.1595459483337;
 Wed, 22 Jul 2020 16:11:23 -0700 (PDT)
Date: Wed, 22 Jul 2020 23:10:46 +0000
In-Reply-To: <CAGG=3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ@mail.gmail.com>
Message-Id: <20200722231045.1421735-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAGG=3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v5] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, pirama@google.com, morbo@google.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d46NXFi5;       spf=pass
 (google.com: domain of 3m8cyxwukeyw3xas0w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3m8cYXwUKEYw3xAs0w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

This patch adds clang-tidy and the clang static-analyzer as make
targets. The goal of this patch is to make static analysis tools
usable and extendable by any developer or researcher who is familiar
with basic c++.

The current static analysis tools require intimate knowledge of the
internal workings of the static analysis. Clang-tidy and the clang
static analyzers expose an easy to use api and allow users unfamiliar
with clang to write new checks with relative ease.

===Clang-tidy===

Clang-tidy is an easily extendable 'linter' that runs on the AST.
Clang-tidy checks are easy to write and understand. A check consists of
two parts, a matcher and a checker. The matcher is created using a
domain specific language that acts on the AST
(https://clang.llvm.org/docs/LibASTMatchersReference.html).  When AST
nodes are found by the matcher a callback is made to the checker. The
checker can then execute additional checks and issue warnings.

Here is an example clang-tidy check to report functions that have calls
to local_irq_disable without calls to local_irq_enable and vice-versa.
Functions flagged with __attribute((annotation("ignore_irq_balancing")))
are ignored for analysis. (https://reviews.llvm.org/D65828)

===Clang static analyzer===

The clang static analyzer is a more powerful static analysis tool that
uses symbolic execution to find bugs. Currently there is a check that
looks for potential security bugs from invalid uses of kmalloc and
kfree. There are several more general purpose checks that are useful for
the kernel.

The clang static analyzer is well documented and designed to be
extensible.
(https://clang-analyzer.llvm.org/checker_dev_manual.html)
(https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf)

The main draw of the clang tools is how accessible they are. The clang
documentation is very nice and these tools are built specifically to be
easily extendable by any developer. They provide an accessible method of
bug-finding and research to people who are not overly familiar with the
kernel codebase.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
Changes v4->v5
* Use PEP8 style
* Other misc style fixes
 MAINTAINERS                                   |  1 +
 Makefile                                      |  3 +
 scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 76 +++++++++++++++++++
 5 files changed, 103 insertions(+)
 create mode 100644 scripts/clang-tools/Makefile.clang-tools
 rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
 create mode 100755 scripts/clang-tools/run-clang-tools.py

diff --git a/MAINTAINERS b/MAINTAINERS
index 1d4aa7f942de..a444564e5572 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4198,6 +4198,7 @@ W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
+F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/Makefile b/Makefile
index fe0164a654c7..3e2df010b342 100644
--- a/Makefile
+++ b/Makefile
@@ -747,6 +747,7 @@ KBUILD_CFLAGS	+= $(call cc-option,-fno-allow-store-data-races)
 
 include scripts/Makefile.kcov
 include scripts/Makefile.gcc-plugins
+include scripts/clang-tools/Makefile.clang-tools
 
 ifdef CONFIG_READABLE_ASM
 # Disable optimizations that make assembler listings hard to read.
@@ -1543,6 +1544,8 @@ help:
 	@echo  '  export_report   - List the usages of all exported symbols'
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
+	@echo  '  clang-analyzer  - Check with clang static analyzer'
+	@echo  '  clang-tidy      - Check with clang-tidy'
 	@echo  ''
 	@echo  'Tools:'
 	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
new file mode 100644
index 000000000000..5c9d76f77595
--- /dev/null
+++ b/scripts/clang-tools/Makefile.clang-tools
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (C) Google LLC, 2020
+#
+# Author: Nathan Huckleberry <nhuck@google.com>
+#
+PHONY += clang-tidy
+clang-tidy:
+ifdef CONFIG_CC_IS_CLANG
+	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
+	$(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
+else
+	$(error clang-tidy requires CC=clang)
+endif
+
+PHONY += clang-analyzer
+clang-analyzer:
+ifdef CONFIG_CC_IS_CLANG
+	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
+	$(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer compile_commands.json
+else
+	$(error clang-analyzer requires CC=clang)
+endif
diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
similarity index 100%
rename from scripts/gen_compile_commands.py
rename to scripts/clang-tools/gen_compile_commands.py
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
new file mode 100755
index 000000000000..41ed15d99933
--- /dev/null
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -0,0 +1,76 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (C) Google LLC, 2020
+#
+# Author: Nathan Huckleberry <nhuck@google.com>
+#
+"""A helper routine run clang-tidy and the clang static-analyzer on
+compile_commands.json.
+"""
+
+import argparse
+import json
+import logging
+import multiprocessing
+import os
+import subprocess
+import sys
+
+
+def parse_arguments():
+    """Set up and parses command-line arguments.
+    Returns:
+        args: Dict of parsed args
+        Has keys: [file, type]
+    """
+    usage = """Run clang-tidy or the clang static-analyzer on a
+        compilation database."""
+    parser = argparse.ArgumentParser(description=usage)
+
+    type_help = "Type of analysis to be performed"
+    parser.add_argument("type",
+                        choices=["clang-tidy", "clang-analyzer"],
+                        help=type_help)
+    file_path_help = "Path to the compilation database to parse"
+    parser.add_argument("file", type=str, help=file_path_help)
+
+    args = parser.parse_args()
+
+    return args
+
+
+def init(l, t):
+    global lock
+    global analysis_type
+    lock = l
+    analysis_type = t
+
+
+def run_analysis(entry):
+    filename = entry["file"]
+    # Disable all checks, then re-enable the ones we want
+    checks = "-checks=-*,{}".format("linuxkernel-*" if analysis_type ==
+                                    "clang-tidy" else "clang-analyzer-*")
+    p = subprocess.run(
+        ["clang-tidy", "-p", os.getcwd(), checks, filename],
+        stdout=subprocess.PIPE,
+        stderr=subprocess.STDOUT)
+    with lock:
+        sys.stderr.buffer.write(p.stdout)
+
+
+def main():
+    args = parse_arguments()
+    filename = args.file
+
+    lock = multiprocessing.Lock()
+    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args.type))
+    # Read JSON data into the datastore variable
+    with open(filename, "r") as f:
+        datastore = json.load(f)
+        pool.map(run_analysis, datastore)
+
+
+if __name__ == "__main__":
+    main()
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722231045.1421735-1-nhuck%40google.com.
