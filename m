Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWWEVXXAKGQEML2CLKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEEDFA102
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:54:35 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id d144sf485428qke.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:54:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610074; cv=pass;
        d=google.com; s=arc-20160816;
        b=isBCUzWRBrgWWdDttIrby2iMx43paTeCTt9wEy2+pa6lYK68a5SEd3jLeVxF54IXVI
         NwNT7i/4yrWaC3Rb+UtJx6ZYiFLkN++ZmShOmjkkrltc+BpPndH+LSB+d3v6Lqo4J7TZ
         XVYR7L29hctmDutgpe/zWrAM5j7RVmY5H0oGE33Vc6SfgPnlr2Gid+W2TIE6Kh/q4pec
         1Rqzxq8zyyAUMN55q5SgfPN0+3PA9sfag4fn9MxW++BWViYPCnCi79wZ+v8CzZTi5K33
         kbGg8NK8MfpLWKFXaKRrirE5l6oaZaZggV78D7AP2iAfrvPeMoLFPA3cC3QXD+aAl3A2
         LJMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4mxiDzvw0cgLBEyKvuBNWEawh1ebHHSkM4qZwkAAWzM=;
        b=aHXgD9MoOznY5BIpRHZO+czK0X5wadyP3Qj9Yq6N5eaddfVnA9cAjtrooynTUzjcuu
         nPtAJEnF69+GxdOwhgC8U5S5zRmzC2WK0bwgC0fhz8WzyE91l4vDT4rqW6iL9e5jkBY4
         9eC0Qt1SoDNj66Sgswl62H1hF9mQBmMpLUPH7xx8ySmZ/byJuxVKEYG4fzXJlsryCvwu
         vi9M5zxjxIcvjNLa88MnbcScZeD6GyhjZl3QihOLn0f41WW4yJIOt1e2jZNbYchYq6SK
         D4L3SJ5sT/2qx3aCY/6ip0wm/uLRTRSrilyPe/Gv5TMcBp6GpaaDio9CFNofdyxzUUdn
         wfsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RY93mNUV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4mxiDzvw0cgLBEyKvuBNWEawh1ebHHSkM4qZwkAAWzM=;
        b=qG1gVONYdP6d4Bd7AUAfPZMMzbo+xXq1faaL9d1SoccVFyeb6/a+JSfM0+ue6mnPJp
         wDo64GfkEjhAIF5vcSSVnZyXRLgXUkW9zwOLubyTb5sLFlUYljpIfFvSNeLkMfCjd27e
         +ZHLuswIE40RNtXLkuGvLxjFMjzxNbqFqMpEXw5/v95qTzK1vXeCUiE6p9lHsqnBiZ17
         QbqRyOCxWzF0rXLx5WPccWU6MN0orKG1nPEaYZ/hyBzFF/JrS4q3uz3sB0yYr/4AvmPU
         tPfxBk6ak0XbMchUHzkvNghDTmGFCoFC6V9fZi0BlOwbjCkX8Kt4NxAGBOwSThR8qufA
         koXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4mxiDzvw0cgLBEyKvuBNWEawh1ebHHSkM4qZwkAAWzM=;
        b=uK8lbxIIGoNW2O6lD0C2X7tfFiomyj4IGR5C03np0xwhftiritVQsxgK8Cf01hCfxv
         2zTAtyP5IhXl1lj3ZbG4aPmRSpoy9DwhEoHCcvi3LFRxxg0qkidzOdBls5HGCWFn4qsv
         DMvuFqbwmEcHjabdX9Ah1QScKLRPibFhFyp//A9V9g7kWlbRS2xDonKvDwKCvP4uLJCi
         oA5yOpTVW5g/bmq2hIiU/BlmM38h7MgMLcFpeL50LMh11XNiRALxbEQh2n13ojluBy7q
         B6Mxgy748bGS2oRJ1TYRBvpkxbJ5IPmhKh+NJtA83Y8x/bLOhVvbZ55iqB3d2hah/aZ0
         dr8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV69J/wHndyoZ7awiRnvvyGW/bAZh2eYdGA2C4dYbkEw+r/vxIU
	3PaAa4gAqO2yLpjUmOeXJZs=
X-Google-Smtp-Source: APXvYqyOeDHms4lrkGOcVt68Pzzk4zvb5gt8YxpenEPEKuX2RPvt15QmZHgwofbNecjHx9xYXTIpYA==
X-Received: by 2002:ac8:1ad0:: with SMTP id h16mr390953qtk.303.1573610074410;
        Tue, 12 Nov 2019 17:54:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a5d3:: with SMTP id o202ls166957qke.5.gmail; Tue, 12 Nov
 2019 17:54:34 -0800 (PST)
X-Received: by 2002:a37:650c:: with SMTP id z12mr498202qkb.130.1573610073989;
        Tue, 12 Nov 2019 17:54:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610073; cv=none;
        d=google.com; s=arc-20160816;
        b=aMFNAlzwDToXRBSoNduCVlRQv5PsqastRSL3RcdPAvHPB2apm66V0gkB/zM2VB/y7e
         o0qzD2q5YEjFLSCHzzBKrCw2CHAtREsfmT6kDGmAQxFxVmg6rudUKWPnBWNK4oe0o0pn
         6iA5Qu+crjXNiXJfn16XFT8PoI67xnD1Y+/wOtEfslrWotuZmQJwZWcckTpwgFl0v/ez
         wIoJsummHQ6YyRj1hLbOsArGNl5ibSU+8GcT44hjDDmqejv92dPdZfifgWeoiNKMz72/
         9yq5+NOL/ZsIs+S1blvyeLjBcCZIRgdgRE5XwzBfAHVP4mCYleJ9D6UyihOOq2YrHuan
         lQcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n2dp70E99jkxVSrC1MVEKFiy6dcZfVwX/jCrQf9z2fQ=;
        b=yagfwtEI9vy9+RWbilqUgydhO7WDzJSyCOQdbzAvNIVC8pE+EatAkpyxo0CzTD2MA2
         5cd7HnH71t6d7jR7VKyGiDCDxbWm/z2ZgThXGF2nn7nNgtaPDgCmRS/syfb1kibpMkLz
         Y8PnQkfrbjS3pHCfLcP6JkWQujitfZOYKDWdloAdPyF0qpBD7RanukDfmYPMQVEhsQQ5
         Id+QdrAUnUbtc1DB2MqG9dF3pXRkibQFzH5YghxfA2x9KtUF7eh/empKXplaqrS2iior
         TnY86YS5n17c55PIk11n/hcg7cfEGUhe7IWI9b4smYZ2wHTAE5ZSoCtlzFJK1D98DgX4
         PnJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RY93mNUV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y41si47294qtb.5.2019.11.12.17.54.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:54:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42FE9222D4;
	Wed, 13 Nov 2019 01:54:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Boris Brezillon <boris.brezillon@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 151/209] mtd: spi-nor: cadence-quadspi: Use proper enum for dma_[un]map_single
Date: Tue, 12 Nov 2019 20:49:27 -0500
Message-Id: <20191113015025.9685-151-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RY93mNUV;       spf=pass
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

[ Upstream commit 900f5e0d8c9edc5dacc57873d22aee2ae699a8e1 ]

Clang warns when one enumerated type is converted implicitly to another.

drivers/mtd/spi-nor/cadence-quadspi.c:962:47: warning: implicit
conversion from enumeration type 'enum dma_transfer_direction' to
different enumeration type 'enum dma_data_direction' [-Wenum-conversion]
        dma_dst = dma_map_single(nor->dev, buf, len, DMA_DEV_TO_MEM);
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
./include/linux/dma-mapping.h:428:66: note: expanded from macro
'dma_map_single'
                                   ~~~~~~~~~~~~~~~~~~~~          ^
drivers/mtd/spi-nor/cadence-quadspi.c:997:43: warning: implicit
conversion from enumeration type 'enum dma_transfer_direction' to
different enumeration type 'enum dma_data_direction' [-Wenum-conversion]
        dma_unmap_single(nor->dev, dma_dst, len, DMA_DEV_TO_MEM);
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
./include/linux/dma-mapping.h:429:70: note: expanded from macro
'dma_unmap_single'
                                     ~~~~~~~~~~~~~~~~~~~~~~          ^
2 warnings generated.

Use the proper enums from dma_data_direction to satisfy Clang.

DMA_FROM_DEVICE = DMA_DEV_TO_MEM = 2

Link: https://github.com/ClangBuiltLinux/linux/issues/108
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 0806c7a81c0f7..04cedd3a2bf66 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -972,7 +972,7 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 		return 0;
 	}
 
-	dma_dst = dma_map_single(nor->dev, buf, len, DMA_DEV_TO_MEM);
+	dma_dst = dma_map_single(nor->dev, buf, len, DMA_FROM_DEVICE);
 	if (dma_mapping_error(nor->dev, dma_dst)) {
 		dev_err(nor->dev, "dma mapping failed\n");
 		return -ENOMEM;
@@ -1007,7 +1007,7 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 	}
 
 err_unmap:
-	dma_unmap_single(nor->dev, dma_dst, len, DMA_DEV_TO_MEM);
+	dma_unmap_single(nor->dev, dma_dst, len, DMA_FROM_DEVICE);
 
 	return ret;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-151-sashal%40kernel.org.
