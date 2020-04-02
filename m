Return-Path: <clang-built-linux+bncBCM2PPVSYYGRBE4OS72AKGQERMPROLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4652819BFD2
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 13:05:57 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id z2sf3901879ybj.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 04:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585825556; cv=pass;
        d=google.com; s=arc-20160816;
        b=yuDcjku93ZBqPlzGNarsp6d446rWwlyA+Q+qKDmTZm9fQC9RaqP/EUlsTg2h7JDouJ
         6GwDcKWxZt6riPzKPNr8OYryFQZhqnGQ2/RXpGD7ldixxyisWzz0lPRLdkEs4O+h32My
         EwQSuYisL+eCJA5EdJ+d7PFb4CA+GXpoyZ8KFSEavXvDfhDrmeMnqLkBjwe4dauRRMR3
         GYsDlOxnzyyod4Z3oyw7evjgM7ie0diwEiQvY76wS7uRkplZ7wSdNPm6m5CQVcfOC5Vm
         3TJu+C1P0WxzG63jYmgi7go2ZQLBOtI0OdchSN8njDluyT9hA1SGRYJXKRcVUBvHKxZy
         jXqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=DO6heAc+jKrizQJFQE9f6T0vNe5mY1vN57r0agBjqJU=;
        b=pf3vj09jweERbfVurC7RvVHli+55JNP78K9oDgBfm8os0emcCQD2DvM9fOkxYdEgWz
         ylcrBerMrMHIFcY3X0RoIdrx/4ZyNUJTNIgWu57OaXJmcaAtH3xpW9b/cY6F80fdWR+T
         +EolkOXE+qpVdSX3lTAztiLDhcBClc8T4yH1YQBw74pgJOXzpq1nF39y2B6Gnvyd1QZh
         prlxc4UHWbwLELHzHDgHGMlfYjjwlgXJlZoya3qDS/ZVTCPY6N4KVuNVPp8ZY+sSmPxO
         tHJ4r7vp7EDKPW+TNEgpjdoquhD1AfxYqgs4MNbgsFzj3+LcYs/1aN91OxtFc8HxEWJl
         jzkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gOwzDAgb;
       spf=pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DO6heAc+jKrizQJFQE9f6T0vNe5mY1vN57r0agBjqJU=;
        b=iKkLYroiwgVlNV7FrdOQHDJT/fwXIdBGq5mVKXYKulCiLf9yUg3XSP6FOkQTBYmmak
         WJrxkXfcZ9rMGykpWL5sFyKhvFlmiZSCNlF2b/Z06DXhCnecbLwrbEwPraEDkdfXma5X
         tVLScnoXeEvC63mt8+ifCyzLdeb2IpgEi6sJihT6TDzreTT2mP5K3XZhtE0CrUamQO95
         DORQmjbHTLiK+rJRMZv0Vx2QaIyevWA+zxUXJjWkPGlxw/FmlteNzBHQnr53sY097QBW
         DaKaVAVIQUgntIX4teJqgPeNDuare7V2dP2DcxK5ujf0WQp3u1xBD63T8oJ5AhRyO3uC
         ISlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DO6heAc+jKrizQJFQE9f6T0vNe5mY1vN57r0agBjqJU=;
        b=KQss90eIQ4P1PXDa/c6KSQFWfy0tZykbq39+SXseaGE1FRYV0UHSD6Fnf6RfaNFFav
         NHuGszBTHKlecaskixyTKm9X+DKP4crmVywYY7OdB0zYy681vLEweIkp5WkdoPDzKPyg
         NFKTzeGdkdbN2WYRlVob9mKCrYhsCEu6hOrh9HNgqGwSSqisHpJjkRggtkdNfktR50Ml
         wIesbCCyhot84NqqncABm8VAKZ+E7AeM/6dZ2+TsWGjqk9kaL5LhiuADBHOqdVy9bJxr
         6bHkIidpo1hxleWwDzn3uQyQ66rpL17cHLfUFAfDsLG5GY6Y4a0vAKsyPcgxQ98hP88w
         o5iw==
X-Gm-Message-State: AGi0Pub0pxWsOqww9oUSkE0BycVb2lzzuFVHX3L8o9NONgqHPfXym1my
	FfFRNJyW+TqSneM/YoQpvkM=
X-Google-Smtp-Source: APiQypLqcELnA+2dIiFxTPmrQEnyj8osgnzhFjxZlehnmZxvxGnqYIAPoZBTKOtSA1X0D4UyPsFMrA==
X-Received: by 2002:a25:d047:: with SMTP id h68mr4769342ybg.257.1585825556036;
        Thu, 02 Apr 2020 04:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1d85:: with SMTP id d127ls1084389ybd.0.gmail; Thu, 02
 Apr 2020 04:05:55 -0700 (PDT)
X-Received: by 2002:a25:4409:: with SMTP id r9mr4518343yba.469.1585825555690;
        Thu, 02 Apr 2020 04:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585825555; cv=none;
        d=google.com; s=arc-20160816;
        b=MHe9MxKf7ZAW+vq3zRJthq7yhoVdNpvqSyF/7QzACkmLbXxX2jNwGbQmnDN1LsGz2q
         BHhsxH07ZkfU6blBDZ6FZ8JmwAtQ4iDKGO8oyceUdC2itCuEl2quA+nu0NkAVvXLLxot
         EvjQUL1vnCI1nRiLLEFSMZi+0R4ELTCpP4ubajKEXLKnBuk5q/8MnCjtv5FXJi2DbbEW
         JNveIZZzUxDdFlqyMckShSODEc1/xNBKsFpJri+gIToNCK1I1B6/5q9vcIlt17CgLLOB
         Cx7+4/FccyeIYG1htJgXTyBG8FgZlcnxhYr6zYwNm0YMwCLClQ2/Y8xEqZftv3ckmeGX
         JacQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tIB72R51lzoNJX57UIZhH59wu8O+hq4911x6tWDtvvM=;
        b=iq/tp2x4+M1Sxg/+4Osx1iQleJoMCG9dKZynrjSSZjICxwaA4mfWQAmwtsEG3ys9K7
         Ly8EiKPSTvM62jK+ipYMf/7R8RIxWVqG5wyXbxsxcHCAC76sEpEtjGBB9NChgHa35uDC
         meuFjCUmi6OH64YAYliH45c5x+YlmontKifIhPc72dttAiCyu/TVNxnf4/z3fi98uMvr
         Hm0QTgXSoWBIPqllyKIwysCYag/Qi7Zfg4jt9MvLJwuPj362zzFaQvdPd6FJQ1u3VVZI
         fiUDMeR/AJLERo645K6Ust1P7RPY7Nls30adOk7EG66vIK5qR4hi+DMn8u4bRujBXBlP
         v0Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gOwzDAgb;
       spf=pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id s10si604021ybk.0.2020.04.02.04.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 04:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of grygorii.strashko@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 032B5mRO043791;
	Thu, 2 Apr 2020 06:05:48 -0500
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 032B5mcq096678;
	Thu, 2 Apr 2020 06:05:48 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 2 Apr
 2020 06:05:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 2 Apr 2020 06:05:47 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 032B5fOW029504;
	Thu, 2 Apr 2020 06:05:42 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
CC: <davem@davemloft.net>, <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <kishon@ti.com>, <kuba@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <m-karicheri2@ti.com>, <netdev@vger.kernel.org>, <nsekhar@ti.com>,
        <olof@lixom.net>, <olteanv@gmail.com>, <peter.ujfalusi@ti.com>,
        <robh@kernel.org>, <rogerq@ti.com>, <t-kristo@ti.com>,
        <clang-built-linux@googlegroups.com>
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
 <20200402094239.GA3770@willie-the-truck>
From: "'Grygorii Strashko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
Date: Thu, 2 Apr 2020 14:05:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200402094239.GA3770@willie-the-truck>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: grygorii.strashko@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=gOwzDAgb;       spf=pass
 (google.com: domain of grygorii.strashko@ti.com designates 198.47.23.248 as
 permitted sender) smtp.mailfrom=grygorii.strashko@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Grygorii Strashko <grygorii.strashko@ti.com>
Reply-To: Grygorii Strashko <grygorii.strashko@ti.com>
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



On 02/04/2020 12:42, Will Deacon wrote:
> On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
>>>> I think the ARM64 build is now also broken on Linus' master branch,
>>>> after the net-next merge? I am not quite sure if the device tree
>>>> patches were supposed to land in mainline the way they did.
>>>
>>> There's a fix in my net tree and it will go to Linus soon.
>>>
>>> There is no clear policy for dt change integration, and honestly
>>> I try to deal with the situation on a case by case basis.
>>
>> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
>> very early on:
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
>> There was no failure in -next, not sure how we skipped our canary in the coal
>> mine.
> 
> Yes, one of the things linux-next does a really good job at catching is
> build breakage so it would've been nice to have seen this there rather
> than end up with breakage in Linus' tree :(
> 
> Was the timing just bad, or are we missing DT coverage or something else?

It seems issue was not caught in -next because the patch that fixes the issue was already in -next
before this series was pushed.

Sorry for the mess again.

-- 
Best regards,
grygorii

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/adc2aa08-60e2-cdc3-6b5b-6d96f8805c44%40ti.com.
