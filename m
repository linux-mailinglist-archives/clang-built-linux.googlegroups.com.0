Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB2WQVKOQMGQED2YVSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EA465682D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:20 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id v17-20020a17090abb9100b002239a73bc6esf10653781pjr.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128619; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/Gtb9aXGC3HDWY/h9Yp7Vo5Y4ZvZhFu3qnlJJb8ddeUfGvKTyzL56ifFHcrMVr7z3
         He2uzk84gva7ccznI9uYYvOLwf0u3e8msctNUqkyqKj6T//+UWEhvgxksOdUrpfgn2iB
         PKiAzfndmZvxgh3U60LIpo7RAp85gpc6WO2IC2MRK26F7ShHokHCYxMONs61as7vdifl
         sHIN/cqGppsn6/2OdUk1UGeMN8xAcBUk1jScPwpnlnA+eoj8fG6w21ozdY0vcEfYecgA
         7AXAmNJjzMbkm0e2u7M9U2u3bmSWVKNLVMS8Hl2Kz6YwbfOV950R8qnWaGj/5kiD2+6l
         iXnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=I2tnsLJ3ekF/lhIza1GfR7nTc5OMgqMP7D2y7QNCiuI=;
        b=D8i23QJT7AYyatrejYQ2kZi3n+TVcwq6JslbAXLAY6yhkysWtFbrDL69FqZzF2SVvO
         ooJs0FQg+X27S7gkRAjP6GYPousUIgPjvPE32a5W5k0Sa2d+qcQfjPBdGSVc6l3M/FBw
         p8Zuyz1qaaqn+Ew9+LYWrgQhRyk9waNkyZdGh6R1xay2Jdmek8NM9V6JkKGp52dZnXm0
         82XZO6PeFqxQldlyNSIx+raAUm6EUx81ttqi2nEbrcpUvbkzqVFjMrhM8Hqga8v5ybnm
         lVcKkqjXi3+m8/op2MWos4knSAGSS69MBMxmtOKKyHuAYVsPNRzUO5/+B0pzgfoy9chS
         NasA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="o/QWMUfM";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I2tnsLJ3ekF/lhIza1GfR7nTc5OMgqMP7D2y7QNCiuI=;
        b=JLp9CLdO71P3AILdx16/3jKv+kM4e9WXeQFb+qsjD1/K/4lEpCnfWBMTCTd7cGS+Yc
         K/9QGL0rDa79dx4Nu/2MZjvCaHXfYlz2zlZN8CsKaaBoJjQ0NbVo9cUITboHuDtO/LYf
         P7f8/hyn8j/Rbix5I7NPIcjKm+kQHpnQzpmWWcFzwyJaHRVh/5wlu3TAzQO0BHxUjXxN
         YfXNr9RjXA4W/ibvl6rnrWZ2TjGLThkdny8OAPspx3r9TEOcBWCS9x2r8miLXd6ZIZWR
         TDWDxOdEaqXPzhz64BJtxMnm1kH69KX9R2+Lz5GYroRH6L8HznwGdDnF8Z+26E5GjWRx
         p15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I2tnsLJ3ekF/lhIza1GfR7nTc5OMgqMP7D2y7QNCiuI=;
        b=RXtrpxUEicAAo2cCR2aDjAfpHMzXHEtPFfxqEWUmz2OagzCrZUsbInni04hKVXyP1M
         I3JCc5eizE694RKYjYkXR/qUqFI8TmIniM1OFTcW1az5oiWIsVUCmz7WHqKrejkH1H5P
         1V5LQ7Hg+u4y0geWGdJDrvRFS/VAjPh45YhljmXFpvWNGxjmEFlWdBTy4DG6B2knDFVL
         siRDPLl2/cEhVL0viinBw4qYDZBWFmgAUq54RgJDyX0aCF+/aAHrtQnetes2pfpWzO+m
         ZCrN+53pH2KFV70Xpr4NqkOmUZgxd/p4RZk91GFCEnv9oloX0nhXvVOky64q+Nv40pjt
         ymcQ==
X-Gm-Message-State: AFqh2kq1mqvnDKZRSTrgKIeeK245FZ5WZ2tV5MwLtlX7jX35Ek9K2P1W
	+ZLURbt+3G+OGFUAyx9ywBM=
X-Google-Smtp-Source: AMrXdXudu68yysMCdAqN5j1ZbZMIdQwlLgHU3YL2mnMpxv54+WfTEtjmysUcztUKxTlperiSZ0uxCg==
X-Received: by 2002:a17:90a:ad8a:b0:213:2168:1c78 with SMTP id s10-20020a17090aad8a00b0021321681c78mr2130275pjq.72.1672128619131;
        Tue, 27 Dec 2022 00:10:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:420b:b0:219:9186:46b4 with SMTP id
 o11-20020a17090a420b00b00219918646b4ls7133039pjg.0.-pod-preprod-gmail; Tue,
 27 Dec 2022 00:10:18 -0800 (PST)
X-Received: by 2002:a17:902:cec2:b0:185:441e:6ef3 with SMTP id d2-20020a170902cec200b00185441e6ef3mr37020982plg.61.1672128618301;
        Tue, 27 Dec 2022 00:10:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128618; cv=none;
        d=google.com; s=arc-20160816;
        b=sLtpb+iGSR/Tr/ZNiCU78KEJpWjdCq4ee9eXTz64ljj/IlrSoG+Qy6w3id0CJey0xe
         wxTpZXR95aH6hgLeCuBLUf39E1ti4aMl+B4Y/4LbWG5zkOWjP6mu1XxaWmM8YtnfhgIy
         hrlyjNKuA1XB++jm4IX1//MWSldf8VrfH1CpwCSHzywsl5KTnEJwANckO/RRdqmJx2NY
         Iky/I3lYGFgMtgf6YI/g1AoBCuPWdOcJ1DHN1nq1NdZqVvEagNlsIHzw72RUEzgFTaMX
         ketIkuPe7KNXwPHkr8nWfkf6h3fTL0l81/kMDV5PgTFsU/xiylTfzgoykFt7JBUX1dyS
         6j1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=rDOgK5Ukj6Kqp6guWqZHpoQ9zAqLE+sUML9b37sssLU=;
        b=cfx3vK7qCye+dw1tTaTz7KRwY0ySIwuxi+PvQ4n/DMRDGSvAPTVRd1e9leumkNLwLI
         NjcMIP2lNTmZbvd730wFrMeGqe17b6aklo9gD/W1sfJlNxQEQIGZHrrZv1+zpMAXbqOl
         RzH8rgdzzdSS/yzM0MUxthasYy7RwPSyzQgFa9qWJeuIJIcedx/Cr2qTiHtj2Uo4+lge
         K0ohLhej7jkRpGL3/M5AL23vxQEVSJl5QaUMH8lNZPrWOvcr0XfjlpLO1oijsrp0PlvE
         Q4ys7bAbO6cG2WqrPPvayWJ/LVufju0lHsRr3jTUz3GvAHA7pgmVyoqlLsQcT9kosIcr
         TsAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="o/QWMUfM";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id c1-20020a170902d48100b00188a88cc62fsi942509plg.12.2022.12.27.00.10.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 121b0c37f678457698c0876444a68e39-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:044e3f12-fea8-4904-8ad3-db0392daaa82,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:79dce852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 121b0c37f678457698c0876444a68e39-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1640602790; Tue, 27 Dec 2022 16:10:13 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:12 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob
 Herring <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 4/7] drm/mediatek: add dma dev get function
Date: Tue, 27 Dec 2022 16:10:08 +0800
Message-ID: <20221227081011.6426-5-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b="o/QWMUfM";       spf=pass
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
index 112615817dcb..78e20f604158 100644
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
@@ -953,6 +961,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-5-nancy.lin%40mediatek.com.
