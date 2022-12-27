Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBK6OVKOQMGQEVLCFTVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3d.google.com (mail-oa1-x3d.google.com [IPv6:2001:4860:4864:20::3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C28656828
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:05:01 +0100 (CET)
Received: by mail-oa1-x3d.google.com with SMTP id 586e51a60fabf-1447ffe6046sf5998046fac.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:05:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128300; cv=pass;
        d=google.com; s=arc-20160816;
        b=Er++SFuALKG62knEoM/ZjXo2oZ022FfUjZlKoYP6yasYjTbRCFGeyMtbfo42pUqJt6
         BXZVxCkJe381zK92hRBXU+ov/hP/FGsMMnVfXWtce4SarANV+9Lf41fZihSmlqqSfHu2
         p8o+nHSVdWyn/PHiPrLjds6RSCzJL71StnXF5ovRh5AjWizSpF5b7qVJNc9F+XfFVXMi
         t7MV0/qF9gkGt2hcrIj/LpO26rZ3cRMYStUHtuM47s/MmCqk9BmJLl2tNpHksKozxpY2
         BXAupzgjdFPjkmq5YNxuMrwGG0K/3kVt2mev2xEd+JrkCEU6TyyuqTYQx7PznUhmLxJd
         4jvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4VHFVz528uL1EQPztAlY7ENn4EY4z61oRydsfX548DA=;
        b=v0KqtNDyN/uPEQXzATuvj55TWYl4C8KqtWgHvByLQidIRa+r/3IZkleIq9jOrK4PO7
         nfz1T4HgrsszO4VWgDqPeMmXEc1sS2xTIi3gi7T8PonrZah37ni0A9LaZVN+5ESiHd4T
         vOLHZ8mKdQHEtDdgOjG39RWyDtLtkJJeP0EkMCb/RrynqF4aXSSrkHN5CZyBye8LeP1l
         RdmvPxw3Avn+2y6zsr7jq1BoAnl4F0elm7TBDTPIRZrSSav3hR1CYvxlWt37F1f7ampW
         4ZmaQRsIkFnCbsYO7+57o9k2h0Maolm80tswDcQAiD7ANulGK5cuVmGM7tk5kh8k9eTv
         Eh+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=ouWj5hbD;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4VHFVz528uL1EQPztAlY7ENn4EY4z61oRydsfX548DA=;
        b=dIxUUZytczB5eXuUYupU7tMttTi818r/cPy+9RprOaWTsRFazfrjNfLhG4D2C5ozWD
         C5pScLNUCM1FZj7VzWl+GyD0ImOMX151S3ArMA6RywO6r74b7rQ5KaLBdKeiaTVetCY3
         fySHWkFwYknddV8kWCF7ZA0rI20euHkRjYJ/uKe4GOHIH+bJSrfiR3T5GzpVVeypwJuZ
         uNAtNmRDf7zjaDVg9SgNvVvHZKpnvTf0xoQ9dMbHAV0KKNNUqhSGA7lqlwhzxDI6Cc5z
         YNbYpPnOu483TLqt9V8ZrmZVveFxQoMi1qqwbG8BtNeM5uOLtZRlZxGlQtQorgd9n1Qp
         0sRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4VHFVz528uL1EQPztAlY7ENn4EY4z61oRydsfX548DA=;
        b=odxYBp5ZgQG580se2IAN5xXyYoxRhELMD4eKMP9OyxolhL5nivqTc+roXLHblCltXJ
         UJ0hxgn63FO5W6s14eSoq/j/W96gsfsyto9oEUnnWs5EFM2HbAyXugDsAQPxugDz5d7M
         n0/VcUB8ZgrNU+on8TdXgOxsllzAlN4pk9P7xpYeFO79lKek6qwT/gpyUMCwVfSGDqWl
         ca2apQgCXbyS+jZ2ExperN5QZCj5WLTyEYiRkmkyJGwPZS0QKP39ofuW9FcWfoDwoewn
         lWBvW1K9qj+2yAU5DniXFQDtRooGIaw/q6Rh1QLd7zCv5F6rixcpTgWSnaIf6o+lNoxb
         r3WQ==
X-Gm-Message-State: AFqh2kqg4rinswb6VzFfJ8xzx43JyV4Yl6BHBdIN2jssm/USPn0YPBiq
	uRe7daYcwRMyDxeY5MJoOvs=
X-Google-Smtp-Source: AMrXdXuj/XZEBtPhcfQFAiFDjDPp/WYg6c/nKrFYmQgeBK8CWDP3P8EbrQOiRySJJmxl3vO9U+zCyw==
X-Received: by 2002:a05:6808:22a1:b0:35b:b20d:53c6 with SMTP id bo33-20020a05680822a100b0035bb20d53c6mr1431469oib.16.1672128299960;
        Tue, 27 Dec 2022 00:04:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:22fc:b0:668:d7a2:6181 with SMTP id
 t28-20020a05683022fc00b00668d7a26181ls2033987otc.11.-pod-prod-gmail; Tue, 27
 Dec 2022 00:04:59 -0800 (PST)
X-Received: by 2002:a05:6830:368a:b0:670:98f6:67b6 with SMTP id bk10-20020a056830368a00b0067098f667b6mr15060732otb.23.1672128299465;
        Tue, 27 Dec 2022 00:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128299; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/cnWBUmCYx2hlwDh5HdWlIrNwomeRjXwfUny9lshbmEx+kgzcqznv9ASYIeTMUSMH
         cjdIbeBh0EZqS3VUTDF3kda3BpZet9g2uxj0DMVNuHXNbSpIM+8EtsR3+GD/ORTJU6b0
         /46ue4t8Geb6dDRbVcuNtQiUoER9EtKopKDvT1eqZojai48LkUa4adqbg0OBh0oxHLtX
         VQZU+rcV+WoABY1Ved4IinaP7YiZfhFmvKtdhPhczq/7Pys5qHLdaixJYDFzjFjjcrd0
         r0Qm635pNhpfZU0xpMTDrLktEzhApWw1pC0ludR4qh017CN7OhlDTjy70zWQwmBnGZu/
         5dFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=2wK7ZaTxqS/qQSKmQ3bbtP7HLkO322kt/96MSixBH7E=;
        b=03JbyQ5Ojy3zBc4nC+pMUncPrS3S3/y7Maxq1XtuDMq5WoX5dcrZi6gSVPWDpPR6Cp
         BEc9gSm6rhKf4qPfkDSwZpywu506nSDY/DGbbhiCBibRQ5sFjkpClFk3gItlLGuO+R7c
         FsfiCBEW6PTKjev3A+EM/A4qPF+Edms5PweJntRFS8sT0ztcpm807p+y3MHIAT9yDFnY
         5tpZ9lRY0iDxPiZhB8zbI5CcytoeDt1XbOdnmA5dDsS8KC599F1Im8ha75Bz5JzJNFH0
         6luSXnKQP3a6No92kVVlf5EFtocS5kgbPSYvDFAz87+Q5gkyxa4aY8/wj6hHMpCPMXV4
         xjmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=ouWj5hbD;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id j69-20020a9d17cb000000b0066fe878940fsi1175153otj.5.2022.12.27.00.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: c488a64943cb43fcbc27afaa0679232d-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:93b60eb4-1b13-4fb2-a072-e10982c542fc,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:1,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:96
X-CID-INFO: VERSION:1.1.14,REQID:93b60eb4-1b13-4fb2-a072-e10982c542fc,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:1,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTION
	:quarantine,TS:96
X-CID-META: VersionHash:dcaaed0,CLOUDID:37ace852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:221227160449ALL12SL5,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: c488a64943cb43fcbc27afaa0679232d-20221227
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1278566091; Tue, 27 Dec 2022 16:04:47 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:04:46 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, CK Hu
	<ck.hu@mediatek.com>, <wim@linux-watchdog.org>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, Jason-JH Lin <jason-jh.lin@mediatek.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 07/11] soc: mediatek: add cmdq support of mtk-mmsys config API for mt8195 vdosys1
Date: Tue, 27 Dec 2022 16:04:39 +0800
Message-ID: <20221227080443.6273-8-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=ouWj5hbD;       spf=pass
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

Add cmdq support for mtk-mmsys config API.
The mmsys config register settings need to take effect with the other
HW settings(like OVL_ADAPTOR...) at the same vblanking time.

If we use CPU to write the mmsys reg, we can't guarantee all the
settings can be written in the same vblanking time.
Cmdq is used for this purpose. We prepare all the related HW settings
in one cmdq packet. The first command in the packet is "wait stream done",
and then following with all the HW settings. After the cmdq packet is
flush to GCE HW. The GCE waits for the "stream done event" to coming
and then starts flushing all the HW settings. This can guarantee all
the settings flush in the same vblanking.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-mmsys.c       | 63 ++++++++++++++++++--------
 include/linux/soc/mediatek/mtk-mmsys.h | 15 ++++--
 2 files changed, 55 insertions(+), 23 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 241416803c23..3383567219f8 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -97,12 +97,27 @@ struct mtk_mmsys {
 	const struct mtk_mmsys_driver_data *data;
 	spinlock_t lock; /* protects mmsys_sw_rst_b reg */
 	struct reset_controller_dev rcdev;
+	struct cmdq_client_reg cmdq_base;
 };
 
-static void mtk_mmsys_update_bits(struct mtk_mmsys *mmsys, u32 offset, u32 mask, u32 val)
+static void mtk_mmsys_update_bits(struct mtk_mmsys *mmsys, u32 offset, u32 mask, u32 val,
+				  struct cmdq_pkt *cmdq_pkt)
 {
 	u32 tmp;
 
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	if (cmdq_pkt) {
+		if (mmsys->cmdq_base.size == 0) {
+			pr_err("mmsys lose gce property, failed to update mmsys bits with cmdq");
+			return;
+		}
+		cmdq_pkt_write_mask(cmdq_pkt, mmsys->cmdq_base.subsys,
+				    mmsys->cmdq_base.offset + offset, val,
+				    mask);
+		return;
+	}
+#endif
+
 	tmp = readl_relaxed(mmsys->regs + offset);
 	tmp = (tmp & ~mask) | (val & mask);
 	writel_relaxed(tmp, mmsys->regs + offset);
@@ -119,7 +134,7 @@ void mtk_mmsys_ddp_connect(struct device *dev,
 	for (i = 0; i < mmsys->data->num_routes; i++)
 		if (cur == routes[i].from_comp && next == routes[i].to_comp)
 			mtk_mmsys_update_bits(mmsys, routes[i].addr, routes[i].mask,
-					      routes[i].val);
+					      routes[i].val, NULL);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_connect);
 
@@ -133,42 +148,45 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 
 	for (i = 0; i < mmsys->data->num_routes; i++)
 		if (cur == routes[i].from_comp && next == routes[i].to_comp)
-			mtk_mmsys_update_bits(mmsys, routes[i].addr, routes[i].mask, 0);
+			mtk_mmsys_update_bits(mmsys, routes[i].addr, routes[i].mask, 0, NULL);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
 
-void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width, int height)
+void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width, int height,
+				  struct cmdq_pkt *cmdq_pkt)
 {
 	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_MERGE0_ASYNC_CFG_WD + 0x10 * idx,
-			      ~0, height << 16 | width);
+			      ~0, height << 16 | width, cmdq_pkt);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_merge_async_config);
 
-void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height)
+void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height,
+			  struct cmdq_pkt *cmdq_pkt)
 {
 	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_HDRBE_ASYNC_CFG_WD, ~0,
-			      be_height << 16 | be_width);
+			      be_height << 16 | be_width, cmdq_pkt);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_hdr_config);
 
 void mtk_mmsys_mixer_in_config(struct device *dev, int idx, bool alpha_sel, u16 alpha,
-			       u8 mode, u32 biwidth)
+			       u8 mode, u32 biwidth, struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_mmsys *mmsys = dev_get_drvdata(dev);
 
 	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_MIXER_IN1_ALPHA + (idx - 1) * 4, ~0,
-			      alpha << 16 | alpha);
+			      alpha << 16 | alpha, cmdq_pkt);
 	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_HDR_TOP_CFG, BIT(19 + idx),
-			      alpha_sel << (19 + idx));
+			      alpha_sel << (19 + idx), cmdq_pkt);
 	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_MIXER_IN1_PAD + (idx - 1) * 4,
-			      GENMASK(31, 16) | GENMASK(1, 0), biwidth << 16 | mode);
+			      GENMASK(31, 16) | GENMASK(1, 0), biwidth << 16 | mode, cmdq_pkt);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_mixer_in_config);
 
-void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap)
+void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap,
+				     struct cmdq_pkt *cmdq_pkt)
 {
 	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_MIXER_IN1_PAD + (idx - 1) * 4,
-			      BIT(4), channel_swap << 4);
+			      BIT(4), channel_swap << 4, cmdq_pkt);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_mixer_in_channel_swap);
 
@@ -179,20 +197,20 @@ void mtk_mmsys_ddp_dpi_fmt_config(struct device *dev, u32 val)
 	switch (val) {
 	case MTK_DPI_RGB888_SDR_CON:
 		mtk_mmsys_update_bits(mmsys, MT8186_MMSYS_DPI_OUTPUT_FORMAT,
-				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB888_SDR_CON);
+				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB888_SDR_CON, NULL);
 		break;
 	case MTK_DPI_RGB565_SDR_CON:
 		mtk_mmsys_update_bits(mmsys, MT8186_MMSYS_DPI_OUTPUT_FORMAT,
-				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB565_SDR_CON);
+				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB565_SDR_CON, NULL);
 		break;
 	case MTK_DPI_RGB565_DDR_CON:
 		mtk_mmsys_update_bits(mmsys, MT8186_MMSYS_DPI_OUTPUT_FORMAT,
-				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB565_DDR_CON);
+				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB565_DDR_CON, NULL);
 		break;
 	case MTK_DPI_RGB888_DDR_CON:
 	default:
 		mtk_mmsys_update_bits(mmsys, MT8186_MMSYS_DPI_OUTPUT_FORMAT,
-				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB888_DDR_CON);
+				      MT8186_DPI_FORMAT_MASK, MT8186_DPI_RGB888_DDR_CON, NULL);
 		break;
 	}
 }
@@ -207,9 +225,9 @@ static int mtk_mmsys_reset_update(struct reset_controller_dev *rcdev, unsigned l
 	spin_lock_irqsave(&mmsys->lock, flags);
 
 	if (assert)
-		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), 0);
+		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), 0, NULL);
 	else
-		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), BIT(id));
+		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), BIT(id), NULL);
 
 	spin_unlock_irqrestore(&mmsys->lock, flags);
 
@@ -277,6 +295,13 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 	}
 
 	mmsys->data = of_device_get_match_data(&pdev->dev);
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	ret = cmdq_dev_get_client_reg(dev, &mmsys->cmdq_base, 0);
+	if (ret)
+		dev_dbg(dev, "No mediatek,gce-client-reg!\n");
+#endif
+
 	platform_set_drvdata(pdev, mmsys);
 
 	clks = platform_device_register_data(&pdev->dev, mmsys->data->clk_driver,
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index de84ca230d33..8eb5846985b4 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -6,6 +6,10 @@
 #ifndef __MTK_MMSYS_H
 #define __MTK_MMSYS_H
 
+#include <linux/mailbox_controller.h>
+#include <linux/mailbox/mtk-cmdq-mailbox.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+
 enum mtk_ddp_comp_id;
 struct device;
 
@@ -82,13 +86,16 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 
 void mtk_mmsys_ddp_dpi_fmt_config(struct device *dev, u32 val);
 
-void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width, int height);
+void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width,
+				  int height, struct cmdq_pkt *cmdq_pkt);
 
-void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height);
+void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height,
+			  struct cmdq_pkt *cmdq_pkt);
 
 void mtk_mmsys_mixer_in_config(struct device *dev, int idx, bool alpha_sel, u16 alpha,
-			       u8 mode, u32 biwidth);
+			       u8 mode, u32 biwidth, struct cmdq_pkt *cmdq_pkt);
 
-void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap);
+void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap,
+				     struct cmdq_pkt *cmdq_pkt);
 
 #endif /* __MTK_MMSYS_H */
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-8-nancy.lin%40mediatek.com.
