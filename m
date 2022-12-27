Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB36QVKOQMGQE2KO3IYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0C9656834
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:24 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id y19-20020a4a9c13000000b0049dd7ad41c4sf5805985ooj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128623; cv=pass;
        d=google.com; s=arc-20160816;
        b=bO/IW8VANL0wXwAVAsTIt8hRf/H0XskrTn2mYrGXxL9f/njS2ai3cQCCFysZ5GM024
         464rKMa0yV5rssHNj2j8qw9uVMBerCdtUTYlX4Hkw1VtswkQIInl5JoDcno1jG2Qg5iF
         ATP3/nh5Cc+6rcLe32HuaTGtFIlQ17XD94Rj2olq+NQobEyFPLvkSUQ+dZPSoNMpDa7h
         CRZAAWUEfxthqHoxA4K2TwhYwkpmCr/NY7oPzQCKNnXQ/OkhnKoVb+KafoWPThv4ZNrb
         EUqUQJ5cug1W1dT0pp3FgKQ6kZVBCwuj2WSRv88Tw7QPDIgWZksmSw/o8exO52RkqRT6
         YErA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NoQCPKjCKaYiWK4Jt8vt9JhpUWnrFqxQ/qpGkToWtrw=;
        b=ml9AWbGcvc7doNEk33uOOVyt7Ob6S+fPcum9wme0+kvrjM2TcS1VPO+fTHOMnkdgl0
         ZSu6ldSnuX1fK/2FVXW908PbG4s7PoQnxBFAHXS68d+/3hvJCeNYeXEfJRpLb/2bD4aG
         ypgbCJdP+Bk9oboCYqd6+FCfxyT86JtgtTpJAJbAYqgmh+IHyddq7rHjIPmHjZdJXm4x
         CR3dPgw/iGSCi6fbVWmFwMCMGr+W+Cam+nHJ5oDW+TmwXZBS8kEfC7whBcu722h8EV4t
         9qtbm0ETf2skYsm3pEq5g5ewJoi2QIpzNispOCBn+7+z524c7VraaFrxyusm1rP+KS8Z
         axHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=D5ImPCcb;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NoQCPKjCKaYiWK4Jt8vt9JhpUWnrFqxQ/qpGkToWtrw=;
        b=jprNkZ3Uqw6O22WN0R/Xvca4NnzNdOGCPzsyCQRrLoUv7Gk91W+mJu2t13tXM5/HCq
         P4AHv12n0AuLNcWRCtf7FwXxrYuR8rk9u/GHIiEz1qpB4sX2t60nQL+r0ZWlnReh5B3D
         BwzqqmSWJm7H2Yuu+uBtJ4qMuz+Hiw20/kyoxHwg+ESboQWvbv4gpkFhFqT3Tpw8pGkP
         1d56fsbqEtE2cyM9i5vEFhpr+WyTShyouPT8yqFrS+ulSarXE1XGb8RnlSIS+17Nk44P
         lDgvkqt2uDGsTWp5HyRcDzRzU8VPvXhFx98xgedrPZ9z3I9NKOlkBBd63TmBQojvA9oX
         Nenw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NoQCPKjCKaYiWK4Jt8vt9JhpUWnrFqxQ/qpGkToWtrw=;
        b=nGJnAodH9LXIuyDXg3+QLOliT9c08MV4Blzl1/x6UU/k1My6gjGq4YHzYs35XBScnO
         nAa78QkSY8ul0I5Jve7Q9Pg7zDYZbp+AuJ2uUG4swDLVH/ajTxr/j4aZEb+fBkx5/Vv8
         eIHOc3DPjdFkn7Vikhpz0JoG5EnRIoj1pPgZrp3Gtnnr0sDI0wk1jgY3TbxoKAiVN1/4
         PyX+HXH/MbayXloYu/4HTvpEZirVTSob2AWvpdGrEa5s60sV2Em5ipHqJjB9/q2U8yYy
         pHwyYRIcAxd9JQ4id22JMbrnfXShKoY4Q47Xpvkp14Clg/28qyiRnfZCULmR2+pKDYwV
         e8jA==
X-Gm-Message-State: AFqh2kpLxxfooFtdBD0pnWPQ0rcTwAC5FEIkdS5C/PpdYr9kbATEShgs
	HOa2849oNe60hacVvbh7xOM=
X-Google-Smtp-Source: AMrXdXvqDBKOMXE8/DAfTpUAjFkmueDMelorSGfofPewEE6WyFqzE11ahC4fAUuLC72shHtONxIFfA==
X-Received: by 2002:a05:6808:4388:b0:35e:823e:87bc with SMTP id dz8-20020a056808438800b0035e823e87bcmr710412oib.228.1672128623638;
        Tue, 27 Dec 2022 00:10:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6871:6a99:b0:143:1d71:23f2 with SMTP id
 zf25-20020a0568716a9900b001431d7123f2ls4101551oab.9.-pod-prod-gmail; Tue, 27
 Dec 2022 00:10:23 -0800 (PST)
X-Received: by 2002:a05:6870:c98c:b0:13b:d896:5b01 with SMTP id hi12-20020a056870c98c00b0013bd8965b01mr10300833oab.47.1672128623158;
        Tue, 27 Dec 2022 00:10:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128623; cv=none;
        d=google.com; s=arc-20160816;
        b=UOqJtl6ScEUaVWX8EUgRH4ZvEcJdqTlcE9SKHI9rgPW2IEE28SOLAxC/5q6FnvZi7t
         v+TsxIjSNGNMXwU5pwiUY0bXOLFbMxUKOAPHxEHYg/0ePq3g2pghod5ae/9ipBrPaVbb
         B1wG073tA5UZMLF/lyBhvqF4C0ZJ+pt4a9R3FXLkhssO8Qo7gwC6w+euurS7XCXSYkOs
         CGQCrtmAUo/8lrAHJd8fne+432X11U/9kTRYo2dXcgYhV+9J00JW4ImNbBgTdR3I4cUj
         D1AoneTbFxFzA5xB8OoxMsOg4hhCEOceoPUMQpOLPLA0VlxwHJvOmu6DFHwyslLAerga
         Rn9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wt4K2iY8n7/9K7sSpHib5XwkLENUUNJMQYxSXVYnGAI=;
        b=AE9GuAH47SobIA7Iedg+XNxDop2HcNbY22dLGkMyEQf4I2mZLQk4HsJsk/5frO3tyu
         VaGJJgOt2phf3NlWsF8/OFpzmqEr4g7rCgI/eEHES7Aulfr18//HB0xkrgNiEWVFZVmA
         gFtbsxrM0CNoj3NBSnJMNo6B4sGBgH8+Bpc8aXochsXsYWDE0hl1eSuGT/xQ3gME38JH
         I4WH8S0WonG7OgbbgPIcSjVitBISROBknp3smqKYt4kZuWZxMgZs+pEet8ODfNSL7L4H
         MQV6WKnAC6Kg6uGOVBMP+NQW7eAoGJL+cojeqYRO58ERpT3NYYN/bqna5RCRcNV9qbto
         9v9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=D5ImPCcb;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id q13-20020a056870808d00b001438dde860esi1254186oab.1.2022.12.27.00.10.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: a628e4d601294850ba2f5ec9d73fa4a7-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:a493712c-b767-4452-a1ba-f62f00619fb8,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:dcaaed0,CLOUDID:e8db838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: a628e4d601294850ba2f5ec9d73fa4a7-20221227
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 495276351; Tue, 27 Dec 2022 16:10:14 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:13 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, "Rob
 Herring" <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 5/7] drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
Date: Tue, 27 Dec 2022 16:10:09 +0800
Message-ID: <20221227081011.6426-6-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=D5ImPCcb;       spf=pass
 (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as
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

MT8195 have two mmsys. Modify drm for MT8195 multi-mmsys support.
The two mmsys (vdosys0 and vdosys1) will bring up two drm drivers,
only one drm driver register as the drm device.
Each drm driver binds its own component. The last bind drm driver
allocates and registers the drm device to drm core.
Each crtc path is created with the corresponding drm driver data.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabor=
a.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.=
com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
Tested-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  24 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h |   3 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 296 ++++++++++++++++++------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  10 +-
 4 files changed, 245 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/medi=
atek/mtk_drm_crtc.c
index 78e20f604158..30dcb65d8a5a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -874,21 +874,28 @@ struct device *mtk_drm_crtc_dma_dev_get(struct drm_cr=
tc *crtc)
 }
=20
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
-			const enum mtk_ddp_comp_id *path, unsigned int path_len)
+			const enum mtk_ddp_comp_id *path, unsigned int path_len,
+			int priv_data_index)
 {
 	struct mtk_drm_private *priv =3D drm_dev->dev_private;
 	struct device *dev =3D drm_dev->dev;
 	struct mtk_drm_crtc *mtk_crtc;
 	unsigned int num_comp_planes =3D 0;
-	int pipe =3D priv->num_pipes;
 	int ret;
 	int i;
 	bool has_ctm =3D false;
 	uint gamma_lut_size =3D 0;
+	struct drm_crtc *tmp;
+	int crtc_i =3D 0;
=20
 	if (!path)
 		return 0;
=20
+	priv =3D priv->all_drm_private[priv_data_index];
+
+	drm_for_each_crtc(tmp, drm_dev)
+		crtc_i++;
+
 	for (i =3D 0; i < path_len; i++) {
 		enum mtk_ddp_comp_id comp_id =3D path[i];
 		struct device_node *node;
@@ -900,7 +907,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		if (!node) {
 			dev_info(dev,
 				 "Not creating crtc %d because component %d is disabled or missing\n",
-				 pipe, comp_id);
+				 crtc_i, comp_id);
 			return 0;
 		}
=20
@@ -956,7 +963,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		ret =3D mtk_drm_crtc_init_comp_planes(drm_dev, mtk_crtc, i,
-						    pipe);
+						    crtc_i);
 		if (ret)
 			return ret;
 	}
@@ -968,24 +975,23 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	 */
 	mtk_crtc->dma_dev =3D mtk_ddp_comp_dma_dev_get(&priv->ddp_comp[path[0]]);
=20
-	ret =3D mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
+	ret =3D mtk_drm_crtc_init(drm_dev, mtk_crtc, crtc_i);
 	if (ret < 0)
 		return ret;
=20
 	if (gamma_lut_size)
 		drm_mode_crtc_set_gamma_size(&mtk_crtc->base, gamma_lut_size);
 	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, has_ctm, gamma_lut_size);
-	priv->num_pipes++;
 	mutex_init(&mtk_crtc->hw_lock);
=20
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	i =3D priv->mbox_index++;
 	mtk_crtc->cmdq_client.client.dev =3D mtk_crtc->mmsys_dev;
 	mtk_crtc->cmdq_client.client.tx_block =3D false;
 	mtk_crtc->cmdq_client.client.knows_txdone =3D true;
 	mtk_crtc->cmdq_client.client.rx_callback =3D ddp_cmdq_cb;
 	mtk_crtc->cmdq_client.chan =3D
-			mbox_request_channel(&mtk_crtc->cmdq_client.client,
-					     drm_crtc_index(&mtk_crtc->base));
+			mbox_request_channel(&mtk_crtc->cmdq_client.client, i);
 	if (IS_ERR(mtk_crtc->cmdq_client.chan)) {
 		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing regis=
ter by CPU now\n",
 			drm_crtc_index(&mtk_crtc->base));
@@ -995,7 +1001,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	if (mtk_crtc->cmdq_client.chan) {
 		ret =3D of_property_read_u32_index(priv->mutex_node,
 						 "mediatek,gce-events",
-						 drm_crtc_index(&mtk_crtc->base),
+						 i,
 						 &mtk_crtc->cmdq_event);
 		if (ret) {
 			dev_dbg(dev, "mtk_crtc %d failed to get mediatek,gce-events property\n"=
,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/medi=
atek/mtk_drm_crtc.h
index f5a6e80c5265..606f72f35924 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -17,7 +17,8 @@
 void mtk_drm_crtc_commit(struct drm_crtc *crtc);
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path,
-			unsigned int path_len);
+			unsigned int path_len,
+			int priv_data_index);
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plan=
e,
 			     struct mtk_plane_state *state);
 void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *pl=
ane,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/media=
tek/mtk_drm_drv.c
index 83fd4f38d07b..4de5d0009a06 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -214,6 +214,7 @@ static const struct mtk_mmsys_driver_data mt2701_mmsys_=
driver_data =3D {
 	.ext_path =3D mt2701_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt2701_mtk_ddp_ext),
 	.shadow_register =3D true,
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt7623_mmsys_driver_data =3D {
@@ -222,6 +223,7 @@ static const struct mtk_mmsys_driver_data mt7623_mmsys_=
driver_data =3D {
 	.ext_path =3D mt7623_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt7623_mtk_ddp_ext),
 	.shadow_register =3D true,
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data =3D {
@@ -231,11 +233,13 @@ static const struct mtk_mmsys_driver_data mt2712_mmsy=
s_driver_data =3D {
 	.ext_len =3D ARRAY_SIZE(mt2712_mtk_ddp_ext),
 	.third_path =3D mt2712_mtk_ddp_third,
 	.third_len =3D ARRAY_SIZE(mt2712_mtk_ddp_third),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8167_mmsys_driver_data =3D {
 	.main_path =3D mt8167_mtk_ddp_main,
 	.main_len =3D ARRAY_SIZE(mt8167_mtk_ddp_main),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data =3D {
@@ -243,6 +247,7 @@ static const struct mtk_mmsys_driver_data mt8173_mmsys_=
driver_data =3D {
 	.main_len =3D ARRAY_SIZE(mt8173_mtk_ddp_main),
 	.ext_path =3D mt8173_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt8173_mtk_ddp_ext),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8183_mmsys_driver_data =3D {
@@ -250,6 +255,7 @@ static const struct mtk_mmsys_driver_data mt8183_mmsys_=
driver_data =3D {
 	.main_len =3D ARRAY_SIZE(mt8183_mtk_ddp_main),
 	.ext_path =3D mt8183_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt8183_mtk_ddp_ext),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8186_mmsys_driver_data =3D {
@@ -257,6 +263,7 @@ static const struct mtk_mmsys_driver_data mt8186_mmsys_=
driver_data =3D {
 	.main_len =3D ARRAY_SIZE(mt8186_mtk_ddp_main),
 	.ext_path =3D mt8186_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt8186_mtk_ddp_ext),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data =3D {
@@ -264,36 +271,124 @@ static const struct mtk_mmsys_driver_data mt8192_mms=
ys_driver_data =3D {
 	.main_len =3D ARRAY_SIZE(mt8192_mtk_ddp_main),
 	.ext_path =3D mt8192_mtk_ddp_ext,
 	.ext_len =3D ARRAY_SIZE(mt8192_mtk_ddp_ext),
+	.mmsys_dev_num =3D 1,
 };
=20
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data =3D {
 	.main_path =3D mt8195_mtk_ddp_main,
 	.main_len =3D ARRAY_SIZE(mt8195_mtk_ddp_main),
+	.mmsys_dev_num =3D 1,
 };
=20
+static const struct of_device_id mtk_drm_of_ids[] =3D {
+	{ .compatible =3D "mediatek,mt2701-mmsys",
+	  .data =3D &mt2701_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt7623-mmsys",
+	  .data =3D &mt7623_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt2712-mmsys",
+	  .data =3D &mt2712_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8167-mmsys",
+	  .data =3D &mt8167_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8173-mmsys",
+	  .data =3D &mt8173_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8183-mmsys",
+	  .data =3D &mt8183_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8186-mmsys",
+	  .data =3D &mt8186_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8192-mmsys",
+	  .data =3D &mt8192_mmsys_driver_data},
+	{ .compatible =3D "mediatek,mt8195-mmsys",
+	  .data =3D &mt8195_vdosys0_driver_data},
+	{ .compatible =3D "mediatek,mt8195-vdosys0",
+	  .data =3D &mt8195_vdosys0_driver_data},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
+
+static int mtk_drm_match(struct device *dev, void *data)
+{
+	if (!strncmp(dev_name(dev), "mediatek-drm", sizeof("mediatek-drm") - 1))
+		return true;
+	return false;
+}
+
+static bool mtk_drm_get_all_drm_priv(struct device *dev)
+{
+	struct mtk_drm_private *drm_priv =3D dev_get_drvdata(dev);
+	struct mtk_drm_private *all_drm_priv[MAX_CRTC];
+	struct device_node *phandle =3D dev->parent->of_node;
+	const struct of_device_id *of_id;
+	struct device_node *node;
+	struct device *drm_dev;
+	int cnt =3D 0;
+	int i, j;
+
+	for_each_child_of_node(phandle->parent, node) {
+		struct platform_device *pdev;
+
+		of_id =3D of_match_node(mtk_drm_of_ids, node);
+		if (!of_id)
+			continue;
+
+		pdev =3D of_find_device_by_node(node);
+		if (!pdev)
+			continue;
+
+		drm_dev =3D device_find_child(&pdev->dev, NULL, mtk_drm_match);
+		if (!drm_dev || !dev_get_drvdata(drm_dev))
+			continue;
+
+		all_drm_priv[cnt] =3D dev_get_drvdata(drm_dev);
+		if (all_drm_priv[cnt] && all_drm_priv[cnt]->mtk_drm_bound)
+			cnt++;
+	}
+
+	if (drm_priv->data->mmsys_dev_num =3D=3D cnt) {
+		for (i =3D 0; i < cnt; i++)
+			for (j =3D 0; j < cnt; j++)
+				all_drm_priv[j]->all_drm_private[i] =3D all_drm_priv[i];
+
+		return true;
+	}
+
+	return false;
+}
+
+static bool mtk_drm_find_mmsys_comp(struct mtk_drm_private *private, int c=
omp_id)
+{
+	const struct mtk_mmsys_driver_data *drv_data =3D private->data;
+	int i;
+
+	if (drv_data->main_path)
+		for (i =3D 0; i < drv_data->main_len; i++)
+			if (drv_data->main_path[i] =3D=3D comp_id)
+				return true;
+
+	if (drv_data->ext_path)
+		for (i =3D 0; i < drv_data->ext_len; i++)
+			if (drv_data->ext_path[i] =3D=3D comp_id)
+				return true;
+
+	if (drv_data->third_path)
+		for (i =3D 0; i < drv_data->third_len; i++)
+			if (drv_data->third_path[i] =3D=3D comp_id)
+				return true;
+
+	return false;
+}
+
 static int mtk_drm_kms_init(struct drm_device *drm)
 {
 	struct mtk_drm_private *private =3D drm->dev_private;
+	struct mtk_drm_private *priv_n;
 	struct platform_device *pdev;
-	struct device_node *np;
+	struct device_node *np =3D NULL;
 	struct device *dma_dev;
-	int ret;
+	int ret, i, j;
=20
 	if (drm_firmware_drivers_only())
 		return -ENODEV;
=20
-	if (!iommu_present(&platform_bus_type))
-		return -EPROBE_DEFER;
-
-	pdev =3D of_find_device_by_node(private->mutex_node);
-	if (!pdev) {
-		dev_err(drm->dev, "Waiting for disp-mutex device %pOF\n",
-			private->mutex_node);
-		of_node_put(private->mutex_node);
-		return -EPROBE_DEFER;
-	}
-	private->mutex_dev =3D &pdev->dev;
-
 	ret =3D drmm_mode_config_init(drm);
 	if (ret)
 		goto put_mutex_dev;
@@ -311,9 +406,12 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	drm->mode_config.funcs =3D &mtk_drm_mode_config_funcs;
 	drm->mode_config.helper_private =3D &mtk_drm_mode_config_helpers;
=20
-	ret =3D component_bind_all(drm->dev, drm);
-	if (ret)
-		goto put_mutex_dev;
+	for (i =3D 0; i < private->data->mmsys_dev_num; i++) {
+		drm->dev_private =3D private->all_drm_private[i];
+		ret =3D component_bind_all(private->all_drm_private[i]->dev, drm);
+		if (ret)
+			goto put_mutex_dev;
+	}
=20
 	/*
 	 * Ensure internal panels are at the top of the connector list before
@@ -322,28 +420,53 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	drm_helper_move_panel_connectors_to_head(drm);
=20
 	/*
-	 * We currently support two fixed data streams, each optional,
-	 * and each statically assigned to a crtc:
-	 * OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0 ...
+	 * 1. We currently support two fixed data streams, each optional,
+	 *    and each statically assigned to a crtc:
+	 *    OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0 ...
+	 * 2. For multi mmsys architecture, crtc path data are located in
+	 *    different drm private data structures. Loop through crtc index to
+	 *    create crtc from the main path and then ext_path and finally the
+	 *    third path.
+	 * 3. Use OVL device for all DMA memory allocations
 	 */
-	ret =3D mtk_drm_crtc_create(drm, private->data->main_path,
-				  private->data->main_len);
-	if (ret < 0)
-		goto err_component_unbind;
-	/* ... and OVL1 -> COLOR1 -> GAMMA -> RDMA1 -> DPI0. */
-	ret =3D mtk_drm_crtc_create(drm, private->data->ext_path,
-				  private->data->ext_len);
-	if (ret < 0)
-		goto err_component_unbind;
-
-	ret =3D mtk_drm_crtc_create(drm, private->data->third_path,
-				  private->data->third_len);
-	if (ret < 0)
-		goto err_component_unbind;
+	for (i =3D 0; i < MAX_CRTC; i++) {
+		for (j =3D 0; j < private->data->mmsys_dev_num; j++) {
+			priv_n =3D private->all_drm_private[j];
+
+			if (i =3D=3D 0 && priv_n->data->main_len) {
+				ret =3D mtk_drm_crtc_create(drm, priv_n->data->main_path,
+							  priv_n->data->main_len, j);
+				if (ret)
+					goto err_component_unbind;
+
+				if (!np)
+					np =3D priv_n->comp_node[priv_n->data->main_path[0]];
+
+				continue;
+			} else if (i =3D=3D 1 && priv_n->data->ext_len) {
+				ret =3D mtk_drm_crtc_create(drm, priv_n->data->ext_path,
+							  priv_n->data->ext_len, j);
+				if (ret)
+					goto err_component_unbind;
+
+				if (!np)
+					np =3D priv_n->comp_node[priv_n->data->ext_path[0]];
+
+				continue;
+			} else if (i =3D=3D 2 && priv_n->data->third_len) {
+				ret =3D mtk_drm_crtc_create(drm, priv_n->data->third_path,
+							  priv_n->data->third_len, j);
+				if (ret)
+					goto err_component_unbind;
+
+				if (!np)
+					np =3D priv_n->comp_node[priv_n->data->third_path[0]];
+
+				continue;
+			}
+		}
+	}
=20
-	/* Use OVL device for all DMA memory allocations */
-	np =3D private->comp_node[private->data->main_path[0]] ?:
-	     private->comp_node[private->data->ext_path[0]];
 	pdev =3D of_find_device_by_node(np);
 	if (!pdev) {
 		ret =3D -ENODEV;
@@ -352,7 +475,8 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	}
=20
 	dma_dev =3D &pdev->dev;
-	private->dma_dev =3D dma_dev;
+	for (i =3D 0; i < private->data->mmsys_dev_num; i++)
+		private->all_drm_private[i]->dma_dev =3D dma_dev;
=20
 	/*
 	 * Configure the DMA segment size to make sure we get contiguous IOVA
@@ -374,9 +498,12 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	return 0;
=20
 err_component_unbind:
-	component_unbind_all(drm->dev, drm);
+	for (i =3D 0; i < private->data->mmsys_dev_num; i++)
+		component_unbind_all(private->all_drm_private[i]->dev, drm);
 put_mutex_dev:
-	put_device(private->mutex_dev);
+	for (i =3D 0; i < private->data->mmsys_dev_num; i++)
+		put_device(private->all_drm_private[i]->mutex_dev);
+
 	return ret;
 }
=20
@@ -424,15 +551,36 @@ static const struct drm_driver mtk_drm_driver =3D {
 static int mtk_drm_bind(struct device *dev)
 {
 	struct mtk_drm_private *private =3D dev_get_drvdata(dev);
+	struct platform_device *pdev;
 	struct drm_device *drm;
-	int ret;
+	int ret, i;
+
+	if (!iommu_present(&platform_bus_type))
+		return -EPROBE_DEFER;
+
+	pdev =3D of_find_device_by_node(private->mutex_node);
+	if (!pdev) {
+		dev_err(dev, "Waiting for disp-mutex device %pOF\n",
+			private->mutex_node);
+		of_node_put(private->mutex_node);
+		return -EPROBE_DEFER;
+	}
+
+	private->mutex_dev =3D &pdev->dev;
+	private->mtk_drm_bound =3D true;
+	private->dev =3D dev;
+
+	if (!mtk_drm_get_all_drm_priv(dev))
+		return 0;
=20
 	drm =3D drm_dev_alloc(&mtk_drm_driver, dev);
 	if (IS_ERR(drm))
 		return PTR_ERR(drm);
=20
+	private->drm_master =3D true;
 	drm->dev_private =3D private;
-	private->drm =3D drm;
+	for (i =3D 0; i < private->data->mmsys_dev_num; i++)
+		private->all_drm_private[i]->drm =3D drm;
=20
 	ret =3D mtk_drm_kms_init(drm);
 	if (ret < 0)
@@ -457,10 +605,14 @@ static void mtk_drm_unbind(struct device *dev)
 {
 	struct mtk_drm_private *private =3D dev_get_drvdata(dev);
=20
-	drm_dev_unregister(private->drm);
-	mtk_drm_kms_deinit(private->drm);
-	drm_dev_put(private->drm);
-	private->num_pipes =3D 0;
+	/* for multi mmsys dev, unregister drm dev in mmsys master */
+	if (private->drm_master) {
+		drm_dev_unregister(private->drm);
+		mtk_drm_kms_deinit(private->drm);
+		drm_dev_put(private->drm);
+	}
+	private->mtk_drm_bound =3D false;
+	private->drm_master =3D false;
 	private->drm =3D NULL;
 }
=20
@@ -585,31 +737,6 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[]=
 =3D {
 	{ }
 };
=20
-static const struct of_device_id mtk_drm_of_ids[] =3D {
-	{ .compatible =3D "mediatek,mt2701-mmsys",
-	  .data =3D &mt2701_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt7623-mmsys",
-	  .data =3D &mt7623_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt2712-mmsys",
-	  .data =3D &mt2712_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8167-mmsys",
-	  .data =3D &mt8167_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8173-mmsys",
-	  .data =3D &mt8173_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8183-mmsys",
-	  .data =3D &mt8183_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8186-mmsys",
-	  .data =3D &mt8186_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8192-mmsys",
-	  .data =3D &mt8192_mmsys_driver_data},
-	{ .compatible =3D "mediatek,mt8195-mmsys",
-	  .data =3D &mt8195_vdosys0_driver_data},
-	{ .compatible =3D "mediatek,mt8195-vdosys0",
-	  .data =3D &mt8195_vdosys0_driver_data},
-	{ }
-};
-MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
-
 static int mtk_drm_probe(struct platform_device *pdev)
 {
 	struct device *dev =3D &pdev->dev;
@@ -637,6 +764,12 @@ static int mtk_drm_probe(struct platform_device *pdev)
=20
 	private->data =3D of_id->data;
=20
+	private->all_drm_private =3D devm_kmalloc_array(dev, private->data->mmsys=
_dev_num,
+						      sizeof(*private->all_drm_private),
+						      GFP_KERNEL);
+	if (!private->all_drm_private)
+		return -ENOMEM;
+
 	/* Iterate over sibling DISP function blocks */
 	for_each_child_of_node(phandle->parent, node) {
 		const struct of_device_id *of_id;
@@ -656,7 +789,13 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		comp_type =3D (enum mtk_ddp_comp_type)of_id->data;
=20
 		if (comp_type =3D=3D MTK_DISP_MUTEX) {
-			private->mutex_node =3D of_node_get(node);
+			int id;
+
+			id =3D of_alias_get_id(node, "mutex");
+			if (id < 0 || id =3D=3D private->data->mmsys_id) {
+				private->mutex_node =3D of_node_get(node);
+				dev_dbg(dev, "get mutex for mmsys %d", private->data->mmsys_id);
+			}
 			continue;
 		}
=20
@@ -667,6 +806,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			continue;
 		}
=20
+		if (!mtk_drm_find_mmsys_comp(private, comp_id))
+			continue;
+
 		private->comp_node[comp_id] =3D of_node_get(node);
=20
 		/*
@@ -742,16 +884,20 @@ static int mtk_drm_sys_prepare(struct device *dev)
 	struct mtk_drm_private *private =3D dev_get_drvdata(dev);
 	struct drm_device *drm =3D private->drm;
=20
-	return drm_mode_config_helper_suspend(drm);
+	if (private->drm_master)
+		return drm_mode_config_helper_suspend(drm);
+	else
+		return 0;
 }
=20
 static void mtk_drm_sys_complete(struct device *dev)
 {
 	struct mtk_drm_private *private =3D dev_get_drvdata(dev);
 	struct drm_device *drm =3D private->drm;
-	int ret;
+	int ret =3D 0;
=20
-	ret =3D drm_mode_config_helper_resume(drm);
+	if (private->drm_master)
+		ret =3D drm_mode_config_helper_resume(drm);
 	if (ret)
 		dev_err(dev, "Failed to resume\n");
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/media=
tek/mtk_drm_drv.h
index d27561e5e274..8d3ff32b5364 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -29,14 +29,16 @@ struct mtk_mmsys_driver_data {
 	unsigned int third_len;
=20
 	bool shadow_register;
+	unsigned int mmsys_id;
+	unsigned int mmsys_dev_num;
 };
=20
 struct mtk_drm_private {
 	struct drm_device *drm;
 	struct device *dma_dev;
-
-	unsigned int num_pipes;
-
+	bool mtk_drm_bound;
+	bool drm_master;
+	struct device *dev;
 	struct device_node *mutex_node;
 	struct device *mutex_dev;
 	struct device *mmsys_dev;
@@ -44,6 +46,8 @@ struct mtk_drm_private {
 	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_ID_MAX];
 	const struct mtk_mmsys_driver_data *data;
 	struct drm_atomic_state *suspend_state;
+	unsigned int mbox_index;
+	struct mtk_drm_private **all_drm_private;
 };
=20
 extern struct platform_driver mtk_disp_aal_driver;
--=20
2.18.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20221227081011.6426-6-nancy.lin%40mediatek.com.
