Return-Path: <clang-built-linux+bncBC6JD5V23ENBBEUFUD5AKGQEHEPSZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5F2254D83
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:31 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id h6sf5353198qvz.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554770; cv=pass;
        d=google.com; s=arc-20160816;
        b=PkpZ042Pgq+f5PLS1l8ZUGhbA+lSSJR3fYcd7xtFLDPqQltUb1Z3XhifUvehx2KzKZ
         7c/F/EjvLBHo/3NxXr4M3lpPdLhJXKg2cWVzQSrZWfHXj6kfgxTmAe0brIEkcBG96qry
         LAL3mBGHyumiC0efB/n9iRiTcqzj7iaVK/gl97HPhpW1ZHXkt+PWhhDl6Z8Z5bX1oap5
         JT/LaEwVTvtiEv7ihk7dBIR4284Yit9p+0kRMuOo+azFBsEl4gZqxn5uUBCXse23ahFK
         VYP/cG2XmtnrLsTBSSPPAmcdPncxCoN8ljD31ZiWZxOYTaUKinIxiVmS+JdAAtKfDSHz
         qeEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=6EhdKsfbo2TG2Y7+B0Bg9/NGwvp0RmCoVFyXwGPUWK0=;
        b=W+W6331itzGdYazct43SSdeGgaFUA3EMlUt5gCjO2o3CYdtbUEms1rYeQsjoKrnuIs
         JtharHULNMtYb3w7ygoSF7XUlvXf/TSxMJaGulfyLKOmpNly8g/ywWQLWh9LWm4/6kmy
         kSjcZswuJ3lsKZ3I5tw18mfXl0NBmbwSPZRl9O6ovTe3e6FmP5irJ/XubNYl67meV2D7
         kQcKTNnbCNR4V5LyoCit/Myq7OguogDUJtAL4hE/jg5iRKIGEJ5whSn77TcOwX2LpP1L
         IBAHBQUswjaQRbn6kpDH90+oIGPz+zIwOjHxPd6mW37jNhEKndY4ZsI02B32ey3uXzAi
         xWwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aZ5SeS7/";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EhdKsfbo2TG2Y7+B0Bg9/NGwvp0RmCoVFyXwGPUWK0=;
        b=qaaKuAf+Xc0557h3P02eA8pzT40UwI4kJ77d6OQwYdrztJYPSZSZMBgAMYOJePPBmb
         8LISx+W8Dm5uHFiD3lNWUsFWsmppCmjUORKrbJvGwtCYGRTE76OqZCwzipXETuYi+LpX
         z6VlP6O4TnLNzZdk8XDTDHy7uHxTwrs9kABUFZxq4oMCWam835IbUXKW50ZCARdfwoFu
         JmsJsIx7K4ng5Uljd/sMzcnAmhcAMBqAWrHBUeeDMffYK2B0dbAS5AyzMU6yhAPLpNFd
         knHf5oItudfnAE9a5mgxIgg7K2VmDHbv1cD6CR5IYTn3m4xjmCeCI8VPV6b+c9ZDLSSK
         ji4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EhdKsfbo2TG2Y7+B0Bg9/NGwvp0RmCoVFyXwGPUWK0=;
        b=ozIsVFNfuCLeTqbVxXhtzJjGEfwBCKbu0rS6cdk5QpTagA3GDzUgZZGN6yoJFfYRCu
         n8MNYe5RnHB2oEzsCcpijxKBIz+Dtdc7NG9hEKaUnG6tLITtGyQgOYTWhhXXej0vfrg/
         BG+YyZYaRqA7OwTeX1WT01tq8NN9vrd5/YjWkmp2R3MOX0qo7UQbBsOmAZ1swGQTGQ5+
         KlWsnQvMz7Ywaruwyxu/ELdGNW/wqenmUaydW8Y5DjmtqzBdxlvosbITqY5xy4iew6gI
         6RNT7ICOv5jfBnu2FsA9dc840Ue8blMS9Q4KIOjLdUG/mTiw5nqdT4G32nAtGfK84peU
         hUgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310SFxUSjxTsUldLPJ9OUiR+8LW1MfOERDFtBwt8k9modtsyPLE
	+t09teNj2tKI0r8ewttA9iA=
X-Google-Smtp-Source: ABdhPJy9nlauRsXmKndZaYVzQsJuh19SnH5eoKkgR93HnVuuPbm5EXRAbu9isYio1YygbP8fsChJdw==
X-Received: by 2002:a05:620a:1323:: with SMTP id p3mr20749420qkj.246.1598554770206;
        Thu, 27 Aug 2020 11:59:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c9:: with SMTP id g9ls1482633qkl.4.gmail; Thu, 27
 Aug 2020 11:59:29 -0700 (PDT)
X-Received: by 2002:a37:b204:: with SMTP id b4mr20161137qkf.50.1598554769835;
        Thu, 27 Aug 2020 11:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554769; cv=none;
        d=google.com; s=arc-20160816;
        b=M468ED+iQbwu8DTbBl/IfglIgd8fKS8X9yUAi1zAm3b/xDyrMGWmrDe/qnPiO9WPQM
         i/63YQfinYvd0m2a8hmHW81oQ38HPOpI1lblMkfCJDnabZ2//2OWxzrgvF8ahrA5OJoG
         HcPirVwr7hwQo80GphHpdhsTTGJo2gthYIp2T/JPLP71ICZ+9TIvmdcjfVYJ1MC+zstU
         PbGHjjw6wR23S2lyGkzA0dl1bzYBUlQIp7oLneRvlr+cGlhj8Jz8UKSBg02UqFlARf8o
         /FIjYpONaRdjpYOjUbUCFR5UT1VG7CBMs8Ati1mrEWuzsQ8CGFI80xCHkcG0WOFi7GW/
         Rtuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=E+jtv+6ypH0sywLloS0my7bM09m/rXpvA14nwqJy7FM=;
        b=klzCV+2W9ebNTuiaHaEDproDPesf0RNYZLMBfu8WxSghljyvBa85TK4yMhWe2/TWEg
         2iJ4vwwGxSN8u4K1GZ+P0LqbkkDDzAWkd/WgzTEBIK4CohFPeXNTVw+4UASaOD7vyPr1
         5TDy+FOvDlc7B8/Vi5ckpMbl4+3Y5PMIcwGZI/3jM19D5DWX/hHlWXbLhjur5HBrgeHv
         Y2I9FzOe/BSjYetNycRk68qV5xxPp7ulHzyYJlyojTisUXkt9ZcgV8ZqpmksQQJlHcWU
         GnpO+gFL1VATudnfP0sYFQpnpzTPzbHDbEjnrmzJljYLTPBHDVlrpQBcdGFGDJAh2xKE
         VbhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aZ5SeS7/";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a189si162606qke.3.2020.08.27.11.59.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C9F022BEB;
	Thu, 27 Aug 2020 18:59:25 +0000 (UTC)
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
Subject: [PATCH v3 14/27] Input: goodix - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:16 +0200
Message-Id: <20200827185829.30096-15-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="aZ5SeS7/";       spf=pass
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
 drivers/input/touchscreen/goodix.c | 40 ++++++++----------------------
 1 file changed, 11 insertions(+), 29 deletions(-)

diff --git a/drivers/input/touchscreen/goodix.c b/drivers/input/touchscreen/goodix.c
index 02c75ea385e0..48c4c3d297fe 100644
--- a/drivers/input/touchscreen/goodix.c
+++ b/drivers/input/touchscreen/goodix.c
@@ -864,7 +864,6 @@ static int goodix_add_acpi_gpio_mappings(struct goodix_ts_data *ts)
  */
 static int goodix_get_gpio_config(struct goodix_ts_data *ts)
 {
-	int error;
 	struct device *dev;
 	struct gpio_desc *gpiod;
 	bool added_acpi_mappings = false;
@@ -874,33 +873,20 @@ static int goodix_get_gpio_config(struct goodix_ts_data *ts)
 	dev = &ts->client->dev;
 
 	ts->avdd28 = devm_regulator_get(dev, "AVDD28");
-	if (IS_ERR(ts->avdd28)) {
-		error = PTR_ERR(ts->avdd28);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev,
-				"Failed to get AVDD28 regulator: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->avdd28))
+		return dev_err_probe(dev, PTR_ERR(ts->avdd28), "Failed to get AVDD28 regulator\n");
 
 	ts->vddio = devm_regulator_get(dev, "VDDIO");
-	if (IS_ERR(ts->vddio)) {
-		error = PTR_ERR(ts->vddio);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev,
-				"Failed to get VDDIO regulator: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->vddio))
+		return dev_err_probe(dev, PTR_ERR(ts->vddio), "Failed to get VDDIO regulator\n");
 
 retry_get_irq_gpio:
 	/* Get the interrupt GPIO pin number */
 	gpiod = devm_gpiod_get_optional(dev, GOODIX_GPIO_INT_NAME, GPIOD_IN);
-	if (IS_ERR(gpiod)) {
-		error = PTR_ERR(gpiod);
-		if (error != -EPROBE_DEFER)
-			dev_dbg(dev, "Failed to get %s GPIO: %d\n",
-				GOODIX_GPIO_INT_NAME, error);
-		return error;
-	}
+	if (IS_ERR(gpiod))
+		return dev_err_probe(dev, PTR_ERR(gpiod), "Failed to get %s GPIO\n",
+				     GOODIX_GPIO_INT_NAME);
+
 	if (!gpiod && has_acpi_companion(dev) && !added_acpi_mappings) {
 		added_acpi_mappings = true;
 		if (goodix_add_acpi_gpio_mappings(ts) == 0)
@@ -911,13 +897,9 @@ static int goodix_get_gpio_config(struct goodix_ts_data *ts)
 
 	/* Get the reset line GPIO pin number */
 	gpiod = devm_gpiod_get_optional(dev, GOODIX_GPIO_RST_NAME, GPIOD_IN);
-	if (IS_ERR(gpiod)) {
-		error = PTR_ERR(gpiod);
-		if (error != -EPROBE_DEFER)
-			dev_dbg(dev, "Failed to get %s GPIO: %d\n",
-				GOODIX_GPIO_RST_NAME, error);
-		return error;
-	}
+	if (IS_ERR(gpiod))
+		return dev_err_probe(dev, PTR_ERR(gpiod), "Failed to get %s GPIO\n",
+				     GOODIX_GPIO_RST_NAME);
 
 	ts->gpiod_rst = gpiod;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-15-krzk%40kernel.org.
