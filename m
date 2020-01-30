Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB37QZDYQKGQECIKS6KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCF314D50E
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 02:59:13 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id d129sf933653pgc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 17:59:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580349551; cv=pass;
        d=google.com; s=arc-20160816;
        b=RR64Q9SHmxbPOKGU/76EqMmJzAyi57qXChyC26IAQLavdTHGIz6WX1cehnrvESzPTw
         CMvBuLJTmJ0Q63RK/yKeFQzNB4ykJvjWHEJOGXlOBAXnike4ZJvljGLTezk+PPaM84lz
         Ss+3+ztZ3jRUsnlH97DAxnDJIGdVHQWZUciMK12HbPGLf6E+5MuMe3j6Ojo0ah5l1rwV
         6SI64zYzTLRF55DWEc6kKyH0V+nLWOoiC15oKsdDo7HTfZgO3vmwZN7bH/zhbBEM8N3w
         ZNH+EzvpOwG8mUYXrd3h88tFgzpQWf4Li9CDjNoMwya2j1aWGU7QCgg1NWeYwOxOldQb
         xk6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=e3t8Uezhb3ZDJB/NyUG6I19Xf0Fv2OGC7EGKW4rlOGY=;
        b=w1RmOzS8Aj5e7QKCanwulkNF/vCYwCvdLhfoqNwtKecpkzHWS7CUVnhN4Z2n/driZQ
         a5Lesb/dHPqlVcsiTfOIE49LXMnerc7svjwwrCQ20rn/SQCS3ggGzCvKx2JjrDP50zxz
         rHMThGwlfF9u+gEYDcDr/Lx3RRJfAMSHlj3aTN1MgcoOlVTbbV+JClU1d3Ja4OkkLh+i
         uIPxZG1aOWm3ALysA5mLSxe9Mhu9lpAe6ftQnV/AL5L/D7IyAmFGJyCjDC4vygkBW/QT
         0r06YOo4HFNpixxxWiZ5mJNVxng6JyKQPPow9jl3O5g1Nq649JP5qLES99JyCwRNxzEX
         9aWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVzpVYqB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3t8Uezhb3ZDJB/NyUG6I19Xf0Fv2OGC7EGKW4rlOGY=;
        b=BjsjeX70ai+KiFSVohiC03wkVPmGyRiFlxTadKI/jF//IT0msP7yPVlSqeTvqgNX04
         zIOcI9b2updC3aYoQN3JvOcxxo47PdUOLFfVRZaQfOFTtMi/TN9aOVb+ru5t2pgUG5y2
         myxAZ5THzFIpKje1tR//vWHi1rVbTSAq9/5bRfYc9XoQ8bJXMXQcJhAsB0J7c40vhYXd
         /hhsK6dJ10OymTyKpd9rNf7cu00XySNED8tzrWmGqFamGo+o5rsiSf3UGKQ8opvbK8zN
         zVrJZzPGHdfsr55dUL+5dp69NE/dMgZM34G9y+39vVRVnQ3tR2ZaGFhg/Kqka6UAAs35
         Eybw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e3t8Uezhb3ZDJB/NyUG6I19Xf0Fv2OGC7EGKW4rlOGY=;
        b=pg1ETGGe9hydBPuSgqCAZNi+poRaiaA1JoM/7goGpa7UxRwQLve+4HLXBYpSiHTsgG
         QBp6ERgInIHqfyeItCfYYtnYcssNlRqmRNn/Zze8ugiIFXa2D+Jkg2zBvq8ilhM2rpbt
         xMqrcdCAJuMddBjycJmtf/cwXtZz9E2/jWSJBzQxioje3yldo+73q5jEGd9ftI2QsNhK
         TIyshm6AG3URKrnCjIx0qKviTcrU31A+Q/P1E395a/gR9kCjcTVVidTcYMPc3VyzDtx3
         7DcliiWyOm9jpTsEnAagkoyGwIS4MVSilCRz50plT8TwYWXWQPnlysn0O89WVwxLzSdz
         SX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e3t8Uezhb3ZDJB/NyUG6I19Xf0Fv2OGC7EGKW4rlOGY=;
        b=NwYLHLXhA+RdO3gXUqCFQ4GWuBt+KbTfFnGobdB2TYiC5wYRwyCQi7D9hyY+Kcu+sH
         PrdFtXzABKW4Lx3/jWJXurCYQbNzy4eaKGMMNLXQ80y3XUCZhj6zvfu41c9fMAF5H0o9
         GxwhUbRa+winZLfHm2pvpymKX9TDdMG1RCyuXwwHyQRAoaDkhdE77h1LbDL7CXZOH0Pl
         eiaLIl2NGjVYQTmroIGpLliiBA65uQWCp/flBfIcifstyC4rup780zTO0I8DQe289plo
         nhbkdqNa+y1xw7Z+6tjGSL32ItnFx26mzqwd8zMPswUtQHUwUz4i8KAQ03aTYRN4MKbs
         GWEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVq2aQlRWbHqkjVYSdpU5MNAhGCX1aoRF6hqphGrvYbgfAPsq6U
	T3NTAnDO8nOEnLFR1EbkYD0=
X-Google-Smtp-Source: APXvYqzqHu+Liz0NRnjZkz5CRKfCwYXRdQMmCwzKJEvLLgIC00jiKzrbTJo+eCCCE5S4/t/phHDVeQ==
X-Received: by 2002:a62:6409:: with SMTP id y9mr2624565pfb.30.1580349551418;
        Wed, 29 Jan 2020 17:59:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9891:: with SMTP id r17ls578943pfl.5.gmail; Wed, 29 Jan
 2020 17:59:10 -0800 (PST)
X-Received: by 2002:a63:d406:: with SMTP id a6mr2235580pgh.264.1580349550851;
        Wed, 29 Jan 2020 17:59:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580349550; cv=none;
        d=google.com; s=arc-20160816;
        b=EG2zGCzrODew1zMHBYclKbx6HLYZ41on3oTBEG2mKdudNhWCCByjbkwqb1DlAy3xHf
         SqTdNUJGZW2YmB3LvjV5ZNymKgIj8lVShIzX/iT+pQtDx0xC+L3BWp9YS1dd90AKajlR
         tmWc/hXd2ddy5m/6ZHmV9B5vhGvahzHHX/GLuFw9+QH3kWj1AhwiAOOO80+ZCJDQCW0e
         agHZ2xvtx0tkZ7Aw0JGiRita1W7CJQ2nQhFIBmOo6vXICWmGgF9EHJqOaqCQ/U0aGSnk
         a6I3FpAU649f1b27rc58rUuTlaeCEK87DomYEyvfz1gJrTKyTjyVDp/KuXrCmliW7/p5
         t6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=i88Mz1HHfHLRjCoXJjYlUuVlF7tVe72iHNwcP0Yi878=;
        b=TC4Api65iwC5yOTPlKqA6zb7oPpyIjQ8udr1iwd8S6H2iqPrts9MBlD12M2iKj5KJX
         ta17AfeJ6b3gDEX3g8RxXVa6jcbFt6IUFxI2Tjpo/zZdra/fisNBLgx7u4SPsQsYePKb
         ZLoDnU25wOZ1Oxr39bAfOobXDQH993lE/++Z9C0tkkzw1KZhsI0DoiHy6UzFBDeIbvHK
         p8WmvxumyR254bgdYDu2dLPWYMAaIh3HAX7D9KdIBC+C4iWq4rgvp6+BsApclyAhwwZM
         p5JnAANjW3pZjj1Zm742b7Eomqh06Dc8kU1rTXp1a/gNU17AABnPsF6agBZpBag7shco
         T16A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVzpVYqB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f31si184977pje.2.2020.01.29.17.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 17:59:10 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id g64so1603065otb.13
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 17:59:10 -0800 (PST)
X-Received: by 2002:a05:6830:4cd:: with SMTP id s13mr1710548otd.181.1580349550068;
        Wed, 29 Jan 2020 17:59:10 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r13sm1216891oic.52.2020.01.29.17.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 17:59:09 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	ci_notify@linaro.org
Subject: [PATCH] ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl
Date: Wed, 29 Jan 2020 18:59:05 -0700
Message-Id: <20200130015905.18610-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FVzpVYqB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns a few times (trimmed for brevity):

../drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
variable 'rate_idx' is used uninitialized whenever 'if' condition is
false [-Wsometimes-uninitialized]

It is not wrong, rate_idx is only initialized in the first if block.
However, this is not necessarily an issue in practice because rate_idx
will only be used when initialized because
ath11k_accumulate_per_peer_tx_stats only uses rate_idx when flags is not
set to RATE_INFO_FLAGS_HE_MCS, RATE_INFO_FLAGS_VHT_MCS, or
RATE_INFO_FLAGS_MCS. Still, it is not good to stick uninitialized values
into another function so initialize it to zero to prevent any issues
down the line.

Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
Link: https://github.com/ClangBuiltLinux/linux/issues/832
Reported-by: ci_notify@linaro.org
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/ath/ath11k/debugfs_sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/debugfs_sta.c b/drivers/net/wireless/ath/ath11k/debugfs_sta.c
index 743760c9bcae..a5bdd16d6d46 100644
--- a/drivers/net/wireless/ath/ath11k/debugfs_sta.c
+++ b/drivers/net/wireless/ath/ath11k/debugfs_sta.c
@@ -136,7 +136,7 @@ void ath11k_update_per_peer_stats_from_txcompl(struct ath11k *ar,
 	struct ath11k_sta *arsta;
 	struct ieee80211_sta *sta;
 	u16 rate;
-	u8 rate_idx;
+	u8 rate_idx = 0;
 	int ret;
 	u8 mcs;
 
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130015905.18610-1-natechancellor%40gmail.com.
