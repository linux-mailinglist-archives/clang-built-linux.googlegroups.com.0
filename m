Return-Path: <clang-built-linux+bncBAABBU4WYP7AKGQESBQ366I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF112D4299
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:19 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id k128sf536461wme.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519059; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkMmFF0AqeZnn1g7www8ToyPSMayGZD77y9rmeTEXwpMyGC1sWaXyL4fDhgT5Ii90u
         Hsw3dOxBXLnIjEp65lMyDedDsI6HS3XkjUwYFqnRAbnd5pghijUwebupSA1TEOYddlgx
         zVuNF4eMfSsUBlIWiv9OSKx+vYpKqeqnTQM0wkm+eCjI4nfA54MFtpY+OD9I1oknqP70
         eU0VnqC/XWnT0MFrlL2oRAP9EpOCzvkwo1CrB8uIaeFzEEmi+6hCQYVfdy92NcoMHhMO
         TH6oABQSi/dgZulHRY7ahGlDgMy6PoDn4GpLsRWu9MZ+cxF/jiC1kS/Ri/Mq14YbrV9C
         e+cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=5Rc4bfNGVHVlbvsG78nV6yqCqSdOzudI5Hvt2NVmxT4=;
        b=hTbIucndHMYl282T6TAfy2O96BTjM61mejN7QylzhTwLefMXTQ3G7tPJeQCqBps4rh
         q79GvdeDXLQEWWA8YvWBDdjmz1OcFb1ULfy03GsI3yOgAgIedm3zsojsUuQJWbSdfxdE
         Fki3ceM7HyPTFg5wvKuzEwHVvyzn4nEO/1ZAo4bZ9fnwiOkJWhahhQJR3EndqSzJffzj
         Q0kU9lxi+kAPJBKFklyok6NMvcAe3cppbKOdC+jK8Z2B6n42cM/Y+hV366wuz6BbiHMi
         N2b860VzaJvprWWVLb/PcKVmFMAth5Dr82eVENm4S1lkBmHuyQLCKp9aKmeoOKt1gv80
         Ia+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=o1xeKlX3;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5Rc4bfNGVHVlbvsG78nV6yqCqSdOzudI5Hvt2NVmxT4=;
        b=ixZhxbeZpSrulNRpdKBsBiLBJjErL3ByYL/EDTcOegEAlU74O8tabMS4b11KNywGtW
         P386oX71ybCflbXewOTcudlqJiJ0pAq0HFuf3avSrb4cq7hecSW93MJsLbE4L9yeUZxq
         anu+xM+yhEP+M3hZY6F+D6cNIZJKcRB0GL20qYp0iJRIK501zBNc0vJgkFQSpr0iKtsy
         W8bW8bsChXk/kWxQIxl5JDgxIfYWlILib6o9QDUWIcdlI1MbROuB8+3UJ1fsT0WR2MvJ
         lIvw5ss7ho/X09Nn8sZsVXM1/olG0QBcKmZ7GzHmdmxULyEtJvqqlq0Rcwj/ZQvCZw+E
         AC4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Rc4bfNGVHVlbvsG78nV6yqCqSdOzudI5Hvt2NVmxT4=;
        b=Ivj7so6bxz26EdNtgl2IUPvtUDKhV2zyfDSlMeszyerTPZmwdUmvnG12U/ccxxSoUj
         FVfht34RkpJNeJLalQHM62N5fIEM96ppCoYVe5xROS4eDxDvriEXbq2Nk7bxrevBW5TP
         WOMcOdM46ICSxWOYHfWy/wzPjqBRiAC1hVv1ofKeC0zHRq212hwfFcLV9Vs5Djoy7rSU
         2ykZBbb2LD6vIw45Fh96i5Hzs8b3WHFC0bTK4sa6c1QP34Aw8ocJEeCzskfv/avNdGR2
         sr4UquCuGFerrtmX5YhhvdMRe7NtdzWqpxhQXlyYgfRfRmwaRbrs8IFeynofM1x5JYGy
         pJBg==
X-Gm-Message-State: AOAM5314QiuftUNv9V054X8sxFzP2T7CpwA/l/E4Kj7j3dL1cYoMjaUS
	PuDdfP1oqbMdz0ii3wWw2Q0=
X-Google-Smtp-Source: ABdhPJy0uq1BiMkTjLFny4XsqDUG2wwnsgxw4j2mzdFoUioZxJ8OcytP5ztoVlVIKOutyGtOYUIsFw==
X-Received: by 2002:adf:aa83:: with SMTP id h3mr2703368wrc.108.1607519059541;
        Wed, 09 Dec 2020 05:04:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1fc7:: with SMTP id f190ls1000994wmf.1.gmail; Wed, 09
 Dec 2020 05:04:18 -0800 (PST)
X-Received: by 2002:a1c:8016:: with SMTP id b22mr2675491wmd.135.1607519058918;
        Wed, 09 Dec 2020 05:04:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519058; cv=none;
        d=google.com; s=arc-20160816;
        b=vcrl/O7xy+wTl4Get8vJ+DxiBPkRU6SxUFIP4HCKiNGKS0Z+wvTmcRzJ1/FCF/oHyH
         XPF28QO3sFMej6HVFLxZeGqepVUu8AZkcF5ORWsV3VFidCX3SLy1ybSLZii45rsU3HES
         dmchFtVueTJxgkHvgCcKOgnkNSsiCRR6ac/oulhtP1W76QAby1Twtp5q84r6f+ZGrWsd
         GWabp7hBaRmNwtsijhUnu9en66AnqW53zg0vGLmq8Yni4dwvuKvUX7xesM6gkDYmjUtE
         lAv2gHOuF2NzC0LNeUhbwDyUhFF5FbEoHMfHe2KPRvszSqRuW+qeG0eBq9OBLKmwuwuH
         j44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=5pnMCaQ10VW4FHqLJb61AUvS50YYipzii0yZZ4qBR6o=;
        b=Shnge3wTv8tJhpFlZobTYipRCR/0ElJWcurEqjqOMf511Chq0/ycho/SzcXm1puFPg
         rJBXTdCyYl/M9gKh+A7YcLCuvWrVwuMC5y5PybSqcR6x4jsmoPV52ufRwMbE8MKJskB0
         l06OurJQ2P1iEQAMu+yuyQPpFz/oV75MInBM8WEacAsPA48iObj26z6PUjARfUn3aOjR
         pi8fiHa2qL0EWDi4MBHGpe2SozXQ0XB3melExXr57Q3QLQoJV+MzJCCsYp03xaLxprTs
         STi3K5voXmeiuXFuTi5O1Ge+K+btqa8uqO9TKlpibGmynShru4FMv7rYS5FtBQbzegxr
         CnSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=o1xeKlX3;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id h18si71935wmb.1.2020.12.09.05.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:18 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: 3s+U0c5+Up6XvoxY8cbrMUJYa30W3vZ9MKVXokWp/6GxZEZP7LPDXynQOZB2916ox4j+dYajQa
 vWpxHlNmiwTGVC1CG395t7HUSXH9Q3/K85BUKI4bsVQbLjd0fVWJoJ5tU48gLCTSQ5AmrX+RvU
 FlvnO2OQkLhcxZI8rXsmKuusHXC9yLd5Q4AZJKuh/Ef8LMRrBlJRDGp602GoNUEjDj5W8QWz6I
 yjXRgYx7zcGl2hPJAt9mA1P3K7vm9D7XGfBST1QZZ8mQtKHlZPl5UY/hrJ1hmQa35XrF6WbP1g
 pNA=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="96475108"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:03:58 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:03:53 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 2/8] net: macb: add capability to not set the clock rate
Date: Wed, 9 Dec 2020 15:03:33 +0200
Message-ID: <1607519019-19103-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=o1xeKlX3;       spf=fail
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

SAMA7G5's ethernet IPs TX clock could be provided by its generic clock or
by the external clock provided by the PHY. The internal IP logic divides
properly this clock depending on the link speed. The patch adds a new
capability so that macb_set_tx_clock() to not be called for IPs having
this capability (the clock rate, in case of generic clock, is set at the
boot time via device tree and the driver only enables it).

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/cadence/macb.h      |  1 +
 drivers/net/ethernet/cadence/macb_main.c | 18 +++++++++---------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
index 7daabffe4318..769694c7f86c 100644
--- a/drivers/net/ethernet/cadence/macb.h
+++ b/drivers/net/ethernet/cadence/macb.h
@@ -699,6 +699,7 @@
 #define MACB_CAPS_GEM_HAS_PTP			0x00000040
 #define MACB_CAPS_BD_RD_PREFETCH		0x00000080
 #define MACB_CAPS_NEEDS_RSTONUBR		0x00000100
+#define MACB_CAPS_CLK_HW_CHG			0x04000000
 #define MACB_CAPS_MACB_IS_EMAC			0x08000000
 #define MACB_CAPS_FIFO_MODE			0x10000000
 #define MACB_CAPS_GIGABIT_MODE_AVAILABLE	0x20000000
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 6d46153a7c4b..b23e986ac6dc 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -460,15 +460,14 @@ static void macb_init_buffers(struct macb *bp)
 
 /**
  * macb_set_tx_clk() - Set a clock to a new frequency
- * @clk:	Pointer to the clock to change
+ * @bp:		pointer to struct macb
  * @speed:	New frequency in Hz
- * @dev:	Pointer to the struct net_device
  */
-static void macb_set_tx_clk(struct clk *clk, int speed, struct net_device *dev)
+static void macb_set_tx_clk(struct macb *bp, int speed)
 {
 	long ferr, rate, rate_rounded;
 
-	if (!clk)
+	if (!bp->tx_clk || !(bp->caps & MACB_CAPS_CLK_HW_CHG))
 		return;
 
 	switch (speed) {
@@ -485,7 +484,7 @@ static void macb_set_tx_clk(struct clk *clk, int speed, struct net_device *dev)
 		return;
 	}
 
-	rate_rounded = clk_round_rate(clk, rate);
+	rate_rounded = clk_round_rate(bp->tx_clk, rate);
 	if (rate_rounded < 0)
 		return;
 
@@ -495,11 +494,12 @@ static void macb_set_tx_clk(struct clk *clk, int speed, struct net_device *dev)
 	ferr = abs(rate_rounded - rate);
 	ferr = DIV_ROUND_UP(ferr, rate / 100000);
 	if (ferr > 5)
-		netdev_warn(dev, "unable to generate target frequency: %ld Hz\n",
+		netdev_warn(bp->dev,
+			    "unable to generate target frequency: %ld Hz\n",
 			    rate);
 
-	if (clk_set_rate(clk, rate_rounded))
-		netdev_err(dev, "adjusting tx_clk failed.\n");
+	if (clk_set_rate(bp->tx_clk, rate_rounded))
+		netdev_err(bp->dev, "adjusting tx_clk failed.\n");
 }
 
 static void macb_validate(struct phylink_config *config,
@@ -751,7 +751,7 @@ static void macb_mac_link_up(struct phylink_config *config,
 		if (rx_pause)
 			ctrl |= MACB_BIT(PAE);
 
-		macb_set_tx_clk(bp->tx_clk, speed, ndev);
+		macb_set_tx_clk(bp, speed);
 
 		/* Initialize rings & buffers as clearing MACB_BIT(TE) in link down
 		 * cleared the pipeline and control registers.
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-3-git-send-email-claudiu.beznea%40microchip.com.
