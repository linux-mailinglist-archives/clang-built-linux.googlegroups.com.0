Return-Path: <clang-built-linux+bncBAABBR4CZ6CAMGQE7SJQB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F793375217
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 12:13:29 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id q79-20020a4a33520000b02901faafd3c603sf2634741ooq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 03:13:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620296008; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJbU1oPD+gNrE9U9p1nS72dTHhkohJGLhWZwzTImXnDKgjUYVANQVBS4nmj398KsKj
         0vh76Zu1YP04akVlLzbp9NLr2ag/qtLmnCdLUgOMIrbxuuaY0FLdD+NukJtL0RJLNACB
         BFU0s7xeEdaXQQvoW9psy8Ow2zwmX0jiHAaReb/FNQ9JZVeULEljOIAIYzWUU56aNnpV
         e64l3bIV8KQW/At7eMN0Gl4LpO/isPiHOiSd8seEDAbfSHbEncvaev1tVTWKciz+iWFl
         LycZLAKFetDKoa6EhEXAJa17LZZO+LgP36iXZnjAR/UOrQaEE0vCvtoMRPj7zHzBN433
         klww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Jn/sWO6vSjmf+XR+9xUDbYOZfwRb36LLqp/sH0ZqJuc=;
        b=Omu4Ax2zfWMB6IAjrtwZgfa6yfTNw233gAN9KhysJ1Yn/lHqbsqmwjMSDwNYokX64b
         M7ST32og941LjtWMrHQU+grB8okd0ifQmYPtyEF3cSu9EwKn5XuarWHN4ryiP8q5SPDL
         F/4P85qzvZKX8vtNNKgYKnci5SPNklHAqoadrBvYyyEseNAndZkL/wVXSa1U5tPCiDRc
         wfEZ5r+mAd5UdzQuQjiAELirnm3i0Fwvm/j1MLob/Obw8c9Rohn4lKJlTy0QPdBtFwg1
         pePqTAjCzLf9OJ2QiBy7dUCObQdPgMn08f4Rn1siqpMe0WPTVxj7EhiFi/c0IP8koQoU
         i3wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jn/sWO6vSjmf+XR+9xUDbYOZfwRb36LLqp/sH0ZqJuc=;
        b=FPRWPDiPfGLLcnXo3YD4WExWMNpoA8sDvL7iyhQ0XE55co2f7/VNz+pImeW5fowAkE
         wzrHPXPhR808G5KNPORqt/xOoW3fMZjjPPpxsBXxLrwTrnLOq3CoqVMFKQfbJGnwBKtq
         3ZWT8BPP+DbtOTu+tuIzehbQxOJdlcgy1N4kxwA6W2mRT8tWOFc6hCv2M5B7BR7bxESR
         TLU3I15kUzl8zA5+62jd10Am9NOK7Fw4FkJm8aJaTxchtapCwx9SiUnhvsEH2pkif63m
         HnG1gvQdSJXweDAJvxrHwoPGYUSkLxEWlqBC9nFbaVIhL9eKERHR5RssM76z2utNvbQb
         o54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jn/sWO6vSjmf+XR+9xUDbYOZfwRb36LLqp/sH0ZqJuc=;
        b=Fjp2AOD5A6HGX01QjJpsxYCogrFNWWwtxau3Iv4zRT5MJAMhXygSZkMidSnEvVhqOd
         xAn27+1VU0S2e9YwCInsHtzdJEVZnL/dijONlfKa9n2BVyjpb9Ig2Q6NY8hgeOK1xpGT
         fzN1+sHTWMyzgfnuYNzkfsEn9fqYpyJFqlitF4N76M+7ZrvD/kBovH6oBglaXWxFGJVR
         uDPOHmakE8AHczVRuCQESSbU/rHgA9wtP9FcusBE3bxxBid9ApBQPEfF8r5Onn+dXuLn
         VpbZHEmdwos6MQQsJ96ZZDqV2nA4LNB4fULQYRBd28zz3Vgl12nyQtxaWrg53vI3iWpO
         2WBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sItaWD9q8kyPWvpRGka1AyU8juOeFy/7Ni0ru9wwlj5ZoCxRe
	31cAOR+7QU71uKPjWA4jUBc=
X-Google-Smtp-Source: ABdhPJw5zmoWANI2jpIGdHgQ5wP9vUWag0bNPf/lXBfHNA8yfk4lKt+U9YUbLCLouQmpF3b7zTXauw==
X-Received: by 2002:a9d:1b4c:: with SMTP id l70mr2856618otl.344.1620296007909;
        Thu, 06 May 2021 03:13:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3488:: with SMTP id c8ls596156otu.10.gmail; Thu, 06
 May 2021 03:13:27 -0700 (PDT)
X-Received: by 2002:a05:6830:1150:: with SMTP id x16mr3047062otq.294.1620296007597;
        Thu, 06 May 2021 03:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620296007; cv=none;
        d=google.com; s=arc-20160816;
        b=DqiRZ46flgKD/IkQbNG74aPe64Cx8jzGBTDR2J06qFAnw2NTk9jS/vqQXwHsKnj71X
         1UU5koQqm+iPIa1fR5GFxkzWxAzwcKNRjs+xPaC7+e65db3CQNzTcmBWHXD2RObYIkkd
         uB2b1ZpKa09eaNv/BFulMUrNsWE+rgKi3z4tgWaIA+bTtKyLsppYAhIiJRbul9/3wYB/
         5z2UOc7Fsx25kWMt8tCAIQKj2NyOSTr86fZQUiDGUfCm+YtLMnXH+MrUqxFKAAWstna0
         LxfYfc4k1l5kVwHQw9MnLtv1MsnpqzUeIAEV8g0M1PmCt6Qxr49DbC40FM8t57bBf36W
         Esog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=TUb02v9GYNPNteihnUwooib3INClHDpQ8YvW99iJ1No=;
        b=p3z+j5gOzrFG0z5EExDFPvZziljX4g8wjhKjrRWMGzPty58NTgSHC3RflIkCgav0o9
         lBzVLLZnv3slVtboFKLY2TMJoCkg4Pdp1yPh6/kEdEB87dJ09SbyRpu1MAZne5U5Rw4z
         CcXUIGLyKhRhIjjfHUl5GWWTChGN4X1NGzVHK1vO2+9DHEfOOJoGMdS3yPxiKIQVcccv
         4B9MOQ3l80bQjEBYlxbPMOKdyt/c/p/4R/9jLgJDD6M+2yfKHCmZ5yKki/s3anNnKvcV
         cGmRmDyI7YhCyzIe3hABI4KcnP3md1tNyuoaXy1XzbPnJijb41F4O/BRsCXunu7JdDkg
         Xlxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com. [115.124.30.132])
        by gmr-mx.google.com with ESMTPS id f5si13838oiw.1.2021.05.06.03.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 03:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) client-ip=115.124.30.132;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R181e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0UXyQ2MH_1620296003;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXyQ2MH_1620296003)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 06 May 2021 18:13:24 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: leon@kernel.org
Cc: dledford@redhat.com,
	jgg@ziepe.ca,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] RDMA/mlx5: Remove redundant assignment to ret
Date: Thu,  6 May 2021 18:13:21 +0800
Message-Id: <1620296001-120406-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
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

Variable 'ret' is set to the rerurn value of function
mlx5_mr_cache_alloc() but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed

Clean up the following clang-analyzer warning:

drivers/infiniband/hw/mlx5/odp.c:421:2: warning: Value stored to 'ret'
is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/infiniband/hw/mlx5/odp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/mlx5/odp.c b/drivers/infiniband/hw/mlx5/odp.c
index 782b2af..87fa0b2 100644
--- a/drivers/infiniband/hw/mlx5/odp.c
+++ b/drivers/infiniband/hw/mlx5/odp.c
@@ -418,7 +418,7 @@ static struct mlx5_ib_mr *implicit_get_child_mr(struct mlx5_ib_mr *imr,
 	if (IS_ERR(odp))
 		return ERR_CAST(odp);
 
-	ret = mr = mlx5_mr_cache_alloc(
+	mr = mlx5_mr_cache_alloc(
 		mr_to_mdev(imr), MLX5_IMR_MTT_CACHE_ENTRY, imr->access_flags);
 	if (IS_ERR(mr)) {
 		ib_umem_odp_release(odp);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620296001-120406-1-git-send-email-yang.lee%40linux.alibaba.com.
