Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDWGVXXAKGQEZNWBSFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B97FA16C
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:35 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id j66sf683175ybg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610255; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pidr+sXhMF/M3PODHCKMOBK129xb2wyD2pMtXBRKw3Kk5uOqanAUQWYEuIbU7HLkCT
         Z+s17GBbouSrhUjK8QeAzSXcbpeOngh56HtL3SeVWxUYXj+gXcNXALLr14ml9qQbggqi
         YpSuWyk9+vR1Et4xQ/ZwTP1u5lepVQOnd9qB7J2qc/f7L1cAC3o+9DCoaZTXIkupEl2t
         8HV+fM1gg9CJxgsIV6kGSBQlFqX4DXLCe9WgarCeAtKnkNTTVmq6XTMuN8B0YPrfU+Qz
         uCOOruzDBt7gk/Lvv6STRJmgIAOJ836RYvPRvgrJnwQCO3m70dtwPNn3s1HF1Hq8m5Zk
         t8kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k6D+nZi4NCsBBJuULiNC1GumJAvvD4dsesa0C25TMcI=;
        b=uxT+rPrJFa9N0bfZJZ5jAHH9V+dfHsNKoLWumEcJOkjkSaaWCOMcCSYra2EFtMuqxK
         YYIREpQBiyvvsX0QZaLgjv2mGJneOKdUxEedlOgb7ylA5XbIHtykQfOCRLxliBLVWTpF
         mJNwYJWXjY0wU0bhXQRePzSsdyFiBrNRLVRzWNb8GxC4PksIBgdSjr2dX04ETtrDiGSb
         m1SyLhv4wfSsmccsrddbfRIJyGVdO51b7fMR7cyz5JBhaJ6ZkF9vLcM3OzxS+jgpdR5B
         F//SEw/j/AchylxWsIrOeCtR9+yl6gt2AoC78YY2LvB1xX4yfb6KMVRR+DBn8dP9nJK0
         2o/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vpTjgECG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6D+nZi4NCsBBJuULiNC1GumJAvvD4dsesa0C25TMcI=;
        b=awY7zw2KbooQyGDnRL2HVxIaZL5R+gs9K+eL809+ZL3YWkf2JGshzVcj9rm3xV0Kn7
         8l9p8vt6UX8knSLqQBxat2Y8kxUACh9K3Ej3e6FmUhL1oDLuf7pqxUhEj9N5NOiEpKTU
         gOHkLJfzlJ+O5WemwTE1nQ/zrVrzqDCk7S7XRi9mN5vENVvfpIpJDL7QIjpmP2fwsY16
         YVNhJF1fGg52kXSsglvOlJmAONCBqVjVPChxKsay5H90EhZp2EicKc6/HhAEFp+/SYGT
         fupa2xu8azJ1bqhNSuiqebEsVmTEZdvf2Z469eVwS3AMM17gjs75L8qQUMypPjigV+zl
         1E1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6D+nZi4NCsBBJuULiNC1GumJAvvD4dsesa0C25TMcI=;
        b=peZjFPiQUC2MmhBThE1YQK4K2VzuckH/31EU5EYC8Fe7pG13lm8NxxQx2CNKMhdzjw
         MQ1ZE1Bfii4+bO8KzWiwk8YCRIGkwYraoKDgwrIqgZLnRx8j3yDOsAd5VS6OM8gTyzn8
         wjdkOtRKwYCRdSxP440Anv/aE1BwV/U2HadQ+kgonnGHVnXM1saZRbDj3mu6YZCKqFqa
         UV32jO0LgSGJhGJONF2aOggX4OseolT5iBv5tMVL/CfYfL/NLMNFy/f36UNSV6bzFx8F
         U0dH/H2ISJDaYzSH0gZDDanvBqv5QinDKAj0figEV2GmKQ5xtRElYGgv1Amm0x1q7g6k
         c9vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUy6hOBlf0DKQFoT0HvbkVGemNEJJJLResNWtNkLezxDZzbBkYk
	JDNFcBVMtryxZgHRj9Gyxaw=
X-Google-Smtp-Source: APXvYqzX109Gsni01e1FcABq2YZ9jjM96kyroLyaI/LxJYsih1TmEEMbxkpGwbMoo26V7HAMpetFLA==
X-Received: by 2002:a25:be87:: with SMTP id i7mr824442ybk.113.1573610254977;
        Tue, 12 Nov 2019 17:57:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8843:: with SMTP id y64ls130024ywf.5.gmail; Tue, 12 Nov
 2019 17:57:34 -0800 (PST)
X-Received: by 2002:a81:c249:: with SMTP id t9mr737465ywg.9.1573610254638;
        Tue, 12 Nov 2019 17:57:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610254; cv=none;
        d=google.com; s=arc-20160816;
        b=zuvacIRehoS5JahQq3ld6QC4tUbOIdNYllvNOOIFGzpV+ipzNhNqYJPBX/8SVfqmfU
         bu7p1jgJA21/3nKaAIrKH7Wpmo5RmZD0j8McxCbszROdWnHrRV9UDRGGC669jqSH46J6
         psm/OlvFsIoKVT1BK6kL/EMZXY3TUax+v/Ec95h8oUPx+0CYLdsxOeI27kCXgEHaz9dN
         PGkHPuVfueVKhRI7ACYwcCiUDbajJWvq4VLXsY26cogCaemmSiiKlzpJ3HHHpSXmviCV
         3GHPOJZE/Pf0sOKzWK5T5RusdlTGAxoRXQMGigKYO55VDU/abu3QEOVKHsnghuRVqJT2
         zEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ysBXSX6agXjrMb/nPY+izkNxc177YNqoVVVLLrsfZ4=;
        b=tXisdWDy7GaWkLdi9Fh9kAvZUbfdaCIKlDN5f9afe8HTCWr0/QTIpnguZI9FwmSmza
         enb7ZYr0yb/RdX5nvQCT6GHzgthfVlSBWg/XiR1I4prfPZlj/iAclNY96XtLTj9PwbTu
         7ci0K9UwtOp5Rk4AS5k0g4vK9l0p0KbRv4ZD5u6wd2Mslt+dN35+l8ZAxVEcWo+S5aUd
         C3aCUo7Vna46VhagYTH2nUiCXHJKBGeDjD4ncXfm7KYNUSiVZBhGZJ8fcVRc/Ksb+k7a
         m3i44VUn3LP0SD84/5lE5NdmtChPhkh759OWWDiOjfPXz0vrKhghw4dmEcm6JUK27dWq
         L4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vpTjgECG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si55641ybg.3.2019.11.12.17.57.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF3C5222D3;
	Wed, 13 Nov 2019 01:57:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	linux-ide@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 049/115] ata: ep93xx: Use proper enums for directions
Date: Tue, 12 Nov 2019 20:55:16 -0500
Message-Id: <20191113015622.11592-49-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vpTjgECG;       spf=pass
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

[ Upstream commit 6adde4a36f1b6a562a1057fbb1065007851050e7 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/ata/pata_ep93xx.c:662:36: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
        drv_data->dma_rx_data.direction = DMA_FROM_DEVICE;
                                        ~ ^~~~~~~~~~~~~~~
drivers/ata/pata_ep93xx.c:670:36: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
        drv_data->dma_tx_data.direction = DMA_TO_DEVICE;
                                        ~ ^~~~~~~~~~~~~
drivers/ata/pata_ep93xx.c:681:19: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
        conf.direction = DMA_FROM_DEVICE;
                       ~ ^~~~~~~~~~~~~~~
drivers/ata/pata_ep93xx.c:692:19: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
        conf.direction = DMA_TO_DEVICE;
                       ~ ^~~~~~~~~~~~~

Use the equivalent valued enums from the expected type so that Clang no
longer warns about a conversion.

DMA_TO_DEVICE = DMA_MEM_TO_DEV = 1
DMA_FROM_DEVICE = DMA_DEV_TO_MEM = 2

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ata/pata_ep93xx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/pata_ep93xx.c b/drivers/ata/pata_ep93xx.c
index 0a550190955ad..cc6d06c1b2c70 100644
--- a/drivers/ata/pata_ep93xx.c
+++ b/drivers/ata/pata_ep93xx.c
@@ -659,7 +659,7 @@ static void ep93xx_pata_dma_init(struct ep93xx_pata_data *drv_data)
 	 * start of new transfer.
 	 */
 	drv_data->dma_rx_data.port = EP93XX_DMA_IDE;
-	drv_data->dma_rx_data.direction = DMA_FROM_DEVICE;
+	drv_data->dma_rx_data.direction = DMA_DEV_TO_MEM;
 	drv_data->dma_rx_data.name = "ep93xx-pata-rx";
 	drv_data->dma_rx_channel = dma_request_channel(mask,
 		ep93xx_pata_dma_filter, &drv_data->dma_rx_data);
@@ -667,7 +667,7 @@ static void ep93xx_pata_dma_init(struct ep93xx_pata_data *drv_data)
 		return;
 
 	drv_data->dma_tx_data.port = EP93XX_DMA_IDE;
-	drv_data->dma_tx_data.direction = DMA_TO_DEVICE;
+	drv_data->dma_tx_data.direction = DMA_MEM_TO_DEV;
 	drv_data->dma_tx_data.name = "ep93xx-pata-tx";
 	drv_data->dma_tx_channel = dma_request_channel(mask,
 		ep93xx_pata_dma_filter, &drv_data->dma_tx_data);
@@ -678,7 +678,7 @@ static void ep93xx_pata_dma_init(struct ep93xx_pata_data *drv_data)
 
 	/* Configure receive channel direction and source address */
 	memset(&conf, 0, sizeof(conf));
-	conf.direction = DMA_FROM_DEVICE;
+	conf.direction = DMA_DEV_TO_MEM;
 	conf.src_addr = drv_data->udma_in_phys;
 	conf.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 	if (dmaengine_slave_config(drv_data->dma_rx_channel, &conf)) {
@@ -689,7 +689,7 @@ static void ep93xx_pata_dma_init(struct ep93xx_pata_data *drv_data)
 
 	/* Configure transmit channel direction and destination address */
 	memset(&conf, 0, sizeof(conf));
-	conf.direction = DMA_TO_DEVICE;
+	conf.direction = DMA_MEM_TO_DEV;
 	conf.dst_addr = drv_data->udma_out_phys;
 	conf.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 	if (dmaengine_slave_config(drv_data->dma_tx_channel, &conf)) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-49-sashal%40kernel.org.
