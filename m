Return-Path: <clang-built-linux+bncBC7JPD5NQEBBB4O2U7VAKGQEWGBOXAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D78083ADE
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:13:23 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id q14sf56767437pff.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:13:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565126002; cv=pass;
        d=google.com; s=arc-20160816;
        b=WswvkKfGhenqgiQdK1w4JhzF1igObICL86d0aTlhpLA0cjXSyFhN07RuFsGx8w1ICl
         NZUkp4lD2QD9JDli9WvasTf4IHDUnhtcEubG24ytIF1DNNL7DW9rZnqO4Yvp4ZOvWJ2U
         eT+IYMiDjCNG5JhSewdNJRPzfoBzoHwbBlLjcHbu4Tk2BaHHZVJjhKYEik542urWLsJA
         2No4GmsGyVl/MdkKanqfRXLh/oztJ7DMdk73aarfiRCmSAKv3+/0Ka4OYJkpqRxpzXls
         LaM9XrmH7Eu1Y8bAqFz6DSS13OdqnmRBKA88BtHJkKewOoQkWd3s8Lis7Jua9+d51agk
         AO3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=N8vPSlsBJcY0Y+r0ksHOyOGzQJHwpIYxSnxl8XFOAEc=;
        b=Hl1fyqZxPIEnXESvbak5JcE+sOWTVYoWXSOM0XeU0x1RlzydLf7vdyxTMErOYSqiMk
         0wzdv9INa+mV5qBZ6fi5tkQ7cuCE6o15upNdw0wok1Vh3SuY1kBHaP2v8eekpvcwsk7h
         F2Hx2XGk6exo+vLU1XJLkjDiY/WCXJTi5/U17CQkDmB2eSBSVhjKU6IxKCGKNabrHPaW
         /xFtVWM3VI2KQhbzPt4lc2iqKEI+hHfmAsvSOusA4f/VglKB65MlFrT8vqwzPABVpaom
         4BqBXg/k8e9P8CwRSUpMPkddqXHsJl9z5vJ3ILeUz12vYrdZNISgDT9VNWs2TZvZE4/j
         Lqrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NLzdWuiC;
       spf=pass (google.com: domain of 3co1jxqukewmoivdlhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cO1JXQUKEWMOIVDLHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=N8vPSlsBJcY0Y+r0ksHOyOGzQJHwpIYxSnxl8XFOAEc=;
        b=d/O8J44D14r2JWzx+GnHYXwxnOGxfEliZY+ox08FW+eLSc2p6yq/nyCW70yI5oPXRU
         JebNPMawLFARuxJIID+7zsZJFYJhuYhf8uZ0ErHKIj45DlmTPj3T0NvyXyQ1y1IHS9HA
         OgfEwV+Hgsp3HgmEG28dmIeZAeXWaLf7PUi6L50PXnaupRZNNaS0L49RRGgiocHGvTXt
         mWDc1CCA8tyEOZ5vdprvibfpXizaCWuOg5i0XCYNBtkpwOUrE7BB4iaFiKUTNVJZD/HX
         q2sMtQHu0bFZxUxjnNdvhuAOHaim9YFzQ99z1sIvtrvBgdgy7jw8EawA2dN38TEBNPtZ
         sDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N8vPSlsBJcY0Y+r0ksHOyOGzQJHwpIYxSnxl8XFOAEc=;
        b=ukblH0WQUR4acPMrBYbIqP1UlC6wl9CQu+AJ0r6UQPS80pb8uzRtoly6Cs+DBnu5me
         nMulOPP7rNmNZ20whcu69iEp5ckebRErFcWYWXVnqKT6hTVuQvw5Enni/9IjXmWB8p8O
         H39wleCtWLsEiPfhd5UQyeq6JS0A4Z8qwUD7nWuSyI3UrgTC6HasSZqHG6EHwfdcz4Js
         NVOM7jTU4NPqcJ+Llp3OFMvgN0Iwb9l4+67HXNftBF/c7Dl3DCarq1AYC1dsE1k62YwA
         eTgAdR++k5V/UaR4MlVohK8s/JkLrWUm8haG5qym8B91ccPPk1hBo3D/QmwscqEqV1Xl
         +LiQ==
X-Gm-Message-State: APjAAAUxYtOJHSCl+ok07Loyb4JvZc/XGtxcW5iUL7Yc3lV6VdHBu0FV
	fqNah0MgEjuaOtZAfk9MRns=
X-Google-Smtp-Source: APXvYqxk8o09pGn37Q4dHfE/zoXwKCBccMR9d5R+9vCaFgp7bhnvP7OsQLpFt9fljpWANfwSqOqveA==
X-Received: by 2002:a17:90a:7d09:: with SMTP id g9mr4996972pjl.38.1565126001925;
        Tue, 06 Aug 2019 14:13:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d91:: with SMTP id d139ls17664148pfd.6.gmail; Tue, 06
 Aug 2019 14:13:21 -0700 (PDT)
X-Received: by 2002:a63:704:: with SMTP id 4mr4757287pgh.242.1565126001505;
        Tue, 06 Aug 2019 14:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565126001; cv=none;
        d=google.com; s=arc-20160816;
        b=JOhXTzZfQkvDdDSJGYbhMfqlAOi2bg71x5KoptUF4YIxxWgyYy3YPnHDs6TG4PxUdS
         xcdN1Ldk9M8Py9TlMIxQHu/BllEfn2kL3wDIN3Dmn3Nq+vE4Vvbtsu5FUO0AuwNtF5l5
         qbFbp1r7liWmXScKzStRMVrfauUSA0/QltuW7godNbHGREXSGgwrN3TrsYiwYPL3BRxx
         b54rgWT5MwZQsG06gdysP/RjU4Xy8via+yUQNq2H/WhZhmyODZIyPofmTb60mQu3aJA4
         rIUbCJJWfZNbsMCI1OPqxeK7RqKWmX7nZhpAIvjA1olYPpny2ddN/Czr9lWvIh2zNaWm
         tBiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=a29LgJr2OVNgNdoTJtcopFf7qnnTbwaGIZqViSAu3/k=;
        b=razSox8rlYvaaJKgOmLnRFX8G+2s/zloSAa0cy3Wi2VovdOHeR84AJR2jdM6vQDqEx
         L6LAiAqIXSE40SNBPvYNpN6oZc96/mF1/EvMx4X04Bpyav2fg1v9yLOPBBIDzdxcBJ8A
         A72jEU90JQ0b2aqibUzVUWz1BUqOQtnsG5RU16n7mAw17Ulh8Ve6EO0YjdGyHtd+LedO
         OjDH5R7993zEHq2Xt/GHhZQKCSZE0/3pPBudD13yDfSiRQBDwd45WpvOm7r5oOrpQgDK
         Mwc8E7h8iL64rm7c3E5zK6SrBzOcP1P9BwEkvifd/23ULiWBBHojdcNF8cwcCeb/gM35
         mOdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NLzdWuiC;
       spf=pass (google.com: domain of 3co1jxqukewmoivdlhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cO1JXQUKEWMOIVDLHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id f125si4231533pgc.4.2019.08.06.14.13.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3co1jxqukewmoivdlhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id m19so41187039pgv.7
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:13:21 -0700 (PDT)
X-Received: by 2002:a65:5183:: with SMTP id h3mr4783468pgq.250.1565126000981;
 Tue, 06 Aug 2019 14:13:20 -0700 (PDT)
Date: Tue,  6 Aug 2019 14:10:46 -0700
Message-Id: <20190806211047.232709-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [RFC PATCH 1/2] Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mark.rutland@arm.com
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NLzdWuiC;       spf=pass
 (google.com: domain of 3co1jxqukewmoivdlhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3cO1JXQUKEWMOIVDLHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--nhuck.bounces.google.com;
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

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
These patches add clang-tidy and the clang static-analyzer as make
targets. The goal of these patches is to make static analysis tools
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
are ignored for analysis.

The full patch can be found here (https://reviews.llvm.org/D65828)

```
void IrqUnbalancedCheck::registerMatchers(MatchFinder *Finder) {
  // finds calls to "arch_local_irq_disable" in a function body
  auto disable =
              forEachDescendant(
                  callExpr(
                      hasDeclaration(
                          namedDecl(
                              hasName("arch_local_irq_disable")))).bind("disable"));

  // finds calls to "arch_local_irq_enable" in a function body
  auto enable =
              forEachDescendant(
                  callExpr(
                      hasDeclaration(
                          namedDecl(
                              hasName("arch_local_irq_enable")))).bind("enable"));

  // Looks for function body that has the following property:
  // ((disable && !enable) || (enable && !disable))
  auto matcher = functionDecl(
      anyOf(allOf(disable, unless(enable)), allOf(enable, unless(disable))));

  Finder->addMatcher(matcher.bind("func"), this);
}

std::string annotation = "ignore_irq_balancing";
void IrqUnbalancedCheck::check(const MatchFinder::MatchResult &Result) {
  const auto *MatchedDecl = Result.Nodes.getNodeAs<FunctionDecl>("func");
  const auto *DisableCall = Result.Nodes.getNodeAs<CallExpr>("disable");
  const auto *EnableCall = Result.Nodes.getNodeAs<CallExpr>("enable");

  // If the function has __attribute((annotate("ignore_irq_balancing"))
  for (const auto *Attr : MatchedDecl->attrs()) {
    if (Attr->getKind() == clang::attr::Annotate) {
      if(dyn_cast<AnnotateAttr>(Attr)->getAnnotation().str() == annotation) {
        return;
      }
    }
  }

  if(EnableCall) {
    diag(MatchedDecl->getLocation(), "call to 'enable_local_irq' without 'disable_local_irq' in %0 ")
        << MatchedDecl;
    diag(EnableCall->getBeginLoc(), "call to 'enable_local_irq'", DiagnosticIDs::Note)
        << MatchedDecl;
  }

  if(DisableCall) {
    diag(MatchedDecl->getLocation(), "call to 'disable_local_irq' without 'enable_local_irq' in %0 ")
        << MatchedDecl;
    diag(DisableCall->getBeginLoc(), "call to 'disable_local_irq'", DiagnosticIDs::Note)
        << MatchedDecl;
  }
}
```

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


Why add clang-tidy and the clang static analyzer when other static
analyzers are already in the kernel?

The main draw of the clang tools is how accessible they are. The clang
documentation is very nice and these tools are built specifically to be
easily extendable by any developer. They provide an accessible method of
bug-finding and research to people who are not overly familiar with the
kernel codebase.

 Makefile                                      |  3 ++
 scripts/clang-tools/Makefile.clang-tools      | 35 ++++++++++++++
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/parse_compile_commands.py | 47 +++++++++++++++++++
 4 files changed, 85 insertions(+)
 create mode 100644 scripts/clang-tools/Makefile.clang-tools
 rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
 create mode 100755 scripts/clang-tools/parse_compile_commands.py

diff --git a/Makefile b/Makefile
index fabc127d127f..49f1d3fa48a8 100644
--- a/Makefile
+++ b/Makefile
@@ -709,6 +709,7 @@ KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
 
 include scripts/Makefile.kcov
 include scripts/Makefile.gcc-plugins
+include scripts/clang-tools/Makefile.clang-tools
 
 ifdef CONFIG_READABLE_ASM
 # Disable optimizations that make assembler listings hard to read.
@@ -1470,6 +1471,8 @@ help:
 	@echo  '  headers_check   - Sanity check on exported headers'
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
+	@echo  '  clang-analyzer  - Check with clang static analyzer'
+	@echo  '  clang-tidy      - Check with clang-tidy'
 	@echo  ''
 	@echo  'Kernel selftest:'
 	@echo  '  kselftest       - Build and run kernel selftest (run as root)'
diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
new file mode 100644
index 000000000000..0adb6df20777
--- /dev/null
+++ b/scripts/clang-tools/Makefile.clang-tools
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+PHONY += clang-tidy
+HAS_PARALLEL := $(shell (parallel --version 2> /dev/null) | grep 'GNU parallel' 2> /dev/null)
+clang-tidy:
+ifdef CONFIG_CC_IS_CLANG
+	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
+ifdef HAS_PARALLEL
+	#Xargs interleaves multiprocessed output. GNU Parallel does not.
+	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
+		| parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,linuxkernel-*" {}'
+else
+	@echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
+	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
+		| xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,linuxkernel-*' @"
+endif
+else
+	$(error Clang-tidy requires CC=clang)
+endif
+
+PHONY += clang-analyzer
+clang-analyzer:
+ifdef CONFIG_CC_IS_CLANG
+	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
+ifdef HAS_PARALLEL
+	#Xargs interleaves multiprocessed output. GNU Parallel does not.
+	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
+		| parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,clang-analyzer-*" {}'
+else
+	@echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
+	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
+		| xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,clang-analyzer-*' @"
+endif
+else
+	$(error Clang-analyzer requires CC=clang)
+endif
diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
similarity index 100%
rename from scripts/gen_compile_commands.py
rename to scripts/clang-tools/gen_compile_commands.py
diff --git a/scripts/clang-tools/parse_compile_commands.py b/scripts/clang-tools/parse_compile_commands.py
new file mode 100755
index 000000000000..d6bc1bf9951e
--- /dev/null
+++ b/scripts/clang-tools/parse_compile_commands.py
@@ -0,0 +1,47 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (C) Google LLC, 2019
+#
+# Author: Nathan Huckleberry <nhuck@google.com>
+#
+"""A helper routine for make clang-tidy to parse compile_commands.json."""
+
+import argparse
+import json
+import logging
+import os
+import re
+
+def parse_arguments():
+  """Set up and parses command-line arguments.
+  Returns:
+    file_path: Path to compile_commands.json file
+  """
+  usage = """Parse a compilation database and return a list of files
+  included in the database"""
+  parser = argparse.ArgumentParser(description=usage)
+
+  file_path_help = ('Path to the compilation database to parse')
+  parser.add_argument('file',  type=str, help=file_path_help)
+
+  args = parser.parse_args()
+
+  return args.file
+
+
+def main():
+  filename = parse_arguments()
+
+  #Read JSON data into the datastore variable
+  if filename:
+    with open(filename, 'r') as f:
+      datastore = json.load(f)
+
+      #Use the new datastore datastructure
+      for entry in datastore:
+        print(entry['file'])
+
+
+if __name__ == '__main__':
+    main()
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806211047.232709-1-nhuck%40google.com.
