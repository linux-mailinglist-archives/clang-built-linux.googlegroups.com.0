Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3VRQLYQKGQESBHJDJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD6913E4A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:10:08 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x21sf13310488pfp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:10:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194607; cv=pass;
        d=google.com; s=arc-20160816;
        b=MxkgB1RejIUXFVDRwIPFj8CnNWolsO973waxfPHcIG0raXPysRZe2/nzKIUVTjRUIe
         nNLh7Ur22nIIXRZGugZ99iIOCyJaZTWeLqGs4G0PKga/T6cPrFiMmNjrh03XrMZX+EZm
         RfxNUay+thO0EazCQZwNzqRAM0SYoLWmjaKyVqda8XsmERlsDN3X12Smp9u16WAQoepH
         jclnRuYR7+K3PJb8AqUL6qTvggvHZjn/2nOgvu4uXO5IFfvpUPqDoubDDfy8D1MJ6i9A
         V52U0QrUdg7FVkyngnrBskHXJMTXYQ3MHzU2D7QtoRlsRtV+8oMCddaKEiD74LtQnij2
         w08A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GR0M8XyZ0J0jArn00pjSqwNxoa2f21sMLraYR4zQ7hg=;
        b=u1AkfQ6BAyU41USfz8xjnTeJHeump6VjKj14AzUsYIUKNADr5BBQP0+UAqvfC+I/VT
         ZXCjneF6oVdUpda0wfvwfziNyRGzLxyrv3+I62wP1uuV0gyGy0oQ/yF4J4HYHbtXVLgP
         WulQTKTvJBX7JJZ4l3LsljSI2L+kUo4UiQ+utdgSNOL+0bHd1XZRWnvQL7yxvGlH3EeM
         KKhmvpnLCEQGSWJVNwfDxmWd9QjHhZdkaufXLVOc+sQY6T0HO7l0oIKKgjFWVY5zVL16
         yNWPhLruLJ1yVObPVPAwE+33Sl7KzjtAglNCOnkAKrgPeQTD0M+pyF/xHCZsTOybdGjq
         /Fvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hIFmJVhf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GR0M8XyZ0J0jArn00pjSqwNxoa2f21sMLraYR4zQ7hg=;
        b=UOAydQ3/2g15oytEXycbMtRsdZnQqrX+NGIMadca/aPtcW28Px6sSTf9EpwY9/UFy0
         TNngwOhsWzfHJVosmtJ6Es13U3MwuK8NuE7c+SZzX7zs2pXBitgjuY/ddcQm7t4N6Xc6
         KQK8UNjn7g3TCx9SQEiE0yJcPhEHDjVbkbmmfKl42JH7qMLaRg/0eEt8hSuDX0BiUVnm
         xXjvC6mh1cWHHpN12KM15zsjU97aTh0zLBZURvnWwHwnPk+TdvcP4HFa9dTO83E2ixFE
         8ixTW7VHUKjacf9Bb+Sg2L3ff3Se+GuIPxz37KW1LcDodYDmuHJxbChnHNCHA+YsRLDN
         W6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GR0M8XyZ0J0jArn00pjSqwNxoa2f21sMLraYR4zQ7hg=;
        b=UYMlzCu4pHZXSNUdoMYfMzToQ535BQHZdnVheS/D+yEwWr9PvDdMfQqM8FjniM3Mm9
         uURqSBEwSqn25DT0Uyo1kEMzNIKUOEp+Ek/PoaC89K6nXrosgnvLeX9Mrh3MMgvJRUT8
         n1P5eH+gGTFny9wrXfZ9wDsSf56CVW368DQuwQP/oyEkJulqAAcHbwBh/GRN5GWcUVav
         zL7+V6mztgrSwfOQKmMicOgD7m9ilFInNkEwBa2P7R6JxBB12v43Hnapu4AnfffI6WPt
         CMu1MAzKxrjW7P6Nj8vH4j4PR1++N5KI3ys/5QhWyhcZdk3mAXlcqAbbtwD6Cct3TMQ2
         MjzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrsGcXioRF68bYokwXrijt5PaB+rhbO7/HB1BTxZsJloFj8nMS
	lQWym58CZPPz00+AB5OhkdU=
X-Google-Smtp-Source: APXvYqzinz9OsTHVXCSsovsTsG1gZYE0u5Hn8J5TBLgnQgAy8Hv5TV3dKX4rUBG82YiIC2b2J0nQUA==
X-Received: by 2002:a17:902:7c0f:: with SMTP id x15mr33779795pll.267.1579194606840;
        Thu, 16 Jan 2020 09:10:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8744:: with SMTP id i65ls6796070pfe.11.gmail; Thu, 16
 Jan 2020 09:10:05 -0800 (PST)
X-Received: by 2002:a63:8eca:: with SMTP id k193mr40115192pge.293.1579194605738;
        Thu, 16 Jan 2020 09:10:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194605; cv=none;
        d=google.com; s=arc-20160816;
        b=hYx5HLl1W82EIU2Bv9GUrlJdxi3gN6UwD+nZSZ6DkBamdfJrJpCRTCS7a4Fa4wPzy9
         l/qSh4p5MI5nSSDwDaCQ6g9HymeS/d1hxJiBLfhVBEZTOTwfuf9uOSP3iLMoEQep6jjy
         OZUCJQRXIF3wnvl92hXBGif5EQyL9SiIMxCXDfNXC9/q35k/sgrsQ5kVlMbs0cijzxBt
         kkALMyMgGSqDSXMCa26g5twBrhxTt6DV1bjGzbePhwxOWC5sZlteFTs46FQsDHmliDVe
         JTQXEW8YJhlctB6CrHK1E0si1uNe+E6FZ/QJf2H7FXzGAEqKeyma5DnOEe3CBtt+O4qc
         tOyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fg77dg9SF3zAKeqm5ePrQDANb0RBwxXZZVSKA+URPO4=;
        b=g9FgyVBaB4m3QlwjX3/anjwt3ygzX3ycbpabBwffJeTBtaI4QTanGdMWvfENz3e3Pt
         ip7Ak3PMvxjkgJmfAl5TyP1bHng2fh3HziKx0s8Yi0na/vAXdaUgHUxyiZ3aRTHVIZ3E
         QPClX47tglMr0WJIkmo6DXqIfd++sb7fVIU5YfyDslV8sI8Ml+Z/fml7MRPlxv5UfjRP
         S7U1nbNJMphfkDQD+hfg2VHJM+ZbmhLAlHgnKsRr/3B1oaZ4HT230nUnJUr3KjHD9Yrn
         if8OQqjBo6MAy9/VghizX4kqA+Uhc9tEF8NYFglLJ3M7YO7x6X+QHYqFAUDYe/Mw2FOb
         jtlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hIFmJVhf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x12si898826plv.3.2020.01.16.09.10.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:10:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA996205F4;
	Thu, 16 Jan 2020 17:10:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 472/671] mic: avoid statically declaring a 'struct device'.
Date: Thu, 16 Jan 2020 12:01:50 -0500
Message-Id: <20200116170509.12787-209-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hIFmJVhf;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-209-sashal%40kernel.org.
