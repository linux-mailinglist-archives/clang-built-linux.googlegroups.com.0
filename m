Return-Path: <clang-built-linux+bncBC6JD5V23ENBB54EUD5AKGQETCB4JNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F56254D6A
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:04 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id q6sf5542842qtn.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554744; cv=pass;
        d=google.com; s=arc-20160816;
        b=qWC/zkJSt1DhKgROdJOfwUH+fdMEB19w9YyTdmIjNkUEEv+ImRmUmSKw0eyUiWf+v8
         LgMBYF0E5CfVGaA5vWr0yzg6Hp5MDjtJ5ym/kIGme7suBKvtqUr6q+gxv5I63w1V1k2M
         emOqIXs8yt3hWUIAaQbU3dYtnqNCwLYhEc07D/dOQ4UsAGIvBj046dJ9SwRJkndE5cGX
         0WNCze3QUk8F93ypfL3m30cX19WrQFlnf61npTYs7wtW1Jer8DGuY15x4uwaUl7LNv1j
         rFNhHEkC5GM2hr4Uk3pFUMkyXqXuqVP4W9JtstBr5pRgqiGEjxMtQR+SevspP8BWVZ4z
         is6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=T8WObCGWU5tZAq4AyAv3Ysf79MssEvW0CoWp/DHOdoA=;
        b=X6QvKgHSKKnDId2meWXt861HQsxeVI+sbtT80Mm219JSo0MK9dKdIIVBkfpuZVqv6E
         c8t8BBJUu2d4JHOJw51rbjsd8nWaiD8ci6jcjwWx/c43iBjqIett9If2ZWFSQx5ZEFad
         z3BOu+YVp/CdoKrheUeFLssSEaAbmsHvY9LtAk+rB9Jzcw+qUd9FyYgao4h3MfMUmhK+
         Td1RRi5qjRraRpQPg8kW+5EgdCyl/3gnRvLxkHWFcAcP7f3z5G5npcl0uKu806/T79LV
         iws6bypQ70KPv3pWUxhlD4N3yZy2Nn85CQ1A2JGx7SKgsSBXHRKdTeDwhenlPxVweent
         MrwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C6X4r80z;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8WObCGWU5tZAq4AyAv3Ysf79MssEvW0CoWp/DHOdoA=;
        b=fh8TAfeSDo+yxth0EtHLhCS8vp8C+lb16N75SQcl+yJFwOOGgrOgp0vvvZfahXSRWc
         2UKacOEQ/9ZKEZ7c5/g3l0Dp7z6TVZaWUJgQVcyO/gdx+iaiZER7HI+wpIAPZt3Skh3e
         vaAe5ZQ8JHy0Xlm/OFHMqyijRMw+/RLI8MVvHw/wkV526TkRCQlU85RRKWB5XQNWEb8A
         5AuQloK2kRXBk7RwuaHfytSbxyR8Z3XXDo7keezL4E0PVMa5VVmlz+Kw8vUOviX2vwAE
         +AN+7QBfSBYodoJ90X6CvfsFgHc36BfK1AV7wpKLZNb83mf7IKoEsRszat6f5ZSQdVpz
         +KCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8WObCGWU5tZAq4AyAv3Ysf79MssEvW0CoWp/DHOdoA=;
        b=KAIixYGdk7Cl+/j1vGFl5p5JW3Apv8ZUlZliUK2XZLxKKOEQ2zAVOGuRGA84g9duqA
         uNbxyaQyccnwzxy7FjRK9rolhX6DAZtAi0YoTypUjZR3en3Cu1QmwBeFORPLUaAkX9qA
         kNOE+gpNeShtnbDnMlbrpGfWWsFa30r7m9Qf4O7AuKAEBb7ZNen81fJ9IXys3hAfD7y6
         vuUpPgE+q5aZr7AgoU3rBhzVOEToDqzd8b4OyImw0NgcEPcRjKCAVo6OTx2We4DsIst/
         11pGQl7bAU6MJCteeHrWc+5zpsQP3MRwGeDGNC+Gwy/11oEQav5CGtTI/zstlSMg1zx2
         lh0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IXTf3cGmFDO4pDsJKl13/HHQCMBKmbkT/uEP/OvjZYJoDy83E
	tR7Du6HFdzpW66TI2Ep6meM=
X-Google-Smtp-Source: ABdhPJymu+J1fTRjLS99/xKsP2kCuAwfrwK2SHB+Twb5FWmy+ah733Rns499NRkrh9rJibFTvTBJBQ==
X-Received: by 2002:a0c:b203:: with SMTP id x3mr19612581qvd.97.1598554743630;
        Thu, 27 Aug 2020 11:59:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:371d:: with SMTP id o29ls1187655qtb.6.gmail; Thu, 27 Aug
 2020 11:59:03 -0700 (PDT)
X-Received: by 2002:ac8:714d:: with SMTP id h13mr20376471qtp.388.1598554743262;
        Thu, 27 Aug 2020 11:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554743; cv=none;
        d=google.com; s=arc-20160816;
        b=gVjhwNzQzneXiEQejV6ayasKS7DYuN0HwDpeJoWZNcPc10DFOf3YoZbPqd3LDzCsK6
         gR7DU7tJyukqvC+XUW2LGQ8OZz3xS5czMogst/TUXicanXUINsSuvlDEQWyattqs8rNP
         O5cpHH9r86ra4vPdXxbLo/5LnmttOZD5uRCECXZiA7SUurr8mx1trXbEr5gBCriqzVzN
         wvEh0/0vIGYi0wEXMFm7w1xNa3AQYniHV3UtOyjMQ084gAutgtmb0bu2gkzBnEnM6MM+
         I2Ke38aC/l8y6Nyguf4nv8Fqrv3G/QsHBdjBqjnypmsySGU3rXmxB7fL/+Z/ghb0esqJ
         LP8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=48Q4bJj2bG1cDEG1rKTrI6atgy5kF03q2Lhz4GYnJks=;
        b=Zc8PSnN/cvw0qVLWYcWflBoyUxuMYgqbCohyE4dAn6mBr9gn+eQeMMkWZyigcS8SN8
         wlZtMsPrAvJFf1LbBVRSReG46F4Me1sVn5YuRbWlKGcj9zn7cMSx4QGHdZUuBws2aBHi
         8dhwOxrAdZsR5kgWfjc8U8rC6r+Uyu9QPd5dTDRmLAm4w1Zl1ORGbfGRwCKFLcJT1SyB
         12HX8AAX6jwsL4Pv1gPhUGC0bUCDu27tJXUTa12MUrA3XdgMDbGFdYtMshUe/hegkOGB
         UkJdfpZQMM+FTQRpdShwGx4H0XCnJyoQo88zm/mNjD33MvHYQhWArX/jR8xmcH2w4hUf
         IH/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C6X4r80z;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 193si124527qkn.4.2020.08.27.11.59.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3524F22BEB;
	Thu, 27 Aug 2020 18:58:59 +0000 (UTC)
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
Subject: [PATCH v3 06/27] Input: elan_i2c - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:08 +0200
Message-Id: <20200827185829.30096-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C6X4r80z;       spf=pass
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
 drivers/input/mouse/elan_i2c_core.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/input/mouse/elan_i2c_core.c b/drivers/input/mouse/elan_i2c_core.c
index c599e21a8478..d703b0d5a3bd 100644
--- a/drivers/input/mouse/elan_i2c_core.c
+++ b/drivers/input/mouse/elan_i2c_core.c
@@ -1229,13 +1229,8 @@ static int elan_probe(struct i2c_client *client,
 	mutex_init(&data->sysfs_mutex);
 
 	data->vcc = devm_regulator_get(dev, "vcc");
-	if (IS_ERR(data->vcc)) {
-		error = PTR_ERR(data->vcc);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get 'vcc' regulator: %d\n",
-				error);
-		return error;
-	}
+	if (IS_ERR(data->vcc))
+		return dev_err_probe(dev, PTR_ERR(data->vcc), "Failed to get 'vcc' regulator\n");
 
 	error = regulator_enable(data->vcc);
 	if (error) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-7-krzk%40kernel.org.
