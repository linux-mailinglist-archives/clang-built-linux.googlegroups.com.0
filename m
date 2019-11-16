Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB55WYDXAKGQE67DMBHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E552DFEEA3
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:53:28 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id s8sf9646243pgv.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:53:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919607; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/u3yiZV2W7E6lFnfIQagzJcjpwcL6pDwU83mAK3VPNXl7yxzOYNjpiGi3RdD67ZFj
         J20aaVPqrAgadtwil98vv27Y4RPhL5APDUSKre44chi8UTJIXwJTYRDyEoB+rYkoehCm
         xJ1vL30iJJdDzzlj+JiEMfrmnKhvkvLd1GkimokWmb/29YA5+TDTlwdyHxdpXBnVoGXG
         kYcKJC+VgZIybSbZ84kEacwTaxlVVTOcU++0R7V+oju4XwpzgswnlSzsvhnVY/dnY3ri
         Ko118xCddfhLxcE3vt+MK+cF5uFVR+7zDB2eQzDGXFdaQTaqhTIQpwXjyBtN3ov1Q7Wd
         uk+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=krFvEq3tw3oNe72QCMBgLQ3RoLPZ8eTZgePaq73JGnc=;
        b=AP8fH/ReL6T9OQHl4GH+qNNew9GXwRRBIUc5FHFkL7HgxG9UckRBKIbbOoPUbGou/N
         rWwLkyoadmjHGOndEtXnYPDQx486RJrpfq6QR8KniUle2TO7T9VIZm5Av0mpkZfq5kdn
         9ClsugOVETBDZtjJBePlKRBwrpr13VLnLykBHH3s97047QmeJ8tD5NXn5qQqDjR2sfO6
         zrRseiXVcEwie/zw2QapnieLXwJRLUjLo3fdv8kJ2GL4ta9SN6jTIEvuXWLGl3dvX0RY
         VsSjlT/+N+49lTjB3AychJ+GDMygng5v8tODr3AM5se3fS6ZvsLGwCImYCtK3io5R2O9
         RQBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wV1CWVE3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krFvEq3tw3oNe72QCMBgLQ3RoLPZ8eTZgePaq73JGnc=;
        b=UrfHZHBfuETrJLLsyyvev5RjdKcbH4ZvEV3PyItf2f6V6O967TKOLv91qjMco/8p0E
         IUE/4w8dCSPLTlsEDz159yTKs2jihboPcAeSE+bwQDuZrgzJpLko+7SiDTkJnXmfQYrA
         pMxuVT9BizknuI+1HWQEy8rlTxnFTXBZuMj7sFHC5IVHIG8MRY9pfAhvdXn0zw9lkjgR
         nCFTqDCfKVKoxmSxjjYVTVXHB5RNQCIuHItkyk9su1BrZGDoXGOWPSfkAoFkVp1i9D9P
         eBgAFoL8+wWu6w4ej5ekp1ML0q3+wrKgRmuClX3s2Yw3ofklqD5wSN3fFYQFlLE+xitM
         Qbmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krFvEq3tw3oNe72QCMBgLQ3RoLPZ8eTZgePaq73JGnc=;
        b=VZs9lagOlMpLYfjTH2cNFkGbKuLfTmz+6xLw7jRNW5W56mUYqM9t0FbGcUm1Qcfhbl
         D7NbGjPHL+UiXK2Kz0zjbPVFB2iTul2whtFZ6k1DR2cizs32ipVXFloqgdAgNYJju53T
         YdHZSoYMo8avPvQUSPHueHvRV0Y7L+84nGgUG7fJ1lP0mqZnPdu446mTEjxUIgHBrflS
         Yy8xwGV/o6QwKND0TV3vDAgM5v44V7E9/aP4FzNO3CY5fIcrVbeIGV5NdK2L1ZviIwph
         t4H+gM/avuIrx6GdnXH966OKgJybTSPQ7230nocfDoSfTYK8ovEnY8f/Y6noDkA4125l
         PXcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXZ0Tz6thSAb62spY9iHVS8Xt3NVl5AjMvgTWyN7hKWEe+NGYzp
	YqH2gmS8WmzYaDLq37KfYWo=
X-Google-Smtp-Source: APXvYqzMSVVc8b3CWeEtfLn1AYUR2Uygyxa3puky9v9NX3bMpy5m2BVzShUKRNhpzoBnvxybdosDPA==
X-Received: by 2002:a17:90a:68cc:: with SMTP id q12mr3266990pjj.118.1573919607608;
        Sat, 16 Nov 2019 07:53:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b49:: with SMTP id g9ls258894plt.15.gmail; Sat, 16
 Nov 2019 07:53:27 -0800 (PST)
X-Received: by 2002:a17:902:740c:: with SMTP id g12mr20486479pll.140.1573919607173;
        Sat, 16 Nov 2019 07:53:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919607; cv=none;
        d=google.com; s=arc-20160816;
        b=Ry+VABgtbCjId2tY/ttgvrQKG+uzot4t3S2v/ilsiX73Zu1we+BSAbUzQ7F+vuOJEA
         tjoCvfKdrLUx3OJ338+/ALpO5VMBZKrRj8etXNmGqBaP4t/WaSR4TY7R1SQEyS++A1Qo
         eycRK24IarIAQVlL1XGWRgSELys7Nf+D39N/qoitwrq/k+KmTC5shkj7EpMCy6/JLxAE
         aalRZ8vUhmsHiRImJ6mNQH/bmNKiE75jHtPlCDPFgFyiWYP7M+lEFxlwjMHXhUDF92BE
         U3l/r4kuNFXy5pt8Q5clAPSuQ0ZM4tZVQh6+xIT8lp5yREnv3ToVt4yd2+6R08CPWQbO
         A05g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HvS9+nQjkw/qt6gA2vZttW7Mf3/3zrHhu3rHY+luBVg=;
        b=PF6eUKu4iBhQUgqIZpH+dSSv1hNFzPyeBgparA7wrnnQqGLI+yK09ZAuOGezI6FmQI
         L0BrjBaf/CBRm6dUNtH1RzOpoOX+JXj6aPBvTjgejFXYWRiYuZUxHSQPJXEAvCT14uX0
         ogzZ1Lenax1+vKSUm9Of2bO5Zfh2OC/4SpuSYZD5+SbDkEikrC0urN4174aP5E1rSVq+
         j8lEdXS4PEHNv74nSl0iKQmnvQSJQ/e0GioJwcbIONEdXcnUYxokJjwWLuN5RMDgGYmG
         I1xVIbVldnh32pmuf2h4YenF/aVI+NDDKN189CtVgP6RrUDoY25Uef6Jo7t7U6G4Rhes
         xl4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wV1CWVE3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w63si515917pgd.2.2019.11.16.07.53.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:27 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9CE2B218A3;
	Sat, 16 Nov 2019 15:53:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 94/99] pinctrl: lpc18xx: Use define directive for PIN_CONFIG_GPIO_PIN_INT
Date: Sat, 16 Nov 2019 10:50:57 -0500
Message-Id: <20191116155103.10971-94-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wV1CWVE3;       spf=pass
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
index e053f1fa55120..ab2a451f31562 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-94-sashal%40kernel.org.
