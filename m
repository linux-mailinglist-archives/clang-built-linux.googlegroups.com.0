Return-Path: <clang-built-linux+bncBD7274FIT4EBB4P54WQAMGQETE6AQZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 775B86C2E49
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 10:54:58 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id i2-20020a5d9e42000000b0074cfcc4ed07sf7638779ioi.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 02:54:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679392497; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqqY30gEP9CoW2rZitmwC3TSbqjbYmks43w323wlcbltdKvd/L5hCaM0aYD9TuQ857
         DHJlp6hAy2uoA2SgWORJE30nBsqbhflRaJwFffhu+Cz7A9Yo8TgsHCalGcFV47dZcwMZ
         P85s61KR5FnoATuzKkAsGVDa4ZwiSIKbyG1IiCcmbYUUfGqGMfaVki+MEdpT8OQysT3r
         3ULn4xQktgWp9kCyt8dDOlzkpVWxQ3Q1+mPGvk2YGQ2okWCHrhiqZhUuvo4LpDSSV2st
         CvXHUgmjksGCDhq0RypuQ/asAd9pvumkAZn33/LgaCk2V8MFRL0NsXz0PBpdC/m4h1+G
         4IsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=ABN8oB8f/1d+WfoxjRTlu4nGY8dt0rwv3bzRWPdQQ4E=;
        b=wWLbtxac8dJJxkLRE8FmLXCNT62w+htdWkEsqd6Quxbk7fmOuS3S7Zgqzt2tjkiQLk
         L5sBwRmmc3MqDP1Ai1Gx1U+9uyF7WnGbJ3upuDQQdg6lHhx0vIoWDcQgVV1c5VbwW6TQ
         wv0rfzaCOBG7WkgMqTBAb3DZDykVqRNb1MivrwoaIOhSqosVF9WpkRS6oEpIDpadsXeE
         T8O1HC02adSJMtu/rs1nEaviRkjzAhclwOMcKSKn4I1KMFxjPOL/8WoZXZ1Ss5jlfc7U
         legMEMqlLBYMCuRvSP7OhCl3LRqAkesWWj1+OlvfVssi7wghKviJItywDjrf/YXJhegr
         Yv8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=Owh7RWhB;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679392497;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ABN8oB8f/1d+WfoxjRTlu4nGY8dt0rwv3bzRWPdQQ4E=;
        b=EuHfeWfqvdOfCEYS548UC27H01xtmM+YScEGa/DJhdlSrXORmEZDu3aMbRssli/C8I
         v7v/uSqd5KxdseR19zf4N4RlMUwWygT+aqJj3n5X1/Cqt2pF76vOWUEFI75SLwS8/VHS
         hrvOHk/txBFSMj3aRhawASHEv42sXwwzy5wLa/NmX3hviejr3Nbi4YlBv9AyDgyPyHyb
         HXo3tIiy4sERtwGl1zvR2RloFz43eUHblFSFKue823oU5lT2Qcm8HSVCocVwf38oSkVE
         nBAJiB05h2dFFBr94uBHUMvojBS0tfLynjc4SUcbEFOVsryZG278XtMW7lOPmi7HPC3P
         cFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679392497;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ABN8oB8f/1d+WfoxjRTlu4nGY8dt0rwv3bzRWPdQQ4E=;
        b=w4sYyd3Kmxr2gVjD7oCJ2QjP9BDWYkOjKNVj4Hkqk73iomlQHZeFSXW5NVWICOXbHu
         456hQJ43tO6z1TQ3S0Ypa52n5u1hmFUXLzLm7FEucwz3kzDxtP04InFBSJ3+s2qwfwjV
         8ruRsce76bTPM7u5IeCTaDbKn1Kp6Grm4RuhoJD3pgDgg/eAZxz24vz9aj/p9jTcZOeV
         uS59+9bNXZGzyc3SsIl6hUF5UdsQcXv08ouwXWxDlcKrBAF+9ikLZDeMMJEv+MslPOZX
         l5wJZ1CSHC/bS6OAeYT6tbsIqK6KLBbBXXm0x8ZS8cdX8DzEyjrO07wswGTPDGrS+/TG
         xUcA==
X-Gm-Message-State: AO0yUKX2Pc0qg+1goh+zOj2nTTaAbgsseys2rKoAju9o1asFLLakPg47
	V6BYcqGXjvUDgjhur6IEl90=
X-Google-Smtp-Source: AK7set93CJpUNcA1Wgn7WOYgKbyv5mY+SqdyW3bKB+ZfO2gTImOPfRragWOkJBhY+ZopGBeKTHb3mw==
X-Received: by 2002:a05:6e02:10c2:b0:322:f948:7e56 with SMTP id s2-20020a056e0210c200b00322f9487e56mr648319ilj.3.1679392497077;
        Tue, 21 Mar 2023 02:54:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:96b:b0:314:1891:45e5 with SMTP id
 q11-20020a056e02096b00b00314189145e5ls3441882ilt.5.-pod-prod-gmail; Tue, 21
 Mar 2023 02:54:56 -0700 (PDT)
X-Received: by 2002:a92:d48f:0:b0:310:d294:1664 with SMTP id p15-20020a92d48f000000b00310d2941664mr1155159ilg.7.1679392496576;
        Tue, 21 Mar 2023 02:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679392496; cv=none;
        d=google.com; s=arc-20160816;
        b=fdv4bqYij11y4VPoQh1YlHFvg5bTR67LL6ZoJrXfhrunWH0QFN+DdZyKRg4LaUhbrZ
         M9rYnekUbr7vwG9KZLdmHIm+ME7p0neBKPApfdgLQQPTNXd4q4xIV5NZ2z/YF6KwqZag
         Bt6s1XZHZEvNDkGswjuQg3dNJMpBH7ZCzJgz9/SvtqsJ5IgCjq8+9piNSKiRrnwtoDSc
         Pv3DnyjWGvvaSPkX47WrsJsIakp4PWucPWvrwxhXh1cSWWOA2reEek8m4xhykvg/1L5t
         n1Wi3Lu9wvVr7SuQBs/3tV6U40hJ/lf8bnHcSgbtN1yzp1lO+adsOOakJNsqVAoqDTbQ
         RZaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=TPoyNaazAzBhUR7kJh1z3BOvT4FbuySkllJfbosl7k0=;
        b=E8wfWbX8x86sDw9cTXDbITcer1z+0qTEAqjKCew9gDJO5yTeO3+G2OeXNhXt0GsRPO
         f5Mv2mPnz2k4TrLkEBrCIhjJ6AI1+gAqFNvTtDPBBa3h9DYDf4iaasY2FsYQTjGEIpOg
         MNNg+NmVEJiYSeT8bDm2NI4Pg2ppJqz7+fjjFcYV8LkCK5BzJ26Kh1A7NzNnNoQPg1il
         FJnzWuJuLpwuMldkkNjNEgfMSjr6dK/tZMPdnYrZR0lNFFQ2zpKzN/XGg7v55rbElU05
         ZPdFTsxtTX7u4Dej3fSc8L78pSjaCiEtTIwkTJp8CTPCaXtAAafp6Fh9HfIuTlCsXhbt
         CAVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=Owh7RWhB;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id p15-20020a92740f000000b0031864fa3abesi568799ilc.1.2023.03.21.02.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 02:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35C4F66030DA;
	Tue, 21 Mar 2023 09:54:54 +0000 (GMT)
Message-ID: <cac08caf-a5ef-08d7-ac90-cd852cd63e3c@collabora.com>
Date: Tue, 21 Mar 2023 10:54:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To: =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
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
 <fdd0a157-eedb-bf21-c632-79b02a4cd6b0@collabora.com>
 <5695b8e5ab8339764c646ee581529cb6cee04346.camel@mediatek.com>
 <34c758c0-cbbb-da11-6263-e7b084040ed6@collabora.com>
 <74dca3fa90d5cd78286281e2ced45842bee21f91.camel@mediatek.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <74dca3fa90d5cd78286281e2ced45842bee21f91.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=Owh7RWhB;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
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

Il 21/03/23 06:33, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) ha scritto:
> Dear Angelo,
>=20
> Sorry for late reply.
>=20
> On Fri, 2023-03-17 at 10:58 +0100, AngeloGioacchino Del Regno wrote:
>> Il 17/03/23 10:52, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) ha scritto:
>>> On Fri, 2023-03-17 at 10:37 +0100, AngeloGioacchino Del Regno
>>> wrote:
>>>> Il 17/03/23 10:03, Krzysztof Kozlowski ha scritto:
>>>>> On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>>>>>> On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
>>>>>>> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
>>>>>>>
>>>>>>>> Hello Krzysztof, Nancy,
>>>>>>>>
>>>>>>>> Since this series has reached v29, can we please reach an
>>>>>>>> agreement
>>>>>>>> on the bindings
>>>>>>>> to use here, so that we can get this finally upstreamed?
>>>>>>>>
>>>>>>>> I will put some examples to try to get this issue
>>>>>>>> resolved.
>>>>>>>>
>>>>>>>> ### Example 1: Constrain the number of GCE entries to
>>>>>>>> *seven*
>>>>>>>> array
>>>>>>>> elements (7x4!)
>>>>>>>>
>>>>>>>>       mediatek,gce-client-reg:
>>>>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-
>>>>>>>> array
>>>>>>>>         maxItems: 1
>>>>>>>>         description: The register of display function
>>>>>>>> block to
>>>>>>>> be set
>>>>>>>> by gce.
>>>>>>>>           There are 4 arguments in this property, gce
>>>>>>>> node,
>>>>>>>> subsys id,
>>>>>>>> offset and
>>>>>>>>           register size. The subsys id is defined in the
>>>>>>>> gce
>>>>>>>> header of
>>>>>>>> each chips
>>>>>>>>           include/dt-bindings/gce/<chip>-gce.h, mapping to
>>>>>>>> the
>>>>>>>> register of display
>>>>>>>>           function block.
>>>>>>>>         items:
>>>>>>>>           minItems: 28
>>>>>>>>           maxItems: 28
>>>>>>>>           items:                     <----- this block
>>>>>>>> doesn't
>>>>>>>> seem to
>>>>>>>> get checked :\
>>>>>>>>             - description: phandle of GCE
>>>>>>>>             - description: GCE subsys id
>>>>>>>>             - description: register offset
>>>>>>>>             - description: register size
>>>>>>>
>>>>>>> This is what we would like to have but it requires
>>>>>>> exception in
>>>>>>> dtschema. Thus:
>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> ### Example 2: Don't care about constraining the number
>>>>>>>> of
>>>>>>>> arguments
>>>>>>>>
>>>>>>>>       mediatek,gce-client-reg:
>>>>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-
>>>>>>>> array
>>>>>>>>         maxItems: 1
>>>>>>>>         description: The register of display function
>>>>>>>> block to
>>>>>>>> be set
>>>>>>>> by gce.
>>>>>>>>           There are 4 arguments in this property, gce
>>>>>>>> node,
>>>>>>>> subsys id,
>>>>>>>> offset and
>>>>>>>>           register size. The subsys id is defined in the
>>>>>>>> gce
>>>>>>>> header of
>>>>>>>> each chips
>>>>>>>>           include/dt-bindings/gce/<chip>-gce.h, mapping to
>>>>>>>> the
>>>>>>>> register of display
>>>>>>>>           function block.
>>>>>>>
>>>>>>> use this.
>>>>>>>
>>>>>>> Best regards,
>>>>>>> Krzysztof
>>>>>>
>>>>>>
>>>>>> Hi Krzysztof, Angelo,
>>>>>>
>>>>>> Thanks for the comment.
>>>>>> The Example 2 can pass dt_binding_check.
>>>>>>
>>>>>> But the example in the binding has 7 items [1] and dts [2].
>>>>>> Does
>>>>>> the
>>>>>> "maxItems: 1" affect any other schema or dts check?
>>>>>
>>>>> Ah, then it should be maxItems: 7, not 1.
>>>>>
>>>>
>>>> Keep in mind for your v30:
>>>>
>>>> maxItems: 7 will pass - but only if minItems is *not* 7 :-)
>>>>
>>>> -> (so, do not declare minItems, as default is 1) <-
>>>>
>>>> Regards,
>>>> Angelo
>>>>
>>>
>>> Hi Angelo,
>>>
>>> I still have one message [1] when runing dt_binding_check for
>>> "example
>>> 2 + maxItems: 7" [2].
>>>
>>> [1]
>>> /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devi
>>> cetr
>>> ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:
>>> hdr-engine@1c114000: mediatek,gce-client-reg: [[4294967295, 7,
>>> 16384,
>>> 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
>>> 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295,
>>> 7,
>>> 45056, 4096, 4294967295, 7, 49152, 4096]] is too short
>>>
>>>
>>> [2]
>>>      mediatek,gce-client-reg:
>>>        $ref: /schemas/types.yaml#/definitions/phandle-array
>>>        maxItems: 7
>>>        description: The register of display function block to be set
>>> by
>>> gce.
>>>          There are 4 arguments in this property, gce node, subsys
>>> id,
>>> offset and
>>>          register size. The subsys id is defined in the gce header
>>> of
>>> each chips
>>>          include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>> register of
>>> display
>>>          function block.
>>>
>>
>> Maybe I'm wrong about the "do not declare minItems"... try with
>>
>> minItems: 1
>> maxItems: 7
>>
>>
>> ...does it work now?
>>
>=20
> Yes, It works well with "example2 + minItems:1 + maxItems: 7" [1]
>=20
> [1]
>    mediatek,gce-client-reg:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      minItems: 1
>      maxItems: 7
>      description: The register of display function block to be set by
> gce.
>        There are 4 arguments in this property, gce node, subsys id,
> offset and
>        register size. The subsys id is defined in the gce header of each
> chips
>        include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
> display
>        function block.
>=20

Please send a v30 with that solution ASAP then, so that we may perhaps *fin=
ally*
get it in for v6.4.

Regards,
Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cac08caf-a5ef-08d7-ac90-cd852cd63e3c%40collabora.com.
