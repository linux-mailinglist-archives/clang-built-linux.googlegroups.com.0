Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3WQVKOQMGQEYOLSKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x113c.google.com (mail-yw1-x113c.google.com [IPv6:2607:f8b0:4864:20::113c])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A60656831
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:23 +0100 (CET)
Received: by mail-yw1-x113c.google.com with SMTP id 00721157ae682-460ab8a327esf143688447b3.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128622; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zoy5JvlWlbi+e9pgoH5Tou6+Od11OldlunS0N+duKxdR4rLaBBIN+pycWeQJWmohis
         deN0TFOMWaOIj4fItyJWpe05HpvdeAaS6GTvCtK+VJ8xJ8vdU90YhclTVvd6aIrw8KPC
         2ibRAWVMMQcWj/qXdrJS2lH5Pou7kDArjQ2J8R5vGpzwuDS/9+47TwSuk0lXPp63yWjB
         UkF78QyU0Hdg19Dxcc3cOUJBKcqkdRBhzlR5/V7AAEmIxHt7jXrLXGXEQr4RZhE/X+YJ
         XUpOcVEreN2SscAak7jVEK2TlwQJ8XAR0F5vC3gfNXAaE4MM9vJUpcc9U0iF+s0cySIp
         WSBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=KGST5JZzQyzffmKkfd0en5ywzJlgu4kT12FjMDQNAlg=;
        b=rL2qa/7bI6gIfniucJLkcSYb/+RuQcqwder5SBNOzMDGhN/vG4fvZwEWjz1EUyjrC4
         ptYz6wFjgu+xcOVEhXUA05HG9omaDrElmQCwo9wEYDjMczV37DdjB6ZUN6BcrTYiR0na
         6zCQu6dLHEMaD/dBByq1Tzl4PGngH2hr0sL5PX2busgc5NOF8jX1643Cq6bZSO+Sv7FA
         NrVxS0MW0atJk6LZUmFXXN8PxRTpjVEeV7YylKjzQ83w+NBFuM5jV/5GUgFbRdtHSUvY
         ZNYUPIPByUZIfaQbyLVwtOqkrGbmX+xtrTc1iycMclrNCr+mIOFmBmKW9PYnLswuBerh
         Hfjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=WuBotVO+;
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
        bh=KGST5JZzQyzffmKkfd0en5ywzJlgu4kT12FjMDQNAlg=;
        b=NkuYjdw9x+m/p5CniqZLCmW7wyAFogi54Lm//M3p8T8QXPteVxHU2O22L1MtMajUpx
         2NI6Xx/rAZpa9eozmEjUiOY8BZ2QRyPGpwRqojEJFDZCkC/FdIP3I4ga19ExleCLc5Un
         5rGH21/kDdn+oqmvCjuhII+j1IdkWX5ZvM1TK4VlLRyNtYC19/zfcGcBUnogYHdPX/v3
         hIdjDyeucO8yMZkieJy139BnFoZkds7KM1ON3g+3qlGp5XqPNGdakkR4JCI42jpEAlYw
         0F6Ah0VfqkOILmzQqEv6+TLnUlFL1oMW7bCierIlnOLwMjT+/xYEXveUEJG24Wpp/mBr
         +ZSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KGST5JZzQyzffmKkfd0en5ywzJlgu4kT12FjMDQNAlg=;
        b=aBx7QJWFPo+7bG/mKDNyMrf+DdcSYzRH1Yct6qfCKKIPN02blPTZCxCBoFXF3TT/2A
         LtyKSCkD/AbxfqVV5t08e2qaVpBvY16oOoGM+H+9Qq3famAvI3syzZk53/KYO7Ah82SO
         tzTEKoOk8n8HaXbN3WC8JtKn//NQvUIvPLR864AmIPLudwMdhLpLAa941y0KNs6Y0V+i
         L5byEnGFz4Y0IqXAByRwWOS3BhYyto4m2XWRw5ZyozwE/8NlKrkjc3QKzMk2FGVSuFkw
         7X6+4HMPVbRM/2HWoB+cuPFoi6KjxHGcGQC+ApNc1mHm19rzxNKnPyBQT+o4zloAhFwm
         cKjw==
X-Gm-Message-State: AFqh2kqWro5IdPejKUaib0RgInlYhihp3fk1iWgHk5HFVEFfQAKfcFK9
	Fei1b1j7Dn8tFS5+MBFRwrM=
X-Google-Smtp-Source: AMrXdXsCSSE20kmVT3nf59yA8N//Em9tcEj0qmvuIsXgGwD3W+KaNWmdeaKl6FbBYqAVvrVEWkvB1g==
X-Received: by 2002:a25:4907:0:b0:77c:868c:f291 with SMTP id w7-20020a254907000000b0077c868cf291mr764545yba.298.1672128622559;
        Tue, 27 Dec 2022 00:10:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac43:0:b0:75a:bade:4f9f with SMTP id r3-20020a25ac43000000b0075abade4f9fls7381202ybd.0.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:10:22 -0800 (PST)
X-Received: by 2002:a25:c306:0:b0:726:ff4d:11d1 with SMTP id t6-20020a25c306000000b00726ff4d11d1mr19794844ybf.9.1672128622001;
        Tue, 27 Dec 2022 00:10:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128621; cv=none;
        d=google.com; s=arc-20160816;
        b=Ls1ZZBPjnYYEiDA7LcfVMmnij6bD/S4//tiPCbt5v/Zi+nevyuAn0t4jYEg7Zw+SEV
         gzPA0FIxQ8FAAZ4PCHvjWO4PBeTR7Y/A7E0mgccXFlmrXW+EggLtquThCVQA9dNlMCuB
         oJobsiNn4Eoef2hS0ve/Qdw/Mb4mf9R4G06LW8w5tpPIr52AzZykkct4Pb6AJIFDCEyP
         aPc1BGcxEkEUrstxAgOq0PE3zUoEPZEqqt5Fj3fXpBfm0fR5qdInfOeBqbmrlkRRFTDn
         nZxELTnMkmTyohatnGf1N1Bmh/uByIs0w1HokA66agKUrVQC8CKFWXGWlQDHTQVyveX6
         /G0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v6uIW+cmHlZf8nm39BrUMdbE5biAXfZ9BbBQlOEzKsI=;
        b=tKeQBYEYkHLX+34Pf3444MbRN9RQiGAMvJyOE6V7+A4vsKXhOG6XwALvKDBQQKmzdP
         oP/KBzg9y8yEf679Sex2yuRtsgweiRnS/jaQ0Wql6WqOj6L6YmtJW1Xnjzopvm82xkZb
         m7ZNGxdhVHcouuTvtDbEFhj+d3XNAKBRmlC77cZZ6I/TKLIqublEx+xc3+4Z3Uwk4Jj3
         fam4G8IYg3T7DZIWKmVuj5LItJX+3shZl5XnNi2QDmsb9YjRTKShq7NezjxkKfKIQ0uu
         jOSdy0Sk3pkmj6KIs9h/HYnrYMbROYpYmObyR3N8c+0K0oGM6FrUchi9wR29M5QEekO+
         7bbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=WuBotVO+;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id m65-20020a253f44000000b006ddea715dd2si958950yba.0.2022.12.27.00.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: ae5e49c0346144c8b6d2e59bcd298e85-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:f1f248eb-f91c-4e04-949a-8bdf0a4fc842,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:dcaaed0,CLOUDID:cfdce852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: ae5e49c0346144c8b6d2e59bcd298e85-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1931687435; Tue, 27 Dec 2022 16:10:14 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:13 +0800
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
Subject: [PATCH v29 6/7] drm/mediatek: add drm ovl_adaptor sub driver for MT8195
Date: Tue, 27 Dec 2022 16:10:10 +0800
Message-ID: <20221227081011.6426-7-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=WuBotVO+;       spf=pass
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

Add drm ovl_adaptor sub driver. Bring up ovl_adaptor sub driver if
the component exists in the path.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabor=
a.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.=
com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
Tested-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  50 +++++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 129 ++++++++++++--------
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  50 +++++++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  78 ++++++------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      |  12 +-
 6 files changed, 207 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/medi=
atek/mtk_drm_crtc.c
index 30dcb65d8a5a..c79a2f456482 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -379,13 +379,17 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *=
mtk_crtc)
 	}
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
-		mtk_mmsys_ddp_connect(mtk_crtc->mmsys_dev,
-				      mtk_crtc->ddp_comp[i]->id,
-				      mtk_crtc->ddp_comp[i + 1]->id);
-		mtk_mutex_add_comp(mtk_crtc->mutex,
-					mtk_crtc->ddp_comp[i]->id);
+		if (!mtk_ddp_comp_connect(mtk_crtc->ddp_comp[i], mtk_crtc->mmsys_dev,
+					  mtk_crtc->ddp_comp[i + 1]->id))
+			mtk_mmsys_ddp_connect(mtk_crtc->mmsys_dev,
+					      mtk_crtc->ddp_comp[i]->id,
+					      mtk_crtc->ddp_comp[i + 1]->id);
+		if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
+			mtk_mutex_add_comp(mtk_crtc->mutex,
+					   mtk_crtc->ddp_comp[i]->id);
 	}
-	mtk_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
+	if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
+		mtk_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
 	mtk_mutex_enable(mtk_crtc->mutex);
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr; i++) {
@@ -434,17 +438,22 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc =
*mtk_crtc)
 	}
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr; i++)
-		mtk_mutex_remove_comp(mtk_crtc->mutex,
-					   mtk_crtc->ddp_comp[i]->id);
+		if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
+			mtk_mutex_remove_comp(mtk_crtc->mutex,
+					      mtk_crtc->ddp_comp[i]->id);
 	mtk_mutex_disable(mtk_crtc->mutex);
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
-		mtk_mmsys_ddp_disconnect(mtk_crtc->mmsys_dev,
-					 mtk_crtc->ddp_comp[i]->id,
-					 mtk_crtc->ddp_comp[i + 1]->id);
-		mtk_mutex_remove_comp(mtk_crtc->mutex,
-					   mtk_crtc->ddp_comp[i]->id);
+		if (!mtk_ddp_comp_disconnect(mtk_crtc->ddp_comp[i], mtk_crtc->mmsys_dev,
+					     mtk_crtc->ddp_comp[i + 1]->id))
+			mtk_mmsys_ddp_disconnect(mtk_crtc->mmsys_dev,
+						 mtk_crtc->ddp_comp[i]->id,
+						 mtk_crtc->ddp_comp[i + 1]->id);
+		if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
+			mtk_mutex_remove_comp(mtk_crtc->mutex,
+					      mtk_crtc->ddp_comp[i]->id);
 	}
-	mtk_mutex_remove_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
+	if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
+		mtk_mutex_remove_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
 	mtk_crtc_ddp_clk_disable(mtk_crtc);
 	mtk_mutex_unprepare(mtk_crtc->mutex);
=20
@@ -874,7 +883,7 @@ struct device *mtk_drm_crtc_dma_dev_get(struct drm_crtc=
 *crtc)
 }
=20
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
-			const enum mtk_ddp_comp_id *path, unsigned int path_len,
+			const unsigned int *path, unsigned int path_len,
 			int priv_data_index)
 {
 	struct mtk_drm_private *priv =3D drm_dev->dev_private;
@@ -904,10 +913,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		node =3D priv->comp_node[comp_id];
 		comp =3D &priv->ddp_comp[comp_id];
=20
-		if (!node) {
+		/* Not all drm components have a DTS device node, such as ovl_adaptor,
+		 * which is the drm bring up sub driver
+		 */
+		if (!node && comp_id !=3D DDP_COMPONENT_DRM_OVL_ADAPTOR) {
 			dev_info(dev,
-				 "Not creating crtc %d because component %d is disabled or missing\n",
-				 crtc_i, comp_id);
+				"Not creating crtc %d because component %d is disabled or missing\n",
+				crtc_i, comp_id);
 			return 0;
 		}
=20
@@ -937,7 +949,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	}
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr; i++) {
-		enum mtk_ddp_comp_id comp_id =3D path[i];
+		unsigned int comp_id =3D path[i];
 		struct mtk_ddp_comp *comp;
=20
 		comp =3D &priv->ddp_comp[comp_id];
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/medi=
atek/mtk_drm_crtc.h
index 606f72f35924..3e9046993d09 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -16,7 +16,7 @@
=20
 void mtk_drm_crtc_commit(struct drm_crtc *crtc);
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
-			const enum mtk_ddp_comp_id *path,
+			const unsigned int *path,
 			unsigned int path_len,
 			int priv_data_index);
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plan=
e,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/=
mediatek/mtk_drm_ddp_comp.c
index 6b6d5335c834..8cb76f2a40e7 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -389,6 +389,25 @@ static const struct mtk_ddp_comp_funcs ddp_ufoe =3D {
 	.start =3D mtk_ufoe_start,
 };
=20
+static const struct mtk_ddp_comp_funcs ddp_ovl_adaptor =3D {
+	.clk_enable =3D mtk_ovl_adaptor_clk_enable,
+	.clk_disable =3D mtk_ovl_adaptor_clk_disable,
+	.config =3D mtk_ovl_adaptor_config,
+	.start =3D mtk_ovl_adaptor_start,
+	.stop =3D mtk_ovl_adaptor_stop,
+	.layer_nr =3D mtk_ovl_adaptor_layer_nr,
+	.layer_config =3D mtk_ovl_adaptor_layer_config,
+	.register_vblank_cb =3D mtk_ovl_adaptor_register_vblank_cb,
+	.unregister_vblank_cb =3D mtk_ovl_adaptor_unregister_vblank_cb,
+	.enable_vblank =3D mtk_ovl_adaptor_enable_vblank,
+	.disable_vblank =3D mtk_ovl_adaptor_disable_vblank,
+	.dma_dev_get =3D mtk_ovl_adaptor_dma_dev_get,
+	.connect =3D mtk_ovl_adaptor_connect,
+	.disconnect =3D mtk_ovl_adaptor_disconnect,
+	.add =3D mtk_ovl_adaptor_add_comp,
+	.remove =3D mtk_ovl_adaptor_remove_comp,
+};
+
 static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] =3D {
 	[MTK_DISP_AAL] =3D "aal",
 	[MTK_DISP_BLS] =3D "bls",
@@ -402,6 +421,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COM=
P_TYPE_MAX] =3D {
 	[MTK_DISP_OD] =3D "od",
 	[MTK_DISP_OVL] =3D "ovl",
 	[MTK_DISP_OVL_2L] =3D "ovl-2l",
+	[MTK_DISP_OVL_ADAPTOR] =3D "ovl_adaptor",
 	[MTK_DISP_POSTMASK] =3D "postmask",
 	[MTK_DISP_PWM] =3D "pwm",
 	[MTK_DISP_RDMA] =3D "rdma",
@@ -418,53 +438,54 @@ struct mtk_ddp_comp_match {
 	const struct mtk_ddp_comp_funcs *funcs;
 };
=20
-static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_ID_MA=
X] =3D {
-	[DDP_COMPONENT_AAL0]		=3D { MTK_DISP_AAL,	0, &ddp_aal },
-	[DDP_COMPONENT_AAL1]		=3D { MTK_DISP_AAL,	1, &ddp_aal },
-	[DDP_COMPONENT_BLS]		=3D { MTK_DISP_BLS,	0, NULL },
-	[DDP_COMPONENT_CCORR]		=3D { MTK_DISP_CCORR,	0, &ddp_ccorr },
-	[DDP_COMPONENT_COLOR0]		=3D { MTK_DISP_COLOR,	0, &ddp_color },
-	[DDP_COMPONENT_COLOR1]		=3D { MTK_DISP_COLOR,	1, &ddp_color },
-	[DDP_COMPONENT_DITHER0]		=3D { MTK_DISP_DITHER,	0, &ddp_dither },
-	[DDP_COMPONENT_DP_INTF0]	=3D { MTK_DP_INTF,	0, &ddp_dpi },
-	[DDP_COMPONENT_DP_INTF1]	=3D { MTK_DP_INTF,	1, &ddp_dpi },
-	[DDP_COMPONENT_DPI0]		=3D { MTK_DPI,		0, &ddp_dpi },
-	[DDP_COMPONENT_DPI1]		=3D { MTK_DPI,		1, &ddp_dpi },
-	[DDP_COMPONENT_DSC0]		=3D { MTK_DISP_DSC,	0, &ddp_dsc },
-	[DDP_COMPONENT_DSC1]		=3D { MTK_DISP_DSC,	1, &ddp_dsc },
-	[DDP_COMPONENT_DSI0]		=3D { MTK_DSI,		0, &ddp_dsi },
-	[DDP_COMPONENT_DSI1]		=3D { MTK_DSI,		1, &ddp_dsi },
-	[DDP_COMPONENT_DSI2]		=3D { MTK_DSI,		2, &ddp_dsi },
-	[DDP_COMPONENT_DSI3]		=3D { MTK_DSI,		3, &ddp_dsi },
-	[DDP_COMPONENT_GAMMA]		=3D { MTK_DISP_GAMMA,	0, &ddp_gamma },
-	[DDP_COMPONENT_MERGE0]		=3D { MTK_DISP_MERGE,	0, &ddp_merge },
-	[DDP_COMPONENT_MERGE1]		=3D { MTK_DISP_MERGE,	1, &ddp_merge },
-	[DDP_COMPONENT_MERGE2]		=3D { MTK_DISP_MERGE,	2, &ddp_merge },
-	[DDP_COMPONENT_MERGE3]		=3D { MTK_DISP_MERGE,	3, &ddp_merge },
-	[DDP_COMPONENT_MERGE4]		=3D { MTK_DISP_MERGE,	4, &ddp_merge },
-	[DDP_COMPONENT_MERGE5]		=3D { MTK_DISP_MERGE,	5, &ddp_merge },
-	[DDP_COMPONENT_OD0]		=3D { MTK_DISP_OD,	0, &ddp_od },
-	[DDP_COMPONENT_OD1]		=3D { MTK_DISP_OD,	1, &ddp_od },
-	[DDP_COMPONENT_OVL0]		=3D { MTK_DISP_OVL,	0, &ddp_ovl },
-	[DDP_COMPONENT_OVL1]		=3D { MTK_DISP_OVL,	1, &ddp_ovl },
-	[DDP_COMPONENT_OVL_2L0]		=3D { MTK_DISP_OVL_2L,	0, &ddp_ovl },
-	[DDP_COMPONENT_OVL_2L1]		=3D { MTK_DISP_OVL_2L,	1, &ddp_ovl },
-	[DDP_COMPONENT_OVL_2L2]		=3D { MTK_DISP_OVL_2L,    2, &ddp_ovl },
-	[DDP_COMPONENT_POSTMASK0]	=3D { MTK_DISP_POSTMASK,	0, &ddp_postmask },
-	[DDP_COMPONENT_PWM0]		=3D { MTK_DISP_PWM,	0, NULL },
-	[DDP_COMPONENT_PWM1]		=3D { MTK_DISP_PWM,	1, NULL },
-	[DDP_COMPONENT_PWM2]		=3D { MTK_DISP_PWM,	2, NULL },
-	[DDP_COMPONENT_RDMA0]		=3D { MTK_DISP_RDMA,	0, &ddp_rdma },
-	[DDP_COMPONENT_RDMA1]		=3D { MTK_DISP_RDMA,	1, &ddp_rdma },
-	[DDP_COMPONENT_RDMA2]		=3D { MTK_DISP_RDMA,	2, &ddp_rdma },
-	[DDP_COMPONENT_RDMA4]		=3D { MTK_DISP_RDMA,      4, &ddp_rdma },
-	[DDP_COMPONENT_UFOE]		=3D { MTK_DISP_UFOE,	0, &ddp_ufoe },
-	[DDP_COMPONENT_WDMA0]		=3D { MTK_DISP_WDMA,	0, NULL },
-	[DDP_COMPONENT_WDMA1]		=3D { MTK_DISP_WDMA,	1, NULL },
+static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_I=
D_MAX] =3D {
+	[DDP_COMPONENT_AAL0]		=3D { MTK_DISP_AAL,		0, &ddp_aal },
+	[DDP_COMPONENT_AAL1]		=3D { MTK_DISP_AAL,		1, &ddp_aal },
+	[DDP_COMPONENT_BLS]		=3D { MTK_DISP_BLS,		0, NULL },
+	[DDP_COMPONENT_CCORR]		=3D { MTK_DISP_CCORR,		0, &ddp_ccorr },
+	[DDP_COMPONENT_COLOR0]		=3D { MTK_DISP_COLOR,		0, &ddp_color },
+	[DDP_COMPONENT_COLOR1]		=3D { MTK_DISP_COLOR,		1, &ddp_color },
+	[DDP_COMPONENT_DITHER0]		=3D { MTK_DISP_DITHER,		0, &ddp_dither },
+	[DDP_COMPONENT_DP_INTF0]	=3D { MTK_DP_INTF,		0, &ddp_dpi },
+	[DDP_COMPONENT_DP_INTF1]	=3D { MTK_DP_INTF,		1, &ddp_dpi },
+	[DDP_COMPONENT_DPI0]		=3D { MTK_DPI,			0, &ddp_dpi },
+	[DDP_COMPONENT_DPI1]		=3D { MTK_DPI,			1, &ddp_dpi },
+	[DDP_COMPONENT_DRM_OVL_ADAPTOR]	=3D { MTK_DISP_OVL_ADAPTOR,	0, &ddp_ovl_a=
daptor },
+	[DDP_COMPONENT_DSC0]		=3D { MTK_DISP_DSC,		0, &ddp_dsc },
+	[DDP_COMPONENT_DSC1]		=3D { MTK_DISP_DSC,		1, &ddp_dsc },
+	[DDP_COMPONENT_DSI0]		=3D { MTK_DSI,			0, &ddp_dsi },
+	[DDP_COMPONENT_DSI1]		=3D { MTK_DSI,			1, &ddp_dsi },
+	[DDP_COMPONENT_DSI2]		=3D { MTK_DSI,			2, &ddp_dsi },
+	[DDP_COMPONENT_DSI3]		=3D { MTK_DSI,			3, &ddp_dsi },
+	[DDP_COMPONENT_GAMMA]		=3D { MTK_DISP_GAMMA,		0, &ddp_gamma },
+	[DDP_COMPONENT_MERGE0]		=3D { MTK_DISP_MERGE,		0, &ddp_merge },
+	[DDP_COMPONENT_MERGE1]		=3D { MTK_DISP_MERGE,		1, &ddp_merge },
+	[DDP_COMPONENT_MERGE2]		=3D { MTK_DISP_MERGE,		2, &ddp_merge },
+	[DDP_COMPONENT_MERGE3]		=3D { MTK_DISP_MERGE,		3, &ddp_merge },
+	[DDP_COMPONENT_MERGE4]		=3D { MTK_DISP_MERGE,		4, &ddp_merge },
+	[DDP_COMPONENT_MERGE5]		=3D { MTK_DISP_MERGE,		5, &ddp_merge },
+	[DDP_COMPONENT_OD0]		=3D { MTK_DISP_OD,		0, &ddp_od },
+	[DDP_COMPONENT_OD1]		=3D { MTK_DISP_OD,		1, &ddp_od },
+	[DDP_COMPONENT_OVL0]		=3D { MTK_DISP_OVL,		0, &ddp_ovl },
+	[DDP_COMPONENT_OVL1]		=3D { MTK_DISP_OVL,		1, &ddp_ovl },
+	[DDP_COMPONENT_OVL_2L0]		=3D { MTK_DISP_OVL_2L,		0, &ddp_ovl },
+	[DDP_COMPONENT_OVL_2L1]		=3D { MTK_DISP_OVL_2L,		1, &ddp_ovl },
+	[DDP_COMPONENT_OVL_2L2]		=3D { MTK_DISP_OVL_2L,		2, &ddp_ovl },
+	[DDP_COMPONENT_POSTMASK0]	=3D { MTK_DISP_POSTMASK,		0, &ddp_postmask },
+	[DDP_COMPONENT_PWM0]		=3D { MTK_DISP_PWM,		0, NULL },
+	[DDP_COMPONENT_PWM1]		=3D { MTK_DISP_PWM,		1, NULL },
+	[DDP_COMPONENT_PWM2]		=3D { MTK_DISP_PWM,		2, NULL },
+	[DDP_COMPONENT_RDMA0]		=3D { MTK_DISP_RDMA,		0, &ddp_rdma },
+	[DDP_COMPONENT_RDMA1]		=3D { MTK_DISP_RDMA,		1, &ddp_rdma },
+	[DDP_COMPONENT_RDMA2]		=3D { MTK_DISP_RDMA,		2, &ddp_rdma },
+	[DDP_COMPONENT_RDMA4]		=3D { MTK_DISP_RDMA,		4, &ddp_rdma },
+	[DDP_COMPONENT_UFOE]		=3D { MTK_DISP_UFOE,		0, &ddp_ufoe },
+	[DDP_COMPONENT_WDMA0]		=3D { MTK_DISP_WDMA,		0, NULL },
+	[DDP_COMPONENT_WDMA1]		=3D { MTK_DISP_WDMA,		1, NULL },
 };
=20
 static bool mtk_drm_find_comp_in_ddp(struct device *dev,
-				     const enum mtk_ddp_comp_id *path,
+				     const unsigned int *path,
 				     unsigned int path_len,
 				     struct mtk_ddp_comp *ddp_comp)
 {
@@ -517,7 +538,7 @@ unsigned int mtk_drm_find_possible_crtc_by_comp(struct =
drm_device *drm,
 }
=20
 int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp *comp,
-		      enum mtk_ddp_comp_id comp_id)
+		      unsigned int comp_id)
 {
 	struct platform_device *comp_pdev;
 	enum mtk_ddp_comp_type type;
@@ -526,19 +547,24 @@ int mtk_ddp_comp_init(struct device_node *node, struc=
t mtk_ddp_comp *comp,
 	int ret;
 #endif
=20
-	if (comp_id < 0 || comp_id >=3D DDP_COMPONENT_ID_MAX)
+	if (comp_id < 0 || comp_id >=3D DDP_COMPONENT_DRM_ID_MAX)
 		return -EINVAL;
=20
 	type =3D mtk_ddp_matches[comp_id].type;
=20
 	comp->id =3D comp_id;
 	comp->funcs =3D mtk_ddp_matches[comp_id].funcs;
-	comp_pdev =3D of_find_device_by_node(node);
-	if (!comp_pdev) {
-		DRM_INFO("Waiting for device %s\n", node->full_name);
-		return -EPROBE_DEFER;
+	/* Not all drm components have a DTS device node, such as ovl_adaptor,
+	 * which is the drm bring up sub driver
+	 */
+	if (node) {
+		comp_pdev =3D of_find_device_by_node(node);
+		if (!comp_pdev) {
+			DRM_INFO("Waiting for device %s\n", node->full_name);
+			return -EPROBE_DEFER;
+		}
+		comp->dev =3D &comp_pdev->dev;
 	}
-	comp->dev =3D &comp_pdev->dev;
=20
 	if (type =3D=3D MTK_DISP_AAL ||
 	    type =3D=3D MTK_DISP_BLS ||
@@ -548,6 +574,7 @@ int mtk_ddp_comp_init(struct device_node *node, struct =
mtk_ddp_comp *comp,
 	    type =3D=3D MTK_DISP_MERGE ||
 	    type =3D=3D MTK_DISP_OVL ||
 	    type =3D=3D MTK_DISP_OVL_2L ||
+	    type =3D=3D MTK_DISP_OVL_ADAPTOR ||
 	    type =3D=3D MTK_DISP_PWM ||
 	    type =3D=3D MTK_DISP_RDMA ||
 	    type =3D=3D MTK_DPI ||
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/=
mediatek/mtk_drm_ddp_comp.h
index 364f3f7f59fa..3084cc4e2830 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -9,6 +9,7 @@
 #include <linux/io.h>
 #include <linux/soc/mediatek/mtk-cmdq.h>
 #include <linux/soc/mediatek/mtk-mmsys.h>
+#include <linux/soc/mediatek/mtk-mutex.h>
=20
 struct device;
 struct device_node;
@@ -30,6 +31,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_OD,
 	MTK_DISP_OVL,
 	MTK_DISP_OVL_2L,
+	MTK_DISP_OVL_ADAPTOR,
 	MTK_DISP_POSTMASK,
 	MTK_DISP_PWM,
 	MTK_DISP_RDMA,
@@ -72,12 +74,16 @@ struct mtk_ddp_comp_funcs {
 	void (*ctm_set)(struct device *dev,
 			struct drm_crtc_state *state);
 	struct device * (*dma_dev_get)(struct device *dev);
+	void (*connect)(struct device *dev, struct device *mmsys_dev, unsigned in=
t next);
+	void (*disconnect)(struct device *dev, struct device *mmsys_dev, unsigned=
 int next);
+	void (*add)(struct device *dev, struct mtk_mutex *mutex);
+	void (*remove)(struct device *dev, struct mtk_mutex *mutex);
 };
=20
 struct mtk_ddp_comp {
 	struct device *dev;
 	int irq;
-	enum mtk_ddp_comp_id id;
+	unsigned int id;
 	const struct mtk_ddp_comp_funcs *funcs;
 };
=20
@@ -211,13 +217,51 @@ static inline struct device *mtk_ddp_comp_dma_dev_get=
(struct mtk_ddp_comp *comp)
 	return comp->dev;
 }
=20
+static inline bool mtk_ddp_comp_add(struct mtk_ddp_comp *comp, struct mtk_=
mutex *mutex)
+{
+	if (comp->funcs && comp->funcs->add) {
+		comp->funcs->add(comp->dev, mutex);
+		return true;
+	}
+	return false;
+}
+
+static inline bool mtk_ddp_comp_remove(struct mtk_ddp_comp *comp, struct m=
tk_mutex *mutex)
+{
+	if (comp->funcs && comp->funcs->remove) {
+		comp->funcs->remove(comp->dev, mutex);
+		return true;
+	}
+	return false;
+}
+
+static inline bool mtk_ddp_comp_connect(struct mtk_ddp_comp *comp, struct =
device *mmsys_dev,
+					unsigned int next)
+{
+	if (comp->funcs && comp->funcs->connect) {
+		comp->funcs->connect(comp->dev, mmsys_dev, next);
+		return true;
+	}
+	return false;
+}
+
+static inline bool mtk_ddp_comp_disconnect(struct mtk_ddp_comp *comp, stru=
ct device *mmsys_dev,
+					   unsigned int next)
+{
+	if (comp->funcs && comp->funcs->disconnect) {
+		comp->funcs->disconnect(comp->dev, mmsys_dev, next);
+		return true;
+	}
+	return false;
+}
+
 int mtk_ddp_comp_get_id(struct device_node *node,
 			enum mtk_ddp_comp_type comp_type);
 unsigned int mtk_drm_find_possible_crtc_by_comp(struct drm_device *drm,
 						struct device *dev);
 int mtk_ddp_comp_init(struct device_node *comp_node, struct mtk_ddp_comp *=
comp,
-		      enum mtk_ddp_comp_id comp_id);
-enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id)=
;
+		      unsigned int comp_id);
+enum mtk_ddp_comp_type mtk_ddp_comp_get_type(unsigned int comp_id);
 void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
 		   struct cmdq_client_reg *cmdq_reg, void __iomem *regs,
 		   unsigned int offset);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/media=
tek/mtk_drm_drv.c
index 4de5d0009a06..442ef79d5a3f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -58,7 +58,7 @@ static const struct drm_mode_config_funcs mtk_drm_mode_co=
nfig_funcs =3D {
 	.atomic_commit =3D drm_atomic_helper_commit,
 };
=20
-static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] =3D {
+static const unsigned int mt2701_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_RDMA0,
 	DDP_COMPONENT_COLOR0,
@@ -66,12 +66,12 @@ static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[]=
 =3D {
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt2701_mtk_ddp_ext[] =3D {
+static const unsigned int mt2701_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_RDMA1,
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt7623_mtk_ddp_main[] =3D {
+static const unsigned int mt7623_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_RDMA0,
 	DDP_COMPONENT_COLOR0,
@@ -79,12 +79,12 @@ static const enum mtk_ddp_comp_id mt7623_mtk_ddp_main[]=
 =3D {
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt7623_mtk_ddp_ext[] =3D {
+static const unsigned int mt7623_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_RDMA1,
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] =3D {
+static const unsigned int mt2712_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_COLOR0,
 	DDP_COMPONENT_AAL0,
@@ -94,7 +94,7 @@ static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] =
=3D {
 	DDP_COMPONENT_PWM0,
 };
=20
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[] =3D {
+static const unsigned int mt2712_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_OVL1,
 	DDP_COMPONENT_COLOR1,
 	DDP_COMPONENT_AAL1,
@@ -104,13 +104,13 @@ static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[=
] =3D {
 	DDP_COMPONENT_PWM1,
 };
=20
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_third[] =3D {
+static const unsigned int mt2712_mtk_ddp_third[] =3D {
 	DDP_COMPONENT_RDMA2,
 	DDP_COMPONENT_DSI3,
 	DDP_COMPONENT_PWM2,
 };
=20
-static enum mtk_ddp_comp_id mt8167_mtk_ddp_main[] =3D {
+static unsigned int mt8167_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_COLOR0,
 	DDP_COMPONENT_CCORR,
@@ -121,7 +121,7 @@ static enum mtk_ddp_comp_id mt8167_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] =3D {
+static const unsigned int mt8173_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_COLOR0,
 	DDP_COMPONENT_AAL0,
@@ -132,7 +132,7 @@ static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[]=
 =3D {
 	DDP_COMPONENT_PWM0,
 };
=20
-static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] =3D {
+static const unsigned int mt8173_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_OVL1,
 	DDP_COMPONENT_COLOR1,
 	DDP_COMPONENT_GAMMA,
@@ -140,7 +140,7 @@ static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] =
=3D {
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8183_mtk_ddp_main[] =3D {
+static const unsigned int mt8183_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_OVL_2L0,
 	DDP_COMPONENT_RDMA0,
@@ -152,13 +152,13 @@ static const enum mtk_ddp_comp_id mt8183_mtk_ddp_main=
[] =3D {
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8183_mtk_ddp_ext[] =3D {
+static const unsigned int mt8183_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_OVL_2L1,
 	DDP_COMPONENT_RDMA1,
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8186_mtk_ddp_main[] =3D {
+static const unsigned int mt8186_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_RDMA0,
 	DDP_COMPONENT_COLOR0,
@@ -170,13 +170,13 @@ static const enum mtk_ddp_comp_id mt8186_mtk_ddp_main=
[] =3D {
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8186_mtk_ddp_ext[] =3D {
+static const unsigned int mt8186_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_OVL_2L0,
 	DDP_COMPONENT_RDMA1,
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8192_mtk_ddp_main[] =3D {
+static const unsigned int mt8192_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_OVL_2L0,
 	DDP_COMPONENT_RDMA0,
@@ -189,13 +189,13 @@ static const enum mtk_ddp_comp_id mt8192_mtk_ddp_main=
[] =3D {
 	DDP_COMPONENT_DSI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8192_mtk_ddp_ext[] =3D {
+static const unsigned int mt8192_mtk_ddp_ext[] =3D {
 	DDP_COMPONENT_OVL_2L2,
 	DDP_COMPONENT_RDMA4,
 	DDP_COMPONENT_DPI0,
 };
=20
-static const enum mtk_ddp_comp_id mt8195_mtk_ddp_main[] =3D {
+static const unsigned int mt8195_mtk_ddp_main[] =3D {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_RDMA0,
 	DDP_COMPONENT_COLOR0,
@@ -381,9 +381,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 {
 	struct mtk_drm_private *private =3D drm->dev_private;
 	struct mtk_drm_private *priv_n;
-	struct platform_device *pdev;
-	struct device_node *np =3D NULL;
-	struct device *dma_dev;
+	struct device *dma_dev =3D NULL;
 	int ret, i, j;
=20
 	if (drm_firmware_drivers_only())
@@ -427,7 +425,6 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	 *    different drm private data structures. Loop through crtc index to
 	 *    create crtc from the main path and then ext_path and finally the
 	 *    third path.
-	 * 3. Use OVL device for all DMA memory allocations
 	 */
 	for (i =3D 0; i < MAX_CRTC; i++) {
 		for (j =3D 0; j < private->data->mmsys_dev_num; j++) {
@@ -439,9 +436,6 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 				if (ret)
 					goto err_component_unbind;
=20
-				if (!np)
-					np =3D priv_n->comp_node[priv_n->data->main_path[0]];
-
 				continue;
 			} else if (i =3D=3D 1 && priv_n->data->ext_len) {
 				ret =3D mtk_drm_crtc_create(drm, priv_n->data->ext_path,
@@ -449,9 +443,6 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 				if (ret)
 					goto err_component_unbind;
=20
-				if (!np)
-					np =3D priv_n->comp_node[priv_n->data->ext_path[0]];
-
 				continue;
 			} else if (i =3D=3D 2 && priv_n->data->third_len) {
 				ret =3D mtk_drm_crtc_create(drm, priv_n->data->third_path,
@@ -459,22 +450,19 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 				if (ret)
 					goto err_component_unbind;
=20
-				if (!np)
-					np =3D priv_n->comp_node[priv_n->data->third_path[0]];
-
 				continue;
 			}
 		}
 	}
=20
-	pdev =3D of_find_device_by_node(np);
-	if (!pdev) {
+	/* Use OVL device for all DMA memory allocations */
+	dma_dev =3D mtk_drm_crtc_dma_dev_get(drm_crtc_from_index(drm, 0));
+	if (!dma_dev) {
 		ret =3D -ENODEV;
 		dev_err(drm->dev, "Need at least one OVL device\n");
 		goto err_component_unbind;
 	}
=20
-	dma_dev =3D &pdev->dev;
 	for (i =3D 0; i < private->data->mmsys_dev_num; i++)
 		private->all_drm_private[i]->dma_dev =3D dma_dev;
=20
@@ -548,6 +536,11 @@ static const struct drm_driver mtk_drm_driver =3D {
 	.minor =3D DRIVER_MINOR,
 };
=20
+static int compare_dev(struct device *dev, void *data)
+{
+	return dev =3D=3D (struct device *)data;
+}
+
 static int mtk_drm_bind(struct device *dev)
 {
 	struct mtk_drm_private *private =3D dev_get_drvdata(dev);
@@ -745,6 +738,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	struct mtk_drm_private *private;
 	struct device_node *node;
 	struct component_match *match =3D NULL;
+	struct platform_device *ovl_adaptor;
 	int ret;
 	int i;
=20
@@ -770,6 +764,18 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!private->all_drm_private)
 		return -ENOMEM;
=20
+	/* Bringup ovl_adaptor */
+	if (mtk_drm_find_mmsys_comp(private, DDP_COMPONENT_DRM_OVL_ADAPTOR)) {
+		ovl_adaptor =3D platform_device_register_data(dev, "mediatek-disp-ovl-ad=
aptor",
+							    PLATFORM_DEVID_AUTO,
+							    (void *)private->mmsys_dev,
+							    sizeof(*private->mmsys_dev));
+		private->ddp_comp[DDP_COMPONENT_DRM_OVL_ADAPTOR].dev =3D &ovl_adaptor->d=
ev;
+		mtk_ddp_comp_init(NULL, &private->ddp_comp[DDP_COMPONENT_DRM_OVL_ADAPTOR=
],
+				  DDP_COMPONENT_DRM_OVL_ADAPTOR);
+		component_match_add(dev, &match, compare_dev, &ovl_adaptor->dev);
+	}
+
 	/* Iterate over sibling DISP function blocks */
 	for_each_child_of_node(phandle->parent, node) {
 		const struct of_device_id *of_id;
@@ -823,6 +829,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		    comp_type =3D=3D MTK_DISP_MERGE ||
 		    comp_type =3D=3D MTK_DISP_OVL ||
 		    comp_type =3D=3D MTK_DISP_OVL_2L ||
+		    comp_type =3D=3D MTK_DISP_OVL_ADAPTOR ||
 		    comp_type =3D=3D MTK_DISP_RDMA ||
 		    comp_type =3D=3D MTK_DP_INTF ||
 		    comp_type =3D=3D MTK_DPI ||
@@ -860,7 +867,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 err_node:
 	of_node_put(private->mutex_node);
-	for (i =3D 0; i < DDP_COMPONENT_ID_MAX; i++)
+	for (i =3D 0; i < DDP_COMPONENT_DRM_ID_MAX; i++)
 		of_node_put(private->comp_node[i]);
 	return ret;
 }
@@ -873,7 +880,7 @@ static int mtk_drm_remove(struct platform_device *pdev)
 	component_master_del(&pdev->dev, &mtk_drm_ops);
 	pm_runtime_disable(&pdev->dev);
 	of_node_put(private->mutex_node);
-	for (i =3D 0; i < DDP_COMPONENT_ID_MAX; i++)
+	for (i =3D 0; i < DDP_COMPONENT_DRM_ID_MAX; i++)
 		of_node_put(private->comp_node[i]);
=20
 	return 0;
@@ -922,6 +929,7 @@ static struct platform_driver * const mtk_drm_drivers[]=
 =3D {
 	&mtk_disp_color_driver,
 	&mtk_disp_gamma_driver,
 	&mtk_disp_merge_driver,
+	&mtk_disp_ovl_adaptor_driver,
 	&mtk_disp_ovl_driver,
 	&mtk_disp_rdma_driver,
 	&mtk_dpi_driver,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/media=
tek/mtk_drm_drv.h
index 8d3ff32b5364..eb2fd45941f0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -11,6 +11,8 @@
=20
 #define MAX_CRTC	3
 #define MAX_CONNECTOR	2
+#define DDP_COMPONENT_DRM_OVL_ADAPTOR (DDP_COMPONENT_ID_MAX + 1)
+#define DDP_COMPONENT_DRM_ID_MAX (DDP_COMPONENT_DRM_OVL_ADAPTOR + 1)
=20
 struct device;
 struct device_node;
@@ -21,11 +23,11 @@ struct drm_property;
 struct regmap;
=20
 struct mtk_mmsys_driver_data {
-	const enum mtk_ddp_comp_id *main_path;
+	const unsigned int *main_path;
 	unsigned int main_len;
-	const enum mtk_ddp_comp_id *ext_path;
+	const unsigned int *ext_path;
 	unsigned int ext_len;
-	const enum mtk_ddp_comp_id *third_path;
+	const unsigned int *third_path;
 	unsigned int third_len;
=20
 	bool shadow_register;
@@ -42,8 +44,8 @@ struct mtk_drm_private {
 	struct device_node *mutex_node;
 	struct device *mutex_dev;
 	struct device *mmsys_dev;
-	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
-	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_ID_MAX];
+	struct device_node *comp_node[DDP_COMPONENT_DRM_ID_MAX];
+	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_DRM_ID_MAX];
 	const struct mtk_mmsys_driver_data *data;
 	struct drm_atomic_state *suspend_state;
 	unsigned int mbox_index;
--=20
2.18.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20221227081011.6426-7-nancy.lin%40mediatek.com.
