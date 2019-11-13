Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGWIVXXAKGQEEPFSOMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 27148FA206
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:02:04 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id 19sf240380oii.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:02:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610523; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qv6JCzK030lNgYqlrHuxARa9Y9XK3LMSRIXObUPOdzY+9e9udenL7D72klG+aXh3sW
         1YASmi9TSl0eAacq5VctoUCpfO+6PC3FxhKqgywMdoXN1uG0TdGYe76AJHg0e/A9SBPx
         g8kHzL8zzM12eQwXOt6d95wW7Sifm95Wj1A+YLF9pkAH9JHoiGrDXxFwcsHxpNxra7F3
         UDcdXFisQtYOV2MHu6VoO/a9I9Hsx95mtumsemsCQaW3NgzPIfRo83R7J1ja0hftoKQn
         k4t1UDLin+v/cMzfS51Rq7Yl1A9q5CIVa5hkAby2OCaKTM1Vf63sqZCYyd+x4JX5vm6M
         Z1kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CX58g2Xx86O/KSyw0V4KVL9y44SlYo78fI66CIhQeg0=;
        b=dQqInyDK03nF0inXsQ+O5DKB05rjKBBsMb+VUBIDNBrxY3gESDzZHOEIj0y23CQLt2
         ob4tMYNHci0WtcpG50Om7//CWDB34IxCupO2WGQv213d2xB8uhbbdH/eCU2lksB/qR/D
         EdycHv1RTOwR2qlJdMTBN2MIoE88LOlYGpET7i63+6X771MGRkYaY2aAEGP44UCUaAiV
         neQqkud+3xDdWZEbng8hs6sZSoP14dDw4G4gBaOVnxKYciVYgAFnO0TdNpXkpB56H5Ab
         +sCmcekKpy7uos3GbiyvQHUoK8ib9vVsBxb0kuWVCqHfwhdm50WqO+LDNsL5Pd7CH4UB
         f5XQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M+GK5ppL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CX58g2Xx86O/KSyw0V4KVL9y44SlYo78fI66CIhQeg0=;
        b=HyhlR5X7dJGehJwBXJ6xAZVBarEBSPbEgXs3LLw1RzcGDwFwd4g/NF9Uu6VlfwpxSM
         uucHVcpNNv7Gw1PPCkVQSjC95CMy4GaHSqvEGdKnE0EuWaSjzzMsiYFXXhoZucjVsH/e
         VztSKinMJy0EdazTLRXdk8mQ3yKkfNNkCQYnZ946MaD9ZQy3n7Rm1lPpWI9Ietch6dRt
         us2WT7SBvL2joLMXTPmJ4nI/6j9cfu6/GiEXnvty+XJAZTQlmJncS9PNkijIGsAIRSsQ
         mDltQoIJzF1eKd5mz//fTSG0/jbz/MrLfClpH1wlH/Y5q3rGhaaKSOsmCHe/qHwPvx1U
         7QfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CX58g2Xx86O/KSyw0V4KVL9y44SlYo78fI66CIhQeg0=;
        b=axzbwwYMdmEeX2tW5mEythXzXRueSXBc05HGTj9xeJGc4uivywIu5yWYLXxFbKfrhy
         XdXU1psMPCiZKt6X3Pgwsw0mXsPrlEXlzOPS1zBCxN3MwrS8FLkJO/kYndusLjNlZxEt
         Kg+YgcYmfFM09GlFyYMSOu8kWokb06cRRQpw+BjADQOzqTxxEEcDs0QfiLXbTAawnSFq
         ilzRUMXM1NFUoX8bCcSAXp8PJNMB2G+THC0m3eYFPXCaLmcSQ9Ph6BMdgUkom2IMcLrR
         JR59YPFBpgrEAQT9hRTabWcUpnw0diP9FLn6KB1twNVDP+vEvmt1bQ5HSwSMMP7cHDIi
         kO6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVsPpRR6xH7FUOeeTZjfbMQwlmPDKdSO/oDlnra6aVY50xIqnw
	uU4daQ0Gz+7VSVKLTkDVzyM=
X-Google-Smtp-Source: APXvYqyivsmsGTazttyk2iWbreFTIEOyYRb+i55I5pobhCRD+q0RajvPbEvVwba7psomjMhMGZya1Q==
X-Received: by 2002:aca:d8c5:: with SMTP id p188mr488469oig.140.1573610523000;
        Tue, 12 Nov 2019 18:02:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c5:: with SMTP id z5ls164379otk.7.gmail; Tue, 12 Nov
 2019 18:02:02 -0800 (PST)
X-Received: by 2002:a9d:7653:: with SMTP id o19mr361401otl.4.1573610522478;
        Tue, 12 Nov 2019 18:02:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610522; cv=none;
        d=google.com; s=arc-20160816;
        b=Ifmy7jwkANoVhIy1IHPj7W5jiCXU3vcw9qyzwtIH8+nlVTsuu6zYTaM5+tx074BnN4
         UZyQnO6PGASRoM+u4UPb4UHY6Lurz1p+qvFF1Q1Z14xtqrMqaTSwSYOzwc8djkYm3BvS
         vbcLDP7UNQBjlKlFHI6YR6gNBr4DqX02jBwLgDiHcTroJmefnBv4O80wFy5iWX9OGCzL
         7U4MTxQDFERF8jooOWikUdrimTpzpVfXIERxQL6lGyykRFNMk3/Ezb3Ow30r+CFS7j3S
         m25dRVPyGSV3oJeYbZtxzWDAvuwqZfKOkCi1Qg0opHl+MAn2zbLClwkMq8bM1VBIIqOS
         dACw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=en+yaeiCPlf02l28mnj+hjLhoUpwTMTOW9WVtpOXGgU=;
        b=G+Jo1YjUfZEgJ+JG2+A5Kg/W5FZfkHrr1SleNv7a+s+S3bIj0A4r+RcZeU8alyt+II
         VAlawyw00eX5LJwE9p+UaR8KPh4g6jEpgmD0vrE3Irob+oQwOkVLE6a6IVh5Bs66+pkt
         GOljjXd5OzZO9lyuycuHOjAQoLoKYwzEyBl/cBmRTouoYJdxBHhVFh4s6/XaYw3f3aGS
         aqWXEzn1tVAh7Jttm3u6RFZHnK6dAHOBlSxiMRzTNi+6URTCm6LvxT2sMjzrRyuI/ozY
         Y2yW6Vqh4UK7MNMh9vFat6cDsKXyq2YByXLizxAMYbkqiiq+HuKFua8Uf0QT6wGAByNf
         YfUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M+GK5ppL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si31974oii.2.2019.11.12.18.02.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDFAD20674;
	Wed, 13 Nov 2019 02:02:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	linux-ide@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 19/48] ata: ep93xx: Use proper enums for directions
Date: Tue, 12 Nov 2019 21:01:02 -0500
Message-Id: <20191113020131.13356-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M+GK5ppL;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-19-sashal%40kernel.org.
