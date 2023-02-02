Return-Path: <clang-built-linux+bncBD7274FIT4EBBFMJ52PAMGQEH3SG66I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC6D687908
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Feb 2023 10:38:30 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id m3-20020a05600c3b0300b003dfdc6021bcsf530638wms.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Feb 2023 01:38:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675330710; cv=pass;
        d=google.com; s=arc-20160816;
        b=iwfjCceghYPpm/KQBsEuXsbVTab/44m8euNn3HSqKAh16VRag1KQAih/8cL7Q+WIWF
         Zx6f+5utjvEAnmWUz/DipAtaMmMa2rDzh6nQIBrd8wrsTe3fD93WjU9zSXtXp09vhdHr
         2kbsGJdLDhxfs4AE4+/Iji+dxjYWiRcmA7Ot5Ic2VwuV7KgOPfWxoW7IbtRSd99Oxvnz
         0rLzb/bhaVHlL3jJnKQL9cJWpcOMhodAEab44To87IanFpmH6o2+3EqLgEHpxRLCB4h/
         Himx8rEtO8j1lH/NzQHPB53OVv0SPHQWlEaj2CNIYQJ+P2zvrfsbCSD+m+AsvnNoNR5/
         fhGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=4oobEMVSH8LbZ3ppuCAslnSf6T769dcdNCl7bBT2/xQ=;
        b=xKrXm2lFMFi/a+yegdxhliRanOeoA+nr8P5Xep8rjV4ypJA2M8qux7vRkpGx8/FovK
         Y43R5eiiAUwT+3Cus8VOa66PZU4UNbfYr8ScJoGymS6f2I7t5eeRAd+E1iCdRuRgONQ9
         U6KOCWID2zyaZ2HndJHsK8w+Ywiw+kxkqJEG40jxC0O1KbxfAxkIs78N35MN+HogHs/A
         1vTJyYqyEZuCqgkFzvLtF5o6JZhWbo7rD3n5SpzWRMAgTf5cno0rIp9oy+xiTmHAaj4U
         u1F0GGcQaEGikQkV/CyB5zSqz+J1iP0fY5J7d7nNT901q7f2h5Y3AW120tdrUMADSIZ9
         438A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=Q6ulCjWS;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4oobEMVSH8LbZ3ppuCAslnSf6T769dcdNCl7bBT2/xQ=;
        b=Yqwd+llDWWjZxjFyKhTDtW/xBX6Hz8IRgVt2NQrPn+0IO4epWUKV0zQJnJH6GsMhby
         q7vgG6EafUPXL6IuJrVOvwNyLVsEkRGgnEgmrGLOluUXtxgivzZR+k+jeGLHRWXSu+cP
         wcG3aEcLaf2JSAFTSUA5zK5B48hCuUR2hrqkBoJUYEJOPk3K16tPhGVn+fB5Izn1f35s
         q5S/G4D10iPgpStLf3LrNtC66mQ/oxd7wxUE9TU2h3Sq+bZRwRoaYsImaHCZdZif696F
         DlDi6A09guZz/u6FULy+MTsK+FeRBj9kvc5s3424GVmbxxVcahO3UdT/uUXAAviXs6Io
         yP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4oobEMVSH8LbZ3ppuCAslnSf6T769dcdNCl7bBT2/xQ=;
        b=3pqSL0H1CW1/7UROhLOrx3krKZkBq11vvHRqmRDfqO4zgrKYeOp/leiKHFqHUjpxY/
         ivGfMRIui39m6PYlqSlZDdWiUFKWrU77kI9Md98oi3E+sQOO7iVPM2VcIcpK2b3OxXV+
         SXsEcFI0V7VdGSJLbIiHplkdMpiTHpqzUxRcKJC5N/l4gYCZT9jXRHAmIucTr0es6gFS
         oFQC3d5JhFpVjRM+9VLVZ3J9wVmpSGRObZ/83j9hpyDONkYEqWEgkQqWURO2ZXP4Ugkg
         dyCfSOfkRIfPWREA9MfwU+ZbVQ6kdEWFGsGy7civBOP29QEXZmAR2DdnU4ArnvG48h4H
         NxcQ==
X-Gm-Message-State: AO0yUKUxP+3jXc/pcvGpZ4H8y2y2hel3ZLtnxzRrYsb/KJxjin3XFfpr
	mhbvvnzPiPPhR2Byjc3kpik=
X-Google-Smtp-Source: AK7set/Izyqhp+tpYEzx7EV68G1Tg92X4Te0UkwaI8jaxh4zjzEdP4x6BFqrNp3aaK9fzezcXkXOLQ==
X-Received: by 2002:a05:600c:2249:b0:3df:12ac:7cb4 with SMTP id a9-20020a05600c224900b003df12ac7cb4mr178046wmm.80.1675330710023;
        Thu, 02 Feb 2023 01:38:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:18c3:b0:298:bd4a:4dd9 with SMTP id
 w3-20020a05600018c300b00298bd4a4dd9ls1782164wrq.1.-pod-prod-gmail; Thu, 02
 Feb 2023 01:38:28 -0800 (PST)
X-Received: by 2002:a05:6000:1c19:b0:2bf:f024:de5e with SMTP id ba25-20020a0560001c1900b002bff024de5emr5524149wrb.55.1675330708700;
        Thu, 02 Feb 2023 01:38:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675330708; cv=none;
        d=google.com; s=arc-20160816;
        b=EcZCcpX3IN/W/PyUOvs2hcW2y7I3pXSYSZ7En3AsRNxxT4/16rKwtT5ucD7bNBZyBD
         wvzEn+ivtjy+Hu2XUHz1gGaiKfXd4lCGWrQjulKtyJryB7yfIoyyUXquNc1wkXmWSPMm
         MGyhblyJ1cAyHxRNaBRwxcbrSOYwhQ16pha6S67CDYk1YWIcef9hC7iTJatZYOONoqMI
         PuuT0+AcJ07ijT9KnllC/DjE2IuujeKW7FMuMbBDrofCTi2S9O9t5CXjm48bGRKHKd1P
         hCqTkoKUnaiI/A8cjDQMdoF9yADGJyrQZvCJyM/0ePTTTuxMalT2iF70NI8eb+3YVLJK
         QSPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=jKrgFwFKEg6lvyElRVWW7VcSjqhhWcVxlOy3NHzBj6Q=;
        b=B0VmVLQ+KEA7w8jppUkqtT0zLAAilwuRCwZ2tqGhasm5ChbjS1g9Wov5xxA7bYqPF9
         f3Ny3xbbUg4+TOy9mIRkwZipl/aVSWKJIvLPltIlnXz3ltNqGFxSzxj3hSsPuq6FmFe6
         0JTEoT6CgfCihc7pFEcI+iIB4h7nfJCLqRl1btsBPxc845h30RLxgsHS7OEoKBtDQXGM
         PvQv4ZkGnejVVLHpu4LplCqmsAjKs6FbPW0ABJxNsu9qThVIkBA9Debfpdq6je6A54V3
         6cfqNa3OkrpLDfzTH4/hULXOb/GNne5Og/owyOZkZhMvciyBDJTaysnKtWIzglkE37y1
         55jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=Q6ulCjWS;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e5ab])
        by gmr-mx.google.com with ESMTPS id m18-20020adfdc52000000b002bfc35954dasi1088224wrj.7.2023.02.02.01.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 01:38:28 -0800 (PST)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e5ab;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6DFF46602EDA;
	Thu,  2 Feb 2023 09:38:27 +0000 (GMT)
Message-ID: <ddf75149-e5ec-8093-2d36-55b6f2341d6a@collabora.com>
Date: Thu, 2 Feb 2023 10:38:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v29 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Content-Language: en-US
To: "Nancy.Lin" <nancy.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, krzysztof.kozlowski+dt@linaro.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=Q6ulCjWS;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=collabora.com
X-Original-From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reply-To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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

Il 27/12/22 09:10, Nancy.Lin ha scritto:
> The hardware path of vdosys1 with DPTx output need to go through by several modules, such as, OVL_ADAPTOR and MERGE.
> 
> Add DRM and these modules support by the patches below:
> 

Hello Chun-Kuang,

This series reached version 29 and was tested for a long time.
Is there anything else to fix in here, or can it be finally picked?

Its soc/mediatek counterpart was already picked by Matthias.

Thanks,
Angelo

> Changes in v29:
> - rebase to next-20221226
> - fix reviewer comment in v28
>    - keep original flow if comp node not found in mtk_drm_crtc_create()
> 
> Changes in v28:
> - rebase to next-20221107
> - fix reviewer comment in v27
>    - extra new line at the end mtk_ethdr.h
> 
> Changes in v27:
> - rebase to next-20221102
> - change mmsys compatible for mt8195 vdosys1
>    - base on jason's series[ref 1]
> - fix reviewer comment
>    - add error return code if no ovl_adaptor's comp found
> 
> Changes in v26:
> - rebase to next-20220819
> - resend for patch corrupted in v25
> 
> Changes in v25:
> - rebase to next-20220803
> 
> Changes in v24:
> - fix ovl_adaptor binding issue (mtk_disp_ovl_adaptor.c)
>    - Since ovl_adaptor is an aggregated component, it should be bounded after
>      all its child components are bounded.
> - rebase to next-20220708
> 
> Changes in v23:
> - separate[7] mmsys/mutex and drm patches into two series
> 
> Changes in v22:
> - rebase to next-20220525
> - rebase to vdosys0 series v22
> - separate dts to a new patch
> 
> Changes in v21:
> - fix reviewer comment
>    - fix rdma and ethdr binding doc and dts
> 
> Changes in v20:
> - fix reviewer comment
>    - update mmsys update bit api name
>    - add mtk_mmsys_update_bits error message if lose gce property
>    - list all mt8195 vdosys1 reset bits
> 
> Changes in v19:
> - fix reviewer comment
>    - separate mt8195 mmsys component to a new patch
>    - separate mt8195 vdo0 and vdo1 routing table
>    - separate mmsys_write_reg api to a new patch and simplify write reg code
>    - separate mmsys 64 bit reset to a new patch
>    - separate mtk-mutex dp_intf1 component to a new patch
> 
> Changes in v18:
> - fix reviewer comment
>    - fix rdma binding doc
>    - fix ethdr binding doc
>    - refine mmsys config cmdq support
>    - refine merge reset control flow, get reset control in probe function
>    - add ethdr reset control error handling and remove dbg log
> - rebase to vdosys0 series v20 (ref [5])
> 
> Changes in v17:
> - fix reviewer comment in v16
>    - separate ovl adaptor comp in mtk-mmsys and mtk-mutex
>    - separate mmsys config API
>    - move mdp_rdma binding yaml
> - fix ovl adaptor pm runtime get sync timing issue
> - rebase to vdosys0 series v19 (ref [5])
> - rebase to [7] for modify vblank register change
> 
> Changes in v16:
> - fix reviewer comment in v 15
>    - fix mtk_drm_ddp_comp.c alignment
>    - fix vdosys0 mmsys num before adding vdosys1 patch
> 
> Changes in v15:
> - fix ethdr uppercase hex number in dts
> 
> Changes in v14:
> - remove MTK_MMSYS 64 bit dependency
> - add ethdr.yaml back and fix dt_schema check fail
> 
> Resend v13
> - add related maintainer in maillist
> 
> Changes in v13:
> - fix reviewer comment in v12
>    - fix rdma dt-binding format
>    - fix dts node naming
> - fix 32 bit build error
>    - modify 64bit dependency for mtk-mmsys
> - rebase to vdosys0 series v16. (ref [5])
> 
> Changes in v12:
> - fix reviewer comment in v11
>    - modify mbox index
>    - refine dma dev for ovl_adaptor sub driver
> 
> Changes in v11:
> - remove ethdr vblank spin lock
> - refine ovl_adaptor print message
> 
> Changes in v10:
> - refine ethdr reset control using devm_reset_control_array_get_optional_exclusive
> - fix ovl_adaptor mtk_ovl_adaptor_clk_enable error handle issue
> 
> Changes in v9:
> - rebase on kernel-5.16-rc1
> - rebase on vdosys0 series v13. (ref [5])
> - fix ovl_adaptor sub driver is brought up unintentionally
> - fix clang build test fail- duplicate ethdr/mdp_rdma init_module/cleanup_module symbol issue
> 
> Changes in v8:
> - separate merge async reset to new patch.
> - separate drm ovl_adaptor sub driver to new patch.
> - fix reviewer comment in v7.
> 
> Changes in v7:
> - rebase on vdosys0 series v12 (ref[5])
> - add dma description in ethdr binding document.
> - refine vdosys1 bit definition of mmsys routing table.
> - separate merge modification into 3 pathces.
> - separate mutex modification into 2 patches.
> - add plane color coding for mdp_rdma csc.
> - move mdp_rdma pm control to ovl_adaptor.
> - fix reviewer comment in v6.
> 
> Changes in v6:
> - rebase on kernel-5.15-rc1.
> - change mbox label to gce0 for dts node of vdosys1.
> - modify mmsys reset num for mt8195.
> - rebase on vdosys0 series v10. (ref [5])
> - use drm to bring up ovl_adaptor driver.
> - move drm iommu/mutex check from kms init to drm bind.
> - modify rdma binding doc location. (Documentation/devicetree/bindings/arm/)
> - modify for reviewer's comment in v5.
> 
> Changes in v5:
> - add mmsys reset controller reference.
> 
> Changes in v4:
> - use merge common driver for merge1~4.
> - refine ovl_adaptor rdma driver.
> - use ovl_adaptor ddp_comp function instead of ethdr.
> - modify for reviewer's comment in v3.
> 
> Changes in v3:
> - modify for reviewer's comment in v2.
> - add vdosys1 2 pixels align limit.
> - add mixer odd offset support.
> 
> Changes in v2:
> - Merge PSEUDO_OVL and ETHDR into one DRM component.
> - Add mmsys config API for vdosys1 hardware setting.
> - Add mmsys reset control using linux reset framework.
> 
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> 
> This series are based on the following patch:
> [1] Change mmsys compatible for mt8195 mediatek-drm
>      20221126101220.18179-1-jason-jh.lin@mediatek.com
> [2] Add MediaTek SoC(vdosys1) support for mt8195
>      20221103032512.9144-1-nancy.lin@mediatek.com
> 
> Nancy.Lin (7):
>    dt-bindings: mediatek: add ethdr definition for mt8195
>    drm/mediatek: add ETHDR support for MT8195
>    drm/mediatek: add ovl_adaptor support for MT8195
>    drm/mediatek: add dma dev get function
>    drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
>    drm/mediatek: add drm ovl_adaptor sub driver for MT8195
>    drm/mediatek: add mediatek-drm of vdosys1 support for MT8195
> 
>   .../display/mediatek/mediatek,ethdr.yaml      | 188 ++++++
>   drivers/gpu/drm/mediatek/Makefile             |   2 +
>   drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  26 +
>   .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   | 533 ++++++++++++++++++
>   drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  85 ++-
>   drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |   6 +-
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   | 129 +++--
>   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  58 +-
>   drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 366 ++++++++----
>   drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  24 +-
>   drivers/gpu/drm/mediatek/mtk_ethdr.c          | 370 ++++++++++++
>   drivers/gpu/drm/mediatek/mtk_ethdr.h          |  25 +
>   12 files changed, 1624 insertions(+), 188 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.c
>   create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.h
> 



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ddf75149-e5ec-8093-2d36-55b6f2341d6a%40collabora.com.
