Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB3XJ46EQMGQE2REST5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id B80A4404B28
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:50:07 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id w2-20020a3794020000b02903b54f40b442sf3957155qkd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:50:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188206; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJOXsSaoBTyCMH4I/xuIWsxsA9KO6x9t6UIOXT9kj+FDUMnMQngm0Eb4zRsF2tp3rS
         xcBDPUn0eGFAsVp7/8rKCTJXfwvePo5RVwJ8ErENX1G3iP5ZuM7PVAsQUT2xjZPKF68z
         U/8OsMZ2+XfCskeA5Gn/Dm56wOPFXeCCYQjrKp3xHP8zsk4rT+oe/tpbMyggwG9j5Ex9
         AY0Q0LGKjHuP6JI4Q/zc1O0k/d2ubGH9oa0Ay5KYIfko28sbR1Gdcef3RN1aYV4IPJ0T
         pSBwZkHDofkQXtFgLGRNmqs+K+xB4VuwK91cKLnoWOVAhteLjsKZsE75r5NhmQsdtVHj
         124A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3EcNW5XhOdZ7iuUJstwgeoNvZYxNbZ20PFF6wkh00mQ=;
        b=Pt6wgqKuXYausFj2ZydrLy0ncLevBOsYNmsYymJzEb27pfah4xn4GCf8McD6T1S/CU
         JAcEXVCl94Nd3u71xU/PzpqqqT+5IG/34jiIk+bdBZwTXf1oQ9Td6/NnqvdiU5hGnT+m
         /PLsnrBxq1WNCvgntqaBcFcD64vaarLNj4nGXkLwU3uT+q+dESITsJatG83Rg4LcgXBs
         EjpszNzOOCm4NUS59+3s1voay00p4K9/AhPxEZqZth+PI4kfScyjpuwJ8g69gmuerAuw
         eC99FG3JqyCZEG5KkH3L6V9/Ulh1BFcQ5Ib0epASpT1ilgE5VTtjEkGO+Ox5tOpkzS51
         bxCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e68NEJeq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3EcNW5XhOdZ7iuUJstwgeoNvZYxNbZ20PFF6wkh00mQ=;
        b=K05nO6JpiK2T5ItfbVGcQCxj3ehP/1TQLOso/Y2jUiuzq/LZTRFIpNMXcumbCWTEYC
         +3+RTFkQ4D9WVTiTVDxRx044vTE8ydBgciPiBWKKfSahJrWbX7yYEigQy9MZXPWilMrr
         fM0aai3U7hJ5CPRzgBytBgzA3QrQw1B+trv29/GeUYEfp5PL4eGOM7pltX4zOETO3Kq+
         6u7j2joAb2JmLzrcN6XXlcEF+5ODMIlW02fyPuTunI4sftx4zGI6r14cAlYAjBqo8in8
         emBg9zc0MUzpfN5z8Y/OPRvtM7wDsKIRjswUtYN95orPDvl17FFHmch3gzlek6cXoVMV
         6ySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3EcNW5XhOdZ7iuUJstwgeoNvZYxNbZ20PFF6wkh00mQ=;
        b=nApL8C8NwehhXRiAHlvAbm8UGgPR5avBCdE6VCRwrbwFx/HvWMcn+C7lENCAj2q5qH
         wXdWO1ifHDC7efidLyEczZwHlIwar9dm6i4GF7nP4fPD7phyJ7tRsBJPqf9AGLZDOdnF
         B4/xM552ho1glEdEg2Zav/NBI1hsqqTcBksODDGVCnVR82IvjoczgcbQjIAsF4lZ/Gs8
         JWeBBgxv18s7hoCevZ/RHkqSC2tz2wC8EpJu65sNmmB9xd1ZBuU0UqfxpH8n8NMVwI73
         uLT1oLx5uktWh2iE9fxYNkTN90NP2x+LoQSVR9cpqcuJIzK5Khe798QD+C+J/q3QNJfv
         GYIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X3B6VYvPw15iGpn0Od32PdB3eC75zRyfdumGkp9BVGGCrTmLW
	TeSdN8JYb+5W14STPG3TY+E=
X-Google-Smtp-Source: ABdhPJz0Ua658HE9hVAADaU/jB42mpSI5cehgQ7BdcX8OJT5xXtoXjloK3Gz8EjK4dWwdNPw+/1VRA==
X-Received: by 2002:a37:9ed3:: with SMTP id h202mr2209345qke.184.1631188206719;
        Thu, 09 Sep 2021 04:50:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:404b:: with SMTP id j11ls832530qtl.2.gmail; Thu, 09 Sep
 2021 04:50:06 -0700 (PDT)
X-Received: by 2002:ac8:5a02:: with SMTP id n2mr2358413qta.359.1631188206234;
        Thu, 09 Sep 2021 04:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188206; cv=none;
        d=google.com; s=arc-20160816;
        b=EhSMk9uM9UTdrMOi65JhTc7gcekrjyJfNOcaGPuYBEFTLyaGrazzcGI0wZ4AcpdFi7
         khIOiS6DxPh7hdoaBX5sFQA7sY+7v+q4kDeUiM5iX58E42Q2qlqB4vSUO+0UnCKPP/TS
         xl0oibPbpCtysAsmKUZx+BrcAHLwCa0/3cC9Ws6LxgBWzoeoWjrAVMMj1PuYftqXIyCh
         JdpDODP7hfP3l8xlGwXsaIFqDCXCs9cadot0VkBI6VwI+zQHZwmwrLiXcIUmLDlkPlp0
         b4rjGNH3U8z8lN+zJ2uI1GhbA0NNEQX4lR52pI8AUBg/FYbiBxao9nO5NNxxJ8BUvgx8
         e3OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ANilVGfxonIIt2tXOAZKm5jIzhKYKwvd8t0JjkpV4D4=;
        b=YdQcZnHEdGot8ajBmmKtXNg0O7oPRYsKEhypE7Ul0vHti91NDLkJ1NGNFJ62j4ikCf
         +6YPwwlG4HQoJK09hh7FfUOieZX9zL/ao8zm0L9Z4qEmZrbvyrJlylIs6+bwnkVAmkvx
         Gjl+HvJA27SShzMkPPDZYD6FVsuIWK510JKRE94VgeWcRTdBAo9kMyo4xqnrVqnLt5oq
         WkHZSgQtp8Rebp8FRfEF6dTepqEYVyEHWfSLFgXGXJLuav7oBVSEG/sJx9z2XYfHB8dH
         yV12dXIxrNYCWGHKOS/1Ey24x6n1kJLWJHJrJmsd/ZXRsvZGSjydcZ4OJ++mVNRXKqm2
         BaNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e68NEJeq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t12si109918qtn.4.2021.09.09.04.50.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3843861A8B;
	Thu,  9 Sep 2021 11:50:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 162/219] drm/exynos: Always initialize mapping in exynos_drm_register_dma()
Date: Thu,  9 Sep 2021 07:45:38 -0400
Message-Id: <20210909114635.143983-162-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114635.143983-1-sashal@kernel.org>
References: <20210909114635.143983-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=e68NEJeq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909114635.143983-162-sashal%40kernel.org.
