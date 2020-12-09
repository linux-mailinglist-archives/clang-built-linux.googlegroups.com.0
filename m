Return-Path: <clang-built-linux+bncBAABBR4WYP7AKGQE2BZRYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C4E2D4298
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:07 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id e16sf1105811lfd.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519047; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUpctW25PYjrLa0TFGugL/JDM3/Ktbbn2fuHIsLy1e562FgopxITarpVUeCmZ7dNOo
         lEL49VHq786sd3fi2IwrtEakQlb+CkqLE8prf6UJdeCTxnG3/46N2e91vLhnnC5bUp0i
         Ex8JYGWyWBUmPQtrb0Nwi1LNyEHzAjbuGT81gVgIzJssgdnSHKkP8QXITlt2pQiwjenP
         /pwizLnMUEcRY6dLeedxsdniTZcGUevG5AR5Rf2SYX8lIsk57T2jhfAb2uGlwbsv33oU
         i3ShOlMbe4qNXi2mFfxnu6UYnts/NLXwfN7POZjcfUKY4HWDklpjf8ZRbfa8Pyy0p5SI
         B+/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=UvyqheACNSKR4P9mRL3VP1m9KnZMhlpmecR0FGP6VRg=;
        b=IyqDzAyV0hrBipFgwD/CoV6F2TqBg1bcnSTrGfDz8ghm7g9Jpnc5f+wVtrO9oCJQaK
         RInukiIf0/2XCc2II14zKmt9Q/thT1GZ9GmWLd5jU4114DGH4rQnhHoBzqbpr5butNPF
         9EFFfqUIyx3dNsmTVciUe0o2tDhTOLp7Nf2Rd7lxJPUgCz4/KicnRu4u36u44ujj4mju
         9m47SRuCWantcM/AttcxedDD3GG1A748whAsrtzAVBgyHOMCHgzhRNz5as10hkABKRIp
         CvnVzmV7cEBdoX4SqvEXAS5V68uY57Tp5djhxuJec0lhiLfopHMHqX+wHgD8wy4VRBlg
         GY2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=ycA9alnZ;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UvyqheACNSKR4P9mRL3VP1m9KnZMhlpmecR0FGP6VRg=;
        b=nhfhJHEXfDCYXuWRolgM5jFUU8OtymJnv0TrxRckqqFvbFo3oOH/9AMNRI0OUzfRzH
         oNtb+3n582BBixMTCZdxfNj5vPl4+01PggMXAqaZd3cPFkaNRu4p9s9OQT2RrgxNHr2v
         om1L/h08UuhxLTB3/9+hdWYN4hXcVRT1TN4NEM2a/6a1HSzN/2BwRibSVuBjhs2yBIdi
         SduHGs0E/oh6YlnyD/b26guENd6Fw8S5khAaELw6uI7XyWFvg8eVBCSBTOF16l9HDibG
         dLFi0xbH0riYcu8bvDS3/34jIQ1twrIzzkTEhGmSaHHmIZI/Qv+YlNd5fEpv/VhayK5T
         3crA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvyqheACNSKR4P9mRL3VP1m9KnZMhlpmecR0FGP6VRg=;
        b=DJKx5ONtdOqjuvSTwMXZgp/ifrK3AdoZv+mcRvsGurgXV20lvNkNd4bl2vzy/K1A05
         9AVxjc4CarKCQZi3U6OPmFWMnAzzSRTY+YFMV2kcMnVrpikYld4WXGnh6YstahLSivtN
         3Wa4giySJQk6Wk/NsihM/Qs4CshkHApdZNqi6R2Ztr5KUWhwPHahK9mve3oOT4SsLqnM
         M+fUr+JTW0Ls0jTU0JVZaPIud/7jL2o/xFsILV1gHZhfdKkpxMNl7OPHXahKIis7Beh4
         /WRaLiE8tnwbw5mCS9PQ+WG+enKXED/D+3d/Jo9wm7IbNyA76GSGhWxXrnDPm+gvZgJl
         +ETw==
X-Gm-Message-State: AOAM532kcfVp1VUyJkOuJ+Tz+tGUwGl9d2pWvvTwM24VMxDzxbMtn/Od
	SovfECUxJWc96S91BBo7EJc=
X-Google-Smtp-Source: ABdhPJyP1/18zbO8YAwSI2oOJU9P/9s7p1bWDMUS0CPxb3s2vZVvuhlr460wwxh2WfJRMtOCFlfeZg==
X-Received: by 2002:a05:651c:316:: with SMTP id a22mr1041304ljp.473.1607519047243;
        Wed, 09 Dec 2020 05:04:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2ac6:: with SMTP id q189ls309609ljq.9.gmail; Wed, 09 Dec
 2020 05:04:06 -0800 (PST)
X-Received: by 2002:a05:651c:211a:: with SMTP id a26mr1055377ljq.308.1607519046384;
        Wed, 09 Dec 2020 05:04:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519046; cv=none;
        d=google.com; s=arc-20160816;
        b=j1UpU2Hd8+ViPAcS3uFFMMG5oCzmuvwWW1SKfvUQwbP0NA72j1fnTkTCGlKBSrPhfA
         rFTlpT1bUXjr5ioIOqbBBhPDMNTR07qscVwDepFjcluNkDSRUxiEEU+rL3yGEOrx3rIF
         75NeeC8Qtv2d9zAc07djV3Cainmm5JJdRWyj8H2V5/XIx9QtuWW0A5BQb2mGSgNMGMzs
         pl1O5rwW1olX5ij+MCp3GGm64a6G8lglsBXkN4WqI0xo4p2S+BtLZocsgLLgVlrIAkeX
         EkArr5/YTcoUdQQpJMP2fdS5WdmZlcmMj0nWyOBPyZHc2nlqT80B1YUkT+LJbhoQeYxU
         PLUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=5Nf2H9raroQbYdepeOas7CRhLjNkanscDHPu7W4H45M=;
        b=XPyrdXG5pTDEXsJSfb75d+/entum7TbaLVsPkpM74OpGIzlAlvrmt4YpK1AoRZIJQq
         ODY11+t7SeS01s3yoUYbjyclYTP3Nqw4DtqqHCqoXZlMrK34IybwlFyBztONTWd4cEpk
         tQyqniyrFKwW2FSUHWthXr2kJ8bWJO80sElFyVhys1NinnGs8GCA7sVglpGMY60vjerL
         b/PVD0OIkUt+eYqV/lOyTtt3+AanGiydVyYWOvhti8V/iE0gxTxG2BVaT96gAnQCGS4E
         fLwjMaRycQTIUcgsb7Uihgmb6PZsa0XwlJw1xBid6zOciVSfYMJ2ie5VGGh9Hw2aAPBw
         1Xzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=ycA9alnZ;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q28si61973lfb.10.2020.12.09.05.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:06 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: wrEO6W3284UM+3qUBQUJu8lgFzEFqpdEi6XJW5zW+8Hy9woIIOshmViNgm4tRckn/xbvZXLI8D
 69c+yxh26awkO1YCIcXzdZggMtRita38Ym0b1vxiEA1gAxMOf/eOrAJaotNOdjk2BBOevQTOhN
 jhXlqTrEueF7jHKhIKECE8B4MwMP3ufM8OxrJ86ZMXt0VOUUZk1XTrxanlmV/jbgTngIAO2/Mj
 5bKAGLEyxtCQn3BhtA9daE1r7ywuCv6G3qMypolm2ZE/+1NDVQ7lcwGYfD6dlyeUMz8r2iHBGh
 T4c=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="96475098"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:03 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:03:52 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:03:47 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 1/8] net: macb: add userio bits as platform configuration
Date: Wed, 9 Dec 2020 15:03:32 +0200
Message-ID: <1607519019-19103-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=ycA9alnZ;       spf=fail
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

This is necessary for SAMA7G5 as it uses different values for
PHY interface and also introduces hdfctlen bit.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/cadence/macb.h      | 10 ++++++++++
 drivers/net/ethernet/cadence/macb_main.c | 28 ++++++++++++++++++++++++----
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
index 1f5da4e4f4b2..7daabffe4318 100644
--- a/drivers/net/ethernet/cadence/macb.h
+++ b/drivers/net/ethernet/cadence/macb.h
@@ -1147,6 +1147,14 @@ struct macb_pm_data {
 	u32 usrio;
 };
 
+struct macb_usrio_config {
+	u32 mii;
+	u32 rmii;
+	u32 rgmii;
+	u32 refclk;
+	u32 hdfctlen;
+};
+
 struct macb_config {
 	u32			caps;
 	unsigned int		dma_burst_length;
@@ -1155,6 +1163,7 @@ struct macb_config {
 			    struct clk **rx_clk, struct clk **tsu_clk);
 	int	(*init)(struct platform_device *pdev);
 	int	jumbo_max_len;
+	const struct macb_usrio_config *usrio;
 };
 
 struct tsu_incr {
@@ -1288,6 +1297,7 @@ struct macb {
 	u32	rx_intr_mask;
 
 	struct macb_pm_data pm_data;
+	const struct macb_usrio_config *usrio;
 };
 
 #ifdef CONFIG_MACB_USE_HWSTAMP
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 7b1d195787dc..6d46153a7c4b 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -3913,15 +3913,15 @@ static int macb_init(struct platform_device *pdev)
 	if (!(bp->caps & MACB_CAPS_USRIO_DISABLED)) {
 		val = 0;
 		if (phy_interface_mode_is_rgmii(bp->phy_interface))
-			val = GEM_BIT(RGMII);
+			val = bp->usrio->rgmii;
 		else if (bp->phy_interface == PHY_INTERFACE_MODE_RMII &&
 			 (bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
-			val = MACB_BIT(RMII);
+			val = bp->usrio->rmii;
 		else if (!(bp->caps & MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII))
-			val = MACB_BIT(MII);
+			val = bp->usrio->mii;
 
 		if (bp->caps & MACB_CAPS_USRIO_HAS_CLKEN)
-			val |= MACB_BIT(CLKEN);
+			val |= bp->usrio->refclk;
 
 		macb_or_gem_writel(bp, USRIO, val);
 	}
@@ -4439,6 +4439,13 @@ static int fu540_c000_init(struct platform_device *pdev)
 	return macb_init(pdev);
 }
 
+static const struct macb_usrio_config macb_default_usrio = {
+	.mii = MACB_BIT(MII),
+	.rmii = MACB_BIT(RMII),
+	.rgmii = GEM_BIT(RGMII),
+	.refclk = MACB_BIT(CLKEN),
+};
+
 static const struct macb_config fu540_c000_config = {
 	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
 		MACB_CAPS_GEM_HAS_PTP,
@@ -4446,12 +4453,14 @@ static const struct macb_config fu540_c000_config = {
 	.clk_init = fu540_c000_clk_init,
 	.init = fu540_c000_init,
 	.jumbo_max_len = 10240,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config at91sam9260_config = {
 	.caps = MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config sama5d3macb_config = {
@@ -4459,6 +4468,7 @@ static const struct macb_config sama5d3macb_config = {
 	      | MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config pc302gem_config = {
@@ -4466,6 +4476,7 @@ static const struct macb_config pc302gem_config = {
 	.dma_burst_length = 16,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config sama5d2_config = {
@@ -4473,6 +4484,7 @@ static const struct macb_config sama5d2_config = {
 	.dma_burst_length = 16,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config sama5d3_config = {
@@ -4482,6 +4494,7 @@ static const struct macb_config sama5d3_config = {
 	.clk_init = macb_clk_init,
 	.init = macb_init,
 	.jumbo_max_len = 10240,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config sama5d4_config = {
@@ -4489,18 +4502,21 @@ static const struct macb_config sama5d4_config = {
 	.dma_burst_length = 4,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config emac_config = {
 	.caps = MACB_CAPS_NEEDS_RSTONUBR | MACB_CAPS_MACB_IS_EMAC,
 	.clk_init = at91ether_clk_init,
 	.init = at91ether_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config np4_config = {
 	.caps = MACB_CAPS_USRIO_DISABLED,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config zynqmp_config = {
@@ -4511,6 +4527,7 @@ static const struct macb_config zynqmp_config = {
 	.clk_init = macb_clk_init,
 	.init = macb_init,
 	.jumbo_max_len = 10240,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct macb_config zynq_config = {
@@ -4519,6 +4536,7 @@ static const struct macb_config zynq_config = {
 	.dma_burst_length = 16,
 	.clk_init = macb_clk_init,
 	.init = macb_init,
+	.usrio = &macb_default_usrio,
 };
 
 static const struct of_device_id macb_dt_ids[] = {
@@ -4640,6 +4658,8 @@ static int macb_probe(struct platform_device *pdev)
 		bp->wol |= MACB_WOL_HAS_MAGIC_PACKET;
 	device_set_wakeup_capable(&pdev->dev, bp->wol & MACB_WOL_HAS_MAGIC_PACKET);
 
+	bp->usrio = macb_config->usrio;
+
 	spin_lock_init(&bp->lock);
 
 	/* setup capabilities */
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-2-git-send-email-claudiu.beznea%40microchip.com.
