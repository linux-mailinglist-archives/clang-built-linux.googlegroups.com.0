Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6FWYDXAKGQELHG7AKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 156C0FEEA4
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:53:30 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id b184sf4698300ywc.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:53:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919609; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0aBkzNTbS3TMnAgcJ8bAaP74uT34J6bJvDxWfpXjXtGiUrJmo5NGUrVmi4iuqajTZ
         KIjOMeZ8kpGZ6khZzWQYKHG/BDNQvwoZ9NJdDY9psJ14bOCgh8ebqYn+ei21hgObXOP9
         pzQ7zPjYbPqrOiQPhHFi93dLO52LzHePMzOPn87+Dc4YDiaPe3ST6Z6ixwXvgjR+Oau9
         yvsf+UmuZNVvE9fm+t8HCGdsStehgaefEFs1wQKDgGIcsvx4Ak4zfAgtxI3gcd9oidhr
         K53hhQLeMcrra91U61GH9yQqmbChI+TXd7BG/O76qMwF8ZzZE3a/Z9Z/fx4o6yLyXewU
         PslA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V580tXx9hGxkqq00Xx8R3OYh2MjGSDqjEd2bC4OxcoM=;
        b=XfddGfu97zQdl7Rm0+vRyyM/WLrDNuFKVX3GUMrKO6kLTVA6bXd9dyvQRdNc5Y7NRr
         DSm6l96/2BfnRIIFrFSBXawIvMDQ+G4L06/+RCF7LTZmb2mM1IPcjiWECZ6YQwDi5yfB
         9ESvyrz4IiazkBfSvDu3Pbf7pS73MPq3hBaAUC4NGJpip4PWQFsWmG6Lnp46+xh5iflV
         khOP0paELvsonipDi5DYjEUcYFFn6BI/Tq3Zo7A1u2ND7S+lc6TJbSNIkmQkZrM/Hj2R
         mQPaD51NdmqcrB2NOtm1k++AeChudCVweV+xgA1EaXZMclq7/RaC2WtgVSoldLQLHYfS
         nUpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gJksCEI3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V580tXx9hGxkqq00Xx8R3OYh2MjGSDqjEd2bC4OxcoM=;
        b=L7me2jgXcr+MQTwJswq2L6NF7jrRFluJ/KP0y9Gd75sGg9PioK6n54fpVi0yvW0T0/
         7V7Ha8smztGDw+gyYS5P6eQFUndrR7O6WK+ol2GSnM/KxDReKPoa3sIwCcOMfuN15v7o
         qSlLcC3xUuuD4+xloebr1M8SD2qDca6veYooJ8znQMc6nJUmtzxXX2VZy1fIEWiZWpfE
         CK66uu5PBvlAnS2cMMTj9E46r0z5fEaO/lwqVijXVdLEIisTRqCvQU36ehJmfaveMh0M
         H6/l4NgZf3Z5yQsD00aMdfALuQ3N9V2YnSm0A/ai942dNW1+wC/9vvm5b2O9+1XJkAwt
         fPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V580tXx9hGxkqq00Xx8R3OYh2MjGSDqjEd2bC4OxcoM=;
        b=OkvbpRTB/ClY+QeIMUObWQymQhJnPCNog0pC9/SErB694uBdeqs6GKJMZ5thScg3x+
         TkQPv4hZ3TZtWnFrjAXEQp8LEhF42jZTkQ5a0lw+mP1csEepksSet8eTRnV8La6R1cdv
         IiNHkfBMML1QMUPfsEqV9E2ReNnFZjq5dZutqgOe4/MtLXo9nqM7H1tk7UZbscRDY/II
         BQ7dGORTHGjat0DV4+fCDxV/WP563vLluKZtkLBb0aJnJ0/Mkpy92bCaN9JHAAtImJDx
         BCor+r5kw4rPTqzyLTc8MhIkLJSgQlrg0YLZa4U+oZNbpec5s2jVQ1H9KGzPfGyew0pa
         YIAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWoGTCId2JsL2jecrBW4qGzlftdq+OhuY1Bmw26achiZyzEvZyO
	gKAyKgM12BYRswLR4EpQ2dA=
X-Google-Smtp-Source: APXvYqxVOpdRmbsxg5zoNdQvFohidfNSGrxr9bbisvMfIBoBw/IeNWnRhKVuKEvpdujhGC+D0LparQ==
X-Received: by 2002:a25:3283:: with SMTP id y125mr17081708yby.442.1573919608876;
        Sat, 16 Nov 2019 07:53:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1253080ywe.3.gmail; Sat, 16 Nov
 2019 07:53:28 -0800 (PST)
X-Received: by 2002:a81:30cd:: with SMTP id w196mr13954689yww.204.1573919608549;
        Sat, 16 Nov 2019 07:53:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919608; cv=none;
        d=google.com; s=arc-20160816;
        b=yYi3TSYDquWL1RvIs6/Mc3evjQD8zbDSqxk9HD1lKNK9RLWCljaPKWXzcVYsl9CROs
         WDFQY/5DxP+K9FPLcpiyYIwP/En0a9UTua2mnrtBhN+ygSgOafgv6VLOzEhu5/sPkE4p
         GjOxm3lhEeyVcH8Ar2FQ/FpOLn25xbkbRetwAv7jGvp4EQY7NPR6HdZWJCy9BoNbK/WP
         C/Le4jD88xTkS/nBefTt80c3oOP52Xmnx537ViisDWS4TS/hu0qRJyFGcNHRBwoEEqBu
         sELKB46E0qD0CaPJLrwvYHneK24vEmHiIfUNdzZhf5gydGU9Q5ZktMjSYsFcQk9Agp43
         i+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GTneyS32Q+Ge8U9q8bzXtmyOu/aPGaANWiT1kTjR0jM=;
        b=vIAF7+AVJ7VCIV0+tRMItA3MkLd5cCpa7gaObbyV8VL3vvKS0ZDOV4Y2LnTwitbO3Q
         HEYz5Zt49daur1Eo6X+OaA1WQczvAvgIt4Ugv1e5b4e3OdvRH/OGqC2TNidOd9PtfB0k
         juJF2jZPLxFliH6OvFZy4/7EdNClaL7JDFIaMROQ4i22i+X8duVIjKEbyR7AvKJ052mU
         GT8+iJVdAD3UH9OYxZOvvNa3QOJMy5sApWmarJEcxLFa8GcuOkXIarBRXEc84FJyQ3eo
         YxG2pan6i3c2uvW57cE2Mpkkfr1eMNVwcg9yABPKD+Dz3lybRUgc2TWqINQ2F3fc8QlF
         ofUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gJksCEI3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 63si612915ybe.4.2019.11.16.07.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 451B4218AE;
	Sat, 16 Nov 2019 15:53:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 95/99] pinctrl: zynq: Use define directive for PIN_CONFIG_IO_STANDARD
Date: Sat, 16 Nov 2019 10:50:58 -0500
Message-Id: <20191116155103.10971-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gJksCEI3;       spf=pass
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

[ Upstream commit cd8a145a066a1a3beb0ae615c7cb2ee4217418d7 ]

Clang warns when one enumerated type is implicitly converted to another:

drivers/pinctrl/pinctrl-zynq.c:985:18: warning: implicit conversion from
enumeration type 'enum zynq_pin_config_param' to different enumeration
type 'enum pin_config_param' [-Wenum-conversion]
        {"io-standard", PIN_CONFIG_IOSTANDARD, zynq_iostd_lvcmos18},
        ~               ^~~~~~~~~~~~~~~~~~~~~
drivers/pinctrl/pinctrl-zynq.c:990:16: warning: implicit conversion from
enumeration type 'enum zynq_pin_config_param' to different enumeration
type 'enum pin_config_param' [-Wenum-conversion]
        = { PCONFDUMP(PIN_CONFIG_IOSTANDARD, "IO-standard", NULL, true),
            ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-zynq.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-zynq.c b/drivers/pinctrl/pinctrl-zynq.c
index e0ecffcbe11f6..f8b54cfc90c7d 100644
--- a/drivers/pinctrl/pinctrl-zynq.c
+++ b/drivers/pinctrl/pinctrl-zynq.c
@@ -967,15 +967,12 @@ enum zynq_io_standards {
 	zynq_iostd_max
 };
 
-/**
- * enum zynq_pin_config_param - possible pin configuration parameters
- * @PIN_CONFIG_IOSTANDARD: if the pin can select an IO standard, the argument to
+/*
+ * PIN_CONFIG_IOSTANDARD: if the pin can select an IO standard, the argument to
  *	this parameter (on a custom format) tells the driver which alternative
  *	IO standard to use.
  */
-enum zynq_pin_config_param {
-	PIN_CONFIG_IOSTANDARD = PIN_CONFIG_END + 1,
-};
+#define PIN_CONFIG_IOSTANDARD		(PIN_CONFIG_END + 1)
 
 static const struct pinconf_generic_params zynq_dt_params[] = {
 	{"io-standard", PIN_CONFIG_IOSTANDARD, zynq_iostd_lvcmos18},
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-95-sashal%40kernel.org.
