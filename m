Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBPOB42QAMGQECDEPXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AE66C315F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:11 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id h66-20020a628345000000b00625e0121e40sf7524534pfe.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401149; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDy7mD19sOaKVrRXBfNsGK/VkHYsCyGkcQTDyp0jsDOA48YeZqkFDrDk05FW00Rlln
         r8Qd0+UCGWqSGdf7VO92vcrLaDhUewAASoDyQt8UYiy0/fBgnwycHaxw1el4j5dJJAoS
         kEZlHYZHCYsvaI+7rZOvTZh3rrZIg2MCFEPz07IPTcnzO3BqcuQF4THtMBOXBYbO7s+X
         NWTSzNjQ5wJAOleWv7pELLHOpiZotBOZAbSJalLNKL7UlngRDP+Am60K3zIVVWwyihN0
         sK0JVMCYJfijTOQiBzCFUkoy+Gesaym3r8Mnhe+sPfP/ppt/dVvgULdFMEIEk84PgVnG
         +lxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=oOmTGbc/gZs13ZUOTrPvah4PJl7wQfjOPwKcpJv5vmo=;
        b=0UdeXOhgbPVhUQYWUUPnCUEd5QKzxRZRjZjsI1IjZiIoueyAbmhW2bSDz6eWHTL5qj
         rUp6OwwApHFDrAwxKJLkaRMqJNqsXIzsC3wKUftTiP9WvIlHm5fOdnDtt60n7Y61uL3l
         DxQUK5NCm74GHjFr9tvU7YoAe7G6hnimMLBXKkRJg23ERj/AodgEJbtfAC8pScer/nxD
         dhOr9hgBI77jhh5pFPrDffaajrXbKwFzyK9gffB810lE+osU22/9AZNi3llm6c44PPFh
         NeqWx3SWhM/paLQDfaK/Z8N/G4MAnx+gHhf4u0bS58kD+xSd7K+X3Nn6/beeQFdkduL4
         KAdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=SH1yTvpR;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oOmTGbc/gZs13ZUOTrPvah4PJl7wQfjOPwKcpJv5vmo=;
        b=XKVyEZHbGCDUDo5HxZzcoSe16J2P36rr2ZpEqz7czOTP2MpwywI/LTNR/Tv1XUz+v9
         EY7lIOaR1iV67aEoWHYQQnXOYl8JWLvTSLR4kzldVPRSx1CpRVI1dp919dmHOKXnXMV/
         fao0JfAR4R+h9QhJ4p1vlxGTpVQypXB7wY13omCb9Y/pahmzJ+n7oJaIo1qZfC7GBanP
         xpPYjd+zz3RghGSlFLTXxwK8v/x4WHITEnDgFz+r0ELasS47kmFOYM0AZVfMo5vO0TYL
         XSOxXpCTt4Pt4bgjwQSBgMP/MRYkyzFNA5vonPL1iQLKkkFwvsc21vkt9TsbG7tuhcly
         PnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOmTGbc/gZs13ZUOTrPvah4PJl7wQfjOPwKcpJv5vmo=;
        b=YWEGSmuFqsgKw5SgkBI0CnF2e1Fjk5xDzmzPBCLsv5s14KgG9CV04UbuGV3EZhP8YU
         JlXWcxfceKbY6jrOJ1cIIGu1KKXozun77I/DOcPsqyXHaFF6BATzSLNXrz5+1qn1KBco
         7VMHGt/HyKVEZLQ9gjvx3ua4IC3/g/Du7do9/QrDqDQB3tkaza6BK7AqBc050WUtx9cq
         HfMGSaIUza+vX13aE3GrNnG1nsL2YeU01ghssiN/bNx0nTmC4TwHR7Ji3VlW7NaXG0gX
         0Xv5YkmawsA6g/eBWhY1WyVX3MgcktJ57bqQTjZfu/Pl7IQtlrcoauAZq0ZGCvk65OOP
         cnXw==
X-Gm-Message-State: AO0yUKVUXzymlwzLD7ok7i/VPcnWbZPqzKjdMkgQjn6He7E1Li0dfBMW
	NnfDH4b1wLbTXeOJrkHTXns=
X-Google-Smtp-Source: AK7set+C3+CEG7kWoKY44HvmqK/kXtUPWfjIBIzD3bzKun7yeSHPXj7+hzUq/Dmm9KTcrz1wavN+lg==
X-Received: by 2002:a17:90a:9285:b0:23d:360:8771 with SMTP id n5-20020a17090a928500b0023d03608771mr639010pjo.9.1679401149744;
        Tue, 21 Mar 2023 05:19:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f292:b0:19e:398b:8d99 with SMTP id
 k18-20020a170902f29200b0019e398b8d99ls14079968plc.4.-pod-prod-gmail; Tue, 21
 Mar 2023 05:19:09 -0700 (PDT)
X-Received: by 2002:a05:6a20:c9c:b0:da:1e1:3f46 with SMTP id dt28-20020a056a200c9c00b000da01e13f46mr1548124pzb.31.1679401149001;
        Tue, 21 Mar 2023 05:19:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401148; cv=none;
        d=google.com; s=arc-20160816;
        b=dsDl4tE+pTVgJNwaxxcFGoHL5IZfLbHX05jz57I546DY6Vk0Ns9m0fegMc0RXTPcBN
         NmP2S2UC19dcGW5nYVa2KVpeO2MkK70PJd47htobziAMloPqzvuqFMG/L1iIOs4qCgBZ
         FcjGqf1jBpHh2JJj6lbVOuoIHGMLAkxyP4bEnQ0Ul4MKueUCbUsQZbVllDllziM3k5UC
         syAErDS2fcskXlXnNMoMKp3ICyasy0mKzPM/F4KVWYJ/ki0aph3LSKcz8/KZsm1EBBld
         OMdvmA2ayvV1y8rXDWdKm8erQVLxrII+lybJPVQUoRAXhpLynwf/P/S1pSH9eHx6c4nV
         8uOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NR11Z/Ik0Etwx3WZuOzzt8Weah+qLsIcT31/EczJgBA=;
        b=VNbGoBr7M4bSceXMDxdx2WYNmJf2i16vzySdelwZUhIYErQBRjfsN1tJUNIpeqCn+D
         wZm1qk2GaIDeihSxHQhrosnPdwk6Hi3MZzHiehr/hzWon1EZV3RT4ZX/6pBz73eTTsfJ
         /yOWwSloDTfbe2v5Bpq6kU0ZLGgC8kZ4/u397n2LYpQad4jh03aYtmaFB6Nnr/S3TW86
         malY7j5p+kgbUWlEDWXapw9AOGnhYb+GlvxHR818w621T4ZwyIUHbDmAPLmAOw/HXWY2
         GHtBcoaWA9CzIxKwBJBV1xLp3pmim8zOww57/Fa0uREP9N7f6AP3HnOc68cDVWCelHhX
         Esjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=SH1yTvpR;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id bh27-20020a056a00309b00b00625965308absi648602pfb.3.2023.03.21.05.19.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 913a4aa0c7e211edb6b9f13eb10bd0fe-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:25c0dbf8-4396-466c-b01e-17b876e3ecba,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:90
X-CID-INFO: VERSION:1.1.22,REQID:25c0dbf8-4396-466c-b01e-17b876e3ecba,IP:0,URL
	:0,TC:0,Content:-5,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTIO
	N:quarantine,TS:90
X-CID-META: VersionHash:120426c,CLOUDID:31be0829-564d-42d9-9875-7c868ee415ec,B
	ulkID:230321201904K883N6OP,BulkQuantity:0,Recheck:0,SF:38|29|28|17|19|48,T
	C:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
	L:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 913a4aa0c7e211edb6b9f13eb10bd0fe-20230321
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1699302005; Tue, 21 Mar 2023 20:19:03 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
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
Subject: [PATCH v30 3/7] drm/mediatek: add ovl_adaptor support for MT8195
Date: Tue, 21 Mar 2023 20:18:55 +0800
Message-ID: <20230321121859.2355-4-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=SH1yTvpR;       spf=pass
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

Add ovl_adaptor driver for MT8195.
Ovl_adaptor is an encapsulated module and designed for simplified
DRM control flow. This module is composed of 8 RDMAs, 4 MERGEs and
an ETHDR. Two RDMAs merge into one layer, so this module support 4
layers.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/Makefile             |   1 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  26 +
 .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   | 533 ++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   1 +
 4 files changed, 561 insertions(+)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 840f14436d3c..d4d193f60271 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -6,6 +6,7 @@ mediatek-drm-y := mtk_disp_aal.o \
 		  mtk_disp_gamma.o \
 		  mtk_disp_merge.o \
 		  mtk_disp_ovl.o \
+		  mtk_disp_ovl_adaptor.o \
 		  mtk_disp_rdma.o \
 		  mtk_drm_crtc.o \
 		  mtk_drm_ddp_comp.o \
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 33e61a136bbc..654f8e257984 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -7,6 +7,8 @@
 #define _MTK_DISP_DRV_H_
 
 #include <linux/soc/mediatek/mtk-cmdq.h>
+#include <linux/soc/mediatek/mtk-mmsys.h>
+#include <linux/soc/mediatek/mtk-mutex.h>
 #include "mtk_drm_plane.h"
 #include "mtk_mdp_rdma.h"
 
@@ -116,6 +118,30 @@ void mtk_rdma_unregister_vblank_cb(struct device *dev);
 void mtk_rdma_enable_vblank(struct device *dev);
 void mtk_rdma_disable_vblank(struct device *dev);
 
+void mtk_ovl_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex);
+void mtk_ovl_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex);
+void mtk_ovl_adaptor_connect(struct device *dev, struct device *mmsys_dev,
+			     unsigned int next);
+void mtk_ovl_adaptor_disconnect(struct device *dev, struct device *mmsys_dev,
+				unsigned int next);
+int mtk_ovl_adaptor_clk_enable(struct device *dev);
+void mtk_ovl_adaptor_clk_disable(struct device *dev);
+void mtk_ovl_adaptor_config(struct device *dev, unsigned int w,
+			    unsigned int h, unsigned int vrefresh,
+			    unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
+void mtk_ovl_adaptor_layer_config(struct device *dev, unsigned int idx,
+				  struct mtk_plane_state *state,
+				  struct cmdq_pkt *cmdq_pkt);
+void mtk_ovl_adaptor_register_vblank_cb(struct device *dev, void (*vblank_cb)(void *),
+					void *vblank_cb_data);
+void mtk_ovl_adaptor_unregister_vblank_cb(struct device *dev);
+void mtk_ovl_adaptor_enable_vblank(struct device *dev);
+void mtk_ovl_adaptor_disable_vblank(struct device *dev);
+void mtk_ovl_adaptor_start(struct device *dev);
+void mtk_ovl_adaptor_stop(struct device *dev);
+unsigned int mtk_ovl_adaptor_layer_nr(struct device *dev);
+struct device *mtk_ovl_adaptor_dma_dev_get(struct device *dev);
+
 int mtk_mdp_rdma_clk_enable(struct device *dev);
 void mtk_mdp_rdma_clk_disable(struct device *dev);
 void mtk_mdp_rdma_start(struct device *dev, struct cmdq_pkt *cmdq_pkt);
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
new file mode 100644
index 000000000000..046217828ab3
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
@@ -0,0 +1,533 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2021 MediaTek Inc.
+ */
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_of.h>
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+#include <linux/soc/mediatek/mtk-mmsys.h>
+#include <linux/soc/mediatek/mtk-mutex.h>
+
+#include "mtk_disp_drv.h"
+#include "mtk_drm_crtc.h"
+#include "mtk_drm_ddp_comp.h"
+#include "mtk_drm_drv.h"
+#include "mtk_ethdr.h"
+
+#define MTK_OVL_ADAPTOR_RDMA_MAX_WIDTH 1920
+#define MTK_OVL_ADAPTOR_LAYER_NUM 4
+
+enum mtk_ovl_adaptor_comp_type {
+	OVL_ADAPTOR_TYPE_RDMA = 0,
+	OVL_ADAPTOR_TYPE_MERGE,
+	OVL_ADAPTOR_TYPE_ETHDR,
+	OVL_ADAPTOR_TYPE_NUM,
+};
+
+enum mtk_ovl_adaptor_comp_id {
+	OVL_ADAPTOR_MDP_RDMA0,
+	OVL_ADAPTOR_MDP_RDMA1,
+	OVL_ADAPTOR_MDP_RDMA2,
+	OVL_ADAPTOR_MDP_RDMA3,
+	OVL_ADAPTOR_MDP_RDMA4,
+	OVL_ADAPTOR_MDP_RDMA5,
+	OVL_ADAPTOR_MDP_RDMA6,
+	OVL_ADAPTOR_MDP_RDMA7,
+	OVL_ADAPTOR_MERGE0,
+	OVL_ADAPTOR_MERGE1,
+	OVL_ADAPTOR_MERGE2,
+	OVL_ADAPTOR_MERGE3,
+	OVL_ADAPTOR_ETHDR0,
+	OVL_ADAPTOR_ID_MAX
+};
+
+struct ovl_adaptor_comp_match {
+	enum mtk_ovl_adaptor_comp_type type;
+	int alias_id;
+};
+
+struct mtk_disp_ovl_adaptor {
+	struct device *ovl_adaptor_comp[OVL_ADAPTOR_ID_MAX];
+	struct device *mmsys_dev;
+	bool children_bound;
+};
+
+static const char * const private_comp_stem[OVL_ADAPTOR_TYPE_NUM] = {
+	[OVL_ADAPTOR_TYPE_RDMA]		= "vdo1-rdma",
+	[OVL_ADAPTOR_TYPE_MERGE]	= "merge",
+	[OVL_ADAPTOR_TYPE_ETHDR]	= "ethdr",
+};
+
+static const struct ovl_adaptor_comp_match comp_matches[OVL_ADAPTOR_ID_MAX] = {
+	[OVL_ADAPTOR_MDP_RDMA0]	= { OVL_ADAPTOR_TYPE_RDMA, 0 },
+	[OVL_ADAPTOR_MDP_RDMA1]	= { OVL_ADAPTOR_TYPE_RDMA, 1 },
+	[OVL_ADAPTOR_MDP_RDMA2]	= { OVL_ADAPTOR_TYPE_RDMA, 2 },
+	[OVL_ADAPTOR_MDP_RDMA3]	= { OVL_ADAPTOR_TYPE_RDMA, 3 },
+	[OVL_ADAPTOR_MDP_RDMA4]	= { OVL_ADAPTOR_TYPE_RDMA, 4 },
+	[OVL_ADAPTOR_MDP_RDMA5]	= { OVL_ADAPTOR_TYPE_RDMA, 5 },
+	[OVL_ADAPTOR_MDP_RDMA6]	= { OVL_ADAPTOR_TYPE_RDMA, 6 },
+	[OVL_ADAPTOR_MDP_RDMA7]	= { OVL_ADAPTOR_TYPE_RDMA, 7 },
+	[OVL_ADAPTOR_MERGE0]	= { OVL_ADAPTOR_TYPE_MERGE, 1 },
+	[OVL_ADAPTOR_MERGE1]	= { OVL_ADAPTOR_TYPE_MERGE, 2 },
+	[OVL_ADAPTOR_MERGE2]	= { OVL_ADAPTOR_TYPE_MERGE, 3 },
+	[OVL_ADAPTOR_MERGE3]	= { OVL_ADAPTOR_TYPE_MERGE, 4 },
+	[OVL_ADAPTOR_ETHDR0]	= { OVL_ADAPTOR_TYPE_ETHDR, 0 },
+};
+
+void mtk_ovl_adaptor_layer_config(struct device *dev, unsigned int idx,
+				  struct mtk_plane_state *state,
+				  struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+	struct mtk_plane_pending_state *pending = &state->pending;
+	struct mtk_mdp_rdma_cfg rdma_config = {0};
+	struct device *rdma_l;
+	struct device *rdma_r;
+	struct device *merge;
+	struct device *ethdr;
+	const struct drm_format_info *fmt_info = drm_format_info(pending->format);
+	bool use_dual_pipe = false;
+	unsigned int align_width;
+	unsigned int l_w = 0;
+	unsigned int r_w = 0;
+
+	dev_dbg(dev, "%s+ idx:%d, enable:%d, fmt:0x%x\n", __func__, idx,
+		pending->enable, pending->format);
+	dev_dbg(dev, "addr 0x%pad, fb w:%d, {%d,%d,%d,%d}\n",
+		&pending->addr, (pending->pitch / fmt_info->cpp[0]),
+		pending->x, pending->y, pending->width, pending->height);
+
+	rdma_l = ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_MDP_RDMA0 + 2 * idx];
+	rdma_r = ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_MDP_RDMA0 + 2 * idx + 1];
+	merge = ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_MERGE0 + idx];
+	ethdr = ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0];
+
+	if (!pending->enable) {
+		mtk_merge_stop_cmdq(merge, cmdq_pkt);
+		mtk_mdp_rdma_stop(rdma_l, cmdq_pkt);
+		mtk_mdp_rdma_stop(rdma_r, cmdq_pkt);
+		mtk_ethdr_layer_config(ethdr, idx, state, cmdq_pkt);
+		return;
+	}
+
+	/* ETHDR is in 1T2P domain, width needs to be 2 pixels align */
+	align_width = ALIGN_DOWN(pending->width, 2);
+
+	if (align_width > MTK_OVL_ADAPTOR_RDMA_MAX_WIDTH)
+		use_dual_pipe = true;
+
+	if (use_dual_pipe) {
+		l_w = (align_width / 2) + ((pending->width / 2) % 2);
+		r_w = align_width - l_w;
+	} else {
+		l_w = align_width;
+	}
+	mtk_merge_advance_config(merge, l_w, r_w, pending->height, 0, 0, cmdq_pkt);
+	mtk_mmsys_merge_async_config(ovl_adaptor->mmsys_dev, idx, align_width / 2,
+				     pending->height, cmdq_pkt);
+
+	rdma_config.width = l_w;
+	rdma_config.height = pending->height;
+	rdma_config.addr0 = pending->addr;
+	rdma_config.pitch = pending->pitch;
+	rdma_config.fmt = pending->format;
+	rdma_config.color_encoding = pending->color_encoding;
+	mtk_mdp_rdma_config(rdma_l, &rdma_config, cmdq_pkt);
+
+	if (use_dual_pipe) {
+		rdma_config.x_left = l_w;
+		rdma_config.width = r_w;
+		mtk_mdp_rdma_config(rdma_r, &rdma_config, cmdq_pkt);
+	}
+
+	mtk_merge_start_cmdq(merge, cmdq_pkt);
+
+	mtk_mdp_rdma_start(rdma_l, cmdq_pkt);
+	if (use_dual_pipe)
+		mtk_mdp_rdma_start(rdma_r, cmdq_pkt);
+	else
+		mtk_mdp_rdma_stop(rdma_r, cmdq_pkt);
+
+	mtk_ethdr_layer_config(ethdr, idx, state, cmdq_pkt);
+}
+
+void mtk_ovl_adaptor_config(struct device *dev, unsigned int w,
+			    unsigned int h, unsigned int vrefresh,
+			    unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_config(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0], w, h,
+			 vrefresh, bpc, cmdq_pkt);
+}
+
+void mtk_ovl_adaptor_start(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_start(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0]);
+}
+
+void mtk_ovl_adaptor_stop(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_stop(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0]);
+}
+
+int mtk_ovl_adaptor_clk_enable(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+	struct device *comp;
+	int ret;
+	int i;
+
+	for (i = 0; i < OVL_ADAPTOR_MERGE0; i++) {
+		comp = ovl_adaptor->ovl_adaptor_comp[i];
+		ret = pm_runtime_get_sync(comp);
+		if (ret < 0) {
+			dev_err(dev, "Failed to enable power domain %d, err %d\n", i, ret);
+			goto pwr_err;
+		}
+	}
+
+	for (i = 0; i < OVL_ADAPTOR_ID_MAX; i++) {
+		comp = ovl_adaptor->ovl_adaptor_comp[i];
+
+		if (i < OVL_ADAPTOR_MERGE0)
+			ret = mtk_mdp_rdma_clk_enable(comp);
+		else if (i < OVL_ADAPTOR_ETHDR0)
+			ret = mtk_merge_clk_enable(comp);
+		else
+			ret = mtk_ethdr_clk_enable(comp);
+		if (ret) {
+			dev_err(dev, "Failed to enable clock %d, err %d\n", i, ret);
+			goto clk_err;
+		}
+	}
+
+	return ret;
+
+clk_err:
+	while (--i >= 0) {
+		comp = ovl_adaptor->ovl_adaptor_comp[i];
+		if (i < OVL_ADAPTOR_MERGE0)
+			mtk_mdp_rdma_clk_disable(comp);
+		else if (i < OVL_ADAPTOR_ETHDR0)
+			mtk_merge_clk_disable(comp);
+		else
+			mtk_ethdr_clk_disable(comp);
+	}
+	i = OVL_ADAPTOR_MERGE0;
+
+pwr_err:
+	while (--i >= 0)
+		pm_runtime_put(ovl_adaptor->ovl_adaptor_comp[i]);
+
+	return ret;
+}
+
+void mtk_ovl_adaptor_clk_disable(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+	struct device *comp;
+	int i;
+
+	for (i = 0; i < OVL_ADAPTOR_ID_MAX; i++) {
+		comp = ovl_adaptor->ovl_adaptor_comp[i];
+
+		if (i < OVL_ADAPTOR_MERGE0) {
+			mtk_mdp_rdma_clk_disable(comp);
+			pm_runtime_put(comp);
+		} else if (i < OVL_ADAPTOR_ETHDR0) {
+			mtk_merge_clk_disable(comp);
+		} else {
+			mtk_ethdr_clk_disable(comp);
+		}
+	}
+}
+
+unsigned int mtk_ovl_adaptor_layer_nr(struct device *dev)
+{
+	return MTK_OVL_ADAPTOR_LAYER_NUM;
+}
+
+struct device *mtk_ovl_adaptor_dma_dev_get(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	return ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_MDP_RDMA0];
+}
+
+void mtk_ovl_adaptor_register_vblank_cb(struct device *dev, void (*vblank_cb)(void *),
+					void *vblank_cb_data)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_register_vblank_cb(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0],
+				     vblank_cb, vblank_cb_data);
+}
+
+void mtk_ovl_adaptor_unregister_vblank_cb(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_unregister_vblank_cb(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0]);
+}
+
+void mtk_ovl_adaptor_enable_vblank(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_enable_vblank(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0]);
+}
+
+void mtk_ovl_adaptor_disable_vblank(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *ovl_adaptor = dev_get_drvdata(dev);
+
+	mtk_ethdr_disable_vblank(ovl_adaptor->ovl_adaptor_comp[OVL_ADAPTOR_ETHDR0]);
+}
+
+void mtk_ovl_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex)
+{
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA0);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA1);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA2);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA3);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA4);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA5);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA6);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MDP_RDMA7);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MERGE1);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MERGE2);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MERGE3);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_MERGE4);
+	mtk_mutex_add_comp(mutex, DDP_COMPONENT_ETHDR_MIXER);
+}
+
+void mtk_ovl_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex)
+{
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA0);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA1);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA2);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA3);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA4);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA5);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA6);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MDP_RDMA7);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MERGE1);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MERGE2);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MERGE3);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_MERGE4);
+	mtk_mutex_remove_comp(mutex, DDP_COMPONENT_ETHDR_MIXER);
+}
+
+void mtk_ovl_adaptor_connect(struct device *dev, struct device *mmsys_dev, unsigned int next)
+{
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MDP_RDMA0, DDP_COMPONENT_MERGE1);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MDP_RDMA1, DDP_COMPONENT_MERGE1);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MDP_RDMA2, DDP_COMPONENT_MERGE2);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MERGE1, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MERGE2, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MERGE3, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_MERGE4, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_connect(mmsys_dev, DDP_COMPONENT_ETHDR_MIXER, next);
+}
+
+void mtk_ovl_adaptor_disconnect(struct device *dev, struct device *mmsys_dev, unsigned int next)
+{
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MDP_RDMA0, DDP_COMPONENT_MERGE1);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MDP_RDMA1, DDP_COMPONENT_MERGE1);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MDP_RDMA2, DDP_COMPONENT_MERGE2);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MERGE1, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MERGE2, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MERGE3, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_MERGE4, DDP_COMPONENT_ETHDR_MIXER);
+	mtk_mmsys_ddp_disconnect(mmsys_dev, DDP_COMPONENT_ETHDR_MIXER, next);
+}
+
+static int ovl_adaptor_comp_get_id(struct device *dev, struct device_node *node,
+				   enum mtk_ovl_adaptor_comp_type type)
+{
+	int alias_id = of_alias_get_id(node, private_comp_stem[type]);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(comp_matches); i++)
+		if (comp_matches[i].type == type &&
+		    comp_matches[i].alias_id == alias_id)
+			return i;
+
+	dev_warn(dev, "Failed to get id. type: %d, alias: %d\n", type, alias_id);
+	return -EINVAL;
+}
+
+static const struct of_device_id mtk_ovl_adaptor_comp_dt_ids[] = {
+	{
+		.compatible = "mediatek,mt8195-vdo1-rdma",
+		.data = (void *)OVL_ADAPTOR_TYPE_RDMA,
+	}, {
+		.compatible = "mediatek,mt8195-disp-merge",
+		.data = (void *)OVL_ADAPTOR_TYPE_MERGE,
+	}, {
+		.compatible = "mediatek,mt8195-disp-ethdr",
+		.data = (void *)OVL_ADAPTOR_TYPE_ETHDR,
+	},
+	{},
+};
+
+static int compare_of(struct device *dev, void *data)
+{
+	return dev->of_node == data;
+}
+
+static int ovl_adaptor_comp_init(struct device *dev, struct component_match **match)
+{
+	struct mtk_disp_ovl_adaptor *priv = dev_get_drvdata(dev);
+	struct device_node *node, *parent;
+	struct platform_device *comp_pdev;
+
+	parent = dev->parent->parent->of_node->parent;
+
+	for_each_child_of_node(parent, node) {
+		const struct of_device_id *of_id;
+		enum mtk_ovl_adaptor_comp_type type;
+		int id;
+
+		of_id = of_match_node(mtk_ovl_adaptor_comp_dt_ids, node);
+		if (!of_id)
+			continue;
+
+		if (!of_device_is_available(node)) {
+			dev_dbg(dev, "Skipping disabled component %pOF\n",
+				node);
+			continue;
+		}
+
+		type = (enum mtk_ovl_adaptor_comp_type)of_id->data;
+		id = ovl_adaptor_comp_get_id(dev, node, type);
+		if (id < 0) {
+			dev_warn(dev, "Skipping unknown component %pOF\n",
+				 node);
+			continue;
+		}
+
+		comp_pdev = of_find_device_by_node(node);
+		if (!comp_pdev)
+			return -EPROBE_DEFER;
+
+		priv->ovl_adaptor_comp[id] = &comp_pdev->dev;
+
+		drm_of_component_match_add(dev, match, compare_of, node);
+		dev_dbg(dev, "Adding component match for %pOF\n", node);
+	}
+
+	if (!*match) {
+		dev_err(dev, "No match device for ovl_adaptor\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static int mtk_disp_ovl_adaptor_comp_bind(struct device *dev, struct device *master,
+					  void *data)
+{
+	struct mtk_disp_ovl_adaptor *priv = dev_get_drvdata(dev);
+
+	if (!priv->children_bound)
+		return -EPROBE_DEFER;
+
+	return 0;
+}
+
+static void mtk_disp_ovl_adaptor_comp_unbind(struct device *dev, struct device *master,
+					     void *data)
+{
+}
+
+static const struct component_ops mtk_disp_ovl_adaptor_comp_ops = {
+	.bind	= mtk_disp_ovl_adaptor_comp_bind,
+	.unbind = mtk_disp_ovl_adaptor_comp_unbind,
+};
+
+static int mtk_disp_ovl_adaptor_master_bind(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *priv = dev_get_drvdata(dev);
+	int ret;
+
+	ret = component_bind_all(dev, priv->mmsys_dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "component_bind_all failed!\n");
+
+	priv->children_bound = true;
+	return 0;
+}
+
+static void mtk_disp_ovl_adaptor_master_unbind(struct device *dev)
+{
+	struct mtk_disp_ovl_adaptor *priv = dev_get_drvdata(dev);
+
+	priv->children_bound = false;
+}
+
+static const struct component_master_ops mtk_disp_ovl_adaptor_master_ops = {
+	.bind		= mtk_disp_ovl_adaptor_master_bind,
+	.unbind		= mtk_disp_ovl_adaptor_master_unbind,
+};
+
+static int mtk_disp_ovl_adaptor_probe(struct platform_device *pdev)
+{
+	struct mtk_disp_ovl_adaptor *priv;
+	struct device *dev = &pdev->dev;
+	struct component_match *match = NULL;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, priv);
+
+	ret = ovl_adaptor_comp_init(dev, &match);
+	if (ret < 0)
+		return ret;
+
+	priv->mmsys_dev = pdev->dev.platform_data;
+
+	component_master_add_with_match(dev, &mtk_disp_ovl_adaptor_master_ops, match);
+
+	pm_runtime_enable(dev);
+
+	ret = component_add(dev, &mtk_disp_ovl_adaptor_comp_ops);
+	if (ret != 0) {
+		pm_runtime_disable(dev);
+		dev_err(dev, "Failed to add component: %d\n", ret);
+	}
+
+	return ret;
+}
+
+static int mtk_disp_ovl_adaptor_remove(struct platform_device *pdev)
+{
+	component_master_del(&pdev->dev, &mtk_disp_ovl_adaptor_master_ops);
+	pm_runtime_disable(&pdev->dev);
+	return 0;
+}
+
+struct platform_driver mtk_disp_ovl_adaptor_driver = {
+	.probe		= mtk_disp_ovl_adaptor_probe,
+	.remove		= mtk_disp_ovl_adaptor_remove,
+	.driver		= {
+		.name	= "mediatek-disp-ovl-adaptor",
+		.owner	= THIS_MODULE,
+	},
+};
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 3fb85776b8b3..d27561e5e274 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -51,6 +51,7 @@ extern struct platform_driver mtk_disp_ccorr_driver;
 extern struct platform_driver mtk_disp_color_driver;
 extern struct platform_driver mtk_disp_gamma_driver;
 extern struct platform_driver mtk_disp_merge_driver;
+extern struct platform_driver mtk_disp_ovl_adaptor_driver;
 extern struct platform_driver mtk_disp_ovl_driver;
 extern struct platform_driver mtk_disp_rdma_driver;
 extern struct platform_driver mtk_dpi_driver;
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-4-nancy.lin%40mediatek.com.
