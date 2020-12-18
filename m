Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBYMN6P7AKGQEXBC7DMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FED62DE642
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:12:35 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id v138sf1757949pfc.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608304354; cv=pass;
        d=google.com; s=arc-20160816;
        b=bptnYm4klRfAyegVjo/sshJfvLN5T1R+ifGrH2gKxA85m34r0SBpAEfCUZBFFEZwqq
         iR387vDulRJXcr0QNtbhLXbyjiZYcRCGmyfuwrRXibG1MozZrLK4on0vjSb9XTFF0WnY
         NDZ9czch/pgI3eOEhEN3Q7jh+cSk1zIdZPnteu2NPdKOYhCFUVsdetjqojadXjzeDOJH
         sNLSgh+X9sRHQncynLNBFUU0v3ImHyFEoPBKtCL+dcWw152nuUxfhw+Fhwx0fmqd6aAT
         aW1aWgc4D6870LIYN265FzFKZe1FGcMlBNiv1X5/sMENq/xkEeOqwvo35bG48meuIwbS
         3hnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=heSl+6f1dl+5zutdmBLqUE1ZKGZcUKecuPSoVNBOCuU=;
        b=uESbbhwON+f/UnSo+sikayL9s8PqZOHrP+pRg5cSiipWfG1nxnsFrDeS1VHh9rpso8
         wIxvlRkXizUn4ngs0eShGjv655MnS1wHI1RerjvjUos7zW9r+0Rn0g2dnLhD1Fl4UOTH
         BeYhuqmzHtzzcb+J8Vve6JVeyiGfTK7d5qUjPwILo0RfNi0DBnFb99bW4gs8XbxBvq7x
         Qj1Y/+0R/wo8KzBBJnmlCl0UE+/1h78ru9EkvBMb13ORkMu6q/CinfUd1t8soKS/PuRd
         9fTODKOIqXCjxHSJZ95j1rE+wVwPqtVwuVw0UPYHtGSXzxt6zYzgVlQwd5O04nXGWqUo
         796Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=SY751HPe;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heSl+6f1dl+5zutdmBLqUE1ZKGZcUKecuPSoVNBOCuU=;
        b=DhV7Pz+NkxjnCz2xHP84JJ6mbrJSP8uLZD94R2iskFdBdQEBPDdDUYQ6Sj141ZxEMw
         ANS4QnMNdNq14aS1+UWMEfSEG4afGamUXt0YWTuMrVvPa4VTVGN3mq6/h7KAMzFkITxb
         uu9eRq3zOBx6imRE7T/6cpYFH4khLoXieENXgojMxXZloGZtVbcN+fhffs6vRClXSyuJ
         /mZJ5KeB/dll9qsm9pkgB3tPpQ5fMnjJsdcc0fCCCihcrmjLsiEPEzY+N7lq9LV5OFZX
         Z1MqrGih8+xIlC9lBRJzIWdtH5lY+x1VKDhGz6Fs8F1MP9vW/t9Ockb1R7hqT46LD6Gt
         Pc6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heSl+6f1dl+5zutdmBLqUE1ZKGZcUKecuPSoVNBOCuU=;
        b=epzfhNNbPOSbRzViueAsBS4uJuW22YV9rE9mG5LRnCFhayUPTVN7+uGKtIFgmv+BLz
         el+HI9DIVTD1G7IKpxinqlQnnVd/KhUfy6pmAelDCIg6uq7fO+tJIX9/1wcpi0hGFl63
         IYqsx3/9g67HnoYdKPvSQZScBAu52X0dZMJbT1bI7lmAOZ63VYjh1HroDrlo+swkRfwE
         wP1MGjfgkhtR7t1hNM1B5om1h8nMeD6fE4qwB8d9ve3rrrjnQ/qIWJ00FPKkpOWsz8/K
         oU6qXxEU7nZG9O4G2Qi7KohZe6AVKC0pUSp5EmBCv3NACU0415R7Rs93JEpg4OFEyO6N
         cY1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NbdxZW7t21ewab4HdY3kT4GOBAPRVTsZhVSyVxgRQoTvDI6tf
	Dz6N59JpI3VSK54KZGYf97E=
X-Google-Smtp-Source: ABdhPJx/L4oQocNMMky2tRZsSxp7GaBSgioAc8spB8zNH2y1kLy4SYK9dKE8hkprW6HJCox5d2WZLg==
X-Received: by 2002:a17:902:ea89:b029:da:539e:9bb with SMTP id x9-20020a170902ea89b02900da539e09bbmr4779227plb.52.1608304353951;
        Fri, 18 Dec 2020 07:12:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls8289521pfj.2.gmail; Fri, 18 Dec
 2020 07:12:33 -0800 (PST)
X-Received: by 2002:a63:4b0f:: with SMTP id y15mr4548645pga.235.1608304353130;
        Fri, 18 Dec 2020 07:12:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608304353; cv=none;
        d=google.com; s=arc-20160816;
        b=GqFFJELXO1vOADVRcb2Qncqe36HX/Uo8frq+7q+PRi0VpcfXKZq3VE3Bjdx1o80PaG
         BDlVcBxlVJNj95JXCa8nxsTRObi/zOeUvVXjW4Bhqr+UCpiKNY30zbqkAIdbTd9fDHes
         6lmVCr+PEVz1I+DftLLTCIDh8sHBe+qmWoXi4SJLSjaCUqab+/CLXP9E7yxK9QhORdlh
         RoARaks2RxBMKOIbS9kYc2kX2M2vizngT289mENXRjb8ISV7g5Hiu0vBLVAfR4M4aCgg
         rS0BxUagGzeks51KfJw9dW6kk/6yxcWlksA6Rm3BJsOPcjDi5wmRl9zokpDYR3SJFofy
         hfYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=lj0cgIiRp4EY/qLHe2VqR/w32Vw4lOgdGII4wOr5mm0=;
        b=s2n4u0GSLJlvl7StEau+Imn2o+OvW8m1WZlRZHk2Q0wF8WnXQuNe9i/djkD0Z87eaJ
         XuEYiXvEoaTWEjrHH1yhOpZ2NgpoRfcJmwGmsIOTQXGbnElQgFrqaMR2FeX7dsFUhVGa
         3TZWPULks9kO9WEjPVfikcLM65YJoydnmMSxvb8M8F7vz55A+8fHb0M7CDm+sQjfrEcI
         JCr7FGu49GXXPI/1xBoHq/3GmjJfO4IDlUcKpvFCPnpvD7+e5WnisOP6sN48ZUDWYLjw
         F1KbNuXpuQd3k3tG9zLhrsdZQbIGlbGpDNN5F+KxhlSy2zHL+zAohwHaYTfda75FHWJY
         ObKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=SY751HPe;
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id e7si248090pls.4.2020.12.18.07.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:12:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fdcc6df0000>; Fri, 18 Dec 2020 07:12:31 -0800
Received: from [10.26.73.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Dec
 2020 15:12:25 +0000
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
 <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
Date: Fri, 18 Dec 2020 15:12:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=SY751HPe;       spf=pass
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


On 18/12/2020 15:09, Marek Szyprowski wrote:
>=20
> On 18.12.2020 16:03, Jon Hunter wrote:
>> On 18/12/2020 10:05, Marek Szyprowski wrote:
>>> On 18.12.2020 10:43, Masahiro Yamada wrote:
>>>> On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
>>>> <m.szyprowski@samsung.com> wrote:
>>>>> On 03.12.2020 13:57, Masahiro Yamada wrote:
>>>>>> Linus pointed out a third of the time in the Kconfig parse stage com=
es
>>>>>> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
>>>>>> and directly testing plugin-version.h for existence cuts down the
>>>>>> overhead a lot. [2]
>>>>>>
>>>>>> This commit takes one step further to kill the build test entirely.
>>>>>>
>>>>>> The small piece of code was probably intended to test the C++ design=
ated
>>>>>> initializer, which was not supported until C++20.
>>>>>>
>>>>>> In fact, with -pedantic option given, both GCC and Clang emit a warn=
ing.
>>>>>>
>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' =
| g++ -x c++ -pedantic - -fsyntax-only
>>>>>> <stdin>:1:43: warning: C++ designated initializers only available wi=
th '-std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' =
| clang++ -x c++ -pedantic - -fsyntax-only
>>>>>> <stdin>:1:43: warning: designated initializers are a C++20 extension=
 [-Wc++20-designator]
>>>>>> class test { public: int test; } test =3D { .test =3D 1 };
>>>>>>                                              ^
>>>>>> 1 warning generated.
>>>>>>
>>>>>> Otherwise, modern C++ compilers should be able to build the code, an=
d
>>>>>> hopefully skipping this test should not make any practical problem.
>>>>>>
>>>>>> Checking the existence of plugin-version.h is still needed to ensure
>>>>>> the plugin-dev package is installed. The test code is now small enou=
gh
>>>>>> to be embedded in scripts/gcc-plugins/Kconfig.
>>>>>>
>>>>>> [1] https://protect2.fireeye.com/v1/url?k=3D03db90e1-5c40a828-03da1b=
ae-0cc47a336fae-4cc36f5830aeb78d&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918=
bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwjU4DCuwQ4pXshRbwDC=
UQB31ScaeuDo1tjoZ0_PjhLHzQ%40mail.gmail.com%2F
>>>>>> [2] https://protect2.fireeye.com/v1/url?k=3D965b670a-c9c05fc3-965aec=
45-0cc47a336fae-e34339513ff747c0&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918=
bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwhK0aQxs6Q5ijJmYF1n=
2ch8cVFSUzU5yUM_HOjig%3D%2Bvnw%40mail.gmail.com%2F
>>>>>>
>>>>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>>>>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>>>>> This patch landed in linux next-20201217 as commit 1e860048c53e
>>>>> ("gcc-plugins: simplify GCC plugin-dev capability test").
>>>>>
>>>>> It causes a build break with my tests setup, but I'm not sure weather=
 it
>>>>> is really an issue of this commit or a toolchain I use. However I've
>>>>> checked various versions of the gcc cross-compilers released by Linar=
o
>>>>> at https://protect2.fireeye.com/v1/url?k=3D053727b6-5aac1f7f-0536acf9=
-0cc47a336fae-5bd799e7ce6b1b9b&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bd=
e3&u=3Dhttps%3A%2F%2Freleases.linaro.org%2Fcomponents%2Ftoolchain%2Fbinarie=
s%2F and all
>>>>> fails with the same error:
>>>>>
>>>>> $ make ARCH=3Darm
>>>>> CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi=
/bin/arm-none-eabi-
>>>>> zImage
>>>>>      HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
>>>>> In file included from
>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bi=
n/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
>>>>>                     from scripts/gcc-plugins/gcc-common.h:7,
>>>>>                     from scripts/gcc-plugins/arm_ssp_per_task_plugin.=
c:3:
>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bi=
n/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
>>>>> fatal error: gmp.h: No such file or directory
>>>>>     #include <gmp.h>
>>>>>              ^~~~~~~
>>>>> compilation terminated.
>>>>> scripts/gcc-plugins/Makefile:47: recipe for target
>>>>> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
>>>>> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
>>>>> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' f=
ailed
>>>>> make[1]: *** [scripts/gcc-plugins] Error 2
>>>>> Makefile:1190: recipe for target 'scripts' failed
>>>>> make: *** [scripts] Error 2
>>>>>
>>>>> Compilation works if I use the cross-gcc provided by
>>>>> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which =
is:
>>>>>
>>>>> $ arm-linux-gnueabi-gcc --version
>>>>> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
>>>>>
>>>> I can compile gcc-plugins with Linaro toolchians.
>>>>
>>>> The version of mine is this:
>>>>
>>>> masahiro@oscar:~/ref/linux-next$
>>>> ~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
>>>> arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
>>>> Copyright (C) 2017 Free Software Foundation, Inc.
>>>> This is free software; see the source for copying conditions.  There i=
s NO
>>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PUR=
POSE.
>>>>
>>>>
>>>>
>>>>
>>>> Maybe, it depends on the host environment?
>>>>
>>>>
>>>> Please try this:
>>>>
>>>> $ sudo apt install libgmp-dev
>>> Indeed, it was missing on my setup. Sorry for the noise.
>>
>> So this change also breaks the build on our farm build machines and
>> while we can request that packages are installed on these machines, it
>> takes time. Is there anyway to avoid this?
>=20
> You can temporarily revert 1e860048c53e (this patch).


Again that works locally, but these automated builders just pull the
latest -next branch and build.

Jon

--=20
nvpublic

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4ab4f62f-8b37-01e1-f81c-270155b13a51%40nvidia.com.
