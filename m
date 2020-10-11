Return-Path: <clang-built-linux+bncBC27X66SWQMBBR6VRT6AKGQELKSNNQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEC428A815
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 17:54:48 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id z190sf3003460vsz.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 08:54:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602431688; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRpeNRmE6Jo06oCisa7naMRCYFRdgQg8uqdR613QdVsqGtKN/+lNGgXSJehHRUt/K7
         3J2jgohxtDOJgB6thXcK/hrHtkBi96DHcGwbrUKlHDxTiHKLiDvRqrMjVci4u+cP3DiD
         Mx3LjNSxJiHQR5yTqSrdUJTB0lMJejD/qe1EECP5ZgzjymehjpkRP/CC8tlPpypmzGXe
         HhXAtvAjbid7IAhEe3IGfT77JePQlwvljw5a2oT1ZUQvQrqPV44fV3G/1/U4KryLXAEF
         nFL+9GvCA/ldBLOBPXxD7/AUpQk0xmOsDW53e3ER6q7Z/yk9At3biYzl88sejYDnx43i
         Pa7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=3vZv+jG7Obevuhmf865+OvO4iUJNi3Wb6SF9+t6QCyI=;
        b=Pmjw8cxbnMpLElB4G1TjY5+gfp7/bFi9KGSijYjTAdABlsL/8DTjrYSRRqwy1ekV6l
         FgtxZdZdFMBzQH9GcZ2qxgU7sX1f1hzUxW4Ns3zcCXHiKSnR7/TDfqdbCn1/xdu/Ae8B
         ILHIRzr6I2xnRsv8IZVY69dTQd9qc13sK9P0itIFk8iOzmZq2eCHZnIlVzkb8mas/qzY
         gK8tYdnQBpfRqzNjvHsEIdZhv/bideMQApUrK3JENK2oL0BbrVbEq4ENOWegpxCpd6pr
         XYP30ss9e8vmBtko5p8coCBm8s32w/kGmn4b/8aNL5wZe6RkMY1gL02rVXYjfW3L5cps
         knnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BnaE8H8/";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3vZv+jG7Obevuhmf865+OvO4iUJNi3Wb6SF9+t6QCyI=;
        b=ayXQr+TdsyksGAIkhXQHwe14D5VDuhGB8tc9NCryx3ud1JQsDuCkU8LvCA1v8psDkd
         +rOpLjYO/seQxXSLx81xoNbiroHE0J0FwtC+HlY2xvMWTJM6IcOgmM1Fu1LVx8y6RDDq
         rzvIAQK/eCgdBHVeIqSwta7lSUrSwKPIIi2x9HjnWHIIhy4r+s6TvleLqu2FyKSkDVAd
         2XbaT0uEoO8qxIIKkhcrvkBH6y1H+hoLG/TLp2DuQiv9KGl7sjohFABiOZW3OFIGjauI
         u4/16s2ajAqFTdghTEDG3rvAggFr/PIzgh9+qJBe9+ZSJU46hXwl9VU3y1e09IOjna2P
         5zeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3vZv+jG7Obevuhmf865+OvO4iUJNi3Wb6SF9+t6QCyI=;
        b=tdv/nF5Jj3xOmJnIRladhwNKFFcwNA4TSd5BEEbhlgMwHRiH2D2kFzmA2wfYDhof3F
         rFmYuUB2aDjmn4wTiQOnweAFdVz1D8Fit/b8YusWXoLNd7WV7hq/5xUQywWO4xSYFycj
         SA9yarge8yah1cFha482PfD/UnF/flYOgN819hAY8WSN1zTUyVtS8N7SmfQZCVdSzIb/
         iPncoGEZ1xrAAlWGtYosaX2P0q7LE+7IhLX51d+0EXDXR2kydQFvq3PxYsie8wUykJoz
         6XxOxAPLh9aiPHmLZFLlJqOpbFVKSspa1FwUZ54xgdn0N0h9o09lKyv21Kt4bDnovOKh
         ytPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332gnk2gW9VxErlmS+T0uvSdRyoaAEyD0bYpVmUF/Ebo97Mj9Po
	2+9xhIbB9CORbeRE5CWWU7M=
X-Google-Smtp-Source: ABdhPJwWMwQPAZjgyLRR1F6Bh4zHcdjAv7EWJb2WUN2DUVnzfbz5D25BHrqc95xvxd7ZPoew41Iyzg==
X-Received: by 2002:a1f:2b86:: with SMTP id r128mr11603571vkr.8.1602431687830;
        Sun, 11 Oct 2020 08:54:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2902:: with SMTP id p2ls25379vkp.4.gmail; Sun, 11 Oct
 2020 08:54:47 -0700 (PDT)
X-Received: by 2002:a1f:e186:: with SMTP id y128mr12033610vkg.6.1602431687282;
        Sun, 11 Oct 2020 08:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602431687; cv=none;
        d=google.com; s=arc-20160816;
        b=oa9uPni/MYlPwkgbhGTgBHsFBurJFL12kSuZ1nh6KNGbpJMdARH1q7nBm02ZOHdnkC
         Eg+6eWkAn4NAOe1lFQY2untQ5LRwayYHD6tNzz9VxPPG7h9gt6nYo8e59nYlDfc0gmsV
         JuzmyH1BMN0/TaB+sgb05A6TATACcU6uEd6Q1P7ceg3xps4NLvvYrbK2s0tr8fot+fwI
         tYkXqhfPeRdxFomN+XEcg5o/mgSWtEs+tyoVSHtpVi/K8ryZuAxvon6QECvOYCB/Fu12
         K9RugAVG3zFmtHxYy9tX8TUWH22DqdBZzNnWhAUsTdxqdtm4KKGmJPg4GhMeQI/LN5vD
         ctrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pR1M69yxrP9JSOS0Ie5ezAaQo49msGZptm8kNeSlSi4=;
        b=AhNkHK4IcX3rhbpxwKl42zrjzXlCnLPAI91tpFTJOjog+VdcIKr1eQv0R/1JEv4Rec
         +nh7RJP/+plx6iFxcy7qsotW1Tw2doKDl1Mkk2CJqu8txshhmFXILRWFS2Eoik++rmsV
         AkXnJcW/EYoTj5p+SVZuSm8fI/wb9TgpxTxV1nJ7xWzR0Olsuhqm1hU9bG8APp99I/Gj
         hUsTFYC5jYW2wpHxk7y5jRt4PwPOkR/80jRXrJwRfpGhQ/zBni3/8cOvF8r2ytaftIQ8
         JnkSiw63ISnS5WofzCw+WpuiHX3eS78jQ+GiTL9DxmH2hr5pGRywc9fmhUAM0F1MJCje
         zubw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BnaE8H8/";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v18si494032uat.1.2020.10.11.08.54.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2020 08:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-9cn09BDoOOSWIMVzDLTf1A-1; Sun, 11 Oct 2020 11:54:44 -0400
X-MC-Unique: 9cn09BDoOOSWIMVzDLTf1A-1
Received: by mail-oo1-f69.google.com with SMTP id f23so5848585oot.14
        for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 08:54:44 -0700 (PDT)
X-Received: by 2002:a4a:da53:: with SMTP id f19mr15863002oou.38.1602431684163;
        Sun, 11 Oct 2020 08:54:44 -0700 (PDT)
X-Received: by 2002:a4a:da53:: with SMTP id f19mr15862992oou.38.1602431683974;
        Sun, 11 Oct 2020 08:54:43 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id t22sm7969499otk.24.2020.10.11.08.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 08:54:43 -0700 (PDT)
From: trix@redhat.com
To: yhchuang@realtek.com,
	kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] rtw88: fix fw_fifo_addr check
Date: Sun, 11 Oct 2020 08:54:38 -0700
Message-Id: <20201011155438.15892-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="BnaE8H8/";
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

The clang build reports this warning

fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr'
  will always evaluate to 'true'
        if (!rtwdev->chip->fw_fifo_addr) {

fw_fifo_addr is an array in rtw_chip_info so it is always
nonzero.  A better check is if the first element of the array is
nonzero.  In the cases where fw_fifo_addr is initialized by rtw88b
and rtw88c, the first array element is 0x780.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/realtek/rtw88/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtw88/fw.c b/drivers/net/wireless/realtek/rtw88/fw.c
index 042015bc8055..b2fd87834f23 100644
--- a/drivers/net/wireless/realtek/rtw88/fw.c
+++ b/drivers/net/wireless/realtek/rtw88/fw.c
@@ -1482,7 +1482,7 @@ static bool rtw_fw_dump_check_size(struct rtw_dev *rtwdev,
 int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
 		     u32 *buffer)
 {
-	if (!rtwdev->chip->fw_fifo_addr) {
+	if (!rtwdev->chip->fw_fifo_addr[0]) {
 		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
 		return -ENOTSUPP;
 	}
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201011155438.15892-1-trix%40redhat.com.
