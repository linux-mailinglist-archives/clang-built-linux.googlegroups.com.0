Return-Path: <clang-built-linux+bncBCQ45GVI5EFBB3G2WOCQMGQETSGDYEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 914E03900FB
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 14:28:29 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id a11-20020a67d30b0000b02902363051a2cbsf12430194vsj.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 05:28:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621945708; cv=pass;
        d=google.com; s=arc-20160816;
        b=kftUj6MMC/B3RkUXTOSdQctKlG7Qd2NFnk6V2LhKgD4ILodtNz2XtkOyai/PqklMLn
         lmxXcp8hmhRfT5m+Y5LbdBp3BXrMqeygLAnKHeSzzANovYSaCdJuABBOgvqQUCbdcfSt
         3WAzvDEFUWJHMXnPeBOvrSS3u89AaUL+FQe+IkqfGx1IWGznWPQcqM36f6lVK0kbSAc8
         BBKZBU5echVqnn5yDOqij5evyE5+e/R47LXxk99xru25u6VV1ctxti+p+08wRHNk4Iyg
         MXMTlKFuJ9mG224vcGlWyoTjQrZCTfjWK7PoxzrX8VwLgr9G83o3+8BUBokCBvjcFzDv
         jazw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=xKlT0ai5EGV5jIVliwqad+JuSHACqWet6K+9bq5w/EU=;
        b=oc2Bn3uzM7+NihsNWPtpGWl7FcgMpIv52Ns0jYDstau6FXOIswbx2+/uMpGQMqFpNQ
         g3DwAksSBK+RrlIzyesil5N9wHqm09nJfjTwstqktSy043+7g1s5ewa0/Vxu7klisdUc
         HfSeE7qaspT36lONg2xJTLKZr64Wt9bSxGlzOSx/c96OXOJw3HrgW0Q+y2zahKfajRTx
         fPJfhYgE2yw7tTaVF+1MwkivXCY5r5teQ6z0gm5kZvIQtP7U+E4b0LUPH/07Swff4SHH
         eemMityRl+B5PvPuayMnEhB2tOUHegSPbTxWp0IstxjCOZNXKq5S76dPChL6JLck2Ph3
         eyXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyiArXP9;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKlT0ai5EGV5jIVliwqad+JuSHACqWet6K+9bq5w/EU=;
        b=Oa9iCfAep1CrFLgHFyfyfLNThmb0IPbBH9yif6Ln+egwlPyfYtr4LK+5qbak2HW4n5
         TBvGQzSmJLAzQkmwZ7KanOGGdhzsNZ/SRbuLjeaYB38eR/DJJwn3WzsrnZCzlDgPknOm
         MCbkQlKGJROKva6ZFpacN269VfE4oHjTmwxUFnJ1wqFjmi+o3sFHnUFbnLZSwSxOlgmr
         OlJDNmdFEJ2oddG1bAKPRNtC8aq8f6T9zuKlZlPnrwosusqMf4HfMcSqSiu1Mx/Y+yqy
         2dCN3SfQVr8NYKIH/xUtAIzmx3sIQynrRTTYQMafUsO+EZyqKTZ59QmkZynyXGJSn57U
         D0Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKlT0ai5EGV5jIVliwqad+JuSHACqWet6K+9bq5w/EU=;
        b=ZtM/0qo59/rbS8SJIvXSsZ7WzyRe1ZCDz31IvvrUlZoXckADZ/I9961sfBtKrg2wmZ
         izObj/SWA7lZmFE8eDOu+bq3qdfjXyNJeFqKAZkB/wthzidi3ITqCM41LnoKTz0u7L9a
         0am67I/3bshwVg5lQefeQYyokikvQD4yi+qxqGmZIjopTpRuBLoJ9Be/7MObdy99cSYr
         Vg7hiYrsBu3OqFWGQxpmssVACQGKESrn4e46Ivf//M+kBKY+8yv7UfDN6yKAJIlUwFY/
         e5aJnpQtMay7SCgp1KaOwCfpE0ZNj7daC4SrOfUaHKnjHlZkH2+B2znERW1kP5v6YMry
         /5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xKlT0ai5EGV5jIVliwqad+JuSHACqWet6K+9bq5w/EU=;
        b=KrBBeQrAECNoBIi79iFcaIX2ir+wdzxFKKaV+6n0KO4G8nCWml8/7axGeMDvSts2fV
         18n+4snMUYrpTjsWSNlY9iIVH7l/A0CAhxDmnILTiUTvET+iQXnvsXrNW+/LYS8Kmb5P
         SyQA+CfZHme6KqNalia8hMzGL8Ytm9k+uLfrTEawodTFCynCyrMuyuTHiKv7AHqYFh3G
         htMN6kibUfCn+FRhXlm3H+tdrCh9vAuoWSiOl9+sZPXmZMsejiPTrLYP4kwBVdkqgA2F
         oDVUeZm8adbovNtV0jGGQpoqq8XCmVkDoJwvjbKJYSapqybS1xJMjeb4U2tmVHwhuKhF
         dxMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IbWIt2mmKXmqz3DSWaYc52aZaDq28ktF20vOSVKUGtsPSA5pE
	pTkBiVFtQzwF2ttD7UWmFco=
X-Google-Smtp-Source: ABdhPJxusFVcvCXvMyw5F5aD0rYSETBH3k7Pd/FYLdkCREDTMBYsO0TMRN+nC8u9TDF86ikIo9y81Q==
X-Received: by 2002:a1f:5504:: with SMTP id j4mr24065463vkb.7.1621945708673;
        Tue, 25 May 2021 05:28:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3a83:: with SMTP id h125ls1278573vka.3.gmail; Tue, 25
 May 2021 05:28:28 -0700 (PDT)
X-Received: by 2002:a1f:194a:: with SMTP id 71mr25366667vkz.18.1621945708171;
        Tue, 25 May 2021 05:28:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621945708; cv=none;
        d=google.com; s=arc-20160816;
        b=gkksUvol2057b1DmbGnWu202Bde/pkLYVuPz4K/WZiIBokEMqiKcMTVsAzXiZwgbwK
         nLsK627/GFRy/tYTyoHb0xyMwSuDj94sKtYs1JGbesfxHE6+e+1aSO1tCkHfnSYRotRI
         xGnxVZDAA2cwYDAxQ89M+Cct3fLOcIaxUM3Ok0sQvi869bZrAaq0EXEcjxplMHCD+mpl
         LeFTLiPb7rX7aNMV3UhpzTHU2zhoUurUS6ce75ye+m+u72+mTKRECSCP/iYrbvXDouiR
         DhKYry83Cs+yOkgGfINQUBYr00WYWDb/ypdzi/SVGYe89M6PLQp7Seul3XMZ/c7gUbS6
         S2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d0mlU653ZHAi1z8Z/h8nQvEb7mYuTzzrw09E6KPEru8=;
        b=G4iKPvHXpg+99bv23+zMeqcy+Z1KuG5T3Pesdrzc6Kodi+wMxBvutIivUDIN1lqOeI
         +5q+XEJeKrTDgnhgqgKtZeyiqjkqb5MADJeX+3FpTmBxm5TSXF9Mdq6S+WhFRXbCSJGm
         TOdneHjHhMVC06y3GF8PyWEgVtzHp436OLc9alWuLMJhXNVivlIC8QjXt8VSp6geTHjp
         env+SxzFUa3RcTWnCl8ZUecT+1YbnoWcgWCy3wyjZMNNSeC2Xo8SV56AcILVyWZzgR8K
         cVVbAAn036s3hTjkKSF7WszH6B+LGRE0ESbCrl/Ji/P6qCSteoJMJrrSuKUYcfkD8UzU
         E4OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyiArXP9;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id a1si2043060uaq.0.2021.05.25.05.28.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 05:28:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Received: by mail-qt1-x836.google.com with SMTP id c15so1084148qte.6
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 05:28:28 -0700 (PDT)
X-Received: by 2002:ac8:604:: with SMTP id d4mr30870306qth.304.1621945707833;
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id t6sm13292572qkh.117.2021.05.25.05.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
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
Subject: [PATCH 2/2] net: phy: abort loading yt8511 driver in unsupported modes
Date: Tue, 25 May 2021 08:26:15 -0400
Message-Id: <20210525122615.3972574-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210525122615.3972574-1-pgwipeout@gmail.com>
References: <20210525122615.3972574-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fyiArXP9;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::836
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
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/net/phy/motorcomm.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 5795f446c528..53178e978da7 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -53,15 +53,10 @@ static int yt8511_config_init(struct phy_device *phydev)
 	unsigned int ge, fe;
 	int oldpage, ret = 0;
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525122615.3972574-3-pgwipeout%40gmail.com.
