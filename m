Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUFUQD5AKGQEYD3YC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BB47524E044
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:41 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id h36sf1496669pgl.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036560; cv=pass;
        d=google.com; s=arc-20160816;
        b=OOKEFMyNRlKgCB15HM87ZClsXAyYZiYQicm6y1BxnDX1pQ70QuSva+sZ4vEq16n9N2
         0AhW4S1V7cYfCypCjuCQxsFMR3iMjPUOJmPIyEnGuYLAmUrp006SdJyDsLet00OM7wBk
         cwvGVMjKWRDddRt0dViRyFzaynwnFzV/4R+NJUeZhjPlfb112pXhaE9T3kaxRi3oQo6y
         2zblxXbC6sSW9kyTQWtFHpwZWRGB7g1NsfmP+2mwv1oEj2FpU1qz7slR4cINjdhNMNni
         lMOBX6TMiQaTv6/v1TJMB74ovKtFDFyyVPZAenADaomdDJXZP/E2nwtyEhCSzgV9Cme1
         ijUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Okatvde8xChKSG7cl5jBxkgZaot0ll4YGi6ViLbesZc=;
        b=qMpuv6XCXAADsLrLoM9sJUUruKacH9ogth3x1VxI4UzAovbWnI7mqaGKFiBLbVTc6K
         glBnVu5YeLZ9fuE8XBBAL9uCalwl+NWEX/eSA0+5oX4pXFS5yg5klO3RWvS6Wtwbs8VM
         YMjFV9R8005BsRfB9dziWYjRhBYK6gt5YQrmMFliN+/EyNo5tREyhFLWHnWXn3IjD+df
         q4DebDM7fOn8nviKm3aVoDswDhRCMG/IPgT5j1N0LOf/o5Ins4LapE/0mo5oVCp3Dw2H
         Pllma8lG/8PW70HPfxdc0LkCmhFGHF3pbr5gtRQ4H8N4oT2pGq3t1mwhF/bTBRp6G4J7
         hl3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Kc68fjPE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Okatvde8xChKSG7cl5jBxkgZaot0ll4YGi6ViLbesZc=;
        b=J+IaPyjqx8z2bAqsRP4ioJvKxbgST/3eLGtJwPSp3pN7aOwG5NKqfkj3K1jK3bAC3L
         h3EkHMt2NlM49Eoa9CF5rByJAXxzFocJG3XdI7qg5mQs/HS45nNS0yJS2yQ/GEGUPvyS
         BORxfIA7pAe6fEvEfNzm3RHdbpKfoqyfePA7KcKDFNbwduiE85oyoiHu/jMkKuVTMAc1
         pw5r4m9JVzS19+7YmPfIViurAM8tqx+GpBXfsjt8V9NG0kXf11H67mQuf/HTPWwQ5yBv
         dvH+MFcJ2eumQF21kqiBU8jDUqrmLHxS4p6t3ToFhNT7kA6r0DXzA165trnp5vHpMKsC
         D1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Okatvde8xChKSG7cl5jBxkgZaot0ll4YGi6ViLbesZc=;
        b=iao43rEK7aDs+3ORpj8eiGKIUNC7U37UnJ4fX7AfsSB5EvIccXTYt0PatGSjI/QlGZ
         XyqLbmWqaHjf1dzbD+HpTrGkPP9D6OolzbSnjx3nzavaSWsCGEk0dFQ0BKVhg8PxOu28
         Qw8Uh+oNzSCJ0e07Sk3XjzH2aJfQbfah7Fe2TQcmrfgtR/tBpOnHPGgpe7okjakNe+Gn
         D9hVqBOzaZLEp4kSJ2yccfW6JDbynKRpWkXqT3wrCob9+4wNg//xx6dz0eXfCDj3eHrk
         gpl5ZmG3X0T6Nwa9IBl+KioJ3hqV8lIVb1EHENT9WHSUdGQsSILXlAUoIH5Xr5oRHaKb
         RCrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333YHPQBMJQDPaEX+xqND4FiNS7gxO7eGFb5/pBzpE4RRbjjP1W
	9/M+eRyzPbWpGAJlYGG77o4=
X-Google-Smtp-Source: ABdhPJy1EacmeTpdcFQnIUlgwxhA39xRlcTshv2kF3i+QholttZSFefDF5uMszN7SorXlxDLFEr/Ow==
X-Received: by 2002:a17:90a:f83:: with SMTP id 3mr3453022pjz.7.1598036560272;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls1454138plb.6.gmail; Fri, 21
 Aug 2020 12:02:39 -0700 (PDT)
X-Received: by 2002:a17:902:6b41:: with SMTP id g1mr3610324plt.42.1598036559714;
        Fri, 21 Aug 2020 12:02:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036559; cv=none;
        d=google.com; s=arc-20160816;
        b=kVx0pyDs6t8G/2pN+INSbfEBgPIo24JpGLNbrR0OgLmSxXuhsFXIynj5wZemHytF6D
         Kqkue8RNJnjPOE1nHdUFyu6/EsDypKqFG9Tn1rVI6FTMC5bcgvdzXXOp2a3tWBb832HW
         7tG4c+azogQ8J5lV+ULi5cQN1RIoE3dgXqPI8eXWwJAa3qkY1Lgp022sEVMxQemdY9ck
         J1e6rqywtKrO84odpi1afTjfxc/KR1ivkBxeQGN1O0sDDKEEagXvsMV6u7Nuu0vIErKu
         IP4hH/hYWwG9WsGN32EdVX1tFHgQSjqaxG4JC06lDRh+Z+0VMGrVrwZ/C3rS/7wSJkP+
         D7Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=3PUSp7mVBqud9anwd0ucZBfkurt/2z7oLee7GQu34i8=;
        b=IYPvV1ZBawbJU6w9jZ7bFZt9gJHjdFbLDEvYH+syinx26jZx8wVvLGVJj1rKbjPXJG
         gcy0WQZAXHHgXsMg95giS4NjT07sRNn+30/MgiSNXUkiJe/2LNEwYaG/6pR93H8s9FWy
         m5SW1BnsGW3nG8vnDyUfjZWYOOZ9tvApLyB7X3ct+Gw6EvUDnWqWITwZ22GHQwyL0p/r
         ktv3OGSapsmMiY0T8A6lKwMz6lhtqu66BiJwZbgD/CN8+XgRtc4QcwVUa6F5hWTbZjJe
         WA4GdNq9b6WGoODCspFjVw/XTom3FJbZxU3xTt7XxF2ehLSJw9MGAyVlRIqmuBXEVKEx
         LoLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Kc68fjPE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id q137si164120pfc.4.2020.08.21.12.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eY027595;
	Sat, 22 Aug 2020 04:02:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eY027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/9] gen_compile_commands: move directory walk to a generator function
Date: Sat, 22 Aug 2020 04:01:56 +0900
Message-Id: <20200821190159.1033740-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Kc68fjPE;       spf=softfail
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

Currently, this script walks under the specified directory (default to
the current directory), then parses all .cmd files found.

Split it into a separate helper function because the next commit will
add more helpers to pick up .cmd files associated with given file(s).

There is no point to build and return a huge list at once. I used a
generator so it works in the for-loop with less memory.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 44 ++++++++++++++++++++++++---------
 1 file changed, 32 insertions(+), 12 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 3ed958b64658..6dec7e2c4098 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -33,6 +33,7 @@ def parse_arguments():
         log_level: A logging level to filter log output.
         directory: The work directory where the objects were built
         output: Where to write the compile-commands JSON file.
+        paths: The list of directories to handle to find .cmd files
     """
     usage = 'Creates a compile_commands.json database from kernel .cmd files'
     parser = argparse.ArgumentParser(description=usage)
@@ -56,7 +57,28 @@ def parse_arguments():
 
     return (args.log_level,
             os.path.abspath(args.directory),
-            args.output)
+            args.output,
+            [args.directory])
+
+
+def cmdfiles_in_dir(directory):
+    """Generate the iterator of .cmd files found under the directory.
+
+    Walk under the given directory, and yield every .cmd file found.
+
+    Args:
+        directory: The directory to search for .cmd files.
+
+    Yields:
+        The path to a .cmd file.
+    """
+
+    filename_matcher = re.compile(_FILENAME_PATTERN)
+
+    for dirpath, _, filenames in os.walk(directory):
+        for filename in filenames:
+            if filename_matcher.match(filename):
+                yield os.path.join(dirpath, filename)
 
 
 def process_line(root_directory, command_prefix, file_path):
@@ -94,31 +116,29 @@ def process_line(root_directory, command_prefix, file_path):
 
 def main():
     """Walks through the directory and finds and parses .cmd files."""
-    log_level, directory, output = parse_arguments()
+    log_level, directory, output, paths = parse_arguments()
 
     level = getattr(logging, log_level)
     logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
 
-    filename_matcher = re.compile(_FILENAME_PATTERN)
     line_matcher = re.compile(_LINE_PATTERN)
 
     compile_commands = []
-    for dirpath, _, filenames in os.walk(directory):
-        for filename in filenames:
-            if not filename_matcher.match(filename):
-                continue
-            filepath = os.path.join(dirpath, filename)
 
-            with open(filepath, 'rt') as f:
+    for path in paths:
+        cmdfiles = cmdfiles_in_dir(path)
+
+        for cmdfile in cmdfiles:
+            with open(cmdfile, 'rt') as f:
                 result = line_matcher.match(f.readline())
                 if result:
                     try:
-                        entry = process_line(directory,
-                                             result.group(1), result.group(2))
+                        entry = process_line(directory, result.group(1),
+                                             result.group(2))
                         compile_commands.append(entry)
                     except ValueError as err:
                         logging.info('Could not add line from %s: %s',
-                                     filepath, err)
+                                     cmdfile, err)
 
     with open(output, 'wt') as f:
         json.dump(compile_commands, f, indent=2, sort_keys=True)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-7-masahiroy%40kernel.org.
