Return-Path: <clang-built-linux+bncBC6JD5V23ENBB6UEUD5AKGQERKO2N2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D07CA254D6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:07 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id k12sf5131854pfu.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554746; cv=pass;
        d=google.com; s=arc-20160816;
        b=isCOgj/O83Efv0RmJBDe7We8HzGV9Ym9aUL0WJzBWb8zbx5OMTjMc7cYXSHpW/UhQp
         yUnONKrxYbwn5dhzldnyMBV/ilL8fN8yOQqWo7fHE8ya0ld25h/DjT1RMLCDEymcfTZn
         5dSMTpGnxf00dvZSWOsw2SYgKbaZWIGlWNxeGjSg7leOSmE2ymgOBGTok+QcGboIoZOH
         oINPdTibS7ZBZkVuHRH/GYBYx57z9sA7vx5/EjitphRPPHXlJiDp90W0tzAUuchjIySG
         sr2O7a4MBv9Vqn7eouqGLgPVoqjWKZA8GIalTWkC0JPiGzyUPcqQt5LfmRDWa1CXoZDK
         obmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=cm7TbBa2lAkk7g3RwB1KYsFNw7F3zWK8Mmtg6levCz8=;
        b=ZDwsZRCaHVs8EGJxhIJguvtYS+/LKA7NBcWTTK2Q5tDipgUlp6hLQKGRYtHlJRypxl
         /jPgExuK31/HZVuvhVUXFz8k1Ma4p2ob6rsRezFc9BOc106hHU+mc6x0fBrno4WxDD46
         Dsp/evKXhrLtX/3KtbsBfD5oeZFz7GaSn+sRPybU7l8QKUlRV0Vn+o1kVTRqnlrZdlkP
         IehZR2MIyI4+WkkB8nCgWmtiiJtLDoJwCgTPNDxZYSRD9v+WDkt8Ry927ahGNCli61Aq
         5bAEzg72TirCQwIy4cq3cNRPzbXedXks5dmu8WvKBWBt1Ix9JYCyjK3wyrSmJfgXsMSj
         MfHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VKiQ07/7";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cm7TbBa2lAkk7g3RwB1KYsFNw7F3zWK8Mmtg6levCz8=;
        b=FKGOqu/ruIxwlNHFVcqwo99pi09WM4YOKPyFQSZbr+G588nz8BUiqyodbbub+9wule
         yRx6BNm7YvWniN5KWr5uYa3HxUgTOG4HKr9VYedNVAX2TrMOlUB3araR6ldfT+UR8yIW
         t3e9oLKgw/OEA2YH23HNAtMa7r754I+XnkPdjWx5l0ClDpjfQPM/y0Wgi8MV5OV1sWZ6
         1cdvSh7UbknMTjdnLfMCtNM6aQV5tOt8G4L0el24bATTQO9qXsfWg6B3gieOvZms3qXP
         3x+k/KYBlQwlckm7d1XlLEfwjXrZK1q/x/ESMIZGHYgD6irFXzFVtjfFjWjtghbAK+VY
         MfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cm7TbBa2lAkk7g3RwB1KYsFNw7F3zWK8Mmtg6levCz8=;
        b=JeK6UUblYmrqQ75mQb5gRCCMxACgVL0IZ/B8tCnPymdWu0hGrSR0BMkXQtGSPj8PY/
         5B/iHal4ClqtA1YfUmvYPefmO/MH0J4kcx3pl0hC/coHizVaeWokWOlmivNo6qV54LuO
         Ce4HeVlQWV3LfATwDvOJzyTk4HEUOLKg5aJ3mBZzZGmdJhOfUyHcR6h/1yDrZIoKpcaq
         FeJPNuNaqFGcLECwPdmkO6NNveC8hppNnUK8+S5CCY9n3PR2eZrxLt8hVazgKC7K6EIw
         uW20p+8/MIF0xfHTdV5KSe6MIfd5RYD62D+yTSRmqvARhUJA8/1xTU7gl6uNF0+WALTY
         zMvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jkYo8CUnGADowRW5WlrgjqMXeumqTL/cxMaqOy7aH0ft+Y7ZR
	hSWf+bN/DJMi8H/DULplskI=
X-Google-Smtp-Source: ABdhPJyW0caFLdnHzMicItYcJyDOeNBAU9VlTpbLlFxaKb2ta+KnWUrjJ5dBe2eS2DU28HS+x+G41Q==
X-Received: by 2002:a62:d40e:: with SMTP id a14mr16527285pfh.273.1598554746366;
        Thu, 27 Aug 2020 11:59:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9296:: with SMTP id j22ls1253176pfa.5.gmail; Thu, 27 Aug
 2020 11:59:06 -0700 (PDT)
X-Received: by 2002:a62:bd03:: with SMTP id a3mr8635842pff.260.1598554745931;
        Thu, 27 Aug 2020 11:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554745; cv=none;
        d=google.com; s=arc-20160816;
        b=Lt26OdhGVcuw1WWN0i/oFMfR0dGRm7P0dHzk577h5VuJxAn269uKSPl2Xb4e4lc2sw
         /vXyXusle9eA2Gy2ByW4s4IgwLU90+5ivoolrgCTOxbIeFWXE7JfJSARVg93Rqod2oqm
         zgWE04F2DCSIeH5amjLFA1fQQNL08kZgqXUnL2wYjOUsxpzuEGPtbzIItDGgsr3nDb7r
         CYhu9h6yYxiT4mjtsZPNs9Xh/Zi322fXAFddQku2YDu9TeewKh1bw0rLd8jX2aluUVPC
         inY+ShjhZp+0Z+K5914RZjBydRknTBagwIt4dz5SDXZAlLu/ysKlCvY4E3Q35m5ARfY2
         rtVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6OXhTh5Uk/8rWlUC5cHeUSLR9FrhrbMMqyeQjgT+RVg=;
        b=sAmAlwwuiBocSWW4VovZUFGyz0tEA8fKeAACCS9kldeGNosVRRZ095/USBqjMW93lM
         iP8hGBJa/UyCR6dnVKDqQWgKPYjI71zZzJkRUG9sMDF3QsNywHYemCADcbrNUJImUuDP
         dg2UAAtgbKBnRXyoy/0mRX1uvNILny5hn/TpU3EDj7An1Lsjfm0yKfY2/wf2rfAnVefO
         BjKfJI3YvzYcmoWj6hlqvVM/IANaTIhEzIDpKd4d03GMtwEDT3C3Qxs9sbIybRZtAQ/3
         2bacaz1EIw7CMAkwRqR45DvztDeWQwrbfAMTmCI94VwPkWVYJKSXsSocxwKbZhODl4H0
         HuIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VKiQ07/7";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s14si186726pgj.1.2020.08.27.11.59.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B8E0A22BEA;
	Thu, 27 Aug 2020 18:59:02 +0000 (UTC)
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
Subject: [PATCH v3 07/27] Input: bu21013_ts - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:09 +0200
Message-Id: <20200827185829.30096-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="VKiQ07/7";       spf=pass
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
 drivers/input/touchscreen/bu21013_ts.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/input/touchscreen/bu21013_ts.c b/drivers/input/touchscreen/bu21013_ts.c
index 2f1f0d7607f8..86bd38243d6c 100644
--- a/drivers/input/touchscreen/bu21013_ts.c
+++ b/drivers/input/touchscreen/bu21013_ts.c
@@ -496,12 +496,10 @@ static int bu21013_probe(struct i2c_client *client,
 
 	/* Named "CS" on the chip, DT binding is "reset" */
 	ts->cs_gpiod = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_HIGH);
-	error = PTR_ERR_OR_ZERO(ts->cs_gpiod);
-	if (error) {
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev, "failed to get CS GPIO\n");
-		return error;
-	}
+	if (IS_ERR(ts->cs_gpiod))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->cs_gpiod),
+				     "failed to get CS GPIO\n");
+
 	gpiod_set_consumer_name(ts->cs_gpiod, "BU21013 CS");
 
 	error = devm_add_action_or_reset(&client->dev,
@@ -516,11 +514,8 @@ static int bu21013_probe(struct i2c_client *client,
 	ts->int_gpiod = devm_gpiod_get_optional(&client->dev,
 						"touch", GPIOD_IN);
 	error = PTR_ERR_OR_ZERO(ts->int_gpiod);
-	if (error) {
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev, "failed to get INT GPIO\n");
-		return error;
-	}
+	if (error)
+		return dev_err_probe(&client->dev, error, "failed to get INT GPIO\n");
 
 	if (ts->int_gpiod)
 		gpiod_set_consumer_name(ts->int_gpiod, "BU21013 INT");
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-8-krzk%40kernel.org.
