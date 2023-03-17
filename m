Return-Path: <clang-built-linux+bncBCB6X76TWIIRBAO22CQAMGQEJNKTSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 608FD6BE4C8
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 10:04:03 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id z20-20020a195e54000000b004e9609a300csf761344lfi.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 02:04:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679043842; cv=pass;
        d=google.com; s=arc-20160816;
        b=cioEB+BbCVyaUqVlktbpgUhm3zNYwK/PO5fInzhThbEkMGEkBJUY1/gLaq7auvYUcL
         s0+6JIGNYyBJHPtHywttMlSpepQiKbm/iUT+7EzKJmuSNOq9ZYX2mT0DkZG4HMLwTCpo
         iXUJTarDIkoQSdj7OBB3YISbf4CG9+PIn8G+HCWBMSXoBpNqOJe/2bglLWeasIRUeNMG
         NCxaR1H8sdtS+EYq0NCIj9FJoy25A1Zu2kwqiLE4aA00VnCW15NU04rBvImIiOAzq7Zq
         ntbCPPTUAbV3DXpC9w7cu+BWy4syUKVSRdbaE3yEHdd/1vj0f3ej+fSwGfhqpzJrPAI9
         Rayw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=p3m7EgFzORuvBWc3S2QG8GxLjvkAUTSytE1i0uwNirA=;
        b=0sC6ChHgT8DfQT6mZL7YFJapgeYDJjKQsg8Dff7++Ai1QErXUZLfwHiEwy9JVgeJF5
         bf2hWpU7v0LtNrjcAmuTZenCp+zUABn39ErHOF8aKA3DcK99QuRjaIIPxJL7Sn8PuLKv
         GuX7kNYGTU4jnKCinfjMAP4FC2RAbOe7JQXQIXVWNZdQJL5QiTCcba+3zGU4rGcUcZIb
         1RdZrozsdVc6OpDWq5hL3wNfkkyOCW5sIXgziGuC/M2lXMmTcm5i/zBrSjOxaVn6UVtR
         2/lqJDhRk4A5M8tjcQLV7xR0Vq2B5DZW8BKcuSLVnaK7chJWBAVbRDJXp1B/Iz4GFv7Y
         oDZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=monslhkk;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679043842;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=p3m7EgFzORuvBWc3S2QG8GxLjvkAUTSytE1i0uwNirA=;
        b=VXJ/rU/6ylzWcNOZbmbvLw8DwvcbpMvaE5kErmkCvPv4CfS3+mML2I4JbaHbOfloc3
         qz2VnPtjGO9qog7GlxBkiKtUG3IMhkWeu6PdFqo/BSPLk7+ZjN0+tl130Hp1ffJxDW0Q
         6/PRqdiPqWlvblnOi+4ybIqWaJmayInp4ik5QkWYmx2aWCYs/EElRNhNwW5UoRIBwGqZ
         kllRPYWhnsgVP0uk2zuLh/Y3Rv+Pde2dL/sNAFzK2YgtihOD4gDJn4snx/GO7SL3A8ec
         1LSZNSv1L3aur4q1iuL6gerdFY6gnFkNFrV0CV1gCF7Ao+wWN+QI9K0rLJNrcvlyEzRW
         Hs4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043842;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3m7EgFzORuvBWc3S2QG8GxLjvkAUTSytE1i0uwNirA=;
        b=TSIroN0flOwXLSeF8ZYwolkRYSE/uU4NHcLIhdHFHYMsuoDa2PXXOwWI/WEYYmgG9B
         1Dt83n+9MSJms9bIYn1vZrkqGSzTSsdWdzuMX1ysv3vvtLsoQR1Jyih4aTtmuskOAmQj
         YkAFzqJYcrtgAxDwjZoRr0uqwqFejvCxMf9agbw9NVytGWaNOW4bgXma7cGklw+6xzNS
         2eaWwwNUtQZ2b7MnlD2NUUn0tfDu0Bhgk+TB5CRZKaqHlIG9oBAeDpWltb1hHysh3IsK
         SAGo1jnzad+fv9xZVQjhJ2OfmskLJDwnkoSj0n8fisrD4dva+g4M2y9+x9BTc2W2Jw3n
         SqcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKUH50OkkcZiUNzhN+LXlzT0BXE+U4DsUuUBVigVUfC2zXKNvff8
	u9MStkNxA3PTtigqAuq2QXE=
X-Google-Smtp-Source: AK7set8vZgX6WwO9qBknP9W7+fcFDcqkr2ztrpw+fSNLksCdsVMG2PewaLSmuKSTRPioBQMUBQD+wA==
X-Received: by 2002:ac2:5639:0:b0:4e8:5112:1fd5 with SMTP id b25-20020ac25639000000b004e851121fd5mr3822257lff.1.1679043841954;
        Fri, 17 Mar 2023 02:04:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:222a:b0:299:8859:2407 with SMTP id
 y42-20020a05651c222a00b0029988592407ls898487ljq.1.-pod-prod-gmail; Fri, 17
 Mar 2023 02:04:00 -0700 (PDT)
X-Received: by 2002:a2e:be8d:0:b0:295:ba1d:c2bc with SMTP id a13-20020a2ebe8d000000b00295ba1dc2bcmr4026375ljr.45.1679043840470;
        Fri, 17 Mar 2023 02:04:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679043840; cv=none;
        d=google.com; s=arc-20160816;
        b=FzI6oeFhqMK5NoNyUQ7vD/H6HLBniCq2+G7z3fZVBlnuxJtwmQD9ysQ4Ee90v3l0vS
         DSDJJqzsKVtp4wFJcmwU3LrE+Ot0Z0fjbRrEaEVW+Od1lp9Tk0RsRQBVfB+xB0JpMjJP
         sClP6bTrNon93xE9raj7Wabq5fbZOXKJJa7GIl4Ga3AOjc09wnW8Kayi2Wc4KjJMQnN4
         R0xUrLQgZn70zUTuuCYspgXysjo+ILlX116pS6n0BQbnMc3eSbK4DXbzr9m8514XMq/j
         38K4+0Xh1Wij1msDo1x7GJmU1Y/yuVUFno7lOj5mnUJwRktc8gHooEplWpAt3t8u8z0J
         L9Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=F+9q32H5maQAY7+Dr81+RVllp8r8V/8Ihh6QFteXqFU=;
        b=x+e/2qJFfHbE+/yT1rj0ns258HxrnnP6acRcfBCij+tkMk5JCiL/8hF8cL0YCnc/gf
         QDOSLAJ9N2x2QC88iUDTrkbl25jp6o64fPgHB5NIhwkEbEhTnBLhxZ130EqYBLjThFWE
         zWMdqDLmvA1u+ikmMCkIpfjyyOVeiej7rnNT9ABtRtqYWliPJrTY5ZtQXcnXYLg+I5qt
         CUc5BsJCyDGm8Wjk8MkviewJ32ac24e/a9P+sPLZyseavOom8MoIaft15tLEznRe7eOo
         3WPaq1WxBRt+/M0Ikx749rMB5APo1sEcutbY0naoDJFWJ6DrxayfI/Dx9LvvhZA6OscZ
         Uohw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=monslhkk;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id by30-20020a05651c1a1e00b00298a88a8f1csi73784ljb.5.2023.03.17.02.04.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:04:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id ek18so17639833edb.6
        for <clang-built-linux@googlegroups.com>; Fri, 17 Mar 2023 02:04:00 -0700 (PDT)
X-Received: by 2002:a17:907:9622:b0:932:35b1:47fa with SMTP id gb34-20020a170907962200b0093235b147famr601376ejc.64.1679043840103;
        Fri, 17 Mar 2023 02:04:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id lg10-20020a170906f88a00b008cc920469b5sm744608ejb.18.2023.03.17.02.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:03:59 -0700 (PDT)
Message-ID: <4027714e-b4e8-953b-68e2-f74f7a7f0e8e@linaro.org>
Date: Fri, 17 Mar 2023 10:03:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To: =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>,
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=monslhkk;       spf=pass
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

On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
> On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
>> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
>>
>>> Hello Krzysztof, Nancy,
>>>
>>> Since this series has reached v29, can we please reach an agreement
>>> on the bindings
>>> to use here, so that we can get this finally upstreamed?
>>>
>>> I will put some examples to try to get this issue resolved.
>>>
>>> ### Example 1: Constrain the number of GCE entries to *seven* array
>>> elements (7x4!)
>>>
>>>    mediatek,gce-client-reg:
>>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>>      maxItems: 1
>>>      description: The register of display function block to be set
>>> by gce.
>>>        There are 4 arguments in this property, gce node, subsys id,
>>> offset and
>>>        register size. The subsys id is defined in the gce header of
>>> each chips
>>>        include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>> register of display
>>>        function block.
>>>      items:
>>>        minItems: 28
>>>        maxItems: 28
>>>        items:                     <----- this block doesn't seem to
>>> get checked :\
>>>          - description: phandle of GCE
>>>          - description: GCE subsys id
>>>          - description: register offset
>>>          - description: register size
>>
>> This is what we would like to have but it requires exception in
>> dtschema. Thus:
>>
>>>
>>>
>>> ### Example 2: Don't care about constraining the number of
>>> arguments
>>>
>>>    mediatek,gce-client-reg:
>>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>>      maxItems: 1
>>>      description: The register of display function block to be set
>>> by gce.
>>>        There are 4 arguments in this property, gce node, subsys id,
>>> offset and
>>>        register size. The subsys id is defined in the gce header of
>>> each chips
>>>        include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>> register of display
>>>        function block.
>>
>> use this.
>>
>> Best regards,
>> Krzysztof
>=20
>=20
> Hi Krzysztof, Angelo,
>=20
> Thanks for the comment.
> The Example 2 can pass dt_binding_check.=20
>=20
> But the example in the binding has 7 items [1] and dts [2]. Does the
> "maxItems: 1" affect any other schema or dts check?=20

Ah, then it should be maxItems: 7, not 1.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4027714e-b4e8-953b-68e2-f74f7a7f0e8e%40linaro.org.
