Return-Path: <clang-built-linux+bncBC6JD5V23ENBB2MEUD5AKGQE3NBE2RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 013A3254D5C
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:58:51 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id x125sf3430678pfc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:58:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554729; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0q/EeIz4mIOGcEOAq6twpztXdMD5w8iZo5Y1mQ/dFIo2mQfIdDl3fHA64h2djwNHf
         iNsPGkxKxZXnDkDl8WxIpmyiyeNNVs4uXPW7ABTfGiPKGE0yacDFs/DJcrMD5/4+F3sy
         lzm8rLo2Fa0BkbdmYoy3fYAflIPxnqvwHyRhPgMoZm6zRH5K2GdWctygzEFvegDs48za
         kcyrFZGSyQl+6R2F4rjldKYjIrbXYps3APXQU5D1iUwtoOfrkHvV2816mLgM7WSOxu9H
         FyuWdpfmLCQVEcWVIpJJ1Zl8bTaVWljG69HrBPFxVU9JXdn01ai0kaN/bcuPA6/9QNbS
         0RMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Ggu6hUW1ief5coeGOZS4hk4lsRtaBxea2fmUe4oFIP4=;
        b=y1Ws33Mlr8uqBXvzmKNaLCRLd0dE+dFOpj4HwgyfOjimLPjcUCVkHP8XwpjUKMWn+E
         +dRTAQNpKeQUeuCdRcSyvCkw+l5kI3bjXSEa7q5/epQHcs9t+K2FBlZxqxK/4MX9XbAs
         mVsrFSc74Y5bvCqt6Q1iFpgLcTkzZ205k4UhBk8D3YTbjyDyn170CCn5DkkXS3VxR1tH
         ms4ZkpaLlCdbuFqPnVhJob1LyQevZ0ZycCcFdDwe6Hff16u6pQUL/ESMrN4rPRcixzSp
         czRX+Dv1PNlijA/4HlCqk3zsABa970uDk6WEBWRpcHM6D65UikitGrTKsHGkUNY6eCxj
         Vgsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vVr5/MCQ";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ggu6hUW1ief5coeGOZS4hk4lsRtaBxea2fmUe4oFIP4=;
        b=sAAl/KAqvwwkPO9D25z/tiLA7c9Tq8CqfW2ydfhqNoZNUOzZTCGuT5XTRoqC+zk991
         jDB/4VE+mOV3VMMAyzcKPUMTahqe0LKWWxdy2qauHuDPw+iSGQjoryJRrHrAPL0P09fU
         wSW/6dZ8se6XxC7bAM062N6LOat3JP0x/wTvL/ABe8bAlTppzDOu2ps1abVkyUkbeBiZ
         eHNvEiCsceAnTHvtEXa1pq8pAQQFazeB4fwK79r9re3I4wOHI09Ah+URiK25UQ8N/80p
         tefxBUWENdfmbqhsurDIJiYYoIvM1/pIzDQ+Em24FAkjXn/nkus/dqM4oDMgFt471V2D
         iVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ggu6hUW1ief5coeGOZS4hk4lsRtaBxea2fmUe4oFIP4=;
        b=KCpdiQkTmvUm5JzT8SoOxl9cPYpDI7VJ2bZFY7rln/ECcNGp6fwk0TvWdJrkPfFlxX
         TGy6/q+JwWPP172j6yxgLDdZZSHYUpARrXU2aBwehlgKBjwWZCeHh+Pbi1idLSnlZodi
         ZX6SF3zc79TQ4Nx2Q47yU6qDX2nAHjd+v6jPGc9A+e85uCBVv+Sy1hkklIK1pOKbryrU
         SyX297pUMU6jobCDDHj4R1n/loRhe7GRm2PhN89I4IpkBFJpuQBIHQc4f8FPWmUxD9mx
         DI8TT0w7Zujet2ChHKixwolNU+ETDLc9WzhM1CgNFI0MMLXtOiqKcbx8GUlQ7mEOtNvT
         yUTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Avh8BbwZRy2WbzxZttsPxABBtjwVSLPCf/ukyj65a62RKOM2q
	2BvDxTV4UOB6HMwCtsMi230=
X-Google-Smtp-Source: ABdhPJyl7NksALVJwTBaaX2Ujt3PyjXIL713PyXMsczkZBbzJ8FE0RhabQ5ZzbYSUmt3QNNShiY1Cg==
X-Received: by 2002:a65:58c4:: with SMTP id e4mr15980808pgu.188.1598554729526;
        Thu, 27 Aug 2020 11:58:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1648505ple.4.gmail; Thu, 27
 Aug 2020 11:58:49 -0700 (PDT)
X-Received: by 2002:a17:902:8bc1:: with SMTP id r1mr17654710plo.328.1598554729066;
        Thu, 27 Aug 2020 11:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554729; cv=none;
        d=google.com; s=arc-20160816;
        b=cDvu4kdbaYu3w0cJV8Uy+uGvl+e0+TgsDOmtS1GuPWLXZL9N10RTNFOqs2dTOQCtl3
         JZL3qQNulyuWfvBUHRjM5xXNgDRVlD3uO7g/OmctrGvKw6tDwrmyLEhmby5iFtEZGZ55
         zrAExPabc7GCpgchGQoEgT/ggBMPCyaoVbnT4YcQi7dq3sUjMupOphumSYLyhKQSxIRq
         hlU1RyDpWRBMm/HTHC7kUQsOOXT2G1KkA447DI2+b5nS+HEG1MfQicRfIl/dKYRC1QCL
         Q8dXgiKp462zQ4mOJQJfGMuGK+J3/6xEpzBvzG6KAD+EMd+t47fnwXzmzz3fEGiWlFxC
         u8Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mRhqqR/GITWYwaPQsUHflDD4iWcz03GcUTAPcvUbvys=;
        b=qjbvqCdE7nzIpzIxok+HAOgPGtxETWLLBIUAUeO9UtHt3ZEq/EpvUxmJ/+ufkI3Afl
         gLo2pVOLM+APbSAuj8q9nB2Hgs7FSm5yKjL4A10aTblWnFmIZqRfIyxMSgG+0xPkzabx
         DFEpuAbxU+BJAg/q7QVvpIDEz7rya2pnIKIzz7eKowrxjiqdcULfL1D6ScbF5Dmj5pYY
         OyaTXVfG/aT9RSrLp1uLdoXqTUQRAe+bSW3ASfN3E2GAeMRVsx36T+2Fjpvj8qJ3aq2s
         gaLXs9wriuux5f104h+BYdDabm2MNPNQ5snL/8Ev9CjHdMB9782OFPR2CmmQXjoJkPSa
         Srrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vVr5/MCQ";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kr1si278377pjb.2.2020.08.27.11.58.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEA4922BEA;
	Thu, 27 Aug 2020 18:58:45 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Bastien Nocera <hadess@hadess.net>,
	Sangwon Jee <jeesw@melfas.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 02/27] Input: gpio-vibra - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:04 +0200
Message-Id: <20200827185829.30096-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="vVr5/MCQ";       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Common pattern of handling deferred probe can be simplified with
dev_err_probe().  Less code and also it prints the error value.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>

---

Changes since v1:
1. Remove unneeded PTR_ERR_OR_ZERO, as pointed by Andy.
---
 drivers/input/misc/gpio-vibra.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/input/misc/gpio-vibra.c b/drivers/input/misc/gpio-vibra.c
index f79f75595dd7..13c69f173620 100644
--- a/drivers/input/misc/gpio-vibra.c
+++ b/drivers/input/misc/gpio-vibra.c
@@ -113,22 +113,14 @@ static int gpio_vibrator_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
-	err = PTR_ERR_OR_ZERO(vibrator->vcc);
-	if (err) {
-		if (err != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Failed to request regulator: %d\n",
-				err);
-		return err;
-	}
+	if (IS_ERR(vibrator->vcc))
+		return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->vcc),
+				     "Failed to request regulator\n");
 
 	vibrator->gpio = devm_gpiod_get(&pdev->dev, "enable", GPIOD_OUT_LOW);
-	err = PTR_ERR_OR_ZERO(vibrator->gpio);
-	if (err) {
-		if (err != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Failed to request main gpio: %d\n",
-				err);
-		return err;
-	}
+	if (IS_ERR(vibrator->gpio))
+		return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->gpio),
+				     "Failed to request main gpio\n");
 
 	INIT_WORK(&vibrator->play_work, gpio_vibrator_play_work);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-3-krzk%40kernel.org.
