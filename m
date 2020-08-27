Return-Path: <clang-built-linux+bncBC6JD5V23ENBBBEFUD5AKGQERJVD2RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AD0254D71
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:17 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id g10sf5538379qtr.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554757; cv=pass;
        d=google.com; s=arc-20160816;
        b=ObhjeNHNbAcNnIfFenOH1Z1HRrB2win4Whar7Iyqwrk8yuZFyEFut7LKb7sMedO4eG
         vWOEowDhB4An5Vy9DE0objU49JmRLse6QD7nslbDZjyfnXVuCAuKF7FwCoZDCWO/d3LJ
         z6vh+PGuTp/ZxF53pX6VycTJ8wQw8LxvTOk93EHsaAXREwhV+44mhXnTqsFi5oe44GUY
         w+X+GjHKov3E/BqHnq+l3t/3nWsrklLZAo1M8eFWq4yB15OGrxyyI4m2QiIKViZ8a0U2
         +0aPqq/bS+hlpTJkWox6XiS7c1sNx0nA7OIamfwFNPfz+s8V+XGlrAYSwhslyGOVHVxL
         0x0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=ssdhDu1J0rqk4utdFpgPRWBjyIQVx7EjNyfor2pk7k4=;
        b=z+N5JedA7s74uSYsFzfIGC4mAJZn/1xnEuWZ1aJWuwMzXqVnNBnaXNqrBZKk625w9W
         lEmx2NI52S2tHpdPlCrYuWzxnBoIieNCuvcE93FKGO9pibB+FdklIOcIBI1YxNSUgaF/
         SToA2sZmnWtSIdwb8X4qW82E6NULVrQR8XJ0jDgsv0P4mBErtQ/I8ZlIwzN1cGC9A0q6
         /x4D2IkfXzmdRojncpxu7uqGfoo79uz4x5mByGnk/JFIeEpQy8Zf1iCofVzr5WTLZ+fA
         w3iiRfUbUbyqJN7WsdXE54hrEN0IH6Mdm+fxmENvUYQ1iI+YtSAqo2FgO0SjvKI1tG/4
         6NTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z/sQfpSo";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ssdhDu1J0rqk4utdFpgPRWBjyIQVx7EjNyfor2pk7k4=;
        b=QYgDAAt5jUWnVldtqpqEXn5oZ/OsqvYi7EgXyZBcNSm+dNj12AAAlPCBo3YBIj6GFP
         UDQPdGKoOycVUKqRxiKr/H0Ik1O1H5jv4S7EW+Equfy1qLWsmcCte6kQd8sFmJwO46bm
         OopDC8fFB+ytYJ1WCV9yG+m6OUHh4aKwINvrdBxDtK33Nx3Efe3Ir5dJhhUQTnHN04Fg
         aIC3UqTFxAanyJoVAgu3IIfA+CUBBUniQ7fb3Dt5zx7+2xV853JnZk2fJrRlnRJ7Y/uu
         /8/6265/lKznQShrS9dyy9zeFeETKRQJPhY+TAjyd1wEqFem4xwUM4QwmnIJJ7EhkKID
         yS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ssdhDu1J0rqk4utdFpgPRWBjyIQVx7EjNyfor2pk7k4=;
        b=CayEwU6gxFFSJSwXBbOFPLvJrOumQWlmFlFvTWsvaWyP7j+cY/FkQCPtwTzXFKBu8b
         cTVViKhIPrzmI2k4+hiJuK5Fgr1RLEXvYOOvAkyXgpojO7xSFMwsrypj7H0OSYtQjkJq
         afHsiaGTOe8sBITqV8ywoQknM8C+5qcODnmxZZLO41QPe/vdUcnzqJE105M550KbSxXx
         jzRuy4Pdp7j1aAorz5MzByRvt/ZviwyzhLiBLL9Gh6xdD8uJMuvBKNiRDy8/ivmLBG7F
         n0uhF8H2KRmTYtlp2mEIDk9OhAkePpDOO6qT/pIVB6NJ29dWuZvHMXik4mX/bgHxyfkz
         ATAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IHYCCCcdK/7prKjDmx0xtO24jdxqAmaw/GT6jB2c0c2gTNUBQ
	2r+zw5lUBGMpJHtenCeftpk=
X-Google-Smtp-Source: ABdhPJy+YJqUKIFWJv4KnY3ehJPMvC4B3mGQXcM3n36+jW2k/rnCsGccREhqUcHb4xZa9WqQsrmfFA==
X-Received: by 2002:a0c:f505:: with SMTP id j5mr20077037qvm.166.1598554756941;
        Thu, 27 Aug 2020 11:59:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:18cb:: with SMTP id cy11ls105531qvb.7.gmail; Thu,
 27 Aug 2020 11:59:16 -0700 (PDT)
X-Received: by 2002:a0c:f9cd:: with SMTP id j13mr19964353qvo.227.1598554756630;
        Thu, 27 Aug 2020 11:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554756; cv=none;
        d=google.com; s=arc-20160816;
        b=LIcjJ60lN5yGwMi4aWsCKJ3ItCltUgEW+4n6qF03IcFnio7Iyq0nolxnvK3PW2k95R
         9bWuF3yssRxKDfQ66P7siAlVg0RvO5w6GMi5K9trIMWPAifp82KItTwg0jAQFw94OUw8
         C7fSkzQVlH2B1HMh9w5TsXjy3iAk5vYdl3Ka5f9VJLLLkKEjJduTEsm8exUUuuQLIZxo
         TPPATeNI6Dnsh5yg68Q1A61yIy4jMRWGfCg1V2i7/d2E1zjk+4K6sWlwPdwzQakVhGi0
         XRnCkQZ5gzRshfeBuLi/vfmSIaJmVkKk3eO9oiNLvgIDrIAgFg0Ce+QB9kHw7NzbmzBg
         5I0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=N+CqkRMd9HYAtJ5Xq9uBuVIEuToF3hSgFLUK1pQaJ28=;
        b=WKh5dzB0FnHug5XWgv8qgQgD0ycXUMXDGoV/mNqO0fYqRhf4EeP/kcSNbzWiUBbzPS
         F0Ln9U6l+5zBZNQ4NiqEilXQBpSnNz65F9Ya9O0qvFDr1IonOsej9kS13fsjUPzH+b/2
         N8LJCfFm0ZzY3yw6ZpnXSuOAWvKRoMb2uiC136xtHt4qxkWjEsbp6esTGLzVH3E7XEVi
         rfNW5D0HGi88S1wVBzSJYea+eU8FSu2oV79CYA1LSyu+hcowQJ/cAW9eOLZ/YXkYHT8a
         AikLFvL06Bvzhd7Kekoug1MUey4PVgoTcAqLwA4SEEqh4b7WHMHeH+mR9PNN56OCe9tk
         0VvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z/sQfpSo";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o24si195638qki.7.2020.08.27.11.59.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3FF022BEB;
	Thu, 27 Aug 2020 18:59:12 +0000 (UTC)
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
Subject: [PATCH v3 10/27] Input: cy8ctma140 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:12 +0200
Message-Id: <20200827185829.30096-11-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Z/sQfpSo";       spf=pass
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
 drivers/input/touchscreen/cy8ctma140.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/touchscreen/cy8ctma140.c b/drivers/input/touchscreen/cy8ctma140.c
index a9be29139cbf..23da5bb00ead 100644
--- a/drivers/input/touchscreen/cy8ctma140.c
+++ b/drivers/input/touchscreen/cy8ctma140.c
@@ -259,12 +259,8 @@ static int cy8ctma140_probe(struct i2c_client *client,
 	ts->regulators[1].supply = "vdd";
 	error = devm_regulator_bulk_get(dev, ARRAY_SIZE(ts->regulators),
 				      ts->regulators);
-	if (error) {
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get regulators %d\n",
-				error);
-		return error;
-	}
+	if (error)
+		return dev_err_probe(dev, error, "Failed to get regulators\n");
 
 	error = cy8ctma140_power_up(ts);
 	if (error)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-11-krzk%40kernel.org.
