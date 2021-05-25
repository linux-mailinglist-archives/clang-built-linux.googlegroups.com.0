Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBEN6WWCQMGQEMR3MZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB9390A84
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 22:33:22 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id b66-20020a25cb450000b02905076ea039f1sf43450669ybg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 13:33:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621974801; cv=pass;
        d=google.com; s=arc-20160816;
        b=vEo/GsoMZef9AfbANVG8KhHZfqU7Tql09loYlcqb+wbmNygyPlpQdz0R6cQfPBd2P1
         GKum+xfmldtcayKZe3E6JDpq8z3kc1FRUWxfypKUuoOr65HgAEXNuODgjsDzWP1cC2lm
         +siMO5VGrAVWB7WyKcC3r+3WwRhr7yFiwLGby/+9T+9HGxOcdzgvJw63bc1fx0rcMdWW
         7liejj/7RTWodh7/CAWf+SjTUIT5obOevmlKbGdrzcyUWpTrs5SJhW3tObG1u40+12j7
         E4e/rIcvGKKwut5DN3FADQn0zMYkKO8lpboM0FY9UqlRKczFbCUxTg5M/JTaGoU9sPt8
         adOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=kYk0deDqs56Q5F5mjp7mFwjejR1FFLlIanHf1cYfRVo=;
        b=EB+59CR8NKRLH83QsLnYk/iU33ZVX9HYMC5n59iBIPd+t7G8DFTc/3cXbDNBLLywmh
         PWH2ybXNiNwRv+UTH81+t05SJVg08oke+wglk7g+JNH4bhGoVtBuTyumUjjxr/LRFNoP
         QVwR5E4YZSaeckjwgfH6B6nxYMtLn9ReZegkFTK4A/LBYnxEHQ52RfN8wU9v39bzMVIb
         d4skE8/tjV47wzGTRG8uCf+QVEvA6fR2MQ5nMLpSLJ0B1iI90GdwpIjBMPVKPvPQ9A7r
         uOWIFTwZ8THIwSLtkyntzPDKwDY7zPW61jPCGunPG7wKsZE1gACoT3yaauLULrWEYjvS
         s70A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaVNsC4e;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYk0deDqs56Q5F5mjp7mFwjejR1FFLlIanHf1cYfRVo=;
        b=UHj01ifhrUObOA9ZOCuvGnUK5jcnStLDCTHg1mvnC1gg+QM7gnYcqzGSlzevX1Q1Bl
         em0rc48Aha1K9Jai8wqClKQ0gtBi5BOS/fpkxvCOfL2n24Ynju19D/YJBrLbPuuEZY5n
         /B9mSQJXB0mt6WsCoejyTuqu3EwMAVy2N6cRTCAG2k+iYDsc/CNIPt3Ao6b77oeJfmLL
         bVG1uDr6/4wFYh0zSgBXxP9ancm39GN/qhVcGvPpaeVDHG9W6pWI0wGA5J6IM/dc02W3
         zSEj0d7cgsW7jhcrE+of28LbMB8pm5fXpU2R5cFyPgF8sZV0ao1AtiHRq9Yg/3t1AQ0r
         jDIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYk0deDqs56Q5F5mjp7mFwjejR1FFLlIanHf1cYfRVo=;
        b=rXZwwy6DJ3fLtZrCHJJ/wV54XuiYPwE3Ht7LWtnLnc0E6ne70v9HlkqR53MYm9Oi5P
         g9cWAqwwrh1ds0k6A5eDlhVvP2R/3EHRGiG8yZ0l5eW5gUpQkONt4s6RBO8UsUh0Hg0z
         0QJPsnuQgBuiuSX31OIke5Sjd+dqgTx21Gyy7W3OgOTAuoDHwdtkhUElKG+M23yLpFNx
         3IcQuuJLvDMaMpkzTLH2qQqqoO7qyWPpWS9eCLUy8RkfuAkpuvr62QhOHk4UIW9GIJFx
         EaH7uoW5AxfA7iHf4C2ZftTF4uV875R5+HHHy7Ognoh2tXDiG5ltVK9QS3Y2gsCjjnlY
         IsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kYk0deDqs56Q5F5mjp7mFwjejR1FFLlIanHf1cYfRVo=;
        b=Z2ABScJN0B7RzTKcTGvMnBsy/73ib31/IqfQiQjKNbmr/uSFmkJ9X1L2p99BnLUS6N
         DjcLvWVEps67QzOENYJ2Lr6zwedGMsZrZXxzBX6tRuS+FsqXTkAbYHFOzxkaV7owrJCg
         TsAltTXMh9DQDlOihaG1Fa3GJdITI9KXzeoulvdKmxHW1hjDkZC1No8IzBPq+rHDaHEL
         1qcLHdX1Vt0nV2NzuXb0yagDJBxCtljB0JMG0zHhwzK2con2eG9XiZ/t7FpAQJtr9aoK
         F/nga8nO5vfsHT0v2Nm+PXMRmENkgQHzDA3iZ/HBiARnhO4HZhGoSJshvxd8XMilzLZ5
         /wuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V8Q6+LIPyyqS0+uspds3qQJ8i/hAXcfK/WWziUjfpE62NoupL
	v1pobJggwGTFG4nTWIWR1hc=
X-Google-Smtp-Source: ABdhPJxuaeQKKDYQZ3+9L4lnAvjwsjb36Jtfy3ON1h6s6rQzlLbt45EdGYSMEmap2jwMrrgGm5VE8A==
X-Received: by 2002:a25:9b46:: with SMTP id u6mr43978352ybo.218.1621974801110;
        Tue, 25 May 2021 13:33:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:702:: with SMTP id 2ls6420435ybh.3.gmail; Tue, 25 May
 2021 13:33:20 -0700 (PDT)
X-Received: by 2002:a25:1103:: with SMTP id 3mr45788149ybr.406.1621974800719;
        Tue, 25 May 2021 13:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621974800; cv=none;
        d=google.com; s=arc-20160816;
        b=QqtADSQ8wVtSHA3vkmNqdRa6rZ9hsyjpQlJ/ivb1j69Zoyg7JnYVC5J0Neq+EZ1GGw
         rNO0bxyXf3o3YNqf8DeQMGR+d6BZc6i940JzdVFi0LrSxzO/968HJlz+ln/GcA/4Wzjt
         lKH9n3nD0aKOiU0U+n+yZCZ339xE41C+N8Zutb/BIJqsSwEWOhHF0FYI64lOA1vQ8LDr
         mMNyZobiS7GRZ9E1Vob3H5rE8RoOuRroEswbMCKkhUuM2iZZasj+BggEZECzy/Zxqtf3
         ibdA9M5vgQW6xSIdbferOH62oZOt33HUvXAp1olFJK9j8vHqu/WnNgEoD3um2Q4TtKrc
         d/Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KOeO+6nuknyeJ2HhH+Yp/Jtu6IHeWxm1QSBaTbCP4J0=;
        b=EoU9/Fz6UN+gysI+gMrmQ09+bEqgHf6tpP4CH0bYwtYMaAzZcMo57v2oGnifJ7EG8j
         1x6/Zdfl8/HPXpJn/g6aE4EmUlxAZ/deu/WbtQ/8wRp/Xy7ZKGd5M715v5NnA6SB9ZHb
         pqk9OBDd5jv8pJpu/zUKPQQMd/A2oxb5Z2BHJWTrkmLIgukO8nr5Ag7UyLCAZFurTqVt
         zt6DJWqNh7JwG9gy7fgbwKT+G4x4VOXmsSFKQPyskJghZCf7r+xSOxBXq+tcqtG7s+iR
         0EphFMM6sYl4f0ziegQCHuoZtEiLOhxeQk9FCF3dFtFGeDxfc4WVRmYsCXLKKrM3xeF8
         qelw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaVNsC4e;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id z5si1799430ybo.3.2021.05.25.13.33.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 13:33:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id 124so19496591qkh.10
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 13:33:20 -0700 (PDT)
X-Received: by 2002:a05:620a:c9a:: with SMTP id q26mr36241166qki.371.1621974800349;
        Tue, 25 May 2021 13:33:20 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id g4sm159312qtg.86.2021.05.25.13.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 13:33:19 -0700 (PDT)
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
Subject: [PATCH v2 2/2] net: phy: abort loading yt8511 driver in unsupported modes
Date: Tue, 25 May 2021 16:33:14 -0400
Message-Id: <20210525203314.14681-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210525203314.14681-1-pgwipeout@gmail.com>
References: <20210525203314.14681-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uaVNsC4e;       spf=pass
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

Fixes: b1b41c047f73 ("net: phy: add driver for Motorcomm yt8511 phy")
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525203314.14681-3-pgwipeout%40gmail.com.
