Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRVNUDVQKGQEPEUDL3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 96376A239B
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:17:43 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id b31sf3234236ybj.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:17:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102662; cv=pass;
        d=google.com; s=arc-20160816;
        b=irgG2KD0Qfblb9KO0hazlihZcKGup85LZ4d5vL2sQcDTN52A1HzY/nJlmjKCTAIVH3
         L5ZLuubWbN2rs6xu/9ALLeZU4WbTpuM/FfGiJSWaOHUmo6AoFx17GXKg95yrMyFuYf9j
         LRtfup9nbB+99imDFCgt2w7KkMjnE1W4cBcXI+u+Hk0wmX3JGtqz3wNsd0i7dtW3fYqJ
         me9bbTj8XfiQD7y3ZO3MIrvFujzjw42AfjjDKVh4BZRUW/TWgXEtE97mWViiwqwdYokS
         djWqrDxJJ38sPktaZWzEI9U7O7tv4TAz+duwVSv1UUMPr+wNc6HgLFxX1bXl/2WF1oWb
         EC6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ojcsBsnebkKBycdruC4W7QgNmxH3VUV8A6HJBDMzEfs=;
        b=osksyau6WAxhFKynTq+QAnZTdSCgJYnrG9bMlxUFywQmLPZCrUrWvWZKuxQSOy3k2v
         vY8/tP7ymvXM482gX8yIcyPem/5iO6TC/n2pZl2ETwWRUpkPw0IZ0iqjKlbClC7bvLB5
         M4bQfw8zrOxatNS15jKq3ZVQqM/RUEfEnhDnwqkjyRkRARfxUCU7dLgtFn6YEU02K5SP
         Lt1A6wFPWycIykmFsh3EGHBtKmM2jO+tOCXR4yEjgqrb05Cdl/1Zb/wrwBIBhzLTlJNb
         GUNxWjfM9rCDakL7Co4NiGUFWmC2RZrfq97DXulSWlMUVL+JaCmtj+/wHJfxqHP/z3aX
         kgqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oB+UiqZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ojcsBsnebkKBycdruC4W7QgNmxH3VUV8A6HJBDMzEfs=;
        b=a87RKcqNYpvZjpxbAqSyI6Whbtlg3qKV1uZLfwXTvdUwKJGqwZwQ/gxIAV7Lbk1WmR
         wMcUh7mdKZ9R4vHD1D0D2J8WE47o5MLmCuxZKKoOm43e/iLmPhcu0CB/v6LQV3JS6Pdu
         XS8/BDSSspg9RcStqrn5XXYW7aTxhT/KtKgo6cwjdLgWj1uPxCX3oi8JDV+7uDkq79+N
         I2xVannrF0JDKyYkjF2F552h1PSdxXHR931i9Mf7H1u31r4kG0Kh/58uuCBQhjn+3Ngb
         MuP5VUY/mokEajUX7KE1sBMWO/BNxz4CiUlQNGRq6vJ6t8HERHNwGNpdQoSdmqBvSLPn
         2iZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ojcsBsnebkKBycdruC4W7QgNmxH3VUV8A6HJBDMzEfs=;
        b=PMeFJAu1hjQ4AkVwQXoteoy2lQdtWl0Z5jxBwAVKGDD2Y7vLxy1XswVWrBRByqPKZt
         6UYO7osUv/qyLhhMNRuLZApl/XH2giKOpBHiLm5TNh1RlSXsSEMBdF9MeUKdRtkABQv2
         UA2gQGZH/JRyduCtcF/n1swZN41RoP89vH/ojbs4l/c1qY51wloEEe+6LxhrsNgpL3rU
         /B0yn5Bjpzhy0v3DHQTY4u1yvxrSpNJQ6VFbqHFWkOfH9wEfiIkkRI7qyaFoMGDdM/FC
         tTmuPMwiOZSzlQG0aO0217ccqFeKv7WFHaxvk23Ex7JBNd9DBkCIZy+v+afmxTXncfpJ
         hNrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXzfZ0TKQ2h+4BWlHchayUGhix8LfiTcNZCp/F02YlrcGMtw9Mx
	tymKmfpSOoWQ3Fd2NL14/wk=
X-Google-Smtp-Source: APXvYqzHH3QS84D/hhN0CwAEdkFDVi+ZYcxKcwniDFvcWuDALv0zL6WnxTJvqt8MjfhXde0vpw0ivA==
X-Received: by 2002:a0d:e897:: with SMTP id r145mr8376460ywe.80.1567102662646;
        Thu, 29 Aug 2019 11:17:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:414:: with SMTP id 20ls35010ybe.3.gmail; Thu, 29 Aug
 2019 11:17:42 -0700 (PDT)
X-Received: by 2002:a25:1e07:: with SMTP id e7mr7681768ybe.501.1567102662307;
        Thu, 29 Aug 2019 11:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102662; cv=none;
        d=google.com; s=arc-20160816;
        b=c6OY4VU4LTcif1xlCUqIbVXW1HCKlBtquEjJnd9F85czxAdQWZtcihEN7Gtklp9SND
         TosMf9PEa06inGTTxDTUhO6r2D0/Xm4A5u9LqVz8aDvc/LnXkOjcotBWu4LxrZopLSB6
         ayeZUZIzInPbERjBgGnUXYD8G9a0wBk8vTKzNPVZwRaExhS8uQHD49daB9e1ceVzFtNS
         1V2fYGD60yXCPijyidgUZF//x9joWwOsK/Otp6M0se9P81ZDQN0gfIz/2HzRWIAtkfcB
         h2Ft2VZ3eumhu1JmsuUWHn7oToPpJL3QRYHUktucYhiP/Ncc2YCgtBaPnuOUFM8euZ/F
         lcXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q/kTphIkSw2t1t9Lz/cYllLxmT+ujG5wdRwEFVmH2is=;
        b=iwqi9uACj+kDH/E6ovM4Y68ge++fTN0uSxODA+8qZdSPNAOYVvoHbwuLQHr2fVCfic
         UQsdCoAyhqJU3yjsKigH/IS8WbwMTdf/OY1RkScxLFQDz6gv1qrjCV9q+J+aKZoF3tzm
         DQm0U+jwsrgZPolihcj72N7mnoJwlakNSHtVO09Dk3K/DweRr8K1jRzfq3yT7OooJE5m
         cFpCdHX6lxqJI6CBtuTH0XTJsTfs15S1PO1KvNPSwlnAMktxfeBZN8V1vHPkojz7oPn4
         SX7xZQw9NRMODMSyooeIr6Rop/iV/xbvYwH9jLBZf8iChui+HwWRjZ0OOIsyh44A+UZn
         tCFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oB+UiqZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r134si299269ybc.4.2019.08.29.11.17.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 99EF5233FF;
	Thu, 29 Aug 2019 18:17:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 02/16] net: tc35815: Explicitly check NET_IP_ALIGN is not zero in tc35815_rx
Date: Thu, 29 Aug 2019 14:17:20 -0400
Message-Id: <20190829181736.9040-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181736.9040-1-sashal@kernel.org>
References: <20190829181736.9040-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oB+UiqZZ;       spf=pass
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
index 5b01b3fa9fec9..47ebac456ae57 100644
--- a/drivers/net/ethernet/toshiba/tc35815.c
+++ b/drivers/net/ethernet/toshiba/tc35815.c
@@ -1498,7 +1498,7 @@ tc35815_rx(struct net_device *dev, int limit)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829181736.9040-2-sashal%40kernel.org.
