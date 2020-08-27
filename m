Return-Path: <clang-built-linux+bncBC6JD5V23ENBB7UEUD5AKGQE5CDC4UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2F7254D6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:11 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id v11sf8567344ybm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554750; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ksvvJTS9nx1jA0N9Rbc4Dp3iGPTki8scnz/Xdj2Kzt8JlIYIp0VcZDLcXNSqvL8SC
         TKUhyMqUep5z5UHjQXZYCdmv3jIJFzBsCpiUQg2ZHVzqO3sMRiLsRUTjbT2TAbc3q1jf
         3+LEP8mYYmsT7s3eA81TP1t0/vi/YV1A5zI6ECS09VaulrJJCaD7aEhCZJ2veTC8WXBa
         lM0U3ib+NKZpL8otUjA7a/94d7oym8aPXvn6zix7H2eUdGaogRASFMG7/zzv0tORs81n
         3HHaSKOb3eni+M9ndRll4SipGQDd/xOoMCLgXPrCyPNxqnabz/ULSBjPhEESZhNhASDQ
         7AOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=k9ncEznHv8WdYw/Mt9lICQw8FcrJS1Jpp1RzHY/Ts98=;
        b=FDYWphVcXFQJEyHNortOJ+5e5c2tBCqYfg/dpxfpTKHwP8MPgR9kNIHiTBnDFDLPv6
         wBk5I+Fv6Yqm55ulED4Z31zkYy3xO14+YfChopMTi49y80iLKcL3C8QjkqkH/M4b5ATx
         n3tZOgw0Ad1SIgeiLbOeXDVRAGWJkwEAOY3TsPjiVl8hSgCMQ0/mS+OdmvTczMs3xACT
         IMsFN0n3nqeCWAY+uKjvZwIzMtlri3Tz/eWk1+nhweYSuNbdoWk857+ERjTVn8HjMywE
         tHJlir6dcXn+GiI9Z0AY2aFdd0VjPaVurObvYttAZAZJXY3vs6b3WFpXlTdp7GNLqqxa
         m/9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v38Y1XLe;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9ncEznHv8WdYw/Mt9lICQw8FcrJS1Jpp1RzHY/Ts98=;
        b=MCsKoFoQj0PzWSSZzCUwMrmvtnNk2uNbulZuDK5VeCg2skMGpeiqlWIuHbG/xfSgsp
         vz2o23xTEtZai1fde6y+3uGY58F8qQYcncrc7T/1n/RpsW9i6pWAEeMiPa7cv6z7n9w/
         MIXyCC8aiR1UwMsCF3qtObUWIgrbsF70Deeh2/aZtL2kBcq7QggTXgsdiKQlQ/tOFKmJ
         vi2urEarH/nDPH/E/wDxLtxDv/H5IC0dWSkSvD/lIHzoSv52RexlBGpKJLJlyrQV9iBZ
         /4QveBSofiWtwuJabkGKfapleU7hR5qPa1yaHrrmEOIb8gswTnVd/wNlySo3SJZ2HzHU
         iU9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9ncEznHv8WdYw/Mt9lICQw8FcrJS1Jpp1RzHY/Ts98=;
        b=I5ObKMm4oU9SoR0aPzWVcwRUgdiuWta5tii1FvZqC8yZsIyNX+fJAxNqhQp+5ZMEhD
         Knj0LLCrAjlHLKqLZeBq77DW1XDaDQkxq+YQxspumQflvB758QUrKgoN5BhIZXx10udU
         48tkLx7iXWZ54i5vTm7ufZ0NRO8SGZprRPrMf+di2bNf7yr5rFTnXq0pRXOfHPWKoYH+
         WglkV+q2grp9BazD4V8aT/OLctTGQdCUdWuKJDKYJgrzBBYbQvnEi/1+Cqs75rm2SSg8
         WqmGxPMOb+NDZIN+/nOcukN6n7C9FJkwqdD0P+oHHUlIho08RGoJPYoV5hpBXWmW/Zfz
         OlzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316Z7NywedZQ+OemUWfmLeDLP4ISs4p9pzeLD33qwxL0aVuhmoy
	2SyJ140imJtx1q4g9fvjZVA=
X-Google-Smtp-Source: ABdhPJw7vFCUV4BxLQcCkwCir38jMqX8kMv2Tt9JRqDZDpp3c/3WM/xa8WD06JKGEcYu3xmgdJKL1w==
X-Received: by 2002:a25:2d1e:: with SMTP id t30mr29679338ybt.303.1598554750262;
        Thu, 27 Aug 2020 11:59:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cace:: with SMTP id a197ls1437225ybg.11.gmail; Thu, 27
 Aug 2020 11:59:09 -0700 (PDT)
X-Received: by 2002:a25:f30c:: with SMTP id c12mr33164882ybs.471.1598554749880;
        Thu, 27 Aug 2020 11:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554749; cv=none;
        d=google.com; s=arc-20160816;
        b=wrZQx4MDz1TCzc6ikiSdl3FIFx/0sLLKJSD1tXlZxItFVxIq0Dpb2bbbvtD7GLqVyM
         cc3iu3LGq9CES+jBecVaGkKKIFMz1OPWyH8ccntn+SkS47nGGDVNREUvZHBlOCPwrLRj
         iirSt/vZxcUAnl9MOAniirGxqk4BToAEamOgOtqnEyD/tuT+cQIsPu7hFjWFiFA++C2d
         yBhLpkLGQaE5ZlpFvIE9Q5+7j1R3SY1bE3dSBZMtOjH5E/VOhH4+qNr/ubYVaEkRK7F8
         685jTiChsv/aWHZmAdu+vYlITk1xNXAbWCo+WR3zZxPvPAZahWA8460tVGwGyqrO8X8W
         CRJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=vUcaMkUrmXKXc46tNzZ23ZiI63k3gwZevIl9Gf5QCnM=;
        b=pqwLkZrTBJeWCe05ssgBZD/89tynCNhAKVcCM1dVucyDx6Tuqbt8IdWtXspEehrn5l
         Yu+vhPhLnVwoS8ilN8ijj+f78w+MX480yHvUCoqJ1iBhmGjg/6pf7kTRB0NAP9ITS9K3
         LaLHXZ4h+BEhhuOZv7Dt5lAzTPjLKHVuNodGU+tAwlfMy6TUKwPtlA8yG6zj4cRQtiYN
         YEQ8MaK7L+1EusEE/F7KMw1xeDyVKw+2pONdkPRcmUhxhGzZfxhnKlI1T5p8TeLsR/ZH
         9kNl7dGapHLlHJ0Rte0VfKWnPfpGevjFp2HhNNJFwXdCqxSeT12isAOFGOPuOPw55uWf
         89UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v38Y1XLe;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y18si169446ybk.3.2020.08.27.11.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1CAA622BEB;
	Thu, 27 Aug 2020 18:59:05 +0000 (UTC)
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
Subject: [PATCH v3 08/27] Input: bu21029_ts - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:10 +0200
Message-Id: <20200827185829.30096-9-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=v38Y1XLe;       spf=pass
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
 drivers/input/touchscreen/bu21029_ts.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/input/touchscreen/bu21029_ts.c b/drivers/input/touchscreen/bu21029_ts.c
index 49a8d4bbca3a..96c178b606dc 100644
--- a/drivers/input/touchscreen/bu21029_ts.c
+++ b/drivers/input/touchscreen/bu21029_ts.c
@@ -360,23 +360,15 @@ static int bu21029_probe(struct i2c_client *client,
 	}
 
 	bu21029->vdd = devm_regulator_get(&client->dev, "vdd");
-	if (IS_ERR(bu21029->vdd)) {
-		error = PTR_ERR(bu21029->vdd);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"failed to acquire 'vdd' supply: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(bu21029->vdd))
+		return dev_err_probe(&client->dev, PTR_ERR(bu21029->vdd),
+				     "failed to acquire 'vdd' supply\n");
 
 	bu21029->reset_gpios = devm_gpiod_get_optional(&client->dev,
 						       "reset", GPIOD_OUT_HIGH);
-	if (IS_ERR(bu21029->reset_gpios)) {
-		error = PTR_ERR(bu21029->reset_gpios);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"failed to acquire 'reset' gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(bu21029->reset_gpios))
+		return dev_err_probe(&client->dev, PTR_ERR(bu21029->reset_gpios),
+				     "failed to acquire 'reset' gpio\n");
 
 	in_dev = devm_input_allocate_device(&client->dev);
 	if (!in_dev) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-9-krzk%40kernel.org.
