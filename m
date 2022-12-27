Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBI6OVKOQMGQEFDQ4FII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0961765681E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:53 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id z9-20020a6be009000000b006e0577c3686sf4125006iog.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128291; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3YOJDQf3CEiT+v7j/X8kaTCmor+ksRah8J/MSCK0X+tYj9NItnPE5k6AoSDMoHXAj
         raz6WVtIMnUN1KVtPxuXGmC3Fjn4OWSM+/1qHr6SwtLZCSKfJMgPWnE+U4vL/qJhTECp
         kutriELF79mLw1lX2a9zg6OAI0WWQsTnn9jhQUWLfFKsR+WgPLNhoM0yr4vShNR93+B2
         DLqzeS236XCvzDqnWv9rH81cFWMgkXtnN7rZWTj51bFN6aMT7WBYULQ2MNpEpK5CpZIV
         Zvc9E41LeqqBo92AVmBXidnh5F/bUa9Dnnfr8zztRi3FCM9rplnKkjJx1zmvStcc56fp
         UMig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=Gt3lJJnTTooD6Y09gspX1mAuBomcfqmPy7819OElVE3oe3UYmNubjPIfr9jl5CKX+2
         2sDPy6MV71pNJX5ZSwc6+q43XQmQ+8cz/2keYoVPEDntkM4Rco3wswdcUbE7zBTklmAS
         YG3tO7jtED+WoiXI38RpDPRE16DzsRm7yE7525CD3z8t4Ed7TA/rTSX6JA8Y9RLIexdQ
         wuc0C4F5jCO9gN73Al6MQ/PhwemqBE4b703BQ9Hc/YHMXLF9IcU9u3oNAJSmRbLOuVvW
         DsO7kXqyZ6IjdGMkFloaQ+8hBjGfVeWlvpSHy0SxT81p+LiSE0WQavoFn2XdJ+Cs81kJ
         04Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=aQ0LESUj;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=kedf/ldhU/lK/xPzaNBwjYXcCo1jz5wqyMcQoK+QGQAzeB2bqBhnb9xCbpvBTedZ2e
         z1fkVNwTx87GO21jL4plA6SwpEf7KnkxdFhlZ4lkI486t1KzbhIAVto7d+Cf5gjQTXV2
         d900jTlY2oilcADacWXT9DYGbsY11+ONMwL7Y0HF9SOcr7mQ+iD6PaZY2uz9cer4stgw
         dcEyE7l539xf39oWgb+XIcReoSPj0WbG8b3KXDLQ1HCyMgXFSCXN61Qfwk6ub6BbTRDU
         5YLMTeKAeQcWv2X8l22S6NhtrOrRSSLoPimYpFroXGLde0guQLGKalQCP4wNr0rgTfTz
         7DYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=2+N8Xlsk7fegeb9WH5ZSX9AG68nDCCYavkxVQ500BekmywileJ6qKCl+MO/oAwOhpq
         JDmqytHp99a6b8w21wH5OPvTmdYo2IBA548nqcgRvWv7vMt3zoTCYftrsEv+KK5leOtt
         DdB+m6wCzRZ8JS0RKuTDREH16DVinz+56fjsVDK/L4FqlrTboIjLxE53QcK5Mzpu/uvp
         Tdv87owiAJ8D18OAaaHb2FUwur+yRbN+wwHRcWlBiy7Xz0VFsgaQB0svcIJO1pdv8p+V
         Sd+/FPW2f8EqvRKGpMC8/veAuPLR1sCrbuCk+SBZivJpPSd/aU7dA+HYBbodOGZMG0rE
         Rhqw==
X-Gm-Message-State: AFqh2kp5Ft8toJB+HRAcJPJeTnPxJ2a71eKCCT5cwfyZPHqpZFDmZM+1
	WLVnAeaiVc6PxkLmHvLjjtQ=
X-Google-Smtp-Source: AMrXdXvvxVMMM5DVZaji+Ia7USM08TylBAV4gNy8xrOWZgbFBCQZoo6JKKgLJr6gQkDfnewyF1U3TA==
X-Received: by 2002:a92:da8b:0:b0:302:f62a:53e7 with SMTP id u11-20020a92da8b000000b00302f62a53e7mr1798374iln.273.1672128291737;
        Tue, 27 Dec 2022 00:04:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f42:b0:304:a82a:30ef with SMTP id
 y2-20020a056e020f4200b00304a82a30efls2771099ilj.4.-pod-prod-gmail; Tue, 27
 Dec 2022 00:04:51 -0800 (PST)
X-Received: by 2002:a05:6e02:219b:b0:30b:df82:a46c with SMTP id j27-20020a056e02219b00b0030bdf82a46cmr16094327ila.4.1672128291326;
        Tue, 27 Dec 2022 00:04:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128291; cv=none;
        d=google.com; s=arc-20160816;
        b=I65kgz1PzAskXTq1MU1NMe3kcj261NGfiAFqmtEG3DM+wbS4IGCeinqS8oNfV7NkaB
         IfSr15Ni/UHPpKDM8NPrzoaz63bzahEORqPWHgxityGvzyTgrnAg9rc95pqSD0dRDBXt
         gRqxFRNjiO43HpXve49eCd+szUXCe5Gu5H5K5Sm29nDAyXXC8I3zWWXvz/BbAz03I3wy
         Q1qBvqUTca48dAmd1ntd9F1shStMt86hL6DD8La+sC/MAtQ8sYZAVlj5pZXSd0n8Rpna
         vPH/bkG57/4+WZ2PW3Le2kvaKsdqupr3UWAxoWHcNuG+OYVTzAoRU/mvGfHFw37FrRo7
         bOJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=928YB2GI4MFrHU0gVHtlctQYL8/E/YHd4Gy+DYkGwxY=;
        b=vSGQv64Uru4sQ/ifgFoEJ4ffr8ZwqngntnpjMSgM3ZcRxs0KBkSn2CLJWO9+HezRUR
         uPWnpiAO8t4CImAewTJ3TLFqv0/P2YPqgX1kliPqAJvlRb2n6Sl1wxq1uOLny/5ex5Zb
         qa4baI5nvZjJjeK4AP6GCmDxnZSK5AKOJjMf9aLr+d5G9wlHDCkoYhNR+7gHAuYun2Jl
         MCt2TvmYvf4/PFMP+I41g8nRfCP2vUiYkBHZERq2a9DDIsS2b13eo5MosQ1YkzlDVe9Z
         I8YZYKqrAXvOmOS1Qa1HDyHlhpz0xjXFj8WWydWd0/o2g/xLVVWZibG/Hu0rwNg90UIC
         +w4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=aQ0LESUj;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id x1-20020a92b001000000b00302df8abfa9si894335ilh.1.2022.12.27.00.04.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: da25e39de4b14105b70025ab952beff1-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:2eb13383-e177-4282-953b-ea12cddcd481,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:95
X-CID-INFO: VERSION:1.1.14,REQID:2eb13383-e177-4282-953b-ea12cddcd481,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTION
	:quarantine,TS:95
X-CID-META: VersionHash:dcaaed0,CLOUDID:3cac838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:221227160447NRV40NVE,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: da25e39de4b14105b70025ab952beff1-20221227
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1676830172; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
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
Subject: [PATCH v29 02/11] dt-bindings: reset: mt8195: add vdosys1 reset control bit
Date: Tue, 27 Dec 2022 16:04:34 +0800
Message-ID: <20221227080443.6273-3-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=aQ0LESUj;       spf=pass
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

Add vdosys1 reset control bit for MT8195 platform.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 include/dt-bindings/reset/mt8195-resets.h | 45 +++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/include/dt-bindings/reset/mt8195-resets.h b/include/dt-bindings/reset/mt8195-resets.h
index 24ab3631dcea..e61660438d61 100644
--- a/include/dt-bindings/reset/mt8195-resets.h
+++ b/include/dt-bindings/reset/mt8195-resets.h
@@ -35,4 +35,49 @@
 #define MT8195_INFRA_RST2_PCIE_P1_SWRST        4
 #define MT8195_INFRA_RST2_USBSIF_P1_SWRST      5
 
+/* VDOSYS1 */
+#define MT8195_VDOSYS1_SW0_RST_B_SMI_LARB2                     0
+#define MT8195_VDOSYS1_SW0_RST_B_SMI_LARB3                     1
+#define MT8195_VDOSYS1_SW0_RST_B_GALS                          2
+#define MT8195_VDOSYS1_SW0_RST_B_FAKE_ENG0                     3
+#define MT8195_VDOSYS1_SW0_RST_B_FAKE_ENG1                     4
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA0                     5
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA1                     6
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA2                     7
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA3                     8
+#define MT8195_VDOSYS1_SW0_RST_B_VPP_MERGE0                    9
+#define MT8195_VDOSYS1_SW0_RST_B_VPP_MERGE1                    10
+#define MT8195_VDOSYS1_SW0_RST_B_VPP_MERGE2                    11
+#define MT8195_VDOSYS1_SW0_RST_B_VPP_MERGE3                    12
+#define MT8195_VDOSYS1_SW0_RST_B_VPP_MERGE4                    13
+#define MT8195_VDOSYS1_SW0_RST_B_VPP2_TO_VDO1_DL_ASYNC         14
+#define MT8195_VDOSYS1_SW0_RST_B_VPP3_TO_VDO1_DL_ASYNC         15
+#define MT8195_VDOSYS1_SW0_RST_B_DISP_MUTEX                    16
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA4                     17
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA5                     18
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA6                     19
+#define MT8195_VDOSYS1_SW0_RST_B_MDP_RDMA7                     20
+#define MT8195_VDOSYS1_SW0_RST_B_DP_INTF0                      21
+#define MT8195_VDOSYS1_SW0_RST_B_DPI0                          22
+#define MT8195_VDOSYS1_SW0_RST_B_DPI1                          23
+#define MT8195_VDOSYS1_SW0_RST_B_DISP_MONITOR                  24
+#define MT8195_VDOSYS1_SW0_RST_B_MERGE0_DL_ASYNC               25
+#define MT8195_VDOSYS1_SW0_RST_B_MERGE1_DL_ASYNC               26
+#define MT8195_VDOSYS1_SW0_RST_B_MERGE2_DL_ASYNC               27
+#define MT8195_VDOSYS1_SW0_RST_B_MERGE3_DL_ASYNC               28
+#define MT8195_VDOSYS1_SW0_RST_B_MERGE4_DL_ASYNC               29
+#define MT8195_VDOSYS1_SW0_RST_B_VDO0_DSC_TO_VDO1_DL_ASYNC     30
+#define MT8195_VDOSYS1_SW0_RST_B_VDO0_MERGE_TO_VDO1_DL_ASYNC   31
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE0                   32
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE0                   33
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_BE                    34
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE1                   48
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE1                   49
+#define MT8195_VDOSYS1_SW1_RST_B_DISP_MIXER                    50
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE0_DL_ASYNC          51
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE1_DL_ASYNC          52
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE0_DL_ASYNC          53
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE1_DL_ASYNC          54
+#define MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_BE_DL_ASYNC           55
+
 #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8195 */
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-3-nancy.lin%40mediatek.com.
