Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3WQVKOQMGQEYOLSKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C6133656832
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:23 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id k6-20020a92c246000000b003035797fa8csf8261808ilo.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128622; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4NJL7hg41U+kuvc5P4r7KKiy/R6W5n3kZ2X3cPxaD7Z2l5BqdgZg4pXOcNj/07bdl
         CUBF9vcir8ViV6aTex4Vjggov5VtFwVanZXSGjTBudIK4Oz3OjzR+dJ8Nei/tj00+NB+
         tRZkw6G2LUK6mBiafsm9Mo4etI3Btkh/IYhHzMi5re2nGB4ZJZewFNj1025WF7lTcYZf
         Ntgfu5QE1kmdtTMwYf8Bbh+qmeNZR9CK2xnimW8wF32eYiByYJMWx/eJDnHT/oJWAuVX
         KHdZMRh5yntYngybvPSQ3ce4RlCR40F/IMdeJtgHaujd7IeKA35QiHkLLWsDaErO0DtR
         pnxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=u8Y05V6zfFaO2CB13Pb2ITsssbxHFo/bNPF1H2uj/Kg=;
        b=ScipeVmnVsGA//iOwI/he3H+LELwiv3zTkIpYKJR38oAw5KS6WFYX0/CdmDK9KbOdG
         GmaCceBOJyluqaayccxr1LmLFOkkKck/UQE2b/xazf1cu3DUeUFfhvWsSqCkQ+giK07q
         01v8C/iC5NmrXb7P8y7rk0Rgx8GZHmpCMthqvBKN+S8SbxwrNClvcFdNU6Nq1b8dz8Lg
         rdVxPvMsyLkA4mCf6CtstrWdMclbN7pDlf88w2wbaiaz0XLePn575XGfP7misZ9qQDa0
         LxaGe+vBZq/3hnMwOOe/jt+MBpPJ2vll7+yK9uwnHlPOMgprhfn4oUA5gtuZipOL9ySf
         D2DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=sIohvGiE;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u8Y05V6zfFaO2CB13Pb2ITsssbxHFo/bNPF1H2uj/Kg=;
        b=kCvjBn/dFzgTCvNUHAOzzW7eTWE9TjyG1olMKdiX+tNgfsG6eROByoPnLoZoRxWbeR
         8vClxCX6+vWr7sdXhvyPD3Ljs1BZXIiV9aMY80IfwDOZSkKKDQo6eMrnRyyRBvQxF5fM
         LEiYg9Gnroa5LozGOTSLaKxQkQmYkEEi7BWyG8yVtlGMWx9IkywJM+fVUREHvg+wgu8i
         +wcG1HsQSv4ELpqQkTpPGHhwoUA1C1jVSSED4c4BGArPXmLMpccIVk1UpfvhCs3hPP3g
         azGls1rHc/XZDlOw3mnvVgNNeURjf5XTdFWNV3ZHdMCDTk7OU/Fjkgy+cmqhC9Pn0pA3
         RIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u8Y05V6zfFaO2CB13Pb2ITsssbxHFo/bNPF1H2uj/Kg=;
        b=KbUG2pEd40ZaCFspso9mlAdBNgktlxUJI2Ii2JmMf6MMF7Il+j0uN5dXZBjthunFtf
         EiFzzNRxuAhvUwiu/G7nFpxaEoJJGUckNzFBeIHhYu2I+gzf6aTxG8eoZFlGRyWA9Mmv
         6uomDC/vyzvGBh7qozye9+mNS/pzlIe5kogExBgiqfRzaADHkPiQz1546bfi5lkvbuzn
         Ktdrbhl78GD7UM39XTvPOTqxTNq3KDB5Tno0/qcnpXIZlqzpYBntztWi6Y51mWgW1CVh
         eZrsn8yfopUE2mIEEok7h/FPNsQzA0zrbLp51HtKjXNoL8kqT4ULxjb/Y7QRFVh1ed8C
         U/fg==
X-Gm-Message-State: AFqh2kr0A3JmjN26hQtGh679kkALZGd1J44CNPe4mVnV1x3ni/1fOqRa
	R2Qpltirl4wja0KCq5s12gU=
X-Google-Smtp-Source: AMrXdXtj2/YS42eodTQ5dZHT7LRAjxIubOx6vwqWXkF6roVAlMx10bfZ3Sjv4J6zWDzPFtRvWNmvtA==
X-Received: by 2002:a02:ac02:0:b0:39d:7353:149b with SMTP id a2-20020a02ac02000000b0039d7353149bmr1624621jao.7.1672128622673;
        Tue, 27 Dec 2022 00:10:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:54:b0:6de:9e24:a442 with SMTP id
 z20-20020a056602005400b006de9e24a442ls1875246ioz.9.-pod-prod-gmail; Tue, 27
 Dec 2022 00:10:22 -0800 (PST)
X-Received: by 2002:a6b:d919:0:b0:6e9:9776:a6c8 with SMTP id r25-20020a6bd919000000b006e99776a6c8mr22025714ioc.2.1672128622169;
        Tue, 27 Dec 2022 00:10:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128622; cv=none;
        d=google.com; s=arc-20160816;
        b=Bdf0O/qInyBJGvpt/6d9WICrdR8bcs+xZee2LZMTJcRClWyuM4cDAPiQmr0dP8Vb26
         OkNkKEYs//GmPEBnuEzC6ofK++UxANhG2nJgSTL6tRJD5aBseUBiXohW79X+8rpXsPc4
         O5owQFphcC/5gsYPfTQqL8X1nBL+IT84qrgQfn0NR7ShvXNtkwpFWQPjzJk32Luipxi/
         o72ktpp3cjET1iqN+oQ3zpTRZqDYiVWRglpWShZx5MV8rkgk+i6vHzaXZghZaEU8maTW
         2+1N10zWNRHBRTyVPfLE/0+icAaSkkakijJr5CLUNTxuZpwKEedEv1W+cVc2POXiah3n
         b8YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NABalzjNPmlG+5qFRCKTIMBlG+n3EyUyuyZWV4wPS9A=;
        b=qAszBYnh3F2kDdLZu2KEWYnlI6+3CVZsXoMuYEgaaUZs4jDW+S9acNGCa4Cp2eI7GO
         cCkgkL10BD2cKVI8LyWhRYK7KEWGg8L1bcMaPh6FbMAZyEInaa8KxbFLOjZjGEhzj618
         E3yABZrycH0vWo25XxYrkk5Si1lFYb+1VvrJcl9KGYog+I0IBvtDPN3u3QF8q2Q4DDs/
         Wg7nSTDnDfkBtkrQzy5CNJNC6I3ToScdRcaRTeZ02AGUv6ptt+EJrQZu9o46fQmD+7ni
         C2FeiYiG1JXcAE3+7bhMkNpPgRNZbrMEKLIX6WJcpYgVMg/PAniyQuFdskJ4m4dTyeKT
         muDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=sIohvGiE;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id i8-20020a02cc48000000b003636f49184dsi1055542jaq.7.2022.12.27.00.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: ffe74135770c4f5cbe9bb9af7093687a-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:75d7ec15-76cb-421f-a55e-256359ba110f,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:dcaaed0,CLOUDID:c7dce852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: ffe74135770c4f5cbe9bb9af7093687a-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1693019229; Tue, 27 Dec 2022 16:10:14 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
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
Subject: [PATCH v29 2/7] drm/mediatek: add ETHDR support for MT8195
Date: Tue, 27 Dec 2022 16:10:06 +0800
Message-ID: <20221227081011.6426-3-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=sIohvGiE;       spf=pass
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

ETHDR is a part of ovl_adaptor.
ETHDR is designed for HDR video and graphics conversion in the external
display path. It handles multiple HDR input types and performs tone
mapping, color space/color format conversion, and then combine
different layers, output the required HDR or SDR signal to the
subsequent display path.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/Makefile      |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h |   1 +
 drivers/gpu/drm/mediatek/mtk_ethdr.c   | 370 +++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_ethdr.h   |  25 ++
 5 files changed, 398 insertions(+)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.h

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 3517d1c65cd7..840f14436d3c 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -14,6 +14,7 @@ mediatek-drm-y := mtk_disp_aal.o \
 		  mtk_drm_plane.o \
 		  mtk_dsi.o \
 		  mtk_dpi.o \
+		  mtk_ethdr.o \
 		  mtk_mdp_rdma.o
 
 obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index b12e5b977c50..83fd4f38d07b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -781,6 +781,7 @@ static struct platform_driver * const mtk_drm_drivers[] = {
 	&mtk_dpi_driver,
 	&mtk_drm_platform_driver,
 	&mtk_dsi_driver,
+	&mtk_ethdr_driver,
 	&mtk_mdp_rdma_driver,
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 64a1f66df26a..3fb85776b8b3 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -55,6 +55,7 @@ extern struct platform_driver mtk_disp_ovl_driver;
 extern struct platform_driver mtk_disp_rdma_driver;
 extern struct platform_driver mtk_dpi_driver;
 extern struct platform_driver mtk_dsi_driver;
+extern struct platform_driver mtk_ethdr_driver;
 extern struct platform_driver mtk_mdp_rdma_driver;
 
 #endif /* MTK_DRM_DRV_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_ethdr.c b/drivers/gpu/drm/mediatek/mtk_ethdr.c
new file mode 100644
index 000000000000..73dc4da3ba3b
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_ethdr.c
@@ -0,0 +1,370 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2021 MediaTek Inc.
+ */
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_framebuffer.h>
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+#include <linux/soc/mediatek/mtk-mmsys.h>
+
+#include "mtk_drm_crtc.h"
+#include "mtk_drm_ddp_comp.h"
+#include "mtk_drm_drv.h"
+#include "mtk_ethdr.h"
+
+#define MIX_INTEN			0x4
+#define MIX_FME_CPL_INTEN			BIT(1)
+#define MIX_INTSTA			0x8
+#define MIX_EN				0xc
+#define MIX_RST				0x14
+#define MIX_ROI_SIZE			0x18
+#define MIX_DATAPATH_CON		0x1c
+#define OUTPUT_NO_RND				BIT(3)
+#define SOURCE_RGB_SEL				BIT(7)
+#define BACKGROUND_RELAY			(4 << 9)
+#define MIX_ROI_BGCLR			0x20
+#define BGCLR_BLACK				0xff000000
+#define MIX_SRC_CON			0x24
+#define MIX_SRC_L0_EN				BIT(0)
+#define MIX_L_SRC_CON(n)		(0x28 + 0x18 * (n))
+#define NON_PREMULTI_SOURCE			(2 << 12)
+#define MIX_L_SRC_SIZE(n)		(0x30 + 0x18 * (n))
+#define MIX_L_SRC_OFFSET(n)		(0x34 + 0x18 * (n))
+#define MIX_FUNC_DCM0			0x120
+#define MIX_FUNC_DCM1			0x124
+#define MIX_FUNC_DCM_ENABLE			0xffffffff
+
+#define HDR_VDO_FE_0804_HDR_DM_FE	0x804
+#define HDR_VDO_FE_0804_BYPASS_ALL		0xfd
+#define HDR_GFX_FE_0204_GFX_HDR_FE	0x204
+#define HDR_GFX_FE_0204_BYPASS_ALL		0xfd
+#define HDR_VDO_BE_0204_VDO_DM_BE	0x204
+#define HDR_VDO_BE_0204_BYPASS_ALL		0x7e
+
+#define MIXER_INX_MODE_BYPASS			0
+#define MIXER_INX_MODE_EVEN_EXTEND		1
+#define DEFAULT_9BIT_ALPHA			0x100
+#define	MIXER_ALPHA_AEN				BIT(8)
+#define	MIXER_ALPHA				0xff
+#define ETHDR_CLK_NUM				13
+
+enum mtk_ethdr_comp_id {
+	ETHDR_MIXER,
+	ETHDR_VDO_FE0,
+	ETHDR_VDO_FE1,
+	ETHDR_GFX_FE0,
+	ETHDR_GFX_FE1,
+	ETHDR_VDO_BE,
+	ETHDR_ADL_DS,
+	ETHDR_ID_MAX
+};
+
+struct mtk_ethdr_comp {
+	struct device		*dev;
+	void __iomem		*regs;
+	struct cmdq_client_reg	cmdq_base;
+};
+
+struct mtk_ethdr {
+	struct mtk_ethdr_comp	ethdr_comp[ETHDR_ID_MAX];
+	struct clk_bulk_data	ethdr_clk[ETHDR_CLK_NUM];
+	struct device		*mmsys_dev;
+	void			(*vblank_cb)(void *data);
+	void			*vblank_cb_data;
+	int			irq;
+	struct reset_control	*reset_ctl;
+};
+
+static const char * const ethdr_clk_str[] = {
+	"ethdr_top",
+	"mixer",
+	"vdo_fe0",
+	"vdo_fe1",
+	"gfx_fe0",
+	"gfx_fe1",
+	"vdo_be",
+	"adl_ds",
+	"vdo_fe0_async",
+	"vdo_fe1_async",
+	"gfx_fe0_async",
+	"gfx_fe1_async",
+	"vdo_be_async",
+};
+
+void mtk_ethdr_register_vblank_cb(struct device *dev,
+				  void (*vblank_cb)(void *),
+				  void *vblank_cb_data)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	priv->vblank_cb = vblank_cb;
+	priv->vblank_cb_data = vblank_cb_data;
+}
+
+void mtk_ethdr_unregister_vblank_cb(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	priv->vblank_cb = NULL;
+	priv->vblank_cb_data = NULL;
+}
+
+void mtk_ethdr_enable_vblank(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	writel(MIX_FME_CPL_INTEN, priv->ethdr_comp[ETHDR_MIXER].regs + MIX_INTEN);
+}
+
+void mtk_ethdr_disable_vblank(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	writel(0x0, priv->ethdr_comp[ETHDR_MIXER].regs + MIX_INTEN);
+}
+
+static irqreturn_t mtk_ethdr_irq_handler(int irq, void *dev_id)
+{
+	struct mtk_ethdr *priv = dev_id;
+
+	writel(0x0, priv->ethdr_comp[ETHDR_MIXER].regs + MIX_INTSTA);
+
+	if (!priv->vblank_cb)
+		return IRQ_NONE;
+
+	priv->vblank_cb(priv->vblank_cb_data);
+
+	return IRQ_HANDLED;
+}
+
+void mtk_ethdr_layer_config(struct device *dev, unsigned int idx,
+			    struct mtk_plane_state *state,
+			    struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+	struct mtk_ethdr_comp *mixer = &priv->ethdr_comp[ETHDR_MIXER];
+	struct mtk_plane_pending_state *pending = &state->pending;
+	unsigned int offset = (pending->x & 1) << 31 | pending->y << 16 | pending->x;
+	unsigned int align_width = ALIGN_DOWN(pending->width, 2);
+	unsigned int alpha_con = 0;
+
+	dev_dbg(dev, "%s+ idx:%d", __func__, idx);
+
+	if (idx >= 4)
+		return;
+
+	if (!pending->enable) {
+		mtk_ddp_write(cmdq_pkt, 0, &mixer->cmdq_base, mixer->regs, MIX_L_SRC_SIZE(idx));
+		return;
+	}
+
+	if (state->base.fb && state->base.fb->format->has_alpha)
+		alpha_con = MIXER_ALPHA_AEN | MIXER_ALPHA;
+
+	mtk_mmsys_mixer_in_config(priv->mmsys_dev, idx + 1, alpha_con ? false : true,
+				  DEFAULT_9BIT_ALPHA,
+				  pending->x & 1 ? MIXER_INX_MODE_EVEN_EXTEND :
+				  MIXER_INX_MODE_BYPASS, align_width / 2 - 1, cmdq_pkt);
+
+	mtk_ddp_write(cmdq_pkt, pending->height << 16 | align_width, &mixer->cmdq_base,
+		      mixer->regs, MIX_L_SRC_SIZE(idx));
+	mtk_ddp_write(cmdq_pkt, offset, &mixer->cmdq_base, mixer->regs, MIX_L_SRC_OFFSET(idx));
+	mtk_ddp_write_mask(cmdq_pkt, alpha_con, &mixer->cmdq_base, mixer->regs, MIX_L_SRC_CON(idx),
+			   0x1ff);
+	mtk_ddp_write_mask(cmdq_pkt, BIT(idx), &mixer->cmdq_base, mixer->regs, MIX_SRC_CON,
+			   BIT(idx));
+}
+
+void mtk_ethdr_config(struct device *dev, unsigned int w,
+		      unsigned int h, unsigned int vrefresh,
+		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+	struct mtk_ethdr_comp *vdo_fe0 = &priv->ethdr_comp[ETHDR_VDO_FE0];
+	struct mtk_ethdr_comp *vdo_fe1 = &priv->ethdr_comp[ETHDR_VDO_FE1];
+	struct mtk_ethdr_comp *gfx_fe0 = &priv->ethdr_comp[ETHDR_GFX_FE0];
+	struct mtk_ethdr_comp *gfx_fe1 = &priv->ethdr_comp[ETHDR_GFX_FE1];
+	struct mtk_ethdr_comp *vdo_be = &priv->ethdr_comp[ETHDR_VDO_BE];
+	struct mtk_ethdr_comp *mixer = &priv->ethdr_comp[ETHDR_MIXER];
+
+	dev_dbg(dev, "%s-w:%d, h:%d\n", __func__, w, h);
+
+	mtk_ddp_write(cmdq_pkt, HDR_VDO_FE_0804_BYPASS_ALL, &vdo_fe0->cmdq_base,
+		      vdo_fe0->regs, HDR_VDO_FE_0804_HDR_DM_FE);
+
+	mtk_ddp_write(cmdq_pkt, HDR_VDO_FE_0804_BYPASS_ALL, &vdo_fe1->cmdq_base,
+		      vdo_fe1->regs, HDR_VDO_FE_0804_HDR_DM_FE);
+
+	mtk_ddp_write(cmdq_pkt, HDR_GFX_FE_0204_BYPASS_ALL, &gfx_fe0->cmdq_base,
+		      gfx_fe0->regs, HDR_GFX_FE_0204_GFX_HDR_FE);
+
+	mtk_ddp_write(cmdq_pkt, HDR_GFX_FE_0204_BYPASS_ALL, &gfx_fe1->cmdq_base,
+		      gfx_fe1->regs, HDR_GFX_FE_0204_GFX_HDR_FE);
+
+	mtk_ddp_write(cmdq_pkt, HDR_VDO_BE_0204_BYPASS_ALL, &vdo_be->cmdq_base,
+		      vdo_be->regs, HDR_VDO_BE_0204_VDO_DM_BE);
+
+	mtk_ddp_write(cmdq_pkt, MIX_FUNC_DCM_ENABLE, &mixer->cmdq_base, mixer->regs, MIX_FUNC_DCM0);
+	mtk_ddp_write(cmdq_pkt, MIX_FUNC_DCM_ENABLE, &mixer->cmdq_base, mixer->regs, MIX_FUNC_DCM1);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, &mixer->cmdq_base, mixer->regs, MIX_ROI_SIZE);
+	mtk_ddp_write(cmdq_pkt, BGCLR_BLACK, &mixer->cmdq_base, mixer->regs, MIX_ROI_BGCLR);
+	mtk_ddp_write(cmdq_pkt, NON_PREMULTI_SOURCE, &mixer->cmdq_base, mixer->regs,
+		      MIX_L_SRC_CON(0));
+	mtk_ddp_write(cmdq_pkt, NON_PREMULTI_SOURCE, &mixer->cmdq_base, mixer->regs,
+		      MIX_L_SRC_CON(1));
+	mtk_ddp_write(cmdq_pkt, NON_PREMULTI_SOURCE, &mixer->cmdq_base, mixer->regs,
+		      MIX_L_SRC_CON(2));
+	mtk_ddp_write(cmdq_pkt, NON_PREMULTI_SOURCE, &mixer->cmdq_base, mixer->regs,
+		      MIX_L_SRC_CON(3));
+	mtk_ddp_write(cmdq_pkt, 0x0, &mixer->cmdq_base, mixer->regs, MIX_L_SRC_SIZE(0));
+	mtk_ddp_write(cmdq_pkt, OUTPUT_NO_RND | SOURCE_RGB_SEL | BACKGROUND_RELAY,
+		      &mixer->cmdq_base, mixer->regs, MIX_DATAPATH_CON);
+	mtk_ddp_write_mask(cmdq_pkt, MIX_SRC_L0_EN, &mixer->cmdq_base, mixer->regs,
+			   MIX_SRC_CON, MIX_SRC_L0_EN);
+
+	mtk_mmsys_hdr_config(priv->mmsys_dev, w / 2, h, cmdq_pkt);
+	mtk_mmsys_mixer_in_channel_swap(priv->mmsys_dev, 4, 0, cmdq_pkt);
+}
+
+void mtk_ethdr_start(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+	struct mtk_ethdr_comp *mixer = &priv->ethdr_comp[ETHDR_MIXER];
+
+	writel(1, mixer->regs + MIX_EN);
+}
+
+void mtk_ethdr_stop(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+	struct mtk_ethdr_comp *mixer = &priv->ethdr_comp[ETHDR_MIXER];
+
+	writel(0, mixer->regs + MIX_EN);
+	writel(1, mixer->regs + MIX_RST);
+	reset_control_reset(priv->reset_ctl);
+	writel(0, mixer->regs + MIX_RST);
+}
+
+int mtk_ethdr_clk_enable(struct device *dev)
+{
+	int ret;
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	ret = clk_bulk_prepare_enable(ETHDR_CLK_NUM, priv->ethdr_clk);
+	if (ret)
+		dev_err(dev,
+			"ethdr_clk prepare enable failed\n");
+	return ret;
+}
+
+void mtk_ethdr_clk_disable(struct device *dev)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	clk_bulk_disable_unprepare(ETHDR_CLK_NUM, priv->ethdr_clk);
+}
+
+static int mtk_ethdr_bind(struct device *dev, struct device *master,
+			  void *data)
+{
+	struct mtk_ethdr *priv = dev_get_drvdata(dev);
+
+	priv->mmsys_dev = data;
+	return 0;
+}
+
+static void mtk_ethdr_unbind(struct device *dev, struct device *master, void *data)
+{
+}
+
+static const struct component_ops mtk_ethdr_component_ops = {
+	.bind	= mtk_ethdr_bind,
+	.unbind = mtk_ethdr_unbind,
+};
+
+static int mtk_ethdr_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_ethdr *priv;
+	int ret;
+	int i;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	for (i = 0; i < ETHDR_ID_MAX; i++) {
+		priv->ethdr_comp[i].dev = dev;
+		priv->ethdr_comp[i].regs = of_iomap(dev->of_node, i);
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+		ret = cmdq_dev_get_client_reg(dev,
+					      &priv->ethdr_comp[i].cmdq_base, i);
+		if (ret)
+			dev_dbg(dev, "get mediatek,gce-client-reg fail!\n");
+#endif
+		dev_dbg(dev, "[DRM]regs:0x%p, node:%d\n", priv->ethdr_comp[i].regs, i);
+	}
+
+	for (i = 0; i < ETHDR_CLK_NUM; i++)
+		priv->ethdr_clk[i].id = ethdr_clk_str[i];
+	ret = devm_clk_bulk_get_optional(dev, ETHDR_CLK_NUM, priv->ethdr_clk);
+	if (ret)
+		return ret;
+
+	priv->irq = platform_get_irq(pdev, 0);
+	if (priv->irq < 0)
+		priv->irq = 0;
+
+	if (priv->irq) {
+		ret = devm_request_irq(dev, priv->irq, mtk_ethdr_irq_handler,
+				       IRQF_TRIGGER_NONE, dev_name(dev), priv);
+		if (ret < 0) {
+			dev_err(dev, "Failed to request irq %d: %d\n", priv->irq, ret);
+			return ret;
+		}
+	}
+
+	priv->reset_ctl = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(priv->reset_ctl)) {
+		dev_err_probe(dev, PTR_ERR(priv->reset_ctl), "cannot get ethdr reset control\n");
+		return PTR_ERR(priv->reset_ctl);
+	}
+
+	platform_set_drvdata(pdev, priv);
+
+	ret = component_add(dev, &mtk_ethdr_component_ops);
+	if (ret)
+		dev_notice(dev, "Failed to add component: %d\n", ret);
+
+	return ret;
+}
+
+static int mtk_ethdr_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &mtk_ethdr_component_ops);
+	return 0;
+}
+
+static const struct of_device_id mtk_ethdr_driver_dt_match[] = {
+	{ .compatible = "mediatek,mt8195-disp-ethdr"},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, mtk_ethdr_driver_dt_match);
+
+struct platform_driver mtk_ethdr_driver = {
+	.probe		= mtk_ethdr_probe,
+	.remove		= mtk_ethdr_remove,
+	.driver		= {
+		.name	= "mediatek-disp-ethdr",
+		.owner	= THIS_MODULE,
+		.of_match_table = mtk_ethdr_driver_dt_match,
+	},
+};
diff --git a/drivers/gpu/drm/mediatek/mtk_ethdr.h b/drivers/gpu/drm/mediatek/mtk_ethdr.h
new file mode 100644
index 000000000000..81af9edea3f7
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_ethdr.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2021 MediaTek Inc.
+ */
+
+#ifndef __MTK_ETHDR_H__
+#define __MTK_ETHDR_H__
+
+void mtk_ethdr_start(struct device *dev);
+void mtk_ethdr_stop(struct device *dev);
+int mtk_ethdr_clk_enable(struct device *dev);
+void mtk_ethdr_clk_disable(struct device *dev);
+void mtk_ethdr_config(struct device *dev, unsigned int w,
+		      unsigned int h, unsigned int vrefresh,
+		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
+void mtk_ethdr_layer_config(struct device *dev, unsigned int idx,
+			    struct mtk_plane_state *state,
+			    struct cmdq_pkt *cmdq_pkt);
+void mtk_ethdr_register_vblank_cb(struct device *dev,
+				  void (*vblank_cb)(void *),
+				  void *vblank_cb_data);
+void mtk_ethdr_unregister_vblank_cb(struct device *dev);
+void mtk_ethdr_enable_vblank(struct device *dev);
+void mtk_ethdr_disable_vblank(struct device *dev);
+#endif
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-3-nancy.lin%40mediatek.com.
