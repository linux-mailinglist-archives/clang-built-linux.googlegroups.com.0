Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBJGOVKOQMGQEC5DHPXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A81BC65681F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:53 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id u1-20020a5d8181000000b006ee29a8c421sf4162774ion.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128292; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2/72llVZhIJ6srVAjSMAAm8ktTF8KxqhCoi2pq59N962uJcehMh44tb1jqoI4dvLV
         79PT6jpXXuxhHjf+t6NB5JGtRPZ5vXriKp/eKeRsiGKo8gKuLKB9NGSWt20ym2KihXpG
         CvtvhQCNcj5wxdhyAlJBLALDUdpGmf4Vig4rjz8S04oNlNWFZkzs4JObUG0IfYlkwthL
         eAcSKBWyK9MrVQiAM4EMa1oA2OgMviIQ1nlhyIhZPkkpaADEx/LaJ2Y4D49KLVHsoOq1
         QGNQLIKqp6Z6Yex8sPW9f6Wh7czaMUGjBqsO3yDkU0xP7CYLjujlPNwzcUv8ysfP7ynT
         vCcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+MYL+1r1CtE8Ean7tQP0fAjYiiCPTKnupkcj0Si+8n8=;
        b=flJC+WiL3UAQaFYphi7fi8GtopciJwuQWOZqpxXemfpKl5a+A8s0JOq6wHakCA6ktH
         GAYuqZ8kTSiVZWYghLOlIgbTIJlDr7AC/U+86xVNeGdftXfZpO5mEP/QJgsuYrw4HBhy
         nyMW9lNa97kw0nJJy8OA8uWez1zMzq7EDXAJAJ9ihq6+Ligcnb3yj1MCng5CZAGEvjuM
         2GZyThcTPbrD0Yxm3thaqSqgHqpNnJx1fTPEzZNTZj1rO+ojuXDmQhk5hcLqKDUf5S1N
         6KKcn3Md4m7kCI48fTIfIHcF9dOb/zAGa8BKBTwhj0qDJsXn98CqMfKMXSc8S8wXeJgc
         ivUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=A5KsqmHn;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+MYL+1r1CtE8Ean7tQP0fAjYiiCPTKnupkcj0Si+8n8=;
        b=pEPf/RlJRtXekqzvXDhRHt84Tgf0AEi/JmOorgSzum+ToZnuWIpcM0cjURQAkfk8ir
         o5x9oNLppA9kBiTr36ZevWnHom+yCY8BeIwUdEBp1HAJrFba36JpdWZEVny4U7n185++
         0gm4r51+AcDtINJPmOo3mfIprc7ml+qKRwLh8ASOd0ntKattETcXMn2Eu01jBoZ6YAP8
         MYflRaFDzu38aUTySup+TJTMdW1wKPlNDZK7gWg4qQs9wqP7LQf6OXucB6CxZtBHbWcu
         z3TIw1SrMTiZ58dvp/S7S2X+E2goubHC2Rc5NCA8/uROOp86JVPC5mVwFcJQlphJ3/gN
         GF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+MYL+1r1CtE8Ean7tQP0fAjYiiCPTKnupkcj0Si+8n8=;
        b=aY4yquEOmLxMFQrT92XwFbiSk+pLOPz5b/caztoTRbCB5wmzQx+mmqJhvhb/qu0WlL
         7Pv8xa8o6YvDPeG3MddROvwAQxRXP1SgWn93og4Iy3Hk6GWhgCI/9ZIrOTnfUL2u+3bG
         0lZO6RDtdkj1ICeQXeyMJOBiM7g+O65PfGfA4ps/LSOXSLAZdK8KToZbgbtjC1i06sWm
         wRrwvWsNkP/MTJeh+96x2O7nluNVynBwThpEq0UbnloC1I/bWB61ReJvLzQMB4ygOOaH
         T77bVMuylcAIMrdKKLsZHvM/z8UywoJH4rJ1VJHIAX3VrONCUGJUZRq7wefG2dPg8gUS
         sNVA==
X-Gm-Message-State: AFqh2koY6vJ2EJlntYvMZxWf/nAQSdnkssKXBBe19CPs49p4VJiGPyRl
	e7TijxZlPjW83wghPPpKHEA=
X-Google-Smtp-Source: AMrXdXvB2N5vg3NC5Z+/owjqwL5IumIvfoAYS4Y4t/+vY9epee7h0d6zwKfIlKPG/IWE8QEYoOEVRQ==
X-Received: by 2002:a05:6e02:d8f:b0:30b:df09:de12 with SMTP id i15-20020a056e020d8f00b0030bdf09de12mr1077010ilj.244.1672128292546;
        Tue, 27 Dec 2022 00:04:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9396:0:b0:6bc:6044:840e with SMTP id c22-20020a5d9396000000b006bc6044840els1882551iol.0.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:52 -0800 (PST)
X-Received: by 2002:a05:6602:14c:b0:6e0:2404:39b3 with SMTP id v12-20020a056602014c00b006e0240439b3mr13962516iot.0.1672128292077;
        Tue, 27 Dec 2022 00:04:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128292; cv=none;
        d=google.com; s=arc-20160816;
        b=S3j83bOpLJR0gwcBQMiRldkOgNZkI4XPhFJA7iyK3C6PYYKFTZ9lIuyeY/WF3qCCI/
         DS1lCEF7Vmm2mYevOB/oyFIDHTg2isTSISs/3iZzd1qqMmzJXN6Vj/5UD+Y5BHezTmfy
         VavNlFObVEAGwnpnuAM1NYKNsa4zdjglc1oxZVcFJPgh5WKpx+/ZmtvUwGLs/2A7/8Rg
         tgBqtpxMTJPNy9mBm+cShI8byQ0uPgDPBgv3s88VeHqOM7/H3aO/M0d77slkprWkFCDZ
         8cMUgdpvttXM6iQz20YxtVrvNJgYNeq6jTm74Fi/cJJbQ7/IXoqc4csO0VoR7p2YK3MA
         8h3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=LI6KXZZE/kkO7EEm4dWHUktdzH3RaSMlvcmGHH9Zdtc=;
        b=tPVKdchxN8Q4fnL6ZezeA4HL3bUk3M/kmJrG+D9C0lQJDOa+Ctz3kVuObeW2LpjWjn
         g9LMrsew/YOAJJULBaX+x7473yVfCf1wSm5Z/up2iUA9k3nP2/6pYL1TTwWHx2Kyapf/
         8r/nSFWc7YE7Ajdm/kH4/tQU9YzYw7Fd/VgZFkomXSG7uDS1B3AtWkimQnYsB+AVlisq
         XHEboRPx9bltaHxG7Wv2CfDdXHP4gX44HB9oYiNmJAVxfzwSIUZyrX8w/GnLimI6HS1e
         XaHIFokj483omUQ7dW8mmphFtpTn9rOa60MT8ErXZiWDBBrC9XNkioCvE8g4yEO1j4Yd
         Lqgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=A5KsqmHn;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id x1-20020a92b001000000b00302df8abfa9si894335ilh.1.2022.12.27.00.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: f2356c117da644ab82ea27516957f501-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:5217815c-31ce-41a3-8a77-8e8bb958790c,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:39ac838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: f2356c117da644ab82ea27516957f501-20221227
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1162796468; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
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
Subject: [PATCH v29 03/11] soc: mediatek: add mtk-mmsys ethdr and mdp_rdma components
Date: Tue, 27 Dec 2022 16:04:35 +0800
Message-ID: <20221227080443.6273-4-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=A5KsqmHn;       spf=pass
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

Add new mmsys component: ethdr_mixer and mdp_rdma. These components will
use in mt8195 vdosys1.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 include/linux/soc/mediatek/mtk-mmsys.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index d37fa6a426a2..d4b535a3383e 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -35,7 +35,16 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_DSI1,
 	DDP_COMPONENT_DSI2,
 	DDP_COMPONENT_DSI3,
+	DDP_COMPONENT_ETHDR_MIXER,
 	DDP_COMPONENT_GAMMA,
+	DDP_COMPONENT_MDP_RDMA0,
+	DDP_COMPONENT_MDP_RDMA1,
+	DDP_COMPONENT_MDP_RDMA2,
+	DDP_COMPONENT_MDP_RDMA3,
+	DDP_COMPONENT_MDP_RDMA4,
+	DDP_COMPONENT_MDP_RDMA5,
+	DDP_COMPONENT_MDP_RDMA6,
+	DDP_COMPONENT_MDP_RDMA7,
 	DDP_COMPONENT_MERGE0,
 	DDP_COMPONENT_MERGE1,
 	DDP_COMPONENT_MERGE2,
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-4-nancy.lin%40mediatek.com.
