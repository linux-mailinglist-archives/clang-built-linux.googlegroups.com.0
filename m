Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXWDVXXAKGQE5SWQOWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FEAFA0B9
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:52:31 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id s128sf620566ywf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:52:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609950; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZpuu05EgW/Ct/qamlPBRl+MifBPfUNtrv3UjTdDvm7lVVVJ1fUTDYcH+wczQcJQQj
         RNKMigZ1GPcqzHNKdm6zPc/C3IhLTKPuN/Yo4NQxmARC9xlrxg/jDWWMewrUTxoJkCZE
         EGTxkKSYeRUCSGzAElYJ6aNYBNXQjmEXOEQEIHT5xVQoEuDvK49snL3G3/Okka4ggD0/
         YddvrJO5SnLmK3x/FRdcpKN7HG4kKoVZcy0htIFjqd8Q77Q425knOvx4slGG35PxbQCa
         AEFJq8c25H/UnkjPayhLghIK9tsLq6YL1VJ47hf/MBNF//6NlmATcb895zij0Ei6QJFl
         Z22w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VNhTUF2R7vOJGDr/4W9IpQyMAqzsGb2f/YC0f8zpA9U=;
        b=cG+RElrKjpW7b+vCY7GK7AZy0IMVK0tClm3yH4K6B3wI10wAAKxI4PwvQ3DpccaLwj
         b8avH7V/McSg8MOih9/BUWHFkhRxlJGm1VzUqMV048Iw4KFARQGs/DJm85GVsN7Ytvsx
         XnJ/BBM6w3E6Kj+wJQ583ww4hjXIZO/z0PHDSDDkFjjZ1yJqf1069M4vZCGy9Pd8K7XB
         Prw1w6dmH6X2ZQlZGThe9UCtOHeMpkv2gqsn1qWMSg/iJ9q7+bit262Omg5Z3AUHH/22
         RjLbLfb444hoAIK13pIi6qffPxbHxaGk8gUuGo3XDKTQFFHNY0mj/m1MRsNzSsQYkjaP
         NWVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IWpX8pa9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VNhTUF2R7vOJGDr/4W9IpQyMAqzsGb2f/YC0f8zpA9U=;
        b=Ndq/xX/88YklsHCrtdcDF6XQMh5e2RmLmjk6UeroB+FkZj9mD0hQfbYrMJcfzx7em1
         QWHM4RJcRguG6yfmFDOGPMaBYQR+mwgTxNekQ+v/1siD7TsV30JE/ayZSlc9SjHzPWqd
         RX0WxAewqjEm9luDnaDibpahlgpiSLGqztAQXugfnEsfGYq1+ygDpxyEAfKKftr7yech
         cxiRBU7q9XHgFYfh0RBmTU9UrDV8xDH1eNDgj+h5+7BXscR9NaMJLqmfbTI+O/Bf4sS6
         Mvj67q6OgXF7z+KMdDBtvbq5h3SXcW6QJhAwQSaURjLVmYFNQKLHTSF9KaIBHshiFiwO
         6B3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VNhTUF2R7vOJGDr/4W9IpQyMAqzsGb2f/YC0f8zpA9U=;
        b=eiuzAEpkymalCS2pGINpS8CkdpwCXOFfZHdkP4UAuQC/zMDt+RluEKj7caXSa3Dxik
         jVMJnmGethN6sVHJKgFh25uKpphfi6PFjKXVhRG+NKvbYahsCIkRS91+hI+/0XeVZhpM
         LkLtLRVlV+YYciL4BBhPiEZPMQpaFe3FiAfqVXZrmuxw+p2SZ+DuelVrWr8jEEYWhzlm
         nY/YaYVi5Guwtxu7OezkCyqTzttZ75j3jSB6Aq9FQ6FxbckQokSTgi7+GnQgQHgxwcaX
         BYKRDy85mA/YFp5vURVd0IksOu37JP183Yw8mZU7N8YuNo/0j+aJGsqWUsnPTuUvZRiZ
         LR5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6kLbffzHKsYV+/LFHzFYuudSy/bV12x/CpDxwez2qku4yTVU5
	Q0TKe1qwMJscwoxnx/LTBw4=
X-Google-Smtp-Source: APXvYqz5DCbFHxukmCAcXid5CmtBJwzEtSOA69YIYoD4wnWk3EizQtnhNEKElMXpLWDS0pzWDZsLPQ==
X-Received: by 2002:a81:5809:: with SMTP id m9mr619284ywb.468.1573609950724;
        Tue, 12 Nov 2019 17:52:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa83:: with SMTP id t3ls195418ybi.9.gmail; Tue, 12 Nov
 2019 17:52:30 -0800 (PST)
X-Received: by 2002:a25:5555:: with SMTP id j82mr905555ybb.376.1573609950353;
        Tue, 12 Nov 2019 17:52:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609950; cv=none;
        d=google.com; s=arc-20160816;
        b=OaevvK+HuvTLWZTaCgiIQzeks4A03Bt5c9D/CRvpdfzKl5UwlffgdCfkzraNL3137G
         cfvheoRnGw8Kcu1KMoKQ8BSp6vuY5hkDiNwom4C6rpCwhMIrUf0X+dKvYIjus1p4+AgK
         mIZIk7RRSeFKQJMNEmyWMKqlNVpU1zxrEAIKh2Uq+0IHyQvGiOEK6UNiz4QGdThZlMjG
         H5K4ZbMBb5xDOW4OWgyni/i1FdKJbKozngNc0xxgH6RhaaBZwoGvJlvDfbK7G4sqQnAh
         J6vzaZeIqpbjRj0DMjOKRbtWE7bP+sqb3pCkUMtkbi6qRcTx8N55KouavRHEnu9vTzWe
         3T2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ysBXSX6agXjrMb/nPY+izkNxc177YNqoVVVLLrsfZ4=;
        b=yLRnZZXGkQc+wWRcZgllHpqRLZZTRRfR8BXJNeOolELFaPJkZLf3WrCoIKdokzfmwo
         KDRe2ersSmIyPeM7K1yzJwBWpFXTae5COsaqMQmUo7NaRAzQ8IO9LTo/B8Q9j24g5UZe
         FREeFYjdSJJOKZRWOhJSMwSBvhTKl5KZUxkExJEmGB9Cy+xtqrh21TCpRe8duULajZ87
         McQadCfvOQT7ZA1adnYg1lEIq98GLTOgaPb33jmXXMvWqVSRlNPl1A8fcTLCPfZ9XGGl
         +p33Sc5wJgGWLEbqlo9moXAAmoMLC/j2n9nS4ymvMnzmSX29NQO50fUPpMrsQyjDDlvX
         ZeqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IWpX8pa9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c79si27253ywb.3.2019.11.12.17.52.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:52:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E76F22459;
	Wed, 13 Nov 2019 01:52:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	linux-ide@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 086/209] ata: ep93xx: Use proper enums for directions
Date: Tue, 12 Nov 2019 20:48:22 -0500
Message-Id: <20191113015025.9685-86-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IWpX8pa9;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-86-sashal%40kernel.org.
