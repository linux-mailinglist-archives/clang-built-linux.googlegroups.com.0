Return-Path: <clang-built-linux+bncBCB6X76TWIIRB7MF6WOQMGQETELM6EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id DD07E663E98
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Jan 2023 11:50:38 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id qb2-20020a1709077e8200b00842b790008fsf7573362ejc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Jan 2023 02:50:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673347838; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQVEkCL+BNXgr/ydEkmBv7zYNoEoSFsFNnVFUYOG0NMj0VT8ToFGaVSG2AGnBFgVBJ
         cFGB2LHzWwjHJmuzoIWC8zN5ezpa0ljzXd/H5LZhhgUc/0r9DDzZfZIyWKsf54Pkqh0V
         2tszi6NfuVW6P6PrHEjSf7rT5nh95IB0VqnEsRP2otukyH4z3NukkY3/UhdC4+6nANtH
         PYQQ0i9sY3MteOF39e3MjfdYabEoCK6zuh/vmxMs6JeNrPsL25SQZZz6eqLhOg72Cuu+
         JS7yUMoYW3mwwTbP/h3iaGvzSC8/7NhZqwyWqWEj19aTsn99AHmb3oZCNAZkCFIRnTBx
         0jQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=TBhi8YoB/qwG3SikolwjQO7iMFEJlygqkNlU79LlBs0=;
        b=N6pl/Ts7O6BvHyO3DpgjuAbFWVVys8s8hfax1RzTGkuxD91TStkt+kKbC0iLHnCxEE
         Iin1VCL+wXq5ta7lECev95k5WnGQ5CKEZluOXOlzAipNfc2Ay2hKpgAwojfcliovzZ0d
         dqieX5FNC8Quf4CFIzY9alojAcsB8QR2upIpaaiphKys9IAAbOtE8aEdVfc7K46FQeiE
         gMeP4Pv4YOVhZJGA4mysL/0LsO26PaBBXkKEM/1FCWnLyShiEk3iVsYXFs7UafsPARrx
         rwjjtaQ9wib7t8TADB4zFa+rHDlZwixF5TXsSDU50xXZiFkeTw86a8thw4CA6Eqly3My
         4Vbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kpYMzbwl;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TBhi8YoB/qwG3SikolwjQO7iMFEJlygqkNlU79LlBs0=;
        b=ZGV+0RZBVTdYnqCkh8mMsU69Wsh+FmAAbmeOmHR0L1D0JJEehzj2oQ7gWdmi4M0+ZP
         w/zvnCM6bkk6hCMehxC1KUyS+2NTkWY2N2IeboSMAVYkhr9ErBerR6bRPWOqryTBuM2K
         pGHEIYZbQa/5LWNvHvbSJk2HVTx+QHIIS8VgWKvZZJzJyq53t/zncGONzQL8snS7o+zU
         0Xu8hAU12jD7bxZpdVoR7TXO4QDfymGE4ZoSmCrBu34yslGW4nQNMWJ+ho7xiJDEhbDv
         Hm3FeugVDCgqVf9GY+ZHym1v2yPopFtbVaaNYfH/HCXNFWFS9FZE6VbOHkkEXItnic09
         pnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TBhi8YoB/qwG3SikolwjQO7iMFEJlygqkNlU79LlBs0=;
        b=roXr/ab5/3hV3PZRwVGfUGYO/J6Hg9Nf5jxwYH5AvQn2uxFxiUyT2HdxEB/V+uJZM8
         b8HkjR7HkFXWPAboPOsAHxa9h87tW/tfvj8Q+tHT/g8ZZzIHspeU0EU1WAnt71i8cIUL
         ZbgMwKQV5CyAdFeeuufkkqGCsM9FFxXgo7QGKdU+aIfbIPc6o49JQHvK00/5yLhU/5Sm
         t/DEWWPAtuckvMViWFwWy4uj2xEVcCA6M3qejYZfZdo7nAH7Q0Mazulz8ofqzt7FDPve
         Ph9xcW1mBN8IEhGRX1K4/4W34TMnvvwGWmfUvXFmgBTZoU81HToC1R1O2N4MI8qmXabI
         wn1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AFqh2krdMMxNO2XW4+x1Wf2krPnKSHQJYw7feds8YuXkJVDgrr2rpVnV
	vZhAS/NZe1iTA39t9L71/Ps=
X-Google-Smtp-Source: AMrXdXvT4yPhdVtHQ5gw2ba/ZebIz4e8qvZKTaR4wpQGMQGJvs5iZ/wUpQ17I6GLRSU79tp1XoeQOA==
X-Received: by 2002:a17:906:28d5:b0:844:44e0:1c4e with SMTP id p21-20020a17090628d500b0084444e01c4emr5081524ejd.291.1673347838280;
        Tue, 10 Jan 2023 02:50:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:5213:b0:43d:b3c4:cd21 with SMTP id
 s19-20020a056402521300b0043db3c4cd21ls3371324edd.2.-pod-prod-gmail; Tue, 10
 Jan 2023 02:50:33 -0800 (PST)
X-Received: by 2002:aa7:c6c2:0:b0:46c:6bdc:4116 with SMTP id b2-20020aa7c6c2000000b0046c6bdc4116mr56506610eds.33.1673347833206;
        Tue, 10 Jan 2023 02:50:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673347833; cv=none;
        d=google.com; s=arc-20160816;
        b=HW8U+tKRT8OCGGwPeXrf1DMH1GEDjv0r88va5k6x9UaSi0CWJda72iw4ReWr9ewqr8
         RtZ9C0CmXF0SA5EJW4lzsSvXcAtResS8u+XGBBFPP26oI7bLKUjknHQz6dRMjC3t2VIA
         WkBsJRNYBAU4Ljw1yev6vyWqoIJg9REYNiKUMYuznbfp6pRLl1tJj3CDU0HYsR7Sf37E
         CqueEgYO8XORytiWjBrvo7xLIPmXT4AMiylgUoXWGJGR7AEXRHqx2oE8hAInIPhaa7aj
         jEW5bCU40hONnLaLGYAyWt+3nVDgjqlnBseFkhvEU6FRa9Kpm49VNKDYRp8OT0nLCqpy
         VWUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=wDhRoFdk/wz4YhwEvYGPmWAa3bEESv7lEX1Sf3y+vY8=;
        b=osgVPE3TFtsxIRn9UTWot/BhOrJNKbiR81Lla/0uHnDVHBdcZOjHa33GmueQOtb22A
         EEEXq1RBJXgm0CD3p6SUwR4WcFreMWywFQYxTzwDLEHnWKfJgV0AwUCaYowEOlaOcCks
         1O1ZBCtABIa++OV5kA0pDt3OQjtLiEhTsJlgbZz0DyUGgtvRz0l55k/nDRHidcd6HCSU
         04o44l6QS31/o2ZvzwyQZlqb4GWOjkJ5Yk+nO2/ci+sOHlas2IW+m1BvGk4W9POKfUAv
         B7keUHpWo2fH7Gzwtcjh+Xzb6h7mJax0uaBmqAP9aq+CZO12C+HWmP/TXhf9W2AW/0ai
         twbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kpYMzbwl;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id s1-20020aa7d781000000b0046c3ce626bdsi453647edq.2.2023.01.10.02.50.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:50:33 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id z5so10216724wrt.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Jan 2023 02:50:33 -0800 (PST)
X-Received: by 2002:a5d:4f05:0:b0:28c:6430:c1bc with SMTP id c5-20020a5d4f05000000b0028c6430c1bcmr25775139wru.3.1673347832948;
        Tue, 10 Jan 2023 02:50:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v12-20020a5d6b0c000000b002366553eca7sm10853383wrw.83.2023.01.10.02.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:50:32 -0800 (PST)
Message-ID: <cbd6ff49-a31b-00ad-c5bb-9a185391132d@linaro.org>
Date: Tue, 10 Jan 2023 11:50:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v29 01/11] dt-bindings: arm: mediatek: mmsys: add vdosys1
 compatible for MT8195
Content-Language: en-US
To: "Nancy.Lin" <nancy.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 wim@linux-watchdog.org, krzysztof.kozlowski+dt@linaro.org
Cc: Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Jason-JH Lin <jason-jh.lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, clang-built-linux@googlegroups.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
 <20221227080443.6273-2-nancy.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227080443.6273-2-nancy.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kpYMzbwl;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
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

On 27/12/2022 09:04, Nancy.Lin wrote:
> Add vdosys1 mmsys compatible for MT8195 platform.
>=20
> For MT8195, VDOSYS0 and VDOSYS1 are 2 display HW pipelines binding to
> 2 different power domains, different clock drivers and different
> mediatek-drm drivers.
>=20
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> ---
>  .../devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsy=
s.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> index 0711f1834fbd..242ce5a69432 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> @@ -52,6 +52,10 @@ properties:
>            - const: mediatek,mt8195-mmsys
>            - const: syscon
> =20
> +      - items:
> +          - const: mediatek,mt8195-vdosys1

This should be part of first enum. Don't create redundant entries.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cbd6ff49-a31b-00ad-c5bb-9a185391132d%40linaro.org.
