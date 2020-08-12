Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNOT2D4QKGQEQ3QBBVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0FA242E23
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:41:11 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id l10sf587181vsi.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:41:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254070; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJ46O9VilzoiYnb6+6Izphss6NaJlGNqGuwr2ABmMxOxjsLFrbIfZrg7n16rdva0mx
         Q+KkGsGeJ1ibRaJtO2xDR55Mht/z4v5k94MumKq6VCbxHYpEHkfASWd/lzmdPbXxAfno
         F9+qv/IXJLVFB+wJ6ig4JEqrVyIquCfWM1jKPLvxtvsEUyIdEgO2iL37icj8mLkOM/91
         TCPBsSeOzyyzgNODEVRX+soR6dluumKC0ZDHAv3g3iCoa3ngunXIcgPg3W1+jzsh/UwZ
         IaPo7pJrI66nOP2X07n3/RcqxtK4hkucAwHje6QD68b5C8jKXkTCxDoBeXHa1b2LDlZ8
         R3wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=0X4hIvHU2qvqX4FV2FWajBYeD8ziYJVOAsexaxMBWDg=;
        b=t6GjpdCPbblHaHkxIz3oesOmkxyGbFD97Uy4HhB9J7dOb1YbThdknrOTc/sO7Cto8d
         vwAcTClXDipio2AUiRONeQvIxCRRdpe8QfYEEv7KUjM+3B9G1ZAq+9Qcn/jLG3GEr10K
         JGlL6ZpSNKvtCBcf28r6TH0uoU93hpW1oxCORVDhVG2l8jggZHKSP4eTvDKBOvnqIUO6
         9fOKT+7vGIV5dYh6IThp7uZIDawF3wUyTQEFgh8/ykD9YAY/geWJpX2S9iOn6YnbDoRf
         kMV+2GrAWG5iZVbh5Kou2c5wePyOOn1CQktWBPFBHOf3WFn0VNctODWXE5s8N8fsBGS3
         tSRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LksSuEbY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0X4hIvHU2qvqX4FV2FWajBYeD8ziYJVOAsexaxMBWDg=;
        b=pQ+h790I2tr9jsKiWFAfblNvexXIb8fwVpFuNxGH9iRBmtA7OVIBQNejAoYQ41F8RA
         63WBq16imsPeGnn4mT9q8YHE50ZdGnNEVEUPcKDFfieyT8WH44Yx5pTFBtU7R2PAgFik
         8O8idAzJe1MPK9az39hyfVUCx2VnsLHaWXGhVWygNrf/gmbM/de713DTNJurt3Ev5mS5
         MSpW6cLcCMHPFSoAksT1YtwdbcFCZW1dInNOgZhyvc7pbUhqq2C6fuAemHaDY2hHxwHd
         9+GKmSLTPA8Vu+vtNiT8ykOWu4lLbkCA0v9OyKrZvShv0hB7eGJ2fs/LdKSQ7VmhxQDs
         2a1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0X4hIvHU2qvqX4FV2FWajBYeD8ziYJVOAsexaxMBWDg=;
        b=EYq9TDCtTnY+776mbeysJOJs1loqST5VsrdIz6/0aBr7GzDvEm93J4E0CL52QuKrsj
         AsZh1vxk6P43JJ9LUKIEndZGa8fOq5xUQlZY/elgiNtHOFQbzx9eilz6JEr3vaYRDF8/
         TlsrAr+a81ixEQHU+j2dkXIjM24sOxmZSeqStxeRRZskFe8i9J+BIkc9zedzr2e8QGeK
         cg7WeWKY0+whVnMsdbGuEXerzFwBYHc6wa/HfmonjVbY4AhBMb2lVeu45HuA9nLu6+24
         PMMKRwMNuAYWK1uofMDD+N1bSU4a7gTs46sgg4QEXirmLAFTjd7ycUzkdo1j/GgMHFqI
         JG0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CAfxxMV8H/CNZ7CqXoOZ/FoElWcqH4USNbC7Dgaxp8iYIsN5b
	kHcjTh3/t9t9E+eleDGgBks=
X-Google-Smtp-Source: ABdhPJz1ZPg3aMEbhzjHe/7uYOO5qQq00vxgj4Z3NwhhbzUATuMfpT8evb/mKErenODMd98A2R0lXw==
X-Received: by 2002:ab0:5fc8:: with SMTP id g8mr425701uaj.92.1597254069811;
        Wed, 12 Aug 2020 10:41:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3cc:: with SMTP id n12ls326836vsq.8.gmail; Wed, 12
 Aug 2020 10:41:09 -0700 (PDT)
X-Received: by 2002:a67:6996:: with SMTP id e144mr213163vsc.185.1597254069263;
        Wed, 12 Aug 2020 10:41:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254069; cv=none;
        d=google.com; s=arc-20160816;
        b=S7Crn/hs8609GAfAdZEvq10MPnYS2aoronvOuoxSAD66F5LpsVFJ7jkxN+P4lrcfYp
         zVB2gkRtPgGtmpD84af2E+VF8jYvPAQOjTfRgKpw+oQ31mBBc3Gk6pEXZzUlqC5Czm3a
         /PmNOdo5vPTIa5EC0Q3TrkJiwzM5pVxPhStD/5G67vhj0nvEoZRiHVVwmiPA9f511d0Q
         BCasguJEDcHGLAqV0vZLkzMcQwzBM+jd2y4kFKzqMmivXC4z/7WE9VMFqxyBvB3F00CR
         ViR8xI9EeRAUHmq8R+x/ap8W22ybRTDssbxgjIzWrAN0QvKxNSFP1OErWU5rVd084u7a
         QVFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=WQk02UTNvMLHboDAPexx7WW+ma2p9oZsZaIcALTQcys=;
        b=FJq2BlsRDm6rTR6TjNNPHLn4HBCmCdtXeD/nu8Hp6PR0ZbtRHDlW6bTbE5P+q2gpH2
         wL1A9tiG6duaC3LZyQ07nm0qtBoEg3oMbM5PcbBtIjzygs/PGf7q6IuI6NwPg6aJySgw
         6pPmhmFCGSpy1cgehkYhQC33pkjo5SCxM4m3v49cwWgZIkoNo88zdhDH9kBMFy2B67qu
         32MwBItG9GOycljKmcyM98iKbeZGy1teWQ2XNN9dGkpfHXaUcGhwSx+79aBQkSDX2oXr
         0/iuY2RZjU6GIBKliASWmm2KrXxkkHeX2P0nuFDIErO/v43pRY0/QctCI4yy9ssmrMBj
         Kwng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LksSuEbY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id u18si223340vsq.0.2020.08.12.10.41.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:41:09 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126025067101.bbtec.net [126.25.67.101]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 07CHeC4F012279;
	Thu, 13 Aug 2020 02:40:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 07CHeC4F012279
X-Nifty-SrcIP: [126.25.67.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] Makefile: Add clang-tidy and static analyzer support to makefile
Date: Thu, 13 Aug 2020 02:39:58 +0900
Message-Id: <20200812173958.2307251-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812173958.2307251-1-masahiroy@kernel.org>
References: <20200812173958.2307251-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=LksSuEbY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

 MAINTAINERS                                   |  1 +
 Makefile                                      | 20 ++++-
 .../{ => clang-tools}/gen_compile_commands.py |  0
 scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
 4 files changed, 93 insertions(+), 2 deletions(-)
 rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
 create mode 100755 scripts/clang-tools/run-clang-tools.py

diff --git a/MAINTAINERS b/MAINTAINERS
index f77df02e4121..7ffddfecc711 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4246,6 +4246,7 @@ W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
+F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/Makefile b/Makefile
index 4d65affb6917..95cdbffa29e5 100644
--- a/Makefile
+++ b/Makefile
@@ -634,7 +634,7 @@ endif
 # in addition to whatever we do anyway.
 # Just "make" or "make all" shall build modules as well
 
-ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
+ifneq ($(filter all modules nsdeps %compile_commands.json clang-%,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
@@ -1572,6 +1572,8 @@ help:
 	@echo  '  export_report   - List the usages of all exported symbols'
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
+	@echo  '  clang-analyzer  - Check with clang static analyzer'
+	@echo  '  clang-tidy      - Check with clang-tidy'
 	@echo  ''
 	@echo  'Tools:'
 	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
@@ -1837,13 +1839,27 @@ nsdeps: modules
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812173958.2307251-4-masahiroy%40kernel.org.
