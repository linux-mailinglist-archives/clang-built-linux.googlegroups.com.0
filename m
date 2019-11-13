Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVOEVXXAKGQE7RXPALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C3395FA100
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:54:30 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id o7sf653250ybq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:54:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610069; cv=pass;
        d=google.com; s=arc-20160816;
        b=pB/KAA6FmCdukmpOn5UkPHzoHlpbPiEzCvg9yxBmVPuTLDwAi37M3KKlWw0nM1Iqoo
         p3KVgW0tfkBVwAuVUWdUTs6UEi5yy1ic7iFjjqQDs8VRPTd2iFVgUlvxHQphPtPN63FK
         Tt5qxLeIF2ZaYPrdJBNTQzw1HBmQbA8xxNjMXT0ud32jMQv3sy2zZ0PriJjk7Kp07yRe
         Ff3z6nOtPR/596ApJKhTwynQ3zmMO4GVRf5RmVZm6pRb2I2IqktSN4a8wXQJM2uM2Log
         HF+sFKokbFPpBKqcGbnblea0kguiNNufqrrJ31cNXfbbragwqE4p6P7ICtJwFw98CjjK
         NaYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bfzwpO1C/dU5OZDUjBrgRUr90FD8skSRJJcZoc/W7Ds=;
        b=LbIASS/PiM5uVpyHquZ0Sl2FY+X4Ehq0Iupt5qbHjBjiuoIQW1jQVu2SBaeycson/m
         gqhFAdUKiC2C9QID/j9RulWAh+b+f1p/xpumOgSwRbg9/Zz1C69BJ2nJ3IJKg5r6YxCR
         W21x92HuYwwvUyNZkbJ0x+3ws66CxZN4AWByIKVs32LnWexRYHKD0uZoaQejgoDbcSsx
         q+wZOmnxI6BsNiZQmMgIfvcs/HLzZodFTGmi/8hi8/6IwzvA0aML6hw7tG6dE+IPN0ec
         Ua3vOCTDxA0SM9IU0EzTD/2y78QTg02XFOnoVd+Gu07me7dvWQIPiqhiKRQm4c6Qyrxe
         vGsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a0GAc63V;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfzwpO1C/dU5OZDUjBrgRUr90FD8skSRJJcZoc/W7Ds=;
        b=TkX1rvloF5g7KKuqJT5vSMaEnoW28wykzHLkXv5IEox+dcDwXUwTtQ5usPDfnh5MJM
         7o6Me2yz1oBltGiGtc7//EAs5i8sX6GyWeWSopOAyODKUPyQkEeXUex9A8PJ3u7EA/KT
         wMD5Lm9vF1aOcw7YRc/I5kSFqTbcIFM9N2gJJ49AX9QejDl4wbFDqktjuduYPLAVW7ih
         Er448/CsTQT+jRsQKkamFfsg11d4eEItqJB9KQEdez2EPZIO1ba390JuQnXACqWvNUrU
         tQCmI7a/9AkY61sjA2/WKUt7onP7qZ72FxHvXbivw11OqWcx76h1zWOXi67RHGnRAsdA
         GQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfzwpO1C/dU5OZDUjBrgRUr90FD8skSRJJcZoc/W7Ds=;
        b=QNEtP9QkjPX4S+eS69o68MhHo62wLUqf3Tq5BoRixHuYlwpGyIGJKsFEd/wJOSmaEh
         0PtuBM/qFBizm4hJdDfRquk23J8XUZa1L9QI+FH/fkyYziWQfHOJdTRsQXZwAFj5y6PZ
         RgAnqnvK5hYsFbXmYFZNUeWBRnnHtZkZQFUVY9DwiGfcgLuLRWfrzyBXpnYZAQcScG/f
         BDwTY6ELjMZkXEQBgmi2ErxaeJ76tzfHNpkKDZNZMiOVCrIQl6SkqYvEBgsAG0Xh1iCF
         6a2NrSXyMZRh9LXsjGpF3Zt9cQeG5QUOLvBFn/o5rSQBedfo+aIg5yMwOgXD9/TExS//
         hCVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZgspYbHnFT+dDoRr6KljhXLwTqxtTZ8GGKWSZazlnBYZ2f1mD
	QBg82J33emSapoit22I7MFo=
X-Google-Smtp-Source: APXvYqxM5tv2OzsZFprzp3ePgfX0qKvrAhpdhq9cYQS19dbYQW++Zwb88unTeabLMxSeI9P5ho+FuQ==
X-Received: by 2002:a25:ad8e:: with SMTP id z14mr848269ybi.170.1573610069697;
        Tue, 12 Nov 2019 17:54:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls122074ywc.14.gmail; Tue, 12 Nov
 2019 17:54:29 -0800 (PST)
X-Received: by 2002:a0d:e891:: with SMTP id r139mr735383ywe.232.1573610069313;
        Tue, 12 Nov 2019 17:54:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610069; cv=none;
        d=google.com; s=arc-20160816;
        b=qFzdL/nGtblczcW2nkoMFf23QKF+tU1yWjW1ks4FvLLGy0wfC9jaqKQ2+nFtcitL16
         mZ/ktKwz6YK82peHK0IVxz4UNE75BbKn80smUafqNWw1EbM+whVIN0TqHxXhZSZwuHHo
         t4Sb+jneMFp1xSv3pCE9W98YMKnflMO4T0hdg7nJ7JVs1bbBCYjDztI6MO+yiFEHO6X4
         auUQU+g07V6r1EtRFvI7lsXC4L1EfMy1Fivm3ZOk5GDkjW1go6MPMx9C/MXtQdluPxlp
         m8SyIwqrnLx7z6Bxd9JAaEOF68F4ZEswpUgx8+csjjNvccfP9D55TnTXpkhy4L7HQfRk
         avsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/T0Ii9xNAik7Q45j0p4eJz9Ov5kDr9IkplLfWD3TroQ=;
        b=UiT9GnleM9optAKpYRnsL2PpngEg9Wp/JOrZTjz7Vgc29CQ9XPsE2UOnZgitAJkQXW
         0Jv39bK4rs2xIgzdsW2GX9AjgPM0j1u7Z+LkC7PMCbeGmrEHbnH+sp5wZIjJ2HzmE8P/
         gIxnPpSTxhsNqC9f+dcAGbIGfAQNB9CR5D8TUg4sxxsTJrmTMZIOD4C+90KevrzB7tXF
         xQTg6GEs6FgyVQZP4kuNLVDdIcvvS27qhz8jrtMYhr7VaKeC8Ohjuz4vKPLFEtP6deqY
         a+vbsxYrIAdVlFdaf/yp/BQR3vfEjygyaUwWZLgCpYWgrBlGJk6vgayM/OIwTgFbnCUb
         R8cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a0GAc63V;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r185si52092ywe.2.2019.11.12.17.54.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:54:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 82D472245A;
	Wed, 13 Nov 2019 01:54:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Vadim Pasternak <vadimp@mellanox.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Sasha Levin <sashal@kernel.org>,
	platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 147/209] platform/x86: mlx-platform: Properly use mlxplat_mlxcpld_msn201x_items
Date: Tue, 12 Nov 2019 20:49:23 -0500
Message-Id: <20191113015025.9685-147-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=a0GAc63V;       spf=pass
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

[ Upstream commit 8289c4b6f2e53750de78bd38cecb6bce4d7a988c ]

Clang warns that mlxplat_mlxcpld_msn201x_items is not going to be
emitted in the final assembly because it's only used in ARRAY_SIZE right
now, which is a compile time evaluation since the array's size is known.

drivers/platform/x86/mlx-platform.c:555:32: warning: variable
'mlxplat_mlxcpld_msn201x_items' is not needed and will not be emitted
[-Wunneeded-internal-declaration]
static struct mlxreg_core_item mlxplat_mlxcpld_msn201x_items[] = {
                               ^
1 warning generated.

It appears this was a copy and paste mistake from when this item was
first added. Use the definition in mlxplat_mlxcpld_msn201x_data so that
Clang no longer warns.

Link: https://github.com/ClangBuiltLinux/linux/issues/141
Fixes: a49a41482f61 ("platform/x86: mlx-platform: Add support for new msn201x system type")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Vadim Pasternak <vadimp@mellanox.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/platform/x86/mlx-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/mlx-platform.c b/drivers/platform/x86/mlx-platform.c
index 742a0c2179256..d17db140cb1fc 100644
--- a/drivers/platform/x86/mlx-platform.c
+++ b/drivers/platform/x86/mlx-platform.c
@@ -575,7 +575,7 @@ static struct mlxreg_core_item mlxplat_mlxcpld_msn201x_items[] = {
 
 static
 struct mlxreg_core_hotplug_platform_data mlxplat_mlxcpld_msn201x_data = {
-	.items = mlxplat_mlxcpld_msn21xx_items,
+	.items = mlxplat_mlxcpld_msn201x_items,
 	.counter = ARRAY_SIZE(mlxplat_mlxcpld_msn201x_items),
 	.cell = MLXPLAT_CPLD_LPC_REG_AGGR_OFFSET,
 	.mask = MLXPLAT_CPLD_AGGR_MASK_DEF,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-147-sashal%40kernel.org.
