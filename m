Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBQXH46EQMGQEUIAASSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF35404A3D
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:45:07 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id u1-20020a17090282c100b00138f7f7a49dsf690757plz.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631187906; cv=pass;
        d=google.com; s=arc-20160816;
        b=eL7d9xZrRGhuGLi5cd5s8N6cgMHszfhtCjvqe37t6BrnUo3tIedf2zZDWtp8mGWkqE
         2Umcz9GiyJOJDhgfcD4WbCVBImznxEShI3TBXy1pA1AAbth6xo3B7TaJpqIrE4YxGZ6+
         ctzGm3SZao3fTPdApqJ0OwH/gXB+ue6Kj5mdPkdfM/yAXBNGCTfADnBN2B4aMtSu1uhz
         opN6chbaI+b9G+NnqHtvYq6B3iw18w9ekkiitEhnZuLrp/KdV4LiFbzLZbvkr0YKzwR4
         40B/ETcL+s6q8QEGesHcyJ3lntPVV8CrcMQ+miIyD1jSRY5TlLibwtDPzP8VAw9ge4ys
         konw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4fjlQ8wuilU/szbpHxoKtN5tjTWOPKcPOvhLimavnVA=;
        b=CpDuhVRVc7qGSkx6i3r8oCozeYj2rQWcJNR+ziYCKlQlZB3b3qH0E/v2nxqZe061gQ
         Icb57gGh3Wz3mqlyGfAPDrTXhDX62+2K63s2NEHcKg02m5AXCdyMv3Tjjjq9zl68/VOf
         VHh6PMEJbSt28NBRcmHT91joQoCbiOwG8srQRFn/3IumZ6kHEbGMA3AGKPvIhXzylRGr
         h1JdGaE8B4TpafYfuI8QGopg7G45l9hFsFSJ/OvQ6ovoGcNC9+i6rNtq8ey0o5A2gcIP
         ybeBKaynnIoOZtswvgAnGScWLN3WgHzEol4VGMgncZkNZulfrXrJVvJ8DEAQZ79/BDvU
         cBJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qYXnSJ+E;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fjlQ8wuilU/szbpHxoKtN5tjTWOPKcPOvhLimavnVA=;
        b=PAs4UT2PouD7veSlEvK7t4BYuAafhXOirzzNafOeWLf/YAUJMffwVWqUcl6UgyerVV
         AHvJgIG4jd9OAeNBhxQPyzp+Ybm75c0eCkuCPg4KAwLvg7dTZMhOBlwxbkdaKn/8+hnn
         ajU3pGqepOfciSQ2IQ1z6AZ6aqOt/YLanJJRLLJx6hDNKAsV6ITDiicq3+dxUS4qRyTZ
         lvAp+ebBbjHpXfjTCefkTtmJ73bpX+QIg4ouNRao0GzLCj4Hg7vLI00OQWJKRO8L1GwJ
         9LOqvgHDhI9eraB+U3bH1T6pYhXMFSh1GErYV6LYW2VP9N3MjFXDrUB+mCwsMB5L31tw
         nx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4fjlQ8wuilU/szbpHxoKtN5tjTWOPKcPOvhLimavnVA=;
        b=C9SAlj0WyQP38yVanH8ciSQ0Ow00BWwlxdQ0KWBni4SdRDKLfSWa2AyyKPZkY1QF60
         n7hJ78+bTCQeulZw1u7sC7BIwrZt7cpcTrxt953OCgsXejzaycweiStAbq3fg3FvCdKP
         fGDdSd/RtgZkL9IQ8EqPP7CMHD/P9NUNFDb9j+/k4PNEAt9kKGcwuw82XzVA3XQk0gNo
         OjppHGs1io+auRsPl7kHo9cmh5AyxkAP8HZpFbTc3rmVxjEEkUNoxZGHzXsK3Vh0EL1d
         mkBuWvKnDu42Z32k5U8ZRhsNozrAejE9YT94otnLaSuQzro9Nvvh3VOAwWaTvbDG44wN
         aDJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R9BNyEbui2j2FLR78YVN9KSfoJfdP4EJ9Kql9qZo4LcP2tg6H
	MDAkKG6ksTcEyEyLktq5gsk=
X-Google-Smtp-Source: ABdhPJy7iFvwyabzoPhSztc3MBNg31xYqMTlnPplnl4utZWjHA/+ujpcCkWREPiN06mo5NK2R3LRGg==
X-Received: by 2002:a17:90b:4c0e:: with SMTP id na14mr3171028pjb.94.1631187906475;
        Thu, 09 Sep 2021 04:45:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e57:: with SMTP id p23ls1003320pja.2.canary-gmail;
 Thu, 09 Sep 2021 04:45:05 -0700 (PDT)
X-Received: by 2002:a17:90a:d686:: with SMTP id x6mr3167071pju.8.1631187905709;
        Thu, 09 Sep 2021 04:45:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631187905; cv=none;
        d=google.com; s=arc-20160816;
        b=Am2G7s4nsq8SSFrIkGkqNleMDpVTHyGgAfGf6IhS1iD7jUfdJ9lBvhuhjp8yiVvNv5
         NXFFBjxa8+lZWfmu2hUZYslwrLukgZhha8un32E9yOEYF0YGeCNzNGE4O/+xXjwJPi/j
         RyKGW2lHvQSGOdw7vhzyHO9VjO0UAXBLef2GoACpYg1dNoeo2tXq8ROg5Hkq0KfOVvJC
         PSkA/vlehuh7Z9tofnttoFTGnbinZoJm8Xfg+c7GuiFPWKvgKFDG1e5ikMUbrm+BZgwc
         3o7FXd9lF8OvXLwre9aGl6jeg37RePdP4dPMwwrH/GstO2tMrQDpPJB2MOagKfcaHP7S
         DiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ANilVGfxonIIt2tXOAZKm5jIzhKYKwvd8t0JjkpV4D4=;
        b=oY4/a8apqjlZiK/d4TZTwVhDRCsUlB2oAZoF7BvwtknctraJRJljBAnoUCHS7XxO46
         3xklmjbaoplUCNxdNLGF4hcnS1bLVWoMcHqksj8ohhxR23XsE25cOuRh3AKd4ZJByXxp
         J+CeBk4NZx6X5aIEjqHJMkaMOvGjHmJWzwECdc/HpXIziqK97na78e2EFal/H6KHqkaj
         +kqTiNm8FYyId+lCH7VvGjo8PjOoDQkao481RCVrTQ1lzo0I8gHj0E+av3UWGt+sGkyZ
         ZhySEpXObJ2s17trLcW7Ykp2BufNOT7GmNwfJMjNPtdSxo3NyISn5qZ+v7ptyc56A3iB
         ea5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qYXnSJ+E;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g24si112101pgm.0.2021.09.09.04.45.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 686F36138B;
	Thu,  9 Sep 2021 11:45:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>,
	Inki Dae <inki.dae@samsung.com>,
	Sasha Levin <sashal@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.14 183/252] drm/exynos: Always initialize mapping in exynos_drm_register_dma()
Date: Thu,  9 Sep 2021 07:39:57 -0400
Message-Id: <20210909114106.141462-183-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114106.141462-1-sashal@kernel.org>
References: <20210909114106.141462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qYXnSJ+E;       spf=pass
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit c626f3864bbbb28bbe06476b0b497c1330aa4463 ]

In certain randconfigs, clang warns:

drivers/gpu/drm/exynos/exynos_drm_dma.c:121:19: warning: variable
'mapping' is uninitialized when used here [-Wuninitialized]
                priv->mapping = mapping;
                                ^~~~~~~
drivers/gpu/drm/exynos/exynos_drm_dma.c:111:16: note: initialize the
variable 'mapping' to silence this warning
                void *mapping;
                             ^
                              = NULL
1 warning generated.

This occurs when CONFIG_EXYNOS_IOMMU is enabled and both
CONFIG_ARM_DMA_USE_IOMMU and CONFIG_IOMMU_DMA are disabled, which makes
the code look like

  void *mapping;

  if (0)
    mapping = arm_iommu_create_mapping()
  else if (0)
    mapping = iommu_get_domain_for_dev()

  ...
  priv->mapping = mapping;

Add an else branch that initializes mapping to the -ENODEV error pointer
so that there is no more warning and the driver does not change during
runtime.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Inki Dae <inki.dae@samsung.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/exynos/exynos_drm_dma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dma.c b/drivers/gpu/drm/exynos/exynos_drm_dma.c
index 0644936afee2..bf33c3084cb4 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dma.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dma.c
@@ -115,6 +115,8 @@ int exynos_drm_register_dma(struct drm_device *drm, struct device *dev,
 				EXYNOS_DEV_ADDR_START, EXYNOS_DEV_ADDR_SIZE);
 		else if (IS_ENABLED(CONFIG_IOMMU_DMA))
 			mapping = iommu_get_domain_for_dev(priv->dma_dev);
+		else
+			mapping = ERR_PTR(-ENODEV);
 
 		if (IS_ERR(mapping))
 			return PTR_ERR(mapping);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909114106.141462-183-sashal%40kernel.org.
