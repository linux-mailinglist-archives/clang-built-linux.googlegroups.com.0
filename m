Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBC6F6GAAMGQET5FS7EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id EA87D30FF12
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:09:31 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id bo11sf4212384edb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:09:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612472971; cv=pass;
        d=google.com; s=arc-20160816;
        b=L5ogD5Uqn6nnWREQH1PYI/+/lL1FUxKlYnnn8/sjAVmgENazhqXTvZgfmRyTlhG6c8
         Yo54WU6H2WkbWMr/RlK/P8rY1NSE61EXVp3Q68oqj0KqnZQxF00JsDDljAVzzUrwPHvX
         F2DLeYqJCfD3IJq9R+Nc+xgOBMbUMglL1TuuksOODc4dvlINbnU1DPaZ0A6TD/HNiGeA
         mwZmM95ssYhgx7lYowDobKn0MCkhf7A8vK3B/oZZlgzETL4Ojd/y5qEfHpp/tVGNyJpl
         /TMyXI5CI6598QCVSSUwF8sVro5DR000i1O6Ozm+KSwOaVf24d7D2MQRsbOT0NpFud4E
         pOeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vuRp/9+aQIlxhmq6kf2W8JRwWqIS+wivUb4wNZSZHo4=;
        b=nFMNtOewMXBMhH/vRj0+VrcIoqqnjf/zw7j+vX1stK7msryI8XGpL0h4DJN4Yrp2jH
         nVRs/wcD8hkPpyikgOnVqzHTBi9y8KpsCdjALPKGueLlx9u/ukvkgP2Apu08mUlF7RYv
         dgVP7Vb6DhLteiwsbiNIAmAT/uC058nHnr0XszsQ1F9JZobLRvJc7t5iP9RttUngAhc2
         sX5rheqEngAZ9U9Hrl9ToaFI/bcPC+5jFRFZK/y3wq7cEl08XCCzzvGc5k5rtEY6D8SA
         lTX0wPW6Ub8Rx6VemV3nXEs5Q6SZSZxAIdym6PUBirp6+PVei/cN9s8Fg7kwgYABLQdF
         u9QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vuRp/9+aQIlxhmq6kf2W8JRwWqIS+wivUb4wNZSZHo4=;
        b=P6w1wSdthh8jWf//6IfzgyRcqPzFZNfId39ZKCfY2UOmKm9sObv4EAsidjydYEI+Zb
         5eZgkLKsyIcpVBYg2K/u00+5MiJjzrgTnsAnTCpz4ogIWT/mkuYztciVIPF0FDufgV1h
         4uR7CuN1kC8NOL2rBQ1UAZJgMcfitaXjGBM5PyfhrtUePWCmdDi+4fah8PG0rT0A11Gn
         kLXgglkTwdTWdBpJbEKKdw2TdzmVwODNTlma1+H2H5uY/5k0+Uv3YvOfVQvw9QGlNd+A
         YjlvfYMTDu0bBCK7mqHuKsAoYH7t/QRYevqunkn6hBS0DzbecAkNhO6yVxC+u3e62w5G
         poKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vuRp/9+aQIlxhmq6kf2W8JRwWqIS+wivUb4wNZSZHo4=;
        b=ZI2TLc6zR2JysMph12VYHtXZGf2IBRW0hJiNUBhcOqK9xZFaPiXfM0CFIB+WUS5/lm
         UzI1uUWl/W8rjkv2dOZjruzNlWcxXQFbRZ0bCWRlsFFilwL5wFWTwhEYtxist+z7rjbO
         mtgLNN95nENpmc9dCdFxQjcxWNu7kkoNlymPOFnwB2zYnfr88X4w6ZZVX8uRZMoDOqI3
         cq2yE/csddSa2IUqgGjQWql7ELjpkqTXzS6q+ngoc2H8vHYHy+VGFOAAgVdc7lNBjX2A
         2Auxo5QGorWSI/cP+Na4kjJ4tC/7iu/iDxRfx/txmEZbfEVQWRsKOgFbpPWB4/OBilWO
         AqcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331vJd4eaOi6G+FarGPj4dpS93l7vF96vDTfAHGy2mpGgti8r1S
	ZzeF9vGuXXnSVnLdNdZwgg4=
X-Google-Smtp-Source: ABdhPJx4JS3Tt6MCh39joCbWqu22EogULsrjO1LGd+n9zKHtbHUCc5W9t4yakKNfTpT6kYD2MfeW5w==
X-Received: by 2002:a17:906:1241:: with SMTP id u1mr997757eja.196.1612472971640;
        Thu, 04 Feb 2021 13:09:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls4249020edx.0.gmail; Thu,
 04 Feb 2021 13:09:30 -0800 (PST)
X-Received: by 2002:a05:6402:28e:: with SMTP id l14mr492520edv.19.1612472970624;
        Thu, 04 Feb 2021 13:09:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612472970; cv=none;
        d=google.com; s=arc-20160816;
        b=ehjYxOBn+2oZ8qdd5AuGFTQN3nhouIjIoZcSYX3/kuT/6pmy08FLxoYUwW36UXGvpH
         qNElylYCzOiFe5Su4XkikRYvaEmFm6SFEx2SvvSAZbTM8JHC+Bo6hG5lZKUnlZ8RqkRE
         kCwVBZ87iC+wpUjA5w2iYbrgRYH6UAawxCV1HEliyFYjERxK5TIyhGuIvdaLpUT9y57W
         I56DGKdc2QvPei3pL+0dAoTH9ptSjs38fx0lBzEwsokGq+6j7dDFVUvNQGNEozbT20tR
         li/O712LKAwFEiksR5FU8qkC7TfqFLrUilc8X7XXNXO27w4a3neMZnhqn+Y36eAR6mXe
         NqUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=+Ch9qEduU3FE1KMVTNNKfduYera8EEfdn7WO6zqDXgg=;
        b=bOJBQmxDhbSWmFrlQrUXR2DCYMMo7AM6VLaQPSUhbgOddeGjn/Jb37t9uwpRX2+YLb
         RLR4y7XaP+mNyrp1CxEc8uhe2fmKiS6uaQqscmqouRyjaZ1CdbTJnyT/acTZUkdK5bXm
         i5hCPTBArMe5wESZXYFLtOq6T0TGMleLJBYr3HGjcDip36pI4qbACMgKpS15ZHZ62fxk
         r8XF7cAGnQHHIhnKgZGgn7OfOn79GJS3qAIhk19P+/yEjKFIcdQgmS9ZlhNb4W+YeWYV
         e0et9YCXE6V9MTOZhjMb8pXlJg8VgMs5pGNJRgmmDEIKxp1stv+GJYKP42g8WxkpuQ07
         rcpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id a15si356705edn.0.2021.02.04.13.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Feb 2021 13:09:30 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id CA9DC1F4648D
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
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
 <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <d1122a0f-8881-0686-46eb-46930fb52efb@collabora.com>
Date: Thu, 4 Feb 2021 21:09:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
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

On 04/02/2021 16:01, Ard Biesheuvel wrote:
> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
>>> <guillaume.tucker@collabora.com> wrote:
>>>>
>>>> On 04/02/2021 10:33, Guillaume Tucker wrote:
>>>>> On 04/02/2021 10:27, Ard Biesheuvel wrote:
>>>>>> On Thu, 4 Feb 2021 at 11:06, Russell King - ARM Linux admin
>>>>>> <linux@armlinux.org.uk> wrote:
>>>>>>>
>>>>>>> On Thu, Feb 04, 2021 at 10:07:58AM +0100, Ard Biesheuvel wrote:
>>>>>>>> On Thu, 4 Feb 2021 at 09:43, Guillaume Tucker
>>>>>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>>>>>
>>>>>>>>> Hi Ard,
>>>>>>>>>
>>>>>>>>> Please see the bisection report below about a boot failure on
>>>>>>>>> rk3288 with next-20210203.  It was also bisected on
>>>>>>>>> imx6q-var-dt6customboard with next-20210202.
>>>>>>>>>
>>>>>>>>> Reports aren't automatically sent to the public while we're
>>>>>>>>> trialing new bisection features on kernelci.org but this one
>>>>>>>>> looks valid.
>>>>>>>>>
>>>>>>>>> The kernel is most likely crashing very early on, so there's
>>>>>>>>> nothing in the logs.  Please let us know if you need some help
>>>>>>>>> with debugging or trying a fix on these platforms.
>>>>>>>>>
>>>>>>>>
>>>>>>>> Thanks for the report.
>>>>>>>
>>>>>>> Ard,
>>>>>>>
>>>>>>> I want to send my fixes branch today which includes your regression
>>>>>>> fix that caused this regression.
>>>>>>>
>>>>>>> As this is proving difficult to fix, I can only drop your fix from
>>>>>>> my fixes branch - and given that this seems to be problematical, I'm
>>>>>>> tempted to revert the original change at this point which should fix
>>>>>>> both of these regressions - and then we have another go at getting rid
>>>>>>> of the set/way instructions during the next cycle.
>>>>>>>
>>>>>>> Thoughts?
>>>>>>>
>>>>>>
>>>>>> Hi Russell,
>>>>>>
>>>>>> If Guillaume is willing to do the experiment, and it fixes the issue,
>>>>>
>>>>> Yes, I'm running some tests with that fix now and should have
>>>>> some results shortly.
>>>>
>>>> Yes it does fix the issue:
>>>>
>>>>   https://lava.collabora.co.uk/scheduler/job/3173819
>>>>
>>>> with Ard's fix applied to this test branch:
>>>>
>>>>   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
>>>>
>>>>
>>>> +clang +Nick
>>>>
>>>> It's worth mentioning that the issue only happens with kernels
>>>> built with Clang.  As you can see there are several other arm
>>>> platforms failing with clang-11 builds but booting fine with
>>>> gcc-8:
>>>>
>>>>   https://kernelci.org/test/job/next/branch/master/kernel/next-20210203/plan/baseline/
>>>>
>>>> Here's a sample build log:
>>>>
>>>>   https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/build.log
>>>>
>>>> Essentially:
>>>>
>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>>>>
>>>> I believe it should be using the GNU assembler as LLVM_IAS=1 is
>>>> not defined, but there may be something more subtle about it.
>>>>
>>>
>>>
>>> Do you have a link for a failing zImage built from multi_v7_defconfig?
>>
>> Sure, this one was built from a plain next-20210203:
>>
>>   http://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/zImage
>>
>> You can also find the dtbs, modules and other things in that same
>> directory.
>>
>> For the record, here's the test job that used it:
>>
>>   https://lava.collabora.co.uk/scheduler/job/3173792
>>
> 
> Thanks.
> 
> That zImage boots fine locally. Unfortunately, I don't have rk3288
> hardware to reproduce.
> 
> Could you please point me to the list of all the other platforms that
> failed to boot this image?

This is the list of platforms from kernelci.org I've gathered
which appeared to be impacted:

imx6q-sabrelite
imx6q-var-dt6customboard
imx6dl-riotboard
imx6qp-wandboard-revd1
imx7ulp-evk
odroid-xu3
rk3288-rock2-square
rk3288-veyron-jaq
stm32mp157c-dk2
sun4i-a10-olinuxino-lime
sun5i-a13-olinuxino-micro
sun7i-a20-cubieboard2
sun7i-a20-olinuxino-lime2
sun8i-a33-olinuxino
sun8i-a83t-bananapi-m3
sun8i-h2-plus-libretech-all-h3-cc
sun8i-h2-plus-orangepi-r1
sun8i-h2-plus-orangepi-zero
sun8i-h3-libretech-all-h3-cc
sun8i-h3-bananapi-m2-plus
sun8i-h3-orangepi-pc
sun8i-r40-bananapi-m2-ultra

They were all booting next-20210203 with gcc-8 but not with
clang-11.  I've run checks on a good share of them with your
patch applied and they're now booting with clang-11, just like
the rk3288 and imx6q platforms that were used for the bisections.


> To be honest, I am slightly annoyed that a change that works fine with
> GCC but does not work with Clang version
> 
> 11.1.0-++20210130110826+3a8282376b6c-1~exp1~20210130221445.158
> 
> (where exp means experimental, I suppose) is the reason for this

Well it's the standard one from the LLVM Debian package repo:

  deb http://apt.llvm.org/buster/ llvm-toolchain-buster-11 main

There's a slightly newer version, I doubt it would make any
difference in this respect unless there's a particular fix in
ld.lld:

# apt policy clang-11
clang-11:
  Installed: 1:11.1.0~++20210130110826+3a8282376b6c-1~exp1~20210130221445.158
  Candidate: 1:11.1.0~++20210204120158+1fdec59bffc1-1~exp1~20210203230823.159

> discussion, especially because the change is in asm code. Is it
> possible to build with Clang but use the GNU linker?

As mentioned by Nick, it is using everything from LLVM except the
assembler - so not the GNU linker.  I've now built a new Docker
container with the latest LLVM package version (.159) as well as
gcc-8-arm-linux-gnueabihf to try with the GNU linker and see if
that makes any difference.  More on that shortly...

Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d1122a0f-8881-0686-46eb-46930fb52efb%40collabora.com.
