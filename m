Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBX7L46EQMGQEPZA3V4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E99C404BC2
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:54:09 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id f1-20020a5edf01000000b005b85593f933sf1572003ioq.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:54:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188448; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRot3mjm5Yfe5/SkvMFHecHzjuZWmSwh8SvANwVc7URJsoFRnh3tLoSTappOcRnCI8
         hf1GAQeknyMoWH3J83z+yN2Tb8lq5nIrna0z87LJ+GC9TllZj+I1nrJ5DGV1AafyJ3XD
         GjlFdazllMtkLMUao/dgYgWkgt3GMY9QQniK7bAGXwVhjy0zcNULLRLXShsNQBfSH06m
         H5+Du22a1X0yHF6u7l4iTcmrSfZv/94hAkisYm5M7JbM7pdWPnbrxJ/HYa+ZLAQ56M74
         ZiajCKmIDi/80+adpybbY1auZlQ6u0Xz5kZBvNLsQEsQWGU6/rQVusHS56I58q8uKc4Q
         3aLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XRsVsyRGy63qjCPX9SZBdVPT7XSjZMy/Dd9J3Bzq+yM=;
        b=yNwTw6Zlp+FFtwpmyI3BCC6b/XeHIXsg+F8wCVmP0fAgsZyHxtP17CjdhKSlKCQOib
         XwjPy8bNz2eyCNWq93DjOKpE7QXc9deK17cSmnpZz9MdWI9ADCVphD74owXRq9uhfIKL
         bv52k0KMWV7PJYFTkxAH0WJwryGYf21s9jkwsAaQfVJ4D0LAUA9FLfaJREfLcbJ0MfEV
         ZRhnYLL6h+B+q7lJG5p9g+/+ix5BUa9Y7CMR5MI3AhGWj3OD3BR2lRl/DkF9l5gmBwZ2
         yihu8v4v3njNft2Uv92dURZDlH9BVM5cp7nLtk3pLaKe6MYbbKWFj/4rLhRBlhWy9rxn
         gXqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VDq3UAcU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XRsVsyRGy63qjCPX9SZBdVPT7XSjZMy/Dd9J3Bzq+yM=;
        b=Ys4gizWa88afUW6nL/Jr2vnin/QG9Mmi/SvlgOv0U3Z3xx1ebFFhQcEcVFOVbN+bG3
         NZdvytcDON5EJy+HR8mtFBKgQQKTPs4VhbEL8trn5C0zPtE+AkrSkKQbGGi7m5NE/jTA
         gCBmSOvuYhLgvo4aOOYQFWZZBpa9uDI9JyMX5XsVGj35JVngeYonn0ysI1vfF2O1YwRe
         /74C+R+1jJstf+anAJ9ByTQ0tJ7yrl4VzOk1m6l67k1zHU7JvpFlz/1MCV1f329sh42i
         X+Gs+4MMzyE+Wv557GMCZcDR2R/y3EaGS/98yrZwl1gB4EO3DwXYLGCA76jGvqpyEleS
         C9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XRsVsyRGy63qjCPX9SZBdVPT7XSjZMy/Dd9J3Bzq+yM=;
        b=Hlc6Z+69NgxfYMYlTqQdjygaY1JggY/o7WKWLFTTT+AoSiISg+ozDEYjrTKGXVgnli
         5ZmWJjuL4LKcm/Uc4SPtSjF/hSszYVl7nrX6GKXHvPyMPfGZx2h6MSpFcxhNWdfI9VOj
         p9rMVr8E3eaiGq7XwdMBBHfuBCnpi2EjWcNXWbfKjPWi2v2lO+iwMkz1B/b6bP11A4wQ
         xC4uW4PoqwWsrQ7FJgH0LvZoO2u7BcaCOjoeJuETBglHXu9FvTju+pFeGBV1nvJTSYDV
         xHOCMlTfmQ+/sYwbZy8XwhKHt2qbOi1XosR5vxnaUokzBXzi2g6q5ZsyWCE4mTdV2nG7
         pHvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xMhkIXssspjbgCOHRBHYVpOeeBZIBgY/AqGRdMpS4gOk6FJvY
	fXh+HcghzpRST+7V+maLEWo=
X-Google-Smtp-Source: ABdhPJzJg5tQf1u8pGeZkW4e59LFIWiRLrVsxB1S2wJjDAxxAK/hHlUiEBVLpBber8JsWU7tTLO1+A==
X-Received: by 2002:a92:c5d2:: with SMTP id s18mr1909694ilt.31.1631188447940;
        Thu, 09 Sep 2021 04:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:198c:: with SMTP id g12ls322212ilf.9.gmail; Thu, 09
 Sep 2021 04:54:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:10d0:: with SMTP id s16mr1980489ilj.275.1631188447494;
        Thu, 09 Sep 2021 04:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188447; cv=none;
        d=google.com; s=arc-20160816;
        b=FIkizUG59W53e6d6ej2VRVobiJJd3zsLklHGiBEingQJMUeKyeFZU7tIbfVVVS2Tfj
         i78+Zrz+ryH/h/Dko3p4zPLUSB1hKacV/cQxgMbsYc4Ud+LNVmDCHTPQRXXb6gHhJtpc
         8jowJuuWcbCBgwrX5eH6xZKaz8Hf4kdxnpwztArFsBJCmT1cHxD8Com+87xOxygz2HjB
         AKzFPNtG5iEjnlVMSNcTy5eE4vc6IVFnEMhmhFNRvwykYlrPzQ/SEIEZXiyQtfg+IZbe
         +9pKzq/PKC4aUXwydeERJf14KQndR5s+T6eLZrXs0G2F4qdP2nszG+mzYPX6wyyM+Yqi
         7VNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ANilVGfxonIIt2tXOAZKm5jIzhKYKwvd8t0JjkpV4D4=;
        b=vbaRBHZHy/Zev8RluDyn46I/l9qOA2RdGvSrn8r6jfGCcZdyzSrJSvcYlgqenJiEyg
         dRztEVGLK4tFECK/k6W365lAzEKOn80EbZVUKFhjLtctsHQf6aGaD7ygIVa29MoUx3xj
         Adm+2UxcvR+9jbpMwZYBFppuKaz0zwcco7OJfDSn0Rx6+SNy8saMwa96ZPkx19OkJo+z
         eY4hTZWlqnSbRJB2diK3nFeJ/R/hHn5PvMF88/mn260lnXo+0R7evneaz4+H6hHtDzO8
         n2y40gQsu5GX4ZVIi9jLgbxbdiDu+8LF1eZapSV/dTrOesJUalmkVoYx13iPwSIP6Vrg
         LioA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VDq3UAcU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si116944ile.1.2021.09.09.04.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBF9D61B61;
	Thu,  9 Sep 2021 11:54:05 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 130/176] drm/exynos: Always initialize mapping in exynos_drm_register_dma()
Date: Thu,  9 Sep 2021 07:50:32 -0400
Message-Id: <20210909115118.146181-130-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115118.146181-1-sashal@kernel.org>
References: <20210909115118.146181-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VDq3UAcU;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115118.146181-130-sashal%40kernel.org.
