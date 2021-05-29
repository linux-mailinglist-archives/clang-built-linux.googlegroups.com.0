Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBHWAZCCQMGQESYXWUFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 272A5394BE2
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 13:06:08 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 28-20020a63135c0000b029021b78388f01sf3540498pgt.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 04:06:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622286366; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahgjW7KhtVd2C9IY6Hs7uis3PpQB7IkdFbpan59iOt+tWwz4XMPEqzL8IGrfDnPUvZ
         zQUqx0vs6UqiyqL0YWK/HNfqBi0zYdCNluqrFVwritHe0MOBeBSZveNFQFkWjec7M7fZ
         1RyplsbTRDuELkWVQOUKYyVyiBoC5BhS2M39vsIXe5RvKQQNNflJ7d9UtuCyrucqOETd
         49ysr4TpFlNKMi4iBoFVSikycrOBwnGCmNAGQDb6jGFrUq2/KT5XGtJO1k6yJKZmCwY1
         nWjOzO7cQ1fMJq16IlS7zIyyxrKlFATK2zVY2J5GOvuQDm9a+wS6Wz2s7OSJD13lPXVS
         zB7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=S2wNbG6cjcnOlCXiq4e6vYs96g2wRh3Bm6/TljR8reU=;
        b=Pc7Qi5g4KOV4zhxE2jgVoLDqGJ48bd8nDACrfosZa3JyvWzbiVxDkm9VzigGEW7gD7
         i1AbtfdMPKU/wQO/Qh2F7MEQlcAsvekAvKi+40fZ/ZRbNQkrXksbmWW8NtnHKDcEcx56
         DlqE9cUVabWJShQRFG0aPu9zvxZdhZlL6G0cPyY2jWyIlT8X9IvtC7WJxpsy+txHzGo2
         kfFUaX/+w8LhFgyoQJo6Zz5jc81HIyd8E0DbcwOK6abRzLvSvCWb+Qlzx4ZeNRSr0LKn
         N07GqksXC91mdxb5Hqb7Fe09tp6uOc7XfsiR5CcPiYkbgBM6yJL0TZppfC2Cm2qjNWHe
         BsaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5ZoH3UL;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2wNbG6cjcnOlCXiq4e6vYs96g2wRh3Bm6/TljR8reU=;
        b=H5XfSQBUSwrlr1+n+tKmK70wdJWrrJS9TS5KBPWtgn6h0cobP35muU/isAtN1Mt8l7
         vUiyepaWqk96vyDvQ/pxuqbufo8KWnjbZLcGhgg8AB41KXcriQSVtQ4E10bB9k9zDA4C
         GXIrREZeMvkWvmKUyE1DrqhVg4pAMPRJgCiJsSZPnVA8pUA30AJf1UOH+Q0C14o99yHq
         nB4TtzRPLqfXy2y0IRoENY1ujIoAfVQEYR1jC135eQezN50Erd5UBME194eiXZHYD5B7
         49yVUBsI7JcrQyPGgjulNwourDKvlAbpCCBmIdjUsLur91G+RH5fC7k4eip8U3hA1Ec4
         CnqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2wNbG6cjcnOlCXiq4e6vYs96g2wRh3Bm6/TljR8reU=;
        b=bv3HsT1gIf/9qNE6NSfMsFD8N/03YruzuDtx5HS2S+93CNY0JivHCeNYUhB3focoRJ
         bFqou4xrhkUdV8Kvg92Smwlb/X4Idb7PNNmNEunIzmHpDrlZKC4lBaCan8Vr7dFrvk1F
         0XzFY6ZdqI/2Matf6t/mgZ9QlgycmPfrrrDFWQFcHreC6IoKGyx8cz04bTKjbRKGJ2dG
         14KwjaUlwIMDc8bY8H+VaS+N9gy4eRKNwmv975/1Nct0qvaYm8MHrJcrfLP2STQ9hO8v
         XBowuFf/2x8QQs/Z9F67QlZh2IjtqYnV7wYzccxpSZl5U7ImddYX0Ne0pGQeX3IlfWHv
         pFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S2wNbG6cjcnOlCXiq4e6vYs96g2wRh3Bm6/TljR8reU=;
        b=LnGdnZZrthmRfnJS80YHNJ1RJpZylyzmUKbBb747s7f25AIsAhaWGufMLi0WHGLMez
         K3w9oj3XIuk9NnapOTIz6oqpptHMOD3i5xBF4+dYN9PyjCYLHnzXaxkn0sWKSdrS8kWE
         4BFk5b4JjmC2VKlPDlkxwiBKyKpT3SE+BVd1d1uOxke8eSQ8b686NlZdObieShnThuax
         B39+KBMD8b/xWVS96mD4heo1wcxFjWR+t76p0bg1pYysMaivyt06PLIvh8Rz7MHAB3ff
         T/UOUrQ/D1J22OM5gDtAmiJZl9uIV3RaSajmlamoSiCBkEQVI0BwEfYfZUoR7mRNcR0C
         ofsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Uffv6WIkx1oEJyfZTWJPuX+NOa3MnLjHUo2pa8wK/kfPqXdsB
	iWmf/0yo/1gQLpEzklULIy4=
X-Google-Smtp-Source: ABdhPJz3D9IuOD0F4uZCkwEZpRFa8k9JZd1r01uCb81ZFbUJRXqAu1FMOxXKTLjZMkeK4LmMzza/HA==
X-Received: by 2002:a63:1559:: with SMTP id 25mr13742182pgv.384.1622286366476;
        Sat, 29 May 2021 04:06:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5209:: with SMTP id g9ls4157604pfb.3.gmail; Sat, 29 May
 2021 04:06:05 -0700 (PDT)
X-Received: by 2002:a05:6a00:1487:b029:2d8:d602:c4 with SMTP id v7-20020a056a001487b02902d8d60200c4mr8195783pfu.23.1622286365522;
        Sat, 29 May 2021 04:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622286365; cv=none;
        d=google.com; s=arc-20160816;
        b=IlDnXevS8bjX+fc5Ek91y6VHQqORa5axenqRgz3RV4Z75SXTVKFXBczAJxh29tInJJ
         B+5hZLZIBU//0VeFHrkTaaA3nv0114K1wGq5dl2xzjYkuxf1Sqg35uLkvp/z+rSjf2ny
         haK4FmFtQkhY8wDbPwHPNMy6DPuE36ir20Tx7HiNQZZi3H6kwyZ8xZjtEPcLc8p6oyOw
         dsdJxHmwJabisE7XSd2DJL5ufxvkMlSR+Ave/HH7xap+OF1xIHxZ+pB+e4JEGZC2QFbj
         LAzxhpEUCkIxDYwkwblu8TJge/PiplV37b5uKMmzc1vi9bWMKh1knI9CE9kAVNXFA/el
         VwuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qK+54IGHwuQkuGGrspkW6kXX3D+Ib9Q7t9lsF0kQMyQ=;
        b=S/dn8+/93RqgrD8SJkmPToE6vp7ct05CyEHtZaPXbeFIoB2xU5VO+w94/vJ/nS6o5U
         hvsdGNdUscj1TNb+t4BVtACSFtYjtxTCz/GIo1dTy1yWCwGw3k1X5tt4xc788FeDYcMG
         kSJlvFYCrD1R3nV9HCslEWfvqV5KddWcXutmCr7F2C4bUFqfzMZFejxhwfnhCaFxT9Nh
         smNyDx2aDsdNiWjjkr6+DWzR8vJWWlpDoDVYQifqIl3zmaB+OL1PdWIIiPuyehuu5ORP
         zM1NY+pcQiVFgYNSSBzyubOVv4nNG5KMp2eWOZKgPx8/skZE6SrsfXMmQNonpcLi8OY4
         JVdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N5ZoH3UL;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id hk5si796873pjb.1.2021.05.29.04.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 04:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id q10so6678291qkc.5
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 04:06:05 -0700 (PDT)
X-Received: by 2002:a37:5d46:: with SMTP id r67mr7738243qkb.72.1622286364728;
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:5af:2aab:d2d5:7c9a])
        by smtp.gmail.com with ESMTPSA id t137sm5328991qke.50.2021.05.29.04.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 May 2021 04:06:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Geis <pgwipeout@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v3 2/2] net: phy: abort loading yt8511 driver in unsupported modes
Date: Sat, 29 May 2021 07:05:56 -0400
Message-Id: <20210529110556.202531-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210529110556.202531-1-pgwipeout@gmail.com>
References: <20210529110556.202531-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N5ZoH3UL;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

While investigating the clang `ge` uninitialized variable report, it was
discovered the default switch would have unintended consequences. Due to
the switch to __phy_modify, the driver would modify the ID values in the
default scenario.

Fix this by promoting the interface mode switch and aborting when the
mode is not a supported RGMII mode.

This prevents the `ge` and `fe` variables from ever being used
uninitialized.

Fixes: 48e8c6f1612b ("net: phy: add driver for Motorcomm yt8511 phy")
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/net/phy/motorcomm.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 68cd19540c67..7e6ac2c5e27e 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -53,15 +53,10 @@ static int yt8511_config_init(struct phy_device *phydev)
 	int oldpage, ret = 0;
 	unsigned int ge, fe;
 
-	/* set clock mode to 125mhz */
 	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
 	if (oldpage < 0)
 		goto err_restore_page;
 
-	ret = __phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
-	if (ret < 0)
-		goto err_restore_page;
-
 	/* set rgmii delay mode */
 	switch (phydev->interface) {
 	case PHY_INTERFACE_MODE_RGMII:
@@ -80,14 +75,20 @@ static int yt8511_config_init(struct phy_device *phydev)
 		ge = YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN;
 		fe = YT8511_DELAY_FE_TX_EN;
 		break;
-	default: /* leave everything alone in other modes */
-		break;
+	default: /* do not support other modes */
+		ret = -EOPNOTSUPP;
+		goto err_restore_page;
 	}
 
 	ret = __phy_modify(phydev, YT8511_PAGE, (YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN), ge);
 	if (ret < 0)
 		goto err_restore_page;
 
+	/* set clock mode to 125mhz */
+	ret = __phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
+	if (ret < 0)
+		goto err_restore_page;
+
 	/* fast ethernet delay is in a separate page */
 	ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_DELAY_DRIVE);
 	if (ret < 0)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210529110556.202531-3-pgwipeout%40gmail.com.
