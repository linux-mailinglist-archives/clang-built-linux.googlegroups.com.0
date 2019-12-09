Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQUDXPXQKGQE73V2HFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E74E1178D5
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:50:59 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id q16sf10885930qkc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:50:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575928258; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQurSbJjdsMYCS/tNB2N6+sP6L/V5WwOOq4yd3KpBihKK9T9zk5phhbQcPxbPLqqMY
         IycteLv6dr8jrQvFCb3GE2Vtapk89zcstH5mTYFXOJl4u/icjG5beVOBqS36K1xtrm2v
         J456p2zg8umImA2ev+kskVuvqCxBgzI6C+23RHcNd/UO9/LfMCXIMrtBT6NOurTID+u8
         zwMj6XaQK+gXHI4GOFzYCZBxM8XDSbyxhMWuoenuEDFjWzO/rN/MO+91I2v18Dvv+qug
         mVa1IjZcwF3raoErSxgUkt90P6Cb/+xNwYpxf2JCCbq5X6agRAjGYKzwEKBoKEy76NEO
         sWQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=IeJLYtlrMgOcgVQaTnUP1YLkcdJG689ZZNlcZ7FPizo=;
        b=CYIbWf+24bUkCQqcEo0BTxn+prhjcjATJOD/4NACqM9gwaSehdtsvGHBZau8CYz8us
         iaOLaGJgs3oy3WjVPEqU+QYLuxb9jn91BnWbKkx/KIEKJD1k9kayVvIZfV6/XMwdD6gN
         YQHJ4Ckq4S5TdFlKRMdfVC4yAuOrxsa7aqckbRykO4c+62H+sbjo+tssj7ERqtTU9VoO
         ivirvHQ7EwhgWtdLI5TBVVrNoRFqMCl17UmVCk8asvE1H6+VEGQJ7MGjjuUhgBsXtQbc
         WpH9d/4MHWL1DW9l825An+aTOe9mTAhT2PNMV0vQL9ni2kzKsB9LoLh6oMdNEru1i/4U
         pMRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7T9TU6w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IeJLYtlrMgOcgVQaTnUP1YLkcdJG689ZZNlcZ7FPizo=;
        b=ULMyV1QvNy6Ow6hhZLQOs4nT3auy+Mt845pDM+L8Nd8pdAeY1zHF9SshnfMm8p2nWh
         g6P3dEnhnn7BL9pFNUahJCeGVhdVtUJSUGobwmrRl8xQl9398lU6v+JQmNkUCKwgGWzc
         iqtF1yIF+ob3iLXxpVbbGAYuly2LRARDicPkQJ9JsSrZieT1dqKGREBe0Q7o6l8w+KTw
         wLS4zAx0w8mbZ2uOLkfvoPgnPd7xoWjJ2SwDq8lrVsvn6jOW3LONV5qkJ+TV+TcfP0Uk
         5vGBntF6cHjfOJnAbZH+RMAPoDPXzICpJz96/YpYstHOtwK2vfDx3kZiaKv7z+/Z/KLk
         yRyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IeJLYtlrMgOcgVQaTnUP1YLkcdJG689ZZNlcZ7FPizo=;
        b=Nb9EjPP31jlJL8Ec9YGvivpc2t9leNs38nSVw4S3tIPCUKUpClaDipck+JqI/5Cypm
         Ca2zNlzt6aY1CdzDHi/1r4eDAbrngtzAXx+34vVf/jlvTQuygOwgUbvBfYxt6rKPdRez
         8pONxoFzChB8BHZUwMAAm4QAmpPkw/7OLyiZkJogNtj+9llRsTl/LRv8oZHEWW/Z6nnl
         xmF2rPCneocZfRHR61TEMdrcVNfh9ZGSFBiLW5TmhrHI4BQaagO5o6CMhd6YMUxk8/KJ
         gEZaeoSP0aF7MmzTqcu6ZZwopoBPEfW41fn5cX668HZGnGqENyjwi2jvcThwacGHLMsE
         tYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IeJLYtlrMgOcgVQaTnUP1YLkcdJG689ZZNlcZ7FPizo=;
        b=RQOGV2iLA8NkTtE0vkAi6hn3X6oUoa9ZtflY9h2Jvkpp1uXZMFLeb/lI1H7nGz6wld
         mn+/T7vgGGoNL3IzK8VR9Maaz203F/nCcG7ShPKRtzd9ddlUbt6cmbsd3r3R4go2VmJk
         qrUAnAu9W4/rzTBo0CuWmPSkH6uB0YnJVfTmHfGfGkNaw6krRMWCEcSZhkHpTJeB6sKt
         Jr44lwJIQblfF/wXig2QANBPpu/nGhMtrItqhYwaMHJc31WgpdBB8miuZtafiBToVYG5
         omzs9RGaAW64L2eONQnuvkOYsy3vQ+lusUTO3tcO6yreeaqewvgvCZHx/AFF1ZsNlQQ9
         1ruA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+Dv5CwfjR7MroMyBimXxL2tNyXZ39tWg7C7fYZOqtwpOEVtJh
	929UKKCq3cdNqchpW6x3JqE=
X-Google-Smtp-Source: APXvYqzmP4cmLQINfq9Qv6LiHKF/UMCorEQKOL3cBwk8Q3JQrHTkIIKUZFWIJCdi4HkDzTnRGbpSdA==
X-Received: by 2002:ad4:5990:: with SMTP id ek16mr1972532qvb.43.1575928258260;
        Mon, 09 Dec 2019 13:50:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ec3:: with SMTP id h186ls2044517qke.3.gmail; Mon, 09
 Dec 2019 13:50:57 -0800 (PST)
X-Received: by 2002:ae9:e206:: with SMTP id c6mr9785562qkc.105.1575928257870;
        Mon, 09 Dec 2019 13:50:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575928257; cv=none;
        d=google.com; s=arc-20160816;
        b=JmOEpPKM5N/4YoXC81aaa5E6jIo2OdfAuGO+DWiJHdQ6duo13SaFE4CBNQ7W8zyjRg
         isb8zdQ10OwgRXMfG97VZtMGMA/D8zvDjhQhkXfQsx2udGjDMZ+DOjabk+/aNGtfwFjO
         6VErQh3xmAqj4oqiylJe7lrsNaQQGQCPnjowA7BSr8YWJbVI7w2sj/vbynWxhvDParDa
         ENDPHeRya0HSf8ufKloZ5iXrzKJBKJjUdRWF/nFirdGeSbb83Wdz8TKbldCUQBKzAQye
         JuNVwIgzs3EgH0PtLFyJt2wBEfApb1oA8vbUDN1P2o5MDssElw9AoNyZGog6SeKgqgsb
         mI2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=O/NLa7LG87/2ajh4S2U01kITyWo4HMhACFw0A24HFMA=;
        b=cT2Hm7S3U/B0zzUe3BXlTAyHKKJ1+5kiPuWS0Kixut9WdUuTXOS1b5384xJF6BQdf4
         AKqVpP93otJPgKvJ9uXX8IXp+xF3/VT6ouE4hKHBwaSS8of+HnASHTcuSErPMzCRZqX6
         31ENyFERgAs4594mYRVRsXiF98PNgaPDhLP+45FwjZKePrdDycvlwOOndybm8GG7Frqk
         Yq/fY5T0dKzLUeq5r/Fdq5tg2c+bZD3wJjDBKIO7iarpUInPpYZmKMCjSxueSv/CTi/a
         8lEsFzGAGjCNmoM05na68g3Nuj1bBPOyjd37yChD0DjQN6//iLHei+S0EvusZ3uWWFkJ
         Zg6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7T9TU6w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z17si54027qkg.3.2019.12.09.13.50.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:50:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id p8so13619711oth.10
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:50:57 -0800 (PST)
X-Received: by 2002:a05:6830:18e6:: with SMTP id d6mr24252454otf.170.1575928257168;
        Mon, 09 Dec 2019 13:50:57 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 16sm469424otc.73.2019.12.09.13.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 13:50:56 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net: smc911x: Adjust indentation in smc911x_phy_configure
Date: Mon,  9 Dec 2019 14:50:27 -0700
Message-Id: <20191209215027.10222-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N7T9TU6w;       spf=pass
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

Clang warns:

../drivers/net/ethernet/smsc/smc911x.c:939:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
         if (!lp->ctl_rfduplx)
         ^
../drivers/net/ethernet/smsc/smc911x.c:936:2: note: previous statement
is here
        if (lp->ctl_rspeed != 100)
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 0a0c72c9118c ("[PATCH] RE: [PATCH 1/1] net driver: Add support for SMSC LAN911x line of ethernet chips")
Link: https://github.com/ClangBuiltLinux/linux/issues/796
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/smsc/smc911x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/smsc/smc911x.c b/drivers/net/ethernet/smsc/smc911x.c
index 4cc679376c9a..186c0bddbe5f 100644
--- a/drivers/net/ethernet/smsc/smc911x.c
+++ b/drivers/net/ethernet/smsc/smc911x.c
@@ -936,7 +936,7 @@ static void smc911x_phy_configure(struct work_struct *work)
 	if (lp->ctl_rspeed != 100)
 		my_ad_caps &= ~(ADVERTISE_100BASE4|ADVERTISE_100FULL|ADVERTISE_100HALF);
 
-	 if (!lp->ctl_rfduplx)
+	if (!lp->ctl_rfduplx)
 		my_ad_caps &= ~(ADVERTISE_100FULL|ADVERTISE_10FULL);
 
 	/* Update our Auto-Neg Advertisement Register */
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209215027.10222-1-natechancellor%40gmail.com.
