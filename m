Return-Path: <clang-built-linux+bncBAABBMV2X36QKGQETV4LXBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 762642B2C54
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 10:02:43 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id p18sf5631044ejl.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:02:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605344563; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffTrDpFcV/8Cm6ok1XAzITNlyvZdhWEpYVWdgdyi/vuTIwhIL+uptzFfi0u9Yuvx3r
         DWkfqPxiH6fv4zs0k603g5G1ahrGvH17p3873nXuP19UADA96LYVpLdTjRMMGnTcqRjq
         0nOT9MuARE1FEPlBGqwokGIVT+6bGInCHegRz8eokPFIm27y10ZSYgx93Zs+yU+krp1s
         8YOMV34lrkOrG4/dL7daBKra0XGS6+WlEfPlLy7Bo1zzvbAXXMCV/7y+aMqBSLcpeyW4
         IOeTpixvFA0qupQbTtuZEisbeGx0MmYFXicUGYIK+4Gc26wvZ6g4vQLwm1LM1WphsgOg
         gJRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=5+GH1BXFhptCRBqsbuoJ0E7v3sNRBDqlj1r/U9feaN4=;
        b=JOfhZ8Ghn3jRa94vA0Z6+JuiaOEPHjGCi7SZox8CRZgoc9Z20sdDDkQQqAOxFGzcfz
         in53L9ldH/sVBfWLNzaAQQWD5d2tRxI7uBmcT91OhiI4zgy2BLN3BnIpI2WNr1LP8N5m
         B1S42oA4ZSWNGQ2r44f704N1NHZN8izotWcujvIrXtG/jMDK8mQtXkv6AxFIIgfo9VM1
         5y8qLeH1dtobDUtUcdNrB2LZFRozKFBhbwI30wjGzA0uCxXiXUC/aXd+Ql7ACWqGop5q
         GUYT8I3KHreOzunQySGyLj7CAM2chJt97528xEvZnfAdsKzhYWJ1HfT0t2JTe3U03ZDE
         607A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+GH1BXFhptCRBqsbuoJ0E7v3sNRBDqlj1r/U9feaN4=;
        b=tlpcsFP1LZdj3ArlgyDCRByJ/uFj6RUFW7tam7TlsQC5YYDBGlaDOcylp9ZGVKpZlu
         0UswkNvrmHVow6t9myiu/aNru578aUva35Y4U8jqXVTcknZK9f27ayRUOUhOvRktWKKq
         D31o8GwdNaFD972RB9dBShJScN2mK/jzqepTOnXkugCopXNa89+DYZgzOGUH6tS2poXJ
         he0SjU5zVyDj5NzNt62xl+PXl9uqdwy6u0rL5zr3mZ7XNaxZUwhA8icwz4BFHjeBmuQi
         uCtcqjM1T/zz6tbjhho8MuQoJS9+eQ4jOSOgA3OHBebuU5fxEnUePYItnJM+ArzHVhx5
         BIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+GH1BXFhptCRBqsbuoJ0E7v3sNRBDqlj1r/U9feaN4=;
        b=KJ+vN0w5x4B9E+/4pX4OETZWSycbpeiA4eGeiH+itO1+NCDouEOejUDfEJu7IbMZMC
         EW9DUU27tOepy/KLSP5Hl4HsIjuUNRiPEJIIjJMmKopx5/jKd/6Ejlyh+wDQ4rKJHehx
         Fx6lPrHjhYczvyBL2tOZpLQJnqc2vu6QqdUT/pG1vNa7uCuT7hP37Rw+tMd5v76R4hWQ
         GDDSVnPUUE4UF2u4UWi34mPYWsrNdKoB+LlYZ6bPCjiflQ7+g45glwvazrvD7qIJVzAU
         yEAb5EEpLBAPb2srwSUF1MfSDYbZ7TJ0IWBAVCLGl0bzcWRMypgZ669Kn60NGRrNxKZY
         WUVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530G3UCtO3wRtT3o9jAMcSy4FJ8J2Q1B/Wns2WvbH397B1O6QFAw
	/rKN6JNg3dVwY/W4ZD2r8PY=
X-Google-Smtp-Source: ABdhPJxkUZMvjndFx8lHpyse5JuQOeILH9dMR1rmw6Zwh1GRFW2mYV75xARWkh6Tz8eY7/DQ/G0NJQ==
X-Received: by 2002:a05:6402:1042:: with SMTP id e2mr6717378edu.320.1605344563130;
        Sat, 14 Nov 2020 01:02:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8585:: with SMTP id v5ls931358ejx.1.gmail; Sat, 14
 Nov 2020 01:02:42 -0800 (PST)
X-Received: by 2002:a17:906:a88:: with SMTP id y8mr6353869ejf.469.1605344562313;
        Sat, 14 Nov 2020 01:02:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605344562; cv=none;
        d=google.com; s=arc-20160816;
        b=NZT3E9G9UFIFp4rT2rjpqf+bWSH7tPha5FNgvywA1TW3t/uAT4U58+lex7juJ549tb
         ekzfOdA1dOFZMm7EaSiKczkGxCYhFXJ4X6ZARtJTTtuqw1ArI4m8zVtan3viwo9y50Wk
         SSZwIeQFUQoe16WsPxRJZ3uPqkqKhNdgBBSa5rbuQFTcslO6o5qxslshNldLbWIlePIR
         SMw+TvxOq8yr4/5lVAfPckNc5NyrLLrY2xAltjcLGF7H3Zs1XZ2yiHctjN3OeP2EhV1A
         DrqAmdu1Qq/co6EGiXgTFmed+rr6O2ARIXxb6TBBaLi6iUgdxdWefXiONDJq938vWwSH
         xUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=19Rv5xN9jW9JPdtRF87MJ3ItOa7GSrL6rjVSWdLzuGk=;
        b=Q+5p3V22UIFv2+1O9DvXhcRbJCPeTNY5XI+86o/bOjjMUWFiBuB+RmsiFPpvVHIoqX
         dXw5vREsU/Szsm1dCz0sujt3TavynFQk8uqOsj8P4yD/paaqcHio0s7zsiHUstwOUUNN
         fASLxdR8kdSXxrxlXp6VxbZsFToj6/T9DK/JdUZjhvdPjyu5l8Uhf7rpCOVqUCGArQ1/
         lu5M8XGZdkZ/LVF/M32yWHe9plRpl3xX/PuwdFm+4ecbxas0+pfw+nXi5VFtDyGKqhez
         5Wy6me8PjtBLuDoRFOawwAUfIMt9KKhqqIYAWaDG6tlmuPdKrruUTXCl250LfmujwAS0
         bPzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id bm8si397054edb.2.2020.11.14.01.02.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 01:02:42 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4CY8Vm2wftz9vCxX;
	Sat, 14 Nov 2020 10:02:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id MII8N_gqyiSc; Sat, 14 Nov 2020 10:02:40 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4CY8Vm1ls4z9vCjb;
	Sat, 14 Nov 2020 10:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 4607C8B788;
	Sat, 14 Nov 2020 10:02:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id X5TeAvZWgWaQ; Sat, 14 Nov 2020 10:02:41 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 6F28F8B782;
	Sat, 14 Nov 2020 10:02:40 +0100 (CET)
Subject: Re: Error: invalid switch -me200
To: Segher Boessenkool <segher@kernel.crashing.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>,
 =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <202011131146.g8dPLQDD-lkp@intel.com>
 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86>
 <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
 <20201113200444.GA1496675@ubuntu-m3-large-x86>
 <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
 <20201114002037.GW2672@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <14e9ce2b-1a83-5353-44c7-b0709796c70e@csgroup.eu>
Date: Sat, 14 Nov 2020 10:02:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201114002037.GW2672@gate.crashing.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 14/11/2020 =C3=A0 01:20, Segher Boessenkool a =C3=A9crit=C2=A0:
> On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
>>>>> Error: invalid switch -me200
>>>>> Error: unrecognized option -me200
>>>>
>>>> 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
>>>>
>>>> Are those all broken configs, or is Kconfig messed up such that
>>>> randconfig can select these when it should not?
>>>
>>> Hmmm, looks like this flag does not exist in mainline binutils? There i=
s
>>> a thread in 2010 about this that Segher commented on:
>>>
>>> https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB=
6E@kernel.crashing.org/
>>>
>>> Guess this config should be eliminated?
>=20
> The help text for this config options says that e200 is used in 55xx,
> and there *is* an -me5500 GAS flag (which probably does this same
> thing, too).  But is any of this tested, or useful, or wanted?
>=20
> Maybe Christophe knows, cc:ed.
>=20

I don't have much clue on this.

But I see on wikipedia that e5500 is a 64 bits powerpc (https://en.wikipedi=
a.org/wiki/PowerPC_e5500)

What I see is that NXP seems to provide a GCC version that includes adition=
nal cpu (e200z0 e200z2=20
e200z3 e200z4 e200z6 e200z7):

valid arguments to '-mcpu=3D' are: 401 403 405 405fp 440 440fp 464 464fp 47=
6 476fp 505 601 602 603=20
603e 604 604e 620 630 740 7400 7450 750 801 821 823 8540 8548 860 970 G3 G4=
 G5 a2 cell e200z0 e200z2=20
e200z3 e200z4 e200z6 e200z7 e300c2 e300c3 e500mc e500mc64 e5500 e6500 ec603=
e native power3 power4=20
power5 power5+ power6 power6x power7 power8 powerpc powerpc64 powerpc64le r=
s64 titan "

https://community.nxp.com/t5/MPC5xxx/GCC-generating-not-implemented-instruc=
tions/m-p/845049

Apparently based on binutils 2.28

https://www.nxp.com/docs/en/release-note/S32DS-POWER-v1-2-RN.pdf

But that's not exactly -me200 though.

Now, I can't see any defconfig that selects CONFIG_E200, so is that worth k=
eeping it in the kernel=20
at all ?

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/14e9ce2b-1a83-5353-44c7-b0709796c70e%40csgroup.eu.
