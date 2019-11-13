Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7OFVXXAKGQE3XZNJOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3A9FA168
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:18 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id v92sf262950qtd.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610237; cv=pass;
        d=google.com; s=arc-20160816;
        b=M3m/C/GDjn3zQFG490IKhb0M3RXeP7jYuyBLRHa604mgoLDja66XrhR4+hUmM7w5NA
         jVeOJmAj0tOJASMu41Ooomy+TvbQfj+6BPzTxn7St8EhoPAzKP43qeNdNmInC4KkCnef
         orMkFPU2oRKtX16JEldhjWSfZCoFuQaHg3Qa83VNXhzBl5kITG6Kflb1jwSws3Pz+3qk
         30NXh51ev1hxtspqkTwIBzcr64FKtjtWGIWHHSt8KOpuLgBhR4o0rGz4HRKa9PoPjX9/
         YTbAMOZsJ4QAX5TcLWTZhJp0HRyamkydtVNN2u2Oq/oy9nB+Ot9tVBkZxO0tNpOZrXm+
         JyfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5/iyRQNwNjrn8un6zmqf0l7OSPXru4/Nd+CaI5EkgXo=;
        b=zxLTQO56q/DyG3Vq9qW9oZFqqrTPOT/dc3aQ3Rya/KSklHR6Fojss3B0k2QchxheF/
         y1hStCn5YfWxTO+3gK0McW7+CthvBfrrf6sIIddBnuaHBQPHzAGkM3XgOk6bXgnn88+r
         8OtRgthXcSURLLEfK0LUuTLIgh56vSmZZgWz4KF7j1F5A7aVFEqS1bINkwn/6+lI41ah
         4O+jnqbCMkXIqSdhFokxAL0kZ8KT6K3oxj4FrUeW6HheBrnq65UESYyhOK5kujcapeil
         c/q1hU8QS3d7O0IxeN/IH/g6Xwc05/TuqRa/GHWzqURFn9g3LWwTDSkD2uJATIxnkNie
         24dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JJ5xYXxs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5/iyRQNwNjrn8un6zmqf0l7OSPXru4/Nd+CaI5EkgXo=;
        b=LPL7X9yEfRbHc0sT0LdHyfBDT35gUSKrzyO24Gxm9VEAinjtoIyol4sbi7k2hsuD6U
         eBxLDqg/hfKPeaRaZSv7kGybxHyv7oyKQ2oMFm+iGoOWxXvZECjdl886RMnXOM5QLJxr
         UwMr4Wpw/Bj6P3bmtjqINYLL1AzKG9A/BgrbQsHY2vNMMXZsVAPpPcGRykajHt5Spyu5
         SwqOTtMH3RedAxACZBw1fB8a/rJosUz8xYXnqie1n+RKssP2boGMgMADKhaAsENc58K/
         TmAMgmtrxxbLOYPfXWA6k/uDVyGnTEXlnjI9bFzwgp3YtgpPIJNbOfVjmOLSW6V5d2Uv
         nOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5/iyRQNwNjrn8un6zmqf0l7OSPXru4/Nd+CaI5EkgXo=;
        b=SOeskOAxd+WOjChDT9OTsTW9DDBtCNt3SQ+PCSnxIP4JtfXx11eYgucyP3a6advPhW
         C6OINGea3w7e+DwBi8nMI0fcebPdGto7PqBsQu4lfcL7vOBcsUGzBtRhPAKWGZH/+TR9
         sBE3rpFLtDgzu/yDa1bUJq+9r2jGrL7ToWF+esHtqqDoPjQvqnY9T5FX60KvEGljhOQ2
         OUrYTIqxnaI85sZBLjSQ0J1RLE/OMkqBD50ZwcbEat1i8upiyQgGmsd/SaMv3L5Kzje0
         Q38C8KlQMoIwxijFSeRwnn31yFOUNV4MDTNTcOon9ClGzktBeXGwerEBOPfTUM5LdUv/
         lc9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2fubFwjeXtVxcoEwCEzwKeoErUglPw2wpKR23Mp/TOwWbQCwy
	rof3qpFJusmhR3i58KWADwI=
X-Google-Smtp-Source: APXvYqzoCyhXA3iz5rJFEoehievJOf9RjEQYuWut1Gs78PWnXzb9hoXuIK1jeo8NBwn5uAE/moLQFw==
X-Received: by 2002:a0c:ee26:: with SMTP id l6mr693283qvs.71.1573610237145;
        Tue, 12 Nov 2019 17:57:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fa06:: with SMTP id q6ls86658qvn.13.gmail; Tue, 12 Nov
 2019 17:57:16 -0800 (PST)
X-Received: by 2002:a0c:fecc:: with SMTP id z12mr652853qvs.189.1573610236836;
        Tue, 12 Nov 2019 17:57:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610236; cv=none;
        d=google.com; s=arc-20160816;
        b=aY1iWk9xTfO1irM0C/ot7HSZFYvC+HBS07U41auYGpgxqQQvPBX6iXNylAzWJOHPo1
         hS8cM0EDMU2xPcuk31WqFD5yVZEn8po4xKHvcjPGyG63h+zNsYZSpO8eYb+nB2sT0bhy
         BPCK34NMqHZlTcxFvJh6sG8FSXtmDSXS1290K6q90eZoHIyeHGVVrYMBglqCucSGsyYt
         9QQYj8XEZdJfxzjOEh1kHSFUP+ZE3WhzGM5MhFrWYBtp41bcrLumZQcYOyzGRWCQBWtV
         w6JljDZUwvvacA/KyONarUcsmM3mZX9VZHuQVbTyMzB5eUErhWP/Meqqkpn1JDIsjwLD
         xnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZZc2lW9+TdVzWRuCHtAlZpoCu4GARgWAYE1QxxoCkKA=;
        b=mfQy/zDdNssqM0a4d753x/mvl+BQaWQXzgylNxwQT8RLKxSuS7Q0lIZ4wB8Czd7eTa
         XECS4FDA65GV8zCN70rByatjAaShjK5N8/Rh2HauDw0rkNcZJuDwQa/KJ8B2zCF94GPF
         bdHQJEy2o2KP4Hy8Fn9CoGvx6QrXNDklZgbIUC9BWO8cjsf6Qk1di6MnBQO5WfWmqdl5
         FqiX3b0cjeOC2NwP1dJASk9m554w8ZYqX2ggbAM3GDPDXvQVAdeK/CXMS34uOwM0e+27
         oWrlT4q98jnS1a7JW7HQG8e3zbfEYhjzagUp1MJMAyibGG8DgONh969/7qKDP0skzvQ4
         C/tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JJ5xYXxs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si49911qtj.4.2019.11.12.17.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 07BFC22474;
	Wed, 13 Nov 2019 01:57:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 036/115] mtd: rawnand: sh_flctl: Use proper enum for flctl_dma_fifo0_transfer
Date: Tue, 12 Nov 2019 20:55:03 -0500
Message-Id: <20191113015622.11592-36-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JJ5xYXxs;       spf=pass
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

[ Upstream commit e2bfa4ca23d9b5a7bdfcf21319fad9b59e38a05c ]

Clang warns when one enumerated type is converted implicitly to another:

drivers/mtd/nand/raw/sh_flctl.c:483:46: warning: implicit conversion
from enumeration type 'enum dma_transfer_direction' to different
enumeration type 'enum dma_data_direction' [-Wenum-conversion]
                flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_DEV_TO_MEM) > 0)
                ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
drivers/mtd/nand/raw/sh_flctl.c:542:46: warning: implicit conversion
from enumeration type 'enum dma_transfer_direction' to different
enumeration type 'enum dma_data_direction' [-Wenum-conversion]
                flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_MEM_TO_DEV) > 0)
                ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
2 warnings generated.

Use the proper enums from dma_data_direction to satisfy Clang.

DMA_MEM_TO_DEV = DMA_TO_DEVICE = 1
DMA_DEV_TO_MEM = DMA_FROM_DEVICE = 2

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/nand/sh_flctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/sh_flctl.c b/drivers/mtd/nand/sh_flctl.c
index e7f3c98487e62..43db80e5d994f 100644
--- a/drivers/mtd/nand/sh_flctl.c
+++ b/drivers/mtd/nand/sh_flctl.c
@@ -480,7 +480,7 @@ static void read_fiforeg(struct sh_flctl *flctl, int rlen, int offset)
 
 	/* initiate DMA transfer */
 	if (flctl->chan_fifo0_rx && rlen >= 32 &&
-		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_DEV_TO_MEM) > 0)
+		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_FROM_DEVICE) > 0)
 			goto convert;	/* DMA success */
 
 	/* do polling transfer */
@@ -539,7 +539,7 @@ static void write_ec_fiforeg(struct sh_flctl *flctl, int rlen,
 
 	/* initiate DMA transfer */
 	if (flctl->chan_fifo0_tx && rlen >= 32 &&
-		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_MEM_TO_DEV) > 0)
+		flctl_dma_fifo0_transfer(flctl, buf, rlen, DMA_TO_DEVICE) > 0)
 			return;	/* DMA success */
 
 	/* do polling transfer */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-36-sashal%40kernel.org.
