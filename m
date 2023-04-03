Return-Path: <clang-built-linux+bncBCB6X76TWIIRBJ6BVKQQMGQEFKQG3VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D576D410E
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Apr 2023 11:47:20 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id b10-20020a056512060a00b004eaf5a72b99sf11390935lfe.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Apr 2023 02:47:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1680515240; cv=pass;
        d=google.com; s=arc-20160816;
        b=1DBjkzHaAH/tUFToh3TalMCDaAVPNLKdw0i4tZ9Ae1qVQORlffsOFjOrrFsM5qPuMG
         Gdoz8ZObjOPlu1XVsG0kEdYHgJEysJcD2ZeBTG7Lg8aKZZgEjsDlDUUagBHOjCHPowFS
         srev834Mewpt94l3He96cs+GlslJRHAQZf0zPnSzynxIbFKpl7FSMuA0F2k+cwSfP0Tm
         plHZ5VESDvcn7+7WsfnIRtIEenM9PETA+LPsD7Ryg9I8P+QDUSc3d2LaxIEn81syRQtp
         s8rMGKwHObhZKusW8QUjy0M3ISb5Dq8CtSTDct7sH52SuzFuZt1KQyy5FLQH49mXFHCc
         pEiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=mnhkOmxSmORSr/Ui5qA0+Us61siAptrtuIuA/f6yTfQ=;
        b=OgtD75mZu8HQXIUvIuUrbmEIlHoPXyztzvJ2Jful65WKK9wpV4ZZZpQ9TIz4MDCYLd
         SA9qkRTgr9PJ7bNNRDwWzwH9u80n5QxDSMq5/ciGy8xK7vAzbbSv8PVUkCtZ0FcU9R0k
         HXmnX2WTHmDL9CQ8wkI6IrU8gnOqVSbJE9zJpQQTiRK0K3+HNgrKoHtYk0b6VCxIlmkj
         IJQ/Ud1KyfQfzlw5xLm/ClAv0Xu3yMAhAvWxT6ySOxCrj0IbzM0VBKOD0z5nPwJHyCZ/
         POe8lI4QkedJHwlfiMfJhzrgqNccSGy4R3e7f1q5DtXHYn+m84er4kUnwSFj54bqtAa9
         NE6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SvoeEbbR;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1680515240;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mnhkOmxSmORSr/Ui5qA0+Us61siAptrtuIuA/f6yTfQ=;
        b=f9YyoAEWL+EzQn95bRqh2GnyAzZddVNxoY1mgaedbiO+8bBgiFpLqOu2CKTZQWe/1k
         1HxUspUQZZPR8ZTXP6J/hi/okQAhvVx30CXZBv4wESGgfSmT8O/h40/EuAgC6cKYPT32
         bNYGWvnF1wtNKxWqa8wcvTKHqN8+leftcQkdX7ZM4KZSYO3TaK3D7uCJPV6NyZ/BlCIR
         zBGeH8rtc3ZpZlMmbk0jzLX2NpTqv8S+S9ENkEOeGW9mUHNbfmO6hDEH91rCTc49zrVl
         irgR/EgsRjdigLBZ7FEZy5+BlEBZryFJ2JBhvjpLNQYkJd6o5fjmvtdyhoZIKJay9IaL
         FcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680515240;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mnhkOmxSmORSr/Ui5qA0+Us61siAptrtuIuA/f6yTfQ=;
        b=8IHCHIRB31Swq1YDp1kfboKtsV3o494MIs47VaCBkUJv2dFFkPedPoxhNTGERAcaSV
         TZtzmJJaiV9QkeAXdtKaGPyY+be09JoEZ6iat+oBDJZKxq9D/jkbj39HUvF3kYJ608Gt
         x1Rjkwq150RZkJ65wXE5B9rMVH9AloAHG2bPl+AymHw48436kvOrCVsCg+9SLV9i0vf8
         fRXcPSBzyfMzxbx6a+iLgD0Xm9gJVJA5BiLreLVsCW0UzIZXN+Tlhc7+eRcoaGWWYDsm
         +SEtBE4o5eues492bINYtavifWll0V7GfUoeQXV3Wa6x4Pku1pFLVubWuD1w/bBof+Yc
         PRuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9fkuet/JzTf5RDQYOMsqUS+V3HOkCrgeYhr8BXSndCYiaWBV0hq
	btqYlzbkBURWR6625eYBELI=
X-Google-Smtp-Source: AKy350aoIXZStreWZJCeR3DdpgEmL85imp4j4vagu0hUnJMot9MRp89qkLVN3fBr37NeF+nnfEwrHQ==
X-Received: by 2002:ac2:5dfc:0:b0:4eb:1192:ce6f with SMTP id z28-20020ac25dfc000000b004eb1192ce6fmr7674688lfq.13.1680515239558;
        Mon, 03 Apr 2023 02:47:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:198b:b0:295:b83a:4ad6 with SMTP id
 bx11-20020a05651c198b00b00295b83a4ad6ls1525977ljb.3.-pod-prod-gmail; Mon, 03
 Apr 2023 02:47:18 -0700 (PDT)
X-Received: by 2002:a2e:961a:0:b0:298:700b:e4a8 with SMTP id v26-20020a2e961a000000b00298700be4a8mr10631588ljh.27.1680515238134;
        Mon, 03 Apr 2023 02:47:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1680515238; cv=none;
        d=google.com; s=arc-20160816;
        b=vGQPZtQZpXCbHTt1QkjoTjJNQbja/whKPrISrnXWW7YZoNVGJUyJjL1/4OfA4Ox6cY
         foLduoDf4kSnOKE6iciIqv/tjilCqUGqSXqnWvo1folRVsRLJiXSYofktRNSjn64ZFiK
         LWqlGxhwwmay2I++Td5JIP0eSGZMRjq5X5dFmi0BK9MJBTnlPWbrNsXE/IZT/dAYId+r
         x8aXfehSf9vf+OEu1USuEe5D361xSVOyHGgCE73ydDK1WCBN5vmiZERGhGL68P1yfa+K
         +GxuoKgszy2hg0IG+CPpijtXkfRHB4BY9OsinXVL+J152Azim3JOcPhEi1oCkP1ad+ER
         cDlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=htPk5PXTOqeqOET7dyhcLS5Nxh2cxnK3mpGnQz9jlEw=;
        b=mnhWdJjZw6mUUcX9b4c2V+OACJOsP/RkI+XZfQAO1GFiZYT3k0W5x5l2m+L6fujvCK
         lSSJcD2XHW596DeXtLTGBP/oFTd4KZIjQ4e7Cs8Um5L3Ux4wtCB9KcjyAGu+y4NVULGZ
         SeMKeyspcEvq/eLcbH7nhYKz6N6SzeQFyl54bFV8lDhIUcPPxnp2E3jSiI94hPtQtq5u
         B4rP4FvUeIXBtc5LSwhxQBTHlBMu5yw0ISiMUjvWu9VrJ8r02YyLKOEZRoe9iua1zvRu
         TM+0hy89IudCjOj0CXsAnYdcAmr4FP8UUcASwwDeQo7T5+C7/YuiQl72/wKZT+jAkEgt
         Jc7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SvoeEbbR;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id j23-20020a2ea917000000b00299a6cef333si421167ljq.0.2023.04.03.02.47.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id eg48so114755449edb.13
        for <clang-built-linux@googlegroups.com>; Mon, 03 Apr 2023 02:47:18 -0700 (PDT)
X-Received: by 2002:a17:906:6bd5:b0:930:7ae6:9ebd with SMTP id t21-20020a1709066bd500b009307ae69ebdmr35660301ejs.70.1680515237638;
        Mon, 03 Apr 2023 02:47:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id la6-20020a170907780600b009351565d1f5sm4285058ejc.52.2023.04.03.02.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:47:17 -0700 (PDT)
Message-ID: <d0b9d8a2-14ae-8c0d-309b-5f5d60d43a1d@linaro.org>
Date: Mon, 3 Apr 2023 11:47:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Content-Language: en-US
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 devicetree@vger.kernel.org, singo.chang@mediatek.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 "Nancy.Lin" <nancy.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, krzysztof.kozlowski+dt@linaro.org,
 clang-built-linux@googlegroups.com, Matthias Brugger
 <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
 <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAAOTY_8ZAxVSLnJ1u5snsRgkszV7ixwhjUS2nDimE_Lpj=cUCA@mail.gmail.com>
 <97a5f383-38f5-e8ea-e1d8-489b690e4521@collabora.com>
 <CAAOTY_9_vn-m2jTaaHkFDV+v2-LeaAxtCLNNnOxZq5Httb-TAQ@mail.gmail.com>
 <CAGXv+5FJCuG_zHnaKZ=baNzKAWKLEe3jZnghNAxuGv7i7L6e7Q@mail.gmail.com>
 <CAAOTY_9Dbtubah3ndj9+FeYDh7D42k6-BtHrYMNc=CP6GL6uFA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAOTY_9Dbtubah3ndj9+FeYDh7D42k6-BtHrYMNc=CP6GL6uFA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=SvoeEbbR;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 03/04/2023 05:30, Chun-Kuang Hu wrote:
> Hi, Chen-yu:
>=20
> Chen-Yu Tsai <wenst@chromium.org> =E6=96=BC 2023=E5=B9=B43=E6=9C=8830=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=887:05=E5=AF=AB=E9=81=93=EF=BC=9A
>>
>> On Mon, Mar 27, 2023 at 11:17=E2=80=AFPM Chun-Kuang Hu <chunkuang.hu@ker=
nel.org> wrote:
>>>
>>> Hi, Angelo:
>>>
>>> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
>>> 2023=E5=B9=B43=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=
=884:38=E5=AF=AB=E9=81=93=EF=BC=9A
>>>>
>>>> Il 24/03/23 00:25, Chun-Kuang Hu ha scritto:
>>>>> Hi, Angelo:
>>>>>
>>>>> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =
=E6=96=BC
>>>>> 2023=E5=B9=B43=E6=9C=8823=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=
=884:58=E5=AF=AB=E9=81=93=EF=BC=9A
>>>>>>
>>>>>> Il 21/03/23 13:18, Nancy.Lin ha scritto:
>>>>>>> The hardware path of vdosys1 with DPTx output need to go through by=
 several modules, such as, OVL_ADAPTOR and MERGE.
>>>>>>>
>>>>>>> Add DRM and these modules support by the patches below:
>>>>>>>
>>>>>>
>>>>>> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks=
.
>>>>>> Green light from me.
>>>>>
>>>>> I'm curious about how you build code and test on Chromebooks. Do you
>>>>> build in cros environment or pure linux
>>>>> (https://archlinuxarm.org/platforms/armv8/mediatek/acer-chromebook-r1=
3).
>>>>> I've a MT8183 based Chromebook (HP 11a) and I've tried to run a
>>>>> upstream kernel on it. cros is too heavy for me and I doubt I could
>>>>> use it. I've tried the pure linux and could boot up with console, but
>>>>> display does not work. If you use the pure linux environment, could
>>>>> you share how it works?
>>>>>
>>>>
>>>> I haven't tested MT8183 (I don't actually have any 8183 machine in my =
hands)... but
>>>> yes, I can share my test environment.
>>>>
>>>> I have one MicroSD that I use either in the MicroSD slot of the target=
 machine, or
>>>> in a USB reader; this *single* system is what I boot on *all* Chromebo=
oks that I
>>>> have: one kernel, multiple devicetrees, same Debian-based userspace.
>>>>
>>>> What we have to prepare this bootable media can be found at [1], but b=
eware that
>>>> it currently uses an outdated kernel, so, what I have locally is a sym=
link to my
>>>> kernel tree.
>>>> You can change/add/remove the devicetree blobs that will get added to =
the image
>>>> by modifying `chromebook-setup.sh`; before tampering with kernel tree =
symlink,
>>>> please run that script for the first time, as it will download a cross=
-compiler,
>>>> a kernel tree (that you will replace for sure) and the (very old) Debi=
an rootfs
>>>> that you can update with `apt-get dist-upgrade` after booting the Chro=
mebook.
>>>>
>>>> If you want to check about possible kernel configuration differences, =
what I use
>>>> is at [2], so that you can compare.
>>>
>>> Thanks for the information, I would try to compare the kernel config fi=
rst.
>>
>> Hi CK,
>>
>> Would you consider adding your repo to linux-next? That would let everyo=
ne
>> do integration testing, especially automated ones, earlier, before you s=
end
>> your PRs to drm maintainers.
>>
>> You can do so by sending an email to Stephen Rothwell to do so.
>=20
> I don't understand what this process is. Does it means that I directly
> upstream patches into linux-next? I prefer that my patches go through
> drm maintainers' tree. Does any document introduce this process?

All maintainers and sub-maintainers trees are supposed to be fed into
linux-next.

https://lore.kernel.org/linux-next/20230327124805.3ca4f3cc@canb.auug.org.au=
/T/#md226a8e714cc731c2ab4ba5ee7eb43fe21a55009

Documentation/process/howto.rst
Documentation/process/2.Process.rst


Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d0b9d8a2-14ae-8c0d-309b-5f5d60d43a1d%40linaro.org.
