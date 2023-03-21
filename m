Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBPGB42QAMGQE4MJWGXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 644276C315E
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:10 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id 16-20020a056a00071000b00627e9b4871esf3881790pfl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401149; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXQNeVtONIL2vRt2uRSjPBa06b8izS9leMa2PoB2u2cLp9WHJdGngTgcbpzuded7HL
         7zNnukSk32YRou0WRtJ6w1dSHlT3runRIc1ZPfSrEZNIHuiUTDyqx1s1KBjbbCFwe5pU
         bAQq5YnejyU7SHk6S6IMDO5yx2KCuuO/svQ5umuOUIpB4uIP5CvlaJLqYJs0M0PeXCct
         4u+TrZ77epxLnIsXFI/IP/2zwYU7IX2AI+qqlWvkDd/lhoj/U0q1uVAxs3eDPD6Y+E/q
         LjTC/nfiUbxDn7rnolXHrDf4GoFQaMd8liLrMnQJKqAbP1Eyvitp8OkDYIoMsryBjmoT
         NYnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=/WR0nbBEsy4SywllmdPHqeKrJ3e+IyUgMoIIog77R0g=;
        b=uPVmgACz1HTtUhsiGDB2IITUXqfvG/fFNDCDT2BqgGEGxCFGYrxcTeC1ln/bnf1wkm
         xTrPiZv0oLQG8VCteI8aNZyfuy3FsEf8fNbaysX/1rKv8fNCTII6IrlQtWbn7BHRJ7cj
         olwfVdgQwKpd4DqdAuTqw1PQ5l34rD8T9xxUGAEaJzc663AvxI0rSnk477PrOvu01FPG
         YzjguxBSzeGve731uNpbRLGNCnt4gpLtRFu50hc3DY1jEAZCJwxPKEQ6LumEhKDiUs/C
         QW4E/W2Dr9CvkWFtXPJriWTb+RL3Ab9b1SCrfGw6/4Zps3NfizddHvhhCJyfaoq0w/hF
         hknw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rPqVCo1X;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WR0nbBEsy4SywllmdPHqeKrJ3e+IyUgMoIIog77R0g=;
        b=sOCo6YCNNKg32WEfTXYmG4z/KBZorZLkHD3QmJSioUaDVIviWSkQBQrKiYDf/uwofF
         STCDK4si/cdV6BrSp8x2yiezNBMtYhdq13LQMnM1vPuBplnsLw7Icbv1ZpqoHKEtw6sX
         C4YVJn8jP/fJj3XpKylnqV8CkO2rcjvB/Fb56XY2uCyIufkOzY3tUPbZgf1v61mu79xA
         SokD7qOW0c2ykiBcxEXbT5T1agiPjRw32ogI+7k4wDGBh0J9+Y7QMkzKwQ7bekEoYgMZ
         RD27N7tnh2sGUy+L9RDM6fiT/dm/97RMX2/bS1pfsA84YftuD0GnN4/RHQ2v2mcrexDN
         9dFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WR0nbBEsy4SywllmdPHqeKrJ3e+IyUgMoIIog77R0g=;
        b=gQZFBLXhI++OBdsOH6bjoi22cAbu7N5TfBTe9Jj7vf2kzvi7GPN1C7rYXcIzPabD6u
         RVn7ZlQkM5s2JXH1K88rY8HGtyc1zBzlmR35SWJZUZ/fqGxBMZDOPXw2/Jo3jHAyBu1s
         Ai1wrjyzt7I9Hi921BwyhLE4KD9+jj6hDOGyzF3vOzo0Nw5gMyzjBChRA8r9ciovP/yP
         UMN6AM4QEMJ/MG4arp29w8apfrDpxNijcIiR8gJOYLhiMzLhZmVK5UHcev//XxTkbpJ7
         GSCoXp2Dwhc69XRbBSeRaU2ZqfK5I9VX95tAsfrdjj9C4+RzaMFJjxOwDJfIxqF1oX/C
         2dyQ==
X-Gm-Message-State: AO0yUKWETmtO8tWBmxFntLdX5fKjHLgnZnrlv7/N/95B4BJOBhRVSLKa
	78kw0bJ6jWCzxtOQY4m/PF8=
X-Google-Smtp-Source: AK7set9E5zhPcC9PSweCN/zarFbTSpLJMY0Kq0jLHAh5Qu1eOAFBNqFQ//tHtWGK29AdBvGBtulgYQ==
X-Received: by 2002:a17:90a:420c:b0:237:9ca5:4d5d with SMTP id o12-20020a17090a420c00b002379ca54d5dmr589441pjg.6.1679401148584;
        Tue, 21 Mar 2023 05:19:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d242:0:b0:50b:ed87:84f3 with SMTP id t2-20020a63d242000000b0050bed8784f3ls2400371pgi.1.-pod-prod-gmail;
 Tue, 21 Mar 2023 05:19:07 -0700 (PDT)
X-Received: by 2002:aa7:9624:0:b0:5a8:ad9d:83f with SMTP id r4-20020aa79624000000b005a8ad9d083fmr2275570pfg.24.1679401147773;
        Tue, 21 Mar 2023 05:19:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401147; cv=none;
        d=google.com; s=arc-20160816;
        b=M098Q4ADgkrXS7VKeKy4X2DaoRFvqme6TRMUstKYJ4Au/lNtMvp83/5N3niskXXizw
         SKaeM7XDxhwRfl21GQiO/MuXSoFe2zfLqFAw0cXP/hg5eJQDjnOssJvQR4FzTp018kGu
         SQBC/TA+IYAdJDQ5qpYGq9Nu3acxN5ynK+Zab9dDMIdd1JttpFJFv9stbOJcdnz2TRiS
         MVaP71d1qDGDNdnj7Ou4fSEY3WXqCJ6MXlax9FkMIoWoe3FR2Jy8TnnvbxCIiZyGDOrK
         ysu1ltIl/sVEPvNnV9BkSywaOJnUyHrTu0pp8mQwHJgY88EjUlUxMBBOqNOaCEg0AZN5
         RrOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jrCvTzIbVvxH6uMWnsnLXVxwOzZH0ezOx7V+R43jkK0=;
        b=xJ7+56mXCs9Vlx1bZN2p/x0an2cezduqcD+xgr4FA+OUnfdW0rSzMckmItc2IW9poO
         vWDTPgNkfLZ+lZsqgwZMcxDR1DFSN4NYO3cAsEENPAvLcMpFSxYcY/LSDzcU9wl03EpE
         mhqXmOSUhd0yYkLv8P+3Usz7yVvv/XvNgdRoQCtxPZnCLBhmDi1zc5cr+skPmccNrY0D
         rbLnyUIR6QgI1FmHP0oiXH2aBGTyrON3ilLl1JaC1qsaLiu+GqubF9dcRe8CMKiJ8thx
         nVP/mz+FoDjp+clt3sAPi0jbQ76dcxKCptvyju0+xng0arg8l20UZ0lGH7f3k5+hz54V
         xKfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rPqVCo1X;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id bh27-20020a056a00309b00b00625965308absi648602pfb.3.2023.03.21.05.19.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 90e59f28c7e211edb6b9f13eb10bd0fe-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:8f0136f6-636c-4466-a5c6-12c8691e92b9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:50b5e9b3-beed-4dfc-bd9c-e1b22fa6ccc4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 90e59f28c7e211edb6b9f13eb10bd0fe-20230321
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 495843048; Tue, 21 Mar 2023 20:19:02 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 21 Mar 2023 20:19:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Tue, 21 Mar 2023 20:19:01 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <krzysztof.kozlowski+dt@linaro.org>
CC: Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Date: Tue, 21 Mar 2023 20:18:52 +0800
Message-ID: <20230321121859.2355-1-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=rPqVCo1X;       spf=pass
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

The hardware path of vdosys1 with DPTx output need to go through by several modules, such as, OVL_ADAPTOR and MERGE.

Add DRM and these modules support by the patches below:

Changes in v30:
- rebase to next-20230321
- fix ethdr dt_binding_check message

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

Nancy.Lin (7):
  dt-bindings: mediatek: add ethdr definition for mt8195
  drm/mediatek: add ETHDR support for MT8195
  drm/mediatek: add ovl_adaptor support for MT8195
  drm/mediatek: add dma dev get function
  drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
  drm/mediatek: add drm ovl_adaptor sub driver for MT8195
  drm/mediatek: add mediatek-drm of vdosys1 support for MT8195

 .../display/mediatek/mediatek,ethdr.yaml      | 182 ++++++
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
 12 files changed, 1618 insertions(+), 188 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.h

-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-1-nancy.lin%40mediatek.com.
