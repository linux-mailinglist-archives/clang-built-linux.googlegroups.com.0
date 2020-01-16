Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2N7QLYQKGQE5IQ34UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7352913E9BE
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:39:54 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id o13sf16562774ilf.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:39:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196393; cv=pass;
        d=google.com; s=arc-20160816;
        b=EE8tthgruvWBPmPX7otEhGbtHCXnXIUexSdc4Tr5kAuOG7+wdnNzztlrhiQvF/hfgB
         vsBjjEw+lciW8q6o90xi8rvVlsV8S2fszc3UTKMINg9uiD2MwwTCTp1jpD90H86Ezg5Q
         a/wf0Zxe0yRF+XasyiD7SlwtS7+HB5jSrelpTT7KAq8EoRuwYfgYrDYCCGJDGfdFGNVX
         aVfluAdQ8JVz2tDWfHnQinoZI8Z9CkSmX2ANRwkRmbM8uSWd35Q3RTD8xkoFDNAwB93W
         04msC8258ozHinq/lnpzBoXRXKEvPmVellUzWRt4c4pQH4/cmhV9wnYsx3fXCciIOAjj
         ErCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1Jrc2myzcesgBQ10ofnpMjoNBc0ty+ZPP7tBhOFEnYQ=;
        b=ACMB3Biw4dCwdWa47kXDF9SEcflEnYId6//1Nhm5OV7harzWxQUPw3glf07fGMEqnV
         LetPI3DbuER6E7GUPyxjg17LkFcPNFcnXOgDeHnY9jMde/Ncka+HxCf+/R3tDeUENKjS
         chOwsY3BPNk0YYcXkx2IrF79l6uykB+rZYwFYcSLosQPgfQqNVZ/SkJrKkJLCyT5dl4I
         7ITIUgarSStPgpBfIDyS3CraoDwG6JcSc0k9S0I93okGBahgBIL+viMsZ1MIbhDfqGC2
         P1G73WAbO5+iOYIFckWvC64rqM+D5zyKWkTkcqjVOEDOYezfZe5xfQfxqc6iFOws8Ugy
         S6Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PshMJ7cP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Jrc2myzcesgBQ10ofnpMjoNBc0ty+ZPP7tBhOFEnYQ=;
        b=mLr4Xd2jYDkj5Y8Sbc9fnSjrOB5giZbhjbYJPZ/8spg4oukx7b1POQZX/NbxA0SqpA
         2NT0kz7jKCb/O7JP8/7Bn/AHHzDv0xrCi8HKePgkN/1GvRHGBTh6Tw9IGpgKwkPskZ9q
         Nj26Bg48YWUaVck84BpW9jtv+zOC7SoL1ZXWt35tPC8MnPkq9HO2n0noolBgilIsPKJ0
         i1gbOvNWLBBBDvwysk84a6VMf6HqdFvWnGd7VwUOuJadoo+CTFd2JW7Y7EO8MnirQAVk
         5vu/eZLMqnbIZXJswSoZCIul+nbQgTL61N1dwexzxIa0IWxYMmzV78o/7me7nlbmmE16
         P/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Jrc2myzcesgBQ10ofnpMjoNBc0ty+ZPP7tBhOFEnYQ=;
        b=dWB1/xLtq2NMj8YmAAHcsQNqBMIQQvFKesnN4wKDA/FG7Kvq7l/R/yc3qMxr8lp+x6
         1pss09BEk/C2NQZpBF/CHbJH6fQwntv02XYA0Gw4tcO7CII8jm3T/63lQtWhmbjetYPb
         +Y2vk1cT5n1uIT1J8tdmVsz4uUAL19Cp0plTvU3pskeuw01lENIwjwhTmpW63l+oZ5/6
         6npXKkEVBbG17VA75iDRGPobPna9N5AjixWUY88W+pp1MKgok0zSLOMwWSdrQAN+tQG8
         +WZCg8vAEsA4HVWz4cE2H/u5yF3yKTk1t25/nZhxbh5CJXf1BwnXe4L6fh2XuAB5BMEL
         A4cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3hY3DnAlFeOUGLW045Na37XUjCF2WHVXw89idlhhUQi2nmJkm
	GlNhTIakmJSTELvGV8DjBnM=
X-Google-Smtp-Source: APXvYqw+aNczzX9m+pRe3NWLOCqkYoKVsGhfJIYpH8dt+jHFSTz5ZbJ/F9diXu6sexAFWnpNKPOLBA==
X-Received: by 2002:a02:864b:: with SMTP id e69mr29147731jai.83.1579196393333;
        Thu, 16 Jan 2020 09:39:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:dd4a:: with SMTP id u10ls3642836iop.5.gmail; Thu, 16 Jan
 2020 09:39:53 -0800 (PST)
X-Received: by 2002:a5e:dd03:: with SMTP id t3mr26985417iop.128.1579196392943;
        Thu, 16 Jan 2020 09:39:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196392; cv=none;
        d=google.com; s=arc-20160816;
        b=kOvxQOqdS98YsOdkpctFbnruGVdfhj6RhAtzxn84VdIIH9BSz7PN4+gYN+T4ykO2GF
         6IM0/yBsw5Cv7cQOU2Ptmq40gX4+VJARaiA61BGO6y3wlTGadJiQTnLuGMdzDgc/NN0Q
         S4SnkgVDs/2/bxq5VHaOQeHKyLmemOJ3bHkOn/aznTtiSfKEenjprZi2YhLJ4Ym1khPI
         dCuhQztTwEVIXYvLAH5QK4gTLYxeqdLOfXE3WblXDBy6O5GEkMQ5uyg4Qs/AM0LToqyL
         xQu7UJQdQ1bgZp441gcj7qoSA+9AkW1Obdk3Ub325nm9QpftU/xt5nsnpRdQP1x5P+Vb
         TuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fg77dg9SF3zAKeqm5ePrQDANb0RBwxXZZVSKA+URPO4=;
        b=ex8iPrTe8BQC0XpWZ2NVMscds7y4L9G9p8bf0SJosbqw5j8/dbA5NnfLUTcure9oAc
         u74IujOXbh1n/+q/wb9LBF3aV4G2uOme+l/wkCTcGZf36EqKeuwEKxa6M7PxucoT5gAH
         J944xvt5QBoU8P4JEf3cjRMHedVp3dMipQdc78N779YnJRlIGRGpETVmRsdddZw8P9BE
         3NA6wHeCmSmB0+wA0XYBp7KWTebSlgWgWjkbxV7QYCMmLYboXiQmR0TeiSTl2yUSq8s2
         8Wq2f/1neSVb5VD8bLGMejtlAgL0/35gtkMs1xzaNjlD9mRFZHe6EmoUUihO7468Z5vc
         fMww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PshMJ7cP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z20si1067795ill.5.2020.01.16.09.39.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:39:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A2BE324721;
	Thu, 16 Jan 2020 17:39:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 172/251] mic: avoid statically declaring a 'struct device'.
Date: Thu, 16 Jan 2020 12:35:21 -0500
Message-Id: <20200116173641.22137-132-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PshMJ7cP;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-132-sashal%40kernel.org.
