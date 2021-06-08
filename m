Return-Path: <clang-built-linux+bncBAABBGHV7SCQMGQERYS3BZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A1939F294
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 11:38:33 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id g13-20020a056e020d0db02901e28b9a6ae8sf14492424ilj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 02:38:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623145112; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlUw0Gi/iP5frNOKdtEnhkHiN/bT/e/7636ri545TcLHUs4irH3XItioVKu+OUYaSj
         wVkcSWUE7vbPchGuGyEy2ccSENShurFev4SAT0f0nHlDNq/D8FUhuofcDot/wzzBS8Gf
         B6yxY5Ld96KvvaewRe4QdY6EgpO3mVdWY2nU7y16y0QZ2iNEvuueeFe2+zHMZ+GYg642
         K98HL5zbtkY8cSU0IOMkpB8vao97neAPGSUUuBvwFjxTf73B00pf9GhYyyib2dKUgg6N
         Xz9N0JGh52nwfcLI9JsLaLZJQidiyi6MbZeB2ZJhd2NIpmLtKRGGbEdmns95Z4NlTmVI
         YhDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=BlXpczMF481hbv+Dqcdxc+FxCEeRo3vaWZiBXDPfFjU=;
        b=WdnVeP24Ihl0yPWrtTb8PPnfu38w9UO1dWsiGKRMUDgc6ywbXTSmv1UnBCWUqyhP+H
         v3XvaQHse5t0KTJmqR2/gjqJIKAFyM4AriCpBVOpH/rOiUskqzYAW3ZrCyOq65xmVRV/
         Ld5DZt58e2HfS8y9moXlEmKPEgcICsQZI74xeH7qRQUBxLOZOXAQP2gaFF3jkNEl6aBS
         1d/+gTIm5h4sPCZ5ajaCo2ruKpQXG7RoRl8GbyBzIKNwAjt1VvwPqrjPhaOsl735qFV0
         R9xf7wTgBC0RVtBweTU7tAw8VCSpSkROEfmCFjOG20ljEF9gjSYoGyqS/aJmEvs2luco
         oI3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BlXpczMF481hbv+Dqcdxc+FxCEeRo3vaWZiBXDPfFjU=;
        b=iLiP8soI2aBxOtYgmFohk6kMO8fF7lk9hheV5yNvZTR/Jvwij1ilFC2GhHgpsW5S5P
         DIhm89yz5Bp8xA8nEaiXdLZhi8wKunwVr3vgxoqj5uwaXV8/KxyZhqDe1hPFveuJZnYU
         UToHhTVrdbzmq8Kfsft3ufpcwke3u3GBwe6Acy+Qj6LaTQH+HUOnB7cHOmHqyfIlPsPB
         DdyP6A3h3hVTFEmG3lHds81i7jeFLMw7Aq0EtLSYHcOwlKn/lXI+5yiyGGtABN24rZuJ
         7x7qXzGv05MprTaBYsf5E1cnIy91ggGImqD/41QjNQfP7y7OCsV79HS4B8sHOVEet9DS
         YtMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BlXpczMF481hbv+Dqcdxc+FxCEeRo3vaWZiBXDPfFjU=;
        b=E5UFolreicz8jI+wKL14Ka8uV17/MlsayU3DQFGw0AavNLZ0jMgOfyuSIa0o2tI6iF
         8wY62oja37q7MxmadMxvc2FuDB4icLtV30C/QpzRB1XRQO/WTarvSK2odp0F32otU/cz
         RC3ydycVn6vmgTXVEp+EJrw4ObB4JHHK8x32I7IUHmCHFUCaytLeIVHI/ne3hKhMW2j7
         ARba2gJco49h0jrso/fo857uwHE7lI9y5ErI6T1ZOUfuX0oDPmHXE0RnSfCOpYIPxi9m
         bvp5pbMXk0bv9MrDO5PP+v+4DxyVBIV2jbVVc4CzvWeMnaD7AYey+lT34jgy1W3vTDmO
         HddA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ktSHwAiuQdEjna62NXGuqYhGFdZhn1K3T25pYvNjymoqziTn1
	ZD95QvXmXol4j0IlHRKHHls=
X-Google-Smtp-Source: ABdhPJxCXM4iIBKnq5j33P3IFLmgtnylPy+PfFggTjPK6zyQXcmZMJUgeqJ9v4qVAQQ4mHOuho5zSg==
X-Received: by 2002:a02:cd8c:: with SMTP id l12mr19976266jap.111.1623145112554;
        Tue, 08 Jun 2021 02:38:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d902:: with SMTP id s2ls10240iln.1.gmail; Tue, 08 Jun
 2021 02:38:32 -0700 (PDT)
X-Received: by 2002:a92:c6c4:: with SMTP id v4mr11829299ilm.216.1623145112221;
        Tue, 08 Jun 2021 02:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623145112; cv=none;
        d=google.com; s=arc-20160816;
        b=JnS+64F17bk/E+oInEqF9r71Q4Yl+VqQCEPEZhVWAHgS2UnGXufVSUq39x516JR+Uk
         KZBCO228h4P3ZSri8sv74RKbVOFVw/d/B6c9CtpXkVYBJZJSglf0suhfoU7sa23oNJEl
         2f3tcRsotlIwLlV9+WtGjMjXr5T3kXsL69RZDc0eGt1Wb6nTM8MiviqPDIivOBz7TAfF
         CCvqiRHnahMth2TLrWmxcVJcOfZE//m7yBjcR98TDAX2WXHm3Vn9VYQaoSOJ6lusMi4R
         NBbzHgGrv2FJOGF2ADwBrLHX4FhRTczluYSeZsq4Oy81OLH/5LNz4t9yJh+Pzw1ZoUUi
         KKxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=iy3tbthoBlloXjAj1XrOTzlNE8nVyi2PAtWSAg9jlGg=;
        b=QmveyZj21ip1zP35aasS7TNYg660h7P+wtgisvODfJR2i9B7H30YSsKJyJ85IJ92wy
         zSWj8yQtvPRxqH9u4CaYnxVzW+4YgH6kTg3svt1wfSyLPjB9M3mg/03scwsLUS/J2ard
         laZIUznBGjP9lqT5YyofQjTxESmtntYkxb5IdUvyAEZWezZdZqMeLJwQzuplUYWUabUx
         fbyGbp7fJC5k2cpvOBf9h3rL3MNMJu0y4oOKn3kDP/IlAszHiCh9gHgZ76b+hd/nmzbd
         uJFt6RCZd4J9XKFGleCk/m7tMqb99bUn3Ov6x+KA2xDEKSge9/vNBLYDCTA3RYYAAGHd
         ILfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id v7si704251ilu.1.2021.06.08.02.38.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 02:38:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R161e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UbkgnjE_1623145105;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbkgnjE_1623145105)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 08 Jun 2021 17:38:27 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: hyun.kwon@xilinx.com
Cc: laurent.pinchart@ideasonboard.com,
	vkoul@kernel.org,
	michal.simek@xilinx.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	dmaengine@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] dmaengine: xilinx: dpdma: fix kernel-doc
Date: Tue,  8 Jun 2021 17:36:56 +0800
Message-Id: <1623145017-104752-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as
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

Fix function name in xilinx/xilinx_dpdma.c kernel-doc comment
to remove a warning found by clang(make W=1 LLVM=1).

drivers/dma/xilinx/xilinx_dpdma.c:935: warning: expecting prototype for
xilinx_dpdma_chan_no_ostand(). Prototype was for
xilinx_dpdma_chan_notify_no_ostand() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/dma/xilinx/xilinx_dpdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/xilinx/xilinx_dpdma.c b/drivers/dma/xilinx/xilinx_dpdma.c
index 70b29bd..0c8739a 100644
--- a/drivers/dma/xilinx/xilinx_dpdma.c
+++ b/drivers/dma/xilinx/xilinx_dpdma.c
@@ -915,7 +915,7 @@ static u32 xilinx_dpdma_chan_ostand(struct xilinx_dpdma_chan *chan)
 }
 
 /**
- * xilinx_dpdma_chan_no_ostand - Notify no outstanding transaction event
+ * xilinx_dpdma_chan_notify_no_ostand - Notify no outstanding transaction event
  * @chan: DPDMA channel
  *
  * Notify waiters for no outstanding event, so waiters can stop the channel
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623145017-104752-1-git-send-email-yang.lee%40linux.alibaba.com.
