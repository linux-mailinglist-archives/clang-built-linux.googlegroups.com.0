Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5VXYDXAKGQEZ5RBTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA1FEEF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:55:35 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id s8sf9648460pgv.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919734; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Bgz3I1WtRvdBRnwpj96kgcQCEIImiZQwxLvp9Ia+TRpkTpYsyEuG3TNYdPaL7UKfU
         /uGGNhgQDoNLmDCYXJRqmVuWjrFFvuUDI8z5DHVgSJMZ2YYbUDEkZphKXIoAGqwz+yYA
         0aD5+zD/NuOuIG8kVf94xebk57z/uT0M2aYY4eFGLeC7ysQCsqkUu2Eu5PjeEixh+jxi
         RMyuDUVGXJZuvFQUbCzoAxm+qVWrRjhevdOgXY0AKdRJwo8tukee0stwSolCKmuskbXr
         MiZO3vgAKoVTbxocpntTs4guRttxJDutTokYWqwiyyh087yrroH1YNscQtD7NN1E9hhs
         jCZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VBhLOLd9PUzC3IAXwwXLtYICM0DJcrgdGXALPUgXZxI=;
        b=Xj3TjlzKbbgbXoQPCrFJYgvOWFcCHXU4Ui06SycuYGYf2DwYW0AsiMxNSopOL8oxev
         LNyKVTtuKRcZkfMz57tjPBpu5I46dm1Skf6P78O9/u6OYPDW5xEjSFFCrYfoN6CP1hID
         lLqieR8ls9VGPyLJ91Vi+rW7qmgA+CWery6oLdJOTH7c6Wmr1v2HWBZ9kPa2FLjgnahP
         H91KbrwD+EOXcd9Z/rE5P8/3vHZYn3vT91IeLD/L61fxm4gjWcTfxNTPDL7R0g9V4mYc
         kw61KfnQudLdE6KANDn6DvMHuZ2vbVsiqEVwYt1RKWZor9x70iNC/VSG0/9UR+DIfAJl
         mX0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a5Ip4bZN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBhLOLd9PUzC3IAXwwXLtYICM0DJcrgdGXALPUgXZxI=;
        b=jJUCx7k2E//nlTeQGwo9tpIeiJ/Zze4XguBCJB9JKyWyAT+PE6ByCztasV5oHtcxXB
         kpm3eF0V+/Rscx8DTVcpJ3jZ+79jzUkOYZgfbrblimRyCNZJe0g12qocHkaluHXUEqCN
         rJ7DJoTUqi+OX+rOH/4Roxu6HxnDCGwcIED+h9NiL1D3Mqtog0vqdHK+IeP6/8Xu605F
         VjRlCPvwRSKATE+2yxISq5kyjNQQcDPm0mDPaQ5sSRyKT1cLc2eS+XgQlI+sNUvGnwjc
         P2RqJwuYC9dosrQtDFtkeilwOmOb7WHM/OyRB66SLt5gP+zzlVtnaXdmFd3IgiTeyLUx
         e4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBhLOLd9PUzC3IAXwwXLtYICM0DJcrgdGXALPUgXZxI=;
        b=oW+hxERTa8sJp3hntrXShp1yEvOgkIvpymhpe5BtTF4LfyoQdOFLLzm1cHCMkCyU5p
         gBy7i+8tyL8juEX+6/OE6W2kPa2OFQiIibzlbphT0eXIvQJ2ioqPaB+fRyZws5CWkS5e
         K+pS2uaIg5Mpl77FLZHQU840g4QvO27imdxs8SdBFty+mn8UxpJxlnshd0RhaahWSomR
         GEYpEQk/GvhYs9g3WA+S89z9s3Ct73i77ySBU7n+ow6ztrTYL5SpUTwtAaT3YEvi3gLG
         jTLKeXFbZTvvYuiSSEvIhQ1fTz02VBhMxQ2d6LB7go+BVhSzjN2NK8IAk8WiAl6Y59UA
         Smqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWOJXp3JVPBWbTfUnnNBCjb0Rbc6afPt2UWzF1ptIdUrtloh6vk
	Th6dklzIRz4NNyKO7aThXqE=
X-Google-Smtp-Source: APXvYqwA0vxMUkzvjC5Lr+JjYSTMMaErFStVGXSdOy6cGgz2/CfvdqFHPvv+hZNkSRCe0RFpSUO07Q==
X-Received: by 2002:aa7:8dd0:: with SMTP id j16mr23459358pfr.58.1573919734240;
        Sat, 16 Nov 2019 07:55:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:dd05:: with SMTP id t5ls255745pgg.8.gmail; Sat, 16 Nov
 2019 07:55:33 -0800 (PST)
X-Received: by 2002:a63:fc19:: with SMTP id j25mr13950504pgi.204.1573919733774;
        Sat, 16 Nov 2019 07:55:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919733; cv=none;
        d=google.com; s=arc-20160816;
        b=yenOkMVWCjOp4U1SUvIDo9qQUih600Ysb+XgFe8kj64TpRC//0+L8Fnq2LgKGi5hKk
         1n8D1IKG38P+XaE4q4PvFA9QuI5LqXuPynh4y4+DWTo9sOO3Jcyq1SPBwg851zJhyCMW
         Aw9N6qxKrxzg3Tg39tYyPu/dPNyeW85YRTg3zmykJ6zq7ROUYURtAthf66i5ucMkD7KA
         4DnBYPC1Gc0xz17vaVx4RUBRuaa8WcHNhOMbZOTYYgPz+ILYBVZm3N/ing41/QoaTuRh
         tEX/GALKWrCSxM8Ko/p5UbIrsv0t38USc2Q2k8kGHr10p5SNvk0vHRjdaNxNjr/zltFl
         5u0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tWcqwuPa/J/O2hdWZIdjBQJn+126kW0a65G9XfS+Da8=;
        b=0cquCS03g+y+I6eCXamOrWHJ8p+smmrMZx3NYg4xefeWMy5A7mBljcKp/SaWwJBEKi
         +LHeqs+458JCf1Z83vciP5MGFRhB0Px0Is6iRGjBeWxClC1qBeBe9yr4Y3BrClIILG/F
         UTYpNj+JG7kGOXN8P2TU+5ue5YpDr61gDDNFALvh7AIpVSaBJwo2rNPnhkdO58V+NPK0
         qKqimYJYF1rTaMlSNXlJskLLsBplKYqgHgN84bx8We/6ESJiZM5EWWK6X4qgMma0e8Y0
         meAHjf9qYwbJp8OAboQcnuM9a+Pw71GCOrdt6xgp0ajdCUpbof585BsvSA8D+E4jYbcO
         P1DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a5Ip4bZN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si683853pjp.0.2019.11.16.07.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 415E621844;
	Sat, 16 Nov 2019 15:55:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 75/77] pinctrl: zynq: Use define directive for PIN_CONFIG_IO_STANDARD
Date: Sat, 16 Nov 2019 10:53:37 -0500
Message-Id: <20191116155339.11909-75-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=a5Ip4bZN;       spf=pass
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
index d57b5eca7b983..ad12205dd7962 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-75-sashal%40kernel.org.
