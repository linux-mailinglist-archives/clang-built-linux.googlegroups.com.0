Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGXSTXXAKGQEGHX2IGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id AF259F6254
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:42:35 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 187sf9145785pfu.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:42:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353754; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjtHBW1gLeJphBJl/Eqf6xn3GvhVi54Zqnex2KauLrvJVGE/4zeJhaMhRKJ0igUWew
         Kz9af9qwU79HSZczD8dbLlM03LumcRpM4vIKEKGq/l3Z6E77zbxFTSgQ9x0ULsvbyhds
         StKkwTgQOxrHAJ8YTJ7zteEbdqueivv2kXpQfLdvK/2oDVBMbf9t4MSx1mTr6wdacrMM
         2+LqeFlWMklsKy18ZhQyuXSeJbr6Hcec/8Y1hd3rkmjevg2M9RFqd9vha0x6lFEnSEwn
         w7n14r6BGVjC6lK85Swxar3ITda2thWeJywJMB0pBV5rVDu7IdbbGdWJ+iQ9TtcRluy9
         kPTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KseXtQjEassEE9SQ6EQm7iMKjaD7IJ5brZuOkf7WP5E=;
        b=dPplW2V6dhHLV8paNAg9fCsO6leRZ3Lv/Ub0SjMtw3mhS5bUkx+JEx+zAxBfiQ4b6O
         tHyUYZjKaeVlMsfx3E9Gx0aYZycuFT0qZh6r5u6wQWfqe2wNsB2gXK12kiOUP+uGuG7U
         n2VWjsnuFtcXlvtWrQwcKdtoO8oMvNC2Kmw433nV65+corlsezcHE7yVoZHgq8UqHi9v
         n+tk5kX9kS0asD3cTRFKB7B6WU3WVN8P3D/F4nPPgwyLRpauZ8Cssqco54oQe2z1KZOG
         r5KpMNmmsPamF8TCBL94nlTkZsZIHpkdHtdrmfRaEC8gGjIEGAFIAU0K0EzgBT1s5FFS
         2qvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iT7uIdoT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KseXtQjEassEE9SQ6EQm7iMKjaD7IJ5brZuOkf7WP5E=;
        b=j/JBmshpG7CP/9/7kxDf9FnemT+b5CCVyg7xx+9nosswRDGlXaKkMK+uMvtwUJnTOG
         Xa1gVp5TYys3MLt+QkrpRcW1Jue8Z880M3VfiXn1s2xiaAcCJIBhadfF2xFtDmQ5VzjA
         7zemyYDLDHRo0Z3neGiHIur5sC7SFIqL0SfrpV4MGMXML11znDefcC8ChhtC/XYNToMG
         IlSf+lqNfHoiYhi0gPfOf4aAj/qxYEkTc4vXAyVYORUEpr2dQ4ZES5IGf0HhnbHKF+sh
         vvDPWXUbKk6GqIV4OoYkAcbRhj7VetGm3J6GGDhdRxMXn7zN7Rl23yAgg4uKL1uIvIiK
         npZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KseXtQjEassEE9SQ6EQm7iMKjaD7IJ5brZuOkf7WP5E=;
        b=CmIgojwSJ1D6q8aZ17+ceiCCZCD9d/owsFzVn24AlKWrX8vl6GmTtQ3zx3TzTLaRuU
         hPduHiVj80wWI3aNF9mux+mxuC00uxwAsekeUJOQ8jXtP3hSqiHWW3DfDcglaKTspuRu
         K+YQ3DWO5SY+zW6XdIYzzzBdL7zdtMdo9tVVi6PI3AucpnAXmMVzOr73LOkoesFrL5QE
         IB8QB7lj8qQU6OWOLuAMlO83GRXobSf+K90MOdXOGuRQmmQFLVJ98EObJuLqbNBT5fYp
         uT0frIO7L/hRmAvOfMNFjxrjLNWpq5pEWCQykHrQPBY/t7cJSvs+MqnzlzopUbxw9wci
         mDyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9qI+lySnWXd9NHWnQayoZpCoQ8VHrVvWG/b0qa+4u5AhMEutF
	D5WRSZevJj1TqqmQLj81JDE=
X-Google-Smtp-Source: APXvYqw17vkc7ux3kAWDd34FEoJqn9VQJaoEnGkG6rDDyrBzrsWZI/i1VQU8+Z2W3Hkxy6FFM7N8fQ==
X-Received: by 2002:a17:90a:2470:: with SMTP id h103mr25840565pje.12.1573353754395;
        Sat, 09 Nov 2019 18:42:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e517:: with SMTP id n23ls913782pff.5.gmail; Sat, 09 Nov
 2019 18:42:34 -0800 (PST)
X-Received: by 2002:a63:4c57:: with SMTP id m23mr21805063pgl.207.1573353753949;
        Sat, 09 Nov 2019 18:42:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353753; cv=none;
        d=google.com; s=arc-20160816;
        b=ELBCC3jqjsIQCXXbqSAzpH+L8DHqPNv2jUAtMmSd3Jmeh8bdIK0YhtCS7jqCjJuVJ7
         L0eOSU0v5inTvTRsh/kUkmnjqqMDwa/tTOBj5msq5FjnCVNlxsm1D034jvwG0ubs7Deq
         rivn2akxjwrdybrayECLxxPaX+DcSUIxdbSV19V9bpszYc5q9PusNyhEP1Kl7I1XAyeB
         GL4RWL3TYYofsXqxuJ1+/7zXv/hzOyw096mWw5M52BFHC9Sk7zmMhQv6ZSL10/mSM1MT
         d6iV8fAVoLTVaOgeIE6x9kyVkduqxL4BA/rueo7t1Oo7CxAmQ7yLkAkj4Jf6re+pUJD/
         rmIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fwn6dRN278/O5mx5cRtGxzBYT0N5EWUolhf8iEovSZE=;
        b=q/XmKCmbmsG293E/YV9yWJnIOmu2plnhRoW7OPMRmYmrLaLHawBll3FBK2tQ8Mtv3z
         roVSgkNFcKM+Z3oiuCtmKOCMBSKiwPMUApIwiwL54lRxmLpO7F6Cmmw1ZKd3qTd7bnfA
         V3UWtIjUO+SvGScUWgw5uSNnWHsqzQE+bwWIblwe/50Vxqz4Zf+r2t8tixtrH7slXzll
         RThtw0v5UHxDlUZzx7uJlFobU0T+w/JUes7JWJRsi4+nniT0fSgrxbHAIUcLPYhbB61b
         dOn8YMUWDknk5UXIsHYT/LuWumhhGFO48vbu+MOIt9OWWhbzZf5ilEP5s9CnQfl4/V8q
         hF2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iT7uIdoT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 102si11278plb.3.2019.11.09.18.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ECAE221850;
	Sun, 10 Nov 2019 02:42:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-spi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 069/191] spi: pic32: Use proper enum in dmaengine_prep_slave_rg
Date: Sat,  9 Nov 2019 21:38:11 -0500
Message-Id: <20191110024013.29782-69-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iT7uIdoT;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-69-sashal%40kernel.org.
