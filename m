Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBL5SQSRAMGQE2WI7GTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4203C6E90FD
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 12:51:29 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id af79cd13be357-74a9043b68bsf35876885a.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 03:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681987888; cv=pass;
        d=google.com; s=arc-20160816;
        b=m1vsAfCcH62g8Yjig0+8ixTIFDCorP1Ne2TCwEGgk4zm7kOC6rsGGdCRReS0X4jfyo
         UvE9buGyOihXCaI1IgkD09ygemRjbyBWvJXtaqq1ttGSF1jx88BIV5T0xQTA89yVRDE7
         Tbb1QswVwloXp25BeUmUmpqzyY5mvP0qxUp1+XOqmpUYiicmUzJTlB9eKHfLkwSy0X0C
         tYmGictK07fPWmENwx49tdO20HuccoLn0H9FEMqwojM8/qnDFvOQmyUul5fysd7yAe0B
         Ewr53T6BeZl0afNzU+ZVIDEioiVEaAFFxPuiIXUp0NwRn2+QmYeTNN53zQcN4bJ5eywa
         aE2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=vcBJEIyi0nI7GORJAXd4SvSRL5BUVyDm86CMuVyGaDk=;
        b=A2c7y3nKxIN407J2OA1i4Msf33e32Zr9xG4d1fNVkht5jpISC6bnFWjhALnWh9SQ/T
         rubWoGRYoWaNnd+Y05YcGSI9F3+QhTsQziA4HigPBOsZXiucHQd+niENz66FAJ1kEHaE
         U99VUJSdYgiqZCtkAT80H7zy7mO51KYeiVtpPd/HVCIXEtAV7L7CaiOVuheTp27jDFwS
         QWS8Iy/ilNTHEeTBRMtxpkcBMYegVmDb9ZK5kEDUboKNCVZ2s3yT9XXcwdOekHhXNUKm
         DGyEQecQ7DJx6xSLI2fwuq+G1pS5VMd/wwdadpRnF6xVDovqggC/CLHQ0jM7XKO/R3/L
         BF7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=lArS8IsV;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681987888; x=1684579888;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vcBJEIyi0nI7GORJAXd4SvSRL5BUVyDm86CMuVyGaDk=;
        b=IMeE2EChHbO8JpMflQuuS1ho9G5j7LNK/Pr8Tdw9O9dfO10+uh2iKXWz6+wSftfgbh
         0wKXXYIVSl5RTFVLu+7nKj7NrMXQi/4NWFMp5esOyY1VoxD1N5FK0Er0HLtQEbLrSGbe
         MMy+QRATxGVh8Buf2zqcd7ArR2xgJg7+Wgheh9tTBEDUKJ/WPTunqXbxHs8yO2aFTEq8
         0Rgfu1/GFXslTMEdIDhAqu/QiG69pj/AZFw4cGiE0+Cpxr0gI1KZqB1JXNaaygb7Y26d
         slV1rh8wxUBoalyQcv1kXgm+58tFONu4xBMOWwNhZfdwO7wRW/EpNFAW1wt86YwbxRs1
         eamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681987888; x=1684579888;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vcBJEIyi0nI7GORJAXd4SvSRL5BUVyDm86CMuVyGaDk=;
        b=ee6rebW4pXvjmHWMJiPUH4W22wMd0PlIrAwRDwb3Fi1J02D8YuC4KJp9E9XgExBi8H
         GUvXLmO9LnsLfecxTIuUgPUPiRHs5YB/GtDVF7RrpXi8B/osqU3ns8+n6Szx5PAYHE4V
         uyOib25U7OqtCJv3DaNm6ZPXoMXLSTwsQdtbFlVdZQmTyTe3cB6RWxvm/flhPTrX0C7T
         nHyyRats97A7SuMOI0q1rJmG2+mLFFe2re9PwgZQzLITsXM7WdmRJp2T60yc2sXmYXrA
         JsfP0V6pUq41PdGEDA1W+6GtPsNhDQiwd/l4GTdcBv8bWbk+XvoJhkDGFXZ/A/zdBLl/
         kRjg==
X-Gm-Message-State: AAQBX9c7kY3RpIzeSQCd1jdWK/rX29Vb+l1yQCK7GEVhWs2sucvpHnS/
	Y9cjqzlhFB6mfucjioC5t7I=
X-Google-Smtp-Source: AKy350a+EGS3pA91joDpLRFIvkLigI4V9txC6c9O4EISEKas/Gi6/oYX6OriMasWFJF4siy2gsXf7w==
X-Received: by 2002:ac8:58c9:0:b0:3ef:3266:940d with SMTP id u9-20020ac858c9000000b003ef3266940dmr255588qta.0.1681987887822;
        Thu, 20 Apr 2023 03:51:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5690:0:b0:5ef:61a6:9da2 with SMTP id bd16-20020ad45690000000b005ef61a69da2ls1040698qvb.11.-pod-prod-gmail;
 Thu, 20 Apr 2023 03:51:27 -0700 (PDT)
X-Received: by 2002:a05:6214:2504:b0:5ef:435f:dc7e with SMTP id gf4-20020a056214250400b005ef435fdc7emr1376805qvb.52.1681987887277;
        Thu, 20 Apr 2023 03:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681987887; cv=none;
        d=google.com; s=arc-20160816;
        b=wkrufw8mk6IGfUDGLsDG7wkPW2/bVUASLowzikvt1kbr1CYU5OcUqGqOU/Yu8R3MbD
         3AZ1p5u0ITgPvUQn7ajR/2tQRVkNhQdcb/7YdB+2lGJoZjbV3VtZCoERqQZrQzAhHqEH
         veAyq9qwMVcUOylIR5teXYPAUFKPk3O7F3hyFfgoeAeg52jpb/juHg3mRH818AoOKnjH
         8Fg5MJzQ3mz5EJEZ/DhLtMEIf5ECFmDKdF+GzQLlLWYjQz66qg85sK7ucr1eWDSMThos
         6jh2mxKx2ugTqfIlsH0SFt2dg3Xc0eCo98e+u5+42I1RGGbXUoGuIghV9QyuucNMv1Hb
         tBJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=HRqBpQlE3SEtleY2HNlMwleNJ7KOCqqrXuqNhzkdE4c=;
        b=jV8KSk6ZJBd5mKw5rzYywL8bTfy8gnzZxXAOafFTUbPpBWnfr1fvlBu20X+dAWwG7u
         ZYQxS/XPMYDAxvt7F+gDRiYmNDdAeT7IVIipBQcBGjdW39wHQWgFY0N73k/6qRMrKT2D
         1NkOfrpxkFeD+3IcUKHwcXux6Grk179BYIkjlGzDB/ZTclhMxWWTbpAj6AQGrjzzLvRJ
         Shc4Z+Dn6wwhYApHmMD2rGQYvy/0EcqXB4lpGFCu9usEIyn/E5KAvmfdJNdh0piXaSm8
         wq/XsjEXy+rjKziYUcd7pmLvpRUjVFzlGMka7HX05ApCpqxtGOzIe/c4l0ZfdwXgwZYG
         yonA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=lArS8IsV;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id e15-20020a056214110f00b005dd8b749184si78996qvs.7.2023.04.20.03.51.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 03:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 47750d62df6911edb6b9f13eb10bd0fe-20230420
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:d2920aac-fcfc-49b3-be49-6d5c374ff0cd,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:120426c,CLOUDID:ee1cfaa1-8fcb-430b-954a-ba3f00fa94a5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 47750d62df6911edb6b9f13eb10bd0fe-20230420
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1470003907; Thu, 20 Apr 2023 18:51:18 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Thu, 20 Apr 2023 18:51:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Thu, 20 Apr 2023 18:51:16 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
CC: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH] drm/mediatek: fix uninitialized symbol
Date: Thu, 20 Apr 2023 18:51:15 +0800
Message-ID: <20230420105115.26838-1-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=lArS8IsV;       spf=pass
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

fix Smatch static checker warning
  - uninitialized symbol comp_pdev in mtk_ddp_comp_init.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index f114da4d36a9..e987ac4481bc 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -546,7 +546,7 @@ unsigned int mtk_drm_find_possible_crtc_by_comp(struct drm_device *drm,
 int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp *comp,
 		      unsigned int comp_id)
 {
-	struct platform_device *comp_pdev;
+	struct platform_device *comp_pdev = NULL;
 	enum mtk_ddp_comp_type type;
 	struct mtk_ddp_comp_dev *priv;
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
@@ -588,6 +588,9 @@ int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp *comp,
 	    type == MTK_DSI)
 		return 0;
 
+	if (!comp_pdev)
+		return -EPROBE_DEFER;
+
 	priv = devm_kzalloc(comp->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230420105115.26838-1-nancy.lin%40mediatek.com.
