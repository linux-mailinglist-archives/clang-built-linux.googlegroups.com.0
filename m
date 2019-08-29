Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHVNUDVQKGQEHDADCCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4715AA2395
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:17:03 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a26sf2182047otl.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102622; cv=pass;
        d=google.com; s=arc-20160816;
        b=XXGvRlEVA4y+/Y0TRgIaz/iuWgAZfsU68GaTRutby2rJkLNEVubyIZequy8sqaLMM6
         /cl8lmbK/7a2TAb1F5s6xYv0whldkwf5cy8CJOmsq6m/bHv3h/6bKU+8QEVkvhYOoeqH
         L0LFfXxBR3ocNFYuAIGTRx0b+mCgxzQNuFwc+NlWkuC3NiF/m/YtLyoNMDhwP4JtLp3/
         X9T8S+rBwZaR8Vwoca36n4fcdD4DX869AO89r8XK1hBmuqCw5f+0aHNzpwRHiPXZlPtu
         UtrB/+RxARY3wSGwNLB8TX8bmY02pgjV2KVnisgiDCkC4Qr+hJN6qYzfoXFQ/SMmn9TH
         8mtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MjEgukO1Oaw+kMS95BBDbvdl0cisZRB3EtvR6y84DdI=;
        b=UUs1eSnJlF39uEHAZ0QhAkOHDDNey5k/q3gEnwzd2WmGBaM+Jxv8r8Db6rjzykZN3c
         SSlf67ED60/G54qBBdnru2bp5nltDWYWT3Zbj8pduKbFDv8NP4LYzOtv8ZQunHqDbXE6
         CwWyhFo+CIOVgv9RH7HumLEDZjK54YGqrPusFmbwZTviiVVPdpmVMgmFXutYEy6mM+Sc
         pb6+MLBZiCqAEUVOzzM/A9AgCkTdpb5bn63mLjbXQp4R/WY9S/dCVYcpS2FNyoG73+pw
         0g7Oja+WcJPMGdmi7NwvjaVY9ESK/xpV1Idr4uedhOOgnf8OLmcPB+nms8y0WdeN6WLc
         pmiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TipztOZf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjEgukO1Oaw+kMS95BBDbvdl0cisZRB3EtvR6y84DdI=;
        b=f2VdK1DzH7weTcPofeAetUFH44YaZzjQJGSbfqkICGsCAar2LEdp/Dvyl5Mn6Ar3XY
         H654JafqmBQiLmxfqRNHKEfEjyPHXehg6HL9NFeeFzg7A79ofsJjYS4ZXwryQz+l4UBG
         bhlYzrkP6nPNmuxMTVQWOJjczVRJhH6VhzJArLv8zq/HhEjwOTkvgRyU/yGu8OgHVY0A
         0qv6EcKRpwYrxZq4+723PVpTF5D7FfAecaDC0RBZoEbSAPt5n2UWYI8jm7SbNXvO/GsY
         /+FQtonXH7EqKfdiaFbwgnS4V+PBNgtb3lyDqDARSZgagRRWH7BHqarY/THgo0sOIwkB
         luAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjEgukO1Oaw+kMS95BBDbvdl0cisZRB3EtvR6y84DdI=;
        b=kPUb6hZrs8H0BBnKPgoT1rmbnkLtCKfkQZcJhQhjSZn/S3axUA1bP2k4BB+tgOj9Ox
         oRPCSv+aRnKUpswGBwQ6Oxj5ZqZRlprKpAW3c0wDvliO8bc8M3S23qx3vKk5D+FEIbaB
         cNusSPITMioz3Hz/z8r0W8d0YIq0nZPj62j1ZB79wVqpYWj90ex7EPSzHutLCkbgi0td
         LJkSe7xZCABdeowpwrXyLx5uqVt6Az/SfP0uB0psVTvL3YAUihiuJIEV73oO+TMJQ+ag
         NMrVxMWvfJh67ud95bZjX8tDOBshb7SHoJxdnhzuaasf1gDCdwGlV3k88iqLi5zW+Umj
         4Odg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvwyDZeNl/fbMg/jCVNtHTR+878RVmJ7UR4gVx4SPkifqh7BwR
	An7Fhg9XgxN+/+bgeuDERkA=
X-Google-Smtp-Source: APXvYqzdCeDKe0pVQ9H6JV/NuYGE+Hkaouo/OMT2BXYbBb6zXa1dOKlvJkGNBLRvAvmxyIjsyjMxkQ==
X-Received: by 2002:aca:f455:: with SMTP id s82mr7738102oih.142.1567102622048;
        Thu, 29 Aug 2019 11:17:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:187:: with SMTP id e7ls47493ote.0.gmail; Thu, 29 Aug
 2019 11:17:01 -0700 (PDT)
X-Received: by 2002:a05:6830:4a1:: with SMTP id l1mr9289295otd.248.1567102621804;
        Thu, 29 Aug 2019 11:17:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102621; cv=none;
        d=google.com; s=arc-20160816;
        b=TqgFI+gfRFSEI3/5ftP2rpw86nTkiOpzAsTWW2tl0ikJGVRl0cO8bJ4Ya4PJ6uM0Yh
         rTODhgGR9CHwpxWTZPWG4P+sfBxizsXOscDY11qUwDZRWtjNvfe6/1MODwSITTzU80Pq
         odP0SQAYvPYqv6e2Q0nZ7m17xo/D9m+NDQFf5Zag1ERwbCE1KbTdqH1i7ytLVjbRK/2U
         +5aME1l4Q2M98DXSXt76BEdE31uxjMbyiJdmRNt+pzlGeMhhbmFjW2XYocO2zl0fxUZb
         Fab2lJGiSv83YJPUpPfBFaBu25aLGEI6675MG47ieei+JTzucunDllN6EbLKaa4bCHyj
         mESA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=x5/I4rsHCwlQvkODKYJ66s/rKe0stw9T4eC7Z1TFmXM=;
        b=I6PaWTG3czD1BfU7E+njw8a44PwgmTrOzcfAvgqviMFysJMn6gLemjxnKE6xkYQ/2t
         Hmf/sq5Iyq93zqK8GypxZTZTlQ7rPXHef0QGHWIrwFlbMgocyVVYuIvtuEK/4OtRbBZS
         Mu29nPl3Y4CaEH4sap5yFVCbzzRSfnpAQnfrkIbf/pR7R0ixZuntqXvmJ2j93t0La95L
         /YJEQBbfJ2LDE5qdZtvPIqZ8kCy3XeJfPytHS1v9DxeAwbE5EK/BmQeWSn42vp6oCpBf
         jWcjKIR4EIjefHU4uCdIG6/o5V1cMUJ7bkoQFZ/QqtxbAIBZILFuLWyZARCe30NBPOqp
         YLSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TipztOZf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w131si153416oif.2.2019.08.29.11.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31097233FF;
	Thu, 29 Aug 2019 18:17:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 03/27] net: tc35815: Explicitly check NET_IP_ALIGN is not zero in tc35815_rx
Date: Thu, 29 Aug 2019 14:16:29 -0400
Message-Id: <20190829181655.8741-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181655.8741-1-sashal@kernel.org>
References: <20190829181655.8741-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TipztOZf;       spf=pass
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

[ Upstream commit 125b7e0949d4e72b15c2b1a1590f8cece985a918 ]

clang warns:

drivers/net/ethernet/toshiba/tc35815.c:1507:30: warning: use of logical
'&&' with constant operand [-Wconstant-logical-operand]
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                  ^  ~~~~~~~~~~~~
drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: use '&' for a
bitwise operation
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                  ^~
                                                  &
drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: remove constant to
silence this warning
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                 ~^~~~~~~~~~~~~~~
1 warning generated.

Explicitly check that NET_IP_ALIGN is not zero, which matches how this
is checked in other parts of the tree. Because NET_IP_ALIGN is a build
time constant, this check will be constant folded away during
optimization.

Fixes: 82a9928db560 ("tc35815: Enable StripCRC feature")
Link: https://github.com/ClangBuiltLinux/linux/issues/608
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/toshiba/tc35815.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/toshiba/tc35815.c b/drivers/net/ethernet/toshiba/tc35815.c
index cce9c9ed46aa9..9146068979d2c 100644
--- a/drivers/net/ethernet/toshiba/tc35815.c
+++ b/drivers/net/ethernet/toshiba/tc35815.c
@@ -1497,7 +1497,7 @@ tc35815_rx(struct net_device *dev, int limit)
 			pci_unmap_single(lp->pci_dev,
 					 lp->rx_skbs[cur_bd].skb_dma,
 					 RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
-			if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
+			if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN != 0)
 				memmove(skb->data, skb->data - NET_IP_ALIGN,
 					pkt_len);
 			data = skb_put(skb, pkt_len);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829181655.8741-3-sashal%40kernel.org.
