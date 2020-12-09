Return-Path: <clang-built-linux+bncBAABBVEWYP7AKGQEKX2ZSHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EF62D429A
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:21 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id i4sf626246wrm.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519061; cv=pass;
        d=google.com; s=arc-20160816;
        b=OODDGGFbK7uDp5kjHU33MdMjbs4D7FUmvK0semCWUk/c6roUkFfazdu2xc/DWMRdWV
         4GbSmBKg2EH8Cf7XUBkupmX12gYGgjbP5na3P4sL9hq/gqOFcMgx1FiIZCjpyeD/BHor
         qAoRpoFbKb5IWPSQtWFj3z17BGACihsGxbwUJWTTeNDIC1267ityrP8y148CYPiESphb
         pAd8XzO2LXiNnlE6lV8fEYlMzidC6JKLe8ApYDwhflf9YB3sczvnaFkehItYKp6lwtPU
         xsWWdonYu8AwhhpDqn976gkNpEVtKNLafygt7RzDJmlpo/FNG9vjC9OwnbRsMh6ycPsI
         CPtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=S/NxKqFikYQ4nJuRHjPxRdwObfqe2l1i9MY+Dgx4wNw=;
        b=qFW4khRqNeOrBIDD743GGRdLAbptV12oUAoF3KSuZbbYcbT5YtKesKo8d+I0AcO3Z4
         cURBZYJ2i3DyXlhuIuX1Nn0buWhxoV8sRAji3Q/mYfNNzWMt5dWpelSscYFqD7T8oLxW
         Lvszh1OHqTCqLhVoI3ED3FpgqhFRSMHK77MZBaS7S8UV9J9xqIa1l5sNCTdjmEUcPf1T
         cktA9G3oJHmpH5sClPJOjOvlld6RENWDPt1QGB/aP0xLo/5S0IsAowT5GgFfvZQtC03k
         lc2/cmT7dyu7mGWYulgOc5wmz8GcZzMU/m1ySTfpRPQLcyj26AjJFBetUPhCABeNaulW
         8fvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=WIJR7K1N;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=S/NxKqFikYQ4nJuRHjPxRdwObfqe2l1i9MY+Dgx4wNw=;
        b=tJe2lWVCond0vaBZEjAgo3DBbOK2KQhoSno24FcLe4TQso4GDRl5BRMHMUlwqZi/R0
         xd+hAdiPA9KeX6ZoEwbahLf3bcjnVjgo20okIeu4mvzkTcSGUZxo78KX1tnRXGd/hpw6
         9yq13Tnov7BrCbgPBioHZ9eSNUt3wVxcmElDJnTPUPZ9OZbXJ61V6Iwit5CgeKScYt8U
         bfsgQA31kqFQjyz/ZH4Lg3ol2Q0WQMdpAw2Gb5IRT8eYcCgaLKhiySc+VAB/0aIhkbOc
         72WJan0IHq/7DkhMoirR7zk1q6bphNaUoWTYi7RTlwweHQ9v02fPxPgcIpwqJw2mTHAx
         V4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/NxKqFikYQ4nJuRHjPxRdwObfqe2l1i9MY+Dgx4wNw=;
        b=KOjCEGl1MbfRmVLBanXlseJ5/ULJVccQyCMSb2l5J+/q2Hs/cO62fYEToLoH2uiXgs
         /pEq0TDUmWeVLLJp64o93/xi0H76VBM2GQWkgqlDr+TTt+rTmv4+DZVrh3jv7vQEcwpe
         GyMVkhcBTH7oC93yFQQQcgJKkMpS6914lPqr8jKcBJC58sNu7C/77glIc/NkGFF5RSdr
         l7bUFH2wCIPWp7G3674EA7pqV4jH/zfsCoEDhzCTfjrLYu7L5W6PbsNBvI8b5tOJ65Zy
         Us9QlZmVCOA+tgY77UpcFCYS4N0N3mlNyDiT7NC4YIAAvTR74quIT3BwLWmmsOgmpHCH
         F71g==
X-Gm-Message-State: AOAM532ktzGSfMK0GIlOXT7EoNlyQoo5o3Haez+CQFHliRrAs8UvNB//
	Wm+4pC/li4LR+slgvaR9IV4=
X-Google-Smtp-Source: ABdhPJxdFYWStyaBeRC8zx8g0ZUtp6cvvlVpwod+rFLAmiupNwer9bM1oGJBr/cNkiBUIHI2W48MNw==
X-Received: by 2002:a1c:dc87:: with SMTP id t129mr2699329wmg.52.1607519060971;
        Wed, 09 Dec 2020 05:04:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c354:: with SMTP id l20ls1002450wmj.0.canary-gmail; Wed,
 09 Dec 2020 05:04:20 -0800 (PST)
X-Received: by 2002:a1c:5402:: with SMTP id i2mr2819169wmb.12.1607519060339;
        Wed, 09 Dec 2020 05:04:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519060; cv=none;
        d=google.com; s=arc-20160816;
        b=pNjhlJoi7mBnIkkOpg/Xqbp5zk7/byx7+7WJv4TzubwXn+Ikf2EvDLVTzMxarUaCSK
         ISkrf6DZ/McGbQbcBKJB4wGmUI/KqVmT9lSmt14zpfqwl2PzpvWLhR57wX9lnkE+sntJ
         rK92XA8GdNbw0qbC0mOiwDGzqxVuP8dEr0ttUM5u/AwllMIhDb0xFtDdJbT0ohbvNez4
         1jxaIqfX/cyNpdXTzHCVl57V7PMensp9L+dmu5GlRJAjZYAj3fsN2riIhc+mHZsicqak
         9/LMM5/9SVWzfHM3oYBL/E3GDPj23JspDCvgIe6QRA7OPrBx46FUne+jAhxGxRXkM3EA
         mzqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=aO7msjL7tXaCIU766RlM1jFVppkZjKPyi+/qvYjWHbI=;
        b=vBe/AIQh5NZbpoCqvsbo4IeEUq82eBaQRSLfru5Zzn/fKcczRriqs/Cqh927a1ReqF
         R9o9DhFN9kZ61TAZyYH/gIMVi+gqJ7Yq+roXo5xpEpJGXHl/pQ++cpZlfNKLnYZOgwxi
         5cj0dkr3aphbvd81XDsBscOlktsWxwA7q0aNUmgwW5/GPebXMEsvdwyO6zY4KzKDxFQX
         ttX2diuMb68DLh2jMqo7pnC4VO45NCCNYdJfzGfSzaaIF03bTklQy0menONNJ0F0tyRS
         KZ6tw+pEGlk35BEaGRCVGVLeZavust4yap+ThvkOmxf5h2BKPLXNaMc+HaSv+6O/k6Rd
         rWKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=WIJR7K1N;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id h18si71935wmb.1.2020.12.09.05.04.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:20 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: id3YMpwKvkEftidcEpCGiNrQnezuZwNDGcG/C76YQQXDlPzhGInltryPQ/gAj30ffNqImpqtR+
 3RyY2g78NiMjid3BmPMROrdxddgH7X9MrCNpJi6EZobSt17X/5DuRFYBpH2/XA7OxJJuRM4lHx
 Fay6Sb0nP8riyxrVMxkeGppRn94pNL5zesmXW0YhLRu17106BjjOPO8JyHDMK30I+lFGlfbr5B
 7kECiBklenDY5lcdp1UoznIKf9weso56orsW0UEAxqYXMAZ5rikIEWFasuuZFnf9yIFUjUDAv1
 vqY=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="96475122"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:04 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:03:59 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 3/8] net: macb: add function to disable all macb clocks
Date: Wed, 9 Dec 2020 15:03:34 +0200
Message-ID: <1607519019-19103-4-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=WIJR7K1N;       spf=fail
 (google.com: domain of claudiu.beznea@microchip.com does not designate
 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Claudiu Beznea <claudiu.beznea@microchip.com>
Reply-To: Claudiu Beznea <claudiu.beznea@microchip.com>
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

Add function to disable all macb clocks.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Suggested-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/cadence/macb_main.c | 38 ++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index b23e986ac6dc..81704985a79b 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -3694,6 +3694,20 @@ static void macb_probe_queues(void __iomem *mem,
 	*num_queues = hweight32(*queue_mask);
 }
 
+static void macb_clks_disable(struct clk *pclk, struct clk *hclk, struct clk *tx_clk,
+			      struct clk *rx_clk, struct clk *tsu_clk)
+{
+	struct clk_bulk_data clks[] = {
+		{ .clk = tsu_clk, },
+		{ .clk = rx_clk, },
+		{ .clk = pclk, },
+		{ .clk = hclk, },
+		{ .clk = tx_clk },
+	};
+
+	clk_bulk_disable_unprepare(ARRAY_SIZE(clks), clks);
+}
+
 static int macb_clk_init(struct platform_device *pdev, struct clk **pclk,
 			 struct clk **hclk, struct clk **tx_clk,
 			 struct clk **rx_clk, struct clk **tsu_clk)
@@ -4755,11 +4769,7 @@ static int macb_probe(struct platform_device *pdev)
 	free_netdev(dev);
 
 err_disable_clocks:
-	clk_disable_unprepare(tx_clk);
-	clk_disable_unprepare(hclk);
-	clk_disable_unprepare(pclk);
-	clk_disable_unprepare(rx_clk);
-	clk_disable_unprepare(tsu_clk);
+	macb_clks_disable(pclk, hclk, tx_clk, rx_clk, tsu_clk);
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_set_suspended(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
@@ -4784,11 +4794,8 @@ static int macb_remove(struct platform_device *pdev)
 		pm_runtime_disable(&pdev->dev);
 		pm_runtime_dont_use_autosuspend(&pdev->dev);
 		if (!pm_runtime_suspended(&pdev->dev)) {
-			clk_disable_unprepare(bp->tx_clk);
-			clk_disable_unprepare(bp->hclk);
-			clk_disable_unprepare(bp->pclk);
-			clk_disable_unprepare(bp->rx_clk);
-			clk_disable_unprepare(bp->tsu_clk);
+			macb_clks_disable(bp->pclk, bp->hclk, bp->tx_clk,
+					  bp->rx_clk, bp->tsu_clk);
 			pm_runtime_set_suspended(&pdev->dev);
 		}
 		phylink_destroy(bp->phylink);
@@ -4967,13 +4974,10 @@ static int __maybe_unused macb_runtime_suspend(struct device *dev)
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct macb *bp = netdev_priv(netdev);
 
-	if (!(device_may_wakeup(dev))) {
-		clk_disable_unprepare(bp->tx_clk);
-		clk_disable_unprepare(bp->hclk);
-		clk_disable_unprepare(bp->pclk);
-		clk_disable_unprepare(bp->rx_clk);
-	}
-	clk_disable_unprepare(bp->tsu_clk);
+	if (!(device_may_wakeup(dev)))
+		macb_clks_disable(bp->pclk, bp->hclk, bp->tx_clk, bp->rx_clk, bp->tsu_clk);
+	else
+		macb_clks_disable(NULL, NULL, NULL, NULL, bp->tsu_clk);
 
 	return 0;
 }
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-4-git-send-email-claudiu.beznea%40microchip.com.
