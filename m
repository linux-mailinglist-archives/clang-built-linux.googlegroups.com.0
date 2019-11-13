Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHGHVXXAKGQEMDAQX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id A947AFA1AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:59:57 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id j3sf619236ywg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:59:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610396; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRSK8voStcsOvFL6l9iUyBGaBs25BTJDYTeFIoVW5bJzhuJQwxKGsBFSZfd2+h5C80
         muw/iepnmHBCrtgf9KU9kFXPl0mLZPM8NYEIjrPP1lgrdIyLuEOvjfkMLqePf6IOj6DX
         v+QOpn2iz0nuzBtRrYzOAfecPIMX9oHfXinYoO5hBtlnQkVyDpsFiCxvR2U38wISoLTP
         PKZ+6UmJsAyNPTQoLA86LdcnG8DeXsbblD7138o5ldcQFuuX7HoLAP4tALFIsb6muOrY
         3LZo0HSpYpE/urauAS4Sfb04VTlO2C8QGEI/Z0WFEuNTNrIx0UVkjmKXrznTVi35Etwa
         cG2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uzKklH7zDHQDUJLGd7W3aqz7JgOGCkooobrNzTKH6nw=;
        b=rWQmUmGC4n9OyY3S7azZIe9Mj8hLld5o9Dyo3ZeSvMUGC/T73kyYfjrUvlY1YxCQ8Z
         LIwrc0+MZO3tNwcR+vt1PznTlcu7UJONtzmUNLHao6zS7kQo4ZrxYm5pNYmEGpEv+fOK
         FP1xQAufe8nOcsn+s2YFA/WLBieLqHzKUnpPGMolDu/5MYMIRu/mt1KKMxYUxXTbfRgz
         PwMckKTdgVGHN1i8TH/Ldg7NantsBWGU54HdiOerxmcoMvaPCkE0s515YSHesPZfdzyF
         WGEi9vBzfcjXWf7gS/hoeLY152NhW2M2oOO6wF7AKomlxp/mLyLdD9ag8zosCN49ZhcI
         7QTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J2PtGuXy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uzKklH7zDHQDUJLGd7W3aqz7JgOGCkooobrNzTKH6nw=;
        b=VOLzpQvmJRciPa3LULh7hdJfsP877owX6Tq4wvogCC166yYhCNDYykzy8XK/tcGlJz
         suxDpEzxL25s04BptoIQR63y80aTqFHia9khRwz04Upk4szBj7gufcQdacd6jEJL3+vz
         Gt5EXxkjllqjz/x9Eh+KC7PJgNeLVN1Pc5Xdyxqo8mW0A4JctsW91ButA5BUhabwa6w6
         RJYcWd1O8obi0SEvAdqWuZQmo2bUA/Rp/u7UXz9xwIDHepQpQHFt4fylCDI3DlYZJWNI
         R4uJhpSmO6As90aWwiSZgEHDNmMsHReV3HryzYz/Q47Graf9uIbkCp5v9gfs/D9B1qwb
         ek4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uzKklH7zDHQDUJLGd7W3aqz7JgOGCkooobrNzTKH6nw=;
        b=tugf53c1o9iDR+tzIhzOJOjuvWUNslPm2PcnB5d5ucskbjPhaBCPYy68yBHeoAWk33
         m0w582/Oxy/GA/DsI5pYKq8/EcFLXqQcY38ee7432J1DrhDPfk6IsIshA3mQHFbRwU46
         RCJMKe6baGAVAbqGMnEW37+QXLRNKDAId/jFXrtVbP97XkRKkaKqsbRuoSnJD3WDaq2n
         bSSgB9atkEqkch62wl0taMeMVhmTcKXXwM4q3zFCE3a+5j8Qj2Yq6nSkluy0rB6ZfmP3
         /IRyLFfPHicB+1mM8x++H/iMiP5AbV8ZkILnF88Ppxp0cFY1j6zPX2nd8Z9uQUYXhco3
         8nlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXoqc+LoHC8t8ooYXcEdr5O6d1kgF9GhRzvIkuL22ORxrbokOwA
	3355+8vxsSd4frN1Em70TS0=
X-Google-Smtp-Source: APXvYqxArVCft5O2ZW9zptcmxaeftSisOIf/8otiJGmfXD+0YFmNrLWrpGTpSo5FXcvg0CTXCO18xg==
X-Received: by 2002:a25:5051:: with SMTP id e78mr794231ybb.235.1573610396669;
        Tue, 12 Nov 2019 17:59:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls196295ybc.11.gmail; Tue, 12 Nov
 2019 17:59:56 -0800 (PST)
X-Received: by 2002:a25:5346:: with SMTP id h67mr844541ybb.365.1573610396247;
        Tue, 12 Nov 2019 17:59:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610396; cv=none;
        d=google.com; s=arc-20160816;
        b=MosBnMNF/ESGnj7sEkjrNNBYw/p2p/NfjYaldczbB87XGIfYO0DjlY2FWqNZgDMHZa
         OC5auij2pN0bwT28fhDyuCpJ2yA5U2ZrNboFhMgvJj62VQvErEGKMVnfvOq3f657roiV
         g2NXVHWQY2hUFsG/1QF1JjqVeMJ+nG4oBcyJRM+xZfAW+U/lcGro21Ig2IoNvSszVqJk
         53UBTEULCpDEM9KG82304Rgi18gZS1F1ts9PBvZ9yNhl4DlEXs5qIa7161qWkZ9dr/O+
         lyJadGA4N4g3FaceSyKkO+li9e1J0tDDfkUm6MH60dPoxV4Ke0dtjmKg9iGH6H+mBL0v
         /FbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MgCVej+ou9o81LgRo8e1+7a45v3F+6WEfchsE3ahvQI=;
        b=UQLvzqdBACiK82kAQVtOxgXGRQuaqq4U1E9VP+YU0x3GtdULifyuNyq607wXY5gzus
         xpJYJUwR9lrHHbMNQeuaqhFsOnQDAbc+8zpUC37Qu/FKm9yO8MtLRAYw3kB8YqHbTh7I
         oG2woyt8ZYGBoUX8AaRcC+j6XwnIuy9N+NOZeozaXWqzSCaVD0HvAdeUdbD0AwOOwp3N
         OCuACWorvw5tiynyxt853lYkceAbFFfREQt5hzQpBCX6mhulpirtRKjGt53oM28Sf50z
         L5/BEG+o//82tPrlyXAqOnEjUCtCALDVDshjwLswiOicTFXO5TGVk56y91mWiGzFGGF+
         Ph3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J2PtGuXy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d192si49387ywb.1.2019.11.12.17.59.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:59:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 98CB122469;
	Wed, 13 Nov 2019 01:59:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 14/68] dmaengine: ep93xx: Return proper enum in ep93xx_dma_chan_direction
Date: Tue, 12 Nov 2019 20:58:38 -0500
Message-Id: <20191113015932.12655-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=J2PtGuXy;       spf=pass
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
index e82c642fa53cd..5913be0793a26 100644
--- a/include/linux/platform_data/dma-ep93xx.h
+++ b/include/linux/platform_data/dma-ep93xx.h
@@ -84,7 +84,7 @@ static inline enum dma_transfer_direction
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-14-sashal%40kernel.org.
