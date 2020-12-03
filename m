Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2GBUP7AKGQEUDQ6AHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3677F2CD631
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 13:58:17 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id v12sf2599346ybi.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 04:58:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607000296; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqhMdtReMSqrzo4ZqLhzaoMzO1tCYod5fm5LlxsvELLzj7Tr0HQ2ef+K9xEq04rXjw
         MslEhJ6TEUwtfOHDdCYVDaSXVFNc3fhRYI0nk8HkHl78iqj2n9l4p4MQ7NLO+uylBgHc
         yIcdaSUHl5sCg7x+aN71AagwC6clgrZox/PkmoTLoHzI9V7UEs4Q/gKkhtQl8F/yZ7uH
         UC7qQqSNfp3CtPaWNcyoSPHAWcikavFvMNrO+qvEGbRWfIaoJUv2ejboQJkEjGmRYums
         NTTr3VxEkFk90OGSKGQIG7oHgIwDR5oaDrmCrs907ZZGK0FRZXvu3pPgo+WdHqdTdQk5
         9Xmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=rQbwCkLDb6tHTXPziVZasbknhnHxpHkOgjKcpLWKH9I=;
        b=LCmMzms0fScYiM9rf1JfPQzQ7111rOc9QqaDQR3RCb/FXErae+b30ncd3RXDJqI4UG
         8UiQb0T4bLpa/Nz9ksNmCFcmzm1qVXwQ1T3BnpjS1rrqHtQWZUOIMcZWSn93levNkuxr
         ryPY6nc5TtIOsKHO/bsEVk9Lp2uEGw9nsLfpy+dkkMtea27Dvab6F4xbz99lMp5KxldK
         i0y1/rMEqX5orWuI+0gUmilmOK9eHQ4fm+DVYMQ9PQotw+i761+WhFkrbzCL5o8ZkcVD
         qflfXM1O07SYvMWxsHavcqvfTkdB82Pas5Bo00v6u5E0fG+fmDAmZhwE0GXfniIR5g/B
         w//g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=utJkJDnB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQbwCkLDb6tHTXPziVZasbknhnHxpHkOgjKcpLWKH9I=;
        b=c9SWcfLLM7dcLFuHZ3UAQxr8tkzUJYJAvtAty0WsTHiufYe7Ueakaboa1863zsbX4P
         idgNN7uecv1W/vOT7lOnFNd0YFaQcv/wyZ4D0bjbZkPePTDl4lYrGxcnPx/O3IyG+Wn6
         AEPnRYLRQbeQqTxFziKxzCutLsn+7pKkcwPHP/ffgrCcEnYZxL6HPov38IjhubJ5fIe8
         AgjWoid85nXpEOEymobhJi87cZp1oG4PwCHxeD3WBz8KjrarotJzyuPyOP7DBerOfzPf
         jygCIg9dYo1CGGtoynCbXuczXGrK6TRsCvJghGqX+1rHcexsSBbX7egwMzVLUTs3kTqc
         tPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQbwCkLDb6tHTXPziVZasbknhnHxpHkOgjKcpLWKH9I=;
        b=UCtsRhr2dLTT6QkTKJTfnlTJsXfMUvJbTwI0uxOV4vg1THC0jE0hC0xdGRfPzo0YJ3
         CW02Ub/rkLxk9otJ9m7eZyklmibvSB9kdHK89VwsUWCETL2zZsTqWBh8hAiChT9t/Zbr
         2rUKnrCiKJ5vcCANevunKLCAc5y6zIMgtI0WmNgWgPXg3rPYuCmcUSyD8f5b8oIpW2lr
         t1IYAIwtFiv9PugcB6IpkAY2VJnzhLKgbxR6D7Wfhfai60V6XoHAV3ZVqmBdxOZaPWBC
         R/LsoO2E2dPulptM3OIKMXtTUzjUlnXz21f9qvdtcY5MKWRr9XQQg4/6P+JQb1dNC1n4
         tbjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hztG7cHnPiBqDaYXG1oZ7EYHt0nmeeNuQ4EzcV65WjcHUX9NP
	hX4z/Rj17vYjCzwwhuJdfXY=
X-Google-Smtp-Source: ABdhPJzDeZ49eV/LakZgY+oQ28dHQCU+hjMgbi9rupt70f0abtz3q0Vw3ta1SoxqCE0W1+TJ/4WZvA==
X-Received: by 2002:a25:b11e:: with SMTP id g30mr4533668ybj.71.1607000296268;
        Thu, 03 Dec 2020 04:58:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:610b:: with SMTP id v11ls2696764ybb.3.gmail; Thu, 03 Dec
 2020 04:58:15 -0800 (PST)
X-Received: by 2002:a25:250:: with SMTP id 77mr4268254ybc.316.1607000295886;
        Thu, 03 Dec 2020 04:58:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607000295; cv=none;
        d=google.com; s=arc-20160816;
        b=Bh7ayZIy+otQw2LntM3IPY7Ez11ogaCN0w8QymV6vWBdIJOaNVqJeoFXdryxIwMadN
         8v8NcOfdeyHcF3vACqayfndwJYTmwDaB6kPr1KrsUZA9iMbq1dk+xjUgB6sdpl+FeYYx
         DGAeOiyBy/mG0/HcWmYuKswQ2e3W6SGDGuPo324/b/xN+7weWcyyjKlSj2J78J7Gn1q8
         cAABq/DyXNwooXSyIn2qiv9eSuhBYUxwcBpdaQu0XJZIZNvC8p877QYgVfuSFW92Vx/Q
         5Rehexb2rjQc5JDg9eDv/w6gBcv1KfRlIAs2lf8iqmoALSm8SLLDZQ5TphQ0OdFAQHpW
         odSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=4LEowQvA7xjRCrLhVDoyfxqY/ZOsWCHa7kvgy3K/tZY=;
        b=NVlCgrDXRylGiCkkKEUuMUpTp7QQBzkhcxQtwK6g4J4ydfLG1gBReBysqzzezCiP1X
         t/e9BUqAMX5b3Qewwx8VX2X7k33JR7wF8Pen0KTjR4IyNwrBeasDLWvmyadLfK/2YH6A
         gF5BD9Y4Dv23hotatoTgRyf6NaRh5GCwDRhcOCncnz5BafbAx0B8SZVh3IgY+ueBN5R6
         nGCkVzRVHzgTKqSEAC7VW+0kengc2QqQQmxoQNZizRH9G3siYTA6Pu4uir1nPDYRUdHz
         luJfwPEw7pDeIF0sqRQLnqo3+eXuEL3fHPIdcb15wODtvPyRdyACPgPI0yQ44Pjdb80J
         tF5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=utJkJDnB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id u13si71891ybk.0.2020.12.03.04.58.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 04:58:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 0B3CvCTZ012509;
	Thu, 3 Dec 2020 21:57:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 0B3CvCTZ012509
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Emese Revfy <re.emese@gmail.com>, linux-hardening@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
Date: Thu,  3 Dec 2020 21:57:00 +0900
Message-Id: <20201203125700.161354-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=utJkJDnB;       spf=softfail
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

Linus pointed out a third of the time in the Kconfig parse stage comes
from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
and directly testing plugin-version.h for existence cuts down the
overhead a lot. [2]

This commit takes one step further to kill the build test entirely.

The small piece of code was probably intended to test the C++ designated
initializer, which was not supported until C++20.

In fact, with -pedantic option given, both GCC and Clang emit a warning.

$ echo 'class test { public: int test; } test = { .test = 1 };' | g++ -x c++ -pedantic - -fsyntax-only
<stdin>:1:43: warning: C++ designated initializers only available with '-std=c++2a' or '-std=gnu++2a' [-Wpedantic]
$ echo 'class test { public: int test; } test = { .test = 1 };' | clang++ -x c++ -pedantic - -fsyntax-only
<stdin>:1:43: warning: designated initializers are a C++20 extension [-Wc++20-designator]
class test { public: int test; } test = { .test = 1 };
                                          ^
1 warning generated.

Otherwise, modern C++ compilers should be able to build the code, and
hopefully skipping this test should not make any practical problem.

Checking the existence of plugin-version.h is still needed to ensure
the plugin-dev package is installed. The test code is now small enough
to be embedded in scripts/gcc-plugins/Kconfig.

[1] https://lore.kernel.org/lkml/CAHk-=wjU4DCuwQ4pXshRbwDCUQB31ScaeuDo1tjoZ0_PjhLHzQ@mail.gmail.com/
[2] https://lore.kernel.org/lkml/CAHk-=whK0aQxs6Q5ijJmYF1n2ch8cVFSUzU5yUM_HOjig=+vnw@mail.gmail.com/

Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/gcc-plugin.sh       | 19 -------------------
 scripts/gcc-plugins/Kconfig |  2 +-
 2 files changed, 1 insertion(+), 20 deletions(-)
 delete mode 100755 scripts/gcc-plugin.sh

diff --git a/scripts/gcc-plugin.sh b/scripts/gcc-plugin.sh
deleted file mode 100755
index b79fd0bea838..000000000000
--- a/scripts/gcc-plugin.sh
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0
-
-set -e
-
-srctree=$(dirname "$0")
-
-gccplugins_dir=$($* -print-file-name=plugin)
-
-# we need a c++ compiler that supports the designated initializer GNU extension
-$HOSTCC -c -x c++ -std=gnu++98 - -fsyntax-only -I $srctree/gcc-plugins -I $gccplugins_dir/include 2>/dev/null <<EOF
-#include "gcc-common.h"
-class test {
-public:
-	int test;
-} test = {
-	.test = 1
-};
-EOF
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index ae19fb0243b9..ab9eb4cbe33a 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -9,7 +9,7 @@ menuconfig GCC_PLUGINS
 	bool "GCC plugins"
 	depends on HAVE_GCC_PLUGINS
 	depends on CC_IS_GCC
-	depends on $(success,$(srctree)/scripts/gcc-plugin.sh $(CC))
+	depends on $(success,test -e $(shell,$(CC) -print-file-name=plugin)/include/plugin-version.h)
 	default y
 	help
 	  GCC plugins are loadable modules that provide extra features to the
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203125700.161354-1-masahiroy%40kernel.org.
