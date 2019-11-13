Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOWIVXXAKGQEKU6L5MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 888CEFA233
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:02:35 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id g189sf229906oif.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:02:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610554; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gcuv28gTs2YOvc+AeYleGio5VAgBCnLpA2kUzeCl4Wc0N5yJc3bjOoppV48AeOpion
         v24qmYvvVEb/xZarau/xgjhbaHh0hx38rpDjETOOGM95ZG7WWcigH7a/kS+xPvIPb/BH
         4VGlhR9hh547WCFD3ueSYY7tY3IQX/sbewAzr8T3oc1TNeEyF9j0bqarMFlDlwVMUC1D
         q5KPT65n7h+QoOTDClWxvNbVWz2NNwZYwBjDLA9DgGx88zomBHp9vg7CFsH7StV9JMNP
         Sux7/A6tRLSdvLY8Sb1lT/IBPCI9vzbkWa/lNir9EeMvIWN3RzJPHje46WCnr6k0w8qN
         PNzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UxYHZ6phGEry4pr6RdMewelk2myi3EgS4+5jEVlfDKI=;
        b=hu1oNSJBYQk1kfWEzps1lKUe0kOvOzsKOPft4ERb8WKCVLnTNG6TdmNRhX2d3LGoGL
         GEA1dEcJgs4gNNfmI16Jh7NC6Go1U/67/eh6PncdUJBJOGwkqg+gifdnQ/57Fc3nHI2T
         VInE5TZP9kHOChKSomQfa9tLSZMBLz8TKSu0RgF2vAnuXBaJzCRMHZwEwtheNJjnA6/B
         pHhDkA2HfGoZqL/C4yCzMQRB9wLcy8i/4H5gM2+OQ3OsWWtZRaUhsofUnmsDfO8fWPoR
         6iwjlAQfif9N+XF9wRTDaAutXUCc+RPucHV96oYsCEYrQYw2QQLJeIhEMTh4akGXwdyJ
         qogQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I/BRtjC+";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UxYHZ6phGEry4pr6RdMewelk2myi3EgS4+5jEVlfDKI=;
        b=G1Uq7Iwta2zIhlcNrSmUaPUYqJ5dcA8GJ3nJLdULczr4W5NPWGtBmbcn+Jr3AzOACQ
         r9mZOfBjQolmPWFknSVX1ZrjI+66Tc0C5DZnWgyBNpBCJflQ7LM9ya/5JLno5ivLwK6L
         I/x8X8ZZAelbm9Q3V+NcamnKf4lQbomwPzjEs1XdMsdZ2nVpM3Idw9mM9jX25UMA13rl
         Md5owCjKC3GXMQKLskj/xyoXJyGl5h6YiOEro+OM4EBGcxZcP+7WK3Nb2uE5ik6saaUC
         MTdMY76sKOW1es+n+OtGOOEzS62W7fYWcEx9ZJNIvrIu4X23YswdwOCbGwZIQql76DPT
         NZsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UxYHZ6phGEry4pr6RdMewelk2myi3EgS4+5jEVlfDKI=;
        b=UDvRHOVo0BpJUKhUEKluZ+TwChtkCZCVmgjdYQLzM8YBluc0EgYr2tX72fanFn+ZaU
         +MeLxLldgPBWmx9iRkWsTTnP2w0OHdU6vJlztN/1pxC4Eh5+S0Q/fWTvmEby46hBfrKX
         NZrhXOXZQ9WgQ+33IuGE/rdGqh9HrcLEMel3ZL1i/AlvF6JYVXchpHDDb4xBrqOy5LMb
         ejCPqFui4l+rhxr9eJDNBACH3jMWtNXJoydgqLzamJ6XlrIesrZrz9upEivnLN5OX4yq
         VJ2Cy8apn9dtnABkLG/qNr1rPvDCfvF2jD6J7ktl7tPL3yzjH/KYMahsJfaoxYZTNQ2B
         SIJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2C3JbtZWEbWObMnxa8TxlBCc664kDjf5UpMmfbc4+lcmCic1T
	WCHkCdL/+2XHxTLQH9j6o1c=
X-Google-Smtp-Source: APXvYqzFo6FzCWWUW6HKrWLJNM+KVnk8Ld1f+fCHzxNo65SuDRXpib+3ZV3KHMoHRXwlHgzb1shPUA==
X-Received: by 2002:aca:4896:: with SMTP id v144mr612937oia.16.1573610554399;
        Tue, 12 Nov 2019 18:02:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls150819otf.14.gmail; Tue, 12 Nov
 2019 18:02:34 -0800 (PST)
X-Received: by 2002:a05:6830:1d4d:: with SMTP id p13mr597533oth.286.1573610554117;
        Tue, 12 Nov 2019 18:02:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610554; cv=none;
        d=google.com; s=arc-20160816;
        b=TmXBN8ATnOHRInnuGOb5XCzjmYKKYbF5kF7q0TQ2GRT4cEZZW7rlpAe+vqMw4iYGLV
         E4WIpg2pyBzCZF0ydtNjW6PItaLPhb5ekgDNQXOUP8L5Ce9BlE05knGIWif3fZfDXN2S
         nh0THESouEAcpunv4bxqRE3bvAomOlBJ/UNtiusdQdsekLIxlWmz5jDmxaMtOLAIYgCy
         pkKEO5o5JJkbiAG5eiMh6/uIBZlOkroOn0xg7voRvk3aCFPgYgPecejZZYduSkb/at56
         NzNuO48c0oCifw4ri+ooS+nteEK1Ca3qjeHH2pERs9+vtHUp9S1CwYDEgDcZ3mjFgg8q
         a9Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C407jHLMOxX+2P242tPgCmfZShnaGxhrzvFQxGxwJpk=;
        b=FPgh2i54mr6BAVyBSwAsMd8yPw9iOrGlw2NqaT/evMs6SSFhoLfhZ6ZuBsHWWcFJ1S
         MHy7zaiWgz3DXUzNGsUEgWqbve0kkfhTGLSQn3c0bc/3hE3QyJFGvRt/0E1LmYmt0F6S
         MjuJUoTn9LWebMZodeota/hN5BT5fT8SdYzY0iOVWyhLb85Pv8dOQw5AMmUe6wQXkJlp
         1soa7yogeopjXvsoLw+xJ7AanGQ3rl4QAplqLcFVCJDfhczcFftyDvG38VMjMKR07K7N
         Vl+RoN1+Xnod0s/L5ddXcuR1Yw/gEeNmJ9VPGaqAhet2tcyf3QkA/SV68dNwGAisEHKG
         TFYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I/BRtjC+";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i3si37586otp.4.2019.11.12.18.02.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:02:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F1982245B;
	Wed, 13 Nov 2019 02:02:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 36/48] backlight: lm3639: Unconditionally call led_classdev_unregister
Date: Tue, 12 Nov 2019 21:01:19 -0500
Message-Id: <20191113020131.13356-36-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="I/BRtjC+";       spf=pass
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

[ Upstream commit 7cea645ae9c5a54aa7904fddb2cdf250acd63a6c ]

Clang warns that the address of a pointer will always evaluated as true
in a boolean context.

drivers/video/backlight/lm3639_bl.c:403:14: warning: address of
'pchip->cdev_torch' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (&pchip->cdev_torch)
        ~~   ~~~~~~~^~~~~~~~~~
drivers/video/backlight/lm3639_bl.c:405:14: warning: address of
'pchip->cdev_flash' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (&pchip->cdev_flash)
        ~~   ~~~~~~~^~~~~~~~~~
2 warnings generated.

These statements have been present since 2012, introduced by
commit 0f59858d5119 ("backlight: add new lm3639 backlight
driver"). Given that they have been called unconditionally since
then presumably without any issues, removing the always true if
statements to fix the warnings without any real world changes.

Link: https://github.com/ClangBuiltLinux/linux/issues/119
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/video/backlight/lm3639_bl.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/video/backlight/lm3639_bl.c b/drivers/video/backlight/lm3639_bl.c
index cd50df5807ead..086611c7bc03c 100644
--- a/drivers/video/backlight/lm3639_bl.c
+++ b/drivers/video/backlight/lm3639_bl.c
@@ -400,10 +400,8 @@ static int lm3639_remove(struct i2c_client *client)
 
 	regmap_write(pchip->regmap, REG_ENABLE, 0x00);
 
-	if (&pchip->cdev_torch)
-		led_classdev_unregister(&pchip->cdev_torch);
-	if (&pchip->cdev_flash)
-		led_classdev_unregister(&pchip->cdev_flash);
+	led_classdev_unregister(&pchip->cdev_torch);
+	led_classdev_unregister(&pchip->cdev_flash);
 	if (pchip->bled)
 		device_remove_file(&(pchip->bled->dev), &dev_attr_bled_mode);
 	return 0;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-36-sashal%40kernel.org.
