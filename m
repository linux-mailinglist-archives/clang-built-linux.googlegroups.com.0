Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3G3VKOQMGQEZLAMMUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC6B656876
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:33:49 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id c11-20020a056e020bcb00b0030be9d07d63sf6584989ilu.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:33:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672130028; cv=pass;
        d=google.com; s=arc-20160816;
        b=UuJkzLq7n3vOFkkNDVOWIMjc6D4sTwlw9DLoEwJ0r/HEM61whh9L+uC1X9Me/DMatr
         IU4SUKhfNyG69VC5zWYtBUQAf5Nc/jrX29muhGoJct0r4BJF5tKBJvrZARF2gNIaygnb
         GbfDlvpunxLq30Ds2x834kd5yXdSjipquwD8iGEPP0kCo/BdvuCCrOc1zX3K7LlSnPnl
         lZAtjQRpZ2ZpAaf73MYNswYhO/iQoX+gG+7aNTBgK0dJLBivzTHnbMJjQD/iS93bdS9Q
         p7rfekYDig4eOPDmxJPRdGsMVQ9MzzTy3LGoLwFZZ/Kjid+fFo1zivXW0pgcd2ZpvkEP
         B0Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=ctrF73ULlQ5NJ7oe2Sd97ko8pQeCtvZPM67Bvy1drjQSeNHGUtd6Pl0ustUbHf+NRr
         6cef/3qN4lDx18Wih+pIzu9b1G7Cu+Xnn1MAMf4SqL3Afe0E3CtFa5/n1NV4/TbxYT4k
         Jq45nzV0cb1Hdk7aYArPNhFcRfLx3HqWR+QbxSA4oNWfgUHunGy+Bz8PCjrxbem9cbkp
         xoJGDACePqcjCF9kqGJNuFXlfvSolEXFxGPtMmQS4q5WZmFRQTVwyek5OAkUYbCSWPd7
         rkgglgI3ujb7fGNKJQqHV8gL/9vlrGfoIsLaI2muHWhjEO0NjbY44wC8dNJA8uqIGxRl
         Udzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=aQ0LESUj;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=c+EkMG1hsZSfJb4wcfF2m5+OdgRmAAXzo2smvZrcLQA5X9eDxVSBldKjENFw6uBJfC
         wAewWYKDosiq0QVDxyVMWfmE0ehKoB4OGmbE1YEvbJISNHS1kC5VejB0IXzv88XnRp2L
         i0YcN7b1oyvfg/ROJN6/TBTJfcIGACw//uwwSp+ZrJoj1z3pGIchFPWsXze323H8yivA
         ecnPdGv8zSPGJcCqUIIWafT/R4BioTGK5miXZ1x2rXLHL3Cyx8P2m/eLRUDSpAimhwdk
         C10mE49GE3F6ODKjb2z8ar44JyAUBkAKncwhVBP0oUfQ4psFvGlwymgJAAeGgU+FPxcp
         kliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lgrznaJSbrEobfwJ9X8neOa2sKy0U2Dkmh5vzr+bDeA=;
        b=1WIumc9XIcIBvVACG6tLyGZTj00qOQ59pC6w75/I8MZN2oYNvASE8L4aal+mrRvU5s
         BMR89kktvcisOAsSW2SW3lVLt9mi5DhnjIRhM4G375WUQZ0ybu/zRUgY2W5V/HlGp6Pw
         45ryIuLWwYputWWULnwRDZVajPDmlgZWJH+3emau/9Cyr/zkwOWNKeLUi7r1UEo36hw3
         JPGreQfMsB4DrARUTNTScRc4aUDZJCEL2QOhPTz0p39VdhxEVNJHwGaKqdThrODeAxsN
         eULxEIKW4aeey0WwY+63ObAKorNJmaHF2tI25yHhJ8g8VAU5rSprSq3CjliIQF43EaQr
         Uxvw==
X-Gm-Message-State: AFqh2krrudw7xQ6ksjJ8dFpLr6ZJBEcwzSOV+Pk8dXy8jNvjVXJVk2FK
	eEESyFKaJ+UD/kLUx36XG3k=
X-Google-Smtp-Source: AMrXdXv0Jmi7cqeK6XFF4GfgCP9TyIpGnjo5qKMga0gaZTQiTj76sR4Pq4bhOdhf9j7nUMniY2sHKw==
X-Received: by 2002:a02:8788:0:b0:38a:49b8:bc49 with SMTP id t8-20020a028788000000b0038a49b8bc49mr1708111jai.66.1672130028807;
        Tue, 27 Dec 2022 00:33:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed9:0:b0:6e0:16e5:8907 with SMTP id a25-20020a5d9ed9000000b006e016e58907ls1885410ioe.7.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:33:48 -0800 (PST)
X-Received: by 2002:a6b:d605:0:b0:6df:fa5a:fa05 with SMTP id w5-20020a6bd605000000b006dffa5afa05mr12869499ioa.0.1672130028358;
        Tue, 27 Dec 2022 00:33:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672130028; cv=none;
        d=google.com; s=arc-20160816;
        b=Jicafmd3s8mFcJOZSNPv2FEKUPlorP3R/P6DeYFu0jum2QfDgPOo/zH8noQ2Kx6b7x
         NX78W9gZHymruUxxp/OEhLZp5a+bz5GQ6VDNze5afP6B1wl8ksijpq3G167kskA8aHcS
         VX1cO9hJY+PNaV87jyEZstiYDOtA64Wc3gSSxArbG+RrK3lloI2Xyp+uaMfjrknTAwhP
         WnBG0+Wtjwq5OBptoGdsYc/qiHTMeHjsGdOfGXf5g3SgHpYh6tAz7YgkDlzYr7ScvemZ
         2+b585sN3hxNcA1mCTAz5SGG5yRRW7Bko7DUH78nCSUEsiuL9fkFm2t+5PrUvjT7p02d
         7U4A==
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
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id bk22-20020a056602401600b006e01d4d5e4bsi1088394iob.0.2022.12.27.00.33.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:33:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 5f0914657a324304bf2b7c057acd9242-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:88928d71-0692-45a1-83ca-40e07a7f7b9e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:2aa6e952-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 5f0914657a324304bf2b7c057acd9242-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1962781298; Tue, 27 Dec 2022 16:33:38 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with ShadowRedundancy id 15.2.792.3;
 Tue, 27 Dec 2022 08:33:31 +0000
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
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
