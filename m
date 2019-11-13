Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJWHVXXAKGQEUQZD2HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A0FA1B0
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:07 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id i13sf689578pgp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610406; cv=pass;
        d=google.com; s=arc-20160816;
        b=PhZ89a6Va++D4iQDMkPZpO9/KE09rANrj74RAarQoTeYrX1gCci+HZI6n5KadLvtlR
         8cHf+20TO+JLwaxFQSJ+Yy+4F+OM5o8xSXp0867zwKY+OFznIm9pm+PnOYKwuc1AWYif
         K83+ZYX5dxUGTnkn+1xWf4pyXO9eCExhTa+URNt2XH/7AaXHWvl+LL4RGC/1dBapK0Ma
         GUcUAp4UrD/ZCFUd//snd2I1XX28d1/QPhPtySIpuGYPLOxh5YjnUIKE/3UtmXxhxvCJ
         OrvyaVvykcCQBluX2PHpryRDyGOlisbnDgruORApYPxyiOtPFucqVWbGyWprzhBwCNkk
         03kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mQWtVii3QUHEIK0iYcwhj44hkgNHn8l9g9WplbE2vas=;
        b=kFbv3yrTLk27oIdH1cjsbxLrWiAD/DD7VwHHQcnLt916pYbdWPQIx1qW092nG9b8nh
         oWvtoFeaRhVuIpl/G5QWPiF7UgPmavSsbGvieT0dSVtPJDoT2qRJpzyhUNif85mGuBXw
         RI9FMehX/QQF0bw399zunTXfqhgS2ufrQEj3F7Qnf/NEifx1xc9uzbvwG6GZ2XMs/cvL
         OCSKKq6NM7Z2cxWzLiD6szthFiMjdWHlxjBSGegxUgDZClegAZGVADN6dMKckmiwA9uD
         uUIfjVxQjbY+WASNz5u8CkSrw1Z9bI5P9XlFVQnuXOfJKCzMCamEjngqeV+sFmRnB/Qd
         4tuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WfGRZDNR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQWtVii3QUHEIK0iYcwhj44hkgNHn8l9g9WplbE2vas=;
        b=HrTGJpLkwkiNnr8cwQELYz0TZ3WLZ7he5rZ4CUiINNfzg1QpTGVij9XF9CaVQFbXNO
         SjxR+AtZ10IsB7LJhZW1HC6RKiBN5nzw+f8m28rpYy/YbNmIbZArZwfg2Ku8WgDNdv60
         bGSTweJWoMGwYyQscFeA7/GGhYkh37XKYtwxA9AU0RC5uaFVmjR8z/F6iNvsKZAPMmIz
         W5Mm+ZJwlJ7/4LRJMMIiqvuuFL3wz5PWbuFsCHp4rn5FwN5EOJMsYpmtfPU4RUcE+7j9
         F2poMKeTdRPetkbbHRObyr3MCG50dWXXLqqMjYFP2wB87YcB7dVybYPj+uezVfTqqSJG
         Dvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQWtVii3QUHEIK0iYcwhj44hkgNHn8l9g9WplbE2vas=;
        b=hSa+MupqlV3Yj/1xMQUt7QF556bqTLD2GLdd0s8kfw8eh9n+t8XCvvQpIn44BQFzrZ
         JkbjEKb6Hyht0FFkqmITx+9ZTs7iOKVIwDuLWnICaB1eUyjBUdFG5OJmpxqylcqLVMM5
         LugqsMgivIoFy8u+qadDVjOZ0VtjvEzM7KZwYEW7QcIgdKviK9//KRuogU5c744OB8yK
         qsdkJ0rzeEeNGOqZrFrqC1Nl7OtG+Tj9HHrv+EdqSjNSIqPMP45sLQyBrrYTgpRA7HDC
         YTOSjpXyNtNyN1FqUvdfIdef1hXtzs4loeixUVK70OPmLJX3FVUo1e5ayINXZIn/5sUL
         zXhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgqZUHzWFVJKklehRWhOJzMmhzfcCkwrIxImQ7CJ+8Y+Vh5bVQ
	gHffKl52EmfUNrtfVqCg898=
X-Google-Smtp-Source: APXvYqzHqssj3gZxfCngpGku4VQxdPN+pEHPjy/r9r4oP7YZM5c5po4PPeaijJMFplsgkoy3QFCQgA==
X-Received: by 2002:a17:902:8f93:: with SMTP id z19mr974001plo.217.1573610406353;
        Tue, 12 Nov 2019 18:00:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4342:: with SMTP id k2ls129231pgq.6.gmail; Tue, 12 Nov
 2019 18:00:06 -0800 (PST)
X-Received: by 2002:a63:6e82:: with SMTP id j124mr729697pgc.115.1573610406023;
        Tue, 12 Nov 2019 18:00:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610406; cv=none;
        d=google.com; s=arc-20160816;
        b=cFlvWed0tpgNa1gqYmOiKyjByAV7vDkFI0Gpx/YvwZLpl7apJVlMhMzVhDUve9hHxZ
         idmD/7hFgKYFrmbT9HQwmXBenpMFUUC8xCP+/cOUAWqxAuwVfsXxetr/qrteOAq1/dvr
         dP8VFUXLRBZDYfW9z8TudmIcbaXOj8+hoLwy/GN7oP+vQiMJjK4SQ9MuzH5UA7hwbqgY
         RgAHwA9rF2OWtXZn7iB3R05Y3QBIRWFdwKgbF4n46zL75P/2p7fYaQgLOIO+//gN1UnD
         wi6fyOKhTeB/VL6hUtVeU9RYAwOhL9zaR6ajp22y19riVxlINmcQi7/v1he+3+VbFIWG
         ROsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gV+75BnTGexz/EhFy4RjpCXSeGAR406NxIG0GrugI0g=;
        b=w4F/5Gp2SnmdIUPlX6mC1R86mrmZr/S7xCdl1sG/5MJLYWF0zDpvzgUkuzCvakhBQe
         jLNlBGFB/CQeRnSTVx1nNM3rjYuNhZx2OOPcBSwG5jkrzQ8xtRl9TsmQ6SvAUa0LHYjc
         lITlW9VKwR7Vcp3fpKgoZzW03rhv6mYwZ6AqO788SONTGAH4rJgG0Ut4St8bUKROqcSD
         UVmXRAgIFvXfH2+9Z+n6BhodfFhF54ZyeZziyxfax0ROoj58fNpl7mxRbEFK7T3ErP8S
         kvbyWLkOH1hIt64/QDbdLrz31QeAodUGjGeZ9iW5mH4GN7wyXe8wuC/gtCpSgCxhToC7
         Klbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WfGRZDNR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si17066plp.4.2019.11.12.18.00.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:00:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E6DA222467;
	Wed, 13 Nov 2019 02:00:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 21/68] mtd: rawnand: sh_flctl: Use proper enum for flctl_dma_fifo0_transfer
Date: Tue, 12 Nov 2019 20:58:45 -0500
Message-Id: <20191113015932.12655-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WfGRZDNR;       spf=pass
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
index 442ce619b3b6d..d6c013f93b8c0 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-21-sashal%40kernel.org.
