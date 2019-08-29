Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXVMUDVQKGQEY73Z6YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D49A2374
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:15:59 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id t8sf4963049iom.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:15:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102558; cv=pass;
        d=google.com; s=arc-20160816;
        b=i0gIG++TeWeCbz6hYI3Y7Z3dM9+Wv2HwC+xUN2JBVhtFwpy5oySDxmHz4BR5yTAixS
         PiFDr3r2Bu83BsXwHtc3SqzaHTzzw7jyvoaCoWJ4CzFs91ZTlImUCSwAgZOk8lTHFK92
         OsAh8TLkgGhjn/MH/anA3xdyUBC4htqJwCpP3osaAkR3GDQHkfdwxt1q2YsiA+m3oNyn
         hD+FygaXK8xG2w1WNVqwoINhT9ALqN3OinKpON7YjocYJed/8dq0wGDd+zqAfrcJ013T
         pKIyBMm93TRJSC7LEZy0Hph+KmGanPeJw+c5auzgGn7itj+vSG4UjK+8PaKEC5kIU2He
         QR3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Jz1t0iQaBsvDbkqh2nv7NJeZB2epZEBE4Afun2G8iww=;
        b=bHo6scs1fIz415D9xiVcvltfCyUVpP4WtmvN958Bgyo7E7QopxpQOL3IEmkdb3Ip7Z
         /TuktiQPfHGi1H9YweTMAe3wJas2424vuXSQrv+7KhUJ9uHmf11qb+7woDiXdXsn5Eiu
         FHyz9LEPKKgJXXY6vG/x9FvC3Vy0cZrQbRN1DdydNV5fHq2InaMR340D0W8Nq8DAkzHt
         wRNxnXm+JnmLCx3afJKzwwjhCsCFIMFRCe1nt5oQ/JmQOxEj/y546bKLVxzfGL02Kfwv
         6TuZemaIO3TechGV/5FN+efPOcnFq3NmxvYsbFiut0eiMCP7FKrUtD8ePrMGjOkWGW1y
         if2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nh4gFIzi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jz1t0iQaBsvDbkqh2nv7NJeZB2epZEBE4Afun2G8iww=;
        b=VgZFq4hZNUQFJzR4tSCXywhp5MzVBScBMT2odW1IT7DVmjue+YW7Wm2Q16f1DNQUYo
         TXCSmhrTaTfPyVoVjeVXTJKxvQ9ROCyUaIBpm1KmRYI8AhoS5has2V2RhNCjMWPagKqF
         izyXcK42s2ZeqtYSbqCQo6xzQvPWHo916V9lbSg9wu6TlSd2ftvi7N0J3pSurXiQDYW1
         tReBgNh54cdo3nA+G78Pl/Y4Mf5MnWdWJ5xW6eq8m7JUfYMZi5hTpxc9KQwzAjfmRezU
         5atG5eXLA8xXwW5NNkT7qBeT30d5YU24N/81de7hfzs+hSlJ5zPuQQ3KGUDZoJlNNAMT
         Je5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jz1t0iQaBsvDbkqh2nv7NJeZB2epZEBE4Afun2G8iww=;
        b=XP4VTgSN6lKgeGu/4WC196VMHfzjubVFCZEpaasj0VzWoNiVVXfWLLCYoe4+0m21xG
         mP709U89EXJXEjS4aaOFiazGORk8U1oUIeBmxiHAkRBVNV2k1RCjGlnhcHVKaNKSGok8
         qtrlr2Vy7O0R1eYZNfkneCOf7DMcl+QuBm3NYa87H+dN7pphv9PoTjnYlhVzu2ldk3Ce
         C+9Uvt6z2+cQtQv9HV4dycLJVbKM+iRq/B23DgOnqTAEVo3emafxxUBOopOkdz6lpG5n
         Aq0wPVsPbXwHlmhp+emIQJxrojZny4rS6vstRlYnhvE4pRVLjiU8ZoIocmcrPN6IGHfU
         a0TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUY7eUUjR/WHCp+CADZye0gswaSzeT9nm5ZxfyBP5hwMsuxEcSv
	1ARXXt4wqkinA8ERyC9PXIA=
X-Google-Smtp-Source: APXvYqyuDJDHw6z69HonP9jeUcsXxz5qCdMckKvHkRct0e4y0ak87Hoc/29jaBKCJb3H3DnEpU3xIQ==
X-Received: by 2002:a5d:964a:: with SMTP id d10mr13328600ios.301.1567102558299;
        Thu, 29 Aug 2019 11:15:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9d41:: with SMTP id k1ls990295iok.11.gmail; Thu, 29 Aug
 2019 11:15:58 -0700 (PDT)
X-Received: by 2002:a5e:d803:: with SMTP id l3mr7377595iok.126.1567102557995;
        Thu, 29 Aug 2019 11:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102557; cv=none;
        d=google.com; s=arc-20160816;
        b=W2FmHuN1lhabIH8DvyKoGdxCOx6Y2jo8GNXtslXgdTAZshZwKH/LmtZVtXhyAR6rUg
         iBi8V5bHhU5r2khL6z1PF5eff0GPpqO4WXTundB2mAja/TdXNCYX++xCOfYaaMk29Jni
         OKqup+WXwRhrmrAhNP1M4N8mmvI9nyX4RAtBZ9cghguXiW1VjXYmrFtSeaz5GiAaP3Kt
         2sZc53hDCICrrkGQo5DLei1f7l6OoELsl6KGFffDJiWhVV/974qT3JyOYoXGAvME/RBD
         vn0jjSOIEY5KmNnEzOx+uNRO3DmurUGxZHstw7ZKWQz8KR+qp6A/yghP6k4uFOTVy9ff
         5A9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=x5/I4rsHCwlQvkODKYJ66s/rKe0stw9T4eC7Z1TFmXM=;
        b=KjfugroiNeVQ7CVPKwj0GRV8sU+t2u8f+uRHKGkiMSN9dezF7J8yhHlDR4LlH3yTLp
         luVLLdIrG1a0pWMFO9O6mrq28u7vFIuz9cjyiotwPh5N2vThSfwN99JtMp/L6Emsm0Kn
         1P0FzS6Fm2UP++G3G/mCQuG3wdELCVkS25Jcf0dramNFZPaBVbTkC/icOFKReW9qzLNj
         C9FCiiPmBXjuftiyo+EVGmSbRjYIGzDrGJ5iS0w9xh/xGQHvDC3XfaDzGHiquA9TEYck
         BEpwXzw7MtI8FMSJV0IbMQoWBOqiXjQiAc3bVjUlDAI2z2AHmRC2JJNQDTiLBwTJYW+u
         IQEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nh4gFIzi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a26si179795ioq.2.2019.08.29.11.15.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92F9C233FF;
	Thu, 29 Aug 2019 18:15:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 06/45] net: tc35815: Explicitly check NET_IP_ALIGN is not zero in tc35815_rx
Date: Thu, 29 Aug 2019 14:15:06 -0400
Message-Id: <20190829181547.8280-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181547.8280-1-sashal@kernel.org>
References: <20190829181547.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nh4gFIzi;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829181547.8280-6-sashal%40kernel.org.
