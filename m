Return-Path: <clang-built-linux+bncBC6JD5V23ENBBPMFUD5AKGQE7FNDNBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A094254DAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:00:15 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id y7sf4964999ilm.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:00:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554814; cv=pass;
        d=google.com; s=arc-20160816;
        b=idkfrU+5iIEXmP+4pHiOoC0wXmNb1xWpU+eOIFsnkDzESgkErZuoFscnMGk7Na8f4a
         Q67nEZpRPDzIXcs2iLpQZUhNb8XJ+NoWCVZ7Rai163gXfXFhPn0/odyrLIrtTB/g4hqI
         0V/zsX4e3NGShE53zTEcibknn/94XBskoEUzp952+lu6D2xpVK5LxtLwFo32H91vhdb5
         m9mT57fsjeH/8wC3tAjJSiqawRtNrqVSk3W52gV/Q3Oavgqa0oxa8D6FQpO4mjpVonZQ
         8YTaSzrKmSmzrtxdaJBsTwHN4jOB/OF3HiIyVdB1VjfkbQ43VBIMqzmg8lDhbO8QYjR3
         GnXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=GlRF7QFj2EpUPJcfrzIfOxfiyoJgniBi0cHXqk9dCvU=;
        b=uMdXrFOINFKZ1Y+0Lfs2kNVyJqmuV3eMa4PPCbzCWxszlc1kvKuBqtx12zkWkHvY4p
         5uigE0C+8UwRXSPKZWKtz0Wqsslo8KM4/E/EOC8ZVE+3vSX5EjH2d7cQYvJFz7mlq8Um
         EeWBM/7QErzybmlKxtbFmX5pOHHrZj8WpeTe5an0S/20rrWlMojdJ/wwmNo0r5+ZdP7D
         kHWSOXso7enNE3g7UuU0sGrjSvBCeGhBS80hKFlpaxivRtn2Hhg6s0KFB91LrNUUhCYu
         bbj2aqXqZCDwn9/HK0wyKQ1k3rgKyyByigzzvBnrhXCoh0+PXY4Eviqh9Fg9dORLJwCG
         T18Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pXxgyKUd;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GlRF7QFj2EpUPJcfrzIfOxfiyoJgniBi0cHXqk9dCvU=;
        b=mARuqDehrzfg2hsqScTjzGgwrX5RHCLbwad+93IqMCtfFXGVxj9bxQKP9MhnPGGyhe
         2x84abWJTD1ylN/diG8XOV4F0nI2NGUwdzbzHAdHjMTiy//xfDcu+H/Jq5eaiiFN0kBP
         Vfz7OV/a+NegFm5a9ZrsWG73o/dY2mjQHWqdGrfNyHfB4B7nPWbNjehg/3dWPG+JPT8A
         fAZVz4ZolmL+UK1i59MsFB2HpZQUY+aziRkGGJxCLGlqxHo5HALB7r26CElKLDRnMi20
         55Z12/MQfRcM62Ihsa0dfxxzzjyzoB11zQkf3a8dixtQGTTdJicuwGyS+FEdYmpcJ3aC
         NEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GlRF7QFj2EpUPJcfrzIfOxfiyoJgniBi0cHXqk9dCvU=;
        b=T/1AMNdNuHvhzGahINnDbX88/ga6ftHwcOcvjrZylDlfK17NWlSBnQoFYTQzg1Lsha
         LRXrryYAbkJ14MIrJrIdVCkkGvUy84qV3QIHBY3Ye8J6L5B9O3r6K8Zc+ZsjcWhL6g//
         6wC3lx+fEWon9x4D8Zns//xYQ190o3AzIgmG9Gt0gHs67RUNd+I5uJv/+JjXzigZ34Pq
         txAKr5kTlaoFihxrv+sjlpA8LjZtrAeGH/QAj6VN/uLKFUvhrskpjIyqkcgcWryQnMvu
         i9ynP6zMjMb0DmtUOfGR+6QJy5rOAURtetzfuiBNmnn//ZHUe4PxDbqvndAYzOc/QdRJ
         AaxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zfk4zmvZRISlXvloAk+1txlMXot5cLY7QLoE9VseFbq+YJdOC
	QZXaTaJ1PRp3VcL/2zCQGb4=
X-Google-Smtp-Source: ABdhPJzIj3ceiJuEPy5fE5pd/ZD4YGnfdBfIUhckigLIpOjVI6FzNghsT+cHhxtJFFHPEHmNXrwlmA==
X-Received: by 2002:a05:6e02:1107:: with SMTP id u7mr18592855ilk.165.1598554813717;
        Thu, 27 Aug 2020 12:00:13 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:220c:: with SMTP id l12ls232167jas.6.gmail; Thu, 27
 Aug 2020 12:00:13 -0700 (PDT)
X-Received: by 2002:a02:852c:: with SMTP id g41mr21250216jai.58.1598554813401;
        Thu, 27 Aug 2020 12:00:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554813; cv=none;
        d=google.com; s=arc-20160816;
        b=bveLyYftg6NDpJ1H+Igs7/iP8RdbuntDUKReBH5r4OX4AktqVibNKlZ7Xs8F1/YNNu
         ppHvQkDRarihz0bBX+bB6ucA68+zKxTKVEv9w8TQISnLEB8ML0TuNU07rmfMj/qRldoZ
         TPnKAvNHs9TOFHfMHOg55M5zbIhtD9Y0afRiqJjM7Pj9UpCMR/fhOn2S2lGH42jISM4j
         uUVdYve2jVvaPWQ6STSUDQtoDgyJk4IqTYRyZ4kJ9PDJ4nUOjQ2Y8N0lov/omonMHWd+
         a2ZfeTyCzTBs7eZS3snKO9xN+Th5NErcFe89QbZcVIrYEOJr/VXLXbRgHLNut/d376qt
         1GDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0vp+mIlNeGCvCcwtvve8w8hwlIij+zp+62E6YW1anOA=;
        b=09pKciKX6JPOwV85IJC6sWyCOgmm39KV1Hgt6vh+vAqt3/wYlNMWaKBPLzB0ObCCRA
         UoxhyfTyVE0yh2zwGz6ACFNWfgGO/TuQHS+gpU1GIgL6QcI2/5GG3uZdumP5op1SR9H2
         oy9+nLpPntfpjrswg6zJ0dLb5BJ8pEDzolwll9BCdBCWpmLuvThXYZGLhppFgyE30OFa
         u4BbAkbgF3l9FuXY2L3e85eDR0f5njgOELrMNTgWNN2TJOHnRTziObF/AX88bfPnZp3E
         K5bX+4hjzGocP8Qv3ldTg8eCeu9tmacOdCtjGAWywav/souSSlqFq133AVXY4S0M/IGJ
         lvDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pXxgyKUd;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si133133ilh.1.2020.08.27.12.00.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:00:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BDBBB2087E;
	Thu, 27 Aug 2020 19:00:09 +0000 (UTC)
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
Subject: [PATCH v3 27/27] Input: bu21029_ts - Use local 'client->dev' variable in probe()
Date: Thu, 27 Aug 2020 20:58:29 +0200
Message-Id: <20200827185829.30096-28-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pXxgyKUd;       spf=pass
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

Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. New patch
---
 drivers/input/touchscreen/bu21029_ts.c | 37 +++++++++++---------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/input/touchscreen/bu21029_ts.c b/drivers/input/touchscreen/bu21029_ts.c
index 96c178b606dc..78e256254764 100644
--- a/drivers/input/touchscreen/bu21029_ts.c
+++ b/drivers/input/touchscreen/bu21029_ts.c
@@ -334,6 +334,7 @@ static void bu21029_stop_chip(struct input_dev *dev)
 static int bu21029_probe(struct i2c_client *client,
 			 const struct i2c_device_id *id)
 {
+	struct device *dev = &client->dev;
 	struct bu21029_ts_data *bu21029;
 	struct input_dev *in_dev;
 	int error;
@@ -342,37 +343,33 @@ static int bu21029_probe(struct i2c_client *client,
 				     I2C_FUNC_SMBUS_WRITE_BYTE |
 				     I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
 				     I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
-		dev_err(&client->dev,
-			"i2c functionality support is not sufficient\n");
+		dev_err(dev, "i2c functionality support is not sufficient\n");
 		return -EIO;
 	}
 
-	bu21029 = devm_kzalloc(&client->dev, sizeof(*bu21029), GFP_KERNEL);
+	bu21029 = devm_kzalloc(dev, sizeof(*bu21029), GFP_KERNEL);
 	if (!bu21029)
 		return -ENOMEM;
 
-	error = device_property_read_u32(&client->dev, "rohm,x-plate-ohms",
-					 &bu21029->x_plate_ohms);
+	error = device_property_read_u32(dev, "rohm,x-plate-ohms", &bu21029->x_plate_ohms);
 	if (error) {
-		dev_err(&client->dev,
-			"invalid 'x-plate-ohms' supplied: %d\n", error);
+		dev_err(dev, "invalid 'x-plate-ohms' supplied: %d\n", error);
 		return error;
 	}
 
-	bu21029->vdd = devm_regulator_get(&client->dev, "vdd");
+	bu21029->vdd = devm_regulator_get(dev, "vdd");
 	if (IS_ERR(bu21029->vdd))
-		return dev_err_probe(&client->dev, PTR_ERR(bu21029->vdd),
+		return dev_err_probe(dev, PTR_ERR(bu21029->vdd),
 				     "failed to acquire 'vdd' supply\n");
 
-	bu21029->reset_gpios = devm_gpiod_get_optional(&client->dev,
-						       "reset", GPIOD_OUT_HIGH);
+	bu21029->reset_gpios = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(bu21029->reset_gpios))
-		return dev_err_probe(&client->dev, PTR_ERR(bu21029->reset_gpios),
+		return dev_err_probe(dev, PTR_ERR(bu21029->reset_gpios),
 				     "failed to acquire 'reset' gpio\n");
 
-	in_dev = devm_input_allocate_device(&client->dev);
+	in_dev = devm_input_allocate_device(dev);
 	if (!in_dev) {
-		dev_err(&client->dev, "unable to allocate input device\n");
+		dev_err(dev, "unable to allocate input device\n");
 		return -ENOMEM;
 	}
 
@@ -394,19 +391,17 @@ static int bu21029_probe(struct i2c_client *client,
 	input_set_drvdata(in_dev, bu21029);
 
 	irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
-	error = devm_request_threaded_irq(&client->dev, client->irq,
-					  NULL, bu21029_touch_soft_irq,
-					  IRQF_ONESHOT, DRIVER_NAME, bu21029);
+	error = devm_request_threaded_irq(dev, client->irq, NULL,
+					  bu21029_touch_soft_irq, IRQF_ONESHOT,
+					  DRIVER_NAME, bu21029);
 	if (error) {
-		dev_err(&client->dev,
-			"unable to request touch irq: %d\n", error);
+		dev_err(dev, "unable to request touch irq: %d\n", error);
 		return error;
 	}
 
 	error = input_register_device(in_dev);
 	if (error) {
-		dev_err(&client->dev,
-			"unable to register input device: %d\n", error);
+		dev_err(dev, "unable to register input device: %d\n", error);
 		return error;
 	}
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-28-krzk%40kernel.org.
