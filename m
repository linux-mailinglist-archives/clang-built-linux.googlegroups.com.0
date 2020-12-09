Return-Path: <clang-built-linux+bncBAABBX4WYP7AKGQEBKWPCGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F102D429E
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 14:04:33 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id o5sf143627uad.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 05:04:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607519072; cv=pass;
        d=google.com; s=arc-20160816;
        b=CyYOOK7tFr3jObn4hRFHUX+iclgcrct+ht/H9+uGgw84mPke4Yk+SDhZZXxXu+WJlt
         iix19JUrlc+nZR31rF0EQqSBh/WXh/h3a2gifdNqoVgdcD9dlqUV59hJcLc+IxWrIz3G
         QzbUPxWEaL6HH+Zy8s5Mh5FpU1C14hfmgrLMxSi/3GcWrUfmzTrio3uq7ZGqPEfWysUD
         Lwl3RmPqupgGKUXK/5MrlMHV5mAN87QnKLimG3HWX3brbSISuWFlMzMxw1jq3+FOvTuI
         p7IkWLUxES7eP9w87aRf9RhrcE9gLJVz8U5VFJxm9Ee+/A4TzwHt8DmC8HsjJF2y/5bG
         ltkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=rFFjC9hsYDATptpAHBX/pF74QTu4MkzLy4vqLSJeypw=;
        b=a7Kwl9HudZ7K5PJ+CmzOq3TnPmtWkRgzINiOJ320EA/SFu6MZmHnutxJG5ZS3w1mrH
         dbEVH8Y1vEQzPUndB078PdqUXsNihNfnLlAJAqf51qT9zazWrtztEs7UZx8RcGe9elE1
         jg29kSh3MFobcNMmt95lVX7mAp/jFrhpw6s+0Wj00b5BOLsz8ckuxpm8s8OFc+RAwapP
         uUBZJ5fT7fcY4kckRn9hh1TeyRdEMncgt63cgzlD7VPQSKHFa4j911KXx+lg7OoZIZoE
         yByskt41YqlA3iIfe/CgOCRlYzH5SAjtpHCReJpO+QLyAkOiN6dPWup83ScyhxqylHjX
         FgUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=FPUyQUZG;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rFFjC9hsYDATptpAHBX/pF74QTu4MkzLy4vqLSJeypw=;
        b=b5l0N/qrpNIvxGCT4jaDLS1O2bugT4WJNc438JBADDVRMPaivPWz43lsVVfpxmw/tg
         A2pIci53PRRBCCY0WuLC15asEtqM1KyZw50adfCEISdiKqdMl3fwQ5T79XFklPPEdptp
         4M5rG0uTVuXsHnqQzonF++sTsx+Wh/EKBAFj9Q4VWSIpvvAoLlA9kZ8HasGN2YBpuVDb
         X2GoqU9eK6d7l80YKUvXo59akRXDUPO8ZBg5nYL20mLBqqpPyuu5RnjXNIS+EcCjtnvz
         kYz3hu9u5tNg+CRou75TBcdwT+7mKyhKPWBEi19IDeXAb/48IoRfqK0pWPjKkBzvZBq5
         osFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFFjC9hsYDATptpAHBX/pF74QTu4MkzLy4vqLSJeypw=;
        b=XEcap5UasfXQE17f/Xe7PusI5SRGJZzKj4jvYjHvz0LSGwliDVvjmrazJ8rPpjplyx
         Vly6g0G03kRfMKWVKCLzm33Z/C9vMuyxiBGJzUVipeb0+rYQ236w8Q+EhBudO89B7mVU
         13YSLhm87IniqRhJAcl6Q8Xj/J03UYHJdmjFVbsUo6SFSqSR4hr2J6yOFmeUE6oFxfCv
         px8+kRyGLcN1Sns8KTHvUvJbzhQks+5R/eZiVpWTnTtH5aIMC0YQ1LukEOArbGGHUbaG
         53G2TZnq0N11RCPRgwPSoo51Dm21y0nPnUgznDED49jjfvH+4rX8FZ4KsabPILaZcwGi
         j4bQ==
X-Gm-Message-State: AOAM532PcXPx6v6LFdTfP9kyTfUhQg+hC87QBGjjnxku7V+ypGYMoFQg
	cx6m30Dh8Ud4EKV4x5SHTOs=
X-Google-Smtp-Source: ABdhPJyyzijIQ3kxMsMylICEABJegTet/Yri7MGc+HxbXTWfgIdZ1bPdggkQwOmd1yOvOSYND78DkQ==
X-Received: by 2002:a05:6122:10f6:: with SMTP id m22mr1460231vko.13.1607519071161;
        Wed, 09 Dec 2020 05:04:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc4d:: with SMTP id p13ls169263vsq.7.gmail; Wed, 09 Dec
 2020 05:04:30 -0800 (PST)
X-Received: by 2002:a67:f555:: with SMTP id z21mr1366735vsn.7.1607519070602;
        Wed, 09 Dec 2020 05:04:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607519070; cv=none;
        d=google.com; s=arc-20160816;
        b=f3Umrr1j0tA6CyTJ5k9l+lX7psf1NpJlCr+hHioba95ZkAhynv3Yz1fdvwloYcE2A1
         Od7jjQ5YmZn6Lx/lJdC4pWRR2xbnIdM2zPPSXtzOWtaYWX97XYOOHBziQCmJ7p2XnqNl
         JCYUZf0zYtwlfxGzSY6q2zt0hBYO74jPcwr7hZqoGNO4zilfkz57j7xCm2LXas1hqi0q
         PE/GzaquNyNovGxhp8GC6tH4yf0N7KbBLkfvNv+xUtK+MlkLwsfZ0NVJwDktyszjmarq
         tb0QALcmFF2AV/EH/pXwdKS4XY4o61R4+cCFZxAtBYBVo8G6LKInhSwCRRUUfCas9zU1
         Mhew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:ironport-sdr:dkim-signature;
        bh=U6xV0AbrVNVHxMtzQUbyKAfE0zC0wKddlHA1d3hyrWg=;
        b=Pv6SZzbFXF9OJnGiO0l2En8o7mYW+PCtP64EtYfkCRDPFLsloNZ6fN0A4AyszcFWgp
         6HkmNgSvpsQqDXLiEcc3wyU9NwJfkbBzej1OKT5MscBJLbT8KqU0A99Tby1WVj4ClcCE
         qPygU0BMyG32uW6f2CBSa5Jc/EpXxa101RNwTdnffOurGqZ/yCT4AZvBMbYBCzV1ipsb
         XyCsi+gmKmbC4cCGWZN1qH4gHPl2UR2KTujzpNHb9vvck796+UWI+vAxG/M4ofsegeRl
         v8Tj4K9fd+EGAsls0wOmb+FAr9vifJTR6GZJ0OYHzSY8gmGdhBgXEAQdjztoGniIxi3J
         oY3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=FPUyQUZG;
       spf=fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id b25si112764vkk.5.2020.12.09.05.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 05:04:30 -0800 (PST)
Received-SPF: fail (google.com: domain of claudiu.beznea@microchip.com does not designate 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: UHhmzaQtbbB2lgAaBLeq4Mp1w3jTlP5U4MLAVD007wyqsTrvxDUUZ9sdPUpanh7927ZqLs7QxT
 CQww1BTLYEYUN8azrUeri+C9RyUx9leOYp5wVx8ktHpVFKD5yMo+BDhlgzD716gb6MZYHf7tr4
 VzGrw2Bv0qc2a8f9DhS64bu1H2eYN9maXFfUxpwPj88i3ltumeAeBxLfXpwyVTFLPpt6QZ/yYI
 fBTUxsoA5YQdmuBheBCatVt51SPVYR484lAc8SUzzRkjFpi603N1AA/JWgOABe0wPjebVnTZ2j
 fHM=
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="scan'208";a="101519674"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 09 Dec 2020 06:04:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 9 Dec 2020 06:04:28 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 9 Dec 2020 06:04:22 -0700
From: "'Claudiu Beznea' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <linux@armlinux.org.uk>,
	<paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>
CC: <yash.shah@sifive.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH v3 7/8] net: macb: add support for sama7g5 gem interface
Date: Wed, 9 Dec 2020 15:03:38 +0200
Message-ID: <1607519019-19103-8-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=FPUyQUZG;       spf=fail
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

Add support for SAMA7G5 gigabit ethernet interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/cadence/macb_main.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 11bf4f8d32e1..5bae44931282 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4472,6 +4472,14 @@ static const struct macb_usrio_config macb_default_usrio = {
 	.refclk = MACB_BIT(CLKEN),
 };
 
+static const struct macb_usrio_config sama7g5_usrio = {
+	.mii = 0,
+	.rmii = 1,
+	.rgmii = 2,
+	.refclk = BIT(2),
+	.hdfctlen = BIT(6),
+};
+
 static const struct macb_config fu540_c000_config = {
 	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
 		MACB_CAPS_GEM_HAS_PTP,
@@ -4565,6 +4573,14 @@ static const struct macb_config zynq_config = {
 	.usrio = &macb_default_usrio,
 };
 
+static const struct macb_config sama7g5_gem_config = {
+	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_CLK_HW_CHG,
+	.dma_burst_length = 16,
+	.clk_init = macb_clk_init,
+	.init = macb_init,
+	.usrio = &sama7g5_usrio,
+};
+
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at32ap7000-macb" },
 	{ .compatible = "cdns,at91sam9260-macb", .data = &at91sam9260_config },
@@ -4582,6 +4598,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
 	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
+	{ .compatible = "microchip,sama7g5-gem", .data = &sama7g5_gem_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607519019-19103-8-git-send-email-claudiu.beznea%40microchip.com.
