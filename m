Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIFRQKEAMGQEAZ5RHBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 687783D8421
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 01:37:06 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id n16-20020a170902d2d0b029012c52457579sf285816plc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:37:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627429025; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2t4BVWsQLuJp5B6YRUCuwb2U7VM4i9KQiHYFWV76rZSOdvaxX2/Zq3cSizZfWPck0
         GzF6Xk1PhrIa8JlPBjJCF99kY5ycaYQwsL4jDQr+wmusdwcSQybgg9+yVtgxZYsP5/bI
         /5WJV3jia53PBiPMDAxpAfHPpkqEemaA0wV2hBuD3WFxtJZQAzpKZDMsXFmHhHiG7Ycg
         l2KByuoaIYNumPMgNN5u3CBu13aUVUU3VEQOFS/NpS0dGfQ8Bi0mnIn0vlxy26ArQ84k
         aVwgdR7+FFU89nkGe+DbMkXY1LGCE41258lsWkXUmIblXzaBNXM1nTZ2jOw2UZ5SuJBc
         6j5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ZYKAO7AoReInIA/bL9w6hHvD8mXFxo3W4QXN0Nmy8+c=;
        b=PRS/3/Yprn4c6CnOfMyMPsXf04emy32WPW75Jw0xLbn3W0EzL2lkMbs39lw+dGpVxv
         TDWKFynkN4sJixlk2IMx/J4jE/V7QPX5J1l29nlf7tJmejNkwla0dKh4r861rmSrzamE
         VwP9u9dtcWXvWndhvfvHQ/ovt6Qkrhs868FrwhtLPqCQWmGjSjc+3M7AbzI9o+9R8QBN
         05CU2rvSJO90XGKcZG8JYm24YblASCrVPlvLqlOgnBG++YWrRgLqplc0L23Au0ubJ3II
         65MTLqBkWSpU+LusUrxsNUWYnquyWZUBdHwmQ0F7LHifGjA5ViiHkfao3CYzy3fZVuMh
         CMog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FibbjNdx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZYKAO7AoReInIA/bL9w6hHvD8mXFxo3W4QXN0Nmy8+c=;
        b=QQUF+zSU3nEV+YOrsNqBQ31/VLjGMVgX5Hwc4XJAEBtG92Iu4dUNMpbjvp+dvFdQcz
         jECIwL82APC/lM24se9598zqDPQ0HI0psztsHmP6t7MIJGivswFuVOr4UWMX5uNy3Yxk
         9zrUHyUvcnl5nZMqXYYsVpTBD4A+WqJxV10FN7BhG17px56tkm3HjTQx1M8MBszhNDJq
         vL6RXyu+1BKD3vTcJyVhYo9TrZyg5SzR2GaLIHjQcRP73+fiSTs/SM8zVdQI4olFO4EQ
         ddFGkzoDOgkMSzSkNSTTdyIsnNz10HmHHkGdzjxSd5DFPHMgHgrnmQ2Y2eVfxMEjXnkA
         AYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZYKAO7AoReInIA/bL9w6hHvD8mXFxo3W4QXN0Nmy8+c=;
        b=CfNu8BQGPoBI7v4eoZeZZKXm8qTPQg0EdsL1GuCGRPIzlJUju9oCjUPw9RfkwqUhBM
         ksqmYurd5xHSgIPuNOf6REeJ4MfipbolZqBXainr1MbkQwRteqz+E8D2AJfjhGGQOsJA
         d6jG0HhBqfZR1mUDfk7Mhc/OqRbh0e7anHxv8IDRKSRZV8GQLlLbUTLC+0fapyjF8FJq
         3vrL9ik9TfXelVHv3pF6UNSXDjbWCmVRBTfk7QKChNx5ziS2dE+Tw7SZQH2zp0burD8w
         hR7V8DH2FfdkX0xyTiaA7phzcYJxqu30Tu7PqcgSQswPTLq9Fv24c6fky9niT5w0Ltny
         QLsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vZA6nvkZcpT/PIUwbcyfjKcObuofWt2roriS5tjCFi84OSuTM
	l9hAENp8zY8AUATruunbwuU=
X-Google-Smtp-Source: ABdhPJxo+V+6suX6JAOBJN2jKyi3d5x/K0lXItD0uLITD3isZHD3ofl2zOnC9YUML8WarSjqpzt3rQ==
X-Received: by 2002:a65:5083:: with SMTP id r3mr7602590pgp.161.1627429024980;
        Tue, 27 Jul 2021 16:37:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5348:: with SMTP id w8ls255897pgr.10.gmail; Tue, 27 Jul
 2021 16:37:04 -0700 (PDT)
X-Received: by 2002:a65:6494:: with SMTP id e20mr26431426pgv.101.1627429024473;
        Tue, 27 Jul 2021 16:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627429024; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4g5UwQFMLlBA5jCe3wBmeOB1npvI84+OJuFoDka9T5eiM+w4fybcJT1Pcojzm+ejy
         ZaKs+VwER+g6yiOJk4kE7bYAnxN54DEb6D759I3JbnLd8XT9FWClxRkBYXna3EXNSjJI
         BWADBy6EamR1qgVDH6rmCEdzWxDMbcRLg3rOXg3YthmMiso12Kkszhy/PyQWAdpch5Hy
         tvZLs4GSxX2cXjnU4mAOKhwQ26JJtNfsVumr1t9b2I5VtKybSw0avFr71ccsXcpxcezA
         wTJi5ruX7iOCefQlrw58riEbeGOemVtxP4MKgt6Fx4kNpR1N4aMaWiK1P2wM9ef3jxLs
         iegg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hXn5APmbFENFD6LULot3PPLQLh3TE4NnKqAYmBbJeAs=;
        b=Gkadh9Y+bcMCKkRYVSJsX3XVooU8p+Dqap8Sx/BtueJz3zNHqxYgbe9iWv4AXcAmog
         +f6HkalFEBq4juA59Y1sXHViYMiW3WF2K6U1hEiKSN/1Ln0EDxG9JdudRpX1k1vvPOfU
         KM82kudc+7OvfnIfALbC6yd4M9MvTI390Y0LxcqGT3PjyWoFbmYPReOvsfplYRaPlLfI
         oS0QzjovAVRZlhPANy9nhkHYGTnkYFohJWYaKtrnubj6fNABPDuGl8i7CMBoNi7JUPRf
         3rjdFJycM5Hs3lueqDz4k4LvvhDomxdIcVfHmwJLdIMc+GAd+GjdxmpcErJAU4zntfxX
         5XGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FibbjNdx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 14si163057pjd.0.2021.07.27.16.37.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 16:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE69C60F6B;
	Tue, 27 Jul 2021 23:37:01 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Inki Dae <inki.dae@samsung.com>,
	Joonyoung Shim <jy0922.shim@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] drm/exynos: Always initialize mapping in exynos_drm_register_dma()
Date: Tue, 27 Jul 2021 16:36:56 -0700
Message-Id: <20210727233656.753002-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FibbjNdx;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

base-commit: 7d549995d4e0d99b68e8a7793a0d23da6fc40fe8
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727233656.753002-1-nathan%40kernel.org.
