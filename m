Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUVUQD5AKGQEICFMQDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C04924E04A
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:43 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id w17sf3039037ybl.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036562; cv=pass;
        d=google.com; s=arc-20160816;
        b=sOwcaV5IGhwyVNRjEDaPBvClL9JwDoLkwddGPskfskH3/0M4AkAZkX7iuKyPNPbsUH
         Sp+K60dhxv8B+cTaO9hdSTzKIZwad2q3pqZwtXvSFjtboEefzcQdLZC1/SdWcNbIZR0H
         k0LbYLiNo8Mrybt6uEtj8os3sqpslyqOq2ib8Tt9o+sMmE2EcAPCWOCxe9RQmYwcJiV8
         BJLW7WbIzQfZFv9SzBIY3jcXB2Nq2HsOlihc2Qe0jzxEDPKiU0IQx6yRsh97PJs8IXvY
         DB9USOfU7C1DEs1tllOYnP5d5WiFO0nsH8zx464rHc3d/ynOskcHh+SQBoYrdh+QUwnV
         4YjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=RMgWr2hfnxXkMijOMo3yKCLtf+BBRzQOYAxaMZgS9bs=;
        b=wxRZijOVrkjAmVuccfEPRrfBIx4deSjHcJg4EJ5BJRWJE51w6XpPzqJ6E3y7d7YMss
         QA+HCgiKoVidgzww9zSkl1tL+7LkuLuVxC6n3A6IoaM/WM4qCyssOYZX3Ehb0B1iyXXF
         paCeA3/JZVrfFEaO1nVkoNQV80B/5ToHu9Jsq+tOIZJnUEjDx0YmexesYCkhwxHWv3+L
         +YDSfhagADGM3ioyAzZY1adjBCOzwOsUrHaN12oJXebmtwbKVvpTJV2Eeh/O146tJUFz
         qGa86WyAiOYUP25a7RbyAaocL2hU2NNRdtcoBsbYaXr098r13CmeVVfGeQV8YmchBnU4
         tCTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2LyUnHUD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RMgWr2hfnxXkMijOMo3yKCLtf+BBRzQOYAxaMZgS9bs=;
        b=HSlxuUleKam9imRPU2Gp8AzDj0ebjAkprnEIqk8yiBABxFn37tuwl7ZRwkKPn/u0JT
         p6dR2S5F0Zfx3Cf7qzP4GbJBGbME+PbWQEU7N7krc3T9s9kWOLPlNrEmcfLPeQ5AP4Oh
         bZJuGp1tKN/zHFDZntByMFpG2MWU+62YBlvC9DjhgBKfaFWiubHzULlNyo8bpnrefdpA
         RI5KnO5gYUm8RrtRXdsq+9QFIPQNVR5ExBHGnSyySJI0Um2O4fKbFNQa4d7GCU0/Isf3
         JeNUMByZxjNSR7gHnAUzqXYIwWRW796BevWA+3iddGfEjyjjZBrN0Az0X4Uej2AOChjr
         LVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RMgWr2hfnxXkMijOMo3yKCLtf+BBRzQOYAxaMZgS9bs=;
        b=QdY1scGiD0/ev5r3jlGU9Kx3udBUrWHegNsF1NhKkOSdLYqoIlZ6OmU1s8V/Bb5PpJ
         b6V268WQychn38PSpgRjiXiNHLoaLi862lJ6F+cGvBXG4O8m2gipY6m9zXQRn4iEoPit
         T7WV3EMvcQQOrAO5gJTwXnkmXXDvoZ89lW34JcX14w2fWwIibqQLdt/Xq7mWe9FmCndC
         igCyMpuKqRGzcJYa0bwyseylj6AFI80480fR6p1U1MuS+KlR6q+P2TSNUm3eLPlQqshQ
         kIO+am8qTAVOFqcQ6p/abR0FQYd8e6rA9Z0EFvLXgrAVyFkwQsaNYkwNbJv//F46g77x
         XTtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zR6khCZeknIA5FbGp7TixpKP/OTUf39/Evj7Q/Q+pe/BqxT4L
	Wd9GZofePiGDjdvtUJVgMrg=
X-Google-Smtp-Source: ABdhPJxbXTvmp4MXm0bdbNDahKdfti7fxSKwRjsoqGbK/SgL0UthlC2tctpMhrerNVOGkcpw+Pw+4Q==
X-Received: by 2002:a25:db03:: with SMTP id g3mr5510121ybf.373.1598036562114;
        Fri, 21 Aug 2020 12:02:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls1172077ybp.8.gmail; Fri, 21 Aug
 2020 12:02:41 -0700 (PDT)
X-Received: by 2002:a25:d1d5:: with SMTP id i204mr5612252ybg.146.1598036561652;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036561; cv=none;
        d=google.com; s=arc-20160816;
        b=fwskJuP+cGXK1Gulhmi1YgH9j+T7tpsPHT/1KSSNMoEVwefUvf3thxIbzhJJqOB9Tx
         0v24TLWt/HwwiMs40Gv34W8uaUPhP7bMpigdZhKim58pRHO3nCk5WZSp5/jac4EXmv8A
         cW4CGmXSIeBsjwJR+kK0OnOWurrasdgEq4a0DX+pWBgzHG0L0hbKPVUv6ZncB/FsXkeC
         FZjBaqU2KYYIExLFE3BmvAp0qnIpliof1ZqDmlIPwGWFTJq2xXlnuDKrHDQIcETRBAYf
         UvuhBwmuiTmR8YSdjwjysAEd+uu2xWfa7qamB/1UR+S/dwKJIaNpagYfh6ucdEcdiUtP
         caFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=tMEUJhFRfVlsf+Bq735fe/sTFgfgHqQiZv6E88yGDDQ=;
        b=LlpUPL4rEPNjO07XXHGDIZdLPSpkv8beQvbRfuLhGEojJ/IG+FUpJ0Xu3JO/TPgPp7
         K7n0KylnJHj+ZOia8KxuwVJpEbs+66PcmHcH7qcjlUtOeBinBjce5PQSbYqLy1HJfn89
         zX8zOsExU18eLHLFB+cp5liNXEbyHpLI/Azwa9i1hupImmwKBBLOEK/7B3EMMRHYZBZC
         a8v4wtp/soV7sJ4hcMj1TklfbUWEpw6OR5js6DV+ci/zA19kAT37Ru6NzGyudfdXcjrf
         AtN7CaGLUXpBkpC1RMloXYMmkQ2ItEiDF2NBnEH27HXyGt87FG1qtC6VFJHVSnXJYZYS
         Dt6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2LyUnHUD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id 7si194485ybc.0.2020.08.21.12.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eZ027595;
	Sat, 22 Aug 2020 04:02:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eZ027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/9] gen_compile_commands: support *.o, *.a, modules.order in positional argument
Date: Sat, 22 Aug 2020 04:01:57 +0900
Message-Id: <20200821190159.1033740-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2LyUnHUD;       spf=softfail
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
index 6dec7e2c4098..65859e6044b5 100755
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
         directory: The work directory where the objects were built
+        ar: Command used for parsing .a archives
         output: Where to write the compile-commands JSON file.
-        paths: The list of directories to handle to find .cmd files
+        paths: The list of files/directories to handle to find .cmd files
     """
     usage = 'Creates a compile_commands.json database from kernel .cmd files'
     parser = argparse.ArgumentParser(description=usage)
@@ -53,12 +55,21 @@ def parse_arguments():
     parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
                         default=_DEFAULT_LOG_LEVEL, help=log_level_help)
 
+    ar_help = 'command used for parsing .a archives'
+    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)
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
 
@@ -116,7 +194,7 @@ def process_line(root_directory, command_prefix, file_path):
 
 def main():
     """Walks through the directory and finds and parses .cmd files."""
-    log_level, directory, output, paths = parse_arguments()
+    log_level, directory, output, ar, paths = parse_arguments()
 
     level = getattr(logging, log_level)
     logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
@@ -126,7 +204,21 @@ def main():
     compile_commands = []
 
     for path in paths:
-        cmdfiles = cmdfiles_in_dir(path)
+        # If 'path' is a directory, handle all .cmd files under it.
+        # Otherwise, handle .cmd files associated with the file.
+        # Most of built-in objects are linked via archives (built-in.a or lib.a)
+        # but some are linked to vmlinux directly.
+        # Modules are lis
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-8-masahiroy%40kernel.org.
