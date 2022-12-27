Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKGOVKOQMGQEPEB2YGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F5B656825
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:58 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id om16-20020a17090b3a9000b002216006cbffsf10643710pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128297; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXHWVTJxrlhNK5YhQkp5FHRB5zShxni1wak164D2lLUnTeHEFdLoe5JhEGDI9tUWom
         gmAXccnnmuMRJ/aTRxMI9TRAojg8F9winETXFE3N7BnaQMwySC82y56j2Gm0fcougHhb
         /ZKGe6L/bCBlqNgabGCr3ZXp4MDu4rrs6Nb2E8iYcL0iHrf8491uCWn2TZCiPsuqpAHz
         nTBJ9xU+FjMejo59waL3Ngc9kNcsGbWuONIGihMPheToN1IfuYpQy8CsCJZfr3vLlw+j
         1Ve/bt9tHAjGI/ycpqu+OVeKz2IJIXSAU7Y6xmIm53dzWhh+1qR9ttVi/vleBS/NRabw
         Zqhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=PZAIq2sEu6N1hYW9S2Xt7mPTixErXTea4iodyqqIxF0=;
        b=0pHlt2jj5jl+STrI5atIxNZvxhO95orO5j/DInbnRb7cx88ZF42rnbG6Z1lyLOV3TJ
         rWpqlB5+IHrzAxqwF9HTAGpXa0MPvj0N3qtRHZkomNqDc31Vi40DGIagGMhi7J7q36j5
         jrmLO1JFsbHeFdh+EAnkOoTcZjtMQQJ36MkvY7xoO/YvFwiB4C2z2uAhJnjZzn7R5rkm
         HLcvyUoZktD2JP5foOay040wZgX7+DSWreZ1s02oP0/Wj9Sj/Q1jrzKDf0nzbLSenL4J
         9qDFO3Y6cVA/wqW4y1yenJd4qxZuSp7J2bGdcpre2E43rMX7aG/M1QprvYtN9hmCIUjE
         KeUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rklw3Zdf;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PZAIq2sEu6N1hYW9S2Xt7mPTixErXTea4iodyqqIxF0=;
        b=Ve1qjxsXzDIx6b7AOssZSxunu5qplIXUY3ekwngSowAIk4ZlO7uZy5aL96YYUtdNoc
         0iiiFelRUmwExKxOCt0pPmUVdt90cD3+dVpAV1s1jl+TWD28RCfe+mjs/4bGnZoiZCaN
         6cxnDMUKYc+75l9e/w6PbizE9fzgRbso8TySAy9JmqtayDEo9HhXrZa2xKPW/CUZB+oU
         rGSyuGJKOOohiwvx2iOTDoSpy+oRV0IquDlzQe7aTIdkGZjhLtOLzBSWJBmBzmz7Bccd
         SEBXoetHRFfZ2Kfu4AP7yKqpQG23yvDHeLJdxOOy9j4tHYx4G502HS3pkINMqfKn46cQ
         1Qgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PZAIq2sEu6N1hYW9S2Xt7mPTixErXTea4iodyqqIxF0=;
        b=6WKXkJp5eSMiPiSJYd/4Ph/RTrpaYWUAtnapCaN/hoXC5rj94/H44hlzjt4hmMMHe1
         x7SEsVBrsshzeTkF+5GkaiKEi7Y8k8vKX6cQVgmjMPOcg+RscaCxG2hGtmtLARAl6ktB
         wsKR2LRu840nWSG8+6NNupFY2YLlGk9d33FMpWPgLrlkLnUPnWllX8vT+E/18IRzl6mb
         ubRYS1DOkVw6Qwjj6PGOkzKVhqXrkvOSSgn6hYabwSn/AWnf30hYbH/xDZ/RJ3VAf+rg
         7DaYVdmBbVwwayZNfL++WneEvaRMMcvjRHY3NWRC3mwkruuDorViRYVfIqA+xzcL7xYk
         m1rQ==
X-Gm-Message-State: AFqh2koZt5eS1ulAYqTpuhTZwB6Soy3d8owVATJpOjsq6x3yQdgDIxab
	Sd1lWLCjP/eTAk5M+B1dRik=
X-Google-Smtp-Source: AMrXdXtrlgU++gfCSjSsqCZ+l5i3EkFMLXsRUGtDVOkbt7C8Y4L9ECeg+UNuC2IawmYNSPh9Czf5YQ==
X-Received: by 2002:a17:902:860a:b0:18b:6f72:92fe with SMTP id f10-20020a170902860a00b0018b6f7292femr1642583plo.48.1672128296766;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ebc9:b0:189:b2b2:56d5 with SMTP id
 p9-20020a170902ebc900b00189b2b256d5ls14221064plg.0.-pod-prod-gmail; Tue, 27
 Dec 2022 00:04:56 -0800 (PST)
X-Received: by 2002:a17:90b:3711:b0:223:f7a6:1c1e with SMTP id mg17-20020a17090b371100b00223f7a61c1emr23614827pjb.31.1672128296074;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128296; cv=none;
        d=google.com; s=arc-20160816;
        b=UEIlCt26RIrZkO1Ud3TC9/4kpSiDk7RXsl6BJ317m6/55cGxO5Y5no/yZIFdkKLbZs
         X99SB/umxFi5YWfAopVEJnVti/kdFz4z9VU2b6L5ntC8Q2+SPvf7BFs/dFGiOpe57UXQ
         P05/o3BEFsCbRhOHvt1UsbIeN+NPAq9MN53ehDBKJO+xAlrW3QcaQKOu2FDkEUoCTP4n
         M84bMuf2qRqEBRZCRjowN4BomqGuWoJW2nQ1ofvppO3pcUXCagsQNOa+R6/vZh1HSf4e
         5Cu8vauQHXP25SofQveYqFl8bHTUg5lfi7vd/JY1I8CDUUFTRhEuwOS1XJuLzD+zGhyc
         0NBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z+Qe43z09URg8GDNo/SBM9z0+fM6yXCYyxpqjKQUwcs=;
        b=M+y7CFmR/9QCyMow9+U1ivEfubPrf8QGVzcESDkeSTuIFO9YFo8dBHCJl3qykVs2Rk
         b75Z72WlocXalW8IExE3bnJC7QKtqTSc679tQEnM8pVyUmhT4/ZYdI2aHNLdakVXNl9O
         a7LWS1gx/oI33VgpV5tiG66F+rTM+nkcikSGPOYziMpMWfw593XuUy6SHEXw24O1UxY1
         MqQxKlLcqCVZBmb9FY8YzTg/hG7yM2iz0XQsCkWHz5wFTR9j4dFr+fJ7e0bGwDLMX/KP
         2XNL3C2scLQZj15+YT9tVddYuxMvC5+tqM3iW+fxMM2H57DyS+VXINfsTPo7PKZqbLE+
         4vCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rklw3Zdf;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id pg4-20020a17090b1e0400b00213290fa218si835291pjb.2.2022.12.27.00.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: bcc12d15539e4f889e0385882ebec0f5-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:eaa52261-0bfc-411f-a50c-11888d071ce2,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:90
X-CID-INFO: VERSION:1.1.14,REQID:eaa52261-0bfc-411f-a50c-11888d071ce2,IP:0,URL
	:0,TC:0,Content:-5,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTIO
	N:quarantine,TS:90
X-CID-META: VersionHash:dcaaed0,CLOUDID:33ace852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:221227160449M5OTKEZ0,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: bcc12d15539e4f889e0385882ebec0f5-20221227
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 444891943; Tue, 27 Dec 2022 16:04:47 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:04:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:04:45 +0800
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
Subject: [PATCH v29 06/11] soc: mediatek: add mtk-mmsys config API for mt8195 vdosys1
Date: Tue, 27 Dec 2022 16:04:38 +0800
Message-ID: <20221227080443.6273-7-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=rklw3Zdf;       spf=pass
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

Add four mmsys config APIs. The config APIs are used for config
mmsys reg. Some mmsys regs need to be set according to the
HW engine binding to the mmsys simultaneously.

1. mtk_mmsys_merge_async_config: config merge async width/height.
   async is used for cross-clock domain synchronization.
2. mtk_mmsys_hdr_confing: config hdr backend async width/height.
3. mtk_mmsys_mixer_in_config and mtk_mmsys_mixer_in_config:
   config mixer related settings.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mt8195-mmsys.h    |  6 +++++
 drivers/soc/mediatek/mtk-mmsys.c       | 35 ++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-mmsys.h |  9 +++++++
 3 files changed, 50 insertions(+)

diff --git a/drivers/soc/mediatek/mt8195-mmsys.h b/drivers/soc/mediatek/mt8195-mmsys.h
index fd7b455bd675..454944a9409c 100644
--- a/drivers/soc/mediatek/mt8195-mmsys.h
+++ b/drivers/soc/mediatek/mt8195-mmsys.h
@@ -75,6 +75,12 @@
 #define MT8195_SOUT_DSC_WRAP1_OUT_TO_SINA_VIRTUAL0		(2 << 16)
 #define MT8195_SOUT_DSC_WRAP1_OUT_TO_VPP_MERGE			(3 << 16)
 
+#define MT8195_VDO1_MERGE0_ASYNC_CFG_WD				0xe30
+#define MT8195_VDO1_HDRBE_ASYNC_CFG_WD				0xe70
+#define MT8195_VDO1_HDR_TOP_CFG					0xd00
+#define MT8195_VDO1_MIXER_IN1_ALPHA				0xd30
+#define MT8195_VDO1_MIXER_IN1_PAD				0xd40
+
 #define MT8195_VDO1_VPP_MERGE0_P0_SEL_IN			0xf04
 #define MT8195_VPP_MERGE0_P0_SEL_IN_FROM_MDP_RDMA0			1
 
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index d235cb678da0..241416803c23 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -137,6 +137,41 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
 
+void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width, int height)
+{
+	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_MERGE0_ASYNC_CFG_WD + 0x10 * idx,
+			      ~0, height << 16 | width);
+}
+EXPORT_SYMBOL_GPL(mtk_mmsys_merge_async_config);
+
+void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height)
+{
+	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_HDRBE_ASYNC_CFG_WD, ~0,
+			      be_height << 16 | be_width);
+}
+EXPORT_SYMBOL_GPL(mtk_mmsys_hdr_config);
+
+void mtk_mmsys_mixer_in_config(struct device *dev, int idx, bool alpha_sel, u16 alpha,
+			       u8 mode, u32 biwidth)
+{
+	struct mtk_mmsys *mmsys = dev_get_drvdata(dev);
+
+	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_MIXER_IN1_ALPHA + (idx - 1) * 4, ~0,
+			      alpha << 16 | alpha);
+	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_HDR_TOP_CFG, BIT(19 + idx),
+			      alpha_sel << (19 + idx));
+	mtk_mmsys_update_bits(mmsys, MT8195_VDO1_MIXER_IN1_PAD + (idx - 1) * 4,
+			      GENMASK(31, 16) | GENMASK(1, 0), biwidth << 16 | mode);
+}
+EXPORT_SYMBOL_GPL(mtk_mmsys_mixer_in_config);
+
+void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap)
+{
+	mtk_mmsys_update_bits(dev_get_drvdata(dev), MT8195_VDO1_MIXER_IN1_PAD + (idx - 1) * 4,
+			      BIT(4), channel_swap << 4);
+}
+EXPORT_SYMBOL_GPL(mtk_mmsys_mixer_in_channel_swap);
+
 void mtk_mmsys_ddp_dpi_fmt_config(struct device *dev, u32 val)
 {
 	struct mtk_mmsys *mmsys = dev_get_drvdata(dev);
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index d4b535a3383e..de84ca230d33 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -82,4 +82,13 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 
 void mtk_mmsys_ddp_dpi_fmt_config(struct device *dev, u32 val);
 
+void mtk_mmsys_merge_async_config(struct device *dev, int idx, int width, int height);
+
+void mtk_mmsys_hdr_config(struct device *dev, int be_width, int be_height);
+
+void mtk_mmsys_mixer_in_config(struct device *dev, int idx, bool alpha_sel, u16 alpha,
+			       u8 mode, u32 biwidth);
+
+void mtk_mmsys_mixer_in_channel_swap(struct device *dev, int idx, bool channel_swap);
+
 #endif /* __MTK_MMSYS_H */
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-7-nancy.lin%40mediatek.com.
