Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6NRYDXAKGQE4UO3ZEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 466E5FED37
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:51 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id v188sf5710802vkv.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918970; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMOd6Oj92czLC8PogdSOaKUde9FE8mS9TNQacrvg+2tLMJtPOhFj81x7/k5aFuUyj8
         NM+7CdWJDp+OftOI5IzVTAjYbZvdfI5fmlodrn4EuUBAQWNCNAGbO0MLYEiXHqbM2BHa
         +Ib+znBc425FJqB/rYbtEKei8yqI5ACm9dXv25e1ruvMT5qaFCTeYdfKOTtGCPDD6lAU
         b011hWzkwjhOQPcTUkBM0zinn/g7MFUWENqiGHuBAXtci3ME5WpYwsZ/GjLxiWNzHIwX
         R23/KpyWM4Ug9LsebyS1+2bs4CWl5WSU2ncrJqNlYyO+lbIfLxQahNDd8gGqV/m6sDwn
         MiOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KGccQU5w5jYuLTnzOOX0K4089Q7c7WqXjgivAH3E65A=;
        b=PRpf4FijcZNzhbVgDtFYOGJTp/yd+getEZNfExkiwV/VY5N1DKkJxAuUEnukHkABma
         cv/WfR+gkIPQFdVMF+u95KGWUAyhvytCyzNLsCIq8hH8AaeXd2+rQ1pWbErRV6gxGNpb
         wFvfeIYZ9kaFhgzkz3Vt2hpDZSypeGLZjhe3pnMMMrjv8/769r6ebZaA2sN1l7ZaLqsM
         Fnn+7g2TM5V9fy95RSbeljxNwi9SXNQyXQ52a+qJ8BUto64rYieiZRRbbHxOitWj9Fgg
         HET6NeP4g3ZFe2BUZoVW4EjRJz6eprI1i0P3FtahOCx7Q53b7W6A+tspxjY6b8gLTsJb
         mroA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QEPP+RIV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KGccQU5w5jYuLTnzOOX0K4089Q7c7WqXjgivAH3E65A=;
        b=Y/v5zH9wQKPTzNKrA0wYvmq0sQ0iqJBt9kGutQV8eynLrqd1ddND/niQt8VXe8wQsZ
         EfhUS6AgjkjaKEZmq1UQnG3OF1PSc8wohlkz4pDJrid2cJhHMNb0gJYdlF9rKu0T6cg4
         3hA0TgGkdBE19lDYQBXxjAd4VGop5DlpqSHECNOrCEXTZ776T0yA4aAXekghBWjjN3+D
         on166OkNskT/+SFvxg4bptL4Hdpps1tusKsYsWempB5V9ph43B+bTLZFxKQfkBhxSmN9
         qbWXMPCb8faDXCbO+KeFaA9rMwKR1LW6hwZf6DN6yL01ioXvy4tWJIcn6UhvgjJkiTOc
         LVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KGccQU5w5jYuLTnzOOX0K4089Q7c7WqXjgivAH3E65A=;
        b=j5OYU2QTtAWGMSSbcS7q2SmGmwQqlfWanzpclBfBdJgfQKapkOwDpOeU32JyL7THS8
         nTu0cdljlSFV3TdQRX//rXLLZsII25WKwkkyER4T7CvtedLtyeYcUVU9qeeu/6b63XN9
         hnu/lDgO17H+Cff8nfF1Tqhs+UN6NiBSTKhXto24sBuZ7PVr1pCvJq2EkX/gvPb8NXqi
         JmyV09hcd/mTM0P/8gXFMqZBNiL5R1OCV45paO7a5CWSTm8sBHXHAjA6v2VUMj44B652
         t73LI9FvE1tpuZA2aGhvobi35OMjbuiDhsclDIhd7cfzdWcjrbKBoW/4fjEokaDqktoA
         Vgmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAmOngodbeSrzv7eeXdy56acq2+faVeflGmwFA3niKTajg0rF4
	6WmgygfMj2/BMFdx4nJjQCc=
X-Google-Smtp-Source: APXvYqy1L/D4ivQdPMVudYnJwWqqch1uRicNILYIr48g4okRrQp0A1s+oymAEcUvounN4AtCZ0veZQ==
X-Received: by 2002:ab0:4e87:: with SMTP id l7mr12652253uah.63.1573918970038;
        Sat, 16 Nov 2019 07:42:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1607:: with SMTP id 7ls361118vkw.9.gmail; Sat, 16 Nov
 2019 07:42:49 -0800 (PST)
X-Received: by 2002:ac5:c98c:: with SMTP id e12mr11708873vkm.45.1573918969489;
        Sat, 16 Nov 2019 07:42:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918969; cv=none;
        d=google.com; s=arc-20160816;
        b=PufMUlBicHXlNIv7XWXkzFgsmQ13voykAo/Y2VJDyFVpihEkmWX3ckkp9XXlstB+u3
         bMmp0X9rQLUOdu/JZEE1QeMYbEEd6S+CulqGoKpgqp1j8bsaEKV219q0NahUvBqRMtOM
         n2qymaV2BlznBWj9uzJ3echZWEmX8uqcoEtK9SG4cafJ9Bp/R2KUMe1WQy0xjJG+AzOv
         V+wKzSlM2FOJRd/3MJMKu+Cwkhh0VrRm9zuhmhpUZ3l2LgJ0R0oAurijVZPigVICv7+V
         qydvM4MLGQOmgo6ivHPJEW5NDKifBgqGZiW/HT7Ofng0ALPd1jLnt7ITgsdLKxxVE+WQ
         Z/9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bd1K5JdxIcfsY9q5ALHrGiaf7DYsr5FpvXfR8tX5034=;
        b=BRojEYoStvrPkV8zmAWK200fO8xcEorMWm2eTkehKyvYl1qqNhD4PezVzyc6W0LSMw
         CHYDKgBfFoHyU7gxD2MtGFFKtA/yXvwpK8xQhau0htMKUENo2iWFrKIURg4QBE6WvabC
         aEnc0Wkg3zdi9RzeL3MZpHQQcB1/C3SlxrYj+L+Z/qDunQ2hDfqGOnIze9CrHT/FPodr
         x457fFdMDoWkuVr0BbCjI0pTPfY8MqRa2HNZx7qoNeb5daW0LlC4a5SfDpKZSgIr+4eB
         CXdqqHJL5BgLZ8poF4qpydo5T2um89gCqKRDS6m7K0Sc2kUlyFcbLzpLqVa7OARTWu/3
         yLlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QEPP+RIV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 192si752792vkz.3.2019.11.16.07.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF9612083B;
	Sat, 16 Nov 2019 15:42:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 084/237] atm: zatm: Fix empty body Clang warnings
Date: Sat, 16 Nov 2019 10:38:39 -0500
Message-Id: <20191116154113.7417-84-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QEPP+RIV;       spf=pass
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

[ Upstream commit 64b9d16e2d02ca6e5dc8fcd30cfd52b0ecaaa8f4 ]

Clang warns:

drivers/atm/zatm.c:513:7: error: while loop has empty body
[-Werror,-Wempty-body]
        zwait;
             ^
drivers/atm/zatm.c:513:7: note: put the semicolon on a separate line to
silence this warning

Get rid of this warning by using an empty do-while loop. While we're at
it, add parentheses to make it clear that this is a function-like macro.

Link: https://github.com/ClangBuiltLinux/linux/issues/42
Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/atm/zatm.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/atm/zatm.c b/drivers/atm/zatm.c
index e89146ddede69..d5c76b50d3575 100644
--- a/drivers/atm/zatm.c
+++ b/drivers/atm/zatm.c
@@ -126,7 +126,7 @@ static unsigned long dummy[2] = {0,0};
 #define zin_n(r) inl(zatm_dev->base+r*4)
 #define zin(r) inl(zatm_dev->base+uPD98401_##r*4)
 #define zout(v,r) outl(v,zatm_dev->base+uPD98401_##r*4)
-#define zwait while (zin(CMR) & uPD98401_BUSY)
+#define zwait() do {} while (zin(CMR) & uPD98401_BUSY)
 
 /* RX0, RX1, TX0, TX1 */
 static const int mbx_entries[NR_MBX] = { 1024,1024,1024,1024 };
@@ -140,7 +140,7 @@ static const int mbx_esize[NR_MBX] = { 16,16,4,4 }; /* entry size in bytes */
 
 static void zpokel(struct zatm_dev *zatm_dev,u32 value,u32 addr)
 {
-	zwait;
+	zwait();
 	zout(value,CER);
 	zout(uPD98401_IND_ACC | uPD98401_IA_BALL |
 	    (uPD98401_IA_TGT_CM << uPD98401_IA_TGT_SHIFT) | addr,CMR);
@@ -149,10 +149,10 @@ static void zpokel(struct zatm_dev *zatm_dev,u32 value,u32 addr)
 
 static u32 zpeekl(struct zatm_dev *zatm_dev,u32 addr)
 {
-	zwait;
+	zwait();
 	zout(uPD98401_IND_ACC | uPD98401_IA_BALL | uPD98401_IA_RW |
 	  (uPD98401_IA_TGT_CM << uPD98401_IA_TGT_SHIFT) | addr,CMR);
-	zwait;
+	zwait();
 	return zin(CER);
 }
 
@@ -241,7 +241,7 @@ static void refill_pool(struct atm_dev *dev,int pool)
 	}
 	if (first) {
 		spin_lock_irqsave(&zatm_dev->lock, flags);
-		zwait;
+		zwait();
 		zout(virt_to_bus(first),CER);
 		zout(uPD98401_ADD_BAT | (pool << uPD98401_POOL_SHIFT) | count,
 		    CMR);
@@ -508,9 +508,9 @@ static int open_rx_first(struct atm_vcc *vcc)
 	}
 	if (zatm_vcc->pool < 0) return -EMSGSIZE;
 	spin_lock_irqsave(&zatm_dev->lock, flags);
-	zwait;
+	zwait();
 	zout(uPD98401_OPEN_CHAN,CMR);
-	zwait;
+	zwait();
 	DPRINTK("0x%x 0x%x\n",zin(CMR),zin(CER));
 	chan = (zin(CMR) & uPD98401_CHAN_ADDR) >> uPD98401_CHAN_ADDR_SHIFT;
 	spin_unlock_irqrestore(&zatm_dev->lock, flags);
@@ -571,21 +571,21 @@ static void close_rx(struct atm_vcc *vcc)
 		pos = vcc->vci >> 1;
 		shift = (1-(vcc->vci & 1)) << 4;
 		zpokel(zatm_dev,zpeekl(zatm_dev,pos) & ~(0xffff << shift),pos);
-		zwait;
+		zwait();
 		zout(uPD98401_NOP,CMR);
-		zwait;
+		zwait();
 		zout(uPD98401_NOP,CMR);
 		spin_unlock_irqrestore(&zatm_dev->lock, flags);
 	}
 	spin_lock_irqsave(&zatm_dev->lock, flags);
-	zwait;
+	zwait();
 	zout(uPD98401_DEACT_CHAN | uPD98401_CHAN_RT | (zatm_vcc->rx_chan <<
 	    uPD98401_CHAN_ADDR_SHIFT),CMR);
-	zwait;
+	zwait();
 	udelay(10); /* why oh why ... ? */
 	zout(uPD98401_CLOSE_CHAN | uPD98401_CHAN_RT | (zatm_vcc->rx_chan <<
 	    uPD98401_CHAN_ADDR_SHIFT),CMR);
-	zwait;
+	zwait();
 	if (!(zin(CMR) & uPD98401_CHAN_ADDR))
 		printk(KERN_CRIT DEV_LABEL "(itf %d): can't close RX channel "
 		    "%d\n",vcc->dev->number,zatm_vcc->rx_chan);
@@ -699,7 +699,7 @@ printk("NONONONOO!!!!\n");
 	skb_queue_tail(&zatm_vcc->tx_queue,skb);
 	DPRINTK("QRP=0x%08lx\n",zpeekl(zatm_dev,zatm_vcc->tx_chan*VC_SIZE/4+
 	  uPD98401_TXVC_QRP));
-	zwait;
+	zwait();
 	zout(uPD98401_TX_READY | (zatm_vcc->tx_chan <<
 	    uPD98401_CHAN_ADDR_SHIFT),CMR);
 	spin_unlock_irqrestore(&zatm_dev->lock, flags);
@@ -891,12 +891,12 @@ static void close_tx(struct atm_vcc *vcc)
 	}
 	spin_lock_irqsave(&zatm_dev->lock, flags);
 #if 0
-	zwait;
+	zwait();
 	zout(uPD98401_DEACT_CHAN | (chan << uPD98401_CHAN_ADDR_SHIFT),CMR);
 #endif
-	zwait;
+	zwait();
 	zout(uPD98401_CLOSE_CHAN | (chan << uPD98401_CHAN_ADDR_SHIFT),CMR);
-	zwait;
+	zwait();
 	if (!(zin(CMR) & uPD98401_CHAN_ADDR))
 		printk(KERN_CRIT DEV_LABEL "(itf %d): can't close TX channel "
 		    "%d\n",vcc->dev->number,chan);
@@ -926,9 +926,9 @@ static int open_tx_first(struct atm_vcc *vcc)
 	zatm_vcc->tx_chan = 0;
 	if (vcc->qos.txtp.traffic_class == ATM_NONE) return 0;
 	spin_lock_irqsave(&zatm_dev->lock, flags);
-	zwait;
+	zwait();
 	zout(uPD98401_OPEN_CHAN,CMR);
-	zwait;
+	zwait();
 	DPRINTK("0x%x 0x%x\n",zin(CMR),zin(CER));
 	chan = (zin(CMR) & uPD98401_CHAN_ADDR) >> uPD98401_CHAN_ADDR_SHIFT;
 	spin_unlock_irqrestore(&zatm_dev->lock, flags);
@@ -1557,7 +1557,7 @@ static void zatm_phy_put(struct atm_dev *dev,unsigned char value,
 	struct zatm_dev *zatm_dev;
 
 	zatm_dev = ZATM_DEV(dev);
-	zwait;
+	zwait();
 	zout(value,CER);
 	zout(uPD98401_IND_ACC | uPD98401_IA_B0 |
 	    (uPD98401_IA_TGT_PHY << uPD98401_IA_TGT_SHIFT) | addr,CMR);
@@ -1569,10 +1569,10 @@ static unsigned char zatm_phy_get(struct atm_dev *dev,unsigned long addr)
 	struct zatm_dev *zatm_dev;
 
 	zatm_dev = ZATM_DEV(dev);
-	zwait;
+	zwait();
 	zout(uPD98401_IND_ACC | uPD98401_IA_B0 | uPD98401_IA_RW |
 	  (uPD98401_IA_TGT_PHY << uPD98401_IA_TGT_SHIFT) | addr,CMR);
-	zwait;
+	zwait();
 	return zin(CER) & 0xff;
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-84-sashal%40kernel.org.
