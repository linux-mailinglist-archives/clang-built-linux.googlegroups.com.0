Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUNUQD5AKGQEQE2PQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF00224E04C
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:43 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id d1sf1832679qvs.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036561; cv=pass;
        d=google.com; s=arc-20160816;
        b=aN1SDTaOkDegd5QcTIIvTehUmW8hIFbMEzO8rtDee6pdNmkZSdIQ0O+0FEm5V7ZdIB
         ZpTs9/rp7/s7qJOOGUjqkvwST7cdRvCG0Ur9mmcEmRqYeOXQCt6q5Ws8ltTfc4rnPkT2
         mXji1CpQpOCgqZ96ckWUJBWrTAqYedPAbeNe1G7EpfSbdZjvFYFN2HVv9dqZzei4FiTx
         esGMB+tc7peNAprs4R4m/TOCMlNyWhbgsOBm0DTETNhcrJP87XLQPbESDbj/MHf6J0wN
         ldsufdrGm8a/SCkOE980zX9taL2xxmlH5kNYo8SkRAQpLNZ2do5qUhqI8ZRxkm0cLEnF
         IPOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=51fyZACpi76g0IZR8YR7/UX6Dnxo9ZhRUDYVTDdgdhY=;
        b=suKz7+/E4h9RJg0+n8okIW0FFE8nrnJvp7+2CRJ/Is6UC6xj4m9VzDAJz+bMYTEUhK
         80xxD5ZSYRptbrKdNVcdvfT3R5z0apFNvJNXhgSK6OmrgIRX04XZvoJ3LUHRGNGjzAzr
         32/VX84aEH9N9OAEcszr5MaPZRro7Q5e55WkoV9aR7HmR9wqbyra6waLe2ywoaAmh6z1
         Lu0lJzcWxw3VqsU3YZ50gO8u353tUaoUDlPmef7mXAeVjFE6cqqtccXLddN+XY2frDLH
         DWtzddUch4Hzb3eojvRQ6nnBrIXtCogwL80X8iuNv7dhOOaJpBseinXk+0v/tiM2VRd9
         7iJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1+HczE+P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=51fyZACpi76g0IZR8YR7/UX6Dnxo9ZhRUDYVTDdgdhY=;
        b=odxp/8mHMYws/foGghD4TZjwYcYE2BuB5TjAIHbcjc6ubi+44Dw6/CPxaWJPYlaWrh
         4ikGcJZ04yoXGN/EDIO73ikpEEd6eACE6TG4Iqm4w+S9GfFSi0FDZYOEbrNS5jGKaU5E
         ormKQQ1L0R89q4hXgnPYGLX1bMJ1t1z4AMwiLRiRQ5lbaoEFVv9YowwOxXLwllp7NXRL
         PvA0+AATxpJePMT7IgkRFojC7qX9k1uYAq1NLAHveVE/rjTPlKTDRhIRbksSTwbcPJfI
         ARrnJVW8ErlaCDEXiY9DBUM8la4hzQWJWPwKdJApI1tfSNbOMbhzUaTjbgwb6jpkteH3
         s8hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=51fyZACpi76g0IZR8YR7/UX6Dnxo9ZhRUDYVTDdgdhY=;
        b=hMspcsyUPTqWxk83AMD8g+shf0W1agnFKZmMpH9P1vtwx/21Ba5IDgQzc6Yt6dq9E5
         9IEoqdQwpXL8QZzU3pl0upuVLJn79iMgTCUSWtUmiIzTNkuD68ebklpcx/yHo03isL6Y
         YQJsBqxjV1zJkYoLL4hD9I00izLwaybR3UTaPnoADRWeTQHdCoyCwflNtnF2K+TP6HWW
         2HooHnL/GjM6srZfjYGnABpFMqWqxHGa8JlN3QW4PI00Ioc8p32kr7EPqQdsdDaXaacB
         i6ZVak39drQtjCdPZ+zfczrDgERjZUpdpabYwMPGzcRZGaRKeGocn/UFAcWr/vl+8fS4
         S85A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533edW8Wg9So5zBM5O3ChV57eWdDwVjZquzaT41/TjJzpcE/5xg3
	2bvVeDfoxUSwKpfQAeuD6+c=
X-Google-Smtp-Source: ABdhPJzijDZYeUJ5ueeW46uPSSiiAqSxKI5rMqedKE72A4Yv4Ie3EQl5LyUuMfQ56Y0+MjEbdPf33w==
X-Received: by 2002:a05:620a:7e9:: with SMTP id k9mr4265663qkk.415.1598036561262;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c20d:: with SMTP id j13ls538286qkg.2.gmail; Fri, 21 Aug
 2020 12:02:40 -0700 (PDT)
X-Received: by 2002:a05:620a:889:: with SMTP id b9mr4113547qka.7.1598036560808;
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036560; cv=none;
        d=google.com; s=arc-20160816;
        b=c1983mHB65z77iJImGWCZm9R1FLSz9v6xdjmQKoPWdcdfr3m+NYKH4CErpKZh1Zdby
         2v/zLAqxE6WxoDgQW8Bx1EycnS/RshdQZYb3I9v9c9ULWKpYrA6rXpfQIXSZYLqyf2k8
         e+DeYvGsgWi4sucnINh25CRNO7Qq/p+kplN0F2rQ+UuyvjwgXO1O0oDKHmpeC3WsKaJ8
         UYyy8bFeefNzmARyPdiMykCx0h44Y2QG1ix3N8oogtBhlpkZcYJf7p5Ism7xaQIszwO8
         P9W8ZjgWtMFxl0HB5zQLodlom8oRDUFT5pF35OVq9UNCQyMF8j/J3KPC+LyB5HMl/aAy
         hoMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=iC35dlkCP9FJ4EclQGyDZ4x87Wd4mzFK4RAlZBLomgA=;
        b=tD8s27Slk0U24D7xgisLhSyBgVSEuysGeRuE2myAD8o+mDlkR4m8dKbne6WQvedIm0
         A5unoFhaqkdWvl1iQhrP81k2iYM1t7xjdVWTfUss+Xqo7kb3+t8GSTL3J6IZGju6q5RY
         YBXFZwVIWwzLQ5U7b2tcE9F3yoNJJwHliFu4rik9hKbdIf9FO+Sx0NdkxgE2jLKvyt9f
         tqcokXUKHL5M6bosMDbh2PsukVpb4JfaiQqRGwyfFKV28YLr4fnsMAdSysB6ZqsHpiYF
         viDOZwFtNZglvonEAoXthj0dAR4bD0K14F6MsFYXEuWftPivgbxO8IToAvCCG5//rQKX
         2OYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1+HczE+P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id b1si154427qto.3.2020.08.21.12.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23eX027595;
	Sat, 22 Aug 2020 04:02:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23eX027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/9] gen_compile_commands: make -o option independent of -d option
Date: Sat, 22 Aug 2020 04:01:55 +0900
Message-Id: <20200821190159.1033740-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1+HczE+P;       spf=softfail
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

Change the -o option independent of the -d option, which is I think
clearer behavior. Some people may like to use -d to specify a separate
output directory, but still output the compile_commands.py in the
source directory (unless the source tree is read-only) because it is
the default location Clang Tools search for the compilation database.

Also, move the default parameter to the default= argument of the
.add_argument().

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 scripts/gen_compile_commands.py | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index 5f6318da01a2..3ed958b64658 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -39,11 +39,13 @@ def parse_arguments():
 
     directory_help = ('specify the output directory used for the kernel build '
                       '(defaults to the working directory)')
-    parser.add_argument('-d', '--directory', type=str, help=directory_help)
+    parser.add_argument('-d', '--directory', type=str, default='.',
+                        help=directory_help)
 
-    output_help = ('The location to write compile_commands.json (defaults to '
-                   'compile_commands.json in the search directory)')
-    parser.add_argument('-o', '--output', type=str, help=output_help)
+    output_help = ('path to the output command database (defaults to ' +
+                   _DEFAULT_OUTPUT + ')')
+    parser.add_argument('-o', '--output', type=str, default=_DEFAULT_OUTPUT,
+                        help=output_help)
 
     log_level_help = ('the level of log messages to produce (defaults to ' +
                       _DEFAULT_LOG_LEVEL + ')')
@@ -52,11 +54,9 @@ def parse_arguments():
 
     args = parser.parse_args()
 
-    directory = args.directory or os.getcwd()
-    output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
-    directory = os.path.abspath(directory)
-
-    return args.log_level, directory, output
+    return (args.log_level,
+            os.path.abspath(args.directory),
+            args.output)
 
 
 def process_line(root_directory, command_prefix, file_path):
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-6-masahiroy%40kernel.org.
