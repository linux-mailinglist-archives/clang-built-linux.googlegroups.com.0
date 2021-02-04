Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBHOP6GAAMGQE235SNEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAF830FF4D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:31:10 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id e15sf3628598wrm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:31:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612474269; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQUSdG/UQB/+dGoYU5iJWLO26dHKu8G7yK02dR2qux04L0UCMJT1+cwS2TSSHz2mqs
         qxhLvTTxuvkaNCxqQCAOyga/r0GiIVuP1kh5Bl9oU34fB88Q6tidqh3Cn2cEitDAN9MX
         RFDboNtIIrxNw0HL6m8pNGe25+nMZppCu8d6uUHu/YfEZwkRgU2Cfb4OKoAw51N/nt5M
         p+MYR66uyUcIWuzjF39mjeav+BChoRs5jiBOrGA2VDeN0UZK2HssvOtpRGBaH5bKd+fo
         33z/l8PH8H8aU5YmrjogHVj1FCT7wOY2WzU1pWPzrWKC12vbN2IJyGExnEu9WD7YVYZ4
         rFzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QrNec+hOWijAUTpZRyT09gUlDMOHj4foQ6TgNO8Ci4I=;
        b=jBtkg+hixPWQBI6koCPdeIt5Xoh3j7F2ElUT4sfyNGT+yiRtjpDtfhHECirWjQsW0S
         Qdd+MJwWwZmTDheMKIqjZ7By/L5NKnsJBOGksrKLpGnqUXx5XajAnPfxMhKxEVzVpEoQ
         m2TQ29MnDKd9ZsGZITi1CDS6qMA6tLCALjfwk8NBslJ2DblM4Xd9QqWbcqaYCbMVHcR5
         hh03cHP3YvtHfTZsVS5ZCkySxOHgtpKsdEQNIcXQfToeMiyfApV6Fr3esxdsRP4ZpAg6
         BZp4t8tlRk+xS+zFDTK7nywUihpMl32LWlwZyIICYmiuxBSa8BWQhvwfl73sLkSCoDfb
         tCYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QrNec+hOWijAUTpZRyT09gUlDMOHj4foQ6TgNO8Ci4I=;
        b=MGhGJG16FFtkv8uR5B+zb2b8RvgnD8nfrfbrJCFymn64+DbfpeMlXc7A9TweiYf8Tc
         Dy+roSSwVAOoofjCm9gjS6zeQrGdWaKRdcogno+Kl2Oa9MsosJdBGAaLMaA7fDhuAQpv
         kIzXXSPKvotLcsyCB79hH2gkZU/uzbo2jjPDHNR/pmYoGVJ7nY0LH2U6Qmq4AOTyoAOT
         HlzwHfZQk85W5PiJmENMbtUbVUH+tKHoe+HbUMyoZnZT091gFKWU8MK5xiV+GQY3iS84
         bC1AvsXv7jXqFrGePrxbtYy2M0liZtZMuIMQRhMfHDvLR0ujiy1ASQ4wd3LUqP4LIrO2
         OZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QrNec+hOWijAUTpZRyT09gUlDMOHj4foQ6TgNO8Ci4I=;
        b=PS9yVIOuv1ypWsEOPmNfd9b1ghahRjLT46p1D3O72E4Nb1EXax67NSRCWQcj7OWrv4
         9dpEl7ce0iCmBHwKMELfTlxYp7OX4Ze3K7MrWfZOIqFbz2cweQLv5XU/AmpWcLVLEUer
         pZoGgarsI/OTRBLYYb74L0RHjWZJTvewDm+gcLXtceAVo5vmElGradYjlxYH64EJh5aj
         uUCV0Q/d1e8nV27ARke37XHYg/GDjvnLQFoXWtcAwBTtPeNRm4+1UILm02Bh0o0y11SG
         lrfOhE4b7ZNTKIQ5YiK5Jx3I+vC+MC1SQEqurxurbK5KcKHYc9aKRxO615K+YXXHahIP
         YjfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KmkHlxooCYYqd/IPxlv1HYVV/Wzhmk8cdHlN8oCdcVjXI8qwq
	yEkh78A34MO2nwluOZZ89ms=
X-Google-Smtp-Source: ABdhPJyBK0q8YTRv6ZERq/sWJ+dCwjH5uoT/dJeokdT4YchHBzev6wTmPUERkfetK5Rj+tD1Aw6y0Q==
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr1379097wrw.183.1612474269838;
        Thu, 04 Feb 2021 13:31:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e14:: with SMTP id g20ls1280377wmh.2.canary-gmail; Thu,
 04 Feb 2021 13:31:09 -0800 (PST)
X-Received: by 2002:a1c:8002:: with SMTP id b2mr961058wmd.94.1612474268932;
        Thu, 04 Feb 2021 13:31:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612474268; cv=none;
        d=google.com; s=arc-20160816;
        b=0PwRBIjegsnX197Zaxrgwde14FIkf301nBilAyHQy5PEhZfnzwJimQovS2CQPBozrl
         pva8er6FllY5uWJOyxke8pGcR+G6yPFxFRsI9jPUyYPrwwBkYQVpRNxJrH5CZI6QtyMt
         QI6J4dTv2V7vPnWTT4slsFHMObshURfi7jg8WfIBM0zyWjBqIX5mm/+jIDjsRzpGXq83
         cc+U5SjEp8m6kn1QBQ15zZuxWW/zOLw6FU2+pA5TyiSUQ0giEHXDdUou1NXupx4g4y+L
         LWONq5ssTk/OPn/SvM+OXsbKfkDhj92erKYInXoeZJRGRmxpUWMiOeKE7xtFj7QGCZ1X
         bLKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fUKw/JFvJR7tmwVJ9DLO/A9fV5Ash3njY/KBsaefsAE=;
        b=lUJy9D66Lsjbt7Iz8GL6XH5mjfxqfz0mtEA2OW8a+j5Lg1rnLivQOLOSSWyAo0OYtb
         JGBxEx97+kd8wrNYLREy0Qqu7quGN4AtfnHuaLuyp9zpJXl/Jqk3jSjWiGyc71APe3Jw
         yxaYuqsgc5z4u3eonVTwuv2fyG/Nk1GItATGuH4MlNLU+Rj34o1tIg37QZVj12Oa6JOw
         YLuvNcZum8PcdR/CQw/h72MsvVaCIg8PKd5gdnY5G7Ll7JDc5y3UmjIxh+S1PLlDYkuN
         QFgSv1zxevgCP8mFvADil4m/aDOrXDdVgqqwspXpxR2V3Oz9P9ZkN8amtgG82CDfUuYh
         FcqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id s3si305465wrt.5.2021.02.04.13.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Feb 2021 13:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 43D251F4648D
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: "kernelci-results@groups.io" <kernelci-results@groups.io>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk>
 <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
 <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
 <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
 <20210204181216.GB2989696@localhost>
 <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
Date: Thu, 4 Feb 2021 21:31:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 04/02/2021 18:23, Nick Desaulniers wrote:
> On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
>>> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>>>>
>>>> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>
>>>>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
>>>>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
>>>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>>>
>>>>>>> Essentially:
>>>>>>>
>>>>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>>>
>>> This command should link with BFD (and assemble with GAS; it's only
>>> using clang as the compiler.
>>
>> I think you missed the 'LLVM=1' before CC="ccache clang". That should
>> use all of the LLVM utilities minus the integrated assembler while
>> wrapping clang with ccache.
> 
> You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
> permit fallback to BFD.

That was close, except we're cross-compiling with GCC for arm.
So I've now built a plain next-20210203 (without Ard's fix) using
this command line:

    make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage

I'm using a modified Docker image gtucker/kernelci-build-clang-11
with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
packages added to be able to use the GNU linker.  BTW I guess we
should enable this kind of hybrid build setup on kernelci.org as
well.

Full build log + kernel binaries can be found here:

    https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-41/arm/multi_v7_defconfig/clang-11/

And this booted fine, which confirms it's really down to how
ld.lld puts together the kernel image.  Does it actually solve
the debate whether this is an issue to fix in the assembly code
or at link time?

Full test job details for the record:

    https://lava.collabora.co.uk/scheduler/job/3176004

Hope that helps,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/253b2987-c8e9-fcb6-c1b9-81e765c0cc2a%40collabora.com.
