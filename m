Return-Path: <clang-built-linux+bncBD3ZDPGUYQDRBKVK7CEAMGQEI3RU4PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AF93F151F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 10:24:11 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id y20-20020a056e020f5400b00224400d1c21sf2850427ilj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629361450; cv=pass;
        d=google.com; s=arc-20160816;
        b=WQb1eg5nUx37BuYlDy6o/lcHsyzlqh1QTEaItOq4b6DxDGPpR/XzoTqzuHkVbB3ySQ
         rDKVQXzhY2gOyIrLE2vX2+uh434B2rE/3GQAEimPoilqmmtRnHMkKKckii1zl6UQfFKo
         FIJQ/WFEjLtZ0UsY5/blik5CBztSVwdliKXGsIzqeozMRfZ+DHr24eMwMy91wTcj3r/T
         oiXQWz/9tQ5bqwCQIVZ2oKD+UzCOrsFOLUZHuxgH4G8Y36H5GLy2BqGQr2TLurSVUGOn
         uKjx/neVern77uXuGU8k7WFDIlZkqmmI8ftyAME8b90tvGPgo3XYRm73yADqrD+OUhu5
         FIGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+GipUJyNBhDMAab8/jL9WVvcGyEFlUAAHqt3mwEbKoo=;
        b=Ep/28Up9vaW+DAJevvFRdv9pMX8D1womDEmydmtE7DJO3aJljvS+pxGcUtJFTyEqD1
         5hG8VcuwTzmTGeNzsso3/QvK6xZNgR+pfScLcKP/guqSOd9ZwuKJnIID1JOkiHZB82hv
         yJypnuG558kLD4Iiqy0RogDfacagSeM4rxIuDPhnJ8SO5FlbUOZtnfIG/Q6wgJRMdpxn
         kxSHkbOgeu8fK1g3lmW+CL/yszdDEoL7deMK028VvdfITNvDsZQw08iWBBx/Cuoq3TaG
         Lc7UleMSorKfQKdfL1L2zOSv95O/JUz3Z2cLCZH1NNgd3p4P6csXdbJdzRU1OhnOZyoT
         ZDLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+GipUJyNBhDMAab8/jL9WVvcGyEFlUAAHqt3mwEbKoo=;
        b=CNt4j6Ucqiyb5iaRfNa4TrFfOjZYPhzGkUirtIf+LiiXSOlccKK+Fe7wmIHGHWm/bC
         LlveoAiWGLlPsMUZi3V1Qb21pNOZdBr1lxK2Ky024l2cFGDJPDFOd9u6cmXpWPjeFY6z
         NayZa8ryTC5coBc1lBQBmPN/DJ3SuP8b2CxsYkdf5t/W0FCzODKaHiH35mdwPVwHfmUp
         NGakCdS2So1Ow/FeoJVj7x3TZX2Wmavu8xNoYFjw38RZKVVQndLJmzxbMpXY6/uv8gAC
         jX7dCDyca2jE0DkQbsPjmisMNNmgbAmjeFHdMEKA00JZWsX6YuOiZZuOUnGLJ/9hDxdE
         daPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GipUJyNBhDMAab8/jL9WVvcGyEFlUAAHqt3mwEbKoo=;
        b=l0EfdhrnFR+/oNQtv3kHmPxiaOpfpL9/Qujv7p33A6rXPElf5g0jwNJKvMV+f6B0JK
         CtjjJ1Yxs7b6ldiVxG2FIq+O7R5xc8h8kqhqKHWwxAj8jJYxQDkUhxqWpgH2tZNfaWVM
         ERWOc1IZKIbZ7sIjJ0W/kRZ0nNdAwbtiB5ezSGZB6UADQOW5OzPqQLeoR/5ORy0ezi6Z
         t9sC3RjZIRaH0LEeQEgc+u+lVOnt4pm1DeRUEHTSozPb/OCOGilfBlUUxTOh1BeyE2xY
         km4Pbw3ve2hOlIszOLpGDBmelo64NflSwkBsS59REctFT5hCkjD2PiW5DsLtYq6iiz+6
         rKQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jg2oRdLicrav/aR2NRCMh72IO8rkySvYRFe/AofSpZbks8JZd
	qGOu98rIaYmxJjAufA3KpEI=
X-Google-Smtp-Source: ABdhPJzrDyPbgMnpFe84qmz9qZlN1Ch+MUgVRCdjDfiFPLKLORQc+TPSVg8zXK3EIvFaUIvrZTVDRg==
X-Received: by 2002:a92:d90f:: with SMTP id s15mr8927295iln.278.1629361450491;
        Thu, 19 Aug 2021 01:24:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:12eb:: with SMTP id l11ls992633iln.1.gmail; Thu, 19
 Aug 2021 01:24:10 -0700 (PDT)
X-Received: by 2002:a92:c0ce:: with SMTP id t14mr9046395ilf.72.1629361450128;
        Thu, 19 Aug 2021 01:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629361450; cv=none;
        d=google.com; s=arc-20160816;
        b=N2M2WuEedcUrmeZcU6RVq3zFN9bqCRnoN/OQoIgmXdw/A5yzdr+qdUmcNFXLNoGdZI
         aX9sl9YSuqJi1FUn/O0Jv0im/VZ9kFRUDgYlpr14ETpdBDPSG/JQzuHqNcaVU/KCPOOD
         EyzQh70bjJ13sYz5AiFA2UWplKe9ejZHll75c32lziRLQVFN7HwXSCvJfF+di+fYAuNW
         P4GaDeEticDiubxxbP0S3MJhEZvKiLcdVAr0aFRjhrL9zM7HBb9Hm2N/eDYL/g8mk4uc
         N3nHrBiwYU9ZUuE9d0ka2TgLfxi1oY6q+lDDbdqRD1Ult0vqUhzLNtZhB1G4o2rIa5EQ
         Gizw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=mtMRDyiuPsAyCstVfLMTkFeLT1ZZPnOfCutalp+rgC0=;
        b=tLqkfHD2RkWjd91oLMo3MbMu4jBoNbUnhvO8EZ+hMJhwE9O6zFvRHqazRf+AlQt3yX
         P+5nl5PZUnsERhlhafirNkn7rfnsf82afBeQMtilpc2zFAItbg03ovaK/v7UAQ+TSn+M
         eEKE5JLiTVT1+BW4b5SQsDp0LSk+Yc/YVs4Gm56F0zKwJQW+pm2dzlJv7DksOH9L7dqk
         lqNuzxpghEm971GjLF7cGtWURBfSaNeb4NvmVRYyv57yINQSQVUymkKNpzS4bTp1OEFZ
         WEimBg6G3qIwvwRcqK8aPLzAEVfuCko5gK6mnzCpCiAjOKGEyTem9J6zJ2dopnTq/maW
         H9mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id c81si114003iof.3.2021.08.19.01.24.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 01:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0Uk-AU5A_1629361442;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0Uk-AU5A_1629361442)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 19 Aug 2021 16:24:05 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: almaz.alexandrovich@paragon-software.com
Cc: nathan@kernel.org,
	ndesaulniers@google.com,
	ntfs3@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] fs/ntfs3: Remove unused including <linux/version.h>
Date: Thu, 19 Aug 2021 16:23:37 +0800
Message-Id: <1629361417-94657-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: jiapeng.chong@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiapeng.chong@linux.alibaba.com designates
 115.124.30.130 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Eliminate the follow versioncheck warning:

./fs/ntfs3/inode.c: 16 linux/version.h not needed.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 fs/ntfs3/inode.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index bf51e29..bb01f1b 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -13,7 +13,6 @@
 #include <linux/namei.h>
 #include <linux/nls.h>
 #include <linux/uio.h>
-#include <linux/version.h>
 #include <linux/writeback.h>
 
 #include "debug.h"
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1629361417-94657-1-git-send-email-jiapeng.chong%40linux.alibaba.com.
