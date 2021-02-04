Return-Path: <clang-built-linux+bncBC5KPPH4YUKRB65Q6CAAMGQEYXWYV2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F96430F6CF
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 16:53:32 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id b201sf2224400wmb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 07:53:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612454011; cv=pass;
        d=google.com; s=arc-20160816;
        b=cTym6i6PciWFCC3hi0GVHXIgplg3tvTMk7jaSApcpA8kLRRYCdLls1xm/IaxVFTyeO
         n1i9P+jr2eCPGDHmw6hizt7/GsFuVL/0oJA0XNqXCk9fuJui5gXLlKYC+zFGWUIXw/Yh
         lDDT5/wLNzE80TRjcAsdjqJCkjOKzAJtwVa2Am7o7wAuPzJVMFP9/FwJgGp9aYGI2Kx8
         WdmjDRTSROcitJ9rnX0Q6xiApXL5BoFNQ5BzESZQvdbB+EF8y6gBEaANIHnp3n8rLc8v
         B605hpDPX1fXQtmjMMZOY1++6D2Oqr/1G6wnE/naN6gj10vSR+8dTyKg9pVmYNYDrFQ4
         0j4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=7T5upDtJaRSgqKePLwgpnuDgfpU3kb80ybivcS98onk=;
        b=udoGz97xe5P4+RZBzqwFqOIPDVQSqgpyX5FQJSUupzDQi5Qech9II7DCO+Cd0+Wj+o
         44ONO7f50LXOctwRYoczNMuZO4B08PpnKqKHMvWyd0gYKXVqaumMH1cVWfmC8VLbYhMZ
         sV1C1R9Uzu+WmS44VqusJNL1qWzLydmo96Tjtn1jEgoQR09yqruY2Wnk6s6BFSphdhWP
         9vFGYGt8qyrZg6tHQpZ3gTLBPPGcqat4kXQThKuAnShyxzbddroQhhFbMy9DDmrgX0LE
         DvvfGY89Eap7HLxY7LRHDjQAr7Ys7AraKB1/awfQyM1tcZfb3BOwdlyxljBYK8qFWI7A
         z+LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7T5upDtJaRSgqKePLwgpnuDgfpU3kb80ybivcS98onk=;
        b=AX8LWM5Pknt8yxBMfjSqsfA2mhD0EGuA2UdIMKD0U5wtRcLnJs1cXgd4FU+6uCkE4f
         Do5N6phTaKmHpmt9wvSa8q/OLLxdM1ICYfaI2j3K/ro2uFh46WvkGzCctsJDswE6nnvk
         4VnHlb+HZtA9Qe5H6O90CDxgJuDzwztmrAVp/mT11MvboZS42tUPc10tGa5GKcc1krnG
         +0FQqcXSaaEMFQ9kP3Md4MhkOwII8tIfncxqiGnhhYkbweJ3+dYB/SalDIRSHDlUZLEd
         ywQRKeDgL74/SPx2B1vrS3sl7u2ZcqzcnZlJOerBOT84Pw4AVCXVsqe2k1uYfRaAX6Wq
         IPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7T5upDtJaRSgqKePLwgpnuDgfpU3kb80ybivcS98onk=;
        b=UStmN5PChhgALBvwgk4rMouiSzCNf57wjx9uSRSg135lzErChhfOoGiv5Bp8db2NCm
         crxoV/gZ1FJQ64pk3lR/lJlRMupnkOXUAv91aYz9WZYU5Yl/PcADIEV4nUUs4wQIlEL1
         xrYjzn1+487ooVblpPaeRlpqrDYIxFtCzW2jSetPJVFvD5B8hPY9D4k9p9ImROpeY35S
         FiPUuTDH53e+vKatzF6HW6DWx9lN0UelijGVi6etGIdabJlx5jFkLkwrPcKvSZ5zF4Qc
         vD5tNtyaMnGwq5zhlzwHGhF4Ywm8EFmI50srouCL8bsZCbLRV0wIzI8iow58/+LnXbMA
         mUYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nLL12OxaPAJJOwQD5ulLfXUKZH6XTP5AAjyIjUJiNVGk9m1IK
	TIoQi7L7hnj9xn2xWX9CCD8=
X-Google-Smtp-Source: ABdhPJyGooTFYaposm7pgjNvgQzMIdFo4oGHxLSas26xLMxGmt6FVB+yaQ0CIDNcUooarjbwKxQGFg==
X-Received: by 2002:adf:e389:: with SMTP id e9mr10154195wrm.73.1612454011737;
        Thu, 04 Feb 2021 07:53:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d02:: with SMTP id z2ls599177wrt.3.gmail; Thu, 04 Feb
 2021 07:53:30 -0800 (PST)
X-Received: by 2002:a5d:53c3:: with SMTP id a3mr9820560wrw.43.1612454010706;
        Thu, 04 Feb 2021 07:53:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612454010; cv=none;
        d=google.com; s=arc-20160816;
        b=p6oIhbZ3EDNyemKhU1aJOgTtstmtjwACZCwqWvyxoabJcV5C60cNoHAKHJD4EgwjqR
         BwwZZj/OOG22PBpk6kTLmP+xX3oTNC8CMMnAVu7gJSJ1qMiPl3v2OFxzCG+7ZfjQZU4S
         RsKJjB3Nvtc4bTia+F2kXemQhjruj5o4hs2aWtKGx2LXOvFiWP23HuhuGykcXOFuHm2P
         0wwIhr2SNBIrkHSofapU8cCllJgBziuGyYnuEFBoz/EF7ytZ089qNOpTLkHLTj9s66Ep
         sJhwIQ3BMG+v3GfbVBVhp6NBlX0doZn/UoGoelb4pp7B7BZxvjv721HJWzXL6jAO12SJ
         cNcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=e1dsF1y6HmyULTq+ta6MZbBOFYTWGt1KhildMT8Og4Y=;
        b=rK0yGYVQnsbPeiPMaWe1qvl8w17WDJYDQODd6zZAbi67yYsmp27+omS4QnVCxM7Q2m
         IL4JCTxo6HNqIhy3dgxpO40i2QBhn9DqQKD7ZV7U+aOqI3jMyuuVM6ecv0d13uYAI5k2
         d190KmecT6lLjuXqeMUlIrRyfzvzS1ysavLI0SZc7Q0/G/0jy9vEnT12vnI0Wrzxo0RP
         MVypKkU2qISPuf2Nw84ysshA6SaR/a0sPWt8Sq1RIp0qlg4++/0yi0WVTlFva8I45v82
         jSKJPxqKzzvwLaZDXDb3zdKgZltPkUC2ITfy0YAZt58FGzC1C7+dJ7UDYbqr6w0CLay1
         2ZWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id e11si334907wrd.3.2021.02.04.07.53.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Feb 2021 07:53:30 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id EF8D01F463D3
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
 <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
Date: Thu, 4 Feb 2021 15:53:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
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

On 04/02/2021 15:42, Ard Biesheuvel wrote:
> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> On 04/02/2021 10:33, Guillaume Tucker wrote:
>>> On 04/02/2021 10:27, Ard Biesheuvel wrote:
>>>> On Thu, 4 Feb 2021 at 11:06, Russell King - ARM Linux admin
>>>> <linux@armlinux.org.uk> wrote:
>>>>>
>>>>> On Thu, Feb 04, 2021 at 10:07:58AM +0100, Ard Biesheuvel wrote:
>>>>>> On Thu, 4 Feb 2021 at 09:43, Guillaume Tucker
>>>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>>>
>>>>>>> Hi Ard,
>>>>>>>
>>>>>>> Please see the bisection report below about a boot failure on
>>>>>>> rk3288 with next-20210203.  It was also bisected on
>>>>>>> imx6q-var-dt6customboard with next-20210202.
>>>>>>>
>>>>>>> Reports aren't automatically sent to the public while we're
>>>>>>> trialing new bisection features on kernelci.org but this one
>>>>>>> looks valid.
>>>>>>>
>>>>>>> The kernel is most likely crashing very early on, so there's
>>>>>>> nothing in the logs.  Please let us know if you need some help
>>>>>>> with debugging or trying a fix on these platforms.
>>>>>>>
>>>>>>
>>>>>> Thanks for the report.
>>>>>
>>>>> Ard,
>>>>>
>>>>> I want to send my fixes branch today which includes your regression
>>>>> fix that caused this regression.
>>>>>
>>>>> As this is proving difficult to fix, I can only drop your fix from
>>>>> my fixes branch - and given that this seems to be problematical, I'm
>>>>> tempted to revert the original change at this point which should fix
>>>>> both of these regressions - and then we have another go at getting rid
>>>>> of the set/way instructions during the next cycle.
>>>>>
>>>>> Thoughts?
>>>>>
>>>>
>>>> Hi Russell,
>>>>
>>>> If Guillaume is willing to do the experiment, and it fixes the issue,
>>>
>>> Yes, I'm running some tests with that fix now and should have
>>> some results shortly.
>>
>> Yes it does fix the issue:
>>
>>   https://lava.collabora.co.uk/scheduler/job/3173819
>>
>> with Ard's fix applied to this test branch:
>>
>>   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
>>
>>
>> +clang +Nick
>>
>> It's worth mentioning that the issue only happens with kernels
>> built with Clang.  As you can see there are several other arm
>> platforms failing with clang-11 builds but booting fine with
>> gcc-8:
>>
>>   https://kernelci.org/test/job/next/branch/master/kernel/next-20210203/plan/baseline/
>>
>> Here's a sample build log:
>>
>>   https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/build.log
>>
>> Essentially:
>>
>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>>
>> I believe it should be using the GNU assembler as LLVM_IAS=1 is
>> not defined, but there may be something more subtle about it.
>>
> 
> 
> Do you have a link for a failing zImage built from multi_v7_defconfig?

Sure, this one was built from a plain next-20210203:

  http://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/zImage

You can also find the dtbs, modules and other things in that same
directory.

For the record, here's the test job that used it:

  https://lava.collabora.co.uk/scheduler/job/3173792

Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7c685184-8688-9319-075b-66133cb0b0c3%40collabora.com.
