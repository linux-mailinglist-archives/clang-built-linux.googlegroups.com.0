Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBXFUQD5AKGQETPMAHEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C5024E04E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:53 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id k4sf1824352iop.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036572; cv=pass;
        d=google.com; s=arc-20160816;
        b=rGrDr0sdmj7O9WV3LFM4hKn5aj6LadPBDDszxuT2UwMAVLyLmhIw6KwnIrC2ji7ngt
         +t09CF0ZvPepEUnmyT7tcnvZDqJ4UfAULFGzPWzJiPYm/XHbPVDDNsD4FLrLqV41l4lK
         Cl3xI58TA867PpNpUhiSfKqWnEuaul8Rl93F8YPNROOQcuI4HkpxB7K1n7z9B5O7+XFP
         xDBOWZRGXHjNYo5cRNYRJRYYnbmAGLKzRIMtd2BgeJ4WDVe3HzTgxmTUPxLKFFRE18yK
         6OhKWU4di6rsrpEa/F1I4CGsZuUU7TsUNytBkDmVs2VlN2CKpmZUaSM/qSCdmv6+LD4b
         Udew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=OOHPQrctIKEYRTONE1NidPW+QOF/OB77Dw3aNAgbPhA=;
        b=PiWmUcbf2fk6tcqKCsIUwoavBgx8608Zt5vMC8Zza5wNG0p7PWwIe8MnPAINlV/HHu
         IYHVG8xBvaezhtuRTUROwW6pU2wAPdGNmqUY/CMCjFnFxzIaU9IofLcXANg0KmRR7vF+
         Q3Jf/efUsgvlKb6DfxRQcB8tXcnNm/FrHjkbLivLnEcqFgh06TBYLxNKh+6FIfJKtWih
         t//HjjOlLEiFV958ZKjqDcgHDpTq9MybdhlUm3i+aa+0StRvY2oq10+vbBSQw0Zg8Y+L
         1kigV4mj+scgcxZYGcv972fpp/5gcb4t/wpruGb15NwtX2WZLKvLxuGXeC+u7HDXRdmZ
         ph0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qyEu1Gsk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OOHPQrctIKEYRTONE1NidPW+QOF/OB77Dw3aNAgbPhA=;
        b=VCwCfkOiEootT/7Udu5Cz4WCE3eHdJSR4cXQljNeVqBBa5skoMLT6DAh66PMP1Q3xC
         pNXwhiIEw6U8WEjlHzOzDwODKb4IW060XEmE0FDhr3OZiyIlrEBoQlyKDguJiYfeZGMu
         DUeImAKfwWITMCAPQ4IozHlu/r3kSYm+T7lwxmYRYqJs9PgkxkZfpFdV1kIG+hqsXe4A
         9w1b+chLu4qzk8SP88ptue5kZFPT0Ykm+WewS4WV9X8bQzoIl3OfIrPC9XLgD71hG0hP
         gb19LQGvFqfTBOdyd+hJqlDglAierfYYnDTCe0f1DQLFGMjjPjXoPzr/1wTPpfzuYuSB
         fiiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OOHPQrctIKEYRTONE1NidPW+QOF/OB77Dw3aNAgbPhA=;
        b=of2YOQxmpGrJAHI2tjvqElOEOm8wXZWGtUj/fj4ilForRyP23uLbBSVdUXi0vvTsu3
         gQHxXYjuOTQ+QOGEalmRJR6crEwhsPo7VHkWfyh2towY5K75MRJeOoTbc+A8FTFyvgSU
         Sc3zEsZAKxSvKfKOsm1+map3GPScy8YvaiL7Ze+WYxcpHTeArL16AqQCPexGJljfoAaS
         Ev26CLYpA68LoV0az0PsoR4moEJ+Ra3ko12bSbGmuLCwJ3NAK0MxvWm9ZedGdlip/EZc
         BI9ze65Q/2bnhxntJV0WdVPHQKT2MW25YqWYFfl1pwYLU4dZzysv+8UjgW3isQCGd+uo
         HdDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MUy+xLmN8pNIzzmxW7WdgU3UR3X2fCV2fH+5oaWF4pDsRliRQ
	KVtTo23tXaUO6PEbBGIpqa0=
X-Google-Smtp-Source: ABdhPJw/TaRUgXF7DIiFRyODgHka52X0xiw+rERtv/3dkfYaPvYOpaAlfj+EKzFSql7J14p/y1rvhQ==
X-Received: by 2002:a02:ce:: with SMTP id 197mr3858143jaa.65.1598036572598;
        Fri, 21 Aug 2020 12:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls379885jad.11.gmail; Fri, 21
 Aug 2020 12:02:52 -0700 (PDT)
X-Received: by 2002:a05:6638:22c7:: with SMTP id j7mr3719996jat.77.1598036572206;
        Fri, 21 Aug 2020 12:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036572; cv=none;
        d=google.com; s=arc-20160816;
        b=GHxqpKoNIeMNUjIZJ0wLzfLYB0Lg+k+H77LgAI4SbfkhthsIpWqTbVwt00ZGQgNQhF
         o7pcB0IWsKsCIlxLuKEAyGu1r0kIjUulR84t2yzIaJv/TGlSkQ++93YvDZZKC5qlRVjx
         W9H6Nw52Zcd1KBIuOmimir+KIs8cK5xD2b7RGH6TTWY0ajyhSuLrXq0YiDsudgdSTZQE
         8rehUQyV+q3i8Al5s+byocmmoP30WvKQB7lu7PmI+6UfNzMy1o5cZRlOqUgKdUW5IdCJ
         FRE8C4i7zEy4Z9kGPugLTSnP3B/XHnZYtZTNIoA+eazIZHqhm9r1hYrebkWNBIcqDPmc
         pG2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=may07TN/E9M6QqtFSP+c/0evMKANYT+YPi6JrwTRamU=;
        b=owTv8JEWxutxr3HCUeH3b3d9keoE5ywnFWGc+4a6aRpRZoYKJ/CRmSuNNNtRYL/2Wg
         lATrILLQ2nlA6Zb5p7chudZY1wu93RaD5oaWR9TLIWXttIQNyAHaziN5C8Q3vdK9Dmg4
         NNL6PFfVKT8nnCILV0lkQMHrM0B29Q8NgYKXuhhPPMq+aoWOjeperjnV5KPNXs3vrdcF
         INYy730JjD0F3DShbhVN+XuhXrCa/NqLOaysJ2RNDW5yWFsjOa/XegabaBft95K4G0xA
         WuGilaMvApIz8p2AZk+x2h0XB7/8hyUTFjNr0aHstwxfcOmY2X1TsiEUqtmuk+pyWYGa
         1qXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qyEu1Gsk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id s189si136393ios.3.2020.08.21.12.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eb027595;
	Sat, 22 Aug 2020 04:02:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eb027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 9/9] Makefile: Add clang-tidy and static analyzer support to makefile
Date: Sat, 22 Aug 2020 04:01:59 +0900
Message-Id: <20200821190159.1033740-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qyEu1Gsk;       spf=softfail
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-10-masahiroy%40kernel.org.
