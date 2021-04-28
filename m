Return-Path: <clang-built-linux+bncBAABBV7EUSCAMGQE7AMLATA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BEB36D547
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:00:56 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id c1-20020a5b0bc10000b02904e7c6399b20sf41167479ybr.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 03:00:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619604055; cv=pass;
        d=google.com; s=arc-20160816;
        b=ToTohxYyQZxwypBMFkE6UVuRD8hAjw4/Gv7cBhlfyeTlhBFgRfHC+2NduQPtVIeTmd
         8XPn6yjOFh7gfXOvW6usyWg/7wJoTROp1VAfZmuAK5bO+70UJId00BNQroOefIYJ1Nx6
         CiUSebjAYcIOuGsP3WON8VMW+wQYi/UTnoCwkiq2FxHVMcie0PWo4S5VpFpW51qp8luM
         SePJNznHtnU18uwxdapW7UFo2Fh5qlPQQ/mqEpQhL5jNw5+vGpyllXYTKe8nPxSYRHMy
         7NsJyZPuGBzFFseKsG7EVlzB0kFikMmsa4BM0o9ID/jXEfLahwdfkEiX0FLvFQd3pTOG
         mOtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=dJxT+siQ6sw1kqmh6xF1lJqJWhEeaAHsB+bbL8dCv2M=;
        b=IZzOpyHsXCh+d+TgSXx/AaWSVnFhicHd1UXruzP6/i2IOTIhZR5zTRs4ABoV8zg0Tv
         RUgIGHMBGakQ92jnk6X6AOgNAeCLyl9oZdtTR4vZDWj6YA4KTVjqxAIgZ/JepuYafQZG
         gkdEPaBVlTUzhFMbl96zlgjAs0BrXzcJ1WPzUCbW7fGOPmAds2M6Zk9OSK6z+4u2fR1v
         L9+4Ny0ULXHleINPM1VOxYtbF71+p5GbZXFJcIMyd40PoDi0UGqiDf9j2//Aiz3bNaWS
         YkPH0xUlA51LAqSHIvsZ9O7g5/r6VoeaeUXtn4NCMP7G4VO/EmICfWIXYQq/kslIDy81
         CzFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJxT+siQ6sw1kqmh6xF1lJqJWhEeaAHsB+bbL8dCv2M=;
        b=cpbXCAJdnXH0dc8z9alZrW1D769KLmO+BJ9qvDqJwmPxMwHtABVXfLbs3s/voKcE7w
         f6865PzN8ZdLpRKMeFWFKosUEOIppvSGmXtf5Z8mCuMG7+PSKjvo9TuCz3R873PTIyQN
         SdtFYM3IU3a0jHd78No59+sFPz24voODWpwwiIasEFGS44PJHA+xczptmvyasYp7RkVz
         pRLaJSaxwe4euOqqc6pHAPevKMVSDHvXTS6j+8DsoqG69EiSzlu833gEb8TkTxqvYIw1
         WiVUFGfmkjDNyPKZuZix8Vyd0yuq2iNJzGKfgrjncqrXYPUA3xehCSdv7VXTu9L6UHV2
         10kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJxT+siQ6sw1kqmh6xF1lJqJWhEeaAHsB+bbL8dCv2M=;
        b=pohZpXdPeGBalntIu1NDQD61/3mrGNuhmPgGn4cP/hpmi4fu0eREAy+hzQGafgl6eC
         qq7ysp3DGXRITS0PBtvbUmfm9dlmcHbXIR16aBZkM5TxjTKlvytaL0bswbMnxFlNTEEf
         +KXYJ4W4dzsgqgeIrqu+qauFFHBhL7m/TITxhAMbIVXChLj2klo2Elg47Yh9UkrXzv9v
         lHooFbfC59BIht0rbWQQYKOKo3e2PuYeljSaqTdmI8Ij3c5obswHxQbqmgNhko+jYtXb
         XYdG4Q6nUTGJBgnI8AbJg3hpUwkiWsEOt957NoB/os15oSEcOye9ZRFkoPfIIPIzrmeb
         oY2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DBKyWYtsCy5Ne5iPT27m9QwOpqzgnQ6b4+rL/b4Ql9I0CoVhO
	pBxB3fDVIyhQotzWcKLNjWc=
X-Google-Smtp-Source: ABdhPJxDwquBsGZKbD9FusIBoPX4RvYDyZZ0cla8p0xRIx/j/B1jVcRS0I1+8niwAh1oeQFXzJgbPA==
X-Received: by 2002:a25:b9c1:: with SMTP id y1mr38498857ybj.321.1619604055267;
        Wed, 28 Apr 2021 03:00:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls306544ybk.11.gmail; Wed, 28 Apr
 2021 03:00:54 -0700 (PDT)
X-Received: by 2002:a5b:788:: with SMTP id b8mr37001372ybq.66.1619604054870;
        Wed, 28 Apr 2021 03:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619604054; cv=none;
        d=google.com; s=arc-20160816;
        b=GCiL4w9n51YmPNF2VU3Y7b/k2/kLiFVUZWDX9yUf4nTIVSB3zCpaZvLZ6kx3IGDlPo
         muJ4Kfk8Kg0BZKF30VcHQMbZ3ykiVeW2nn2hLX7cq627q7qN3M4byW76PWmilRct6p3N
         JvaS2rDJv40gG2oiOCktxgmMJZJxGwh8YD/hBU0bS/RbJ36Qmw2ZIJB/HhOPpBzVupUL
         h5o+UB7OzgEmeSfxYBqRqzGTF6AxYE39yoeulv+FDE2EPPruRl/rPRAzm27nnTsqQFFR
         oTsILVwwucIxT177XXGue115iF0OIJkqiI96AuatVIq9EULon4ssYolEFJAg47Hbj3c8
         3xvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=iHNds3wu7oIQ7F6Ww8Y61vlt4igtp+kTbZ2D7hvfhGQ=;
        b=fGMpM7ALU5YS5TGGnVExo+V7dYCyEBdBsaetjdfT90XPm+VL4S9DxNPbIlP0x8CYKm
         +X6kH3i9Iuv4uxvccRf4a3oFXP1ODJiYMfh3LecJYiq/iIYlOAIHOnQc3heMTk735gPx
         XJKMVp38aaRqw1qMbGbfeISodDqSX3Gi9VEICuu5WIygCGY70SUsoCzbQVZPEE7W0hhZ
         FGfEvAOMxfQ3ARk3f6qUvXkuK0iiuAPQT+eot5AsR4PsSz4ad/iBycDJ3lR5rq/BzXMz
         16NbYtYJtmb6QJByFeFUvfrjUg4LbSrpRQncUKmBoVL93POcyOue81FtBQ2231A5q3Cf
         y84A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id 188si814585ybb.3.2021.04.28.03.00.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 03:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R931e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UX3G0f2_1619604047;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX3G0f2_1619604047)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 28 Apr 2021 18:00:48 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] llc2: Remove redundant assignment to rc
Date: Wed, 28 Apr 2021 18:00:46 +0800
Message-Id: <1619604046-118132-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'rc' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Cleans up the following clang-analyzer warning:

net/llc/llc_station.c:54:2: warning: Value stored to 'rc' is never read
[clang-analyzer-deadcode.DeadStores]
net/llc/llc_station.c:83:2: warning: Value stored to 'rc' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/llc/llc_station.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/llc/llc_station.c b/net/llc/llc_station.c
index c29170e..05c6ae0 100644
--- a/net/llc/llc_station.c
+++ b/net/llc/llc_station.c
@@ -54,7 +54,6 @@ static int llc_station_ac_send_xid_r(struct sk_buff *skb)
 
 	if (!nskb)
 		goto out;
-	rc = 0;
 	llc_pdu_decode_sa(skb, mac_da);
 	llc_pdu_decode_ssap(skb, &dsap);
 	llc_pdu_header_init(nskb, LLC_PDU_TYPE_U, 0, dsap, LLC_PDU_RSP);
@@ -83,7 +82,6 @@ static int llc_station_ac_send_test_r(struct sk_buff *skb)
 
 	if (!nskb)
 		goto out;
-	rc = 0;
 	llc_pdu_decode_sa(skb, mac_da);
 	llc_pdu_decode_ssap(skb, &dsap);
 	llc_pdu_header_init(nskb, LLC_PDU_TYPE_U, 0, dsap, LLC_PDU_RSP);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619604046-118132-1-git-send-email-yang.lee%40linux.alibaba.com.
