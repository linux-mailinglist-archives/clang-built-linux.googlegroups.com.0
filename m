Return-Path: <clang-built-linux+bncBC6JD5V23ENBBB4FUD5AKGQEEL6F67Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A4254D76
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:20 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id z16sf5134842pfq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554759; cv=pass;
        d=google.com; s=arc-20160816;
        b=qUOTUP3JuwPgUMoG0UscyK/WqBUjJ9l5SdIsqc9RwTfgMY3d4nM5bbWwBRc2Ibqk/O
         F08g1StP8EdZ531vc5wO/ExEcK8Nnm9PEUhd1mCvv71IBQuHg33rR7dZZnTIDG/1RQrJ
         +Lvp+/QOHl7KAd2pkXmUpk8lAkx70gaRCuztmHijmwoyBEUl9b6hGqPgxRXYRTBMpMyf
         W71eDqdU5vas4RTepZ9pVTP3JSIEGF+R97HJm16n/WeIPgleWz6VTuoSoESV3uvByFpr
         PfEy8sOwucQJ2LZQSI7zZZCH2qrnw0wrrGFt0UYHOFHwbEFxpbd9JXexPSNa9sYADE8C
         pTkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=0faIsOzmg3Zzg4f1Op77IfF0e5t8vzEHrN655Xv98/M=;
        b=S0ahUjQ5ApH3wzY+l/ZB9ou5uTeo5FIjjQeiAl0OcdA2vMBAXaEhbHb1oXoHICaVmJ
         8DeStH/RfpcA9l6tH91y2/Q2ll6ZmsG7SrelycjZDsaITRkLEqLxJsXqH7le9hAfxeeW
         fU4QJbMJHf4B68C63AbJZJVTi+1Ib8CFku1biVyQ6wtv7Zb4GXsH/gBnPRh5C9+QepDj
         bctFOhTEnUdq3B7cDB2e73gMWSHlwttYDH8mS6V0KwMCtJAt8tptdgPZzHgJ/KUEnlFF
         9Kdoy2GM1xnTP7zmgvjQv+cH8tswx6cKjjJ7LvOEEqVo5AP7KzoRGuynY/Nhbmd8ZW+e
         0gRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hadf1zyB;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0faIsOzmg3Zzg4f1Op77IfF0e5t8vzEHrN655Xv98/M=;
        b=dESMoXm/JydRwgqVZbxCAo7v2SwFTLW1kX4svN0zuvPDl3S2Cu6ZDPvSdOJEgh3pPj
         1ZCEk2vAJ6p+FkTdi2E6m20SySu6qnMSYrZuh+d3IXCdrgPh4TqmytrKZNgLP1QzduJs
         r7Tz8b+ahSd/+EJPhqjQGS9CYar76rOoAyQmkaBThdrzlQTqf6Qm+vV77OAe1Y4+EK4K
         K2juMouW97gnccWGZGSCLkqmwxIycaydO80iXbMgytx/4lxqXkoE+ffZS1opquSSvsdV
         PqPRXq0wHEJaE7MFt/Eet5MDA1eg/fVnv4jAEdKg+jBMiSUoA6oSyhY1t7759G4rxxS9
         v5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0faIsOzmg3Zzg4f1Op77IfF0e5t8vzEHrN655Xv98/M=;
        b=bWExDCjMvSuDFjgNaUZPyyZAsaUvhWEjzLW6A6AaYWuYUY5AQLf6X52b/Nk2mPOe2Y
         pkwu3W1wWGTxFc5Lv0iNuY0qnS2pfWBWxIEWpITreNwQS5mELQIJnXKs3JOJmoUBJIum
         ORyEP8rKwQ+cDW7L5v37x1JAZFWhQz6mNW3c9koRAB4Z7LUjsFicb620kVBesDt4Xhs4
         99zV/96cbueq4KHOZCtyDjvtoaoumNYaEQzGP/xbv0VAKTQCmx0bfctMieCq+emGVqos
         Ie+V/9szzlJr7JHuHVeWLNOugSlj7MsgEi6aeLRNrDhmiszKoURMt5f9A1VjDPdAOJ/9
         YYHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303IjgYt+zJjjQmV2g/yrMWPlHiUHmMr7G6QypmKxX9mzykPHfz
	lCKjN3cbNXbrStDCGPXR2dk=
X-Google-Smtp-Source: ABdhPJww2q/4k7MszdsdPDx7F8DIPNPlXUM/rwSv2d2cuFDLXV0yFEVqsxfOWXchPqvTkiCGkfBQ/A==
X-Received: by 2002:a17:90a:e00e:: with SMTP id u14mr232967pjy.51.1598554759491;
        Thu, 27 Aug 2020 11:59:19 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1649069ple.4.gmail; Thu, 27
 Aug 2020 11:59:19 -0700 (PDT)
X-Received: by 2002:a17:902:aa4c:: with SMTP id c12mr10748337plr.37.1598554759090;
        Thu, 27 Aug 2020 11:59:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554759; cv=none;
        d=google.com; s=arc-20160816;
        b=uBhcrcjZK07Wq3nviemMl9EfK1jzf3ZCTJaH9RBt/NEUtFKvpvQTKIUnPBxZpsWwKy
         pMYvMyl//Ofn2h4MN98EEEEvVBxBQb1kfF8nLhGQ4Yb+qC7YP5c+MaJtBplPcVxdP74/
         0MuGegT40Kg7tgrTDMJ5zLZoz36xKE7fUUNEn8HQh4d/iSaP9tLm9o2b0z+uSBSaOsC/
         v1Bcx7jUTsxkiRvzf/vf81iOS/g9ZS58/dWN7c4KtumO6z7rSBBx8IPfN0r8Fy+XCQlc
         4OiZXO2yJkbnycOdTd3X3ESnDvR6kzXXVaO9My8G3/FDLTe5CbKmp9vjvFJXhobSJ5oL
         rklA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=d5UfQ2BJQKdf2/aGg9sqTIxC0HzrHwo86dH2V6tFkWI=;
        b=SGYAXtFfodEGCcwVgz/I/hLp+RwlEKXNBp4qmf+uy9iN5b6cwN2ODL4itYjvYHCyqp
         g1QRLyB6KsR/b08qVPzyOH5zff1xo0PIom3h0BqyMgIu7mlOAjcIOGyvIVSGU1Cx5RaH
         YZYZSzq28MMSsrTs0JGXHjc6AY6NXCdI4OhKznyVIxVVpxvO1henJHPct7krg9n/6qCv
         KzemOhXxNo3QnEstJGZ/zAopAEFP9sxGMkgEz1rTI/+2yg9od8Xlp5bG2EKAIbYmzTjF
         LgCk8cCUtLcZnc2ZkfXqaPOXB/YAYsgNsPHLWjaRRnobrUsSobfFip01Bxo/uDPyDjPg
         RK6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hadf1zyB;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k5si182753pjl.1.2020.08.27.11.59.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0DF6522BEA;
	Thu, 27 Aug 2020 18:59:15 +0000 (UTC)
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
Subject: [PATCH v3 11/27] Input: edf-ft5x06 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:13 +0200
Message-Id: <20200827185829.30096-12-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Hadf1zyB;       spf=pass
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
 drivers/input/touchscreen/edt-ft5x06.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/input/touchscreen/edt-ft5x06.c b/drivers/input/touchscreen/edt-ft5x06.c
index 6ff81d48da86..d4827ac963b0 100644
--- a/drivers/input/touchscreen/edt-ft5x06.c
+++ b/drivers/input/touchscreen/edt-ft5x06.c
@@ -1098,13 +1098,9 @@ static int edt_ft5x06_ts_probe(struct i2c_client *client,
 	tsdata->max_support_points = chip_data->max_support_points;
 
 	tsdata->vcc = devm_regulator_get(&client->dev, "vcc");
-	if (IS_ERR(tsdata->vcc)) {
-		error = PTR_ERR(tsdata->vcc);
-		if (error != -EPROBE_DEFER)
-			dev_err(&client->dev,
-				"failed to request regulator: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(tsdata->vcc))
+		return dev_err_probe(&client->dev, PTR_ERR(tsdata->vcc),
+				     "failed to request regulator\n");
 
 	error = regulator_enable(tsdata->vcc);
 	if (error < 0) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-12-krzk%40kernel.org.
