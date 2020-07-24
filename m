Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBTPR5T4AKGQE3I2QY3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B91222CEC3
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 21:38:55 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id t12sf6123218pju.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 12:38:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595619533; cv=pass;
        d=google.com; s=arc-20160816;
        b=ckpElMnXrIyeBsnFh9I3MUMWhZtFdgak+Zs4q6yJL2zk4yqPWD28X03OQKFpzZBJ9h
         atvJ09z31l3xse+VYNFnhF31VbyqGqe/6J4XKDiCm5uZxuRk9jVXfbiL1tJOK5yJgdVn
         R1GGaYDBGV30/kY+tamVOEhA4MhI0NbD3DMLeDMLZJar+9MAFRJywH1pFLEtjc4N1vvo
         GSsG5e7wvTO/PLQeFe9mFK1bDhwli9aMzhP717c8bzZbd9pc9ZAe6TqkUIV0u49sWoBf
         b7N3K6OTaJVhOEDEFq7UxldCl7TON3mca/3gu5s7BHRkN1CXKO1HH2WiFxWkSU6KNtWL
         XkYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NeJKIwcRTxYHRsEmmmq5b1zq8Ek8/vzb1zX2iQAGMYs=;
        b=ZcCHEOctOZVysZsuopZrAbPCc0+h2XT9kHMx2GcIRRxQioNyOybQjY84HKfa/Ca637
         PNlkGyWHpFlOf8c7rPVmSDiUFrymThpdHjz/hf0LbF6NOtll+BnJemRsg4p7BttqCTof
         uulQHtbjdof61iR06iKrl+jT7IALetqoLBtrn4srmR7OPC6Tt/LrV8jJd7qo+8g20OzL
         l78oNrxFnZ4F35BqBFR0JmT+uA/y8vPHHTeYEk7/v2AIi9mCCZRRIlIyZuqJ3IOMc8UM
         x5WI91yezsRLTosm8cPKdoIqqxgoJvDl12YTHfkutbW1+xaaYjOqzqwj4iGQKi16Cc44
         +kWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bs6DKgfC;
       spf=pass (google.com: domain of 3zdgbxwukeakwqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d4a as permitted sender) smtp.mailfrom=3zDgbXwUKEakWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NeJKIwcRTxYHRsEmmmq5b1zq8Ek8/vzb1zX2iQAGMYs=;
        b=Xi61lCHHZTY4K7xpj8bxn8xat50ISdgzoBicJkR7ZPEMsqQv/MgyqSMYbEDTI8TR71
         dCGbgiu8nYozO3Gigoni4jGZXNhiEVsJE5uF4c1jk6Mw4JWYnqh4cs2f6LUkaU1+ioOl
         qC3f07e7gBq9DbzqDFj2J9j4Gr0btCfyTjs6zXKh4/3jABikSEl8aDUdPqt/Wd8BlEco
         eE1fw5c7Hz49gxfeVO5gnEYG3zyKarOT/cZsw1noEmV/dIiW2eohNQhP1ezRqgGAk1oz
         12jcYlkrW5qX5khZNySOHINpB1/LbLJ6jrzAhEztdK1OG2CiUvs9k/POUEhI+fcmivwa
         YwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NeJKIwcRTxYHRsEmmmq5b1zq8Ek8/vzb1zX2iQAGMYs=;
        b=PGL6FlMFbh3d3FtH+fjb1fhzdYBa3cLRHh57KquE9rgpt8NS5PJ95BnfmxqPQ1NQZl
         KBza87qcoSbOBxmMQrg9EtkcUtU/4Y1cqhdVjJPSdOJ8H9X4jH911irNR3PyM0GKOs1r
         Mljx2F48aQ4vcgrPJHai4SbL6un2maaOwDbzRZTDCyLdPjLsEnuC6N1s/G8vkpDdQTe5
         /l9gHntvTvRkfWgU8mSDMIGCP2g4sQwTxyTvXUG060J/rUtR8PHuWgADTdZglE+5fEye
         O2TrytxaYEMShTPlOlBF5wnTOlC74lHkfUK5mUgdAXXgu+qeGAWy7PUCR8Za9bOyGj1h
         1x9A==
X-Gm-Message-State: AOAM53193gLvv0cAms1Gec+o+PNndXT7y7zUmwWdq9XcydOpSJYl8VLZ
	GMRugZXMuwes3GylWl5cVYI=
X-Google-Smtp-Source: ABdhPJwzSUH/VWmbfNYGpgjw7BZww+vBIICHb2MJXbFIgrQJWA+r/RJoz+l3uR9s7iDzVTxuwmWUeA==
X-Received: by 2002:a17:90a:c28c:: with SMTP id f12mr6755911pjt.214.1595619533306;
        Fri, 24 Jul 2020 12:38:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c412:: with SMTP id k18ls3842849plk.9.gmail; Fri, 24
 Jul 2020 12:38:52 -0700 (PDT)
X-Received: by 2002:a17:90a:7185:: with SMTP id i5mr7395219pjk.170.1595619532833;
        Fri, 24 Jul 2020 12:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595619532; cv=none;
        d=google.com; s=arc-20160816;
        b=WJ77M+pNim3iQb6fluIfwTU6Gdd0CkZzFklAunUeLTwe725u/rx9Ff2ZOKOkEopKHT
         te5nVeXRdcZGh+/y/hc+fDfUO0fRWHIKkIZpsjI64S+i+swbhII/tm3fGn0DZMUAzlA8
         7HxOyLmH4k2kL+lYxbKGZE4W+jNqUsNuQsRZajNYnIbL/jRhoNLiJXKz70SAK8Yy/8vF
         S2fltRO59bAoXogR3qDMDVyIUpZ6nqhUyamqe0kZQheq8qGJ3LdfD5S8eXOcPGuv+67c
         +7Gd3+KcOHVwUEHb01HNLx5qRcHEgUjqgWl5vt11yJ96xll3B9gUKM8xz48i09c3hLdw
         Ty2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Cag1ZM+/G+EzkwVW+TvczGhDnD9T00FBkMW8L2Yy0Fo=;
        b=lmNGBT+aI/OCZ32g/cB3tDN4gK1IVguMgeA+swPE6WDtrMAaaEbGyhxhI5aflfFMoS
         xzG/8m7AnZFAgbglg4cHlgbeJfvO9Ynm7frlhkW3PxwULT8D7KJOzR1eVY+n0R+nlyfH
         +e5DwbpofpeZvD+2pm5bVpOREAt6Esfsw6XzzlFDC5LbCX5LYZ97ldYfsPeyFVHrEaNQ
         rOQsYYVxnLa26kuQLD2IHaiJdWwaNAH86B9XV1Dfb9oQnzXNgEvzTNU0q4JstwonMOXl
         gvWdm8CxQPyKGso2wlzr+yQ/BODmrd998mVEtl0V7o9XYBFpFtNkr+iaaGvd8LBPRYWv
         eTrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bs6DKgfC;
       spf=pass (google.com: domain of 3zdgbxwukeakwqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d4a as permitted sender) smtp.mailfrom=3zDgbXwUKEakWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd4a.google.com (mail-io1-xd4a.google.com. [2607:f8b0:4864:20::d4a])
        by gmr-mx.google.com with ESMTPS id n136si313756pfd.1.2020.07.24.12.38.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 12:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zdgbxwukeakwqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::d4a as permitted sender) client-ip=2607:f8b0:4864:20::d4a;
Received: by mail-io1-xd4a.google.com with SMTP id z65so6913316iof.13
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 12:38:52 -0700 (PDT)
X-Received: by 2002:a6b:6d07:: with SMTP id a7mr5210991iod.166.1595619532420;
 Fri, 24 Jul 2020 12:38:52 -0700 (PDT)
Date: Fri, 24 Jul 2020 19:35:51 +0000
In-Reply-To: <CAGG=3QWw3szocG=xyUCmHKVKYiBn9CuETbh8Q_rWHiSW5yw5Ng@mail.gmail.com>
Message-Id: <20200724193551.2158677-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAGG=3QWw3szocG=xyUCmHKVKYiBn9CuETbh8Q_rWHiSW5yw5Ng@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.rc0.142.g3c755180ce-goog
Subject: [PATCH v6] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, pirama@google.com, morbo@google.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bs6DKgfC;       spf=pass
 (google.com: domain of 3zdgbxwukeakwqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::d4a as permitted sender) smtp.mailfrom=3zDgbXwUKEakWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
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
Changes v5->v6
* Minor style fixes
 MAINTAINERS                                   |  1 +
 Makefile                                      |  3 +
 scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 77 +++++++++++++++++++
 5 files changed, 104 insertions(+)
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
index 000000000000..1f4cd706ec01
--- /dev/null
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -0,0 +1,77 @@
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
+    return parser.parse_args()
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
+    checks = "-checks=-*,"
+    if analysis_type == "clang-tidy":
+        checks += "linuxkernel-*"
+    else:
+        checks += "clang-analyzer-*"
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
2.28.0.rc0.142.g3c755180ce-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200724193551.2158677-1-nhuck%40google.com.
