Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOODVXXAKGQERGEM46Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB61FA0A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:54 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id y18sf143332uaq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609913; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnxRZjHnklsTsmJQJQUWEHAyeh9IG34wFa+K6taD9xexXaoHbhk0fkkHTvnw8bnLmd
         pRDpoiakOq6AP/0KOxfe0J/x0YRU3erDHMbLkO1F8wUlu9FoNBpGzEH0PB4fLJB87SiZ
         FA1BkbuaYnZyivVexPH2JqffmihJs7C/Is0r4oirVa7Bh/Z/+7W4GHrHyntERfi+A6ld
         j7jZBvNNg6ydVTCO9mNkgdBl8zTVZiqSS/XMeRVl7GYw6PXBKX7EFcZlrVnhtrC2t1e5
         0+isNCR2sos0yrxvoFTOOFH9JHXLpnh+uJPRmCcJE0MTwAeQrd8v4XEY9wU0K5/rwcNO
         AYrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zuv5rLnu804nFWJwbrD7gD2qLnq8BGVB0ZSENUeRs4w=;
        b=d8n1x9e08KLIJDK/vL2K+xgcAiYkFoamDwAEf7iVYBRmQTJTe0/eZo1lY9G28qj480
         Fpbn6FewvORizb3+aWgnQ2VWI5qr53jtvGlHIvjelBzKvS9nWH8Xk2mqNFvv4H5O/KBm
         fhK4cAOcchNPwjHjLz+l+9OO7Ajd15WwkLJS/q+CN2uTAcjZyifbasICF/dUJSQXK+AF
         XqnC/qegDefZqGZ8Obf1V6OdxMLkZamlL7ssmvbgTowMbcPOIVk5/yyGPlVfOb/KKhUf
         zW+dT0BDJKcODyC0fK01f6ik+RQzURkTvMzjUYH71mP1D5FLTa2hmrwtXka7Dpdq5azq
         0XhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vC69Ckfw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zuv5rLnu804nFWJwbrD7gD2qLnq8BGVB0ZSENUeRs4w=;
        b=YxJHmNKyq/3IoiO+6VVfaLwIAp0CNgWB+h0oWBujqLfal4QQ05g8MmmbvkrNcMiuLK
         2Y+oDRWnJ6aYPpB0c6Szje1xnGm8J+BiOYQXCjl16ozJwBslwACMMTUi3sBn7UgvDSZ7
         Kc0K6T1/0TRXp3q1LtNQRnsxEm6Jrj6tI0QvjWAQYsO10AXHI6QB7X9KPjvmJ9zRJIOe
         gFM3NPfU9QEpf3E5QVLghrdnJzXBWFP1BySXM/fIzE+EE3Aaff62Fq2lB67Is3KQM+HL
         zliDX23/dp00JGfIyqgcp40t75x0tGF6RhrHmSyrsNR/V6BDiDq7kuVioMtj9gjm19zE
         JlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zuv5rLnu804nFWJwbrD7gD2qLnq8BGVB0ZSENUeRs4w=;
        b=oiRtBEyh+cid48AkvcZ4LfGLLW09Bw1Xnl+vLiUKRP3UG3WOsNMw22RK+tgsYvl+R6
         DrThM6n2RoLa0A43cVj+yKWP0xibbaSZH36NuXLSWLvn6Twxfo7kIaK24AKyxJMvpO6Q
         8C8AZMmI5I5n2uFgaKWHIqPYhH3ozeryGPValaqklwY0irz7YaHpKxPdPhCeIctq7dTj
         ZX2IueHlogmreaxAfQBkBn4gHr20c3L87mPA3drjyW8U9Qds3sY11+XzDEdxYckbvOSl
         UOJVtuamUKJEKVxL7OLlgm5WHxlRdv1Wx9OP8bbWv4k16XAMwVMfpiy47VJ3KGSo0kpV
         LpPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWedB3eYscOmVNEBUJc6zFkF0RSFrYhUg4H+N7smPz9F+n2KvPN
	+XLytYs6d+rMPoT3gKAsrA4=
X-Google-Smtp-Source: APXvYqwX2anfqSgBG/jMcCsoBxDbHjmLxEGECWGeLf2RVzC+b9aCoK35aZLcjiQItDo40a/ATwAfdQ==
X-Received: by 2002:a1f:9f01:: with SMTP id i1mr335132vke.54.1573609913460;
        Tue, 12 Nov 2019 17:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:701a:: with SMTP id k26ls35296ual.3.gmail; Tue, 12 Nov
 2019 17:51:53 -0800 (PST)
X-Received: by 2002:a9f:2663:: with SMTP id 90mr402528uag.23.1573609913049;
        Tue, 12 Nov 2019 17:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609913; cv=none;
        d=google.com; s=arc-20160816;
        b=LWG/DLV9dGoJQq9dvg6zZxFdPYcBrZoFwKOnncU6QeUwY5DOSCzmxQ9W7K/dm4ZDyd
         dXAUjHNb3HrVt7NKx5jC5SHoVrpJR32N8gv+UyiTzjDSlRk17mbX9F9Y9kBs6L07V2gY
         UEQkOPjD4VAXKIFBCT8AWymigDU0+TVKEJVQ38kB63qt1J9MxSKGKe5bVagRvK6SEYZ8
         rpU/MyRnfMFp8YXIDyJIv4w0epSDMiy2zONcVv/vLy2adsP2PCCCxE3tDl+qlcWulJCN
         n580xjw+DJnAVcUumz8QAgIWre5PRi5HDe6oqb9XFw7e5aFYIlk8R81nuWBDjbrYy5/g
         Ispg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=la9aSdAx3veLs5wtOPTHSE0kgI2Ra1ZrclJA14UsULM=;
        b=lec/3i1dFFSoQbAE8NcJMc2iFZ3/AWw4iZABhX2kKLbwlrAn3Afg6cyrnjZVazQpsh
         HXECMQl/PVKdwmUyCcCbjlLhmDA4c65GCMJcEptFKc5bIqAPVS2JU7XA2UQ1t5Rbto0V
         z5Yf+A019Rk5stwA2DQ830qwEM8ADZJ9KlSfgK0ZI/uIyK5DRgfrcH/0hfOm8+aW3qQR
         aC7K75eAHzdK3w6qpmsg9M9qAAIhqnlP/coWAxs8Cu0hgycLpQ55KR+pQ5uIoIcD5H8z
         mTb9sG6pPiky/iI5/kNctnX64i3FRhhXznbgn4AOKIJcbpwxjkRW60uukHsgdPTkwVmv
         DMyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vC69Ckfw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o206si47365vka.4.2019.11.12.17.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1435F20679;
	Wed, 13 Nov 2019 01:51:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 061/209] mtd: rawnand: sh_flctl: Use proper enum for flctl_dma_fifo0_transfer
Date: Tue, 12 Nov 2019 20:47:57 -0500
Message-Id: <20191113015025.9685-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vC69Ckfw;       spf=pass
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

[ Upstream commit e2bfa4ca23d9b5a7bdfcf21319fad9b59e38a05c ]

Clang warns when one enumerated type is converted implicitly to another:

drivers/mtd/nand/raw/sh_flctl.c:483:46: warning: implicit conversion
from enumeration type 'enum dma_transfer_direction' to different
enumeration type 'enum dma_data_direction' [-Wenum-conversion]
                flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_DEV_TO_MEM) > 0)
                ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
drivers/mtd/nand/raw/sh_flctl.c:542:46: warning: implicit conversion
from enumeration type 'enum dma_transfer_direction' to different
enumeration type 'enum dma_data_direction' [-Wenum-conversion]
                flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_MEM_TO_DEV) > 0)
                ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
2 warnings generated.

Use the proper enums from dma_data_direction to satisfy Clang.

DMA_MEM_TO_DEV = DMA_TO_DEVICE = 1
DMA_DEV_TO_MEM = DMA_FROM_DEVICE = 2

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/nand/raw/sh_flctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/sh_flctl.c b/drivers/mtd/nand/raw/sh_flctl.c
index bb8866e05ff76..1e7273263c4ba 100644
--- a/drivers/mtd/nand/raw/sh_flctl.c
+++ b/drivers/mtd/nand/raw/sh_flctl.c
@@ -480,7 +480,7 @@ static void read_fiforeg(struct sh_flctl *flctl, int rlen, int offset)
 
 	/* initiate DMA transfer */
 	if (flctl->chan_fifo0_rx && rlen >= 32 &&
-		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_DEV_TO_MEM) > 0)
+		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_FROM_DEVICE) > 0)
 			goto convert;	/* DMA success */
 
 	/* do polling transfer */
@@ -539,7 +539,7 @@ static void write_ec_fiforeg(struct sh_flctl *flctl, int rlen,
 
 	/* initiate DMA transfer */
 	if (flctl->chan_fifo0_tx && rlen >= 32 &&
-		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_MEM_TO_DEV) > 0)
+		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_TO_DEVICE) > 0)
 			return;	/* DMA success */
 
 	/* do polling transfer */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-61-sashal%40kernel.org.
