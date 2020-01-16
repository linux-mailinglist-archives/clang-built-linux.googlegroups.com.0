Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOWCQLYQKGQEGLCPKJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2EE13EAA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:45:31 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id f25sf11970861otq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:45:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196730; cv=pass;
        d=google.com; s=arc-20160816;
        b=YhjybHlnkMXLCBujRvMxuUkdg76yUHbAVhgOlYQR/jcD0dbJL/cH5cp0g43y+2gOlW
         tgUEtQ+c031U/eRjYTCyw3DY3fUcjU3XEfejGFc2ue4O4l0SJ4XJ83H+CNA6yzYQMtKH
         hyobVcN+xhagCnerpvVe8NiUn9/bS0jDymc5Ck2ROfXXhxyKCViHaYFUQoRtNnLxj4wz
         p7/rVEmdYCnWx+4sUOYI1A64hpMHD7aLQah8cxd7YZ8j5M1Yar9PxNung3wqPSZi8VQN
         /Nd8sfk2dPwvVP36VUj7eE4Vhx/XaDIkkmlrYGp0AV9InvbYCC6oT1irHNhZdroe51qe
         Xh7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sS0LucNlMF2eGxyNZokfCJUkwETWLswRupBRKTSAoTg=;
        b=DGi4XEeGASPh8ih25ZbgcU9O/dhyu4zES69oX6yDWMz9JzQnT8I/bLwKewy/KxCPA8
         uRC1nbMUoqwmbCmovFezk4PPVofCxey6GQapykHGP0soVil3aOOlDbzl8S0JtOkwL57i
         Mqvf5OWxmKNv4Xs9EtakeOiUv0uBXWsmvU/EL3HPtvjorpp52tDl7slw67k7VyUvtql3
         evFZDOsK0Yi8WE/mDpMhq3mml0Fcg2r97o1xMHvSQCsmvzkflHwn2lgUmwVSj5aR7qF9
         5nn0suDW9zPHoPJ6s92IpxtBWU7n+uYMSECRouf5appuwO/NGQs64NThhJ4QKTi+Kqfv
         /LZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s7ihapc5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sS0LucNlMF2eGxyNZokfCJUkwETWLswRupBRKTSAoTg=;
        b=R0pi8RcR0+ijbCoTiguQEru+Wd/lEk6s1+Je/febkqwBREemSctZe+DXbDHLczbAaz
         VJgnVL+2SzTGqkIu4DeTpcc0f0bprVju7An2SbtJgV7Uonmem1kE4usYQEUwBVurHacc
         ERyebpvKfc45oR1FD8GxJNmwK5wSczsItcDx2MVjRMbbHUJzsrsaY/UC7thYyzFkdig4
         ImikqIkTYWbHJ6+D6HKSP5i8IG1eqrrR+wwkAR+OqVgMngKf4AZpyCa5mklSAGipbXB2
         UXOqvTqXfKTlBC3VPfYTyNkIaZdMpnXRxuK6JWZwAFDVdX8nZ5B2qXfl4mvx1/e4/CtN
         qQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sS0LucNlMF2eGxyNZokfCJUkwETWLswRupBRKTSAoTg=;
        b=eryg+fXIZANNeCChcrl+GD10/Nlgqmx/y55itGzJWuR4F5tEzLQ4DGPpN6K4ZSIY1Q
         /KgieD8DB6j76zKSFWqieKbOSLpkCMLKo3olKI18ya9Q4/WKW0yqbpHP6vlQjBgOb7YQ
         LuEAzAr1hGtxw1Jag7mQyPPX0Ml0ykHReMGiXe7oVFS65RQ2I+Bw1E0i0dMwsvao+O66
         2ajCO0MVBLxakBU17pbNNCqIPlX5tMcam2zzzb7DVYJ91odc2Ab6S4RdNvETe8eIiLq0
         94d6bbi6y28hk5nUv/kDNRT/oBy0RmfXl6w3rcT0CXgvn751WYP1++HWrp8Cwm8hQX9G
         l3yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhQxCr3F/e4B3DUr5I6fSk1GxMbk0/V1ZWFiHbEf44nOyRaeH8
	EZJYwdUHOsZZaE3serKIyVk=
X-Google-Smtp-Source: APXvYqz+KD9u9eusBlF/O7OnmU06ronKr9ftt0G09EsIUzYTvHGRhnDl6182bo7IXwlPScySPWCFkw==
X-Received: by 2002:a9d:6b89:: with SMTP id b9mr2891889otq.298.1579196730161;
        Thu, 16 Jan 2020 09:45:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5482:: with SMTP id i124ls4091613oib.11.gmail; Thu, 16
 Jan 2020 09:45:29 -0800 (PST)
X-Received: by 2002:aca:f0b:: with SMTP id 11mr216171oip.34.1579196729835;
        Thu, 16 Jan 2020 09:45:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196729; cv=none;
        d=google.com; s=arc-20160816;
        b=dn9xPoXiXoLESCFHPELPP06kfQf8aIruhOfV2e63TTYGp8wCH5yJc/irJKDbE5ZNg7
         zow7wGibiyluBTpgZ44IzQKi9/drXiPLywi1f5GCSkXK83KipTDgZZuWyIr5bM3XO776
         7fg9fRQPZsCJDdqFJHENUeJPAJBPpKDF5k8HToWiVMF6FQs/9sKchad4HM3Cxgr73ptW
         8KE6kqFDdVWy2AWifSo961qAhmlxjAS00tmCphGR/s6D/4oMlFqUWvaHWGnelT/yjWn8
         BsIL/RcLmVqBypD6bnLxcpOWPTIrVWOHuYL1HVeexfVpRVp8gthVQK4ONARS8PKchJDS
         3akQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=23uuNhuIMwu4dlc2wW4kVAA5/VFPjOosYPCNvvMgH+A=;
        b=b2a/TVY6g2Zr3aGmfCefUMruHEWDjGjf+ZHq2yXzuw3pTqI60iDHOtjrAGM2/1JJ6i
         m9kH2Ca5FO5HHvyUQ50lYLR2zvHaRboCshTa8E6nGj+sWU/BDMcZAhvER8zf7rdsPM8/
         pqCNna2zxNRVO8sVmBavJic/y9Xe1YhDhxJk4tUW2+4VCLVhUKc7stGtXBh+0XN3kWQz
         hWkIbl5KKrF6P1wahtn8jsxE2Hxvvtx312Sxd1MY8yiWlZSJP8N+pE/zqX8hLnHkvFJ1
         XKF3508uvtsW+2lnvor9ViLtOq1EigkwCouYlv2x31MK/tuaaRH12DQam22BfcZn+O3+
         rHXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s7ihapc5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si1030289oip.3.2020.01.16.09.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:45:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2410124767;
	Thu, 16 Jan 2020 17:45:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 113/174] mic: avoid statically declaring a 'struct device'.
Date: Thu, 16 Jan 2020 12:41:50 -0500
Message-Id: <20200116174251.24326-113-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s7ihapc5;       spf=pass
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
index b2958ce2368c..cd778e2b4f3e 100644
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
@@ -327,9 +320,12 @@ static int __init mic_init(void)
 	}
 
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
@@ -340,7 +336,7 @@ static int __init mic_init(void)
 	return ret;
 
 device_unregister:
-	platform_device_unregister(&mic_platform_dev);
+	platform_device_unregister(mic_platform_dev);
 cleanup_debugfs:
 	mic_exit_card_debugfs();
 done:
@@ -350,7 +346,7 @@ static int __init mic_init(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-113-sashal%40kernel.org.
