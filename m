Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB3GQVKOQMGQESBZV6OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id A70C565682E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:21 +0100 (CET)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-14c90f25682sf6034278fac.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128620; cv=pass;
        d=google.com; s=arc-20160816;
        b=wnX5u2UKV1qpmR5IifRszuouRhbit2vOj6Lz0SFqwD1k3QtaYdcnq8pBqg18L1+vKS
         YWH/GxWrST9vRP2eW/+kLq+ElQTmfwJ/6vJP3pFXJ3uaPbSs+Z1MMMju+i5zlbagyavQ
         PEkKosmG8d1Mcm071btsfJIz4wAr2f4kzRZBjEYS2M64+m/196Sr6j9JDKXLRnUICSVb
         8kshyGN/mJ6LZw+Ol29ldkQOwrYy/ocPsthp4hyLqMZNV2FnDzJtLFgPiQNZ8MNJML6/
         gtbi9RCTv8csKjE1jXRg206/KtHxRJycXUY/ler4bdiVbtOS8s3mfb5dfe3cBlTriQ7l
         8xtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=RQ0jQRWzckOce8fLoHM2HzmrkLhvtEfGusbayq1dx/g=;
        b=I8I6POdbt+Eqajr2hxNcDdrkRMQWf3fQRKZdvf2Bx+M7yCKPGBEFRJ9ozncPF1IWJ8
         Epr8E2BgatxwA1mtOWgjQTWeahkVRmFgKKTberZ3fCbJL2gC59TY+cvNzJwXsu3OtGVv
         7qAR78OHXcAe2mGLXC0COEWw4c5FoLiVMW5CH7CP4zErK4M5J0u4HKWSemLJSnPhL/6w
         E5QNC0vx/0l5WgSVoOUSobcVbpV34zl18o6KGoXy2SmqqPFY47ckBxg7aFulE1jFRdvz
         +/0bWa9ktWD8TxcnBBDWJWCQ9WOMU+NHVpOubR7FuVeasN0VY112c895zW7FelxfFIkY
         Wi9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=OZywqhof;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RQ0jQRWzckOce8fLoHM2HzmrkLhvtEfGusbayq1dx/g=;
        b=E5Um47MmR2XHcAuwGklsOFrGCO0bs87xY1pT4x/OX0vsbL70oHKV6IhrI1w/iAKns8
         lcD7LUMKQ/4fHYF77osIry2iDSVvQMYlyHeRx18sq/+qrlleizzVsS5fQXIkYEgnrppH
         wE3YcZwytTsB+PEiOCgHZc+EqTPTXkqznddSFESfZNNym7IHfcxHtwjz/15su1lwPJvM
         m62ZaR4sYXnHoKy7ASUNL/oZ4B0TwlNfF81g6RMQdUDuzV2j3Ppi/kj46QgULbt+J64u
         qExkC5yn6wWy9W4qPfNXSyLYft93h9BT1nSLUQaFahf4/rI59TvN80BfjBef89oS+vP7
         oofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RQ0jQRWzckOce8fLoHM2HzmrkLhvtEfGusbayq1dx/g=;
        b=0t51QedvyXlPifEMyyYpfzr98Qb43AOee4/HH04bAB6cFFzLbbCpR5ubTSgRLUIi4B
         50Dc5uwhp5GTDmbbuiMQtMSDexXATWap0SzoniFuWbNhETaXCC2qovW1mfTp21DIHKtq
         GoiRYnRMhgEYByfbhfmgpGlctUbvYh4xWHQBr61QB23pS7h/5O3Ck07/q1tYonPeAZuF
         I84yZri20qWS9dU3qCXA95k3wfo7xrdr7rZc16oX314gJX6SvQOpPkcmmgdVJ1Xm9FC6
         fkqj3XNU9ZipNt2hT2JXs4J3suFi8NqB3vI2H9aIQVdNOyCKym01naReTGDyjeJB12cL
         f3oA==
X-Gm-Message-State: AFqh2krzqwAz0fIMCchIPfo6ku4ESryIdVwnzv4Kw6wCRKUAZIpZFokD
	nQbQ9NiV3ewrc0Rxkdl4W/s=
X-Google-Smtp-Source: AMrXdXtJr2eOXA5CXfKTd/0E6umOlGKDA9wCv6ijzXGVIoECBTtC3yjgw1NV7KEDrV07d6ZUiTa9mA==
X-Received: by 2002:a05:6870:e07:b0:132:1a61:8ed9 with SMTP id mp7-20020a0568700e0700b001321a618ed9mr1806273oab.105.1672128620442;
        Tue, 27 Dec 2022 00:10:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f0b:0:b0:363:19d3:70f7 with SMTP id e11-20020a544f0b000000b0036319d370f7ls3158446oiy.9.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:10:20 -0800 (PST)
X-Received: by 2002:a05:6808:1884:b0:361:bf9:ce49 with SMTP id bi4-20020a056808188400b003610bf9ce49mr11732261oib.27.1672128619968;
        Tue, 27 Dec 2022 00:10:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128619; cv=none;
        d=google.com; s=arc-20160816;
        b=INwE9gJNsBthN9xcWKBFBpq76iUqwKlrrBhVOFy4KUs2ge3SMDQiyR/8NDzNeTnCcM
         o6ZvThHoh8VyH25PGvlvCBF+3YbB/YNogZj9O2MG0l9uYXcUcTu8MXuQcH1RAyGZ1sWg
         jA0CXNnnFMbQgOdqm5lAzU059M9fsxB09AfSIx4OLdnzMwxJYeVEiBCeXizs2s2QDEHh
         ns0mvN7IQcGlK2eMBHYXlF101GW/Q2PBuFHg0Wy40OUsEGVQwd2ZkNVWU/SEgdyZUH4A
         BGlHqgUsysxyt2eAnXAs7ACCuaQLvytSXJ03U6Ug4N7Db+zId8SFB1Zb0tUzG8KpB82d
         3g9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MELzdRYLHnlKpkDvKNCI7mC29VSAUj7mA/KOtS1q/48=;
        b=dE+Tt++bb7x06ksh0Zc2M5M4/M0hYFC7cZCKVIs+erIVOlaKkyC1LdxM3a/1nKX1WT
         PVztCBbjBXhkU5Se76UfbYrf6l+l9BFOLBcgTX389Hep5tg6PyOjOnJkZviw/e/vrzHE
         1avHZIFiYWBjvf3iypM/nzvqMXNNGgePdjf/GIuFq3rHQopiVpNwTMhzWmTlJqsAQgmg
         A0Jfhixz1Dr3oJCAdW9bW8pph7ek64rUAZW7QQmW1iV6rP0FdaFSA4oRe4tEabOn3BKo
         7disJcqNKu+cUWvdwUops2gp8ycuYt19H/va3HsBDeSifla1xIyB47aZ5do6lyz0PzlA
         nhoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=OZywqhof;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id i5-20020acab805000000b0035c4c510304si1750283oif.1.2022.12.27.00.10.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:19 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 5bf6c2c1f2ca43c28fffb94c0cf75af4-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:66e61315-7a20-4923-9dfc-649f035b5ae4,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:788112f4-ff42-4fb0-b929-626456a83c14,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 5bf6c2c1f2ca43c28fffb94c0cf75af4-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1185620501; Tue, 27 Dec 2022 16:10:13 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:12 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob
 Herring <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Date: Tue, 27 Dec 2022 16:10:04 +0800
Message-ID: <20221227081011.6426-1-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=OZywqhof;       spf=pass
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

The hardware path of vdosys1 with DPTx output need to go through by several modules, such as, OVL_ADAPTOR and MERGE.

Add DRM and these modules support by the patches below:

Changes in v29:
- rebase to next-20221226
- fix reviewer comment in v28
  - keep original flow if comp node not found in mtk_drm_crtc_create()

Changes in v28:
- rebase to next-20221107
- fix reviewer comment in v27
  - extra new line at the end mtk_ethdr.h

Changes in v27:
- rebase to next-20221102
- change mmsys compatible for mt8195 vdosys1
  - base on jason's series[ref 1]
- fix reviewer comment
  - add error return code if no ovl_adaptor's comp found

Changes in v26:
- rebase to next-20220819
- resend for patch corrupted in v25

Changes in v25:
- rebase to next-20220803

Changes in v24:
- fix ovl_adaptor binding issue (mtk_disp_ovl_adaptor.c)
  - Since ovl_adaptor is an aggregated component, it should be bounded after
    all its child components are bounded.
- rebase to next-20220708

Changes in v23:
- separate[7] mmsys/mutex and drm patches into two series

Changes in v22:
- rebase to next-20220525
- rebase to vdosys0 series v22
- separate dts to a new patch

Changes in v21:
- fix reviewer comment
  - fix rdma and ethdr binding doc and dts

Changes in v20:
- fix reviewer comment
  - update mmsys update bit api name
  - add mtk_mmsys_update_bits error message if lose gce property
  - list all mt8195 vdosys1 reset bits

Changes in v19:
- fix reviewer comment
  - separate mt8195 mmsys component to a new patch
  - separate mt8195 vdo0 and vdo1 routing table
  - separate mmsys_write_reg api to a new patch and simplify write reg code
  - separate mmsys 64 bit reset to a new patch
  - separate mtk-mutex dp_intf1 component to a new patch

Changes in v18:
- fix reviewer comment
  - fix rdma binding doc
  - fix ethdr binding doc
  - refine mmsys config cmdq support
  - refine merge reset control flow, get reset control in probe function
  - add ethdr reset control error handling and remove dbg log
- rebase to vdosys0 series v20 (ref [5])

Changes in v17:
- fix reviewer comment in v16
  - separate ovl adaptor comp in mtk-mmsys and mtk-mutex
  - separate mmsys config API
  - move mdp_rdma binding yaml
- fix ovl adaptor pm runtime get sync timing issue
- rebase to vdosys0 series v19 (ref [5])
- rebase to [7] for modify vblank register change

Changes in v16:
- fix reviewer comment in v 15
  - fix mtk_drm_ddp_comp.c alignment
  - fix vdosys0 mmsys num before adding vdosys1 patch

Changes in v15:
- fix ethdr uppercase hex number in dts

Changes in v14:
- remove MTK_MMSYS 64 bit dependency
- add ethdr.yaml back and fix dt_schema check fail

Resend v13
- add related maintainer in maillist

Changes in v13:
- fix reviewer comment in v12
  - fix rdma dt-binding format
  - fix dts node naming
- fix 32 bit build error
  - modify 64bit dependency for mtk-mmsys
- rebase to vdosys0 series v16. (ref [5])

Changes in v12:
- fix reviewer comment in v11
  - modify mbox index
  - refine dma dev for ovl_adaptor sub driver

Changes in v11:
- remove ethdr vblank spin lock
- refine ovl_adaptor print message

Changes in v10:
- refine ethdr reset control using devm_reset_control_array_get_optional_exclusive
- fix ovl_adaptor mtk_ovl_adaptor_clk_enable error handle issue

Changes in v9:
- rebase on kernel-5.16-rc1
- rebase on vdosys0 series v13. (ref [5])
- fix ovl_adaptor sub driver is brought up unintentionally
- fix clang build test fail- duplicate ethdr/mdp_rdma init_module/cleanup_module symbol issue 

Changes in v8:
- separate merge async reset to new patch.
- separate drm ovl_adaptor sub driver to new patch.
- fix reviewer comment in v7.

Changes in v7:
- rebase on vdosys0 series v12 (ref[5])
- add dma description in ethdr binding document.
- refine vdosys1 bit definition of mmsys routing table.
- separate merge modification into 3 pathces.
- separate mutex modification into 2 patches.
- add plane color coding for mdp_rdma csc.
- move mdp_rdma pm control to ovl_adaptor.
- fix reviewer comment in v6.

Changes in v6:
- rebase on kernel-5.15-rc1.
- change mbox label to gce0 for dts node of vdosys1.
- modify mmsys reset num for mt8195.
- rebase on vdosys0 series v10. (ref [5])
- use drm to bring up ovl_adaptor driver.
- move drm iommu/mutex check from kms init to drm bind.
- modify rdma binding doc location. (Documentation/devicetree/bindings/arm/)
- modify for reviewer's comment in v5.

Changes in v5:
- add mmsys reset controller reference.

Changes in v4:
- use merge common driver for merge1~4.
- refine ovl_adaptor rdma driver.
- use ovl_adaptor ddp_comp function instead of ethdr.
- modify for reviewer's comment in v3.

Changes in v3:
- modify for reviewer's comment in v2.
- add vdosys1 2 pixels align limit.
- add mixer odd offset support.

Changes in v2:
- Merge PSEUDO_OVL and ETHDR into one DRM component.
- Add mmsys config API for vdosys1 hardware setting.
- Add mmsys reset control using linux reset framework.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>

This series are based on the following patch:
[1] Change mmsys compatible for mt8195 mediatek-drm
    20221126101220.18179-1-jason-jh.lin@mediatek.com
[2] Add MediaTek SoC(vdosys1) support for mt8195
    20221103032512.9144-1-nancy.lin@mediatek.com

Nancy.Lin (7):
  dt-bindings: mediatek: add ethdr definition for mt8195
  drm/mediatek: add ETHDR support for MT8195
  drm/mediatek: add ovl_adaptor support for MT8195
  drm/mediatek: add dma dev get function
  drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
  drm/mediatek: add drm ovl_adaptor sub driver for MT8195
  drm/mediatek: add mediatek-drm of vdosys1 support for MT8195

 .../display/mediatek/mediatek,ethdr.yaml      | 188 ++++++
 drivers/gpu/drm/mediatek/Makefile             |   2 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  26 +
 .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   | 533 ++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  85 ++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |   6 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   | 129 +++--
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  58 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 366 ++++++++----
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  24 +-
 drivers/gpu/drm/mediatek/mtk_ethdr.c          | 370 ++++++++++++
 drivers/gpu/drm/mediatek/mtk_ethdr.h          |  25 +
 12 files changed, 1624 insertions(+), 188 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.h

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-1-nancy.lin%40mediatek.com.
