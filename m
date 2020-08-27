Return-Path: <clang-built-linux+bncBC6JD5V23ENBBANFTX5AKGQEBXHMYEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 669B9253DB6
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 08:28:18 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id n5sf3591785qvx.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:28:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598509697; cv=pass;
        d=google.com; s=arc-20160816;
        b=ODnEnT77HiE+Yv+UupDWlD0o0zAv2qSFwrUV2iba4CfFFk0HR2xajzgssGqZFO3TTa
         MAhxqHrT+jSOXgSa25Ga+QWu0WA/X5hMP7AO2QNKR6USTcy2qQsxjIi81ZN6C+VupjKL
         BI4W+bn7eLVxoYxNO82j6qgqVk2chATcGYjk5j35QiaGYulEZ/OiFteTGxFltsE90CX4
         Lr0UTcDt9Otxwy7mIFnpg1h8OIS0si2U6gKx/9IQbRJilCak8OWcJ/Vzq0apqHLgOImx
         9tngqzwE0uH/OZqFELo846pRpfnKxcCng216qX/r2itnF1pKF1ohm2vIcHdUKBNYRrUg
         /0tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=xPB/zsD7GwfbDBymdo8FFUXvaylU5BqudFb2SDGYcH4=;
        b=iqtiDl/tu5M+tmthTWUZWJc+IZbK+rF7yXC9hdgm/cWI+AAFN0ymgoHqx2aOyKSSDa
         674YNploF9m7raFTg7zf5m8m7JCeng+F3JvDrOf89bJcL05ZUHZ60IkwuKlMRO/3JEOc
         G86171MIPH0r6Dr93x+dRJQ8WEHuv6lBhr5JXYcnX+e7pA9nYOWdz7eGWCGAeaVvuWWL
         //79zmXbf2Wv/wSciJsIk/OJTiX6BDdCLWUl81XxSqCfOjc46uK9aQqpNmmMox0WP9Lm
         uqNaNFDuBG/1Q240jOy1r2tqLoW2Tnyq/QmKxKRB3g0HE6ZoN8yaIb05K+prcBAE3ogE
         KL7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nO8NuCnV;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPB/zsD7GwfbDBymdo8FFUXvaylU5BqudFb2SDGYcH4=;
        b=jPZI+9N6Fso1YIYl8VQ6EuLVBYQ9C+HGLCD33mTzW5LVNEJRTHSUJye4Rm82Ogirpk
         TxvTZPc/46Uzv9VcR/w4wuM9EZ413uqHpUjhP0aEUVta7MhUTJQcLv/q3x2kUR7jf9B+
         D6Rn5CMe9ABxTwDrQmFl2y0lBqBwEpaaYiKRGSSzY91hZrxypRiRsu+EKElt04el9Yz3
         GW+d77IBqpplx3RK9tQKcF5T8sVmmrmbrXJGAjRNfHYNqLvkqPnMFIRSBsBICy3o3SdZ
         uJJHr7i9+mLg6goUGQDVjO1HlJxaUVfiIowzdh00ygFPL4F15+NhogyUDner9PLTsQ+r
         eioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPB/zsD7GwfbDBymdo8FFUXvaylU5BqudFb2SDGYcH4=;
        b=RjmaHVkoSkFdw2CxfQEBDimAFv3yr3WgPDnSvHQAoYZzdpPS+kpUY9nWHCtSE2OKnK
         fYHdm+FYNq0SuUYNs9EK8pj3fFkT0VFbqmP54bx7njG+yyw8Eknfl3Q8K88u7pQziKct
         p2Q4+XMU/+5qh3YSrTJLdMJKmSogx84qYtGozVp3wuJy1O8y6RxT+w9Iu3eDCDGs3QGM
         9BTtTFX5thWB8uiFgK7ywS+woeiu95iJ/Nyu1d8pWe5xw7ZpvW5a2Yc+tmzxHsDOUg+m
         0nkANpvD6GPb+mLn97nwJt+MtUdQBM4KNpIZk0LmXOyGxp/QYWGNWGyIqMMfyRo1mqNU
         n2+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z5Ufxts3wPzoR3lag/UoMPnEgZGisp1yP8tjR/6gV4E0STKvm
	E6hOqbfnmG/86UKMaevdLHA=
X-Google-Smtp-Source: ABdhPJzQPj00yCWcSyFvvNzpUwuuJHRP2jQK+gd4e5HBsMS6mysjjUbUNzAnnrpZwW9YvT36N5/QMA==
X-Received: by 2002:aed:2352:: with SMTP id i18mr18084338qtc.167.1598509697351;
        Wed, 26 Aug 2020 23:28:17 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls510911qta.3.gmail; Wed, 26 Aug
 2020 23:28:17 -0700 (PDT)
X-Received: by 2002:ac8:4596:: with SMTP id l22mr12050283qtn.74.1598509697010;
        Wed, 26 Aug 2020 23:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598509697; cv=none;
        d=google.com; s=arc-20160816;
        b=gGJ9jW9H4dJ3iCcVGDWxOpsXEPZdNdeLg+AveAhMYENe4qndnPFsW+rkQ7qIoS/Y1b
         Wb1iqcm0a/VXZmzclic6M8cgI8CiHPllMHlaayulPOTVcOMvTtjQN0hd+RVp1eDt+Y40
         vXYFeZzAwfCA/MXvoO5ym1dGQEME4QxaNvnttLrHHffSbuEo/YS8wES2SGAl3RjPaLDc
         6O7aHTWcAKOEo57TRU6ZlO5GBe9y+BTYcYUas1ECpZsgy9k+1uqZaCWk16KwsE+j9X6g
         lspeJIe3f+fPeEVOYL+mDhpveHvLomzLxcqN3glk+3EIClerhNDNr/XZYK1xwgUePN+/
         1SJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Tbh3oqBYxgTo7icRm+vFUDeuME+TlIyy/dsJABkc6v4=;
        b=MEUsgedQYLpUN2qU9Zynz2+zJHdGzS5tgBfpVD6nZpp8EXJAvhZ00+1esbw7oBYUls
         lU6UD0ErI3nhM+Qf3lKRzkk8ZMfQmEYO89uG1eNWwHzEVRfftZcAJwtUHF5Y+5wrGwSn
         b+fBwl7dOJBKvrpInG0tSWViBDavUUXC9Rk8LKcChfAf6s93wcnlbM7Y7DLu6siIZxhg
         OH+lG2OiR/3XSeOTjVf4ndZx351TTw0t62XZ8pa7MuAZvVChf20CX+f0y3O/xgO05zv2
         hvRC3DHmnsZkuWqJAgnybTwDwX3vUL340it5Gvrk3UbyJCyGFa25Sv1UzVybhaDurOPt
         daPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nO8NuCnV;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o24si82123qki.7.2020.08.26.23.28.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 23:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1DDEF22B49;
	Thu, 27 Aug 2020 06:28:12 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: [PATCH v3 2/2] Input: gpio_keys - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 08:28:04 +0200
Message-Id: <20200827062804.16730-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827062804.16730-1-krzk@kernel.org>
References: <20200827062804.16730-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nO8NuCnV;       spf=pass
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
dev_err_probe() and devm_fwnode_gpiod_get_optional().   Less code and
the error value gets printed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>

---

Changes since v2:
1. Preserve comment,
2. Include <device.h> to fix warning on clang (reported by kbuild),
3. Fix use of uninitialized "error" variable.

Changes since v1:
1. Use devm_fwnode_gpiod_get_optional
---
 drivers/input/keyboard/gpio_keys.c | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/input/keyboard/gpio_keys.c b/drivers/input/keyboard/gpio_keys.c
index f2d4e4daa818..160d94b1c2c0 100644
--- a/drivers/input/keyboard/gpio_keys.c
+++ b/drivers/input/keyboard/gpio_keys.c
@@ -18,6 +18,7 @@
 #include <linux/sysctl.h>
 #include <linux/proc_fs.h>
 #include <linux/delay.h>
+#include <linux/device.h>
 #include <linux/platform_device.h>
 #include <linux/input.h>
 #include <linux/gpio_keys.h>
@@ -494,23 +495,13 @@ static int gpio_keys_setup_key(struct platform_device *pdev,
 	spin_lock_init(&bdata->lock);
 
 	if (child) {
-		bdata->gpiod = devm_fwnode_gpiod_get(dev, child,
-						     NULL, GPIOD_IN, desc);
-		if (IS_ERR(bdata->gpiod)) {
-			error = PTR_ERR(bdata->gpiod);
-			if (error == -ENOENT) {
-				/*
-				 * GPIO is optional, we may be dealing with
-				 * purely interrupt-driven setup.
-				 */
-				bdata->gpiod = NULL;
-			} else {
-				if (error != -EPROBE_DEFER)
-					dev_err(dev, "failed to get gpio: %d\n",
-						error);
-				return error;
-			}
-		}
+		/*
+		 * GPIO is optional, we may be dealing with purely
+		 * interrupt-driven setup.
+		 */
+		bdata->gpiod = devm_fwnode_gpiod_get_optional(dev, child, NULL, GPIOD_IN, desc);
+		if (IS_ERR(bdata->gpiod))
+			return dev_err_probe(dev, PTR_ERR(bdata->gpiod), "failed to get gpio\n");
 	} else if (gpio_is_valid(button->gpio)) {
 		/*
 		 * Legacy GPIO number, so request the GPIO here and
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827062804.16730-2-krzk%40kernel.org.
