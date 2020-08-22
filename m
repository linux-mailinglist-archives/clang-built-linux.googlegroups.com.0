Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B524E801
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id q3sf3335840qkj.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=cyWuChTUD/4T/RZ+XgFWUmeg/EqnHWt+vqvqN8M+/UG/8HGaK3S7aSFgYd83OPnTde
         HQR+I2Fvmfc6ZnBsjOtHCFPcImlmdvrkLCF3nifRfOA4XjynO43BsOGUmza3/t2A21HE
         ks7utH40BkVzig4LG8D9FxEH8vpoAeGapGOY0Wztjh25adc8O7mE/fMZMqQ0leCfGGJi
         OIozu9wQRjAn1XR5wDGRz//iz9MOToRh2YejIpWso1Ady0G2Zd9MkRx5rfxqwQCPi9wM
         qkOSKv5Xh1/rmQZA5YG6VxG8perMx8R9Mv461yqWnriqrbFToRkz8UXqk8DekKOEwtzA
         Vv9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=le9YyKYytnupnwp/sW/q+BfjRN0YXLX8z/JxuzTwnIA=;
        b=NRj3Y8ZPgAgjf3yQETOVcw5uqiD+IXTY9p5+TtOUF7RauHkqjx/ZdKyGtWJ/x1VdIF
         FVeIqbo0I559TCJiYB8IBEICH5Bv9r8td6C2ZVQUMcmafV778OqdZNM+POjUQN4fsyVw
         TtVfouM+uvOQb6stTyDOmbfKerh5zrtxJA+vvES7nV344vOiXYSUPAqNN2I8LbKWjjem
         l90sJ12+DkvXhX+J6qqSu7tE8L9sP+uTNyM3O/+IAag3Lq2qYrKBSOoA7bh87GuS1lIR
         swUsqZvCE65GyrQtjYZG9hnPqxDM8W7Lw8nhd7nSLxadVTN0nNtC0ta2DJdCRRwiMHNH
         qKUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vhSHkbte;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=le9YyKYytnupnwp/sW/q+BfjRN0YXLX8z/JxuzTwnIA=;
        b=jr0lVQWXyFqbPVmu8qNkSYOZglKNa/uQwDTZhFM/oSlsPHPrV7lqRQ/R0ydjw3QXGu
         gaeWohZ+QUICmH8VbX1i31rRt8qPiIwBjqhCJQJp+m53eB6ZRADMGnLcyrHvnZUlJyFA
         mM3k4q+dTfka3RFueRyB9JXfSddRFoCNes7gMm+4rrm/K6ktAEWuVzHrMYXlgpEfKV9z
         pWfNC3kZBQvGuAPkfkUko3MHxSCJ+NIkSEYW4fVQFbG+FwBZja6TT5FM/6nfo97TIWUr
         jyl0BwGkXB4iezQUEUrA9uh3Dak3ePqvj4PMS1sWpmL5l42XR0IMctMWV/P1uJ50W2LZ
         qjkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=le9YyKYytnupnwp/sW/q+BfjRN0YXLX8z/JxuzTwnIA=;
        b=qzrfpJBqao1kbEdGN7KP1plnWQWq4qjbUPQccrBezc67Cgd3xmibd5K7Y+nRGxewwl
         NlXYYjsl4OYuGIRZDeO7gwBMi12Sk67AJNHE4Re+I5q//1roPxU4yckGs1EpYCYH9rmj
         WPsQSq7nuDAvpbaOWF0Ce8ZU5e5ak8RTgkAtFwwg32RSS9ykUGdz98FDTRke/h5LKxtC
         vCdjQ3lz+GJ1kEfoutqp71EkwizV36Uw8bIjunCafwIbxFbaXlaUgT28xVuBoqrjmNm/
         UcabnW34Re9+MH7burgfws/MHOU/2QwgnfEgkHUycn9CPlVcX83/fuHqjSDy9TB+SNPF
         L0BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d/j9jv2e/fc2U3pOz2KmSvy3ofmXnHWEgT8Mf1qwgsNbHDctW
	kk3En3EQiTxcIoLzoGjAJxE=
X-Google-Smtp-Source: ABdhPJzdKv0PewU1yqNTbmuSE6wXwbCmwKFjXKRNloZkuMYURJ0w1sGwSq49ND6NSIdZEt79/LuiOg==
X-Received: by 2002:a37:9e48:: with SMTP id h69mr7066762qke.249.1598108219016;
        Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls2069257qta.3.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:ac8:6e87:: with SMTP id c7mr7542834qtv.62.1598108218638;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=SVFVcue93sHkKkCNQmu2Cyr5bH8akhkzCQQ1yQvzGF69IbDSwcYEvHsjLd+hOAogau
         3YOC/GNHQtbRuUG1DddD7F1nOuYsaPD0X2Hj1gC4M3FwgosbpUrcuLkIFp+7C4O4Zf6s
         M7d1F/OYTA9wVBLJSiSUCEaNZfTODzfTqNLKvwbdcxgoM+dKzu3fDbHlwBHq36Px4TlL
         pIa5QOesLzjyRYbG4NpVJnSaBXxVS552cIuztsrArBI/8VRXmg6uJJLlG035UcTQ0ZoG
         0VwPNXBL7FBfs+M4x6Vl3YL2F77JQe+phP//Wx7XPL2+O8JNci6YQ3KXriF9FKxOIBVj
         C7QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=q+4NzfCiNDCECz9HAmB0Vnyx61RvHFvh4fBxtXHAgmk=;
        b=ClY0qch5BrYcj7fiBbJWcYoOtSnJIMKquE7qaLF4/NuCydMpCnS9l+4KGUNOQn6YDD
         FwTUhtnHdcNg0Eb5ljhlOhf6tx6yVU8oqqo3nusNRVZqPv1VcE6WzrxzyTAhs0qqpJkS
         TbgLUiI/IXPWiIe0jjFoHgqcxNAoEhUcJDXuTZm20j+JUg7nkif3LCMIyCdSKiaZIB9U
         WL9rtS8io62XQFfVQlnJpK0pYh3/mm7p8PHSpMnTuAo+fF5ovOZDyAbrNzrCjouvrE//
         oLxBuJGvl0bs8ewJo26r3OUW3p/BbGlt0WZ/2CyxkdpGA2ZxrylJtF9QBktvQD8x0MF+
         V/Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vhSHkbte;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id e16si207574qto.5.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVS025434;
	Sat, 22 Aug 2020 23:56:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVS025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/10] gen_compile_commands: do not support .cmd files under tools/ directory
Date: Sat, 22 Aug 2020 23:56:11 +0900
Message-Id: <20200822145618.1222514-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vhSHkbte;       spf=softfail
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

The tools/ directory uses a different build system, and the format of
.cmd files is different because the tools builds run in a different
work directory.

Supporting two formats compilicates the script.

The only loss by this change is objtool.

Also, rename the confusing variable 'relative_path' because it is
not necessarily a relative path. When the output directory is not
the direct child of the source tree (e.g. O=foo/bar), it is an
absolute path. Rename it to 'file_path'.

os.path.join(root_directory, file_path) works whether the file_path
is relative or not. If file_path is already absolute, it returns it
as-is.

I used os.path.abspath() to normalize file paths. If you run this
script against the kernel built with O=foo option, the file_path
contains '../' patterns. os.path.abspath() fixes up 'foo/bar/../baz'
into 'foo/baz', and produces a cleaner commands_database.json.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v3:
  - Add a comment about why I used os.path.abspath()

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 32 ++++++++++++--------------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 535248cf2d7e..49fff0b0b385 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -59,23 +59,21 @@ def parse_arguments():
     return args.log_level, directory, output
 
 
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
+            Usually relative to root_directory, but sometimes absolute.
 
     Returns:
         An entry to append to compile_commands.
 
     Raises:
-        ValueError: Could not find the extracted file based on relative_path and
+        ValueError: Could not find the extracted file based on file_path and
             root_directory or file_directory.
     """
     # The .cmd files are intended to be included directly by Make, so they
@@ -84,20 +82,14 @@ def process_line(root_directory, file_directory, command_prefix, relative_path):
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
+    # Use os.path.abspath() to normalize the path resolving '.' and '..' .
+    abs_path = os.path.abspath(os.path.join(root_directory, file_path))
+    if not os.path.exists(abs_path):
+        raise ValueError('File %s not found' % abs_path)
     return {
-        'directory': cur_dir,
-        'file': relative_path,
-        'command': prefix + relative_path,
+        'directory': root_directory,
+        'file': abs_path,
+        'command': prefix + file_path,
     }
 
 
@@ -122,7 +114,7 @@ def main():
                 result = line_matcher.match(f.readline())
                 if result:
                     try:
-                        entry = process_line(directory, dirpath,
+                        entry = process_line(directory,
                                              result.group(1), result.group(2))
                         compile_commands.append(entry)
                     except ValueError as err:
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-4-masahiroy%40kernel.org.
