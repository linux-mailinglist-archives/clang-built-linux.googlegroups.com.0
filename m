Return-Path: <clang-built-linux+bncBCB6X76TWIIRBXP6ZOQAMGQENADSWNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 710CC6BCE61
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 12:37:02 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id d23-20020a193857000000b004d5a68b0f94sf660519lfj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 04:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678966622; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykpA4eJQx0TPUK7HFCYf3xyRFLQ+EFwAU0R6txT1hljHYgZTKIgrY8cF6Vs68P5tT5
         oK1Ah/2FcPyTKz/MvtGyKfAong1glVmsqp5LjPDhHijY8uoIB+DLWlMLBMVCQvpWh8DE
         FUnfsiwVq545zSvpa4AwHCb265k5v9LXADhwg9o+6/loir8p9wP5pzb7sMLEfJq2t+1s
         gGz4Z5JcxBdEVdy4pIndz8XESounOq2YoSJ/sMi7Jk8X0vo7vhWLp3gVkJ8Ms2OtZ6xK
         2c2dbaOKMXJhlFibWPMauL1jlBu0wquptFbKSj02fBL0o1OmwWbqAxvdOjhyZjnE0XMS
         tDIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=W5k1+qeH41+39TvUlc0NikHT4TD4U8Msvj5WspL5Quw=;
        b=nBlR7kjst3rbBIF42FeKjlEOqwEf7NcLBMtG4lzivVLieRYAVke8/m9/PNzEGhB1c6
         csse8X3W6DEVXjRQ3Yq22Pq4vKBBj/FFKm7sDpHLZY5wH6Mj/TG3J35Try15CHBRNe19
         1F4ZNYzKo+/2AuUiAeVRMLOwVbSEDW8sUcpiyDQPdyuREgUTrF2EkJqbX47lv9qb1e+y
         nK818vaNIrAsBw6kRAL9RDqvMkmHRRSncvg7kP41W8Wr3RNzgOOmOvPe3DgLYqWMyZ95
         f6ECRE9nXQP3utd3u0kHDoXYgC6Z8PpR4H6h8PCm5AFMaMDbmaUcu14hmVu4VtaX1niu
         0Pcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WdZEAyLc;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678966622;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=W5k1+qeH41+39TvUlc0NikHT4TD4U8Msvj5WspL5Quw=;
        b=lVNhtkpZiFoZOZudWtJSGMdh9A8UM7YVKYp82XfnMCvjyX2GXIa+8tsM1KAG7CPw92
         rgIHf+3sim2MnlMJPgNUqlgPCW+QRUguvHHgSx82Gmu2ncQVxXpYnYnHQvBu2sq+P9mI
         FkaSYpCcPJ7bN0VH5gmVP9JNkx1O+6R5o71AxJk/ZyCPDJXlt9zj0hk7x4lZbfgrUCxk
         VCD02doiAE5hSkKWU74cHV2VfmFUhMZr5WFBI5FrazdcxBg9tjfAxboYNhxEAhUIycXG
         zG8AZxRs+dOt8e2yAKCW+/rUugOj4ki6x3IT9V1xPKq36VsopO0RQJTxm9w201SMBiz/
         GQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678966622;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W5k1+qeH41+39TvUlc0NikHT4TD4U8Msvj5WspL5Quw=;
        b=H0XC8clHUOkc6gNIlWa0Wtz5RIOuwLJYLRAnHcOF6i/MK/gKvPsq2OF2umXnAL/d6X
         o3teIkSANWKn0Ve5cG4/5W2vZ/v76Q2iNOa+evTqhhRh88WUj1Bhk1fZltPIA7XfNFkq
         OjWMOZEnHUYjFqeD1tnkxFrIoFK8QasluovoxLJpsgROgLRfLNKxfBsuwedNL56jyvCj
         Qc/QYDMg4Z2v3OtzR5JTeXIan7Foc01yS+95eDcHpBvp11k41B8cJstRSvVH7ow9ro3e
         fEI3EXylGO9OSS9Ht+zyUIP6QfbMDYdrDVg3Doew1fCX/+cmkk+Nrb91n4LSQiTOg6OS
         PWJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKVas5B7jwkS2E9OSjTZBDyZMRl3TaXhbY8KPoqVtYFEBoOKe4BW
	0mVVTEPWCdmlK2srmm1XD7A=
X-Google-Smtp-Source: AK7set/H/XO47ckG1IygDon105etC5nvq+Bca6k7K22a0aHZutyuhNsnMfVvt5aBnsJ9trDnFz0ntg==
X-Received: by 2002:ac2:4848:0:b0:4db:3873:fac1 with SMTP id 8-20020ac24848000000b004db3873fac1mr3108750lfy.9.1678966621513;
        Thu, 16 Mar 2023 04:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1412:0:b0:295:b860:7804 with SMTP id u18-20020a2e1412000000b00295b8607804ls292644ljd.5.-pod-prod-gmail;
 Thu, 16 Mar 2023 04:37:00 -0700 (PDT)
X-Received: by 2002:a2e:be0e:0:b0:298:aa75:e7e5 with SMTP id z14-20020a2ebe0e000000b00298aa75e7e5mr2575094ljq.24.1678966620018;
        Thu, 16 Mar 2023 04:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678966620; cv=none;
        d=google.com; s=arc-20160816;
        b=SdG8k1JzyzvtYnO0W+gez+l+RhhH5OhJfXo0zUXZF9IqeqbFogpU/8GQc+bIGs2UrA
         GL+0j9pVO6XHVWswYA/2PKEihG36DuONyOht4k+fV/0yYlOAYV3AOJwRVRYRzrk2qa7a
         mSRHbqXLzdpMdBYE6Lv1SPhqVEyHqLQDDrh1YqoiGb6Lih8IAXqjmi1xVpJuhzhxfx/2
         9qW7lP7CmDbc+VpdDyBi2DH4C/DyIMCIP1Z92gOEzvefAc1kPSbMz4zDOLqV+NVRiFe/
         2Xjox1apJHb96Fzw5z4yd71wKRRlZ9vg6b1sDnkBi26hKRdsEP4KfRNP+GZ8hS1gdXrZ
         bvaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=AfGhbI5w3WuDswJbCQtfkPCMptbW1heMaZynDig3b6o=;
        b=oDEiwB2FGlxx9edHhFjsN62nOonQCJo9tqZazQ2Q6Ejk0TY/O/wCmcDp4wlLoHL9LK
         tC/YsAX9deqHb1BxWwNr6MJ7PGYt8WguwhNkr8JNUypNjEDk8lp55D4n/eSeGb6Ut2lQ
         SOxFT/pUzFUu3T/XmQheAFKLWDP8Frp/yO0NkeuiIyhL99+76JuqmVXxV2K5Cj8LcEkF
         WimkgwQlfBYJMn2olXbRg+T9lOGioCXkuMZyKy3zFUdtC4j4tHS1ITYkVLi+AwX3eqq6
         d16zXWyaoM2C0omNlkzd4HDEyRs0stKxc19M562FaNdJwdt6oMvY/1BxtYaCTDp2iDq8
         Do7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WdZEAyLc;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id be14-20020a056512250e00b004e84f87a118si343576lfb.2.2023.03.16.04.36.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 04:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id o12so6265218edb.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Mar 2023 04:36:59 -0700 (PDT)
X-Received: by 2002:a05:6402:418:b0:4fc:52c0:df10 with SMTP id q24-20020a056402041800b004fc52c0df10mr6125485edv.26.1678966619655;
        Thu, 16 Mar 2023 04:36:59 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id si2-20020a170906cec200b008e68d2c11d8sm3728845ejb.218.2023.03.16.04.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 04:36:59 -0700 (PDT)
Message-ID: <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
Date: Thu, 16 Mar 2023 12:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WdZEAyLc;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
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

On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:

> Hello Krzysztof, Nancy,
> 
> Since this series has reached v29, can we please reach an agreement on the bindings
> to use here, so that we can get this finally upstreamed?
> 
> I will put some examples to try to get this issue resolved.
> 
> ### Example 1: Constrain the number of GCE entries to *seven* array elements (7x4!)
> 
>    mediatek,gce-client-reg:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>      description: The register of display function block to be set by gce.
>        There are 4 arguments in this property, gce node, subsys id, offset and
>        register size. The subsys id is defined in the gce header of each chips
>        include/dt-bindings/gce/<chip>-gce.h, mapping to the register of display
>        function block.
>      items:
>        minItems: 28
>        maxItems: 28
>        items:                     <----- this block doesn't seem to get checked :\
>          - description: phandle of GCE
>          - description: GCE subsys id
>          - description: register offset
>          - description: register size

This is what we would like to have but it requires exception in
dtschema. Thus:

> 
> 
> ### Example 2: Don't care about constraining the number of arguments
> 
>    mediatek,gce-client-reg:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>      description: The register of display function block to be set by gce.
>        There are 4 arguments in this property, gce node, subsys id, offset and
>        register size. The subsys id is defined in the gce header of each chips
>        include/dt-bindings/gce/<chip>-gce.h, mapping to the register of display
>        function block.

use this.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0ebf187d-972e-4228-d8a0-8c0ce02f642d%40linaro.org.
