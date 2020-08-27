Return-Path: <clang-built-linux+bncBC6JD5V23ENBBC4FUD5AKGQERQDXATY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC0254D78
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:24 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id w1sf5568622qto.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554763; cv=pass;
        d=google.com; s=arc-20160816;
        b=FlvqcXAo5qQckA7o/cl8PYcHfsKKQXmMNF550TMFkfv5Y1cFsnelXwtlDw6aL3FKfl
         +ksu9C0mrmGccBhrDV/3tEw519LP2MgdWTJrDufdlQsYczlNt4eEAa3alDXa9+m0KsgI
         9oNwDv7xbelMKOaqe4VTgm6XaNkiV3eNa2BetA9SoL8fS1Zc89orWayiJPweHFudtQEn
         I6HFiBtgCs2bej+16B8CKh1KMRwI1E8c3VvqVl2pMDkyK5JdpV8jPm8GPHR2QNhRQ2Az
         KCd68bu/my162YiPlHDiQqyITMZsp8oY0QMV/O+f13s9jKklIM50XEXs+UK4ks1jtplH
         LK2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=f8siHZ5EudT5xDUuMe68QGW2xUN5WbWl9qWMEdp0Emo=;
        b=omAm8G+mBm76gp1MA+fwmGXzl642KqrS5MbFdiiJbpfTxATv5GTFEvIC9NB2gWatrK
         zEkC79rJSwQxpCYVb1xIUks7If2XJjKs6MA2aZ8TnqAoBux/0ZBAFlA1VpfVliAhIKev
         4AKd2CQT2XXeFRExT1QgeL1fOVLhxhXSNlV8DNL0e1yrys5Gopy0Mhv4uqdy4R11oabs
         MAJCFC5Vj0Kb62eZkd+4DHEHV+z0r0FdqZzHnLDd9KE/HqjuFiNgLk+NJrCWvmBq7gjv
         p+As8AT8J1vN6z5aTXBh/VvfuUbUFrHQy5376PFPzLk3NM3pvN0RONb2A6QdLm2MLPtA
         BPHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Kxo8B7z/";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f8siHZ5EudT5xDUuMe68QGW2xUN5WbWl9qWMEdp0Emo=;
        b=esJzklH3tZzhQycj/wBdkNdK5xJpk46JAM7EvGDtBWhahzjfBjfBHpcnIXzp/+c24v
         1FK9krSnZLlcfKSSEaR5qtverPuQ0DZoL9WheqPU+fNDkXbrjWdJHUd1cAIY6GBoMQDc
         e6QHAsxpaJK7bjReiLqP+vdzA75YcR7nBMMxlbUyrWngqKn25dkeaACqLHbIicHFCTPE
         DUVJxKKfhbGD5QX8ZCJNxsS+w7H2xw+jjecJBtO0E++wLctB0uP7HT58doaQGj7MCusA
         4O7cRM0jUAfcFIhtGBQeuUMOjP6m/wA5PYu+D5B110gxoDfxDgw+n9Ttx+bu8EWN6Fkd
         EP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f8siHZ5EudT5xDUuMe68QGW2xUN5WbWl9qWMEdp0Emo=;
        b=F6Vm2z9jLrMrgbJuzqW4/5grdLGQKesxD5mK2qnidEcQokXB4tJEcpDOkBjEHlXbbS
         AlnUaZeGtkSMKN0lNPGqgYwScJuGxWQXXoJQul4+ZOp0qAN6BvYzSjZxvNNEqNF2m4Vn
         IdVgo8mcifUDDDeBV+OaPSLbXDRHuH5xawidZK7FatlEaJ/l4moV02ei3cLMJBO9iDNw
         biW6aibLAO2lvnS9IAGiSotw2Ug9LrfnVnbjCFWNMR4CiJ8LMkj82pn/TFLr43XEO1T+
         gw82dILTdD5irWp4sGyeVpHt9HSfpSbJ3+getKA3rfvKqytIj312F/Iv6jyGbfWU+aeW
         rEwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312V4zW06BPr9sT7xvh8S0UMefMFz0XhZ4HwkjdevaT9DX+fPIi
	Cuur9dpyIaaeLSXKll0HDbA=
X-Google-Smtp-Source: ABdhPJxgZKMb88pI7CoiByRmCh+Fx6M7lCT7B3LoIUePD85xHSRfK4D5+7ZosfmIQV1ym7MuX+aGHw==
X-Received: by 2002:a05:620a:2f5:: with SMTP id a21mr8474337qko.191.1598554763647;
        Thu, 27 Aug 2020 11:59:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls1270767qth.7.gmail; Thu, 27 Aug
 2020 11:59:23 -0700 (PDT)
X-Received: by 2002:aed:36c7:: with SMTP id f65mr20811976qtb.39.1598554763314;
        Thu, 27 Aug 2020 11:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554763; cv=none;
        d=google.com; s=arc-20160816;
        b=WY3CgujFYlUznvCQpMMkoZt5gMjnxJrJhO2BLYU3CkowQNLo2Jq7ty21xKNEKwhWcO
         PKXv6NIxQ5ymtSLzVMN52OzgU61VC+SaXAwdBT0dJwWVPHjsFr2Lzr23zlPxsuy0E7Rz
         UrbS+XGlxXTP2ls4NTiVn9VYGnWYhqzF22/9g+LZJimzqukjL5tg+90TQpIERq3aolnv
         Z1jeMeW0df/Xrtu4suerqA8LhIE5d1l6J1lZsWBMApZK9dsgIP4b3Czfrn6gl7tFotB4
         S0ATcnUInPCGaY7FHEPBRZGXEgu12v7U0r2Itww/kkx9SSbvTH59Gwa7oMJwVXh6RvCv
         hS3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=OXxtCrW/CtSrUcqzJTP4tOsASdisPiYTPq73RSW6JdA=;
        b=v6E3z0rtgfBPybP/VGTo0wVsfxbBMpTcVqZSvQRUdou0jO6NC+YDQ1ZiRDv2MxLmDm
         2flxyVZnJp5af3L00QkXjPDzZi8AVfYORgt/tPbWu0b8GX1a4gr56NgEYb3UVrMWWquI
         Afcx/0mov3QjnVUZEOFJHM+luwr4LXr12USLM+TNDY1P7L4n6+Ow1cy5V+owJ+MdAfbj
         L6Y2mDDDU+FiDymYzdbRYqPa6TnU0SWL2blevf6mHADLdqXF0A4YOFfiB9JXzd0JTjk7
         rakgz7RNqa7v/6Ty+VisN1sqp5kc4lv8cTgwvEHRQky3rdyO5/05GoZuNQkwwnmYLPwA
         FeZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Kxo8B7z/";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d1si163428qtw.2.2020.08.27.11.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7487D2087E;
	Thu, 27 Aug 2020 18:59:19 +0000 (UTC)
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
Subject: [PATCH v3 12/27] Input: ektf2127 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:14 +0200
Message-Id: <20200827185829.30096-13-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Kxo8B7z/";       spf=pass
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
 drivers/input/touchscreen/ektf2127.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/touchscreen/ektf2127.c b/drivers/input/touchscreen/ektf2127.c
index eadd389cf81f..cd41483cfae5 100644
--- a/drivers/input/touchscreen/ektf2127.c
+++ b/drivers/input/touchscreen/ektf2127.c
@@ -237,12 +237,8 @@ static int ektf2127_probe(struct i2c_client *client,
 
 	/* This requests the gpio *and* turns on the touchscreen controller */
 	ts->power_gpios = devm_gpiod_get(dev, "power", GPIOD_OUT_HIGH);
-	if (IS_ERR(ts->power_gpios)) {
-		error = PTR_ERR(ts->power_gpios);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Error getting power gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(ts->power_gpios))
+		return dev_err_probe(dev, PTR_ERR(ts->power_gpios), "Error getting power gpio\n");
 
 	input = devm_input_allocate_device(dev);
 	if (!input)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-13-krzk%40kernel.org.
