Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5OEVXXAKGQEOJVSI7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A44E8FA112
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:55:02 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id q4sf372778ion.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:55:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610101; cv=pass;
        d=google.com; s=arc-20160816;
        b=lPZ8epjYwmxK5ij/3sHsscN16RrqGwp7Pp8SCWhHkCKYr219R0w7coKb3U7Z5ojq1C
         EnBbZl6j7O+ydj8UEpnuiKcJGgwuPJxqUEnJiwklC1qNyv3oHtvARphCj+k1GuowMuTE
         8Sb29Ii7pJHcTs9MWqFmnk8JxqYKcAltTq/sM172aLkDw+I94X+o+/OfPM0tB0ZLESv9
         vJJ1Q+U3OK+tAr802C9VDQzz+s4Wsi5ImA7JzdFFSyxxiI46tU/Vp+WunsXpfYCagWEO
         PGaL0K8x39qL2XzQOwMTMn0OwoS6IasTlz2YraupzNcLiz4JJkt3DOF528/GE8rJw0jk
         UY5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KWaaJzP6xwMpRr9BE938reOBObm32eLFoiY1BTpSqkg=;
        b=ccYE0VREOVLNX3TqP9LYQ7Lymdu/+H0BwJxhWvw6pMsJNeQ+zqi/b7iTwzAh73Kz6L
         haleZr+X48ji5DapwoBNmu3T24HbiVOJpBZ8+2p4VHGTWtoOFHEzq+Fw8loa8TbqcuPA
         pyAP4tt1FZrbRVo4+h6ssdqAyolo5GALZ7A/ZlL6IaMHC95XEyeXIeQCzX4zfrcpAUKN
         9SkpEn34Fv/RcHjqDzpWqCDm8jQESVs7ZMllhbBcIT3rS15idvcSUJqPnYS2q8LyHSJI
         Y5bxlLCLbK6CR3UHuOgNvqRpTZt9jtckRAdEDigm7DPAg1M0aPGhjoJAOMZcjGtR6RZk
         Uy0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sT4XnQ3Z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWaaJzP6xwMpRr9BE938reOBObm32eLFoiY1BTpSqkg=;
        b=FFWF/n8B4evr1xLHfqqLXHCdpFjdgjrcytuHWEjt1nrDZP5aLb/2xFkD0GQ/DLekyd
         aCu574nOTt3cHljEu1R2m0dDADEeq+rfZk8TlvYPX3bLvcfVN2crzH8PNrR1TChg5ARI
         tMrqX6/gHvvQdKVKTlvos+7lCJZZiBgE/+1yOTXaMQgJvJTyDo6bvJT4j58txe71mrbj
         cdPvxpe9oA0Na0mnSM7ZhNNKW0eqF1c2BSDoj8500PUslVYHygpHdlpjK6i3XscFfJFy
         1gAoStii/qptZagZ+nKLNvaBskmiFAmu2iTKRxIxZNesPDYYMXj56csVBKuags9c+hHF
         YyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWaaJzP6xwMpRr9BE938reOBObm32eLFoiY1BTpSqkg=;
        b=DULAbFF0FToVZO2I6TVKvH1Ff/ChJGLjiMLea50xfY1nGV++0uLWrI4Oe+k6rglZ6A
         1/AQZ6BnYFZ6Er+a2JUY5b7XGFeQv8NRxGzNdw8qgAXjrd3BD0uu/9oaidtGTFDUD0Mt
         q1ViNcX5fm/ahDxtdfu0ajNRmr0WLK53SAAF3kXw/Sb0SuC/6lrYIorNS31KaMGtoK1+
         QPDPgXrkBPtmTm5ZxXiz6esadIwe4rSMdxAZFqlq4pDtoTVyM9uz0t34g7tIGWUAkq3n
         ZCW+VNx5D1SzKIkThPB1TRXdnEGooLnhRDq8e1NQl84rYmHyneZWXQweNb6nkUBveB2k
         LtkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVxPy4VLRbap21aG/9OOT0+BhBU/5FbvHTDQzDpSybFzQqHwbv
	BympwU/M9H1EYzbBGa1zBqM=
X-Google-Smtp-Source: APXvYqyQhWYi4UWr0+4aXoU1qjrI61U6C9VlgNS2HDpYASd/SupiU559ncDpIYbtrznVrrxwOfjcow==
X-Received: by 2002:a92:1d51:: with SMTP id d78mr1147359ild.166.1573610101555;
        Tue, 12 Nov 2019 17:55:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b212:: with SMTP id b18ls91643iof.5.gmail; Tue, 12 Nov
 2019 17:55:01 -0800 (PST)
X-Received: by 2002:a6b:908a:: with SMTP id s132mr1019999iod.118.1573610101203;
        Tue, 12 Nov 2019 17:55:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610101; cv=none;
        d=google.com; s=arc-20160816;
        b=wuehZYyDrYyGG4ZkWxgcYm44VDkj2Z5vIB4MosCk2HK73lfso1AQtjs+fyXT9DMofT
         mhHGKYJ2CArlLSIvkJo9Jf4imBgxNKPuRZF54pTYvdD7njqIq/Qshch8A11j8h/wcci/
         WKveAIUtYEcc8ngSLpfKeNKLsEifEquY8Kp2Wi2v+i9q1QTPUuJPuYvDUARp2w8/S5EV
         M2U/QHTXWituda1p75NXGKX2dFFp6vdtTxlczAcA7kOorICSPAoIGqgHWnwZLdQyikBr
         bDCnuyQoLXY07NHepKnT/zhhs9Idbxv3KSu7Rsq3qnNjKiEPwFA1+eSzIomIb66tfJ5g
         ZWGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C407jHLMOxX+2P242tPgCmfZShnaGxhrzvFQxGxwJpk=;
        b=ERXboguZsLJe8hPSGhQrz4KTC+Nc/vpB9B155EMqLpUkGW3H5n1irAn7nYqoLvmsJ+
         HduNXZv7T6ttm3uw3zYUC313DeSWwa6tx26aJ22HWRIEYviMjcH8ZBJxU3FyUJrjp4wd
         hEiUbv7Dw9aUnx+S4/wz/C+eE+dHSJw+S00/YUaB9LJcEhiCeI7m4fTqc+NOOPABmNvG
         3V/GRYuIEOkQKHRVfA63Ge7mTELGncVUJAH0P1Jk4BQoXO3MdvlO1WCLeVnYL/kQqs1g
         dOCzFuniK/SdKgQ2biZfIJ4jK4M8VSkKca/ETy648QjwVjrrLxlGfpcFuk7z6VsCHhRS
         du/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sT4XnQ3Z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z78si28016ilj.5.2019.11.12.17.55.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:55:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A4F89222D4;
	Wed, 13 Nov 2019 01:54:59 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 160/209] backlight: lm3639: Unconditionally call led_classdev_unregister
Date: Tue, 12 Nov 2019 20:49:36 -0500
Message-Id: <20191113015025.9685-160-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sT4XnQ3Z;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-160-sashal%40kernel.org.
