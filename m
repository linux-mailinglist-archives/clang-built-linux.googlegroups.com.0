Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBONW56AAMGQENF6ORNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF67930F236
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 12:32:09 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id t4sf1857259lfe.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 03:32:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612438329; cv=pass;
        d=google.com; s=arc-20160816;
        b=NG1rm1SLi8U4p0wP+Dk0w2dfvSk1sEc/aTCzjg0WkSUNAj5JTDH48s7i1QucwF3w8X
         uTCrXQwmO9fhoMaMzFXCAPQK3f85I7N/xFDrSZD2WrzVECRSmsGfRkwU/kB9RzhtxXYz
         BK6uq4L0MewbWh1zPFIthL/EHBKLjKH/alVCuqiIte4Az/x1FEkn+AS6c1/jxMiSfjV5
         686GyHuvi3v8MuY+nlFCWqxBhtCdo/zBks8M+V2UClkx6SZdopuimQ4LexzJS0JXJA2K
         TzZIc+pY6J/1XUo9Kvh82TSv8iKx63loxPjRgMbC8gtK2vT9QqPnXCZIxv43PtFDz8mW
         vLTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=w1ecnMYP0DqxsuyYVzhaj36SIMhzcNyqS9LR4LU92Fw=;
        b=ULPMpNwaOWqEf2mSvQ4ukZKccjHFrfqsi8mDMUta+ws9w/WytewsZ4pEDE7vcb8Z9Y
         c8y6AaQ5q8jlzUVzRGRPx4hfDrnptM4G8pDLb0FUfd0rSOKE2FCHvpmBzZ6n+l+xqEs+
         An9l6Z11XnC9THdeZg62GAMYpxrRjYKwV9VdqHkm3ZKOmkJqTemIjCLrLY59r/o/away
         Uq/ytJXh+jzEUlTgfPvXJKb+cOaOHm7Shhr0ggoBbq1arzonAFTF6sU9NOT4tSu0o8eb
         3Ksf0TdwY3+OzLsBt6wHOjvmxXhPwqXBiVgW0W0OMbmIeJJxVjL+23YFt9r49q1P+2JT
         cocw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w1ecnMYP0DqxsuyYVzhaj36SIMhzcNyqS9LR4LU92Fw=;
        b=C3CLbWiUAJ5K3MQv+rJa4izRszdpC/f/Y5yV1Zyyi5XFhEO3PEXzhOOdvJAFljgN0g
         x4iIQkyDf47G+vaQttWLpvBY+5ot6QWoYKctibSx3+EmMFJSE87RJEtqyluec8bOzzcw
         kB++NJ/aKGrnR+xAzGK24lGos7IAVCaUcnM/Pj9D7D56etWe13ghjVMcBhMic4RNpz+T
         wX5gcUiZUd8hgT9BaLDtbEkYU2543vjNrLza9/tkLuKUcUENpJoVAks+AW4zPcG54Fh5
         sE7p16aOIbDGBLBwtNDCIfvFY3XRvUvU5fXD8+Z1qk51h+qhWSsgr/H2zI/BqJ4C6txQ
         x+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w1ecnMYP0DqxsuyYVzhaj36SIMhzcNyqS9LR4LU92Fw=;
        b=EO4H90jPWP9YVRWQwoXUNDuLFVP2wWumIYYJF0qMg7oMRjRLaTRDvcFMZS7FXXHaT+
         Cj7KPtcP1p2kTmVMPmcmeMGrkpxQ7b/av/3NJg1s7txwvdFaurumM7NdlcgRBO2YQA3X
         9kV/wgITq4fU4KrE1IxaV5CYsHnsuzIY/RA+dOGoG0qgTiTWuGOM3zZwlY9SkJRK4UX4
         /ZXW/ofN0RBCfVDtFHTyzZM3xlNCzM5l+De7t7ssM35D2qM+EPTn0SnsWF1B8O/BwmTP
         itndVUlX5r+hv8qQgN/UHMax0h6xhPJvCt75vpZSiKeIt44IUEMiMJZgzjeV5InV9HqO
         Vb5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bUtp/RAz3q9p4819GFfhBu3FUjz+MttqRMnshxTgNB0j7Fih2
	LM0Z19peU2fR9XG+86IDq8Y=
X-Google-Smtp-Source: ABdhPJwrUoR6/ffZhWtOvJp61Ny/zQsldl9o402F6/VU4ASNDeZYN5SNFJ6mo39V+Ix2yjtHaixWsA==
X-Received: by 2002:a2e:918f:: with SMTP id f15mr4449853ljg.357.1612438329281;
        Thu, 04 Feb 2021 03:32:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls2436054lfp.0.gmail; Thu, 04 Feb
 2021 03:32:08 -0800 (PST)
X-Received: by 2002:a05:6512:b18:: with SMTP id w24mr4159659lfu.131.1612438328158;
        Thu, 04 Feb 2021 03:32:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612438328; cv=none;
        d=google.com; s=arc-20160816;
        b=K/vkZzbLYt5Z8Bst+/dKK4xdqUIxf0b5E/5RA9iMR8RZsnyhnPK87mGlrJ0EM5XuQE
         31XUzyMQzq3ldtX2mHoz7p77YhEeqpEZ5VvAJU+NzVM8QLgSxyLofB/UZWvZRVovHtzi
         Qhod+QT9z/vaRmjDjHC73BTJWMEoonxc0ox8KCuBMfvE9yFJ4PMSursEwRcrSxJkD2bv
         jgym9Oa+WywvG556oirj+qCy9nsLebB9+2cu0pR1YaAOfxC5J2TDh1qDwPKCFZPHzT1J
         q8+NnUf3VAo3OkqnqfKIHZZQ//LNBPKmxdYkWtdgU9k8g5Ut5569cY/PP845QRLdTsVx
         V3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=kxZclXk4U0x4YBQ2S7vdy3X08LRO7OlXVt/tVeNgMwA=;
        b=LgfROXLhSJi0Qw1nhfRYh5/bOeQS0/mMXNWKPh7QH+VDLWRx+2nDRLRKsP9g30c/SY
         CY7ldzGR8Wef8vBCJc0ZCFXoVnSXy0Jybok5gE1I17g3yBHVlmzAKSriFsodfGsTkCPv
         KezTVM/GyWXolQgYCTCbIadnzwYcG/zmM0Sdqvxz1VIFp/W0NsBphnVqBB6srdK+EKcL
         geHtA+NFq33Ua2zlh435skX45olNoO8hGQ30WUnp6takyvmcHgTEwwFuKNzLym5QhwOl
         se9eIlUq6GcoIicUCXoRFE/85KJCMjZQnLW1IKTgruhgARoW9GnyKel+tIyU3dADLtbm
         WDeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id a14si290057lfb.10.2021.02.04.03.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Feb 2021 03:32:08 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 19BB81F46091
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Ard Biesheuvel <ardb@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 "kernelci-results@groups.io" <kernelci-results@groups.io>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com>
 <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk>
 <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
Message-ID: <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
Date: Thu, 4 Feb 2021 11:32:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com>
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

On 04/02/2021 10:33, Guillaume Tucker wrote:
> On 04/02/2021 10:27, Ard Biesheuvel wrote:
>> On Thu, 4 Feb 2021 at 11:06, Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>>>
>>> On Thu, Feb 04, 2021 at 10:07:58AM +0100, Ard Biesheuvel wrote:
>>>> On Thu, 4 Feb 2021 at 09:43, Guillaume Tucker
>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>
>>>>> Hi Ard,
>>>>>
>>>>> Please see the bisection report below about a boot failure on
>>>>> rk3288 with next-20210203.  It was also bisected on
>>>>> imx6q-var-dt6customboard with next-20210202.
>>>>>
>>>>> Reports aren't automatically sent to the public while we're
>>>>> trialing new bisection features on kernelci.org but this one
>>>>> looks valid.
>>>>>
>>>>> The kernel is most likely crashing very early on, so there's
>>>>> nothing in the logs.  Please let us know if you need some help
>>>>> with debugging or trying a fix on these platforms.
>>>>>
>>>>
>>>> Thanks for the report.
>>>
>>> Ard,
>>>
>>> I want to send my fixes branch today which includes your regression
>>> fix that caused this regression.
>>>
>>> As this is proving difficult to fix, I can only drop your fix from
>>> my fixes branch - and given that this seems to be problematical, I'm
>>> tempted to revert the original change at this point which should fix
>>> both of these regressions - and then we have another go at getting rid
>>> of the set/way instructions during the next cycle.
>>>
>>> Thoughts?
>>>
>>
>> Hi Russell,
>>
>> If Guillaume is willing to do the experiment, and it fixes the issue,
> 
> Yes, I'm running some tests with that fix now and should have
> some results shortly.

Yes it does fix the issue:

  https://lava.collabora.co.uk/scheduler/job/3173819

with Ard's fix applied to this test branch:

  https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/


+clang +Nick

It's worth mentioning that the issue only happens with kernels
built with Clang.  As you can see there are several other arm
platforms failing with clang-11 builds but booting fine with
gcc-8:

  https://kernelci.org/test/job/next/branch/master/kernel/next-20210203/plan/baseline/

Here's a sample build log:

  https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/build.log

Essentially:

  make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage

I believe it should be using the GNU assembler as LLVM_IAS=1 is
not defined, but there may be something more subtle about it.

Thanks,
Guillaume


>> it proves that rk3288 is relying on the flush before the MMU is
>> disabled, and so in that case, the fix is trivial, and we can just
>> apply it.
>>
>> If the experiment fails (which would mean rk3288 does not tolerate the
>> cache maintenance being performed after cache off), it is going to be
>> hairy, and so it will definitely take more time.
>>
>> So in the latter case (or if Guillaume does not get back to us), I
>> think reverting my queued fix is the only sane option. But in that
>> case, may I suggest that we queue the revert of the original by-VA
>> change for v5.12 so it gets lots of coverage in -next, and allows us
>> an opportunity to come up with a proper fix in the same timeframe, and
>> backport the revert and the subsequent fix as a pair? Otherwise, we'll
>> end up in the situation where v5.10.x until today has by-va, v5.10.x-y
>> has set/way, and v5.10y+ has by-va again. (I don't think we care about
>> anything before that, given that v5.4 predates any of this)
>>
>> But in the end, I'm happy to go along with whatever works best for you.
> 
> Thanks,
> Guillaume
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46373679-a149-8a3d-e914-780e4c6ff8be%40collabora.com.
