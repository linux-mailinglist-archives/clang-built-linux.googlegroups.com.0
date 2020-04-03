Return-Path: <clang-built-linux+bncBDR6LBMLQUFBBHELTP2AKGQEDGQJ2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DE319CFA7
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 07:11:57 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id d189sf3061582qkc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 22:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585890716; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dny4kXgfh5TSt4F4Wy+pOiB1exlCANAkaUmvwVRixwRfBkmg1PJbshwRCnV6kumtu
         mHzO7sdZb84fKWwFXSxM0bDg/6MZ4Ktb0rg1IvxsvV1OLa6tVV5DwlgsNmJ6ElWKvv0f
         aCAK90LvwWpVM3TzqEXUa4bIDD77O4xo8fSpHbsgorgS/dHxPFWQD5kx07BYS1uQI+W2
         y9ZC4cgGdUiOyKYFH0nZLRgnemUeKFmUcRoYjrY1fttZAJJtduqfins9WV//VM8yPCUE
         HXjXFancveCGJ3uYRfY0NkMj3HVwFAkzVvZj9z499WNSYtg1OlRJbB4qmB4IikiXyULY
         GNYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=z74bMhSmccfaWC0iJe6A63UQdmPiSNEVQJK9NllHAPk=;
        b=Qc1wQ0vSyY8WAAMGqqpX9HywjZu8vx5b2M0fmQxchJVEADU6+crOy+sxvuQ6hMvCk9
         TqQtyAGsVo3KXNqU2wk2rRV/dzqt1ZmQaYTPoEr1iI8+VfXqgLu89grFDm1LhbVwzUcQ
         BoUtECHk/MuJ6RKCFUab/f5Ct/q+tuVoHTv+yvCIwOLzMsedTQpuVqwKiSAGDoZFwt1S
         ePs7b6LTU6GWJZJdHURDqeMNKHUWHwO0zhBQvAcLBkfZ5iDCV6ISBAWCdP1+R6noWqdk
         RDh7pcXJRMJajptmW138KXFf2UZfoNeIt1QuEtsqY4kxTdjvdnRkCqddy65e0baiyYF7
         AUPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=dyRE1GZp;
       spf=pass (google.com: domain of nsekhar@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=nsekhar@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=z74bMhSmccfaWC0iJe6A63UQdmPiSNEVQJK9NllHAPk=;
        b=OeeoOCM9g4PZl582OXqs0IcMjKJVYg2yrEJfS2kGHsVpN0Yo4aL1D89erPsqDqcAFM
         GjWAmUrjgX+ibltQADXK0S4C6tzF4UFqa27mBPr85RZrrMsQ3/L53IiWbjHO9EgEfncB
         U/Xa9gLzNHIsASift1odSu+nUxxtcOcn4a/d7GPQQI2S9iieF1l0hzrVnsYKq41JY33n
         FKKzQAZ/EwGKJOwrYttDP5dosswBUKNiHT/HWxJYynd/YXIyT2/3jbl0kAhvR0DX5X6f
         ScX0U8ov7k2IKn2ocUTwGEV4p5gAKDk0792MsQ/59aGCuOd3HrUeB36EUdJy+QUpkQtc
         V1Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z74bMhSmccfaWC0iJe6A63UQdmPiSNEVQJK9NllHAPk=;
        b=togZ3bZTCwBB7xr9vejEJ1Vl6XqSYoI8ZWG+UOgcAvcN0J36/DfZO79N/4NRBKdAcr
         C8/iK1Lcbe/WkfWrmWRGeZMYOlouHHBYjkSueJGyElsEzo8v0hlTtsSefmGFVWXlG0OK
         3N17g+wVRahZNiWHZhwxX18DaKnRkKeFkl2Qekojg5bbYJhiCmxEi9/sAZa8rkXlPSPU
         zcuGZrlwVPs5aKU8WcZJeTUtaJdFY6fwC0gm3MLsMgRspDY4DZ2fSYFhXH6YZ9H9VnBK
         WVYGDHuUybQmf3cwis86luqzJiGRA4lRpFCNxp36/cSzd3+bEWMSJ2mFwBQmOz4sMi2O
         ztcw==
X-Gm-Message-State: AGi0Pub8zvSD+xdcsc9g1twex3gGX0QERn2YIos1jvo+ZtlsBtt+VrGx
	qhvOdFrb9gSXViztsbB89og=
X-Google-Smtp-Source: APiQypIwcWEWCQnBC/cn57EY1Wuu2UhGjd/FHCxqpQ3RI9eGmryxW8YU6FfElzBePkBVrN4lOVw3ug==
X-Received: by 2002:a0c:8525:: with SMTP id n34mr6632474qva.224.1585890716328;
        Thu, 02 Apr 2020 22:11:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:583:: with SMTP id 125ls2252150qkf.8.gmail; Thu, 02 Apr
 2020 22:11:54 -0700 (PDT)
X-Received: by 2002:a37:391:: with SMTP id 139mr6936017qkd.6.1585890714507;
        Thu, 02 Apr 2020 22:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585890714; cv=none;
        d=google.com; s=arc-20160816;
        b=LT8Gdbhhs6EaZYeTTSweo8DcUzvulDZPPXHWcf6e8fn2OBUefmmy2e5PymXxJZcGsm
         6fnQwRmBweeM0n2CISMwDTNb1iy4of0HOXR4aGkQInKGsex+N/3D1c2JrZZ8ofdlCYe/
         3cnrEC22Ly2CKXI4QZOBT11sKq5EDJcFj6ozrMyajb/LWyigynOT0Xo8i9hyqDXWsyp/
         yfOc8itthF+uhUg/1oo9tXKnrF/IjIG5YztfBXKQNzjCnMVZbssap46Ktq9nctX8EvRD
         IPE7c9d9/qwTtoDtftN0HNExN38OnoyVif9v5z7bpWSoBaA9G01WdcgIKpUmSv1AZt6Z
         YiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jofktekZwJmynwAp+73dh/VN6DTrbyAH++7Gc/JbF2c=;
        b=wdgDf3BVOfVXkmvgjh7V8VSMwa6vd+bcJClBK5oAqcUV/p7Zlhq39CX3ir+0vFCS06
         g296RoYW4/f5qR1uD7QopQDQjRzgncabde+IBNNladEyY4t2moCakRkVTsOfDyNdQV50
         FV/v1LHlC1ojz1472oikJeUbkH3jKKjfSxIQ+ef2s4ywS4THJHex2/uShCgmUcNuaSEJ
         hcGpJYVKKwbPx5LKO7YP1obXtRMSNuuRAGDcaiSutDOCllLqOL/zSesTTcoJ2Jv8ElaW
         zR9w5rDZeh3p4zylXuPs7LjIRIpECr4NTzubGultxXr04Uabvyv1fD8dSnhIwOZpq7Vx
         3kIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=dyRE1GZp;
       spf=pass (google.com: domain of nsekhar@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=nsekhar@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d34si575817qte.4.2020.04.02.22.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 22:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nsekhar@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0335BmNs071109;
	Fri, 3 Apr 2020 00:11:48 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0335Bm4u097176
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Apr 2020 00:11:48 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 3 Apr
 2020 00:11:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 3 Apr 2020 00:11:48 -0500
Received: from [10.24.69.198] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0335Bg4R055217;
	Fri, 3 Apr 2020 00:11:43 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Nick Desaulniers <ndesaulniers@google.com>,
        Grygorii Strashko
	<grygorii.strashko@ti.com>
CC: Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <kishon@ti.com>, Jakub Kicinski <kuba@kernel.org>,
        Linux ARM
	<linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>, <m-karicheri2@ti.com>,
        Network Development <netdev@vger.kernel.org>,
        Olof
 Johansson <olof@lixom.net>, <olteanv@gmail.com>,
        <peter.ujfalusi@ti.com>, Rob
 Herring <robh@kernel.org>,
        <rogerq@ti.com>, <t-kristo@ti.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
 <20200402094239.GA3770@willie-the-truck>
 <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
 <CAKwvOdk4H052Y=t4_XXy=rMV=CUYPNhb5CN6x8-dBTNaTt3aPA@mail.gmail.com>
From: "'Sekhar Nori' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <818261f1-0075-94ee-f73b-3f72a058999f@ti.com>
Date: Fri, 3 Apr 2020 10:41:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk4H052Y=t4_XXy=rMV=CUYPNhb5CN6x8-dBTNaTt3aPA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: nsekhar@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=dyRE1GZp;       spf=pass
 (google.com: domain of nsekhar@ti.com designates 198.47.19.141 as permitted
 sender) smtp.mailfrom=nsekhar@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Sekhar Nori <nsekhar@ti.com>
Reply-To: Sekhar Nori <nsekhar@ti.com>
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

On 02/04/20 10:57 PM, Nick Desaulniers wrote:
> On Thu, Apr 2, 2020 at 4:05 AM Grygorii Strashko
> <grygorii.strashko@ti.com> wrote:
>>
>>
>>
>> On 02/04/2020 12:42, Will Deacon wrote:
>>> On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
>>>>>> I think the ARM64 build is now also broken on Linus' master branch,
>>>>>> after the net-next merge? I am not quite sure if the device tree
>>>>>> patches were supposed to land in mainline the way they did.
>>>>>
>>>>> There's a fix in my net tree and it will go to Linus soon.
>>>>>
>>>>> There is no clear policy for dt change integration, and honestly
>>>>> I try to deal with the situation on a case by case basis.
>>>>
>>>> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
>>>> very early on:
>>>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
>>>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
>>>> There was no failure in -next, not sure how we skipped our canary in the coal
>>>> mine.
>>>
>>> Yes, one of the things linux-next does a really good job at catching is
>>> build breakage so it would've been nice to have seen this there rather
>>> than end up with breakage in Linus' tree :(
>>>
>>> Was the timing just bad, or are we missing DT coverage or something else?
>>
>> It seems issue was not caught in -next because the patch that fixes the issue was already in -next
>> before this series was pushed.
>>
>> Sorry for the mess again.
> 
> No worries, it's just worthwhile to study failures.  So IIUC, in this case:
> mainline was 5.6
> the broken patch was merged in 5.7 merge window
> a fix was already in -next, but not slated for the new merge window.
> (Maybe scheduled for 5.8?)

No, the "fix" is scheduled to go into v5.7 kernel as well. It is here:

git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux tags/ti-k3-soc-for-v5.7

This is already part of ARM SoC tree, and slated for v5.7

https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/?h=arm/dt

Arnd, Olof,

Can you please help by either queuing the arm/dt entirely or just the K3 SoC 
parts to Linus sooner than later?

Thanks,
Sekhar

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/818261f1-0075-94ee-f73b-3f72a058999f%40ti.com.
