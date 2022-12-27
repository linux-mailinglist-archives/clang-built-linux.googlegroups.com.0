Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKOOVKOQMGQEE4DZHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id D96D8656827
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:58 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id p18-20020ab01552000000b003e348b9ba6fsf5057031uae.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128298; cv=pass;
        d=google.com; s=arc-20160816;
        b=LavTfojezMgXwO2UVk6dK+WYCQeIzNdXR3VEWcBbrhELngrAmKLCG8TQkAUcqRkH6z
         bVGQpinRoP2x6pS2Mtl1XuLOqICNMwhXo6nf7BlhbZGBoRgqXQ5MbaFjR4vU/DUslJsr
         ry7BSagWp3SnLulq9nDkLrhRcfs1F1BWTEqC7AD9we15cCjGNEKcOzChWRWElvJO0Gz+
         /29Z8U7ouJ82sFMZ8NboIHKWtLaKSN+HTr11z9uCjSwk+gPyuGHYIZkioKP8KmOv0Mgy
         JldOTdn5ttFOLZGbydexiBi/af61oXShVp/30UhuzKPNHCSYIMrQ5wgjDTCzdhnQAuVX
         h//A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=tz+rw0jPFI/0YEicgMpZaP016j8hShxJFTzmQ9q5A74=;
        b=KsqqIsCYOFh9v1T0UWxMIM482/2/Agq+hoCfpac9yCHts8O8oNEdZKvZGHaACVet1f
         I7UgpPuO3rDfY/KU/FA1th+4J0GtWWJfFOiuGzKO/017KDPtVhTxNVf6vAukqFMqWozI
         GuQW4Kryeas6o5zbtIba/vEpvIS0LCIrkpgSr69w4C1z2MVixOW/9a/hF0RYvPYnmxMN
         JcywpTom1pNYp6tt52Rub0ZO1R6ndmcFREHCG8YplLVIBARVT0hK6KYbXA+ogB51sq95
         CiJqcAUlrUordeL9q40UAZjsWZPFXtHqhxe82rJ/VA77LylP/wFS7RBOYvyhcihzp71I
         DlGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=HkV3EVMu;
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
        bh=tz+rw0jPFI/0YEicgMpZaP016j8hShxJFTzmQ9q5A74=;
        b=FW3I/YHZIP2rccYmg1flQcbFtm3p96FnOfRSYNKvYoG4CY8oSVv3fkiUajEsO9/dYh
         ZMQ22vBP0okExcR4xvQ3lhdB1hbBOONEMshO0OB66D1YjXyri6z5vQJ/nRiuxeIykXw3
         7A+jWDbNQ9y3l5aJjBId+SGdnkFttutE5RI82b7fmlcbaDPByEpLT79vedtIhWBOwD77
         qhNrwXdjnfjufx4Vlq8+uyGw3scAOlQhH5Jj0NPgYs2D1QPcWFGlWPjtaeIIHy/vi6ba
         AKWeekZ04tgW6n5x6yba74M3/9lpM3R+NaF9g9s0NUZNyhKcRcU1sEIJuR2/Ridmx2Xj
         MoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tz+rw0jPFI/0YEicgMpZaP016j8hShxJFTzmQ9q5A74=;
        b=6LfLCTRA+aPcwq3NO/8hpBX+PJXoYW2Vyk7rV+Rx1DU3TCuqo+UfwtuSDypvXvTrzA
         k3pk8/PJKeLIxT2RZk6iwO5wyXCs4r67iuSe8ADo5RCF5qdRp4V7W+SAxI0wZFUb8A3O
         RdkaGufcsT/uYPFJ3/cw7/MvAX1W1J/aplnk7eRAIzgdQdo2COwrFf6sxfW4LUBcH55l
         p6EZT5rF6Dq5ikPPcmcRoJeTEYZrTK06OFsM1Pp6WDC/wORW9gs+KsRgNvU3BDGUdCE7
         rMNyzak+ccLCnGv8KEpesdyC4cqsNoRTqifOb3cCkEif8NfuscFaGm/6zSb/gmNpO/xj
         bqCg==
X-Gm-Message-State: AFqh2kqmZqWafWXMhTPPuxKi7HTPsQ1F8q6jj8xWYomSJNM9qXTdFuT5
	nU55DtjpWxeIbpoCjsCpXjA=
X-Google-Smtp-Source: AMrXdXtNp/IxBa3CHEje3WjJeYyjZfH9s8OX+526sIpws6EO/pRAVtrqjPnTislK4BzXVnDVw3PbQw==
X-Received: by 2002:ab0:2e84:0:b0:419:2056:34b8 with SMTP id f4-20020ab02e84000000b00419205634b8mr2046143uaa.85.1672128297794;
        Tue, 27 Dec 2022 00:04:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2582:0:b0:3bc:2cac:f10e with SMTP id l124-20020a1f2582000000b003bc2cacf10els1695421vkl.0.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:57 -0800 (PST)
X-Received: by 2002:a1f:9110:0:b0:3c7:eefd:c8ba with SMTP id t16-20020a1f9110000000b003c7eefdc8bamr6815267vkd.5.1672128297251;
        Tue, 27 Dec 2022 00:04:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128297; cv=none;
        d=google.com; s=arc-20160816;
        b=FYmLr+/6LIVvKbYGV1AM/9tQOwWvuZIe+mcvp0V+/aW3nMffrf1x0ieX6eSWL/1rou
         zOtrasOJ/NKDUJ8V9DO+hr0rzkocZu/RZnrbZvwoeLKip1X22oH75LqFu9yL70ozi80G
         73NWIRlhCFnvFkOTi6G0CSnEs00TVIzjJsvr1v0f4UBJ+g2vNSWqjrFRkQ1jw3pfY50A
         /POWIf25jn9doVe3uamDGvdxAhLx5wwNK1cpxq6ImbfLUpj4Q80mxJs272dW4E6ELWyr
         utscHZfKWBKcGzxTHc3UEiZr1qiHdjrm0mWhlr2x4ScP0eqzBpzPO4Y2Jzm0GyigK0SW
         O1tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cZIChk9JaM0qhnREjJqCODQo8cPT1605aCTj2g2EwJI=;
        b=JRMjqcLkBEc4Tlxp2XyqEYpXawRuLJlt04vjwZwqNn3QdyML/UaOH5t1QVjkCk5/2p
         1V38zacU0Y5KqRuCD1AZim+8il6C4ykT3DclgeyEBaRC1lhk1FXQavKvISxVLMAwwcwd
         3AP2AELwKSV1oMI7yrz3SlpUpQNMmb7vSrNwjtBbruqOuiV09ksdlsPuSuwcJm1clz02
         Zxlgr4twA0S7GDJRLy2RDrE6qJjcNKLySuSk5GYRPfKq9ufYm2Q0cqKlA4xWXREm5Ct5
         +ctfdy4HSt18SUQ2FGzex64dCcBcWflDo1W8kxJyT+wjoXGNyuivM8wstP4nvY5chbjy
         Voqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=HkV3EVMu;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id ay22-20020a056130031600b00495a8105fc7si3593598uab.2.2022.12.27.00.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 933e95db1d1746fd87c5a6b124ad1e88-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:a2df3a17-4e69-4647-8a04-a0652f0bf655,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:2face852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 933e95db1d1746fd87c5a6b124ad1e88-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1559999611; Tue, 27 Dec 2022 16:04:47 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
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
Subject: [PATCH v29 05/11] soc: mediatek: refine code to use mtk_mmsys_update_bits API
Date: Tue, 27 Dec 2022 16:04:37 +0800
Message-ID: <20221227080443.6273-6-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=HkV3EVMu;       spf=pass
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

Simplify code for update  mmsys reg.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabor=
a.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.=
com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
---
 drivers/soc/mediatek/mtk-mmsys.c | 45 ++++++++++++--------------------
 1 file changed, 16 insertions(+), 29 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mm=
sys.c
index 6deb6552f035..d235cb678da0 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -99,22 +99,27 @@ struct mtk_mmsys {
 	struct reset_controller_dev rcdev;
 };
=20
+static void mtk_mmsys_update_bits(struct mtk_mmsys *mmsys, u32 offset, u32=
 mask, u32 val)
+{
+	u32 tmp;
+
+	tmp =3D readl_relaxed(mmsys->regs + offset);
+	tmp =3D (tmp & ~mask) | (val & mask);
+	writel_relaxed(tmp, mmsys->regs + offset);
+}
+
 void mtk_mmsys_ddp_connect(struct device *dev,
 			   enum mtk_ddp_comp_id cur,
 			   enum mtk_ddp_comp_id next)
 {
 	struct mtk_mmsys *mmsys =3D dev_get_drvdata(dev);
 	const struct mtk_mmsys_routes *routes =3D mmsys->data->routes;
-	u32 reg;
 	int i;
=20
 	for (i =3D 0; i < mmsys->data->num_routes; i++)
-		if (cur =3D=3D routes[i].from_comp && next =3D=3D routes[i].to_comp) {
-			reg =3D readl_relaxed(mmsys->regs + routes[i].addr);
-			reg &=3D ~routes[i].mask;
-			reg |=3D routes[i].val;
-			writel_relaxed(reg, mmsys->regs + routes[i].addr);
-		}
+		if (cur =3D=3D routes[i].from_comp && next =3D=3D routes[i].to_comp)
+			mtk_mmsys_update_bits(mmsys, routes[i].addr, routes[i].mask,
+					      routes[i].val);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_connect);
=20
@@ -124,27 +129,14 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 {
 	struct mtk_mmsys *mmsys =3D dev_get_drvdata(dev);
 	const struct mtk_mmsys_routes *routes =3D mmsys->data->routes;
-	u32 reg;
 	int i;
=20
 	for (i =3D 0; i < mmsys->data->num_routes; i++)
-		if (cur =3D=3D routes[i].from_comp && next =3D=3D routes[i].to_comp) {
-			reg =3D readl_relaxed(mmsys->regs + routes[i].addr);
-			reg &=3D ~routes[i].mask;
-			writel_relaxed(reg, mmsys->regs + routes[i].addr);
-		}
+		if (cur =3D=3D routes[i].from_comp && next =3D=3D routes[i].to_comp)
+			mtk_mmsys_update_bits(mmsys, routes[i].addr, routes[i].mask, 0);
 }
 EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
=20
-static void mtk_mmsys_update_bits(struct mtk_mmsys *mmsys, u32 offset, u32=
 mask, u32 val)
-{
-	u32 tmp;
-
-	tmp =3D readl_relaxed(mmsys->regs + offset);
-	tmp =3D (tmp & ~mask) | val;
-	writel_relaxed(tmp, mmsys->regs + offset);
-}
-
 void mtk_mmsys_ddp_dpi_fmt_config(struct device *dev, u32 val)
 {
 	struct mtk_mmsys *mmsys =3D dev_get_drvdata(dev);
@@ -176,18 +168,13 @@ static int mtk_mmsys_reset_update(struct reset_contro=
ller_dev *rcdev, unsigned l
 {
 	struct mtk_mmsys *mmsys =3D container_of(rcdev, struct mtk_mmsys, rcdev);
 	unsigned long flags;
-	u32 reg;
=20
 	spin_lock_irqsave(&mmsys->lock, flags);
=20
-	reg =3D readl_relaxed(mmsys->regs + mmsys->data->sw0_rst_offset);
-
 	if (assert)
-		reg &=3D ~BIT(id);
+		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), 0);
 	else
-		reg |=3D BIT(id);
-
-	writel_relaxed(reg, mmsys->regs + mmsys->data->sw0_rst_offset);
+		mtk_mmsys_update_bits(mmsys, mmsys->data->sw0_rst_offset, BIT(id), BIT(i=
d));
=20
 	spin_unlock_irqrestore(&mmsys->lock, flags);
=20
--=20
2.18.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20221227080443.6273-6-nancy.lin%40mediatek.com.
