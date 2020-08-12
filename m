Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBK6T2D4QKGQEDW2H5FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D42242E22
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:41:01 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id y9sf1152194otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:41:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kxh5nTvNOAl6CZEfi24RJWectiumUtJEcs7j+O3SvuDIR7bon4bg4WIHF3I9uXycWE
         L71YLZCOsycE9378Jsm06LYHInbxxldXSxZzH7xTjK8t8Lknb/7WGdeddmfIxaz17Wob
         itRFYeorAjAbwbZtwpTfCes7aoK59lLPpYFmnnw5m+kC1sBl2eevYoPaWxW1iWf32DY+
         eOa3wW72Am4QZCNlPDUA5g9Qyj6vMWcbgu0K/2oiaLvkgSPDn5DSLiqSCQ6JixqnkH6s
         NSFjxN7CmKIosTHtaYTdQUFZEyUXcWZmoostPs9augTMgVxaZOi8zlplBJvMH7u3t0wF
         hNxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=CxBcPp/Y0Q9ZpAvk4coj3yoe7kEP026GdDQkLdwO1QY=;
        b=SWU0vOUFq06MXGPYf3fVOY1yGIxpyXV/eTtj/oOSC4kYQKDlItgiCWVm5MBTBUZddK
         0U4t+VWoJQUCYchXQ+K2JlJzbZ55L7rKPPeVlKdJpMdJrsu0k9Gqzo1h2zHLbRdWCXL9
         1otqLast3IyVY4C8nUITyWAs96ijkhH0ZROn9rodtoEvvuMy7IJjt3YdvPDDkRl2LTmZ
         mkUIRhoqUXY5TGWp3YEWPviRkTW21ya8CLZcIK6uQfydf0qHAXi2cvwkDqFBsKXKoO/T
         ascgYovmgKyXgWhE04WleHm5OoAjil5nydXSt3N+BiQ7yB0KjJX+fL5sHJNjstd/1/AB
         XazQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rAkZ3k3e;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CxBcPp/Y0Q9ZpAvk4coj3yoe7kEP026GdDQkLdwO1QY=;
        b=UqnYpP1cwM0LS+71+JyVpQ249VU5/uMzeBEVV7mwZWlJyBs2tBVy5WDxxz2OmuBj7V
         M3/zQ7ut7cFG48PVLVj21OtdTFqEAVEn4gWg3gr1sQCyOHsPw6bAzisJXxo1lHes8zJx
         cmjiMb6UdRpLCB6abNLcO9yzAR5HdSI/wR64M0ZbBIJt3Rr1/GGPfOO59lb24kYL+nLJ
         JJSPXvIK/1I7r1AANOXSTFmOrMhezRRrnI2WZDYtspB/WdJl3wGH2P/OpF+XCkkepciS
         BMDefL6dY0jtR21LK2H1tpu69wWinbHq7H3eacGJMMNGVETVxZVsBbr5WRKM/Cm6usPQ
         lnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CxBcPp/Y0Q9ZpAvk4coj3yoe7kEP026GdDQkLdwO1QY=;
        b=LBgkdGGaFNpQxsi28y+a3a2oEaLZOq7ZzB85ddaNQ41kjzBRRGYVMfSYsFLOZG/NKb
         iQ6PZM2WuE0RbMcmMCr/1f5evhoklDj41RLiItgfTI9JROKiSWD85XG6ifQFEO8IMAkD
         RBBFFy5bzTgrdGjRktNqCuhc0fnhqRFGeqNxl7L6tCMAkCA6nFrxzlkzC0VhyjsfBcY/
         BGBDsvfQV0Ga52oq6kPqj/olbb7XPf3LjfyJSjT26B+iuwIihx+byL4MKkWrNQdKLysB
         1YvU/BRl9qPqUK+O8MR7HwqAIWG024GJScVnPKf75RGpvBJXr1iwfhDGeVC6cxaUjCzA
         k1gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zI7aZjNao9RfmgQIJ5ejHnmaM5jRxcP7yD2HPCy+eb43v3NT+
	SqXEHiLnoGsoJK0Lng0wdbc=
X-Google-Smtp-Source: ABdhPJyNujuOXiWFOBK6BVZJ8ZtuwPa8EcM8Dyjk9eUFpLD7QnrtYn1UM0rw2FHdSMVk9HfFx+88xw==
X-Received: by 2002:a05:6830:1612:: with SMTP id g18mr664764otr.251.1597254059502;
        Wed, 12 Aug 2020 10:40:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4745:: with SMTP id u66ls615983oia.11.gmail; Wed, 12 Aug
 2020 10:40:58 -0700 (PDT)
X-Received: by 2002:aca:b988:: with SMTP id j130mr187359oif.87.1597254058845;
        Wed, 12 Aug 2020 10:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254058; cv=none;
        d=google.com; s=arc-20160816;
        b=VBewvtV1iLHe1/ml0Iu3Lz0anvGibx6AEa8BODl4JLslvPahLvb34raaRJnwFFISiz
         rLzPn/J/Z+BeJs5OYOIk1+ouC+bSVzdiT5j8NrJ7JGruNWXj4nilDBSsSWCXP6hpT8yG
         DUhw9TsmZ0NZKxZKTV8oqfMn8+HTGr7DYvIbFudJW4BWeT0ZwAzL1ak7X8Z/ku4a//Hg
         eqka4IHwdGumQlBJrneGztnVmqIwmxA0ENIqnNyA9yE6HGCSIO+wACv+7TPekLQ0QZQk
         C5rtL0majONdD9NOUGImKCKJd13LNj0qWJRL+MEfh1S0f0aE/caPQZO0soXSIeBGwBkG
         4zcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=4uRPKxOnM6FVbWCVYZuDGLxSxLtDzU2eTp8MGsOUvnk=;
        b=yZoTZIL34heD8jdkXN8/RRRFk04hqwXvZlD5ErWFTbTevNLpmMAHmKXzqTBW8YdXuj
         kEXInfm6t8Y0I3R2OZ2ZwBf9Fa5+4fIOfbNOc0O7FinbNPoCxr3nkI8OVFgcSJMTCN0E
         CU5eaaNDEksTqlOsBFJj/pMEBrDwyfXcZw/+AySL2v0GJcBEMInShy4crBRxfmM0q03w
         OFPmyVjw9sEtxyDFcaW0PlmfyeljY4MY8ksJ2YIQP6jLVcz/NDvm+iyDoz/rfCwrQA65
         BdLRkD9aoWmOGKdT2+Bcnl4YqXczgni8G+HwOxhHCbPjH/TC6WvZ2fR9mBhvaGwu3Dm/
         TsRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rAkZ3k3e;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id d11si143989oti.2.2020.08.12.10.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:40:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126025067101.bbtec.net [126.25.67.101]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 07CHeC4E012279;
	Thu, 13 Aug 2020 02:40:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 07CHeC4E012279
X-Nifty-SrcIP: [126.25.67.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] gen_compile_commands: wire up build rule to Makefile
Date: Thu, 13 Aug 2020 02:39:57 +0900
Message-Id: <20200812173958.2307251-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812173958.2307251-1-masahiroy@kernel.org>
References: <20200812173958.2307251-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rAkZ3k3e;       spf=softfail
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

Currently, you need to explicitly run scripts/gen_compile_commands.py
to create compile_commands.json. It traverses the object tree
(you need to pass the -d option to deal with a separate output tree),
and parses all the .*.cmd file found.

If you rebuild the kernel over again without 'make clean', stale
.*.cmd files from older builds will create invalid entries in
compile_commands.json.

This commit wires up the compile_commands.json rule to the top
Makefile, and makes it parse .*.cmd files only from the current build
to avoid stale entries.

It is possible to extract only relevant .*.cmd files by checking
$(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order.
The objects or archives linked to vmlinux are listed in
$(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
listed in modules.order.

You can create compile_commands.json from Make:

  $ make -j$(nproc) CC=clang compile_commands.json

Of course, you can build vmlinux, modules, and compile_commands.json
all together in a single command:

  $ make -j$(nproc) CC=clang all compile_commands.json

It works also for M= builds. In this case, compile_commands.json
is created in the top directory of the external module.

I hope this will be overall improvements, but it has a drawback;
the coverage of the compile_commands.json is reduced because only
the objects linked to vmlinux or modules are handled. For example,
the following C files are not included in compile_commands.json:

 - Decompressor source files (arch/*/boot/compressed/)
 - VDSO source files
 - C files used to generate intermediates (e.g. kernel/bounds.c)
 - standalone host programs

Here is a note for out-of-tree builds. 'make compile_commands.json'
works with O= option, but please notice compile_commands.json is
created in the object tree instead of the source tree.

Some people may want to have compile_commands.json in the source tree
because Clang Tools searches for it through all parent paths of the
first input source file.

However, you cannot do it for O= builds. Kbuild should never generate
any build artifact in the source tree when O= is given because the
source tree might be read-only. Any write attempt to the source tree
is monitored and the violation may be reported. See the commit log of
8ef14c2c41d9.

So, the only possible way it to create compile_commands.json in the
object tree, then specify '-p <build-path>' when you use clang-check,
clang-tidy, etc.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                        |  29 ++++++-
 scripts/gen_compile_commands.py | 146 +++++++++++++-------------------
 2 files changed, 82 insertions(+), 93 deletions(-)

diff --git a/Makefile b/Makefile
index 6844b848bfec..4d65affb6917 100644
--- a/Makefile
+++ b/Makefile
@@ -634,7 +634,7 @@ endif
 # in addition to whatever we do anyway.
 # Just "make" or "make all" shall build modules as well
 
-ifneq ($(filter all modules nsdeps,$(MAKECMDGOALS)),)
+ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
@@ -1459,7 +1459,8 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_FILES += include/ksym vmlinux.symvers \
-	       modules.builtin modules.builtin.modinfo modules.nsdeps
+	       modules.builtin modules.builtin.modinfo modules.nsdeps \
+	       compile_commands.json
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_FILES += include/config include/generated          \
@@ -1693,9 +1694,12 @@ KBUILD_MODULES := 1
 
 build-dirs := $(KBUILD_EXTMOD)
 PHONY += modules
-modules: descend
+modules: $(MODORDER)
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
+$(MODORDER): descend
+	@:
+
 PHONY += modules_install
 modules_install: _emodinst_ _emodinst_post
 
@@ -1709,8 +1713,12 @@ PHONY += _emodinst_post
 _emodinst_post: _emodinst_
 	$(call cmd,depmod)
 
+compile_commands.json: $(extmod-prefix)compile_commands.json
+PHONY += compile_commands.json
+
 clean-dirs := $(KBUILD_EXTMOD)
-clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
+clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
+	$(KBUILD_EXTMOD)/compile_commands.json
 
 PHONY += help
 help:
@@ -1823,6 +1831,19 @@ nsdeps: export KBUILD_NSDEPS=1
 nsdeps: modules
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/nsdeps
 
+# Clang Tooling
+# ---------------------------------------------------------------------------
+
+quiet_cmd_gen_compile_commands = GEN     $@
+      cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
+
+$(extmod-prefix)compile_commands.json: scripts/gen_compile_commands.py \
+	$(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
+	$(if $(CONFIG_MODULES), $(MODORDER)) FORCE
+	$(call if_changed,gen_compile_commands)
+
+targets += $(extmod-prefix)compile_commands.json
+
 # Scripts to check various things for consistency
 # ---------------------------------------------------------------------------
 
diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 19c7338740e7..d2ff0d982521 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -9,80 +9,49 @@
 
 import argparse
 import json
-import logging
 import os
 import re
-
-_DEFAULT_OUTPUT = 'compile_commands.json'
-_DEFAULT_LOG_LEVEL = 'WARNING'
-
-_FILENAME_PATTERN = r'^\..*\.cmd$'
-_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
-_VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
-
-# A kernel build generally has over 2000 entries in its compile_commands.json
-# database. If this code finds 300 or fewer, then warn the user that they might
-# not have all the .cmd files, and they might need to compile the kernel.
-_LOW_COUNT_THRESHOLD = 300
+import subprocess
 
 
 def parse_arguments():
     """Sets up and parses command-line arguments.
 
     Returns:
-        log_level: A logging level to filter log output.
-        directory: The directory to search for .cmd files.
+        ar: Command used for parsing .a archives
         output: Where to write the compile-commands JSON file.
+        files: Files to parse
     """
     usage = 'Creates a compile_commands.json database from kernel .cmd files'
     parser = argparse.ArgumentParser(description=usage)
 
-    directory_help = ('Path to the kernel source directory to search '
-                      '(defaults to the working directory)')
-    parser.add_argument('-d', '--directory', type=str, help=directory_help)
+    ar_help = 'command used for parsing .a archives'
+    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)
 
-    output_help = ('The location to write compile_commands.json (defaults to '
-                   'compile_commands.json in the search directory)')
-    parser.add_argument('-o', '--output', type=str, help=output_help)
+    output_help = 'output file for the compilation database'
+    parser.add_argument('-o', '--output', type=str,
+                        default='compile_commands.json', help=output_help)
 
-    log_level_help = ('The level of log messages to produce (one of ' +
-                      ', '.join(_VALID_LOG_LEVELS) + '; defaults to ' +
-                      _DEFAULT_LOG_LEVEL + ')')
-    parser.add_argument(
-        '--log_level', type=str, default=_DEFAULT_LOG_LEVEL,
-        help=log_level_help)
+    files_help='files to parse (should be *.o, *.a, or modules.order)'
+    parser.add_argument('files', type=str, nargs='*', help=files_help)
 
     args = parser.parse_args()
 
-    log_level = args.log_level
-    if log_level not in _VALID_LOG_LEVELS:
-        raise ValueError('%s is not a valid log level' % log_level)
-
-    directory = args.directory or os.getcwd()
-    output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
-    directory = os.path.abspath(directory)
-
-    return log_level, directory, output
+    return args.ar, args.output, args.files
 
 
-def process_line(root_directory, file_directory, command_prefix, relative_path):
+def process_line(root_directory, command_prefix, file_path):
     """Extracts information from a .cmd line and creates an entry from it.
 
     Args:
         root_directory: The directory that was searched for .cmd files. Usually
             used directly in the "directory" entry in compile_commands.json.
-        file_directory: The path to the directory the .cmd file was found in.
         command_prefix: The extracted command line, up to the last element.
-        relative_path: The .c file from the end of the extracted command.
-            Usually relative to root_directory, but sometimes relative to
-            file_directory and sometimes neither.
+        file_path: The .c file from the end of the extracted command.
+            It can be either relative or absolute.
 
     Returns:
         An entry to append to compile_commands.
-
-    Raises:
-        ValueError: Could not find the extracted file based on relative_path and
-            root_directory or file_directory.
     """
     # The .cmd files are intended to be included directly by Make, so they
     # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
@@ -90,60 +59,59 @@ def process_line(root_directory, file_directory, command_prefix, relative_path):
     # by Make, so this code replaces the escaped version with '#'.
     prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
 
-    cur_dir = root_directory
-    expected_path = os.path.join(cur_dir, relative_path)
-    if not os.path.exists(expected_path):
-        # Try using file_directory instead. Some of the tools have a different
-        # style of .cmd file than the kernel.
-        cur_dir = file_directory
-        expected_path = os.path.join(cur_dir, relative_path)
-        if not os.path.exists(expected_path):
-            raise ValueError('File %s not in %s or %s' %
-                             (relative_path, root_directory, file_directory))
     return {
-        'directory': cur_dir,
-        'file': relative_path,
-        'command': prefix + relative_path,
+        'directory': root_directory,
+        'file': file_path,
+        'command': prefix + file_path,
     }
 
 
 def main():
-    """Walks through the directory and finds and parses .cmd files."""
-    log_level, directory, output = parse_arguments()
-
-    level = getattr(logging, log_level)
-    logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
-
-    filename_matcher = re.compile(_FILENAME_PATTERN)
-    line_matcher = re.compile(_LINE_PATTERN)
+    """Find and parse .cmd files for vmlinux and modules"""
+    ar, output, files = parse_arguments()
+
+    line_matcher = re.compile(r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$')
+
+    # Collect objects compiled for vmlinux or modules
+    objects = []
+    for file in files:
+        if file.endswith('.o'):
+            # Some objects (head-y) are linked to vmlinux directly
+            objects.append(file)
+        elif file.endswith('.a'):
+            # Most of built-in objects are linked via built-in.a or lib.a.
+            # Use 'ar -t' to get the list of the contained objects.
+            objects += subprocess.check_output([ar, '-t', file]).decode().split()
+        elif file.endswith('modules.order'):
+	    # modules.order lists all the modules.
+            with open(file) as f:
+                for line in f:
+                    ko = line.rstrip()
+                    base, ext = os.path.splitext(ko)
+                    if ext != '.ko':
+                        sys.exit('{}: mobule path must end with .ko'.format(ko))
+                    mod = base + '.mod'
+		    # The first line of *.mod lists the objects that
+		    # compose the module.
+                    with open(mod) as mod_f:
+                        objects += mod_f.readline().split()
+        else:
+            sys.exit('{}: unknown file type'.format(file))
 
     compile_commands = []
-    for dirpath, _, filenames in os.walk(directory):
-        for filename in filenames:
-            if not filename_matcher.match(filename):
-                continue
-            filepath = os.path.join(dirpath, filename)
-
-            with open(filepath, 'rt') as f:
-                line = f.readline()
-                result = line_matcher.match(line)
-                if result:
-                    try:
-                        entry = process_line(directory, dirpath,
-                                             result.group(1), result.group(2))
-                        compile_commands.append(entry)
-                    except ValueError as err:
-                        logging.info('Could not add line from %s: %s',
-                                     filepath, err)
+    cwd = os.getcwd()
+    for object in objects:
+        dir, notdir = os.path.split(object)
+        cmd_file = os.path.join(dir, '.' + notdir + '.cmd')
+        with open(cmd_file, 'rt') as f:
+            line = f.readline()
+            result = line_matcher.match(line)
+            if result:
+                entry = process_line(cwd, result.group(1), result.group(2))
+                compile_commands.append(entry)
 
     with open(output, 'wt') as f:
         json.dump(compile_commands, f, indent=2, sort_keys=True)
 
-    count = len(compile_commands)
-    if count < _LOW_COUNT_THRESHOLD:
-        logging.warning(
-            'Found %s entries. Have you compiled the kernel?', count)
-
-
 if __name__ == '__main__':
     main()
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812173958.2307251-3-masahiroy%40kernel.org.
