Return-Path: <clang-built-linux+bncBDYNJBOFRECBBVVW7XZAKGQEPKQYCQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E4186178B7C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 08:40:06 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id u1sf910599edo.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 23:40:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583307606; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGNRbedXggI3KNXCRlGXp4Vbi6u6FrATznDKWP0namlB34hw28vpc5Hxil+Pg2xqzT
         jeLsxZ2UjtKlwA6c0e+wHojYdVmhmK5YiMj1ZRvAyT6h5n05q2HBsUZfjTu2/XCtzkya
         jl9CJRywKJMZVNqmnGpgoOPWOLQno3CYth/sAp83y7sWMNOKXto2rlGf1snrS2UnGofr
         UrGXaoiqV8duwNlqnjBLxqTWjRUZC8r0yJceUpeFrgjnWZknJa7P3PdvYKF6S2cYHZ9M
         1R3xYcCHYzqBY+2xTXknNLbxgRoGdkhi8JSAh6sqWSZiA7Sc3cSAPMDz/iFZrKRskMLo
         TV3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ATBXiZdbi7v+ZEPIqcJ2pQ2UhoykNWoxJRc2QOtCb6w=;
        b=hD1oVBXYjA6BpUDWbshuZIGzcGFr8DRRnVZBsTmMdmbEsTD12cmMUiaDbRgDgO7d4v
         ITu71J/bhakAQyj/AMm65ybuftdXuodLNuRxsOJH8BYVDvvilnDp4MgOjjB13os6aaod
         kT0qdrk+t5L6gq5JzCxSKmtBmC2wqMoJdvWzdfR58QXsbo2CFAp0XYS/92s63eqDj5mE
         fAhh7HOande0kPDJGNnMDwtLN4bU9nKBPTH0k0fkdImsKc1lcraOjST+GVmvXszOLI/H
         Ewxl4EBU5UPKO0/RPYJxrG1fo5ITtNstKIFfaOWhRX74wDT7Q1YOdgE36gzP/lvr0lBu
         fLRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oVfcmTnp;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ATBXiZdbi7v+ZEPIqcJ2pQ2UhoykNWoxJRc2QOtCb6w=;
        b=FErXI8Gk9VTqmq2BoWvKpEUUnIYGq8QNk8SjWeRGRDaNWdrv6BuQqGF8e6LdFTbP50
         uJVJNzjjW5qcbUpF3SwuoBuPC/kGpNOzkLCUdr+s9P6IQi3J37iLI+sppnkHbYoswJfP
         N3XjuMpYUTbTTDWZbynq7AdjpAxXAeh8sCuTCQoCDAEdHvatkQHLJhw6ow1oR+juQhMt
         KAIIOQqSIdctlD/pzhz1B5Hu5Ds9ShBNmUYqvoBTAaRYaUxzUCo2Dcp/HngbHxTKpWvF
         oT8vmn0Jq93YySznvGYIxFakf2INS7H8YqLSmk8ZN5XFrsvfCdQKpg0iI78AhgIwH67C
         xuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ATBXiZdbi7v+ZEPIqcJ2pQ2UhoykNWoxJRc2QOtCb6w=;
        b=XR0us0iBzPiCaP2SpQm2l/qUqfwqAin0M189DtHXbRtivqOrEjfOFjq8a5wif/U49Y
         FaJ0kDcgwvmIc1VvHtEG1ln9bHiDlLV2WD30Od1nv8i8qa6bEk3rWM0NPvuc0wZ0PrUg
         R8ZOTa9qN4hjjDtqB24JIVB+wZNjSSiCfQRgWTYk7t3YXBW8D9tKB/+mpPo0pSq1efT7
         0NagCPJaMFgbPrTw+6oCcQUrWrQ0gbkSLbB1yn6kCAi0aTrzGYt+3yHbSmQcSfFzYeaD
         DNb7jh6gL9867xxufmSq5KgZzXQkSGCcf3T8a1sF+ZSktUY2Azj6+FblfAQAkrJ9boPZ
         iDzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3irqQFmjbcSHkabcm6YxE4XCSlNpQAv31JVzvQVVw6HfKH39DY
	LBUQAzVo/uWyjDUOEA0CXIw=
X-Google-Smtp-Source: ADFU+vu7S+j81GuiRM5lb3duxP75WQkIUDXVs+nHWCQKgrdQzTgZTOOuu+k5Y/27ftCEpflet9h4bw==
X-Received: by 2002:a05:6402:1811:: with SMTP id g17mr1408586edy.356.1583307606637;
        Tue, 03 Mar 2020 23:40:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bcf4:: with SMTP id op20ls556379ejb.1.gmail; Tue, 03
 Mar 2020 23:40:06 -0800 (PST)
X-Received: by 2002:a17:906:af84:: with SMTP id mj4mr1388426ejb.341.1583307606084;
        Tue, 03 Mar 2020 23:40:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583307606; cv=none;
        d=google.com; s=arc-20160816;
        b=k2w6Wr5LIhVoPbLEHdlzeKRWCwvqPCWnGuYmb5V1yX5vPWj24LTCMa21xp1k8UYAhF
         LbFxdDUHKfKnh7vOCGFmWZWLBI/iJNyPH+RkT0EogJa6QBoynuPWW0FOzt2r1Y3Yioxb
         uylyrDqIhc3Vvmnrl3m9Itp8FA2Xofo9pOLxyB7s/a4JYlGb9CIykr8G4thkn3LBHQOG
         BC28XMAycvhEiD7vs0OTXtPvxeOgdhn4UIzGQKpRp7DbmvIMDmIZFbGXKGVuHVmrTsg+
         VdWme00qtk0aCvRg2M8lk1oGkm9PRqPjVEYY6Eek3giq2qPD7sJx63JppD4kFFY86P93
         geRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6RNmsQpiHqfF/YSgO9NIM7W8CLgp3pdAVo9ykmJZlRo=;
        b=jkA1wpaxW64P0yF78fXnlLro9yO4PdzGuPmRkzjwd/PfyIji1w5nmPQwd7oCmNU+5V
         bUeD/tfpjS/1c5XA2CpvO+tlYPeBSvLJWJnGYNK/4wA8M4CfVH7RORBYMcNCDMV1sCpD
         S7GlPqus8VJogeV5DiX+i1quBGJZCIpx19NN1+Zq5+W4EaQjFbqWZWBdznX37OzGUAVp
         aSAUaB8NMgLgZji7wC27BFB/blq3HWTiz/plJqoKVM1yT/EzvmNPm0fD2LMqZpUDRqAh
         6QjT+v0F8oV+47gNkgZcXKWwzlJqjAk+PeDMP3DdLr8KL80AKom05FL8Td3qZpUAuyUK
         /Fig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oVfcmTnp;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h10si54084edn.1.2020.03.03.23.40.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 23:40:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id v2so1038319wrp.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 23:40:06 -0800 (PST)
X-Received: by 2002:adf:a411:: with SMTP id d17mr2624915wra.126.1583307605723;
 Tue, 03 Mar 2020 23:40:05 -0800 (PST)
MIME-Version: 1.0
References: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
In-Reply-To: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Mar 2020 08:39:54 +0100
Message-ID: <CAKv+Gu-myRS5FWEVucdpS5zUXM+UjBdMGCiFbgu0=3=T8-9LFQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers
 are referenced
To: Stefan Agner <stefan@agner.ch>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Russell King <linux@armlinux.org.uk>, Manoj Gupta <manojgupta@google.com>, 
	Jian Cai <jiancai@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=oVfcmTnp;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
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

On Mon, 2 Mar 2020 at 00:37, Stefan Agner <stefan@agner.ch> wrote:
>
> Building ARMv7 with Clang's integrated assembler leads to errors such
> as:
> arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
>  t3l .req d16
>           ^
>
> Since no FPU has selected yet Clang considers d16 not a valid register.
> Moving the FPU directive on-top allows Clang to parse the registers and
> allows to successfully build this file with Clang's integrated assembler.
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/crypto/ghash-ce-core.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
> index 534c9647726d..9f51e3fa4526 100644
> --- a/arch/arm/crypto/ghash-ce-core.S
> +++ b/arch/arm/crypto/ghash-ce-core.S
> @@ -8,6 +8,9 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> +       .arch           armv8-a
> +       .fpu            crypto-neon-fp-armv8
> +
>         SHASH           .req    q0
>         T1              .req    q1
>         XL              .req    q2
> @@ -88,8 +91,6 @@
>         T3_H            .req    d17
>
>         .text
> -       .arch           armv8-a
> -       .fpu            crypto-neon-fp-armv8
>
>         .macro          __pmull_p64, rd, rn, rm, b1, b2, b3, b4
>         vmull.p64       \rd, \rn, \rm
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu-myRS5FWEVucdpS5zUXM%2BUjBdMGCiFbgu0%3D3%3DT8-9LFQ%40mail.gmail.com.
