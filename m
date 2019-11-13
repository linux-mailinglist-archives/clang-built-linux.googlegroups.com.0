Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBY6HVXXAKGQEQJ2U6XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 54712FA1FB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:08 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 2sf184921otz.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610467; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxL9JVCDvKmqrGRAnOYM7QDgyrdtwqtIrQ/lYkUZghnpHxKNygso5lDPYRlbfGfWLv
         cxL9+3NtGeWqgcftDRwCLqydVPipTO8uouCg9xgqzTq5FaN8nxzqwNz3EPCW+UyyRa8d
         CBsU9+7mjIFyFHIvZMMCV983uh8qUh3Zx98L+obkqFPch//d/wioPmpHVXrSLd2DCLug
         8jgWI9RB7LJO3sw4AxjU6cV/yTwC8WyJFaJDvqeSOnrAWdBOozpnv/G5YUEjiwBI7Xtq
         rv4ripJE3zd+DYE67qkQQ8IJtP9cJ60ZE78gLa3MZ86ymDCIoCi5NEOuE4T/pR4DxHwW
         s30g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qcVqkV8DTm2waIprRzXgsd19JfAMOkkeTBb1fb0/2H4=;
        b=oNjUOOEPNQdrnfF5kJ1z1ye/22vqDH5wdmnl7qZVq1Hk4T/fwm2ZRl1Cc45QFLKHUj
         dIHWi/5Hgz1Y9racBVpaBkeQb8pX3tExFVFnr28DrByaQeYsKxE8Z6heXTDZZdpYGVfx
         VIyQSUBEFVk2r6eVnFhvLqj21IzlVFud9AntBgy2PgdweZOF03Pf8N5VKuJkv39yX0Cn
         GE+Frd82kDzcwAvSed4gSXpEDZ/hofMSJj7qKmFRrSblSdCbAgp05eyFA6bcwn/D7UZt
         Zq8uyX/N1PiPa8JyZR3VjsfL16b3VC20J24fKqeedy5rLDOnIGGkNInBH0IWHfEKUIkS
         piQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ObDn8rqL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qcVqkV8DTm2waIprRzXgsd19JfAMOkkeTBb1fb0/2H4=;
        b=iNNrXYOjKVZBD4tyP542Xs3HTNtAbjhLyv94euSkK/fDjdX9GMeLJqvKWVnI8M8UiO
         9WWQ3G2gjphZ+9ErUVaIeXcrtV+TVOs7WszbJ87UMrjjB3oKpKeQCQ83T199qJsqUm58
         s2dN/mtBF2FXMeTponO6DwhdgJtPyoTbvjrTB5zky1jht+Mv4LrCpuTutty2mCwOOo6b
         sKdYh3aVvXrayGuMpQTSnXfotnUQvsrMUalCYHKhsyQnbpWgXZ7HFcTHBXDximEjozbz
         l4isnx8A1LZ7PSJ5b98MMMGaUPfYHf4RgmI+28n75YCcfRQUNO4mjlb4s85ZovVeXpcF
         f7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qcVqkV8DTm2waIprRzXgsd19JfAMOkkeTBb1fb0/2H4=;
        b=qm9ifDb+waf4mK21hSm/vD6XP2AdqXkIUCCK5n0aunrCW3ky8dbvaxCddB11Yji7WS
         nvdqy/6iK2DdyrzwqoUqG4ZAixfO5KOIeapXAe9JF18iTca+kWUIfdDLeO4kDI+KwfeB
         HfU7mDz3Lp5+hyjEXIxiB9UeEAkf2lHlNeu2mAiFowxG65z9CZwT/IufTisOalaJ0LHR
         s8XmNB36upxMUkHYZqG8lyv04MVg8/xYRyc3K/k9OQT527zyNtmCG42td23/TK9EBqDL
         wu/YMnu6HrSrxh09+RJK8dz1c+JUugMe+wj5/FwvLsdOYxBmHi0QFdv8JIgDKGnk36Ba
         YUow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9OvPyGCYDIEDDfh1/ASUYEuaQrJDNkWMmzGplHr57yM2P1fTe
	KwIV6GM56wV3GP787sHj8A4=
X-Google-Smtp-Source: APXvYqyHAwR/LFlG5o3b1NJjtTw1NeTTMGCP8WG9rFkXsX+Tuj/TpiDUu6H+IYNn7UDTzTorOjfSRg==
X-Received: by 2002:a9d:5c0e:: with SMTP id o14mr585585otk.79.1573610467187;
        Tue, 12 Nov 2019 18:01:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6f85:: with SMTP id h5ls167409otq.4.gmail; Tue, 12 Nov
 2019 18:01:06 -0800 (PST)
X-Received: by 2002:a9d:469c:: with SMTP id z28mr644385ote.130.1573610466752;
        Tue, 12 Nov 2019 18:01:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610466; cv=none;
        d=google.com; s=arc-20160816;
        b=L9PxxmP/KGffGAUbtMO3cp8tZ43MEy6L4xeUskLkuzKFK0JHKfacex/XW6hfdBiY7Y
         5w8f+QJxphUgO1WG9HIJR+RVIb6djBaYvsXJNce5D4vOUY0jAdHyoztFxJnFsOYCYZcV
         G3l4HwI3yn8/rVtQATzWBiPnndjGLl4jR/pcVGkiZPL5YgWmloYSo97+8PcQY6R6yhae
         KM4J76hIn57zozx6ahB/iU+kQYc2yf3b/+XXDF/dUYgcT02ZImBSY6ApHThKF+/p5jIk
         ap3vQbwpMSdLu6Ppd9je8eDT6xqWC8jwH6Ot6MpROHPVWgsAq6AhZAgoiTKtYpGtAZfP
         CqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C407jHLMOxX+2P242tPgCmfZShnaGxhrzvFQxGxwJpk=;
        b=FZXBSuBmfAWgw00tkhTVdj80NAeButTBcpEtuFFWyiWcqcJHXugFZ2W9YgTbFKLbW9
         wSyauo1hn7H1fZPnWIOdwUjvkvCIWsyp4wiVyvR9nRt3YUwf/P4ZqN89aYv1Vi/hYKD9
         RRvSGIhXR+wJfHUI74hWm/XvSWcSYCG15T2OhPY4RBQwy2l245H6CPk+UEhlMzXCjRIm
         dO1bfEL7/REQntO6SVNtMjXDPem5P0N2q5ga22CKchtdAUwbyDIIU2zLoCtR03nyPZ/1
         Gt/07BdlylnCcFb+onL5r+OCbuFHnStgJzimk2yn8HwlYI21Qh4OJKa8CerS1MHigAOY
         ki6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ObDn8rqL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l5si28492otb.1.2019.11.12.18.01.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 07CCB2247B;
	Wed, 13 Nov 2019 02:01:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 52/68] backlight: lm3639: Unconditionally call led_classdev_unregister
Date: Tue, 12 Nov 2019 20:59:16 -0500
Message-Id: <20191113015932.12655-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ObDn8rqL;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-52-sashal%40kernel.org.
