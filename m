Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRXEQT5AKGQEDVQEJGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9B324E807
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:11 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id z2sf849266vsl.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108230; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsQiTOU+NUBKQ9b9VutusA73qLnaeBgAofHH6ZioJGV9oVM2ob8Xvc7rT+BzWGLo46
         v9eQTCJ7jDa2EqyxN65uDfu+czOiRUAK8zggCtfbMaik87AKkYCP4i7BdaMDA/8x6cIC
         wQ8RNVi1AduqG3zMuCrd52zNiCwy/MXeWu8o1zKzjJLQGNRzjYYkPu2sprR/K81yu/2T
         oX1s8ah/0rye4Geg1CRHfp/Ev37Vy/vQcUIMRwDlHlwCyWEGROQ/Idn0/yCpglZ45+p4
         IXs0IbmRb4Bs5Cbz5yKVkHQdm9EwX87e6fIUz/le99H69FlSXj4Zhq2iuMK+imufzmIa
         7olQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=fnhJzCWmZBMPJf2ELvycSKRGvgZdBkCL3cmtVptW2C4=;
        b=YkomqudJTE5W3IbyzRZTZp4RerBWmegBDD/jPWgi0D1IRwKJuvI2F4rl0KDkCycHqS
         mwkSGZXb4HVrHPvWN296yAlTVi819hiN1UOP5qQq8ZKO9QelaRB96kO5xADJOzOafFIJ
         DkJDjsjf7up7fs1B2AdtLpNa7Qy5b3iuU6nvj6Qy7mfrTMMbVw2nC7ht5NVRCUUHyQAg
         7xCh7DWWK7MLm4V3aZOeKe0riawFM4nj37lN9nXOFonY/JycjKMo8f3kmExzd+s9lKXY
         EVRJFnxCtpgyNK1yQFR4NSJ02peTENhmzCSkXTeePZaQ4I/xlK4FF5TpymiGolOmsOBK
         MDtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=klQH9Dq9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fnhJzCWmZBMPJf2ELvycSKRGvgZdBkCL3cmtVptW2C4=;
        b=BTmyAnTWUN6QyvIc4TIjIQq2Z6kh9AdYt4pu0Md+QiKTohilk6dv2fYjxRZsC7urgr
         YFPvmSxg4+W5ADwlU20ec9glFVH52l9jdUD0RvKPPiYU5Wy3zBVB53B1Y8lQS5yTdPWS
         WFgr3LaA1R4oF+kTGLu74UPPw85sw3cyyE48zV0nWt0t8z/uoRDOgwg2vurcSPSN9Z71
         8t/FYR8bow9HCB0rS1IiHq9kpY7d3iDToXgrprV0MJt+PpfNhCMJ4Xl+OqwiR+x+7qxo
         EGLwoyb3ji26UK4iu+vr7Sg4FTE4ZTMB8jxL5+0Om6Mn/OU34rPLHLGbsy6JrqGh10Si
         eyJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnhJzCWmZBMPJf2ELvycSKRGvgZdBkCL3cmtVptW2C4=;
        b=kA62O2HXdKFmGlTISTy4F2f+9RY8eebIRfBOnVyPLQcO+dOr6+LJrRI0et+PdgPPTI
         X+kXMHl41zubzqsaKJdoSiLyTou5FS6zrL2HdXmGZ12wm6wtx2ER4ck2ElKEPGGUABK8
         EKv0RKqdZHpBSv9h8w9pBrRfpAe9pVbALOgGQfqECBWKLH3Ew4pdZfT5hudo5K8BfzAA
         pc36s+5eUPAZho52JVcw3Df6W+RFbGhcWD1/NA9zNLN+Z29Mv75en03uFjCrwZ/zo9pU
         18SAKuGCIuZEJ62mzNcgg++chJDUOLJFls3zIbj1XokKu/odPSOuxl2d81QYOj1Ih230
         WS+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zSvH7pD0mHkiUkKA4HPHo0NThpnFWTGCa9gWhwHoVg6cDUb0p
	FiaxkG/x1CbrVveY2M5V68c=
X-Google-Smtp-Source: ABdhPJwquxyvpKVkbqxNYGmHti7aDMfYWJlK8QP/+1oe/RpWAOCWwtGghJkk2wO7ir864uwmX+XidA==
X-Received: by 2002:ab0:1860:: with SMTP id j32mr3962194uag.70.1598108230460;
        Sat, 22 Aug 2020 07:57:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:de86:: with SMTP id r6ls36773vsk.9.gmail; Sat, 22 Aug
 2020 07:57:10 -0700 (PDT)
X-Received: by 2002:a05:6102:822:: with SMTP id k2mr4573501vsb.129.1598108229993;
        Sat, 22 Aug 2020 07:57:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108229; cv=none;
        d=google.com; s=arc-20160816;
        b=MDUiAKauqVS0pGuAI6khscRHWksQilE4WIPVoBbjmWNBvrbs5/sA5bCmyUes3vZv+D
         WlmTdg3q6OZnzWozeLfGLPmrr2jQjzsQYTktK3CUEkxQNC6W4/yYcxAnVBmnk3OvH/03
         2+/CFOOvOiqbwt4WkzIAXEi3SCSbo83fIl5hL9ZcXakgol2VWApEFEWTBv7eP34yQM14
         UhqKeKI64VRzmTm2ujUEcQKA4lONaZY5jH/Wme7WD8kGwMJf7elmxu4Fv0khvIdGZgPO
         BvzJWfe9b4Za8ZbnpP/ceFRwflZ1NWmeMY+JcwYdGqGcchFBIApZ6pmJOzPIpbaS+8do
         EEWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=may07TN/E9M6QqtFSP+c/0evMKANYT+YPi6JrwTRamU=;
        b=F78zic8NLULoHxOwuBGsAC0lILAEYDPVmvKQvfnQxRJQBoQcl9xd3qI7gRoNFxI8zn
         bZualjL/N2W3YT2us/TmOT5AVK0RwsI+D/uHbgos30/9Ic+qjXWhi6VSD2cBWxL0r7Ro
         dPbX4G9AU8J/PqUMnQWIFhzR7n40o623wbH+/ixVVOg9IxD+Ze2xU+/9jkossueG+eO/
         g+iSEx4BoixLaOd1tutU7jqzGCB5DWZboKkJacUNptmpkwr+TMcxGHDzxOCc6FnakOVN
         bDGnRtmPUSAT+A0JDx9VenFtO4S06ROjPLlY59CvT4eNt58kRJ3B0gSlOHBzJ1Z+7zKm
         S6Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=klQH9Dq9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id g19si238720uab.1.2020.08.22.07.57.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:57:09 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVZ025434;
	Sat, 22 Aug 2020 23:56:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVZ025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/10] Makefile: Add clang-tidy and static analyzer support to makefile
Date: Sat, 22 Aug 2020 23:56:18 +0900
Message-Id: <20200822145618.1222514-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=klQH9Dq9;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Nathan Huckleberry <nhuck@google.com>

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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

(no changes since v1)

 MAINTAINERS                                   |  1 +
 Makefile                                      | 20 ++++-
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
 4 files changed, 93 insertions(+), 2 deletions(-)
 rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
 create mode 100755 scripts/clang-tools/run-clang-tools.py

diff --git a/MAINTAINERS b/MAINTAINERS
index deaafb617361..19b916dbc796 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4247,6 +4247,7 @@ W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
+F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/Makefile b/Makefile
index 65ed336a6de1..9ece191d8d51 100644
--- a/Makefile
+++ b/Makefile
@@ -635,7 +635,7 @@ endif
 # in addition to whatever we do anyway.
 # Just "make" or "make all" shall build modules as well
 
-ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
+ifneq ($(filter all modules nsdeps %compile_commands.json clang-%,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
@@ -1577,6 +1577,8 @@ help:
 	@echo  '  export_report   - List the usages of all exported symbols'
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
+	@echo  '  clang-analyzer  - Check with clang static analyzer'
+	@echo  '  clang-tidy      - Check with clang-tidy'
 	@echo  ''
 	@echo  'Tools:'
 	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
@@ -1842,13 +1844,27 @@ nsdeps: modules
 quiet_cmd_gen_compile_commands = GEN     $@
       cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
 
-$(extmod-prefix)compile_commands.json: scripts/gen_compile_commands.py \
+$(extmod-prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
 	$(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
 	$(if $(CONFIG_MODULES), $(MODORDER)) FORCE
 	$(call if_changed,gen_compile_commands)
 
 targets += $(extmod-prefix)compile_commands.json
 
+PHONY += clang-tidy clang-analyzer
+
+ifdef CONFIG_CC_IS_CLANG
+quiet_cmd_clang_tools = CHECK   $<
+      cmd_clang_tools = $(PYTHON3) $(srctree)/scripts/clang-tools/run-clang-tools.py $@ $<
+
+clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
+	$(call cmd,clang_tools)
+else
+clang-tidy clang-analyzer:
+	@echo "$@ requires CC=clang" >&2
+	@false
+endif
+
 # Scripts to check various things for consistency
 # ---------------------------------------------------------------------------
 
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-11-masahiroy%40kernel.org.
