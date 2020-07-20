Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBWOU3D4AKGQEHFI5HTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBB22272F7
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 01:35:54 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id i6sf12522576qkn.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 16:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595288154; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRG1nShEu2KHedufPL5/db1DItNaNhzATQyP/IkDELY9xCjTh5zRstlm+if/BIqkXa
         SAo0iNkpIraKxziWMGbN96mV9UwAwHgEO/wtPSCgjW534CiN/OMK709k2BTAJYLnK9uX
         3gc4u/rdVmMSNoHMSCFq724L/NHKxOdkAITeNgOJiYZynND427k841ST3v16h4fFofQs
         hikzuBcyx/qMtOaTc+bP6PoV6Jm2qLW9FrciKgi337hRUk2ApCs5e0JpLfUSUunTB8IO
         JM9c8/4BRvt6HG/9bGBy4COTu2cpAX1CTzobgEUq6aDjjPt4rdZZbSGixzqOVU48DAmW
         tEQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=al7Ncsca8OUJERrjlECju54YvjjlXXlLbeKFHKH+jQk=;
        b=JFlAR/FvzdZAMniIX56w7xlkMZ9r8bm24gb7KCgMJMcxJyU0nCcTm77W+MZ5RH3lva
         cNk4o8PfZ/7SlWYWv9kaq+m10gwRofo+NrjI38rv0diDhb3hrN3vDR3o9s370GCOngnX
         kgXoqcRUPD5O2UNrV6+UgdHvv9EXeO0DQKQ/TW5X1J2fu7dnxtJ4MMG3MLRspp8G2TTL
         sjiVHMM7fUsKO2nps1zQ2I8uHYn0Bl4EsQjM7xwxLiNi6vN04pCJff2bq3/6eQta3lRd
         z6CEhJom2VTUUvIUOytXiB3vYZXGC7y//E8G4oAz8fgYKp2E8+OZ2JMZtS8OxmDXAyul
         W0jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPWrYBNd;
       spf=pass (google.com: domain of 3wsowxwukeqytn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WSoWXwUKEQYtn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=al7Ncsca8OUJERrjlECju54YvjjlXXlLbeKFHKH+jQk=;
        b=qP8EnIXcdVLnWfNNfJQxa/xd7J+KnSooAxJ0gHYv3ciO0AtZ//5s38VxDAhr+Cm52M
         2pPpEgwlFEc0/18tdCYow8wIXJudFBrA2wN9SxsoZ5WdQwhH+hScKe8s9kpUy1TLOhml
         86ORI5nryn0k7+PVS1QO+ZP26HXsy//6s8rTfnPX4b2mZOUMobbDdCjTT0uFENYaiYCh
         43iXPPW6p0Yo2Ni6qBVzWt4wB/UYyfr26DU4ePdLltJ5obP8n9LqpLe32KzZzRxyL2GF
         luzXo08ST4/vf5DkpBGlaJHJSdHWvnCUOCT34vaZ19WTNiLYgaE3ohD6gIeCNgNA7D0y
         BZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=al7Ncsca8OUJERrjlECju54YvjjlXXlLbeKFHKH+jQk=;
        b=bRheanjybvEphbkLUX2TOfNdXv436h5o3p/pbIss8hcwPnLJeTSBNAIbB4VjryNaF+
         G/DorfaRU6Zbq6Cx9qvCW9sCC/OjAs7Z3eIG8m7Tleh1iupVaPd77wqxD5BplhEWryck
         pwgVTONLiJpVDdR9p9mASWqW4HWh923XMp6EtnMRg4cCswqfs3ys9U2cbNIDnfAanvxX
         Y9QIuFtEmIKAyf+5fEwYpJsYc2xTiP975T5T9qe7Gt6iH6Ctr7CiyHnWudMhk3lybxia
         alagQxlO3rGpeKwZ2UT5di88eOv/GqNixh7S3oLYPkr4fhu/iDU15E+8H+ahvVC430vD
         YEdA==
X-Gm-Message-State: AOAM532K6iUJLEXB0bgdtwG2PihBHtLMDUonmPc0yBzZPtQd/7tP26YY
	5ikjdBLi+GtOhsVgUIaZguc=
X-Google-Smtp-Source: ABdhPJybZSz1OrrrZ1f5M0oOO06+2o2pn++Q+UXHG55g+NDnhe81hZKVKlObApeotjjsZY1vBmFdjA==
X-Received: by 2002:a0c:f683:: with SMTP id p3mr23635354qvn.39.1595288153915;
        Mon, 20 Jul 2020 16:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c987:: with SMTP id b7ls2037107qvk.1.gmail; Mon, 20 Jul
 2020 16:35:53 -0700 (PDT)
X-Received: by 2002:a05:6214:370:: with SMTP id t16mr23852189qvu.206.1595288153519;
        Mon, 20 Jul 2020 16:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595288153; cv=none;
        d=google.com; s=arc-20160816;
        b=gUOtNuL6cIhgYvFtLhnUpf/tVMWSf36fUIiqSJIzl5q2XcuMXRsbILXPKkoC4cJYuY
         hvmxRpOCW525oglnQZ81TijCcguM8yMpXXojdHoWiSK+gNJbXwiUTFH3JuaDFVYjG5Pf
         a0RFdPHwhaIDPBKuMnDmFjwu+KPZeyliL+9JJukznH1v3+OCHxJArI1gC36HOIfqxgM9
         L87OxXVTxhFz07Ghwo3Cl6d/egXzDcEbwyKX555P3V2VkP+8/dWjJJ0TcCrnWUuQIaWx
         BNEyDqcGl7jENe5kHY8ZUGEANudkkqxx2qUng/CYmyBAuuNpMy3xR4UtlaPKeOgzbDTG
         c8WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mWZKxoXF+Te4mputAXDqqY/dB7J/WdxovoeFbRYCpJE=;
        b=r2t1lepzo1gttKxSFu+sIWOUiSEQNm50LlTfo3jQ3LF9TheBsH2eO8VGNR3SGJIRub
         BySKHHg7eWsKfqm/3/lefWC//rkrPzGPKss6cXezS93G+/U5T97UVw78Xsu5cmq+NAIL
         ilEG/1AibJDLfv1cJawrqH8016I8+minnb9KUQu7/63uFSMMM3Fv5A8UnP/+Ks15I/U3
         gWDnvnZIIxjEfojYdIi4zzcdj/g8ddg0rtFVR/o3sYZG9vAYXy5t3tmKWI78EJj3iwZD
         3biCROoPgFEuC4w8jmquulDasEsAtpgrCg4CzHIS4hOZ24Oc5Eer78pKabP94WziK22+
         1jrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPWrYBNd;
       spf=pass (google.com: domain of 3wsowxwukeqytn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WSoWXwUKEQYtn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id q14si995633qtn.4.2020.07.20.16.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 16:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wsowxwukeqytn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r9so13086571qtp.7
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 16:35:53 -0700 (PDT)
X-Received: by 2002:a0c:f991:: with SMTP id t17mr24424118qvn.50.1595288153124;
 Mon, 20 Jul 2020 16:35:53 -0700 (PDT)
Date: Mon, 20 Jul 2020 23:34:51 +0000
In-Reply-To: <CAKwvOdnsp=zuxbFVcbGRN+-ZH-F5UFVfKzNBfHM714WkwRZyCQ@mail.gmail.com>
Message-Id: <20200720233450.238022-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAKwvOdnsp=zuxbFVcbGRN+-ZH-F5UFVfKzNBfHM714WkwRZyCQ@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v4] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, pirama@google.com, morbo@google.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BPWrYBNd;       spf=pass
 (google.com: domain of 3wsowxwukeqytn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3WSoWXwUKEQYtn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
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
internal
workings of the static analysis.  Clang-tidy and the clang static
analyzers
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
Changes v3->v4
* Update usages of static-analyzer to clang-analyzer
* Clarify -* explicitly in comment
* Remove filename printing
 MAINTAINERS                                   |  1 +
 Makefile                                      |  3 +
 scripts/clang-tools/Makefile.clang-tools      | 23 +++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 69 +++++++++++++++++++
 5 files changed, 96 insertions(+)
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
index 000000000000..44527b3663e9
--- /dev/null
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -0,0 +1,69 @@
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
+import subprocess
+import sys
+
+def parse_arguments():
+  """Set up and parses command-line arguments.
+  Returns:
+    args: Dict of parsed args
+      Has keys "file" and "type"
+  """
+  usage = """Run clang-tidy or the clang static-analyzer on a
+  compilation database."""
+  parser = argparse.ArgumentParser(description=usage)
+
+  type_help = ("Type of analysis to be performed")
+  parser.add_argument("type", choices=["clang-tidy", "clang-analyzer"],
+                      help=type_help)
+  file_path_help = ("Path to the compilation database to parse")
+  parser.add_argument("file",  type=str, help=file_path_help)
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
+  filename = entry["file"]
+  #Disable all checks, then re-enable the ones we want
+  checks = "-checks=-*,linuxkernel-*" if (analysis_type == "clang-tidy") else "-checks=-*,clang-analyzer-*"
+  p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
+                    checks, filename],
+                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
+  lock.acquire()
+  sys.stderr.buffer.write(p.stdout)
+  lock.release()
+
+
+def main():
+  args = parse_arguments()
+  filename = args.file
+
+  #Read JSON data into the datastore variable
+  with open(filename, "r") as f:
+    datastore = json.load(f)
+    lock = multiprocessing.Lock()
+    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args.type))
+    pool.map(run_analysis,datastore)
+
+if __name__ == "__main__":
+    main()
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720233450.238022-1-nhuck%40google.com.
