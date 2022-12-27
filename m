Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKGOVKOQMGQEPEB2YGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE18656821
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:57 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id c1-20020a9f3d81000000b00418b667e367sf5099864uai.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128296; cv=pass;
        d=google.com; s=arc-20160816;
        b=VyBLKtEOvqT3OUC6XCE1iDgex7JzpOenZ2YlkDOiN8+llMNAMzvWppRinfr3AzS4Sp
         Ewh2MduWWjz7SZ/ZqcDG9PmtzLwr3JpTY2NOsx2GO78hlEbkI7Wcno4OB1EQl//6L+Sz
         IwyCTCl7UaMjwE36MaYftcpk8J2q3SUeX3MsRbDz5HMmreJzmMEF/TKbXONMtRfpmhlZ
         z5YrESdk+u39s1M7gaB6wNjEWuA61cnVoQB2ygjTh6CLC5RBGNjPe4xUJpKYHdtadIJN
         YfIEvfF0b6QjoDDzfjyAGmWde0HhkUWUOAjWrjzBEQ9LOPtMsrWQyvvJZMR1Nx8ZRoWj
         x4rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=9qYQv4Kn5hZBJl2DKaliYuS8ztpdcqKU1jbbSc+1PQs=;
        b=flbmVOFpwysfMYAQMZqOPlApOHtS/wy7d5+VZAnq34rS2NslDMSNk6tKWVlsXiLaka
         WaAuCAZFkwrDBYGTa15e6ITA8FCe1FhCE7wnDscF+HF/Pp+JQgh8xlE/ZFw3OrANKh3V
         ZnY4gyAn9ufdjm8O/BTxAq2ELnGLr8PHD7gwLv6Y7yyhA8xqO8oDUKtFWKDCg+KzpLs7
         /MuHAOiox2cRAPH6cHGitAYGWKWiv+hOi/2OK5KXGlx67S3GMrhgx/CK354NGWSu7R4/
         e7TmN74WZoLsTI4ewUuxsnMFVm1HHj03cUbeg+Q7JEFsCJnZ+x0ytteMQaxTSqZUTn0l
         vPYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=Cj+FnrUg;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9qYQv4Kn5hZBJl2DKaliYuS8ztpdcqKU1jbbSc+1PQs=;
        b=X0Y9yZjUfGLI7heptqk8oXuyoTY6FcEMFrE0rzYbS6in6DPwIszXNuaLmYlsz6ozFA
         YSafpyGo86wbrMHspXLoPe5WpMdyJ+jQd7/Ty7Gpk4eWxjGsIPjYeGXxsr+Ntk4ykn9Z
         0c4Mxv+xZFT7oZ18k1CMvDof8nPdZyJSxbeiP/DQd2WkHLwYqRWmj/21ev+3BmJmOvob
         +gvryRGcBA4lkAfz2GfO8MdelpEv17AnaHabL/hCcS6vSHEF2Tz8E+ESjrFhxE47DOVg
         qS2oacwi3A79C9pQWQWs0G0H3RUP1KI9If4OC3Mwx/pCGfH6bKA6Gof/f+3Hodkv3cSR
         e6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9qYQv4Kn5hZBJl2DKaliYuS8ztpdcqKU1jbbSc+1PQs=;
        b=vO5n5WF9TFYKfeRqn8Kr0DOwKE8EvgKW0K+dWawZ5rT1Jy5okNsk9LJcWmKTEDgWPf
         c5u0M9OYZ3+8N3hdvYifMGErrUJ9JVczih542RcNaDe42hMru2Gw4UhUhv/lnh+col0e
         93ZvznG5vZlt8wa0SS2JoNmuhjwr9umm0zIVXYDyh1uYisd1SFug7JbdH1WEgbIJtjGS
         VvtUG3inM3na6EnnEgiwXpRPhgsvhmfEA3lLWinosmb4VSWFObRfa6REoCu/K46GbTtu
         sH1gQk0up40K6oacgsEV1gzKQ4eewgMzt2N8K/TcEjXL1Dv0IONWuzcfvVUQV6EDxByA
         MOdA==
X-Gm-Message-State: AFqh2kpzL1aMyfg26E7d+wUXwhjjqRKb3/qxtKghE+5hGRVpCTnXU4JM
	FAjSWUNkIyU91mqux8FS7x4=
X-Google-Smtp-Source: AMrXdXsTp8+hXUtv8CLQS9zgraZ0UmL6xCJ5rxc6i2FmSElVoRfDhD+OJSp0RqtcwZEc5gJQ2bMUTg==
X-Received: by 2002:a05:6102:1594:b0:3b1:4b76:5b44 with SMTP id g20-20020a056102159400b003b14b765b44mr2206536vsv.53.1672128296563;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d388:0:b0:3b5:2e9b:8c86 with SMTP id b8-20020a67d388000000b003b52e9b8c86ls3045584vsj.10.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:55 -0800 (PST)
X-Received: by 2002:a05:6102:191:b0:3b0:9045:4d8 with SMTP id r17-20020a056102019100b003b0904504d8mr8390522vsq.30.1672128295664;
        Tue, 27 Dec 2022 00:04:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128295; cv=none;
        d=google.com; s=arc-20160816;
        b=oWqnWYKCEckQQE7SlQOOPMO7j9J+vi/hap9nVlZ+TdEs6D1kUwVYpwk9fglYYmaTAs
         4IEYX8zYzk1luruWsDWBVfXoWCrXHL1LIhXewKfk7+wvx0LxjPIyZhO71ULJL3fEbRfv
         iZIsZYjeq3V2/Vnr4ZyyK0TbxoO8dTQ54qAb0yoVHQS1rgeOxI37la0G5GPA0eQhd7el
         4tzDOAJJ1tn1s9Ymqggw25cTgBwR9DuuzvWg4hZbXoeozo++GnHyLAo6ER1xX8CKY8UD
         dnmNAWCnoL2e12llgxxw2Zs8AaKL0fbBRZ0ZottpjIGHxlRCsqLz5LywJ+/NqAtORjaQ
         QgUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mcbWEcOdR/JCdfXNdHZ2aFcnD0Q5pjwCLOZmgfDcIeo=;
        b=R0bg1KU40DHZuRf1fZ4Zi/Ql+6hLnlN3/FYJE0bF0dO9gOGz5VHZ/0yGkMa7AuYbom
         NcUWP/NrICPZbV50M3Qc573QzMPgwtyEj27EQlof6tjkMJkrBmqpGydbjJu46zCbz9vr
         kXE/cOnMuqb5OCOORxV4UrxrD4BZ+Nihj17BHCLaVLPGAdaWTz9R+kabzpSAB9lEtAc/
         n95uEiZ8yXPRRhM7ZkRlHAauMY4yzd0u3O06pGUXBILUotkUqeLZ9aRpYLfWYvXkD9dT
         DhEaPC9o1MtnNV6BkzoFEyrfSgvsH117M8M4frFjsGAXYnODJhgPw7vaBCH/oqcNMOPH
         nOXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=Cj+FnrUg;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id az42-20020a05613003aa00b00418e1741f27si3098573uab.0.2022.12.27.00.04.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 172d63e472544d588a1d3121c9bbcbfc-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:c4d6d3ba-7013-44c9-9670-0fbe6fe39003,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:70
X-CID-INFO: VERSION:1.1.14,REQID:c4d6d3ba-7013-44c9-9670-0fbe6fe39003,IP:0,URL
	:0,TC:0,Content:-25,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTI
	ON:quarantine,TS:70
X-CID-META: VersionHash:dcaaed0,CLOUDID:cbac838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:221227160449OE9YB67N,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 172d63e472544d588a1d3121c9bbcbfc-20221227
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1144416791; Tue, 27 Dec 2022 16:04:47 +0800
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
Subject: [PATCH v29 08/11] soc: mediatek: mmsys: add mmsys for support 64 reset bits
Date: Tue, 27 Dec 2022 16:04:40 +0800
Message-ID: <20221227080443.6273-9-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=Cj+FnrUg;       spf=pass
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

Add mmsys for support 64 reset bits. It is a preparation for MT8195
vdosys1 HW reset. MT8195 vdosys1 has more than 32 reset bits.

1. Add the number of reset bits in mmsys private data
2. move the whole "reset register code section" behind the
"get mmsys->data" code section for getting the num_resets in mmsys->data.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabor=
a.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
---
 drivers/soc/mediatek/mtk-mmsys.c | 40 +++++++++++++++++++++-----------
 drivers/soc/mediatek/mtk-mmsys.h |  1 +
 2 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mm=
sys.c
index 3383567219f8..02d08f85cc1c 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -20,6 +20,8 @@
 #include "mt8195-mmsys.h"
 #include "mt8365-mmsys.h"
=20
+#define MMSYS_SW_RESET_PER_REG 32
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data =3D {
 	.clk_driver =3D "clk-mt2701-mm",
 	.routes =3D mmsys_default_routing_table,
@@ -51,6 +53,7 @@ static const struct mtk_mmsys_driver_data mt8173_mmsys_dr=
iver_data =3D {
 	.routes =3D mmsys_default_routing_table,
 	.num_routes =3D ARRAY_SIZE(mmsys_default_routing_table),
 	.sw0_rst_offset =3D MT8183_MMSYS_SW0_RST_B,
+	.num_resets =3D 32,
 };
=20
 static const struct mtk_mmsys_driver_data mt8183_mmsys_driver_data =3D {
@@ -58,6 +61,7 @@ static const struct mtk_mmsys_driver_data mt8183_mmsys_dr=
iver_data =3D {
 	.routes =3D mmsys_mt8183_routing_table,
 	.num_routes =3D ARRAY_SIZE(mmsys_mt8183_routing_table),
 	.sw0_rst_offset =3D MT8183_MMSYS_SW0_RST_B,
+	.num_resets =3D 32,
 };
=20
 static const struct mtk_mmsys_driver_data mt8186_mmsys_driver_data =3D {
@@ -65,6 +69,7 @@ static const struct mtk_mmsys_driver_data mt8186_mmsys_dr=
iver_data =3D {
 	.routes =3D mmsys_mt8186_routing_table,
 	.num_routes =3D ARRAY_SIZE(mmsys_mt8186_routing_table),
 	.sw0_rst_offset =3D MT8186_MMSYS_SW0_RST_B,
+	.num_resets =3D 32,
 };
=20
 static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data =3D {
@@ -72,6 +77,7 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_dr=
iver_data =3D {
 	.routes =3D mmsys_mt8192_routing_table,
 	.num_routes =3D ARRAY_SIZE(mmsys_mt8192_routing_table),
 	.sw0_rst_offset =3D MT8186_MMSYS_SW0_RST_B,
+	.num_resets =3D 32,
 };
=20
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data =3D {
@@ -221,13 +227,19 @@ static int mtk_mmsys_reset_update(struct reset_contro=
ller_dev *rcdev, unsigned l
 {
 	struct mtk_mmsys *mmsys =3D container_of(rcdev, struct mtk_mmsys, rcdev);
 	unsigned long flags;
+	u32 offset;
+	u32 reg;
+
+	offset =3D (id / MMSYS_SW_RESET_PER_REG) * sizeof(u32);
+	id =3D id % MMSYS_SW_RESET_PER_REG;
+	reg =3D mmsys->data->sw0_rst_offset + offset;
=20
 	spin_lock_irqsave(&mmsys->lock, flags);
=20
 	if (assert)
-		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), 0, NU=
LL);
+		mtk_mmsys_update_bits(mmsys, reg, BIT(id), 0, NULL);
 	else
-		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), BIT(i=
d), NULL);
+		mtk_mmsys_update_bits(mmsys, reg, BIT(id), BIT(id), NULL);
=20
 	spin_unlock_irqrestore(&mmsys->lock, flags);
=20
@@ -282,20 +294,22 @@ static int mtk_mmsys_probe(struct platform_device *pd=
ev)
 		return ret;
 	}
=20
-	spin_lock_init(&mmsys->lock);
+	mmsys->data =3D of_device_get_match_data(&pdev->dev);
=20
-	mmsys->rcdev.owner =3D THIS_MODULE;
-	mmsys->rcdev.nr_resets =3D 32;
-	mmsys->rcdev.ops =3D &mtk_mmsys_reset_ops;
-	mmsys->rcdev.of_node =3D pdev->dev.of_node;
-	ret =3D devm_reset_controller_register(&pdev->dev, &mmsys->rcdev);
-	if (ret) {
-		dev_err(&pdev->dev, "Couldn't register mmsys reset controller: %d\n", re=
t);
-		return ret;
+	if (mmsys->data->num_resets > 0) {
+		spin_lock_init(&mmsys->lock);
+
+		mmsys->rcdev.owner =3D THIS_MODULE;
+		mmsys->rcdev.nr_resets =3D mmsys->data->num_resets;
+		mmsys->rcdev.ops =3D &mtk_mmsys_reset_ops;
+		mmsys->rcdev.of_node =3D pdev->dev.of_node;
+		ret =3D devm_reset_controller_register(&pdev->dev, &mmsys->rcdev);
+		if (ret) {
+			dev_err(&pdev->dev, "Couldn't register mmsys reset controller: %d\n", r=
et);
+			return ret;
+		}
 	}
=20
-	mmsys->data =3D of_device_get_match_data(&pdev->dev);
-
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	ret =3D cmdq_dev_get_client_reg(dev, &mmsys->cmdq_base, 0);
 	if (ret)
diff --git a/drivers/soc/mediatek/mtk-mmsys.h b/drivers/soc/mediatek/mtk-mm=
sys.h
index 77f37f8c715b..e19994749adb 100644
--- a/drivers/soc/mediatek/mtk-mmsys.h
+++ b/drivers/soc/mediatek/mtk-mmsys.h
@@ -91,6 +91,7 @@ struct mtk_mmsys_driver_data {
 	const struct mtk_mmsys_routes *routes;
 	const unsigned int num_routes;
 	const u16 sw0_rst_offset;
+	const u32 num_resets;
 };
=20
 /*
--=20
2.18.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20221227080443.6273-9-nancy.lin%40mediatek.com.
