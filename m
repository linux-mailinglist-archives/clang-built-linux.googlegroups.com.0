Return-Path: <clang-built-linux+bncBCRYF65Q5QORBAPHQ2QQMGQEG6PCIVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x1140.google.com (mail-yw1-x1140.google.com [IPv6:2607:f8b0:4864:20::1140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6F96CA8C2
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Mar 2023 17:17:23 +0200 (CEST)
Received: by mail-yw1-x1140.google.com with SMTP id 00721157ae682-5417f156cb9sf91261337b3.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Mar 2023 08:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679930242; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPCh0F4Zsh/MetomJHBiYeLIZ8tvd+KyybABM/HDyXnMpfe2UC7doM4Ih+B1dEaxAk
         j3tk3o+aqlNcfZe9pKIWGbr/+MN3Izr7UUIQPNCDuIvVPAOVQBzR07yB2lV9+/LP1Ma3
         nfTSGu5VJ6iPQSbizWK1qzUkEjrD1n2NUT7cWyw+v0Ge33ix4MegZaMSAPO5DBKINNBf
         ICu19YUwZazexrhZezyRbhkAS6hn4UglRj2gwnbu/6HmHpVz7dBFcbk7sLmfSPQdDRDA
         vq1JcWu8fFBeuO7yO/mIXIb+4YLg7EbHl37dCR6Z1MrkVpsphG48MkzLf23b8kCpX33r
         f4tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=EN7a513vdSspHMOm8X0cgVXPtfUBO9Ndp8eujsp3unk=;
        b=w0ZVHC9Hly22uLwl40Bpvcvh1B90MenN8TcEPyep2ajhGU3wCcX3aS9v6VSaqv3p87
         ixFQNYQ1lCnXFyKPjiYi/aK+F/gd4BbEtGMWnOPy36fUT+2ipJUEEZpuVhg04DMbIYtA
         2RW68P56Ymhv7Dk4v5tYjt3Ct4SJI8ubuXWOylbtQx1w7KQyBFLenq7oGmRIK2Knq16l
         6pqaKs7B3iWhWNmAkjWOLRf87mAM1xGRR3bBFu9LVYIi7FnZdewim8hZwqC5G81xrv/m
         Dqz5rqUjnzcoWa0hxiVcrmlLr11DpYZpdJx8tIdsNWbNjg0lYFMG7Hm74iiYKEY1xLN6
         p3XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DgSCKdzH;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679930242;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EN7a513vdSspHMOm8X0cgVXPtfUBO9Ndp8eujsp3unk=;
        b=jQS7suqbfr/XyPANidFfleiJmMHXKg6dGO7IWJSHCnCdexVDP0X7G7gzH0hLmNmjj9
         wvUj51Ln8Iublk14h4AtQspMkacS9unK001jeBkt+x0TNZsQ3LF01Zu4DQYog3cJ7OAk
         z78/bQCqccj9651s37CwgV2pyJlt4EPtA4BUaFDmqXOuz/pJOgtN6C2RAkzr4o5eDDSC
         d5uw30TessqpaK3g24HjNnp+AtoXk+h90QAg2843NPC2j0fkbecuF6fVFX/zR9DQ8TLD
         CmrTxjc6ZIzOGVbjWiQdsWfheV9g7zqFkzXgnkSIScwpJWBhTgqeCmbH5W4bq50eX/ZI
         ibbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679930242;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EN7a513vdSspHMOm8X0cgVXPtfUBO9Ndp8eujsp3unk=;
        b=kWHjlPUJO1QMXCGjXT+nwz5auJbb4tfFOyjItBWkHQ1Ad/8ErAVuSaWsFlEXK6rnah
         9EUNedtdzMFnoearAk8QCse0UOcUdWS12mdd0cerY6l2mhtknmwUbol1OnpyDZTYnqUh
         b8FNf2VMyJfhCjC4YQggjpe/KxgQthvQZY4oD48W4xPAbd7jboW78dgwc0kBowo6rkov
         tM39s1v4K2qpHLS9cFnJ+mjjnvCETv4Szx+SWBhgi4ocXZvt+1jitC2Z9Z3EFd+i79rN
         yQsDOgntOQoseZ/ckegjKM3r92PazTq82Jas0aXKyZOKE8cPVHOCVqj0rqrLuRuv1qTj
         CU5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9fe/38ghU4yDWVVe2QCWaUK945pt/GOxSgi1DlcKMpLh2ES0QqD
	JPeQayrhovXOYJiFNaaKAos=
X-Google-Smtp-Source: AKy350Z4YOaZH54gXbtXm2sBGaRqzuE7+XmIk2abpyYjreNQKqgE4v0at3Ucdndz+3OdAQx4fjznSQ==
X-Received: by 2002:a81:4406:0:b0:546:63a:6e23 with SMTP id r6-20020a814406000000b00546063a6e23mr332800ywa.0.1679930241710;
        Mon, 27 Mar 2023 08:17:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e653:0:b0:b73:3445:1039 with SMTP id d80-20020a25e653000000b00b7334451039ls5828446ybh.0.-pod-prod-gmail;
 Mon, 27 Mar 2023 08:17:21 -0700 (PDT)
X-Received: by 2002:a25:26cb:0:b0:b3b:530f:20d6 with SMTP id m194-20020a2526cb000000b00b3b530f20d6mr12585941ybm.17.1679930241141;
        Mon, 27 Mar 2023 08:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679930241; cv=none;
        d=google.com; s=arc-20160816;
        b=oq/qN1hpYNNtIGrpvGKHECezogSt8A20D5u5VRL4dggzx3+nuQwRwKNyAT3PmrKKTI
         trL3OKsLFBRnJKvwyeQGvL8L/OxjvectWx/Qj23UX0AVDLBBhQmDv+2O7nWGUOBrtJeM
         IEvtxz0seD2FPCkYJFSfvvNzn6CeKfmxyPiqsyDWBQEys+RlRsOJNFUzTrkmBSqjkJoX
         NeUQ4hBVQv90ZhHgVPMU/39sll6WKwOmHB6r8on2ZEqq+MeYJr8nSW45Qw6TmADNll38
         90itNCE4XdDF0cuimL5EsmcDRR54A4lfYzH1gG6Q2JP2haSNYaCBXmNiNYIfdBfJK414
         nIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WxXjXDVt250Dzp30WluOUfbIb760o1vY2QBgR+3iufI=;
        b=KFFVSOXEBPJgHJjkPRg7FjbKK+qJ4Cuh6mfzRNTk2aXQvi3XKH52D0Bi9LhTxE/lDK
         nZxsyedKlEfoB9SMywCt+hwrXm+/u0Vmi9W+OJqdA+oAMaI06D5jSqHMIyQXFcT2FRn8
         YUO/WQqzugRC6p+cr38BLi6zPlydLb3z9vkFiioetB8znP4zGPrD23f4F5/TT2bdvvC0
         cRL0+OopNIdGyhz/DCcXNZxnGkDmfQ7ijw2DKwAnyn5UknJ7V7d1rJSZgFMrWzxKDbiK
         u/DxFjWeyBJIwGFWj0ufKQD4aaUdZ+Y6GukmSbMV8MYbGK0M2uHnWAktDllMJmew6LWf
         pIZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DgSCKdzH;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id x7-20020a056902138700b00b633f199b9dsi630660ybu.1.2023.03.27.08.17.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2023 08:17:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of chunkuang.hu@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BEC286131B
	for <clang-built-linux@googlegroups.com>; Mon, 27 Mar 2023 15:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34090C433A0
	for <clang-built-linux@googlegroups.com>; Mon, 27 Mar 2023 15:17:20 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id z42so9385867ljq.13
        for <clang-built-linux@googlegroups.com>; Mon, 27 Mar 2023 08:17:20 -0700 (PDT)
X-Received: by 2002:a2e:a304:0:b0:2a1:627a:70bb with SMTP id
 l4-20020a2ea304000000b002a1627a70bbmr3582823lje.10.1679930238193; Mon, 27 Mar
 2023 08:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com> <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com>
In-Reply-To: <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 27 Mar 2023 23:17:06 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
Message-ID: <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, "Nancy.Lin" <nancy.lin@mediatek.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, krzysztof.kozlowski+dt@linaro.org, 
	Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: chunkuang.hu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DgSCKdzH;       spf=pass
 (google.com: domain of chunkuang.hu@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;       dmarc=pass
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

Hi, Angelo:

AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =E6=96=
=BC
2023=E5=B9=B43=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:3=
8=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
> > Hi, Angelo:
> >
> > AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
> > 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=
=884:58=E5=AF=AB=E9=81=93=EF=BC=9A
> >>
> >> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> >>> The hardware path of vdosys1 with DPTx output need to go through by s=
everal modules, such as, OVL_ADAPTOR and MERGE.
> >>>
> >>> Add DRM and these modules support by the patches below:
> >>>
> >>
> >> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
> >> Green light from me.
> >
> > I'm curious about how you build code and test on Chromebooks. Do you
> > build in cros environment or pure linux
> > (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-r13)=
.
> > I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
> > upstream kernel on it. cros is too heavy for me and I doubt I could
> > use it. I've tried the pure linux and could boot up with console, but
> > display does not work. If you use the pure linux environment, could
> > you share how it works?
> >
>
> I haven't tested MT8183 (I don't actually have any 8183 machine in my han=
ds)... but
> yes, I can share my test environment.
>
> I have one MicroSD that I use either in the MicroSD slot of the target ma=
chine, or
> in a USB reader; this *single* system is what I boot on *all* Chromebooks=
 that I
> have: one kernel, multiple devicetrees, same Debian-based userspace.
>
> What we have to prepare this bootable media can be found at [1], but bewa=
re that
> it currently uses an outdated kernel, so, what I have locally is a symlin=
k to my
> kernel tree.
> You can change/add/remove the devicetree blobs that will get added to the=
 image
> by modifying `chromebook-setup.sh`; before tampering with kernel tree sym=
link,
> please run that script for the first time, as it will download a cross-co=
mpiler,
> a kernel tree (that you will replace for sure) and the (very old) Debian =
rootfs
> that you can update with `apt-get dist-upgrade` after booting the Chromeb=
ook.
>
> If you want to check about possible kernel configuration differences, wha=
t I use
> is at [2], so that you can compare.

Thanks for the information, I would try to compare the kernel config first.

>
> [1]: https://gitlab.collabora.com/google/chromebooks/-/tree/mtk-av1
> [2]:
> https://gitlab.collabora.com/google/chromeos-kernel/-/blob/mt8195-trackin=
g-master-rolling/arch/arm64/configs/defconfig
>
> Regards,
> Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAAOTY_9_vn-m2jTaaHkFDV%2Bv2-LeaAxtCLNNnOxZq5Httb-TAQ%40m=
ail.gmail.com.
