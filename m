Return-Path: <clang-built-linux+bncBCRK3BGN6ANRB7VSYKDAMGQEK4BJD4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA73AEA77
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 15:51:59 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id y59-20020a9d22c10000b0290451891192f0sf2498000ota.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 06:51:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624283518; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+rkj8+WuHst0pSYJrVu3Pq0ddrf1gFeZ4xWiLQPv9G2q7fYP/jB/nTYD+8x63ebey
         qWqbTdfQih0Fx7HRlcwGfHP/R8cpdIcbBPNAKdGZS5PrPW8AQRFzhJTapxDKDeYaC6hG
         1KkwJ9Wxub5nbnkB6heLibYEXt3drMz6oANkINoR5Ir38jJOe64LEQMF6dnvdGrZKydH
         vdx7eCaeli/8x0Nc9+TKMdF/jAja2rCw5Z96wjPE4PEWZiG3G80Is5myWfn9ycFTm1zV
         NMgy9B8ws2IqV8EPx+NCNBO1iNMhuKGVzOX2teL0ULWSNWVyW5eAkS61wv3ECoOG9pkC
         OBoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=fbJj8ZE1978q95rc8tfalsOMKrafDr2A9KkR/fewln8=;
        b=En/rwVzkNyS+gj5/oqLyhRPrs9LT2UNpXJNhNhTFrRvBg6I+1w9d41/WDUqMjLN9XK
         fmMlqe/buhXY+HVMqT0IdXdQKr0CzpTgc8k3m3CvMz4B/LBbBvxr5JA6l4ZM4zwLn3Dp
         ImA+/0bg8BNz10MlrKNOquHleycoam1DQIbpAvnsoin8oOa8nuEWLnUgWyovg59vpSIp
         Lm0wg7Ns1mvR0X6ULTvSm33NQx21BaT9/7AtJrjvOEY7Gx/HiD+KJz9fspdZUSgspGXt
         GysgaVj91UklDTPToS4tw8pqUQgfebh4XLOUaiNtD0PifLhNedvEIxASfRlLOvx+q8+u
         l3AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLzVte0f;
       spf=pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fbJj8ZE1978q95rc8tfalsOMKrafDr2A9KkR/fewln8=;
        b=oUo0cXUImoXG3Xb/ooQmM4ZI2JtwDpk5tYNxDCUov0ZfIJE/xaTrLysrDbptLiEqXX
         e5ojHyoOnPaahdyqGbB2IyIPMii2He4g7NX7lGDprk9tAzE8hZf7sYf2RlfVGKyaaya8
         cjHBtHI1/DVnsUfII+1TeEWWDHxg6nG2uGHbLJ9QfZKyZoHLeQOTHwxsjW6OS6gWr5Kz
         GhJyJPh080cWRdpnz8aH5lkoWVXsksSJiixiQkJ1TnuCurMtdx+EYpzUusPzCPk/o2XW
         arMzzXKHseh1D0q8x1dsUMURtGwN0ahfxHYTq/b16LnRDBpgC5VF2B+PHBXlF0TCdMwU
         1fNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fbJj8ZE1978q95rc8tfalsOMKrafDr2A9KkR/fewln8=;
        b=mw8aDKTpUkdtBoUyrlCRTggKdsI6ywdWIyhpQfLW9pZbr/ylRAvOmi9tjwjmcdRv/i
         ArZajHBk50d/So5tkBDSpqvM5ebJ3uSw9H2H56xiIn53jW1000HcBxko8MNsv2Ibxb8t
         DneHNunsFz9rdw+qcson0+YurUFm7QUtpFWE+rlhMWF+7hIB79Exvmz+OnQW/GCSGENq
         rNt2GBuFW+uXWKx/EfUxExbmPHAAUGtnOXWaDPErAnS8QwCNMM02nqT/y+6tDjuTtjOh
         C76KadQiGiOEEg5H9lqmv/Yvm5Ia5ukKZbgiMpqLl6qeV15oN/Ckr29qsEKotwxb4cDY
         AHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fbJj8ZE1978q95rc8tfalsOMKrafDr2A9KkR/fewln8=;
        b=rRzpPqSIMnCvHCJOxJzbr4Ih0az+8feNZvawCO/PXaV+csXcTjkBM6EFVtyPU1in7J
         GF2Y5Esj9V+NEG4nxLvg4+U8H9tMv3eZjiahrBVWIZm2/BfKaD3gjLkhlJwEzMoqhm7g
         rlNIPG7lkwu3gPAx2LAIh85+zPkHdmYi0b/ISuMWf1JZtlrLAOnedV8b09RM43obCS7j
         tUbXw64dBoFnvobcz6u1q75re6lOLi2KKqaA2JI2yFKDWlpj1YghiYBQPgWKRfjzt2p2
         VPtonkMaTEGl+In1gNw757cxLoyHqu7knjFKtkd+QiZ/cKUqEQY0jGQ+eOhfdroXYP8s
         DsYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308EDTOBbAFBXsyl6TPJR8mzu+p6+IHd3EOtZ4RUe/Tek5NEQlZ
	pNp0nLS3Cc64FnZ0GZGZvlg=
X-Google-Smtp-Source: ABdhPJzDXL5U0awMRhDdV5bun3iKeqq5dtdBSxpVUnxFFbTRecOAcU2w+6nnqsh5hLazevEJH92bQA==
X-Received: by 2002:a9d:39c2:: with SMTP id y60mr10245538otb.79.1624283518447;
        Mon, 21 Jun 2021 06:51:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5754:: with SMTP id l81ls6183514oib.9.gmail; Mon, 21 Jun
 2021 06:51:58 -0700 (PDT)
X-Received: by 2002:aca:bb46:: with SMTP id l67mr16799446oif.74.1624283518055;
        Mon, 21 Jun 2021 06:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624283518; cv=none;
        d=google.com; s=arc-20160816;
        b=er8UzNLk4/4w8e/TKV2exyfXFeV3ySZBotadY0Pnf8EeofidjFvNeyT0AVZ4C8Qz9z
         YSfdYJUZTJEP7XUHDI6gbrG9u91kq0jDKAlqcimnCu5kk6uMCeWxpLvjNzkDCqY1Tt/s
         gwNphBIQF3be1pkQdJSZx+VTJII4KjJE5s0xDOHEuevhLaIBOpGzBiMIUDlfCCFDiFW/
         0WOqj3BTG1ZrW+yULqveB2rdo6RKnyfHaU8p4PsUz1DEuaIIUpc+Z4hDbkZFoVchwWl6
         wGbISWRjHKyWVwn9AQI/2UNBkEFTxML0tDnTsyFyUKRMmapdaIvMFGHRfsHznjRlxSqL
         9acA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CzTn4Xgtstg1K+676euDxy0Tn/X8cl4RaZRYaImsaO4=;
        b=c7Z9kf1Dj3zEtWsQII1lYS+8R6bVgtom4pnh6K1mCpqXBdNwePU8NGFgAlRHIsmqd6
         Iu/pq2f0CFv1x0Ept3zEDoaPZjXAaqXhAmtfZA0kwn2vrlbgReuO4sPzzfBks0z+P69/
         Uica37lwZ6ZvVq6WZY2aT/2u/uuLOonJDODrbw3rlkF74qmqZSfBnxKhHIFgy5TrCKtn
         GV74kw5vGr/2ls8iFKVtBzcXz8PaI6T1KyMVU9sbF2bddsSQ/DDJnMdnWo2FRz07WKUa
         avdEr2+cIayNfwjQVRQhX5GNTrJoKppDmHEBTiLA0kIZp3wba+3XWYzUUrejlemoE6wS
         uSqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLzVte0f;
       spf=pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id b21si458392ots.4.2021.06.21.06.51.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 06:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id bb20so5839968pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 06:51:58 -0700 (PDT)
X-Received: by 2002:a17:902:e8c2:b029:123:25ba:e443 with SMTP id v2-20020a170902e8c2b029012325bae443mr10425855plg.29.1624283517719;
        Mon, 21 Jun 2021 06:51:57 -0700 (PDT)
Received: from localhost ([209.132.188.80])
        by smtp.gmail.com with ESMTPSA id b18sm1147766pjq.2.2021.06.21.06.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 06:51:57 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: linux-staging@lists.linux.dev
Cc: netdev@vger.kernel.org,
	Benjamin Poirier <benjamin.poirier@gmail.com>,
	Shung-Hsi Yu <shung-hsi.yu@suse.com>,
	Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com (supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER),
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org (open list),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
Subject: [RFC 17/19] staging: qlge: fix weird line wrapping
Date: Mon, 21 Jun 2021 21:49:00 +0800
Message-Id: <20210621134902.83587-18-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210621134902.83587-1-coiby.xu@gmail.com>
References: <20210621134902.83587-1-coiby.xu@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Coiby.Xu@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YLzVte0f;       spf=pass
 (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This commits fix weird line wrapping based on "clang-format
drivers/staging/qlge/qlge_main.c"

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/TODO        |   2 -
 drivers/staging/qlge/qlge_main.c | 106 +++++++++++++++----------------
 2 files changed, 52 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
index 0f96186ed77c..b8def0c70614 100644
--- a/drivers/staging/qlge/TODO
+++ b/drivers/staging/qlge/TODO
@@ -1,7 +1,5 @@
 * the driver has a habit of using runtime checks where compile time checks are
   possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
 * remove duplicate and useless comments
-* fix weird line wrapping (all over, ex. the ql_set_routing_reg() calls in
-  qlge_set_multicast_list()).
 * fix weird indentation (all over, ex. the for loops in qlge_get_stats())
 * fix checkpatch issues
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index e560006225ca..21fb942c2595 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -442,8 +442,7 @@ static int qlge_set_mac_addr(struct qlge_adapter *qdev, int set)
 	status = qlge_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 	if (status)
 		return status;
-	status = qlge_set_mac_addr_reg(qdev, (u8 *)addr,
-				       MAC_ADDR_TYPE_CAM_MAC,
+	status = qlge_set_mac_addr_reg(qdev, (u8 *)addr, MAC_ADDR_TYPE_CAM_MAC,
 				       qdev->func * MAX_CQ);
 	qlge_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
 	if (status)
@@ -524,8 +523,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
 		{
 			value = RT_IDX_DST_DFLT_Q | /* dest */
 				RT_IDX_TYPE_NICQ | /* type */
-				(RT_IDX_IP_CSUM_ERR_SLOT <<
-				RT_IDX_IDX_SHIFT); /* index */
+			(RT_IDX_IP_CSUM_ERR_SLOT
+			 << RT_IDX_IDX_SHIFT); /* index */
 			break;
 		}
 	case RT_IDX_TU_CSUM_ERR: /* Pass up TCP/UDP CSUM error frames. */
@@ -554,7 +553,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
 		{
 			value = RT_IDX_DST_DFLT_Q |	/* dest */
 			    RT_IDX_TYPE_NICQ |	/* type */
-			    (RT_IDX_MCAST_MATCH_SLOT << RT_IDX_IDX_SHIFT);/* index */
+			(RT_IDX_MCAST_MATCH_SLOT
+			 << RT_IDX_IDX_SHIFT); /* index */
 			break;
 		}
 	case RT_IDX_RSS_MATCH:	/* Pass up matched RSS frames. */
@@ -648,15 +648,15 @@ static int qlge_read_flash_word(struct qlge_adapter *qdev, int offset, __le32 *d
 {
 	int status = 0;
 	/* wait for reg to come ready */
-	status = qlge_wait_reg_rdy(qdev,
-				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
+	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
+				   FLASH_ADDR_ERR);
 	if (status)
 		goto exit;
 	/* set up for reg read */
 	qlge_write32(qdev, FLASH_ADDR, FLASH_ADDR_R | offset);
 	/* wait for reg to come ready */
-	status = qlge_wait_reg_rdy(qdev,
-				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
+	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
+				   FLASH_ADDR_ERR);
 	if (status)
 		goto exit;
 	/* This data is stored on flash as an array of
@@ -792,8 +792,8 @@ static int qlge_write_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 data)
 {
 	int status;
 	/* wait for reg to come ready */
-	status = qlge_wait_reg_rdy(qdev,
-				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
+	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
+				   XGMAC_ADDR_XME);
 	if (status)
 		return status;
 	/* write the data to the data reg */
@@ -811,15 +811,15 @@ int qlge_read_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 *data)
 {
 	int status = 0;
 	/* wait for reg to come ready */
-	status = qlge_wait_reg_rdy(qdev,
-				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
+	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
+				   XGMAC_ADDR_XME);
 	if (status)
 		goto exit;
 	/* set up for reg read */
 	qlge_write32(qdev, XGMAC_ADDR, reg | XGMAC_ADDR_R);
 	/* wait for reg to come ready */
-	status = qlge_wait_reg_rdy(qdev,
-				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
+	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
+				   XGMAC_ADDR_XME);
 	if (status)
 		goto exit;
 	/* get the data */
@@ -1067,8 +1067,8 @@ static int qlge_refill_lb(struct qlge_rx_ring *rx_ring,
 
 	lbq_desc->p.pg_chunk = *master_chunk;
 	lbq_desc->dma_addr = rx_ring->chunk_dma_addr;
-	*lbq_desc->buf_ptr = cpu_to_le64(lbq_desc->dma_addr +
-					 lbq_desc->p.pg_chunk.offset);
+	*lbq_desc->buf_ptr =
+		cpu_to_le64(lbq_desc->dma_addr + lbq_desc->p.pg_chunk.offset);
 
 	/* Adjust the master page chunk for next
 	 * buffer get.
@@ -1233,7 +1233,8 @@ static void qlge_unmap_send(struct qlge_adapter *qdev,
  */
 static int qlge_map_send(struct qlge_adapter *qdev,
 			 struct qlge_ob_mac_iocb_req *mac_iocb_ptr,
-			 struct sk_buff *skb, struct qlge_tx_ring_desc *tx_ring_desc)
+			 struct sk_buff *skb,
+			 struct qlge_tx_ring_desc *tx_ring_desc)
 {
 	int len = skb_headlen(skb);
 	dma_addr_t map;
@@ -1295,7 +1296,8 @@ static int qlge_map_send(struct qlge_adapter *qdev,
 			 *      etc...
 			 */
 			/* Tack on the OAL in the eighth segment of IOCB. */
-			map = dma_map_single(&qdev->pdev->dev, &tx_ring_desc->oal,
+			map = dma_map_single(&qdev->pdev->dev,
+					     &tx_ring_desc->oal,
 					     sizeof(struct qlge_oal),
 					     DMA_TO_DEVICE);
 			err = dma_mapping_error(&qdev->pdev->dev, map);
@@ -1405,8 +1407,7 @@ static void qlge_update_mac_hdr_len(struct qlge_adapter *qdev,
 	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) {
 		tags = (u16 *)page;
 		/* Look for stacked vlan tags in ethertype field */
-		if (tags[6] == ETH_P_8021Q &&
-		    tags[8] == ETH_P_8021Q)
+		if (tags[6] == ETH_P_8021Q && tags[8] == ETH_P_8021Q)
 			*len += 2 * VLAN_HLEN;
 		else
 			*len += VLAN_HLEN;
@@ -1442,8 +1443,7 @@ static void qlge_process_mac_rx_gro_page(struct qlge_adapter *qdev,
 	prefetch(lbq_desc->p.pg_chunk.va);
 	__skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
 			     lbq_desc->p.pg_chunk.page,
-			     lbq_desc->p.pg_chunk.offset,
-			     length);
+			     lbq_desc->p.pg_chunk.offset, length);
 
 	skb->len += length;
 	skb->data_len += length;
@@ -2264,8 +2264,8 @@ static int __qlge_vlan_rx_add_vid(struct qlge_adapter *qdev, u16 vid)
 	u32 enable_bit = MAC_ADDR_E;
 	int err;
 
-	err = qlge_set_mac_addr_reg(qdev, (u8 *)&enable_bit,
-				    MAC_ADDR_TYPE_VLAN, vid);
+	err = qlge_set_mac_addr_reg(qdev, (u8 *)&enable_bit, MAC_ADDR_TYPE_VLAN,
+				    vid);
 	if (err)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Failed to init vlan address.\n");
@@ -2295,8 +2295,8 @@ static int __qlge_vlan_rx_kill_vid(struct qlge_adapter *qdev, u16 vid)
 	u32 enable_bit = 0;
 	int err;
 
-	err = qlge_set_mac_addr_reg(qdev, (u8 *)&enable_bit,
-				    MAC_ADDR_TYPE_VLAN, vid);
+	err = qlge_set_mac_addr_reg(qdev, (u8 *)&enable_bit, MAC_ADDR_TYPE_VLAN,
+				    vid);
 	if (err)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Failed to clear vlan address.\n");
@@ -2400,8 +2400,8 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 		netif_err(qdev, intr, qdev->ndev,
 			  "Got MPI processor interrupt.\n");
 		qlge_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16));
-		queue_delayed_work_on(smp_processor_id(),
-				      qdev->workqueue, &qdev->mpi_work, 0);
+		queue_delayed_work_on(smp_processor_id(), qdev->workqueue,
+				      &qdev->mpi_work, 0);
 		work_done++;
 	}
 
@@ -2730,8 +2730,7 @@ static void qlge_free_sbq_buffers(struct qlge_adapter *qdev, struct qlge_rx_ring
 		}
 		if (sbq_desc->p.skb) {
 			dma_unmap_single(&qdev->pdev->dev, sbq_desc->dma_addr,
-					 QLGE_SMALL_BUF_MAP_SIZE,
-					 DMA_FROM_DEVICE);
+					 QLGE_SMALL_BUF_MAP_SIZE, DMA_FROM_DEVICE);
 			dev_kfree_skb(sbq_desc->p.skb);
 			sbq_desc->p.skb = NULL;
 		}
@@ -2824,9 +2823,8 @@ static void qlge_free_cq_resources(struct qlge_adapter *qdev,
 
 	/* Free the completion queue. */
 	if (cq->cq_base) {
-		dma_free_coherent(&qdev->pdev->dev,
-				  cq->cq_size,
-				  cq->cq_base, cq->cq_base_dma);
+		dma_free_coherent(&qdev->pdev->dev, cq->cq_size, cq->cq_base,
+				  cq->cq_base_dma);
 		cq->cq_base = NULL;
 	}
 }
@@ -3128,8 +3126,8 @@ static void qlge_enable_msix(struct qlge_adapter *qdev)
 		for (i = 0; i < qdev->intr_count; i++)
 			qdev->msi_x_entry[i].entry = i;
 
-		err = pci_enable_msix_range(qdev->pdev, qdev->msi_x_entry,
-					    1, qdev->intr_count);
+		err = pci_enable_msix_range(qdev->pdev, qdev->msi_x_entry, 1,
+					    qdev->intr_count);
 		if (err < 0) {
 			kfree(qdev->msi_x_entry);
 			qdev->msi_x_entry = NULL;
@@ -3509,8 +3507,8 @@ static int qlge_route_initialize(struct qlge_adapter *qdev)
 		}
 	}
 
-	status = qlge_set_routing_reg(qdev, RT_IDX_CAM_HIT_SLOT,
-				      RT_IDX_CAM_HIT, 1);
+	status = qlge_set_routing_reg(qdev, RT_IDX_CAM_HIT_SLOT, RT_IDX_CAM_HIT,
+				      1);
 	if (status)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Failed to init routing register for CAM packets.\n");
@@ -3713,8 +3711,8 @@ static void qlge_display_dev_info(struct net_device *ndev)
 		   qdev->chip_rev_id >> 4 & 0x0000000f,
 		   qdev->chip_rev_id >> 8 & 0x0000000f,
 		   qdev->chip_rev_id >> 12 & 0x0000000f);
-	netif_info(qdev, probe, qdev->ndev,
-		   "MAC address %pM\n", ndev->dev_addr);
+	netif_info(qdev, probe, qdev->ndev, "MAC address %pM\n",
+		   ndev->dev_addr);
 }
 
 static int qlge_wol(struct qlge_adapter *qdev)
@@ -4119,8 +4117,8 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 	 */
 	if (ndev->flags & IFF_PROMISC) {
 		if (!test_bit(QL_PROMISCUOUS, &qdev->flags)) {
-			if (qlge_set_routing_reg
-			    (qdev, RT_IDX_PROMISCUOUS_SLOT, RT_IDX_VALID, 1)) {
+			if (qlge_set_routing_reg(qdev, RT_IDX_PROMISCUOUS_SLOT,
+						 RT_IDX_VALID, 1)) {
 				netif_err(qdev, hw, qdev->ndev,
 					  "Failed to set promiscuous mode.\n");
 			} else {
@@ -4129,8 +4127,8 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 		}
 	} else {
 		if (test_bit(QL_PROMISCUOUS, &qdev->flags)) {
-			if (qlge_set_routing_reg
-			    (qdev, RT_IDX_PROMISCUOUS_SLOT, RT_IDX_VALID, 0)) {
+			if (qlge_set_routing_reg(qdev, RT_IDX_PROMISCUOUS_SLOT,
+						 RT_IDX_VALID, 0)) {
 				netif_err(qdev, hw, qdev->ndev,
 					  "Failed to clear promiscuous mode.\n");
 			} else {
@@ -4146,8 +4144,8 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 	if ((ndev->flags & IFF_ALLMULTI) ||
 	    (netdev_mc_count(ndev) > MAX_MULTICAST_ENTRIES)) {
 		if (!test_bit(QL_ALLMULTI, &qdev->flags)) {
-			if (qlge_set_routing_reg
-			    (qdev, RT_IDX_ALLMULTI_SLOT, RT_IDX_MCAST, 1)) {
+			if (qlge_set_routing_reg(qdev, RT_IDX_ALLMULTI_SLOT,
+						 RT_IDX_MCAST, 1)) {
 				netif_err(qdev, hw, qdev->ndev,
 					  "Failed to set all-multi mode.\n");
 			} else {
@@ -4156,8 +4154,8 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 		}
 	} else {
 		if (test_bit(QL_ALLMULTI, &qdev->flags)) {
-			if (qlge_set_routing_reg
-			    (qdev, RT_IDX_ALLMULTI_SLOT, RT_IDX_MCAST, 0)) {
+			if (qlge_set_routing_reg(qdev, RT_IDX_ALLMULTI_SLOT,
+						 RT_IDX_MCAST, 0)) {
 				netif_err(qdev, hw, qdev->ndev,
 					  "Failed to clear all-multi mode.\n");
 			} else {
@@ -4182,8 +4180,8 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 			i++;
 		}
 		qlge_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
-		if (qlge_set_routing_reg
-		    (qdev, RT_IDX_MCAST_MATCH_SLOT, RT_IDX_MCAST_MATCH, 1)) {
+		if (qlge_set_routing_reg(qdev, RT_IDX_MCAST_MATCH_SLOT,
+					 RT_IDX_MCAST_MATCH, 1)) {
 			netif_err(qdev, hw, qdev->ndev,
 				  "Failed to set multicast match mode.\n");
 		} else {
@@ -4458,8 +4456,8 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	/*
 	 * Set up the operating parameters.
 	 */
-	qdev->workqueue = alloc_ordered_workqueue("%s", WQ_MEM_RECLAIM,
-						  ndev->name);
+	qdev->workqueue =
+		alloc_ordered_workqueue("%s", WQ_MEM_RECLAIM, ndev->name);
 	if (!qdev->workqueue) {
 		err = -ENOMEM;
 		goto err_free_mpi_coredump;
@@ -4702,8 +4700,8 @@ static pci_ers_result_t qlge_io_error_detected(struct pci_dev *pdev,
 		pci_disable_device(pdev);
 		return PCI_ERS_RESULT_NEED_RESET;
 	case pci_channel_io_perm_failure:
-		dev_err(&pdev->dev,
-			"%s: pci_channel_io_perm_failure.\n", __func__);
+		dev_err(&pdev->dev, "%s: pci_channel_io_perm_failure.\n",
+			__func__);
 		del_timer_sync(&qdev->timer);
 		qlge_eeh_close(ndev);
 		set_bit(QL_EEH_FATAL, &qdev->flags);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621134902.83587-18-coiby.xu%40gmail.com.
