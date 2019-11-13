Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHOHVXXAKGQE6EMVL4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4FDFA1AC
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:59:58 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id t9sf686620ybk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:59:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610397; cv=pass;
        d=google.com; s=arc-20160816;
        b=xbj31s1XtLcYdFya11Xy3UyE6J4k5QQ9c7rmTh/PYkvZULZfRXzL+POo5yQ01peRTN
         Dwduxdngxpqwpg4ZgWLqSFw8aMAVYdqQMZ6QUfQkwZ6w8LK77/DCH2P/6pC6/lbWSJH6
         6OgWdB10e63+k+HKV2vjOF7CngYIRVcLzS0erOFNEKncurHhlxBw9Qi8FzeQF7L12aAs
         BZc3Z3/6XoZ8tbBwQuLowfbMXC3gRNAVWV5LnRYj9NjhzveDvd4tCDv6HXrc/mWXuUt6
         O/MLHMuwpqKK/GqP3xmSzF5Mngatt5TZ5FZG/66pE2tiuVEwkbiFWHIP9/ZbWp1zmMR4
         yDMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kkX8WoJwUOOyhCcCx3o3QPq9DqgFh7m3HktLEscSNFM=;
        b=KiCNiorTTNW5RS2hOH/C4LDDotc9T/Rhz/D7ftc7Ov9wBpG459mJ4AJ9lzEqbaC2Fx
         BvP749wZAXeTtemEKmrwXyN3FF3RskeTN0nA4aYaUQC3ILkP9VVHH4ZXY15FfMLpADvZ
         vjWqzmXVmUWoAluUoL1vB0ZkMrAvh9ccmSK0kPv8AkwoOiKgnqCZdSIds1r0395GJiRc
         zVZb+1PqUDezV6gWF3O7zNOe1UtuPJp1XdoUW628g6NZt9ijsHsYcafMzsvTZXTK6NCJ
         QOGaRQQHBr+WB69VyanAQujI7ZEQrpK60SaR+mCLpZXK+cVGtFyHBpit1WiU6CEiy8Hm
         zzSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UqvpvX4L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkX8WoJwUOOyhCcCx3o3QPq9DqgFh7m3HktLEscSNFM=;
        b=lZOGoOpOJEMJIyHoEp/kfl0BRqChdUb+54cyRfrw+ZguV4OEtajr84aPsibyHfihqj
         znE6jgVa6WLH/bq1euJ/RJzlJfZuGB5JPw3jV6LYbFCwuaRp/Sfvwya+ZGMuAgR0Cl0W
         vNO7Z4k6JMHm5BBxxPe6AT7XMSjXKoFeRRNSwN8X4dHKGfe7sQFZzSodSF19E/KYpwaB
         yLwKmLHoYcq1/Bogt7X3glcZ2/6iQIBcr1I9L+DoIuYpq9KcM+mXD0WNvhht2OOErAkC
         ng1xuYjOJxEJQYPaas0W6Yp1o6x34YpgrjnNs0KAZBCf1/LT9PXawVHKJVmWqLu5H/CQ
         /eJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkX8WoJwUOOyhCcCx3o3QPq9DqgFh7m3HktLEscSNFM=;
        b=AcSXOXPEmOOLcdgDelXoPmAjEMssSgvFT02pAxIgmaHaYxQTWIeXcvWOtbnllyHTHZ
         hXF+pJSJ2ZQSRvEhirU5Y1YeIwlb0MngIVv/gNkSLp52d93n+YrSo7bi1n4GKcKwKacO
         LJjh5bqQjwrCeRAMr3ivvjWFbnWfE+TNQS+8+MRVTwcVlouqbOfYEi3F2I7UjTdQmbZ0
         v5fc1s2C+m0K2TMD1YqBkTPxIA+WAcQMX6UB4H5B0lXTUcEhenpL18U/wmBKgFbnrGow
         5HEKjCM9C6bvBAoBI2JQN+eq4j8K+mHiApaPSW6XPTbejL+lMp2ZFkbXLLAawIUA2ePz
         3CQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhrCXmNkpIBY40x+j6cp9nz2hwSbXuKDTSL76LWCBEzdNAChlQ
	4HalAORBzE4ac0SRdjWavFk=
X-Google-Smtp-Source: APXvYqzR1Ct9e/xjQH7EfZWEMlZfYlzXcS+lyRlQBhhWx6Im/VbPG3fTHt5gVbpn9odzyjAhoww9XQ==
X-Received: by 2002:a25:b57:: with SMTP id 84mr830174ybl.103.1573610397788;
        Tue, 12 Nov 2019 17:59:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4114:: with SMTP id o20ls195870yba.13.gmail; Tue, 12 Nov
 2019 17:59:57 -0800 (PST)
X-Received: by 2002:a25:e5c2:: with SMTP id c185mr837444ybh.332.1573610397445;
        Tue, 12 Nov 2019 17:59:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610397; cv=none;
        d=google.com; s=arc-20160816;
        b=gY5FRYnrpsaJ79+HXiyn2KcJSIbtZLCyCgAJjxap9nIBlNchHkUICefzHaLzDpg16D
         oXYl1Of5FXwIAVWsfv9RsacA3I03JqQhSY82RP3f+OeLqnvL1nEwfQGwrv7CUabSTX+G
         CFa8pyf5Lt09DLiXQ4YYcDi+W7hN4n1ocNSDcbRJe3toWaOu/KFiG25F26dtsOUpsEvw
         almjmds1xvhm3igbKNym5Ar+EeUwBnzF5X87N0VuRF+DQC1LTUjjOlUXWNB29FvpGb4T
         ReHCaAY3el0e5cqoaO/3+hIxTD6TgrHlbPmJSQyaRIdmASUQ5yvyifTPxcJlZPT65AV1
         tP9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ozUVj3LsE7XRkQwaJKAinMYDSzPZ8L5R4npY5n913Dw=;
        b=E7yoiDDc9G0gFAaEic5DfTScD8Yw+lD+PkV/4tTA9zfPHJItI8OdaZLIxb2Ffzg42q
         BonPlHZmMLccB/wjuDT/hZfdrD069P0/va/66Nbp08yNH0/hQSlG6fpsfX/LZJmsDohX
         L+zZnoEWjSJSnPNLosWfb2Ln8l0p1zXRuRhw53C6z2yzvB6milS3+4MMGIzMqlkC3cZ5
         7q5fXRp9VEvwPXxR6Tw56w/b5NWbNFwbqcgcwuOiriQ3Y34h2HE1zXuo1s8335ofm1wZ
         cfblNN58MTK+jOZNaZqCLeDvb9tZ77dPTnM8KhHQeP+nPH3mQR7FkYezojVipgGGfo0k
         W9dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UqvpvX4L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u3si51565ywf.4.2019.11.12.17.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:59:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0ED4222CF;
	Wed, 13 Nov 2019 01:59:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 15/68] dmaengine: timb_dma: Use proper enum in td_prep_slave_sg
Date: Tue, 12 Nov 2019 20:58:39 -0500
Message-Id: <20191113015932.12655-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UqvpvX4L;       spf=pass
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

[ Upstream commit 5e621f5d538985f010035c6f3e28c22829d36db1 ]

Clang warns when implicitly converting from one enumerated type to
another. Avoid this by using the equivalent value from the expected
type.

drivers/dma/timb_dma.c:548:27: warning: implicit conversion from
enumeration type 'enum dma_transfer_direction' to different enumeration
type 'enum dma_data_direction' [-Wenum-conversion]
                td_desc->desc_list_len, DMA_MEM_TO_DEV);
                                        ^~~~~~~~~~~~~~
1 warning generated.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/timb_dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/timb_dma.c b/drivers/dma/timb_dma.c
index 896bafb7a5324..cf6588cc3efdc 100644
--- a/drivers/dma/timb_dma.c
+++ b/drivers/dma/timb_dma.c
@@ -545,7 +545,7 @@ static struct dma_async_tx_descriptor *td_prep_slave_sg(struct dma_chan *chan,
 	}
 
 	dma_sync_single_for_device(chan2dmadev(chan), td_desc->txd.phys,
-		td_desc->desc_list_len, DMA_MEM_TO_DEV);
+		td_desc->desc_list_len, DMA_TO_DEVICE);
 
 	return &td_desc->txd;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-15-sashal%40kernel.org.
