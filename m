Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBN7VTXXAKGQEU3L24BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AEBF6310
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:49:28 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id u21sf9114750pfm.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:49:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354167; cv=pass;
        d=google.com; s=arc-20160816;
        b=OrjB7kIG6iQsXA4iP7rEKHFISCagvNCjXn6e4T6BRkb9GDDFpxPFh7l0RtRzedbz+z
         LveMVVPKNxs5unzVUIC6tyHTRSL8CC+VSO7d1G3nb4CIBr2s+X9G1JpolF5gslyyTWnl
         oR7hn1lWVNt7zQyzDgFquYaGj6XLDJsf+v3JZTqWsDaABPDJJqKCqQuZ0qg3sY+Cn4Yr
         Io5kjyS+6VjRon15Epf8oZz3jFUke9tSiIWBOMtXG08dI2jDLwB8dZxLws9JXaXuuOrY
         KSRb9CPaQ9k3JLIYe4H6HONa5mQ8dqOmnyU7Wd+RUCerHhBxsunwT8b1lr7ECTMDE0lV
         7YcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jdEJipwYUHMkHb7kqwpv9mA07ohmuoiAd98Eyb+AnKo=;
        b=Mh91oPOqkm9HMqGf64uhTJCaC4kztK7dWSCK+lyIoDAH5SkuqUBj16ok0ec/Roweue
         3uP2+ximV1v1QQuXYJCv2WEXOt0nDx80T8hxm5txBugSHBmFLrm+9AC0h5wVhZpDCapn
         XsO0OW9jjGUwItmAlHRrjZSp5n40e5eMSDcx9UM8GkDy4rAMdUHlVISoZPWNbkP/XJgH
         AgZqJe54mPlRUBRs7inreeuHcgeiPGjmmFQPZcyb8WuDOSp+dstXx/wttXWoFDa4tybl
         oNMGwat0HmBi2rgJ77iTfuD0DQDpjhJdpqss1J/zcGNRf18Dp2umhCAhOKqMh4bbRw/8
         IW8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aiXePIOc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jdEJipwYUHMkHb7kqwpv9mA07ohmuoiAd98Eyb+AnKo=;
        b=tIayRxkMBPac5IvW/i6YnC19ROapI9kivZiF0HWK+JTVGI2oJ0socW89NuFVsxOQxN
         gzn8qhHMA3jGEx0X2I5ja+hn4Fo5WKUDsJBCcnT4Pal9cYR7lwljTSQVhtmqEPp+svK7
         9MlzNfNNL14Sb4peBSAaab+LUo2YCVlw+JgCKvUa/VkUwuN8I76OLjcy+Nw6sP10NckZ
         9KZxIqYhF8vUx/8bPRUGnoXCPZVQpnkCn1sE5sPBnfBbxbF1ZsaQ5xPq/hN1pTFKwb6I
         myzixPJtjwaucEHYyb7Sb2f4OIRXtPaQr7eH6PJRAL2j4dKpKNYmcxo9WSVfpN0GOQQP
         efPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jdEJipwYUHMkHb7kqwpv9mA07ohmuoiAd98Eyb+AnKo=;
        b=Hs1QFtaJWDyDKcrNgtQNIM/jGBbpxtpN0oZOe6Uv2pX7aRHDvt7/AG06h7IFCTSp4B
         VXgcO+buPjtR+lLvhC9z71B+KvBy8aLyYCoXHi21RupkUtW11JJ4x7Fu3yAIsgmrbLJ3
         uzhbaqCPWgXfsmnSZWBjzTCXv0XCBxTcK0jQ1V20+LpguC2H5HLJRWFEsYRKSWaefGos
         l2MTzreC0dUVjBMyUTSBHXbtQXBId1b0pdWUMFQ7vYFVlzWXd/vq/mg/sv/vmME4ojQ/
         LQ93eAGjUfJxQqMT8H6R6tcFcUrhnEZqNDwhKrEtM0aI6b40jZqVj3Qk/WknbJpxl1qA
         Oxaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUm4+be4FBU49MUVC/3kb+uCtjtL5Q7QRiPUy20HYfsM80Zzote
	5S+50iPq9AQSQcsjApXZVA8=
X-Google-Smtp-Source: APXvYqwO9IbvDM0GPy+PT1ACWWlu4T4IhrnWl93aCzFcKLjk4KNVmlH5XOu4GPy3ivrxMhksKqNRGg==
X-Received: by 2002:a17:90a:9604:: with SMTP id v4mr24534312pjo.105.1573354167379;
        Sat, 09 Nov 2019 18:49:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:860b:: with SMTP id p11ls911822pfn.16.gmail; Sat, 09 Nov
 2019 18:49:27 -0800 (PST)
X-Received: by 2002:a62:ee0c:: with SMTP id e12mr3388279pfi.38.1573354166911;
        Sat, 09 Nov 2019 18:49:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354166; cv=none;
        d=google.com; s=arc-20160816;
        b=BHJpB/CdYkCDBHFMoF6uRDUFQyi2YltqUWnwqrMIEBLxnD7OWYhHNH6spg5UVPO/2+
         yx9WI10dphKjaCxi5luwGuBE61Rry6IXTOQw9+f35zoC7aWz+rlpAvvCm229EsYIK0Xd
         1pJzRxBd0HUigs9ce3DhLGaee69jLq1KJHV2g/qEz9A3LQCSqybPqbuBoLqv4VQy4DBf
         MT3zg1kdhVz3OzTWtedWhlFNIRZWCuCvRE1JhXfrmUR3DEFlwejy+z6PqljqzMCBY/oh
         zG52Vx71V+OfTsEVku0eTkG9BcI6QB/7snlLvqFRKhYSgpic1jr71MDc3hZkQ+uHPSvK
         abrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4C9cvJtmmTiW01UsyykUVDQCC+wpFnQRPHp3KeINny8=;
        b=LIG7O7UZVR1XEC2xOYKsVZAygG8nx5rlfEc7E7Gn1TiU+9YJTHYVFM+sJtMNpxMLT5
         ZMPmn/XWcxr5lIsnMwXG+xJK9mi767xnhlVBprFXbrBuAijE8DDiIBO7KbVEDyxQ188N
         PQfN7b5N1i5FH+o17TZllnci8RoCjDLPWKNEimWn8r+eXnbVMJLMg1Xnwlg160ICQxW9
         pVY3AkYkd7ZYqUZ8JaRmVr8mujnwN3NUltM6TLRRHDKl0XwCVScN1XYr1uls9ubsQelG
         t8FNsDAIoKiKJ5Kp+2JERUrbTdkhzMJPjNmIgguO+ja21AJKVgnyZk9HZquZgX21ul+Z
         d89w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aiXePIOc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si721481pfc.3.2019.11.09.18.49.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:49:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E55FF22582;
	Sun, 10 Nov 2019 02:49:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-spi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 23/66] spi: pic32: Use proper enum in dmaengine_prep_slave_rg
Date: Sat,  9 Nov 2019 21:48:02 -0500
Message-Id: <20191110024846.32598-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024846.32598-1-sashal@kernel.org>
References: <20191110024846.32598-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aiXePIOc;       spf=pass
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

[ Upstream commit 8cfde7847d5ed0bb77bace41519572963e43cd17 ]

Clang warns when one enumerated type is converted implicitly to another:

drivers/spi/spi-pic32.c:323:8: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
                                          DMA_FROM_DEVICE,
                                          ^~~~~~~~~~~~~~~
drivers/spi/spi-pic32.c:333:8: warning: implicit conversion from
enumeration type 'enum dma_data_direction' to different enumeration type
'enum dma_transfer_direction' [-Wenum-conversion]
                                          DMA_TO_DEVICE,
                                          ^~~~~~~~~~~~~
2 warnings generated.

Use the proper enums from dma_transfer_direction (DMA_FROM_DEVICE =
DMA_DEV_TO_MEM = 2, DMA_TO_DEVICE = DMA_MEM_TO_DEV = 1) to satify Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/159
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-pic32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-pic32.c b/drivers/spi/spi-pic32.c
index fefb688a34328..2f4df804c4d80 100644
--- a/drivers/spi/spi-pic32.c
+++ b/drivers/spi/spi-pic32.c
@@ -320,7 +320,7 @@ static int pic32_spi_dma_transfer(struct pic32_spi *pic32s,
 	desc_rx = dmaengine_prep_slave_sg(master->dma_rx,
 					  xfer->rx_sg.sgl,
 					  xfer->rx_sg.nents,
-					  DMA_FROM_DEVICE,
+					  DMA_DEV_TO_MEM,
 					  DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 	if (!desc_rx) {
 		ret = -EINVAL;
@@ -330,7 +330,7 @@ static int pic32_spi_dma_transfer(struct pic32_spi *pic32s,
 	desc_tx = dmaengine_prep_slave_sg(master->dma_tx,
 					  xfer->tx_sg.sgl,
 					  xfer->tx_sg.nents,
-					  DMA_TO_DEVICE,
+					  DMA_MEM_TO_DEV,
 					  DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 	if (!desc_tx) {
 		ret = -EINVAL;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024846.32598-23-sashal%40kernel.org.
