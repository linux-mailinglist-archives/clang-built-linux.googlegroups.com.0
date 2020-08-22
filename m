Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 258D924E800
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id n24sf2002866oic.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=wXhZl/ZVKXiDqXfo7zodxNU6QnzXNEyKKl04VNDE3rrRtoPQJCS+4KJoEwKVOzpe0J
         3YmUUa9woCqpiUQLQxzWNnagupt8uCNe/i7Vxub+bsTKEFyMStASeOy2Qlwfq8WseGyn
         5/c39nUS+GEuN+22LI+mGvbLR4ItjrwM5iEAumOpziwJdTnnobg+iP56CCCThyAvP7mw
         1YmqaLOG/W/Y9dKpTM4mDt2VacVDzsjs+N5ukaOfNbc88h2lFs8hxawRh2167Lw+4WmS
         RZ1bB9ReLH3JI3rFuClUVlASQkXDhdR8SmsHQh/SGEKAIsMaQGen3CiIck5WDpo78UWS
         s/zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=NLvHq5TGbNCTwNyt5pMeKL7kmxFb9EHhJyV1LLBkPyA=;
        b=OFAfXHxmgGEkBY3gGM2S65VcHSGO3aunoLI3LkiZ024b9O2jPUFvzs0pIO4D6CypiT
         JX/bIf3mXai1ZPRKIhjpBDFtCyu4gQxRThis2M/FzuenTlCkfM5NMsSsDY7H7wFGPZpc
         UNvTxfDYjk/oMUOaDiLZLkQDr8y2ocSERtDfyS4bpjYuJ5BXdV/x1jfWv7ZFALwSYNxU
         uqZyyRAIUvDjsKdTzlSNml08QESeFniEc3GD/IlZR7zsg1IOWch+8V4+tBEfwOKAAIJz
         eLM3oGskvle1Q2t1rFiGsKgkLBICTCfqwPZbtZo5ODhrKUvwTHGKrB44V5gIxhvOeUH2
         ToDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XCcHsUJF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NLvHq5TGbNCTwNyt5pMeKL7kmxFb9EHhJyV1LLBkPyA=;
        b=jZWFT2Ig1dPFt8c7TqamBQObSYvtZ+jiQXRMkys2+ZxuW5Igsp4RBw0tDNf7awd2Id
         oLDci0v6xV7JH/Rr8uUYDCa0mJoNBrjsewH3HDH7ndALam9iNpX+sai+6j/wfSqVbC05
         Df5zrJQDp39Vx4pE6PHtSXRxPwfTKRZ2pfUoBM3JRW1mq022mwBGSt1ek/TPNMXhsJwI
         uK7i/u5rvuNaRyWdrI9w/tjc62+FkZqzLm3zUrsNavS+igs/t/02mdZCiQUKplHmA0Yr
         nD99bVgc40cLopWGCpXp6i4lBaDhu8FUfYFiafG/DkF9LCpbQyRMHagpMm/6+OP6OUgJ
         4UVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLvHq5TGbNCTwNyt5pMeKL7kmxFb9EHhJyV1LLBkPyA=;
        b=pDbu9sUYBxb2iUn6k4rcJi2Y5KG5A9dgX0TeisRG19K+0BOz43tcUd1WImH5FrMDcq
         RT5XEKYlXkFoPST/VturSZQtRDB07RzUe9iIiQaRj9hcwLBb6DpRl+/Lq9e2FrVJX+te
         6/w0yyqxut2X9gvXNoTox/R6+8hfk7SOVcNzDx4jMGyDNMnQaMQbiOXq+wZuqYoXXLdf
         J1jJyuHe2JYSwfbgJ6+EdhXna4OzFXaRSYPVChrpGRtnnYW5S+L7r58Esq4r5VWC2kaR
         L/osGDRGyY82i1x5jEK1Nsm4ZgtyegreHdATEqFT86JW+s4t88f9TwMz08bYf/BwvQTk
         VgJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VdLYOP/lObD0N3Z71xaMXMwcU+/DRNkX9Elrf3BFQOTs30LU7
	GSlDZ05h/BQR1587fx8FIxc=
X-Google-Smtp-Source: ABdhPJz4wGcBWt9A91vOIg+D63/gORFMXc+eshv4qsMpFR5qcrKGr31ccwe0brqr+6VwaQY1MSLVsg==
X-Received: by 2002:aca:220b:: with SMTP id b11mr4805488oic.126.1598108218847;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4404:: with SMTP id k4ls1074741oiw.8.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:aca:ab45:: with SMTP id u66mr4890872oie.127.1598108218564;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=c3UWvlqr5e+8b9UoU47/ASMaqz0A40mdSjMsBeU4UFi3m/aSFNzpazvKLI9JatkyCV
         3KKP4FNy5smVRWwo2GQcPNCPeSGU10TWPAPmIh+L5gL61yeJaZ91kUsmb7sgbCaVY3YH
         UzhXiKVDongufGHPu2iOheSqcKpawy/lIUBYUej1S0Deh87aErwtB4C7uyh40OY0UVra
         jXo2q7WEK4+SMwyrJp1r6/BoaHYkyUOM+l/Cp0g73PVk2m7cjX8IYhNm2/X6FUObEeJj
         5+Jl6eZoG0P27cZNJ0N36UISfUzpmXrkMDeT6xe2y9rIOUC2qfnngoQdKcaJhf9/EPmY
         UhKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=jH2tLSORRhlXDuP+7ApdPBfQ1QixQf9c+4qwpQLm8xk=;
        b=h5Ila6qofOvJyxEu6ffIz4tFXEehi88WL7uy9C5LpEpNgMjA0mszpc3ZUjhalkuaoy
         elto/xlCw6ChIarpIx3memoEGzNE/OJA3d9oQx0uZTTKoi78cwfNxonSbhH0iyNQE+Sc
         VyA3dxpyjgIZi+hR7aS2ucI+FOV8VBSPw8Fnb5gO/qVo5R5sRbzdbIbukxMAiXvdSsAR
         t6d/3uVcvTFE7iciioJvwohPF/MpcxSwYdqk2h+YwaZsoIMHLqjlJtC/fuFlMawRQ57e
         DmlIZOm6lctJJkfhRPyONNcdbbxD3lHSsyz/kvThXZHXVFs5z4MYWIBTUI7ho0ekCyGi
         IDGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XCcHsUJF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id u18si294951oif.1.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVV025434;
	Sat, 22 Aug 2020 23:56:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVV025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/10] gen_compile_commands: move directory walk to a generator function
Date: Sat, 22 Aug 2020 23:56:14 +0900
Message-Id: <20200822145618.1222514-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XCcHsUJF;       spf=softfail
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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v3:
  - Add the missing punctuation in the comment

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 44 ++++++++++++++++++++++++---------
 1 file changed, 32 insertions(+), 12 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 71a0630ae188..e45f17be8817 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -33,6 +33,7 @@ def parse_arguments():
         log_level: A logging level to filter log output.
         directory: The work directory where the objects were built.
         output: Where to write the compile-commands JSON file.
+        paths: The list of directories to handle to find .cmd files.
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
@@ -95,31 +117,29 @@ def process_line(root_directory, command_prefix, file_path):
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-7-masahiroy%40kernel.org.
