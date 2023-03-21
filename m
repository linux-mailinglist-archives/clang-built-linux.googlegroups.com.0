Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBQGB42QAMGQEMZJLUKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x113f.google.com (mail-yw1-x113f.google.com [IPv6:2607:f8b0:4864:20::113f])
	by mail.lfdr.de (Postfix) with ESMTPS id B262B6C3165
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:13 +0100 (CET)
Received: by mail-yw1-x113f.google.com with SMTP id 00721157ae682-536a4eba107sf152440747b3.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401152; cv=pass;
        d=google.com; s=arc-20160816;
        b=m6KytJA5u1uV8RQxCfR7z97gSKZSMVsjdIzalZAx/V1If9C7fZx5OHgxgFCVAeir6L
         SkwST1vN1gJK9iwSa+kSE047CINxdsxQoBdeRIcCx36lb4NCn0Ihi4TNWm1CX0sfvC/A
         x+4ygAz4T7VSwoYMgixghO1RbxVrxp2fiZqWO+f+oLT1D7HLzdjvlOnYOQlUbuAHCDtd
         o1z8f1m90P8CkNlDWZ7Fa+5s81D3JW4b3pbc/b66FcJn1/2Mh0jE5Tx7gsafq6fzqAA4
         B/v72XnUniADZtdU8y+s3IWrM6w/SA/6g5kg9Vnhbxm3nNMUvOSihqBRcp95TIJxWpZ4
         9BPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=kOW6o7nCTSug5fWUZt2PyWWgc2rYy7vW032wdbpq9No=;
        b=GIKHpCYs3v1b+bDRreGVKVwevucS62EtyxzJo7Hw4EOs9ciptqbp8WqOYo6BjdPkiX
         DhYCx0E5wYBmirJUsjymAoEwZW6vk/gdPJ6YY/UfbDcbY6k9sXH8C7NerKfMArEgBgPH
         XUTnv+qWg7TW9tahPFmvcYPeiYOotvk15vhpy3MAV0Bf/EXEBp39ofnrd7vMUo2TTrM3
         ocgPyJpZkjAv7q61+v0+yJVpYW6AYjjERlqhnk2fUKusZkaTAl4J7r1QvWEvcxWU1oQh
         vmTteeaSOVXpTdW0EOvZDi547bVPF8AlEoaymSfpxfBc3ubAlSkMIw7SKUwrw2h1ujfq
         9nkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=dBJw9Z74;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401152;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kOW6o7nCTSug5fWUZt2PyWWgc2rYy7vW032wdbpq9No=;
        b=ILrqFIEL61ErSw0VjDHB2yT+lEqoLpo/ZCk67aoTX/ZMy7bP9kajI0kcv6ou8hG3a0
         DGd9WjLpLkHrzVyhcu1258HateXrAgtrq4YNQl91Qdp9nind6m471BcjtCEZzMmRDDT9
         beB7umDklmnqROe1yThrlw7FoH8SiarLp9HSw3l2edLz6KFSqblbXtMvc25XotPFEJOQ
         xX3Ujm04vfGPq7C/QLFbI72mePQMBwl1lZZbY9XhLPVksDb41XWTUJRTrZvvyjhR4y1E
         ZScrHssxrPldHcOyy8AloUipfqP1wDLP6O0jgeyQKB0IIJ2nv6rIwSgRtYwifkFjnWma
         bKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401152;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kOW6o7nCTSug5fWUZt2PyWWgc2rYy7vW032wdbpq9No=;
        b=16hJGZCr9gjbbkHTb4Ijqn4qtU5gh6DqVYBQsmY1Knm9zkmhcDM57x7Yp36Q5RBxrT
         ON53L8h7xVuO6W7/lEZAuVtAhzklDpn6B3V00LVf/HgZpEpItVCMPG63e8SCbH0Tv+1e
         vq1KlHedAc3Yh5BzIldkpMyAsiKDjHSQvd+g7FNNUHZZAAPnzVIVhci20sAUfpWvMpRS
         LXY8kMEHKwaOmYsPn3eXMIs//NhCSiJx9barXuppI6ZCgRgL7h0mCNUdyZgYstfCuO/A
         iTsKLNoniETQKGfKe/zFVCRPxoafWT199C+6nn6UFWgLjewmyFKiK28n61qpU/Z4nzWn
         3kSw==
X-Gm-Message-State: AAQBX9eg5dB8P6GYCHmonniKGFZhiVard5DW10go+709PHO1NIo4GapT
	oOqe5TYGcY9agJshWdol8Ak=
X-Google-Smtp-Source: AKy350YsGp1h5V2Ck04Sn+jpWnkBbsnm1JOchT8lSLEwgi2nz2dfBR49aWIX1M9TJ/H0baVkVUKQRw==
X-Received: by 2002:a25:9a83:0:b0:b46:4a5e:365f with SMTP id s3-20020a259a83000000b00b464a5e365fmr1319098ybo.8.1679401152427;
        Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:10cd:b0:b30:e80f:2e4f with SMTP id
 w13-20020a05690210cd00b00b30e80f2e4fls7798792ybu.1.-pod-prod-gmail; Tue, 21
 Mar 2023 05:19:11 -0700 (PDT)
X-Received: by 2002:a25:dcd4:0:b0:b0f:dde5:e395 with SMTP id y203-20020a25dcd4000000b00b0fdde5e395mr1844574ybe.44.1679401151769;
        Tue, 21 Mar 2023 05:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401151; cv=none;
        d=google.com; s=arc-20160816;
        b=kNBmCuRFbX/Fil7/uD/XnifUGwh+LfUCNbxIrJJt923pOpFJ7tF+v3wAbMVZkU55BS
         jIWBw+pKaifZ0R/f+ImjTwU/nVjemFCmV75LkRJZokYVH6jGsutIAyvdas81+ARyZiZs
         6oQpBJPFzrt14iiqrgibDMXJmTLel55MGXVaJ590YerxulCsx031q74Gn2UDBom5BUKR
         /3qJea7g+urWjRZhKeXgf2Nsws00D48IX7px8VWUEi/eCpYhCfqYbkaf7dnQPyRJoLH2
         qkJhOQt5yao9soMWg7vL8K2of54FI3UtVASrlE+ETpAa14Rjk4evAgBilSmPxcewys4v
         4heQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=U3qDFd+bHFYO7+5Js+QJzMmJi6en5pAU7xg7iCYsFkY=;
        b=IYVufbyR74Uol2GjzF70QwXl194HhunXVkCVR0+94lU0mf4d7sv3xQIg7ytzjVRmJl
         /Aq1rQaMmRqRQZiIH3o86WirGw6WqY/pAuo8tBEQE3/HiVPUOjCxPEd/wwTEEV1szKoh
         opeZgZOgLcMzQJFNn+QcIukuZ/IT7VgiaiVlhAj5N/O04jFKcIfP9MigHXJVvMcMvoe4
         qh3f3Nt5Ac53EQKYnlph2RHeL5nCgySZvP2oI02DSpbm8dGVDkJ5Fk2U3wUqfX+GMuX+
         qIF9V6kCiu6aCSVT1ZqFwwdfrlItusWwHWymzn5hrHydUuh1MncufYT3enSkmDtONYmT
         LGYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=dBJw9Z74;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id b73-20020a25cb4c000000b00898c1f86550si920294ybg.4.2023.03.21.05.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 914a43a6c7e211eda9a90f0bb45854f4-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:d62aa0d3-55e5-41ca-887f-640dd9bdc458,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:95
X-CID-INFO: VERSION:1.1.22,REQID:d62aa0d3-55e5-41ca-887f-640dd9bdc458,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTION
	:quarantine,TS:95
X-CID-META: VersionHash:120426c,CLOUDID:444877f6-ddba-41c3-91d9-10eeade8eac7,B
	ulkID:2303212019058ZXQRDS9,BulkQuantity:0,Recheck:0,SF:38|29|28|17|19|48,T
	C:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
	L:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 914a43a6c7e211eda9a90f0bb45854f4-20230321
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 778308317; Tue, 21 Mar 2023 20:19:03 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 21 Mar 2023 20:19:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Tue, 21 Mar 2023 20:19:01 +0800
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
Subject: [PATCH v30 4/7] drm/mediatek: add dma dev get function
Date: Tue, 21 Mar 2023 20:18:56 +0800
Message-ID: <20230321121859.2355-5-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=dBJw9Z74;       spf=pass
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

This is a preparation for adding support for the ovl_adaptor sub driver
Ovl_adaptor is a DRM sub driver, which doesn't have dma dev. Add
dma_dev_get function for getting representative dma dev in ovl_adaptor.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioachino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 15 +++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |  1 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 5071f1263216..137f7df836ef 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -58,6 +58,7 @@ struct mtk_drm_crtc {
 #endif
 
 	struct device			*mmsys_dev;
+	struct device			*dma_dev;
 	struct mtk_mutex		*mutex;
 	unsigned int			ddp_comp_nr;
 	struct mtk_ddp_comp		**ddp_comp;
@@ -865,6 +866,13 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
 	return 0;
 }
 
+struct device *mtk_drm_crtc_dma_dev_get(struct drm_crtc *crtc)
+{
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+
+	return mtk_crtc->dma_dev;
+}
+
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path, unsigned int path_len)
 {
@@ -955,6 +963,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			return ret;
 	}
 
+	/*
+	 * Default to use the first component as the dma dev.
+	 * In the case of ovl_adaptor sub driver, it needs to use the
+	 * dma_dev_get function to get representative dma dev.
+	 */
+	mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(&priv->ddp_comp[path[0]]);
+
 	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
 	if (ret < 0)
 		return ret;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index cb9a36c48d4f..f5a6e80c5265 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -22,5 +22,6 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			     struct mtk_plane_state *state);
 void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
 			       struct drm_atomic_state *plane_state);
+struct device *mtk_drm_crtc_dma_dev_get(struct drm_crtc *crtc);
 
 #endif /* MTK_DRM_CRTC_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 2d0052c23dcb..364f3f7f59fa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -71,6 +71,7 @@ struct mtk_ddp_comp_funcs {
 	void (*bgclr_in_off)(struct device *dev);
 	void (*ctm_set)(struct device *dev,
 			struct drm_crtc_state *state);
+	struct device * (*dma_dev_get)(struct device *dev);
 };
 
 struct mtk_ddp_comp {
@@ -203,6 +204,13 @@ static inline void mtk_ddp_ctm_set(struct mtk_ddp_comp *comp,
 		comp->funcs->ctm_set(comp->dev, state);
 }
 
+static inline struct device *mtk_ddp_comp_dma_dev_get(struct mtk_ddp_comp *comp)
+{
+	if (comp->funcs && comp->funcs->dma_dev_get)
+		return comp->funcs->dma_dev_get(comp->dev);
+	return comp->dev;
+}
+
 int mtk_ddp_comp_get_id(struct device_node *node,
 			enum mtk_ddp_comp_type comp_type);
 unsigned int mtk_drm_find_possible_crtc_by_comp(struct drm_device *drm,
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-5-nancy.lin%40mediatek.com.
