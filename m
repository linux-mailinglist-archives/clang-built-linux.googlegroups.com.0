Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBNUJ6P7AKGQEUCEJJNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0FA2DE5FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:03:20 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id a5sf1209357oob.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:03:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608303799; cv=pass;
        d=google.com; s=arc-20160816;
        b=lqfwUq7Z5xS6qiDMvdgjivs5cgGpos11aH1zDmFjNQyaSebbu8fOpeH8Oe69/ibhxF
         52GVd+zzDhw1hlfCBlBhMDbo5G2m4Lf/dlysPq17NeurVlHm7/d+qZwKKQfrc5KFeqcm
         llh612J5ITK06GyfBjkRJJh9bled1BGwE8ho1RpQFBiUjEzQi++b3iAO/lQOJ3l5p/2W
         Dcs0/chNiTos/2/NhIKyXquBElhDq2Kbi244EPxGWS8Es6ndWAIeUXTZTsusi9r0FvwC
         TCxBF50HBMepK+GMm9qk8grbTjtsbVDlaCtnI+++MUg3+0gDSVHnEbKS3lEXhNkpn1cj
         M9zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=lhzo7zGHjTaruVkj4Dwjt26z7XsgT2H/iRHX3ZFdWCg=;
        b=mpRE9Dx6tZmOY/44H4ZR2VH7GB4/2nZFhLhf0jjAU7y3pQVje3Q8k8Erm0c20NeHVI
         mlTCoxbw1P214acb7r0neucW0VisooP4RY9o60kiPbf9QWFaIp+kCGLd9lmwbuIF/P/5
         sYWPpVf+axZ/Wj0hNtsYFyKzrWFzyJTPCuCvWNXI/ng5qbq8PMo2GbZW7iypqE7HZNK6
         Ggz1+bwfzgE6SDsYWchitiVtYItzLTiNBvfUPeyEcTZhFHrv57ZionZSKcY01eqLZZxc
         3uzBYZmMlxDvGGtw2m+45UlDu733vYhegMPt1MHLY5B4/7eQBsK7bpYHbOu2GsTYhpYS
         ubnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="iczPNr/K";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lhzo7zGHjTaruVkj4Dwjt26z7XsgT2H/iRHX3ZFdWCg=;
        b=O0wiHrB1Kc3jpQ7E3rlwLgqGMYw6AEDRLsDmfvYKhFuBS0UP1FyGigCSYpJyTXYFp3
         1dT48+9uLQPFTIgn3GCOol1PnlZEcpeLLDVbtFBDu16LedqBTJu5htBLxbaAUHuAepql
         Jry6BmBB/n/C7676jM6cOHSRzyITE5kf2o8LfTNiwX0INgxfYru/hm2lWXwvgbElY0M+
         eRtxYIzhvi9cTO9tiXJhqep6EnsGFKTE1mGq/ZQt3NGzjRAwZQ4dFCqDvWk4IKDoccJc
         M3Cd/ntrI2Rm0E+ZcBYRywPolY6gHjWfjc3SSJE8Vx6gLrQzUkA2BJ36y3pua2EvZc0P
         21ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lhzo7zGHjTaruVkj4Dwjt26z7XsgT2H/iRHX3ZFdWCg=;
        b=LaB/EkgZHVu0/87RrVpw79CDrB/NX8kvTBuGu2/+tf83ZfZ35x+SidtLGhfdrU3vKq
         hkaQ1k73A6fh1K8gWuSGIea5OovS5NZF5On0mrGouYRIBxmBdcWbrcF4tANcqY58BlGa
         B+mzt2LKJmcRJA098BNDi7IPOsVyEW6WTuJMjo/B4G8nhlC20zbkY+ygG5SiEBMAAyCG
         wdI6DT8JT/vmmX0C9RQo8/mMIm83/XdY/z8pFzwu63d0L/QnbnIsP+jNMB74hdoLW+u4
         /8H0e6cpBnNWZiyqqna98TD4WU1tO/51k+hKfh6Njzh3YJzYXdga1CtLEWlX+W5QP9mC
         gE2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m19jzXsYMGyiji3shUkH00mac5FByYNCM4oK+ewLrILxxw4wf
	ghhdQXyiQ9DTVWj1KCiWnp0=
X-Google-Smtp-Source: ABdhPJzM/7thFxp2i8V1oUQKF7HtZtzgfw7rT2HxrR/Ftg4gMExsyG/Qn+ksHvW6rrG2QlEF8Ql1mQ==
X-Received: by 2002:a05:6830:1e41:: with SMTP id e1mr3145725otj.143.1608303799042;
        Fri, 18 Dec 2020 07:03:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:648d:: with SMTP id g13ls8293554otl.0.gmail; Fri, 18 Dec
 2020 07:03:18 -0800 (PST)
X-Received: by 2002:a9d:12a1:: with SMTP id g30mr3083163otg.331.1608303798398;
        Fri, 18 Dec 2020 07:03:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608303798; cv=none;
        d=google.com; s=arc-20160816;
        b=SXMa+Sl0dTii83DGRAaamjUWt+CjI3vpozJEA7eRStUXGV+vujVU12ncuz7EHniv0s
         eeZcx/zpUOr/+6QdPvbApti7n9+06Zp9LIylC48QvpoNEstidrOMuZkLnR+WtgBScj93
         j2R5w76astD4ivUXucrtmdVLqs3PlDANiGCRyTGADnMIRSC/yFA66DI36uUITDoYTRVy
         W8L5u0jSqhHyz0C0Uho+iVkDt0SI03mxvhGBtQS2tJZRDYuF5RVQuuINKOoTY6cw+kB3
         sOJm6RzcGVtm8VSxFNl8L+r/pQ7mIs4Mb0Azn1HnGyCYNQLFKLIVw0mlz1f2gVmGV6Q4
         6qTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=i2gqYFm8Es9As6zex1py1RDeyxb0UIj49IrIjubjQnA=;
        b=AGygmUNc4kMJajmBqnXehffpZbMvWBHCIePr7wHKQz53Np2aXHKL7C6pOcFVVM3Ib9
         E3OLEksi7lSzp5oGk0Zj967tbzKv8UVb3/wqCyyYYCfu2X0kd1kcFYucO/u8gUgcBOjr
         dN2WSgdR6/4ChFbzojE0TGhSK6VcOVIH0YDA5u91TrpM4NwZLiiU7gr6bzdWA1Ty9Ttn
         D/Ryl0/QRIS5QCPZvSl6AfCI/dVUl8UsB9U8WvmAGaFiXSsBF7GYJehm3xKXVUTMWZvO
         oycZiezFfkTsp1hP3L/uvoSJkQdyGGXjWOZ/5SvGFQt8UiNQGBa2b4wRiaDPexDBlUdn
         1P1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="iczPNr/K";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id s126si514433ooa.0.2020.12.18.07.03.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:03:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fdcc4b40001>; Fri, 18 Dec 2020 07:03:16 -0800
Received: from [10.26.73.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Dec
 2020 15:03:09 +0000
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
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
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
Date: Fri, 18 Dec 2020 15:03:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="iczPNr/K";       spf=pass
 (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as
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


On 18/12/2020 10:05, Marek Szyprowski wrote:
> On 18.12.2020 10:43, Masahiro Yamada wrote:
>> On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
>> <m.szyprowski@samsung.com> wrote:
>>> On 03.12.2020 13:57, Masahiro Yamada wrote:
>>>> Linus pointed out a third of the time in the Kconfig parse stage comes
>>>> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
>>>> and directly testing plugin-version.h for existence cuts down the
>>>> overhead a lot. [2]
>>>>
>>>> This commit takes one step further to kill the build test entirely.
>>>>
>>>> The small piece of code was probably intended to test the C++ designat=
ed
>>>> initializer, which was not supported until C++20.
>>>>
>>>> In fact, with -pedantic option given, both GCC and Clang emit a warnin=
g.
>>>>
>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | =
g++ -x c++ -pedantic - -fsyntax-only
>>>> <stdin>:1:43: warning: C++ designated initializers only available with=
 '-std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | =
clang++ -x c++ -pedantic - -fsyntax-only
>>>> <stdin>:1:43: warning: designated initializers are a C++20 extension [=
-Wc++20-designator]
>>>> class test { public: int test; } test =3D { .test =3D 1 };
>>>>                                             ^
>>>> 1 warning generated.
>>>>
>>>> Otherwise, modern C++ compilers should be able to build the code, and
>>>> hopefully skipping this test should not make any practical problem.
>>>>
>>>> Checking the existence of plugin-version.h is still needed to ensure
>>>> the plugin-dev package is installed. The test code is now small enough
>>>> to be embedded in scripts/gcc-plugins/Kconfig.
>>>>
>>>> [1] https://protect2.fireeye.com/v1/url?k=3D03db90e1-5c40a828-03da1bae=
-0cc47a336fae-4cc36f5830aeb78d&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bd=
e3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwjU4DCuwQ4pXshRbwDCUQ=
B31ScaeuDo1tjoZ0_PjhLHzQ%40mail.gmail.com%2F
>>>> [2] https://protect2.fireeye.com/v1/url?k=3D965b670a-c9c05fc3-965aec45=
-0cc47a336fae-e34339513ff747c0&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bd=
e3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwhK0aQxs6Q5ijJmYF1n2c=
h8cVFSUzU5yUM_HOjig%3D%2Bvnw%40mail.gmail.com%2F
>>>>
>>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>>> This patch landed in linux next-20201217 as commit 1e860048c53e
>>> ("gcc-plugins: simplify GCC plugin-dev capability test").
>>>
>>> It causes a build break with my tests setup, but I'm not sure weather i=
t
>>> is really an issue of this commit or a toolchain I use. However I've
>>> checked various versions of the gcc cross-compilers released by Linaro
>>> at https://protect2.fireeye.com/v1/url?k=3D053727b6-5aac1f7f-0536acf9-0=
cc47a336fae-5bd799e7ce6b1b9b&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bde3=
&u=3Dhttps%3A%2F%2Freleases.linaro.org%2Fcomponents%2Ftoolchain%2Fbinaries%=
2F and all
>>> fails with the same error:
>>>
>>> $ make ARCH=3Darm
>>> CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/b=
in/arm-none-eabi-
>>> zImage
>>>     HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
>>> In file included from
>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/=
../lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
>>>                    from scripts/gcc-plugins/gcc-common.h:7,
>>>                    from scripts/gcc-plugins/arm_ssp_per_task_plugin.c:3=
:
>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/=
../lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
>>> fatal error: gmp.h: No such file or directory
>>>    #include <gmp.h>
>>>             ^~~~~~~
>>> compilation terminated.
>>> scripts/gcc-plugins/Makefile:47: recipe for target
>>> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
>>> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
>>> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' fai=
led
>>> make[1]: *** [scripts/gcc-plugins] Error 2
>>> Makefile:1190: recipe for target 'scripts' failed
>>> make: *** [scripts] Error 2
>>>
>>> Compilation works if I use the cross-gcc provided by
>>> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which is=
:
>>>
>>> $ arm-linux-gnueabi-gcc --version
>>> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
>>>
>>
>> I can compile gcc-plugins with Linaro toolchians.
>>
>> The version of mine is this:
>>
>> masahiro@oscar:~/ref/linux-next$
>> ~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
>> arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
>> Copyright (C) 2017 Free Software Foundation, Inc.
>> This is free software; see the source for copying conditions.  There is =
NO
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPO=
SE.
>>
>>
>>
>>
>> Maybe, it depends on the host environment?
>>
>>
>> Please try this:
>>
>> $ sudo apt install libgmp-dev
>=20
> Indeed, it was missing on my setup. Sorry for the noise.


So this change also breaks the build on our farm build machines and
while we can request that packages are installed on these machines, it
takes time. Is there anyway to avoid this?

Cheers
Jon

--=20
nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e5b06d9a-9b24-2440-e0c2-8bf7095eccd9%40nvidia.com.
