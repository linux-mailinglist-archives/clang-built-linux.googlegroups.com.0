Return-Path: <clang-built-linux+bncBAABBMV7RSCQMGQEOFGB2IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id D03A3386FBE
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 04:00:19 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id z8-20020a6be0080000b0290438c7ace07dsf4761522iog.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 19:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621303218; cv=pass;
        d=google.com; s=arc-20160816;
        b=imzw9+a8MldbQv5iwXMDbxJCoQw8SQJQNbJYdi96Z38QzXCh6tL35kCSqg1CkFVYEY
         OH+hQTPfd244IWoBDbSXqkELWBLopV0aL1hB2iR6ylruGdFwo2aQLeJvylvqW+kix3zT
         x9OXGmRZxkPb25h7I7DqwX/4khU1PrLZBk+7A4A4+oeLu6eBq8kYApOgzFMo/QLyLhDF
         Ov6FDWkJCBQu6SqgXgJQhs2k8xoaIO6heJ0z39F+/NbBZNhxUL61h4q9QWyPHa386ZKt
         +H72YU0u85gZnAXgPeVn6nvY6I8irUp29O6eI0Wh03C2PbEclBn8qg5mgFbY9wLcwK3m
         ByNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=one+TWcC4tdGPlkNquX4BHkB6AH47/o0LmYDQnd7/nM=;
        b=JYf+D0jQF1OJZVzXIBKTlFWP0l/aE6G/7S/PvdWgB5cBGyoizZuoyXlAu25DBC/+Ye
         3IfcdLcc+id1YRnQ6v072a0Wfp78mk6UeE4reFN0+eyGPmFYpnOYl9j5DOK8GAzXksTN
         TlGbLZoGptbOeLFzBsaNfataaVb1GvuJ6yXbJ1F7rdiXO0Zxhhs3IwzZImyljIowufWq
         xByaWRzVG5Imjqpf3oNO0lR5F/+HR4sTAiHfbFeD8Gorc5XCflrSLYr8txeETl9il6/r
         aiW6JAIf3i9b2KxpjhtHPEbCFWCYyeRua1L1o3xgktuHQgJdGPfQRDYikbayU/TEzoH0
         uoFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=one+TWcC4tdGPlkNquX4BHkB6AH47/o0LmYDQnd7/nM=;
        b=ESLYvrKZ2FBdPJhy45LD8tqWdgnau7XvoJw8auhG61WTGkfLWMELEVnvHsdR9wts4G
         46IdR5q2Wta36VVu4OgdygmQ64EAvOpJTGZf7kFoVqBsyxeVuxGqi9BIuDacfGVIb6tF
         zlQea4TSVS1wdILN4CiEUDfw41QXN2Twkf7wWTfElmlx/eG2G4bViDQjjIG6LCXgzkL0
         zfPnbVt7t7DsWN5CTUgd6jPRgQcAQl+nOlJM2ynwaLyGV6hc1R4PDKMMA28kRJT66kSN
         bjJHgtL1XmzMQI8xb5zY5bHtoGzJpWMDCtUoWhqTdvI1xgwTxg0y+nftBJCjPaADzuYc
         ostA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=one+TWcC4tdGPlkNquX4BHkB6AH47/o0LmYDQnd7/nM=;
        b=lCInyu6nQLed7Qm5H1RMKBPluQcYTtbwGdPB6BaSjiDvw9X9MTFfmLW4r4w6Krchqc
         pf6AkbIfx1obVkq9mYIbB5nbPbyf352Bc39x1uLxvupBqPya14eb0Z+athB5UQjClwnY
         8SBu6KF3IRScYpPctu0QDRGJOlEOtLsemVFtC4YPjM2RYleR0cqWjmCAxAcZFfzHZI3T
         BlJw7q2bHIS9HIAH+6zpgPiveXMijXc4Jds+iZfO3jGyxUj2EHEGUrcffBi0q3qZ+Htw
         GPvTG2GYpsyV+UR+onkVGVnU4PZHGkw2oDvUG7A21YK5cXJJJaCoof0FFfoI6rCqJjor
         aICQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317y3h+5SrQT4n40Lp0zobRtoCY4kUjaQDHDgi6sq7uEj1wz0zq
	0+vuQ736u4QoIZl6U07Ha8A=
X-Google-Smtp-Source: ABdhPJxv+TVSVJaZMOaLA8Jg18aUeLVO5d3ka5K2u0WiJuBBLcJmdd4nP+rNWtpPTW9AwrLjhMwEkw==
X-Received: by 2002:a05:6e02:ed2:: with SMTP id i18mr2215238ilk.22.1621303218480;
        Mon, 17 May 2021 19:00:18 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3895:: with SMTP id b21ls785961jav.8.gmail; Mon, 17
 May 2021 19:00:18 -0700 (PDT)
X-Received: by 2002:a02:6c46:: with SMTP id w67mr2886389jab.41.1621303218156;
        Mon, 17 May 2021 19:00:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621303218; cv=none;
        d=google.com; s=arc-20160816;
        b=hKFV+hl3+o1IQT9I83q3RsASg1a3rp8ofVs6wkRcTzatyEC21xq8MAF2R75L/stcLt
         it4cY4Pdsc+wEX6wzUwbfky80LJcIGYcSQXSBhpWIwzxx8EnP4iYNJO7gxjF3EranQob
         Y+RbxEjGMhiP+zfBdEb/v9QvtBRwjeRiEC5ql69Wgapc3RKV5wd4gIznl5aZXgdFuU4O
         WyUg6E/gTgg983Xcyoj0LiubgNWDblvqOtAolgtY3o9lQGh3PUUIFehP1USzP7HG5J2w
         QkUfkKI100I/LTdbxY7Yw+/o95STNX7JyR2m9s5sr3hkv41koKxjJUsGlFHnxyN9bz8d
         B0rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ihfHKiOTPj3bPNkoBzEdkflyz83EodJMab1xo9GLiWQ=;
        b=dz4d0JEONZUF6SkZ5s1x0nJd2almtUAm+oPmgNdYCg6GFvD37duofmncYBI9CoTQNY
         XS6kq4HzCGBuTP/mVdlEYhrLUYhQ91eaxh/0wxybj6ohWxfWC/DZwhX4y0zwXUjtfntJ
         XPRWlLZ5GUs43DIKSU2CbRBGigXBObQrNKdkla1quOXOUfSo8FG7BUemc1WXAbBMR5ND
         qRMDxmmz+gK5sS8CFjt9r4Q7Eq0wXQAuKgWnJyT1iu0GXymdO3OhgIEhh/7DdKzsvMMN
         i8ZPzYfNIYKMhymiwVr6O6FL1vZPwNK6ujznykpvdqkBiwtsOBH3JvvH7E2dEZYcc0fe
         Kmdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id m11si648596iov.0.2021.05.17.19.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 19:00:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R191e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UZGJFVz_1621303201;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UZGJFVz_1621303201)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 18 May 2021 10:00:02 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: pkshih@realtek.com
Cc: kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] rtlwifi: Remove redundant assignments to ul_enc_algo
Date: Tue, 18 May 2021 09:59:59 +0800
Message-Id: <1621303199-1542-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
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

Variable ul_enc_algo is being initialized with a value that is never
read, it is being set again in the following switch statements in
all of the case and default paths. Hence the unitialization is
redundant and can be removed.

Clean up clang warning:

drivers/net/wireless/realtek/rtlwifi/cam.c:170:6: warning: Value stored
to 'ul_enc_algo' during its initialization is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/wireless/realtek/rtlwifi/cam.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/cam.c b/drivers/net/wireless/realtek/rtlwifi/cam.c
index 7aa28da..7a0355d 100644
--- a/drivers/net/wireless/realtek/rtlwifi/cam.c
+++ b/drivers/net/wireless/realtek/rtlwifi/cam.c
@@ -167,7 +167,7 @@ void rtl_cam_mark_invalid(struct ieee80211_hw *hw, u8 uc_index)
 
 	u32 ul_command;
 	u32 ul_content;
-	u32 ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_AES];
+	u32 ul_enc_algo;
 
 	switch (rtlpriv->sec.pairwise_enc_algorithm) {
 	case WEP40_ENCRYPTION:
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1621303199-1542-1-git-send-email-yang.lee%40linux.alibaba.com.
