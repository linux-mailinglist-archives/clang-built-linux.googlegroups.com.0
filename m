Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBX5K7KAAMGQEBAWYI3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9311D311D54
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 14:10:56 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id yh28sf9764358ejb.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 05:10:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612617056; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkI5ADIthKXPSk7mINAspYxsNLpLibkmiAppmN0FCfoEsyiTfqbJa87+h1kKipyZ0A
         HWV6k4Y5F28WfHwmpu41qoBY5rsqqVmg8nvIFdapxNwOO2KvLMx3EyjMWIHERahCBY5+
         8A5sR/hR0p3gnLdDcoy164P4rMvseuq83zZq8YiaAphmuOlshbpW3JV1oS84fjEsoeHm
         PB8+06m2YPVE1LN+JZel0cKF58mFMzggCR5bRqm29U1FIfVlnNQ0r7pQMtbo8x+94keO
         84MA2BCyXHKWOZaP5jpzHdTZfERi0tPN22ikISHWKHXaKpnbV7HP5N0Xak2AdsAAI28k
         HG7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OG34H+06hJiLXO6jlpEBSHk281pNLrc7BIJ1YJMjkwc=;
        b=ffnRB3MWxlpQo7wjKEB1neAC3Om93HAYFh3shm1ky80IjbHpZJC0W0zvHLcydMiq+S
         c9e/QnuZj6gVjf5zJroJHRfZxEcUOTGzMlBSXc3h7snYFQnW01AAuvbitOQp9orehJQA
         ausA+VVIyqORR+iHTdySo3vFolJGGEbvf3xFfcU1grwOYEtM6o/AgGVIEjLTpsDLPGNf
         GGT3gAdcNzX7xauanK3l3M1Zad2882vmV5ytMSKNtlTWkACL7M04No3boAQ4pKb5HjyY
         sAJivvga/f4EeuyFns22yVGdyeyHyntq1z9SXROKU8svVfgMOk3EQ7xDEq8dQb5zpq4Q
         4SqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OG34H+06hJiLXO6jlpEBSHk281pNLrc7BIJ1YJMjkwc=;
        b=WA7umDaLqgwiTNfRvyU8D6l8cT5e3OSuQJ01XSQIAH9t0OvK1i9Q+xSsvu0rgGWELx
         Hfy+oyWPOJD3MPnksrlPhjk7NVOUNR9rm8eF7WPMF4IYWmtCx8wLX5eFvIGgqpXcGqB/
         tF5dXZ9Y6ydfnF+KVajizbgNrIQ3En88kVD9erz/iFU4a1mDNk2NkkkP530H2JL9Tk5i
         AzTUkIc3KINY6nOD5qdpjlpmsk1985siPM3e1cGVUqbQwjsmqSFwNxSckALpsDP4ONSY
         Gd5uK3qPiFNduOR/vD1Vwn0v40Pri+KWSpaHSh1gN6vo5QCoSop1fEd9fHvpEHhS22vq
         7zow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OG34H+06hJiLXO6jlpEBSHk281pNLrc7BIJ1YJMjkwc=;
        b=HpN/dIngA9KZozFI8FP6bZfhO+PRhnxoBVDxwHTQVNVqMvdWQCaw9QlRjX+zqPSCA+
         p+ur1mjEX5hnqLojYutxMZx0oLwBdUbNA2fE2UhIKVljWOZN0lywSVKXXHSzCWTnA7ly
         J5DPyCZRZ78gOtRLSed/kwgze1e/f115acH5y4WwwdPcCkRP5+0YAcJwF7gPe6pcbA0y
         AWTHkPG8OHkXabclVBhgXSeCSQlLymSo1F4Hr3m9wo5aKRiqzOmDzb8Suk7kgWCNRaOu
         mF80WHj1c3dituaQECLNYhKrgtE1s5HYW6DfQ1EHyU35QHzkPOtbhIPAmnsfQ8CLXDdm
         U/MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RHh544uYVpRoUhj/hTxcx8HnLLOnaINPkEQFj5HN7g4zyQ6Uu
	z7/iAeyZG77SIAWcgStyyQI=
X-Google-Smtp-Source: ABdhPJzk6x0em5PFWdY26ln0velopzcURS5VStmbACL6UWcysWm2j3YJ/PI0sqnLnBW7YYRwtwzCWA==
X-Received: by 2002:a17:906:653:: with SMTP id t19mr8770954ejb.44.1612617055389;
        Sat, 06 Feb 2021 05:10:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:520e:: with SMTP id s14ls2565287edd.3.gmail; Sat,
 06 Feb 2021 05:10:54 -0800 (PST)
X-Received: by 2002:a50:9310:: with SMTP id m16mr8420054eda.94.1612617054437;
        Sat, 06 Feb 2021 05:10:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612617054; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyZyCKm78HNF0gzYkpjKmatD1t0kAx7gLtfzETo+Q4Zk126X7l6ji2sQoMnpEyimn3
         1otbitiCFQX+k9Q4NoNeRcQjkbZ28LuktPckYhmjCMFvxcECELK7GW7D/AhkZl2jvIRR
         EtVCRlzQpRzBYr3ri+KoQbe5gsAWNt/C4iDGT3bpSOF+2sl1gZb3Wjh6a8ooMyukF2Il
         H0rOACle/YpiMgAIlv8YkunDNyoqshPEeABro7vS04ek7r8iie9xiyz3xa/HtJw47/6k
         GNQ9jO0ADcT7FyjfQG7JzrPHqUAxXmtB/d7bYEY7h3SXD27vEnZPNdG3ibnGpr1oflYi
         U5bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=UkAQO5u0xYKe0AZw2XxArr5Pk9K48vJk8qytVt/kgCU=;
        b=L7IqbOsOagnH0FbwdEI541V0+lSMQPaNEjGiqF5a/QdEvxcWC2cM0EC9iOGagv9ne+
         Nc9eAeAy12AdjYSfER1I6HSrDXU3zmBqCayS9iqgQU11WQB18hREwo7+nNZcsu6ITPO8
         pNjnh4GOqWNyDNymAb51Qo/92dVU7kbFakfaQcCSUeWGzper9ZA+Jxqo/t9E7DbMa6cX
         ll0CjNbA/i8zBWWS8icdBernumhpAKps+jvONUQhuINvUDbC5SGNDgSnLrVZIeMo2Q66
         jaMuxoGEICsZ/x27U1FLhw/Q3rZ8mrVauEfA7IxXSuJ7F8sQduJKDSgN0bzc+pAZkkpv
         oWAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id r19si512252edq.5.2021.02.06.05.10.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Feb 2021 05:10:54 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id B3F121F4656F
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "kernelci-results@groups.io" <kernelci-results@groups.io>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
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
 <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com>
 <CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2=ugTq=bZQ@mail.gmail.com>
 <CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <7ed6fae6-eee8-5751-352b-f735ffb83194@collabora.com>
Date: Sat, 6 Feb 2021 13:10:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ@mail.gmail.com>
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

On 05/02/2021 12:05, Ard Biesheuvel wrote:
> On Fri, 5 Feb 2021 at 09:21, Ard Biesheuvel <ardb@kernel.org> wrote:
>>
>> On Thu, 4 Feb 2021 at 22:31, Guillaume Tucker
>> <guillaume.tucker@collabora.com> wrote:
>>>
>>> On 04/02/2021 18:23, Nick Desaulniers wrote:
>>>> On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>>>>
>>>>> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
>>>>>> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>>>>>>>
>>>>>>> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
>>>>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>>>>
>>>>>>>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
>>>>>>>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
>>>>>>>>> <guillaume.tucker@collabora.com> wrote:
>>>>>>>>>>
>>>>>>>>>> Essentially:
>>>>>>>>>>
>>>>>>>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>>>>>>
>>>>>> This command should link with BFD (and assemble with GAS; it's only
>>>>>> using clang as the compiler.
>>>>>
>>>>> I think you missed the 'LLVM=1' before CC="ccache clang". That should
>>>>> use all of the LLVM utilities minus the integrated assembler while
>>>>> wrapping clang with ccache.
>>>>
>>>> You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
>>>> permit fallback to BFD.
>>>
>>> That was close, except we're cross-compiling with GCC for arm.
>>> So I've now built a plain next-20210203 (without Ard's fix) using
>>> this command line:
>>>
>>>     make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>>>
>>> I'm using a modified Docker image gtucker/kernelci-build-clang-11
>>> with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
>>> packages added to be able to use the GNU linker.  BTW I guess we
>>> should enable this kind of hybrid build setup on kernelci.org as
>>> well.
>>>
>>> Full build log + kernel binaries can be found here:
>>>
>>>     https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-41/arm/multi_v7_defconfig/clang-11/
>>>
>>> And this booted fine, which confirms it's really down to how
>>> ld.lld puts together the kernel image.  Does it actually solve
>>> the debate whether this is an issue to fix in the assembly code
>>> or at link time?
>>>
>>> Full test job details for the record:
>>>
>>>     https://lava.collabora.co.uk/scheduler/job/3176004
>>>
>>
>>
>> So the issue appears to be in the way the linker generates the
>> _kernel_bss_size symbol, which obviously has an impact, given that the
>> queued fix takes it into account in the cache_clean operation.
>>
>> On GNU ld, I see
>>
>>    479: 00065e14     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>>
>> whereas n LLVM ld.lld, I see
>>
>>    433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>>
>> and adding this value may cause the cache clean to operate on unmapped
>> addresses, or cause the addition to wrap and not perform a cache clean
>> at all.
>>
>> AFAICT, this also breaks the appended DTB case in LLVM, so this needs
>> a separate fix in any case.
> 
> I pushed a combined branch of torvalds/master, rmk/fixes (still
> containing my 9052/1 fix) and this patch to my for-kernelci branch
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/
> 
> Guillaume,
> 
> It seems there is no Clang-11 coverage there, right? Mind giving this
> branch a spin? If this fixes the regressions, we can get these queued
> up.

That's right, Clang builds are only enabled on linux-next and
mainline at the moment.  We could enable it on any other branch
where it makes sense.  How about just the main defconfig for arm,
arm64 and x86_64 on your ardb/for-kernelci branch?

For now I've run another set of builds with clang-11 and got the
following test results with your branch on staging:

  https://staging.kernelci.org/test/job/ardb/branch/for-kernelci/kernel/v5.11-rc6-146-g923ca344043a/plan/baseline/

which are all passing.

I'll reply to the thread with your patch to confirm.

Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7ed6fae6-eee8-5751-352b-f735ffb83194%40collabora.com.
