Return-Path: <clang-built-linux+bncBD7274FIT4EBBLXT2CQAMGQEUJMD3GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0986BE607
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 10:58:08 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id ie21-20020a17090b401500b0023b4ba1e433sf2161949pjb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 02:58:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679047087; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpBdcaGFPVoAQixR6EVccz+5F6rSOXKJtp2vE2Q1ET0Svoh299++oOKN15I78Wbaus
         ytWsdZeOkhhf03nAp3/W5suPkstA3jp4OzNzyMuCqX8we2rL1UmaNFzV5Cmpf4WkVHiC
         uzrgPJm5Hyfj77AYZy33hJCgWT3UFv+UH2Z5sq12oxjg7NqJj5VuNK71C6q+z5PdAb2m
         Np7qSlhrYN53nS5iKgJ9tZ01+3E1ZA9zv2S25zOR2ssPf3UIzEEselduDsideTIqfA0r
         47z3c7T2xRrc/5uTc9uiVeGJH7CfTMdXtOWcgiGf+WlVsa8YvN5HGJxKf2803qWwx1OS
         ghfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=ixrdWuTvTO91O+bwpphND3zR95ozDRnSEx6qtCpJv40=;
        b=lKTAHw9VBBeDWmrwnXcGGvGqXcgR31xdcmc/rNEbMu2a5J1c0AIhf/niIL3caChN2U
         nJ8FPxXs8kiLGjllTpBmvjlF9zdFPTbQftd/BxjQcpOjmmbrH018+O11legfq+IXWrgu
         CsQk9E2lvNIDbh2KZRoqToDYZvln+abVcQBZsvB0qAAQCBqQOhIjiZeBN0Ivzf76WaaH
         N8B8NXG1+TIiBc/CgF2/7u34Sx3bhsbNYUZAyzVlocsw2kBTJ3jbk3djyG/m3GkFwRsc
         zHE/oDaneq50aOlVfgaAzJKYHcm3kRlWAjOdgLsPUT1dhCttaRbRGz4r517P4CGa+Iyq
         0CvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=YKD74482;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679047087;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ixrdWuTvTO91O+bwpphND3zR95ozDRnSEx6qtCpJv40=;
        b=Go2c4eVmYd7BlnsBf2PKAEyErHKUzu+EKt88KegXOta4BwySLjEDehiunocT2ETdNh
         ooVmwdzdjTFrj8M6L/60gcUYHdkXj5TkWVU+SVn/TEJaSqdchN99uvm/HJ6HFapJCxs0
         K8aMHQwSnAvnRhf1IvW+3P+oSYI31iipJeY2n2qJLCK3xkES3q4bHeZ/qljSV202XXIj
         7DKcJSewgHHlOA5UCiGjXDdSuH/r4UOXtk5EVbY9DMWc4Qhz1aiQ9y5TQtvy28FBkzTg
         QRYGQ98q1B5jLEWMiOKYnYlcA4x8iUQqELU0yDNCZF56BjxoEY3NW7BECK4D7hewjyjm
         5kKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679047087;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ixrdWuTvTO91O+bwpphND3zR95ozDRnSEx6qtCpJv40=;
        b=uS+ObrGhwIvNXi4DZGNU5NdkB5mV+rmKRy0RQ4f7w83RNE7pOJqyz7YwppZplk3Icv
         8vDiVdP+OuWHnTC4FMj+eYyFRVh+VtynzACJBoL9H/rVsc4vBg4H2Dz8BB7VndYzp9Mu
         91P5kbPX19qgo0n9wbLbTXTKojYpO699dALnlA3ufhJCAxWJpLWkRKRO4arf5RwDvBnh
         0xVH1y4eDTLxb9htvZISDbVoB3DDx71DNZZufGw8jZtj8HGQIPzIERYnChY9CEbSiQ1j
         ypkLr4VV8+cwCxgO47zH60XxN1nhYhXbxx1Uu+N3+uZjlCTTljro+KUXYRCQS893FyTl
         PvPQ==
X-Gm-Message-State: AO0yUKX/QUtN5K9D2dV8eMyyDhXO0X2oqgcapFaUDC5yoKFfv5+c8uIL
	u5l+l+tnWMmrTclsilRCeN8=
X-Google-Smtp-Source: AK7set9bjxsNC1/qCQtgcZDhHuNjPPhuIOq/lTm3hw2VUjAG3mzvJrCu6PzXWXcnuj028vt8XxyJJA==
X-Received: by 2002:a65:4049:0:b0:50c:a00:c1fc with SMTP id h9-20020a654049000000b0050c0a00c1fcmr692011pgp.3.1679047087000;
        Fri, 17 Mar 2023 02:58:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9a83:b0:23b:db8f:6182 with SMTP id
 e3-20020a17090a9a8300b0023bdb8f6182ls4342009pjp.2.-pod-preprod-gmail; Fri, 17
 Mar 2023 02:58:06 -0700 (PDT)
X-Received: by 2002:a05:6a20:4fa9:b0:d3:78ab:77a9 with SMTP id gh41-20020a056a204fa900b000d378ab77a9mr6095334pzb.46.1679047086280;
        Fri, 17 Mar 2023 02:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679047086; cv=none;
        d=google.com; s=arc-20160816;
        b=m+FzdTsZ4Pw3t+XKJGO+edCq0iSWgZPtk/Ha0rTZNXtE2XmlvEzC68LxvNJnbvx3ci
         zvMqgBMnl8H7+3vKXCyF+RXC8R4r305jEVK+OGwHPRPZVPee82yG3nM3nNWQZbPr91sW
         Wcoo2faJZi+q1xtBobLKLcc+yuBfkOXS+wQVLdVH82cMyJj7teuDOVzionzOzRTTzyom
         sJttqlYdECctAqeZa9KL1+E5r2ki9pU8asnnX1ANpGqsZNpUO5da51XqHIcBxv8piLbi
         HlXqVtIqJSHK3aPFYBm1980VxW7PdVBc2ehnBwlIS1h36FPgVrnk8UD/CD+XqfKOw9Vt
         ikKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=yQ9HXiahWwR1D9Pumov3WiZT9OJZoJCA5nXf8+QG9RE=;
        b=kQR0jiZnHsLYW1pasD7tFa64krJFA7jR0VP7mw8F3d3qU9JfPM3VUxh6WDU4dw/0Tg
         mWuKxyCug7S5YE9T+r9IPJc4u/GCX7ADuCFpkgG9bGkFECM20Qek6jG0VXH4ESF1HPRN
         QxEXh9UJbuDBDAh6/JTLF0PC9lhsLgd9CdzIe2h5PFY8zq/urjy4ZlhL7AXDMJkQsBv/
         saFTu7/+849LhIb68ugYj7euBuu/8dTalysulvEeg/Q0Zy/AKZ5vejbNZW+1sfwrzbXq
         Z3vb7+2J258DQjW603enN7iVchYetDuOu4L6CcksfdRO9NB3i2LhWtSIxKJp1cZVLB4b
         l3pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=YKD74482;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id br13-20020a056a00440d00b00593910fa1d3si71938pfb.6.2023.03.17.02.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4DAE4660309E;
	Fri, 17 Mar 2023 09:58:03 +0000 (GMT)
Message-ID: <34c758c0-cbbb-da11-6263-e7b084040ed6@collabora.com>
Date: Fri, 17 Mar 2023 10:58:00 +0100
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
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <5695b8e5ab8339764c646ee581529cb6cee04346.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=YKD74482;       spf=pass
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

Il 17/03/23 10:52, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) ha scritto:
> On Fri, 2023-03-17 at 10:37 +0100, AngeloGioacchino Del Regno wrote:
>> Il 17/03/23 10:03, Krzysztof Kozlowski ha scritto:
>>> On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>>>> On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
>>>>> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
>>>>>
>>>>>> Hello Krzysztof, Nancy,
>>>>>>
>>>>>> Since this series has reached v29, can we please reach an
>>>>>> agreement
>>>>>> on the bindings
>>>>>> to use here, so that we can get this finally upstreamed?
>>>>>>
>>>>>> I will put some examples to try to get this issue resolved.
>>>>>>
>>>>>> ### Example 1: Constrain the number of GCE entries to *seven*
>>>>>> array
>>>>>> elements (7x4!)
>>>>>>
>>>>>>      mediatek,gce-client-reg:
>>>>>>        $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>>>        maxItems: 1
>>>>>>        description: The register of display function block to
>>>>>> be set
>>>>>> by gce.
>>>>>>          There are 4 arguments in this property, gce node,
>>>>>> subsys id,
>>>>>> offset and
>>>>>>          register size. The subsys id is defined in the gce
>>>>>> header of
>>>>>> each chips
>>>>>>          include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>>>>> register of display
>>>>>>          function block.
>>>>>>        items:
>>>>>>          minItems: 28
>>>>>>          maxItems: 28
>>>>>>          items:                     <----- this block doesn't
>>>>>> seem to
>>>>>> get checked :\
>>>>>>            - description: phandle of GCE
>>>>>>            - description: GCE subsys id
>>>>>>            - description: register offset
>>>>>>            - description: register size
>>>>>
>>>>> This is what we would like to have but it requires exception in
>>>>> dtschema. Thus:
>>>>>
>>>>>>
>>>>>>
>>>>>> ### Example 2: Don't care about constraining the number of
>>>>>> arguments
>>>>>>
>>>>>>      mediatek,gce-client-reg:
>>>>>>        $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>>>        maxItems: 1
>>>>>>        description: The register of display function block to
>>>>>> be set
>>>>>> by gce.
>>>>>>          There are 4 arguments in this property, gce node,
>>>>>> subsys id,
>>>>>> offset and
>>>>>>          register size. The subsys id is defined in the gce
>>>>>> header of
>>>>>> each chips
>>>>>>          include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>>>>> register of display
>>>>>>          function block.
>>>>>
>>>>> use this.
>>>>>
>>>>> Best regards,
>>>>> Krzysztof
>>>>
>>>>
>>>> Hi Krzysztof, Angelo,
>>>>
>>>> Thanks for the comment.
>>>> The Example 2 can pass dt_binding_check.
>>>>
>>>> But the example in the binding has 7 items [1] and dts [2]. Does
>>>> the
>>>> "maxItems: 1" affect any other schema or dts check?
>>>
>>> Ah, then it should be maxItems: 7, not 1.
>>>
>>
>> Keep in mind for your v30:
>>
>> maxItems: 7 will pass - but only if minItems is *not* 7 :-)
>>
>> -> (so, do not declare minItems, as default is 1) <-
>>
>> Regards,
>> Angelo
>>
> Hi Angelo,
>=20
> I still have one message [1] when runing dt_binding_check for "example
> 2 + maxItems: 7" [2].
>=20
> [1]
> /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
> ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:
> hdr-engine@1c114000: mediatek,gce-client-reg: [[4294967295, 7, 16384,
> 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
> 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295, 7,
> 45056, 4096, 4294967295, 7, 49152, 4096]] is too short
>=20
>=20
> [2]
>     mediatek,gce-client-reg:
>       $ref: /schemas/types.yaml#/definitions/phandle-array
>       maxItems: 7
>       description: The register of display function block to be set by
> gce.
>         There are 4 arguments in this property, gce node, subsys id,
> offset and
>         register size. The subsys id is defined in the gce header of
> each chips
>         include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
> display
>         function block.
>=20

Maybe I'm wrong about the "do not declare minItems"... try with

minItems: 1
maxItems: 7


...does it work now?

> Regards,
> Nancy
>=20
>=20
>>> Best regards,
>>> Krzysztof
>>>



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/34c758c0-cbbb-da11-6263-e7b084040ed6%40collabora.com.
