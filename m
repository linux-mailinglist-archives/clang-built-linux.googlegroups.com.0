Return-Path: <clang-built-linux+bncBAABBW4WYP7AKGQE4OMPU3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 357CF2D429D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:28 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id w8sf624711wrv.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519068; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpd9lhR+V+gL4tliU2xz9WOybLaIRMUujUjJws0KOEyYhxWM5/1k7l1YRjLAdWTjuS
         yxy3GxvOLZxAmQFOuRlJWrzWjTky4rDxQYrV7zzddzt3+ppe16+eDABieqAtgGKjnnIt
         UcSG/qARgpUir+a/64+QjkdBMjuvQeIX1tn6s69dPj8i68Z2XotEKa74WaGNB7KCWqpd
         5feEBXJudKK8jiV4gXFWO7YA5BnAQo4O2eufSnk4k0zow82dFiT4t1pk44lDk3QtxUAR
         aj3aCETv6D0aUHQzdcUjukLYZMy00C42SbWvukIHHnBdcWU6PQgLK8I4w9PU+tmY/bib
         n2HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=eI/SAfojTrzPFVy9KIoOIp0Q44Spf8KBqqWjESZYOGM=;
        b=JznDzNOOTMAcMV/y4MrniORcTv3WU/mNa6vwU3meJ8BX7DbZ1iA6vQHNAV0ZDRmXud
         H3YihHA4Kw+Yk3Yz1FApltR53sIh0HdnIs1O4p3pddPQvRK5wAmajkcSNHNZHx0kByVN
         qgrbNqWNUdZJt29F6u5XLbqr4lKSUuThPwNhYyc3CY7eb9mbQETbKJwworUtX0s+BPgw
         /steZ9JJNpU+4TFMlOKGR+GiJUAALz2FCK6myd9aYMEJnWRaIwqXYsSe2EUuCcVup2tM
         YIwCbWS3++BHF/HCmYY6F2E5t4Way4syOJP8u5LEHZZnPi8WBZgWlwblo4Zdiry0HjxA
         vvNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=en4mVYNq;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eI/SAfojTrzPFVy9KIoOIp0Q44Spf8KBqqWjESZYOGM=;
        b=Ej2kAAC0EEDHEotGXBZ/Pm0zp3FwpQGT6xzJLseEkrnCO1YKVgY4q1STkWA17Wb57T
         OiHxZtQ0srfCVZ5p4oP3a886bPKMn1ApKxXqWGl/e6YImU916TYJHHD3Xy4bPWprAyvL
         TjYftMslIivBgnX6RDcFmgwR/fiIdC6xmFXNgrKtD2VUUnNOr5fesO5d9tO2dx0BfXkM
         1ZfAvMx1Vkhi+twKTrKMy/3eIPqW6N0EJ+yQSNdKZSXuaU7K0UXLzJxCI1yKwmqdX30z
         rem2LXpsnufNPKfjyRB629kdCnL9uR6ert5B2EYp99hpmSmDLJLlFO2N7uR3mwIEOA1i
         Afbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eI/SAfojTrzPFVy9KIoOIp0Q44Spf8KBqqWjESZYOGM=;
        b=GaIMPdVm+EgI+0bm0jnPE21doyAYzqFdH8Bumoq0eg39xhtz6/R65MTt0T9QdR5IY+
         vmFJC/Jgq+fUTRS6/bFTa45uHS4wZOjG7WhLwVzDobLshG1Iboh/GnqwSunpjeqPPxLa
         QYNu5IjO8UIPrExAkkp9dCLpXmEIzvYbbEiv0GVqgefifUuHTz3jW3VjqGrYxTmfr0mx
         YYguT6hEKS+BEQUuJ6AtkOnyAmdncfxxMHtizXWaXOthITS2Y29kbHWaVf9rg6QzBkXB
         ABGRmNepr7Vfj6strz1KmTu/8wZnXS8d+DOudrHIvW3WD4t7vM2bbZh6/dGNaz2DTIZZ
         QWyw==
X-Gm-Message-State: AOAM531k6D+6iqkOLWLlU27Cs2g4ulKBmmtalRKLSUQOG8hz48og9IUk
	9558Fg0voiU2V0kCH+tABTE=
X-Google-Smtp-Source: ABdhPJyLLxjR3Pj6AeFKItPitJ5ohWYjn3nUJbcK6/fVOVSZTDtiIYOLZh/TnT7r4ZrvW++emBviAg==
X-Received: by 2002:a1c:6856:: with SMTP id d83mr2794019wmc.119.1607519068024;
        Wed, 09 Dec 2020 05:04:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls2415332wrw.3.gmail; Wed, 09 Dec
 2020 05:04:27 -0800 (PST)
X-Received: by 2002:adf:f146:: with SMTP id y6mr2671699wro.298.1607519067359;
        Wed, 09 Dec 2020 05:04:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519067; cv=none;
        d=google.com; s=arc-20160816;
        b=jRS9NGbvvm/e4qwdIvKeLbkkT//5mB6rOxuEXwAmOqD9BmE4x/C9Xgx3Ciq4+irf76
         R1hlOUU9YQm/zI0NdKVAywKPWN24+Tdr4b+1bz6CC5IPAZybwYx/Ap7IeCSe0ot/ghih
         GCO17q+hnIHeSGW+15j/m9V8nZZNiMTcSIE6CidlWFW9tnFV/6POFu749F1TX2FCl1yG
         m1EPmv/XVSXN9Ppp51Op4hm0CIJihbhXymg0HKCvT9cFq83EgZy91+gEtblRF/0JNncH
         7Ra4/eFkkZUWRtbxrUyNJljNFKCic3kI4usfWOnIT7KlWhAG2YeyXxcAzjhhG18oWB2v
         JQug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=m9RB+H3jEaXQWIp1py5pcCOx90JYmAGMViQsHv5XQww=;
        b=gleKJp1Otv0vtDp/x/aKQDbXm7JG1GX6S4sxsioGr5brjoGS4gZnPVDgdV+CcBRHqo
         EMLt2qjGYH6g5F7QQNg1qX0ruT1FQ6zZVDuXqzRORFrGYOB7P3q6rTKLpnLsjkgs7X2I
         2p6CiuSFaOikvi2ej7Xi8DkaEIct5z+D8ENuaYvPNiO31jhiFaKHdtCv3zo9UF3w258y
         opUF6CK+BFnoKCgfcidsMsy2PzT2LWMaHRU6WS/YXVQYc6axobdWcyGZ/xhxUHXxcxQC
         BWcuFh2JeoSw2ZaqRzc4P2dizjefigtSieAnZ1YxRcrW6nozk4agsDkVqBOz5HeIXuL8
         WtmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=en4mVYNq;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id x130si34921wmg.2.2020.12.09.05.04.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:27 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: vFiTbQfk6J4iqVIOgnonrgxCYXxmuQVOL8Za41LC9NtBkiTZHXjCPRDE9B8H4SRPXOCreQHHVm
 BQ+0It/ump/RY8XjC028FQkuWbOF8EGKyoCu4pevo7Q3+l+XcV2VMqQBrt0BXmZGzKR+CC1H1B
 tE9syZqKNIQRPKdgz7bHbNK88Y/imOUDnUy+UH8TGuKpDMfg48m5x06nhxe0yjfamwpktEWrck
 z0/0+1guZwFSvyw8TvtDwjMrBU1jTPdXUMj43KXPapSdJKEIDfF6xASy/Cq5ac3gHs+nB+5iNg
 VI8=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="36780711"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:10 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:04:04 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 4/8] net: macb: unprepare clocks in case of failure
Date: Wed, 9 Dec 2020 15:03:35 +0200
Message-ID: <1607519019-19103-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=en4mVYNq;       spf=fail
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

Unprepare clocks in case of any failure in fu540_c000_clk_init().

Fixes: c218ad559020 ("macb: Add support for SiFive FU540-C000")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 81704985a79b..11bf4f8d32e1 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4420,8 +4420,10 @@ static int fu540_c000_clk_init(struct platform_device *pdev, struct clk **pclk,
 		return err;
 
 	mgmt = devm_kzalloc(&pdev->dev, sizeof(*mgmt), GFP_KERNEL);
-	if (!mgmt)
-		return -ENOMEM;
+	if (!mgmt) {
+		err = -ENOMEM;
+		goto err_disable_clks;
+	}
 
 	init.name = "sifive-gemgxl-mgmt";
 	init.ops = &fu540_c000_ops;
@@ -4432,16 +4434,26 @@ static int fu540_c000_clk_init(struct platform_device *pdev, struct clk **pclk,
 	mgmt->hw.init = &init;
 
 	*tx_clk = devm_clk_register(&pdev->dev, &mgmt->hw);
-	if (IS_ERR(*tx_clk))
-		return PTR_ERR(*tx_clk);
+	if (IS_ERR(*tx_clk)) {
+		err = PTR_ERR(*tx_clk);
+		goto err_disable_clks;
+	}
 
 	err = clk_prepare_enable(*tx_clk);
-	if (err)
+	if (err) {
 		dev_err(&pdev->dev, "failed to enable tx_clk (%u)\n", err);
-	else
+		*tx_clk = NULL;
+		goto err_disable_clks;
+	} else {
 		dev_info(&pdev->dev, "Registered clk switch '%s'\n", init.name);
+	}
 
 	return 0;
+
+err_disable_clks:
+	macb_clks_disable(*pclk, *hclk, *tx_clk, *rx_clk, *tsu_clk);
+
+	return err;
 }
 
 static int fu540_c000_init(struct platform_device *pdev)
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-5-git-send-email-claudiu.beznea%40microchip.com.
