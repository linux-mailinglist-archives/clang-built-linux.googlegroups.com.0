Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBLU5TD4AKGQE4NCUJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 82782218F9E
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 20:21:36 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id r12sf31875976pfr.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 11:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594232495; cv=pass;
        d=google.com; s=arc-20160816;
        b=X8g0I0hNP1OpRPVC1oAcskbOl+D2ugS6ntnOtc3e6PXBdzzWRPkckdJYQG5FYrFEsd
         ZAF5FpfKx5VQ6IFEwjprg9hrJaeF2+LJWJDtV18ksyegB6NrtU6FU+A/kJ6J5/1QMFbY
         XtXGV90GlPQgw2Fcaha8+xtrbDiEbxk+BHjvF/Mh5hrwvxBHGwA2Q8zSvCUWwbg4GsQN
         1MpyXHqNxFxsXhvYvXJwMOzXzgsWA0n4agls4uGO3tIKQ8KDvCnhpKqE6Xm3lYXHH8gb
         bX0H6dj0edesfbHgvv3UqusDSy4DYnfPpbmfqBIwi9egYJaqnCxTHxG8HX6YCYnoja4V
         WZPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=gV7xnLpgekhiU+JfY/yDEZzUKNJyurhLqB+Kvu9H26A=;
        b=AGldjsnoxCAS5R3ij+rKktRIFb45OT7wzzQFWlEteFu6z0+aZ3SdWXt+UFDus4WdrV
         pdrmVai8a5xtGlSRgYyXJZ8XKnd45vkMlNfCiyaRpCR3T/A9DhoE+0XPRh8EDCPh6w30
         lxOAl1Aupv7QJyFAaaEvkxaF2kdMcIt1IK31Nk0u89MIi066YtpThk6yF+HtlsYRZKTG
         1IxOGDaAl2pnlatzO4aqwPxyGeuRFO4KyDO9DTgURUKkHBt5Cp5F9tmBi8nHrgKDuq6/
         LgHrkmsp3+JiJ9r4AMwG5zOfngY0AyOXP2Ju7k5KZo/OnLn199zawiF6SnMJXWNqBTMw
         KBwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WSGD7z/Q";
       spf=pass (google.com: domain of 3rq4gxwukeeapjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rQ4GXwUKEeAPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gV7xnLpgekhiU+JfY/yDEZzUKNJyurhLqB+Kvu9H26A=;
        b=FOgYJeXa3RSsJIlb+Q8JKto5aL/PjAc6VPpdWIcxn4yyGOSdul3e9Unwpp6dLEM+xR
         3bbr3CIYcRk9FOItQNlXZ9eJMl8hEYxK+fXsonO1EzNqqd4YBw2yG4B0BrxgKa369U6l
         AR+eS9+lMYTOPQGmpU+7cfthez1qbT3SAN/JFeOMRLcgRONooMbNxweOz4Vb+6YbiiaS
         mN7gE1jfNitQfH2MMnK5LO0sjmAG9/tvGXq9a016CxeArZWcLo8Ro4pFd+/s0eQssJ9P
         BnEu4oRSsZvj7ETuxZ4Ny4fCQZUvzFHcfLhre49NtOBdsvJGaT3e+1XVrBVEHVKVsvFR
         Ii2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gV7xnLpgekhiU+JfY/yDEZzUKNJyurhLqB+Kvu9H26A=;
        b=fJ1YbmFf2OGj4MimE0rsBi7O9vSSR5WlBNpFnMMk0sy0j9JDlb0D5OJMggpBKniy4U
         DlPy8/k3RwyTWCRNTfVqTcwke06UkaMNIzxWGAmkH+k5nv3OYBDIJgOYHs/Gmg3e6syO
         zQpts9X+y3mId2vwwEOazTUvc+iTFy09xXaqlBui6yZeOsj/3cdcsjUJK00lkWOJal2U
         Mu3ucZcCxAQJwi64PaOUe7fcR67XYqJwskabBaTqcQ7vucRYXFJ4Pall9PsQKda5SdHW
         TQSv4Yn/JHwsrR5lMS5LPe2SCn1OM+mOPa1W+yBLckKi/aSiQLhmxT5j/5yyeLPiA+GE
         MWLg==
X-Gm-Message-State: AOAM533f28JMx8ewoBMPJVtHR506miDNwceXYC62HVPD69tUsl9s0hsI
	GuexIiGdMxE4VopR71qPDLg=
X-Google-Smtp-Source: ABdhPJzyDZUiBhVd9mRoellrnLLRXWj2hOUacrx8eExmsEl5jIk8i9ZYoO19N7tLtlBlNmdY5HRpoA==
X-Received: by 2002:a62:e30f:: with SMTP id g15mr40504925pfh.203.1594232495083;
        Wed, 08 Jul 2020 11:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls939558pgo.9.gmail; Wed, 08 Jul
 2020 11:21:34 -0700 (PDT)
X-Received: by 2002:a63:3fc2:: with SMTP id m185mr52281108pga.426.1594232494607;
        Wed, 08 Jul 2020 11:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594232494; cv=none;
        d=google.com; s=arc-20160816;
        b=o0O2GSpmLLoxKuDdE2ao+lWTxxNiQ3P8sbTZGdw+TOuX/qabWiPf6/w2oQO7/n3OWL
         z7X3R24dPGdjw5kdIEP1EdCVQf55fLf8MRBHt14klyVDGzKgUVAtY6xRZ1gGDSHfEf9o
         YyoVqcrtDOtMLPi5+FfjozMgR3OIMMes2GwUVPgisesga4o6sI69Hx8Bod/+II6d5GTS
         60i4BzCnt5oGWUXTx0+v5a1gHSpcyq0u4ZnLp77qc/oQs/OIhgUzz1DJGCRWXtJenk4g
         IAAWIGSraZq8x0cRXQSO8Mx3sOZbFSprDtshpUYWnbpTUgQ8kqrQcOisj68Ohi5z6jGT
         J4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=bX/pTo268FT8rnIA4NrPsVndCGHaVKOkE/vDxa6Exek=;
        b=UvTqCo//wdVsREPLDkdeyEiEzD4RYT5Jq7Y2GKlvf55ycFEql693IY4WVWyE9nifGp
         ZutT1fQzg9BE0A2aOF8mPJ8afZdnRFqnhAyuJyXPbz6QlZykPmhE8JgeApw3If78nFlI
         1NF39iTN/r/bskxpy4fs8CwXHUYCuzfEtga7wFvmUOOlRtdJlHqLSKmeYrxnxPBzcDXz
         /mHG53XgrYlN3Pb4LQoSbxRMei+LFmfGXXDAxL5eRswYVo5tgk4O8B/LdoV4egn/UseE
         M9loy4KIko8LaVTaNefLwfcmBeQZN7cLjcfk2twP4Q6rowe0JoCPjxkcqxTRPqwtVuvv
         0iqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WSGD7z/Q";
       spf=pass (google.com: domain of 3rq4gxwukeeapjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rQ4GXwUKEeAPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y197si19166pfc.4.2020.07.08.11.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 11:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rq4gxwukeeapjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id w35so2512583ybi.16
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 11:21:34 -0700 (PDT)
X-Received: by 2002:a5b:1c4:: with SMTP id f4mr16966937ybp.472.1594232493688;
 Wed, 08 Jul 2020 11:21:33 -0700 (PDT)
Date: Wed,  8 Jul 2020 18:19:09 +0000
Message-Id: <20200708181905.257691-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
Subject: [PATCH v2] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="WSGD7z/Q";       spf=pass
 (google.com: domain of 3rq4gxwukeeapjwemiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rQ4GXwUKEeAPJWEMIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--nhuck.bounces.google.com;
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

The current static analysis tools require intimate knowledge of the internal
workings of the static analysis.  Clang-tidy and the clang static analyzers
expose an easy to use api and allow users unfamiliar with clang to
write new checks with relative ease.

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
Changes V1 -> V2:
* Remove dependencies on GNU Parallel
* * Clang-tidy/analyzer now invoked directly from python
Link: https://lkml.org/lkml/2019/8/6/941

 Makefile                                      |  3 +
 scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 77 +++++++++++++++++++
 4 files changed, 103 insertions(+)
 create mode 100644 scripts/clang-tools/Makefile.clang-tools
 rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
 create mode 100755 scripts/clang-tools/run-clang-tools.py

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
index 000000000000..e09dc1a8efff
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
+	$(error Clang-tidy requires CC=clang)
+endif
+
+PHONY += clang-analyzer
+clang-analyzer:
+ifdef CONFIG_CC_IS_CLANG
+	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
+	$(PYTHON3) scripts/clang-tools/run-clang-tools.py static-analyzer compile_commands.json
+else
+	$(error Clang-analyzer requires CC=clang)
+endif
diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
similarity index 100%
rename from scripts/gen_compile_commands.py
rename to scripts/clang-tools/gen_compile_commands.py
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
new file mode 100755
index 000000000000..d429a150e23a
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
+compile_commands.json."""
+
+import argparse
+import json
+import logging
+import multiprocessing
+import os
+import re
+import subprocess
+
+def parse_arguments():
+  """Set up and parses command-line arguments.
+  Returns:
+    args: Dict of parsed args
+      Has keys 'file' and 'type'
+  """
+  usage = """Run clang-tidy or the clang static-analyzer on a
+  compilation database."""
+  parser = argparse.ArgumentParser(description=usage)
+
+  type_help = ('Type of analysis to be performed')
+  parser.add_argument('type', choices=['clang-tidy', 'static-analyzer'],
+                      help=type_help)
+  file_path_help = ('Path to the compilation database to parse')
+  parser.add_argument('file',  type=str, help=file_path_help)
+
+  args = parser.parse_args()
+
+  return args
+
+def init(l,t):
+  global lock
+  global analysis_type
+  lock = l
+  analysis_type = t
+
+def run_analysis(entry):
+  filename = entry['file']
+  p = None
+  if(analysis_type == "clang-tidy"):
+    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
+                        "-checks=-*,linuxkernel-*", filename],
+                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
+  if(analysis_type == "static-analyzer"):
+    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
+                        "-checks=-*,clang-analyzer-*", filename],
+                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
+  lock.acquire()
+  print(entry['file'])
+  os.write(1, p.stdout)
+  os.write(2, p.stderr)
+  lock.release()
+
+
+def main():
+  args = parse_arguments()
+  filename = args.file
+
+  #Read JSON data into the datastore variable
+  if filename:
+    with open(filename, 'r') as f:
+      datastore = json.load(f)
+
+      lock = multiprocessing.Lock()
+      pool = multiprocessing.Pool(initializer=init, initargs=(lock,args.type,))
+      pool.map(run_analysis,datastore)
+
+if __name__ == '__main__':
+    main()
-- 
2.27.0.383.g050319c2ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200708181905.257691-1-nhuck%40google.com.
