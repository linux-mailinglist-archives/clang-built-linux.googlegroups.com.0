Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMXKY73AKGQETPP4M6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3941E8E0D
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 07:54:59 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id v1sf5609376ybo.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590818098; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mf1TdnIAm9z0+zUxUkb+gFq12ceLswwmmWgdWM1cYqwEL2RGHEwJUIFV8UVcMTARDC
         2n/Ss3Uhjcm1RuAz1qeLjhwp9r8HXrqg3WMvy2txrUgSTjBiLfTcSlWjphY7GHEQsXGA
         yMjJoBUDRPriW0n0O9kfz1Ar8GgLqTGNU6wN6Ob6XVFB/x/h2WMJrAlOsPjfLSbqz66T
         s/rPt/FTNI3BwI9N/3F2tqj1OT+qS7CdZAQG92a4yVsVq58jqOMR5qHF/03mf3PlK+ZE
         If7KAXdOwbDjOCbTvW3vZQW3F3TkNbSYPCwNxvToHaObxZjhGQdSz2DYwipQCkfemrhU
         4dig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=0qLXmBvNEeAASnUz5SNzLmkv1wO9pr1xyGTh8rzz+QA=;
        b=w3REZ2N97RNzPirarXUAkAEkMM8Kck7yvK8lcCsm82vY7ssIBc0eP34XTRofwx3ufd
         ZQEhfs81uUy0UTLmO+1fBtLUEdAd2bzSjmWfg6SJL2PCQVoy/HpZJ5+Zx7Bets2O9mP8
         Kr4+jpWOYFmgmydMHqd+wZSaXk6pRzRnnoVn263dGI1KRp7fwu4DOs4HyGPU6M8h/r0p
         SMYoIea7viOimlsvGHoRhsYAYoWcrp9cXxWcQ7ftqbO0sApZXL6j5+rrwYnhVAl9OkNp
         umO/cyACHCGkeHhtmfIDg46DZlblIqzEjw4rR718Uj1LoD/kPH2RO415QYOCg8HLJOZA
         PhGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/wxovXD";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0qLXmBvNEeAASnUz5SNzLmkv1wO9pr1xyGTh8rzz+QA=;
        b=oNT40gGX53pgjDNJebKXfXCB8YYT5N4gSU2EAEfDl6fnsLQ2ZQMrljMpE3IV9wqhQu
         qIsaybb8BDisGS+83bOmA3Qovl+7H8ZeZngLA7o4FQbOVwLzxXvEI3mUqect0wReFySQ
         XqZQ8H9fk9oiGE6BBDsQcHj8D2lHKI9UtibHBUrzvGl+jenmui/cEfhDtGzN5i3KMBhd
         c6bZ9YMUTLnp4B2SddzzSNQWaE3SPWWams5YBsm8B9lD4c3ETf9GAFUVbJjpLdZ6RC22
         HSeKFxnmOnLW4hk09WvoMt71ttEkeTL7HjVMMYXfnwZEx94DJst9ZeVddih+m28R6WRs
         uMTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qLXmBvNEeAASnUz5SNzLmkv1wO9pr1xyGTh8rzz+QA=;
        b=rKbfIzBgVZyuupD8Z5/+a6Yqmp7E040W2qTHlvT/iEoFU+v1khNbFb641GgQPi3oOC
         ecX+XhyeHhwH9Xj1x79Fq09ouC1CUEEgpNS3Jn3doeyditFvbXKwjIhMfTn5tFN/JZ9I
         Eg1kRkWFQNTetTylmSHYLeOgYD7q8+CwE07g79v9Z8LTjSAyh1KDaSVM0s0UNCqTOYZB
         /GMnRWqQGhVBzcNk3/tT04dbz1q4r475uLl5XHzErhTEIScjed0q7rs7hOM6zWp1lXkj
         W2wcfYF0Ap4OsSSypwm0hkrpPci6yAGLGM8I3sVKopcoM+EqL+ET0483/hvIMXvGfkG2
         CC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qLXmBvNEeAASnUz5SNzLmkv1wO9pr1xyGTh8rzz+QA=;
        b=hjFvl2cY0EcucxjLRUNDYrf93JgaV03F7DXijkq0cQYJayRw5fHm0ocwfU0M6FOoRa
         jmjQh4uSXePsaDNGiOKva/pN+YJsQlteTaww/4kKa1VLum6NkoxdFwH4Q7xaVWgvPzVp
         BjniFSZCZV3bw+CKP8aVBBk87vKsbw3mTy71MX6mZLp2CZ4nD83EviZC0fV/o67yy+rz
         CKmmlJwTJ5PT6pCug8Nal/6qqTxYP1UQDMae0L6ooTHs6W5SLGawKvMbkXk4U9EJZHOz
         rsfPr8ifhU/aWBv3s4WGwfS+81QdN1s0XoVRfsS6iQoTokanX01lrJF3El1+QC7tLetk
         ns1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v9QPWsmTTTWF0qeRvxvbCUsLUpo1u1sMsGt2xwjwWGYHbMHvw
	p50cWj82twqNYAfWRUGYoDw=
X-Google-Smtp-Source: ABdhPJyr7dWqiy9XNDOLaioEndDTOn0U12QQ79kJapOKy8V9z3woJzHMO17F8UZ8PVPxO79Aiil9dA==
X-Received: by 2002:a25:5284:: with SMTP id g126mr20186911ybb.245.1590818098763;
        Fri, 29 May 2020 22:54:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c84:: with SMTP id 126ls3257235ybm.9.gmail; Fri, 29 May
 2020 22:54:58 -0700 (PDT)
X-Received: by 2002:a25:c08b:: with SMTP id c133mr19132079ybf.286.1590818097973;
        Fri, 29 May 2020 22:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590818097; cv=none;
        d=google.com; s=arc-20160816;
        b=h3OVI0He6oqfOcKggW4zq1OlyygbHB0/DcCN5xEx3SQwR3l1R+MEc0xUmw/JATurzj
         vMl9Z4NQ33UAMtL0nx4XPHPBaWnXms78vDXH7BKZ9zkUT79BaVYi5iCKa4Fc5BAOr3JV
         WmdJrFyMTjLaDD07IhiOSUbcQisgkkkcMKpMo60iXZjCUi3WzTlObvjs+8w+Gv6j/QnY
         iomjyhUSOXwwmphHffFq1ovwrTC6N2FuTof3i1ot2wAJBr8FgsIVDedDspQMzul6mbPc
         BBSfoSDV8TFG4prHYkp1ZpKQCe1iIkYWT9whSZ1wjVbeEkCzQlL6pGoFULyQetdIeufT
         vftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=D961zIEOC0lUAS+NHn7BVv/6REjy7Yg3HyU+EPpP0iI=;
        b=AlBYt8J2cH84B+mm4sbcWwxzjPt2Mun3OtAeVZx7Mjsh7I/tW39IoYiLqaGk734Pil
         lBEZgUJMmGMYSh6JDmHMhBt41H4QLFph46RCO8njWC7M6aNJXAayGiCrxmeoDHDRNgu2
         RoQSBpbGCqzCqUSGRfxuwcJCWIYvz2tnWOjLfutrw9Pe3SvHDFBxs7Er6eGh6N/BcDxs
         8c25GreOhlry40enM9w5hPotS/P4uFd3tVkL/ptETYCHkL3z/M20lvNqovkF6FWNKUZl
         LOQWo9hCyxqObS+N+/FsEP/+cT3/iz9YrFepGM1iq7cGjrpyryqs/9k3zgbyfH+HCClN
         nF+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/wxovXD";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s63si817280yba.2.2020.05.29.22.54.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 22:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j21so893394pgb.7
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 22:54:57 -0700 (PDT)
X-Received: by 2002:aa7:95bd:: with SMTP id a29mr783647pfk.57.1590818097115;
        Fri, 29 May 2020 22:54:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k14sm7833550pgn.94.2020.05.29.22.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 22:54:56 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	Parav Pandit <parav@mellanox.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net-next] mlx5: Restore err assignment in mlx5_mdev_init
Date: Fri, 29 May 2020 22:54:48 -0700
Message-Id: <20200530055447.1028004-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Y/wxovXD";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variable
'err' is used uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!priv->dbg_root) {
            ^~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note: remove the
'if' if its condition is always false
        if (!priv->dbg_root) {
        ^~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize
the variable 'err' to silence this warning
        int err;
               ^
                = 0
1 warning generated.

This path previously returned -ENOMEM, restore that error code so that
it is not uninitialized.

Fixes: 810cbb25549b ("net/mlx5: Add missing mutex destroy")
Link: https://github.com/ClangBuiltLinux/linux/issues/1042
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
index df46b1fce3a7..ac68445fde2d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
@@ -1277,6 +1277,7 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
 					    mlx5_debugfs_root);
 	if (!priv->dbg_root) {
 		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
+		err = -ENOMEM;
 		goto err_dbg_root;
 	}
 

base-commit: c0cc73b79123e67b212bd537a7af88e52c9fbeac
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530055447.1028004-1-natechancellor%40gmail.com.
