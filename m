Return-Path: <clang-built-linux+bncBCRYF65Q5QORBAMRVGQQMGQE45IU4NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF8D6D3C22
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Apr 2023 05:31:14 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id r19-20020a50aad3000000b005002e950cd3sf39459627edc.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Apr 2023 20:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680492674; cv=pass;
        d=google.com; s=arc-20160816;
        b=f3Ysb+4sIH5Ic4vb64fxxCz7aBw9gDIZgzLmQmbACji1f8L4HcCVERDntCYvrjwG5b
         X0Zlwief1xEet/HK/T2yA7olmBK2Jo18NAi/FSUX8Edrg6oO18KS5fAgLvwjFRkWEzUs
         +zTend8X5WVpNzjMdTdeOx12qzOSMpVjEZ5LI42hCC5HsDDWTaqh9Z701H4AbvHv/sw8
         PACX//LSZ8FWIjBBMQi5C4WOMQccVxZXCS8G5dMR0CgBhASsHIumOka3TNpxpMiOLZcL
         yX1EqqCbcMHROB3LeKMJysk2Hi9/9Zvl1UbTW2Q4ZTt5H0ln4Hg5rOQl4b8HZE/A6UIL
         Zdrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=q48bu9ZGVnnC144UVNvIweIlNCSLIY3TMVTwyrVfNDU=;
        b=rQ6eIKFuZKaOW4w6Jn+anzXG0xSLIaVpFpA81DnLWdnTgb3Z9HEVLD1wH1zux21yQH
         /7cIsDpMUsQdo6W2f54aT0Pzvx0vx/LEHqGIJaV/dnVfFaZYeMTTP+0Gdr1ffgR9WqkO
         sOnLm2tqypWHDaZxiC+BIprl5ltxlkqmnJin9V9ERoW1VyWu9OuK4u5bhSb1GQJfoTSo
         +4Lsl2y/ytxMC7vJiyhCTtIrr4vuXNyEOfobTQQQ0DLMEF1Pi6pmJZqcN3YTnLZUIUq9
         uab1+zfbdyjDRNNQSawyWb5LwcVrVMH9OqdY7sCv7pKWXYER7aB1co566O7QKH4nU0lG
         kGPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EBroFlBh;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1680492674;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q48bu9ZGVnnC144UVNvIweIlNCSLIY3TMVTwyrVfNDU=;
        b=oAOiOzG6hGoQmZzQ/tp/0v7uD8MnJ+OWu2YzaLCyKRIl7uQ2OkMVz4nluN6AvvzBWz
         iM4WCMLlMgGayab4XRY4GdHJ6ZIL/fw8Ltr54kDio9q4EB3rMeIhKKpC1JajcpDKTss5
         VOtq+Zp4bhRlMNP7Iuw+j+N+4yF9ZZbPFMpKLhDOdI5Lv8pEUo1xvPMhleCF9E9+His5
         3MqKyb+Q0wAS1XX0Be/K+YDaoEkB7Bqk4vkhc1kXX3Dcl6GDLR/0DqxKeCWd4VlWM6mL
         C72YRk1jsYTrLbzO6yFHhUE+e76rIKLhOanYjc8Ck0k/cHq52tnFSufxukRgYnbhikUt
         vq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680492674;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q48bu9ZGVnnC144UVNvIweIlNCSLIY3TMVTwyrVfNDU=;
        b=DVUPf+/OeH4jdsYhM3g1zgiBJFfu+/tk+cA2c+wctY0crMswyZ8fNoKAh37s8OuVqP
         HZIfgzsjhSAmlNONSzUGYr15DcPEdGqU/t5SzeHxYXqRurBbZpbh3IuT0SI19PWJib+q
         McxvCwqLlg5cE3pt2uJ8qd5LKuwFZ2Uu6MfH0iAtwkDBIRgD5QcRFYnPI5E9S7IvAslY
         mNpCunYaJoCepB3WmvMHgIskRQ7T9z8rNK8QjgpHSfn0wrbLCKTAJXoiZJ4q1qYPUfZF
         sIcWcZ8DMd+fcTFkEHYoPAX8rVmWU3gPUEXAyhlNehzV3DvXFb286KAzl8Bd7KsTJhBh
         nQ2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9dOM5QuKCoHdLmoh2D1G0ktX1U3y3+ZfhFV0REmW2DlhGl0JcqS
	FrZ9OL58Ey7Zc8g83Xi9TKE=
X-Google-Smtp-Source: AKy350bOUZw3i61A92lfxdKKm+k2KmhlN4ut2CrOlSsS1IPMj1SM0w7clo1onGSaN1vkNxIbPy4JHw==
X-Received: by 2002:a50:cdda:0:b0:4fb:dc5e:6501 with SMTP id h26-20020a50cdda000000b004fbdc5e6501mr16688761edj.1.1680492673550;
        Sun, 02 Apr 2023 20:31:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4ccc:b0:947:cb42:3ef6 with SMTP id
 q12-20020a1709064ccc00b00947cb423ef6ls3834351ejt.5.-pod-prod-gmail; Sun, 02
 Apr 2023 20:31:12 -0700 (PDT)
X-Received: by 2002:a17:907:a46:b0:93f:9ef3:945b with SMTP id be6-20020a1709070a4600b0093f9ef3945bmr36352869ejc.17.1680492672287;
        Sun, 02 Apr 2023 20:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1680492672; cv=none;
        d=google.com; s=arc-20160816;
        b=vTwXxdqNuhpqvi28Sj38tNU62odg7gq/doiovUCFGabQer3jmBXMm/JYD380OHupuk
         pXkfCfj/kSog+iZn80Be6ixI8d36fY+r4iJ8RsEK1eTH6D2gKI5G/8hFJEXY5fJ3dPhs
         gBusLBcfF0Wfa/TrQJ3t3tmwEjDl3mJ5hl2tgVhGw06lYK72lk6HGMS9N0s17JCw7ESk
         S+QCCaiPdYWW34lFoG2KjE+WE4yI9sYg/cOxMJ8jH3oMMHDOaAMl3LQf+5HWeV8KKYJr
         PRJ0ZJk/VfAwve50P0FVm+P/0MWwOW2qJW2HZ4REyDrEqhrfNcU0iJlb61OHgOarRhdR
         CZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XFDJK+O6b4HFOKcAfQuQl4p4wuO9jnRvSF0HKVPNXU8=;
        b=ryIWj7hJPGX0zoyEv/0JxlUkPudT40+WlOn9N0MMHEp27ogZhMV5gfebBmjCCOLXbf
         pzZlm7cKa6xCD6m0EXzgsdcBAnERR4RiIaLvOtfoEWtX0GNoqQI8eq+9tluZBnhljIlJ
         8oGNEGqGkOOU+yOkV42cWXndRXvUq3zn/94yt6T6pGpnK1y6qKXr6Q9nnAl0fJ7IMl9s
         mnh1McgEex/vwyMYkEVYnPVm7c065bcVVSdyTbsJv3o2cVdyaSdkSHa/XgJi1GUwbC+l
         mLEDXjthjGbs7C6g1c6oBpRevrpk6xZN1ubR9YvvOBcx6vYqSkC4yG8yDE7bm3Wlu8JW
         jJQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EBroFlBh;
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id bt7-20020a170906b14700b008b1fc586833si555056ejb.1.2023.04.02.20.31.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Apr 2023 20:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of chunkuang.hu@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EE6BE61446
	for <clang-built-linux@googlegroups.com>; Mon,  3 Apr 2023 03:31:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50223C4339E
	for <clang-built-linux@googlegroups.com>; Mon,  3 Apr 2023 03:31:10 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id g17so36249647lfv.4
        for <clang-built-linux@googlegroups.com>; Sun, 02 Apr 2023 20:31:10 -0700 (PDT)
X-Received: by 2002:a19:7419:0:b0:4d8:62e5:4f66 with SMTP id
 v25-20020a197419000000b004d862e54f66mr10062745lfe.7.1680492668344; Sun, 02
 Apr 2023 20:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
 <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com> <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
 <CAGXv+5FJCuG_zHnaKZ=baNzKAWKLEe3jZnghNAxuGv7i7L6e7Q@mail.gmail.com>
In-Reply-To: <CAGXv+5FJCuG_zHnaKZ=baNzKAWKLEe3jZnghNAxuGv7i7L6e7Q@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 3 Apr 2023 11:30:56 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9Dbtubah3ndj9+FeYDh7D42k6-BtHrYMNc=CP6GL6uFA@mail.gmail.com>
Message-ID: <CAAOTY_9Dbtubah3ndj9+FeYDh7D42k6-BtHrYMNc=CP6GL6uFA@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
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
X-Original-Sender: chunkuang.hu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EBroFlBh;       spf=pass
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

Hi, Chen-yu:

Chen-Yu Tsai <wenst@chromium.org> =E6=96=BC 2023=E5=B9=B43=E6=9C=8830=E6=97=
=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=887:05=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, Mar 27, 2023 at 11:17=E2=80=AFPM Chun-Kuang Hu <chunkuang.hu@kern=
el.org> wrote:
> >
> > Hi, Angelo:
> >
> > AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
> > 2023=E5=B9=B43=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=
=884:38=E5=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
> > > > Hi, Angelo:
> > > >
> > > > AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com=
> =E6=96=BC
> > > > 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=
=8D=884:58=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >>
> > > >> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> > > >>> The hardware path of vdosys1 with DPTx output need to go through =
by several modules, such as, OVL_ADAPTOR and MERGE.
> > > >>>
> > > >>> Add DRM and these modules support by the patches below:
> > > >>>
> > > >>
> > > >> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromeboo=
ks.
> > > >> Green light from me.
> > > >
> > > > I'm curious about how you build code and test on Chromebooks. Do yo=
u
> > > > build in cros environment or pure linux
> > > > (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-=
r13).
> > > > I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
> > > > upstream kernel on it. cros is too heavy for me and I doubt I could
> > > > use it. I've tried the pure linux and could boot up with console, b=
ut
> > > > display does not work. If you use the pure linux environment, could
> > > > you share how it works?
> > > >
> > >
> > > I haven't tested MT8183 (I don't actually have any 8183 machine in my=
 hands)... but
> > > yes, I can share my test environment.
> > >
> > > I have one MicroSD that I use either in the MicroSD slot of the targe=
t machine, or
> > > in a USB reader; this *single* system is what I boot on *all* Chromeb=
ooks that I
> > > have: one kernel, multiple devicetrees, same Debian-based userspace.
> > >
> > > What we have to prepare this bootable media can be found at [1], but =
beware that
> > > it currently uses an outdated kernel, so, what I have locally is a sy=
mlink to my
> > > kernel tree.
> > > You can change/add/remove the devicetree blobs that will get added to=
 the image
> > > by modifying `chromebook-setup.sh`; before tampering with kernel tree=
 symlink,
> > > please run that script for the first time, as it will download a cros=
s-compiler,
> > > a kernel tree (that you will replace for sure) and the (very old) Deb=
ian rootfs
> > > that you can update with `apt-get dist-upgrade` after booting the Chr=
omebook.
> > >
> > > If you want to check about possible kernel configuration differences,=
 what I use
> > > is at [2], so that you can compare.
> >
> > Thanks for the information, I would try to compare the kernel config fi=
rst.
>
> Hi CK,
>
> Would you consider adding your repo to linux-next? That would let everyon=
e
> do integration testing, especially automated ones, earlier, before you se=
nd
> your PRs to drm maintainers.
>
> You can do so by sending an email to Stephen Rothwell to do so.

I don't understand what this process is. Does it means that I directly
upstream patches into linux-next? I prefer that my patches go through
drm maintainers' tree. Does any document introduce this process?


Regards,
Chun-Kuang.

>
>
> ChenYu
>
> > >
> > > [1]: https://gitlab.collabora.com/google/chromebooks/-/tree/mtk-av1
> > > [2]:
> > > https://gitlab.collabora.com/google/chromeos-kernel/-/blob/mt8195-tra=
cking-master-rolling/arch/arm64/configs/defconfig
> > >
> > > Regards,
> > > Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAAOTY_9Dbtubah3ndj9%2BFeYDh7D42k6-BtHrYMNc%3DCP6GL6uFA%4=
0mail.gmail.com.
