Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVVVYDXAKGQE36AJXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7ADFEE4F
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:50:47 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id u20sf9634359pga.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:50:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919446; cv=pass;
        d=google.com; s=arc-20160816;
        b=dx/Kzhj/YI8llzI5/H/XNTnlIIsvIJLDv5SoVQYovt6K4AV1Xp96RMMfPNd/5X0ZGI
         QyHTcoEUGFZL81r3n7QH4MJG84r1JPm203R0Gkjzv8Sl5FB0hY0vFa2CXh+NHeNCctpx
         AvaiopDOuQ3ro5V/W2k9JaRgWXDZXBX16uZs/I3UtPpJe9aeen2SO+hg7NcCGOEwdsmr
         H0RJARZvv7SAxsP/8IY2vEdg4R+XQrMdZN8tkGVtuvg2SFqWcpLUfIDlCEZrMsb5gm4S
         izoUk3kQag5xXrVOKHwniaqLYhSmN3Iq9Sp2ryrpWV5xRz6NL9zqlo2g6JqGD/DvaHGK
         +G8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=H6pOQ3Gr+ypYYiLCFw/TISOK2g98EpG/9y6tnj3WG0w=;
        b=jzCFgJ7ujRAPAXSgkfy0ODQmM82meHZUm3lSyHK85bsYPxri3/7nBaBanFr7JGIn9r
         DoRA5NhCDDk3QNP4llL6JgCBfc7Jd7yi4U36gAVULCo9hL4bE8GgLiVzOUzo31zbMeFR
         tv3M1aa/qfBvWxgXs8EVQgL0v1abq0yup95msiSut+lSjebGfN8WJXHQsVfHALCCUMsK
         CaUoxEvO8Erbl9VONYaXj2cLwcfNwo24iLqyTRqbURWOUHhJPdUHETPhGZ2TnFp8iruu
         I3rqDI/sfZf6EjzU32V85L++EWNIGIDiBLNQbo9Yaamm5eSMjomlNcL/rKDE6ust98Z3
         s2BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EON9I6dd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6pOQ3Gr+ypYYiLCFw/TISOK2g98EpG/9y6tnj3WG0w=;
        b=fAs3FrV45TgSr3Gft1K2QbUX5EsJcLUNsKMjZx4N1bG4XP/mTuB0OUiLnoOk1c8TeU
         RPJKlcnnBnJik6DcQtfAjphD3+9NTDGHMH7oZrZ3YRmTITum+APxOgRnKahcfPP8zPcb
         go8TW2+IVMCA8xHJ/o3gHgu4nhqtTjSgAT73qbMui5c9BSDv7HczqifPjSzEJGCqvAyS
         OFaCx4d4fum3AUKIbAW/x0vSzSbX56+d7W79IFTJkW0+CEg15JNJopZHVW8EdCmejE6b
         u4hIoycFsqvLYQUYbLcBIECXZVnNMLtf5A/lm8D0tfNjUXyuVNAe5NDvS8J/gqiUkZX+
         3tJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6pOQ3Gr+ypYYiLCFw/TISOK2g98EpG/9y6tnj3WG0w=;
        b=IRuANAQbmdpZLQiy/2r7IJJNS1pDu4LR9rSymIzilwlx28NDJFtSNRZs/AJbbD0ibW
         zjcjq1Wx6A/BKIgbtUCJIIuNJY2PsBtmGCSfZ8xaCpyildihxJt4Wta2oMTUNmKHvH/I
         hgCZ2VFesFNSvGKxnTNyM3qqYyt5JSQFHQWx1p+PlLjokKToovDalx3pdKw5T9Qh8dyg
         SXcHJptZWznXqYkfGEJhbtFdPMX269dVDud33E9hlUlLkNvTK248EQ/803ju8XRzKaSz
         7iqdHkzKKcwBZXArNqrue9L7JdozDWqCgfZ/9hAB8hF9dtE05C0j8R8+/KJwE1xpJb58
         LdQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWw3xb6D9tTxiTLkqRB0FirAxsCw5D6dsFv/R/S5t+/ouffwV/r
	SqD8nLu7nHr/aCDDewwj1RM=
X-Google-Smtp-Source: APXvYqyvy0xr8lYtgNhNhlbqXmEx6+8zhsEAp9u9SIxk3fM0QVEynu6HW6fjR5KF4VWDgUUatnc2kw==
X-Received: by 2002:a63:1a11:: with SMTP id a17mr2622647pga.126.1573919446153;
        Sat, 16 Nov 2019 07:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:47c3:: with SMTP id f3ls2611854pgs.10.gmail; Sat, 16 Nov
 2019 07:50:45 -0800 (PST)
X-Received: by 2002:aa7:80d2:: with SMTP id a18mr6130974pfn.29.1573919445818;
        Sat, 16 Nov 2019 07:50:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919445; cv=none;
        d=google.com; s=arc-20160816;
        b=cUb3P6GBg1vjdmnWouBbuWLNGHLxFjoWBmOrAiJzDrnLO5oMVOazQWcGt/YL5yXNQr
         hUaDME1/fLOZPfG3fpw7WNm+Fk3jU/EK4X3LJ6dOufGttK4GMF8T0fqn6pYJZ4HcTGXb
         rS32OdIhNek/B+UrZDgwkpQwXx2aB2anro7PJ//R6WHRLwJC3w4SN5P2asii2dtysIcR
         xB10JuBjosZ6xXwXuMCeth/JFJVeW2F0rfQENXQPuiT3BhiDpBf5WfUpzETqkp6Oi3JV
         1OcJ4WwJ/P2e40QnMLO35EJB4LQn4kbBl1VHCfGEyiszkn0U0V6i1oIdBjyQn6Vm2Wvi
         490w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=joCEblYj6xbRU6yYN3o9RBSpbJO7+Y0YCZ1RVby6eiM=;
        b=QrhqfjKNspfOz237Zv41OK+1RsfPbONSHWcN0ny+39IBxU5z54Ngje5zWEUG9ewndR
         3xdFf0+NdkHRAKj6s3g0uoTCD2qhCA83J3SJq1gaJYtNv1qCEyKrNN2jOYuQEJFJ0lri
         fYNX6Z0SwBiGkfhv+IJD6dEfGFP3x4M8augG8injIdWUGJsCKC9YCCyPoeWiHeOlek/t
         Db2q9DYRKlPxtHxUdq762eLHKN7l0KPeyvBDmgP7JTBPEFmB8+5a8AW2rE9Q3/1evYU7
         7i9hbroiaqmW/6tMHw1trlCU/eQcAP/nkvXJy/cBK3mfdWdkSORku5kUj/MrbCjIgc7Y
         oSdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EON9I6dd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w63si515795pgd.2.2019.11.16.07.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3F45020729;
	Sat, 16 Nov 2019 15:50:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 144/150] pinctrl: zynq: Use define directive for PIN_CONFIG_IO_STANDARD
Date: Sat, 16 Nov 2019 10:47:22 -0500
Message-Id: <20191116154729.9573-144-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EON9I6dd;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-144-sashal%40kernel.org.
