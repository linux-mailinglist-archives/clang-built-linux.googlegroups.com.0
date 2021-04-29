Return-Path: <clang-built-linux+bncBAABBFU7VKCAMGQEKIZTMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 796EB36E910
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:51:04 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id q64-20020a632a430000b0290209af2eea25sf16920841pgq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:51:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619693463; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUdYV4cGBFIMCGVEvTu81dvA1SbO0ZsB5fKAzlG0YD2nzu4Slny95Lb3A61tps8IX8
         hfBPz/gYuhph+frMp0Tk0PVJvipATuvKWA/fzxlci6wstsmMS8JvZIF65hw1OozP/IDl
         aTnMY2RZEndp3KgPvdSpqHHWQ8eQ9DIHcTeHBE5++xabet9XJjPr902RkHhKTK0sgWgX
         8CuIjEbrH4VL3fX9NT6vcVIWJtMC/Mky7CT/nnbXdCGK2azJcqzcvDB77VDXnsk8bDXw
         DsGwqxooHtYX09N4Hu0kQeBrYjVq9zmj74HRc9S6HsEQjMfx2UB6fAM9ALlQow1B7qwu
         bwlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=jGAg+TqnRdtXyWQelqq6V6sS3zYQ2096fRAhGNQ5U6w=;
        b=dCkrwZAXRh4PxvQnaDEP97CfK6/hEa/uE5FQ/f3WqsrqrcS8gyGC1pKBMvFL2OUVqX
         YFezu3oCpi3mO5L+I+LfK6xpS1q9hxsNFKkXoUV4hLt3AoEIrEQdlaXbz2qplayQ49iT
         eqwF3kiUGplMiADXQQf/xsLXhUhNUVGDLm8dxJjcubRfQdSCR93b8/FUaCXf1/tjRL9r
         QEpkbSkYICmCLUDN5J3d9qzT2le9KHl6FjixNZp0yfwCXJjKbHE47NCs13SuvsKjWWEU
         ZG6o3s5fBmRVcau8kaxQI8mRGYsrQzQV2+M3dScN7ycR4V24NQGGSGy3k/CPmIEnjQRc
         z4Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jGAg+TqnRdtXyWQelqq6V6sS3zYQ2096fRAhGNQ5U6w=;
        b=T7pz10nx3U29QUcRZGkHe4nw8Edevxs35hyZ9FoHLt9NE6NosbT2RPveAOOvcyaPa2
         +HCBciLAQYoD6mTZE6S9pb0OpIFeHFIQYTaDHyx0qlEeI58JiKL3h+8Pi5BTJwpP13v1
         NiIUdvOidgZQEXsrc91FUEq9EiNYhKLGmovklo5lebfTdgxYiRkT/nDp3VEskuLrMTzh
         6rGwohieb5U/71W4tY2k+KQD7/LXhXiRto97zkBKK4W7Ny7lqMzidLd4YcCJuECc7c9I
         JOMJ9yyGd/lLhmhI2bj1NUfbnQWjc/kIAmHPe70FLavp2I3hhntPJSAQLKCC0X5pyX8G
         jdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jGAg+TqnRdtXyWQelqq6V6sS3zYQ2096fRAhGNQ5U6w=;
        b=XVJEZ7i8XeJEaDvu2yliVccihgMdDmgKeaR23POzpzMTISmeBBAsyHXFJxBJU81NdJ
         w09qP2Xq+SN/tXPzQspvrqCwkerGjahnCYXJMErs8/Om306nhvrgLok6YpTEWKod6a/U
         5Uks2gnleIBTQIUL6mGF7jnjcCN8zoqj1IhQG4vIrBqgBFlLMRlbfJ06HCnyvnC/HIUG
         GUXpyI83dBMBl9WEi/kPWUNyp310IxgRQmXSC9tAznMMyOecuosLVCuO/iguUACnAYHA
         JEHGK4T0eooMJmLBhWKWcTWh74/RpM8MuPyUfiXjdgMPlwgAa+RMgDKRdevJw5n+rqAJ
         teNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OCX5Qr7/AE6ttO7O77M4Ww5Ft1epDUF+3OyNC/ozi5HxUmW4y
	uyWx8C8tYCF4V3dBD40ubLs=
X-Google-Smtp-Source: ABdhPJwkp3mV9KElQ9e/Tq84Xhqir5VYyAW9h8xtDXRNJ2X+f/oyC/t1YRyfgRj+JpLDvaZRuNYTww==
X-Received: by 2002:a17:90b:4c0c:: with SMTP id na12mr205211pjb.201.1619693462863;
        Thu, 29 Apr 2021 03:51:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88d0:: with SMTP id k16ls1063239pff.10.gmail; Thu, 29
 Apr 2021 03:51:02 -0700 (PDT)
X-Received: by 2002:aa7:82ce:0:b029:242:deb4:9442 with SMTP id f14-20020aa782ce0000b0290242deb49442mr33082260pfn.73.1619693462466;
        Thu, 29 Apr 2021 03:51:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619693462; cv=none;
        d=google.com; s=arc-20160816;
        b=MZo3bGOomFm3jGgH7iuuDsrMgSkcqMUbcJatBs6pXj/7QSQiiQt3IamMasPLus3HUf
         RnPGL5lAC2E3KZRTCaeQoGcmLEnzOe+/IH75Y8iQTWK5cykg34xiDHgIC23h8hQYQqLQ
         Jf0A/gHtsL6T8PyPrqCEw4xHkOGc8jU+7/M+T4JkryIXeGmUAnVohLa8TiodxLecIXKH
         IknmxdeFIDZspt5KMMyq3ppCin0vujnKSsrrA7HjP/gCRKxy05SGTOCb17oqaVHpP2QB
         tPNTkD+DoECKYAKHUfdFOm/9i+jw+Gj/2Ge4HGhYPH6E5CkfufPlaq8GolW01Hf3eqes
         Uslg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=yYG8OKiqf7LP/U2YzWPSc00H6K2erxVBJEgsIVgQvOw=;
        b=i27IU+1tBHQT7DX9qxgJCQ2LAdFDF51fDrKO9Jm0pqxrSepsxel9fVCwkJ4wHnc++L
         VusaNRvYXyysu74HypDxa34DunthkfTI1og5VPsln1JuMkJp2DUpxkosuZYaR2kl6EA0
         PeSZlnbNbFx/JkHyhxDdJ1zsl+g8Qiufz+3sbcrgpqmT5iHjzOfbuf7ma/vDeFC857wS
         BYMyyApfPs7jqZSnBPp73xFu15NjUKa/NBcpl0VGhyQvSr1f6MpIWtaSGm0m/db9g0Wk
         USj8t3U3PNa0peCQn4lDmdKMUAOwt12jnYVbHg/7hjZy7lGMNwGygt/Tj14Y7A5hsMM3
         zmTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id v2si258877pgt.4.2021.04.29.03.51.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 03:51:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R181e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UXALFKR_1619693458;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXALFKR_1619693458)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 29 Apr 2021 18:50:59 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: dhowells@redhat.com
Cc: davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-afs@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] net: rxrpc: Remove redundant assignment to ret
Date: Thu, 29 Apr 2021 18:50:56 +0800
Message-Id: <1619693456-111530-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'ret' is set to -EOPNOTSUPP but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

net/rxrpc/af_rxrpc.c:602:2: warning: Value stored to 'ret' is never read
[clang-analyzer-deadcode.DeadStores]

Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/rxrpc/af_rxrpc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/rxrpc/af_rxrpc.c b/net/rxrpc/af_rxrpc.c
index 41671af..f2d81c5 100644
--- a/net/rxrpc/af_rxrpc.c
+++ b/net/rxrpc/af_rxrpc.c
@@ -599,7 +599,6 @@ static int rxrpc_setsockopt(struct socket *sock, int level, int optname,
 	_enter(",%d,%d,,%d", level, optname, optlen);
 
 	lock_sock(&rx->sk);
-	ret = -EOPNOTSUPP;
 
 	if (level == SOL_RXRPC) {
 		switch (optname) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619693456-111530-1-git-send-email-yang.lee%40linux.alibaba.com.
