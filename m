Return-Path: <clang-built-linux+bncBC6JD5V23ENBBDUFUD5AKGQECY7UGJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B0960254D7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:27 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o9sf4840083pjg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554766; cv=pass;
        d=google.com; s=arc-20160816;
        b=0zo+oDHqBjoFdoHTyPPIVTN9SGKLFHcOi0HhFLYnjapZ1w7myZi0mKQJ/W3zFD2He0
         hnKZGoGueJiL8bh/C8M/Y3DvS0kpDbRtFqDbFijFIZSsh5CjrwlEbpyj2psxbbxHJtyo
         psN1fXBBwuEIfOGhV6tKZgy74KonLp4GcJzNWJfhXzFIifD17o8uMFmEoU/r/1Kpn5A1
         cs/R8B0ZsHtKd6tSyTXjv8v0+GZOUO+GG7oUSp/ewObjb/8UdDCNrxYlUmgHwLQyY6NM
         Y4lDuTtE7oWeybUzcS2BEsm/duSnBu+JK0wDe4B8N/965e6yWLjXIBojSod1WKaDW452
         +fhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=4OCwYClYyoiPgPpOOBTDpIEdhsa6P0xZ8ykEVE/Q89w=;
        b=jIUq+YNrZMbS7EudCBlvDpVzXztl9Bu5BvSBommXyCumr2uo3aQ6sqXzoz2MXgZmME
         OPw3Ae8J84QwF6gGf/47wek2ZUjbpyCYyffF1pVV5e6qB8qUga7vHdOT5/gSfw0iwZjV
         f5z5eeZoi0qs7zWteMGMD4sdRWMocdnjzADnz+uqpHwFudMC5oCJKXwjdJ1JXEpqCy/l
         +LOfVfK/yy9SX0w+7hV3cDzXVci3rgE9pELhd/6Cq8IRbnsmHMsBdXzKEm//vd+5g8sX
         vHC9XGGKfRdNMlcKfBOi+1ZjW7l5cBk+BHkMBkBIP4s0BSGg91PD4n5ez7DtVAi41oUD
         sIlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L1+KnT1P;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4OCwYClYyoiPgPpOOBTDpIEdhsa6P0xZ8ykEVE/Q89w=;
        b=sKAx6rID8Npz65Ak8Dj6lpRcOYFrHX2YjmN45lVDlOIqAXAJ+t0sA7lU5/ainAUHPN
         OOCVal1AlpCVRqrry2AX0209EDprztZF9qPBSQ9NM2nk8sO72kZKxzmFtb95iBmMmiph
         5ZS/tYrFLOLGuJbmsVv8pe5i7Ov1yI+UrjaZfb1wNenpylUA8p4Bee1Z3tyDpdHCCnBZ
         Lhy+IHlWYVuviX5KnLUsYTpXd/x2C9bAde5bp/l1OPfowYP7LAecu/tDMTbVa4lWBY6D
         ZHnbtHeSKdN1eTCCCmXxmmfVNYbL5xSCEf1zp8NVamx7l1lYkd64dv9sV9uhumnjuMxK
         OlYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4OCwYClYyoiPgPpOOBTDpIEdhsa6P0xZ8ykEVE/Q89w=;
        b=CPoBhFE/zXUENgqANrq8qtLcFf92ifbrxLnXGqJTMXGJeFwBtjJJMzuqRW63rR8BjH
         xqc8SJcg28BLa+axsYeeXYpK2CWqnm4qhKCMcfA0a1LBXNKRxJstMh1Yc4UReeUKipGJ
         6DkvAWDrtCs1Qqr9kiGjLtZPT41KILpInsRFdATGE/V9EyXVl7PzvrTawA1yEjkkbz3b
         MqO22IZnNIxISHSO8t5s1mUq9j3xQEmPByguqVWFWPgWDgXqyeDeMQRuM1iIQKrwKaP4
         UlH2KASRW+ZhN7lDisJoAJQ/zabjOYy6twHSqkcm1s04M9++u7z6g0ybQGXD4d1pQLUZ
         MHdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GFezTijswFTtj61Y/OAMyjxoxFKXShaMeF5NUAZENsCNkNHO4
	iJD9pyItSIJswGSdpIWCR7w=
X-Google-Smtp-Source: ABdhPJwDPpPT90SeyEd2TYBs5AhMkzNdNUjnTtme7xcGhbhIr4XvzeT4r5FblN17D8gdYGTYy73HJQ==
X-Received: by 2002:a17:902:8307:: with SMTP id bd7mr17589593plb.159.1598554766310;
        Thu, 27 Aug 2020 11:59:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15d0:: with SMTP id 199ls1257965pfv.1.gmail; Thu, 27 Aug
 2020 11:59:26 -0700 (PDT)
X-Received: by 2002:a65:6119:: with SMTP id z25mr16320823pgu.52.1598554765924;
        Thu, 27 Aug 2020 11:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554765; cv=none;
        d=google.com; s=arc-20160816;
        b=Td3lV2FRY4q4nwlEbaqToFwux/1/iSjJlKwp+naV7XzDoAsYyPC37X6az2gKLwkLXm
         2VjQ/1BF6GN+CIs3X4iTiccOW36p7zkXSY8o4hupAtu3+oIYq9WA44dwYaF8dt4dfBHR
         /zL2YFq2WuQ9WWIvNe9cnbIVruUsWAVJCCsO1VczCtIhUbJ5pt+ll5hYUcArNmXW7yMx
         KuRyg0Lc3k6RfJA/OVv3+EiUnyW/CwRqqP7DK+Qszu1Ib5GgKmW6gouavwy3QwJeAXun
         8L2tVrTrScL1eWT2i9YhMIJCEmFZMmGPYMwdf9JWHLJmD0bblcJBrx8CKUdMNv8zccig
         qMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/cReBpWsyrWwmkvAiRiU+xQMj5YH5tAqtonQ2iFtqJQ=;
        b=zCZir+WvnyHocfBcioqFm45CxUMpPNq8xfXGu23nn+2seMEO4mISc80x3i8QxLHMOm
         qE6iWGvYRSPs3mbjoS83aPR9KwVL6EJ/bvNWvwbxvQEmbIzmedDpGYXT/64JvXmoOHYQ
         do0t40797IOXExlptJyUubGCUPp/Oje51nSRcLVwwiMM+/fmIpO7s3MTE58pUARhQFGl
         4YuWCIr/Sn21kBe6ImwedmaMIORYvr9auHRRqkAvqs6+eERvJPBHcd6FSrKnL+JqPrSP
         W6j5mxsXcE/1FxUuPCP7EueJGMlMCAs+EblCu6OjuKGxnBlG8hrCragSMA8B9VMvOo2d
         kDXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L1+KnT1P;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kx12si394793pjb.0.2020.08.27.11.59.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C2A1922BEA;
	Thu, 27 Aug 2020 18:59:22 +0000 (UTC)
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
Subject: [PATCH v3 13/27] Input: elants_i2c - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:15 +0200
Message-Id: <20200827185829.30096-14-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=L1+KnT1P;       spf=pass
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
 drivers/input/touchscreen/elants_i2c.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/input/touchscreen/elants_i2c.c b/drivers/input/touchscreen/elants_i2c.c
index b0bd5bb079be..ad299eb333f1 100644
--- a/drivers/input/touchscreen/elants_i2c.c
+++ b/drivers/input/touchscreen/elants_i2c.c
@@ -1245,24 +1245,14 @@ static int elants_i2c_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, ts);
 
 	ts->vcc33 = devm_regulator_get(&client->dev, "vcc33");
-	if (IS_ERR(ts->vcc33)) {
-		error = PTR_ERR(ts->vcc33);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get 'vcc33' regulator: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(ts->vcc33))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->vcc33),
+				     "Failed to get 'vcc33' regulator\n");
 
 	ts->vccio = devm_regulator_get(&client->dev, "vccio");
-	if (IS_ERR(ts->vccio)) {
-		error = PTR_ERR(ts->vccio);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"Failed to get 'vccio' regulator: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(ts->vccio))
+		return dev_err_probe(&client->dev, PTR_ERR(ts->vccio),
+				     "Failed to get 'vccio' regulator\n");
 
 	ts->reset_gpio = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ts->reset_gpio)) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-14-krzk%40kernel.org.
