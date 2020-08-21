Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUFUQD5AKGQEYD3YC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DB224E047
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:42 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id f17sf1621774plj.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036561; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCsUuckZbBRj8TgmTcXLADXTVsINwiUuoTuqoUb8czA5ibo58Ha+cfX5yDXD+U7t/d
         M1W5iJJJdcYo8AcpM/oe/wu4y74/Q9ei0y5EznWqn4BUhyyi2mc4Gpd9qUKIhXRDmcax
         pvCB5P9yZIEd9Z3BZ7y+DYbWoxf5Hey8JzJO8IkkUHXfAO3/5poYrO0xP3YbQ1OTF9G7
         UkdvUpRC82fu31zTpbhhc26ib6UF8WVbLLsD16s/NIK+4vciB4+YmzRF9Bsm8YYDfYrD
         Yd5Vjwz5sXIxHkx5uBCqJ0+Bo3DlPDp1r3p3ZJeB2ivIxmyqn2DSzw0q25Smvto+1BLW
         kZcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=RfYEPNdTWtfBxoGipurKV6Vzy5ahbYi/pbP/iFk3YXQ=;
        b=O/mXuLSCfS7+1PS+BWXDWGGNfSAYZGdouVaB5UjL5OFTzb9Z/clYM/kNlEvyqrZ7OY
         ufa3uOQbmhSEvVsZzB+tETeFuWl2O55Z9qJSEp88mHvDvSZBAzJpjpZ4ZQ79y8EG/lgE
         D2w/O/pZ5+LqQ2/UAPKNr0yUUcqB2T/kHtITJHfXnLGZOG8hReGOrhYJFMKe7ioGXrIj
         kAVn2+uwXvb+SvlYpNcaTeIPJ57tctW1N27DkWllVgmteaid9u8UXm/CVQppahwZoY50
         fpllpMn+kO/EFFrrrEx+J8QQhHlRPiK0POfl5NnP/l9aUk38JHPCRzVjCHJzyLy7ITET
         LwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TtMxdpaZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RfYEPNdTWtfBxoGipurKV6Vzy5ahbYi/pbP/iFk3YXQ=;
        b=WKsKKr4ngTCrzwXfVEhdpNmmBYIVfMRs2fK7XcViEzEDk6zsH8ZL05Oe1SvsRMlim7
         RS3BdAeS9L5rwo0/llKXrr7x2w7XnwRZszYNT29oKqd6S5qoA4CH67iBPsY9qQwoUM0U
         yisrNHTYZUPuZUGyf4dl31CvGCo3PaFJNLdx0WPhippP/TaDwufABCg9/t4Fkw+JWZXD
         6BSXdXMQgPZlzixzyQel8Bd2CpMqdexVVUUkgAkODKHMSA7AHnNBUX8uavfV90Fcm7DB
         /Cmk9/GoZzym+yL54DudoQMASRWQCfBIEBLnfygbjQhykLyPl5f6ZDMhKGOjAgsVDGzi
         FZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RfYEPNdTWtfBxoGipurKV6Vzy5ahbYi/pbP/iFk3YXQ=;
        b=iGle9F3xdMC79mCRiwhqSApmI03kc5CaVPmBnKP8gFbmGmhbkcnDblq4tGR6idUpX+
         YTVzZMl3PHf4W/JY6nMD/uep+dKMaKPe1LjkvHc2k+iVnwi943CYUoqIHgdD4zTU9l+R
         D7MtVqb4dcOIupxCqDVbwg9REdXzMEKbAwh+5waqr8KYi6Pkc6iFJEH4jgNu5VKT8Sn8
         kJszMEEdV7smadSst7xhPYtQQjc87mMLGxrC2mXcDHdoBdJFS5VM30TfZ3x66jFP19Gi
         ouxm4tpolqOj9bQYGQCIKN0cu90Le1ru/MG29lUoYibZema6YOqjmzU+XzY2gAXQwFtm
         OpTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CPW4ZIOXUaYkIYiWYyH/nBnco//kYMsrODvyJXvOsyUyoZVgx
	fjKRKwwKG8q429dvbcMupa8=
X-Google-Smtp-Source: ABdhPJzUTX+YKEPo68AOp29ICuhKCyDiaWGv23biqFrZzR49EjQsX7W8dh3QnfTolGHeRZy0Y5RGHg==
X-Received: by 2002:a63:24c2:: with SMTP id k185mr3164280pgk.415.1598036560820;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls789134pgg.9.gmail; Fri, 21 Aug
 2020 12:02:40 -0700 (PDT)
X-Received: by 2002:aa7:9a09:: with SMTP id w9mr3611745pfj.206.1598036560154;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036560; cv=none;
        d=google.com; s=arc-20160816;
        b=yHc3Vcx7oe9DjnB0LudqeumWodN4eDApT14ox9rmoYTzbFjRPf89e/imoYGg32sHCN
         oPVvW3+mjZT29+JABc9GZBoaGu6FoaAxZVOu8Ys5VBvkQTU3D15Df1OsBLBKYC/O138d
         /xZ/mBxB34khhdwttAFFS+gHkoFiKpeN5vyjNBMvp04xGszNL4T4s8UkBkvDF8XZbgeg
         VRCg07L8pEavUsXV5DFZH+PSSaVpmEt5pacA3qGc57eR4ih6WEhMTYV5IoLiD1C3vBJE
         zVvq8uCj7uGjhPclpBxsUSTZ+sLmz2h2/UxR6NIwOBKmGr39NihvgEJeEMN148lDuoQ6
         u7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=i+N9rQs5GJ5sYzQoaZQMubS5P0XusebE3s9Zow0JwbM=;
        b=M6AAikHwCYAHmrGPhomCv+KpFoXUE/uece0s73frOTMDI6t3pIZHiMFIq88vAOaSuL
         cWaQ9M/QUzSqwDji40/R8xQ1fXik8z6/IxuJvLwVqBalybUGhLwh9BzVMw6UdayytjLG
         uuKiqCM8ChWUFTxo/wp9kX3WpBY7CZU2sUEisskPDDBciAjFcgBGynIQL2tD5feW6n8M
         oVw+Ory/GTz5e3ZYAhkh++c5FcmeBBNckQ4GxvsTu4WQFawXkQJg04R2za6eOc7EBzWk
         KpRq9eJgg9RF+VloW9OeN5jm4dSTNme2suBgZLnBDdJOtGhTQNuTDtGRe7F9JBDh48dO
         5DCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TtMxdpaZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id g11si116024plp.3.2020.08.21.12.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eV027595;
	Sat, 22 Aug 2020 04:02:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eV027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/9] gen_compile_commands: do not support .cmd files under tools/ directory
Date: Sat, 22 Aug 2020 04:01:53 +0900
Message-Id: <20200821190159.1033740-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=TtMxdpaZ;       spf=softfail
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

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 31 +++++++++++--------------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 535248cf2d7e..1b9899892d99 100755
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
@@ -84,20 +82,13 @@ def process_line(root_directory, file_directory, command_prefix, relative_path):
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
 
 
@@ -122,7 +113,7 @@ def main():
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-4-masahiroy%40kernel.org.
