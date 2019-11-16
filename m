Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGNWYDXAKGQEFYDMZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id F2128FEE7C
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:51:54 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id p8sf9638421pgm.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919513; cv=pass;
        d=google.com; s=arc-20160816;
        b=UMoEvZ6VvnBLRUEVTdPznyCHN+qoLUYwwkg8ONuZuUgOMNa3JRwZsfagm3odqASZNX
         dK3/6nd0jlP64Jmbr70LqZX43bh6aw9iAezYEuQUXbzYyIvSNWegcUwfywbGOzzeXrPF
         8xqEJrRYbGYdG+D6enT+PFHd8dxy+me/Jsw0jKZYR+WnTEnFqrGcE7PLka1Mqsxj6eCo
         r/q7/YZwekd84dsyNwuf7LdBwA3R31nmnoBJy4H+w2aWsVZx+B0QoIO+3XguX33zYh6Z
         VQfw9ghPCPA/yKQZmDCSCen0RY7N7ONswBujuDCk4026IWK+GhG4dVFwzYNjgtsGKmga
         VTAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9Uaf4Sgj5Nujt6OKYwpmRxwsICivoJ/lSOzHy90nOe8=;
        b=zh8+eJPiSPG+jpRGQRwJ2qVYwVORdIcXJPTk1XDoglAtdhhrstvIA4jsZf9cxw9fp4
         x12jwmLa0Aam97xMm47+kYeDrwgjKAwhEU1btEk8C5Pa8YV9PpvLk/6kBWCkqlqOslSE
         teFgECLgF3iVHxem2uUXkXksnARcLuZWw16SsavIxUfF8iTAYqAzr2EOvq7w7zxDggx8
         HnmnRl728DQxpAsco+HqaTpGJAEPq/zjGR+zUthOIBMMsLbs+zwtcjaNdj8DZhQM8ZIq
         +6z+tackXP0FWL26xy1z7zbFqEKemzh61E3lyV9mabzD5hPwqISzJM3OpE1PwvnW7J+2
         ET/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qShnZ5n0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Uaf4Sgj5Nujt6OKYwpmRxwsICivoJ/lSOzHy90nOe8=;
        b=hUhmPfXrhohl4XURlOCAqjmq8QgIv58NBHrjy61p+s3iZMNfISqsu5Mjv4BT6Xt4+i
         iyrsDHyjyZPcsn/5h0Cz9feGKHtnO9j1CTXEA1OQ3lLRAZGyrrmqhdyoLuG8waRnsVrg
         olz2k/iN5N+q6kuXJOfREhks64CEGIFJmP6kF2pIfNevlfhObDKmDiIogj+9Jw48jmBq
         8gasK/w25QjYS5WnxIkde3FvKdNBLq3uE+XxL5F8LLL2NoJqAzoF0d3Mdp9EJKgkBsaE
         z3gqgWg91PvJIKChtZyLebcwR9dlaCPbkcnDsdftZfxNPzxR3vtEbasdGI1eb8DAVITS
         SVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Uaf4Sgj5Nujt6OKYwpmRxwsICivoJ/lSOzHy90nOe8=;
        b=pRyPLhBScEgrTTc+2UsYiuvneR5mV4TJ4eOU8sQMp5HdLCMnj3tg6eU+PUqnudEvNZ
         UC7+QuTlFJogJ4j4igM2/N+TuvLBftZYKpFyGu7zXtlOBvdJjEgPCWX2MGcBp9mGQVrQ
         b/Mb7ntXZPhMuP5kbLUF6yeSCFuEjBLFwp6oYZTJlrHrjaXr8zJzfZPtposyVh3DEHWs
         8ebpvWpXYJv1ose3sVm56lLFB+ufcvWye7v3wEMgEWlqnNDkp5291Jcdm0mP/fxgPdJp
         3A/GgQ4e9ls6IYS+vEClgusyOTyMyucsW+KmNdYrs8fVnvRcYH2kR7g2m3agOnw7xVsn
         kPIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6DTSOJbUVrP1ZFD82W/CmbbN3LHgUtneQ+7Ci8mHE7jkEDugd
	lIr0xmR3Ba3i2WrVDystcsI=
X-Google-Smtp-Source: APXvYqwDp8Gn2cMb1tAnE6NJozmW9++FVFHQgseuv/xO9zE7wLAPqb0kIdP5V0k94DW0eR6TTsMtIw==
X-Received: by 2002:a65:6685:: with SMTP id b5mr13404143pgw.94.1573919513598;
        Sat, 16 Nov 2019 07:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb90:: with SMTP id m16ls2827487pls.13.gmail; Sat,
 16 Nov 2019 07:51:53 -0800 (PST)
X-Received: by 2002:a17:902:7c8f:: with SMTP id y15mr14428079pll.341.1573919513191;
        Sat, 16 Nov 2019 07:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919513; cv=none;
        d=google.com; s=arc-20160816;
        b=wJ+duOwJ0q33wU8R5m2KSLra+6c2Ko6C4IpDY/jC6ms6zlQCQm/Qpe7oPSl2vwaFQE
         JcG5pFpxMXgxhGMNBJQ8MUKfJdsg58CRzgpyHLFqzM3g7QVAdLG/L/8brcJeN6nuc1Ze
         xN7R+jxVNUC8q0ACY9DFF/i0cL538L8z0jOQmaI8e4LndN+wBspCPsAd8+djl5ImOB+O
         zXC7pT6WuN4EW5Z2msjNDDZI+xqw6tt7LBH6m7FsiPbNXLIn4X2NpXCqMztD1L4Gznx6
         PwXvx25EBq7HqOLDfMRwUIKFqtm/ZaL/y4/+pm9BB3EYxvVKgrYbty0ijyTcY+c5tWim
         ARRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Cxgj23VncPWVr4Z3OxV9uRD9cVzWXWeFK9SAMe0X8K4=;
        b=KJvU7/Jytcil2T2uGCnmHQOZAbb7zjsNAMm7weac45yatZ8fRI1k4GiX/lZPUWu2x2
         slaPnLwruma1ZvqsWBcanx2jBakmsXY+YNGcW2xfo9CdZhO8prnikf3o8cvy5m+WmoB5
         Zk+JO2xu2t63vUSIUQrZcLgHhC58H+CywNoftFdTXIn8MngBVqNabkln/UbzxC9hWGQQ
         r3DAwRIbIvtGmUWlICYRRsHoMGWM6yX2ktNGign7W3mgiPrnmJDFIKRTINLeFXfXI0Do
         LzhLxc7US7c19d5OWSbCiRKM2bkG3hC0UWSUGm+BBL3OXhUYq893bo+aSw8ZyZaHP3Oc
         qJ+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qShnZ5n0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c101si525119pje.1.2019.11.16.07.51.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A614120871;
	Sat, 16 Nov 2019 15:51:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 35/99] atm: zatm: Fix empty body Clang warnings
Date: Sat, 16 Nov 2019 10:49:58 -0500
Message-Id: <20191116155103.10971-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qShnZ5n0;       spf=pass
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
index a0b88f1489905..e23e2672a1d6b 100644
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
@@ -1559,7 +1559,7 @@ static void zatm_phy_put(struct atm_dev *dev,unsigned char value,
 	struct zatm_dev *zatm_dev;
 
 	zatm_dev = ZATM_DEV(dev);
-	zwait;
+	zwait();
 	zout(value,CER);
 	zout(uPD98401_IND_ACC | uPD98401_IA_B0 |
 	    (uPD98401_IA_TGT_PHY << uPD98401_IA_TGT_SHIFT) | addr,CMR);
@@ -1571,10 +1571,10 @@ static unsigned char zatm_phy_get(struct atm_dev *dev,unsigned long addr)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-35-sashal%40kernel.org.
