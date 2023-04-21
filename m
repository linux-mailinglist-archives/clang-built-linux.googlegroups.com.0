Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB47DQ6RAMGQEEBGAF3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 785FF6EA18C
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Apr 2023 04:16:21 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id d2e1a72fcca58-63b679e4c09sf1175449b3a.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 19:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682043380; cv=pass;
        d=google.com; s=arc-20160816;
        b=idlaIzK8xvz5B8KvlfUW3ETGx9QOHJbHGd5r1T9sQQJr2o//HczrZSdbxE6JKphSp+
         DcoamdfqieMIocP48cuCC4Ehf+58IeOgN0djHWAZEfDu5X1+rZNJmcAC0xczalUk2KjI
         snOeGEXe5vOI1Uxy5GqltTci72MMi2how6VixSS/3pbG7pkwYoeA+aciJ5dHG7uk4ikR
         UWuzqM1lGTEL3GzNDnG9YvJOncmPv2fgGasjR90fiiDWgLwgrqhLVKyxAGjAYPllIoqO
         wGXOlH4irRjMCpy3z6Els6coY794kmSyjhClNJtTxQb55cDoKbbmKTbg3t1Pt44JUslN
         Jn/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=QYR3tJi5pfhTKfzAjpYp70MUY++zu4/digH8rxGOLP0=;
        b=UYWHILigh0FSjvkLLsYAZTt40FCr7ZmRKnStrlin8/fL34uqGVVgovYuwJJMXVMv2W
         Sz6zvF89QqQX2ONJ2IAleeYlZeAv8VkK3IuLtEH2XiG0CGBcFtlHK4sJBcV6An9lnf2W
         JCaSG3G3QuXM3lwQ0ZYcIvfZ0ROLRZo2dtlX0CPakH+0c65QsFrbVhHinmgpybeN6VT4
         3LlnEXd7q3HdTSckIbJX2COUdPbJF3Jfv5whY+A4WJc9tSLEcsoAHJfqxO57zFn/qLdJ
         fk3CuCRMBvO3OT2OQJCao5Q+dIfHApADnrJ5vh0VMnf7v8iQ3is64BzgK6mY3Pudd1QK
         fhPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="mKk4hr/u";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682043380; x=1684635380;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QYR3tJi5pfhTKfzAjpYp70MUY++zu4/digH8rxGOLP0=;
        b=LRtwwWq0fvzykNK9h3Kq4TlPLSwLIU4o7vuiYIprJFYBA/jzkWcG79WK49DqxrBAHE
         Ae8jIzBVMS5bk1mmf2xbFGRA7cVpJDKKNNrQjAbjJfHIG/eGpSf8VOlMj2BuUhB7nvJx
         Atw4CtzuVH+Wv3vNlGiDloOFO/nj/TZ/5JPifv2EepJfeoIgoxiOSJmeeoQ8lgE2zp7p
         zhpkCIwuhPWbaZ/9aRgUW3dpNgsufUxddR7wyZi6YKD7iAwR9l9Fbl97RVozJUd+gz5N
         jroznRBsGQLCZVc0NKtJPuRTc8vf5Dj77/73FTwZ5xIRGZWAE0pdDv55kKXpUd1jWh2V
         f1Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682043380; x=1684635380;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QYR3tJi5pfhTKfzAjpYp70MUY++zu4/digH8rxGOLP0=;
        b=JBGclYUrttBCkEVd6zwokYc4QllNwI45oMrnzbfj7ZN/fmQe4wzFmpTWw+3jQ0VGoZ
         /gM7lEDGUO6uVJWyeLI+Podr9lmc0V1UnNP0HpiSU5j0+GB2lN0rPCAjliFGUy2rdakZ
         hrZLx62dCavdl9MbJyetp6yHkLiocfsPg+hODOYCggxGX15RTVLcB7qR8ZtXiJ5bcOU/
         hQ9c1LIqiLMpjmUY/KEvE+Gv9SjVJ87ZmS3qZRBdEou6XNuaTjBGlgoYQz9qhiaWRvl+
         OsU8tR+CX52EFGk8cbgU5sBDHqrgMr/EvEUKnV1j7+CyC2INDZg5gBbLANdw6Kb1N/ka
         wzkQ==
X-Gm-Message-State: AAQBX9f2gvEdCLJ2u8Xm6wk52//G7JKk5skvPkZEoPvaLFrG4FDEpGI6
	3IBTKE28oC2V+BEarrI0ZCs=
X-Google-Smtp-Source: AKy350brsKTCf8ffrPABHXUmNGNhYhZqiiZIbDBwQT6Edkdt3qYWxMV6wiRzvrSGdyxiLNUiBE+SFA==
X-Received: by 2002:a05:6a00:1913:b0:63d:259b:b5cd with SMTP id y19-20020a056a00191300b0063d259bb5cdmr1435265pfi.6.1682043379648;
        Thu, 20 Apr 2023 19:16:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b014:b0:247:2aa7:31a with SMTP id
 x20-20020a17090ab01400b002472aa7031als3779080pjq.2.-pod-control-gmail; Thu,
 20 Apr 2023 19:16:19 -0700 (PDT)
X-Received: by 2002:a17:90b:1e04:b0:249:86ef:f7e2 with SMTP id pg4-20020a17090b1e0400b0024986eff7e2mr3716747pjb.31.1682043378899;
        Thu, 20 Apr 2023 19:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682043378; cv=none;
        d=google.com; s=arc-20160816;
        b=KTTw2ZBCUrhjQ+FWAsaAY3QQHqtM30y7+HCnTOoMakhgqRM8QpLCYy3WPIe/yKvNO7
         m+sMCbolNx8IEXXoblkMwkiRxcDnuhBn4dZsyB38AaW2bLFTqRnN7iM58Hv3b6k9yP9P
         efodQyVmNQvkOefc2QlzRsG9DwzxRzOhKgt3EmDOU/+NBz0OUhuDjEJbgkhOjawKox+d
         ROEBnubgiDupIU7QL+h72HY4NK352R37NNh8aGAYyNoTkdv0NOKKGcuRD2Dc7pY+XTAd
         kaWe2FWMPPVZc+K6rwK8lMJ592PPokf90GxUsczk/yE7Im5KQyZKDdDhNoS77BWfHUtq
         TBpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=u0ULCdXRcRS2fkzJ4+j306hJuzBVP+IaaitYWP2fjHE=;
        b=eTYpDnKwMFEvb0e1BZKZRNYgCTq4kTcgSzVdDcr1lwQ6ZwKeJD0de62S2E8VxzSFNA
         OipZ6HkqjwJIvfKQBjXEGyAgNbHRcgJO1nyl5tuGYPy/pY2KU3vtJg6jjuiRDhAV0JSi
         PjHXRD2cXKbbkgsjzHEpVoB9P4YpgdnL1EWg55VIEar9QLTx52lvX17DqWPIOZbsFlx2
         8NjzYa40kb7x6N6w3b9OTps/mm636Elkw2O8lTB0ro6xuAyKiWrFHHe9lqb69t3MMGCU
         MTtv1LXTTDoWisHDbdCojo6DBBXQF/tJ+3z7VlsXammsjbfA3bYzcOTdp69dKvxBqwKM
         XHwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b="mKk4hr/u";
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id my17-20020a17090b4c9100b00247b3cb508esi154865pjb.3.2023.04.20.19.16.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 19:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 7c9fc528dfea11eda9a90f0bb45854f4-20230421
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:f3809a91-d56c-4e6a-86d1-e791ba897e6e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:7a5608a2-8fcb-430b-954a-ba3f00fa94a5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 7c9fc528dfea11eda9a90f0bb45854f4-20230421
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 958186192; Fri, 21 Apr 2023 10:16:12 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 21 Apr 2023 10:16:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 21 Apr 2023 10:16:11 +0800
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
Subject: [PATCH v2] drm/mediatek: fix uninitialized symbol
Date: Fri, 21 Apr 2023 10:16:09 +0800
Message-ID: <20230421021609.7730-1-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b="mKk4hr/u";       spf=pass
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

fix Smatch static checker warning
  - uninitialized symbol comp_pdev in mtk_ddp_comp_init.

Fixes: 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub driver for MT8195")
Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
---
v2: add Fixes tag
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230421021609.7730-1-nancy.lin%40mediatek.com.
