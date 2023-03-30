Return-Path: <clang-built-linux+bncBDHYXMMQ5YKBB5GZSWQQMGQETI3H2UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF336D0273
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Mar 2023 13:05:26 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id i12-20020ab0158c000000b0073edddd9a01sf8295024uae.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Mar 2023 04:05:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680174325; cv=pass;
        d=google.com; s=arc-20160816;
        b=w60kXP2rv55/XE3GbcTZidDEhKNKWamygPqYFrtaqJFK8erZpOgpP3sHrJTdqjQi3e
         l9/NWhUv8dXuSBqOZ0Gpl7ZgmIFGab38GlDmG57BckjKvA0MCNUxVtSWisd/zgjdHnqU
         cmMy7mp9viv4g4hCoV/bMrfgqH/eoeqIXDS19mf+/QE1Klp83wHRR/KWA8B1MCyhmHLS
         nRS2OAkYJXXASVKSKvOM3IIU3yXqqVuCDdbIusJqGkriwOZ8S0O3WWUD4hlfuID+OVmB
         +HuhqJqvn78YUZHVHmXgDj/2KekZZpnbEzp/gGnfVFZOzrWkoZkoiPGSdm1Nwt3UKFul
         k90A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=gXCCM+kY2Jt0Hd8FpfhZOe58IgfKeAtHsfKI88Bjrv8=;
        b=uSy7j0uG4BD8uNkIRrvRVRghUsyPD1BYe1rymfcF2dVi1j5l4PT1a2BUKM9gCnke1B
         b4YpJrYlhNsU/s7lvXcRo7+XAx4wGNjg2waVXzASjWPeO2Ludaa0SgdAZY2cdWmdz/5J
         ULvCoyRYpguOWb/9P8Dtdjne5zoR6HLYtW/sEeo7xZJGK8o6d+9pyAOtjQ3y15b89EOx
         +Ew7ocTTUjBgpcayMqyBZIaIPyGXW2KVnWJ2WiVkNEGmiHNxE+teJqLjjuwlG+EO/HCt
         ckiuoO7Q/3Pd1Jdw89kdHbY31yevXaRdCDcwCijyUAR9RvDFY1cLzJ5zA5sOQCh67YHw
         gwcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AGTDkYKm;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::92f as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1680174325;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXCCM+kY2Jt0Hd8FpfhZOe58IgfKeAtHsfKI88Bjrv8=;
        b=q/OnXIi/wtznFMG3+SdU3P/nPP313NfIU4E9txiYn8O1ZRK+8xthk9jSptWIUInm0X
         BffYmplj9I/cSFUf1OgPm4iRic2Ge76xJCj3nynjGo4DPVawau8s3Pq7Ffa9+AeDkmyp
         P6Up5A9Jpuu2I3noEl6wvlyG+NJjzQQmmFVFGlDiQQg0/i4PcdpM8Qd3NgfJrYsKtCIw
         FMDa3910+f+CQEjzFom97n4ER4hy9Xsn4zht4I0+1mz2X2dG8yRXOuyPpZ/UF9u6Lvhh
         BW8nMZIinSLFmD01NTI3h7tvFgbXb2MKSIrzMBzLRNWfbxZDZV9Lcq5zOTAtSjh2tMgs
         iKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680174325;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gXCCM+kY2Jt0Hd8FpfhZOe58IgfKeAtHsfKI88Bjrv8=;
        b=t8DA+UeLvB1Didi5EWxMJkzEG8iJTrV5P0Iwj30f88SKT5xIA3dPNNdHksNrEs/4tp
         CNRnJdLv1OTRFpBrTSlaVem1CB2UhIPNvZWI1toLllUXunoF3QSgvhxITOBnjUXxasaq
         c8h0vAlDOvWcH/eF/eQmIjvn2/aGXFHYwblvW3rjp/7Uk3QMMNrGLvaDSayOv51rYf4u
         05CNOazrjjaTUuYvdxP3cfv4YL3NgN+A9G0x02oUPeZN3N4Hi8h/YWYDW0LhRm2u3Ddj
         jvi/scWXmnw9qk0H1GOHH8nnwCuyXVu7xJziFmKGsUjOzXRAMFUx4PBpil9U78+IQ4ko
         LUFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9cTeIfMS6iGbmRYY9HZmJlnMu8TEwhZSrNhd6te5Somg4UVGo8t
	wnPKstEugRTH5P07z4qcoXM=
X-Google-Smtp-Source: AKy350aKId/Gd6rFXy1Xz5FDQDvr70qjQzNPVzk6S+pwc/S+mRlkih3OjGrVMInmCBS9yzOn6MH1rw==
X-Received: by 2002:a67:c385:0:b0:426:daac:b6a8 with SMTP id s5-20020a67c385000000b00426daacb6a8mr804030vsj.4.1680174324578;
        Thu, 30 Mar 2023 04:05:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:578f:b0:425:b387:e73c with SMTP id
 dh15-20020a056102578f00b00425b387e73cls353814vsb.1.-pod-prod-gmail; Thu, 30
 Mar 2023 04:05:24 -0700 (PDT)
X-Received: by 2002:a05:6102:3088:b0:425:c381:383f with SMTP id l8-20020a056102308800b00425c381383fmr2075146vsb.13.1680174323894;
        Thu, 30 Mar 2023 04:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1680174323; cv=none;
        d=google.com; s=arc-20160816;
        b=uGhoddpjiGJP2VGSZgdCx4ieHMKH/wsoPSYaw/9CwleJRH0upfHu72byHyP1ctEt1F
         w4rhBC/PKVyJjkh9Vw/tRQaixvkujkSOj5685e6mSqT4z9PTjKhRw9bDEPuN5CTYki1q
         8Bz+ZD/arKAideq3qTS5UFxFhYP37b0KSOrxLTnK0y8N+UOL4NDgc/hrDRQ7d07LTnwK
         E9CUtbEdZ4MeYBylsqPvspR2EhiHqVJ2HoBCRBDfVEhOU0d9kQkY6rVPGOEsiPEMhCTU
         iAhoxyS9E9GnmhvPN5c41NEh1/7MWadCEYvlxSdYKfUI0n0aICjZXZgmtGRRnh0qgiLk
         WQfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZBDBg0HH1y2Gx5yNNGEH03tfCHf1/oZeA1OHg/lrfwY=;
        b=aHihWjxY37e449QnzT8wo9QyaPNwPw4VYWxXIyGzH+tAEiFa2yntaiExfQIhJQmOXY
         e+kkRY3nf3DZ/zGj/Kzr6c0KN/R7tfttfKADIQ0e1av+G5F4AQv45m+ioJXL+0ciWcnB
         ruIFBq9jzO5pA/L7Hb46jxblNnmFuf0Ja4JHzTkif5BbHhp8E/1rQYp3LyAl++blJTe1
         Gnfc969z07LuCELaGj7xyMPtHu59ziFBut/6x+uVl3EW2GRNkH4BYGMFOZgaSR6cntcd
         /pBmy3bkAB06wZ1wrfgGwwj8FZE8Du8bDxV13IMxirdOM4Ud/0ug3POdO9yFVHkUaVkw
         UJrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AGTDkYKm;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::92f as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com. [2607:f8b0:4864:20::92f])
        by gmr-mx.google.com with ESMTPS id f37-20020ab014e8000000b00690829432ebsi3704027uae.2.2023.03.30.04.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 04:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::92f as permitted sender) client-ip=2607:f8b0:4864:20::92f;
Received: by mail-ua1-x92f.google.com with SMTP id r7so13515494uaj.2
        for <clang-built-linux@googlegroups.com>; Thu, 30 Mar 2023 04:05:23 -0700 (PDT)
X-Received: by 2002:ab0:2019:0:b0:765:8f29:d679 with SMTP id
 v25-20020ab02019000000b007658f29d679mr3245687uak.1.1680174323569; Thu, 30 Mar
 2023 04:05:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
 <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com> <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
In-Reply-To: <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 30 Mar 2023 19:05:12 +0800
Message-ID: <CAGXv+5FJCuG_zHnaKZ=baNzKAWKLEe3jZnghNAxuGv7i7L6e7Q@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
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
 header.i=@chromium.org header.s=google header.b=AGTDkYKm;       spf=pass
 (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::92f
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

On Mon, Mar 27, 2023 at 11:17=E2=80=AFPM Chun-Kuang Hu <chunkuang.hu@kernel=
.org> wrote:
>
> Hi, Angelo:
>
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =E6=
=96=BC
> 2023=E5=B9=B43=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884=
:38=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
> > > Hi, Angelo:
> > >
> > > AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
> > > 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=
=884:58=E5=AF=AB=E9=81=93=EF=BC=9A
> > >>
> > >> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> > >>> The hardware path of vdosys1 with DPTx output need to go through by=
 several modules, such as, OVL_ADAPTOR and MERGE.
> > >>>
> > >>> Add DRM and these modules support by the patches below:
> > >>>
> > >>
> > >> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks=
.
> > >> Green light from me.
> > >
> > > I'm curious about how you build code and test on Chromebooks. Do you
> > > build in cros environment or pure linux
> > > (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-r1=
3).
> > > I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
> > > upstream kernel on it. cros is too heavy for me and I doubt I could
> > > use it. I've tried the pure linux and could boot up with console, but
> > > display does not work. If you use the pure linux environment, could
> > > you share how it works?
> > >
> >
> > I haven't tested MT8183 (I don't actually have any 8183 machine in my h=
ands)... but
> > yes, I can share my test environment.
> >
> > I have one MicroSD that I use either in the MicroSD slot of the target =
machine, or
> > in a USB reader; this *single* system is what I boot on *all* Chromeboo=
ks that I
> > have: one kernel, multiple devicetrees, same Debian-based userspace.
> >
> > What we have to prepare this bootable media can be found at [1], but be=
ware that
> > it currently uses an outdated kernel, so, what I have locally is a syml=
ink to my
> > kernel tree.
> > You can change/add/remove the devicetree blobs that will get added to t=
he image
> > by modifying `chromebook-setup.sh`; before tampering with kernel tree s=
ymlink,
> > please run that script for the first time, as it will download a cross-=
compiler,
> > a kernel tree (that you will replace for sure) and the (very old) Debia=
n rootfs
> > that you can update with `apt-get dist-upgrade` after booting the Chrom=
ebook.
> >
> > If you want to check about possible kernel configuration differences, w=
hat I use
> > is at [2], so that you can compare.
>
> Thanks for the information, I would try to compare the kernel config firs=
t.

Hi CK,

Would you consider adding your repo to linux-next? That would let everyone
do integration testing, especially automated ones, earlier, before you send
your PRs to drm maintainers.

You can do so by sending an email to Stephen Rothwell to do so.


ChenYu

> >
> > [1]: https://gitlab.collabora.com/google/chromebooks/-/tree/mtk-av1
> > [2]:
> > https://gitlab.collabora.com/google/chromeos-kernel/-/blob/mt8195-track=
ing-master-rolling/arch/arm64/configs/defconfig
> >
> > Regards,
> > Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGXv%2B5FJCuG_zHnaKZ%3DbaNzKAWKLEe3jZnghNAxuGv7i7L6e7Q%4=
0mail.gmail.com.
