Return-Path: <clang-built-linux+bncBDIYTLXUW4BRB35246CQMGQERH2DSBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF2239B474
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 09:59:44 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id h82-20020a1985550000b0290298192a54edsf3364948lfd.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 00:59:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622793583; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLmSMIeJOK01z4pA2tbD9KSM/s2XTIUqi/qHpMTG77CblMFHCyvZ4WEmkABqgh9hFV
         vmvpz5qtnP6hAPuOjg4HR0WJmAN+rSm20eCzkdhjkNFdG19FV5BB9S+Ix9OB033nqmfz
         Ijyzpg0RFidPPR3uhd1XwSoU+Mocc8jFztqgbt2T9BjU/2WrC7imwt+gDdaEGN64Y1HV
         w1+cdTQRhs2GUOs/hw2JU9dKywbedd98XdfRf2Kf/l2sVXniM+RFmTDmLqQvkMQ9YGdm
         7/IaaSlRhEJOrMDWBSble4V3TV2BOM4OR2SARyV8TILN6YD6irliMKL7Odnh674jfe/T
         s21Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=5n0N2406qz6GlqCLlUQ7+p3rnReevqT+HfDNwv/yPzA=;
        b=Mb6lMA5Ms4x/XJ1OC9lw8ps2RvfnkAt512PfFQ779HOrk/5IXfBsr8/M5ENaYCKoyZ
         XCQIJnubXPmG00hwQIfeHXSf7Siz1exQXQP3VDttc/r7TBbxUdSE7v+CA4dAowlmfPBv
         30Th0eQPJU1QuPg/XQpdMVUAXRvM1TkEEyjU2BMb1+ku9Q2wMLKwVqdccGZJe2ISLb4D
         fxpBXOHX3WuETFXDDGkzpLVkgN/CKASERMQp6quBC1RTfb1V5yoyaAASMSk8rTtHkyTo
         6zxMQ0DU3qxocwXyza1yIeR6mHhzUpvEghMYYsKvM8D+k9zahsdCHW5MCrStbGthvWWw
         1fgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zrHqaJhY;
       spf=pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5n0N2406qz6GlqCLlUQ7+p3rnReevqT+HfDNwv/yPzA=;
        b=DUopCy1gJrmH3ZTN6RuOWdrFsnerhkjsxdsVfmQr4kysQyWjdtax5EPB8GK/w+WYi0
         mwiAlixCA/gCaLyn1O0DyHyVqPUU+D8WTPC0v0lIOnlOZ1lzwoVZ7/f0MOLlvuahAUZ3
         XYpyS7flqyDA0Ioqe4PfqZLmGcUZocinyVyAqpq+pPsJa1N7u/GmPz0uRwZ87I9CqZqk
         xJHYV/LFL9hXL0YyL/KjPsXv2gAAgMhl0aZ0Zn1aIYWVV2dHJRTl4p9gujtKtG2Nacjd
         AqmazStyutUqbvsk5pEsYFhPO2XgAyybTtUTZfniAN3RF2xn1Q6mDrR5PDkFy6hp8b2T
         mgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5n0N2406qz6GlqCLlUQ7+p3rnReevqT+HfDNwv/yPzA=;
        b=XsqQAfP+U0nvTTK8Xc6Z3f3kRHddcZTWq8D99VvC9vzmi9bzpdJpk1rB6EdSoLFBTc
         2o3ORzUIBM9hBV22eb1KJuoP94N3aSffHIdp07YT+F8R9ISELz9ZBthiTsBG2/jOjtFF
         xpsYKrWcusp+iePtVUSq4dTZcc+5q7fhGYdxkwhPmjvs/DFiXrBzSsgc/tOHb8EBcHiW
         bqfrqZ/CrJPFiLKYsfWyG2berq2K8aeLCNTMDZjvLRLbu9tQKGAqZL/+iN1u+f5lVidg
         6YkOfy7lzzx8Zpmup1IJASQmfHlLm6nRvifXWo6Va4rRIfpg8JFbeJ+NSN52oy6shQ/D
         kVYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sI4UJadsvIQ3ipl8WMkrnNR7Ayg/BJwhFvZ1JzwOZEGtTKBHQ
	Y6dbnTc8Cls/wewMdw1LvSY=
X-Google-Smtp-Source: ABdhPJy9BJ5mb6zmPXv3Xyh3olB30txRurIdN29FYkf2Gcq2zo6RCarMaWOVP/mLWz6mjbfC8s9AKw==
X-Received: by 2002:a2e:8e78:: with SMTP id t24mr2518240ljk.499.1622793583370;
        Fri, 04 Jun 2021 00:59:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9617:: with SMTP id v23ls1431748ljh.7.gmail; Fri, 04 Jun
 2021 00:59:42 -0700 (PDT)
X-Received: by 2002:a2e:b5d8:: with SMTP id g24mr2574075ljn.115.1622793582287;
        Fri, 04 Jun 2021 00:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622793582; cv=none;
        d=google.com; s=arc-20160816;
        b=PpG0d9qZ+eq4zSocTUL5HoMaCT9JYkTMDFAbQCL9BbMCdIgmd8xtc4sd2LJJjuhLRV
         2ih5C3Pi4Nbp8eeAYqC/VK650w9mWL77C7w4gK4SAzQyy25cE2Pf3nRC0WxBDnZmDwox
         Iz6h40EUIaJPTVCt1VId6DnQczYk6RXFADnmC6SnfmeW4zzfWAKxAO1HcfEEXov2oKRa
         pnjYkdhkM/WodZW8ISjTRMN4vEyFi4a6T8egWLEAgevJiHc1zBriB+V6v7dD3yP0RWFI
         5ge9O92Q1T/ctzYGyWjJ68w6kM0jpbtw+Rt0p9B6QRCc4f4Z/lINH/sQG9YoktofmZjA
         skcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=EP+mw274f60QgeLEw0mZAERkBn33Pom9+hVObcy6zfM=;
        b=dmbc6u883CmxyE20/viIu0emqcYbhqm1fpccozgtxxSZH96pQaMDXPlTJMmG4OzpMF
         lBlp9VypA0HOgiV+ZsyMlewpK0vQUOVK0VK/6U/aiK2kx0/hMtt35Y/eEzek7yjXqks+
         UW3xupoFIob8/laxlTc/8O/eLohzl3uNCzl2uladfPY3EyuRohiBqAOx3OvwjeVTWoOy
         4iyEibW6y8Gp6bJOBMydQIYjXNl1spLXdmHwMqWP3G6cQGkuU5WvQIs4cclW1brCFJj5
         O7W2axBPCIpaToTGnEjfCJWkgSy3fbW2mB9alYNEHgiFBQWtLNprRb714CLR4eGjsKfs
         z4PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zrHqaJhY;
       spf=pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id d7si209188lfn.7.2021.06.04.00.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 00:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id a20so8387491wrc.0
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 00:59:42 -0700 (PDT)
X-Received: by 2002:a5d:50ca:: with SMTP id f10mr2347004wrt.411.1622793581797;
        Fri, 04 Jun 2021 00:59:41 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:70d3:6c26:978:999d? ([2a01:e34:ed2f:f020:70d3:6c26:978:999d])
        by smtp.googlemail.com with ESMTPSA id h46sm6642757wrh.44.2021.06.04.00.59.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 00:59:41 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/pistachio: remove unused variable
To: Luo Meng <luomeng12@huawei.com>, tglx@linutronix.de, nathan@kernel.org,
 ndesaulniers@google.com, clang-built-linux@googlegroups.com
References: <20210529033335.1962230-1-luomeng12@huawei.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9d805b82-c4d6-4a49-3422-0630be34ad01@linaro.org>
Date: Fri, 4 Jun 2021 09:59:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210529033335.1962230-1-luomeng12@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: daniel.lezcano@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zrHqaJhY;       spf=pass
 (google.com: domain of daniel.lezcano@linaro.org designates
 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
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


[Cc'ed Ezequiel]

On 29/05/2021 05:33, Luo Meng wrote:
> Fix the following clang warning:
> drivers/clocksource/timer-pistachio.c:74:15:
> warning: variable =E2=80=98overflow=E2=80=99 set but not used [-Wunused-b=
ut-set-variable]
>=20
> Signed-off-by: Luo Meng <luomeng12@huawei.com>
> ---
>  drivers/clocksource/timer-pistachio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/clocksource/timer-pistachio.c b/drivers/clocksource/=
timer-pistachio.c
> index 6f37181a8c63..42b4cacd2fd5 100644
> --- a/drivers/clocksource/timer-pistachio.c
> +++ b/drivers/clocksource/timer-pistachio.c
> @@ -71,7 +71,7 @@ static u64 notrace
>  pistachio_clocksource_read_cycles(struct clocksource *cs)
>  {
>  	struct pistachio_clocksource *pcs =3D to_pistachio_clocksource(cs);
> -	u32 counter, overflow;
> +	u32 counter;
>  	unsigned long flags;
> =20
>  	/*
> @@ -80,7 +80,7 @@ pistachio_clocksource_read_cycles(struct clocksource *c=
s)
>  	 */
> =20
>  	raw_spin_lock_irqsave(&pcs->lock, flags);
> -	overflow =3D gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
> +	gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);

Why not remove the entire line ?

>  	counter =3D gpt_readl(pcs->base, TIMER_CURRENT_VALUE, 0);
>  	raw_spin_unlock_irqrestore(&pcs->lock, flags);
> =20
>=20


--=20
<http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for ARM =
SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9d805b82-c4d6-4a49-3422-0630be34ad01%40linaro.org.
