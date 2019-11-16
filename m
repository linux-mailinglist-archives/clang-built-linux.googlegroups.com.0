Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6VTYDXAKGQEG7BIVWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B5450FEDCB
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:47:07 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id v71sf5749513vkd.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:47:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919226; cv=pass;
        d=google.com; s=arc-20160816;
        b=LnL6AIagAcNPdT+UHGn2lAbfthlNOusc37cI1XRXIE7A1hJHPcStVmH/csXlytfw+R
         cPh7pqOk+x2L88GZV4E59yoYm9/Mpc6UyTRrBv0pwr6v/63W8VLzqASh2PuaNB0N70IZ
         vf+E1GGWE4qzfOeN59or7tYktiw5Apl8HtQeVpzbvoI4GGmjie8pYpXQrjwgf4dGU6O2
         OIIbKnNLBR07sF+H3aFqFHvyfwLt2WZOiEpUJ81blKm35LOIcn5pyDvPMWxbmUDn2T7X
         1xJNTN4madrY0bSoQ6aCc7l8EQnzoVi2dRmxT7ot8EVoNHkKkzi5V54fWM9wCe6r9yt4
         m3eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QaukhOQCEuFjEBEyeBtniNNccg0owsuCg3T2WDzCDtk=;
        b=tltTUmHs0+xo/35JQovp9tkTI5mZpgt0VqgHHL7OzjsfhkAwYectYW87yMplptSLeQ
         nxrOfhC8BUiTn41xZqqI0wVy2UyG97suoDu81rMOzdSzPGWslTTHwUmJuPcweSgkyFKg
         Q8XpS2Lef15vqK7qwf+b4aqIHc3MWcsviNhwLSUyiCVTzpXRyf3c8eY/UX/4hy84ZTpT
         /N4SVp15wCVJuUnJS5AUHTde68TyfaBgyO/MXFdc85xdBUkj9Q8SsSMEgnE/O48QvPGS
         NarMHTz44Stsjw/6YTsE3PVyNcSxCiygI68Js8TCswj2bZj3KpppJggwPr8m09J2ZAPh
         QoTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LVVLIxlM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaukhOQCEuFjEBEyeBtniNNccg0owsuCg3T2WDzCDtk=;
        b=ePG6gR4RNFSut3KbIHSPIQgvgk2KoZ8+NZxbbZLnCG14EP+nkzy9jXIY3nX6i06XHS
         a8fonO2mjrA6SRPr+I9tzLLpnIfCBNyIvXUv0rBkeFoBc3Rk6VIAQ7pJIhseAvU4qIXs
         gxH/Y0hxtVVC7BWlv3/WeIJKzSUOOHifxVU8ZB7MflAYZGvRrxPLReDoM+C9TW2IVZST
         7mgILhnOICApu2DdU+aCHQwo599JT43ECCfWIaIURP94a+v9ZbjZGUdGZ89dvmJJoMeu
         3NGCpwaDjRoIVLd8fJaCwiC7g5SM9my+Idw6QjTVyPAaPDgLP4YrjVOPah7DHGiP/i5u
         W/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaukhOQCEuFjEBEyeBtniNNccg0owsuCg3T2WDzCDtk=;
        b=lEWhsAHOcwRFMLf+vVhiagZXhXhKoP750o9gjwiamJmvYqQLgxlWd0Hl27LGImyiYx
         gfje2jMifMeYjkOUcAyJddFb281O51PRenbstT/rwOaW0QyqXyYE1G6Fou42TG+l9Svq
         /FBgKNwmxxhu8GH9xYLWha0nIQEtvWG9vB31nikXA/pe9oCKacgAKbjlLtD8hyj7guUU
         3csZK2dO9uMXE0ELctfbluZRYmkw7j9WqC9gfbAIHMQM6rh2I7tcWGyN8wEHqQy+fvAf
         uzgwPJCCSdYsxCFeHMKVmmlymYCiviszfTsvF/0c5q5Jjfk2/OacvR9RkUtAX82E0c5u
         ET2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPDu45DY4KwhLMh3tEIBdP7zGOc4P5HFLCM5ZBCoZhqof96o7f
	ceGcXrN8Bog43/U6ZCz58QA=
X-Google-Smtp-Source: APXvYqxVziVCDoOq4wP4zEXaexO77nmBQMGosOWrtd3X9UXe/SNNLvH1mULsQI4XRdhKnmx8hEfnXA==
X-Received: by 2002:a05:6102:c1:: with SMTP id u1mr12351402vsp.145.1573919226777;
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1015:: with SMTP id f21ls477573uab.5.gmail; Sat, 16 Nov
 2019 07:47:06 -0800 (PST)
X-Received: by 2002:ab0:688f:: with SMTP id t15mr12659013uar.18.1573919226418;
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919226; cv=none;
        d=google.com; s=arc-20160816;
        b=rstMmqFBFxzqvXHZ1UiXI+ah83KXt0q/MVxgjNLnuUHlKyzYWoAFut/FigBz3LD+dF
         RvaKxNPYB9ERdTWSrWZJVKPt1lLfmMu3R5dox87mrg7iib3hcfPK87OoLg7t+f7l8RT8
         TlyQCYbLjOk7EkQ0AfWaOZiuAH+fXK7EQNkY8wfF2uTkOpd67hOiH20Ve9/KJ8P3tjsg
         A+67llpvOrtSXUxDkW40eYtQbUuJ/pHGTFTObNcTob8TGn2JC2AaX6oWkgpPTlIdPlbq
         gbfUYWy7RU+ms8x5czQRkACxHjKBXM+LzbMoHv+GoNMNFiRHohl5M+PGv02M1d0ZNwrW
         b3TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eu9MrZaHPEzc7WN1BaGMHV0JkrNwLQ2wTk+Rr9TT1lg=;
        b=u0VxToQCY+3KJAIZw57gauJ1KFdNrj3PXni7PSypV7wnpkULv+KQRI1HeiNGn+tFJ4
         SGpQ8slaatYDi0qquz9Ghq2hP2u11Ahih7N/y0i0PmH7fV/8BmHjCJsU6RTtzoXe8KtQ
         xCX9CVeBRuLan2ZB1l794vbW1ePl/aEjqMEvPjhEmK0QVmyOSCLplMwYz+ekONH5ffJ8
         dptUnyVKSqDFv/NcfZCarTUHepByjqwDhpxclOSZKf1kAHpi8oQsoReF/NjfoyD0TuRn
         t/F13JV2H7lh5eV0F3p0Uxrk2YwqfU8IhzyQRaJH9Zh7+h29C3eizLFlqpPiIU4wOmbI
         yADQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LVVLIxlM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si816852uaf.0.2019.11.16.07.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:47:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 117C22083E;
	Sat, 16 Nov 2019 15:47:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-gpio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 228/237] pinctrl: bcm2835: Use define directive for BCM2835_PINCONF_PARAM_PULL
Date: Sat, 16 Nov 2019 10:41:03 -0500
Message-Id: <20191116154113.7417-228-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LVVLIxlM;       spf=pass
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

[ Upstream commit b40ac08ff886302a6aa457fd72e94a969f50e245 ]

Clang warns when one enumerated type is implicitly converted to another:

drivers/pinctrl/bcm/pinctrl-bcm2835.c:707:40: warning: implicit
conversion from enumeration type 'enum bcm2835_pinconf_param' to
different enumeration type 'enum pin_config_param' [-Wenum-conversion]
        configs[0] = pinconf_to_config_packed(BCM2835_PINCONF_PARAM_PULL, pull);
                     ~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

It is expected that pinctrl drivers can extend pin_config_param because
of the gap between PIN_CONFIG_END and PIN_CONFIG_MAX so this conversion
isn't an issue. Most drivers that take advantage of this define the
PIN_CONFIG variables as constants, rather than enumerated values. Do the
same thing here so that Clang no longer warns.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 08925d24180b0..1bd3c10ce1893 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -72,10 +72,8 @@
 #define GPIO_REG_OFFSET(p)	((p) / 32)
 #define GPIO_REG_SHIFT(p)	((p) % 32)
 
-enum bcm2835_pinconf_param {
-	/* argument: bcm2835_pinconf_pull */
-	BCM2835_PINCONF_PARAM_PULL = (PIN_CONFIG_END + 1),
-};
+/* argument: bcm2835_pinconf_pull */
+#define BCM2835_PINCONF_PARAM_PULL	(PIN_CONFIG_END + 1)
 
 struct bcm2835_pinctrl {
 	struct device *dev;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-228-sashal%40kernel.org.
