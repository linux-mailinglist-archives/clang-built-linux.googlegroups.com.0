Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKGOVKOQMGQEPEB2YGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE72656823
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:57 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id e8-20020a17090301c800b001926fcc5785sf4732185plh.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128296; cv=pass;
        d=google.com; s=arc-20160816;
        b=dg8gtA0xHvEo9EWQLJkZFtMpEj0BEzxXARec9Yq7NhbMdQR5F095awDgJDz0mWoOba
         qVHGkqGZkmgjgD+kIzqd2GtIK+8c75DrrIsOviVXg3qwjjGYiPWeLLd6qEF76dZ+wRBC
         ccgzxMCMxT5+opg3OX6cGeF4zQ5eqHDm8frXe3Lswks0i47TE18b6rZnXhLQzdxjjoUj
         LEsHUJYI7oea1m3qM7mftiluBA6UusSo+quQEUzdHf6Jvp2xKXeniRSxRezCRUJx0rSP
         ZwyuwsCzUZqI9zqDxKU1RVOUZtAhXgzlfJJTmkgVOnRTHh5Oaid57C1aGdRxL6I6HWPs
         4wXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=8q+1mHMJGLQlBst7FXEroeVk7XDpZ9Waag/OYLo7My4=;
        b=etbXbgikaKm+z1QwN2dhoiLFTcnbwTv3s2AXeOFgHXS/SQSl2TyOIU6Z7xCqkp6GNa
         4jGv/agbb/pi38KFpqp5qj2BCGBgMwcnW/sZldTgdD1VaafhLFwp5U1Xs78dLF3RDiSH
         LGAX2xJbCJeJxiA/oNzh4Na3hKMRwxaFcgvmxLOqq+pV1XOW6TR9WhzMZuNnKOr6Beak
         fBLqwWJPMSlEEHsBj+KGvEMdVGi+Kob+zdExjtw2LF0egIklf14BwW7QGFGkxqY0jxKt
         ZpSEE3Uu9Y6VWdfwKprKrcfehVxzGxBcvPWpJOB0xmr7LJtvLg4Tjy9wI1vvJCy/Rq9W
         r6jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=QuXlaXSQ;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8q+1mHMJGLQlBst7FXEroeVk7XDpZ9Waag/OYLo7My4=;
        b=Cdu6CoBlm3lQGgFg3WX+W9iNg5YK35MjgMsQ0Jjo/IA3iYdbwuH+MwTBL/48mfywWg
         D0frlCM7o9umDEMFWCTJ245z9Nf1pSEgLoebhXHd2kzRsBgw3+G4pb4qQ18DVM+T0LgV
         IE4K5+cAINDZ7wnaubO9PVLcQrOpqCNFlw34b0PE0kfNG+QoJ9t4jNemH7V5HhkmwYOZ
         WnztspgsEib210vdzolmCjg1r51oZw58pp4efuMyokucRUsfBsAze+o32Y4Fx/NcRqjt
         2S+mo7GubAxKlYre5QQAipFiqqaKWTGEtGVeI4POvJTin3pxB4HwnHvPEbw94q9aIfoD
         OhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8q+1mHMJGLQlBst7FXEroeVk7XDpZ9Waag/OYLo7My4=;
        b=tUV/fMLb5yEYggmGdHMNU0uYDR8pWLEHKGLNnwQe6ZA48jzna8OSgVFN66hGm+Prr/
         numFEBprAxXfgi4VCEDk12zaAL18P7diqbZvFayFMgpdeVxOc3FDY6GEkoMHIx6YYnCW
         fvRZBUwqmBCObiYz6Q5xnD1JtMQh31phreAFVelui/yQ+MgGDMF1b5T+pBhkPbig1boH
         kf0iH5O2/B1CLlQDfvMSPbqHp73+8XrlAqwDypuJkyrjRgbOBLfJFGNEchPB3IVKiCPe
         7MtLClMp/kiwQ4lrKtxl1tJUYnSzyN+beY4iEvS7tAjzwBiONmH8yf4hwP5xB7gXTdeB
         7lLA==
X-Gm-Message-State: AFqh2kq2mtwd4tL94jvcaB2BjBN1CiZQCkLpaaWopxTwiWdx0x0cYHDg
	9Bugax4cXK7EmUwKPu1Za2c=
X-Google-Smtp-Source: AMrXdXvFeNoDdtPIzeTZV0yYVulmTF83CPMaz41lji0XhHwJl129cLIRw6nAFdwf9f3lpZf7ZJFnYw==
X-Received: by 2002:a05:6a00:2313:b0:580:edae:51a7 with SMTP id h19-20020a056a00231300b00580edae51a7mr678563pfh.56.1672128296210;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca13:b0:225:cae6:ff24 with SMTP id
 x19-20020a17090aca1300b00225cae6ff24ls2942827pjt.2.-pod-preprod-gmail; Tue,
 27 Dec 2022 00:04:55 -0800 (PST)
X-Received: by 2002:a17:90a:fa02:b0:20d:bd63:82f2 with SMTP id cm2-20020a17090afa0200b0020dbd6382f2mr23706414pjb.25.1672128295497;
        Tue, 27 Dec 2022 00:04:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128295; cv=none;
        d=google.com; s=arc-20160816;
        b=ULIw7cGvEXckQMyxTtLDCVakKHDuUHJQZGmg1IsQr5WGtszK4zuEVmOgBVbjhZXgx4
         QtW3gcwH99PsZxRqi5QCFhbdsIowqizPNpMb8fVSseMRaTjyWxentcCtkIEI7N54tz5H
         3wVuiG/O2WpCa814t6eh+swUtnqv5tcDg6JPo8j6IjHaDgFJoL5zOnBY69zhJnmW747a
         tUU7s10GGdbxII24lPRpeJXoz0gusRokViTR763mSSPheuRaIxYHK/VNwQ/mpJiZs286
         wuGE8joCraVR2q/DgMAQ5hfD5Nbc7E9H9EWZ370u5lOQINJjyKM4+mRZQJ35yXPPJ0M0
         8w5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=rc16xLH1zQLY+rSM1/R8kL/wuk19rpEQf134yxXLu2M=;
        b=BXgLTsLtOjGK2EipqD0ZVRWqODmfkkPqqqzLx9rWU6vDKFHT7gEGInSQ26he3ModcQ
         cssP99gm1W339VFUSw7olD6biFibp31e6pry7oiTeaS7peI4rYGbwNKPaw9hVEwPfZeJ
         fkd8PgcJ2FVe9pkJBKBhYiEiHxrYkCOHesZorIBV+iyg9uSyZpsWnRSY4c7mLhRk4gJ+
         n2cQpGeFPK1XAI5i08A+SiKOd6d5ZOrsf3UXR3N9/LU1sJnCF7kAup/TV04JRzkqj1xd
         O7RaGwUPSjhjdqZHGJEheo76LlvbWPA7SRsEIFfYl0z5+QL6UCD3K0R8nZJeLTpFxcYr
         CcpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=QuXlaXSQ;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id pg4-20020a17090b1e0400b00213290fa218si835291pjb.2.2022.12.27.00.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 836db031e8ad41f2b1986b045a9f266d-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:19cee914-69f3-4226-ae78-32a7130cb47e,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:70
X-CID-INFO: VERSION:1.1.14,REQID:19cee914-69f3-4226-ae78-32a7130cb47e,IP:0,URL
	:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTI
	ON:quarantine,TS:70
X-CID-META: VersionHash:dcaaed0,CLOUDID:985212f4-ff42-4fb0-b929-626456a83c14,B
	ulkID:221227160449CGJBYPIA,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 836db031e8ad41f2b1986b045a9f266d-20221227
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1674972754; Tue, 27 Dec 2022 16:04:47 +0800
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
Subject: [PATCH v29 09/11] soc: mediatek: mmsys: add reset control for MT8195 vdosys1
Date: Tue, 27 Dec 2022 16:04:41 +0800
Message-ID: <20221227080443.6273-10-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=QuXlaXSQ;       spf=pass
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

MT8195 vdosys1 has more than 32 reset bits and a different reset base
than other chips. Add the number of reset bits and reset base in mmsys
private data.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mt8195-mmsys.h | 1 +
 drivers/soc/mediatek/mtk-mmsys.c    | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/soc/mediatek/mt8195-mmsys.h b/drivers/soc/mediatek/mt8195-mmsys.h
index 454944a9409c..a6652ae63431 100644
--- a/drivers/soc/mediatek/mt8195-mmsys.h
+++ b/drivers/soc/mediatek/mt8195-mmsys.h
@@ -75,6 +75,7 @@
 #define MT8195_SOUT_DSC_WRAP1_OUT_TO_SINA_VIRTUAL0		(2 << 16)
 #define MT8195_SOUT_DSC_WRAP1_OUT_TO_VPP_MERGE			(3 << 16)
 
+#define MT8195_VDO1_SW0_RST_B					0x1d0
 #define MT8195_VDO1_MERGE0_ASYNC_CFG_WD				0xe30
 #define MT8195_VDO1_HDRBE_ASYNC_CFG_WD				0xe70
 #define MT8195_VDO1_HDR_TOP_CFG					0xd00
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 02d08f85cc1c..dc36625cd2b8 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -90,6 +90,8 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
 	.clk_driver = "clk-mt8195-vdo1",
 	.routes = mmsys_mt8195_vdo1_routing_table,
 	.num_routes = ARRAY_SIZE(mmsys_mt8195_vdo1_routing_table),
+	.sw0_rst_offset = MT8195_VDO1_SW0_RST_B,
+	.num_resets = 64,
 };
 
 static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-10-nancy.lin%40mediatek.com.
