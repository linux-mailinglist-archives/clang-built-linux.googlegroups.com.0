Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3OQVKOQMGQEIZGMAZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x113f.google.com (mail-yw1-x113f.google.com [IPv6:2607:f8b0:4864:20::113f])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB6C65682F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:22 +0100 (CET)
Received: by mail-yw1-x113f.google.com with SMTP id 00721157ae682-46eb8a5a713sf85395187b3.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128621; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZC2qnqkhYsdgjGwsR9IIGKLxMYbR0CS5ZiAhwf8+JdLV0Hca7R6vc5lsoQthCO9ln
         EcO6zXZ0Q7GO7JetGdyp5AShiE4xwh824X0fd5r0VAyQTd6gs8AvJwEapZCDHQwDOwVK
         y5KRB1hYe6L6+ZvNE4A/ARP4Ikei3Y+6sTZI5QQsGpRUbSUudsNmvvessxeZPenlvajf
         IkU0mRrlJa023cgre2McuVohz6czpZnYKbf7F2sbErYi3FgRXQu1FGriI+MdapOuvxYG
         BhVP9T7juMNzhXoKkNpg/MUR7d7TUFG2x8XzM1baBUzEsr1USYcu8yZuAm0AiPCQL0QE
         gH4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wpv53iMk18B7uEkRUpUHvc+OzP8cU1sn/M+s/HWmIKY=;
        b=SylHNaF4bT9PRKPxUZfffsA16pqbfcCSNIdAZJDXA9Mk4gOr2Sivk1CecfU7BL6qH5
         LP9UDtPC21vXnd9yFzJeSc/tgL3tcBCfUUjqv5XovOeGF9QCF5K0+naQyRUrTjUZIdrp
         QyWdi8/A8Q3bH592W0wPtlNn+oD4HM8Hm5/4eQ3lW5WhdoOsIkZAAHjHlaE9RQGLsv4Y
         4/Aum0fJDbogpVZITWwKUh6M+tszpV423u/hDboXXGE7uhWwqXa0HHYzNDlRzsnYjRHk
         hzGHlMX52e0k/QTfiNnW/6AyCMaqeVkavJxJztYAtZEQq3OiGzMBuW/JpSA+rXjID/SW
         TnlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=lzT4phT1;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wpv53iMk18B7uEkRUpUHvc+OzP8cU1sn/M+s/HWmIKY=;
        b=SLL3jfILUpNr/E9YGCO3HtgVj6126BA5iqO+4KTh2FJIoTXwJONLuQo75aaR1E75Tx
         4x07sRD4/LpFTTH4E3vUV0SNs4sKWkjpfLmY8579YmY97F9KVO1xDGPSYJztRLFNxqbJ
         9xGaxKe+MRyvAh+yVxqQdTXKPuLtUeHOdhTzcGaR0Szaa5yaMc1At4mzDcuTTmZMU2sa
         y5D8PNHPUXTwwhvg5R4l0xBJvf7lNvHfQgYu7e6v5ASK6vs3vNQ9sAfE64dmzWSdYugK
         lTAGx3LgvtIJZesuiZ3icrYWF6khl1p1gzhxqh4eW1HuOabVqNc/q1Sxqdfp4A++BKIS
         qbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wpv53iMk18B7uEkRUpUHvc+OzP8cU1sn/M+s/HWmIKY=;
        b=Yib0OzgnxmCpdlVbK7eAyOis6jqFApeJELQlBgSUY6H4YR/vT3nx0V83rtrRiC/Xfw
         ieQq7Xl4d5d3fiNWx4JCcq5FrI3RzQSJR/k/NiBACRIAt3Sjc44XuY1b6myYJVsY011f
         ae35jMuvv9UW2gzQGxrN3WBrZfzRhfFHoOEUhiqS1IjHFgeo2X/N8A4UPipkdDY45JKs
         WzlhQwIi36duGu0oYAYgZbQlEWaPecf8CDyUz+r1+AjKy/2cQBgPiVPwUpOfsRczLs43
         gTDaaDAkwZAfNJpY7CoSCumd1VDNdc37CyUM/5j333ZMzPPgN+HoF7O+YPYIE/1haaFq
         mfkw==
X-Gm-Message-State: AFqh2krkHrQAh123CAJk2Qt9VF4BFqYhJcshPSVTUaoGKCSaRVlw25ll
	ukXYvp48hheuZeREw7qeLAg=
X-Google-Smtp-Source: AMrXdXtA1iGVOWL0Oy3qJVl71DTVSmi2dgj4Dace08f/TPPii80jmsbLmlFp6e6zWMa8zp+y1bjoJQ==
X-Received: by 2002:a25:3386:0:b0:6f9:fbcd:8fa1 with SMTP id z128-20020a253386000000b006f9fbcd8fa1mr2766120ybz.354.1672128621722;
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:690a:0:b0:6ca:10dd:4459 with SMTP id e10-20020a25690a000000b006ca10dd4459ls6637234ybc.2.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:10:21 -0800 (PST)
X-Received: by 2002:a25:2d7:0:b0:762:235b:d5 with SMTP id 206-20020a2502d7000000b00762235b00d5mr20729799ybc.57.1672128621132;
        Tue, 27 Dec 2022 00:10:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128621; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/3twbxjbQnXZDgtVqvIS/VbkcJ0IDDqx4y87adz60JA/yJMlDFZ4wiFMqup8y4mPi
         pbGI0FijkKoSBVkiEyZgdHXbh4Ve47Tm0PiOCZXJnSiVkcOxV+tce8KAIg8DQuhXHw49
         labWwGd/SG15iYuBxmRq5C2XOIalIo8v4J82nitMq9frU2r4eVW1M/kkYR49KrqFQ9p3
         6AlcimApvt/76EF6FLgfFuPd4+4cWvl+PEutx6vGUEp8UtbxMHkWuyzimq8wz9yr/3Ve
         fqspT4PAV08+jLIYvtiS4Ry0OYeLaoG9KPelkpDGq0A64ldSv6RIttC8vMXrnGidJaBr
         4Zww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=JKdfQkKaCv2Djx4vHo/T77OGyTt0M7lfCyXqFM+MAQY=;
        b=T8zymJMhyg4a/pkyDPijPWDqCYgwV6wKLT7GV1xQbHRaQv+zEimFbPmBJIbHyTtiUK
         zObAZ7FQpJVAxKO8gM6WLhsA2rgyaCDsiTzuWi0WJ/2Dftae5lz648Xiq2zZ+B8QGbt1
         99z2r3U9YCyQm5bJr7XxzRlieB5tiRQxp7num9eBE8v/39AhIbunAURsaqH7IM7lmm9z
         t3DRgAYBwuA3yMGR/hcRUz6HwX4BgWCezse11xXeZC9kFDDBVywqHxeC5UEi83D+YJ/1
         UYIR0UG2L7fMvdo4t3nyZA+g352sd3t361oiRQPUUM2HkTDYAe+vAOfYk6WlBclCei4o
         jkdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=lzT4phT1;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id m65-20020a253f44000000b006ddea715dd2si958950yba.0.2022.12.27.00.10.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: b9a60ccc3ad64250aa20f57b74aea92b-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:d3aceb11-7150-4d94-bd92-1804586f6cef,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:dcaaed0,CLOUDID:dbdb838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: b9a60ccc3ad64250aa20f57b74aea92b-20221227
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1372984058; Tue, 27 Dec 2022 16:10:14 +0800
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
Subject: [PATCH v29 7/7] drm/mediatek: add mediatek-drm of vdosys1 support for MT8195
Date: Tue, 27 Dec 2022 16:10:11 +0800
Message-ID: <20221227081011.6426-8-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=lzT4phT1;       spf=pass
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

Add driver data of mt8195 vdosys1 to mediatek-drm.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 442ef79d5a3f..b0b584440e1a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -208,6 +208,12 @@ static const unsigned int mt8195_mtk_ddp_main[] = {
 	DDP_COMPONENT_DP_INTF0,
 };
 
+static const unsigned int mt8195_mtk_ddp_ext[] = {
+	DDP_COMPONENT_DRM_OVL_ADAPTOR,
+	DDP_COMPONENT_MERGE5,
+	DDP_COMPONENT_DP_INTF1,
+};
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
 	.main_path = mt2701_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -277,7 +283,14 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data = {
 	.main_path = mt8195_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt8195_mtk_ddp_main),
-	.mmsys_dev_num = 1,
+	.mmsys_dev_num = 2,
+};
+
+static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
+	.ext_path = mt8195_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt8195_mtk_ddp_ext),
+	.mmsys_id = 1,
+	.mmsys_dev_num = 2,
 };
 
 static const struct of_device_id mtk_drm_of_ids[] = {
@@ -301,6 +314,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys0",
 	  .data = &mt8195_vdosys0_driver_data},
+	{ .compatible = "mediatek,mt8195-vdosys1",
+	  .data = &mt8195_vdosys1_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-8-nancy.lin%40mediatek.com.
