Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBJWOVKOQMGQEQ5GQ2ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 35935656820
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:56 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id l62-20020a677041000000b003aa06a96e75sf3046993vsc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128295; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVwuebNSMDPvIqvcFkqXSrpmM7+BdNBS0HVrDge8sLlbw+TBGABBWFi3XU5ggLST/8
         jfyKD5zYhpTaAo+qv4L1D6wmrxPSABFAciSMiS9yzaGnL1l4CAaCmVs3Uqxd6TyYL/6A
         Oa+2rdGOfk56ZI3+Xoxds2dTcDhCC5fGmbXPIOr/JMT8UWrFaLG740QlqvZTOyeIWA92
         7ad8URFt5Nd26070GnVHvKO0LjpSorXUvySqHt57QdnOtUEdWNG8gUchkKSnJv2jiDoG
         mqhIZGjm8nMMBWghqRGEx7DSk6eCZ28d9Ziz5cU1bnWO8b0F9cJTbo1mmtGfNtEk4FJE
         yUOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=zb1J5knbdrTdFrSFElhJSiHQAmLIzxNaPNtpTY0Eox0=;
        b=CARqBl+jrc5D7cpAHqXFQI7GoMiTzhHeqIQy/bwllpHuEX7Pf97Lj+VxiW6ZVbNz5W
         ODXM+KNWaw80g+b1OjAuc7DCttNNIPBlFNB0uFECTX8Cc0ar0W9D7loqEL/+DeFN7xd8
         tmZrhyhdZiFKNh2pKjH+kENEfR3KFhFLxjWYax7zbRvtusqUFLmQEHWYVmfQpTtF/Hpa
         NRcYL0SPEYM84Gu9UR87DKuN0BDYA1MLcLWQkz1HdpB0RuR/lChmix8bbESzf3cAJM0h
         PIM+/qDNFhJxQizxq9QqAAIdq5//OvWHhECCmQas8jazQQoYcp2niZNFefWcNO3RLv3f
         ue8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=bFvgo9ma;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zb1J5knbdrTdFrSFElhJSiHQAmLIzxNaPNtpTY0Eox0=;
        b=qPut5anEgrWyAeLPtx2U3PRYKvWacH8Zl5tDRir4l+czuzhEPmfgTIe/Y9zOotjRul
         rb/QIc5CO5ctbFMLG5C/BckZ2XsyJ7pj/xiIJMV+JFLisVEk15lEP1qEg/l1CGc8P6lj
         OuqW/gPgTN9Z31IDjW/kS3LZLG+pDDkRkiosJ99Xu7+Ui/hbEMMDtmbt6ADtYigPjLky
         eOOnUP0EdxIBENmBkdLEu6mVlJvxx48Tb74tx9wbJbi3uT4YYzBG5Prfsak4XEVfiy5o
         AqouHrYtuPNBH3MeBTvmX1Pl8xquvhyaKbQKU3CjgrUFfsfyaDQcFhV5fYL9tFQVmyra
         7f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zb1J5knbdrTdFrSFElhJSiHQAmLIzxNaPNtpTY0Eox0=;
        b=TXxMcApwagnyQtYTbAX9PNNYHYAOk8TT1r4mAILp9r+3OfWVSHRpudowyFTbuQFIHC
         35M/7wHmVJphHxkO1168DhJH69wFFz/sWdMvvU+PDypV9aA5KRXhsjB5c8T9eUe//A+t
         dM8Q4hognNTUKkL0DysmqHgYGKE/5StHoRbmw7xB3tnKb4Dg77PiOM8vHYClzrXTS+Ao
         ck7bvuWQg7CRSu1LKmmZadLl3tu+AFyVmljQWuf0wvFxsZJBHiOX+VV1bHJ2Dv+0bENv
         racRLfw3b1nKMDhZOgowefVZCh9lQPeGsOK7mlAyHuL+kuw/Y172wBqHvfNOlRziUflb
         Xp0Q==
X-Gm-Message-State: AFqh2kpwH86Dpk/ZyaSZDyA61pZL6PXECdz21YdZEpjGm3wrGZ+AfH15
	IWl8YQn8cDJmRd7Vl3iLr8A=
X-Google-Smtp-Source: AMrXdXssrZ1XjNbP8/duBDptLVPDKmm9uCDjtXych47sGBzZekxZt5IvO0Av29tZbbt82sfCYdKt1Q==
X-Received: by 2002:ab0:3a8d:0:b0:419:678:cf31 with SMTP id r13-20020ab03a8d000000b004190678cf31mr1846029uaw.63.1672128294871;
        Tue, 27 Dec 2022 00:04:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2a12:0:b0:3bc:445c:c50 with SMTP id q18-20020a1f2a12000000b003bc445c0c50ls1687137vkq.11.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:54 -0800 (PST)
X-Received: by 2002:a1f:a6cc:0:b0:3bd:a20e:ae2b with SMTP id p195-20020a1fa6cc000000b003bda20eae2bmr7403939vke.2.1672128294141;
        Tue, 27 Dec 2022 00:04:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128294; cv=none;
        d=google.com; s=arc-20160816;
        b=gQVejYzAeFA7xT/G4dmsOvjfiMPZMbai3TcJ4eStz74ljuRSlXVyBY5z8Ity2BLLIS
         R9eIxRsjmO+4TFLjpr15R+7GYisWeaEL4V0fgU/B0IermeNJanCDG1rbNDbSnXhdnCIW
         w2qZ656OV0OcjOVYS0qpk0rmhHZQfoXIueRmzlfB9MqjLFbMJ42Im/uQuTMFO9k6Awon
         kQuhu5RSQLQRDaC33twymACagGjqLrKxgD/qZSeSM0rsz+QVSu9J2pZnXTAB5eliwJzq
         SxQgxeuF2k8vICcrTIHjwr9Ni4qXDXP/Bv4HzwvWOx0OVr6lP5p1QtCKR74fXsEH2jvb
         NwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mWt3jIWDn5rjODZoCxcaEHxF9YSSZymqrIT4ttZlWs4=;
        b=BJEr+NUDxN0QM8azDW/j5efEvfJFt93txiBTMPSfy5O39tnqtBzzwHuCY+ABIH/A/2
         MExcqkiSgwY+vFc9TzOV4Yflpaajd6W3AFMhbuwys87W8wtcPuP7hucvBIwcodFYJWA+
         CvFJoqmYGjG7eGP0nFWs+4X8kON2xagG/bE+rLsSaiJesgoIJBmubRV6y0MfFGFdmXPV
         FV3kg6HHiJw3cIOsHz8x0P0Dg1iEHljCm3aS/ESOdtCR8XZFGA9aty6W2okHTZaCozD6
         oxkEuUbAXbRCsMMckLiKBPL4dTPM/Ejo22llHM6x+2KHFNCvDWlol5TbS943Gzyh7esz
         yvhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=bFvgo9ma;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id y80-20020a1f3253000000b003d53e3ed270si866139vky.0.2022.12.27.00.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 8383ea4110bd4e4c836caf89a1ec7084-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:57f40a82-0a6b-4839-9788-75b2a36f515c,IP:0,U
	RL:0,TC:0,Content:-20,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-20
X-CID-META: VersionHash:dcaaed0,CLOUDID:3bac838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:1,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 8383ea4110bd4e4c836caf89a1ec7084-20221227
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 434712416; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Tue, 27 Dec 2022 16:04:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:04:44 +0800
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
Subject: [PATCH v29 00/11] Add MediaTek SoC(vdosys1) support for mt8195
Date: Tue, 27 Dec 2022 16:04:32 +0800
Message-ID: <20221227080443.6273-1-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=bFvgo9ma;       spf=pass
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

Add mmsys and mutex modules support by the patches below:

Changes in v29:
- rebase to next-20221226
- fix reviewer comment in v28
  - fix mmsys binding doc for vdosys1 

Changes in v28:
- rebase to next-20221107
- fix reviewer comment in v27
  - remove change id
  - fix mmsys config api typo

Changes in v27:
- rebase to next-20221102
- change mmsys compatible for mt8195 vdosys1
  - base on jason's series[ref 1]
- fix reviewer comment
  - only register mmsys reset controller if num_resets > 0

Changes in v26:
- fix reviewer comment
  - set mmsys num_resets to 32 for 8192
- rebase to next-20220819

Changes in v25:
- fix reviewer comment
  - refine mtk_mmsys_reset_update func
- rebase to next-20220708

Changes in v24:
- fix reviewer comment
  - refine mtk_mmsys_reset_update func
- rebase to next-20220622

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

Nancy.Lin (11):
  dt-bindings: arm: mediatek: mmsys: add vdosys1 compatible for MT8195
  dt-bindings: reset: mt8195: add vdosys1 reset control bit
  soc: mediatek: add mtk-mmsys ethdr and mdp_rdma components
  soc: mediatek: add mtk-mmsys support for mt8195 vdosys1
  soc: mediatek: refine code to use mtk_mmsys_update_bits API
  soc: mediatek: add mtk-mmsys config API for mt8195 vdosys1
  soc: mediatek: add cmdq support of mtk-mmsys config API for mt8195
    vdosys1
  soc: mediatek: mmsys: add mmsys for support 64 reset bits
  soc: mediatek: mmsys: add reset control for MT8195 vdosys1
  soc: mediatek: add mtk-mutex component - dp_intf1
  soc: mediatek: add mtk-mutex support for mt8195 vdosys1

 .../bindings/arm/mediatek/mediatek,mmsys.yaml |   4 +
 drivers/soc/mediatek/mt8195-mmsys.h           | 146 +++++++++++++++++
 drivers/soc/mediatek/mtk-mmsys.c              | 149 +++++++++++++-----
 drivers/soc/mediatek/mtk-mmsys.h              |   1 +
 drivers/soc/mediatek/mtk-mutex.c              |  37 +++++
 include/dt-bindings/reset/mt8195-resets.h     |  45 ++++++
 include/linux/soc/mediatek/mtk-mmsys.h        |  25 +++
 7 files changed, 369 insertions(+), 38 deletions(-)

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-1-nancy.lin%40mediatek.com.
