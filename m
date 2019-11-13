Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLWHVXXAKGQEYLPER7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B96FA1B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:15 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id c19sf552140ilf.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610414; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1MKrB3X2oTqag1lslfpyLMD+Yx4T7rcDqLSEywGj/Ky78srpGpnuV9MRxwi6zy8+/
         83Gbswynqebd1uP+zBMg/gTx50gJm974C/K/F5b/9KgZHhrFgRlT8GnGXUXz5Ep394B9
         xYKvXBnRkh0eDYGmpHKUDoCfQ1xosv5UZJogf+VaVIOLK5NxWwHEsDN4m95lZkCIkZcD
         18Iz4uLLZBCsJGu8nC4Cl60vivuzLjo3bv6DfRA/9GhYzXwqx+t+0cWt/CcL08/0uqAA
         1DBLYNpW8pHr5WQdmNr9QdwT/kf3uyw/6Ln1NWv65KApqvfpK5AwXnhbF23TfxTu2nAl
         x/5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6/pOw4q1v6thPX3uA8LJ4wyP/1ZsqYdkfv/K1OxMbPA=;
        b=qPUZf+gPhDe3GeamrKKspk+rg21X846obiV8h/rYpCDNCRcg9fqOJzYW4S3k3L8k1m
         WR7LXEepwFPbzOEx6/Xmh6QTSMjaSrdN0ikgKBi/w/1RH0aLIwgrlNK2FAvxOcJe1p4N
         3qo8A5su69doG6G/o52ORZGtdzaue6VUw0pByZIRJhYQBaNK/+KhnrESJi+fiO1gbM7U
         TPoQ+2RGSb6kD7A5qgaZm8mgArnmrJSovHegr7oiJ3UxLmDuVK7wfYKjQDcdJYCn51gO
         rl0JhkDmWNGCjOOax3XreczkGVrG0vCBuydbT0HKQK7OE+y1bwmJwof9bHoONxxftE5Q
         rfXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IP+6Ya2x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/pOw4q1v6thPX3uA8LJ4wyP/1ZsqYdkfv/K1OxMbPA=;
        b=rXWmLOm/RYUhvJVID0agHIXh0mYrv42pcV+UrLL/sjAKJqBt36i1G+//wF9D8AJltE
         39FGoB4Lt2toXRJaG1IvothtluS+fuP/M1u7jCQJvArFi4DTF8e0v2bvB9974Hx0+oRv
         r5qTV/TTNdoOy1g0LYoQSJgtBIuxezev6vd7pdN3/rSkSYfncMG0ZqPGyBa4je6DIghN
         uKEY7VhH7JC1bGUz9TDQL+6t4VHhNaOozJqu2rfziSUnSrvAutHzLZ83X9ey53C6bvVp
         b4UmqNJIN05bkV06vBBt3usYzlEifYrRF6RyhXjBYq0+IeNXihrvx3MqhL3JDLk/eNKa
         n0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/pOw4q1v6thPX3uA8LJ4wyP/1ZsqYdkfv/K1OxMbPA=;
        b=eMdkN28WlcsYvv1wmCYqMdUMUJPYwKEUgTVl/AdDV1ytqdTkKWabfWj1cvbxoN5HqX
         KDFsrvttBMtymQWvPMj/L3xZH1WYothQiw3fVjIA2hZ04x9F4Q6sCdAmWZllOCDc274J
         v3xV7lkDKuJaVnxBm5YJvXhy1KkypgKibaaknqzHnn7qZErnVZEhcDvsUT2PNfRhjMzX
         TbNPgz3PrqlpjmA2RSJ8oMhRRFCoU+noBcuob8OWew/RNq28qkL2r/dWs+wFsM6khVpt
         UKYwvq7Qy8JibtPiJxlmxJ04ZGBMslyJsp+OUWpfM/rRAvgUSSscTecQhyuPM6iGPSCn
         bWDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdGP7/XZpCJ3CWe6u1z0ChSKkRdCKlhomBG3FAvmuvfC4Dw/j1
	CjMxvTogQS3t4WIIMmgm2vI=
X-Google-Smtp-Source: APXvYqzqVr1nz9+Tn7H8N76NYpvYt673Ain13LY2bEN3d40u6fw+47Bi+3/ZKGpSa/Nz8oDzG0e6WA==
X-Received: by 2002:a02:a402:: with SMTP id c2mr701287jal.5.1573610414229;
        Tue, 12 Nov 2019 18:00:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1f04:: with SMTP id i4ls124408ile.8.gmail; Tue, 12 Nov
 2019 18:00:13 -0800 (PST)
X-Received: by 2002:a92:a30d:: with SMTP id a13mr1080697ili.186.1573610413835;
        Tue, 12 Nov 2019 18:00:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610413; cv=none;
        d=google.com; s=arc-20160816;
        b=z46QjoOo3yTh7N2/LeucA9CINrB4oFX5LEuYa6fxxyWhjOlcnoCeCvuO/FvgTOpo0p
         UbjwpoSqqSLHTzrTHpBYMtHkbgA0Vpwss6hhGz4b637IsVgzTb/MfEwVtz5DFy1PJSUQ
         fQMJ+FmpSBfWoOgO5Oje7ZrmzWDRebG5eZVkHt3SRtEC6brvx64UJQLrj1eckEQbZlfg
         og9rhC/5LFT8pK0gcg7RzlxtjRB2zyP7dp3j9R9kO+WjEXdUFr+g+/7XhSX7P9psF7xy
         cGGHnHDxMqG5PM9bH69T8ssLJ3JigHmdp/Q4bUVoKZ6AM/E3h3z+DU4WUtXJMu94n4QE
         R/kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=en+yaeiCPlf02l28mnj+hjLhoUpwTMTOW9WVtpOXGgU=;
        b=nxi7oxKI6cBqoYnr1BQjoZHAukWxRhQ43lRiVFCzQBBLU8AlZz9I96a7rfRe2M35SG
         w+grbub7KJn6B2s7EfLT1weSYEhkwf67afvf76lZPy8t9971occ/knWkS9gjnbBATXhE
         g+nbUTchTuKWQyIxBQPn4ENsbgbZvT+ytfDERmEz/7CNDGkqi9JvuEKT4F7FGlzxxx+N
         cvXMPnIk2xfti1ZZ6sy8ygIsOSo/47fR36jgbuoaF5T52Tpt1t/Jgnwi93C/YSiW2OsX
         LJH+k/vaEBhedtid3a9NJa+v43NKcHxdK2qLk/4Z1UEM3yep83kD0pCo652kiolOp8sF
         +msQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IP+6Ya2x;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 75si28697ilw.3.2019.11.12.18.00.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:00:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5622922469;
	Wed, 13 Nov 2019 02:00:12 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	linux-ide@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 26/68] ata: ep93xx: Use proper enums for directions
Date: Tue, 12 Nov 2019 20:58:50 -0500
Message-Id: <20191113015932.12655-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IP+6Ya2x;       spf=pass
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
index bd6b089c67a3a..634c814cbeda4 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-26-sashal%40kernel.org.
