Return-Path: <clang-built-linux+bncBCV3JPPW7MGRB6XBXWSQMGQEE53J3XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E517516CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Jul 2023 05:35:24 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 46e09a7af769-6b756023e76sf356889a34.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Jul 2023 20:35:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689219322; cv=pass;
        d=google.com; s=arc-20160816;
        b=MedRLgmL7iyby105q7gGGYni5yU4paL62EUg8tn0MvRXfsb1pXJw26XmDfLFVYmWrZ
         gYqT3I2uR2yPQ0kCO7PPI0YIYepu41wgv+TzhwzKfecTS0ycEGSBVNCx6ezbayokyPuq
         wifiYtI0v08AQ53xA9YJSwj8o+uYsjL25PHu10gwyUp51+SN/u+n3DLhhsNDz1o7fr+h
         WeoUUPpu56We4fulkYN+SgFT8v5oJLHnSKv+Gu+l32Zz7dwMIRc7gI6CfjfgYp3ibX8N
         yf8rjTga1tWlIsK96bI5nQc/iI8PeRC3p1d7HvUlW7vdEh5WOYR1bxdJTu3g33LyIcYv
         x2GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=W+vVAYvSpP8l61YvQ5H2lqB0xlac3szwVXlvHjckPVc=;
        fh=D4dEWmuAcp895aUsgE3OaTSxxqChJUuZ4aohlQulPbM=;
        b=EgMEmwGNm4QlRYgw7LZuEdObn9+c3XIatWAScSckJMR+pHIaN4t6TEsrjwqoLaGwG8
         mUwmBBAlaUS4Wtho6AjMuEbUH2edqGhtEb0Rm9/PHo4AyF0dMdgI636aMDAtlfPMDcb8
         Ajg146J4LzbkYZq+D9u+pzOtaBlV/3h1nnxTFg1svzQefAqRMeN6TlotJfR3tQLLqdxL
         siE3VPaEN5/15qCkIhivfZNcWgPvqkRcRPGx49WTxy/a01syTq4avhzAqBivZ2rAQwBv
         wGQNOzcwUdrTKhn9oavNcfVRQ+pZckojruM0GTq1a6M9wnOm1Zj+/ngo/ndW6wvbcEnO
         YLXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HMccXsOd;
       spf=pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=fshao@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689219322; x=1691811322;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W+vVAYvSpP8l61YvQ5H2lqB0xlac3szwVXlvHjckPVc=;
        b=sQDKFbEU5yRUygpyw4yC4tI8OzsBYxK96NUFJvLydjrkojuUwgV1MKBTHFutYkAUEa
         QUUn6XYiJuV194hkp9eK25bN7KBdCm0Rj9YBler2kS0p9YBtbfJeTttHVdcOEZIgu6fQ
         ZEPYSJ/7ZCdY3ALwM1Hp2iFnFUvGzo3xEtjzuoLQzHfycRiA9ML0VuZyggLzk4mk5IbI
         xXUhVyvDzM3caoNbD70SBJ21XFHT/qpi8DQFc5vaji9xhmNJX4YahWYlXIgGwWXOTsqB
         E2ektgs5YrV1lps3+RAEj5xG5osLYfLSOFtZNKYN7h8SWyR2Jfn8Jk4euZb4OiJmWbRE
         F+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689219322; x=1691811322;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=W+vVAYvSpP8l61YvQ5H2lqB0xlac3szwVXlvHjckPVc=;
        b=Ctvwb3X2lMQ7X5J4HKr+L8adgpHLj3FwNvpdWFRP2o4YzN2xnZpwxp6zlPcd8re14+
         0zG92QJkCqfJyrta0Ogmo38Z+mw9Dn8OWQvmKooRtkEcO7jFPdWFM5ZZcDw4EFh5t4wi
         a7JNSdDdzg4ZFxV4aJXbkmJUAe1Gc+WRz7kgrwkzoV1AUM7DBLDk+BOLSmXWyfcXqIgS
         1BzCubo0zzzqwpjZsB6Pj9VF+FUkCHmuGwF6WwTZKDv0SB/7GDs75OPiyUkEzdog5qug
         ELOpKV2Rs9VOxi5p4s7FCRa1UdnOxYTyE53+ElXMgU1tMVAf4VRwPXe7gFefH0AK6Tcs
         Hvow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ABy/qLb/pF/dF6ai8QeVJYyYHL1POiW7F8Xw739Jf+ISKfcprimGidp/
	qQ+tfnRkD9lYAdPQPV/+2tQ=
X-Google-Smtp-Source: APBJJlGBeRVXbAJKTCoXOeWB21XQaaBCQHnKkf8u0kJy7rF4eBuX6ePoD7PT3aUyVFAmZV/5ptXTCw==
X-Received: by 2002:a05:6870:4711:b0:1ad:e92:62e1 with SMTP id b17-20020a056870471100b001ad0e9262e1mr641560oaq.54.1689219322548;
        Wed, 12 Jul 2023 20:35:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:d61f:b0:1b3:98f0:abf1 with SMTP id
 a31-20020a056870d61f00b001b398f0abf1ls477605oaq.2.-pod-prod-03-us; Wed, 12
 Jul 2023 20:35:22 -0700 (PDT)
X-Received: by 2002:a9d:5e99:0:b0:6b9:414e:dc7d with SMTP id f25-20020a9d5e99000000b006b9414edc7dmr382624otl.35.1689219321978;
        Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689219321; cv=none;
        d=google.com; s=arc-20160816;
        b=LyG/1Y2rzBCEoFnWGvic9srfIMxb1PJd+4cQdWGIUdhoGjic1QPxPg4xCGq19grAYz
         aUadWTTt5NLiUPaP/kxIuZP54zeV4R+l3CgpMyvarVZcQY9OTjPzRpBJ+yj9gzxXbH8E
         pnnCbHpVT9pzdQ0N3VBplBQrkAlUXpIz5kuINnQU4UIGL+llQVa3wVszv/Mu6UUJig56
         LfyenBaHIDl9OFBwRmESbBznDu3kEMiFI4PX6S/N2gxjr2IHoj4H19PUMMu0Buyxp0zO
         kTNgfjvTSLbbmPzu+Cxxevo6Mrkb/VTf/uGrl8zIuZQVRJqHLVFIKzwvv20YOnbFyJP4
         7lZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2QV7vh1ogKfJf1Qa4ERBfjeAWDEN5HhFP3tvUsoJaZI=;
        fh=D4dEWmuAcp895aUsgE3OaTSxxqChJUuZ4aohlQulPbM=;
        b=wBNaOBQ0rLTuto5bfcUyHjEY8dqxPMQMKbGL/Qrc6vOVXrHpYqylJnLQ3eCmANDA07
         Q9CuIZnbo6H8I/6Fc4DiRWLTXM4UBAb2vA095d1GjCmKKcaUXdKRU6Z9bEeeaNlqp8BT
         1mfAPKScFYr22Ney90FQT6i8Ju5+Q6KzR9DkO5lDapwY1UsfMCJXwkotPrtHaSYeuvDl
         QDfBAlbXXmQxdkrcq9dvzvHefXnahFHWqjoK39mon2AQ9Yq/KWXkLshEWgINXWcji8ik
         w3/u3uL2B2lF7AW6vSEzqboRMyCYtq1OxCWzqv1tbCkGC0XH1cr/NPL2KqW/k5CCQMa+
         J1ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HMccXsOd;
       spf=pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=fshao@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id c2-20020a056830348200b006b8ca9be753si927868otu.1.2023.07.12.20.35.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-7835971026fso6178739f.3
        for <clang-built-linux@googlegroups.com>; Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
X-Received: by 2002:a5e:a811:0:b0:783:69e0:57a7 with SMTP id c17-20020a5ea811000000b0078369e057a7mr630577ioa.16.1689219321529;
        Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by smtp.gmail.com with ESMTPSA id t7-20020a5d81c7000000b00777b7fdbbffsm1725499iol.8.2023.07.12.20.35.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-78666f06691so6805639f.0
        for <clang-built-linux@googlegroups.com>; Wed, 12 Jul 2023 20:35:21 -0700 (PDT)
X-Received: by 2002:a05:6602:18c:b0:786:2125:a034 with SMTP id
 m12-20020a056602018c00b007862125a034mr572395ioo.18.1689219320748; Wed, 12 Jul
 2023 20:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230421021609.7730-1-nancy.lin@mediatek.com>
In-Reply-To: <20230421021609.7730-1-nancy.lin@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 13 Jul 2023 11:34:44 +0800
X-Gmail-Original-Message-ID: <CAC=S1nj2Mwfbs_fgzcMsauhjaWdj0_0=t2F708i4F=u0oGgo-w@mail.gmail.com>
Message-ID: <CAC=S1nj2Mwfbs_fgzcMsauhjaWdj0_0=t2F708i4F=u0oGgo-w@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
To: "Nancy.Lin" <nancy.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: fshao@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HMccXsOd;       spf=pass
 (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=fshao@chromium.org;       dmarc=pass
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

On Fri, Apr 21, 2023 at 10:16=E2=80=AFAM Nancy.Lin <nancy.lin@mediatek.com>=
 wrote:
>
> fix Smatch static checker warning
>   - uninitialized symbol comp_pdev in mtk_ddp_comp_init.
>
> Fixes: 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub driver for MT=
8195")
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

This seems to be unnoticed and I just want to get some attention for
it. Any action items here?

Regards,
Fei

> ---
> v2: add Fixes tag
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/dr=
m/mediatek/mtk_drm_ddp_comp.c
> index f114da4d36a9..e987ac4481bc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -546,7 +546,7 @@ unsigned int mtk_drm_find_possible_crtc_by_comp(struc=
t drm_device *drm,
>  int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp *com=
p,
>                       unsigned int comp_id)
>  {
> -       struct platform_device *comp_pdev;
> +       struct platform_device *comp_pdev =3D NULL;
>         enum mtk_ddp_comp_type type;
>         struct mtk_ddp_comp_dev *priv;
>  #if IS_REACHABLE(CONFIG_MTK_CMDQ)
> @@ -588,6 +588,9 @@ int mtk_ddp_comp_init(struct device_node *node, struc=
t mtk_ddp_comp *comp,
>             type =3D=3D MTK_DSI)
>                 return 0;
>
> +       if (!comp_pdev)
> +               return -EPROBE_DEFER;
> +
>         priv =3D devm_kzalloc(comp->dev, sizeof(*priv), GFP_KERNEL);
>         if (!priv)
>                 return -ENOMEM;
> --
> 2.18.0
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAC%3DS1nj2Mwfbs_fgzcMsauhjaWdj0_0%3Dt2F708i4F%3Du0oGgo-w=
%40mail.gmail.com.
