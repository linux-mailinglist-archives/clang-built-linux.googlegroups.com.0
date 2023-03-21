Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBQGB42QAMGQEMZJLUKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8D96C3166
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:14 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id bk9-20020a056602400900b007530180bc25sf7518655iob.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401153; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qq3QvS7c7LOVFoEvbQahpPiJmvnOCa/ycmGJ/fa6ZnxAP9QwTWjYEXluBS/3OFb2ct
         wNEvzZHB973dvNOrDCBEzARiLtlwLbE0uwOYwYTRVPYCTppBov7ppy+IAZ3AbFIxLabf
         NPNzsPCabaOdO1B/g5cx/oNaXRyI7QpjG2k3oliYZ1c42355vIZNE5xLGQOPvhchrvJh
         lDUtSRoYXOkDp/bXsDxViIej/cDygZOpYAS5AJLNDIOYe556oMrmKWnSTwELr+BCdq7l
         c4R8DnuaVJS4jdLdIUbe+jCVSHbws9dfcGH0Y80ISrtKrPDamfrQcdGdGD+L2EqWdd61
         xu0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NwUnA1XWbo3p4pfOjce5ovWmsOSM3CXX0b8DAxCB+Uo=;
        b=YWbh23PTIPC0F6pK2kfafFIPwgK2glrd4Kg8BxLwVNbfbGWUv2+AKX834EbMXG5wXs
         UDYKtgtPAuqvCCG/XlM2w2Gni6mEeI3eZX/qscd7SIJwEVkV6CxpwyUc8/3NEaaBGGop
         dKcusoR25b7I1d/9b5wMAtWcaZdFUhfalW+jXj660jPRoZIdxBFDw5h2gSblg3aCUG1F
         MWTBgwlsFe3yOv5qK46hlaZtJvIelQkT2hXpDa8uPTwPl9a08xjbxGXDU4lKUSLPZ6ju
         6gEL4FcpTIOpZhXJHSLivtrrysmUF10DK/zGU2DHV2qCA+DTmOxlQvf46ZiEd5ICoPgA
         oZ5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="bC/HQ+vb";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401153;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwUnA1XWbo3p4pfOjce5ovWmsOSM3CXX0b8DAxCB+Uo=;
        b=T17Pbdy+C4z77Rlk94lLPuCxSRP2IlbXxJgpAvKJZ91qkpck36qS1s+EME53SwtP5a
         7gYwN/rzfhx7qIL23nohBCPgQ6b7IUWf5zuuo99bIWsbmxrIR2WQp7d0PRyBTO9WR6Ff
         4yO4+rJ5rLfmCIR4XVPoKPapI2MLWg30exUaBKjdfN0jmqmFnp1SY1C27T5dCJc9e5tv
         W6aVGE9x/ciUoCP6owmtFWYjyp4ACrjt7fze+BY2qhQF/wGTymFBubrEDVYfGF1X/nTX
         wXRQhkFZ/98bfvwFkGx4M7q5OUpAZrswJHW2jd1Ox/rhv+d27Ej3HZ2byrgia+Kwx7PI
         kapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401153;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwUnA1XWbo3p4pfOjce5ovWmsOSM3CXX0b8DAxCB+Uo=;
        b=N97M5wWqs/eMft1HpVxU5fGL0yFb+A9AHsNIrWJ0+fzq2cgzROn24w1RSt7dcOgPDE
         mqVCTzJ7Gq8QZvuIDW8ERF+t5TedrUjigN7O56vTbUbnCx8Ityx9Y+YF9fjtXBRFvDhn
         k0cy0LO82c5G+Tj27wfMEPSRu6yf5aCJUz3T9FqVKzznWGaf35CrnfLBLYstZHIMHjUh
         /EsxD9Ytvt+AulS0kx4MxqJ61pwYQyrEw9XyZbN8RBye04SpstzRGDhjnT45UXxa4fy6
         j76HEFW5IyOWeQ9D3yW4pnBOEgqlQ1Ibj33o6qfVsQUM8Iw5mQ4uL+E8LSkC15v5bGzT
         Pa3g==
X-Gm-Message-State: AO0yUKUlImW25n0M6ImNUNdQWEILCUPhfNevfL/BhBn2ftnpdWvEn3Wp
	/mE5nZ7q5IsfVQ3e5eLp8TE=
X-Google-Smtp-Source: AK7set+kUOzrlMyTYV7pebCozfZdB6yl3ntOgWnIO6cs4g2+wlO0dpJlMoEqgRbda9sXMEixxE9JCQ==
X-Received: by 2002:a92:9506:0:b0:317:b01:245 with SMTP id y6-20020a929506000000b003170b010245mr753587ilh.0.1679401152883;
        Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b01:0:b0:315:e39c:90ef with SMTP id b1-20020a920b01000000b00315e39c90efls3519352ilf.6.-pod-prod-gmail;
 Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
X-Received: by 2002:a92:d991:0:b0:323:bce:f23a with SMTP id r17-20020a92d991000000b003230bcef23amr1381276iln.16.1679401152299;
        Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401152; cv=none;
        d=google.com; s=arc-20160816;
        b=0fMqq+UoAFyhTJvTZCpmWRlwEAP44icewmzVYMKf5n0485OGaR2uQ2Nw3i6+ED0BIP
         9N4OmyUf6rQr2vJrv5ex0YapdkpiIe++XCR3HxRQbXlICYIAxDDsnCdJFLneOGU0adUk
         DXAuF/IbCG0ANmmAnod/kYMid6Kj59SYHdfW511CzmWwa1B3gPauGNYytarwVhXklauA
         vz7esyjD7jnVvwG7a0OB2EP150h/jIBA6AaJ/Q7K+FetRhUPk4OfIgpg/nuHn36w5wAt
         U7g9qc/vPSz/tLyDhIGONNauBBN706xt4/VUexSzDiketw+AkkQVImxtudE5C/uVYKDC
         3m6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=75wAvF52Zm3ksbQi5IxCUULwvgeTVmtVBJFAOuyU7Fc=;
        b=RNw6XVkEFnod+zylE4ZFRjbuAWLFq2lSnpkGT6KJTbdtqQ/lyptOzm/JYAFLz+8aEI
         7R2j5aOifgsRj57BO71tpYQeBLMSqQkVinwEl4OYwiRjw3hDBj4tb53aU/3q7SPTciGF
         lmRBl8VNZ1qaDYflQr2WECcFzqfMLE7pXJQ5Y06RR7jy1gzrBra8QDmNV5RzNoVfEmW9
         Bs4HvdXm0vhmmMIehUDTbvifMZ+cyTDSfQWWQPOyYoIKh0raJSvwBkGafc5AZkLM5n4I
         W40sm1qkxd3GmvqyUWNU+sIHaW5tRFpWm3dhcB8qfmzXYXOti6+1ixi2eHT/wGAWIapN
         IYyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="bC/HQ+vb";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id z2-20020a056638240200b003e7efb1d848si1708705jat.3.2023.03.21.05.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 914c7e82c7e211eda9a90f0bb45854f4-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:713582fd-fe32-4358-a1fd-3e971dce90d8,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:70
X-CID-INFO: VERSION:1.1.22,REQID:713582fd-fe32-4358-a1fd-3e971dce90d8,IP:0,URL
	:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTI
	ON:quarantine,TS:70
X-CID-META: VersionHash:120426c,CLOUDID:4cbe0829-564d-42d9-9875-7c868ee415ec,B
	ulkID:230321201905G6Q1OFKM,BulkQuantity:0,Recheck:0,SF:38|29|28|17|19|48,T
	C:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
	L:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 914c7e82c7e211eda9a90f0bb45854f4-20230321
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1262620891; Tue, 21 Mar 2023 20:19:03 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
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
Subject: [PATCH v30 5/7] drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
Date: Tue, 21 Mar 2023 20:18:57 +0800
Message-ID: <20230321121859.2355-6-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b="bC/HQ+vb";       spf=pass
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
index 137f7df836ef..8e97a34ebd47 100644
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
@@ -958,7 +965,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
=20
 	for (i =3D 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		ret =3D mtk_drm_crtc_init_comp_planes(drm_dev, mtk_crtc, i,
-						    pipe);
+						    crtc_i);
 		if (ret)
 			return ret;
 	}
@@ -970,24 +977,23 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
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
@@ -997,7 +1003,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
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
index 72935eb6935e..bd3dd2706825 100644
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
@@ -458,10 +606,14 @@ static void mtk_drm_unbind(struct device *dev)
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
@@ -586,31 +738,6 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[]=
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
@@ -638,6 +765,12 @@ static int mtk_drm_probe(struct platform_device *pdev)
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
@@ -657,7 +790,13 @@ static int mtk_drm_probe(struct platform_device *pdev)
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
@@ -668,6 +807,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			continue;
 		}
=20
+		if (!mtk_drm_find_mmsys_comp(private, comp_id))
+			continue;
+
 		private->comp_node[comp_id] =3D of_node_get(node);
=20
 		/*
@@ -743,16 +885,20 @@ static int mtk_drm_sys_prepare(struct device *dev)
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
clang-built-linux/20230321121859.2355-6-nancy.lin%40mediatek.com.
