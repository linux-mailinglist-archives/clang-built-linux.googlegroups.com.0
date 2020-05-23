Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVOIUL3AKGQER22EP6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BCE1DF492
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 06:19:35 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 5sf9595289pgb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 21:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590207574; cv=pass;
        d=google.com; s=arc-20160816;
        b=fWwbC4iLrTutQJ49dQ+E72JBEDzNgBHsvIhFpuW+B1UsKRi5x82YZuHWEE0RyADREE
         wYyHR2CD5GDgAD4yz5ipR4Xbt8CcxbJpj0k3XA/uVqEPOS26Vj7bXQl8uItehZ9honUQ
         mFONT49/1lu5zALmabG0Ez6Bfha/dyEKvDXcBOwWgEUDuAABW8aF4Vv9EIv+QpQ+udJ1
         MMkG3MwgAKlDdAqdf8rNYU+BHHSZlXVxI6fsiajXEywHlUchuiwygBKOlK2ynwIvl7LW
         N8sDnqttYe03hrDduW+fmXu0j4wF1yOgFgMbGJexluIWUia5TH0q0wziDCO5T7JLxhzD
         j36w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=K0+lAe6BfzOxUC/8oU8ngFWxbHOAOH+ZKa3kfgxqSM4=;
        b=bpmW2YJXUi12CMVssq6pThJdSZPZ+6M7KL3afsNITWQstbdghXWXYh2gXd5U7K0zko
         eh7b+GNcbyxKGhQz+H0A7u3prYhpzDJxTxtcA0dyaqVon7ew/TjM2v+6LEhzVYZi0Urr
         +cbDgGueWgEat/Uq/rCuVcIaFKKDUZaR7fTZwhTenX3OecC5SVw3GTSUnLNt+oPxeExK
         D+Bkn26ByVPakGN/RpPySYgIEOzNAyjxJdZsLe3YyI5sRhdSGzhbmft1oD3gHMYszdMU
         bx6+CiXKlNAntNl9RJmBmbP46nVQCEx09A0Tc7zxJQzpImM0z3lWKO2L87j2XQfk01Y7
         3hFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brjn7n8m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K0+lAe6BfzOxUC/8oU8ngFWxbHOAOH+ZKa3kfgxqSM4=;
        b=dQB+LJCVulUtnfvpKnXDOFyLIEO2saBbg5uS1EN6cEpnyjFFJ8EN338GGFVsIURTRP
         zUguHiYy12E1Q1oKlb0SXvNDv5GrRvlfuH8wFscyhUXoBe1EJLCHYoDRO74IVSL8mIUI
         1NFUK8fMMgbITQsvQNq80ATuRDvHHgPlqDw9dRj26ysQyqQYp1pPzm0MMPYGsn//qU4f
         PZXC/G6sS1mfzpYfidVDfF69e2olHxORSZ5kEsP0ke7mtjRDwMdJyhGjpUFtfngTEYM8
         9Qj9h1ugofD+gBkbaNBMdY7F9SW9dDAOKE5K8iu3JS4I12+Z8j+G9+q8vHHcRVw1jrJC
         zd8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K0+lAe6BfzOxUC/8oU8ngFWxbHOAOH+ZKa3kfgxqSM4=;
        b=T4OLjWjjOw/yGxmbXahT6bE7sEr8WfGYrG1TkJs9KX8Mn7gnrCLGOWlBk6p7ao/qaA
         +3V/v4QJlgA5GjlECS9IcNf9yfF+yTLXsOOFZz1K7S97zDN0Y3oaP+3YUM/b3WLfbYon
         ZiSADo74VoAitcw4kpQB5Gp2MonWFS5HzeH7/Qq421nfpTUIpaibolTeJ8qW0ezF30K3
         jN+6ponBVkEE2LsUqdgxLt0IgQ0rVdMF4YABZ8JPdJ/dOZQC5cq3rYg2chrM6W1xUlvv
         0LcvRa8uUbKxA1530mWtk2TFmckmN4oSmnUxbW5wiNyXtlRJpR6FhN/cfg1rqh3UPiJ+
         IIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K0+lAe6BfzOxUC/8oU8ngFWxbHOAOH+ZKa3kfgxqSM4=;
        b=ETWT7/88Qa2KWN06kgbZEB2xMdi87UJHv76aVOpEGOCOu/H8esPnlw700WXAoKiMx4
         8wOFIrurXmamkwzyOboFzXL4GikeZYc8vtTn4KxiBEj2IVzA7ra1flyWXqwO6kYnRUA1
         Oz14ObODoXjGhsKsCwmk+u7A5HCsePTaoc1F8nnt/m13lCvyTrJxYnKSxjG93r/rNQK/
         hmBC2wq0uATyx+eO8/mcO/zrUzGiIlGqoW7L6NtXO5LiUgEShqg+Igf6NQ8fvknZgkRI
         emndG2gXEEz9u+PXkfYHqAzdL4JTDGpTvtJqWfbHPlldca0aVCRftR0pq0+mDRhGnP0B
         VaTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rc41omRLSrHaXak4TAWQRSpkmlFRVhnwQixaKkmMpfqCMJYKS
	QY+V1zmhR7INuVX+gISNkdE=
X-Google-Smtp-Source: ABdhPJwfaRWwOCx0Eh3rK2jkulGz/ddXsw/EoYoTZpghyxD8PutB7OrTJLemijEcnTNO3Re2rX7IVg==
X-Received: by 2002:a17:902:d70f:: with SMTP id w15mr18727497ply.55.1590207573960;
        Fri, 22 May 2020 21:19:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c38e:: with SMTP id h14ls1462678pjt.1.canary-gmail;
 Fri, 22 May 2020 21:19:33 -0700 (PDT)
X-Received: by 2002:a17:90a:5289:: with SMTP id w9mr7916601pjh.97.1590207573546;
        Fri, 22 May 2020 21:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590207573; cv=none;
        d=google.com; s=arc-20160816;
        b=mdb4JXndjnhINITw/q9P7b5cqzjfdzs9PajWoma8W3GprOm8is0RIKrZ/4Z+NXRISz
         GdR7YCFCBARNRNB5X0yMd4Rn0NJkk4PHt7+k7lC4k826rKEfz5KZGd1GxrHqpvdhTxB+
         0si8NIQkInKAiHZR+FiwKbiEXAbTN7DPpnLw0az+k+8JAW55wW53yBnjNFhYAL2lw1pR
         KqHtzCGmLYSbO+8pWipREUjLjTSJXUDbqamL2XqwQnI4YByo7McJmTCYl7V7U1rNpaqk
         YljkQVrq0J/vpEHvu0pKSe688uwfYPgo/Q2XZOjQZpMcuQLGZlZH5UmIf9o9E/2bakLy
         ZORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lnKO8mEgKG0cuqfZGwVZY3dnnPkJgdITjBuWRWcUqiQ=;
        b=lTU44F/5aJCHl/7EYAr3wi8W+k2gJTG5wm99yf3Lw5qVBo/T1hqepY7gLVnatsz3r9
         on6hyBGmgfem1dRnXw0H2+cUcsEK1va8o3P6pZ4ogXCql1LxeprKg7/jXwGkXQMhoyN4
         bN1nr7fiHNf7yMSM2QbNCoImEQGvpsQlE/qNtv6YJD/buynFbn/UM39FGpjnWoBPMwA+
         XBPc5RdWxOMwSbolgBlZW2Nav/nB3nE4pGCDRI4xI80rQxU3in+Qfy8uB5Cej98nKLQD
         a+bAusDavjSlB+mvZBQJzKQVpY95o0DJ6Y9kRaeNiaxDXjH1oUj/WmiXHvgPbda9XiI0
         PnXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brjn7n8m;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id kb2si40601pjb.1.2020.05.22.21.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 21:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t8so3799262pju.3
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 21:19:33 -0700 (PDT)
X-Received: by 2002:a17:902:bd07:: with SMTP id p7mr17186991pls.293.1590207573197;
        Fri, 22 May 2020 21:19:33 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g18sm8202317pfq.146.2020.05.22.21.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2020 21:19:32 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mt76: mt7915: Use proper enum type in __mt7915_mcu_msg_send
Date: Fri, 22 May 2020 21:19:23 -0700
Message-Id: <20200523041923.3332257-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=brjn7n8m;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:232:9: warning: implicit
conversion from enumeration type 'enum mt76_txq_id' to different
enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
                txq = MT_TXQ_FWDL;
                    ~ ^~~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:239:9: warning: implicit
conversion from enumeration type 'enum mt76_txq_id' to different
enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
                txq = MT_TXQ_MCU_WA;
                    ~ ^~~~~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:243:9: warning: implicit
conversion from enumeration type 'enum mt76_txq_id' to different
enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
                txq = MT_TXQ_MCU;
                    ~ ^~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:287:36: warning:
implicit conversion from enumeration type 'enum mt7915_txq_id' to
different enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
        return mt76_tx_queue_skb_raw(dev, txq, skb, 0);
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~

txq should be a "enum mt76_txq_id" as values of that type are the only
ones assigned to it and that is the type that mt76_tx_queue_skb_raw
expects.

Fixes: e57b7901469f ("mt76: add mac80211 driver for MT7915 PCIe-based chipsets")
Link: https://github.com/ClangBuiltLinux/linux/issues/1035
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index f00ad2b66761..916f664e964e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -220,7 +220,7 @@ static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
 {
 	struct mt7915_mcu_txd *mcu_txd;
 	u8 seq, pkt_fmt, qidx;
-	enum mt7915_txq_id txq;
+	enum mt76_txq_id txq;
 	__le32 *txd;
 	u32 val;
 

base-commit: c11d28ab4a691736e30b49813fb801847bd44e83
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200523041923.3332257-1-natechancellor%40gmail.com.
