Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6VTYDXAKGQEG7BIVWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D64FFEDCD
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:47:08 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id p2sf8272244plr.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:47:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919227; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9SWMbm9NmNf81Go1sL38CTx4tPVS8BHyi+ib8j4YVRYuqnx9ySiyM0/JWuc3aoBJ5
         BzkyaWxhf2lK1QQm9+tAe/TziiKYgLBStrAwetn61oPHhFZT59+a6M1BzrZp/wFxHa0H
         hl4HsuN2FO4kJ9rgaJJHEaYu9YBglnpa9BzkM1iG7tz71sJ6LyutZezACxogVq8qbP2l
         /UdwtG3oacCwO1D9fKaBAfJHEhvMt5MK8nnPOQIoWLrY6ty6BAEB2cgcY9FuV1X/pdGI
         10W/9B+2/17RzRBQCFdLyeIvga6M7RntTbByq0o9At3foYI7DtVO0PUru69LpZtrCp2S
         lJrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ACE7lZqlkWQROmWGiEZ3tCCVw6yrCocx3GCLdpf/ths=;
        b=BAaZl+BG9zKYtTXoKjOizYt7fijneQ0BGDi1SJc1vkenfKA1tjVH5DKEeLuV5EdwPq
         qRBiAK8/09ko0lwMFwXXu/SkxzotukXhZ0nB/VDOV8T+IWIsrpo2HRWDRjcnS6MVWUHb
         25KrryvqFI4FQUfaTOT/daXY6wt6nej0/LqQH3yja0Fezmk5Y/4T6PWnC4YhEbm/DChl
         RczJQFIO5rff4DpwEkKBtnmc20YX7sc+bqxRZJFxGhEOrZdy7+RBwacTAFn7PNCZQDYM
         hWJcGkybCNsew3ocqULvMPRFbAjPzptyIkAVNeJROv9BrUhRWk+5F5iRk0B35G3kI+cy
         SS4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jWq54rnu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACE7lZqlkWQROmWGiEZ3tCCVw6yrCocx3GCLdpf/ths=;
        b=JomJ+Lnqjdj6Hakex4Y96P15b9Q02z3v4REciypyM7/bFue7tdoeMzYRb0y27uLEqb
         H/8GHODKhvWq/NjxNsaQq26r4e01qMwtDNz8x0ZU38DoVQjREmTbyLlBWXjZBgtyPRpR
         +gPkuFS7rBeOI6UOsx7iB2/CoW0gq6Uabm/gfGYzW+WtdAM5cDOjwJahdvwMHb+C3b0j
         EC0R0Xj+G73n8G/fR903dL6iaoOXEHmZigeaSFpjhER2DlHoyy+eGXHEBH2xCCkAFE1i
         iq4eDgu3P84iUQ77HSZkXeZ5N30UJSb2SS9Xy3/vr7WQCJkI7SSszRJ3vpAur3PdyUGk
         vrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACE7lZqlkWQROmWGiEZ3tCCVw6yrCocx3GCLdpf/ths=;
        b=DPzbqJmfNXbeiwmBNir+FMCCknBKzpJ7bgIMSwMPV/tzLvsCrNvnITG5sgx+HKVoaQ
         I/AmcEVmEMsNaH4OAOFnxfoueV/+gPKpGkmOycjYi2PJTObSXd7HtBnJ4U0nrCo0CBDT
         sC+w1n3knWwyMQ+AWcMz9ScFQeQymTP40jKXmQYh2C6lmniYv6C4xOubI7uPlrfEwcME
         qfBnX5+YmH8v9HFB2Wdu8petF1hIKcjhwtl1VJD9wb0CHcctXqsQPWgI8qeFVYuh1ckO
         RrCzektK0IWfP/ZTn3/IhmFjkKYSOlbk5Zh06VyJpHoGw88rNGpbIDmQF20abO51hoIV
         9nSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBUZHuQrVWknhpblFf5DavyPr0IFcW5ZEPxEcpoPwpDxW3tdTO
	ND0960LulXarI9/uifGDIao=
X-Google-Smtp-Source: APXvYqySmTaLw217cQovkhZh2uW7dOSfAdG48w9To5HKUzYZtZNL1BONutvP9gSCAZJjnoJWP+ZRkA==
X-Received: by 2002:a17:902:a60f:: with SMTP id u15mr21344950plq.64.1573919226973;
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd46:: with SMTP id b6ls49313plx.0.gmail; Sat, 16
 Nov 2019 07:47:06 -0800 (PST)
X-Received: by 2002:a17:902:9f83:: with SMTP id g3mr20547704plq.161.1573919226479;
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919226; cv=none;
        d=google.com; s=arc-20160816;
        b=jGGW7WDiIzpP/z9yGU4lkWGUTGv9b05DkPb5OUIn96ufrBbvUitBQxZNeDKgecJUKk
         cmvBbeiluWftuyce8Y/YZWGMNFFK/WqNPcAseTTO+HavUJrWSALaBwS7vqDa86ISr9rX
         wu4HfobMMgxIuQg5i8UQILbaXRBYWChRYxncqxLbaSU1+VynFGOPL7Bn8wHf1nejldez
         ukfs39ABuApg1qex0SgmbdO8S/cOuFofIKmZmp3jIpjC8ZweSLRpi1moEEo7H0vRFca0
         6KJzD5qyJ12aJ7FbPXIv+PBDak9VwBEc3Fg1rdClXwnMTlJp85gGrpDwepz/uL3NaSbo
         hyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CqjHQJRxle9xQCfHjWjIb3XsaLcGl/sb3nLEFwFj/II=;
        b=BnOjAmscUsg8cBJ5tZarDEvp3czFHHxJGZ70SX0Iy4I9a4IKYAMlQG+RDC5YQH7YQs
         7LDkZ3Dwt95G3czpV6ZIIP18U55wWn9mXYMpKWQ5dAKTknsLJRp1/v2oCTNI0rdLS/7X
         oT/uPWB6w9wx56BFikSxefHnwcKltFCyIxeBHjBjdLqGyTZOO6IcCAhPbKyV0TR1xcFJ
         Arn4OYa6Z9uCmmf8CEgvBw3ghlFnSQ5fafP8qwLJ/94SHHyITueE/IlZM0fNAjkOVTY/
         qm0MS2hdzyEI6JopZ3okYLvNI5zIRnHUy6uC/5mIHLP1iwJ8OwaoUpwy/N1Q4+zP+MB/
         CsJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jWq54rnu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w63si515525pgd.2.2019.11.16.07.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BB78C2084F;
	Sat, 16 Nov 2019 15:47:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 229/237] pinctrl: lpc18xx: Use define directive for PIN_CONFIG_GPIO_PIN_INT
Date: Sat, 16 Nov 2019 10:41:04 -0500
Message-Id: <20191116154113.7417-229-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jWq54rnu;       spf=pass
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
index 190f17e4bbdaf..1d3b88e6ab862 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-229-sashal%40kernel.org.
