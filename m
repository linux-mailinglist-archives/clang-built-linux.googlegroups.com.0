Return-Path: <clang-built-linux+bncBC6JD5V23ENBBJMFUD5AKGQEN4NIZII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E52254D93
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:51 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id t13sf4674872pjd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554789; cv=pass;
        d=google.com; s=arc-20160816;
        b=hPYyxASzTdC5RCU6e8uJDeDvGihMF3yd2clj+CRe8bjS99bxAwswdDetU9cN9Bh7rM
         086cg6Eb7iyi1WIESdaR2vo/6uThKd34jAkSAAvreX0RsmR/UuheE1gwlhxk+PDidgqr
         KJMEfVXgJSRhyi+y2NHtPC08KpCO93Mv0sF2RsXuKdsp2ZSsyFlGp5ed8mqbwfN99hcL
         Z+KRfwS0VeF6HPC7jnFo0DthzhYazMnAkImjiENq4DHOnoe8SIqLi435mXICo53p2Hbn
         72qo2pK1JwFdYDC7P9ErST6hMZHZGnQYtGlGNfnIqBF63DK7peMAPypmXVoFHTTti2So
         Y3Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=VmNNhgBgZ4FSh0YC8MaDeQ9zZLaPcOykxZw54msnKQo=;
        b=PXuX7y4aDEvcxD7nQ0AGRp3dRzTIfQS/hexpEOs3GBge8HPZHfZYeb+lZD3ggyLgou
         vfdNum/IRctm4wbtuvWbUqVu1BXDG7oEnU8uyrOvCY4X9RCQL2OWwzaxX37lTKmOjGBs
         0IyHhjMdk+Hp2kMJCzdcJE2LzNvOFnYJeHKu4Xa5Pc8mu/Jn5QllZQLZQ8elvS2qmAT3
         MRMKMzOSddpucc52LM6Yhx+F7UOEva5r0SCO1M8p+EMUrjxgkWNkBCA+wALAiBRHkMyC
         NelKQ9MTda+rHXWkoBTv2g/OoNdj6Dptw3pZ16IdpqCINbh9+xxdt7ecWhadbRZwvtNt
         M0AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BkU6N7hm;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmNNhgBgZ4FSh0YC8MaDeQ9zZLaPcOykxZw54msnKQo=;
        b=ZZqHCrFBoCCLTFuiIZHMqjPEIXdvHsFZj21sUPeD9m7q9LaBBsrBTZL5n00PjDPUgY
         GW4Uo7slPZ2QmmbklOQFJmK0FQOphGDX6/Dds1GTylk2BTXsJc0ijAtZf0MZPAaD2B9b
         EXx9Jmws0LslDqZ2TxYxrUmJhlotRF62w2qt4xN/0dP9rqp1QSxAJ224L0gDnplBM0cm
         UJgsYB8hOlHdaSa8DFwlNZA1qNbBUjmifNb9ljB1y5+9knV9bKOl5pJG3ZlmX6xKSu/l
         lEj7kfXt6o/O4JJtnWA2ATO0sqvs16zJ/1JsKmBrmHMSpZMi6mrMzjgOcLl0DEGTuCdD
         +V1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmNNhgBgZ4FSh0YC8MaDeQ9zZLaPcOykxZw54msnKQo=;
        b=pnx0Wl0k2aaEK/kPXE3308etJSxXyPEB/+TCnP4qKZsqkM2fYGcmvi9RaOEitHZ18Q
         5gFCC+l7lLpu1rGOASTyKbEev7LNpjoTnZ6vgzxDT5Dzp70KGnHNO3PZ3nkZoMBufB2t
         uVjwNRlCoH3atqowAUUkZ9Hcdvs5MTQdVbBOl8Ele3kexoe/z1rfHNHkiuUBGFujoeWl
         mQvmScfrQ6FOAH/gvPNDsmTWMydJNjy5q6l6sLigDukokMzrFS2/mJJuw6ZZzCYt3K1L
         ONhTfJmC/Lv81/3QOG1PzEjhxVm2Ii9AsuxSZc22o4nD5DiZdnV5KSHP32phoylck32g
         j4+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tSBh0Mf96IwVP7+grWYKOmFw+fUUzn6kprPRBCsJFd5WJrNas
	V4pBnIRt5elceRJlvPJKhu0=
X-Google-Smtp-Source: ABdhPJxo8i5HQo6k94qRwuZ3k4IyH4mocOSNkWDJNm05ifuZger1ouvM0EWv3G6cxvajFiHbKRaXTw==
X-Received: by 2002:a17:90a:ba04:: with SMTP id s4mr244329pjr.3.1598554789742;
        Thu, 27 Aug 2020 11:59:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384f:: with SMTP id nl15ls1345695pjb.0.canary-gmail;
 Thu, 27 Aug 2020 11:59:49 -0700 (PDT)
X-Received: by 2002:a17:902:9883:: with SMTP id s3mr17436658plp.271.1598554789245;
        Thu, 27 Aug 2020 11:59:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554789; cv=none;
        d=google.com; s=arc-20160816;
        b=ySWJ9mV0qBrYxWe7h7DE9j4GTP1GmHwI0rqzK5f79PnOCg6DFa+xlPtJfw4Dd45p7r
         R1mnRbVC8WJOK/t3NKOEXPdsNt0urTcUrYV9YYn7cSFeMhwmoSAOrcuYwDF5pknlRDW2
         PVkJqMtW0Zz1MP1RtMG+Io2VJa0qbV/aHT/kEIsPR21Qsit1LDvcedbfaMh+DOVSwgFR
         1TRinpEh5Lwn21pJnmFbHmEH6D1I1kFKyg7FY+/Q6Arc2HcSEG7H4w41qbxSsne0GN/O
         aMKu0xkqtqp3PweVwUJbblRU4doFDDjHH4my31l6bAWUZngjouJ5HmcZaAfPihG3tXI1
         hZZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+8cQjtInNKrB0FzpmjTfJkw1RLfNwEKz5CPSztRsXiE=;
        b=xG/fhBpOF6rsn/Vxbo1T42OYYEE6eH4A8c6w0I3nnGSfErEB+5whN/9vDAyXdn2A/s
         0NjnlV1iMHMHtx1s4dMgbQJDB84ZVg60J/Bz3JjFT9033h2gFnVIY2wagmG89a3dpVb1
         y1Ow6ZM9NokHzb+m64w3g7k4yDuMJKUD2Q7JHP/sEzm9Cfcw6hJpndGDMNTzX3VP42qu
         vyTDqFaxXR+a78ka7Tnoceyl3c+DhRlz3kbWEmnatJ86P9KRcwOEjPk9RuFSdNgq0Y5Y
         vi/19MpQOTdI8sRvjdBfhUKpgYbI6Xi/fovlXFXdSSIgkXlbmgo88L7FttJDidaGWWPE
         5XYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BkU6N7hm;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t13si205589plr.0.2020.08.27.11.59.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 17D6B22BEB;
	Thu, 27 Aug 2020 18:59:45 +0000 (UTC)
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
Subject: [PATCH v3 20/27] Input: sis_i2c - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:22 +0200
Message-Id: <20200827185829.30096-21-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BkU6N7hm;       spf=pass
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
 drivers/input/touchscreen/sis_i2c.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/input/touchscreen/sis_i2c.c b/drivers/input/touchscreen/sis_i2c.c
index 6274555f1673..348a2ba9b7c9 100644
--- a/drivers/input/touchscreen/sis_i2c.c
+++ b/drivers/input/touchscreen/sis_i2c.c
@@ -311,23 +311,15 @@ static int sis_ts_probe(struct i2c_client *client,
 
 	ts->attn_gpio = devm_gpiod_get_optional(&client->dev,
 						"attn", GPIOD_IN);
-	if (IS_ERR(ts->attn_gpio)) {
-		error = PTR_ERR(ts->attn_gpio);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get attention GPIO: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->attn_gpio))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->attn_gpio),
+				     "Failed to get attention GPIO\n");
 
 	ts->reset_gpio = devm_gpiod_get_optional(&client->dev,
 						 "reset", GPIOD_OUT_LOW);
-	if (IS_ERR(ts->reset_gpio)) {
-		error = PTR_ERR(ts->reset_gpio);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get reset GPIO: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->reset_gpio))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->reset_gpio),
+				     "Failed to get reset GPIO\n");
 
 	sis_ts_reset(ts);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-21-krzk%40kernel.org.
