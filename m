Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB263VKOQMGQEXU34W2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x1138.google.com (mail-yw1-x1138.google.com [IPv6:2607:f8b0:4864:20::1138])
	by mail.lfdr.de (Postfix) with ESMTPS id B471C656875
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:33:48 +0100 (CET)
Received: by mail-yw1-x1138.google.com with SMTP id 00721157ae682-46eb8a5a713sf85875747b3.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:33:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672130027; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDjh4WRu51ooJdC5fUmLQ7vg3y6Sff4OdXy6Osd9YqDU1O/FSKaol3zIJ4WEAbywwo
         EzicJ+VOF/f60eA6WofOuqp4J23Q6vNPJKWrZavLgUJYugnBii2HiLYH4DkasMjIb9XY
         v+DiTlqaJtksoGCuS3NrSAHzf1TIkXrIBaKE5tPunSALEMs2C20QVX1yYjq1tjh1XhUY
         uxyzF8G4ORVrpRyIkE9TkBwN8m3ylLStCLHU6b4ufPEHWXxmhXJ8NZzRaDVr5gCOrXai
         Nk0LbhjBau305iZ3YWSPiH8J21bm0JqMejUCg6yq2RqMqnJScVRuGGy2W4It14Csuxvr
         vKiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=DSLpkNCsBJXC51Qa1CitPazBmcBAUXy6SaDPLKHVrvwhv9VAGmbjZ/O7eDXkOA9nke
         7O+SUfihcQe5kdUn9C7s21eARFZLMVwH9gE+AsrKv8ooZjmZE0ZaX0EKZyZgErdPIHv9
         WRs82Ccc6otfGjMUgcwV2lnIJD30WBpyK4PDA2cI27Em7wjNxHDxatPZGuuNAm4adw4t
         6bEiuI9IvpN10YbD9oW5opD+JgGZr3OqPK31xtqK0ZJeFWvF4SajPLBy9Yq8PtYYXg5o
         on13exGPBK8jwYvq0MCTwJ+GZhriPU8G3NNqeis/QSn1piRxwwtmO6fw2wRRAazNfWrf
         b/Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=FqxAJdzs6XlDU+IO1G8A5DjFVGti2szTMojcRTLm3qVydWL7OmwXCXONxapevylmWq
         QoDFHwnCIgSlZC92AqcvII8qeIcVr0SybL5YMXXjBykBHbz9F1AviWNokX9FJKyTzZho
         N6mROIlcdgCi6i39fFVgSVLcmIbmAu7ujLZ2IusOSKGE1hRrDyufSRho2LqoqbWSOmX9
         Pd46MjiaX6L6URN6dCXeZT/f6bgntuqAqeyRM1903NO1mzthOWKpxI8hQyEqQaesv+N6
         WwlvmFrKacXDIxefMlYFae4Ubz8qhw4LlsXJb5I38qR8PkjS05qYiaOvzlGLdkeSDq7s
         /OYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=NQ0xJtXwUlYUh1vzGYe4KAmhC6cK/YskYKQyrUvqCNT21qAfVIqX2LqIDC2jgtw2EN
         203QJVHagwEKxqwiuQNQivE/gUjIoVSXhGRQ5eRRiPVROZuvA1M5Z4VMuw6YRgv+TjPt
         ENPYLbU7H6S6txG8unnILgzFl7Ab1F7YObByuPnJuKL3oItplZtX2wi8s1VQuMqe5kra
         T3A7jB0qgUhaMkeZJmSGijmGfZ0fa85504E+mqZJWwE74oewW3zcM//Bvcc+czjEwt+p
         +Wjj/I0c8WiYzo2fJ4qZX0In4tgLp3yLR4I0b75HQPYFv5VRQ5YbMhK80m6+RAxHCAYc
         5Yfw==
X-Gm-Message-State: AFqh2kqWMVURPK+/le1UgBjA3g9MkfC7BMyJALarU419eUEN6CLundeC
	+rRhL9HrWCgAHb4fkaEz/HE=
X-Google-Smtp-Source: AMrXdXsUqSZq2d2hgqmHr9muhV0KWKPuQtay6DXSV+Ayrn6PEzdBZU7eUlw8Rehp35LcxMveuenVvQ==
X-Received: by 2002:a25:9886:0:b0:749:f433:3abb with SMTP id l6-20020a259886000000b00749f4333abbmr2245733ybo.239.1672130027609;
        Tue, 27 Dec 2022 00:33:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:690c:c1b:b0:3da:94d4:c8b4 with SMTP id
 cl27-20020a05690c0c1b00b003da94d4c8b4ls7006379ywb.3.-pod-prod-gmail; Tue, 27
 Dec 2022 00:33:47 -0800 (PST)
X-Received: by 2002:a0d:d815:0:b0:3b2:140:afd1 with SMTP id a21-20020a0dd815000000b003b20140afd1mr26532640ywe.48.1672130027025;
        Tue, 27 Dec 2022 00:33:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672130027; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbTlHPFlmB1MsKmw7+r5l46NZSXb8k4cUeGtTzyrsD2u0X3f/Mui4/euC0XQc4SDms
         romOX3viPVme++B1JOfReQVVOSUjRxYQ5QrhyJQLwO9b+LueZy67CMPajhwfIR7b5h9t
         4Nii3ibZI4djlJqlh7Jdy4AyeMbmbP/D5oEoMFx7/0FuDkzZOfh9B4f+xgH1Uo/psf5Q
         NQPsemg0LCevf2tdaKSepk7DbX3DfJ8g0dOHXWSAwOO/2axUrij95qJR9bTQZmXHZwnc
         I56EvFlYbuWhQDyvHC45A02Ocr6eCT1nWJhnSsUvfC92XXUbtZZuaHiW15DuE/aUxaJZ
         A14w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=DiuYZjmUHw3nGyRgHo0u8gDUr2AHc+UIX7KzcQmjoFI=;
        b=B8+1TZ85IbE/bHU0ImOv0x6XZv18h3A/Qk9sNh7Cp8G7M64niyDe2xuCc0SpgvovZj
         bZiq2x5/0oV8ueHUF2tmjBlAaIx8KfefvzffPc9kCUG7WbmDrWIqY/IM6JCSY2emFDe+
         fi+YFJdWAxG7TnBJpMtfzGQHvgwSYuh0rR4udKqNaiPkepPkTY1IdzyDbQXwXE2Hj7Kb
         SF8zZTnqh4Swy3AvDaThan6eoQAXhlF7tUQVRpRiV2RfA25/xPNVvZjTHDpNjbSlnN9t
         HWXQL1W/hIgLfovSWO4THO+nVe5VsSYGpjLZI0zN38OCixlpr8kyqpeMw7f8CLWMuMz+
         iw2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id bh8-20020a05690c038800b003d82e3c1d09si947166ywb.4.2022.12.27.00.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 00c0e9e32d6f4a10b9d506ac4a76ff83-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:6423946e-8e03-4ca1-b0a6-9f70933bfbb3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:7f4a13f4-ff42-4fb0-b929-626456a83c14,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 00c0e9e32d6f4a10b9d506ac4a76ff83-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 266346189; Tue, 27 Dec 2022 16:33:38 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with ShadowRedundancy id 15.2.792.3;
 Tue, 27 Dec 2022 08:33:31 +0000
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
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
Subject: [PATCH v29 10/11] soc: mediatek: add mtk-mutex component - dp_intf1
Date: Tue, 27 Dec 2022 16:04:42 +0800
Message-ID: <20221227080443.6273-11-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;       spf=pass
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

Add mtk-mutex DDP_COMPONENT_DP_INTF1 component. The MT8195 vdosys1 path
component contains ovl_adaptor, merge5, and dp_intf1. It is a preparation
for adding support for MT8195 vdosys1 path component.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-mutex.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
index c1a33d52038e..41cba6aa0e83 100644
--- a/drivers/soc/mediatek/mtk-mutex.c
+++ b/drivers/soc/mediatek/mtk-mutex.c
@@ -602,6 +602,9 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
 	case DDP_COMPONENT_DP_INTF0:
 		sof_id = MUTEX_SOF_DP_INTF0;
 		break;
+	case DDP_COMPONENT_DP_INTF1:
+		sof_id = MUTEX_SOF_DP_INTF1;
+		break;
 	default:
 		if (mtx->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mtx->data->mutex_mod_reg,
@@ -642,6 +645,7 @@ void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
 	case DDP_COMPONENT_DPI0:
 	case DDP_COMPONENT_DPI1:
 	case DDP_COMPONENT_DP_INTF0:
+	case DDP_COMPONENT_DP_INTF1:
 		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
 			       mtx->regs +
 			       DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg,
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-11-nancy.lin%40mediatek.com.
