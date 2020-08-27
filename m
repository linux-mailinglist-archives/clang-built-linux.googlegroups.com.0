Return-Path: <clang-built-linux+bncBC6JD5V23ENBBG4FUD5AKGQEXDFPHDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDC8254D87
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:41 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id a14sf8562939ybm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554780; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnZ0iZMfjHH5IiYyK0trOfNr6TL/oboY8bWBShvJ2CBDobXcLFEUuAbYVLvOahkjJm
         JN1433u8Ml9HwBi4X2RfNfbT934czNtRCXjNOn8QNNK2ArDHNHZSrWNJ7oqYQsQIz5+w
         umolUIo7BNvZctkW3nAVDUvO6y6BkO8ZMQa7sYnLXZuNt48GeGYKlJA1ydt55YXhHrii
         EFrEQ0SWnR6cmFWGorplyQ8z8ES/63029cShLhooig3cgydvsQtpz7631a2E1hAWpQEt
         sVsZrxmBs09sI+TO8eePiyUnMOQhnn5m8cveXt7BkJia8tuRGcFywFMXkrqJyIe5AqXo
         7QKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=U8Pe/D7BYsdGb/n3ex/eOsSL7aQer+a0dEkq4YXG528=;
        b=h7bmh18Vjq4vL4pCqPi1G+5az/vu4mfJVs75wiGGJBZR2j4UFpaQzn0LZoFuyu2eZJ
         BQ0onSNAVb7MpEy0y6UnaZm1ZeBTya07w3dgBLpFNlN75C3zOjymZi8uB7cZQZktDj06
         zigCqUXdv9co9XrGjTYMYbwZuuWKdadPSZT9HfnCpA6uanByczsJ+IXF5zl/6fl048Zd
         +jcN9N8t5g9mFoh/wTrb1QNvfx1gTIgY9+nXJH4xwcMouSRS0l16ED2M9MTKwihWbOpT
         OHttCqLa6cB1cKPWQXbNoRAxL1WrKVBNbRjqgyESEjnGTfGRR8gQt9SG8u1GuZKq7lUa
         0Txg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tmzbWQbT;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8Pe/D7BYsdGb/n3ex/eOsSL7aQer+a0dEkq4YXG528=;
        b=Cg/6UVfL4GE2A2zUg+zupkAaOKAfUrtYCYKqErEV6/1+xwfzAi+EFyY8uRFa3YLTeK
         C9/L9Zl9pvWsJxG6GRnPPuEmLS5r0iMhiz25CeL4mfvqOzt44QYoFVrnCGoWBBYuf1Di
         MBDYdA5G4X/bVGest4bZeUM0zgR/zLiuBmaj/6N8azo7/eUFf1+lUiIVzIUKrfgA53op
         JW2ZIdwRcZwCOLG6YqqqVfDL+Qb1kN1wIAnHe0vlArZXplqhYaj+7SUPO1FRK3asTIMm
         cZjV1nDeN3FtC6SXzWFyg++WtZfPhgcvlWfxwSxdCX9jZZft/DEtmUMx317xIxIFXQrr
         Qoqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8Pe/D7BYsdGb/n3ex/eOsSL7aQer+a0dEkq4YXG528=;
        b=F4fXEaNzig6Ux9R6sUCDeFOTAE9TfwtK1PPco9xFWJeEfLDF+wAQw1IzgXDzKaygtE
         5Qol2kB4K24wlwBK4KOoEUfwVD0YO4S9mgedX0Fm2LoPx5jSdYh/CQ8xuF644cY+FuA7
         wuqkDjSgTipI8oH0KkSN+CyhEeJgpLGuHj+gTK/e9iUSGayOFem3F/z7tiNnLyZuJxra
         HcaH51oht9Sz89kbPhxDlXfnOFKtMTk/sZyze0g4UvbLk+kmlQEqjMzoadoHCuwY0R1m
         SIoxDghqwZ1N34uHuy2zdoZeJ+xPxwfjF2+XP4y9SmvpWFF2fYXgpzgHPL9wKR90bunZ
         5hlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GZ+87sSS54ppBrrsdNCZ5x2tZw8QPp/fQIghWbZ4DKVo7YbBB
	qi2FBAMCULpArN62F9JnW1k=
X-Google-Smtp-Source: ABdhPJzGQJnG5qSvxTti7XZ1shR8tRctuV2wnr61bnqmY3u5tM37HYZVqZgqJHtsaWlwJObwPCx4jg==
X-Received: by 2002:a25:d98f:: with SMTP id q137mr27698053ybg.480.1598554780107;
        Thu, 27 Aug 2020 11:59:40 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cace:: with SMTP id a197ls1438134ybg.11.gmail; Thu, 27
 Aug 2020 11:59:39 -0700 (PDT)
X-Received: by 2002:a25:d74e:: with SMTP id o75mr8144603ybg.50.1598554779792;
        Thu, 27 Aug 2020 11:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554779; cv=none;
        d=google.com; s=arc-20160816;
        b=E8AenTxXcji+hvBUpuWgi6Lfl7CqBDtT89+sgRJi/msB4LGf4tJLuDAl/sU4kiIRGD
         sy4pPo3JolSbBYdERvaBb7nWmvXiJcDSnkqR8W1WpQO430UbMPv1Md9FzTQO6qJz1niJ
         To1bdli8N9a5YmsuNCcYU5pcCsBmKwJKPbS63vGf50EteIAae5y+LnivPWGFvRq8f110
         r79ZyP6c3zEga8yy/IE32Xmtrolsyw4FuRbEooL5KNPEekBdOevKpI9vH9/roDkcL9aX
         PL6Ffo9i3dN/zudCcwvtoz3B7XMIRzDM31xO4iaT6c7dES7Rk3v9vD/ZT/oudxObKwE1
         j06A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Rr+Jmhpo0sAAd0ui4tCEe2Ig7AqRrHkq+lWAYH61I9M=;
        b=dYhH4wQKLopW2dOPOPew+h99zNrKn/NrGHi7mK2dhibkzt66SMvG0/BgC6YkCQvJNa
         9HSV9pAN0UDS5Vh80MhIru6Z5jIuiNwfDrA+s+MxTSbvIPKT1CHzngkc7S+a2GVCBSq2
         vkPGXSGW0xxIcgWGHaLq2izTNm9dN1cVlD9rVVvHTWKcbLyEyDHctizAu9zNTOveZyDO
         jeMtb7dfCloKvzqcI6ufc4FqeATCrsHC7d5gnz6FZAow9cUx3/Fa+Vlur+IKVciUrqfS
         myC8Y6q70yHgdkhhBbuLcCHqzFzO5qPtIVAx2p+cQ0uVxwxAYsAbo6HwBbV1C5dA3hMP
         reNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tmzbWQbT;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m193si232394ybf.1.2020.08.27.11.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0E09B22BEA;
	Thu, 27 Aug 2020 18:59:35 +0000 (UTC)
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
Subject: [PATCH v3 17/27] Input: raydium_i2c_ts - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:19 +0200
Message-Id: <20200827185829.30096-18-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tmzbWQbT;       spf=pass
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
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 drivers/input/touchscreen/raydium_i2c_ts.c | 30 +++++++---------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/input/touchscreen/raydium_i2c_ts.c b/drivers/input/touchscreen/raydium_i2c_ts.c
index fe245439adee..4017775f6466 100644
--- a/drivers/input/touchscreen/raydium_i2c_ts.c
+++ b/drivers/input/touchscreen/raydium_i2c_ts.c
@@ -1015,32 +1015,20 @@ static int raydium_i2c_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, ts);
 
 	ts->avdd = devm_regulator_get(&client->dev, "avdd");
-	if (IS_ERR(ts->avdd)) {
-		error = PTR_ERR(ts->avdd);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get 'avdd' regulator: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->avdd))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->avdd),
+				     "Failed to get 'avdd' regulator\n");
 
 	ts->vccio = devm_regulator_get(&client->dev, "vccio");
-	if (IS_ERR(ts->vccio)) {
-		error = PTR_ERR(ts->vccio);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get 'vccio' regulator: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->vccio))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->vccio),
+				     "Failed to get 'vccio' regulator\n");
 
 	ts->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
 						 GPIOD_OUT_LOW);
-	if (IS_ERR(ts->reset_gpio)) {
-		error = PTR_ERR(ts->reset_gpio);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"failed to get reset gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->reset_gpio))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->reset_gpio),
+				     "Failed to get reset gpio\n");
 
 	error = raydium_i2c_power_on(ts);
 	if (error)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-18-krzk%40kernel.org.
