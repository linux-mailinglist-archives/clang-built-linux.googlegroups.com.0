Return-Path: <clang-built-linux+bncBC6JD5V23ENBBFEFUD5AKGQEB3DIGEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC7F254D84
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:34 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id jm22sf4848749pjb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554773; cv=pass;
        d=google.com; s=arc-20160816;
        b=lflbfvWb06KHP9Dw+mW9svgmHUaT7EFGXxpEgwRfrOrESNQc38T+sQ9NSH922Zseo4
         WTSRLK6GKEbtcf81ntyJELG1iA5q6s4BN9+2wwAgzYNlqUTLxUjdY5O6lGsuV+dvjo8V
         F03cHIZhrqfl6fWRXTdtxe07tkUe3nYVpuwbE7OX2wit5DjNDwTPLPCSoIX9rsSDhZo2
         UxnMwCc1E9k6YLjz4+Q04UEcDoTrCZsn/aisGwB7eu1/c0EecXRSs4qkoxIXE4aMzVFi
         1WeOwse7PYsBOEgTtYGLhSHWVLG5QgcS0viC4aNrxin/2I000D/qzJA54sctV1jisqiC
         1vxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=eFjfQ5wOKdHuEXuFiXHv9rkMMNilzLonpVx1Q5912tQ=;
        b=g0vPVvsBWGld0pJX9geMrpAtha6NJG+fQvqBFTzjwj8cIeDj+1iUY2ztXUKlxE1dPS
         VBEcmvGXO9XUdgp262ee705/XF0OwAzKHpxyyoDHN+4oGiG67AyaNP8J7xCWSTTbpic3
         E7EW7Laf9D5eGgPqDpeVJNJ+BhEJAQrM5FNsnzCrn78TopvCPttzmvptIGRcfziKR9bu
         pA+hiRdKlKEvMc3BMhpuqw3A/uuy3VWITY8fIHk96wEAKacmzrNReprVRkPhL6EArgau
         TOfb8CcXSHgWKahrNiDnAd+QHwBBFaQ7qQSWHeUgaEhPHSyo7VfoeG0HjGbnXV610z3M
         ZYFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Liu8obZv;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFjfQ5wOKdHuEXuFiXHv9rkMMNilzLonpVx1Q5912tQ=;
        b=M5/dwAZoDTLZseOlPUI4XRUB2RPE1c4oi26j/61XXVUU18+CTn18FsDFsLJO8DZ0rT
         mjAti/eU6vtWOGNsyqk0nXBYqbaWBmnEogpX8+TMKGI0Vxm0Ws2VLodU2yj2hhLE4YNC
         lipCmR1xM9mZHUHoP6kyHZPkxtOldqC+BrNjLk9U0GBCx/WHiHbHCZarc4GKgzL+qlxs
         LyUHiBe0cgr8nsWK9SRmVRS393wPPYC+OJZBo9SqIgetjbxdVfIOeWMff31zbDl1+vB9
         Lg8RkniUf+XuIiRdPdRg0o3T7P0U4zyVqBcy1cagvKAGoluFufSc42uXTn2V+LPp+YWi
         oXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFjfQ5wOKdHuEXuFiXHv9rkMMNilzLonpVx1Q5912tQ=;
        b=PKNscBHBWVPFEtbkKzfweGVA4eqdXDgnB9BW6xfRcGN7Xj44vL6IZ0gDn9ovfZuiCX
         T6UPMzW4iengapFByWIqpyKpKsz/kIX8LHsBVty4C5RIp58X+karmSsZOPJSl29O6RiI
         vB2pvLFFA9/+cmklHe5bjz+R1//6es4Ikc5wJh6LmesbDtUxrzyy1wZcwCSm6lBp2/4L
         HXXBByQ/y39jf+Vfb3phP8h1V5n1IeQ+pX8WFRystPDjNwcdtUnOYqMDzisw7V3qtG9b
         vHOR0PVzP1MvNVGo/NO9jAuL/Ms/k8IXxILEGEOkuoXUPDZuYSfW1GuPfRU8lMWHzyv6
         U91A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i1zNSt1A3yrvw1NjXjd0OcCajhNkoMFGGGOS5SkkBzFSxYYXX
	8gbFMhMosh1zI79pr2wnn+g=
X-Google-Smtp-Source: ABdhPJxaKQIvKQiKlGimW6z/rnHCR96Z3qizGvCQxzyrZcBR/AsTvx88H7D5CoNpXL4fCmDkjY9geA==
X-Received: by 2002:a63:e018:: with SMTP id e24mr15223173pgh.175.1598554772924;
        Thu, 27 Aug 2020 11:59:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8682:: with SMTP id g2ls1637723plo.10.gmail; Thu, 27
 Aug 2020 11:59:32 -0700 (PDT)
X-Received: by 2002:a17:90b:696:: with SMTP id m22mr252355pjz.158.1598554772470;
        Thu, 27 Aug 2020 11:59:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554772; cv=none;
        d=google.com; s=arc-20160816;
        b=d6OBKCjI8ETrwborgutNIzN/uYVQiASvG/nKDRAwV3AAZLbJ/LtEnxLwFV2+PFe5j2
         IdnJnbOa1KCnhsqkHJ2puHn3KWRgL1h5vKKCNZRzOBTLB3D9V0YGR2moTf0oCJ2ED/Pq
         skBAWvOzwt5MTCmF2PwwK2ocXqDRWEnajCK7GlabZbkEUt8iuZ8d3+9pMJS5syfz27RX
         haFKJkFR9hNmU5fVM+LCcdv/6dD1xCJmUr79E0UNBjgMPn4Lp6mgjLUmL44SdZhlV34V
         p9pAlx+THAFtprgbOmgOIlWcZiz9MJ2Z7oSnijEBuDkPSUJjhU+lhPQBDzTLbYa+ggfp
         WczQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zcdjG7YiIZjs036nJktl33DHkdWliRP3kJ0aFjN/ZWI=;
        b=CrBvnaRS1s9XPFPzd2fwFjv8n1pf1yN5sOQ2ZhgeFOwH5a5RqaO26fx1Y/o2UQHJpz
         6WsGG3PRhkg+KbB1+KE2SeDdINMU08fd+KK1vDvaRO6WT8enRXmUfC1xiBhuo56ePUk+
         1dBLUoXo2+MJtjPIR7TFTc8c3eUux3Yuuaxki3kANjTT2TaCXxyUoPQQmAYXCMBQAaCi
         6hTD5ptrBeaxzr3jOogKYh2H2VJ9+XdjE7Z++Pqh0uQpivR0nloasvSZKlzIbwkBatKu
         NIkc/XURuEm8UfOPCQaK0K1M9T1Q0hGv1R526v84JKd8YJsSnax+1Tr/KEE5wLTMGY5J
         mpYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Liu8obZv;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bj6si170378plb.4.2020.08.27.11.59.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 610BC2087E;
	Thu, 27 Aug 2020 18:59:29 +0000 (UTC)
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
Subject: [PATCH v3 15/27] Input: melfas_mip4 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:17 +0200
Message-Id: <20200827185829.30096-16-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Liu8obZv;       spf=pass
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
 drivers/input/touchscreen/melfas_mip4.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/input/touchscreen/melfas_mip4.c b/drivers/input/touchscreen/melfas_mip4.c
index f67efdd040b2..d43a8643adcd 100644
--- a/drivers/input/touchscreen/melfas_mip4.c
+++ b/drivers/input/touchscreen/melfas_mip4.c
@@ -1451,13 +1451,8 @@ static int mip4_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 	ts->gpio_ce = devm_gpiod_get_optional(&client->dev,
 					      "ce", GPIOD_OUT_LOW);
-	if (IS_ERR(ts->gpio_ce)) {
-		error = PTR_ERR(ts->gpio_ce);
-		if (error != EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->gpio_ce))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->gpio_ce), "Failed to get gpio\n");
 
 	error = mip4_power_on(ts);
 	if (error)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-16-krzk%40kernel.org.
