Return-Path: <clang-built-linux+bncBC6JD5V23ENBBKMFUD5AKGQEG55AYCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D7D254D94
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:54 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id s64sf3500512ooa.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554794; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hv8AMODoBeQQSxSgZqeVIqlA+4lodzhdOULM3FbYBbTv4eHyOaBGqDhUi006jHWIvo
         0rRcc0OAYKe2EVUtaQZ1+qSK+83sdwKfM2gE4Uk4nqur1LSxVwhlZn4tyKeRZOjry72S
         D8lbX8nTTKHxtW036lPKUJlixvrc2/Jeiwz+picvfXWMe2I86d2Ujpj91V5IDtGL/kcd
         rkF7VnLl9sR/8QjdmopraIllBQKwDcetru/k+7/8C/1RWWrKKFE96ozTRAgFGqpWIniS
         X+4YAUN5aubCM+HXQ6VSQ/ZTrNsDImI43Uga+JCt/tROEYsjDs+8LMUlU7y/mGzddJ4S
         6iWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=WqKYQmIGkUF5RHGefdqS2nquhDmf4ghuzo0bgwMdPAc=;
        b=a/Ud+V9K7IkHXSysbBO4zubW1zeA5o5j+kLtmlLwssw87C+6FfuYSIAJ/ugu9VVoPS
         hL9uj1LltEc4IpNEERqSl/jEjO9QJa6AdYiXjiZYOgPgskXZYZRQQyCvppXzRCHzaIEz
         L7x3UYINcB1vAFo/5XnuN0714ZMYUJdmUIeKMwCM6G92c5V9CLyLkSwPc/NK1T03u9lB
         hyKZTJcagLMy2Zpa4c3kTt8suRoHzSjbKJMNhyKG9YGI4z2D+UbTOaabA7ECdDQmBgi8
         ZH85DOTOMGa2nJl6P8P7PUZ9Qf9kgfO/BotLnNKIb2DnPx4a69HKmwk1pTs9QgSkADB2
         JeUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kOk7ctcG;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WqKYQmIGkUF5RHGefdqS2nquhDmf4ghuzo0bgwMdPAc=;
        b=e7U8MRgCC2uUztuQig8KaqhfhafJ/x4dcw4mm/qO8jOLrL6jc4BO3F2LZHjaZy/tN5
         joxaNp3/k2kGVvFGh5CEkkkmYkzN4KgGTcDTVXCmf9QJ8rCw1JZ6vgMb/SE2P2+HVG50
         Og3efYGmOfSOGabRM60xwI5wrtElwZSzIZ1J3iRHMBN6cIlmroW+cx+cIEpFDnzkr7Hg
         gs0lUu4Qni1zCJhJipg3ZYBIhLbC49caCe0RCpRuFYZjUfRkeZzG7pD6qj6JF/nsGg/K
         JfkGM5nDMLNAPW4pAbU4IskDkyU8jb77w8EW1kKjl9qcByUIqsGN19FiAXuKEHA5RGl7
         Yp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WqKYQmIGkUF5RHGefdqS2nquhDmf4ghuzo0bgwMdPAc=;
        b=akkH3zRaiZddFnBvWlwL3p1JX9fidVVOWvstYRWBJEgJVvLXzA6AbTQ5EgdoN6rJFa
         ZZeSZoRMkcoZS/+YXuILn35Z7euIO30wR+G/PhxCqxBvK7bHGoj0DBysPgefouF3/hwb
         6iZGJsgaBxciyf54pxL42Ql1pXrfK2k5o5kBrtZRpV5nYv/RmJ70D8xVdwa1HyUFdZjR
         QUKrb/4NnbjHoiejOhntVmo1oUFsW74RyGHM2fAlEdw4q+n4FGzKpxPQOw5cuYfjK3ab
         1Kx2z5v81z7AywEdilLfomtY0TkpSyROsTvd0He6peKea3Z6F0tYr2lwv1kSYa0Rn5bk
         zl2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Lxj0iex/ayKkh7sq/i52rrf1IW7OxTFpIW6mqjGKyG8+71TRd
	tw+yqyPpS/NJDCWG5EGBE50=
X-Google-Smtp-Source: ABdhPJwsUJPQ1CdZKRUSyU34x4dqtdFqZGsabL78pc5ElEaUWZmxWe/yzM8jzFKAlTmrZOulp5jrzg==
X-Received: by 2002:aca:d987:: with SMTP id q129mr202631oig.52.1598554793809;
        Thu, 27 Aug 2020 11:59:53 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f11:: with SMTP id u17ls904880otg.9.gmail; Thu, 27
 Aug 2020 11:59:53 -0700 (PDT)
X-Received: by 2002:a9d:434:: with SMTP id 49mr14348352otc.341.1598554793479;
        Thu, 27 Aug 2020 11:59:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554793; cv=none;
        d=google.com; s=arc-20160816;
        b=s4Yci61z/fiGY0/YDttHnjqQvYCszJCIxOgqQUIdxyoXy3wt8Cr/uGO1P+Dlv7m56+
         v24o/HLRIiO5K4OB6OgAcLliUq7BfGczLyGVeihnjLwrznsbPIc7EDM1JM/CVSZoJrKi
         slKmOXn8dP2KOYswsS2ADDz95CWEqKEL9eV4Df21iXa8E0KonlweALHgEyLvDH4d6LwU
         dNKwZCv+txbCYrqQO2n3uD3Vk4Zckfn4WzW3ObPLUYVfpfiQsN8rZI+dMHDCJqc0IDRy
         J0KjcH0NbMjOrlDk+BOchDdL6moCb0prsP4DOEOD6YNbPBYMbUXAUzPiRD9EAl7wPJeH
         4WQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=HWBc/5nWlqSm6I3MFXCTVNVGY1k9KstF/2vk6MrcNX4=;
        b=FY09DsgkJrZ+N2nNbPZzlz4+XblqnD0sMxN6sVpssdclVUPzMOrBgYdQx4TL7vA/zJ
         yLZN4FNue4AapRiplHZKyl3VmQwGEtd5THg38PEgeVstebomCERShwFQ6GK4i2NWAuVt
         IHvQ381wiw+lUd+ekAboQGUkYSLEsYgGKW/oZAWqEABZhRliYeyN1Qljnh197p/QKJ7m
         j0qHk8a/CmBQzdB2pMRW9GVWOLl1DCh/MRpZi83n8q4gM4RPvPInzHHjrHpP1Aza3foS
         nDsZ09qtRXkOHMBPsLDGqxTI+LbkSXW8ABgQD/vB+71iKWR3RVwddY+Bk2iCBXgOeAss
         4/Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kOk7ctcG;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si95677oth.4.2020.08.27.11.59.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E4B42087E;
	Thu, 27 Aug 2020 18:59:49 +0000 (UTC)
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
Subject: [PATCH v3 21/27] Input: surface3_spi - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:23 +0200
Message-Id: <20200827185829.30096-22-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kOk7ctcG;       spf=pass
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
 drivers/input/touchscreen/surface3_spi.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/input/touchscreen/surface3_spi.c b/drivers/input/touchscreen/surface3_spi.c
index ce4828b1415a..25bb77ddf2ef 100644
--- a/drivers/input/touchscreen/surface3_spi.c
+++ b/drivers/input/touchscreen/surface3_spi.c
@@ -223,7 +223,6 @@ static void surface3_spi_power(struct surface3_ts_data *data, bool on)
  */
 static int surface3_spi_get_gpio_config(struct surface3_ts_data *data)
 {
-	int error;
 	struct device *dev;
 	struct gpio_desc *gpiod;
 	int i;
@@ -233,15 +232,9 @@ static int surface3_spi_get_gpio_config(struct surface3_ts_data *data)
 	/* Get the reset lines GPIO pin number */
 	for (i = 0; i < 2; i++) {
 		gpiod = devm_gpiod_get_index(dev, NULL, i, GPIOD_OUT_LOW);
-		if (IS_ERR(gpiod)) {
-			error = PTR_ERR(gpiod);
-			if (error != -EPROBE_DEFER)
-				dev_err(dev,
-					"Failed to get power GPIO %d: %d\n",
-					i,
-					error);
-			return error;
-		}
+		if (IS_ERR(gpiod))
+			return dev_err_probe(dev, PTR_ERR(gpiod),
+					     "Failed to get power GPIO %d\n", i);
 
 		data->gpiod_rst[i] = gpiod;
 	}
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-22-krzk%40kernel.org.
