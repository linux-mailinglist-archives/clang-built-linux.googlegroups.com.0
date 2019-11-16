Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUFUYDXAKGQEWLSLCXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB3EFEE0A
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:34 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id e6sf9629211pgc.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919313; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgDOo16wDpq7o7f4MW55aanrAcQFbFuEm8FuZ3dcupAQeIol8epOGcQvBh8aGglYbO
         OPu2DHal8THZLgaElnz0rnqHKrV0ToQrJzYi848q1zIvGEDHqyM0agOZ4cie8qgm8A13
         FPWKp/CVdgKppEW8Mdwcr9RJVjt4iCZMSWLP1yMDFlWIDAHUI8RSlmYLd03Ai2MLptZo
         mCTtHSOmJRzDEHweGGu9pu0CAWYsAR+GzQ79r8Abrx4DSGMF6fH6qlqDnWdteN343wt4
         LRtxIUheRw+znNhrAc528+kvgz8JU7J7XVu7BQKnyZL2d7wddPVmwo1a/0ym8fUAt6nn
         QZRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r/4981hqM/lPdWnNXHMF65an3NOWKzUKjfTLBOgYxek=;
        b=fiklQ5vpkmO8mXek77eiiCIekpnI7Dt3ALP+7jCPf4Ji4FUeBJ0xDyRL5zgXaN4NBv
         PynJk1d6l7NtVdP4/PCEoG4LSccu1sdWEm2L5qt1qVNCKF4nkqGch9/kq20z/5Q0zoVx
         AYQbmt43jsdjwGeHOVpjM5TKWDaoXl7fvfZDL6hqvcfoNa5hSa9dvt6Kn/0mnc5Lo/Cz
         9b1fTqwYoxyJATiuvjuqUr8Wz7QwYpOZrMc8ScwP0YhfAi4oTYemabbgtK4RLW9iD3gG
         UFvsxDkHBIysLTwa79hiKoywUqOp8bwlizDoMRxMZtsWG5Ck28ULawiMCn9zKnyzdQIr
         c+CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sTL7Exnv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r/4981hqM/lPdWnNXHMF65an3NOWKzUKjfTLBOgYxek=;
        b=qIfUVhVuFHSiSddk7eVncCo0aXXxD6tL5/vPCkJFhBmOZkl+gvs1VA8FUgIhXPEjwe
         bpZILSpm52oj6DYgmMe0TTeV0GuemuPZ5KuJLMbH4sRssMNBxOVhqypFJpc6jqoOSeFz
         Qs6EOzUdLJEtqZFsj7257KRM7O8dvTR4PJeHhHoWSmgoC+XfBlkmzboNemQCD2zP5mmo
         Oj2tCZSW6OF8kq103GgdAkKS9U7xd0MDZkzIOd/DaApbA+vhGceg8BaBsfLLXZ7ERMpT
         T/dP0O1CWCiry9GgL32E4Hq/CqXMhCMZUpgLHUkPeeBeXwiIZFwkHdLAmoXjW1bopsfQ
         u2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r/4981hqM/lPdWnNXHMF65an3NOWKzUKjfTLBOgYxek=;
        b=QafaqvEzB8asbtGYVymcsQUacvaWJllZYIAZPSEQlzj0QIMwOq7690qeRqoQsLsAQg
         e2/fcBFnPEWxipRuopvlTO31l7FkN5w486wWwkxWdemvXmNO2P5zQOJnPhsp/hOGPFwc
         5EKk4bnW6LgnWxkDdNglLfIAG8tsUs12FONBxLl8/bKtJ0bNXaZA39vW/RMrWGejdGQj
         zMQ+ygc2aHREwCYnFBPVG84RSAf+ViHdDVKuU7wGkLzqrEeJKvx/z2I+K+WGfEFv6y1o
         xZV5DxijdmauWJpa+IH84XC1kepSoFdxs+jPHp3aCMVJcPbZOYDYG+72YcKeBXX8ei/c
         HVMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOX+zzrOHWQmIxvKilGNETLbNgL24ybtw+RMQEvv71sJw9Kz30
	JWXZMMMKhg96GoV0yLIMxSA=
X-Google-Smtp-Source: APXvYqxaKhCRxK6E4fcJiuwxcuYIg/YT4CF4r8NVg0tA+Sc4oWknkZ1HM4k3rbTk4btUBwWLoePf0Q==
X-Received: by 2002:a65:6685:: with SMTP id b5mr13392948pgw.94.1573919313007;
        Sat, 16 Nov 2019 07:48:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2cc3:: with SMTP id s186ls2610001pgs.13.gmail; Sat, 16
 Nov 2019 07:48:32 -0800 (PST)
X-Received: by 2002:aa7:9409:: with SMTP id x9mr8916069pfo.168.1573919312607;
        Sat, 16 Nov 2019 07:48:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919312; cv=none;
        d=google.com; s=arc-20160816;
        b=sOaQb1QUHwBepTlGXagB0Fu5MD9ikOWkr6CTrq1S1mKrCdp/TE3/4wXiMBgp+7mBxh
         LzbRcU8jq+YMH+NuXMv3PTqf0hF+bqZzy796h+VN8GkDGcyaFDcus08bajy0xPfSarbI
         //wBA55SyGqhPxyaKPY4d8r0yDxdyM+2D8xhl5SS2ErK90l6/pMJrZWMund64o0J7E5w
         PjsNZ6rIKIThfdWsc8T/9kd7BZ9xmRblKYSBBP3cnIiDTenvcauRU43OX/WrB+Z6u3x2
         iRLOoNmY4rOAeSYOA1IBSTYcaMaP5K8MWH4aksPxLImwMzIHlWGqZBPFIFbvreSEord2
         lbhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SPf58tYBJc2nD+r8guxR2ufdX+czmGeDhyyEHxKT25g=;
        b=A0Rk4zGVVsTsXcKA1u95vFsHYx4PS1XJ+Xaa8Oi0qms/s4GuKugdTd0V8REK/8juLj
         EJKGQROtwoMJsRWqRrEIZHWPDj8Y3xWE9RY9Tc9qeAHwNjljxZHvZoUZXYuR4j5rXWm3
         Ur7Xreq5OennTybbLVetZirpj0rhgGqKAeRrOmnDaVR0XnDMULZHZUPkV6614gewvMHp
         vBOvFa2ieEfC3j48A60SO5jXdAcd7LBtYG1C53qb64wqftDqjysn/2kbMNhRWvwQKM6+
         2+CS3r/muwR/Nw1OQLg3YIOVDPK426NOqzAK+pb83aMKB7P0A7IY+1rRyxAX5nyjux3l
         Fxzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sTL7Exnv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 102si525214plb.3.2019.11.16.07.48.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F0BAB2081E;
	Sat, 16 Nov 2019 15:48:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 055/150] atm: zatm: Fix empty body Clang warnings
Date: Sat, 16 Nov 2019 10:45:53 -0500
Message-Id: <20191116154729.9573-55-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sTL7Exnv;       spf=pass
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
index 2c288d1f42bba..817c7edfec0b4 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-55-sashal%40kernel.org.
