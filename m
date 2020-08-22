Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO7EQT5AKGQE34BBFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5747D24E804
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id 13sf426202uas.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGE0bpMlrWZi6UpJZ5bNI2qsJyKH1iCkgAjN2In2M2dkOXZuakt8v1zfoMTao72oPj
         7nP+z3xMujnuAutf7gwDeqoHOcZ5gqY3lbeQDYHVskfy+8AGjXPo2YgpYbGYJiYegtz+
         lCcWUA6RfEbvgzRFxInxJbcTNGVXfty6m8/VQLoeH7bhC9XVhdYUDia8sRxNiOUes/d/
         YjlAWatVWmaoSKbbQtag20kuBLqRjF6SwLx1EYED5I+pn4i0dKczNEpbhHnFt2zqYw9A
         KaUBtHWGnOc1UNs0Rq0b+DtLGyfLemlq4NLrBdjoDMqVLv2dgYkMZS10jZZu5GNBIigk
         +mVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=aKTNaq48FXtb8my8EWSFasD4FPIaEhNIu00DL1t2YsQ=;
        b=L3Q2PMSz9p6IlxNO/7yJLk40EQKfbcygWpbh+MYFhMZ8sfo9BShpiOwzg8SfQL3akF
         HYuYQnPPuBFC0Wb2Ek3dQH9TFK4UAx0ofxHZNRzLLvOJZLtauHKivG6J90SCfEszsAwP
         ibgHpCC/SgZkfU9REkjW9ZPWoZeQ753Hb9ohbkvXXJ3Rc+b/D7UgRYX7k1jVEvoPKIU5
         cwWJ4Nnr9/5SWZZGfngpoVJLX5AWjiG7SCp1dXRWQSm7F8Jra5IdsVmCDz9oCwdiMerJ
         sTRuSxh0VojVC6ZI9v0kw7BJ63HbnLpyvIl+79wIvjxnJxpX0Db0ft6ue0TUDg7hTDg7
         d32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QbN6B9Gs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aKTNaq48FXtb8my8EWSFasD4FPIaEhNIu00DL1t2YsQ=;
        b=V3egaZvZTX2TaMtoP6nQP3kToS+IGUELLiaO1ft2sbeg/G7ojE7lTX7ornPN/SxwIO
         dej9gbfnclvLlHOQS7v8MBZnwzrYg/mS8lM1vl5/thM7piCOOAn65nOpZWnbYF3e4vy0
         Y0wopX5US1R6EnhJkdPHLHnEUzvMa+Z2rEf/tgGUdO+RhgZR2r/Fu2TB4KpGQel4Pp7E
         Kde8bMZIOuPnCoA504r6BjTt9ACNd75rZ+UDRXY8FmxMlPa6VTzB86yhXueL3bREnlBS
         2kQGtgGTQZGqmKt/pMV8e17RORyDuopUo95qgJ9JhQKb0xE2ogzoNLRArsv1BAzdY81n
         g2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aKTNaq48FXtb8my8EWSFasD4FPIaEhNIu00DL1t2YsQ=;
        b=KlA1DcL0bG06MeAE4dwOiaVC0Hrmt5KRsm5y8PCWTfV7WjS2ImjQuCKPKtCB/rafQC
         XSzLatkIy8+wslGtNA3gexBOAd1RHxf2p/GbPQOH1JmrjmUySwFqNpfKYmQN1wWAYcMt
         emrNeQuRlLN8ct186R+P+ap3GM99SdUHPri+SY1WGSGjaSADgSRz36+UREuEfLO/LJjl
         CvqmMCqhJx57v5P73QdgJgDKrN/PiBDaPNsq0P+OB49GJZQgNmzGoIBFbJ1b1w1FoOsG
         0ze4xo289632fvzk5Qywa5KLfdl3Z5luzFjqwzMY7ASmqfSRYhT7wdnhcIogqo59h7Fo
         D2OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IAA8Mk4H6WzNa6qg61zvcMI39O1gyp0/5kgZ/Sz2ZZxq/C5FZ
	BXH2o/A8lVnJbb7fopuc8jY=
X-Google-Smtp-Source: ABdhPJzQwBZTMDRNZjV0UHIGuH2OSMJrLabnfDX0MKylNUb+CjYye1GD1YNzR4HBvK9y8TnYyHDtsw==
X-Received: by 2002:ab0:6f8b:: with SMTP id f11mr4155004uav.45.1598108219212;
        Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5614:: with SMTP id y20ls332812uaa.10.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:ab0:1c48:: with SMTP id o8mr4003338uaj.118.1598108218693;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=r7wYCWxfUTMk3idFTjIy0EPXBGTGj8A6XGc4KcSeXJVTA4kdzZRg+EQCBOpQzqQRuP
         d0hce/+3oX53Vi6/6HFXEZOQ+nvs8d8eCXVxMCuSCWXq5rvGHKgTRd0m9h/HXQGma+M4
         0wYM88WEdr98q+rK7Bsas6sBcd+uDqtJ/eTiw4ysa5XIApLZoWQjSHUJba6bqtfsCRl2
         4bnU0h+yN/cGsHn+Yp3K5sE7IxEqpHLEVBiimu4QJOvCCKtCGpB60vcJCo6M9gJeQnX8
         VC/62X60A8h/CgxmQEVmZjky2PDEjqfjmt+mT6oV9gn0JIog6n9fQKl06gcSScu2iT41
         8aTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xK0TccZgu0kMI4oYgleYpG0IMmmzu3uu8KTK04GIMN0=;
        b=Fmj1T4MmXPx5lxlC1xatL9s2ivA2dskGMiH5kJnM586fbNYlLaqBqo9TNMpRg6EcEY
         FDdLswiTgPCvMl88Z8bvSopcYY3wigL0cfpwiF3Rx5OCqHrVpzRHBPvdt7ZxJMQZWQdx
         gMUfZVB1s2Wbpzvz1QqIjQ3TEV8C+9Rimnyh7qZzWnbkqUpbxtn79wyovediLrBs9lzH
         eVg0NNua93EO2MJU6c3Qh22dvc2jBrYWtwJ8cvptKmu3fvI/Rw9Y655PZrYUPAUfwVRu
         CLOPuAy6hNjwvmFXOFkDS3+r+bx3Y7XZdt871kByqX54L+/jWe9l/tGGVuwps/YplS+r
         Dn1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QbN6B9Gs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id j18si301183vki.3.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVW025434;
	Sat, 22 Aug 2020 23:56:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVW025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/10] gen_compile_commands: support *.o, *.a, modules.order in positional argument
Date: Sat, 22 Aug 2020 23:56:15 +0900
Message-Id: <20200822145618.1222514-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QbN6B9Gs;       spf=softfail
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

This script currently searches the specified directory for .cmd files.
One drawback is it may contain stale .cmd files after you rebuild the
kernel several times without 'make clean'.

This commit supports *.o, *.a, and modules.order as positional
parameters. If such files are given, they are parsed to collect
associated .cmd files. I added a generator helper for each of them.

This feature is useful to get the list of active .cmd files from the
last build, and will be used by the next commit to wire up the
compile_commands.json rule to the Makefile.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - Use 'llvm-ar' instead of 'ar' for the default of -a option
  - Fix the corrupted comment block

Changes in v2:
  - Separate the file parser into generator functions
  - Use 'obj' instead of 'object' because 'object' is a built-in function
  - I think using 'file' is OK because it is not a built-in function in Python3
    (https://docs.python.org/3/library/functions.html)
    Anyway, the variable 'file' is no longer used in this version
  - Keep the previous work-flow to allow to search the given directory

 scripts/gen_compile_commands.py | 100 ++++++++++++++++++++++++++++++--
 1 file changed, 96 insertions(+), 4 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index e45f17be8817..f370375b2f70 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -12,6 +12,7 @@ import json
 import logging
 import os
 import re
+import subprocess
 
 _DEFAULT_OUTPUT = 'compile_commands.json'
 _DEFAULT_LOG_LEVEL = 'WARNING'
@@ -32,8 +33,9 @@ def parse_arguments():
     Returns:
         log_level: A logging level to filter log output.
         directory: The work directory where the objects were built.
+        ar: Command used for parsing .a archives.
         output: Where to write the compile-commands JSON file.
-        paths: The list of directories to handle to find .cmd files.
+        paths: The list of files/directories to handle to find .cmd files.
     """
     usage = 'Creates a compile_commands.json database from kernel .cmd files'
     parser = argparse.ArgumentParser(description=usage)
@@ -53,12 +55,21 @@ def parse_arguments():
     parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
                         default=_DEFAULT_LOG_LEVEL, help=log_level_help)
 
+    ar_help = 'command used for parsing .a archives'
+    parser.add_argument('-a', '--ar', type=str, default='llvm-ar', help=ar_help)
+
+    paths_help = ('directories to search or files to parse '
+                  '(files should be *.o, *.a, or modules.order). '
+                  'If nothing is specified, the current directory is searched')
+    parser.add_argument('paths', type=str, nargs='*', help=paths_help)
+
     args = parser.parse_args()
 
     return (args.log_level,
             os.path.abspath(args.directory),
             args.output,
-            [args.directory])
+            args.ar,
+            args.paths if len(args.paths) > 0 else [args.directory])
 
 
 def cmdfiles_in_dir(directory):
@@ -81,6 +92,73 @@ def cmdfiles_in_dir(directory):
                 yield os.path.join(dirpath, filename)
 
 
+def to_cmdfile(path):
+    """Return the path of .cmd file used for the given build artifact
+
+    Args:
+        Path: file path
+
+    Returns:
+        The path to .cmd file
+    """
+    dir, base = os.path.split(path)
+    return os.path.join(dir, '.' + base + '.cmd')
+
+
+def cmdfiles_for_o(obj):
+    """Generate the iterator of .cmd files associated with the object
+
+    Yield the .cmd file used to build the given object
+
+    Args:
+        obj: The object path
+
+    Yields:
+        The path to .cmd file
+    """
+    yield to_cmdfile(obj)
+
+
+def cmdfiles_for_a(archive, ar):
+    """Generate the iterator of .cmd files associated with the archive.
+
+    Parse the given archive, and yield every .cmd file used to build it.
+
+    Args:
+        archive: The archive to parse
+
+    Yields:
+        The path to every .cmd file found
+    """
+    for obj in subprocess.check_output([ar, '-t', archive]).decode().split():
+        yield to_cmdfile(obj)
+
+
+def cmdfiles_for_modorder(modorder):
+    """Generate the iterator of .cmd files associated with the modules.order.
+
+    Parse the given modules.order, and yield every .cmd file used to build the
+    contained modules.
+
+    Args:
+        modorder: The modules.order file to parse
+
+    Yields:
+        The path to every .cmd file found
+    """
+    with open(modorder) as f:
+        for line in f:
+            ko = line.rstrip()
+            base, ext = os.path.splitext(ko)
+            if ext != '.ko':
+                sys.exit('{}: module path must end with .ko'.format(ko))
+            mod = base + '.mod'
+	    # The first line of *.mod lists the objects that compose the module.
+            with open(mod) as m:
+                for obj in m.readline().split():
+                    yield to_cmdfile(obj)
+
+
 def process_line(root_directory, command_prefix, file_path):
     """Extracts information from a .cmd line and creates an entry from it.
 
@@ -117,7 +195,7 @@ def process_line(root_directory, command_prefix, file_path):
 
 def main():
     """Walks through the directory and finds and parses .cmd files."""
-    log_level, directory, output, paths = parse_arguments()
+    log_level, directory, output, ar, paths = parse_arguments()
 
     level = getattr(logging, log_level)
     logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
@@ -127,7 +205,21 @@ def main():
     compile_commands = []
 
     for path in paths:
-        cmdfiles = cmdfiles_in_dir(path)
+        # If 'path' is a directory, handle all .cmd files under it.
+        # Otherwise, handle .cmd files associated with the file.
+        # Most of built-in objects are linked via archives (built-in.a or lib.a)
+        # but some objects are linked to vmlinux directly.
+        # Modules are listed in modules.order.
+        if os.path.isdir(path):
+            cmdfiles = cmdfiles_in_dir(path)
+        elif path.endswith('.o'):
+            cmdfiles = cmdfiles_for_o(path)
+        elif path.endswith('.a'):
+            cmdfiles = cmdfiles_for_a(path, ar)
+        elif path.endswith('modules.order'):
+            cmdfiles = cmdfiles_for_modorder(path)
+        else:
+            sys.exit('{}: unknown file type'.format(path))
 
         for cmdfile in cmdfiles:
             with open(cmdfile, 'rt') as f:
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-8-masahiroy%40kernel.org.
