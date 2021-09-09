Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBAPN46EQMGQEKKLGS4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85294404C8F
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:56:50 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id r14-20020a056830080e00b0053b7b79c0d0sf919563ots.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:56:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188609; cv=pass;
        d=google.com; s=arc-20160816;
        b=0JIt3BNfJR5cMnj8Goy9LfK6r1wKnexxZ5vTlfoWDO/ZMeYGbhSqiTljEhzlXeZlRD
         DXDslw1HcuJPa/TNYXw9kBAFBiR85ZSLKdzYsUTefi4KcofNuDLRMQldBcEAVZ4SY/aJ
         QYWcoMQRQnBdxllPfoaysGF9j8YOZxkCe6hpT03Aw/4/dDBA+BRWmalYOEvEk1TqbWeu
         vvL4gfc9q38s441kQO3sHmli1Qb0HEcjML/+VzJ3x4jzxlXd8g5NuzeLAAi1dovRwyGN
         u2uXKz40E1OLDZMhbZ4y8/a2ZHCdeDanlUeq/YI0buPRlHan766kjGvGkP5IOgW+rPVD
         /Rjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+uduuvMyobwO3/aMPOMrabOOtJs9aYcZ41FTmGSW5kQ=;
        b=f2PbLVIY7mcf3M9GQQ4g7OxyB623ELW3dbS5a0I+O0wASLJkr5ppiPeroHoDyFyG9y
         JnfBCz7XbL4ZgAMTdIGhaeO3CukrrfxBfRqS2HyasB3lYrmkg64hOjEGu7I2BUYN7xA2
         ssyHglV6qOG6gs6G4pL0sAz/FCRddsHd82JGmdfhK35Xk0b2IZS1L+3AaVaP8IlVYdKh
         GOMdprQFw5xchOZ00xjMsIX+MPoEb6T+6eB9VRkBPpZDHXPqIfayPPzhEDiU1+QcwuqD
         4gjTI/dut9b3pPPWiE0U4sQ2PODbKYPtEQcGEpmB9EVFrgBfAz4DhF1CqUGw2hMz0mVb
         tBUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oSdzFhim;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+uduuvMyobwO3/aMPOMrabOOtJs9aYcZ41FTmGSW5kQ=;
        b=H6oNwfJzazb8INkS/DRTTbyntzmUjPuWkHGyTkcO52eujoenOsOJYzkloeNnNc0wxa
         BfQPCrwzqs2lOule894snFuSjG/5CgUCmMIK64oKNkHoRjhFPJZIuKxdk+/GCEJIFYr9
         1BOIrGbOkcsAKinLtrr57bx5Omk2LSRvLvn0EzboPXAX8xFPJpFGZKnKgJ2vwr/WFYwp
         kxmo+C/DWxBnP6MA8G0vA3xVheZEIEMz5AgeOtw6iRskKTyDC29w6cxZRROzAfvI3FNa
         HPRpS1ExbeSSVD/LEOs0i+9rDd0tif4nPA7ow2jZLqcbdhLvvu3X2HmOKblP6pPQTOCk
         Ig5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+uduuvMyobwO3/aMPOMrabOOtJs9aYcZ41FTmGSW5kQ=;
        b=bG3G6iPRDPvbaqysMY4L6+pk9QG6YGfZXuJdXpg21v63xNqCDUZXJxxbBQBXVYg2vb
         EQYJ4TjFptvQ60qwZze8DqYc8HZAF8gv0VuqDEFfIcrSY2n0el2KE5LUx9rcyJmVbayJ
         kXenh6rmvITUJFXmlPG01lC1ZQyoYHLgi9FenNDjIh5HAW0+M/K33on+DvQDAD9vNmhi
         cP02HKZnr+8O1pJIozSM15rt6lTfXoQgOEmjM4ux+qupmxpWddFjNWGewm93PRhks1dr
         dCpCR6NSY9svziujAiSFwssMXpxc4haDnS3NVJsPFRiC3M2KXSORJ2tGh+FRSx1t6HTT
         bxbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301Y0p1irxZoBp8QOzE7FfkRb9DJ3lZLuQDQI3AeAs+ufO/pfKq
	PAmIYZ/LeAXXyQ22//A9r08=
X-Google-Smtp-Source: ABdhPJxp94GPQyXPeFsxF/NqTUHeIj94JU9SbxMRU81ZVXSIcpFwAxHDQ1jNwu5EsQ3QzO98FyUO/A==
X-Received: by 2002:a9d:7c88:: with SMTP id q8mr2080603otn.367.1631188609433;
        Thu, 09 Sep 2021 04:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:53d2:: with SMTP id h201ls364365oib.0.gmail; Thu, 09 Sep
 2021 04:56:49 -0700 (PDT)
X-Received: by 2002:a54:4883:: with SMTP id r3mr1633247oic.7.1631188609073;
        Thu, 09 Sep 2021 04:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188609; cv=none;
        d=google.com; s=arc-20160816;
        b=HIysrs25SuY5bJL7PZhJudwljwcKp8oJ+I7HPb4McTXFix//QfeHJx0PVTsH8oOQLF
         xI7CJ7OUwBmptmGZV5QvonRsqaOCgsPJJkPty2/7g7Sgi/c1+H+L7/PY0Phq8wI/O8aC
         jz8Q3aBuu1eYTdmpmoy5NE6dMX4u5LQ4ZvjVgc71iaZ+3P9GG2W/EMh8famtiR9E8TXb
         gDyU7BCyRso0CHrq8wujspmlEncCBMQNWLg4fjnyOogD1fLcjuXLXV5GlviXan2/03WM
         5+50UGzk4lCBJB6wNiG1dBONffcJpzAaVBDV8zE74l5KG+nZHLCj2etEOAvnJGu4lVvD
         130g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lBfuIK/2niLlt4QTTiJGzxMKkBazZGzspt/diGd6GQg=;
        b=fasnX67DjX26WgxQtAAdEuSXyzrPm05At9zVOwJv9mNHFiHPvSr7vSnQO8PgTShnis
         D87TxieiQLLKW+Qy0Ybynda+p/z9UcVizIZJl2/eCcmDChlvFT+gjmWJIyheQoyS3fcV
         m4hyI/Pb1H60QJ9o+g6dxorvVjh3yHvUVbchoi2h1OQwfeX75QtzM34c522aoicDzTic
         ugRWJp2dycE/xTIPsQ3PT0IsJfQAcmy2HSAPsNqHrDMCgK/SLgbsqHVMtxyk/bIUlyES
         /4awscBmf6AkbJX23PEERcVkMkV6wBkUBgmkRfhMIJpPRZ1vOswjdKC3w4vET5pFRd6l
         2sTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oSdzFhim;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v21si119504oto.0.2021.09.09.04.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C336613A3;
	Thu,  9 Sep 2021 11:56:47 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 079/109] drm/exynos: Always initialize mapping in exynos_drm_register_dma()
Date: Thu,  9 Sep 2021 07:54:36 -0400
Message-Id: <20210909115507.147917-79-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115507.147917-1-sashal@kernel.org>
References: <20210909115507.147917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oSdzFhim;       spf=pass
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
index 58b89ec11b0e..a3c9d8b9e1a1 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dma.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dma.c
@@ -140,6 +140,8 @@ int exynos_drm_register_dma(struct drm_device *drm, struct device *dev,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115507.147917-79-sashal%40kernel.org.
