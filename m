Return-Path: <clang-built-linux+bncBC27X66SWQMBBCNI2X5AKGQEHMCROYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id EA70925F0A0
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 23:26:34 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id r22sf7918361qtc.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Sep 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599427594; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBJuSwDRwqAZNYEVQvd+l6JuBoakt8cq3s/0pl0X+gidPDVaD2QfwmA7rGjo5Y3TEs
         OT8Ga7GJWvaFuYgyNJ8dWJUD5GbKnshVFtA4zOMN8NPwYD1IRIT9IlhXL7AcYHnktYZ3
         a0qSt9UpITWtSORIqSdrcrHfBQYQief96IswWlMydIDk/7ePRf/Aua2yRKFGEi1iWnre
         fgVTZE9K1idn//sEW1mK/7ju6eTy6xuY4Utmsm+vAGcES9zu/9MgqZY/p/x+runS8LHb
         1ieBZ0gVFcXTsKRkEy4B9HbDm1KQ2D95WSwqbTSTA273NvOkuok3elobBV/qyeX9rBWB
         Dzpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=S7gvX4VgsgrGWo/Wm98mQvFsZbIAZpaZGp8re2Eimko=;
        b=i09arEYdrKkf/hUDkrvYht3AxYmQyx9wz5UFRWOqoOjSsYePVt14eMYeq8nb6jpqVH
         4cOAWhSMIbAebupRqV3q4ZErTrJWv2oUwIRj/LXRU6Aobsm2bkQpLI9dzudqHrtO17TW
         kw0dVG6CIBh4F11SUdHpvAmntnFlXi+nngiWgP9VfPBUEtIeDvUwD2fb+kDm4Erd9y9W
         oijdHnGeBGOjJjMIe1qbD7ZrEHfP+E4egNRwZqmjvw6xsxE+U8BnxU1X7+YQreC8BmfK
         smIz5++ClxdhBXdBTKzipQ5i/aqMoKPZA3RHGg0LTOiXRtVJd96KFOt37SlcFRGJvJbL
         N+iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TbVdc+Nb;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7gvX4VgsgrGWo/Wm98mQvFsZbIAZpaZGp8re2Eimko=;
        b=tUAzo/pf1kdLTkjrqDoRXIzosHMJSrb/zOVzMW+2fMkILTE3TJ9HjJwdkqvG0JlwgX
         h6pOfBl6mZINw6inibyFuvBCtW65KkGRfd8AQAm4gOOdd4WB2mAjOGofqoTH9NNAxWaC
         KrzuRUg3pQlFb9ScMm6f4V0xl0M5NGnWZ+/Jeh571QzRs3BpUQt3BhDDc98qI1LguTJY
         QXBrRy7+zRnn7KxfJlYnJ7u1RwqY0AmMjAR0PSD6/eUMLKV308J8SlCRrkoLK4D66BSU
         knbxV6DQLF1MWwmqKnZ/7GmQPJ8BG8XMhqkncUe/KYvfP5qeHApozy4csjFxuHe9fug4
         xY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S7gvX4VgsgrGWo/Wm98mQvFsZbIAZpaZGp8re2Eimko=;
        b=JuJ/TUHaOQQHxDeRGJ6GkdXJBzcoTeoqTBo4XdjBzl55JSNX12SsHi5TiZx19v2da2
         ej4D/lIWa1F7BNVlHJnQh7/1TiKomQpjFffA/rLqifVjem3OVGR2CYJhSkqVtXSD4AF5
         zYesikLBst4YohbgeyP+fZBXOWgy6AZ7Df3jLMGTKOPK2Vlsc2FS4xKi383vJT+up7aM
         tmn4Sc5LDyn/UM8VwtKK3RFeAP90WAKvdQLRiv5U6jkCrZsbIb8yuoCKby8aiouV2CYW
         Gwag5zy8zrT4dCLTi92rb5H4MGv3Em/1rFh5Jlk8IzFW+zE7qHe/UPWD8kLBWWiCo8T+
         D4kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kXfqdQgcTTp5wASPOuI+Wgq+pwUcg5yqeaV2ZbppGnItdMsPC
	0ilWgB6gLi9mep8FZKHwPkQ=
X-Google-Smtp-Source: ABdhPJzm6X5hV4h1tdmvn+itTtLcwqd/d4Ej/Bxjf+A6Y/niDC2joaGneXpqMNqA3UrRVraUybM5jg==
X-Received: by 2002:aed:3584:: with SMTP id c4mr17301867qte.84.1599427593999;
        Sun, 06 Sep 2020 14:26:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d6c7:: with SMTP id l7ls3614857qvi.8.gmail; Sun, 06 Sep
 2020 14:26:33 -0700 (PDT)
X-Received: by 2002:a0c:f5c5:: with SMTP id q5mr17312074qvm.29.1599427593612;
        Sun, 06 Sep 2020 14:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599427593; cv=none;
        d=google.com; s=arc-20160816;
        b=WvkNbxmf3xHnzloCbkmDLQzhGwMIh91hmf0fak5hJyQoA1CcBaIExjioRxgPF+Wc+p
         Q0FiVWNxDpESpuNof1xyrgfkgACqKBRXZJcaD/PokXro2qNqHkpj4CMyu4Eiiiw2SKpG
         c5Wn0g4mFNRYkHZePfTAnfbMEQY1E1ZiJNV6jjujWgABxZ4Wptgf5CEQEyUVEHoIdNH/
         W6zm+6FgOxWa4wXZ+5DO2Wc0SFlgt/KrU70PgOULOS0oyc+azCkLd/xqklGROtgVdfzv
         9s3T67+0Cm+kLlWHXX47SNnQGrKRLWh09EpunPru3veiQCcufuzUubih+EvlXsLg9xIo
         QVEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+C6m0PVka75w2yKn4NnD8dgwNKYONinv/V5y0NmFCqI=;
        b=rX9V3Zj86mibaSaGP/kZTRMmj+yyfvb7mKR39Mnih0DoSwMJ3IbkTUjKAcIM/nbuAO
         KIAFlzar8UCQOTHnHskFDCq5OhncRyAn3mWByMqp4OiocYDX6ryEen/nn9Zfq1w8JIAW
         jsoa2sDT1ZDRF7N/G+cOoKx5US/5txXDkoWIEqtSCWMW6YRUv0NFv8JCmBnQQ6z4R05a
         jPY+yw/j/0z/hJ7wY0tyESVaa/lMF6RqZAEbEFYv9sj7aX1kIeHqQKR9c1Q2v3WZWVAz
         RGgT93g/7PiC7FrZeeO6INk1mSnKTda6uMYF2iUrzHsU2Q1a3mChnRXAKP0j6JK9m3ey
         8t6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TbVdc+Nb;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id a27si770566qtw.4.2020.09.06.14.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Sep 2020 14:26:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-orbmRChBPkCJZvM2mXtxVw-1; Sun, 06 Sep 2020 17:26:31 -0400
X-MC-Unique: orbmRChBPkCJZvM2mXtxVw-1
Received: by mail-qt1-f199.google.com with SMTP id j19so1804424qtp.19
        for <clang-built-linux@googlegroups.com>; Sun, 06 Sep 2020 14:26:31 -0700 (PDT)
X-Received: by 2002:a05:620a:2006:: with SMTP id c6mr2372111qka.240.1599427591274;
        Sun, 06 Sep 2020 14:26:31 -0700 (PDT)
X-Received: by 2002:a05:620a:2006:: with SMTP id c6mr2372091qka.240.1599427590987;
        Sun, 06 Sep 2020 14:26:30 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id k6sm9888276qti.23.2020.09.06.14.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 14:26:30 -0700 (PDT)
From: trix@redhat.com
To: kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	mkenna@codeaurora.org,
	vnaralas@codeaurora.org,
	rmanohar@codeaurora.org,
	john@phrozen.org
Cc: ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] ath11k: fix a double free and a memory leak
Date: Sun,  6 Sep 2020 14:26:25 -0700
Message-Id: <20200906212625.17059-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TbVdc+Nb;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
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

clang static analyzer reports this problem

mac.c:6204:2: warning: Attempt to free released memory
        kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The channels pointer is allocated in ath11k_mac_setup_channels_rates()
When it fails midway, it cleans up the memory it has already allocated.
So the error handling needs to skip freeing the memory.

There is a second problem.
ath11k_mac_setup_channels_rates(), allocates 3 channels. err_free
misses releasing ar->mac.sbands[NL80211_BAND_6GHZ].channels

Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/ath/ath11k/mac.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/mac.c b/drivers/net/wireless/ath/ath11k/mac.c
index f4a085baff38..f1a964b01a83 100644
--- a/drivers/net/wireless/ath/ath11k/mac.c
+++ b/drivers/net/wireless/ath/ath11k/mac.c
@@ -6089,7 +6089,7 @@ static int __ath11k_mac_register(struct ath11k *ar)
 	ret = ath11k_mac_setup_channels_rates(ar,
 					      cap->supported_bands);
 	if (ret)
-		goto err_free;
+		goto err;
 
 	ath11k_mac_setup_ht_vht_cap(ar, cap, &ht_cap);
 	ath11k_mac_setup_he_cap(ar, cap);
@@ -6203,7 +6203,8 @@ static int __ath11k_mac_register(struct ath11k *ar)
 err_free:
 	kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
 	kfree(ar->mac.sbands[NL80211_BAND_5GHZ].channels);
-
+	kfree(ar->mac.sbands[NL80211_BAND_6GHZ].channels);
+err:
 	SET_IEEE80211_DEV(ar->hw, NULL);
 	return ret;
 }
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200906212625.17059-1-trix%40redhat.com.
