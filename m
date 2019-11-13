Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHWDVXXAKGQEKZ5FURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D1479FA0A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:51:27 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id u21sf307114pfm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:51:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609886; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xs7Keis7GoKam4cWzDL/6YixD35uvoLHtm378D6x2RKtI/vyXAHgPPN/+YW5Y6geEa
         ebMDx9tbIkE4BYzG82CJcxbcJcGDnqDdtiluSygpqI7XN14kuTR4dLYRlyt1FsFJDWv9
         uNAnu7Y9NCqfc4b8bRS+ATwx4r813ZTnkFmvxvrm0pJVMRP1v21YHSvrAqj8aDUIqAj3
         zE5Mk1H+h4BaxeiPuUNQAzoE71gUSZT/i8Ce6jhpIMBDT27zLgunxrse5+TEVrodRUYg
         CxTBPbvbQtab6dQFNS1406BuuLQZ5wcx59j60wZspyGKCvhDLPo2AmTrivgf9JecvK6O
         rlGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=K6F96IYC7Iz/ldIGEUvoMOIwsk1UOGweub1qMTSkJVM=;
        b=DQncCYOhKYPgV6++9i+zNSvCHkb0/3bdXLIuoWXsyiuOKBRa9fl443tk+LXV8Y97Rv
         hy2jtEP+SMsnEEGgOWSCQzsUaJ9Ph8DXIwFlD491GUmi2C17J9KuRs7gEouFqJCHqnNC
         /6xJgUEbiMOmpG7PX64rixwj6R1rksfTb4HihYx5ib8pR7MJ2B40Xm0LhWigkw7fOBIH
         VKdXfTuk4T3VFlbA8NPkYOsNqQ8HVXRDPzWg08tVWZZLrTX8MU4iyZdqeyJudfXQa06Q
         DbyiZgfZ1PSobDe4NOD8RnD9g0iy1KOW4IWZZ5wAcsv0fO/QlfJNz+ZKu+wd7jdMSxud
         eAqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vwCsklwB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6F96IYC7Iz/ldIGEUvoMOIwsk1UOGweub1qMTSkJVM=;
        b=nSH/VphLhckeh3yyFjWRIKcUNbZlj3QJS57LifwGvPQsh38oOxumI3p0qA4jIbdlUL
         7CW23HRIR0J2P8ImktE3DhbbUKaAMJKfrz8VqEOdDZcsyl/VjbCizhJ35JllAVbXgZ75
         2+Y3/+Vm3drv3Q+1oyf07V8380FUfCDFMs9f2Wn8OGkQ9n3qDwJ4s+PxwLs2snhALubk
         x8QlP6y890Mw4Q/dTp7CORgNZl7COqRtIGRhrs7EKjAFHrwm2Q3QwaSeE8OXd3K2xV3i
         7qDYZfpnsJUEIkh3/IdGC9W6jZ5yhIZXwEgtjdbkFmZ8Ur6XCRhLD9tt7V1/RZPHgrqD
         K3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6F96IYC7Iz/ldIGEUvoMOIwsk1UOGweub1qMTSkJVM=;
        b=h7SvT2K6cKqNo22HDl2RUtBWgxhCxgTHi2h0T2ybKfPGhErI1o2HwRC0RzrlgVpXaK
         RlTIeumpukEBGYCIawQQkTZ/t2BODbVHM/fSAl8/s3guvNMHWtwzdStWdm/yYeJOTBVk
         e+6+XFSBcluG2JtHLH3ne/CHosCOJINoi5lWT2pdOn527e4vyLVdA1PowjcVbYzjFAlg
         s97SkLq9/fNWd9yW8Sc/0+gqD1mQ7qottExal5lv/E1FR02+sw4FLDhtrCFfzkwh7BBk
         DnxZ9YRjYAZFyw8QB78s7cSXw5cxr/ZHbqJgPbubAyKqeUDwgWBnmCoHrKNv+172zSSR
         8wBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVqG0BxalZgdVeAh57BzKp0GRTKH4SInl2bq8bU4M0TAuiVo2S
	eBsIS/lgG0Uj8aL75ImwgIs=
X-Google-Smtp-Source: APXvYqyAKGbHzLGek2pzLt+dbpMBrUyeSBD/A9WyRR93smmcDXKguU8zrxgqmUTL/3FKAa6QqS7Z6g==
X-Received: by 2002:a17:902:68:: with SMTP id 95mr946650pla.117.1573609886459;
        Tue, 12 Nov 2019 17:51:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6ac9:: with SMTP id f192ls119815pgc.11.gmail; Tue, 12
 Nov 2019 17:51:26 -0800 (PST)
X-Received: by 2002:aa7:9787:: with SMTP id o7mr1263074pfp.120.1573609886137;
        Tue, 12 Nov 2019 17:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609886; cv=none;
        d=google.com; s=arc-20160816;
        b=T4z+i9hebdVv+KLls5s3K3c4D/Sk223dXnGnZrQyVHT8PMY3TOxhNBQNObGOTFcxzK
         l940MRSHuBEfLj7mhPNMUi8bHW1OR/QZVZU830PYj6w37UDf9PSWFzlovo5P3KFtDoKS
         ++jWKVSzlMF+i/PkhfMMaQux5+g0Nh4SapHhwTxY6+GWgu44uCEjjO7y0fzaGBXYGesc
         SYJdOnSRDGMmpnMVCpbc2va5qe2TxTHyVx1x6kEi9z1K6cyIUn7K1y7X3txysISJxaQ+
         DDAxY2hxLDVRZB36wNPkYiuzDwLLCSHXKO7aNW8NHV4vtNPveIQXuKI0MaGgRuxvXTcZ
         7N6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VwNusiDH84bsTjkPPqM3V3zftiOBVSzAvrasaVnxXe8=;
        b=OTTGn2wr0qxz1yeCYiQt656OIWeRSQh2f2bphBv+2AkATt1oRUW267sJH4nZiqqQ3e
         L7xYDmRGOjnUFYwMKeunjyIS6iUicKvNAHoHLTnSyrWBUYveN67RCoAqJv/FmLxj6EjI
         jeOoXh6s+KCsdHCCaDaCfsJDLdtrvLCX87RyuwNoVGojlDbnxWM6hzpzwUNm2vStQ2kM
         S5KwthiXYTp/YLqb4fUHJBEb28wC2Oeem9g/yBymmivwU4DvbmpD0F5Ef8QlxEgDyFU/
         oy7z+DVIVmMJDNqgT7Mpqhfubz0yrE9yZiHYXoYDe3ZAhz1DXuNKPDtUNTjFWT8ZZraR
         fqrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vwCsklwB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az8si181252pjb.3.2019.11.12.17.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 25AE622466;
	Wed, 13 Nov 2019 01:51:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 045/209] dmaengine: ep93xx: Return proper enum in ep93xx_dma_chan_direction
Date: Tue, 12 Nov 2019 20:47:41 -0500
Message-Id: <20191113015025.9685-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vwCsklwB;       spf=pass
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

[ Upstream commit 9524d6b265f9b2b9a61fceb2ee2ce1c2a83e39ca ]

Clang warns when implicitly converting from one enumerated type to
another. Avoid this by using the equivalent value from the expected
type.

In file included from drivers/dma/ep93xx_dma.c:30:
./include/linux/platform_data/dma-ep93xx.h:88:10: warning: implicit
conversion from enumeration type 'enum dma_data_direction' to different
enumeration type 'enum dma_transfer_direction' [-Wenum-conversion]
                return DMA_NONE;
                ~~~~~~ ^~~~~~~~
1 warning generated.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/platform_data/dma-ep93xx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/platform_data/dma-ep93xx.h b/include/linux/platform_data/dma-ep93xx.h
index f8f1f6b952a62..eb9805bb3fe8a 100644
--- a/include/linux/platform_data/dma-ep93xx.h
+++ b/include/linux/platform_data/dma-ep93xx.h
@@ -85,7 +85,7 @@ static inline enum dma_transfer_direction
 ep93xx_dma_chan_direction(struct dma_chan *chan)
 {
 	if (!ep93xx_dma_chan_is_m2p(chan))
-		return DMA_NONE;
+		return DMA_TRANS_NONE;
 
 	/* even channels are for TX, odd for RX */
 	return (chan->chan_id % 2 == 0) ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-45-sashal%40kernel.org.
