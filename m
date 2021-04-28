Return-Path: <clang-built-linux+bncBAABB4XDUSCAMGQEC57VERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5EE36D538
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:59:15 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id q4-20020a67cc040000b02902221bedbe6bsf10200673vsl.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 02:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619603954; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJdnLrewDmk+2Rf48aMT49r8pePiuRHYo/9YAbgaFkYFt4uwcbaFKmTQq9XIbouQoz
         iV0cRH8dweHXb8WTXEsX2Aq9gy8t0K6+VsqokiefOIwA5MnxgLPwLg5m2giHOIov8AX8
         /8nfClFphr1dGlP5cyd4jFFjsKH/PZmDgsF6x7/RX8pyFpxHpuJqXWNPtuWH1+YxEWwY
         yCW8GntORWu3SpgsRSoG6fKAFulrTpBquJ4H9QusYZaWFonamimv9ixCwHAUaJIW0YmP
         b797V8oKQcPvetHc2l8H69I8CvHBF8zBiTwFqK6Zz96rgNuYDGD7S6Waj1sjOCsk+OFc
         M3Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=VZE/I8rcTU+AeKtphcCwAkoEEwzzSgc7WYXDsGjN1xQ=;
        b=Rb369v/iNQwfpljbBbURTDXpn9ndUH8coR1NmU5QG++z10WbWxlKoQkJm3TrOHtQPh
         IepKTpMVNxyW6np2Fb218TAmLHt6iBdA/hM3nUEktcxYOvSviLleAvBMQ8w+A1fLE6h/
         LFzK1yHSwSoZAD2/ZSt5qT/pAW8ow12k1TzlKYimSXM5mJCOd3aQ0Oml97AcxssI6odL
         B+nS6v2J5lTQ93slxi/Ddr2P98bAosEF9e9q2b/LNMVd1dSOO+vbBe+NhO2hQ6Cwcpnm
         kf4ongYsv68N/8O0b9nxIIXH7B8CEw46mV+ErzeaW5U6CSNkAADvJ4rg/4fHL7+9t1aL
         Asww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZE/I8rcTU+AeKtphcCwAkoEEwzzSgc7WYXDsGjN1xQ=;
        b=izpKap2E+eyq82UIrn6pdGrvlFNan5V0cvvXwdvrQTy6N9uqJASBn/EmdffyG2xUeF
         Czyak0zSc/wcyKOxtqYjJOjjGvGOqG63BimDt5YYaa2wu9IURANILT/JvWzaJWzTYfi3
         yXc57Q6+yIlaKizDQagBLbP/mnhczQ7objKMzW82a6aqtU+nxFhcYlby1dDPTLPa62Yt
         tqPz/UobXAsj3uDiYA/n4OKDeHUeg+PxEjwpucZ/zgHKFFq8aWoYPOkRnJEFhwKIqGm4
         2wSStr3PqlqoGZPT/nG2lanVLRW4FHrNlFS3/jsElAfg8n+YGb41HXuUydNfRRocnmtb
         giSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VZE/I8rcTU+AeKtphcCwAkoEEwzzSgc7WYXDsGjN1xQ=;
        b=OMaLn/LsQK8eJYrSDau5X6bhloo7i71dnIHiDjER9KDXjiIBriyChT5gwHgrTMrBZ1
         1st5rcijHKgt1ZDQH8YF+vaDYzQVnTrOmzGU4WN/0hlch2eThhb9Q2Hqlft/4M5urk14
         BlIFxqyMC4X86hDjz5XTSU2UtrseFMojsSZSyxKMItYoEzBKq7UuJaiEOC6IZ8Drljch
         lfGTwKmBr4Kmy9fOfzg8JA3DrjULkpTxZXqxbAI/8IoajF53wI23MGR3qxkXj2Itl6Vt
         sN61t91okTJWHNqf42nuJRb1BjbSSgKJxZDcnVIq+3caz5Nm7tqA9SL0eoonOzhfYBw7
         4w7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s9AfOJESWsApe3QRfNa+Pb63zFuLSM+zaSPb5QEBGwUrKMSEz
	TslzgZRpSyMFU2sd5l+QNBQ=
X-Google-Smtp-Source: ABdhPJw//jjfshTjol9Rmhfnlb6ePqETGQpxMv5q1tSJxVJfy+HjRMY0EtHz2e7iBoM6tpMjK6yGyw==
X-Received: by 2002:a1f:1f4a:: with SMTP id f71mr23986542vkf.7.1619603954426;
        Wed, 28 Apr 2021 02:59:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:31d0:: with SMTP id x199ls1114589vsx.0.gmail; Wed, 28
 Apr 2021 02:59:14 -0700 (PDT)
X-Received: by 2002:a67:f4d0:: with SMTP id s16mr22979507vsn.25.1619603953972;
        Wed, 28 Apr 2021 02:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619603953; cv=none;
        d=google.com; s=arc-20160816;
        b=r/cISK5bHeiBihDUZNXV1L52+KDW4ooSWX0BYSebfcY/m/TXNymA/3GVzUsMeZQbYT
         DUKLrXiwHB0vkPJDzY+xeVUJgshnYot0+q82eHfpC4CWSQC090gDPL5TXkovRPUnFgOY
         NfYrKJi21l99YSwGh+4srvaHJs4I3O7AeFRt+L8nXmHToFcRGPyg+UK6i7bvyGCyfFYJ
         B6sdqY1NO1z68u8crIi++OPkKJSkWQsaTzfEw5pDo/4ixPzLILcPUi7QdbAXvxHv1AMb
         3f5+Be8U2jxzyzSkP5oYuYvHoMBCFNzdplWtoV5MQ0yuO2KkptDSi5D5dFuSd6nygojF
         A2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=9YL75A9q8gjNNdPNTsOW00DrBfn1F+HWSdIbG/VeNPQ=;
        b=jdGNwOgJtXRqdLboYztXXLBM9FhXjMPjAxCwSy+7OSn0PXxyhcovjdqrqn0fL+SoYT
         jkS8dFJNxPpPHYJAk989lx0Gf2LldFIkiGnUM+vyolnp8HvnL6ysxPpMgsNkOabUHSOX
         wclmxNXcBQ7hmVKr/rReBCDagAacDZMnVapPxsmZslzZwDbkBRTwwh5BuzKgaCJMFuHu
         8/o3yr0y3KACTBohWUhPaBipl3em5sPOhI4GMwOResNFWRjWZRhnw3ynblEkFRNEpwKn
         EgcFTDQIFsUUkZpXYz/L40IVLidDqUSREqy1jGJZd9EjFmuf3sN58NvUmH1YCTJRBolC
         tC8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com. [115.124.30.132])
        by gmr-mx.google.com with ESMTPS id p12si2403883vsm.0.2021.04.28.02.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 02:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) client-ip=115.124.30.132;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R451e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UX3sbtO_1619603946;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX3sbtO_1619603946)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 28 Apr 2021 17:59:08 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: johannes@sipsolutions.net
Cc: davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] net: wireless: wext_compat.c: Remove redundant assignment to ps
Date: Wed, 28 Apr 2021 17:59:05 +0800
Message-Id: <1619603945-116891-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132
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

Variable 'ps' is set to wdev->ps but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Cleans up the following clang-analyzer warning:

net/wireless/wext-compat.c:1170:7: warning: Value stored to 'ps' during
its initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/wireless/wext-compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/wireless/wext-compat.c b/net/wireless/wext-compat.c
index a8320dc..50a2330 100644
--- a/net/wireless/wext-compat.c
+++ b/net/wireless/wext-compat.c
@@ -1167,7 +1167,7 @@ static int cfg80211_wext_siwpower(struct net_device *dev,
 {
 	struct wireless_dev *wdev = dev->ieee80211_ptr;
 	struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
-	bool ps = wdev->ps;
+	bool ps;
 	int timeout = wdev->ps_timeout;
 	int err;
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619603945-116891-1-git-send-email-yang.lee%40linux.alibaba.com.
