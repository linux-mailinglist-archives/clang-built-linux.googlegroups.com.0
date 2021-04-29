Return-Path: <clang-built-linux+bncBAABBP4ZVKCAMGQEHLRVSHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D582636E8F5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:38:56 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id n11-20020a25808b0000b02904d9818b80e8sf44938337ybk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619692735; cv=pass;
        d=google.com; s=arc-20160816;
        b=VIAjBZBc1+wmXJaIAo58CPSmMOs3Z6za4F3GO3l0nTII28c7kkWTz+94lru+bQikFn
         O4KcsmlnzSOBvSB72KinW1kNDOEA//CwFuE51ttPhtkh7g5aMIgPenmAC2mO0Mb+NIxN
         pQ2I9dhucw+PYUa80/HMzch5PQL1VTR8Vk39QC64/OFU4Tt5IBe/PSncHLUMzPFdZHn7
         urJJt1apWUFL81CoJT56/7Xq/rWJqYbLfbvlTmaZ/v8Au5R7kVQyLqAV/I3qVJ/3vWWM
         hIuJ3Bcm4BxoX501eayQFr3FU3Qw4oVUgTd8M5/z4uJkxngRPH28DcWDolSWm4hwDZRS
         mdMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=VQRAmUSrQIGJCHW8OYtrPHDqcjeydwD9B1Lb0us35vo=;
        b=hzta8ToSn8rE/mGcwpkXMF2RI10TgHEJIaJEIC/6MiFCm630j9vNmI8bOxaxx2OqOS
         PMYDGnlea61spI3rxhKjTralpTIMRBfdWnI2IaAIPFckr4Kv7onJ8aKolo5++ZJ5g5ed
         czvytmMMpJqW/rn7c8LqRkgtqs67oZD0+mQb2IXnLXl4N6JPH9nT6v+G/FQXWKAeI/bs
         DnuOkiQQN62hQX5HPigxBLKTjAtb6umJWXnzIs7MJ6YDoXW6mSepVre8tgX1bVz2b2fv
         hZQsN3JmjdqV2oCfxZDOGE+JLqgGly53L4pX2WffXjphOsRU1G3ffRj90xzIEUgv5H64
         mulg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQRAmUSrQIGJCHW8OYtrPHDqcjeydwD9B1Lb0us35vo=;
        b=CsBdn2BpNialniMc0b2gAAxL3QgkGtX8WrC7qP/ZTSByIqNGi2UlDWa/En98cMM2Ky
         ulVdAkmm79pRo+5KpmYYhtzbG6Pr6QXQM02SiV9RPUinwHWOZICpI0rZ6NYTWYQcKc7K
         X2bLP6ZH56Zrzvpw7ricv3WBTaFPe+A54Z+40/zmzmfpb6h+xQH3/JPQy81UfEDOYO1H
         X5nck2Vd3mXAX5Nyb7YkGl2UvHyahOvOEmq45T23JymhHzkX9wBeK55e48PHQs5bQuGA
         hrWktADJnaYOQuK5wKGxM53QHzIB4fzrxTr8bEMavXK0YAT2PwJj0dHkZuGJPno8yU0l
         7lIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VQRAmUSrQIGJCHW8OYtrPHDqcjeydwD9B1Lb0us35vo=;
        b=kC/FUegXP3kuIoyXfByW7j+/0O8IZH6ugw8SWcc2m272AS194xUw8aDcCVGX4p/HzQ
         UduEKxwA5yXuGS0g5Hz4AKqW8LwhZdMfGr8eUQ6t2pkfkMCsZC431JB3qn9oUuEYrXwR
         xNwU+YbHcAmVKKHCpbMj1SaA9S5cd0gZIUV5QuJWXEC9c9DyJLgQZdGPPkLq2JX2/XXb
         vX0hC7y33rvFhQnc2NL4wniJKsrLnpqOzlxohD/Hw6CRWO5LOy1DKQSZb/cgNKs6ufRU
         T9oJvCZ+MniIbV/N5Nt+dUTRPc4nhdbEcmD0yvpRCxLhPA51QzkOH9UPFtxb6LJPeD3X
         dkFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/BcqiuBt5/HO/g5EmbIopfLIok0s5HnH2yREcooreCFoPHtQL
	v3JdIR3/iS4nmhUgbJrZ+Vg=
X-Google-Smtp-Source: ABdhPJzLRhsf56hCT7CjRuRLup2gvW7ui/XXwwQ+1gx32AzucNQzsaGm7bF5xAUAL0/5hT4zn+Bf9g==
X-Received: by 2002:a05:6902:1241:: with SMTP id t1mr44387406ybu.341.1619692735727;
        Thu, 29 Apr 2021 03:38:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls1422830ybh.1.gmail; Thu, 29 Apr
 2021 03:38:55 -0700 (PDT)
X-Received: by 2002:a05:6902:68a:: with SMTP id i10mr45521581ybt.0.1619692735310;
        Thu, 29 Apr 2021 03:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619692735; cv=none;
        d=google.com; s=arc-20160816;
        b=C0qWtjYfVI07V6RgFN475dRsMMxHZdgsHH1799RkZ4F6BAFS3lzAKbBSIraw5X/Zi8
         Y/q2iYHUJFy3BPjvNtwj08tl+yz4EbAUmNeiTbfW2k7tUJoAK02e2BNDe/lCqg7ls7WQ
         CLuibnuIPyQK7UelgfK5liIJqSDBdQBGKuj9oZyU0EC6p252BmcjBUndQebrkHXXKK6b
         3FK64BRX0In4u8QXUyo/bg0Fmu/PcZMyHKtKcnK32wkFWRm2FD9vHdM02aeAYrWVLCa5
         g3IyJmwMQrSUG4LiHnDVRTO1ZmTKIuX7OQqgjHpxLWZ9VndZvEkpgeb3E6CzVOF05rj2
         hhHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ezRF6gkF9hiFCNQHmsATwxR1tThkiUcS6PdYQkFx1qg=;
        b=xFFzYkLkpAICkd1WHzUU6nbdn+9qrabr51eiec0DFsx9aEVoRI8iJ29WaMriKYmrtZ
         0MC4YitYDrM0cIV363suf8fgYMdLWh1kHgZNMKd2LnDeqfnTnQ/ATsnsQ29wcNopwMnT
         1oQkJRqOiYSo1t5Zlflkb8F5Z5bGtNqIEC1MA4iGhFXdgSa8JkrZ7BsPAVuAyBejuSpP
         7CyBExguD0A/o/akyJlBcu59jiHH24Vw58K4Lh06OAGO6ii4PSEmKb3GHwxQ2UzU+DhV
         CZ0R5P3l0K5Qt9VNA2qxZuMivnFa4dEZ2Le/GgfAUe0Yi1vEDMwoXoAMZPxIVib7R3bv
         k4kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id l14si298807ybp.4.2021.04.29.03.38.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 03:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R771e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UXA-6oz_1619692707;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXA-6oz_1619692707)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 29 Apr 2021 18:38:29 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: aelior@marvell.com
Cc: skalluru@marvell.com,
	GR-everest-linux-l2@marvell.com,
	davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] bnx2x: Remove redundant assignment to err
Date: Thu, 29 Apr 2021 18:38:25 +0800
Message-Id: <1619692705-100691-1-git-send-email-yang.lee@linux.alibaba.com>
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

Variable 'err' is set to -EIO but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:
drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:1195:2: warning: Value
stored to 'err' is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
index 9c2f51f..d21f085 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
@@ -1192,7 +1192,6 @@ int bnx2x_iov_init_one(struct bnx2x *bp, int int_mode_param,
 		return 0;
 	}
 
-	err = -EIO;
 	/* verify ari is enabled */
 	if (!pci_ari_enabled(bp->pdev->bus)) {
 		BNX2X_ERR("ARI not supported (check pci bridge ARI forwarding), SRIOV can not be enabled\n");
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619692705-100691-1-git-send-email-yang.lee%40linux.alibaba.com.
