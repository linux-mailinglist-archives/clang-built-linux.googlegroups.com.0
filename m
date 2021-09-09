Return-Path: <clang-built-linux+bncBDC2RCVE24NRBAHW42EQMGQERRFBT5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 038C1404686
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 09:42:56 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id a12-20020a1709027d8c00b0013a519b5ec8sf396581plm.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 00:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631173376; cv=pass;
        d=google.com; s=arc-20160816;
        b=RlGIBlq3MJB/YWnYibYPuBMXbnQTe3LXG5DEzfDVBPta6bMr7j35xI/i0KOIdg+I+P
         ghQyYAcvemxrmCfSbMmBQ9AWWPo/vzFNv/Khl2J8JvCVVY9K478sDB/Brk9Do4EyKsXk
         uxcXuHAL4JYoWdyPCmrOhZXFMdiqKRpSf1yxsnUBMBX8apHZxyiL9ipJlIcRzxyTM1NT
         eVSoE9EZOjNMWrJvlInWrEzPnkqzKlPKMh7JRXS4SesdQC0OrX4Ehiu7F94NyPnXX0+h
         /CD1FqCyfTMZN7rGKQMDeWemmVf8/TjpkLXGAFT/nh3a3HtRLsNSEeyOfF0FLwbXz8Fl
         8Meg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=N3IoUPsHELewdcQrg2nDn5c8XOPcmS8ywqLLr/3Vf9Q=;
        b=m8jJAcIcsTewYWo4Ut7WKmYYNcNxQcBeUIoEG1twPeQAaMrAq0OMshzJ7aozZ+JDuK
         xjJcA9C2mHrrNBz9OlT69Le5RVDoMJlU1UKAJVRr3+8fEq9sBMG+MBU6B+Chug+P2/n3
         ClM+RFh2xP9PFwtw5gEi+HGoh84OJdBy5oXL78Dntb+iZBYqOTdFfqB1CS5uDECks3Wq
         KOKwKoWCJ6uBsHApe+0ezrfwXM+TIU08hErkhy7rZAbZB2A7lCCVICbIJcqw1/ICiimT
         VQCSjJJTH56jGyrlEhgC3Bub7nLrfqBRGEN0J3wi3MOETlsXNrKwTvluOe5GRAOLp24r
         wuDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3IoUPsHELewdcQrg2nDn5c8XOPcmS8ywqLLr/3Vf9Q=;
        b=XVQXv00bHlD1+cFsjs8b5SNjb3DDmESouI3zroE7o+raVOZR7pBAC5skb1LKvo09+E
         Xgsnqeq65U94BWudXq2W+cP0cJLAkFYsGGxwsN/FcuvAcXqJr74L7mnUm+TN5Oqog04q
         XWsm8PdlsSYTc8fzL2ajziwmpN6wzLlr5SEyZIT0Lsqo9Zf6XzQa0OUjf3jHO86zMrxt
         wY3mtnbq+iSfT2LeS8vOxKGZfK9L+bCm+9GhfTa2xPU8S/myOBRAgxY956MITxP37/UT
         5/ORhEwJyQswVF3OJYtzH4IpETawquneuiHyfIUTkX/fA8qwH3+NjdKeDLuBZzBJAcy5
         XI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N3IoUPsHELewdcQrg2nDn5c8XOPcmS8ywqLLr/3Vf9Q=;
        b=7ONPeX6JTUc5p4iRvkGXslieiHYxsJDvDJf4vXXUgOR7cGlkchjyDNwjFI1g6cGa7h
         TvEITfbYeCaPUlOVnwln9DdVDff8Kdv41aac6ewDwDVTfyduJMCbKuHUyJw+S2CK87pu
         hQ9I/uNGoMdrXJpc/+NEv2U7BKofrewnjQfGAQpkCoqgJUGcBW/nypHMcOpLPs9fGIKn
         idMOoPkS1iccvWqxWgiF/v6VD8rzhtkpWBiIV2aloD0BfY6sA98w3FDv9FrvY/74sWXA
         uI8zkLXLhiZ9tegrfni6F4andY2xBpHb1W/l6/qhYK+ZUtT/4UwL6qJN1+/qmFk569S4
         sKsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DvJPwW47qB9IJ4VvW5Hg6UDqUDNClyxAn29te7XtJj7FHZIdU
	svVrO7GcnAYts+55aRzV440=
X-Google-Smtp-Source: ABdhPJxBw7E1CoBW1kqZsN/2HBDa0BkwGTOBu91GGXMYh7D05Zf/r4lRp3SBo6SiSX6tdgLhvY9THA==
X-Received: by 2002:a17:90a:890a:: with SMTP id u10mr2058424pjn.40.1631173376508;
        Thu, 09 Sep 2021 00:42:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8547:: with SMTP id d7ls763650plo.7.gmail; Thu, 09
 Sep 2021 00:42:56 -0700 (PDT)
X-Received: by 2002:a17:903:49:b0:13a:752e:244c with SMTP id l9-20020a170903004900b0013a752e244cmr1205529pla.81.1631173376020;
        Thu, 09 Sep 2021 00:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631173376; cv=none;
        d=google.com; s=arc-20160816;
        b=FhJrXF8NR8OMCPhkTN6xBjkw1IFS4TBpJ87xghc8S2zVOwbXCYXY6tlBUcIeaYY7IC
         a5PgZixej045LcB8t+77i9ySjmhBjKY14pKL1wYR+MdxdCKn4c+Nr3BAcdIOfcy/3XyP
         G0Uyw6ffGGm1mrpMYt75RzOZ0kl5LoI9+HdLuAjIMjKYnBjlT4l9yZl6X9l/bygmSSrh
         xEBb4uR7cpTaDcMWWbDWZ6rtLz6+Cf4YVaPeK+9U6uFK1ktogqfcdyG/xMV0xNGfO8t9
         QXMPt2TyjNIn3smdY0XVQC8XeGldq4U5ePgP0WjJRWpmMbxr1Hycuf0x/rWOOv9nNoCM
         MlGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=oMmbgzw1qpVUlN0ruMmyrJDXD+m7zOfmWzeI8MoXgeY=;
        b=mBlOLLEVzyIiyekxz6Wh7oWOP5TLgW8mFrNgPVMzi0z9epD1PfhQYsYTjemSyqMm2H
         TE8GjE/9KhvAmMGxaKzP4tFELSfaylw3BIKqQi7KkuiTKlXnsS0bm4GHGlqD67Oipk4L
         lO3+XSDWBKcMtlSBlANw9y0RFZAwrS7775u5uBXlpRCsPtmVlvoToBQh7EI1y4j1CF8i
         KIX+VAgdlbXXruFAPjEiit4n1c2A+tCtNBTR7W8D5nSA96ZEKCiIwLWBPBZ4SgXJj6lk
         d2j/+hYw2nKXwn566qj6j7NYQVzAZNH33nQEmcR9qVg7TEPO3misO9bNh4W9TfsIZXw/
         7BQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-57.freemail.mail.aliyun.com (out30-57.freemail.mail.aliyun.com. [115.124.30.57])
        by gmr-mx.google.com with ESMTPS id r14si100494pgv.3.2021.09.09.00.42.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 00:42:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.57 as permitted sender) client-ip=115.124.30.57;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R351e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04395;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UnmHPCV_1631173364;
Received: from localhost(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UnmHPCV_1631173364)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 09 Sep 2021 15:42:51 +0800
From: ashimida <ashimida@linux.alibaba.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ashimida <ashimida@linux.alibaba.com>
Subject: [PATCH] [RFC] kbuild: add CLANG_TRIPLE to prevent clang from compiling with wrong --target
Date: Thu,  9 Sep 2021 15:42:43 +0800
Message-Id: <1631173363-40160-1-git-send-email-ashimida@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.57 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Kernel compiled with tool chain CROSS_COMPILE=aarch64-linux-android-
will panic during the startup phase.

Clang's --target option comes from $(CROSS_COMPILE). At the time
-fstack-protector-strong is enabled, and compiled with command:
make CC=clang HOSTCC=clang ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-

clang will insert code like:
   mrs     x8, TPIDR_EL0	//default value is zero
   str     x8, [sp]
   ldr     x8, [x8, #40]	//access addr 0x40

instead of the code that accesses __stack_chk_guard to get the
canary, which will cause the kernel to crash due to 0x40
address access.

This patch (from android) is used to remind the user that current
tool chain cannot be used as the "--target" of clang, the user
should specify an additional "--target" through CLANG_TRIPLE.

Signed-off-by: ashimida <ashimida@linux.alibaba.com>
---
 Makefile                 | 6 +++++-
 scripts/clang-android.sh | 4 ++++
 2 files changed, 9 insertions(+), 1 deletion(-)
 create mode 100755 scripts/clang-android.sh

diff --git a/Makefile b/Makefile
index 61741e9..09bb314 100644
--- a/Makefile
+++ b/Makefile
@@ -586,7 +586,11 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
 
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
-CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+CLANG_TRIPLE    ?= $(CROSS_COMPILE)
+CLANG_FLAGS     += --target=$(notdir $(CLANG_TRIPLE:%-=%))
+ifeq ($(shell $(srctree)/scripts/clang-android.sh $(CC) $(CLANG_FLAGS)), y)
+$(error "Clang with Android --target detected. Did you specify CLANG_TRIPLE?")
+endif
 endif
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
diff --git a/scripts/clang-android.sh b/scripts/clang-android.sh
new file mode 100755
index 0000000..9186c4f
--- /dev/null
+++ b/scripts/clang-android.sh
@@ -0,0 +1,4 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+$* -dM -E - </dev/null 2>&1 | grep -q __ANDROID__ && echo "y"
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1631173363-40160-1-git-send-email-ashimida%40linux.alibaba.com.
