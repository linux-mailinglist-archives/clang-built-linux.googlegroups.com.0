Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBPXL7X4AKGQESTFLSSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430C22FE94
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 02:47:59 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id g17sf12387866qvw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 17:47:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595897278; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3hXtP/IpVQQ8UtedRmk+eWHqJFCD9ldKhsuozhACOjL5L71H9kryT1fdGEZThZBkJ
         IgCw2+ctSMzer3Uvf75MMXwoiO2VhDxTqevYfNfa2TBQrgvzOT4nkHjktayW+gQJAgGl
         WsvPtYZ3bNAoJ/1MONu+vMiH7Tgek0ACKF5aBTanz3xWJQ510tILcw5ctP/B7tr3B0wF
         YTTrrvyBCs1ZqKHpMbJjJuP/Ap1cGVbqHIsIrgNWXCgVwFebFmXnAmW7ZOFHB3P61lVu
         N+RITsniAOYMVSBpWcl3pgQHuebZrSTLhb9T3HCsspfMROSqNh49dzbbd/sO967eZHZe
         +DYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1MwxzlRxOoR/3sAmJ2zVReNOA/NtPN2nEnmTiMn5rc8=;
        b=TEUyxmsRs3zPUf8IdhGogwz/sOIX/rOXidX903S6noBGYXaQJZ44mz+B5O91lTd0Vn
         +jkfeDQINszjoyeW/UVeB9D6KUhXQAGoqxANV1Am352iwB+aWKk04ENi26YelUP9hzFX
         deZKqy2ThPxf0VRV4FtNGn1uVTaoxvt3NmqbqcSa8qsaZ1TVhA/FBYvSQhHswXi15LOE
         63lDal7uP9i1kYK2cAsShRYYuXHcYOr+2hSZngRweD1w8pgcMGAFMThQhwIyqbM87bqY
         OMkMrONN9s6vxkcojWUegthBduCWj9PCCUndFjFy2zZEVEb8t3LYbhaxSSniDVL8y8ax
         Y/tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u9vnQF4V;
       spf=pass (google.com: domain of 3vxufxwukesypjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d49 as permitted sender) smtp.mailfrom=3vXUfXwUKESYPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MwxzlRxOoR/3sAmJ2zVReNOA/NtPN2nEnmTiMn5rc8=;
        b=r6ikxnDEhdnkTMtaL57nuKOwaUvJoiyXbJij/ZFO4HzwNGJCzuoAnJQ5ejG1YNKMnn
         Zf7ZCCkhvIMOFgXUQpGfqVtolWu7+ZJ2qaTRNkywH9tc6p+O+12CQNlAxeQvFkIStSZZ
         JKhn1ZcNGV5WKssLcUAKaZbbSHXzoxojehMJsWdiJVra9tN6iERH5BKlg3uEPUqQv39y
         qO1/zB00BJCI+/LRaD6bh0A6ICJPu35Xq/fak+ClqDnWLih8E7gQzT+QK/GEHWQlH53v
         YqOWN6b3o0JOw7dUJZaO68LsYtmQ1ALuc4VJiNdm1LNqV420E4tK53tmXY1KKzOF4wyJ
         //2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MwxzlRxOoR/3sAmJ2zVReNOA/NtPN2nEnmTiMn5rc8=;
        b=oDALWEDIwYoxZpalL7ROhX75JgPgMx1+kBJU7isIfkMYblCcBEgA6sa1gC7cVh5Q+t
         KSVXBjuOw+N3xpECbq5drhVMTS7JVJc8WGtNUy7g8+B0C9HNIrVrLDQ/5ZNsD10HgyMM
         Geap5fH0DZXrnBniMzKw1a4FVjQJim23eRqnwX4kWJO8vvmAhS5QKuk6JUdzJv/n7LK9
         00eJ4X4/BW+lsKwGshNXGJaWpBXZisDQ2q2td8LrtSQ/qXdYvTFg4WXLkniEVUY0wRcI
         NtqPsw+gcWflVeOM7akRype91SDyuV4CvsUr6VOaaXrNOBjdAT66vYiJkYhdPosPLrhx
         C+JQ==
X-Gm-Message-State: AOAM532lxQSVJkRPSnUM6QqUNTgkQwglE5zsOK9gCeOyx6iIC3KnX5uJ
	PxtR305qN4V+A7pWYZpKoSA=
X-Google-Smtp-Source: ABdhPJzFljCA90E6FL2qFcbUq0HJedb2FNSweBbRofxbqnyB03XyK0GwyW/zLW/AplPZU3oaOsCBPw==
X-Received: by 2002:a37:91c1:: with SMTP id t184mr23710830qkd.241.1595897278094;
        Mon, 27 Jul 2020 17:47:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ac4:: with SMTP id t62ls7049882qtd.7.gmail; Mon, 27 Jul
 2020 17:47:57 -0700 (PDT)
X-Received: by 2002:ac8:7a8d:: with SMTP id x13mr17125699qtr.192.1595897277749;
        Mon, 27 Jul 2020 17:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595897277; cv=none;
        d=google.com; s=arc-20160816;
        b=E8+Qr/It8O6xA+ydAI/2yfP1CPUSeULtbo8zrobVgNNNN/9Q5hsoR1oRvI+y9H2mjX
         UjPQxwucpQqEca577o/UecYb/Dh3KKep6WkzJ6d691xo1DeoKzyILhyk5oly1pAOxMJE
         LM4+taRBahK4j9pKkvS/V24J0Y+tyPFvOvJmMpQhSErkJfU/lj4/+bbhhnws7Z3g1IhY
         9YSsBUs9UaJobHtIjRWGIFFe0artl+Y8F8xSH31R1KGvcBW0LqJo6+IGcCWj+YYuIFpU
         rKEYFYxFVpdwRBYuEbVeuIMh/oDz9lauJq1l432HOiRw1LfJgd5qWtw2y16/b+xs7XK8
         uukQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4HetzG3g8Z9xp/xTBnXtPpl/4dszw09HZs0Q+wGPsC8=;
        b=ZRsqiwdGcnkfEx9cW/zoOqKEg8erbaEobEex0HrKpRNz2OUTCKtfanOkds31K8rieb
         HjPAttkc3Dv1EMMPvv1LZvmKByO0h+5/4nKock4UufYBHCT4PeOkgMZrDpy0MWX/VXmz
         N8lByEZLM9sghuTOzaYusF8YIJlmx3KNG14cOmkzxkaDQSwSf34uzvdnpcpR0yE2zscd
         uIM/4ZUOVCSBuYqRv8YU1PrIo7dV0iPwjq+7TG+vCGdV6PmR9Fdch/iQnAnKegD/SkFv
         3TREb+XsjS2A/NwQTZ16gTIARL+FU3CX/XoP4/EvDixDEQ8NVwdVagQpHioMzsAI/IMA
         jYmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u9vnQF4V;
       spf=pass (google.com: domain of 3vxufxwukesypjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d49 as permitted sender) smtp.mailfrom=3vXUfXwUKESYPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd49.google.com (mail-io1-xd49.google.com. [2607:f8b0:4864:20::d49])
        by gmr-mx.google.com with ESMTPS id m13si159174qtn.0.2020.07.27.17.47.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2020 17:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vxufxwukesypjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d49 as permitted sender) client-ip=2607:f8b0:4864:20::d49;
Received: by mail-io1-xd49.google.com with SMTP id f7so6940372ioj.16
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jul 2020 17:47:57 -0700 (PDT)
X-Received: by 2002:a05:6638:134a:: with SMTP id u10mr3164412jad.35.1595897277167;
 Mon, 27 Jul 2020 17:47:57 -0700 (PDT)
Date: Tue, 28 Jul 2020 00:47:36 +0000
In-Reply-To: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
Message-Id: <20200728004736.3590053-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.rc0.142.g3c755180ce-goog
Subject: [PATCH v7] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, pirama@google.com, morbo@google.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u9vnQF4V;       spf=pass
 (google.com: domain of 3vxufxwukesypjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::d49 as permitted sender) smtp.mailfrom=3vXUfXwUKESYPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
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
Changes v6->v7
* Fix issues with relative paths
* Additional style fixes
 MAINTAINERS                                   |  1 +
 Makefile                                      |  3 +
 scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
 5 files changed, 101 insertions(+)
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
index 000000000000..fa7655c7cec0
--- /dev/null
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -0,0 +1,74 @@
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
+        Has keys: [path, type]
+    """
+    usage = """Run clang-tidy or the clang static-analyzer on a
+        compilation database."""
+    parser = argparse.ArgumentParser(description=usage)
+
+    type_help = "Type of analysis to be performed"
+    parser.add_argument("type",
+                        choices=["clang-tidy", "clang-analyzer"],
+                        help=type_help)
+    path_help = "Path to the compilation database to parse"
+    parser.add_argument("path", type=str, help=path_help)
+
+    return parser.parse_args()
+
+
+def init(l, a):
+    global lock
+    global args
+    lock = l
+    args = a
+
+
+def run_analysis(entry):
+    # Disable all checks, then re-enable the ones we want
+    checks = "-checks=-*,"
+    if args.type == "clang-tidy":
+        checks += "linuxkernel-*"
+    else:
+        checks += "clang-analyzer-*"
+    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
+                       stdout=subprocess.PIPE,
+                       stderr=subprocess.STDOUT,
+                       cwd=entry["directory"])
+    with lock:
+        sys.stderr.buffer.write(p.stdout)
+
+
+def main():
+    args = parse_arguments()
+
+    lock = multiprocessing.Lock()
+    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args))
+    # Read JSON data into the datastore variable
+    with open(args.path, "r") as f:
+        datastore = json.load(f)
+        pool.map(run_analysis, datastore)
+
+
+if __name__ == "__main__":
+    main()
-- 
2.28.0.rc0.142.g3c755180ce-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728004736.3590053-1-nhuck%40google.com.
