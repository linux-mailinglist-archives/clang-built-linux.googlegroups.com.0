Return-Path: <clang-built-linux+bncBC6JD5V23ENBB3EEUD5AKGQETPL2CPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E313254D5D
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:58:54 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id v2sf4340648pjh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:58:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554733; cv=pass;
        d=google.com; s=arc-20160816;
        b=eyVics0nkivGvxbhKeGRvG21bQZYKuLfdOrMR+Bbim4jAp/ZZh/viS6VuxtpoKQ1Df
         lnCOh/neMivbgt4atyTFlZtkyRVcvPZlx1LgZVYB3Lw8D/XyMQlR/ccC+c8Q5qeeJEP7
         JYZdyEM/HPbbZHb4+XigmVKSk3WIrlwTHbOaiYl0qqLSkMHNpGZA8dhTSWvLFEZ2ZOJ0
         yYdjN/QWzqFO7yrYhA2y0E2bLC6SrF+8YTWVAnQh/YMAyhx1PCB6hTW4GSfNlJ2MwkgQ
         M3KzOelNkuZZx+8tCxZ/bCyjnU64AhxEqMFpa9NigDx2F9nVyMuYl2D1p06aI6WZ/A9F
         FxTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=lTBnR+mc03RfFDHJ6xaJlg3TjyHzkjOOIH6pAAWcFKE=;
        b=MCUJAop8AOUTNwWQ+MJQaCbFjhPBQwhhYXkEuHYwsxNqE5wF6C2Ftux5hkXs64/aQt
         10BBqyx20xvgl/z5k7lZJXjoTiFfcE+YbnYopVkMym5wGQp01iF9WvI7TWTcYBQzKuyY
         he3RL428eAlI4hAvmiNTug8nRBrCu4UCzGRRbZ6WwEodzmo9qeA5mUCSAJX9dRoY6VrX
         zOOeNOGDUeuGrF9AD0X0lyjT64jZpHx3wkCiRsVSlzQC/S6i70tLcsANwVenVFRSzqFy
         Tt5cwz101GAgCFZG68c2V+YHNliZNcVvwUsYl9UTJ1YfdEjpRMvGkVIty1Qg1SkgcFaC
         G5BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x8XnVCSw;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTBnR+mc03RfFDHJ6xaJlg3TjyHzkjOOIH6pAAWcFKE=;
        b=GX62Ntq+pnDePparnmwRGqGaX+Umi3AYztc6u+liGpKhgt+Muu4NxBKt49XsEdY/Rl
         5spCcBWFMoCxMkvcXYbWSkculua6k+hCl4WSFpXo+B6TsTCnIvVs0CNbmgIhg2gqHwSI
         RmScyJqwCuTEVNAOGaJU6qjwmNEG+n3K4CeLHrOVFuUJp6gArt2mtQWcJkHBe10RfgHd
         xyZoREfvArpXRLEO9SHwy+MrELDPNs6dvj4kulZ8gXJQuxBF6/pNbok1BVnlCalIyVsB
         M0t8yEBcymTz9mttU9Ucc0AWCgk6Y/x+54zmDnI4IviQSvw9BauSPo+g/S/pDb97n5ht
         HdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTBnR+mc03RfFDHJ6xaJlg3TjyHzkjOOIH6pAAWcFKE=;
        b=Bwvtb/ci22KAtIZFyWYeE+Ah0Ahslem1rhtiwOTpe21515fG6CGdhYi+hmAGCDWB+p
         BtLuQnTQ6QYxjq1r2kJQO2KjRu2ZddGLlJRkVLQSe+DJlhheQBRcRB8PodqZ+r/FfvcO
         55G0IAaPXgUXlcQD7XL5zTYfyQQitfes0TJV49PLkK8L1eeh8Ir7WkL80bPr489gm6/G
         xXaU+nFTjJkxwRLyqTJLmvtxoZIemic1Kx1dfw5btc33cf0Fue8rsiDf4YG3EGhNoNqX
         WOdsBndXWvvr4CPBhcQ+6SodxVNpQfgqYv4KOroRr6BzZzLGWfCSaMe8PGkNG2d+MPDw
         Iirg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A4xi2vmWfmT8wTPRRQec6vPiO9d8ucMu1ksoRMetguWiJ8OSL
	uZ1PeB1BJ0jaxB6Vf42j26c=
X-Google-Smtp-Source: ABdhPJz6FRcJU3SGNrYn/I8UE9pNefvmKypPzUSQwDf3e+P+4eLoopiDORCyBHFj4P5Jl9UvpWH3Tw==
X-Received: by 2002:a17:90a:af82:: with SMTP id w2mr218557pjq.185.1598554732866;
        Thu, 27 Aug 2020 11:58:52 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fc89:: with SMTP id ci9ls1349722pjb.0.gmail; Thu, 27
 Aug 2020 11:58:52 -0700 (PDT)
X-Received: by 2002:a17:902:b28b:: with SMTP id u11mr8503849plr.117.1598554732427;
        Thu, 27 Aug 2020 11:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554732; cv=none;
        d=google.com; s=arc-20160816;
        b=LQr7FigX2SxvKn/ofcJKQLAJnIz0gtjH54w2tN9q9gHj+8qyvj698Fx6cvDOH89aW1
         qKYFltJJSigfuK3Oit6iDPwbDcDp7C0RNGhXSgSHoe7zjOuANqmvuEoGOa/HfglaHX2s
         nxBLE9IS9ZAFwTlHVMiy4wm9zWimRIY8Yok5ftitIiLDmU6MMFvQ4mAtfLJO1ylNnk1o
         eOUHtE3lETr59pKyRT0awk9zVBnhWUlUj9hvJ7hj26jDFTLWQteL4wdyRAiCXYtmjZHa
         LIozAeiUoaHggSQeXKCLSjLtaXr2oUZEGh4GHC2vXVwCjou4LmRc4aGkC58q/O4nujjL
         RgAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dwWPAMoGyywwepVi5Wy2k6boM65xqbG2NrSc+ZgYUcg=;
        b=a4F01jKmuOSHILterGHhPJjVDbuRVGt4Fgu2kPrygBiKajKaLJeCyXaNW8EPvidB2R
         EvhBOD+BoDE5G0EAiUILz8Z6hbGF2dDOdcH1AiStkdqA8h9kT44MsZUr4/9XQm2bUzHj
         Oon/NnMmAjiEar49JD5q3dA/wGZhziyz4ZYE9Gq6B0E8+mYYWz9vBk3PWEB0qdKIm2Im
         Kpn1t1AB7BX2RQcvqvKTedZGa0z0yobZM8y4ct3xosmEpz4lZtUnoPtRuLPDOqNhzrzK
         XzTbQxyT3noefBi1apVyM1pzFHSH26CC/u/4CNNTGltxD5OiV4wL41nSRZBc/iqw2/vR
         +u9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x8XnVCSw;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ds10si204812pjb.1.2020.08.27.11.58.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D86D22BF3;
	Thu, 27 Aug 2020 18:58:49 +0000 (UTC)
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
Subject: [PATCH v3 03/27] Input: pwm-beeper - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:05 +0200
Message-Id: <20200827185829.30096-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x8XnVCSw;       spf=pass
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
 drivers/input/misc/pwm-beeper.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/input/misc/pwm-beeper.c b/drivers/input/misc/pwm-beeper.c
index d6b12477748a..8c0085e8c552 100644
--- a/drivers/input/misc/pwm-beeper.c
+++ b/drivers/input/misc/pwm-beeper.c
@@ -132,13 +132,8 @@ static int pwm_beeper_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	beeper->pwm = devm_pwm_get(dev, NULL);
-	if (IS_ERR(beeper->pwm)) {
-		error = PTR_ERR(beeper->pwm);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to request PWM device: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(beeper->pwm))
+		return dev_err_probe(dev, PTR_ERR(beeper->pwm), "Failed to request PWM device\n");
 
 	/* Sync up PWM state and ensure it is off. */
 	pwm_init_state(beeper->pwm, &state);
@@ -151,13 +146,9 @@ static int pwm_beeper_probe(struct platform_device *pdev)
 	}
 
 	beeper->amplifier = devm_regulator_get(dev, "amp");
-	if (IS_ERR(beeper->amplifier)) {
-		error = PTR_ERR(beeper->amplifier);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get 'amp' regulator: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(beeper->amplifier))
+		return dev_err_probe(dev, PTR_ERR(beeper->amplifier),
+				     "Failed to get 'amp' regulator\n");
 
 	INIT_WORK(&beeper->work, pwm_beeper_work);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-4-krzk%40kernel.org.
