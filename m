Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3WQVKOQMGQEYOLSKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 983A5656830
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:23 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id a12-20020a170902eccc00b001927f1d6316sf2919174plh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128622; cv=pass;
        d=google.com; s=arc-20160816;
        b=QVj4c5u3fAQmHyjo+K3kJrFFghL6S9P38ifeyUjCdTyQzCcpz+LIkeOAO9efybLi2T
         63rNdsYNWB1WyTMKnLHHx9O7E6AGGq9BxBBnrKm0vgOorYPBcYFxh9sZGYxZHQxEJVcE
         VibHJpIGWYgpcL8+fvDQe4iMmFfulMcBeE7ZxdQh22jwupR9nRMZ7jjLCELpLbzwdCI0
         wYlm86sU09vvXVIfEbued1U8G+HRN2HWQySW362aADSsi0wQQW3Kbekvv6XvTjvSv03P
         EZ9SrnDQVfWapYfz8ZlnC24QwQyvnZK21ES/fPWOzj+FesBjRAuQbwtXxN00qCZP85Xi
         hHKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VtfCnbXpS/FnDQ3ZpR8pc0v4PZOLgasDG/9u9V+iNNw=;
        b=LuTBiocLqQqlHds3VoFJFNqc1u0uD+aI6cHpam88rGv9LQ7o23T3S3nKgh4vv4GQpP
         QjJkPXE3ankQsHPdgcE8VtChkrTnsrAZ9qNm6Pbw4DIjlrkwAI19cDjevRnfAzrGj3bu
         STsmw+P0sBzLuefP8hhrNoXkxtWDQmJGeyEPi+0JG+dr6wCrDWSI/B2/++VJPOUVUgml
         Dnv8S6IRo5ndgB9aanDy+JUUSlxvNHwcyGebKusyc4fNLHSs7MRRPPXk/ySC4mE/bcBs
         ok7M2bfLj6m2J77k/jPCtCJtmh9n/UiKvY661pEKRqqDss+OSb2VOeFITJp2PBSorTGy
         HASw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=Fja6iD59;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VtfCnbXpS/FnDQ3ZpR8pc0v4PZOLgasDG/9u9V+iNNw=;
        b=T9xBmS/K7Phl2itDvR60gvrP2GVZ9cIuUHYwEouXqoUf91nHU99p2DZF+htCpXL0b8
         BhS1CD48PAciPxwfS1td7nGxWAjWxAkaT7LA81xqVOpiFclevjWfGYZlKT2hIZXs3tIV
         h2ayRppoygdQvOa7gIdv2U1hmXgVuhEFnkULpnLne+O8N8jt5r/QXSVJEELc/OO6g7wc
         dRB+sRtTmFRHNnb5wna9AlOLrESfzvpDRg0m20JdyMq5GA3Rq+/kts6GFbHgsJQgIlp+
         /HHB9PDrCjmMYiYH//zSJHidEynTq6z0j+YB3k2fA7Su8pr8Ipf8OEUeclA6mz7VBlOS
         8V4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VtfCnbXpS/FnDQ3ZpR8pc0v4PZOLgasDG/9u9V+iNNw=;
        b=5uID5APylBQXhDgajJKM+vENREpE4Kq2e9JTS6Dq2omugdInxj6zbU3pCJ/ChiApU9
         276dP+xsUFTruFGfYC4uDLmX/0MY+hNsQOscCabxKMddTC3VSrF0ZjQAuKo9nQxPQhH0
         /H5vHUcirli4z2QF09VKEbCkWQBebZSWujBw5YqnqMk3WChoEQ4GHW/Rd29SVvsNPuAY
         g01NYZv4AbKj7mUdUkkPY7DjhQpZFFJMKESOEIXsmuQDkjr0z0D6Cm3JKLXPoSJkJKzh
         aKWD9amdv4gey8zVJDdOgIuBeIY2cy2W6Gcplh5vK3f/BDZndyf4wuZAtslmZlxw68rg
         q7Vw==
X-Gm-Message-State: AFqh2kqu5XCX4GCWXAObpY4pNLmznzmkc/wPiN1mbyYaA7N/qXtox7p9
	HPReVgs5pFxzNpk93m99pGQ=
X-Google-Smtp-Source: AMrXdXu6lsyStcW6eLIXNhh399r6Hp3LQpPtV2SYqcsmsArvzSRdvZLzpFdNgKN+DQBjNGqtCDrMMw==
X-Received: by 2002:a17:90a:15c9:b0:219:8464:84e3 with SMTP id w9-20020a17090a15c900b00219846484e3mr2066384pjd.232.1672128622263;
        Tue, 27 Dec 2022 00:10:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4bc4:b0:219:84d6:9802 with SMTP id
 u4-20020a17090a4bc400b0021984d69802ls19027464pjl.3.-pod-canary-gmail; Tue, 27
 Dec 2022 00:10:21 -0800 (PST)
X-Received: by 2002:a05:6a20:6699:b0:af:b771:1d01 with SMTP id o25-20020a056a20669900b000afb7711d01mr22377742pzh.49.1672128621547;
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128621; cv=none;
        d=google.com; s=arc-20160816;
        b=z5XlFAKsdQ8xZR/4+o6hP/rvUr7ibIr3GXV9DpqcuLo+6xaldY4aCmix7eKQ2/tYdE
         Fe6zhcA2dbSqtxDSI+1EDkysSh1zxL9+Ec213gxYFT2hABtd/W0SVWWDIoULdCP3Sc5P
         M74P2VgS8jllQlUNDzyd7ioKWWMp1XGZAZD523sitkBWKFuqjU9q4q8+ugyfVzHS0Qnc
         dg8OaBiBYoB/OHLXg228WXXFLTLagEhCfgdffkzvrMnw9xAKEXioEOkWM4a8QCw2ChJW
         pv7gceGnYY9zaKFUVCR/upOvQxo8y47u62Apnlf6n4izTFyleVVNowC2ya42qKkAEOHn
         iZIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NR11Z/Ik0Etwx3WZuOzzt8Weah+qLsIcT31/EczJgBA=;
        b=VYmM8nQCCx/1gKNfXRo7I/qKQlqiAl4XW2AVJf5tAj8K6kpCXjXqkrW9v8hLs27aBp
         GRsYh3yXyCfbIAPWfIxXy+9N0VPNkMy84BkLGQmaL+NufqFjDI5AHBra5HnaU52gjV53
         sGC0RxBXwt8oCwh2gdzOzhk3FqAuUcq0Nv7gGGfMeo9oHvhzqxP8dHX751iwtQKYjgL7
         rZ0UdbzUMgW9A/cqfBszOQofORVFoqayfMW24Ebrj8THYvP9DEtd762Xy4/D8RvOsM/J
         ZKT0f46bJuWwy1ye6P5yn/ICNXcDUG7Wqme45/lVhmg3NLHjjnNlXT8A3LGGFjPZYUIk
         d8Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=Fja6iD59;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id h7-20020a170902f54700b00185499dcc29si960220plf.7.2022.12.27.00.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 630b32b825314e6c98f8a02d586a3041-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:94fe71e6-c234-418f-bf03-8ed199bf44f6,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:dcaaed0,CLOUDID:c8dce852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 630b32b825314e6c98f8a02d586a3041-20221227
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1724933059; Tue, 27 Dec 2022 16:10:14 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:12 +0800
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
Subject: [PATCH v29 3/7] drm/mediatek: add ovl_adaptor support for MT8195
Date: Tue, 27 Dec 2022 16:10:07 +0800
Message-ID: <20221227081011.6426-4-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=Fja6iD59;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-4-nancy.lin%40mediatek.com.
