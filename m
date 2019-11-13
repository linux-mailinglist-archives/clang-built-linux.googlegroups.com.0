Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXGGVXXAKGQE3MXROQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DE7FA1A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:58:53 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id m16sf569941ilh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:58:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610333; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbEl886VzXtHu98FV8a9yIvYsL3ekqvc+vgT/aJWIfewjj+AjNDHtTydjsHLlAR6LI
         mxVTUgrFTm4cG/nwN5PzhD6E5f+xEXIpSaZWyeS5AZuaeBaTyXrnS3Jiq79q43yas5FV
         Exc0iocvpkpTE5YGt0efFDtJGhIa56P+ahP8NiGD+M3xmlimXupwqSUXptZpHjWtDlEU
         FVIyTLxALuF7ShCshwxWJxgXOeA/BgoMOUbCYJ2fMtkj0R2GuXRnrjw16azenABUWobP
         WBE7brXvqnN79YITCq052Jqu8cU6+TY2Eddo6bnrb4+CaOcrdyJRQdoNdSr6/A+Qrlj2
         r5LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cyKtibR28w3OWkHdjHmq1HJQZBuabFLe/ays+LqmV5Y=;
        b=JRmtJ4UNfH72oV57VtJaA/OBOou/6bwaGUuWpu75EBbLMBcD5CCEPpIPgi8dZfizIW
         Aq6Nh/SkgiK8M6CQUkbseZ6mya+HPdYgQ9sgdwc9IGRFWoRapH3+4BhCnbdMClbvXDNt
         1nipt1Y7+G1vI3gUzBe62dZJOcPCkD0G3EF2WKIu7fKrt7UIJRTmqpd4ML8oZ5dv0UXh
         bFQw9rt64l1fwHLI16ukvm4p50Be6skJ9DOWz+IXUkXY22D73cAzheJgSR1mHyQ0BbWZ
         mgp6gUGpaj8Cl/ujmGJn5iATShWMwc+ANU+ZA/x4HBglQN9gef57MhT12zwhmZv47GaA
         AvhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rz85SUw0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyKtibR28w3OWkHdjHmq1HJQZBuabFLe/ays+LqmV5Y=;
        b=iT+OzArMEdlgWXRFz3kXKai6Gs1EuZEG3UvSTH/xlhYYlQEyCsaUfAkyLiKDfoKvbf
         RisXDdMG/BG3rs+T7lrp6qt+cskuhlVm+PVCUm2+WrY08WDlW/mG2oD7AbsZPLykY4NH
         ZOU5FTtsbeezZ1lqgN47VMwgV3IF2v1CT7I64p3Ke1B6C9v4SYH5EAT1OY6PiC7dwYil
         Y6Q2sR7/t/8JWKgbqGbdB7Cp9+XKTy4DJaOS+AuvaYGUyAY2b6rt43VDk3zQz03yZivU
         jNuh1nhP5Txnabr/FGWCAjU1MzSxBBxXz91HSTxfSKmzDhD+JHsxfzCieHUNzLP9w4W6
         8qfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyKtibR28w3OWkHdjHmq1HJQZBuabFLe/ays+LqmV5Y=;
        b=c9Amwt7TBUzHhjY5UnehettTjSKK36bZha7UwIB4Bwu/Z7r5WNGTgH+iWZInvx7yW4
         5WeLZYQdNCoTbGl5eS575VQrWX4HFY/c+HN3XLmMMwt4JeEb94fhJXzGkxp0MMTAq99D
         y35d9JUCoZ8N0mz0olkDtNJSDG7stnkAya7hN+lP1HvNaJGdkZr1JdgbP7ogkh35Huto
         HPG1g2g/FQUY6Ono92vxxJ1FCdRTjAYHe2gomR18Y8S4EX6MU1VBQuN11M52psfKfGoV
         5u0WDPkS+aPrKhxLH/HoX6Qq0Teu55LdEN/Uc62XS/9Hq3PjfMF2spSx+qu5U0Y4lp/3
         K7Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKimnRiYTKuzqzOY3lF1REu6CQabW8sSu1Zfr8o8JaAjg6pfDB
	FD3kEybLwdQiQNE2uCWsIxc=
X-Google-Smtp-Source: APXvYqwzImVAo4/TGH0SMBbcpPd3ldMIE00xKGoOM0IemAiZtOQDW3A5xva5TX2vLDm3ay08V96fCQ==
X-Received: by 2002:a02:ad14:: with SMTP id s20mr714459jan.132.1573610332855;
        Tue, 12 Nov 2019 17:58:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4a07:: with SMTP id m7ls118938ilf.16.gmail; Tue, 12 Nov
 2019 17:58:52 -0800 (PST)
X-Received: by 2002:a92:c10f:: with SMTP id p15mr1041282ile.119.1573610332584;
        Tue, 12 Nov 2019 17:58:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610332; cv=none;
        d=google.com; s=arc-20160816;
        b=z6UfZbNxLApjD0IalCV75ZqRSMuzXWRByMOK77iGZw5YJLFWJzqng3V2DPJzZ+Bp7T
         /CjOVhMoXdjKNuNBpVqAzWP9aIlFoBm7HR5X9pMBvUzhiaP797UIpBCn0QKCSTIjc/lo
         7cjGsU2e6v1WAOEdtyOPFyCwkEFVrl8zZsrsytzRNM/kkC9sHt6ePdDCLnG77BZV0JWO
         /X4M8uCPHU/+N590KQOXQ7U3SNUYtochcSgKcMjA+WbpE1C06RhOuP31fWhehmt1Ylov
         53t0mTWuMRbE2GhzwrCu9h5Xyxz1jmkeXgCqb47n3o6GuMTdE9t5bjVwBEqgL/dvWbhw
         f/iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C407jHLMOxX+2P242tPgCmfZShnaGxhrzvFQxGxwJpk=;
        b=IZC5uqKMmQaXwzb92gNN88YlvnVTbDy1SXHcESyRRbNn7WjxOZG5pL1zsI6lqfWP1m
         gyd9jKvwIC6I2s2SVcDG7Q14MFodiXEEUk0imCBi56SUfRqIImwhAo8RrjihdDm+UvrD
         LS84LRLgwH1/lauVNWwnCEOAnKUDpwHsTEv0/THW8jS7i0eQnr2dl8a1w8QkSzgeuTWx
         +EI54sPRsNYPgVEsaSfAeqPlXfQMXqqi7jdQ+klmB8rIoKGiSSpXuEcClB8NJ9IqrQwx
         Owiyd7G1ww3j2den2vhleLL07KSbN8QCLukKsHqT+csPeX7R+dID6qxNC2C6OP/G5Mzh
         KHpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rz85SUw0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si30249ill.2.2019.11.12.17.58.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:58:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0B77F2053B;
	Wed, 13 Nov 2019 01:58:50 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 089/115] backlight: lm3639: Unconditionally call led_classdev_unregister
Date: Tue, 12 Nov 2019 20:55:56 -0500
Message-Id: <20191113015622.11592-89-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rz85SUw0;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-89-sashal%40kernel.org.
