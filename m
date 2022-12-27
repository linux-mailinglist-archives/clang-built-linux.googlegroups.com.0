Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKOOVKOQMGQEE4DZHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 331DE656824
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:58 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id 190-20020a6707c7000000b003b134bce1dbsf3108740vsh.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128297; cv=pass;
        d=google.com; s=arc-20160816;
        b=vps75q/Fn/JNNDnHor+adPSMHp6aB5L9kNno6YM9aVrpZWlyhRKf4j18aJeJ9WagUc
         N/upL5AraL2s8JQI2NJULq25iw03Lg+aeuEQGPdIDOdndeR6oHmRh5ZhJpZeTHOlAziz
         IiKqrY4/BdakF6/98by8rsGcdKVy01mhYu5OxiAxvTrEvFePywV7SiBEFYwb3QwkNrDA
         uDMDTmxsJdG/5C8JuvS3FI797ZvFQa0H5F0vy9sV7Bcu1m8ve5QTd6TkGBLV7GYxo6wA
         kqyaGc0L0SxPxplFp4AQszR82P7g/ExcUdoPygouSZLhw8DJbYQNjqWPdG+XjNMKcYL5
         Lf4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=uxGtX8ScW+qY0GxmB1BEYmoNM72r7WFl58MHytl3oXs=;
        b=k2QQ9yswraPxkCObh3MsUySq1PLM9JCFCg6SOGQleTg5wLkFfgbhacm2n1igVKTrt0
         /TdByKeZvVfpPJWu7LPcF/hc10jk1hg4wciutUZmbiTEkwq2dK6J/ajpG4yfuq4A6LMk
         nqIXOUyJpHzgDlM4iit9ltlaIE40taKfQyKKNsxxsV5yGtXTSDhGbeCc0bfdHfXXamAP
         61zC44LiGIpu2Jk9QAnz5/QLgpiarbtwvvK3HqoxGvVuYxq7TWIokKNkSL8oG7Od/xDH
         FRHmz26BLSnX2dm3mGnLsYTZAYXpVCqo2dkGUjEvGxG4SMqAa5FC6p+BbJyNU/grm1Le
         vUZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=i9J4vf0O;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uxGtX8ScW+qY0GxmB1BEYmoNM72r7WFl58MHytl3oXs=;
        b=FwFDEOTFMGqV4AlSIjB2n2pkesyXgRvstRXpYdQm1FxfYmWD42DoDcHErOcen8kUbr
         exhkx5Nz+SwVQ3q6azH03Lg3B42i326ldavD6+S0sFW6ZQ2kOqhkbn2cPkXVMMGXRKcn
         RFpADplBVtStLXnRWwmFo4ekG6XoLxjOrDMM1y8QpkhFWAu3jnmwEbINxESf2VQINabd
         IHp1z3aIUYgXELQq6uF4zsoezdzSwI+b5jyvbNJZqvi475Q3I0+pvCJR67N5IRuOi3w8
         J0mZTwu5TwhIb3X6FFBZTQih7hZszMd3XG5uUULJ5wfpiTtPMwMt+MWOlxe8ucrDTeap
         ZJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uxGtX8ScW+qY0GxmB1BEYmoNM72r7WFl58MHytl3oXs=;
        b=zW2bZA62DhJp0jApKkAskaJmrhGVCn+jbxo+riqukF1czyQt/a0Tq/rohb2UyBpuYp
         So7OTCLMP9VbPc0SZIvrRvNT1Vo1g9N0v+M0wAFh3Y4OP2hPK9ZzPl/dMK1Q25H5AEqh
         AR28I8+My3rHpwIuJe7teixF+upudpSsX+G7k/Rmf6/yJO0xL0uoaymtVtbt6aYbV/tS
         wd4odSw838Fj9wOFYUzxJaS6aVc/3EcQsDReuA4Y0Ss1Madm7C4foglAEL2jmglex7WN
         ZNJDavppZToRb3QCedtwQKEhZq+EeFzeAT6vmgIOlWJKbIlrBmjlXztHq0AsBdkIMVXT
         2zHQ==
X-Gm-Message-State: AFqh2koHfYv9qSbjLsnedQePMLevPSVpq1sbAXYsLSvxEQbG1cfMN90h
	ZOKwgjbTt2rfqFWkOF5d19w=
X-Google-Smtp-Source: AMrXdXsFqocoP2zQ0lFCixLj2J+Rg7MAyLSQOxNmDDXSPWjIT9FG4hx4CxhZBeGylMWSnDoSPCMoDg==
X-Received: by 2002:ab0:2e96:0:b0:419:beaa:df42 with SMTP id f22-20020ab02e96000000b00419beaadf42mr1968661uaa.32.1672128297133;
        Tue, 27 Dec 2022 00:04:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cb83:0:b0:3aa:157d:1864 with SMTP id h3-20020a67cb83000000b003aa157d1864ls3041169vsl.11.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-Received: by 2002:a05:6102:313a:b0:3b1:393d:97d5 with SMTP id f26-20020a056102313a00b003b1393d97d5mr7017509vsh.6.1672128296543;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128296; cv=none;
        d=google.com; s=arc-20160816;
        b=OZ91CbKSHoBgWXjZmZPwFgR7inRPsCXbnrLONIX2wgHvlYUe/rx7VTb1YsfvzU04WP
         KD3ga98QPBCB9cceIPYcrsgUEkFo3puCpgWTOuodt7IniHyc0SbcdLxKe3tKdtOdqkKK
         yOYASP8w4pQchgtiuu51U/fZ0o1/9W1Ql3TSNeVrfnwnPA7pGr4Jkk4qIRfGMJfg2iL8
         dUtujamzt81rZYbEQ4hfu9Ie7lCd0541oKwF9G07YF1NlFXkO4AugTBZd8GtuxDeJmX6
         HZcF5/oVGIKqOejYoSea/aBPiPVQJwcgyb+CvzU738BrEvQAM0Fi2esyOSxlhKm687Qe
         5cmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=BAbs0IjDVsViVrySB7IBCipZ7l2lYXu6rrJFRwYE9jc=;
        b=yJq1Gxp1kASCrfo3V8Mamz4ADb4FNwF7p+BovpK1gAvomuXqPkdbPPHuZv9g8PspZR
         6NmzONy50GJILQfn5fkkmX+hZFphJA1vdAN08OS8S05Htaa7c3JAmhGw9WbAtSKChSvo
         fo6UTglMxU3q1xcU/ccy5fbkSRf3UZoKEXzE3YxPQppIRHDPsqO+4M1bEe6NkS7/4lWj
         7O/Y8EJYat4dH/M1WivIYq8/S12bvCdAGTHlRrPEXXbVi5Aak0qtdqIK4voXOkXDR0/N
         jQhM/GvbCx75P61YIJ+t8/AErEuv5Mg4YHT16sW9GvJHG7J/gyoQ6RkrmgO/RwbQ56gU
         /aUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=i9J4vf0O;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id az42-20020a05613003aa00b00418e1741f27si3098573uab.0.2022.12.27.00.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 50848399fa1b411182b97ebea47f2a9f-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:ff50c69b-3886-40e9-87a9-4e6c5fc47227,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:95
X-CID-INFO: VERSION:1.1.14,REQID:ff50c69b-3886-40e9-87a9-4e6c5fc47227,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTION
	:quarantine,TS:95
X-CID-META: VersionHash:dcaaed0,CLOUDID:32ace852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:221227160449IZWF80R0,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 50848399fa1b411182b97ebea47f2a9f-20221227
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 752330615; Tue, 27 Dec 2022 16:04:47 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:04:47 +0800
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
Subject: [PATCH v29 11/11] soc: mediatek: add mtk-mutex support for mt8195 vdosys1
Date: Tue, 27 Dec 2022 16:04:43 +0800
Message-ID: <20221227080443.6273-12-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=i9J4vf0O;       spf=pass
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

Add mtk-mutex support for mt8195 vdosys1.
The vdosys1 path component contains ovl_adaptor, merge5,
and dp_intf1. Ovl_adaptor is composed of several sub-elements
which include MDP_RDMA0~7, MERGE0~3, and ETHDR.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-mutex.c | 33 ++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
index 41cba6aa0e83..8d0eb70690e5 100644
--- a/drivers/soc/mediatek/mtk-mutex.c
+++ b/drivers/soc/mediatek/mtk-mutex.c
@@ -130,6 +130,24 @@
 #define MT8195_MUTEX_MOD_DISP_DP_INTF0		21
 #define MT8195_MUTEX_MOD_DISP_PWM0		27
 
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA0	0
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA1	1
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA2	2
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA3	3
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA4	4
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA5	5
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA6	6
+#define MT8195_MUTEX_MOD_DISP1_MDP_RDMA7	7
+#define MT8195_MUTEX_MOD_DISP1_VPP_MERGE0	8
+#define MT8195_MUTEX_MOD_DISP1_VPP_MERGE1	9
+#define MT8195_MUTEX_MOD_DISP1_VPP_MERGE2	10
+#define MT8195_MUTEX_MOD_DISP1_VPP_MERGE3	11
+#define MT8195_MUTEX_MOD_DISP1_VPP_MERGE4	12
+#define MT8195_MUTEX_MOD_DISP1_DISP_MIXER	18
+#define MT8195_MUTEX_MOD_DISP1_DPI0		25
+#define MT8195_MUTEX_MOD_DISP1_DPI1		26
+#define MT8195_MUTEX_MOD_DISP1_DP_INTF0		27
+
 #define MT8365_MUTEX_MOD_DISP_OVL0		7
 #define MT8365_MUTEX_MOD_DISP_OVL0_2L		8
 #define MT8365_MUTEX_MOD_DISP_RDMA0		9
@@ -372,6 +390,21 @@ static const unsigned int mt8195_mutex_mod[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_DSI0] = MT8195_MUTEX_MOD_DISP_DSI0,
 	[DDP_COMPONENT_PWM0] = MT8195_MUTEX_MOD_DISP_PWM0,
 	[DDP_COMPONENT_DP_INTF0] = MT8195_MUTEX_MOD_DISP_DP_INTF0,
+	[DDP_COMPONENT_MDP_RDMA0] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA0,
+	[DDP_COMPONENT_MDP_RDMA1] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA1,
+	[DDP_COMPONENT_MDP_RDMA2] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA2,
+	[DDP_COMPONENT_MDP_RDMA3] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA3,
+	[DDP_COMPONENT_MDP_RDMA4] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA4,
+	[DDP_COMPONENT_MDP_RDMA5] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA5,
+	[DDP_COMPONENT_MDP_RDMA6] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA6,
+	[DDP_COMPONENT_MDP_RDMA7] = MT8195_MUTEX_MOD_DISP1_MDP_RDMA7,
+	[DDP_COMPONENT_MERGE1] = MT8195_MUTEX_MOD_DISP1_VPP_MERGE0,
+	[DDP_COMPONENT_MERGE2] = MT8195_MUTEX_MOD_DISP1_VPP_MERGE1,
+	[DDP_COMPONENT_MERGE3] = MT8195_MUTEX_MOD_DISP1_VPP_MERGE2,
+	[DDP_COMPONENT_MERGE4] = MT8195_MUTEX_MOD_DISP1_VPP_MERGE3,
+	[DDP_COMPONENT_ETHDR_MIXER] = MT8195_MUTEX_MOD_DISP1_DISP_MIXER,
+	[DDP_COMPONENT_MERGE5] = MT8195_MUTEX_MOD_DISP1_VPP_MERGE4,
+	[DDP_COMPONENT_DP_INTF1] = MT8195_MUTEX_MOD_DISP1_DP_INTF0,
 };
 
 static const unsigned int mt8365_mutex_mod[DDP_COMPONENT_ID_MAX] = {
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-12-nancy.lin%40mediatek.com.
