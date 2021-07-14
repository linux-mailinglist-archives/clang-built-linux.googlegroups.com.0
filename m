Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBV73XSDQMGQEB6HDWQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 577773C8D2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:41:12 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 22-20020aca0d160000b029023df2dc5611sf1873591oin.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:41:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626291671; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKzBBsOK+3ZOIN/kQaeYfgJuHKP9x5mFqzdnFgqMMBTOAYwKyypxVgfPSbsczjNjFR
         VGbBDr72aqNuUqZAJiLfenEPcUFm5fvuQz32ikGlCO0SoSg5wj7j1enOiDpP06bFhPPw
         UE97bV9dOUh5ifAw3Z2x+dCZ4aW6anypdbdVg3ovsSq+Dlkb+nFlltacdYZAF2yfUu9s
         52X2KB6PLJfZR5cW7uwj969vkPhamAsyXrzn3E/s1kINPt3qxTawIdUewE69TAW6LviD
         hqbMvwANbZlMJhR98euINUzI+CDgE3p+RAZr/xVnRhwBXO1SLJ8pQE9jLXD8AWJgwf9y
         iTIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WmNOEd1KR2FY1o2/OjNfgLuXbEFXH0TKclmC96w4Ci8=;
        b=D1hxzS2jmAvYHEUDKuK3e0OI9woTRGPzJhruHv8dEZ7GPNezLZ1MAurYbiMdYlC8Vr
         /izZtmxJKDGjrhqYM+UyX5vMdlvY24H1Ow6yRTuKTCRezJ2FlIAs1pQl5SiN9j8fD5D9
         OJlO//5tqXWpeG2sem1TCOBYgLlYcHgkNC+9+N4/803szUnT6ulvnLpkoN5cXwwE++Jg
         FhifuVoGRbh6yM3j3Jg4MTjYWPiZ9snT5QapIvXcHQ9KZ/5jJNvFTcrE8BLaEiHXYMv2
         vKuCjX4RdyD0tCl75y2IisuDGfpNZyk4ieGiNwrP/j91OkpkLyAaYAgVyclUQmmA/Kzq
         zI3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q+1dnsj4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmNOEd1KR2FY1o2/OjNfgLuXbEFXH0TKclmC96w4Ci8=;
        b=H9wjOkPKkA3tK1FXiUH+ym3qJsbiz/873umpms397JO5S+wdx1uVP1O+E0PUBPrSzy
         mywafIVmhw4du0xoM4nRrTWa5isNbgD0Kz5RY35jZ72HG9wU2pwZP66g3IaXWSpfRVY6
         v+UimhBzcwqcuMnH8TXf94Lp2xqkYx9ZCtD6kOqv2wVMkCfBkM7+DBe8P/ztETdd7ed6
         oqkljZy7wVFqunmxGcopA6msOjhmFqWQdTg9byvACBU3ZCHRtbxxraUVcC55E/pz0SE8
         pBBUb1ah6W82ML5vloMOecuA3RfLVS8WeFVJ1tZnZTLfx7nQqwIKpBRBxxH9vY6u2Jz+
         ZvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmNOEd1KR2FY1o2/OjNfgLuXbEFXH0TKclmC96w4Ci8=;
        b=W5qGMihhq7dBVHm6qWOnY7yuwwJBVj4qhdbmbx4hJ8Q+zSl+YlLAiN3jy2vsxHkuQO
         lOMHSSBz0y/gI4DnEb+u3fwvco3Vc1zt7zDiRFcH2WZtbqocRXZypst2FiovXoFDSE7g
         3rmdxcz821sRuOSoivgAt31N/6jOerd7Vs//Cq8ntjcBEa3AVij8WdOe/GOSz+I9bPgw
         8X/jdg060EEDU1vqY/EV+CP7M4vRkKKCkJlvkcgpWsN5ePiTTic8JmiXybwggZPZXz9d
         JH8FH+B6NXn2P4etH122dlOM+1n3HvkbWBzt5xE+4AIXzWN1vuhAn3IF0EE3PVJN+IQY
         Gshw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330cvFn6H2nv2FSJIRwiYNhCjWEwE7GKmyutga3BZWSe4A4bvc4
	8TSFtstufKO9Uyy+Lp8JgbE=
X-Google-Smtp-Source: ABdhPJz0yso13CK1VEP984ZodJ3by+QzmuIz7KHFiFEBXx8SRnFpgRz+6fj8pA140aDRWdPGkZMWSg==
X-Received: by 2002:a05:6808:1456:: with SMTP id x22mr8753262oiv.149.1626291671159;
        Wed, 14 Jul 2021 12:41:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4f81:: with SMTP id d123ls1532788oib.4.gmail; Wed, 14
 Jul 2021 12:41:10 -0700 (PDT)
X-Received: by 2002:aca:dac5:: with SMTP id r188mr4049508oig.100.1626291670821;
        Wed, 14 Jul 2021 12:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626291670; cv=none;
        d=google.com; s=arc-20160816;
        b=zeUfoDAi8+8amtAk7eIbjPe4pqp17VSiV7aJRkvZYk/cuP5hQE+s8XFreBLeqUQKce
         WUGtwjHd9MwsuNcnkCJZm96436cU9Zx9TcQTqRhjEnO25e7p1lEahnZk8V2mpx7BI7b1
         E4gBH8/gpvwItzWoROKc9eutB/StaXe5naWrqmUVPzDamUW6xhKlN6NjUa4bztnNo2QX
         mOkoIbb9b1UKz3qW4kPHB9SApBI0QqeVeQ9R55UQwWpIqfksBoeF4RkboFgnI6nITNL2
         44WFvO05pfrQKzuINYaPCVzLeHO0TIq7n/MknXs8FkQvcNZ3FCFoUg3B6+AGmwy8rrs6
         rAFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zWDKTYI+jzGplWUlOoZM6/xWzbBK2f8XiizahMFlrEM=;
        b=i5gCASIpUUcqagUAH8lCoLsXP+NcSKdb3IyyakmvI2b0N0MFgk9ePp83NLkSZTLq8H
         6jgxaLsMNrcXRrl19hLKR5S/J/xKFljXXNcU9SLqiagCjiiGQFHfn6RBhBbehf3PHAnS
         PclQFIBsnKg1CLPp2I59BOxC4Y8V3HkSvsgDXLleh+yRSuHJIqTI18yWBEjgSWzWe1xd
         FwaQr1cwR8xFDnbhpUyVedYy7gxVDSLgcjr+5QM1QrxM1qLEdMZp4goKyCvm7oQJPFYc
         gSupSi7LiuKzoZCPX7hTLf1zYlHpaq4zoiiV202OCPVFjX0B7ybgvXAn8HUyE81EEzSg
         oUYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q+1dnsj4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si348553oih.4.2021.07.14.12.41.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 12:41:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17E13613DD;
	Wed, 14 Jul 2021 19:41:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 023/102] soc: bcm: brcmstb: remove unused variable 'brcmstb_machine_match'
Date: Wed, 14 Jul 2021 15:39:16 -0400
Message-Id: <20210714194036.53141-23-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194036.53141-1-sashal@kernel.org>
References: <20210714194036.53141-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=q+1dnsj4;       spf=pass
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

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit c1f512182c54dc87efd2f7ac19f16a49ff8bb19e ]

Fix the following clang warning:

drivers/soc/bcm/brcmstb/common.c:17:34: warning: unused variable
'brcmstb_machine_match' [-Wunused-const-variable].

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/bcm/brcmstb/common.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/soc/bcm/brcmstb/common.c b/drivers/soc/bcm/brcmstb/common.c
index e87dfc6660f3..2a010881f4b6 100644
--- a/drivers/soc/bcm/brcmstb/common.c
+++ b/drivers/soc/bcm/brcmstb/common.c
@@ -14,11 +14,6 @@
 static u32 family_id;
 static u32 product_id;
 
-static const struct of_device_id brcmstb_machine_match[] = {
-	{ .compatible = "brcm,brcmstb", },
-	{ }
-};
-
 u32 brcmstb_get_family_id(void)
 {
 	return family_id;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714194036.53141-23-sashal%40kernel.org.
