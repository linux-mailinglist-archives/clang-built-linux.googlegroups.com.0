Return-Path: <clang-built-linux+bncBAABBBU62SCAMGQEQZKCNZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 336A4376328
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 11:57:28 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id y15-20020a5d9b0f0000b02903e840cb5f09sf5570263ion.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 02:57:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620381447; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRK2e8HLq1YSRilvMh8oukC+cgG9OsLiPJpeZEIPtudZnh+RBDeNma1HMvm6U890ma
         SRO1SY/siF0kcWec5xfCmqffDPkZYaunHBq5a/xmC0SqAM0nn4Nxs3+nPohPcVjRSDXd
         IczJksFZFCfdxsheiib5/IJQYBZBmS8pebH8B0NTwtSfJdqujD1BbV3h9Fkw3MvR4u/U
         sHrBeprDdw+X3UsuAAAt8QeVeiC1EPzybesBOcM7Y3nF7NRMHexlV4fC9/QrOa7NM1u/
         LcWPCBqlGXvRsoiLIsDRWqZyyZ3y+3deGLsA70aOWDlagPrbxuP9Niws9Y+e2tGdKRbJ
         Kk4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=tbdojCuknHw6zEnMgGmm9DO2BeODd3Sx8XWp3pVLz0E=;
        b=pJ/Uh8GW8tQwLLYuJpzbGngq+3vGOA/xjxeEZ/ZVo0oNsn3/dYkqy4BOfepCgVmCdm
         KEC8O+x+d9HHzjnX8aaIpxD0wlY2eJt3FuIlRqoTTnOP/pylG5eVZGZVyTptTHrZBLPG
         lYmoyDMx3G3TXJUzg5mnHrw8QtQfeaKtDxP5oCDpxUxluiYEDOU8OMwlJ4s4blYZ85Zg
         eoaT5+l1TCG6/NA+iPGVt7BCSdHryJSevuYlxvHQfroY0ZDOoEuK+3xcb2rk4QBT5sTX
         3rSsYjpTkNbNGuU9tXVNFdV0J6rfwT39/ZuBnXnIMp5gppWhJhAobUY0j4PvNnQboK7s
         5caQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tbdojCuknHw6zEnMgGmm9DO2BeODd3Sx8XWp3pVLz0E=;
        b=Ys9fp4dk1dVLSYO+0IX4I6VgFhDz2e5a401kkVW3hKmCGhNhW5WcKHStO178NrIWw8
         dyOUnRWmgSnRKYEUtQOdImqpI3lMQeALqfNc/ZscgQqJC0+qO1MBD1jmECstAQNxSPjF
         yhqbW9umFpOXsZLpvJvpJvFAPMe3I1ISuESW3Ps9tEbF59O/8Fn8ouxyrPJz9Ciok2tG
         PRM4Oh43/mUtj2d6xQVXD6YXKZcbyWCtPXVHZtgztvVPxMYZB9meCSxTZGaPErvnetEw
         qmKxIhzyg74Cd3mwXlHmQXiX7QXsY2/Tb6TqNiyMeZDYhCWi/VvVvEzz+AxYfi7aeymG
         VUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tbdojCuknHw6zEnMgGmm9DO2BeODd3Sx8XWp3pVLz0E=;
        b=eoIowGw6djP42YhtdN8Ff2WwVwOJOAeFVLxEgWidZJA+66utDs57369jV6RUfidcXx
         1WM/kx9RyOK1H1F08guWKreXrdTfizR6QAB64GCvo+GD9ao4Lp2GKETRw6Ry/0IHynln
         L+zYGmY6CAtLrOrrzxkkRQz4t0JEJx99dtbXdTgaxiAOagrJiaLe4kZwa9lBOt9ZJDGU
         /oGAa9nZjd+DUBQfJZJScRE2VKYQhAxGKFer4Gq9aCW8GhgRow17gX7uY7gGblC8qXQE
         UWZnGQXT9z9l2V7v0Tul2fZ+qsoxUMCzNqnD75RikUC7pcn5JOVf08YeRmamhI0SnFXO
         0Wcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hZ3J6HYl7XbCM/hYtiiVGqjp17M9IDfH9Pyj3HJk8yZ0GB6mg
	10sAYG526xKluaoaJ6G9N5g=
X-Google-Smtp-Source: ABdhPJwvFQxyKRvPJJaxZeYsd2sFCAMdKRuPhSu87KgcOE4UpzwcvjheGvU9btvJiHjZF2JOC3Q5TA==
X-Received: by 2002:a02:9109:: with SMTP id a9mr8237280jag.93.1620381447073;
        Fri, 07 May 2021 02:57:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls1562315ilo.11.gmail; Fri, 07 May
 2021 02:57:26 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a2d:: with SMTP id g13mr8214948ile.123.1620381446756;
        Fri, 07 May 2021 02:57:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620381446; cv=none;
        d=google.com; s=arc-20160816;
        b=KHGg9JPPxf7CfG7aDKRXszykK3ADa3ClSNh/24IMyQhKxqlETA5qtQ9hoP5A/xr4E1
         McEQQn1DMwxf0z464RSSE8iCxTWSl7CAYQHxQyAQd8qlULQ9xEKKHCDglUUpFh0+kRJb
         LC/5bonTQihOUjRtdrKfFng8WtvQMd5yMHhI3pPXA9fS2mCS7DvPRAX1vQ0xIZPO9Ad2
         +6q4VxWUIajJJZHkt4GtQMVrfwd3/VJ1/IgVKKwGhb41j3KHh2MoV4rpnpXpG3+sO8+j
         PW7bzTFR0KaiozYyDHDTd17AUUuF8au1x1Zyx+MaG+hm5gd8bjhA/G1Leyx9Jc/f+cVV
         KsTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=2Je+pc25HS3jvaI5+SeAzOjqoF4bacBrTYzxqQ5QvAQ=;
        b=dvLLulXoRFLW3wcb5oA9eaAyUDAOxNHbt+SFi38JQK1aLAbBdAnEv+sv6Ru6FiNy2g
         nsOLA7bKrWZ6VzUc8RFP52JgPnz58Y5AXR+kUKmbmvu8hybc/pKUEXg4G1fCj3f9ik88
         ObJU/7mr9V8r2k8tZvk17yVpimp44yB2TMvZpLnRTexOSlMlslTg9o40g0KBha15c9TP
         Ac9X+3i6ZzKiWzxx50PmNXnJe7+cAAGBMDqZoUV8dBdtm3p2QDlNN7OnoLB6vRTgA1Vt
         apk8Ub02OLkE0PnaB3bEk8hOUKXhGRnvZIDzSQARZdjsY6vB29RHM6VTSkF+3Rf4twRJ
         F5iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id c1si317509iot.4.2021.05.07.02.57.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 02:57:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R211e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UY2dZi5_1620381419;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UY2dZi5_1620381419)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 07 May 2021 17:57:00 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: herbert@gondor.apana.org.au
Cc: davem@davemloft.net,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] crypto: cavium/nitrox - Remove redundant initialization of 'sg'
Date: Fri,  7 May 2021 17:56:57 +0800
Message-Id: <1620381417-44442-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
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

Pointer 'sg' is being initialized however this value is never
read as 'sg' is assigned a same value in for_each_sg().
Remove the redundant assignment.

Cleans up clang warning:

drivers/crypto/cavium/nitrox/nitrox_reqmgr.c:161:22: warning: Value
stored to 'sg' during its initialization is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/crypto/cavium/nitrox/nitrox_reqmgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c b/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
index df95ba2..bc35d4c 100644
--- a/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
+++ b/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
@@ -159,7 +159,7 @@ static int dma_map_inbufs(struct nitrox_softreq *sr,
 			  struct se_crypto_request *req)
 {
 	struct device *dev = DEV(sr->ndev);
-	struct scatterlist *sg = req->src;
+	struct scatterlist *sg;
 	int i, nents, ret = 0;
 
 	nents = dma_map_sg(dev, req->src, sg_nents(req->src),
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620381417-44442-1-git-send-email-yang.lee%40linux.alibaba.com.
