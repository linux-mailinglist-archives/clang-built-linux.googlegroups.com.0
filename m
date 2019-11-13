Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2OFVXXAKGQEFKH5GJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6C6FA159
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:56:59 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id p2sf355739plr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:56:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610218; cv=pass;
        d=google.com; s=arc-20160816;
        b=RzIp6lGTnS2EO45CaRib/jFcFcUo7KCzhZz2/CIiuwK7POV0ri2fhFmOnseb+T5Utr
         AhjjmNgLQ8R2Xe5GSTXsZY0ysFc6K5gHAjvfl3pkiK/7yvMZ3CZoWWXe4AHwP+gVc/W9
         2uOaxYHrcb4BdyxqRwfDf2oOr7yf1Pu5UBZe0jQ3cP04tMMd9wE3/ukwhZm9FH6ntGti
         mHfPgZcrdpKY9haeRlzx71Kcmf33gstjPFRY6MaiHTePLsMgyYBim+1UhhImU4QM2bL7
         3KCt9/1gdSsESmxepHNF7BdrBCdhFVDsMKiE445zhtK9ACecKSCjrt++F0nSv14hir70
         tKrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9B89KIzF+yR/8uPWQCDH/M9+ltFWS8jBw9fSF7OhoWc=;
        b=IpmDjwLQusEjwqybQKcGq1ad2SD/VMfeMxrsVzyPpoaYnXFORJ/SuQwYSILHB4QQUx
         uBSBDGBa/9XEFN8pSY4B2BTSk2CQnQCBmMyDIrrGofrx1nCfp0SqKPjY22j7eORH8Q44
         s5Yu8oHTRZqPd8iOKRjKGXGTxLNVG7YNIaRwVBvnggs0ScpXJFceYbr2nfL0fb9XJwI5
         SP938GKGT57c+D7ms/7wn2cf2O7k4KvZAH1rEE0hq+PSpU+todY0ZMzRh1uT9B3xvH/7
         ddmCGFK2DC+KudsUhk4PBN5EcNdeTKghqtt+lIYqyd8UBzCidblCkj/O4Ioy6Am4Vjm1
         pk+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2X1a76TO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9B89KIzF+yR/8uPWQCDH/M9+ltFWS8jBw9fSF7OhoWc=;
        b=NJqtswRoNmyvK+C5rLUKXQBdnDjTZC5yUkvfUAiDw3VLbQo4zT6NhHTQEshD3e+hbk
         hOxL5D6q98SyVkliyt1x6fRtu4WSmn3lK3sqP0iueo4eZC6qS2zV0yHax2/9EZpqhu4s
         zYb+8t69suHhi4gB4CmpaaQxOLDv1HEQv5iuLDsSYSUg01LskctXCUbZ9BDHy6e0WAbE
         MU1bhrRfhB9iJyXJkzoxRuQf9sIfZkt/dx501zoYu3PaBDLHpzNYnswCrklO3cpxRsKf
         wdABi2NKHmAadxSBV5ecpVXbUl67wos3WSS12uJw7sPfE1fxi6n/nsxFNjx2JXzKwos6
         Kgig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9B89KIzF+yR/8uPWQCDH/M9+ltFWS8jBw9fSF7OhoWc=;
        b=J5jN2UKY2QDSUbj/26QtUowlCyNnjbAhvgaxgg74u9d7ImGveidmG742RyMkvv9zC6
         onG/aLO6H4ncq9vBm4kMiWfErRzRDbJIiHfm1RThFBv4kfvwjgwIV7g5EEouNhKV94Yd
         RMnjHmS1YfPH5iy8/Dmg+mhPRsehdgQaVChhazKNAwakptBAG3QxXX52EbjMAt1wPiNA
         EBBqeb++z5nR2Uen9uBKRZPONPLxDm26JwCj1Yb5xCymphUhNjBeB9Yhro6s/s+RLq/z
         L4vkni9Jqs/wfyrK41EJw+jfAIDkMOqjXI8PMSvuALE/R6ot1XbyiTDSzTvB5jx4SbNs
         Jpkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJZzxLOVJLbLRvw1xg1+hKqBwIPoN/m4a18t1YRX/liuCiFr7U
	PB7oLHiS39uM74kC3yuxWBc=
X-Google-Smtp-Source: APXvYqyj/vuaef2hOg53LDtQak0NeDQ2/P14sD9RxKf2MgUhrtTgy/bndgBzwoPsxGBfNvmtUzA6ag==
X-Received: by 2002:a63:1f08:: with SMTP id f8mr723079pgf.145.1573610218036;
        Tue, 12 Nov 2019 17:56:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7c10:: with SMTP id x16ls163643pll.0.gmail; Tue, 12
 Nov 2019 17:56:57 -0800 (PST)
X-Received: by 2002:a17:90a:634c:: with SMTP id v12mr1269608pjs.27.1573610217647;
        Tue, 12 Nov 2019 17:56:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610217; cv=none;
        d=google.com; s=arc-20160816;
        b=u6oGHlNhMDiTKfWikiKolDP+2fLi+J3K9bxZaXToW9yvvczS4D7y3pS/f33rej8qvk
         PrnQ0MXWIUPb3pOplSQR1Ev1DFAPQDnfdwjwXeTYbme1s0tOrJMZkhZV7WjYJ8OWOT33
         CRD7xjdJgjIXICPq2+yY1kvw6WikI/0K6bCWQG+PH+V0N/XKGW8anaj3oFGzWzQ8ZFtO
         MSx0GRAQRTpoATd5d41hA2/pEXPN/Dn6OjrKflvB34k/Fxm4xn8svXmBTeQbJ9WcecLZ
         fmBvRDScmUKOALtubBn0OvdYsI4ESDzgJeWWTtyKVU+MXNEo3Tfx3fQ9j0xU+TTB8ko1
         g7Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ozUVj3LsE7XRkQwaJKAinMYDSzPZ8L5R4npY5n913Dw=;
        b=sqQzoDPkTaf8d1rylVcweLgl4wUIqzXF42MgJ50n9kzstxq3tSpS+cHKHFsNmM5q9p
         B3P5rYqGBUVP32aLswRSk9rLnOa+PcH8OaFXcc+BheKmBVvsmCCMwa8k7xpqa2fFL6NM
         pE/62kuXDaJKrgdM3g+ndcToX3SbEUUwxByf6zjsGcOQmymUgrl4ihyl5me8kt2lh5kG
         l+Go7B+9tbcnGSIcUBOphBdx4TITvV1z/ED87u0yee5DbLJHzzOx/+r6qon/m9eiIG8N
         0mJadIuz01Y1aMvYZ4ha0l1BqT01kIH/fx9iDznPy9UGDLO+j4QbdDWDqpbvzB4cMgLw
         ZHWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2X1a76TO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si178772pji.1.2019.11.12.17.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8F22D2247B;
	Wed, 13 Nov 2019 01:56:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 024/115] dmaengine: timb_dma: Use proper enum in td_prep_slave_sg
Date: Tue, 12 Nov 2019 20:54:51 -0500
Message-Id: <20191113015622.11592-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2X1a76TO;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-24-sashal%40kernel.org.
