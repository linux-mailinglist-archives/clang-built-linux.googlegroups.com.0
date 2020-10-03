Return-Path: <clang-built-linux+bncBC27X66SWQMBBM4Q4P5QKGQEXKQMXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B162825EE
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 20:51:33 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id d190sf973870vsc.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 11:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601751092; cv=pass;
        d=google.com; s=arc-20160816;
        b=zTJr+IjaDWGK/CvtISdZZr0wR4k1vyk1VFZ5huETYCUDzzg4zF1FWaE8oLw8PHVlUV
         CgNQGxYEmPsn6VuOkl+M54O4Q7x2VCm5gwmfwrbHB0+S8A2bbZOqQi/BIqCj4yb58sg/
         URhMUfEcDG83o7pZty4BptMcfG71T72F704GKQdQVfl72XL+25lBjdUpZqpZpQxC69sJ
         TEeOAXe2ZWJY31zmGPApVs4TWkRRIPDL1iIOtzxbA7joQsH8fH+GbITnekmaGhCo5M5Q
         5vdLGVsuNdgaxI4W1vEEelW1wM/5zaXm3CMizrwNJQucZl4BwLGS888mbvHS/T6YQo/Z
         Ex0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=lc0q2MfYjMg2fET+4EdPdvwSGwqsR9oEBKwxIwAnq8c=;
        b=Ez+0rPAGsHsjLi4Ay3hfvNiVekINUQIe59SocGxhTupI90WMgUjgxbmPkdCwJoCp7o
         osfcAdphesZ+QlGGSsRWUmvvG2EZFOezQZlY/cZazcJ5O5k6tuo55xDxeEzAr8u41LrX
         MJGdeFSLu/gAlEMqh+dCViXg4hIyxRWEP6yDZyuZwp+ilApYGB0JV9PkJJumONy3wPPZ
         SiJZSwaM3X3Y9izBM8cyIpbO5ZX5fjQWeoX9o59n42fNpYkDQmnqqdJQJXJ9dCF5NBYY
         DKaxgNjPFMErLgh0mIEi0S2PAGgyLMj1+TB0JdIagXat/Hy8XAafsqte7GCIq6cqdzfH
         rx0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G3xr1y1b;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc0q2MfYjMg2fET+4EdPdvwSGwqsR9oEBKwxIwAnq8c=;
        b=tkoJk2WfsDRrwzgsXPg7i5HCFY6/DintzSiEqgMs3SBuVNv1FZF4Q6gyRpEAWmcrmS
         WlQH5QsRAZQPXrEi+ysyIs+B0h3Xg5JlMEtHMR4F5llbZu0gbEhymKJ9aMQeB2fn/YsC
         lNlhkXuNG8Uc5K91XG9YGwlX7eDqdgCBPkqkKgijmBZoBrMsw2lS/37OQLoNrZplSi/7
         tuPsN0gzosHCjS0+pxvQS33qGxxYbMThbPwU7pIcTXo1/sTMbf9FEUFtnnhdPEPR4RYh
         yX3BdXqollV/qQ1z8JKKyHe6X6MQBZkGijECY53GwBaMLMhBYOtgn79pDN8DzKRvuvS/
         892Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lc0q2MfYjMg2fET+4EdPdvwSGwqsR9oEBKwxIwAnq8c=;
        b=Q03rNorjEH1FjkA6A9oKTuWNBT70gJHOUtUkMgQREh/yFE7n9KJt1r0IruEvlGdwfp
         jEeJ1WkZD6A0ST4OuM7HBmjPqsnoociLZzwMpSII3wX6S0c1/av9euUzq7jX1ONp6GBJ
         LAip7XZj5j7Bue0r2fd8m/N9+vJ9oggP6kxsARy6Vz8BhvYEg8tPRboWD7borzaMgQYe
         hiVj9EEvohu8TclLLXdI4ghgnXP1FYKsN/vhtHerVYtDJVKgGmOUwF5n3lHvjcAS4pfT
         3TUE1x82kRSO1R+b+JHdtP446cPY2DqdnASC9h4TfbCrYtrU6vlsoKxiPRfKbn9/wLhf
         0hew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CMedFmnIJE296cJ+LPm10hZMwG5+/XucFOpwZBZYKeC44TZnM
	3GAjJx6q+Gfly6/DRRcN0a8=
X-Google-Smtp-Source: ABdhPJyYyyIkcysLqxHui0m+PCdB/bq/GEpNcfrm0yjDYn3qk6pUB5yTkVR78cJXw7kfY+HydkhKMA==
X-Received: by 2002:a1f:5682:: with SMTP id k124mr3764937vkb.23.1601751092049;
        Sat, 03 Oct 2020 11:51:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36c9:: with SMTP id v9ls210216uau.1.gmail; Sat, 03 Oct
 2020 11:51:31 -0700 (PDT)
X-Received: by 2002:ab0:59ae:: with SMTP id g43mr4105110uad.38.1601751091523;
        Sat, 03 Oct 2020 11:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601751091; cv=none;
        d=google.com; s=arc-20160816;
        b=epmoUEi/IzWlT0ng2c0XfbP2UWMZUr2iAqXS2SBKzFwLlGIinQLxSKxdZw+EZEc1+2
         3Wuw2Uj6n82r/FJ1hay/2eRn/cUJ2D07iPpd/1ydnUH1/f3QkKxlDZ38QpQE343idW6Z
         LFqyybA5Cq2o4vKH9s0/uIUGpI7IfKBn52m6qeBJ6UX8YlCXpHy/7hy4J2p1QkVTlozj
         iAPRGbeyWcqbWotPbDDg/chVFOS3lvLLSIs40Kp3H433mLBJc+0lsap25zuCJ+gbau86
         TNTuArNAmCHZzsI5V9XQ0Oz8E6zdjOXXegTPjOpd/IViweTxgbNJ6NhuhAYFTHkAwj+X
         UE1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PpQx6m8qbEXm3p16DACdfvVJytaY8r/kOwzsRi4ZXfs=;
        b=CSmF1RBT/XUzMAung9+4+azun1Q1FBijFyUeA+IuTzISaZxbwG+hYspwj88BfC6Ibw
         LE/oKI/jC8bYora5A6MPa1JlH9d6VA5fNtnRg0LWWuaoBiuZFi+2KOvSIlsEUTaubeV2
         htJxRZ3f+zBU/rODHfnICRWRDcuAqiSmuq4NY4iobMEi8j1WKbc7g/rN2hTlDA/tO1F6
         degeeAk+C2LRsOw23ype1kBwn7i3FQcb1rMddZ2uImryhgCx0BUrE8b0YkIQezMKdbFH
         tXRTB/rnOik3YgMPCClBrJLpsdiCJJGu4k8Tlz73TUY8fTmWqiNyQ5L8ATYu4AHyFi4Z
         vM3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G3xr1y1b;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u19si349578vsl.0.2020.10.03.11.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2020 11:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505--ZzPYzb3NnKPYQr9RZItyQ-1; Sat, 03 Oct 2020 14:51:29 -0400
X-MC-Unique: -ZzPYzb3NnKPYQr9RZItyQ-1
Received: by mail-qv1-f70.google.com with SMTP id ec4so535147qvb.21
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 11:51:29 -0700 (PDT)
X-Received: by 2002:ac8:1005:: with SMTP id z5mr7605649qti.130.1601751088989;
        Sat, 03 Oct 2020 11:51:28 -0700 (PDT)
X-Received: by 2002:ac8:1005:: with SMTP id z5mr7605637qti.130.1601751088732;
        Sat, 03 Oct 2020 11:51:28 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id v15sm3731672qkg.108.2020.10.03.11.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 11:51:28 -0700 (PDT)
From: trix@redhat.com
To: thomas.petazzoni@bootlin.com,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	ezequiel.garcia@free-electrons.com
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] net: mvneta: fix double free of txq->buf
Date: Sat,  3 Oct 2020 11:51:21 -0700
Message-Id: <20201003185121.12370-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G3xr1y1b;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem:

drivers/net/ethernet/marvell/mvneta.c:3465:2: warning:
  Attempt to free released memory
        kfree(txq->buf);
        ^~~~~~~~~~~~~~~

When mvneta_txq_sw_init() fails to alloc txq->tso_hdrs,
it frees without poisoning txq->buf.  The error is caught
in the mvneta_setup_txqs() caller which handles the error
by cleaning up all of the txqs with a call to
mvneta_txq_sw_deinit which also frees txq->buf.

Since mvneta_txq_sw_deinit is a general cleaner, all of the
partial cleaning in mvneta_txq_sw_deinit()'s error handling
is not needed.

Fixes: 2adb719d74f6 ("net: mvneta: Implement software TSO")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/marvell/mvneta.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index d095718355d3..54b0bf574c05 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -3397,24 +3397,15 @@ static int mvneta_txq_sw_init(struct mvneta_port *pp,
 	txq->last_desc = txq->size - 1;
 
 	txq->buf = kmalloc_array(txq->size, sizeof(*txq->buf), GFP_KERNEL);
-	if (!txq->buf) {
-		dma_free_coherent(pp->dev->dev.parent,
-				  txq->size * MVNETA_DESC_ALIGNED_SIZE,
-				  txq->descs, txq->descs_phys);
+	if (!txq->buf)
 		return -ENOMEM;
-	}
 
 	/* Allocate DMA buffers for TSO MAC/IP/TCP headers */
 	txq->tso_hdrs = dma_alloc_coherent(pp->dev->dev.parent,
 					   txq->size * TSO_HEADER_SIZE,
 					   &txq->tso_hdrs_phys, GFP_KERNEL);
-	if (!txq->tso_hdrs) {
-		kfree(txq->buf);
-		dma_free_coherent(pp->dev->dev.parent,
-				  txq->size * MVNETA_DESC_ALIGNED_SIZE,
-				  txq->descs, txq->descs_phys);
+	if (!txq->tso_hdrs)
 		return -ENOMEM;
-	}
 
 	/* Setup XPS mapping */
 	if (txq_number > 1)
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201003185121.12370-1-trix%40redhat.com.
