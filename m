Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPF2QLYQKGQEFGFOBMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BFD13E7C1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:28:29 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id t17sf9057483plr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:28:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195708; cv=pass;
        d=google.com; s=arc-20160816;
        b=aUM/DG8V9cig6oKR7OmxiO/MwtczVD2jcVy40kRUn2jXZVrrVblFuBztEyQH22i8qh
         h8zzq274fhhNF6H4fatibjplXpjByXFIJbXj3SLhEYLdg5FImTAWGxf4bxYZEpCS5y7E
         HkaVbD/I9ljhqHrPLSyWwHrgokl8M26EdPCcTVKRYtR/rtx/70bx82YWSTSVOCjHc+4p
         0U6egpRwhZefkLCY5SPXlUHXy4ZVvJ857AnKF/ujBrK7Kn1KNcnAGoKDeT8Pdr86m1qp
         dylJuN3MqY+7WPlOJaxRzGaiIZa2cjZo1siaTvB6x33xXOgtVuH56EvtXtYc2AJ5hn8A
         Th5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aEHliOlcrBI6v8M/RhqL212OvV7q4HbjkLHFP6+FKQw=;
        b=fwas8ud5B/ryrdT36sYA3M6tBCPY/J93Tljv7oH+RBL6/xiwjuIsEQnM81KRXkq8wr
         NLSYLhWRK1SP5t33UvRNzPOjr5GWSwMsN2sTfzjR7L+UN5od/3A8WUGMnByO1jiebYyV
         XzG1DCSB9ZGF3xvjsWsnZ58eOOJevtKvTgUtZqgBdHvJ4WLXVdPgNar6UplgAifx5EbA
         WHjN4/xJf1R/Tcg1YtSmCNegxOeSCSG2cCCE2tKOT95kqiMf+JyQFxG4AR0ONnQUZrUQ
         CoiNT0/gVELOmC9oStsEHJRdLg2Ug1Ac35os3xbRqaDeTut/ltIT9LSivYv2Pk86dlR0
         CzNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P7bvObhY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aEHliOlcrBI6v8M/RhqL212OvV7q4HbjkLHFP6+FKQw=;
        b=AdmnoCK+6+H3qWyhO7ueruBRymmsm+5Et++Lp8I3b3afO2mtA3g84F9+7t98jq6Fh9
         WkPKcfq8Ai97+AGFpN6mE6MmQp2AYeuGzgYASPKp6k9RhfbwReb7ldwnXeTYVxYlZUde
         c1w/8gCC+6gbDP/KrosFb6+eq7jDwZt3Wuhz6nhJUkQEF+zQd8fto7p1+0ZoeW0fs1uN
         G5uJIX5UgMkGnzZv0XxtAwuuOokmh4tGmWlcA/b8FAV3FVlzP5QGEbQ1eNnf+QE9qeW0
         gwHosXTumFolkCY9aDlbDqdzvMl2HbFJ5kHS3M3oe+42aEei4Koz4ToeTCgkb0uBhfwy
         Fr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aEHliOlcrBI6v8M/RhqL212OvV7q4HbjkLHFP6+FKQw=;
        b=GgjtJPL9ACzJvNOEs09iJ8tHcsIl3E+4YOY0Orign+bJ6ntTjpZoGRTvvX+KI3s25Z
         OWXzkVAmyJKr7fLmTWUiH4dA05NnreflnGTo0BprSloB7wWMynLkuYjJFwB8pzHBCMnK
         cyCjbPiImED+3nI4edn2k8nLhaCL0/bYdb5tWLR0KwGUO2WjQG90g5WT7SxdzA9wipk4
         wXG/MbHt4GHN+oEMcoQcjl3fiVxx+2aqs159IHc89lTNkqGCxiy/ZQCbbquFB1XFS4Us
         fRSR3yq/813i4QG6AHWg26x04K0kz4mQVdb+A01b7qqIRxEoc41f8hWJ88wRbj9zrBB+
         Vavw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdLBS7x8uVKfISffUhYuv/NMBCOw+Rtyyi5C/c7k1XA1D1GcOx
	wvax03mfx+JCl6Zmw1vgPhA=
X-Google-Smtp-Source: APXvYqxjZnU2O/MWDpqPpLNblshThiXnLTh2BU6rowcsqGnUTx25VNfcAEPGpduAa+vftU2Uy8Wghw==
X-Received: by 2002:a17:90a:25cb:: with SMTP id k69mr134429pje.121.1579195708647;
        Thu, 16 Jan 2020 09:28:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba8b:: with SMTP id k11ls6186132pls.13.gmail; Thu,
 16 Jan 2020 09:28:28 -0800 (PST)
X-Received: by 2002:a17:902:724a:: with SMTP id c10mr33642983pll.307.1579195708240;
        Thu, 16 Jan 2020 09:28:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195708; cv=none;
        d=google.com; s=arc-20160816;
        b=eZQbvl8xlQUqGEi++SMtEvdYrkyfHL48ZdH/3nLcjNkYYq1lz6LlToWJ1ghC0LXw0x
         5+wTy1v7R2FV/obp0+MWUvtqAuACUPqt9CWm9Og+X3L1O2m82P0hMUZ8IrrjQeS3Bnhv
         PovxF3HDN5spxangD9Wn9au/MaECqrGbEBRO/Fz24nkHMJdkS6EAS2B8NIkOWHlimjRw
         BoXCjQ8MJPO4M6/+t0pN8DecLmp8Fglg8dl98cuzNKCAa/WVp5SdHkeieZ45aca05n+s
         /v8tkVOI3jSUQNk0YPug314X1NW17CWVBot/RlVm6SLS2545SZoHAxOo9Le3M3YvSHPm
         icsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fg77dg9SF3zAKeqm5ePrQDANb0RBwxXZZVSKA+URPO4=;
        b=sp9TxKOjp6Q9XfHaeEzU0Vc/TKXNfghhfo9rgb65w5ZhQSTK4w0YcoRnu3SKVeyU4v
         oN74OLrGSwg2IZ639a50z7YKGLr0EINrKJzJZltWjeChYo+gsVb9NZu5L9CW3bIMb57S
         SW4bEJNMJPmZNcI5yxWnG71F0BSw7LJzNXeCaAF5Unkd+o27/2apPyW2SSiWI360+ipB
         2NIecmfAzbdD+nfpH5aLd/8GX1a/2me6D1OEbGztsBkBM05fx141SPKlThK+XPvrXzvj
         ThFu71YHcxR+/I1S2z/sFvngT3UJ/MjIDdXUc+9csM8THWtmCgz294bboAxDSHFZdLRM
         n8Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P7bvObhY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 36si898406plf.2.2020.01.16.09.28.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:28:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DCD0E246EA;
	Thu, 16 Jan 2020 17:28:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 254/371] mic: avoid statically declaring a 'struct device'.
Date: Thu, 16 Jan 2020 12:22:06 -0500
Message-Id: <20200116172403.18149-197-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=P7bvObhY;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit bc83f79bd2119230888fb8574639d5a51b38f903 ]

Generally, declaring a platform device as a static variable is
a bad idea and can cause all kinds of problems, in particular
with the DMA configuration and lifetime rules.

A specific problem we hit here is from a bug in clang that warns
about certain (otherwise valid) macros when used in static variables:

drivers/misc/mic/card/mic_x100.c:285:27: warning: shift count >= width of type [-Wshift-count-overflow]
static u64 mic_dma_mask = DMA_BIT_MASK(64);
                          ^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:141:54: note: expanded from macro 'DMA_BIT_MASK'
 #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                     ^ ~~~

A slightly better way here is to create the platform device dynamically
and set the dma mask in the probe function.
This avoids the warning and some other problems, but is still not ideal
because the device creation should really be separated from the driver,
and the fact that the device has no parent means we have to force
the dma mask rather than having it set up from the bus that the device
is actually on.

Fixes: dd8d8d44df64 ("misc: mic: MIC card driver specific changes to enable SCIF")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/r/20190712092426.872625-1-arnd@arndb.de
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/mic/card/mic_x100.c | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/misc/mic/card/mic_x100.c b/drivers/misc/mic/card/mic_x100.c
index b9f0710ffa6b..4007adc666f3 100644
--- a/drivers/misc/mic/card/mic_x100.c
+++ b/drivers/misc/mic/card/mic_x100.c
@@ -249,6 +249,9 @@ static int __init mic_probe(struct platform_device *pdev)
 	mdrv->dev = &pdev->dev;
 	snprintf(mdrv->name, sizeof(mic_driver_name), mic_driver_name);
 
+	/* FIXME: use dma_set_mask_and_coherent() and check result */
+	dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+
 	mdev->mmio.pa = MIC_X100_MMIO_BASE;
 	mdev->mmio.len = MIC_X100_MMIO_LEN;
 	mdev->mmio.va = devm_ioremap(&pdev->dev, MIC_X100_MMIO_BASE,
@@ -294,18 +297,6 @@ static void mic_platform_shutdown(struct platform_device *pdev)
 	mic_remove(pdev);
 }
 
-static u64 mic_dma_mask = DMA_BIT_MASK(64);
-
-static struct platform_device mic_platform_dev = {
-	.name = mic_driver_name,
-	.id   = 0,
-	.num_resources = 0,
-	.dev = {
-		.dma_mask = &mic_dma_mask,
-		.coherent_dma_mask = DMA_BIT_MASK(64),
-	},
-};
-
 static struct platform_driver __refdata mic_platform_driver = {
 	.probe = mic_probe,
 	.remove = mic_remove,
@@ -315,6 +306,8 @@ static struct platform_driver __refdata mic_platform_driver = {
 	},
 };
 
+static struct platform_device *mic_platform_dev;
+
 static int __init mic_init(void)
 {
 	int ret;
@@ -328,9 +321,12 @@ static int __init mic_init(void)
 
 	request_module("mic_x100_dma");
 	mic_init_card_debugfs();
-	ret = platform_device_register(&mic_platform_dev);
+
+	mic_platform_dev = platform_device_register_simple(mic_driver_name,
+							   0, NULL, 0);
+	ret = PTR_ERR_OR_ZERO(mic_platform_dev);
 	if (ret) {
-		pr_err("platform_device_register ret %d\n", ret);
+		pr_err("platform_device_register_full ret %d\n", ret);
 		goto cleanup_debugfs;
 	}
 	ret = platform_driver_register(&mic_platform_driver);
@@ -341,7 +337,7 @@ static int __init mic_init(void)
 	return ret;
 
 device_unregister:
-	platform_device_unregister(&mic_platform_dev);
+	platform_device_unregister(mic_platform_dev);
 cleanup_debugfs:
 	mic_exit_card_debugfs();
 done:
@@ -351,7 +347,7 @@ static int __init mic_init(void)
 static void __exit mic_exit(void)
 {
 	platform_driver_unregister(&mic_platform_driver);
-	platform_device_unregister(&mic_platform_dev);
+	platform_device_unregister(mic_platform_dev);
 	mic_exit_card_debugfs();
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-197-sashal%40kernel.org.
