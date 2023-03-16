Return-Path: <clang-built-linux+bncBCB6X76TWIIRBM7PZKQAMGQE4L3VDHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 886836BC61B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 07:31:16 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id s8-20020a2eb8c8000000b00295b0c9f6a7sf117740ljp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 23:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678948275; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPpr68tdGwalBv8n/7USPmwOP2zCPYoyJdzHr3+OuPsRU11OFW6GuxCFMMkuJ9In1n
         6ENNpzSjZXTQPfy9iMajj8WxBgqcR79tYCCIA8QyF8LUS2oOLeQ5EtsaQLz3Ifu0GwAK
         8LGVGjrvzk7UhUMsoakGteVDGtD51Tgty56JsDfQo1n9Nu+N+Irksg58u+JDdmJKcORL
         UPLiKL1v7DaUtQwbY9c0Y4T8Aaj/0QN1b42v/UERrO4gUOl7dbqpXNWmhhqrBD0ff3ji
         tMACYaNIB0qW0b4jJkmnMHgeAI28pq/T1Ad5LxG2yo/otsGRdA+lW1qd5qbL0VaWnWec
         RO/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=/h1xR9oaZXAsTV/2RP0YPccgQs5DGIQD6utH3Z5Fv6I=;
        b=PYJf08AwD4Fxo2umktOW/1JFAzH0dyo+vE9c0vu1gDy9B/jFuGYz906dP/fX+GJRtz
         Dq8glmc+6pTfI3IqeF2NPQuLjUp84yU8omkzjaJ/3/b9qe45ZTlC0tjKl8z7wgjj8uJy
         yTqp+JJVLUpLiTjip6nFidrPMHpRQalSh61qhbvEjyOO2Q4Db39tQFwQrHL6frHo1UmI
         6xRMXAOx1SPBP6lB3KRrRljufO89aF1AGSQaR9e+UGt8lzqkT3gwMVS3eGlDZ7ZrocLB
         FEn9ugRFmM9Fck+mo0jtAymMzwRoxiE5z1TOMqxPz+8Oc5/MTIdtSmtldrKY4Hmd4+VR
         NiTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DOE9hQAN;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678948275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/h1xR9oaZXAsTV/2RP0YPccgQs5DGIQD6utH3Z5Fv6I=;
        b=Fsg6lp+oOa7zxuoMq74xhehUcJzGNn7hTkXy9rRBlrKlCxQXz1M1sYZkryFO9IF/uK
         b1aiB6hz4r8SjQdpAquGe/f3H2FGknyZ8K18lmgzFfSLqTYnsB5L4+biYSlL42le19/l
         IEsVyF+lV1Fve67IAJl4NWGW9WjkR25b2DZDl1YSyoHPea3rRX1hC5DNXonfaTmu/4Yf
         7fykvnWPgmexBzzlUcreAzIxhOc8gpgxEHGmfNVpV3aBdBILN2AKm3HclzIGjLlnzCgD
         mdGhSdXyYBM/u+6hHYnGCWHQfQ4OMuIjNGl2BtZ9NKklzDePy1ISGp1cydDYIrrUxy3p
         Y30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678948275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/h1xR9oaZXAsTV/2RP0YPccgQs5DGIQD6utH3Z5Fv6I=;
        b=lp0KH4vWhKIsYs/OszUTsKFKlRTd/ZAOWV4nCXTRpaNP+7HBNFVlxNookGwl76ilxz
         q49swiSUsJjv4HBoXUM/Z1O76vzOGwFR86tD0hZdpiZ/im6Ej2Yqexa8E3WNaNwqh46r
         W3PZb3g/hi2biP20DY1628DCL8hGn9+bSdKdGdiKsRJuF9EA2n/SQ8sUVWVvaXsFsLrx
         mDEpBSV0lUSy7LUP/8BxgO+5qf8uKAB4pCT2O7R21PXOYgmu3wWJNVscnGhx3pnYxX6/
         MzJ7acvN4IR5CuftTw3wVN66gPi8hg7y39+nKe2RIthctMwH+H0pKH6PFdYj+w0+aSMJ
         cdhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKUYU++RWNdWr/I2V67RRDQtOjkKjbdnKk0ULDF1o+7Wr6irovQe
	M+ftukPwIiBJ72aO5gsANbs=
X-Google-Smtp-Source: AK7set/B3Yg6AOYLz/2Sk/2WVncMeV+a/Xa/eOpf3oqq18qV2jg97+ZJw9cFlNGmg+N7wsqaWlzYnQ==
X-Received: by 2002:a19:a404:0:b0:4e8:d733:fde7 with SMTP id q4-20020a19a404000000b004e8d733fde7mr634798lfc.9.1678948275311;
        Wed, 15 Mar 2023 23:31:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc07:0:b0:298:699a:b764 with SMTP id b7-20020a2ebc07000000b00298699ab764ls154121ljf.9.-pod-prod-gmail;
 Wed, 15 Mar 2023 23:31:13 -0700 (PDT)
X-Received: by 2002:a2e:a403:0:b0:298:b377:3c9a with SMTP id p3-20020a2ea403000000b00298b3773c9amr1068623ljn.24.1678948273736;
        Wed, 15 Mar 2023 23:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678948273; cv=none;
        d=google.com; s=arc-20160816;
        b=05tgQm6rVbeYnmPYzhDxltQ2/6aSE6p26uAMNgrg0P1obmmUGlaga9i9qbaGtxvIq7
         fICRHgkIA0HGwQuYXIptJTmg4hhyxoALHnEoXsPr2m9gOx9LJBGxGPVGcrwVGH9ItquX
         drxkqffE1YuXoiZ9EwKvDzABhXv4KaRpl3USEz5kx4CG864OxPdN9Ftr2nv01v29SQ0e
         lwdLq7HwA1dL9e3/G/ihrvVTaW3sH+k8giStHLvpdrZWTubCQLOlo/pW8JoKEcnuPNsW
         Vlzj3ebOQyVogI9Qm7SweFzyxCbOuflwgqMHS5zhr0DVPfPKxjnnvLMSupE6rpYjNO8+
         jyPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=r9j8GQrtbHhtegURmxB3PLCY1oXF2JoBLNnpXVqbpVM=;
        b=XpOEvge1gli+fEgbRprG8H9dzdUdYPCrigTZZUYmqFNZbEud8cZ+sh0VwFxPn8I1rM
         04jZLc/tU/kZdZvcRN0UOWrDvdRuWsfqchhhrlN3hexULG1ziWvq5Dn6apFKasavUBk5
         uJrPMfYak0n+3JfNIWWqu+7A+syakeXD/JlGJhuGKoshdoxU6ihNtWNUdBE15ovGix5A
         8t1TMP4iTXAhyIUs3MR1seP4dkngF1CfoaRSbF6FtA/dP+6tT/qQihRLuuqRPg3kP/0W
         wAaPXeVK1I/j9/PlTp3sz7p3+ZGTBTOGfaND+BQiQL4dd7X+lEPH+d5bfmm07J0nuEm6
         jKkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DOE9hQAN;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id f7-20020a05651c160700b00295a255ee26si387832ljq.6.2023.03.15.23.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 23:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Received: by mail-ed1-x533.google.com with SMTP id x13so3508001edd.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Mar 2023 23:31:13 -0700 (PDT)
X-Received: by 2002:a17:906:14c9:b0:8ab:4c4:d0f6 with SMTP id y9-20020a17090614c900b008ab04c4d0f6mr8694921ejc.56.1678948273080;
        Wed, 15 Mar 2023 23:31:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id oy17-20020a170907105100b008e385438c76sm3427088ejb.55.2023.03.15.23.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 23:31:12 -0700 (PDT)
Message-ID: <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
Date: Thu, 16 Mar 2023 07:31:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
To: =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 =?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
 "nathan@kernel.org" <nathan@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?=
 <ck.hu@mediatek.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
 <20221227081011.6426-2-nancy.lin@mediatek.com>
 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
 <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
 <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=DOE9hQAN;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
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

On 16/03/2023 07:19, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
> On Wed, 2023-03-15 at 08:16 +0100, Krzysztof Kozlowski wrote:
>> On 15/03/2023 04:45, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>>
>> Trim the replies and remove unneeded context. You want to get the
>> attention of other people, not force them to read entire email.
>>
>>>> +  mediatek,gce-client-reg:>> +    $ref:
>>>> /schemas/types.yaml#/definitions/phandle-array
>>>> +    description: The register of display function block to be
>>>> set by
>>>> gce.
>>>> +      There are 4 arguments in this property, gce node, subsys
>>>> id,
>>>> offset and
>>>> +      register size. The subsys id is defined in the gce header
>>>> of
>>>> each chips
>>>> +      include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>>> register
>>>> of display
>>>> +      function block.
>>>> +    items:
>>>> +      items:
>>>> +        - description: phandle of GCE
>>>> +        - description: GCE subsys id
>>>> +        - description: register offset
>>>> +        - description: register size
>>>> +    minItems: 7
>>>> +    maxItems: 7
>>>> +
>>>
>>> Hi Rob and krzysztof,
>>>
>>> I got the two messages when running dt_binding_check [1]. This
>>> binding
>>> patch was sent previously in [2].=20
>>>
>>> If I remove the following items/minItems/maxItems in the
>>> mediatek,gce-
>>> client property, the two message disappear. I don't know what's
>>> wrong
>>> with the original syntax. Do you have any suggestions for this?
>>>
>>> -    items:
>>> -      items:
>>> -        - description: phandle of GCE
>>> -        - description: GCE subsys id
>>> -        - description: register offset
>>> -        - description: register size
>>> -    minItems: 7
>>> -    maxItems: 7
>>>
>>>
>>> [1].
>>> Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.e
>>> xamp
>>> le.dtb
>>> /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devi
>>> cetr
>>> ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:=20
>>> hdr-engine@1c114000: mediatek,gce-client-reg:0: [4294967295, 7,
>>> 16384,
>>> 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
>>> 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295,
>>> 7,
>>> 45056, 4096, 4294967295, 7, 49152, 4096] is too long
>>>         From schema:
>>
>> This looks like known issue with phandles with variable number of
>> arguments. Either we add it to the exceptions or just define it in
>> reduced way like in other cases - only maxItems: 1 without describing
>> items.
>>
>>
>> Best regards,
>> Krzysztof
>=20
>=20
> Hi Krzysztof,
>=20
> Thanks for the comment.
>=20
> But I have several items for this vendor property in the binding
> example.

Do you? I thought you have one phandle?

> Can I remove maxItems? Change the mediatek,gce-client-reg as [1].
>=20
> [1]
>   mediatek,gce-client-reg:
>     $ref: /schemas/types.yaml#/definitions/phandle-array
>     description: The register of display function block to be set by
> gce.
>       There are 4 arguments in this property, gce node, subsys id,
> offset and
>       register size. The subsys id is defined in the gce header of each
> chips
>       include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
> display
>       function block.

No, this needs some constraints.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b04eb48e-c9aa-0404-33ec-bef623b8282f%40linaro.org.
