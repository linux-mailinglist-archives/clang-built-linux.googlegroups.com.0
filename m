Return-Path: <clang-built-linux+bncBAABB25J6CAAMGQEL7S6WCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA4230F67F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 16:38:21 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id o135sf1068999vko.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 07:38:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612453100; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQvf6+ktVhw8q6xSK2tCHSD4hLwmQm3gdO9UpG2oK6Wos5IVmARlWwJhOMh9IAq3Jk
         LIhi2Kx9/3A9VYdYGPHYaIths9Sffnnypsi5ERYkINengXW7jw09WLAyT2kb1R7fy1pJ
         y/q7MVEU4eNlK0DuRM+hWClNKwahlgldWsUI3WwiHFatkX1bKcv450iK1nr9kJa/EnY9
         vDKFzMhufox+HQi9++IGHcUSSs0fEXjj5lq1oW6+pNtoAkr5mUWrOwiDQXlbNddQ9BOY
         DwhkK2OMX87vXJ3M8k+ZtzUI+SWTMcqPs+K2VeyHZ068GOXhxb6qUSJenmhL9JKeeBf6
         HM4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=meQ6sqvN2tk/5QS8xzL2vuLZzBtWy4JNitXLhwob0CI=;
        b=vqcNtHxo8+hH8UI0EiQTpDXXaisOBdQh4ZrbSSiyTsvIHUuDp80qquXAmYc9waVR7M
         JMh5OkOifEDrN00sG+JnyOzjgKWP/MufquJMVGJvNCF/stng8V1xHPBnZjwZKCnDMDJF
         h+tFEzxKaYkS6KycZcAulbJX9bAtyN4QfTNepK/BCbxsLiYMbXzG9P7FVbGOBtnodI3c
         Cv0xsc9gfKkVPzCCgXL+1dKsBr1Xg2RyGn5cYbn+botyRQA8RDqnLsO98WlMK0yxYXC4
         /KyngE2FNFKywRLQXATXfZoF3PIMIdSOVkNM/Ac9DUxBN8Fm89K7+4DontZ7RLc9qT4T
         uLHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kemxjGic;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=meQ6sqvN2tk/5QS8xzL2vuLZzBtWy4JNitXLhwob0CI=;
        b=a01q9nKKit0FvP2WNwp6QrgQuhkoU9GH43lsJ81Fv+vXoteUgb3U8VJ9GsSpDS0Kau
         t+JJr5DxKNrCVAoB+1/BchqazuU1pOiJc2+FLRXOgVHapIM0D5Knok1OmGYxrBDftxN6
         gmeyw6sMltdIXOs+jS/IjelBKl4nc9/oaB1IgRWxHcTi50sL5JLAL4P6/GzhVz46SvS/
         5IZ18JzQu+9svBnQrLAh8cKqDIrAreLCY5gxyd3qFsDlIuXvm9THEki1WZcQZk6EycKc
         TCFz9EF9yIHE3Ur9+QxYglxHZweQ0FT4ICbmcslysJPqhSvJusiNxTLj4F3hZFvrpAXh
         g5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=meQ6sqvN2tk/5QS8xzL2vuLZzBtWy4JNitXLhwob0CI=;
        b=Lpr4KMG9G64zUasrbXLYTtpxCZ/xD475ZaxC48h+PsydkSQaWPtrY59790vVzG+Y82
         osYImE4pimunhpXMkP7b5kOlEP7/wKHfAWodZU0L8gd6vrZhK2WOQHcEFDxlon5iVNVJ
         DIWJiVJ49vG02aHe1JNjzMmJ22cmUcCSfZ6/7LB/dixi473di7rVt0xzYOp/Mcmwh9V4
         h+cwkPlowhEj+gs/8GAG9Xa6mrjcfIC5aUzwSGDBI0MdYOAPHTzibjOuxKQ1c4LaZYdF
         eWVLzOuA6oRR9kIlxEi1mWROScjoP9+IKVwX9o+Lb59Lhmu/Zaeg/8NLtyiFQn7F3Y2f
         znug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LtarrBJXZ321aQWqdK1yqzGuQJ6J2fLIqCsGBtZTidTe41iYM
	iMFYWdt4dI6CZr4DITq914Y=
X-Google-Smtp-Source: ABdhPJwDayORgNdBeMB9gyYqdnhjh6xnqYwok/fK179relSVSa6T1YD85lJEzDbOJ+ZzNjY8/dmZNw==
X-Received: by 2002:a1f:9397:: with SMTP id v145mr5960096vkd.10.1612453100137;
        Thu, 04 Feb 2021 07:38:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2645:: with SMTP id m66ls752394vsm.3.gmail; Thu, 04 Feb
 2021 07:38:19 -0800 (PST)
X-Received: by 2002:a67:eeca:: with SMTP id o10mr154264vsp.30.1612453099712;
        Thu, 04 Feb 2021 07:38:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612453099; cv=none;
        d=google.com; s=arc-20160816;
        b=GlOceaZ9+AfZ4FD47bA/HjlTfBlJnVl8K3ewhar5Nksz1rIg60tk0S0a9zOcAlVe7E
         LdR6XLtDIiFBSiK+RkP+ye8aEyANqp65IfOh7OldAAf+jEkiV6HSVRMQ75ZsN4dRZ7K2
         tD+UhNnzROlIraTT1lkLc6wTguFECWJ0n5juskrQW5thk/wnN2Sr/S9cYSi9oMMstYug
         mWqSD2tDj3lF2Z/qaiFrN0DkJGsnTvQpDzzTHKQ1EVkTQ3Tm82wsfln2WO5s8XHljQ9Q
         SfkNrzn4G9fVjxZvof275xt5ZB1kdhhBIpdbE9Yi/k/BPNLFPHWMhxbFQyjpcnTHash2
         pasw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kSLU46XWlJXFRgzvZ+I0JvCu1C1PV/yuXjd/m/dbOWE=;
        b=bmvyDyvE9ciu8Wlwx3JsRRCx2r7A5d3DrtneuDLja4YfyOxqptkWKvHcHMwC1RGdR7
         g83srFSUPwMJvuLnHPuoa92Hz5TVq5x3C3LJmvwMftzgsJZxT6jrW8u67XTt9EwVRW2A
         WrV1ZmcqVLe+sfoNlEK74Y6eFibF2w50aWSVgIQcrI8Hqzby+M5H/EOvtfzZz9sVr2rl
         Qo6EPyRPPE2pW5Y80Zfy/6XQfTaWiiCDt7WhVxWPHknayPECxqgGFWjin749Hc28z0xj
         skkXHXLGVpx9hgn5zj5a9JJpbTUWcRH7ICs7SsplGLiQNfH+TmIrNqDPLGlw+/9jGQT8
         qtaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kemxjGic;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si322445vkh.1.2021.02.04.07.38.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 07:38:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E026D64F44;
	Thu,  4 Feb 2021 15:38:15 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Yisen Zhuang <yisen.zhuang@huawei.com>,
	Salil Mehta <salil.mehta@huawei.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Guangbin Huang <huangguangbin2@huawei.com>,
	Huazhong Tan <tanhuazhong@huawei.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Yufeng Mo <moyufeng@huawei.com>,
	Jian Shen <shenjian15@huawei.com>,
	Yonglong Liu <liuyonglong@huawei.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] net: hns3: avoid -Wpointer-bool-conversion warning
Date: Thu,  4 Feb 2021 16:38:06 +0100
Message-Id: <20210204153813.1520736-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kemxjGic;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang points out a redundant sanity check:

drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c:497:28: error: address of array 'filp->f_path.dentry->d_iname' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]

This can never fail, so just remove the check.

Fixes: 04987ca1b9b6 ("net: hns3: add debugfs support for tm nodes, priority and qset info")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c b/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
index 6978304f1ac5..c5958754f939 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
@@ -494,9 +494,6 @@ static ssize_t hns3_dbg_read(struct file *filp, char __user *buffer,
 	ssize_t size = 0;
 	int ret = 0;
 
-	if (!filp->f_path.dentry->d_iname)
-		return -EINVAL;
-
 	read_buf = kzalloc(HNS3_DBG_READ_LEN, GFP_KERNEL);
 	if (!read_buf)
 		return -ENOMEM;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204153813.1520736-1-arnd%40kernel.org.
