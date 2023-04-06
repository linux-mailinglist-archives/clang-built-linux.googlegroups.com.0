Return-Path: <clang-built-linux+bncBDHYXMMQ5YKBBSV2XGQQMGQEE2F42WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 465B06D8EEF
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Apr 2023 07:49:00 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id w3-20020a4ae083000000b0052645d4a2dfsf10506511oos.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Apr 2023 22:49:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680760139; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5hrwGe1iI/1bqrHgjeB9A91Boxvrt3UzJmj5ctddc8ydYCg5Hp7/3Pdb97/JceGRS
         NnVGL5DPRbEG1yyU5HpvtcD97lSJ29Da2vIFre+VX6w8YYaalYS56FiHogRujyJO3LRo
         uu5vh7QdBhtI3freFOKa6hZn8NLsZpo85uWWiiWhteiwXpanzU1PMEaMKIes72cmH6Fe
         uYpxDQx8nx905rbC8obbKVov7YCdQbXTxBMh7JFCVqunB9cUM4YOEklI3SDdo2O5+5WL
         FMAP9PqRTuj2+w5WOY9EUhNCSTai0WCCJlxoJ9Wr19LngPSvg/JLgzKEIZn+hpu0AfQ5
         fwuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=UrHHrE0Ko0GpFdmJYG440JiGmyWeW7+0NVIjIrfUqyU=;
        b=ZB6bQT4TwiLWxj3Sm83gZ7OuQKTdHTn/VhljufYHt/8R76yx0sihd5oApFjXVKEQCW
         OTrvqUv+rZS52qRqdPgD+e0OX/WPHE4RVkpHSlPeyeeZ/atbZWF6Hxs99UQZKontWVha
         gLWqux/h4Uqofs8jsXsMCPvTns2/+i0GMEOGfXwQo+jvIWVocIpK0rcVTEB19ue2KfW1
         v95dOeCJnEGml1T+7X0qDG05W5GOACq7e+59BiCZWilwvgaKHM0682lBTM1ass724Y5l
         x8WYlz9zBYPRNUTOYGIhSra7ga9+IPdPKdYtEmQ5A7yw+vNPzpYApcM8tnF6WQZeWYoI
         UBqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VAJUd7Ak;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1680760139; x=1683352139;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UrHHrE0Ko0GpFdmJYG440JiGmyWeW7+0NVIjIrfUqyU=;
        b=fcFtvlzYLTarI455NqVpDHiSwQBi/+htapL2F5jXOvacNpXs5QD6JX/zRxd37r1txF
         FurAxnQckXGFfSprHBujudy6ZqNFru7AdP9DZni1Q6NsMbH/GRfdsWd8NGYvzNsfaw4x
         YYhqOQT5l7rNqjip9DghKQWh8OHkD9UpeRpSZ05VSXpNeK4kehIr6zwaQIt+kLRfCNqg
         unQmoo5HDIOfF2QY8Vf/pvN9PSzr8cW6eHFb18mVr+e290C0m4fCuTTp/0Ili6KypoCb
         GmjM9OOZXGsvWLAHgXXubrR2wEH2fNLi7woPosS0Kp4NVmPIB/OzsZC63auS8lCV6kPB
         o9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680760139; x=1683352139;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UrHHrE0Ko0GpFdmJYG440JiGmyWeW7+0NVIjIrfUqyU=;
        b=huj2ZP1OeLX5CwaUPRkMiIysKHlBhyPRORxMJCykcWVkFERNIGv8GER7MtT0uR8E30
         CT6qmoZO53gIgsAYHeh5FOezvtAagxkdm0UtnXWsAKvHnBoS3XOPimiAHCZVL1965k1g
         qHr5bH9n9xuTMyhFLiog5nn9SRamSU2bajcRXFka1v/X9aENWgU4i+YDX+JIoH0YKAmj
         Qk3gtWatEZ7QkwVhWNguT0xpfjTM1AnVJqA93JjDmMoBLT6WXEEEiKPRvW26uiOMq1AR
         sPaYhAgUtPFeXr5VZJTHvSuEFdAzTSyhDbVoxX4YYKLUX6KrwFaG3aJauqZHdU35bRSu
         Dnkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9dNUgpUEZ5u5oXPyP/w6KcJGuvQFR8BDEcdiwODdEiW2Ak7uQMF
	xbvSZJ+Ni+XOR856RmkYdXk=
X-Google-Smtp-Source: AKy350ZnbSaA+ZteIqpP5sRC5nqwgmLI/Y3ouPS0KS8L7GGAU8K2PHhJJzWsp7yPmJN/vtTBt7yLlg==
X-Received: by 2002:a9d:6298:0:b0:6a2:e6f6:b484 with SMTP id x24-20020a9d6298000000b006a2e6f6b484mr2860214otk.1.1680760138798;
        Wed, 05 Apr 2023 22:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2812:0:b0:37f:a766:5f32 with SMTP id 18-20020aca2812000000b0037fa7665f32ls174483oix.5.-pod-prod-gmail;
 Wed, 05 Apr 2023 22:48:58 -0700 (PDT)
X-Received: by 2002:aca:674a:0:b0:37f:b1d6:9f3c with SMTP id b10-20020aca674a000000b0037fb1d69f3cmr3411182oiy.46.1680760137947;
        Wed, 05 Apr 2023 22:48:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1680760137; cv=none;
        d=google.com; s=arc-20160816;
        b=dM0/rIi/a9EiY+HJwD5z+MfWDSerbxiy9PuJigKHHtoGB9tVnZEzKFzCdjcCB/JQPc
         YNHfk+tR/xzQrVLtOAov4nRU9taMEAWrmI6t+9Jx/XufydoeeLn/Uzuvfb69EJRlr7Mm
         AkOsdoQB/Jfa0ARXA47M2lJLxeeRUSG+cLT57MBvKGSQDlkDrkf401Wt8MeqRFz9P4Oj
         ptfTBFchgVpNlzuwY4qmgLfMVc78h3XKWG5HcYAJB3VvJqXi7ucDSR24tNyBYPrVZUIP
         fLm1ixwlYh/6jHr2XgGKCHymt5WIA5Fcw30/FSQqzew/2mqN4l+ZI7yTig+cSVphVZoe
         L9Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YZ8PVA/atiia/tjTYHEDk3XUx3h0g9cX9xWoZrnfSaI=;
        b=WDVvnMM6PfGnEqBFOidb5lqsZwYUFzju/8PNiMCQn3w0S9N91QvWHpZSwZhHxhuKvF
         3EpvtFwPIz+KBMDLcSUZ8vkN9ns1rwWEHP/YgzQDjHoPWfZlEsuGoNKQPiqw6r/n4Btd
         Hvumzj78UJGi/rCL3xa82wqNqhQWo3u1mifFDwJQjxSNU8jtNOA53+9DUqzi0MeA3JrX
         u+j/sKPzw431ZixAy9ZvoUbBpKZDVajAZtWWPKu0zITtogQpBv6+VTNxCz3iE0eYXfM2
         EozxNxKlEtI1tSu+zcVtYG1VVMUPGDKRBVeFTrbzJwcBP9UX3a+7HIK8qn/k9Uqiz25w
         lzXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VAJUd7Ak;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com. [2607:f8b0:4864:20::e33])
        by gmr-mx.google.com with ESMTPS id bh8-20020a056808180800b0038a7c1bb0dfsi50925oib.4.2023.04.05.22.48.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 22:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::e33 as permitted sender) client-ip=2607:f8b0:4864:20::e33;
Received: by mail-vs1-xe33.google.com with SMTP id g17so33465595vst.10
        for <clang-built-linux@googlegroups.com>; Wed, 05 Apr 2023 22:48:57 -0700 (PDT)
X-Received: by 2002:a67:c01c:0:b0:425:f1e7:fecf with SMTP id
 v28-20020a67c01c000000b00425f1e7fecfmr6371648vsi.7.1680760137615; Wed, 05 Apr
 2023 22:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
 <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com> <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
 <CAGXv+5FJCuG_zHnaKZ=baNzKAWKLEe3jZnghNAxuGv7i7L6e7Q@mail.gmail.com>
 <CAAOTY_9Dbtubah3ndj9+FeYDh7D42k6-BtHrYMNc=CP6GL6uFA@mail.gmail.com> <d0b9d8a2-14ae-8c0d-309b-5f5d60d43a1d@linaro.org>
In-Reply-To: <d0b9d8a2-14ae-8c0d-309b-5f5d60d43a1d@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 6 Apr 2023 13:48:46 +0800
Message-ID: <CAGXv+5HGmsfbN7GggASZPXtXCVvKUS4e-xjUFDG-87KvA_0W7w@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, devicetree@vger.kernel.org, 
	singo.chang@mediatek.com, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, "Nancy.Lin" <nancy.lin@mediatek.com>, 
	linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	krzysztof.kozlowski+dt@linaro.org, clang-built-linux@googlegroups.com, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: wenst@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VAJUd7Ak;       spf=pass
 (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::e33
 as permitted sender) smtp.mailfrom=wenst@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Apr 3, 2023 at 5:47=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/04/2023 05:30, Chun-Kuang Hu wrote:
> > Hi, Chen-yu:
> >
> > Chen-Yu Tsai <wenst@chromium.org> =E6=96=BC 2023=E5=B9=B43=E6=9C=8830=
=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=887:05=E5=AF=AB=E9=81=93=EF=BC=
=9A
> >>
> >> On Mon, Mar 27, 2023 at 11:17=E2=80=AFPM Chun-Kuang Hu <chunkuang.hu@k=
ernel.org> wrote:
> >>>
> >>> Hi, Angelo:
> >>>
> >>> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
> >>> 2023=E5=B9=B43=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=
=884:38=E5=AF=AB=E9=81=93=EF=BC=9A
> >>>>
> >>>> Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
> >>>>> Hi, Angelo:
> >>>>>
> >>>>> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com=
> =E6=96=BC
> >>>>> 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=
=8D=884:58=E5=AF=AB=E9=81=93=EF=BC=9A
> >>>>>>
> >>>>>> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> >>>>>>> The hardware path of vdosys1 with DPTx output need to go through =
by several modules, such as, OVL_ADAPTOR and MERGE.
> >>>>>>>
> >>>>>>> Add DRM and these modules support by the patches below:
> >>>>>>>
> >>>>>>
> >>>>>> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromeboo=
ks.
> >>>>>> Green light from me.
> >>>>>
> >>>>> I'm curious about how you build code and test on Chromebooks. Do yo=
u
> >>>>> build in cros environment or pure linux
> >>>>> (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-=
r13).
> >>>>> I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
> >>>>> upstream kernel on it. cros is too heavy for me and I doubt I could
> >>>>> use it. I've tried the pure linux and could boot up with console, b=
ut
> >>>>> display does not work. If you use the pure linux environment, could
> >>>>> you share how it works?
> >>>>>
> >>>>
> >>>> I haven't tested MT8183 (I don't actually have any 8183 machine in m=
y hands)... but
> >>>> yes, I can share my test environment.
> >>>>
> >>>> I have one MicroSD that I use either in the MicroSD slot of the targ=
et machine, or
> >>>> in a USB reader; this *single* system is what I boot on *all* Chrome=
books that I
> >>>> have: one kernel, multiple devicetrees, same Debian-based userspace.
> >>>>
> >>>> What we have to prepare this bootable media can be found at [1], but=
 beware that
> >>>> it currently uses an outdated kernel, so, what I have locally is a s=
ymlink to my
> >>>> kernel tree.
> >>>> You can change/add/remove the devicetree blobs that will get added t=
o the image
> >>>> by modifying `chromebook-setup.sh`; before tampering with kernel tre=
e symlink,
> >>>> please run that script for the first time, as it will download a cro=
ss-compiler,
> >>>> a kernel tree (that you will replace for sure) and the (very old) De=
bian rootfs
> >>>> that you can update with `apt-get dist-upgrade` after booting the Ch=
romebook.
> >>>>
> >>>> If you want to check about possible kernel configuration differences=
, what I use
> >>>> is at [2], so that you can compare.
> >>>
> >>> Thanks for the information, I would try to compare the kernel config =
first.
> >>
> >> Hi CK,
> >>
> >> Would you consider adding your repo to linux-next? That would let ever=
yone
> >> do integration testing, especially automated ones, earlier, before you=
 send
> >> your PRs to drm maintainers.
> >>
> >> You can do so by sending an email to Stephen Rothwell to do so.
> >
> > I don't understand what this process is. Does it means that I directly
> > upstream patches into linux-next? I prefer that my patches go through
> > drm maintainers' tree. Does any document introduce this process?
>
> All maintainers and sub-maintainers trees are supposed to be fed into
> linux-next.
>
> https://lore.kernel.org/linux-next/20230327124805.3ca4f3cc@canb.auug.org.=
au/T/#md226a8e714cc731c2ab4ba5ee7eb43fe21a55009
>
> Documentation/process/howto.rst
> Documentation/process/2.Process.rst

As Krzysztof mentioned, the purpose of linux-next is for integration testin=
g.
Your queued up patches still go through the DRM tree for eventually merging
into Linus's tree. Getting included into linux-next means that your branch
gets automatically merged together with other branches, gets build and boot
tested by the various CI platforms and bots out there, and provides a commo=
n
base for other developers.

I don't think there is any downside to having your branch integrated into
linux-next.

ChenYu

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGXv%2B5HGmsfbN7GggASZPXtXCVvKUS4e-xjUFDG-87KvA_0W7w%40m=
ail.gmail.com.
