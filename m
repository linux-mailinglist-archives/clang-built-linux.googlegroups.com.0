Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKON6CCAMGQE4SAXECI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CE337D3B9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 21:04:10 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id l7-20020a9229070000b0290164314f61f5sf20318509ilg.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:04:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620846249; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pc4PO5zvnk52JiY8ltey9aatUEvHSDdWflgdjWlLY749ML5/VK3YQYAy1luCj5sr1G
         1FimzmaUp29u8yMB5DLXTcWWIDy2OvnDv0lZLIIEdp6bWrtKB/6V8DR3C64VhvwKVqVW
         UIYKO0Chpi8PlJ+5V9YE0LAYLK32wsMz1/KfjsThV9en/rDyUFT6xxIcgnasHO1TvwEk
         ww+iX/pPy7KRn/YFe/n5erERSvxwb0AtJoVTXPezazZdn/gllNe13+Ho9/lr+XEHJxsa
         bIU8yKswRt5vrdPnzsf7u0o4BmkNVIaA0eWChTZEOtZFdwxZNHzna8f/iDzjBZ/eXg0h
         ivLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Mp7XfuJfZLGK5sL3wZqrWY1GDQiFaeLCk9bdHyeavis=;
        b=fqwG5uw1KnpMnyRtCLCvxAOcTANgEvJ0yhRxF3q895w1wrGRd96zfb4/R8XxbDiBm3
         Oh7IcML8MO5PSS9IQjtw4TtufX1XnMDKQ8SVLnft2kRDtroKXIlCNv8avyMW2w8z9Lb8
         V3EidoYkD1/JYLcAhqdH5SFndvRNTAVYrXKpWPKnScJnnZr6ft/w7alNHeYcrnHJVhhc
         5q04dB0fMCJTyfsbmolC6s1OJj1Uji0FST1qOKd5dKCKmYf7V4mTG5vdMseSdwTuBvRU
         gnkrSgPmS9wfMkRfIwKU4KnreUIslj+vVTFd5S9NTrOuelMfPIZdX50cJx9s0mBn0sDo
         UhUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EEL2DFdT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mp7XfuJfZLGK5sL3wZqrWY1GDQiFaeLCk9bdHyeavis=;
        b=ZuGIDE3yeIVGW0IaROpILqvEGRtcT0pxqYs9st62sA18c6OsBanWpyGFR7VCbWSjcn
         ZULSEt9dItEu+wQIBFt3qNyRr2LE+ifgHA8l9vj4Ukoz+c6tLbW94+7kxBwqtGZiu99y
         ns3oA3724DFh828p9kHCJUM/TYY3UmCfxodZgUa2iM6lH05c8FxFfF9ABzad1aO/KPI+
         ddW5LKhUf70OHF98tHKKMLDkhPSeEACXLa3sBXoxDUdoQcgRe7jHIyLBnrQ5wzLnx5ql
         9kJklcwi29vQTEHYL8eZWy8dq44t14i8Sxyc1dcSveK6/GdWN6BnO62+Ey4fJ5vxQHxZ
         sVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mp7XfuJfZLGK5sL3wZqrWY1GDQiFaeLCk9bdHyeavis=;
        b=klBolJcbUy/ptTvnXL1aZD/5+u3vBGX9o4D4sGIRU3jCjOP6zFW5pMgYv2urI5yhVv
         /pdvg6DvfVDHXFzJ2PRSTtmDnFeWyHm7p6t6q7Exon7ZBiWvarU7MRvSupx8aGTYa2J7
         wEByTaw6Y+iMbr7O54o2K3k2kitc+2aykkWUqCCZpuuB9yj7hUAt4MIHW+uUxc7xLK3B
         UjfuPIOA6mq/ZHSYDBMAmqDZ2bxtvqA6dVX4nwvamPQ2P91YcbI75J1TQSaN9oOV9ePA
         vhTHej6PMFmW/9S/z4UpRxCTDLwBbRDNM2ogUGE3NiJEj48xo4lspZv7dzIbeER3uHsa
         Q8cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300SX1vTcxDlI4bnF793iKTU5ZrPlOrO37E4ogJQdC38mbvC8/R
	0/rt9m9PW2SfxZ6oeZdpYvk=
X-Google-Smtp-Source: ABdhPJye7JBejVE64meALEn+3mFb9Yd06oBxr0lC88boGx0G1CrwiKdU7IjiseIW7zdeYICO+hlP4w==
X-Received: by 2002:a5e:930e:: with SMTP id k14mr16827954iom.136.1620846249373;
        Wed, 12 May 2021 12:04:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1689:: with SMTP id s9ls506699iow.1.gmail; Wed, 12
 May 2021 12:04:09 -0700 (PDT)
X-Received: by 2002:a6b:b8c3:: with SMTP id i186mr28244024iof.38.1620846249014;
        Wed, 12 May 2021 12:04:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620846249; cv=none;
        d=google.com; s=arc-20160816;
        b=QKk3VI0c4+mh+hH7WJVFC5lkN7d+yfEF7Aq5ODeFv+K+s45ZvvwuWwyY7lqtQ7z9Dj
         YwSHkZBd9LZEkJNAEraEcOgLNSuX49O9oevDs+ZkTHDpeqRfE2I4JGmQ6p894aZo5in/
         Nyt13ni3f5nbOimFW9ad+UtkrwhT9vuGmhwRXWmxMEfUOp6JJk2O3xMiC7iZ7uCx5Niw
         9YiYjYc8P4tbpaN5mlRVPHZ819Zn/qyu6vU8DyqMGXbdrNYDwtwBOCSRZFVuC9ML/faV
         ts1rAilSZoEZ/p6xzw3NDiilrR8g3aNVMf5n4+DKU/EGnA7Xv7JV1iqYW+MsUP7dfs7F
         ZYtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m1Ym4P6y/hm2oVL8zHXrN8eTzF+EWAufnHntEEAAPis=;
        b=tZum3OLShOwCrXh6/5pV4RNU2zpeVFPZ4tnWmJTtMbl8sfy3U5uDoH76yth9Q8VwVX
         hXPBPEV/9kwWdAQe2qsLD6KxN2s2BjviGvBx7q8BVMUzM1HX9Eqt2zv+zOTj1obSIvqA
         oA38YTHT5iIGnvsFYnpc3zikwrDG2Jebd+qS0E7MxS55O3/AGO/nkUlgf5cExOYIqSAh
         /OHNxit7+Tx/HH3OrcOOkP8qWRPpGqqv0iVAqqOi0hh/HA4rOnaU+OTMsQ9s/Xdaa1sk
         eWlNOJ53Lnk9+3bWMZy4E1VwAF5OFlWTT6W95OhqlgWXgLF5Kvb3Irb6hhiTnNKVifuf
         jKFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EEL2DFdT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z2si90144ilo.2.2021.05.12.12.04.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 12:04:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8369D61352;
	Wed, 12 May 2021 19:04:06 +0000 (UTC)
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org,
 lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Huacai Chen <chenhuacai@kernel.org>
References: <20210512144837.204217980@linuxfoundation.org>
 <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com>
 <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
 <YJwjuJrYiyS/eeR8@kroah.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org>
Date: Wed, 12 May 2021 12:04:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YJwjuJrYiyS/eeR8@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EEL2DFdT;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/12/2021 11:51 AM, Greg Kroah-Hartman wrote:
> On Thu, May 13, 2021 at 12:18:32AM +0530, Naresh Kamboju wrote:
>> On Wed, 12 May 2021 at 23:26, Greg Kroah-Hartman
>> <gregkh@linuxfoundation.org> wrote:
>>>
>>> On Wed, May 12, 2021 at 10:53:04PM +0530, Naresh Kamboju wrote:
>>>> On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
>>>> <gregkh@linuxfoundation.org> wrote:
>>>>>
>>>>> This is the start of the stable review cycle for the 5.12.4 release.
>>>>> There are 677 patches in this series, all will be posted as a response
>>>>> to this one.  If anyone has any issues with these being applied, please
>>>>> let me know.
>>>>>
>>>>> Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
>>>>> Anything received after that time might be too late.
>>>>>
>>>>> The whole patch series can be found in one patch at:
>>>>>          https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
>>>>> or in the git tree and branch at:
>>>>>          git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
>>>>> and the diffstat can be found below.
>>>>>
>>>>> thanks,
>>>>>
>>>>> greg k-h
>>>>
>>>>
>>>> MIPS Clang build regression detected.
>>>> MIPS gcc-10,9 and 8 build PASS.
>>>>
>>>>> Maciej W. Rozycki <macro@orcam.me.uk>
>>>>>      MIPS: Reinstate platform `__div64_32' handler
>>>>
>>>> mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
>>>>   - mips (defconfig) with clang-12
>>>>   - mips (tinyconfig) with clang-12
>>>>   - mips (allnoconfig) with clang-12
>>>>
>>>> make --silent --keep-going --jobs=8
>>>> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
>>>> CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
>>>> clang'
>>>> kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
>>>> for constraint 'x'
>>>>          do_div(tmp, (u32) div);
>>>>          ^
>>>> include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
>>>>                  __rem = __div64_32(&(n), __base);       \
>>>>                          ^
>>>> arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
>>>>                  __asm__("divu   $0, %z1, %z2"                           \
>>>>                          ^
>>>> 1 error generated.
>>>
>>> Does this also show up in Linus's tree?  The same MIPS patch is there as
>>> well from what I can tell.
>>
>> No.
>> Linus's tree builds MIPS clang successfully.
> 
> Ick, ok, I'll go drop this and let a MIPS developer send us the correct
> thing.
> 
> thanks!
> 
> greg k-h
> 

I think you just need to grab commits c1d337d45ec0 ("MIPS: Avoid DIVU in 
`__div64_32' is result would be zero") and 25ab14cbe9d1 ("MIPS: Avoid 
handcoded DIVU in `__div64_32' altogether") to fix this up.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8615959b-9054-5c9f-0afa-f15672274d12%40kernel.org.
