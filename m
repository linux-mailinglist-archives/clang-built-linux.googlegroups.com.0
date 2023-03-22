Return-Path: <clang-built-linux+bncBCRYF65Q5QORBEPE5SQAMGQEKHPGLWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 085C56C513D
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Mar 2023 17:51:31 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id g34-20020ab059a5000000b0068fb77b4fccsf9754780uad.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Mar 2023 09:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679503889; cv=pass;
        d=google.com; s=arc-20160816;
        b=mT0r8m3mjWlpKsoKQKPDBcSG/GRfVFeFL6Z/ZKe7XOrxS5iPhgDpmxmBLmWnbnFtLz
         Ji/xTNBJT3B4kvHY+TkS6RhlWW0rw6UX3HNdYxqVXpFL8ZO+Ho4LbgS8vTQ4zOHeFzkf
         /EPCEnZNahVvWWUUgW3LjgkuSLvt9NpUVSF1KqsXU7vyF9yhIAfFshGuqQNsMrfjJ4QJ
         nw6CpgnUky5oRPDyq2+Fme8isscsp239phtpj+r4HebF3cHXCioMwawfYuxVfOzRVMGi
         tTyZ0t1J2mrNj1M3QSUfisRWlo7u8NMw68zpApweXTCS5Dn0jP9Jg0z7FRUhnji4Pe/q
         BpZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=Q+3Lz9g3rispgFv1e7//mzHd2O7gfCBut3xxJ1hW1Vk=;
        b=edN04YXaRUl/4wdjZnDhSEyfz8Bmy7nbCiIRVuuqLOF1gVAS4SBK8g2u7MTPiYC+Xb
         Z9bsl5gyZSr5z5Hs0UZX2D8AQwc0Mj75vKH+y3UmJpD4Niq6/Eabov1oVlmDqWdWhb7R
         hObQ7AIk/zgCuCnGGSMYK3rereOq8rSB9Oht9iXBbtHdebD4PH36daeRDYfLjZw5nk5H
         qY0njwjvV6UQVcTwPwbvE5PF+/7M2hG9W/bqjRL9RekuExb0CWmd30x84tx5COGIU0GM
         NPLsFmEgUzogmqpjXDaKDBepJLl1gEEG59eFjUV69w7IsdrKL5GUUpyGCv55jQIH2GVh
         z6fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZE7hjmj2;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679503889;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q+3Lz9g3rispgFv1e7//mzHd2O7gfCBut3xxJ1hW1Vk=;
        b=KwtciCdDytMwQHejsDUriI9Gfs/u29c2L7TaD8+WvMdkftcF/0m6UP+GQr33s22DK+
         fg5Yk8zlHPYFdKze5gQuBN1lLQgrCL0gOvX1j/bXXCexLcR9NaPrrv8VMt8eV9lm+chx
         1R+4GirXrVsuMg0o1Ka1na0dizwI8WzUakYjKVaybXtP5WBDIgM4VspNTOQ0FYouma7y
         oOCTrWbx9JBR+rFCcNGTE6jZ6mf/Zpl3ktJ+ASu2AfxJLmefyVaMMJZCLZO8S00HYHKL
         0lSWcjByyEgFoQ1Ev8IibboGVndbjVyPd3YLgRWoCqUsMpoYKtJVdv3lMQOCLAvoOhOT
         Yjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679503889;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q+3Lz9g3rispgFv1e7//mzHd2O7gfCBut3xxJ1hW1Vk=;
        b=HQKY1tnn/bwVsPOR/n0JDb/mqta8ehbkhQaqXXrIJdgqtfLnDn+Bbr+htSJwBkINFM
         a2cgv48VMIcXe8+NRK2VegeBMtZqAhcXJYnjZ4Qj9pdYmWMurvUAtDEXMHDoP+WkP0I9
         DNhULMjrzDh9oDpdT3lPGTpdgDjV0M67n2/ues5r6cuJMk065h4FqWuXDe6EUaH9DjLV
         zRoLfg+xGqGTzsb42jJQiEigeG+GrCKX4cTGOaQN3KPlzoTG3AA5XL9yxDgbiH+VJnxZ
         H0KkJT9+yjXO+P69EuypWzQ39dWFk4kLEwefV2Vdptjp85ahmGDwEkf4jQ2N13LXAW7q
         1OVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKXvszNJmk7jS6lQg8gLWSOMYoTFuLeobAbT7UfV7IKe4qcofufi
	EV+q22qM3CYB1s0vuiVTvec=
X-Google-Smtp-Source: AK7set+xGbz2AhfBYApOo88T33c3tauFqxhbSbx2MznvlvHs03dgmsbWv8D1SFdq1uYb0DMHivBXYA==
X-Received: by 2002:a67:c20a:0:b0:425:969d:3709 with SMTP id i10-20020a67c20a000000b00425969d3709mr46645vsj.3.1679503889497;
        Wed, 22 Mar 2023 09:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2c04:0:b0:431:f7a2:156e with SMTP id s4-20020a1f2c04000000b00431f7a2156els2110422vks.10.-pod-prod-gmail;
 Wed, 22 Mar 2023 09:51:27 -0700 (PDT)
X-Received: by 2002:a05:6122:1694:b0:407:e1ca:701a with SMTP id 20-20020a056122169400b00407e1ca701amr238772vkl.3.1679503887363;
        Wed, 22 Mar 2023 09:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679503887; cv=none;
        d=google.com; s=arc-20160816;
        b=rbGEGMH2kmTFYUzTCToYWVCsq7jXPHgGv/QGFfWgHpPqArFaPrIjB331yCD+wmWKhp
         Xx526MnThKt90bAORXUsa1DHWADB5T8zJVVr6ZC77ADweNGLOG1xTSzKpKgoDULWhCVC
         OyydOVVefF6qEn9JK6nouVVUxiEgrteAahEDPFAJFHiazmNf30c4TG3FDmwHkMKgDMZr
         jspx5oGIRMp08xzy1/1EW58EZSaBUeDMmWyXh1QHHlAHFXj7+Rir7QG/EUw+NvPy11mA
         4XKy21D96+kbSuPSRf1fIL1cfVVeIko40LaTIJ4x5tDMN1ilkJyPyqqGndGIZLoiLHbx
         In0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=K9cJfdorQT4ZAKhTUEbAiYIOUdjz/eoig7w+VvZSStw=;
        b=vKhdKr3YTXWTBnvxkZ0kkGk0VAHghEi+iNEfWP+vyBOemyhzIlmQTUP/Xi8fOYsaYy
         9+oEFh2Fk/jWbwr6Q9FiW5Zlb2zmv+rE9VECNm/OuoaOvVB3w3DYTeFI6Ex8LK3fDlUB
         95zAD7UTmOE1QP0cTmUYwG/MXqkKa1YiF2qRBvkWqDdeeWvDFK8PJ5j0mOPP0TMajRDl
         zUvvFIWSipBlHGLGWVQPAhu6kRO9NWUjSHafk2zrDvS/Gynd1hV5jN6uK8EGNkONS1xi
         HUCdGGzsNOdGa7+HUTuTLlfH95PS3DUlk4NqJ/FsbOEJcnUo94ANvGr3SBNP+b241w5Q
         zz8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZE7hjmj2;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id j27-20020ac5c65b000000b00438d96281c7si332967vkl.3.2023.03.22.09.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2023 09:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C7AC5621E6
	for <clang-built-linux@googlegroups.com>; Wed, 22 Mar 2023 16:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6433C433AC
	for <clang-built-linux@googlegroups.com>; Wed, 22 Mar 2023 16:51:25 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id q14so5279454ljm.11
        for <clang-built-linux@googlegroups.com>; Wed, 22 Mar 2023 09:51:25 -0700 (PDT)
X-Received: by 2002:a2e:901a:0:b0:299:aa7a:94c8 with SMTP id
 h26-20020a2e901a000000b00299aa7a94c8mr2204792ljg.10.1679503883593; Wed, 22
 Mar 2023 09:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 23 Mar 2023 00:51:11 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-XSBDZqo5jPgq+kP3sQrGnSR9Srhq5asu0QyDOeUoSOA@mail.gmail.com>
Message-ID: <CAAOTY_-XSBDZqo5jPgq+kP3sQrGnSR9Srhq5asu0QyDOeUoSOA@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: "Nancy.Lin" <nancy.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	krzysztof.kozlowski+dt@linaro.org, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: chunkuang.hu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZE7hjmj2;       spf=pass
 (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi, Nancy:

Nancy.Lin <nancy.lin@mediatek.com> =E6=96=BC 2023=E5=B9=B43=E6=9C=8821=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:19=E5=AF=AB=E9=81=93=EF=BC=9A
>
> The hardware path of vdosys1 with DPTx output need to go through by sever=
al modules, such as, OVL_ADAPTOR and MERGE.

For this series, applied to mediatek-drm-next [1], thanks.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git/=
log/?h=3Dmediatek-drm-next

Regards,
Chun-Kuang.

>
> Add DRM and these modules support by the patches below:
>
> Changes in v30:
> - rebase to next-20230321
> - fix ethdr dt_binding_check message
>
> Changes in v29:
> - rebase to next-20221226
> - fix reviewer comment in v28
>   - keep original flow if comp node not found in mtk_drm_crtc_create()
>
> Changes in v28:
> - rebase to next-20221107
> - fix reviewer comment in v27
>   - extra new line at the end mtk_ethdr.h
>
> Changes in v27:
> - rebase to next-20221102
> - change mmsys compatible for mt8195 vdosys1
>   - base on jason's series[ref 1]
> - fix reviewer comment
>   - add error return code if no ovl_adaptor's comp found
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
>   - Since ovl_adaptor is an aggregated component, it should be bounded af=
ter
>     all its child components are bounded.
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
>   - fix rdma and ethdr binding doc and dts
>
> Changes in v20:
> - fix reviewer comment
>   - update mmsys update bit api name
>   - add mtk_mmsys_update_bits error message if lose gce property
>   - list all mt8195 vdosys1 reset bits
>
> Changes in v19:
> - fix reviewer comment
>   - separate mt8195 mmsys component to a new patch
>   - separate mt8195 vdo0 and vdo1 routing table
>   - separate mmsys_write_reg api to a new patch and simplify write reg co=
de
>   - separate mmsys 64 bit reset to a new patch
>   - separate mtk-mutex dp_intf1 component to a new patch
>
> Changes in v18:
> - fix reviewer comment
>   - fix rdma binding doc
>   - fix ethdr binding doc
>   - refine mmsys config cmdq support
>   - refine merge reset control flow, get reset control in probe function
>   - add ethdr reset control error handling and remove dbg log
> - rebase to vdosys0 series v20 (ref [5])
>
> Changes in v17:
> - fix reviewer comment in v16
>   - separate ovl adaptor comp in mtk-mmsys and mtk-mutex
>   - separate mmsys config API
>   - move mdp_rdma binding yaml
> - fix ovl adaptor pm runtime get sync timing issue
> - rebase to vdosys0 series v19 (ref [5])
> - rebase to [7] for modify vblank register change
>
> Changes in v16:
> - fix reviewer comment in v 15
>   - fix mtk_drm_ddp_comp.c alignment
>   - fix vdosys0 mmsys num before adding vdosys1 patch
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
>   - fix rdma dt-binding format
>   - fix dts node naming
> - fix 32 bit build error
>   - modify 64bit dependency for mtk-mmsys
> - rebase to vdosys0 series v16. (ref [5])
>
> Changes in v12:
> - fix reviewer comment in v11
>   - modify mbox index
>   - refine dma dev for ovl_adaptor sub driver
>
> Changes in v11:
> - remove ethdr vblank spin lock
> - refine ovl_adaptor print message
>
> Changes in v10:
> - refine ethdr reset control using devm_reset_control_array_get_optional_=
exclusive
> - fix ovl_adaptor mtk_ovl_adaptor_clk_enable error handle issue
>
> Changes in v9:
> - rebase on kernel-5.16-rc1
> - rebase on vdosys0 series v13. (ref [5])
> - fix ovl_adaptor sub driver is brought up unintentionally
> - fix clang build test fail- duplicate ethdr/mdp_rdma init_module/cleanup=
_module symbol issue
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
> - modify rdma binding doc location. (Documentation/devicetree/bindings/ar=
m/)
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
>     20221126101220.18179-1-jason-jh.lin@mediatek.com
>
> Nancy.Lin (7):
>   dt-bindings: mediatek: add ethdr definition for mt8195
>   drm/mediatek: add ETHDR support for MT8195
>   drm/mediatek: add ovl_adaptor support for MT8195
>   drm/mediatek: add dma dev get function
>   drm/mediatek: modify mediatek-drm for mt8195 multi mmsys support
>   drm/mediatek: add drm ovl_adaptor sub driver for MT8195
>   drm/mediatek: add mediatek-drm of vdosys1 support for MT8195
>
>  .../display/mediatek/mediatek,ethdr.yaml      | 182 ++++++
>  drivers/gpu/drm/mediatek/Makefile             |   2 +
>  drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  26 +
>  .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   | 533 ++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  85 ++-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |   6 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   | 129 +++--
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  58 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 366 ++++++++----
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  24 +-
>  drivers/gpu/drm/mediatek/mtk_ethdr.c          | 370 ++++++++++++
>  drivers/gpu/drm/mediatek/mtk_ethdr.h          |  25 +
>  12 files changed, 1618 insertions(+), 188 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/me=
diatek,ethdr.yaml
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.c
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_ethdr.h
>
> --
> 2.18.0
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAAOTY_-XSBDZqo5jPgq%2BkP3sQrGnSR9Srhq5asu0QyDOeUoSOA%40m=
ail.gmail.com.
