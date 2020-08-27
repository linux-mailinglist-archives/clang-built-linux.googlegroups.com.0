Return-Path: <clang-built-linux+bncBC6JD5V23ENBBIUFUD5AKGQE7EKKZ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C4254D92
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:47 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 1sf5637414qki.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554787; cv=pass;
        d=google.com; s=arc-20160816;
        b=va/kMMe/9UJWI76f89BOd+sRgjLm8Tylbk6S2Q10MpAMH4wO87SKotzIoUB1mU49Mp
         G1VdOT/pUkdD4460QFG0szQEEcUt1CMXm8Oie6/+GbBpPHpb2plDNURhmox/WH+ZzLJA
         ia+TKv6ssMVIteTUrIGcQOYBbgcODWpSWJTPGBGenbdk39QB7VUqcYHUW6KrIhGy/Vb1
         vwj3/qXL2B/smP0l0aZlFcDjvxVD502jyBWMdv9mk1bmxLsAvnA7iqi7AJE/3UBQx2dM
         xjmpWohmOYNG52Yg5i+Mu2RoaMnjwjm/KYJ4lIyBVPaVvyvIIhPp6k+EtqQK4QQ6AO2m
         rA3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=41tPX0DD8egdJvGebhg3XEqmAzxOsr5yG4Wxk6sR6TU=;
        b=LB7kEoy7O2wJFYAmbgcXGwVz0VQRDyyqjm38jRPwyKeQQ1Wk4xG4hWSU0jXtPCXCUz
         HH9E0w9joG0ETZJE5MmIynnkhLFxKHNxWfZhy2MGTFpb9INiRbjEEe31UAwqB6xX2IdW
         47whbrHS90mmkRCay1zpDXR1U+uv4n62sk8HKqR9Ry1Y0d4urtrnyiapTjJd9AhJJ8nI
         nN3sm+ITWZ8wabWaMVr19xkxVXWPuWf2OD5l/5Mh7K1fLoww3WRfXE1U2ux3R6QhJBiL
         1bjM/1ksGu3jxAvVLxvkwwreNsxdyBq7oLo8gEXCbKgyMqAjjyjy4AqNehouWjUE2eq2
         oIWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e0SGEsni;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=41tPX0DD8egdJvGebhg3XEqmAzxOsr5yG4Wxk6sR6TU=;
        b=U2ajj3kjlsU97+UzpkOFX4JSl2hcX5VlClIADThyF4+dFRb0h0byU3hCGccRxyUo7K
         74TmftCJY315ZS9skG+kZ8LhhSWawqc1/77zDuYca8cj6rSfnZde0wVQ5GWtjCrLTo7Z
         RSORD96E/DTbGgFr/rKn9SvavSs6t6B1e5y8pu/FzUPMeXaY31fxeib3SJEUqA1dh+TC
         KWGU18sySBWxBngk1cde3QyKARiQe7h/Q8r5QjKBDIOEEVV74BJoiqw2rpOANC/AgFZk
         tKIg2RDMMbUkFZzm4BynivJWUUMAayPc3ZBUHjKbzyI64jxrSYAqjgb4705XxpzrIp1s
         QrUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=41tPX0DD8egdJvGebhg3XEqmAzxOsr5yG4Wxk6sR6TU=;
        b=AMs+Q4gAPHQYIe6hMIXzgoDksNNsplHfofqX8SYpxxCg8gxaw/xpMiWcvSoMbto50W
         54RTFAtOxuVuUxiEAxKy5DA9dH5PDtjaDOeMXc2EWNNAE0MBp31CwAJj++HcaOhN2LPf
         FGiITmyg2Zv+CsTgNIOiEQMyk3EQJV06N+HpJGsxELq+l1JoIX3iLAxePOo87Ra2q5VR
         K62pOuKIFEyLeYz1QWL/MmuLOhzsvWdjmZrILa1kWyogSNVk1FGu3OYgZuMt7YpYA80V
         AA7tMAMWtgcAMr7u8xQpwgg+fftVCZShENUc+fl2llwI767ye3zwC8X4zp3Lgtnua4gp
         VWHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sWNGWmmHCRSdLUV3GaUaMJBG7VRBAbWDlPTkoXrYHq6SRwvGe
	ARnnK+p1Dng8zX2d6O7S8Ds=
X-Google-Smtp-Source: ABdhPJzLLnvlOlQWsanzqksRAsZnobLIdYiYy/iSnA2Itb0p02XW9eLxcoUxWGPqTMy5pKBlqCKzmA==
X-Received: by 2002:a05:620a:12bb:: with SMTP id x27mr20939033qki.202.1598554786928;
        Thu, 27 Aug 2020 11:59:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls1281733qta.3.gmail; Thu, 27 Aug
 2020 11:59:46 -0700 (PDT)
X-Received: by 2002:ac8:1a6f:: with SMTP id q44mr9759188qtk.259.1598554786616;
        Thu, 27 Aug 2020 11:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554786; cv=none;
        d=google.com; s=arc-20160816;
        b=v2+KZSqj14IolYzvP6geo6G7S7r90oz0WvZpliSVJwbVkZ4RjuZA6rQaNF6THoUbQA
         QHdwN8vOp32dx7SqxvO7naU5JHJIdhYI88AccQSU35J8OM+0RfVnCTq6KqDSQMFhEUWw
         sqmVdSp2PxSZ/YqUslqzRgkyY40bkuo9/Z7k2eb6O6CEec5B2TcFm20NG3gt6hbPiPIv
         Z3AKkkl9A06X1IeE699j0MLvlK2a34gNqGnlRFX6z36FZG+aled3e9+ydKfxqkr3hqx2
         Lb/7vZYm0A1oo9MYmz1KnimWaeuq/0kRwAE/zzD7yVwdzAalAJEz0DXNPXA74PHpncw2
         8zig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Kg0t3JjtQtn6eewQy2q2pCAMjrwKBwrYX4veHLOg3/M=;
        b=NaizuSXMS8E1Mysq1DnaWeifteZwuQ95F2hGfnN79fcpKYyVMpaqprJMqt+Hdl87CF
         Q7rpZUsFQ3GLlgRmuG/IhZb+1B/FbNv6SmNuKCWlc0zqyDsY5dpN0W0v+lUa/Xf9Onxh
         LHU74NpNVNdIiMytCYAlbE6wn14f2vPLUHAKq6DWH2Ek+rgYSc9pwqtVSzM7ZTgg4ExM
         jAdmPMt0NtCpdYY1vIrj00dgI9+vPNsIYMClNXLS0+7Iq989CvmL58ViAZMWCuGF+Cdo
         FAudpbQonLFGW1WhNheFBek1ATCOl0nJLnkmPtezI+XyEjjF6iuwYioQYgOhAAzlwHCB
         G4Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e0SGEsni;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a189si162656qke.3.2020.08.27.11.59.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B8EA422BEA;
	Thu, 27 Aug 2020 18:59:42 +0000 (UTC)
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
Subject: [PATCH v3 19/27] Input: silead - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:21 +0200
Message-Id: <20200827185829.30096-20-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=e0SGEsni;       spf=pass
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
 drivers/input/touchscreen/silead.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/input/touchscreen/silead.c b/drivers/input/touchscreen/silead.c
index 8fa2f3b7cfd8..754debb4b2c4 100644
--- a/drivers/input/touchscreen/silead.c
+++ b/drivers/input/touchscreen/silead.c
@@ -512,11 +512,9 @@ static int silead_ts_probe(struct i2c_client *client,
 
 	/* Power GPIO pin */
 	data->gpio_power = devm_gpiod_get_optional(dev, "power", GPIOD_OUT_LOW);
-	if (IS_ERR(data->gpio_power)) {
-		if (PTR_ERR(data->gpio_power) != -EPROBE_DEFER)
-			dev_err(dev, "Shutdown GPIO request failed\n");
-		return PTR_ERR(data->gpio_power);
-	}
+	if (IS_ERR(data->gpio_power))
+		return dev_err_probe(dev, PTR_ERR(data->gpio_power),
+				     "Shutdown GPIO request failed\n");
 
 	error = silead_ts_setup(client);
 	if (error)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-20-krzk%40kernel.org.
