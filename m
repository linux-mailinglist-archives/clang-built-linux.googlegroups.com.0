Return-Path: <clang-built-linux+bncBAABBZEWYP7AKGQE4MTVAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E97692D429F
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:37 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id r13sf719686oti.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519076; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxL4eMQ9p0ZtG9zwFpSKjyBK/TuafmHqwS3kemjPaQWuXVJvK11bb8WXvmBFwC/mqx
         sGE3F1c3HAfmDtBaCevADOAKkj6pXVRaUPExXwIXm8fbDli4yLdrwPkMbBig4eVfsV41
         Vlgjjrggaom3RjD7xDQDM37c0YU0BVaFgnZbHZlD/9RjLXR+B1VEIy6j+ef8kESuxnuB
         NVS5R8csab7ej1Ajp3LCzCXYfvO7W4dSIslGVTDSZxnBG6aO9BNLvhS0P8e622emD3j9
         oQa1cA1ycaxIAJhlrqIVYu2Phlo2V7ZRhHzPvKhVZnMOx22PzpHc2dfps3UZMSNmo1lP
         /X3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=84dxo6M8CWNmgr6FKAGeGhKgDW/6o14gEq68hfCUI7s=;
        b=Y9FVv7RYnxiudTc+gk+BvEK2m59LRviaWX91N4lHrOhjKor3eYuEG3box5cwtIeaD/
         xBKx/X6/nMat7FswecUTVsJMJxDt/oBxVIqE1IKARtBjFTB5+kskPxg1n/Bo0UTS6q7t
         5sKcYHIJhHo3IRJjFEeTHdEu4Lq8nVXpX03e+5nJ4R7ZHw2p3gZOhzZfhMF/w5epnNMf
         P/h84RxMEQZLMDtc05OOUClH+qQ1ewV/0XFQHBFLnSM153BSmWVPsKUSGJVgWXuWp2wv
         WLTf77afiPDikQuGOvxcFiaIQor3BEYzIJiMPNXsMZZ+hedV1odQgz/J0rgSOgjFqzsW
         b8Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=GUX0Fom1;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=84dxo6M8CWNmgr6FKAGeGhKgDW/6o14gEq68hfCUI7s=;
        b=kTgZNrhwmrkbA9B5FwL2gjYjoHDdTxCRZqpBW4azuFz3RfbmOZYv4vcb/fhkeKoidC
         Tk30pCQJAI4m45xLaBbzQ9DA8oS9dcS/racmshLGYBM2A4ri2hozCAPueH/VNmT3mcFQ
         nx9plya3tWbArqx0oFNd75X5TXyKWKx0dyTaexlMyhe7uvC0QR41Rs/AnfSVn9jkfwq5
         oSS/pFXxLEUVYAFIRUF7kZEgyeQZpWpDIHLGAioLEGyRHczlhmh6RhiKk79C01zCWiuj
         7zQJmd/Z8rqwdb2icnQtbZ6UU+MuHiaWX+cGTUHJpmdHG6rjpEIqYS3Ex85O22pekHV6
         xPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=84dxo6M8CWNmgr6FKAGeGhKgDW/6o14gEq68hfCUI7s=;
        b=IA/Vdu+Hs3Pf+YFDKuJkWskw95bMIx8+TUNUEG1dxmwp9yYVf46nsDNGbLbbXEgCJL
         sVIC9h4C1mxiPp8o6sQBUaTflGOcyciNM+Ft97ji53blD8VDPrm9GMVYaYYkv8PIyRwG
         2Q6zv6MzD0PJxaVXQSN8Yd90E/JbGeVZr7nMVa6Lhdi2eoY/6lTH4NTLzhtLPCX6tb4o
         qrWK6NAnWWjig0v5rwLCLqb6V+6OIM+7Oy2LsuSCCwqXxG2EssO7DQu/kWKLri2oFNfm
         zrnhRlMxi81COKMjZajloQvfemftctIweH1Kuop0sYfvzMSBNj8RLst7FJlNuayXxQvx
         QS5w==
X-Gm-Message-State: AOAM531Exe2L/yYVP26MTbB5O0+InIAix5ipywKyr4FnWBgJp7p9anQ2
	5JfXg0LgjEfYoVyXwTNa7Po=
X-Google-Smtp-Source: ABdhPJz0XxvRz2INoHX4vJVqgnJEbXq6E9aqUQdgCwqQeukZZ32IOn52L0+as54zwxwgDvcSYLqh1g==
X-Received: by 2002:aca:1004:: with SMTP id 4mr1636820oiq.4.1607519076631;
        Wed, 09 Dec 2020 05:04:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls357576oif.11.gmail; Wed, 09 Dec
 2020 05:04:36 -0800 (PST)
X-Received: by 2002:aca:c1d6:: with SMTP id r205mr1586654oif.37.1607519076198;
        Wed, 09 Dec 2020 05:04:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519076; cv=none;
        d=google.com; s=arc-20160816;
        b=UC+C3z2esH0sPb9ulOaJsGhNweXM4p4vUBVkIx6zmUHNLxYKOo46W6XOkIi11Otn4G
         IgxEBFMkNc2uRwV8PpxX0U94r+A+8XqBJnxgeynX7IEaEDuUWIFm88iZfnnFmpNc4Fcp
         evy4Xzn70HnwRdOZxRmgUHAubA4gmb74En8QL4jkffZfrRu9T9bsf/i9BSYdxg7DQbOg
         hcHYQ7Z9yUnM5BWC3xkE0J/y4uyGNNnyUm2igc5KPoB41X2seeMMxz9w3pENj+uPoo+r
         HpIUscmOIsMiogFU5iFSPn0mOW7bCgEq3DP2Lyxyej/kUVmgeY2xjmy7s+mbkDh054VP
         jQZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=0Cehg9PnBwPywIajE/OfGkbOfFyJiAFNPxuV1QPJPpw=;
        b=omHMUzW31wXniZQWvjBPPWGpgUwWXamPGsSk4ItvqSaKd41/t6CVE8Skoyf3zeLbBp
         5f8tA+YXfewlvSQU6rYNuSBcELylVU3nvr0JwADPlMv+AozV81piO/x552SOFoxfpauS
         rziKMNKWPVUUEG9TG8B7DLPqP0AyJCCUfhgG1TXk8sNjR/ex/DjdLx7+o436jxr+EJdy
         BAfHP/eWFAYp9y/trfZrhft2N9eaJyenVW0s1yXMkpGWoRcJ5I5U/CDpc5rUA8np81H9
         7dA03GYPa0eKkQe8+AinH7xfKsLD+/2xH6m0H6fiTX4yQm/POuPwkfady7bRxta7X7Kh
         M++g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=GUX0Fom1;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id u25si101723oic.0.2020.12.09.05.04.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:36 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: ehnk1o90Rn984rGliBSnqW0a98J3fMIDnclBEqmLXT2eQExp371dB3fidwu+IHzECHmLCJSe9m
 L51hIVe7eK2adsFS+CfOkaDNOigA7mCRgylfJQU6zQZMqWJD4cAMztHC+VW6vR7/z1dwNh0ppQ
 qLU6Hwd6RLl0GzkKx0gKkJstDLkZCDkKEfCmaRsW6JVMODaqgSDWLjMYU09aSHUcPVkAbSXkQI
 /2Hk2VKhoIX2mj/PjHLhTRhzwPEVrWkdbTo8g1PCkwCESZM3TALpQrngIUM57nsj5zZsS9dN2w
 238=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="102102729"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:34 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:04:28 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 8/8] net: macb: add support for sama7g5 emac interface
Date: Wed, 9 Dec 2020 15:03:39 +0200
Message-ID: <1607519019-19103-9-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=GUX0Fom1;       spf=fail
 (google.com: domain of claudiu.beznea@microchip.com does not designate
 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
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

Add support for SAMA7G5 10/100Mbps interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/cadence/macb_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 5bae44931282..995a13489276 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4581,6 +4581,14 @@ static const struct macb_config sama7g5_gem_config = {
 	.usrio = &sama7g5_usrio,
 };
 
+static const struct macb_config sama7g5_emac_config = {
+	.caps = MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII | MACB_CAPS_USRIO_HAS_CLKEN,
+	.dma_burst_length = 16,
+	.clk_init = macb_clk_init,
+	.init = macb_init,
+	.usrio = &sama7g5_usrio,
+};
+
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at32ap7000-macb" },
 	{ .compatible = "cdns,at91sam9260-macb", .data = &at91sam9260_config },
@@ -4599,6 +4607,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
 	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ .compatible = "microchip,sama7g5-gem", .data = &sama7g5_gem_config },
+	{ .compatible = "microchip,sama7g5-emac", .data = &sama7g5_emac_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-9-git-send-email-claudiu.beznea%40microchip.com.
