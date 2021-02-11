Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBB5PSWAQMGQEHVBPTMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C64318F99
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 17:12:56 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id o14sf4582265pfp.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 08:12:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613059975; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRtUPipoJetpxemWUYptxMiqyPtuacdYkMFxhWaI/xLebkOkh6ai0BTKViE68BffDN
         kwvmTvHOaG+nm7SlBxQl58pMbMmkQlunzf0VqqrUtiWkP6tcL0+Hv6xljfrJpjgRmK2v
         SOAGXgsypiqgW6aZ6nl5IMQ1E+zg3J/D8IRK1vpYQvTarhr222SGpSQFQXlSN4oVr5Ra
         iLYPpYbqY6OeEiCKO7SWtD/3AKsP7eCtNrXh2iRGD2pcUkq3j076o6J/dlv9H9KmRX6c
         quo/Al/U0a4bKGD3oL0hM+7bTgy0TNEFEbn/tgtXKgDqgedZVAfRWMKWuTVRuCwfaKeG
         ze+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=E3CrfDB3Q62/G5DD/GwkMXik2OY0A9SQsafvPDxhAkU=;
        b=iPqofHrGZ/056cdDZw7BM4AYUDMlmvXCeUN1EalwqdDhNSbHIPVhsGQXe+CCZE7Znw
         8JqATgJNQlNxahFwkpuNCZKUOcxM3uhXQsp70Ec9+0nTgz4autEYKaKEnuSnHCk5RhGE
         q0EpzDdQn7m3BRdg/TwsjM1Rcyd/UIjRCfjoCqON4P85w1lvu9juiQuwtzShlc0pjQsk
         l3mtMYa0CBvQm8nm+2CNbSfRd1y7wuLRdA4zNRe1liuo9FxRnSi7YMnM/n6Zs3cVGKRH
         yajPIGgwO/TiN0VPybK5G+Y5EosrMboKCKnnM1JONAa3Sr2ctcWIX+gpLuhYKHvEmsqX
         H6Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=p1+BosIh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3CrfDB3Q62/G5DD/GwkMXik2OY0A9SQsafvPDxhAkU=;
        b=fGSiLpRNPhWKdjGe5cneYtemNcdxfuTxliqyPi21aGbUbqFuidB3FjVEf2/AM9CrWn
         xTyWee9IS0uLdNMr5zeEmG3dzPKfoTNd6StfPHn270FBH9m/glMIwMJjQEXRavSkp3wa
         zp+U4tDBMZNr5k/B0o4mFUTl2wJ4FPhdT3+BLY52KeDD7x/rlK/DZqAK1um2aLBkhXPx
         orV6e+zHISExh1bBf338W7XLsqOOV2miFn1fwACdsznvK4ZYEw6E/Z2B1A5aGErhNNZV
         Q+jzW6gUHfb5tqx4v3kJVLrG3zI/1xk9azA9UVj2i7ksLrepfzKmzNIFTh1/eDJJ656t
         wFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3CrfDB3Q62/G5DD/GwkMXik2OY0A9SQsafvPDxhAkU=;
        b=jP0WF75J6BKl0DZDH9OWlqix0GtD+tpyo382r54w+2jnJuh6hy1qq+XgZ3+Gf6JjX8
         Bs4/hipWcY+1IlndxgxzBTPElqX96z71ammGmSR8QMmEPZF385CDz9tPOM1jEohgRb2p
         2WrNvcvv0ZvIoFzgV+PYAUEgL7TcnKGQFETyyOchyz6Ad04BOCESAyRAMyCjZerdubn2
         DgbaGNVeGmRWvleEBqJYc3VTOehhk63iw1O5ZJiY5woKzIm947mWQ9lILpK2dQAmZpgX
         uqOAb2uKM3SI2s4fCd56YxITmJAQamQt80KKD70wowrJzoV0ojlOh4rw/NR/rH6uEfJX
         Dltg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532C8Fw71tsTLtQFKlcMHVP7nvVT4eSvwW5wYFc+JGrRRPBGH+4g
	83Ol8lzSENRjGr7FQ2m2SH4=
X-Google-Smtp-Source: ABdhPJzWGQgY6a15/rYwL6Egc1CPQwaNn4VE4tg/0kEDQDyVR8OpHf5s3471Yev8GcBOc+uvUJovJg==
X-Received: by 2002:a63:c702:: with SMTP id n2mr8620195pgg.382.1613059975404;
        Thu, 11 Feb 2021 08:12:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d53:: with SMTP id s19ls2267446pfe.7.gmail; Thu, 11 Feb
 2021 08:12:54 -0800 (PST)
X-Received: by 2002:aa7:9a46:0:b029:1db:57ba:5e2 with SMTP id x6-20020aa79a460000b02901db57ba05e2mr8699258pfj.5.1613059974756;
        Thu, 11 Feb 2021 08:12:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613059974; cv=none;
        d=google.com; s=arc-20160816;
        b=h+DYtUyVpEcKMrYBx+aqLOyaf3oHaWEmEYYCI/8G5Cu+jkvgYftG175kz7c28f3WLR
         loW8B0cyff9uPGMTS989BCy39vIwNgPJTcr48gI9cCoDhBSbC0o11iEogMrq5lF7C9s2
         izNlADeE7CKu5S8QnB6C58LlYckn5WtILFW9xD3rqcp8UjiQ/C+olgWHZ/gpRrS5v1NX
         Bm24Mw9NUTLn8SuHVoSEZeqQlkiysQZL0vHRsO3oOfGzW4M2N0qC01lUrEkx+Wh7WXOR
         Te1WgIKoWeCYbKcFIQZgvMayCQSzvUI+Hcpd6BKhyy/8oXfKAiDa5ysofzTCHOVWWY8P
         ooWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=3/hwJtYyqVNBvsoXcMoZWlx6opZT0eYugHUwt0TrPzA=;
        b=aOJKTFEuKhmrYpgn2rqX0EowHzcRC5fjBOLZcs6Wme0QoOxTrLG8JV1hY3/V7emg/m
         M521NGARTivzGZY3xuhcS4FdcwtO9+ciNDO7iABXkSfH0P0BeV1IyFljWGrNlg2Oc3vp
         RRFu/k7Pn/afjihNwHzOXpHuvq+edkjXWZqJ35sXUrmtL/9O7QBXucJAf0YcjmMrQUn3
         PQHqApJJ2OulHUVW1hJBGnMIWegAsu36UjVk8QvzeDtrwFn+FAboQFnDM9RK2chZc9o3
         dottYHOGf8jeOIArT6AjxDlzZoL533IAOZP6VFbqM6gCxDCPw77QMwFPqC1oQMzttB5W
         2uwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=p1+BosIh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id v7si282582pgs.2.2021.02.11.08.12.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 08:12:54 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from oscar.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 11BGC1x7021970;
	Fri, 12 Feb 2021 01:12:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 11BGC1x7021970
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] gen_compile_commands: prune some directories
Date: Fri, 12 Feb 2021 01:11:54 +0900
Message-Id: <20210211161154.3892836-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=p1+BosIh;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

If directories are passed to gen_compile_commands.py, os.walk() traverses
all the subdirectories to search for .cmd files, but we know some of them
are not worth traversing.

Use the 'topdown' parameter of os.walk to prune them.

Documentation about the 'topdown' option of os.walk:
  When topdown is True, the caller can modify the dirnames list
  in-place (perhaps using del or slice assignment), and walk() will
  only recurse into the subdirectories whose names remain in dirnames;
  this can be used to prune the search, impose a specific order of
  visiting, or even to inform walk() about directories the caller
  creates or renames before it resumes walk() again. Modifying
  dirnames when topdown is False has no effect on the behavior of
  the walk, because in bottom-up mode the directories in dirnames
  are generated before dirpath itself is generated.

This commit prunes four directories, .git, Documentation, include, and
tools.

The first three do not contain any C files. My main motivation is the
last one, tools/ directory.

Commit 6ca4c6d25949 ("gen_compile_commands: do not support .cmd files
under tools/ directory") stopped supporting the tools/ directory.
The current code no longer picks up .cmd files from the tools/
directory.

If you run:

  ./scripts/clang-tools/gen_compile_commands.py --log_level=INFO

then, you will see several "File ... not found" log messages.

This is expected, and I do not want to support the tools/ directory.
However, without an explicit comment "do not support tools/", somebody
might try to get it back. Clarify this.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/clang-tools/gen_compile_commands.py | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 19963708bcf8..eb5faefbdf74 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -20,7 +20,9 @@ _DEFAULT_LOG_LEVEL = 'WARNING'
 _FILENAME_PATTERN = r'^\..*\.cmd$'
 _LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
 _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
-
+# The tools/ directory adopts a different build system, and produces .cmd
+# files in a different format. Do not support it.
+_EXCLUDE_DIRS = ['.git', 'Documentation', 'include', 'tools']
 
 def parse_arguments():
     """Sets up and parses command-line arguments.
@@ -80,8 +82,14 @@ def cmdfiles_in_dir(directory):
     """
 
     filename_matcher = re.compile(_FILENAME_PATTERN)
+    exclude_dirs = [ os.path.join(directory, d) for d in _EXCLUDE_DIRS ]
+
+    for dirpath, dirnames, filenames in os.walk(directory, topdown=True):
+        # Prune unwanted directories.
+        if dirpath in exclude_dirs:
+            dirnames[:] = []
+            continue
 
-    for dirpath, _, filenames in os.walk(directory):
         for filename in filenames:
             if filename_matcher.match(filename):
                 yield os.path.join(dirpath, filename)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211161154.3892836-1-masahiroy%40kernel.org.
