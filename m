Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBPWB42QAMGQEC56F2WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6376C3161
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:12 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id 21-20020a544195000000b00386eb7bf61esf3331927oiy.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401151; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ka5agFtA46AzgEpvP4GYKm4FLMsr0w7/q69zxmd4D1/jm892to2SMt/UNJo2MbNnEo
         m+Mi8kRNln3Ja7fV8PjR/U61gQ259JJjkq72oGiuBUH8R1i0sxNfrSDG4d6Xp99M9/8P
         +DERPYaGBX1OedFSchZNAcoExyeSoYCYYSaXI4TQN9ki3ZIDfMlJtBeFlA+kcL516lAd
         hMhBPNDhcVtMNDNTvsqAOrGbwsllye3jkAcb0PzYNoSL07LgyDaOBOsOWqW7s6Q3+2Fo
         vUx4ReGAAsPNEx0n+Jf+gb4DwWry9S5IPpGT7fPZpPeTBV5X+OXud4ZMTSS6I8taCez7
         ey0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=EEfT+/Xk3UB/4HUATa5/hCakNf33KlUIZWsqwenE1BQ=;
        b=1GDYHHtHj5PKIK2vZnL+P+3YYRlS7gwLfhfQvNOzjUI0Gy52V5teD84xP/PdG4u8Hk
         mVhMNnef8+JXTlETHYvUPUXnDOZAhi+Y2cWctB6be2fyjoZEbOR7wPrGUoM6NZxPj6Qx
         tk1lcbx4kZSyRWQhofyUpxjBnXsIKC8/usVeBPl6m0sJxUCBlV+X8yK3H6+HK2pSWCkG
         3+AssORAep5hC6q/YX8ubNJvQTBXs14he3PFxsOFg58Cw29iIhoauJym9XYohar6LXV9
         5szBV9QwiFC2WcSa26YNBCHHEZ9+Zi7edrLLuCXyjsPz5/Vbq4yCTz/HW5JOsGlhPAih
         TVbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=UA1r54Nn;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EEfT+/Xk3UB/4HUATa5/hCakNf33KlUIZWsqwenE1BQ=;
        b=N1ySEJq+Lkbx/hNr58asdJsxF/0H/ELcMgRyjhcyxc8/T2TqJY/WITakZoF2428I0E
         qmRC5YpRITOxf6uH31V6ZQW/7BfFTn1PBK3ETnaKhCqqvSDwA5F1IlHAwzR91ukdOnzS
         FXMIhGvKu9slZFE6zsAtHMW23CU9ATQhMeGhT+rZGIGHHURLbmR2LcylovLpXJyukMuz
         /6JpmG46ZVT2pS8u2VXdTDv9cMoxz1EpQheyLSRUROLHUd+Ero3Nga+B4tuccAHRUW3T
         x9beU1QNqK1EtJkjEjnSA+CqbCOkbXkOPGt73i4FEEGSW4ziSlldM9F2jCGHp8Uag+Rr
         u32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EEfT+/Xk3UB/4HUATa5/hCakNf33KlUIZWsqwenE1BQ=;
        b=NM/yORMCb83/l1gzPcfP1MaTnaaxeUGis7smcThcc/40kbhBEeMAi9B/WCcwOPrqc7
         XPf1uY2LbacQmK74E46ZEROHZHl/m3X5tBj56PaRy9bbEUYh1D+9AYa7cmqDxsd1no8Y
         JZQAmGWNXMqfSmXk72V6e5tRdIWH7125ctQ0r6Z5MK6pL2yIL28MAQmVdcW2gSEST9JE
         sL2+K4ZUKoBQFLt18ME+Al7dVWeaArenGxrO6/px78CC9hzdpLzODjhb0B71LldrAWgL
         hSn4LcJjKJzFj5iExle36eaPOCGP2vZmLwFvhH1ttvVHLbr/y52wx45MbBpC+Mi2PUb3
         NZsA==
X-Gm-Message-State: AO0yUKXobHjLqVFmWh8RkeUr8YdYN5WXFlauzxzKcldNH3Ixi6s2Mri/
	MM+9RY6uPk3Y2zJjjGuy0WA=
X-Google-Smtp-Source: AK7set/VNbRmGmJO0IIGoTmDNgrXldikBfGP+CjLWVJDiLd1YFoiKwVdFeSkP/pXxANw3CDFbgBHhw==
X-Received: by 2002:a54:4817:0:b0:386:ef92:380b with SMTP id j23-20020a544817000000b00386ef92380bmr634628oij.11.1679401150802;
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd2:0:b0:661:b84b:eb5e with SMTP id k18-20020a9d7dd2000000b00661b84beb5els2709639otn.3.-pod-prod-gmail;
 Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
X-Received: by 2002:a9d:6c0b:0:b0:69c:6b3:c7af with SMTP id f11-20020a9d6c0b000000b0069c06b3c7afmr997812otq.16.1679401150321;
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401150; cv=none;
        d=google.com; s=arc-20160816;
        b=XfkIoIJnJt/QI9pAgd4vJHAVxPczjn6vXL5N9Z9XtW8H9Ytsu2Ii0c4axenq5mgah9
         SjVzo343CNIXV96s3CXbw7DdthWvCP9bBHHAQorMmbnG9VTMQoIA5hndBFN3Zi+hNoiA
         Lt87jeIl0SwD7+bKi04FIfEbhIzZEcYmAaNT4pp4FxeOBZ9O/sXT/6z8MItEwKw3wiwl
         P8KGmp+lgmlRKAU44CD8qyPA5/lSDfYmYCXaPI4EzInk7PUBQutAwt77SRsO/TV44FxX
         26vOLtGDZ3hAgeF//FxCI0Jm9bkLtR+JifbKg1j2gf5bwa3UpXDWLoAM4XtP/eZ2LIWO
         9uzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=cfZAd35FN0amhtgpgHjD20e1zindTAFP6j5t+NhbkhY=;
        b=R3pyKGp6t5iQ8BBAI9FCiWLdlYxc6N4CwUjK5BAkH8kvCUicidhhSPYjJwTZn458z2
         0P8KW6c3CfoS3t2XfGYIBj311P0j1V9ePdDbL0+s1YkDr3kw3OJAc68ytagxUQQtggkS
         LfTjJcC3ZdyHP3DKvS4hi6DmEOJlChMQ5aXPAZxotqlJ5slnV2Z9iUm2KJkrj00UZ+uO
         XPi/F36UkHbSOUKXyjBMAqQtbh+Xfqx6wW6zeRfU6h0ZiXddQKyaR0HmC/5O0KKrw4Lt
         twUmtDAU5zh065gbbn2ufFl9Cur6EcHm4fMspCavEEgUM8r4ucWtv3Ly/HuTVCAIDk3n
         s/aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=UA1r54Nn;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id cb11-20020a056830618b00b0069f8cf409d9si183023otb.2.2023.03.21.05.19.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 91201b8ac7e211edb6b9f13eb10bd0fe-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:60fe81a3-c13d-4653-90d1-695d70e07d08,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:120426c,CLOUDID:53b5e9b3-beed-4dfc-bd9c-e1b22fa6ccc4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 91201b8ac7e211edb6b9f13eb10bd0fe-20230321
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1038699361; Tue, 21 Mar 2023 20:19:02 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
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
Subject: [PATCH v30 2/7] drm/mediatek: add ETHDR support for MT8195
Date: Tue, 21 Mar 2023 20:18:54 +0800
Message-ID: <20230321121859.2355-3-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=UA1r54Nn;       spf=pass
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
index ee7024fed65c..72935eb6935e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -782,6 +782,7 @@ static struct platform_driver * const mtk_drm_drivers[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-3-nancy.lin%40mediatek.com.
