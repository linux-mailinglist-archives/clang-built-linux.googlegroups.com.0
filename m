Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBFX6RCDQMGQEBQVKSKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF45A3BAFCD
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:07:03 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id q10-20020a65684a0000b0290228a977a6c6sf2520840pgt.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440022; cv=pass;
        d=google.com; s=arc-20160816;
        b=dUdjYFOW6MjR9s7NfKcYK9AxrF0F4KBSQTaHVnjBG0NmPVZYeY+gjSrzVYKtSGoZL4
         2pdrnAHShNZk7mVW8TFPT29uRS7XPg+vA0yD1aU7PDMIKyu2Q/9KJfp0CuarY2gkTZjv
         OjwEFL2Nd9YRSCNjgGb/xDV4kLvtsLH8o6UfNqMGveAQr/KMShqCWS+/LvTPr/yDfpe+
         VzxvhOgUagv6J4KgijhODGfMYOA6o6+TAVPeTd+rUc/Y7Qq4oCYZjHK7RRtrKIx0GEOy
         x9YVEeY57wf1YzKMPCCNvzDKMx80uk7Tf9wgn+GDj9SP7inJmZJkdmd/4pyp+guxmm5N
         pR5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ig51tp0tQQyqieciKiRAuJIQwR2ZPrpSMb/RcbTZuoo=;
        b=Rr9cCHiWS2ouV3JEipDP4gS0quZJb5zec4XfWjy3P8FObHTkY+5GqyPiYJ0+e9Y58g
         9LIQRnA/kNzJgQ4qcHE5rAHo5HjfmRZMVW8xr/r+rlelu7MCvzsMGSj+yFnnRnKQ/0th
         FpfJBclvX17rz8z5zS6qYzmsZWwmJHL6AQgGQyNUVzakTZMljZbrUq3gjCHk9gyu0aMz
         g1bdfSHRwzeNcVA/wc64epMDBN06NzoZdfd1YeRFRBmaRR2edZk2hMbStVUTVg/fL+ra
         yA5UYKNjtA6qRDvWo3Fg/IP2c/iLMaZ8DEH9GUhLrdNUYnohvTndVUP13VYOBBwFOY73
         b+mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dzisoAQa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ig51tp0tQQyqieciKiRAuJIQwR2ZPrpSMb/RcbTZuoo=;
        b=o7fS2f9xCXP6l/wl7cbQUJQAbmbzp8Js0FB3eftiLLd1iY6aBaaQy1jjYU8e9hChpv
         X40ODtLxvqfT0lzJw4DZMeYqlUvBfe2/GknWE0oigda0r8y+i2bwOzavb9o0HVY8ZGLO
         95bA6wbE1DPhwondAXtGSBiKlEfoH6ZmmvMmuuGssgg8ySH0/NuduxXIWNEMZzgxClXD
         rnazRWBGiqK0tDe/apy9t3Apb2L2CjFvpXnSmAyiidx6NtBPJ1gMl13zQEll2SpiWZqJ
         vBU8SBHwtCOzfpD7S4tJbBT7NRGIYLZH0P7Ks7NIBzedExb8i+OXwSfOfuDkfQZtrySO
         Exqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ig51tp0tQQyqieciKiRAuJIQwR2ZPrpSMb/RcbTZuoo=;
        b=CFkmi9HLJzbzRWs/AXM+AIo/lkHbyN5bXhLKgVlSFq59VhyvzwuQW74yDUyHgwkfQ/
         s7YyaWWr+hf2t94S0F+YeBpIzAFtm4w9o/r8e1Vp0GO9vHsPb1CGKGYh7h+Kn8loB9vX
         85+LhCnW7TkVt4gInyF0IIrlBAtSdlIDRpx92HXZIIPFELEC0IUfoo0KQQijKHf5vCmz
         HWyyktuIXm/Fe8Kh9dlncXVHx/tYrLYhWOvpMbKHp6IVGyPJtJp1FHWs6MpN33sDh2fA
         +rsA3plnAb5+c983RdYiutUvue/4DuYcArzjjMSJG+q9XM0cQ7hV6qmscRVeVCfACOfZ
         YEkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307sFxAazPFULtHH16QhkrDLczmU+b+zjUPzc/O5dluc6/qx4tn
	yVAipn9CwuVz9wRMxSPbsjg=
X-Google-Smtp-Source: ABdhPJye7xbgechKi2ROC40LAUgNciQCPigtmHmEm/5x0LB7ffnrXqH4LQiHgmPxnCrHepUQA8xXag==
X-Received: by 2002:a17:902:c00b:b029:129:c3:aeb7 with SMTP id v11-20020a170902c00bb029012900c3aeb7mr9777111plx.39.1625440022354;
        Sun, 04 Jul 2021 16:07:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1943:: with SMTP id 3ls8006073pgz.8.gmail; Sun, 04 Jul
 2021 16:07:01 -0700 (PDT)
X-Received: by 2002:a63:5963:: with SMTP id j35mr12335783pgm.341.1625440021755;
        Sun, 04 Jul 2021 16:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440021; cv=none;
        d=google.com; s=arc-20160816;
        b=usdTBtOBhvPiKhSSiXZTqCKN6rWJBA5rnveJGjpREHg2MhZOSLxx9avogrguZ3LZHD
         GAiNpwv/qCF9cUv2XHT5MxD9pjg6OU9ZiVyFqOCHdu7qzHV0SjyoQSBg4GKubDPT+3yU
         iZj4cYXOQ+YqhBpgfSK3u8tAdvfxwNoqsBH5LIhR8CVdSXClK33+YfDIvmx+3Cphxjtl
         ukuOqm32mK1MpKdDG+rJbsDA8/QAWyFoJvN5YHwrRRyZd5O1uEETRobXpFA/OfdX/Yyh
         49v5SXJ7lgffe/9EnLD5giZpvI5/yJvI9WscVFdYZoddpwrOMGf0ixxwC58I8BO9bCsi
         TugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zBqesZ+h9Rl5pwUVDJyV5a5MyQQBkitxWE8dQdqOl98=;
        b=HM1mDv+4dVTd/Eps5hH2NJv4oqvs6NK3GxxVgferFjl7PJouFE6YgbHmpB3dPgBo6f
         open0Yie+XbIpqpRFK6BgtdJbhH6AqoZRCO6gkiVENm78bmJzQOYwBCB7KAM0atbH8e6
         S27IuHUwO5fcjQ3igonpQoDdlOEBVaEej5hT6rkbyefCoqcYxJL8xzBAnu6wNfColiqm
         pYQYc4pZlpIsHZ/m1FZjivbsZjiuoKbBOwe1bfRL9+s5lpkJjJgrEFteZCPvgiLs1HN9
         hs2GHapxMmaG8iM2azNcblM4/uxVF9haCOy+lM5PW0LOZ8gY41L4CcyGAp2vMdGwOrcW
         L7cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dzisoAQa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id lp13si403404pjb.0.2021.07.04.16.07.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B44A613D2;
	Sun,  4 Jul 2021 23:07:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jack Xu <jack.xu@intel.com>,
	Zhehui Xiang <zhehui.xiang@intel.com>,
	Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	qat-linux@intel.com,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 32/80] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:05:28 -0400
Message-Id: <20210704230616.1489200-32-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230616.1489200-1-sashal@kernel.org>
References: <20210704230616.1489200-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dzisoAQa;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jack Xu <jack.xu@intel.com>

[ Upstream commit 9afe77cf25d9670e61b489fd52cc6f75fd7f6803 ]

Remove the unused macro ICP_DH895XCC_PESRAM_BAR_SIZE in the firmware
loader.

This is to fix the following warning when compiling the driver using the
clang compiler with CC=clang W=2:

    drivers/crypto/qat/qat_common/qat_uclo.c:345:9: warning: macro is not used [-Wunused-macros]

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_uclo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_uclo.c b/drivers/crypto/qat/qat_common/qat_uclo.c
index 1fb5fc852f6b..6d95160e451e 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -342,7 +342,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
 	return 0;
 }
 
-#define ICP_DH895XCC_PESRAM_BAR_SIZE 0x80000
 static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
 				   struct icp_qat_uof_initmem *init_mem)
 {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704230616.1489200-32-sashal%40kernel.org.
