Return-Path: <clang-built-linux+bncBD7274FIT4EBB67J2CQAMGQEYINYXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B21156BE5BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 10:38:04 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id f14-20020a9d5f0e000000b0069d8d0ff799sf1637608oti.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 02:38:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679045883; cv=pass;
        d=google.com; s=arc-20160816;
        b=zV9kkFmWFLfddhA9b8zg9fjmmqKYJmksRaII90cMKD7c/oWChqlzBCdS9MGwevDhEa
         /9GMErhgbZlBuI6XvFZScinyWUzaME9p2ZqtBp1CjGYon0HvE4eX/c7hCca3v0U2Krqi
         nZJ41l4mZzMryy7JFxpyJv2B7jBANDMSU1NYUCiVwWnwnIAdiKM3r+0hSREoOJSrrj+M
         MmQ2WJNWMawksab5efwUa/E7SsUDc9UVXfttKv+vPoQEEhhibh0ItASLc8yQDu9YWWEi
         zXN9kO0DxKyCUouQtSUNC4kxMncslNJrNYJfmZZdSYt/2GM2YT5Yf/QDOFaCzvYWwHmv
         /QCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=rw8weQEwxFgliP+6rwEeAjgkCbCMtGNiwIi1UT37To8=;
        b=Y/dQHg8z4J4NU8vpVzRAcjO7AKwFpnPTugCerk/MYQ9/aZ+AYvaDK8QFxWf/8fpf3u
         yMHiOqJI0VfRb93gZJK2HDlROeyJPgFFiI/SE53O0pOQjpeqpTmHYhUe7otTED6e9+9x
         iDbvMpDHDTJLITTBWghMSzfIFGSkwyFLgjRWG7I5kBoh58SaGpo2Zyfl0Odb6jRTXM4W
         cXbH5XmxxyIDM9zvAMxtRGd8mU4se+WWKcTbVumy5zE1Hy/8swRm3hzODYrreeIcyJf9
         PDgVK7Cn+/ejmyPYHd3IiMXzt5F5gOAmzDFFt3qwCho4fOqzPU8x+wbZZ/LOBWFTYG96
         YPbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=aBnKahfJ;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679045883;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rw8weQEwxFgliP+6rwEeAjgkCbCMtGNiwIi1UT37To8=;
        b=ZWCZ+Mvp5Ihmubfu2RZw4Y/RYn3PHHFPt017SNZxhcW35msZ9PGwhGU7R9wl8Vfab8
         5xW7Q1i9FMxKRYzPV0ZyIoZzM8B1xQ0AHKo7qjpfkmrd5IrEI+PHjF4bks92hdOh4yHp
         gH9+Qxndo8fIWxFMATiAGa9Rjc/UwPp98OTAMNbV648lQXKlNJY9jRYEdVfoG24LAVEW
         cSkvq0BEH/yGEM86GJ/9kJmm3z46HRdNuijAgXSumvZK1mfa/HtsUp0dIV7HfXggcU2d
         b/S5GmuwvagDllWsa4VnvHsP+2o5kVW2Rua4Elz2VLO+ZXfzLjxFykkr2fJ8CuLUfw02
         qJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679045883;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rw8weQEwxFgliP+6rwEeAjgkCbCMtGNiwIi1UT37To8=;
        b=1DvhQ+tcQR3Iu7hwL4gXxhiJoudwSAMH/Xi6QBKX1dlnr36U75AFWF/I+1ggc1V8EU
         ZhDu/oV5xQHGoY9gzXluivL7oOVcavyJvodcClYS3Z/tXhwZjBjQU2iTeGfSIBJOGMEQ
         X8TpZ+iGME3iHkeRLoG0HoNMC56JvXFO5CqVTzTXqb9dhFg5A0iVGqUpftFnJiV3WfkD
         jZhptkTfXYULtvnySmfrYad0k+Zxw71Oaiosg/rHgO7Zrizf3k8ivEe5Fne7HwrbRx+w
         3vu6eYP8b1cOnCIsj4n7URzl9IpHhjXTyMzFez1/LuJ2SYW4FPvVX3H7e7ejHaLN4erj
         pnFQ==
X-Gm-Message-State: AO0yUKXqwjeZcWD9Tp9juyFfRdrYSnCiNTdrQyfFRFYpqEYpZM/76Vbt
	17Th6ItY8tmZzYYEcqqwucw=
X-Google-Smtp-Source: AK7set9kFYCTPxEuypfVMlq/LEVHtZRFKYjJS3H7djK1OoAjkMIugH1RIVujatcu1PSkRfOx+rErDw==
X-Received: by 2002:a9d:6090:0:b0:694:634:8fd8 with SMTP id m16-20020a9d6090000000b0069406348fd8mr16885900otj.1.1679045883581;
        Fri, 17 Mar 2023 02:38:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:2a48:b0:179:4735:e363 with SMTP id
 jd8-20020a0568702a4800b001794735e363ls1682563oab.8.-pod-prod-gmail; Fri, 17
 Mar 2023 02:38:03 -0700 (PDT)
X-Received: by 2002:a05:6870:4799:b0:177:91a1:8801 with SMTP id c25-20020a056870479900b0017791a18801mr12390691oaq.45.1679045882961;
        Fri, 17 Mar 2023 02:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679045882; cv=none;
        d=google.com; s=arc-20160816;
        b=ax2TieYhTYHyWcGuohwMT1h3KKlI30KD/0qNx24AieLwwX2bIQm1PqpNFh9a1S62v4
         UDEa73QaGwi0V5Ue6oeMfa8TcFcBQJnYrbU4T7myXavOkh0vQyRSQk9ZyL7dezt+pVPn
         a+QdfgzYedSou20IgLIaL6Rj2y+9q47InsQhqzSSiXVJB5GIw/M1GOaGyrzUiw9SWLmb
         9rWitDlN3wuNrWhzKgua4kE/TI5qJ1VX6J111BpbeX+km4Ji/YEaa3e/8OHkKosD1qcZ
         MCP6HgJpLDE/wRQVTvFdnVelOoRMW8BrkJPLkq0Y7c5ccepRiluhj8RzziRc/zMkKqRe
         CfwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=W4ZtIXw0ir18QEQZljYtT4f7hKsW6tJ5NYQpUlJrVvM=;
        b=DRUAc7NC2s9wDGZJLcI5EoNoxUFjaG+9MK7Nwj63cx9ESHbhdeLnPfPe5isgKSyLRB
         1RYSIVHAf2YtNDBazr+yIIYGTYjhQO77jYmse0hXUnCIaFsLqV6bu6Xw+3Y9SdA83w9K
         yG+A2oVpxxUW+nQlWG1pAWjrGND0izPAOXv/FVcT0Pa4DT8x6YSgfjf0A6QJSjhhiMzT
         Tkc7791duwnHx+tSzZektEQypy2Qr0Dg5ZgFXcLA7xsd3fPgQ7Gag2wfHq+sJlTTwL1p
         QhaFh+36ovU2GblILd37psq54zw42xFzlDVE6YPw0NNa1sWz/IuRkrJktPqSOVz7FNeP
         +1ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=aBnKahfJ;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e5ab])
        by gmr-mx.google.com with ESMTPS id gr25-20020a056870aa9900b001762cd3225csi249260oab.3.2023.03.17.02.38.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:38:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e5ab;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AA6F3660309E;
	Fri, 17 Mar 2023 09:38:00 +0000 (GMT)
Message-ID: <fdd0a157-eedb-bf21-c632-79b02a4cd6b0@collabora.com>
Date: Fri, 17 Mar 2023 10:37:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
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
 <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
 <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
 <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
 <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
 <4027714e-b4e8-953b-68e2-f74f7a7f0e8e@linaro.org>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <4027714e-b4e8-953b-68e2-f74f7a7f0e8e@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=aBnKahfJ;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
X-Original-From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reply-To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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

Il 17/03/23 10:03, Krzysztof Kozlowski ha scritto:
> On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>> On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
>>> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
>>>
>>>> Hello Krzysztof, Nancy,
>>>>
>>>> Since this series has reached v29, can we please reach an agreement
>>>> on the bindings
>>>> to use here, so that we can get this finally upstreamed?
>>>>
>>>> I will put some examples to try to get this issue resolved.
>>>>
>>>> ### Example 1: Constrain the number of GCE entries to *seven* array
>>>> elements (7x4!)
>>>>
>>>>     mediatek,gce-client-reg:
>>>>       $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>       maxItems: 1
>>>>       description: The register of display function block to be set
>>>> by gce.
>>>>         There are 4 arguments in this property, gce node, subsys id,
>>>> offset and
>>>>         register size. The subsys id is defined in the gce header of
>>>> each chips
>>>>         include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>>> register of display
>>>>         function block.
>>>>       items:
>>>>         minItems: 28
>>>>         maxItems: 28
>>>>         items:                     <----- this block doesn't seem to
>>>> get checked :\
>>>>           - description: phandle of GCE
>>>>           - description: GCE subsys id
>>>>           - description: register offset
>>>>           - description: register size
>>>
>>> This is what we would like to have but it requires exception in
>>> dtschema. Thus:
>>>
>>>>
>>>>
>>>> ### Example 2: Don't care about constraining the number of
>>>> arguments
>>>>
>>>>     mediatek,gce-client-reg:
>>>>       $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>       maxItems: 1
>>>>       description: The register of display function block to be set
>>>> by gce.
>>>>         There are 4 arguments in this property, gce node, subsys id,
>>>> offset and
>>>>         register size. The subsys id is defined in the gce header of
>>>> each chips
>>>>         include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>>> register of display
>>>>         function block.
>>>
>>> use this.
>>>
>>> Best regards,
>>> Krzysztof
>>
>>
>> Hi Krzysztof, Angelo,
>>
>> Thanks for the comment.
>> The Example 2 can pass dt_binding_check.
>>
>> But the example in the binding has 7 items [1] and dts [2]. Does the
>> "maxItems: 1" affect any other schema or dts check?
>=20
> Ah, then it should be maxItems: 7, not 1.
>=20

Keep in mind for your v30:

maxItems: 7 will pass - but only if minItems is *not* 7 :-)

-> (so, do not declare minItems, as default is 1) <-

Regards,
Angelo

> Best regards,
> Krzysztof
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/fdd0a157-eedb-bf21-c632-79b02a4cd6b0%40collabora.com.
