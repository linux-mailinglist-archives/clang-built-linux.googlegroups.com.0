Return-Path: <clang-built-linux+bncBC6JD5V23ENBBGEFUD5AKGQEMCJIWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F9F254D85
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:38 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id x13sf5026124pgf.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554777; cv=pass;
        d=google.com; s=arc-20160816;
        b=GhZgaCyBdDxXtEH4U7bf4wfJVe6K+ZJ02mUNYYz4cwNreFHLok8oEAHWLm9bIVCm5Z
         2LvPtE9cIw3mgj5RmI3QreQYT1aTdjRNJDHIcSLHuME55W04Ed9D9fiEXwvCWzEGqQi/
         kkaPLcNt1PjD+rkJokRdLSp5TokgTVo/27QBIw7T9JpCSOklZI5AC+/Qw8SS51mGu4W2
         R9wkU8yE3ZOTE18lCRI/fLjHNwm1pfEGs6RW48CHyrnawhoCEj/VF6k3CAjC1UzPSaWz
         2vDNoo/PglSKQSaFGq23eW7IteUpLkHGB106+Oue/+HwI4CiAn/gjcP0zTk9GfsN/7dq
         6YvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=s7GdkPRX8zkibbh4ESYR1Ho3Nk0qeRUCR2YUPG6hMSs=;
        b=o1W+tJEltO8fBQtPquAi6N5RY2BXc6GjkOnnvR1GKoo1G6KJuS3HXQ6PmNbYiHz9Rh
         6Ev7OKLjeY9a5tz3yLVhkI1KdGIyVlzRYOn73f639WRRAK9aWqv4vXlJps3ggaQyZTHE
         Gf8waLATR90n1i6JaiQm7iuM5hWTAqHCFIQl9XcNxk6VeEM77cn+o9UzkgQrJNC31ztw
         E7tlV+0bNwZqknAtA8VRmlTzb/h84Z18TW4FnjivEYqW3B5fsty3ZOJhv0G2a0h5VAtv
         FoeEucfKDFhHFQzTzFY3HWqrNCVRqIH0dDP/pWp9/0M1N7CkUO9E4KsOKxZjD7L9K7yp
         EwzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qp/WwPiH";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7GdkPRX8zkibbh4ESYR1Ho3Nk0qeRUCR2YUPG6hMSs=;
        b=FGAr/gtZDP9t2otgVwVDcaVN96k3eZLvG1eT8px3LUCwpmW0ZvaVQGXzARIZayDN8o
         ycbMxulR9Rl5hGb3S71IFYZRiPn8VQK/PYghAT/KFXbsmx1ncVPhQ9TDTbFxR2fqwvWW
         0O3U0vss+9ZJZ1rkNofi7z3yNcQTW0pi05bQNaiGDtI3gLM4xjzOLCDETw9Mtz66hQHD
         mAxH2Lx6Piccj8BnuPGSMzgXj1LhLrfUSxOUxoSaaS3JRjFw67kcV4P1Ub9WZf9kJfJE
         ojrqKkklo5WWBNHlurmZHK0sVwyCzPu1UKA2lr8MGvUZ0Q7/OTZutccgGKa++zOMoMlv
         SGng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7GdkPRX8zkibbh4ESYR1Ho3Nk0qeRUCR2YUPG6hMSs=;
        b=nj9HTEV032Hv4bGOmz5Pd0aBPIjpuFN+9zgQx6b/n/5ytaqzBMqWSLrIa2U9JxYDQO
         KwvLT64/7BX11kukvOi/RWQ0RUxGCb41OizPiLZCCF5c0eo5OMMlfoZAlaqxqUHHY6lg
         UrO+6AYThfvUj1Cvnlhqfzjhix1mzO3Ny1iuzW8t2GrQeVY90XRSqlFgTUW88q456FE/
         ZqkmcAsNkFSWiy0PXdPu4PY451wiBYS/cijXyFw3rWh16XKJLKLWQwBHTKnQ16HMdBRr
         3UQLrMOjHJhn6xOXY20Hn2L1Hlh+SyXgJ7KoAomT8dLoq3oUDBmK6DqmfW7Q/Tb9VEDD
         ikdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/kmo3FjarwnomgixkV6qZgL2Wpi6e8txApQ0wC6jfokl5TO10
	hZndLTl2CPobI8qRoOL8qa0=
X-Google-Smtp-Source: ABdhPJyW18R6KplXTUtTovzPvfa1AdA7YnNJG+9tH91eMFMXrIIAIi7FC73BXuG5QCPebPrMPXT8eQ==
X-Received: by 2002:a17:90a:9503:: with SMTP id t3mr216847pjo.171.1598554776365;
        Thu, 27 Aug 2020 11:59:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls1646027plb.6.gmail; Thu, 27
 Aug 2020 11:59:36 -0700 (PDT)
X-Received: by 2002:a17:902:9a45:: with SMTP id x5mr17005857plv.243.1598554775914;
        Thu, 27 Aug 2020 11:59:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554775; cv=none;
        d=google.com; s=arc-20160816;
        b=u9mz+1hyWMQb4apajSGzpDito7VogbUB7jBw8O39PrVAhVgUJHZXdgH1DaqbBnjXGg
         NhiIChlagqD27HAhlIZHvD35QlEltq2lL+0tV8ZoD23sXwptfOH3LMZ+2ED9e8OvVGPY
         4rKsUwSP11rYkXfIuWroFJY/Ed26C9Jq4oO/TRkl1+Bq0bk2ZpqTlULt9oCkXMB89rLY
         iPD7RoztkpPDovQPlOxINg2PU+qaiO6vUkKrNYdTPb7EcLf9gSZDOp6Ll84A5hXi65CR
         PYGSz1ijcaAPlj+mvqlw5inHFiEykAMxajTN7maDENqyEWqSoHbt+v6Rx3vPmLlBgJQF
         sI+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Wm+6prYwTnqQYkSv99uHf7WtdtfjqHxmJ7RpUQ4k/mc=;
        b=oC7W0m9WN9Tw0ow9H22csEdogP+CH6mIjWIr5z8vMGc+trsDKpiyAV/paa4sOo/2+t
         O0MBl0VEHVvNc/Z19BFhBqe1cTqRRzbFJA2eerzp6XM9yzcLFH8px/GIFoVEK+G4I4UZ
         rH9gZgNb0ChONmK1ab5lUKdaodd7OllAQx0BcG4pFvd+ISZBSBst6zLZu94yoq7Zx94S
         VairhDe8rxl6eRpoXJejhe26FdKGS76UOgDC0gKZ2clB/+BiRmBJC1W6ZGt1tJOeWdMx
         klvxMR8sTCDaspWmrZnTHGwzWEwlrRhEnKRkWCv6qOiPDq/3OTF6ZfX/fLIDK7eev4R7
         5KvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qp/WwPiH";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j4si265812pjd.0.2020.08.27.11.59.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AA3AD22CAF;
	Thu, 27 Aug 2020 18:59:32 +0000 (UTC)
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
Subject: [PATCH v3 16/27] Input: pixcir_i2c_ts - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:18 +0200
Message-Id: <20200827185829.30096-17-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="qp/WwPiH";       spf=pass
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
 drivers/input/touchscreen/pixcir_i2c_ts.c | 38 +++++++----------------
 1 file changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/input/touchscreen/pixcir_i2c_ts.c b/drivers/input/touchscreen/pixcir_i2c_ts.c
index 9aa098577350..fb37567e2d7e 100644
--- a/drivers/input/touchscreen/pixcir_i2c_ts.c
+++ b/drivers/input/touchscreen/pixcir_i2c_ts.c
@@ -515,41 +515,27 @@ static int pixcir_i2c_ts_probe(struct i2c_client *client,
 	input_set_drvdata(input, tsdata);
 
 	tsdata->gpio_attb = devm_gpiod_get(dev, "attb", GPIOD_IN);
-	if (IS_ERR(tsdata->gpio_attb)) {
-		error = PTR_ERR(tsdata->gpio_attb);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to request ATTB gpio: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(tsdata->gpio_attb))
+		return dev_err_probe(dev, PTR_ERR(tsdata->gpio_attb),
+				     "Failed to request ATTB gpio\n");
 
 	tsdata->gpio_reset = devm_gpiod_get_optional(dev, "reset",
 						     GPIOD_OUT_LOW);
-	if (IS_ERR(tsdata->gpio_reset)) {
-		error = PTR_ERR(tsdata->gpio_reset);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to request RESET gpio: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(tsdata->gpio_reset))
+		return dev_err_probe(dev, PTR_ERR(tsdata->gpio_reset),
+				     "Failed to request RESET gpio\n");
 
 	tsdata->gpio_wake = devm_gpiod_get_optional(dev, "wake",
 						    GPIOD_OUT_HIGH);
-	if (IS_ERR(tsdata->gpio_wake)) {
-		error = PTR_ERR(tsdata->gpio_wake);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get wake gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(tsdata->gpio_wake))
+		return dev_err_probe(dev, PTR_ERR(tsdata->gpio_wake),
+				     "Failed to get wake gpio\n");
 
 	tsdata->gpio_enable = devm_gpiod_get_optional(dev, "enable",
 						      GPIOD_OUT_HIGH);
-	if (IS_ERR(tsdata->gpio_enable)) {
-		error = PTR_ERR(tsdata->gpio_enable);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get enable gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(tsdata->gpio_enable))
+		return dev_err_probe(dev, PTR_ERR(tsdata->gpio_enable),
+				     "Failed to get enable gpio\n");
 
 	if (tsdata->gpio_enable)
 		msleep(100);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-17-krzk%40kernel.org.
