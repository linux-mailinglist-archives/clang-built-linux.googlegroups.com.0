Return-Path: <clang-built-linux+bncBDHYXMMQ5YKBBN5M6CQAMGQEQ6XJUGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 980456C62A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 10:04:57 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id a21-20020a5d9595000000b0074c9dc19e16sf11256821ioo.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 02:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679562296; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpW1IaMmQNmkpKlZ7aOdJ/xR51rlvdKK0gqWhcyFtPnNAGeUr5saQ+Xh/YXu7ZtYLF
         sWGv63WaGexO2etp8PtxhGmKEICqOVPR/p58Rx7rBY+0OOipANWt96I3kjIYewl6V8IX
         uOPn43PCMW79aAP0AndrHgcOx65AXJYW86DPohF+ZlxqWkNHgJhv7h3yCQj2mohVY9pv
         Sk0ASvOoy+iH6P1QBCOjaDgN5bt9zcQHQM4eeFib6kv4Ugz2v2FydP6U+MkFZlHjaDcW
         NnUv30S25jfMuKdVk69s/Sn4kpaEIvPQ3cMRVNjlZvx/4p8OD9P20VvrAvf1cpG1ZIhk
         4AlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=UmRxRniwo2V8Br3Or5uasDD8fsTVNwCCnL2O6JQRwNc=;
        b=j0GjKrL5YUhFna/VHb7q7zzelSeEsrs+lvL27bT+UTXL32NFzYiClz/LqwfjmM4wA9
         aB+Q6MQN1LJ3n6OcYTFmaqd2DXTlmd5sH+oymsZwZkW8u3rAD/s7+HOc/nqYZhXEOMMt
         mPnizA+ie6LsmKgnRUP3VTkL09M2rDXkjasMzGOYAhWcYUZz0rKAOCtXTFaxUfsKDixy
         q2OF8qrRLcr1wARTC2JwpG0kqQvd7lxpufoFwWiHgU8WY7KVQwb1KN811wc29NL43k6I
         HzRStiBx60K8fO9GM0CaHtZmtyLYgO9rax1FuLaNtqxaP0UzaOLSSi0NYc0QR0PIp/cA
         L+Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cTjDYAWC;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679562296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmRxRniwo2V8Br3Or5uasDD8fsTVNwCCnL2O6JQRwNc=;
        b=Z88zlIK4x+ALNOR01+x6uTVcHtdxJSXEMlCQd6rLA1MnT8LYH+0hEVangb/7hy6eH+
         CJFGyOxbf58MZOS7OQwitVeKx6a56TMb6UWEycKr/9y8En61Icw9iqeXIxLSF6Vsj0mS
         pWNqbUQab8IRETg5zBPbka2/y6wJmPIVV6buDtHufqKNdaTUTq1eGKZ71GbP42zaMrbO
         48hbcDK+1et0KQUiNbmquhSS64gpJsmqiI8/U+m9/2BHogvfofw4PN9wuAVE0ysFzXpL
         LR5MipLsPum+BGJW3umSv+9RFWvdCKgqwLK5TOAUqeMfhFUuDnDCC5IBKoSM0e4flHYu
         ggDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679562296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UmRxRniwo2V8Br3Or5uasDD8fsTVNwCCnL2O6JQRwNc=;
        b=CRUL44g2K211AhRze4nw0b/ISnZNuWuOctLs+CWhD8VXvc8hTbEM0SBSrcnURrn9ob
         FMIFG8CEVOBGMgLP9+/dYmMifz+zJwRS5+IkCzzOwijuMJwQybFeU6epgw8u2n0Is9D7
         u29QPCMrGMLc1rVbWPPa7ngi5gyj/VfEyr0HSQTazqonnXI4MnLsawmkmMA/PO25zl9l
         CF1rsf/fGkEv4eirvEkHj/ucsCrNuIqm8u85Lv+ztRHFxbAD1xeupeFFvW524/+GN46V
         PWZ9MioQRBl8VAL7uyl1BV5kB7jYhAVJ8cNwSvGat2FDTW+CisdLIXCteCdg2ogniXFB
         074A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKXKoV1ZnRxajHwKJzKTioIFu670l8f3OFIT3i3YtQ0dJX+1APrV
	DOZcXoeMTz3yD9uslCtJtGw=
X-Google-Smtp-Source: AK7set9a6qpsf1eJD38DBfqFL5B1uT0nOhTFiveQW5YKhn/qp8FQ7wtn8NMnPijUDe84J8jiWXQPAQ==
X-Received: by 2002:a02:8525:0:b0:406:346e:c86e with SMTP id g34-20020a028525000000b00406346ec86emr4423493jai.5.1679562295949;
        Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:330e:0:b0:322:ecc7:b8 with SMTP id a14-20020a92330e000000b00322ecc700b8ls5411361ilf.11.-pod-prod-gmail;
 Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
X-Received: by 2002:a92:c04f:0:b0:316:f93f:6baa with SMTP id o15-20020a92c04f000000b00316f93f6baamr6781999ilf.31.1679562295453;
        Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679562295; cv=none;
        d=google.com; s=arc-20160816;
        b=ai+HRdABwQDK43qC0z+kqgXDRixVQF56fm/W/ZOQpiTdFpFlxno8qKeZRs1IsrMNj5
         t53u7B0afS308jHPRt9Htg2Vt76wGqr3JyUMELHsKnaoVh4Lh8HmYrlMQGiC76GlfvBd
         X0x+hV9MuUzhJJVvYmD/BkYkoT3Ct3ViaLeLahwSk2p1iKEcvvKdgBJGg2jCLVDILrUx
         3c74X026Y4ldhLNrv6gPmW8qlK7+lY+eloaGcoM7ojufg6lEYpt7p8BEHiaLSMHA2Ilf
         rBvypUzGRutsUVdOJdcwR6UtF77fRIbXP+hNPw1Oduea1laNgesqQyZCL46Vp4Oa50jo
         Ky7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ER5BSCr9JV00PaqEK5UpQdMYow41x054A0NzdPKRFxo=;
        b=hzgoX+jCUTeX2oDT6Ze/CU3emRq+M8DmodBHBKcZADgRdqeBOgrryPX9od1TLj9Ben
         uEevrhi79Sp67WP9kagF5EMoKFt5PSa3jVsLgsySFDMXKnxlN2fPerThTw2tgIchoops
         ejOY0CZmDxIUg6IyxE/zGgMLkVG9WvQFHhTVKsut5ceEx9YA1lx0L2y5Tf77eb0DPkg5
         bWilUMbwKyfHuu5pCG/3wthYu9L34vOf1EcQLHfPwgvTC2z6fxQVFjIbongzOIC/ZVB+
         D3C8V1+4d9U1/fBWbKp2AEDjyo/J5CjluNCxHKcFuqdaLOXWbhfwO9/Hi/4LH2K3Wse9
         C0oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cTjDYAWC;
       spf=pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=wenst@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com. [2607:f8b0:4864:20::932])
        by gmr-mx.google.com with ESMTPS id v22-20020a05663812d600b003b8b7635cb2si1828378jas.0.2023.03.23.02.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::932 as permitted sender) client-ip=2607:f8b0:4864:20::932;
Received: by mail-ua1-x932.google.com with SMTP id s23so14497887uae.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
X-Received: by 2002:a05:6130:913:b0:68e:33d7:7e6b with SMTP id
 bu19-20020a056130091300b0068e33d77e6bmr5361851uab.1.1679562294902; Thu, 23
 Mar 2023 02:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
In-Reply-To: <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 23 Mar 2023 17:04:43 +0800
Message-ID: <CAGXv+5F82Ctz0pit4LsR5mQizPq-v2k3OVfiRhsGnG0a2J=Dyg@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "Nancy.Lin" <nancy.lin@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, krzysztof.kozlowski+dt@linaro.org, 
	devicetree@vger.kernel.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	singo.chang@mediatek.com, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: wenst@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cTjDYAWC;       spf=pass
 (google.com: domain of wenst@chromium.org designates 2607:f8b0:4864:20::932
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

On Thu, Mar 23, 2023 at 4:58=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> > The hardware path of vdosys1 with DPTx output need to go through by sev=
eral modules, such as, OVL_ADAPTOR and MERGE.
> >
> > Add DRM and these modules support by the patches below:
> >
>
> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
> Green light from me.
>
> Chun-Kuang, can you please pick it?

It was picked up a few hours ago.

ChenYu

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGXv%2B5F82Ctz0pit4LsR5mQizPq-v2k3OVfiRhsGnG0a2J%3DDyg%4=
0mail.gmail.com.
