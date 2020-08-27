Return-Path: <clang-built-linux+bncBC6JD5V23ENBBL4FUD5AKGQEIPGIWXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0F5254D9E
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:00:01 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id r15sf4835695pjo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:00:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554800; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqZAtlulBb+55Qt93hO9PPBQPrKlNoY3XTNtXdaFLW/mQq0zWK1n/E5IzW4M808Bi7
         asSYTgoBg33fn/LclVRJ21SMj2zhxH//mIZqJwB+mr+MPHGAcl8lz3oYp3940kvxZCAR
         fTuHJg03ak4ezPjnV6Bf1wZLjP8UblY9+Z7wb36Xnob+EMxTF4ITQMh+BdFYp5Uoe6bw
         zEeAydB7WDkrm3NwI4aDESJX1O0vg969LvX8l8Z41gT8/1qXIuN+7RUyJpF3vKXYOnVB
         JjIe4vRIDiIR//1Ip6S9vqrWA6E2J3ATsOI0AETsCuoktY+vHkIAzKudhR+4SRbXaTlG
         rtmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=ezmyobtKAbClEMVGiqZax8Eftf1o7wtFPyHN6/Ftwmg=;
        b=ocULdHdGMQLNf/u89fZa1R7kTAsnqFSSWkslNBpXDOvisi+7uZnTrP1C/R4uBaFruY
         LyttyGvynBPSthT5OhWllJCT4ALxVGFEHu8gqXXqnJXXvUmw6H0Sm0CYuFv1KBf4pEpP
         68cteU2x7zA+JxqKtua6R+a7aAz1Bcqh97/6DRneOFcWvJobgancQ5Ez0z62YXiadvNI
         f+gfnwn0aHAK2IBoQsfclrhEsX8RsESfPohw0vyzWAy3KDaF2+c08fUVJr9WOTcdau/Y
         Ln/w/Pp4yPrB4PDqzSIuBLeqhVjix7qwlDI31GVEAr/n+9zUCtwBnmIngXw3zFN96ePy
         4EAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BnEeAY8A;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ezmyobtKAbClEMVGiqZax8Eftf1o7wtFPyHN6/Ftwmg=;
        b=S5HwdBxuuIRYv4LuKStlNnfMqgVWRDZFJpEh1DaYZENmW6uuk1GzgzCfvRLwqgTpZH
         BhaREQH6HSqAixyoPMNeW8VeOmnCLBoGVVOR1Lz5DVKT8Brmc9csZE+tqeSZR6elJBgJ
         aow4e5astSAg3xxSb3k6vnoOXb9kp+H0hJo7ZleLK5i+Nvt7lafN4r+mctGL27nnrRqh
         V38xGNxql3NcDDfvxyvLyYDF1JpBfccsUO0tw4tfO0Vy2dsuQ4uiC6EapHCCBodVnoPG
         gDt1vx3dLVXNA972HHDBI64Wc5XNea820rZuVu9Ysp1wJUE4LeJsCduhz1iWxsmmtgxH
         yvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ezmyobtKAbClEMVGiqZax8Eftf1o7wtFPyHN6/Ftwmg=;
        b=YXA6Fu+hBrh8gkKZwsVaS/gDrDAU9Be5miOlDVuE3B0kdR09guCTqPe+bha1cIpByb
         qWPHsTgXEVw+TJmsGumpE8lkJqtwKKbZGYKJUzBQieZq8OuRLC856bEjL58n/B9icN/N
         722gTTnix7BBeQR1BV2ytLn76oetIl3E5usNmp+9KNhg5SgX77pwpojdfiiuq+TMuGnZ
         bFOrzdQBszTAMmr24h4vofbY1U5hLauNcFsgiYzgzRg/uexvkEWRj6OdsZZeKIWDTEVa
         8GWL5ZwIj9g6tT8k2tAD3rAx1LR7+d5XyCkGLHJhcl2B6iA2NSdzKzA+tdfEVxpG06R4
         gQ4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OxwOujfc9LNClLl8UXGmFiCONw9QJXz5EAEJpWLHdTdZS1zqQ
	k2Hlk1h807eYV9o4U2/b/5k=
X-Google-Smtp-Source: ABdhPJz6neNsAOFhYcGeKQvI0AaZGq4B+YSupMFVywVQZ4Hq9hnEXW3r5bzHLYz/zX/iVljhiu4IDw==
X-Received: by 2002:a63:3fcf:: with SMTP id m198mr14418428pga.400.1598554800008;
        Thu, 27 Aug 2020 12:00:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d745:: with SMTP id w5ls305518pgi.8.gmail; Thu, 27 Aug
 2020 11:59:59 -0700 (PDT)
X-Received: by 2002:a63:ba49:: with SMTP id l9mr15653934pgu.101.1598554799592;
        Thu, 27 Aug 2020 11:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554799; cv=none;
        d=google.com; s=arc-20160816;
        b=lmV+ANkrOHquckeqnqRV/1V377RZse9AT3WzIw8c1htVkExSHgqnvRPIPLhr1gphvq
         C5/5qY23MKK4wzzMueEg2a2aaaDxbymXcnjV8HcXfuZecIbATVm3FsjG2yTdDbMTTgzz
         USc2FLCq+sQvY/ZLIOpaoIJV4fBL1DVoOzBnhG6RjkurNobDUxPZc8cPWWOG1ODHABjU
         SF2UKolNzC2swAqYxM2UKwhkAIxgeZQLlhDeKqmrkVZxLhzaM3z3yUiMql84chicKkuh
         2t7t/G/useScYitROU9RbZCjvkBvtNuFMeWPA8ErZGnykPKNQHQ9jDhswB39fM+UHJs9
         B5Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=i/zpqz2DQksRQJYkat/ja9tDlijK0HRA0b1Pvf2mUps=;
        b=uO1NowRzfvT25dBJkYTIWrveKU/+OIEJuf88fyGGRBPkBt6wmfSmeVdtj/noJRH4Do
         MRd9c7p6D5f6SlZbpiFvKKW8+80qwfNZHJlRraBstt/KQhXHcrxzHd3LJsamfizJKQE5
         XdYt+diqBIm8p0s5B4279kJgD4lhCc0u3jeDnib3+wqVAuky4im//PFQfqUZtLP7swlA
         35+62eMclKAchCJOAxAI8xc91zQhKiSElJQoW9UTDw2gaoS9IC36O7Np4W4XUD5YcZkg
         N1diVSmdU9RX3gYnorRIORI/RNltGFgg7HxCAh1PGvrVtD8F9PttOBvlpVwuV/96XsPp
         tgug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BnEeAY8A;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s2si175735pgh.4.2020.08.27.11.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E5B122BEB;
	Thu, 27 Aug 2020 18:59:56 +0000 (UTC)
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
Subject: [PATCH v3 23/27] Input: bcm-keypad - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:25 +0200
Message-Id: <20200827185829.30096-24-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BnEeAY8A;       spf=pass
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
dev_err_probe() and devm_clk_get_optional().  Less code and the error
value gets printed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

---

Changes since v1:
1. Use also devm_clk_get_optional()
---
 drivers/input/keyboard/bcm-keypad.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/input/keyboard/bcm-keypad.c b/drivers/input/keyboard/bcm-keypad.c
index 2b771c3a5578..23e11b4efd13 100644
--- a/drivers/input/keyboard/bcm-keypad.c
+++ b/drivers/input/keyboard/bcm-keypad.c
@@ -376,17 +376,11 @@ static int bcm_kp_probe(struct platform_device *pdev)
 		return PTR_ERR(kp->base);
 
 	/* Enable clock */
-	kp->clk = devm_clk_get(&pdev->dev, "peri_clk");
+	kp->clk = devm_clk_get_optional(&pdev->dev, "peri_clk");
 	if (IS_ERR(kp->clk)) {
-		error = PTR_ERR(kp->clk);
-		if (error != -ENOENT) {
-			if (error != -EPROBE_DEFER)
-				dev_err(&pdev->dev, "Failed to get clock\n");
-			return error;
-		}
-		dev_dbg(&pdev->dev,
-			"No clock specified. Assuming it's enabled\n");
-		kp->clk = NULL;
+		return dev_err_probe(&pdev->dev, error, "Failed to get clock\n");
+	} else if (!kp->clk) {
+		dev_dbg(&pdev->dev, "No clock specified. Assuming it's enabled\n");
 	} else {
 		unsigned int desired_rate;
 		long actual_rate;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-24-krzk%40kernel.org.
