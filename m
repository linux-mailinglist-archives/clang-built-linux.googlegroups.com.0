Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBUNNY36QKGQE4LZQOJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A5E2B3949
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:00:06 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id o19sf7480390ljg.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 13:00:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605474001; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNapMvUXiYaQ/b3RdpB9uO7GHeqZVZCxvOerurne+3yOtoKzHDLvK4wZOiTf7Gl/nX
         qe4Yw70VMlRa8Ke0uAi7czveRkvYNYYWQvo1z9czUYJjoGBzlcuBlLkO/JjmiUVKM8f2
         01SgEkllb8auCrlF+Y2DhRyO60DIa2YwB0RtTYmDwx01v/wSj0pKpI1UjMcqYSjtIDd7
         1eV+MXpF0AmKRZ0sv9z1zOlzpsCogIXi8+wRHRGErrmZyURNo5ucciyi77/BPj4e2V8m
         FdrP2SuXXcN+UAUrhrspsgS6AYbQNPOb4ozjH+un3QgS0uwEovGhMH+sPOiXVgq72UjV
         hc6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=x/PZ32Z8gqvzWxSx5XzVlbFf6/8cnjx8GNcCshlRrBQ=;
        b=xCRL2TJ771Jy+ZzZXzGAkiNf3Z5CwF+QDsYZ2mwmEZjzdXVqTXu01FHWGnZ+XJ+2g5
         ZDSfDRj/UWqM9fjOkoeoBDwbNTUUPYavG4xcIDRRG23qLeK6D2F0YQb+sbbOXPP0XP1v
         Sao8BhRO6l9TgnowOhQJk4L0zHO6OiaNoCDFXKXaSWbRCT9pNN60dEALT2vnCUDHHy/N
         8bcE/6L2qS+ps1XS+FeYvmvoIk9LDfpC3aSRJKZghq/awGItPtta6QLEOJa/mve0RgPU
         6XsKdPOFnQEkKTVGAWRwoox3BETThyuYCH81QjgpKqYjOWP26XeHKNWhK5zGz0Ye/G51
         OQtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H57uoI27;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/PZ32Z8gqvzWxSx5XzVlbFf6/8cnjx8GNcCshlRrBQ=;
        b=TPqTQQW6gV/VCkqfz7PXssOFFeUgFh7hNJhmb0gzJs3h+vdcsCUmUVGNUG/WuNij8e
         NZcTwckCs5QFypApcH9cufyneVxX5E3h1N8v6koKG1uBjg7k7yukPiujet3AEv58GGxp
         WG/zixtODun4gEpbFdhPCL3gm8AjHwQEZjILIlGz3DZGKIRLRzeQCPJO39hL7pQFiskb
         C6qGJJrL0N6E9X3mN5BSA1McfcRD8dpwVfUZQrX0uTBZYJtbt0mMvSbF3Kc9fUfwEQwv
         HysRF+yLbXZ4T8NCFj34NkwwiFQp829ySBeDCZDQqGq9IMMQ194lt5b/uNVaxiowEJy5
         rHpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x/PZ32Z8gqvzWxSx5XzVlbFf6/8cnjx8GNcCshlRrBQ=;
        b=bHKuRcjuG1VP9yuTwV19QndKcamAdmPvik7hHpIYGKTePNE0lldJ9JdPJ+SKwSSJrQ
         2dLeos69ntjI4TAs9xLY+DXY86ZFO2jPxe+z72NVqd4z/PW5KXSfzBzfidfRDz2sXb74
         TD+yVqvlx/VBk0ZZZS2yB3BbinqqdhBvVJZiGYLfOmdWa0CW+mGiNr9p3NiDxVCHqMnD
         6U5J/jmhfGdKKzRGGkFedXW2qi6NWFCw7XUddyjeTaRBZFO8O+CVqFlaV+GZQ5ka9rxR
         FWp6XayrfJAE062hzqgIevbdCErgNFj0xmZfbXWkk5FVvoIrScEtagJZsNQlXyLzFEh/
         UfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x/PZ32Z8gqvzWxSx5XzVlbFf6/8cnjx8GNcCshlRrBQ=;
        b=CIqH+qix1FUrlYUOn57ecSbN78iUnPJgwOww5ltcl/GShuH5GFe6cpLSI7iUJ2rpUR
         dLuWgzkdIubOEDp33cZXRJ8ofrLQ8eQU8kmm1LhZrXShtfpGfDOFVXaP6/VvzME7Ey/Y
         RerOwclQsF5/Vrnof6BiRJeSjDE2Y+HPYSd6ChwlO3Mi/K/y3whN/SBkTqVtFxFWpyzZ
         BoOtcxUtCu3IQRVTOa1fXN0BI9PtfFE5/0KcR3ZqyqrZzEn/nwgY/8oZuv5ihfaRgz/a
         LN1+FRyjPAACNsvsRWfD3Qo2B70gduuOcal4tOMYo4x61/cLU28irt4n2hL3sPPDw0dh
         aJlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533U7Tc32rM5ynVeFHcHYAjyFBKx41p2rhjnO4Lv4yixR9wr4WuV
	xwRVt/I6BaAtKbexGcvac4Y=
X-Google-Smtp-Source: ABdhPJw+hVKrBu+brEfUZlK7E7GoJaFcx5j1HKT9DXMvO+7CfBOUMR2SIw95sHoGhDZnLD+OhIa8Rw==
X-Received: by 2002:a19:c897:: with SMTP id y145mr4567991lff.214.1605474001424;
        Sun, 15 Nov 2020 13:00:01 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9908:: with SMTP id v8ls1999778lji.1.gmail; Sun, 15 Nov
 2020 13:00:00 -0800 (PST)
X-Received: by 2002:a05:651c:1199:: with SMTP id w25mr4628823ljo.165.1605474000246;
        Sun, 15 Nov 2020 13:00:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605474000; cv=none;
        d=google.com; s=arc-20160816;
        b=cA5ivtls9vhxEr+3NubL+uDeYUnxJVuhJHIf5HIxIjsBWrRcDIuS4PL0OWkK9TB1cD
         I8tZMf9l5TzM8GRZUHnKnea7iB1mNwGmzQg7dFFqvjUYDZoOQA065L37PYbhBPdYlLrk
         MPSZpASIV7frTzy0NG5YtKSA2p6kpREcXcN1vHYwMz0FDA3bj4OfGM0h4XOO/J50TV5l
         fi0SoyuXcYGMS29DYLQ1hlCQMuSaGLTzvnpJ12okJ2GOZpQ6ozPbZ7GbxRzvs7hM6NRp
         3+XiWXH50AhMEfwodN8t4mo3csIqtsbc/7/b28nd3axjuutQkLj8FVV1GUslfmqU2wlp
         O0jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dLbdlp0c1Ky6bbcCd24/KxFE5FORT9BDtA7PPhpTLOo=;
        b=VOMGaBwJGcIjp2E9t/wawsVOeFydv9/JB4HEuXOxo6pf/+311c+yADBhbtymelVOmG
         zvbAr2IqpJBYSAx0npCtgxpG9W38SHq18PQgeATDpOmOq6/5aOociuIj9Yj+65GNXJV/
         D6c98U+nUqD8cvUHTzn2A4fQDjFzU52IwguM/b5ehybOjKh5f4m/1+7MW3yfjXa2A6+6
         yu8b+j3n2TCGIua6ZMrzvwC9s84CqWxL9huwC/ZyiKDs3zDA0R76YBMpwZKjVfAUjgaJ
         9+aStlcFGA7WqulbvGAqXo315Dp1K+AEEOwEFor9JLawfzNqkovl2phZfOaJadU221vG
         v8tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H57uoI27;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x8si79143lfc.10.2020.11.15.13.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 13:00:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id p8so16636552wrx.5
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 13:00:00 -0800 (PST)
X-Received: by 2002:adf:80c8:: with SMTP id 66mr15984730wrl.415.1605473999601;
        Sun, 15 Nov 2020 12:59:59 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d94:6d00:d052:40da:8fc9:54db])
        by smtp.gmail.com with ESMTPSA id d16sm19845364wrw.17.2020.11.15.12.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 12:59:58 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Liu Yi L <yi.l.liu@intel.com>,
	Jacob Pan <jacob.jun.pan@linux.intel.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] iommu/vt-d: include conditionally on CONFIG_INTEL_IOMMU_SVM
Date: Sun, 15 Nov 2020 21:59:51 +0100
Message-Id: <20201115205951.20698-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=H57uoI27;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit 6ee1b77ba3ac ("iommu/vt-d: Add svm/sva invalidate function")
introduced intel_iommu_sva_invalidate() when CONFIG_INTEL_IOMMU_SVM.
This function uses the dedicated static variable inv_type_granu_table
and functions to_vtd_granularity() and to_vtd_size().

These parts are unused when !CONFIG_INTEL_IOMMU_SVM, and hence,
make CC=clang W=1 warns with an -Wunused-function warning.

Include these parts conditionally on CONFIG_INTEL_IOMMU_SVM.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201113

Liu Yi L, Jakob Pan, Lu Baolu, please ack.

Joerg, please pick this minor non-urgent clean-up patch.

 drivers/iommu/intel/iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index c6622011d493..7b32703c0b47 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -5386,6 +5386,7 @@ static void intel_iommu_aux_detach_device(struct iommu_domain *domain,
 	aux_domain_remove_dev(to_dmar_domain(domain), dev);
 }
 
+#ifdef CONFIG_INTEL_IOMMU_SVM
 /*
  * 2D array for converting and sanitizing IOMMU generic TLB granularity to
  * VT-d granularity. Invalidation is typically included in the unmap operation
@@ -5432,7 +5433,6 @@ static inline u64 to_vtd_size(u64 granu_size, u64 nr_granules)
 	return order_base_2(nr_pages);
 }
 
-#ifdef CONFIG_INTEL_IOMMU_SVM
 static int
 intel_iommu_sva_invalidate(struct iommu_domain *domain, struct device *dev,
 			   struct iommu_cache_invalidate_info *inv_info)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201115205951.20698-1-lukas.bulwahn%40gmail.com.
