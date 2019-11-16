Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVVVYDXAKGQE36AJXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 37472FEE4E
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:50:47 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id c198sf2048450oig.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:50:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919446; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQze0yOLGP9Ie7bnCic/bd+tqyihw/pSeBmC/A/bjf9P9QzptoYR2znWlSa65ikAkg
         0ZwCzi6+yklKvSeasSMj/Gt8F/nG8TC352RGHwpvTGXXU+7Y1sy9hrhXQ/IwKs330Q5m
         2gIlnl2b36O5qS27KPweTUu4AYNoRM3Y1k7tkce0tUrVhmjpDCbhMws/MXefcag6ADGT
         WwjukKyyJYINgn+Qt/PzUcmzUrd3FElcWOdR/G1Qmn6QE2t+7qEMHzkCHMyEuex01o9W
         ruEfRICw/zYKjrIKBUDZOEq5YD8j+W7lgosQOsF7RMG5a9ghtgZLkBr+BmSvNfNme+vq
         Qx8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jYDqFWlJIDTwO0V9k39ZC93Ua4V1egVB+PAUd55Si9c=;
        b=daiXyRRFyCELRS+ehYXGKACkuHfaIgIiuiDFI9uH8WCO43u6ZGnWV/8AYOHQAozHXz
         WpnbHVLZ2ac4fxAceDaP9wQiDuLqxbpo+dOkow0BF3gktOEf5RF9DTjSzzxF7W47FtPf
         ufJwysdWZ9I9ksifnZ6WJktbtVmoNO+UUMIatGdZnhkO5Z8AkQ6k1wPUP0qAqITd9sJv
         BtqI99pVZrGrJ/+x1UgkClQDNOJkUewqrbGO+YDLRCaY0ox116YufkPE+hwJTu0lgiKU
         tCcp3U3Q+LXZadV6QZWG542hE4bCe0tCyPvlMUOwCKysVF+ICzNOWnSMv8S9LRqzRNL3
         uoNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GVUZc3sf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYDqFWlJIDTwO0V9k39ZC93Ua4V1egVB+PAUd55Si9c=;
        b=iJlBusEvmk1gGf2aGWD/8vb0cbjdKMsJwm0MPfWVGMx5+h1+So20RRaQFeHubITYX/
         EJk2JYV6LqvhuUg+Ik+eziSwlRnedzbYgUtb4TEeb3akrE6PHaJk70ushJIhjQZvrhto
         cEhrDIYfqX6aznSo7/ysG7oGyWbIvBwaldCHJfcNPnQCGux8D9neMw2FgT8bkvVaf6qG
         BnUGJzakc7HilgbXR3OPsHimYau8NrybGp+SkDGII2KWpU3Ys7VH8k3k40cHX5k8wOad
         O+aoh0zK4wkNUoVOfFmGBPR/CWbxfdPTGlrAC6zxJSbKjBwzSi6JzfyY5Dd1V7Bvw+Jo
         nAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYDqFWlJIDTwO0V9k39ZC93Ua4V1egVB+PAUd55Si9c=;
        b=XEd46AxTiDPKZDxqOi5dggFzQlyfwMGVLEPQ8kcmaqOA7fErU1OSvqg+t8Od9Mgxj3
         YTLXUzBv/Y4aEQTsYY27ShjQqfBoD7zQFPqIER0HUgOfDNmEugDJuoZQ9HQhGgBjbMsK
         ZAGrQfF+GNM+Aj6y7HXDutIsXmGGS6qJ0ylu0KJAskWqKloh+g4U3nfPr5bGKN6OWH5E
         UaM9ulC/MkDhm5gJwZCvPMu3lKTzYRYamfU5oEAChHklYSTVHsvzkBeVybIV+6Koaud5
         TX0DrZfMJo+xG6jPgLTYolT70E8yLp6q5I+N0gtwaMe5Waq5RvwNM647aqZQGPR07td1
         c4Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUehswA1M0smWDDEwNzTsbg+gUFjxnZw5TDYPyyPvIZexAjEg8s
	RJtSwDIHI3jkXU/aYSDcES4=
X-Google-Smtp-Source: APXvYqz3bNdqQEMfOISXbjrLQlNT6aKZADAAeCr2YsQHH/w8yWHTxdzW9m9FmPveC3+4PBKIg+TuHg==
X-Received: by 2002:aca:d8c5:: with SMTP id p188mr12354168oig.140.1573919446078;
        Sat, 16 Nov 2019 07:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c5:: with SMTP id z5ls3345422otk.7.gmail; Sat, 16 Nov
 2019 07:50:45 -0800 (PST)
X-Received: by 2002:a05:6830:1143:: with SMTP id x3mr3708754otq.274.1573919445774;
        Sat, 16 Nov 2019 07:50:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919445; cv=none;
        d=google.com; s=arc-20160816;
        b=dwvEFLSd7YnvCkrDScCCNyTukdZUVwnA/I1yLHx6hDOqv+UOp7xVA3M2pJpcxr6pfP
         +EXym9KblTQyfjp1TYisF2eGQUZYrrO2V1hSvtXVhURbRHZNtCUIqL3XKGk7LCo+yr37
         DJEJqyR3XlPqQKJn1OfuzdWoBkonaJs/X7RRrfVEJANGMF/VW6nvmBtjilNvQYac3/QC
         G2aFD8GF6sTEsiQDd3l4sbjBn21SlgNEj8ufWRlA/4kUEM6c11NRe+GgM8qo1xVv+8R1
         1XRtg/ylSmFaLiHncy8tx16Mt5VqR+I7BOEA44o7lXL2yG6v/NtFuIKsLuG/OO2Jq1pL
         xomA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zyfN1UN+0OrbMgs41bgXvGaL1AO/B/eUnW+TIe9KIz4=;
        b=1FgKO2p3yQJElXcT8GRGHX8BiggeZU6sjHYWIrmE2sy/4CZL7qEXQakmz/AZK82jOe
         8CDnUfs4DxYw/GNomqjCTop8flbVEDKRjQxbJddzpBW1hTY6C3bHBMex4Eo8SAETvqIi
         GvJSB6uIwyvMymi+5upH+g0g0p1cfsERC3W0w0y3rMKnV/jANZ2YXMVzP749c0rOLqTc
         YhirlVBD4Yn3wmZCZu59vQ8z8EnPDBMojNfuTZe9E0OFwiMvdIiUwPdqn+jTiNkFD4bj
         Xs8TpvDy/DC387DLHs6cWbUOOCxVfMFMBC3Yx7rkPk7PV+aWTou3gccpgLM61iKaldqp
         ngwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GVUZc3sf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x65si637746oig.5.2019.11.16.07.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 98CFD21826;
	Sat, 16 Nov 2019 15:50:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 143/150] pinctrl: lpc18xx: Use define directive for PIN_CONFIG_GPIO_PIN_INT
Date: Sat, 16 Nov 2019 10:47:21 -0500
Message-Id: <20191116154729.9573-143-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GVUZc3sf;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit f24bfb39975c241374cadebbd037c17960cf1412 ]

Clang warns when one enumerated type is implicitly converted to another:

drivers/pinctrl/pinctrl-lpc18xx.c:643:29: warning: implicit conversion
from enumeration type 'enum lpc18xx_pin_config_param' to different
enumeration type 'enum pin_config_param' [-Wenum-conversion]
        {"nxp,gpio-pin-interrupt", PIN_CONFIG_GPIO_PIN_INT, 0},
        ~                          ^~~~~~~~~~~~~~~~~~~~~~~
drivers/pinctrl/pinctrl-lpc18xx.c:648:12: warning: implicit conversion
from enumeration type 'enum lpc18xx_pin_config_param' to different
enumeration type 'enum pin_config_param' [-Wenum-conversion]
        PCONFDUMP(PIN_CONFIG_GPIO_PIN_INT, "gpio pin int", NULL, true),
        ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/pinctrl/pinconf-generic.h:163:11: note: expanded from
macro 'PCONFDUMP'
        .param = a, .display = b, .format = c, .has_arg = d     \
                 ^
2 warnings generated.

It is expected that pinctrl drivers can extend pin_config_param because
of the gap between PIN_CONFIG_END and PIN_CONFIG_MAX so this conversion
isn't an issue. Most drivers that take advantage of this define the
PIN_CONFIG variables as constants, rather than enumerated values. Do the
same thing here so that Clang no longer warns.

Link: https://github.com/ClangBuiltLinux/linux/issues/140
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-lpc18xx.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-lpc18xx.c b/drivers/pinctrl/pinctrl-lpc18xx.c
index d090f37ca4a11..8b4e3582af6e0 100644
--- a/drivers/pinctrl/pinctrl-lpc18xx.c
+++ b/drivers/pinctrl/pinctrl-lpc18xx.c
@@ -630,14 +630,8 @@ static const struct pinctrl_pin_desc lpc18xx_pins[] = {
 	LPC18XX_PIN(i2c0_sda, PIN_I2C0_SDA),
 };
 
-/**
- * enum lpc18xx_pin_config_param - possible pin configuration parameters
- * @PIN_CONFIG_GPIO_PIN_INT: route gpio to the gpio pin interrupt
- * 	controller.
- */
-enum lpc18xx_pin_config_param {
-	PIN_CONFIG_GPIO_PIN_INT = PIN_CONFIG_END + 1,
-};
+/* PIN_CONFIG_GPIO_PIN_INT: route gpio to the gpio pin interrupt controller */
+#define PIN_CONFIG_GPIO_PIN_INT		(PIN_CONFIG_END + 1)
 
 static const struct pinconf_generic_params lpc18xx_params[] = {
 	{"nxp,gpio-pin-interrupt", PIN_CONFIG_GPIO_PIN_INT, 0},
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-143-sashal%40kernel.org.
