Return-Path: <clang-built-linux+bncBCB6X76TWIIRBS7BYWQAMGQEQRYW5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A959A6BA8D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 08:16:28 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id bi27-20020a05600c3d9b00b003e9d0925341sf6400258wmb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 00:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678864588; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKOoXIDCwX9Om4aCMpy3h1wNq827SlFim6nAXWSCI/RqxL/ZpDyPqPGqGTfXp/vpAn
         uT2T5j3FLzB0mQUFtQqlQKck4lqWTQIc3z7pupet1q+OjWr8wFgCBxHsnjzhBc07eWTq
         c8KFX7oShMgJ2XfOUNcQEup4UqfnBUfRZjxgP1IqzNNoFVJy3USM1FAUW9CYp++Smy6I
         wYns3Fcrps+bFG/tsFdqaun3GjhuC6AHgivpAIOm0UV6Yy428CWXEIX9/hUNaOCoa7Uh
         +y2FYwZD3sDr6SMWDJS9gnQSaDt7mRxlD9827GrcSCM9SqOwoKSXGFJ52qDmfB3TC0sP
         sCwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=I/uF5UC7luTvLOkTiQ81O8fcE8d8OmhH0gyeuoh5PXU=;
        b=LFQXnouq65PqmX5JkrXPKDl0VYGvqfbFE+h2BpDSHKlZbFDWo/CdZvxJyPlfJcu0bh
         WBE96xJ0fEGXbFcbkV1We5tpTXdxjK+850/72RDLYWw1SwhldwWBCx24ftZguYcC9ZSN
         jh9iW7lAzmmbvJBlKIzNXhBP+abQ+cg6u2i/9KS4giw73lmekeZppIic+psMayO3hHLi
         lHpB0IOgeZ0m1rTgTGyw4eExWUK4i6ihqEuHUiamo5g+9DlSVXaw164qDayr0c9BzwP+
         9KLiRmoYZ+U0SMQ4EH5s0hYsBakoy35YB+nK8yUXTxxuyGVN4cd8sEfdhnoBDsFLXGiJ
         BoMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iJGj0anL;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678864588;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=I/uF5UC7luTvLOkTiQ81O8fcE8d8OmhH0gyeuoh5PXU=;
        b=TNNnR9BbjTh7XNvpVFHeoEoAqtT7srxXa0AuoGAEmkWJcXO0FgWBmqug8J77ly+HRj
         9ckSuVI3mGaM2H6vj/ruGttpsdzTPTp4cqUlQs5LDE9KWraIccawDMAlSjvjScRrZi9x
         KQlOnTT3T56XSD1jMDWM1eOM2JNhEwTpixcIsxa6nVRRXGPG8/YnbwDt4j5YLRJSxb5q
         2vXTTnte5lPUiNmTam2sQ1GFrKLwMDnYb5xox6ONxrFGkS3uizKauRZd/YpT6qafKgEk
         A+tqAvPCuw+dgukNL1k/gTtEg9s8zky+L3tIKGd0MWtKvKa1gsPnDPCqTD8fIFY0FS8C
         P5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678864588;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/uF5UC7luTvLOkTiQ81O8fcE8d8OmhH0gyeuoh5PXU=;
        b=BWP5XkS54BeXe9YeXtvnKRWghU5fQGoYIC0tWiXve4GWwntnVZfIbdrvgTao7bdA9K
         twcAcoejEl/XKXSFWgJepuV8N+YhG92jb+TxkxV53kMAJK58VvhdalZ+ub/uzdBO/Del
         wjat6TwJXDkpmMlGZz91agubxdlnh0vVou9TfkeO5g+LXLBWDZ93GPoocXpd70Zq3um6
         88TRK+OtZ0viliINnyk/yJhj4rxEoTwba+oMgxtFjvV6tFjmbf6OB83k7Av/BZ7hUYuq
         q6EstLXAD2rZw2vBIkLf/2x47PKcP6ZKcVMU8TPxilVPfFW7/m3HbG95plQ5qakNyXdW
         1Eqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKWjfrIx2MsErHcq2tN2pafzzR7Xz0j+Jo+l1DcB6LF5VRxvP4on
	ZjS3PvcoooS/E4rQWEUBebw=
X-Google-Smtp-Source: AK7set/zrCi2SZ4+ESSuhxYZ4W53Ddj7W3r9bORJDYeVWPYzDxQtrYLpIgnyBDukRFWyQ2/RY22NIQ==
X-Received: by 2002:a7b:c2a1:0:b0:3e2:2476:b8b6 with SMTP id c1-20020a7bc2a1000000b003e22476b8b6mr4880995wmk.3.1678864587886;
        Wed, 15 Mar 2023 00:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:81b:b0:2cf:ef77:1717 with SMTP id
 bt27-20020a056000081b00b002cfef771717ls4566085wrb.0.-pod-prod-gmail; Wed, 15
 Mar 2023 00:16:26 -0700 (PDT)
X-Received: by 2002:adf:ea46:0:b0:2ce:fd37:f8de with SMTP id j6-20020adfea46000000b002cefd37f8demr1031692wrn.39.1678864586637;
        Wed, 15 Mar 2023 00:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678864586; cv=none;
        d=google.com; s=arc-20160816;
        b=CeFpX/cBZAfpvGJ7A2jfJAR9lkqLeUjzV2LGwqgTOgnkEG+hBlRP6OczrF6tQM91tn
         nC6lrDN2ROJASwHeVotB2pS7k5chF2zplqMaM3JDyehdBtO1t8suATxuoW09nwRe8VOT
         p7U/7AeLpsouDdJJ4hfdni6TZLBbf5v7m+NCvl6bHfvNzvChFlwRCdsc6l2RB12q0PWI
         IOCjzFvXaYgd52RoTPikI99slmImfZtZG642ZeBWFpBC/IMqhEnHWlPTj7ynFpKROYGs
         y7A7kFtnF1ZXUoDjlYXjJUQy0vc5cCVGw7AQspNBDN/SEAoBgORFtjW/Li419U42Qaoo
         YyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=15UYhlhz1IXSQqcZGCs4zzHqQAACKYlRVryD8U2iAvc=;
        b=GWFIy9mCEQbvrSPguZlAPhu+YY//w+vTErUefME1JZQiF7UiIsiPxLqxQncIdXFssR
         akRN+kfOeZn+Of/nUa//dL8PEwj/eb1b8lIVfigNYjUNqNXaDnRpwmi0iDIVmfMvTlLY
         pgGJ/jelUdv+ixHy9oAzKexHoW4Pa1spLctmlseiBW5n5aOsyL62UgA9ZXP8x08fRoxU
         kRFyiLvdyJIVYhFBLOXTl41TEyufC0pOpUSgJ3f+IE2xb/Z7LO7YlSRjrr+ijiARWgdV
         y3y41pw5AQrpdyNjTlGvDVQVgUyFKmx8re3EhqmwnEyJ33v6Sm1ga56auKJdFhlPpX2e
         Yu2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iJGj0anL;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id ba26-20020a0560001c1a00b002c6e883154bsi201693wrb.1.2023.03.15.00.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id w9so881078edc.3
        for <clang-built-linux@googlegroups.com>; Wed, 15 Mar 2023 00:16:26 -0700 (PDT)
X-Received: by 2002:a17:906:b7d8:b0:927:d9ad:804d with SMTP id fy24-20020a170906b7d800b00927d9ad804dmr5539572ejb.7.1678864586285;
        Wed, 15 Mar 2023 00:16:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id v1-20020a50c401000000b004acbda55f6bsm1929246edf.27.2023.03.15.00.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:16:25 -0700 (PDT)
Message-ID: <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
Date: Wed, 15 Mar 2023 08:16:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To: =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Cc: "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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
 "airlied@linux.ie" <airlied@linux.ie>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
 <20221227081011.6426-2-nancy.lin@mediatek.com>
 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iJGj0anL;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
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

On 15/03/2023 04:45, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:

Trim the replies and remove unneeded context. You want to get the
attention of other people, not force them to read entire email.

>> +  mediatek,gce-client-reg:>> +    $ref: /schemas/types.yaml#/definition=
s/phandle-array
>> +    description: The register of display function block to be set by
>> gce.
>> +      There are 4 arguments in this property, gce node, subsys id,
>> offset and
>> +      register size. The subsys id is defined in the gce header of
>> each chips
>> +      include/dt-bindings/gce/<chip>-gce.h, mapping to the register
>> of display
>> +      function block.
>> +    items:
>> +      items:
>> +        - description: phandle of GCE
>> +        - description: GCE subsys id
>> +        - description: register offset
>> +        - description: register size
>> +    minItems: 7
>> +    maxItems: 7
>> +
>=20
> Hi Rob and krzysztof,
>=20
> I got the two messages when running dt_binding_check [1]. This binding
> patch was sent previously in [2].=20
>=20
> If I remove the following items/minItems/maxItems in the mediatek,gce-
> client property, the two message disappear. I don't know what's wrong
> with the original syntax. Do you have any suggestions for this?
>=20
> -    items:
> -      items:
> -        - description: phandle of GCE
> -        - description: GCE subsys id
> -        - description: register offset
> -        - description: register size
> -    minItems: 7
> -    maxItems: 7
>=20
>=20
> [1].
> Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.examp
> le.dtb
> /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
> ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:=20
> hdr-engine@1c114000: mediatek,gce-client-reg:0: [4294967295, 7, 16384,
> 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
> 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295, 7,
> 45056, 4096, 4294967295, 7, 49152, 4096] is too long
>         From schema:

This looks like known issue with phandles with variable number of
arguments. Either we add it to the exceptions or just define it in
reduced way like in other cases - only maxItems: 1 without describing items=
.


Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2700bd6c-f00d-fa99-b730-2fcdf89089fa%40linaro.org.
