Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7FTYDXAKGQEJC5CSSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id ED373FEDD1
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:47:09 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id v71sf5749557vkd.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:47:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919229; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEvSALl8qo+t8G02MzOtEI19jrP4OAZolALBrrWQEYPrtK4/LArm5+TQtIbZ9kkxrP
         L/7WAQItopQVAf/5vS0q9iPUUckDMuLULDMBO/bQuXRBWhBuuwOL+fXrHWW0TJW6eNno
         6/QemFAEmjiepIslj+D25NKVjhM4yiTpj/raN5nw0t8aVtrRTBJd+WfiumE0lhkvE3Tk
         bBR6hOgByhWvWi/bhquKjtFIMpqZl5CRqWBcgp9A5usXRsm694eKGtmbfDICC3HSKlnH
         cRAgi0eZvCkrIB9JsWDKTT7pWxeTPAZFWxeXm/DqrT7+0fT6BW9S0b+0frCLFK1Ydfmg
         pd1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/yrChdD1r50HdECt2ozjGj8I8jTNthcGDjRlA6SbyPY=;
        b=rXk7bInj4T/BeaNJwD0qwoFnoDtboqEmoHuSLYjSwgr30OgGtpduN8xsI+PAv1eDl3
         D+q8TUxo6IED3UKU58WcYxhwm8TQpYf7PZ/2LqYaQ+kzP1lLyeaSGFJNjwF2XBlq/dpX
         E4C5iiHkgDsW3Wwmb2gufl8TxyhX/GFJ/oN5kFbih3ld7lOPoeckFQF26UfwNby9ASy/
         BKTuTNtLvdcSRGQtJ7V9DAVhDGmN+g2F3bqLxrfe40zsntw5tebZKWmUAQwpK84HWU0B
         FpmJYyGjxAQxutp1pFFYy44g4qWxg4emiNqb/8ke3KtMSwPZ73Yxq6nepUvROLDpiE3z
         /uuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RzPnVjzv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/yrChdD1r50HdECt2ozjGj8I8jTNthcGDjRlA6SbyPY=;
        b=JEyqNnqqOGX6jIC6npEDa1vTl1paGI8XOR1Kw+kW84TDlZ1t4iAids0Ewv+N5MC20C
         H3UFWtnQXXVTy6ZdvbFxbU/F3uTlSzGRbd0ZfGGzoMFxVCEqNR7lPW+0mShKohJIQ8Bd
         PkFDByZXVSk18+z7klxdxgG0c+VCJod3U21wKEWoPuAcG8pf76O7KGPvMI/DlsZhGve4
         AQmMLYSnvrrwCmtVV5rNZVjUl9vKop4TubBZFsknNIqPHOU4ehDLKFZHThRPQxHJf+fx
         AOamqPV/cXd2+J/5lprdNom4JUKUF3lw/lKKHUPt02r1w2B0j8X48j13fZm2j0Xe27hQ
         qRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/yrChdD1r50HdECt2ozjGj8I8jTNthcGDjRlA6SbyPY=;
        b=KVkxud5XCpE/FHJwZH0sOJ3D8JJ58JqQz9DexbaAybAsb8O4B/a5qD8HPRRbsbIvlt
         qV9rHNUlJcVDwXTGy5qYPeyKXPRGuw7dewTvRvgiel8TjGw9R8FttpM64ZsksnDItNkV
         GfJJg8oFfqKpx8y1kMRUD0m0OD5AtGLZtGKw1mAKmCpqZZxF1qoDjLeTVq/Nsj9r5u4R
         cRdWk954w8Sy76kH8mbW1qOVYX+Grv/usTEaR7X5R6xH6FunTQ51A5vv2AVet1VdZf61
         mC34vMu+PWlGS5VCRDcwYNcMDbp4pc5jdTYMMkMp9KmcpSImMg8jR+YhKKZyiAsAjJWR
         2S0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJnlc6b5nK1W1mHZdgJAPmarTLEM2HxW0mmYYA7S56O1Bt4R1J
	t6jWh+/1kPUhaBpexDzHQxg=
X-Google-Smtp-Source: APXvYqzeRdcxeDHFRv6xAOMv9JcMwSgBuSIOcVWhf6Tgn+ErA4YbbH4m7n+9BeJehgUT8JFRpc3ayw==
X-Received: by 2002:a1f:2c55:: with SMTP id s82mr3281395vks.22.1573919228971;
        Sat, 16 Nov 2019 07:47:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls894409vsr.13.gmail; Sat, 16 Nov
 2019 07:47:08 -0800 (PST)
X-Received: by 2002:a67:d20e:: with SMTP id y14mr14022438vsi.16.1573919228648;
        Sat, 16 Nov 2019 07:47:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919228; cv=none;
        d=google.com; s=arc-20160816;
        b=c0vo0kZma4+2DKsdfGHYtA6tfU6IcLXN/NDeWxbnlV0Ar71YUqN5lOfKntevaOjdAi
         uEJi+dS3ckF2b6/wu7QHG2vWWL5CyMyKLcUlRI8od5FMfjt2HQVYRU6KLvlX634CSt/B
         Xiasv7ru++k1Wq4d7jeMKVThg1XiAQsf2FCeWbGC1d0MQCrEiPGXSYRZ8YqahFQv+Oev
         5UbL2bbL1CvohqFk+4nZnUvrOMEbfSRq5hOtPR4F+Krvpn7/BLCzx5PmBUKbXdgmyDHb
         c3iulQ72CpGJXK8J5Y7erAf4hLlJ6kIYTr5ujDHPz4Fr5lDlZuWDnqzXIE81U+RnKKsR
         u2Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=joCEblYj6xbRU6yYN3o9RBSpbJO7+Y0YCZ1RVby6eiM=;
        b=r9ZGYNteimxXOKZgGwnEF8Ql59whLzX6BJqLxvj6fo3wVe0nbljt5b9QTU6J6x19sU
         G05OKSvWKIyCKTnkB4k2pCg7TGCDb9GVt1vHqOHvjdyg6ssz+w9JIV0WwcS5o8hDB9qT
         HGpH3PNVNLUaAh1iCCTuCUHB13sa0r/foKz4B21PZktvE+AeB74cJ0drPF8tBTiKtd7+
         MZoSkYqrATEs+9M691IrZ0dWprs907lkr7BXv3uwbp9q1ycj8NBZkfMZZnzrURrFT5i4
         WBtZZb8nQWPWvwhH/JdY2n/Euv3xzGK8o1d8QBh6Q0cmUQgJtxbmTYbQZJqjjQAE0Rsm
         t1GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RzPnVjzv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s197si634130vkd.5.2019.11.16.07.47.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:47:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D2D620885;
	Sat, 16 Nov 2019 15:47:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 230/237] pinctrl: zynq: Use define directive for PIN_CONFIG_IO_STANDARD
Date: Sat, 16 Nov 2019 10:41:05 -0500
Message-Id: <20191116154113.7417-230-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RzPnVjzv;       spf=pass
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
index a0daf27042bd0..90fd37e8207bf 100644
--- a/drivers/pinctrl/pinctrl-zynq.c
+++ b/drivers/pinctrl/pinctrl-zynq.c
@@ -971,15 +971,12 @@ enum zynq_io_standards {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-230-sashal%40kernel.org.
