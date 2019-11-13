Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2OFVXXAKGQEFKH5GJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B6CFA158
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:56:58 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id r185sf619152ywh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:56:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610217; cv=pass;
        d=google.com; s=arc-20160816;
        b=gScqYImFqLaE0Kxi7ZkQmFfd5CU7FWmvg1gv079nKPsH5eu+pjr59bCzAUyI32kx87
         4Pdg9sy3IWh/DD4EHDX0exees+ptey7GPXDQd6Og9xhXCjUOFhlsgGmGfpnZKZN7T7IV
         QTlrc0vG3inNFgXeEK48oD00LsVG3qQApCrGcXbesi9xUrGkqWnNRivLJm23G7JDTFxi
         3onTaksOIhPV9BCzSb9K0KaAMj4QtvxlgDcqPlpVUtIEX83czF+biRWryON/1ener8ru
         0t88gAoz7KQDdc/N/V/J6u38xlpvhJITISO20Zdcf2f4c+GCN4iBjEMUQ0ZU47ZWN4Iv
         aJgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wOvBFa3jPagxfHfxZ5pxcmQyzMNgMk4MfoX44KAQBAw=;
        b=Q3B+1C+ZsmH3/I1XNhSEcSU49Ed9WEsCLaA7StmnqRcVn+/hro6SjuAfJCOHVTKDCH
         FQfg4XOPMlrb5ta0IjgKDfVvsazN8vFYv8rcj+EaNP6iWhr3Vwg3tggwxETebhqeiTHc
         cHxnkio5art/vFsdCaeL5WmsTuwaa5rEZ6qrwRnEw4lklTr5k7B2Bsu3ykx6J52xx5vB
         m+4jbg3XUHL7+AQA+4ISUEt9gYxH6RT5YxrPO/6uHL2y3285uxtiuMA/AeYWp14bAiDt
         YCPirsWk0f+jR7CB7Enw3tpNYMslpOx8j1KsWgacPmnd/EZ6v04EFsqiyR3GkRGu6WmX
         +/oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tfjFVb2O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wOvBFa3jPagxfHfxZ5pxcmQyzMNgMk4MfoX44KAQBAw=;
        b=dsjDIfMs+vOvlW32iwV09MUSULw8zUmRCSyzL5hoOxTBTf3JQFH07w3ZqY8oHVygh7
         v3Wf55Py0XOetduWmDqw9jrrJIPQjYk4hY96Sbyx2167VT+8R0NHqIoJ1MgK1Wyemwrj
         1qOWCO6BLQLeNvhRq/m3fd/tPyf1wD7rVZVsORPLeXYHDaW169wk2qZvLL68TvSqjI8T
         m7h8Tr7zW4/j8fg1A/yMA7CTMxLpcLCBXZBp6QOf1QzeuDYI7F/6RwVQ4c1J7w+zMu5x
         VkRU6wRKUV21FDqU4jldrUdfHTeyZX1vv3eP/WBqRYsQzbuOGNDuItdXUCQgH2VmzMwu
         jlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wOvBFa3jPagxfHfxZ5pxcmQyzMNgMk4MfoX44KAQBAw=;
        b=Og35fRgEX9Y9qw0ohwxW+Gwea4ZwtF0zWBfJC9lJ7j+7p5pvIE/oneElTqOfKDbBmW
         GxqccY22NklF0knxV4lFnfg9EoxO/Hg94u6DvN3VcCh19ta6yl2c3/Eo8BhueNoRe3e1
         SpRiuyoYUBmUZbVI+48ybuamh/YamWLBc4X2PhAOl9gpSBd4/iVCspBPTaoWCw861Lrt
         aJpYJw06o6LXuEkqzwbo2u0hv3vGFbULwtrcvoAJyU9FzLfOr5/7ohnWRCsnawWYjCW0
         EWfpSzqWT/VJoSDDQP4Lt+w7ZKxISxZrdZAb18PznY1ZQZen118F5H6suOMzDlIG59IN
         7G5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWU+9dri+4tljqyaQ8pksxIlKHqejITUeNXlqjDrl6aBVaOTGOG
	t5M9mNPN1qOPKov5jrCESXU=
X-Google-Smtp-Source: APXvYqxr4SOAv/97m3woJLTxSYa8U74Ep278z+7VEtSjjTCu2ggoTWpAaUH+/BgkLRHWSDaj3+4JGA==
X-Received: by 2002:a5b:949:: with SMTP id x9mr789412ybq.2.1573610217472;
        Tue, 12 Nov 2019 17:56:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:37c7:: with SMTP id e190ls120643ywa.16.gmail; Tue, 12
 Nov 2019 17:56:57 -0800 (PST)
X-Received: by 2002:a81:6b86:: with SMTP id g128mr686467ywc.321.1573610217066;
        Tue, 12 Nov 2019 17:56:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610217; cv=none;
        d=google.com; s=arc-20160816;
        b=eDeAoVVnIkWXZlqXOMSYRg8qD39iXmTiPJHvK4UOE16Nb7mTiVlJXvJLQ4gzfJMhPj
         y+Q++kVx/L6Lz75Aw0KSlJ8Xww5ovufaPVzLUop1XQEvWGHR1OAUWH0zlTZt6gKSjdkM
         paEs8Ts9CVlRXWO1E3Ayepj9vft8qi/WHuvu4VzLgvN7g/fQ0DMcDKrTfyooGANT6HcX
         3jpayzBmgnvkVNBwfW4hxRz5EikqsMxUrupPzghKZDlt7tsp49zDPtTSauLEQSKGzb5d
         dnEfZvOTiBn6KIATZGEXdmy+Y4mKl+xYh+yl3JEysOpgPchjEKsrnR9xZ4kIQr2OY9fW
         ppHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VwNusiDH84bsTjkPPqM3V3zftiOBVSzAvrasaVnxXe8=;
        b=sVtIzeojMzXGabM8RleploRn2v7rNV9GNjmXvmT30IjzZ32oJU/Xdg+aeS829FFUAF
         GPex9HnfXSFBwkrChFCleYbK76lLrAuu3+uYHCTQqZ4ytpodGz+6leHbxFfcK/m+PdKC
         gs0mVvrmImS6TfotriybztOcvzyQck01Fkjh4mzVOD3mjbbzKqgJPjxI2Zk+HCitflyl
         4E0FML01AOR+Ii3P22Dvk0HN0EGiQVAlQ+tfgpugTMXOEtg8BQ51ErHS6QkueR31OwXo
         qdWdi8YlmJwvcwaz9E8dMCbJfwEdlVkd1O4YF/VSa6XDthKFbP24x/4z+VXUL+f15scK
         XtzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tfjFVb2O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 5si47569ybl.1.2019.11.12.17.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B52E222D4;
	Wed, 13 Nov 2019 01:56:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 023/115] dmaengine: ep93xx: Return proper enum in ep93xx_dma_chan_direction
Date: Tue, 12 Nov 2019 20:54:50 -0500
Message-Id: <20191113015622.11592-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tfjFVb2O;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-23-sashal%40kernel.org.
