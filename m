Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBP6B42QAMGQEA2OYDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA3E6C3164
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:12 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id n205-20020acabdd6000000b003846654dd65sf6410278oif.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401151; cv=pass;
        d=google.com; s=arc-20160816;
        b=nY7LANDfvjJcyUtE/kKONTtkkZcrJ7OvKj8/CkxTl5UYJbu9+GCvWt/lCn2AChD19x
         MjYvqVNPH7a7U+X7JS24h3YrC3BJqkQXTwJOGLVbPxwVRyNcZ2P5YZQWbRsPl0wLOj8n
         p8wahyv9F/LWJ6g6XdRDbDc8tx5gKS6LRhj6WQI7nhKcW16DuqL9NNNlmS5uoohk6QAv
         icqxpaTl4e7V+tQYsIpg9EUI1om+vFQb08sDwDVpuUTZi+Cgoy5FEAqLFop2KYAUWd7a
         qJR39kE+FQcCFmiWdfXB5n9yGcGRS+D4epx4CPw7BL5IR/Ab2IIsmog8VF74HFuH6tlk
         e+ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ByjgztOlNzaqiVBT7CYIu9d8t+L4t3YX7+gzCuQvf/s=;
        b=Oz6+Al1QA33wLkj5WRJPSX0ccf4vDvNqbPFc1um3w7OQbjq+pBNKRXe1Yy8bdWHs0i
         CJ8FRF2hEmSiy3yW2QIXeREmxsj5uFIzkWHnUrPbPzxZCqoBm+bau7RLXgNGiq/0Ezth
         d/q1tHWY73Ux0FjO8sjAIYoAlQixUHD4b7mKjBafN3lSEDjEBiFXrc/yovVuapqXzCHK
         v4m6MRJNeh3/l/RahAt9VCaQ76wC09h6tJUrbtNL2t1l5TkWzgF3Vxk3tzx7CmHnt5te
         +dApicUk1pshIsQiYmwIdEmM6SnojGZMxlNs00gALXM9bIeKU47+tKnhaZsL/1l1LZe0
         hZpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=ottb6F3u;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ByjgztOlNzaqiVBT7CYIu9d8t+L4t3YX7+gzCuQvf/s=;
        b=bimv+bxTVV/05Dg+Jjl1sud/RuvXBcOOrhMi4/U8aRyaNgKbQ02QweG1PUW2IPLxdt
         yqztjmDXWkP9D02MhRDJ14NCqUCfqMKTjBYtnhzE1vgaQZnQ7p/KsRIyAU4iFgMRd334
         CivVaXAlndVXjQQizpsfV4ixe5BZedQbMO8zY7S5Kba5xx1D0PY3F14wxTBSNd0CcBAx
         mv+zGrFMdq0ZY+iQuk+7/FtuTTkbnROZ88RoYF2ThVOZJ0qe/veGLI8Mo9yoNQUugQM7
         By9MLS2S7YkmPzHmMlw5syzF6m2XtFQoMYhLjPt8nJpFoxyIWIigMwY8TIiQyYrGT7ya
         Ym+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ByjgztOlNzaqiVBT7CYIu9d8t+L4t3YX7+gzCuQvf/s=;
        b=ganpAQq3nQbcs1oQx1JNtUESF/bREzfx+IbQ8VQ/zt7wLvYZtZT0yv6NleLKDOkUxI
         pq3d0JTxM5r3qlDd4IBly8Xe26iWV71FqaRJkZeA1mwg5SEKfYGWyMAwJzOorpb84dBN
         8yNnQa1+tvMMJm7TN6tdrY0PAkaOgqhm/7ntV6i7XdEuGGtimeBR0hF+Vl8R7ZrTPqVv
         Z7d3yC0M8xr4OXCaCdUy+3SgzLmBChjQJ/gYbYEFeFL9mIF2Fn4szFii8Xbnzso1kCDD
         mSvHboZxFRfVEtqvfa7zsDhjmyPbml5vZk7a2JbJLa+/oI62bShTSQTglO9nOZlUaOjh
         FOqw==
X-Gm-Message-State: AO0yUKUBZcVoNeWVV2t3jdMKnm6+U0bcpzz9SnN593msuag507N8HBso
	xyY9Y6XxNizVLaJPqSwDbOw=
X-Google-Smtp-Source: AK7set9tNWNkWSgr56gqmFnaheQqZVqqW2+QKPwlj5cmnmunIItF7+NjX65PoJnnqR3bLM0sVKLTdA==
X-Received: by 2002:a05:6820:407:b0:539:65:92a5 with SMTP id o7-20020a056820040700b00539006592a5mr535165oou.0.1679401151655;
        Tue, 21 Mar 2023 05:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:915:b0:387:24d4:f9b9 with SMTP id
 w21-20020a056808091500b0038724d4f9b9ls330632oih.1.-pod-prod-gmail; Tue, 21
 Mar 2023 05:19:10 -0700 (PDT)
X-Received: by 2002:a05:6808:a02:b0:386:c625:5cd7 with SMTP id n2-20020a0568080a0200b00386c6255cd7mr901451oij.24.1679401150450;
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401150; cv=none;
        d=google.com; s=arc-20160816;
        b=cH/uZKSh31/KxTG5YBTL1zNwPRwSd6g4CtMbjbCfyGCpL4yac91cIOLxmSa12P/8zF
         vFBVeYJW5f8ndWqf5sN5LvCXnJL4Hhlo54tsbEKodyQ5h1+WnG5UUVcd9GI5/uTwps9Y
         BwdqKvfLQitJ4zTRfK2njB050B9OHLodYqLRZsM4wBm7kfqCdsv09/iT3OtTSOf+wPBD
         PnPz++Q+oOYMq64AttnuC2KX/iPDLfte3myqp2DtY2uofyDIpqq1Y1/lmOfZAb/PlDMC
         1eScsRrDazWchL49Yj61m6Mf+JZ6FIpeSprbpysJp0A79OIDNSKpwx7aG3CzmSu0FkD6
         ThLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=LOnGLhT29GUb4Gxr6YpokCc7RcuLeUqea4yzK4rSADI=;
        b=BhLOrFxWOLBrnMRENdMcTRZiC51n4TuFWQKcbMQZS18GRhbfDvQ/0t0h3Zo/XSaCXL
         Tv0HEawANnO64D2f2GwhdIIOxp9R+zEtjAx5wiShh+O6/JckzmjU9QcOLIPoF+DRo9YB
         37fxLBePqGNdPSPArlLZ9ffEoIWA0uGEtUP3O113l8rIBkTSj+mDzk2mEhGluoPLT87P
         TUQ0gqyMXQr+5t8ORwukfa40J/3/NihqzTeoS/B7u4g2XeJ07RO5qPUMeye1wRDZeZzE
         OuxL//Fdek3sTSAUoyGrTOHz100DWb5+Owzo9nlNaM/PBIWySggCjwvSspVjB5d35veD
         TOvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=ottb6F3u;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id lm9-20020a0568703d8900b0017b0d68e731si798157oab.2.2023.03.21.05.19.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 918f47e4c7e211eda9a90f0bb45854f4-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:49268a9d-d1ec-423d-9278-406c26416f89,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:120426c,CLOUDID:434877f6-ddba-41c3-91d9-10eeade8eac7,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 918f47e4c7e211eda9a90f0bb45854f4-20230321
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1422207177; Tue, 21 Mar 2023 20:19:03 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 21 Mar 2023 20:19:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Tue, 21 Mar 2023 20:19:02 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <krzysztof.kozlowski+dt@linaro.org>
CC: Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v30 7/7] drm/mediatek: add mediatek-drm of vdosys1 support for MT8195
Date: Tue, 21 Mar 2023 20:18:59 +0800
Message-ID: <20230321121859.2355-8-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=ottb6F3u;       spf=pass
 (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as
 permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
X-Original-From: Nancy.Lin <nancy.lin@mediatek.com>
Reply-To: Nancy.Lin <nancy.lin@mediatek.com>
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

Add driver data of mt8195 vdosys1 to mediatek-drm.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index f689e6750974..dce2d86df6d9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -208,6 +208,12 @@ static const unsigned int mt8195_mtk_ddp_main[] = {
 	DDP_COMPONENT_DP_INTF0,
 };
 
+static const unsigned int mt8195_mtk_ddp_ext[] = {
+	DDP_COMPONENT_DRM_OVL_ADAPTOR,
+	DDP_COMPONENT_MERGE5,
+	DDP_COMPONENT_DP_INTF1,
+};
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
 	.main_path = mt2701_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -277,7 +283,14 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data = {
 	.main_path = mt8195_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt8195_mtk_ddp_main),
-	.mmsys_dev_num = 1,
+	.mmsys_dev_num = 2,
+};
+
+static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
+	.ext_path = mt8195_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt8195_mtk_ddp_ext),
+	.mmsys_id = 1,
+	.mmsys_dev_num = 2,
 };
 
 static const struct of_device_id mtk_drm_of_ids[] = {
@@ -301,6 +314,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys0",
 	  .data = &mt8195_vdosys0_driver_data},
+	{ .compatible = "mediatek,mt8195-vdosys1",
+	  .data = &mt8195_vdosys1_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-8-nancy.lin%40mediatek.com.
