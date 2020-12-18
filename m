Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQM46P7AKGQEWTSRLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5C02DE6D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:44:03 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id e14sf2026278iow.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:44:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608306241; cv=pass;
        d=google.com; s=arc-20160816;
        b=C1gG4G4kCfahCgXoozCwIzwiJoc/S+Lgc5HHE8+4s3U+ZlWKriVMhpW3OmPAHrg2gZ
         YVoYuhnpnLn5gHgVHW+vBSVge3ExVm8+7TQ7CY/XetsV6CaVi8NFO9exR0gqjF3bB/Vx
         N9/T9r3em2p0lopuxe9UNh02TTbeglbhU4b1xY/iqjH2InRujXZlet71B1RCesALZOFa
         7TvjpOmSQQcp2yw9olst5PFRvQyK602DgNVwpvCk3MExWUIK4PkaxkQ4uccz1F0ydb5B
         Vf4bzbZpkDig7Hs/UwcTm8q/3RHK4NGVzU7/u4E82xe8r3giLWZXSEtIoo8N60aPTBPT
         N8TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=eYeZMCiq/C3htOsewZxHEzWpit4cu9tBsLxk+LMAUK4=;
        b=qup/4mL75xFoqyyC+fwiaym0uQQdGAuxvGp7NuGndAqK0gopS2pK95CNPS/VsscXS4
         c/jVpyRCwU6MbmU/5xornEq0yoSawvSZZwGpBLdu+Sr+G29ftA9Ej+NUcf9stE1xPfUy
         KoQVuhfx0S874ejV9FcUAuy79ifc20PzzZrZ4dmjiHOOlDimVYV7yxDOlqUeutDOf2sp
         JxFBM7854/O+s8vL4acwmhzXE4f5wOY/IipNrJwDkSoQiFqDptjYRAo3mfIxbWhcUNz8
         5tK9rki+gLMkEHuA/TEXaVqZimypqMq5FBKBJ3hfcj3wva/ybxHR1DhUaDJ6dFq/Yt1V
         9OmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xbEbiWow;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYeZMCiq/C3htOsewZxHEzWpit4cu9tBsLxk+LMAUK4=;
        b=OsTzIQRHlNoZM+BPTQyQ6AfNsPXGrPd3phlKvW8Y6MZI0B4Yz/w5qonuj31bNpqXMr
         ItOoIcQPVyj/dBF4iRgc9P3VThkL84bSu+5BK1HVhRScrR/IeGw9L/M6uWVn64s1Hggt
         gm+yfRb+fZI6MLh8YPUYD72ZZqfi2clSbymt8Kgs4WqSJwkAp7+88pOqXO5uDAurvyYs
         TobGjtYaeexJoNMRclGRvB3+zG0aI4DTMKAz6myIRemwliJZRJnaAXcPttxwxmYirRiG
         ZWMCGU6m5vi0LdcBjvMVgY80xC7m/8FMNYYxSpg1NNSBg1hdOADq9sGZsc8wW/8sjWVt
         eMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYeZMCiq/C3htOsewZxHEzWpit4cu9tBsLxk+LMAUK4=;
        b=mARvbbOnsVDEWhh0VIpZURdaD84W3mv5uEDYp4KG/LsVshKb6Sn3TKXKpHz4gqTcj+
         rKchEnEjHw6lqgJlRqUhu0bkkIDDaI0utsZM+/+RiKFnBbqht0QG0z0z7qgp14KtLsUU
         6XW45Yu8WNj4IdLSRf8vRnW16IL9uro8xd7QlyzIkUGMjxR21S2SnSX9oFl9+z+hAxFk
         XR00wrW4FnCktkTkNobnxQCod0fIHCm5gDPQwzd7fUymGVSayeHe1KvzHXgn2O0nmrXv
         hPZIS3yVq5EhsGF159k6MDTwacn9JQ4ix1BeVCNmGkHtwBXalF9ZPJySws1giSNlOG6B
         XLSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yGihJichB3BwsnKuacTRcSzzzGGOPSQvJfL8q2PdYoN4cLGqQ
	jiMod15D9aOzWc3LfyEyhF4=
X-Google-Smtp-Source: ABdhPJwfwn24Tvq7L8pMCP120TgbLoOGjyAybNByIS1lXCmKMm/OWs5yk0WxwR9UwDlS9Y5HtxaaWw==
X-Received: by 2002:a5d:8d94:: with SMTP id b20mr4265184ioj.200.1608306241707;
        Fri, 18 Dec 2020 07:44:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ac8e:: with SMTP id x14ls3742167jan.2.gmail; Fri, 18 Dec
 2020 07:44:01 -0800 (PST)
X-Received: by 2002:a02:b60a:: with SMTP id h10mr4141319jam.99.1608306241102;
        Fri, 18 Dec 2020 07:44:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608306241; cv=none;
        d=google.com; s=arc-20160816;
        b=OqY/zUCv8ygIuwGy7ybyVEFwpA24ObxIuHKZ95BVrdT14WPj/7ez3RKP1yxB/eyzs7
         4YAN4LvtdS5cCGwOcjpyQcSDU0zzWbgZzZVXvvJODmvWoDULahAPe/8bts3Lveqg6UAE
         gnr8qE9yHoOyrttAs2ZT4A02/JvXj0h9TV8YycAG5WkO/SLO8aQP5EfV1g8zSCfUXcVO
         kkvbcM/pJQEulcMfpOfis0xoJKTmZfqMR9/HWOtwzpZunw2uy0UPVAySb1Fh8k4kZM3Z
         bskr99Gj/FTT7buzLDHnBjFUVzV4kyCwYg+F8I87QVJcuDyxGI+mYebGHcvEkJfh33S+
         1PDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=epnuC2GrrnX/tctb0pjbgEu0p6DNG4x3M6lhcUKMF84=;
        b=a9FD3OW7WUbZse2OM2eZvid5UjcM4RclxXZQnczNUaG/2DanTpFwUR3rEftVBDz6B4
         SJy1TThdFHSjfuWrxbjMzk8OdaXoaP9CzqVxs41KOzZY6yr34H6QC/4cihre+vOMJ7ke
         IbD1FIK5eloyhnMmTeewpVhM4k0VwWTPod8MQKSaBxDvdCk6vRF+hdcKclj1V7zbl9oR
         bkB8Dy5R22Td7AP54I4wSz1IuikWcsTd9yk6eT3Uq8hwdYsaILKlA101f81ior6K8EKm
         thw0deM1KSMGahkpBHqn1QS/4VhGd9pWrCNan4Dn6BQ3g9IcC3aXsAZtJ3xHbrX1S7b3
         bBdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xbEbiWow;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id r17si907869ilg.4.2020.12.18.07.44.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:44:01 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0BIFhVBg021376
	for <clang-built-linux@googlegroups.com>; Sat, 19 Dec 2020 00:43:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0BIFhVBg021376
X-Nifty-SrcIP: [209.85.215.181]
Received: by mail-pg1-f181.google.com with SMTP id c22so1532578pgg.13
        for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 07:43:31 -0800 (PST)
X-Received: by 2002:a65:6a16:: with SMTP id m22mr4644370pgu.175.1608306210700;
 Fri, 18 Dec 2020 07:43:30 -0800 (PST)
MIME-Version: 1.0
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org> <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com> <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com> <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
In-Reply-To: <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 19 Dec 2020 00:42:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ6pzMGm=L9389Xtfghjfjr_wDqRntZC2XqP3JDQuhLhQ@mail.gmail.com>
Message-ID: <CAK7LNAQ6pzMGm=L9389Xtfghjfjr_wDqRntZC2XqP3JDQuhLhQ@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
        linux-hardening@vger.kernel.org,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xbEbiWow;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Dec 19, 2020 at 12:33 AM Jon Hunter <jonathanh@nvidia.com> wrote:
>
>
> On 18/12/2020 15:12, Jon Hunter wrote:
> >
> > On 18/12/2020 15:09, Marek Szyprowski wrote:
> >>
> >> On 18.12.2020 16:03, Jon Hunter wrote:
> >>> On 18/12/2020 10:05, Marek Szyprowski wrote:
> >>>> On 18.12.2020 10:43, Masahiro Yamada wrote:
> >>>>> On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
> >>>>> <m.szyprowski@samsung.com> wrote:
> >>>>>> On 03.12.2020 13:57, Masahiro Yamada wrote:
> >>>>>>> Linus pointed out a third of the time in the Kconfig parse stage =
comes
> >>>>>>> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1=
],
> >>>>>>> and directly testing plugin-version.h for existence cuts down the
> >>>>>>> overhead a lot. [2]
> >>>>>>>
> >>>>>>> This commit takes one step further to kill the build test entirel=
y.
> >>>>>>>
> >>>>>>> The small piece of code was probably intended to test the C++ des=
ignated
> >>>>>>> initializer, which was not supported until C++20.
> >>>>>>>
> >>>>>>> In fact, with -pedantic option given, both GCC and Clang emit a w=
arning.
> >>>>>>>
> >>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 }=
;' | g++ -x c++ -pedantic - -fsyntax-only
> >>>>>>> <stdin>:1:43: warning: C++ designated initializers only available=
 with '-std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
> >>>>>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 }=
;' | clang++ -x c++ -pedantic - -fsyntax-only
> >>>>>>> <stdin>:1:43: warning: designated initializers are a C++20 extens=
ion [-Wc++20-designator]
> >>>>>>> class test { public: int test; } test =3D { .test =3D 1 };
> >>>>>>>                                              ^
> >>>>>>> 1 warning generated.
> >>>>>>>
> >>>>>>> Otherwise, modern C++ compilers should be able to build the code,=
 and
> >>>>>>> hopefully skipping this test should not make any practical proble=
m.
> >>>>>>>
> >>>>>>> Checking the existence of plugin-version.h is still needed to ens=
ure
> >>>>>>> the plugin-dev package is installed. The test code is now small e=
nough
> >>>>>>> to be embedded in scripts/gcc-plugins/Kconfig.
> >>>>>>>
> >>>>>>> [1] https://protect2.fireeye.com/v1/url?k=3D03db90e1-5c40a828-03d=
a1bae-0cc47a336fae-4cc36f5830aeb78d&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e=
918bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwjU4DCuwQ4pXshRb=
wDCUQB31ScaeuDo1tjoZ0_PjhLHzQ%40mail.gmail.com%2F
> >>>>>>> [2] https://protect2.fireeye.com/v1/url?k=3D965b670a-c9c05fc3-965=
aec45-0cc47a336fae-e34339513ff747c0&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e=
918bde3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwhK0aQxs6Q5ijJmY=
F1n2ch8cVFSUzU5yUM_HOjig%3D%2Bvnw%40mail.gmail.com%2F
> >>>>>>>
> >>>>>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> >>>>>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >>>>>> This patch landed in linux next-20201217 as commit 1e860048c53e
> >>>>>> ("gcc-plugins: simplify GCC plugin-dev capability test").
> >>>>>>
> >>>>>> It causes a build break with my tests setup, but I'm not sure weat=
her it
> >>>>>> is really an issue of this commit or a toolchain I use. However I'=
ve
> >>>>>> checked various versions of the gcc cross-compilers released by Li=
naro
> >>>>>> at https://protect2.fireeye.com/v1/url?k=3D053727b6-5aac1f7f-0536a=
cf9-0cc47a336fae-5bd799e7ce6b1b9b&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e91=
8bde3&u=3Dhttps%3A%2F%2Freleases.linaro.org%2Fcomponents%2Ftoolchain%2Fbina=
ries%2F and all
> >>>>>> fails with the same error:
> >>>>>>
> >>>>>> $ make ARCH=3Darm
> >>>>>> CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-e=
abi/bin/arm-none-eabi-
> >>>>>> zImage
> >>>>>>      HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
> >>>>>> In file included from
> >>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi=
/bin/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
> >>>>>>                     from scripts/gcc-plugins/gcc-common.h:7,
> >>>>>>                     from scripts/gcc-plugins/arm_ssp_per_task_plug=
in.c:3:
> >>>>>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi=
/bin/../lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
> >>>>>> fatal error: gmp.h: No such file or directory
> >>>>>>     #include <gmp.h>
> >>>>>>              ^~~~~~~
> >>>>>> compilation terminated.
> >>>>>> scripts/gcc-plugins/Makefile:47: recipe for target
> >>>>>> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
> >>>>>> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Erro=
r 1
> >>>>>> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins=
' failed
> >>>>>> make[1]: *** [scripts/gcc-plugins] Error 2
> >>>>>> Makefile:1190: recipe for target 'scripts' failed
> >>>>>> make: *** [scripts] Error 2
> >>>>>>
> >>>>>> Compilation works if I use the cross-gcc provided by
> >>>>>> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, whi=
ch is:
> >>>>>>
> >>>>>> $ arm-linux-gnueabi-gcc --version
> >>>>>> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
> >>>>>>
> >>>>> I can compile gcc-plugins with Linaro toolchians.
> >>>>>
> >>>>> The version of mine is this:
> >>>>>
> >>>>> masahiro@oscar:~/ref/linux-next$
> >>>>> ~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
> >>>>> arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
> >>>>> Copyright (C) 2017 Free Software Foundation, Inc.
> >>>>> This is free software; see the source for copying conditions.  Ther=
e is NO
> >>>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR =
PURPOSE.
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>> Maybe, it depends on the host environment?
> >>>>>
> >>>>>
> >>>>> Please try this:
> >>>>>
> >>>>> $ sudo apt install libgmp-dev
> >>>> Indeed, it was missing on my setup. Sorry for the noise.
> >>>
> >>> So this change also breaks the build on our farm build machines and
> >>> while we can request that packages are installed on these machines, i=
t
> >>> takes time. Is there anyway to avoid this?
> >>
> >> You can temporarily revert 1e860048c53e (this patch).
> >
> >
> > Again that works locally, but these automated builders just pull the
> > latest -next branch and build.
>
>
> However, if you are saying that this is a problem/bug with our builders,
> then of course we will have to get this fixed.
>


Yes, please do so.


Kconfig evaluates $(CC) capabilities, and
hides CONFIG options it cannot support.


In contrast, we do not do that for $(HOSTCC)
capabilities because it is just a matter of some
missing packages.


For example, if you enable CONFIG_SYSTEM_TRUSTED_KEYRING
and fail to build scripts/extrace-cert.c
due to missing <openssl/bio.h>,
you need to install the openssl dev package.

It is the same pattern.


--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAQ6pzMGm%3DL9389Xtfghjfjr_wDqRntZC2XqP3JDQuhLhQ%40m=
ail.gmail.com.
