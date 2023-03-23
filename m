Return-Path: <clang-built-linux+bncBCRYF65Q5QORB3F76OQAMGQE27YXYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FBD6C7400
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Mar 2023 00:25:34 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id y9-20020a056512044900b004b4b8aabd0csf8723077lfk.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 16:25:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679613933; cv=pass;
        d=google.com; s=arc-20160816;
        b=rZAIMmMu9s/E9Ky3SLazTvam/cPDZIqLEFfEvqfeNA9FbnywWAmLyfVn8IlOuqj9CZ
         ynRB1jozf7myC0qs0/xOGSal7EC7DzkcOykc7YX+VEEPVb5itOXNDZd7I1gT2VFznStn
         egL0aInzMwSoSvRAYi0wS0l/OSCioaHmibYTcEOrYhpQC8MmIia11Jqa7bAaULHhl+JP
         1ANLjWAEa2oj+uj1wSSiuDvD1NqOplmQ5sP+HRsukpuoQOG/Gyu08t0tAlBxrGzwCHcx
         ms32tALevTVl1fZ3ou1O5Fw47nmhYQXg867a3FM3Wf0QfvWxxq0az4f28+/WVcQzFv/u
         HtlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=0J/ybx0OrV1mFLTPOhNVS/hm6EWvQ6UJ2WPLTSCVBto=;
        b=a1si7EwkhBDMWjmUAr3dVGM14h8WZJ/dh8/jw9IH5ZdDdcL1G1AGIlzn56iHaT4B/5
         +vRmZ/WUvj5VOSfPEzrnbMOq0nm8jQu4//8tM8C2v/BY6TZgy4OpvLH8tS8AKiGYVqdx
         SgEehPvRmBNz3UdLFdmEawLcCtYIikTLbVylurlOW0QwyZdmMeA7IsTKUBeU+6isv76X
         3wIq0ldviwZDhm4FF1SKsvXNTat6qHM/lA1gn4A8F0+tPLH8DE/5y4faqekGqz0LGMHa
         ZWAP1e2R49uO8sAbmqIaZDH7G0F4/Cc00Zk3V5PRZ1YRZfgCuBzBgnUtpGZmcF255FVw
         iVIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sP5/ZKwa";
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679613933;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0J/ybx0OrV1mFLTPOhNVS/hm6EWvQ6UJ2WPLTSCVBto=;
        b=fs4DNOY+pP/9Ea+8+SwaQsMS9/5cKm/ESKgmjFHvzGPyyIlp6/WanXANR9XA9B/P0l
         BgehvI6O1BOTsrIhujUBgeJ93NNKzugQNcAQHMV/lXkJKSGzRxVQL/x3cb5/skLcfJsK
         JhqIsDWGJgvMLQF3Kv9rrM+0Oh/x62tyPfeN0cw5D6p2lYPlj9+rJ/Pmje2yiX5GvboR
         bQnUWQKs6SBDNuVRmnFXTFvwPlwBeZU2strruVKNjMRjlaWmYwqecxyKolV5eXAqoXDT
         vO6ctV7+aITshfqxIZMbF9eLHQeXfAehZCnYtrtH/+6C3+4JDKGkXqPKczKfY+gpvPTm
         Q71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679613933;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0J/ybx0OrV1mFLTPOhNVS/hm6EWvQ6UJ2WPLTSCVBto=;
        b=2VyNgJI5fwiUfY+sxbqLnCgrekwx3eF1Y/c/br16slQLGfHwnayzhjLRzwQWpKcafs
         Lxs/LM9xK/oIEZfZ53dgvD5ST+q34Hf90hgMNRhNqvg59d2YQVsX26G49cGcFiLFcMGf
         iVrbrGsyhJAxv6+McmSBL4HgN89flDG+hn01QTlvcdQ3vgswTt9wJlPWKJAAr7HGm7ML
         +x5XWNQrbKmbUhUphN30ppJZXHEfsaJKUr4VA2ane1JhbRHzr50jHUHQ3IFKHXpBR5Ec
         sMpvvBjwvidkDBhd5BXjDBm4apmnUb6ThTWwpphj2/BLl5S1N5HvobXBv3Od0nenaJF9
         ozsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9fOpL84y4vquW2C5blzcn0D+CONaiy9b84r+0p5YxqNCSP46+Zp
	x7MRwqfb5TVTtx+BwM02ehI=
X-Google-Smtp-Source: AKy350a4dWJaPQv7wT6nJr1KMwGZT4IO/SIKQZG5xNI1cZkVQnO57gBmNFPEb/7kG0vhiZxEH2MShA==
X-Received: by 2002:a2e:9281:0:b0:298:9d0c:ad5a with SMTP id d1-20020a2e9281000000b002989d0cad5amr281040ljh.2.1679613933029;
        Thu, 23 Mar 2023 16:25:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0ce:0:b0:295:a3ad:f338 with SMTP id g14-20020a2eb0ce000000b00295a3adf338ls17483ljl.4.-pod-prod-gmail;
 Thu, 23 Mar 2023 16:25:31 -0700 (PDT)
X-Received: by 2002:a2e:b0c4:0:b0:288:7a51:3882 with SMTP id g4-20020a2eb0c4000000b002887a513882mr282888ljl.10.1679613931482;
        Thu, 23 Mar 2023 16:25:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679613931; cv=none;
        d=google.com; s=arc-20160816;
        b=ceajhzjSynICmcH759IV7cAugqknknZ53PjEZrLweW1kiY75LERVSZphy1eYeT+XIe
         WCC/lNd+TCs+nMJz4L4DuKg23eMmMeSpPOCPUDj1tx1AdfesZ22dhulI2GCmsdVY6Enz
         /GIf0ldj3n8xFn5BX4mkPfiibydWb8F93NRl0pFq5h5QD8+VuY+RKEnGZA9Fb7rHS17Z
         ceMHu/Nvoj/YYGqrTd5Z1jHsYTLPWSki2CUKAzBIxbAchJ3C7rCysfjc9grmF8w8cPwz
         /IaHclKwCWblQWNhIC/dd1PmITB5ldsus88pbdIY9617LuYs5KxUXkEnx7jzuH87RM0X
         wtDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4Ynyp+S9BGcwrttvmGqGTVkG9UhEwnTOcUptS58xcI4=;
        b=cRwFBftvwcAl0rFKeGOE03Sk60EeyOmXtHlJZ+5tr5/fXeh+3zKo+QA0JIPSU4rtHf
         m/sZVJXqkPrrfDjgsU1Vtx27snLPSAofMKwD3xfKQMdOZtUgBHLQ4gBqw48Sn7rhDGln
         3+z8DtKgv8VYdw8xlzkCl7deSzeSv/tFD/k7BlYXkzynh+hTnxodpXbxN8Bx40UgFXHs
         VdrWw0cKB5D6InckUX5LKE0WEi2uyd4GEEVsLJeF9NuFLo/INhJVbVmpGRRcI/FF/IAO
         bQFgaIOoc+F4O/onmVsRlEJ5M4a9kwcGHpfQBOnap/5rswz1B761mFy2Rx4bcn8tMVY6
         uShQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sP5/ZKwa";
       spf=pass (google.com: domain of chunkuang.hu@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id h1-20020a2ebc81000000b00299a6cef333si978950ljf.0.2023.03.23.16.25.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2023 16:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of chunkuang.hu@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D4EA7B8228D
	for <clang-built-linux@googlegroups.com>; Thu, 23 Mar 2023 23:25:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF535C4339C
	for <clang-built-linux@googlegroups.com>; Thu, 23 Mar 2023 23:25:28 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id t11so41258lfr.1
        for <clang-built-linux@googlegroups.com>; Thu, 23 Mar 2023 16:25:28 -0700 (PDT)
X-Received: by 2002:ac2:5639:0:b0:4dd:9931:c555 with SMTP id
 b25-20020ac25639000000b004dd9931c555mr273032lff.0.1679613926916; Thu, 23 Mar
 2023 16:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
In-Reply-To: <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 24 Mar 2023 07:25:15 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
Message-ID: <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "Nancy.Lin" <nancy.lin@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
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
 header.i=@kernel.org header.s=k20201202 header.b="sP5/ZKwa";       spf=pass
 (google.com: domain of chunkuang.hu@kernel.org designates 145.40.68.75 as
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
2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=884:5=
8=E5=AF=AB=E9=81=93=EF=BC=9A
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

I'm curious about how you build code and test on Chromebooks. Do you
build in cros environment or pure linux
(https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-r13).
I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
upstream kernel on it. cros is too heavy for me and I doubt I could
use it. I've tried the pure linux and could boot up with console, but
display does not work. If you use the pure linux environment, could
you share how it works?

Regards,
Chun-Kuang.

>
> Chun-Kuang, can you please pick it?
>
> Thanks!
> Angelo
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj%3DcUCA%40m=
ail.gmail.com.
