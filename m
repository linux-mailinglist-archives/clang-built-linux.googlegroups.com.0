Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFWIVXXAKGQEWPYLRZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 329A0FA205
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:59 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id t33sf663308ybt.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610518; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rhxj1rW7NSBvpSP25vS8aufenZTjMGF1yxiVWWBFzNYA/zo+GgTVTT15HYhyjPXid5
         h8ghadmhQ1al3wESj9WU4rTf4w13hgPNkgsoJ1AbMr3wUdc2UUKPnP+AVuMQklFj97FI
         n6AMuMp5gQeCuOzB5d+Zfadh2mVrhtpf/Y+0LTJEVMZEt8SguFhqx3RBF2TaPf3e0AmC
         /IHNxvY65Q9eyIKbDOcyWiPy4DHKSq9KdpH1eAANE2eqpUp3vWXkV9oGO1jHb3zlUG2x
         abq1M3dSa3nd4ZEjjbXYWAR1ZvN0ONeBx24RvxdumzWgBcsnRdt3hHHyIsBhtvviokoM
         RtzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k2RHfxHcnc7N0EcRuo0kOdvuVG9a7IhaFsecNiiDi7w=;
        b=kp4fGUnej//QC/2Z8J92T2ZKM3QS9OcRlGBX7EyftVdPWk/C5lJAebPMzLkEwPVN7S
         HkV5ayrJB8rEktYf7idNDQqDXJjplN0YD7yw9c1a0nWZwU+ZzdavAlYMZgbAhFcZigLk
         h1e1lsUjeTlWv8lWvtmXzXcz/2Sr6O2g7ugj/FKIqWmUppljqm/mHH0YPBvXek9fxkyC
         xmVYTf8/i/fkmbe91B/bGXl35FBmSfgFTBenPhzcFw9VlxqWTxIZxV0iJTLSGs8p03iZ
         Jsk2ROl1zqqs3itaf4p4rTzwrp+zOzApLO+Ds5YS0AyyT/0Kid8PBU7Wm7mRkHhr7jBa
         OL/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v06lANdt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2RHfxHcnc7N0EcRuo0kOdvuVG9a7IhaFsecNiiDi7w=;
        b=MMBzPNxdsurfjSqWO5f5V4Z17AyGIsO9XU7S3ORooC63Eg7vc4fw0rAX9JcRwB/Uzj
         EHPZ00zsbh4QM58ag8a4EH1T8NwxcgIgNuggQwKkPwVmvJo3fOLx4dBHcKV9esHNIfwv
         7PZh3inAl6SlOUmPCRYraGx933+oYMemKoF1v1Hx7dxIvCsNffWJBLodgZ/u6b68BsrJ
         kzA7g8GzXik9M2Y/4celIuILlDKFAzjjC/yCt+q89A7+45AzYe7/b7KaqfLTz+t7jRLh
         7r7oQLD/aj6cvClAhp8LM7GvSeQxGdYsx5uG5x6l1vPVBj83+/wA1A5D5M5tnIYnyhX1
         uQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2RHfxHcnc7N0EcRuo0kOdvuVG9a7IhaFsecNiiDi7w=;
        b=Q2uFC0gK9IaNDhYWaAOhZPXsd8AbJ1iVashAnXgQXeoyoMHOv/JrWycOadxDQcQkDE
         9NBNcXEozD5H8yIg5Eyhk1d1O2SKXck+ealGhApe50FgAbCi9HfknYwjg9lUKz5nQrSj
         cTMjYUsxipvZY8YA07eeFK9p0lr4v7cGJfU6vPONzByuv5SJ13mbJhjQr2OrIUstFFwq
         DUWLh8+japOS80/sz+Fpuqge9U5MypgbJJH9bHKzAHrFQqgkQ2X9DFmXuq6cB+DruGJ0
         EEn2koCsxwgeN11f47IRNd1Dk2FMrDS3LyRHxWCgm9eE7Sd5NHptbGSYAgOXbbSJsKl+
         /pgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmYKqjKqYUdXJKDht7KAHel/aW+VFu1e0XFcyZ7uKMN2L+Mb4B
	QkJtcyLkzrrWKly/MwXyrhw=
X-Google-Smtp-Source: APXvYqwVK5OFE3aSZ8ytQahGWsJftjP5eN2eRVKUBqbJya1p1r7sAv7zRQ9Dx/CBwJ8CpVZ3JOpAqA==
X-Received: by 2002:a05:6902:4c4:: with SMTP id v4mr819179ybs.312.1573610518222;
        Tue, 12 Nov 2019 18:01:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1e85:: with SMTP id e127ls196811ybe.12.gmail; Tue, 12
 Nov 2019 18:01:57 -0800 (PST)
X-Received: by 2002:a25:7395:: with SMTP id o143mr909837ybc.190.1573610517895;
        Tue, 12 Nov 2019 18:01:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610517; cv=none;
        d=google.com; s=arc-20160816;
        b=LYnnj7oW+qJmPYm41PsvA/cGXATJd/+uC1HTVLjrydRtWktmxtExtn6x9OS8zuQNTp
         o0lVTDfDBJMsuOPLisxmBk5LnDi9JUcrPD7zZQFHM4rFuRL6fMP/7Q+zFU00LCYI1cpo
         292KfPp3IHWKrx7BPyKKaMa79jSuU3YSeCivarhLI4DzrhBzwprVztqt4k0e9dDSxKDf
         8AaA5vRm1Nr/9EuRNLhsv0y5KFmr+g0drpje+2dFpMWiofpk7lGT8+BoXm2cPYbwIkj3
         T0kye0uOqa5F5P1pN5Ld35Cfbow8S2JgpsNRe4luAciTMs30qv9KhA+R4yzBx5UTdYhK
         kpvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l06TsQFZAAT0rCrbNa36HavTVGbfjQvc5SYJRfU1TNk=;
        b=W2yRSdWjT7udgOiVNwH/5/2Wk0ONv7mEDBjyMnbUa+sn4QgJxYoHlF2uRvjVuqKVTW
         Goh5tDz0VPI6JajOuPJu9e7Ybn8XGD/9EjhXcrUq9pL31pB9/S5h3efjgIL/1u4gBbHp
         pQHhH//jlKWO+7x6m7vsvcQUhH6Bv2pGpK7k7vRWNDJMfYmbiw/v9Nr3HtkSB+TSgLcL
         LmDFXuPQusGJfAm02Xwmj9nb9Sw0/FUSI/XYKMB1vrIkKy8m1ND2uYG4EnST/rExjDYq
         3pCj7vhrJxcnsIAASDY5YiLxmGV5hHTcFidIGqspaP4WoHgScbsJfPFhzAOduXEQWtB0
         wcaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v06lANdt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si56479ybg.3.2019.11.12.18.01.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31F66222CA;
	Wed, 13 Nov 2019 02:01:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 16/48] mtd: rawnand: sh_flctl: Use proper enum for flctl_dma_fifo0_transfer
Date: Tue, 12 Nov 2019 21:00:59 -0500
Message-Id: <20191113020131.13356-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=v06lANdt;       spf=pass
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
 drivers/mtd/nand/sh_flctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/sh_flctl.c b/drivers/mtd/nand/sh_flctl.c
index 1f2785ee909fe..c00a180306e50 100644
--- a/drivers/mtd/nand/sh_flctl.c
+++ b/drivers/mtd/nand/sh_flctl.c
@@ -428,7 +428,7 @@ static void read_fiforeg(struct sh_flctl *flctl, int rlen, int offset)
 
 	/* initiate DMA transfer */
 	if (flctl->chan_fifo0_rx && rlen >= 32 &&
-		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_DEV_TO_MEM) > 0)
+		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_FROM_DEVICE) > 0)
 			goto convert;	/* DMA success */
 
 	/* do polling transfer */
@@ -487,7 +487,7 @@ static void write_ec_fiforeg(struct sh_flctl *flctl, int rlen,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-16-sashal%40kernel.org.
