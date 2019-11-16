Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJ5XYDXAKGQEOSBLLQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ECEFEEC8
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:54:16 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id g33sf8973290qvd.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:54:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919656; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxR08W/fsbC7GOUNvivKCPqfrMiPcXRtiG5AQDfj803FagSIU2YTw2+iNvOz3Oz/tr
         F0WrTJwBuXnfPTzTYVYNd+8BDXBPi2lGF8NcLNewzBx4eq87P7rU5pnWUe3tMw7QFxXn
         iYNv2RcTBPEa/Cegb7dRBucUq8d+WVIHl0lWYqmzSSBo5iEZ7KcOIlFOpQuRp3hAf9xn
         jgcq6NGymbaw1C1KRYjPgGIKCrfzHqIRPx5vlPsxAGBaVNnNjZ2bmuRyTqqX7waEqhMK
         QKt2T9ZwrXJBmjIL/VQGW/MDEYnosyj61/upkyxSfd5tRHN2l6lOodbrZ2WppJI9uZJu
         1W4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DJJu/idXEm481ljIB9EMcQlpWfueh38sG+J6XA8QDJk=;
        b=M5zv0C+AT8+HHZlrY7lwozGM99XV7iZ7N0iRYTtvwX2FZqVdly7BNWLqdpMFwJWpub
         MY7A9Bo2fyDnoxBd+AHHNyt1OwCsZdOMw1lAMyMtGi3ht/R6HFGEFMSBGx1hpqRRM7io
         9kH+DMvhQRrmx0kwC9R4cTiOy4nGwBnqppNPCaJ+MssnXYotNt93C1P3eS4Go8XlTyaO
         J/SPYFksTGWYz2PSD4SnnsyZqJlhbON4FA+uWF6Si/2vz/jd+i/gavrSAstMAxc6pJAH
         xe9piiIowpe3pyWfr7BTjIKQMnIvgJMuapBxp1AO3x3Ez1DjqKA1Z1lOdTxPSSE6hAFp
         6wxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2rWKFo2q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DJJu/idXEm481ljIB9EMcQlpWfueh38sG+J6XA8QDJk=;
        b=N3flUz++tBTYF9SIOmKOosBJc7npB456eWv6BZYRO9aqVzNvWmIi530BkoG7lSqw06
         b9JXXznGLKm+d2MCNpt0tzmayJYASi52cSTBHxZO1ZF9gDkq/OhGcWS1vwX7HyVvYHqX
         71KMIahVnrkEwwokAiuGH9zFPMLuqAW3GY7BEwGhPV3RnHFmTTf4IJjFokneh7uGi4At
         wCSKyIBX0SIi7D2WpQ0QoPL3IpJr5nCwJ3tyN/Jeuc8+VDru3bgjKTHjU7dlMc7JETca
         2Z7skjKLZWe0d0azm/kgUiZQiG4lIDo8PJ9i3slxNtbFNnGyDP/ZN/jAVEEIJToj2GDR
         98QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DJJu/idXEm481ljIB9EMcQlpWfueh38sG+J6XA8QDJk=;
        b=SUprGZGaD5NfnZk1xhMumPSklPVajvHy8ixPnQyX9Ok2O+F4ISvreBXHA76R9AW3FY
         tgAYO2KZCAjHLkm3MOMNJ4u/QuwP+5ewIe/6qmkpGHdeuc52c9S8g19vHuvFvmL+94wR
         HLr7Q79HroI10TOywcDBZgqyOvn8/Sp7WT/Sqj6SRV7fTqj8gLlfMhnhpMsvfRZOJ46A
         YmEl4GF1r0c1LJMIrAytU1FxaaariTbqPIDulltyUxLZuiv2b/RtrE5Aq8vC5u5seCUo
         fRp+v5yoRwnLFFrEx1/NuEk00aLiPnLn+fL08t8D174FJ0dse7KFw9njgR4bm0bM0v/A
         tqPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsn5Foah6+e1F444olzBapc1rmuCfMXKzv4n67epjw5yTeD3AY
	qr3jEmmTKJKmquo+WnbSscw=
X-Google-Smtp-Source: APXvYqxUESxn/HLnnjJRJHyG49NpmgdhYE7C0U05TvyhWCd2xkimUBZ5tXoLvwq71gHrI906S8T1Bg==
X-Received: by 2002:a37:41d2:: with SMTP id o201mr18475847qka.100.1573919655844;
        Sat, 16 Nov 2019 07:54:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a5d3:: with SMTP id o202ls3305050qke.5.gmail; Sat, 16
 Nov 2019 07:54:15 -0800 (PST)
X-Received: by 2002:a05:620a:3dd:: with SMTP id r29mr18104549qkm.370.1573919655490;
        Sat, 16 Nov 2019 07:54:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919655; cv=none;
        d=google.com; s=arc-20160816;
        b=wuKBxXmX9rzaBXSiXdsJ528fRquYuqzTFaDqV2bzQrNCbjvOORYz8x5NFfzvmpDoHJ
         O5aCv3BgbI+BxHoxMTrMQ0fTo86P6lBPbnC0IxRuoIC6rRqFfVR20yfKU2YiPBi+44pA
         xPjruEX+6DH+hM769BPCuOhAMpiVe9IaxURBlYX++6qTNdUQ9nGrHGYkr4aVnYE5fQgg
         XmqWv38ElRFdTS9ND3G1WwvZIZquglBO8yLJRmhqwAMWW6I+fgZB4KRUFcnHwh+CA9Ja
         D18mwQW2SqZLlVRC1zL9xWXE9RZ3BPs4Wxr63Mcf1VuydIjClxjf5hYNL6FfsKyZUbw5
         weBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f+tFIFdcs/fvMSQaP4Vu9ZvItf0dOC3DSDY82mX9qzU=;
        b=ahY55dh4kJoNVtG81BmMo/oC4T9V05xqPbvtaqQlCJdkab7b720/22Q4e1xfewQxQI
         mRIeSjwH7yASpAhjamtueIzbE7OUWCScMG+MYp46BheGrXLE8IWcrqD1GQ2BuglObBP9
         +zJL/BOyvjsbFkEy7fjz+191hd7XSQXDfsQCuDyJEZMkv/YEwnoCVtdMsDi73MiM3a6Y
         xkm7fGdqS7GjrYZvlnIOI+af4dZ3TSY3M+GQvWXRbQlcnaR0kDz2DcthcpPx8te2Xnw+
         zHqo4ODTzKhLSWpkwqVVv/VkRpFDeth0pvi8QmOuJmp0fXqFiO7qFxFvN0u4o+7f1Ytd
         WMOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2rWKFo2q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r204si652634qke.1.2019.11.16.07.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:54:15 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 36F3A21882;
	Sat, 16 Nov 2019 15:54:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 28/77] atm: zatm: Fix empty body Clang warnings
Date: Sat, 16 Nov 2019 10:52:50 -0500
Message-Id: <20191116155339.11909-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2rWKFo2q;       spf=pass
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
index 94712e1c5cf9a..bcdde3e360522 100644
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
@@ -698,7 +698,7 @@ printk("NONONONOO!!!!\n");
 	skb_queue_tail(&zatm_vcc->tx_queue,skb);
 	DPRINTK("QRP=0x%08lx\n",zpeekl(zatm_dev,zatm_vcc->tx_chan*VC_SIZE/4+
 	  uPD98401_TXVC_QRP));
-	zwait;
+	zwait();
 	zout(uPD98401_TX_READY | (zatm_vcc->tx_chan <<
 	    uPD98401_CHAN_ADDR_SHIFT),CMR);
 	spin_unlock_irqrestore(&zatm_dev->lock, flags);
@@ -890,12 +890,12 @@ static void close_tx(struct atm_vcc *vcc)
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
@@ -925,9 +925,9 @@ static int open_tx_first(struct atm_vcc *vcc)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-28-sashal%40kernel.org.
