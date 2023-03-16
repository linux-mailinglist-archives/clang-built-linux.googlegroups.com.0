Return-Path: <clang-built-linux+bncBD7274FIT4EBBL6OZOQAMGQESSJZ7RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E5B6BCB84
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 10:53:52 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id e129-20020a251e87000000b00b56598237f5sf1305647ybe.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 02:53:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678960431; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lh8OJ2zzAWdKehv182RA0fkFfn+ksAAh+gjQtzqKLO1+36vAXKOi8bWX3/O17A1BST
         nf8s9dW8mMbKgfSqS9yB56yOT7hYAuJ2HCVBE1/FqAR/Cmbk9s/5C9x/62MM3BEPa/SN
         MhdNgQLzI4uUzSxwUqZz/N1KSXUULxN8suOCt5sMXPWhSzyTGgvxve5WRB/Iyh95d75/
         xxOKOoJibJL2fJw3Sdlk5RyW1bLbFyiXzvDgwttQ1jyd4d94uH0K9MpMq/H+K5irwmGl
         0ghioyY/niEYZV34D1LAnduJlfwKgPSO5ySs2yTi5lUOyi+LI3QBoPw+4wlhJ+1abBvu
         2JiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=U7eeSxILdgQPgxQCxwuPqa5tGsGd8aKXgZfRIM2UaEE=;
        b=CWmn/P7L1SB1NRdhxIn6A86HZVNqX1xr9ZRIg1eGQpho6JCxXWyL2gHU/GqRUgL9cl
         Fx7fW98urL1hd6UPpFk0/+rs1h33IplbMOke2lSEl3pCmI6A9/IxCHMrXCCy1JI3oHnJ
         ydVvPK910YsI7RyOgnUdXyurqVTNI36+MmIbhr+xUD1vgtpz202vKcLVi48s45LezlAE
         F8UGxVBXhcADFifP71i/mec7/BErgLIMS+g2B1CkZWkw5txI6I9okJ09YRZAVjZRxwir
         uYaRXwX3BG1njAFCyPcYxeSdXXd6lR2qsY4aYiKjozF2SZ0hCxxITg+7TtqYkw7Vdzue
         s1oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b="D1ZYug/R";
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678960431;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U7eeSxILdgQPgxQCxwuPqa5tGsGd8aKXgZfRIM2UaEE=;
        b=hbks8G9UuHVY35eXLXpBgftBNR8dlCuJWw2kiuCqoqiiG2vMT1EbFLn51/KhUVW/Ly
         KxpSYppsnnF2Q0taJrfb/HQxUlVK7lrRPixIJfh8KjnvmcNrmX1S9t2Pl9StMFLkAFtd
         MOzUmyPO+jX6rHYwODiNR2fJ4DcR3Lsb8jz71PuzL1lzlqv2ep5zrMUUP3zX6tGEQJ9j
         LO2nVuxg2x0Y36JznL2DcYOk0oIiHLBF8sRG+Md0A7blgHp68F8nQKok90KG3CDvnwGe
         sWwZZEExmT5NVRSwsUsmPW1W+2a9xH0iTjbckfwxp1uc3y46Y7rwpVSqT4ho+R8iDYEC
         NpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678960431;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U7eeSxILdgQPgxQCxwuPqa5tGsGd8aKXgZfRIM2UaEE=;
        b=2brVtpIZnn5Eik9dBSn9p4oph6BgCDmAWAdvcvTJc9PXYAaUImkPICbaU4cVFOVSmN
         51uV5LnMjRlsLVYaexVZoH3n/ECcTrg35XE2Jm5bb1T6hFDNFz0RNRKONeyIHBGgxrf5
         wKEEsyZiEloGGHFocEGU7ipbjD1B/8LkPfT0FTkgOfxYndgeUaHVGaVgdq6F7v6/F6Yy
         yf4u3kEx2aqMWQ2v9oNDNyP760yeHjPsQF7z3DwLYyYVVtvxA+YTJKOF+NVE8vbOclgc
         hj5ewPK8oXvTBqs+nwWUH3Ra9wAtBZMnZlFHyo4O7hMAj2Wl375CLHjnNRWANhWBxTPF
         J0vA==
X-Gm-Message-State: AO0yUKWhiqHa7aiGwjLAFvpkhkKhWGQpCL4RznL3dp2gewEsNURA7vNB
	MixrknZ0O6wi6dTZjemyJIo=
X-Google-Smtp-Source: AK7set9U2g4jppnVpajhZbyjI6R9Ei+vHVvaFx1iZ6O+JFmAKFUBT0pcCtYfmxv5rvLlw2cu8IxqqA==
X-Received: by 2002:a05:6902:d2:b0:a8f:a6cc:9657 with SMTP id i18-20020a05690200d200b00a8fa6cc9657mr22857373ybs.7.1678960431664;
        Thu, 16 Mar 2023 02:53:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d7cc:0:b0:b2f:71b:1f6 with SMTP id o195-20020a25d7cc000000b00b2f071b01f6ls601537ybg.10.-pod-prod-gmail;
 Thu, 16 Mar 2023 02:53:51 -0700 (PDT)
X-Received: by 2002:a5b:b8a:0:b0:b33:d8a5:e2cc with SMTP id l10-20020a5b0b8a000000b00b33d8a5e2ccmr17618353ybq.22.1678960430966;
        Thu, 16 Mar 2023 02:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678960430; cv=none;
        d=google.com; s=arc-20160816;
        b=WWCISu12yB04r5GHISFZJDQmqEtG3d5j0wNKG8hmeY25Y1FxLvHqZCc8SXOMpcw/9a
         MQA3ykC2xh63PmXvVbZIGMgf8tbn+IOvEI7yYlbkOf4KcVKfLrBCtVcq5RpOB+BjBenv
         ezBnLYJXT2Ja4gguO0ykVQ/LrYyYeLVZd7YawnZ8HZoq6k4vaaGz25o8C1TUE83SdFJA
         SAPQQvOTvi4oov+5vPve5qs94xoT0Sb7JM0LJqjbY9T41Tg6/lTIB5IiQR8K0AHMxMgx
         /t+Xt4ZInqAwY72QHmjZg9gzxibLspOa2Sno+ZV0/8QNMkdMT7yv0YDGdcXSnbeX/2RH
         zZEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=USr1mcavu183aIUMW2zaakLobziUEqGaltzaDkGJe7k=;
        b=c9Yvn41CH84+PZK9S0GsEVzn+JWRIp4j0hpYmBW8tDcWd08ogm3KiAVpaJzkPopXH2
         odl2egJ6Nq9ep2MIaIfvrU/gQimv6oKhRIfDN1pQ97msMt81yJZr1msPOd/zq+x47BnK
         SZ+jT9pufxYnJJmkIFHm3ZRVTVYQLQIYL4kTpGhZQmD1gFgGXhUzPkzMM1dDxNq9AV1j
         maN0LDcr8VkCUQegFxq4BPX7cOlXGs1YIpDPkm63mr4sBdMlHdYSUmWnS1oo+pG7/11M
         cbd4qZBJfPqtEcYjHn/0oLjOmGYpbZ5OE12RDj9mhced48z+Ot8xqwwviSR8Nt2Wmzbt
         epjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b="D1ZYug/R";
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id bw12-20020a056902160c00b00b5742586ff4si98858ybb.1.2023.03.16.02.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 02:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE59F660309E;
	Thu, 16 Mar 2023 09:53:48 +0000 (GMT)
Message-ID: <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
Date: Thu, 16 Mar 2023 10:53:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
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
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b="D1ZYug/R";       spf=pass
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

Il 16/03/23 07:31, Krzysztof Kozlowski ha scritto:
> On 16/03/2023 07:19, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>> On Wed, 2023-03-15 at 08:16 +0100, Krzysztof Kozlowski wrote:
>>> On 15/03/2023 04:45, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>>>

..snip..

>>>>
>>>>
>>>> [1].
>>>> Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.e
>>>> xamp
>>>> le.dtb
>>>> /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devi
>>>> cetr
>>>> ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:
>>>> hdr-engine@1c114000: mediatek,gce-client-reg:0: [4294967295, 7,
>>>> 16384,
>>>> 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
>>>> 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295,
>>>> 7,
>>>> 45056, 4096, 4294967295, 7, 49152, 4096] is too long
>>>>          From schema:
>>>
>>> This looks like known issue with phandles with variable number of
>>> arguments. Either we add it to the exceptions or just define it in
>>> reduced way like in other cases - only maxItems: 1 without describing
>>> items.
>>>

...

>>
>> But I have several items for this vendor property in the binding
>> example.
>=20
> Do you? I thought you have one phandle?
>=20
>> Can I remove maxItems? Change the mediatek,gce-client-reg as [1].
>>
>> [1]
>>    mediatek,gce-client-reg:
>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>      description: The register of display function block to be set by
>> gce.
>>        There are 4 arguments in this property, gce node, subsys id,
>> offset and
>>        register size. The subsys id is defined in the gce header of each
>> chips
>>        include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
>> display
>>        function block.
>=20
> No, this needs some constraints.

Hello Krzysztof, Nancy,

Since this series has reached v29, can we please reach an agreement on the =
bindings
to use here, so that we can get this finally upstreamed?

I will put some examples to try to get this issue resolved.

### Example 1: Constrain the number of GCE entries to *seven* array element=
s (7x4!)

   mediatek,gce-client-reg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
     description: The register of display function block to be set by gce.
       There are 4 arguments in this property, gce node, subsys id, offset =
and
       register size. The subsys id is defined in the gce header of each ch=
ips
       include/dt-bindings/gce/<chip>-gce.h, mapping to the register of dis=
play
       function block.
     items:
       minItems: 28
       maxItems: 28
       items:                     <----- this block doesn't seem to get che=
cked :\
         - description: phandle of GCE
         - description: GCE subsys id
         - description: register offset
         - description: register size


### Example 2: Don't care about constraining the number of arguments

   mediatek,gce-client-reg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
     description: The register of display function block to be set by gce.
       There are 4 arguments in this property, gce node, subsys id, offset =
and
       register size. The subsys id is defined in the gce header of each ch=
ips
       include/dt-bindings/gce/<chip>-gce.h, mapping to the register of dis=
play
       function block.


Regards,
Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e5ceec9e-d51b-2aeb-1db7-b79b151bd44c%40collabora.com.
