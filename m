Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGPUTXXAKGQEGW3PFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC3BF62E1
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:46:51 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id c10sf1743909pgm.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:46:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354010; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgTp2Vsc9r9OVhb/rqLWUAAzzsbxDOuY8oIpwNviJ7Ll7wtGu1RLaYgRoxa2IC8tng
         NwOJw++jWFDfz5gIiXsexA3m31HZXRDdi2nXHHNqqGnZi5whsy2OZFNj/aJM19au+CSG
         rH1z27zxAE9SNiZQ55dm9iBnSPlgyK9gwiwGHd/zLytsxvT7YklAobI3hzxW5Z7n8Ja7
         w+fu0OTHLKu9ti0/rrrIgd4oBeYQ1sQFcnWTapSNrTR1o364ljQNPdXl0iJLItHQ+LBB
         1mmOIFdX83Xq2Ohc6gzoIHXDyDJEl/dTT8rCF3BjQkdjeON+2sDA2W97WANb6gmPlEOE
         ZpLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LD8vWZzEJMxBonhd+/wvKoEBgJ/5NG+LLrtoREuP2pw=;
        b=OZr6aKR+uKtpGTHOolA7kDZtRtBskYQne4GZM7ypUcRxGcDTJDW5NLpA2JBIaDyT+Y
         YxWh3qpRK5jurQ02GQMaQiTadTFkwGH0ZRIoIDrEHRbuqFKRdXBy1jG2SFf4iQrYJPRI
         SvU5kwLf2IWZO0iA3v9etFtZa5QbbfkIWWds+7mBNXbXY/OC22FbYXlMvYIXNE2WnXia
         rbvRGhHLPHzkQS0N2yNNMRhk7Gd9igkxxJ4toNMfU6+9zwhPdWnLDMOkfO6IF9KemJUZ
         l7k/X/Y4mFvSmcsFwOogeOPLFat0a+HsDYEjKG5nTQs0yjpG8yTCJVcWa3Z04Hf0QIlr
         f31Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QDs0WHjK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LD8vWZzEJMxBonhd+/wvKoEBgJ/5NG+LLrtoREuP2pw=;
        b=U5jlWjSOJJFkz4+hxKFa6NnyVEU1WbVs0Gkxllxo1GnqMsMzBTD2j/QmMbV/OPwX84
         oZqON+9QSMM7hrkJn4OL4IOGz1BdATtdoNHGhDbErdnRpmqehKPaZA7HxRykO/9sekEL
         c+wKmMJFIOdHuieFlTIhs8pMySFSL5nX0G/Qedxoi4VzW6zBH+QEojoiNmvJPbjxTWDB
         6bxRJPLXDEibaXIMc+FC8/LNzD8TrLOEmXJFaegWkXtHqX87DpVDOHxtlnjQEP6ssgqV
         1KEudC0EPWUswSp6zTvycYBtblnVWO6TFB7E+OfLWSHszmwOJ7Q6xFlzdItfrcfEohhI
         Tq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LD8vWZzEJMxBonhd+/wvKoEBgJ/5NG+LLrtoREuP2pw=;
        b=EUtGpd1oHkPW6VwfQ6DllLLQuZ8IsAp57I3fCxx0kIw+jQZHYn8o7ltUgUXZiwe/dA
         aJK3xwvTMAnCEvYG8xLhEz+gNdnuD962lWZVSQOqex8/qdlq/J69Li7jd8y0u0O5UatT
         J+/fXyE7Mg00EiRQJRaJoDfpw8RZtSsyO/FphwQv3Yob3374rxHJ6ehU7lqUYCkQravn
         RGSPbq6QUK/n0Rhe9nUrpneToWcSzupcwRslhphMBJ/JV9e/dTTovPSLE8yfTVVTrxmE
         APw4WWP6bG1DtM22APq2kqGe9X5euhZiAHFcuB5QiM4bIG5S++N+Gc2N7KHisgBmWinS
         vWHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJrbxOmGZ24ON2O7VPcP+JvDHe22STvKqJ/kBkUiKFvUJ1smZw
	A8idqmGgV1JUpYUH4/78kmM=
X-Google-Smtp-Source: APXvYqyg8bi6O1SzdRduEve7+DWEamfxxgezbBaNU6rS5whKVPGnwI4WfLjmVdY9hPJOdH4tNvZYUA==
X-Received: by 2002:a63:1242:: with SMTP id 2mr20762646pgs.288.1573354009791;
        Sat, 09 Nov 2019 18:46:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e954:: with SMTP id q20ls3264054pgj.12.gmail; Sat, 09
 Nov 2019 18:46:49 -0800 (PST)
X-Received: by 2002:a62:6385:: with SMTP id x127mr22663126pfb.244.1573354009459;
        Sat, 09 Nov 2019 18:46:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354009; cv=none;
        d=google.com; s=arc-20160816;
        b=VBDt7EsYGtB55PIoajZ0ABcLsux25ejLHwKUvlZe/PU88VzsENAG4VC33B3RRaTTRX
         XQ50PmjJcx06NMx2t9utBA+/05wwpyK+0s9s8ITjyO9wkBBfTXP+C3lJ4OWD9CpG9pFI
         5rhKx9wruIFHSAqHkZteqzO6tjcMfVEyvv/vPAXubwX9vjYKEp9w1W2oCrUfRdffOn2m
         C7FeTRRRxPWZgO25MFUrBK8i2cLRyvkz0MjAkh7j/9r5e0LfbUI9YYCajhy5V8oDr6yG
         a5i8MxaNaS1zGRYcAkriaNYnpRwwXvBhB6ctH9JHSb5YAveDcAkdzm2qI6ylnd0/4fVJ
         aoFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fwn6dRN278/O5mx5cRtGxzBYT0N5EWUolhf8iEovSZE=;
        b=A0RM2qwvXwCIER1jUZgQ7caqL1ejZ8Jw0ftdF5WO4WuE75D0WgOxmyVgn3aIG+9H3M
         KdHL6KC3mOICA+rSkpyJPB9b1eft7Uy1SPvzRB1v8h7kakb2ILyXJ/RwlxJfB4aa8osR
         iDE240nmtd6GY/asq9+Ih3C2QtlyoZJsKyYOp7dWp5R4XCV8vOgdraZAh6sxMVYhueiE
         fVL5tBhI2D/LUt+DTlg6ukZdRKoDU+mKXgsQaURWvzhnQv8sM5f3zlNFsKwwZ8YKlLPc
         XX3rCJOzpa4WYtX6RNYcl8U5S23qERDtMm4wyEqfAM6zKIOn158mrM1xh93ZLIN1j79r
         ieVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QDs0WHjK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si721233pfc.3.2019.11.09.18.46.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:46:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 769D921850;
	Sun, 10 Nov 2019 02:46:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-spi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 035/109] spi: pic32: Use proper enum in dmaengine_prep_slave_rg
Date: Sat,  9 Nov 2019 21:44:27 -0500
Message-Id: <20191110024541.31567-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QDs0WHjK;       spf=pass
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
index f8a45af1fa9f2..288002f6c613e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024541.31567-35-sashal%40kernel.org.
