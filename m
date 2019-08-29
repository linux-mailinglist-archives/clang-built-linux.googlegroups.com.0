Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW5LUDVQKGQESGQUSVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D01A231F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:13:48 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id s10sf3123440pfd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:13:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102427; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgdluA+0/j0JS266Hx7HcnTEIAwnTylr/XCvbQhhLfP1EGxKT423QLfcxF2rVFeGPA
         6gHlIM4VX05tBjVZeucoeLI1s+ZHKtFf0uyWktBH/G958DS9lRduleeHlkdj9VJM9++4
         7xVHGN2UUgquFMrY6zUUzAMy9APn69WyhADbQldfy6Ms8TcnNaNKFCXK1ZE0np8qNPah
         +VCbQdJ+a54LOKeGYxbB1WWp3GEmRP4qL9864sS+4Y59YV3PegXlx2qkeWlKocisewo+
         yK2YqkO91JtHTeABDjdERT+5cmjYm/yrVFqlAcx3ou520nWbKRaHgFLJ/qSB12k5Ydwy
         HRag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k22g+T37RwWD6HJt1C4NTZj7Il0AJk+4FOITvTvyl1I=;
        b=eUNljfFpG6HXwsaHkEKHi1L0mNv4quS8Q+d5LGxfNIFozGLEPwc8lhH2udQrXpsjjk
         v6Q+7anAdoN6ixnzZn2OpaNKEWYQwh1hjrQH9qL2Y6maMLOSdBaRhNV0W64j6z3tRd/0
         pmUliq12OEVpWSWoJcNPmNlB+X9weWhAMXr54cEjTVyiMyGt5A220uhjqMVt+Z6CP74z
         3O5KB3aZMYqknk5/fBR9YgKuEMb70OC8EPcBVTdzNpiF7cLlOC78eIAsPDQgJ4boKj7b
         +IKF0Hh1dB2XoDaoCxkGCS6g1CWNWo243owK5ensgMwJEh0+7nxSdF5ieoE1kR15E5I+
         uKSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NEf62xWt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k22g+T37RwWD6HJt1C4NTZj7Il0AJk+4FOITvTvyl1I=;
        b=ivDsdt4jySdiiATm0p+/peWGvPq1Q3w1G1R7JsjJkHzcBA8mpO9vVQ/Jnw0TYpLUfI
         W6lw9UgxYFvvkI4LqRbVg8OtrbwtG5WY/kPYUwK7CjnVQ7DZezcYwq+ek30NK7EiSnw1
         HM5bQGPwX4x/LDXhL6lBXdohPMPMFt3WREDjfZ984JcPSQUYUnFIDXAA9u5K0TgE5IY7
         30t9NQm3XYpB6fj+9NOKJG28oh7IGaf3STYAeq6MSoV2DF972gsRecItHNtqVjE0cBrZ
         id+DlMPXy6+FaohZskVJFdKOwVwyoug9FVFPFanrLgil/9n5DD4KxiJrpDc3uG3eFIyA
         WVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k22g+T37RwWD6HJt1C4NTZj7Il0AJk+4FOITvTvyl1I=;
        b=cJ0JTx10qn3h6Mc/ZdQ2Ozu9cZHwvwJh5etDhb/pTNJfExpi1f/qAhmoMeqLemPMCt
         WYqoJDKMm+yGjPIxwGNjyjy2Z3iug+kRuKXTVLff0zDETb1erQUayV3C0VdJ/GoXzpwq
         wvcYoqedAR3pcv4jMFaun5hIuy484HUY4mGFXNfDx68nlNuTiXh5v6jWMA4cOSXbaHJh
         mmNY/3w03PdeMkbm+dNpaLM44f2MKVBCGHD2MQHhvIOhYycURwQb4a1OyVfIHTEPb2gR
         qaQZjJ1axYKeCWb0g9f+1ZxOi9ihnFCMnYCHRS+ivjEriVEHvv13gjC86MQPz5WERZFz
         9WKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0P9oWdOru6bsIiy7sfPyZjAhaBtcONIwSJAphkK5WY7aFLeGU
	m6Lqvh/AgrzvNjt93wsyJ+E=
X-Google-Smtp-Source: APXvYqyx1ISc82KRLdUtTT5qQ2sBqEIEAYju8ZtwmHHePYsVjvl2BuyIZnxV02YH5orkKuH9sLQ2YA==
X-Received: by 2002:aa7:84d7:: with SMTP id x23mr13200163pfn.53.1567102427180;
        Thu, 29 Aug 2019 11:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls735827pgr.0.gmail; Thu, 29 Aug
 2019 11:13:46 -0700 (PDT)
X-Received: by 2002:a65:4304:: with SMTP id j4mr9859281pgq.419.1567102426839;
        Thu, 29 Aug 2019 11:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102426; cv=none;
        d=google.com; s=arc-20160816;
        b=wBWulPJZEf62HTRHeYH12RtE1Elkjdm2+9ZRHrH5+o+VYo9HOFOlvnXXThyVwxNjDx
         2bv3i5X6lZJzxZ8oK9tPTxs4/Ao1CNQlvXlbtoMG9pYOtqkITUAJIeXrxgJYibe5pILk
         ke7QZV2tuGCWcfh8cWxqvj7PZHON8hRzyX2QUzYfXZBs5NaNqbBU7l3dvsn10L4g7bf+
         tQ048XHeamx34O31jhhyL4SHONDYNHCKToj4IvcUOcVGzmxUwAUn83t1SeaLE/wLgSjr
         vfrfW9Mm0cN8/nU+sYCmuLgkIRwmgGyfqlcXOhRqMrSs3G5B0YqIUk7zIvhg8irRVAPB
         ft8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m0leWSexNW5q/kQ2BsCZyDDTplyy2g/Xw+TTbvg+4gw=;
        b=FD8IK2jdjuKbOp8FrQ8lldO8DoZYBw0mAc8TowOlgV3zZ0P8hMx0EvQluOcsS+rnYg
         y3iL5hJe5tzO5vGKDkdbQjtDyDrkk6ZNVrpPdIrtDQEaSyXo2+trs4i7gqBQX78ifvKw
         rhyk86RiV5PHTKPUvIcL8ebCB23AgX0jgqV7+dKNjHXSebLHHgpVwFRm/O3kEjuHTDAr
         lp2LSquRynbkbF4PtCmag2rzxEoBitvnw1qIk4xdjSq1gACJvNvp8qSIfnnOESTTmLm7
         d/m1IalIwkXbhVSQLgDVblnJgP0JOWoPc9trwfYG+s+FGX8TQiFd5h1xwrkHqozxHXT7
         ob7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NEf62xWt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t14si271463pfc.1.2019.08.29.11.13.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D2D082339E;
	Thu, 29 Aug 2019 18:13:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 17/76] net: tc35815: Explicitly check NET_IP_ALIGN is not zero in tc35815_rx
Date: Thu, 29 Aug 2019 14:12:12 -0400
Message-Id: <20190829181311.7562-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181311.7562-1-sashal@kernel.org>
References: <20190829181311.7562-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NEf62xWt;       spf=pass
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
index c50a9772f4aff..3b5a26b05295f 100644
--- a/drivers/net/ethernet/toshiba/tc35815.c
+++ b/drivers/net/ethernet/toshiba/tc35815.c
@@ -1504,7 +1504,7 @@ tc35815_rx(struct net_device *dev, int limit)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829181311.7562-17-sashal%40kernel.org.
