Return-Path: <clang-built-linux+bncBC6JD5V23ENBBLEFUD5AKGQEOH37P6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C62254D95
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:58 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id d26sf8657298yba.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554797; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRzdLU0SOn4XwNecpaQ1IrNCzQ2L0Dgl1kS2wnj8NVi4Ig5U5Np7MOo/3mkxHDcrIK
         T4fQhX6qn2mhoXhVoWpiZl31MLBCkUpG5+p7RN7Y781md2d5t0w4ksaAvh1jQ8OwP1b5
         rMGPnW7zIdsfu79h4BVy/m02EBOS+2CbrFk3fs4H02sRvc04TO5nplrKk/ur5v+2xSy4
         XZBIsfdwzTyzmlFsHhgx3F4Jwu4AAQHJNTbgLsMUAS+cqZiZOJsg317Zap3Euwhdmp+c
         QpJHVWOIEOeW+Vs4WGKqaxjzhcDcLEOVmDmjHknCbpkwu3HocHCC7oirqshDr6PLpZyD
         ZaYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=qFfVSD0f02U+ZxFeLB+MpP2m3c5DN1OgN+KlHJ6wLc4=;
        b=eDxO9UPStPHof2+tl0C+d1bZVBof57eqPIm9T85rtfeTucGR5UWF6RS7RnGAIGaSAR
         xFfmYtrc8ES5FgxH245pYQwF6INEpeft002+g/BPZsJMbr1k1PGDvdsZ7hmSkd27uvcA
         0ti50WaxwHRAEDXB3/e+HxDS6W/qFQZhFyGOvNe+YmH3ncW+axkMK0K99j00BznSAiUB
         v0jO6Nxlgbl8ZjY7l/2ZnPnuGvio8gtIcqVrnRgxhpiLsQAnmMy0gyN6iIFCsz1eYuFl
         9oWn+uqwifZ8qxraVxWRr559D8Yo1bYIE6eIh39Y6lg80QVptjbpVbsRnnQgHva25PbN
         NC4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KKPFcFkS;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qFfVSD0f02U+ZxFeLB+MpP2m3c5DN1OgN+KlHJ6wLc4=;
        b=qEkh1ZWeBcU3Ol/I5yizVOjVOdmvYD/xXzOBHEDs2iKhQDrPLpz60dGoKyqZic0p1H
         JBo51hJjpA1ut0XJdUFdrZyrGBDK95czirhTRWL+Btc2Xcgk2So1HncdVQIAuXF1AeIS
         r5xPU8lnvc4jkHz/koXLSCK3iADO1x/LcHmp5qO7ETMAS75cg2jtg3duil0YlxUuO7Mb
         jFfBelzv312mRZcL8RbRegWOwg84nNusUAsKkl7Pfhq7ipIXpJUxZRVkaBlO++FVFCny
         ow+uiK09LU60hXN27iWmlyWb3/GDBQAtW5Gni8sWFwB0Ire6c4qyxTbXJ2A1iVIePbCp
         uTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qFfVSD0f02U+ZxFeLB+MpP2m3c5DN1OgN+KlHJ6wLc4=;
        b=hU4p1F4ZBgSD/J+qgQxA3cquIMJO9SWJNtMaOuuQgJ1fRb8g/7DF0P7d+nBBBrKXDV
         dMHNLZVl6xAf+YSL4f6MjSpJYvF/NR4TTb3fHcA+Ot81k/Oo9pY2BWdKkhROcCxiXgWB
         ZUrshvHrW+WF+AxtmPtukyasj4tuCZrPap4D7yNLYSFJhtXGOttzo0TTcQYAZaZoR7Uw
         kVCBalCZbIDz3VTvOHAThUyOprCaaX+IoHffcWK8yyuNH0HPsGSufdPNlgzZbT+xmw4Z
         MTUf82qDs6keZzpJ+7rEpxX7V67zSGnrDeWq+S+bt2MaafDbh2Xr5fYhByEWW6idpw23
         SVpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kECXl8+n/VfltqIXm9ZfrXc8+ljfxall9hZNjpxmDX8fU3khk
	1zUr3jYi8PHz3CKCUE4TKww=
X-Google-Smtp-Source: ABdhPJwQelJNOsv1quGlWVZoce5Qfb416AAUmzO+vXXYkzNKheZwYQVhyQoNlJh8gYYQcukqVJvw6w==
X-Received: by 2002:a25:e06:: with SMTP id 6mr31032667ybo.80.1598554797060;
        Thu, 27 Aug 2020 11:59:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ab50:: with SMTP id u74ls1452703ybi.6.gmail; Thu, 27 Aug
 2020 11:59:56 -0700 (PDT)
X-Received: by 2002:a25:8b09:: with SMTP id i9mr30541478ybl.149.1598554796733;
        Thu, 27 Aug 2020 11:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554796; cv=none;
        d=google.com; s=arc-20160816;
        b=MpnDg2AbdAOF8su8bMDKJEXU1mYlZr/RQC33SL4w+p7y2bPMddWR/wZVBq9liGvr3x
         hOtjzzGE5y6inz8muJclnG2TbtLUVviX+hMBQ9Ayowh9MJKyf5vMprRgi0nAFgURUlI1
         8Lrm0EDkrIBvAsSjbmJwdqi5xLm/oPpDDJXr842gLER/mWuxxHZmpvu7zJZgLFzNUyKC
         wXbyhV9ME9oZZ+MAypW4hRM/e1BCcg7VdBSMPN4emg134veQD5OdKvGRBO4YhGvQ5OcH
         ZUYqH7k2jegRMschhCf/GzAXR9MSc4/8Klwcq4xV+RMukNOft+hKJRepmRK7VEvrNwWX
         h0EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7tqtrZGsTmrPENWhWCd7CKawCKbE+h0KNwlgrSQOjZ4=;
        b=XdY6HS1rmXBH9S3fKtCdzfZ2AzpJ1WmA+YjwwxmN3SNxi1t+/Ggv8Y2ZJC4b+jEl04
         1Vw8gn45SY4NadeudadE8l0a1fULj7Eib7zB90ta3i3JofIGO+mXdUFzyPdJX0S0oocT
         k/Ra+EXmyht8VoDUiSAwxiTEndL7ida+mKWTkfseUMRPLlWvYmK+PduP8uXAVfqqHO7N
         MD/jvpRvgZWzP0Xc5iiJDnvoxsI6HK9xudcUsq5uNrhy5BhcvliC9HXe0L8MgSazZdDx
         hrAqstqOJolFkhdWXxJZZfqcsQSbrpVZCbup1q6YRFZ87VTEro/ggOX0+QixXdx46Jyr
         ILcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KKPFcFkS;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m193si232445ybf.1.2020.08.27.11.59.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12FA422BEA;
	Thu, 27 Aug 2020 18:59:52 +0000 (UTC)
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
Subject: [PATCH v3 22/27] Input: sx8643 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:24 +0200
Message-Id: <20200827185829.30096-23-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KKPFcFkS;       spf=pass
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
 drivers/input/touchscreen/sx8654.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/input/touchscreen/sx8654.c b/drivers/input/touchscreen/sx8654.c
index de85e57b2486..d2ed9be64c3a 100644
--- a/drivers/input/touchscreen/sx8654.c
+++ b/drivers/input/touchscreen/sx8654.c
@@ -323,13 +323,9 @@ static int sx8654_probe(struct i2c_client *client,
 
 	sx8654->gpio_reset = devm_gpiod_get_optional(&client->dev, "reset",
 						     GPIOD_OUT_HIGH);
-	if (IS_ERR(sx8654->gpio_reset)) {
-		error = PTR_ERR(sx8654->gpio_reset);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev, "unable to get reset-gpio: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(sx8654->gpio_reset))
+		return dev_err_probe(&client->dev, PTR_ERR(sx8654->gpio_reset),
+				     "unable to get reset-gpio\n");
 	dev_dbg(&client->dev, "got GPIO reset pin\n");
 
 	sx8654->data = device_get_match_data(&client->dev);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-23-krzk%40kernel.org.
