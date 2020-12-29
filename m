Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNZV37QKGQESOQS6MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2001E2E7417
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 22:16:27 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id j20sf13695279ilk.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 13:16:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609276586; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9h0Wu7xoYRt1UFYcYLp1uDH8HfYYkiwWH1nL6vDP+fb01BU/XAxBs661FsO8rVXlS
         9FhSrJCX1o/kj8KrwDLInENo9Y/wfPl0M8UBki237KiHozEWUTaQ0Tdc34H4365B0PD/
         Gjp2jSioE9IEXE8bTny5cZu77bEFrdZghPvrZ0rcCL4L88SX58+7QtqjqJjiw6GWkjhY
         2eH+/b6sVh9rPIfNYv6vCDfj2hgigEKaldG9hND4zc4cfW1X0EEw9rx9I/UA/XYmpQ8A
         S0sIY1EoTZv2c4ty8VfvwvXluaeXtfdDNJSRhBGgOPhyySVzHAXCQDgVYBuZlHtJ8tF5
         3Dgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Hnncjj9bM6UgXZoXLIX2hwbZrc5kR+Sq1h8lKwc7+rw=;
        b=CpJ75d5WylqY6R4u3TU4ddDIryIhqwaYOpFDcasDHh1GHYQ6Aeo/bSlGMU+xcCT7C4
         bBbit6KLEwZWjcJvzhuRe0NAEc8MdvdUA30b3lS4SmPdBKapcEQs6KfsZPvoxyoBOeom
         ieSCLIo3QSnorZHTnW1z0flv2RalkkxjwNyNexDId5KIRLIV421N+h2OuuwRHTYhZsyC
         9F+RyGtCFRUGTtAMvW97clUmCCa9kY9f/oT5yHzGV5CFhfsJynL+3qI/5udFcXL2fCUw
         c97XHK63aCJj4O2eDNqcvuT+50F5kTtJ4S30y38PZ/7dpjvCFGBUAEdzMiMzE76+qzbX
         YUag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LBdtKJhZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hnncjj9bM6UgXZoXLIX2hwbZrc5kR+Sq1h8lKwc7+rw=;
        b=AWokPUKhlnzlvpLp0yxV7aEwlvPlVZfKqTNDaBMUDkY+cwghkpTzZrRQdYrFhQA/Ee
         iTeXCf3Eq5snw4aoqaRne/cZ3FimmRApGuOJpNGel15lWGHAeO7VmtmEs6r0sNZwHLSB
         Nf51jpi08gKBln0dvIbW7PMH/wbt/R3JYmlDXnxRTwsjkUPz0eYtF14xB7B5APwvsJe+
         x+UgGOayjufiAXkkDECSm8s8xLomKJgWJAE+yIvkdE+OBHZd6RLsFtkugeIAVFujR4sj
         Qa0KkI0deDuodtd8C4MZCzmIiZV3cnFR9PDsNVBEAABPbEsfDSIymZAFHh6YwJxvl68R
         cviw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hnncjj9bM6UgXZoXLIX2hwbZrc5kR+Sq1h8lKwc7+rw=;
        b=KxHd+kcaVq6bWPpzkBQKRNWcjLvlC6rh0s9sCXNKfBzHSQTYZJ2t7sDkpL35Wr6AaO
         E8T6vqeKR3wZobeVhS24SeXIUI3oESNI+h1nqbUnMkmwa++8E8aUZuwJJcDgH98yiBKI
         lfLyzpuPAFU95ti1FX2Fh+KVKKDgyRbQJ0KVf7o+SiInTOO28Bd05a8u2/L86eltAWg2
         a8sqwWpgrWKcH1CWY36i8Ekj8zrrZBdWeuxcOHAfBbgtYjOKmyrj9O1L9XAZEQgmYc1j
         r8nkIDRTZ+wWNtyn47Lcwe7qIoD9WsBBNUfnrOV+DgFScShcWqYdnHKFDSITeaBNSI/5
         QU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hnncjj9bM6UgXZoXLIX2hwbZrc5kR+Sq1h8lKwc7+rw=;
        b=an6lbbDGGmby8Cp3EAJR7s1zEseIZmLn3+2rAANS4mTBab9TbUYt3+zsNj1t1CFG+m
         qleRJXI/4FS/W7dXs1QMu4XOQ+2QveOWZrcBijiYeKFC2qLRJB3zXUfGXaRc7yDOHRWi
         LPbHd30A+PN0vrkPmR7pCXjAe7ksGrudgjPvD3Qy8RDv8KOhOyYnhxmMr2mKqqxAI0EQ
         lHZQcfby1Z+7MJyycX+nUP2JVkFgAe5cVyKGAjfOd9WUg1pBMsn0dFbZ9Ek9mv6jRUJ+
         TpAVmoFqierY2AIIz0BB30P1/gFIetn3D2px4+22fG5DKnKTYRnaWCn3RWYTPUntJvw2
         LVxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hmhn8iv21n6UoSuv8/GagSRnSRUFBcK7fkraLli/MT9DkIgT4
	NeqcOfQ7YNoQCFUNBIR/i1U=
X-Google-Smtp-Source: ABdhPJwbj23n2grXPoxtllwzMhZ/xyQUqluUDh155XCEHLZDdvqAlU/Svvj4iVQAkRsSFxs5wGCubQ==
X-Received: by 2002:a5e:dc0d:: with SMTP id b13mr41836308iok.31.1609276586111;
        Tue, 29 Dec 2020 13:16:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls15905216ilt.2.gmail; Tue, 29
 Dec 2020 13:16:25 -0800 (PST)
X-Received: by 2002:a05:6e02:e44:: with SMTP id l4mr50339499ilk.208.1609276585634;
        Tue, 29 Dec 2020 13:16:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609276585; cv=none;
        d=google.com; s=arc-20160816;
        b=jQuPAlBBlvbKyuBfPLiKSQbncGASwDWnHNDmMvKik4TLBshcVrohys7kVCwm43j/oI
         N9OsL6MvruzoI2lNXqedZwg3otohtqLqyZcJx4WX/2tfhaJyTu3J3PGI+jh2/j0fScs7
         uevcr5R7gRlw/Bq1C48Tq/DlQYfNkDAxIKdLawx7NUCF+aawn3wmFzsnwxkzAoJpOwTi
         lcgSC6PvU/qlJzRmcotQENOAKEuvKYrfdx31J9OEaKljKPpgv2vVXGGpg4H8XZm264WR
         vJ4u54BMP5dWgmOnghPwRQa7oEng9LKLA/WNrZt1SiDv7F6mRVYkolIi+ZhrkSu+WchL
         cWYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=e5c5L6PkkRukqnqeirSiRa0wobmulUeCxBAdDa7q5Wo=;
        b=Ew3FeLpQ+qc6LdVCRYP4dmrilKoBi5B8PYJaU4aOmSnhJCmEbiRVY9T8XQDH+PtvaQ
         SenPAV/7vFV73qcRgNdbGdC5M+VP+5rbi/no4yN1IwHNJueSLIr3geGfMXAWEKvtbH5F
         wv+RljvoYkGvhXNpJifhdEBvsT6CDjhOyXY2x3tYPCFXhTKiR8xnN3gI+rBqSjt3zoXX
         EOIjEFlKkV3bSi8pWESYPLYWlt0/jUsIk5pVwpJ47kcxMnkSC3KG18BGqdwos6lHMtZF
         bFSouT3NoSFCwr2W8H7+ir49HbS1Ultetak730JleAVBEuxa2es2/0EZmjdeAc53cKCH
         emLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LBdtKJhZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id u14si1551441ilv.0.2020.12.29.13.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 13:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id y15so9806373qtv.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 13:16:25 -0800 (PST)
X-Received: by 2002:ac8:5786:: with SMTP id v6mr51450739qta.268.1609276585265;
        Tue, 29 Dec 2020 13:16:25 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id l11sm26656665qtn.83.2020.12.29.13.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 13:16:24 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mt76: Fix queue ID variable types after mcu queue split
Date: Tue, 29 Dec 2020 14:15:48 -0700
Message-Id: <20201229211548.1348077-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LBdtKJhZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns in both mt7615 and mt7915:

drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
conversion from enumeration type 'enum mt76_mcuq_id' to different
enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
                txq = MT_MCUQ_FWDL;
                    ~ ^~~~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
conversion from enumeration type 'enum mt76_mcuq_id' to different
enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
                txq = MT_MCUQ_WA;
                    ~ ^~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
conversion from enumeration type 'enum mt76_mcuq_id' to different
enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
                txq = MT_MCUQ_WM;
                    ~ ^~~~~~~~~~
3 warnings generated.

drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
conversion from enumeration type 'enum mt76_mcuq_id' to different
enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
                qid = MT_MCUQ_WM;
                    ~ ^~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
conversion from enumeration type 'enum mt76_mcuq_id' to different
enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
                qid = MT_MCUQ_FWDL;
                    ~ ^~~~~~~~~~~~
2 warnings generated.

Use the proper type for the queue ID variables to fix these warnings.
Additionally, rename the txq variable in mt7915_mcu_send_message to be
more neutral like mt7615_mcu_send_message.

Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
Link: https://github.com/ClangBuiltLinux/linux/issues/1229
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c |  2 +-
 drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index a44b7766dec6..c13547841a4e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -231,7 +231,7 @@ mt7615_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
 			int cmd, int *seq)
 {
 	struct mt7615_dev *dev = container_of(mdev, struct mt7615_dev, mt76);
-	enum mt76_txq_id qid;
+	enum mt76_mcuq_id qid;
 
 	mt7615_mcu_fill_msg(dev, skb, cmd, seq);
 	if (test_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state))
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index 5fdd1a6d32ee..e211a2bd4d3c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -256,7 +256,7 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
 	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
 	struct mt7915_mcu_txd *mcu_txd;
 	u8 seq, pkt_fmt, qidx;
-	enum mt76_txq_id txq;
+	enum mt76_mcuq_id qid;
 	__le32 *txd;
 	u32 val;
 
@@ -268,18 +268,18 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
 		seq = ++dev->mt76.mcu.msg_seq & 0xf;
 
 	if (cmd == -MCU_CMD_FW_SCATTER) {
-		txq = MT_MCUQ_FWDL;
+		qid = MT_MCUQ_FWDL;
 		goto exit;
 	}
 
 	mcu_txd = (struct mt7915_mcu_txd *)skb_push(skb, sizeof(*mcu_txd));
 
 	if (test_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state)) {
-		txq = MT_MCUQ_WA;
+		qid = MT_MCUQ_WA;
 		qidx = MT_TX_MCU_PORT_RX_Q0;
 		pkt_fmt = MT_TX_TYPE_CMD;
 	} else {
-		txq = MT_MCUQ_WM;
+		qid = MT_MCUQ_WM;
 		qidx = MT_TX_MCU_PORT_RX_Q0;
 		pkt_fmt = MT_TX_TYPE_CMD;
 	}
@@ -326,7 +326,7 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
 	if (wait_seq)
 		*wait_seq = seq;
 
-	return mt76_tx_queue_skb_raw(dev, mdev->q_mcu[txq], skb, 0);
+	return mt76_tx_queue_skb_raw(dev, mdev->q_mcu[qid], skb, 0);
 }
 
 static void

base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229211548.1348077-1-natechancellor%40gmail.com.
