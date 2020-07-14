Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBIP5XD4AKGQEQZIIIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E79220103
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:24:18 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id i4sf62812otr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:24:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594769057; cv=pass;
        d=google.com; s=arc-20160816;
        b=ID2uYt+Dg5vHeaarTQbPRilgNGq5+ImXfaFiJVlw3IvO5tIavnAbnAUNOtu6ApYxwA
         zMU7ZVI5JBBXG8PMwAvUR0DAehGYMqyqywI9CnfUwakqySBDbMr5x9sZl1Lvc7/JOHfr
         O/c+HKOhwhw/MsUZjpafS1lXnfRJXc86ZoaRlikvuZ26mzWxp41StRG2FoJV7ppncan5
         259GxnBgzP4O0nBxKEBbFz9SiP0BnD72qEevmOijQWGFHArrcPlOevFIiip0Yn9qbJb6
         A+cweGsCzgZFfwm/USzgK5e1U1YvWvVX8ONSZKdCMrlmYw4A0oOoifp/fNov7v6HyU3j
         /yzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=axBLNVOadlXju7Oem5vfgiROhqtkrhukOidFB9v4hH4=;
        b=ret13LAE0WaWVtw/CydV6vrTercELvXRM6CcWjHLMkrGlHR48SoDWfJzHw7a0JvZja
         gU+x8O7GXCRNs6zrDxmvvzBlskYcDxaXOouM6fxKNqvi1Zjg/Hup6T93egDRwbmP2tXT
         VvSo2eBILvBk0OFsi4LGaJCa3e0MiXWiEG1EBDreLymksie+XOSRsV6NPJ0KXpolmMPH
         Hu2dm6MkGsKwSBp3wmC3bk8ETklgZdgSuLQKpDlYSs1TrxAxgeaZjvIRoUWIYHbPpymH
         mMh0gbB3/ScSDAVPvtQg064b2kr+lmPais1OqWC2A81MH18Hb1cXMafRHQvpyzQkgBVw
         ZwKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dOfVLO3j;
       spf=pass (google.com: domain of 3od4oxwukevua4hz73bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::14a as permitted sender) smtp.mailfrom=3oD4OXwUKEVUA4Hz73BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axBLNVOadlXju7Oem5vfgiROhqtkrhukOidFB9v4hH4=;
        b=loEObVE5lMw0BaNHdRr8SgRpRaxIo1BT1TMNGRn6J2CxP6wB/qCh8G3bCCdGVtqYd5
         bgR8lRwZQTDfM3/x4te1kQ6ZpJvgKttmhic8jKbM6tRJcRvr2dQGm7+TKjzX2bKSasOk
         g/g9UDeHuKz2v5InEPKvcsRYduJe5gDl9vbj4e8JRkRApUjHo7Xh36JIx7O+qmAjE2uS
         loKvVAB5mhkBjTigoSq6uWINt+G0wywtDN9hJ3j8uGPex6LcaRRnJnLHrOroncHYzITH
         O0zvG9euoINkOOoMZ5KDMSRyYOwhxCh/T/JSpzxKwD7CPBxTUAwh3KeSRPyV6m32nw4V
         Oxgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axBLNVOadlXju7Oem5vfgiROhqtkrhukOidFB9v4hH4=;
        b=qaOQ2IyxLdFj5nb9/t2IIH1FLk4rKElkUKxiY9HZuXsF4VyPIbPMWn/ptjbTAxbY1T
         5Th/y+24XOWGjX2q6q0o/pz/sJkXG/1ncnKf6QBxiq9XDAfr/A3QJLHEPmEtj2lSSck+
         kwHoyx3JkAg5Avi/d7HvwT9o5xMdNed4gZVwbIF91cjnIxnI2djQatnUkPH3KGTf9SaH
         pTOvqqNeJXzESFcdS9haEKjesrM/DugjHKLGWwdn/8mpnFjsxxgw+TmV72F2P+pFT+D9
         GpRWW5s022jxrunaHZOdH/L53POFQenXc05RoDRfckbgRbY9t2KPcMCSLKYKsP1t3jaO
         e00g==
X-Gm-Message-State: AOAM531/XbpSUa/+slqdeZB1ttPbtaAp3fXL7yNr1beEIe7Ta6pwoY8r
	oLtNRkfWn72FGeV+DtBIKkE=
X-Google-Smtp-Source: ABdhPJzE/n/4i3pEY9mgesqZv+/RjeKoCNGzNY0VIBV8TjnM4iNEwmkRy6tcsZMg3J1CBL/RA1voqA==
X-Received: by 2002:aca:c492:: with SMTP id u140mr5464759oif.114.1594769057319;
        Tue, 14 Jul 2020 16:24:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18c5:: with SMTP id v5ls47698ote.10.gmail; Tue, 14
 Jul 2020 16:24:17 -0700 (PDT)
X-Received: by 2002:a05:6830:1451:: with SMTP id w17mr6286891otp.250.1594769056989;
        Tue, 14 Jul 2020 16:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594769056; cv=none;
        d=google.com; s=arc-20160816;
        b=r5XfKasVHzpPEAlyTk49GlpkPv/EtkltWq6bueWmTv1PKmv3yt2yS+dbjtTsMGpSvF
         3r8yEO0KdNkKjquhGNa76KmByY458HDuXM2ac3yH05t6vLP+eIHz+DDePhdDodTqidAL
         sVgFOU7fojb1q7V1ZAOP8EswvkA39HiI/UfgvGBSST8XCWRrz6iQ2wjB5tWJbggfJzek
         lH7IZRIFvpvCA/tH9Vsr3vf2I2zzQECPtVouLU9cCDMXa9WyH2aRyiVp7RLQOI+4XJIi
         uutO5bo1UIgcVDwwxSqZyc5a0fctvU6UQ0DoKdfaYMyVinO7LoH45GjjjafYxML1Ub85
         XS6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2MgCYW3UINne2osnWjKqpbw5LUhaGCf3Xmk9thEs7q4=;
        b=0D5xe3HFXwHMQMZdWUXDUD19AZoW+BMPJZJEZLFuo+c0QNcM/Nf00FGzYcTNmh9oAB
         XJYyKSPGXJgVcEzU1QnY+8h1mTpYyp1I2fBBbEHQqyWMKEt+i0CLNTAMb51mGi6s19gn
         exIAj5evT0uBZbF2/DlsETUkMCitwnZuioNAWRlJLNfUgUjk4eoBj/GML3qno81Un5WD
         J0BKTYiulZy9SnMBo73RgaFUExN5kfssI5609qo16PHWL5z5hrzXglsTH1YNqP5vEk3G
         6k+31HAjqM3LGYHQAuICa7VrOXtsU6u8mKeimOI6Qri0pboYvSVd5Hf9AKp4yQLW5H7f
         aFUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dOfVLO3j;
       spf=pass (google.com: domain of 3od4oxwukevua4hz73bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::14a as permitted sender) smtp.mailfrom=3oD4OXwUKEVUA4Hz73BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-il1-x14a.google.com (mail-il1-x14a.google.com. [2607:f8b0:4864:20::14a])
        by gmr-mx.google.com with ESMTPS id a65si28056oib.1.2020.07.14.16.24.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 16:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3od4oxwukevua4hz73bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::14a as permitted sender) client-ip=2607:f8b0:4864:20::14a;
Received: by mail-il1-x14a.google.com with SMTP id t19so147791ili.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 16:24:16 -0700 (PDT)
X-Received: by 2002:a05:6638:3aa:: with SMTP id z10mr8679368jap.54.1594769056604;
 Tue, 14 Jul 2020 16:24:16 -0700 (PDT)
Date: Tue, 14 Jul 2020 23:23:49 +0000
In-Reply-To: <20200713225103.GA1095851@google.com>
Message-Id: <20200714232349.2198114-1-nhuck@google.com>
Mime-Version: 1.0
References: <20200713225103.GA1095851@google.com>
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
Subject: [PATCH v3] Makefile: Add clang-tidy and static analyzer support to makefile
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dOfVLO3j;       spf=pass
 (google.com: domain of 3od4oxwukevua4hz73bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::14a as permitted sender) smtp.mailfrom=3oD4OXwUKEVUA4Hz73BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--nhuck.bounces.google.com;
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
Changes v2 -> v3
* Redirect clang-tidy output to stderr
* Style fixes
* Add directory to MAINTAINERS
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
index 000000000000..7ad3308c1937
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
+	$(PYTHON3) scripts/clang-tools/run-clang-tools.py static-analyzer compile_commands.json
+else
+	$(error clang-analyzer requires CC=clang)
+endif
diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
similarity index 100%
rename from scripts/gen_compile_commands.py
rename to scripts/clang-tools/gen_compile_commands.py
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
new file mode 100755
index 000000000000..00b8532c1729
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
+  parser.add_argument("type", choices=["clang-tidy", "static-analyzer"],
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
+  checks = "-checks=-*,linuxkernel-*" if (analysis_type == "clang-tidy") else "-checks=-*,clang-analyzer-*"
+  p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
+                    checks, filename],
+                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
+  lock.acquire()
+  print(filename, file=sys.stderr)
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
2.27.0.389.gc38d7665816-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714232349.2198114-1-nhuck%40google.com.
