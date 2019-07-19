Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLOEZDUQKGQEXSNYCUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B74446EB6A
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 22:03:57 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id l14sf22672121edw.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 13:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563566637; cv=pass;
        d=google.com; s=arc-20160816;
        b=IFUXTLEUgnesEB0ZF/gFem7kABNlcJKcRXccUgcD+BYiUCbqUV01VHgJkh8Q6U+kFZ
         poGGcZkACzO1iVubEg74QmL/EEeyqhNXNAtxH0FrFwYNCL+I82NqmGmj/zvlwJW1dpM5
         C9p2IOKY+oDWNF4phHOzTC+TyykWxzNgnPCggWOuosSvYlzNt7b2linLCi6NjWLNdKx5
         NJOovzjpIWtl2zIzlYENDNwuPtoy2Xok6UUc0S2BLu4ieCpPlK0AxMksYz+Z+Y7W6nTk
         iuzui0/S15QAX2fovUrquDb3ITd57Eu2LecmIUPN2qbfpybyDydy/wmKL7YpyS6KUwXO
         vxTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=FDUSkYHqEIeh5rIrjWB9KgmriD/12gj1rcdkn5DQSuA=;
        b=EMYuRMHy3ftYnXFa7wHSqyBvbSxjNXnilD/QpDdXZzZSVJscSvlxmeVl+gPw4DcZbI
         Ya8OycvxWPI6YZypssMoMVOUdSSL11MYQAHsOMydhSwBKq3xEGzjdEeBmR2JVjIciVCd
         gdrUg0rYqvln9LmR1bHp93YD6tuyd3DloZo21VqRxoxzzunM0QlKiUoApZEdbv3hPnPd
         iZ/LeqtyeNGJttdqFxaIAxqfz+hX3DCQhvjeBJc7wdWW+DtOnoN5kY5VqD4UUeBZtllf
         uM/0YjY0OFF1XaVH8mY2YpaJB/SIZBpv97c+qVmz/78zxtBsGNu4XXL+RYbYlWeGh81M
         5wHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FDUSkYHqEIeh5rIrjWB9KgmriD/12gj1rcdkn5DQSuA=;
        b=ULTv37vkfShNby+4n6O2Wvh4AS30T3zbzl6AwNEDFjYxoTGqYIZH+gzfRZlov3kqv5
         WrO83STrW6iRes8MXxrj1x037d06vrceh90v0O7AndRyQ8KrlnoNm+hGxoe9uuK4hotv
         r0lYmQ26rDKUXOO+JBG6guRk2+WtWdn5eTM8rtybBBRKixE+JxN9uyX6Bwo2MPH6UPGp
         /Ou/QWeJwKWu5yo4Awe7AJr7LtabhocnpPiRQgN3VAzCH3ZPkuH5ckyxtJHPxcwVGXD9
         a+luyUUCSTlnZYnwXYaSfRvJHFa6Pj5rh5FYzXJhX1uEf3uJ+IFcoiBPYrdE1IRz0ENX
         68bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FDUSkYHqEIeh5rIrjWB9KgmriD/12gj1rcdkn5DQSuA=;
        b=Tm46+Ii4sP0a5RuriDgwsGEKEh4GNfffzR6jTE6CTM5gUUPqJ40GgtxxpqjMLQnVmm
         E5B0AI3hQQDfPFtpY6la9GNaeinwmNA3GJUZvntUAx2biUH2r5RcXYvEmwmGW3or5+37
         3oGNNDSdvE5zqerBCMz8CeafQmVMXSkGY705xK5ngyPJ8BhuEHHu54CoQurhVkm9OUFK
         n8EPk3nBkP/5gYltaxVFXLNsI86cPemqZ09dVWkzBPOtJy0yPmqNg4j8bqm5eJ1ftBjg
         OGWa0sDFYjZn2GJlfBtlzjlSDODif2E566C2M4V+ktZriC1KGBLaOrK01kD9G3/ktQyd
         vsHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3r+ZBfGITh9QcFV0c7IG7xzhAy1XNFsugF1zpiZxnKI6mvBPW
	+BkmeZezi9WVLp0D0HqcCmQ=
X-Google-Smtp-Source: APXvYqzMCzr10+1TYp5/ncTx1pHkDvnxxR4XIAPaBmpdFH1/xzJ3ZETv9uExQdmMh3AYoYWkJUx01A==
X-Received: by 2002:a50:d1c6:: with SMTP id i6mr47587866edg.110.1563566637494;
        Fri, 19 Jul 2019 13:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8efb:: with SMTP id x56ls7736002edx.9.gmail; Fri, 19 Jul
 2019 13:03:57 -0700 (PDT)
X-Received: by 2002:a50:a4ef:: with SMTP id x44mr49172907edb.304.1563566637131;
        Fri, 19 Jul 2019 13:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563566637; cv=none;
        d=google.com; s=arc-20160816;
        b=I91WpNWFDl6Y+sy/aUa6gXXvtYjAmWXvX3nSij4ApmgGpXpZhg3Ue2zW85QLAVanEE
         gfdt5QnNDCNfgzQYYLxci833cQd2SQCOAtxbHVowxXve4VsqlOZ1ZztnNw6RLIivCUwf
         zvKpXVHVSiA6Y+dQlcuQ7pk+mpYiBQ2C7f5kgrkX796bgYC+peiVgtA/eeCvCqYaV/sm
         VF54b5PPD+hWtcgjlHEB2KsIQxYsEAZg8hkMW3b2rL8Eew85wlfFdUCNho8hOKVrBdKq
         6nAX1XGNMmABfVpforhhNMRmwDBXdAzm0gkpBA/yf+FCBAFA3XKfrQNyiTWyOuNHvQEx
         hh7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=6S+4K9/n9Gw0sVezoIJeoHXRfKqBwRbFe1Ybos+YA8g=;
        b=VORFm70f/j5W4M0+23P4B/14asrerwkiCGJTmjxAFRf1EPj9kU3Y07okCje5w+5uts
         OM+FS9Kr495ddHfyxN4ZqdfYWmEqwyjBYiQtmxQ00XxH3TqZ2pj9sqKncCXKiu2oT6B5
         u4gUTupY6Dw4MbaR5L55ss3j1caAMuwZq4ImSQ6zaBxrbb9+I18myrqFxfdaoUXgOrzQ
         fHf3mgRVhV4o8jvCKPly1HkFYqN79nPQ15Vf9w1DTuDWrmJrpOK2Nw6sfomvBYMQBTM/
         pug1y6GcagGK6ihRpOYwl9gpnR4rCBHgkXKmMPvTCQHcShatUVKeQPu36rKXMGvMSyms
         FQBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id a41si1727599edc.5.2019.07.19.13.03.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 13:03:57 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mnqfc-1iCLCN0wWI-00pPiL; Fri, 19 Jul 2019 22:03:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Qian Cai <cai@lca.pw>,
	Mark Brown <broonie@kernel.org>,
	Andrey Konovalov <andreyknvl@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] kasan: remove clang version check for KASAN_STACK
Date: Fri, 19 Jul 2019 22:03:31 +0200
Message-Id: <20190719200347.2596375-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:J27HTozIf70i015ShzVyaLK+SKYj6oJakqgt/Py0qVMEmYfLKM9
 j+FkpX8855SdCqSKs2wi92QbC7o3aqLQvNgxq/xx3R4aCeH08w0VqtGpX4T4EbPISZX3OY8
 lSD+dj8qNlT3hfFZ7Ze1B3V3BzTo+QpxirpCVkZFyZHc38Mgnxb3kuu0/Nm4Jl7iwDFYLn9
 qTVJIZwC5u7uUNp+jafJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/juMIMxIzxg=:iBIGzTzUSBL3xedoNlYaaG
 r5RefbUKXEHUEznMmsDzgDixJeDDy8cqrsL8mAg3tcJcc3zh6+dXKofFk3QOuXU4WNhIDkpfA
 HCJNRAiZKQM/Mjt9Vtag9p/URnIYCexJFgDYI1A111rD2WWRZqF2CyEfmixCGkRLHJZ2f6Sly
 +VFbLt/cQWHNholtFUY2zfUJFgfgohkx0QNniwURsZyx2y5pjvYiL6NFzXG3sbcP11U6nSpya
 31MqUYh4A90SOiuyIZsyt9U8s+eMvlN8XgwjYXRwnHRXfjZIAWnBK/mr7NrDdjfkqqbmLp7OV
 tyNpGhwzjQfL9iRO6D1fD2dGRWSkTFhHisONWCazKwYNvsSD+9k7aY4QOWu/S0C+75Gks/hxY
 eAAdofAgm2J1FCmaPV7LBsQTmUDl9C/DKAMhQYIVkHvBaSQ7NhQ4vmzxDhome5y3B8AyvKrB6
 wcyYzIwUCwBFSG0QCXRdrBi81uAAf6bkO1lkLmeQjVS7qQIMNSTelqOCeFRtmda1pI76nMJR7
 +84sLsqgphb/1NyJOxpCD9Dr+BnM9MyvCob2rKhm9Eg9/N8U2WVU7FraS8mlJUI9XLBNC6Pos
 4ABN9E13YYMcPfoBnVSzuUXhBXJTb2xdUwqJqtrVMUhEb40S/exUSunDA7c+R45pd6t/m108q
 naN/0db8NEDKpWK//bMM/+x8kNKCnq0uMXTVBi/0FNrRUNzVe9GW9kyucdWlu0JUZVbkRvUj8
 +KsUe3idCPE7mg6SMPa1lCVGzx9N1L9faXM6kw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

asan-stack mode still uses dangerously large kernel stacks of
tens of kilobytes in some drivers, and it does not seem that anyone
is working on the clang bug.

Turn it off for all clang versions to prevent users from
accidentally enabling it once they update to clang-9, and
to help automated build testing with clang-9.

Link: https://bugs.llvm.org/show_bug.cgi?id=38809
Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: disable the feature for all clang versions, not just 9 and below.
---
 lib/Kconfig.kasan | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 4fafba1a923b..7fa97a8b5717 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -106,7 +106,6 @@ endchoice
 
 config KASAN_STACK_ENABLE
 	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
-	default !(CLANG_VERSION < 90000)
 	depends on KASAN
 	help
 	  The LLVM stack address sanitizer has a know problem that
@@ -115,11 +114,11 @@ config KASAN_STACK_ENABLE
 	  Disabling asan-stack makes it safe to run kernels build
 	  with clang-8 with KASAN enabled, though it loses some of
 	  the functionality.
-	  This feature is always disabled when compile-testing with clang-8
-	  or earlier to avoid cluttering the output in stack overflow
-	  warnings, but clang-8 users can still enable it for builds without
-	  CONFIG_COMPILE_TEST.  On gcc and later clang versions it is
-	  assumed to always be safe to use and enabled by default.
+	  This feature is always disabled when compile-testing with clang
+	  to avoid cluttering the output in stack overflow warnings,
+	  but clang users can still enable it for builds without
+	  CONFIG_COMPILE_TEST.	On gcc it is assumed to always be safe
+	  to use and enabled by default.
 
 config KASAN_STACK
 	int
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719200347.2596375-1-arnd%40arndb.de.
