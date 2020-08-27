Return-Path: <clang-built-linux+bncBC6JD5V23ENBBOMFUD5AKGQEQKYICHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7DD254DAC
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:00:11 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e6sf3544787pfl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:00:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554810; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvfUwsSV06nqvirrwz8NJJhzjxbi6EFgncUAF5ESBluwypthnTQty2k+fXt+R93q5L
         RtzAp5QGtvzwe5eB5c+ePiGICU3KCI0JxZD7evhsEy8xaXmzNg5iqqwy0k8/cgmladt8
         sxdTLgrNNouQWTZvH/u8VxCpIBZycIh/UCZH/nF0rQOpkuimQQuKBQ5M9QMYOKHplDIK
         zv9b3dhnkm17pFgUnWS3Nn21RKhUS8fL2cEst89Q+wdF6mWKkEXWF/lRnwWgbnWfulbL
         IRp8qgg42BTwnOU1tQI8MlK3vuUUCBGXgprDM5KLVxlCVU1wPg6luacvEAd5xb+LEF7h
         am3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Hsnw3emFri7ZsH+NS/fNLlLBh2HFFSuiz7NyxW1d8/I=;
        b=sgTvFZ6XuRFU5CSL/rTfKqYqmUBGg9AYrE1/iANsNYXiRzl8JIxX4hoJkOHvRUgoST
         3XZ6y70Dy8N7mlIKPhSqWe14CtoCupF4eWWBsN8gMnQHs0BkJVhfOseA1XoFYTEyQatm
         U7bV9iqOOeiVo0S2sYoNzNEGK+G3KX4N9cFhbyY+WiBNuu/k36QUc1SQpOj66uXNvaML
         6hHp/PeF3DZTmbPjD9SaVZpWZ+Z959xYSfe51aH6ovFwKsFgUtvrt6qNOmqg1TjB8z2O
         BGo7kMfTLYxVgdzuYySzvbH3tbogReS3CSSsoRcGnZTkJXpDBrKUexknoEZcOAQeQMY6
         39Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=taTq6e50;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hsnw3emFri7ZsH+NS/fNLlLBh2HFFSuiz7NyxW1d8/I=;
        b=MLc12xJK9yYKGvmbS+/poRPJyGNGzaiRkN++h/0PS626mJ1xQx5x1B3Ol87cdPz48t
         a+YcFx5NLLbqpLh7TMfP+KVG9rhMZFcKMI9j3SiIuKmgT6yBYAYsIiNLeC4UG/SKn84K
         3uELZ5Dbyn2XvU2f/s52nBiyMs0YYTWP+5N8WkCi5nh+o/SEGhWrCR7/fUb38RIJimp2
         zqj5FTnJv4xm5sB1BV/3vJk8zbxGYw8Yv5HRQfihUE+XLkVfjUnFWsJRF4S6AfdpRw7m
         QVzUsjjU+HwVA/+ZuA005WyHCPssgUpDTNPElrMntNFy9bwP0vIF1xQ2P2gD4OiCP1OF
         lO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hsnw3emFri7ZsH+NS/fNLlLBh2HFFSuiz7NyxW1d8/I=;
        b=Eg9Gc6Hw+xCGb+288d1RF5sNJt6pTOKkjmiMF7Oet+yPHxHm0uArYRQaP1M8RJlRqL
         b96LVLAm+Ex9mwePMsbDcjksiGARDa5XQpcTA2R6WknzpUdOCqNAOKwU/LmY+9k68CyZ
         O6CRcHgXQoy5XWie7e4RU0bJOlNEJCRUADJ+8l3PCEve9UNa+MrEjiAxoyLxSF//EYlP
         cbJ5s8MtmIu0A7rTVxPBc2EEVmVcZ0bO5BgN1aQ7Ps8h+FplihrwZHm2i4HcFpLLXQPc
         WlK5wNKWn7puzMjimBjFd35/jmXdy6TLFt71PlFgTlq1YKobCCyl9SnK/BBjC1IxoELx
         8Cbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ded1ATsc9xCXCMFYWp/wgKdRINTB4kAo/4iZAaf50GnEFwInw
	6vspzxt8AFn2govkAdjgQf0=
X-Google-Smtp-Source: ABdhPJzo2cyKHkx8qJSjRx7ZoNbji/KRl7dCuDdgqX85o7KrSYr8hJ6alvL2rf+DETk4bgZhmGIdIg==
X-Received: by 2002:a17:90b:46d2:: with SMTP id jx18mr268379pjb.88.1598554810053;
        Thu, 27 Aug 2020 12:00:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls1260521pfq.0.gmail; Thu, 27 Aug
 2020 12:00:09 -0700 (PDT)
X-Received: by 2002:aa7:8c4a:: with SMTP id e10mr1551876pfd.146.1598554809547;
        Thu, 27 Aug 2020 12:00:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554809; cv=none;
        d=google.com; s=arc-20160816;
        b=rXyFjL6cgYAE3i72S/yfHL9zimy84CIFKQyHk8O7TaTHfadzXr+fmv4M+3mbE7BKV9
         OxJYSR7GHXqQ4qp+mQA07fdQF3RmoBF+jHybslfCCGrKzygZIisRC/DH/7GkhaW6AyOG
         mQbUrmcPnOQUOZtod6XfmJofkYRxfUw8XV3BbsfBacQd3YOz8MaAj+pm+4E8kby+luMW
         64f88otQlNiMA9R+hOAyH3b5wZ4BCq+uupAfY4LlXVKlzrfQrPdCpV88I4hkGk6zY0lH
         x3H3R72BqyHwBhtQBUmTA0BnjmwcY3/se41TIprb3IdgaGnLfFDXE169ZcFpvcmEWO5X
         cpvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4kg9/iWIjNEgpNQw0RlOt5MTRA2WSl8kTa8AOenz0kg=;
        b=nr16BNBNF6+oN9NVYLOLhHO8x6TuPTaYQ/iOr/U2hP3dAbkIdUOtPKf5ajqCTJIYvu
         uvb5/0plmzaZO9jbcYul7ojDIT43EQtCBPOQDkwAgNDSkObY9BkE+hQrX5u5MJnQ/lbm
         aFD2NN9+pg9efnRlV+33KrG07fO7xD0rIz5EbBzteMgWqyQnZ8jJXAmsIbMk7QwRQZ7g
         YfkXU73REE55fn9fqxeo0Dhhvz9KF0la0Z6xjsjSivYKqXgwwa21zHdcYdawf11elAjn
         mUQLdFRpsMSHPFmnzGp8GZejRlxIW3HuaaslGlLjJ3EY42B1FqHTP8V+ZuTHLC8EzpRi
         HqYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=taTq6e50;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u204si209878pfc.1.2020.08.27.12.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7497222BEB;
	Thu, 27 Aug 2020 19:00:06 +0000 (UTC)
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
Subject: [PATCH v3 26/27] Input: bu21013_ts - Use local 'client->dev' variable in probe()
Date: Thu, 27 Aug 2020 20:58:28 +0200
Message-Id: <20200827185829.30096-27-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=taTq6e50;       spf=pass
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

'dev' is shorter and simpler than '&client->dev' and in few cases it
allows to skip line wrapping. Probe function uses '&client->dev' a lot,
so this improves readability slightly.

Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. New patch
---
 drivers/input/touchscreen/bu21013_ts.c | 61 ++++++++++++--------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/input/touchscreen/bu21013_ts.c b/drivers/input/touchscreen/bu21013_ts.c
index 86bd38243d6c..f09204091ba5 100644
--- a/drivers/input/touchscreen/bu21013_ts.c
+++ b/drivers/input/touchscreen/bu21013_ts.c
@@ -411,31 +411,32 @@ static int bu21013_probe(struct i2c_client *client,
 	struct input_dev *in_dev;
 	struct input_absinfo *info;
 	u32 max_x = 0, max_y = 0;
+	struct device *dev = &client->dev;
 	int error;
 
 	if (!i2c_check_functionality(client->adapter,
 				     I2C_FUNC_SMBUS_BYTE_DATA)) {
-		dev_err(&client->dev, "i2c smbus byte data not supported\n");
+		dev_err(dev, "i2c smbus byte data not supported\n");
 		return -EIO;
 	}
 
 	if (!client->irq) {
-		dev_err(&client->dev, "No IRQ set up\n");
+		dev_err(dev, "No IRQ set up\n");
 		return -EINVAL;
 	}
 
-	ts = devm_kzalloc(&client->dev, sizeof(*ts), GFP_KERNEL);
+	ts = devm_kzalloc(dev, sizeof(*ts), GFP_KERNEL);
 	if (!ts)
 		return -ENOMEM;
 
 	ts->client = client;
 
-	ts->x_flip = device_property_read_bool(&client->dev, "rohm,flip-x");
-	ts->y_flip = device_property_read_bool(&client->dev, "rohm,flip-y");
+	ts->x_flip = device_property_read_bool(dev, "rohm,flip-x");
+	ts->y_flip = device_property_read_bool(dev, "rohm,flip-y");
 
-	in_dev = devm_input_allocate_device(&client->dev);
+	in_dev = devm_input_allocate_device(dev);
 	if (!in_dev) {
-		dev_err(&client->dev, "device memory alloc failed\n");
+		dev_err(dev, "device memory alloc failed\n");
 		return -ENOMEM;
 	}
 	ts->in_dev = in_dev;
@@ -445,8 +446,8 @@ static int bu21013_probe(struct i2c_client *client,
 	in_dev->name = DRIVER_TP;
 	in_dev->id.bustype = BUS_I2C;
 
-	device_property_read_u32(&client->dev, "rohm,touch-max-x", &max_x);
-	device_property_read_u32(&client->dev, "rohm,touch-max-y", &max_y);
+	device_property_read_u32(dev, "rohm,touch-max-x", &max_x);
+	device_property_read_u32(dev, "rohm,touch-max-y", &max_y);
 
 	input_set_abs_params(in_dev, ABS_MT_POSITION_X, 0, max_x, 0, 0);
 	input_set_abs_params(in_dev, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
@@ -455,14 +456,14 @@ static int bu21013_probe(struct i2c_client *client,
 
 	/* Adjust for the legacy "flip" properties, if present */
 	if (!ts->props.invert_x &&
-	    device_property_read_bool(&client->dev, "rohm,flip-x")) {
+	    device_property_read_bool(dev, "rohm,flip-x")) {
 		info = &in_dev->absinfo[ABS_MT_POSITION_X];
 		info->maximum -= info->minimum;
 		info->minimum = 0;
 	}
 
 	if (!ts->props.invert_y &&
-	    device_property_read_bool(&client->dev, "rohm,flip-y")) {
+	    device_property_read_bool(dev, "rohm,flip-y")) {
 		info = &in_dev->absinfo[ABS_MT_POSITION_Y];
 		info->maximum -= info->minimum;
 		info->minimum = 0;
@@ -472,50 +473,46 @@ static int bu21013_probe(struct i2c_client *client,
 				    INPUT_MT_DIRECT | INPUT_MT_TRACK |
 					INPUT_MT_DROP_UNUSED);
 	if (error) {
-		dev_err(&client->dev, "failed to initialize MT slots");
+		dev_err(dev, "failed to initialize MT slots");
 		return error;
 	}
 
-	ts->regulator = devm_regulator_get(&client->dev, "avdd");
+	ts->regulator = devm_regulator_get(dev, "avdd");
 	if (IS_ERR(ts->regulator)) {
-		dev_err(&client->dev, "regulator_get failed\n");
+		dev_err(dev, "regulator_get failed\n");
 		return PTR_ERR(ts->regulator);
 	}
 
 	error = regulator_enable(ts->regulator);
 	if (error) {
-		dev_err(&client->dev, "regulator enable failed\n");
+		dev_err(dev, "regulator enable failed\n");
 		return error;
 	}
 
-	error = devm_add_action_or_reset(&client->dev, bu21013_power_off, ts);
+	error = devm_add_action_or_reset(dev, bu21013_power_off, ts);
 	if (error) {
-		dev_err(&client->dev, "failed to install power off handler\n");
+		dev_err(dev, "failed to install power off handler\n");
 		return error;
 	}
 
 	/* Named "CS" on the chip, DT binding is "reset" */
-	ts->cs_gpiod = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_HIGH);
+	ts->cs_gpiod = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ts->cs_gpiod))
-		return dev_err_probe(&client->dev, PTR_ERR(ts->cs_gpiod),
-				     "failed to get CS GPIO\n");
+		return dev_err_probe(dev, PTR_ERR(ts->cs_gpiod), "failed to get CS GPIO\n");
 
 	gpiod_set_consumer_name(ts->cs_gpiod, "BU21013 CS");
 
-	error = devm_add_action_or_reset(&client->dev,
-					 bu21013_disable_chip, ts);
+	error = devm_add_action_or_reset(dev, bu21013_disable_chip, ts);
 	if (error) {
-		dev_err(&client->dev,
-			"failed to install chip disable handler\n");
+		dev_err(dev, "failed to install chip disable handler\n");
 		return error;
 	}
 
 	/* Named "INT" on the chip, DT binding is "touch" */
-	ts->int_gpiod = devm_gpiod_get_optional(&client->dev,
-						"touch", GPIOD_IN);
+	ts->int_gpiod = devm_gpiod_get_optional(dev, "touch", GPIOD_IN);
 	error = PTR_ERR_OR_ZERO(ts->int_gpiod);
 	if (error)
-		return dev_err_probe(&client->dev, error, "failed to get INT GPIO\n");
+		return dev_err_probe(dev, error, "failed to get INT GPIO\n");
 
 	if (ts->int_gpiod)
 		gpiod_set_consumer_name(ts->int_gpiod, "BU21013 INT");
@@ -523,22 +520,20 @@ static int bu21013_probe(struct i2c_client *client,
 	/* configure the touch panel controller */
 	error = bu21013_init_chip(ts);
 	if (error) {
-		dev_err(&client->dev, "error in bu21013 config\n");
+		dev_err(dev, "error in bu21013 config\n");
 		return error;
 	}
 
-	error = devm_request_threaded_irq(&client->dev, client->irq,
-					  NULL, bu21013_gpio_irq,
+	error = devm_request_threaded_irq(dev, client->irq, NULL, bu21013_gpio_irq,
 					  IRQF_ONESHOT, DRIVER_TP, ts);
 	if (error) {
-		dev_err(&client->dev, "request irq %d failed\n",
-			client->irq);
+		dev_err(dev, "request irq %d failed\n", client->irq);
 		return error;
 	}
 
 	error = input_register_device(in_dev);
 	if (error) {
-		dev_err(&client->dev, "failed to register input device\n");
+		dev_err(dev, "failed to register input device\n");
 		return error;
 	}
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-27-krzk%40kernel.org.
