Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBXMX6P7AKGQEYCJWSQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AB42DE6A6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:33:50 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 137sf1796799pfw.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:33:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608305629; cv=pass;
        d=google.com; s=arc-20160816;
        b=dl0k9Qj9F61vvF6Ijc1OE5lflL1SudnIS6/9Lv6+A8gtxQ9yBfO6Gdap9eegmizHGn
         e0sN+UZSEbyxFzjmrESWPmk1ewYbNE4ZHSwoTJkZjI6kkHKjxCDC123TA+597feuO/Ex
         1zzvclSSWHFAKdG4m70CRBaYped/iG1si60nqQgFDKRu+Xrma+xkjF6hgpLbtWmfvfw2
         IsUaFvjWdeNRXEwYhh4Xm6tXhAmF+DQP7fV6HilP+k8QqBLiZcCm1bhXYscze/887R/i
         SULyNwmrYsSwMexcMF5ZpUpkT2PesRjWZyD1ZH82HqNUMMXKRj+0/VEZu2XbRYB+HLn+
         fwzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=z/u/x3KZZjZyUtNsrqwNQbL5ik5kOZ8CMYO65J3sPP8=;
        b=sKMJ1KMX5rsiTOtN15HEGqCu8oOPrvr/46na0AsstfeuFfZmHIUMvTSUNVXoArNKV3
         L9/A7rXkBGsLHaPqSDbT87mkobl3h156MtFUBSR+L99d5X1AHlG+EX0KgdIumAdAEXc+
         X0FrkGLa+NxunQEBBkql9AXM88pZUrjBH9V5+hK5v6AiEo7VGSljy/1nFd5knS/fx4TG
         4HKAdpivT+2KdxmYW5Ubw9QB+ViGdPR9IBz0WzeEH/GVCH0/Wshw3oLtHB7p8f0YBPCv
         MfCHBNQyb7t+zoQbJNTvvqTqtZBZ1vzTbKtVzd254DNPmxEcPE5Gk5rDMky8+0YlebV1
         Nxxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=C2uI9yVK;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/u/x3KZZjZyUtNsrqwNQbL5ik5kOZ8CMYO65J3sPP8=;
        b=bixAO/KvPCaBCtmkcsShobCo42auqKpnShAvSGCaG7ng+9BW5GGnq34urF7pPPUkom
         ycIM9OL1wyjJMWC72iTCMLMk5ZDXr/7iK3JymEX35DOWmbc5CCD1Y4Y1M/Rbazg/bvs0
         Y4nn8ziAnQ+1FVc5n3xqCxCEfc77af+ucaeQDi7ppxPQBZFpc9S/32gPtmbj+Ubz2Ej0
         2KGa0GqPrekyKCg2jCFu6oOAlJSe8QX9sDm/s9v6/dHiaJ1VuLL7FeupgKAYBjAJfZ0h
         yn3Nezz69RDELGHw1WuhmjxrzlB+9Pw+XW0iszRdo+W4nyLiRXOQQgJ5P2ceKYbSYoq0
         bxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/u/x3KZZjZyUtNsrqwNQbL5ik5kOZ8CMYO65J3sPP8=;
        b=mDobCf8g1r1/sWwvlFgST/D7zX9Uusp4MImphoWs2QBC9fegWO26Pka0P74jcslvyf
         H7ecTbbVZhPdVBfCxHr3tgWodk+i3epn/5iyJDkK8FHQiENnolmDBUx91oXDEpLwI5w4
         niQ73+vobhYtDxBR1ZIFIBkFrA2vPvEOBaxnfyxtvCx4wwzMOaHJ++rNtwXvKBtYULmt
         jUuPig4Yj+gHkL4GSTsIwG06ekHG8aCdv6wDkgN+I/khZeXacgmyrLmlld9r1l9Vhop9
         wsNqERaSd3+b364X4JgTfWQm39K1+zmkVu7JXJt+Rv9VJdZGsOaam1lSG87HfYdx8zIx
         EkIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M80wXj6NiDaHtzi1RxlHT89B5if3+4pwmm8fisnHqDhfFSvsa
	FeaTFXkB7elO7TwVd0EdW4Y=
X-Google-Smtp-Source: ABdhPJyIp9fA/PnV0qmmTXKyE+hpVIlonk68FPISk9iFURRPlZxSR6YxOVB3kmpdl1UfQW0AZv7WhQ==
X-Received: by 2002:a62:384b:0:b029:19d:a5c6:d76 with SMTP id f72-20020a62384b0000b029019da5c60d76mr4382483pfa.16.1608305629245;
        Fri, 18 Dec 2020 07:33:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls14841941pls.10.gmail; Fri,
 18 Dec 2020 07:33:48 -0800 (PST)
X-Received: by 2002:a17:902:b601:b029:da:d459:65dc with SMTP id b1-20020a170902b601b02900dad45965dcmr4802369pls.26.1608305628465;
        Fri, 18 Dec 2020 07:33:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608305628; cv=none;
        d=google.com; s=arc-20160816;
        b=qFox0L6a87SwdJXHonGRZEHp3A0S7QL58Em/okUhKKTDHFtz6zFDDv1z+JNTQ5G6F+
         A0xbZ8sFww7ynULJST12jdkdG5GwlIppdtg2+EyzFNMCB0DCe4xzzENT9XC+XDpGWxFf
         2JIae/fLZ4ES7u7v8fP0+hBPtdHC1kVZbDjeJXmg7h0PJaBGGbCufCJAwUNJSPvhPkye
         LvO8veactTXpGAJbKsJxySoA2WZnvohEWJHMBY3c+r7zFEG3h+fPbU3e/3tii8IW/xb9
         hBkvbT7ntwG8bFmeGAO88Hh1Wds3jElLT1ESHXHEoUc8wfdio3hV7/t3xI7OwC7jRPAY
         2oSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject;
        bh=odSmLfTxrpZot9VnSSEPJy+l6LjXBu7/qmxNqGpwNp8=;
        b=HuhzwjTdr5gfXypX6h+TQnX64u5/+CyT7twydE2In32eeXY1nV5ssUNJr7ZOPwJOat
         wpTQ92rpc88540gc4oCkEzE5ihx/3FQBQxddGux0dMAOHWygwIHj2fNLDZ3mCu+WnGtZ
         hcxXunAfQUTX9kldeLI5rLWK7mKB02YG/xuh1Fm4tAwLFh27M7NyAGtxjseGnFUhFqGO
         26bSMfQSneZU+2dEMTYPUJkvHCuYKwYnZc+RGf9tvF5/EJQYl/2O6nREf72vwZdSrXbJ
         mbxoXq7+hL2spXPnRZFPl2uFC/zZGZ/0TyuKkfcKOoSqZUz61BL76JwnWLpQOPYM8yOs
         nULA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=C2uI9yVK;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id e19si932034pgv.4.2020.12.18.07.33.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:33:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fdccbdb0000>; Fri, 18 Dec 2020 07:33:47 -0800
Received: from [10.26.73.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Dec
 2020 15:33:38 +0000
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
From: Jon Hunter <jonathanh@nvidia.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Masahiro Yamada
	<masahiroy@kernel.org>
CC: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Kees Cook
	<keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
	<linux-hardening@vger.kernel.org>, Linus Torvalds
	<torvalds@linux-foundation.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, "Linux Kernel Mailing
 List" <linux-kernel@vger.kernel.org>, linux-tegra
	<linux-tegra@vger.kernel.org>
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org>
 <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
 <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
 <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
Message-ID: <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
Date: Fri, 18 Dec 2020 15:33:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=C2uI9yVK;       spf=pass
 (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=jonathanh@nvidia.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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


On 18/12/2020 15:12, Jon Hunter wrote:
>=20
> On 18/12/2020 15:09, Marek Szyprowski wrote:
>>
>> On 18.12.2020 16:03, Jon Hunter wrote:
>>> On 18/12/2020 10:05, Marek Szyprowski wrote:
>>>> On 18.12.2020 10:43, Masahiro Yamada wrote:
>>>>> On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
>>>>> <m.szyprowski@samsung.com> wrote:
>>>>>> On 03.12.2020 13:57, Masahiro Yamada wrote:
>>>>>>> Linus pointed out a third of the time in the Kconfig parse stage co=
mes
>>>>>>> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
>>>>>>> and directly testing plugin-version.h for existence cuts down the
>>>>>>> overhead a lot. [2]
>>>>>>>
>>>>>>> This commit takes one step further to kill the build test entirely.
>>>>>>>
>>>>>>> The small piece of code was probably intended to test the C++ desig=
nated
>>>>>>> initializer, which was not supported until C++20.
>>>>>>>
>>>>>>> In fact, with -pedantic option given, both GCC and Clang emit a war=
ning.
>>>>>>>
>>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };'=
 | g++ -x c++ -pedantic - -fsyntax-only
>>>>>>> <stdin>:1:43: warning: C++ designated initializers only available w=
ith '-std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
>>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };'=
 | clang++ -x c++ -pedantic - -fsyntax-only
>>>>>>> <stdin>:1:43: warning: designated initializers are a C++20 extensio=
n [-Wc++20-designator]
>>>>>>> class test { public: int test; } test =3D { .test =3D 1 };
>>>>>>>                                              ^
>>>>>>> 1 warning generated.
>>>>>>>
>>>>>>> Otherwise, modern C++ compilers should be able to build the code, a=
nd
>>>>>>> hopefully skipping this test should not make any practical problem.
>>>>>>>
>>>>>>> Checking the existence of plugin-version.h is still needed to ensur=
e
>>>>>>> the plugin-dev package is installed. The test code is now small eno=
ugh
>>>>>>> to be embedded in scripts/gcc-plugins/Kconfig.
>>>>>>>
>>>>>>> [1] https://protect2.fireeye.com/v1/url?k=3D03db90e1-5c40a828-03da1=
bae-0cc47a336fae-4cc36f5830aeb78d&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e91=
8bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwjU4DCuwQ4pXshRbwD=
CUQB31ScaeuDo1tjoZ0_PjhLHzQ%40mail.gmail.com%2F
>>>>>>> [2] https://protect2.fireeye.com/v1/url?k=3D965b670a-c9c05fc3-965ae=
c45-0cc47a336fae-e34339513ff747c0&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e91=
8bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwhK0aQxs6Q5ijJmYF1=
n2ch8cVFSUzU5yUM_HOjig%3D%2Bvnw%40mail.gmail.com%2F
>>>>>>>
>>>>>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>>>>>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>>>>>> This patch landed in linux next-20201217 as commit 1e860048c53e
>>>>>> ("gcc-plugins: simplify GCC plugin-dev capability test").
>>>>>>
>>>>>> It causes a build break with my tests setup, but I'm not sure weathe=
r it
>>>>>> is really an issue of this commit or a toolchain I use. However I've
>>>>>> checked various versions of the gcc cross-compilers released by Lina=
ro
>>>>>> at https://protect2.fireeye.com/v1/url?k=3D053727b6-5aac1f7f-0536acf=
9-0cc47a336fae-5bd799e7ce6b1b9b&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918b=
de3&u=3Dhttps%3A%2F%2Freleases.linaro.org%2Fcomponents%2Ftoolchain%2Fbinari=
es%2F and all
>>>>>> fails with the same error:
>>>>>>
>>>>>> $ make ARCH=3Darm
>>>>>> CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eab=
i/bin/arm-none-eabi-
>>>>>> zImage
>>>>>>      HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
>>>>>> In file included from
>>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/b=
in/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
>>>>>>                     from scripts/gcc-plugins/gcc-common.h:7,
>>>>>>                     from scripts/gcc-plugins/arm_ssp_per_task_plugin=
.c:3:
>>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/b=
in/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
>>>>>> fatal error: gmp.h: No such file or directory
>>>>>>     #include <gmp.h>
>>>>>>              ^~~~~~~
>>>>>> compilation terminated.
>>>>>> scripts/gcc-plugins/Makefile:47: recipe for target
>>>>>> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
>>>>>> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error =
1
>>>>>> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' =
failed
>>>>>> make[1]: *** [scripts/gcc-plugins] Error 2
>>>>>> Makefile:1190: recipe for target 'scripts' failed
>>>>>> make: *** [scripts] Error 2
>>>>>>
>>>>>> Compilation works if I use the cross-gcc provided by
>>>>>> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which=
 is:
>>>>>>
>>>>>> $ arm-linux-gnueabi-gcc --version
>>>>>> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
>>>>>>
>>>>> I can compile gcc-plugins with Linaro toolchians.
>>>>>
>>>>> The version of mine is this:
>>>>>
>>>>> masahiro@oscar:~/ref/linux-next$
>>>>> ~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
>>>>> arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
>>>>> Copyright (C) 2017 Free Software Foundation, Inc.
>>>>> This is free software; see the source for copying conditions.  There =
is NO
>>>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PU=
RPOSE.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> Maybe, it depends on the host environment?
>>>>>
>>>>>
>>>>> Please try this:
>>>>>
>>>>> $ sudo apt install libgmp-dev
>>>> Indeed, it was missing on my setup. Sorry for the noise.
>>>
>>> So this change also breaks the build on our farm build machines and
>>> while we can request that packages are installed on these machines, it
>>> takes time. Is there anyway to avoid this?
>>
>> You can temporarily revert 1e860048c53e (this patch).
>=20
>=20
> Again that works locally, but these automated builders just pull the
> latest -next branch and build.


However, if you are saying that this is a problem/bug with our builders,
then of course we will have to get this fixed.

Jon

--=20
nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7e691a61-bf4b-0594-8d6d-36d62a5def0b%40nvidia.com.
