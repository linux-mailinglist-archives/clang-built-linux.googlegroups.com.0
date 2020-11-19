Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBXE53P6QKGQEPPHUXYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A89BF2B9BC7
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 21:00:29 +0100 (CET)
Received: by mail-ej1-x63d.google.com with SMTP id yc22sf2591042ejb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 12:00:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605816029; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBkuaTOnIOrPewaa6rbFoUoPELwyypo06Vch2etAGAKLnzqA6r4MLrHJ7DQsX+g35T
         nIREOY7Hx4Q4ORgBhzApO2Q8hTmSzs4tOQTX8zHUHAhMaGoiLQSaUmqb8+/NkVh70be1
         WsegVQ9eCHw0v3aSaHd99NhyYS0xEbzsVtdpdMJQJA/0wZZzMdoMh4YGiBKLMsVEhZ9J
         D8UUsQMsUAmtA8QvOhzzBhqjVyndx7Bc6dPZtvPF197rec83TlV8lyPHmQN6PoA9sdhz
         kSOs+YB3noTzKOzaz3XV7bwbMQh3akYD5oUbMryw0Ps/rbsqEqf1koemrQvZsw1PgaI2
         YEaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=0yD/mZVYlrBG5FMidI2cSRQa4Ll/3m8s9mN4u2UQKKE=;
        b=lmS0jIolESE9nYx1nBbjamRRYuuPqsLOwsgWoCZeRk6f3OaHMz3MmiXCmiWk23TiT3
         PJb/1GB+jt+sX3EwY+9pzc9FUN+WDo/hCanw6cXxGOAbaFVeEIgJ8WG0YqSG3uMft7Kn
         kcJx9edBlrmNNYHXVe9OfAP/L4sz/7x3ATMlywBtV262n6oLU3OEO67m8QaMgRVhyWOX
         sregHIt82oY+jwwRbOQiR3MDfX8tURfa9ped1t3Cy/H6KhLviyzu9L0NOmBvZlB/5w4m
         +9Mh0djDY2wrUmA1AUrHAgqILRUU0Gz48yRqV98451V0tv3SF5X1JyaZZE05MqK0bUdj
         otaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTdDrYFg;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0yD/mZVYlrBG5FMidI2cSRQa4Ll/3m8s9mN4u2UQKKE=;
        b=EgIFEocOOguD7+s3/JRyCi6MzAsGV68RXLZcKjpu2a4HVTmATf1zpJBzR6F9DbWPJU
         A2tZWClWbAdVcSdJgzOYv/J9dekxo2k+oXnpTPR6wJQi2gOZqOK980JmwB8h6ZXWHro/
         rDhaEzRu9UaQ46kqnGYQXr3v9YEAB2KP1FJfh/KsZyxDbEeWUIIrn5TkzKByL4XLwoeD
         ysgf90jdw+tNHmMU/xAOlBpN8kLjk/xqs0hY6nRNMXKhbd/64W3PLk4m3Zf3JT68YJuW
         ijpAdxJv/3981PSmld4jovW9Y2BZ4s8chgVcuA5aCxgizRFdzU2/n/FjsNnJjZRuKrkC
         RXXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0yD/mZVYlrBG5FMidI2cSRQa4Ll/3m8s9mN4u2UQKKE=;
        b=M6LTV37XBkKI+VVgrvkmjYDF7ZTnU523md16L3GbkwlDJt8i2sc8Uvc2UQdyUJlkO6
         aoW4Iv8LrBsdEfhYFgk9EHBXSnCHJly1wCwHDOMtOz+sl53+xe+FcI0IrjbOOpbpsuPf
         6DOMoz7i6FGz/farTRFMMyvMUbLDSt/oINj8RUEHLgo02pEG/zaq7JfBOJFP4CIjn9bn
         5IvSjXr6s6hlEFWaUtcJVjI9hlNVpiTaEuRapa/TjcUufv6conq5olz5PumanUi/ZIz5
         RqK2LNNVL/h4rUEDeQeJ9G3p/AROYK2xktnQZX+VdMIN83lRnddQbkdHWsSOfbFAx0Gi
         QmMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0yD/mZVYlrBG5FMidI2cSRQa4Ll/3m8s9mN4u2UQKKE=;
        b=RTfj580sR/kMz7QSLPMTebgaYxr0AH6E201kkM7QP5zuLZZM545y8GuMQbTzfeLnqq
         3atE/udV0ZfikOpxQDV57chNygqcIdiwtSBG2LPi1qeHJBGBBQB6d4in1poocCs89rrH
         v4hDGYntm6i2j71HGW7mAsVLji5TInkcd517IlV+GCav5sxNnHClmfiZyfjbo4R/cQMI
         hVA2KUEX5P+zwsTyXw/nW7XOgL8mRXuQyiqK1hpGCgJr5QVx690kQokfNp1mXd9yhYj7
         qhIcnVGeFtMEYC3B2JfdbZ340i8H/ja0Xa8/pRQjHAEv4PUzv+19fjMxzklW0KLEPsRU
         HoVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J6r4sKwsQpDZKffVChrhRSR0I4M1NHOt5hNYqn983S7w+lldU
	WP8FVNJShVHxGpKVQQHNU4Q=
X-Google-Smtp-Source: ABdhPJxBPsKOLUih+2v7xgetgsS7R74+LBmkORte3ikEy58UKz25qLuRM37UtfR6YATfaDfc1itvxA==
X-Received: by 2002:a17:906:1458:: with SMTP id q24mr31129171ejc.541.1605816029056;
        Thu, 19 Nov 2020 12:00:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cc8b:: with SMTP id p11ls3868257edt.3.gmail; Thu, 19 Nov
 2020 12:00:28 -0800 (PST)
X-Received: by 2002:a05:6402:1019:: with SMTP id c25mr4562949edu.297.1605816028236;
        Thu, 19 Nov 2020 12:00:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605816028; cv=none;
        d=google.com; s=arc-20160816;
        b=jzpR1aBjB8jExlUYm73upBFOOgvpsiihLi+clyaJoDECQIKGKU86A4TWEI+K/V5uZX
         6BAus3MGNDSDeI0DfzjJaAkPa/hrF2757WoVrFR/3lUXDpCBjNS07GYUfBP70JjNBgAJ
         27rC3o44Uf7AAxiBHdCROXAQma9xW5nApvo8GJuSP6MF/nwFm0ueYTeMQBGtXnKKR4TK
         Tlqowr7yxC6lgL8jIXmjW2etP89e9Wqxwq2WVQdPR+bdBVWZqKNl4MrOp6GYrFt4YDR8
         JXwyO8OXLpcZeRxGOeFrMaoolvHy0AmztVE7BcknZ/61/3B9EGyHRMg0bWVz6iglvVfl
         UWtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xyUZdu0ZJU5P0gq+OS7JtPav/E7AN+ciZnMKt67PIXM=;
        b=FuQXCbGBHmVZqiIAeoaJo9p4godIEaJzrszbuCo6e+pGi/9uLbjtKurhb0jEMg/taO
         OLrOXwa7gAPJdqKn2cKBeZr4WfHZJYIvqyAz7wjYBimggGGGPQ/D9VVWDkV26zrbxvRQ
         2F+Lx5ksoW8JKIpcweY2T56F51F8S4KvAei05cL2LyPwpvBwCuLAHNDWF3d5lr6DxEks
         5zCe6rX2OsDb08fScQmP9f/9DsjUI2iK8/jOeAV1I8UPxO0rOaAjBj6o3jJxWa+7UZrS
         26Ss2gcfezbhfRJBpQzAqvZh/4xZXugai9rpBvyZrt61o1+HPrbbZmW2KIysXMhaznhQ
         +2PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTdDrYFg;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id v21si16625edd.4.2020.11.19.12.00.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 12:00:28 -0800 (PST)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id 142so7574140ljj.10
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 12:00:28 -0800 (PST)
X-Received: by 2002:a2e:a54a:: with SMTP id e10mr6162806ljn.148.1605816027498;
        Thu, 19 Nov 2020 12:00:27 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru. [109.252.193.159])
        by smtp.googlemail.com with ESMTPSA id s5sm73746lfd.58.2020.11.19.12.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 12:00:26 -0800 (PST)
Subject: Re: [PATCH] memory: tegra30-emc: Remove unnecessary of_node_put in
 tegra_emc_probe
To: Nathan Chancellor <natechancellor@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20201119195244.1517236-1-natechancellor@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c8b53ce5-4fb8-e634-d4a6-baf00ae2e6a8@gmail.com>
Date: Thu, 19 Nov 2020 23:00:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201119195244.1517236-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cTdDrYFg;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

19.11.2020 22:52, Nathan Chancellor =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Clang warns:
>=20
> drivers/memory/tegra/tegra30-emc.c:1275:15: warning: variable 'np' is
> uninitialized when used here [-Wuninitialized]
>                 of_node_put(np);
>                             ^~
> drivers/memory/tegra/tegra30-emc.c:1269:24: note: initialize the
> variable 'np' to silence this warning
>         struct device_node *np;
>                               ^
>                                =3D NULL
> 1 warning generated.
>=20
> There does not need to be an of_node_put call in this error handling
> block after the shuffling of the np assignment. Remove it so there is
> no use of uninitialized memory.
>=20
> Fixes: 5e00fd90183a ("memory: tegra30-emc: Continue probing if timings ar=
e missing in device-tree")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1203
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/memory/tegra/tegra30-emc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/memory/tegra/tegra30-emc.c b/drivers/memory/tegra/te=
gra30-emc.c
> index 3488786da03b..93f9002d32ad 100644
> --- a/drivers/memory/tegra/tegra30-emc.c
> +++ b/drivers/memory/tegra/tegra30-emc.c
> @@ -1271,10 +1271,8 @@ static int tegra_emc_probe(struct platform_device =
*pdev)
>  	int err;
> =20
>  	emc =3D devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
> -	if (!emc) {
> -		of_node_put(np);
> +	if (!emc)
>  		return -ENOMEM;
> -	}
> =20
>  	emc->mc =3D devm_tegra_memory_controller_get(&pdev->dev);
>  	if (IS_ERR(emc->mc))
>=20
> base-commit: 5e00fd90183ab0103b9f403ce73cb8407ebeb145
>=20

Reviewed-by: Dmitry Osipenko <digetx@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c8b53ce5-4fb8-e634-d4a6-baf00ae2e6a8%40gmail.com.
