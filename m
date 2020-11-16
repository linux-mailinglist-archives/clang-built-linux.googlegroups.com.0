Return-Path: <clang-built-linux+bncBAABB75SZL6QKGQEWWMSDRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0D72B491A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 16:23:44 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 64sf5613859lfk.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:23:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605540223; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIA9nZx4rrIknAmDPC5L1WEJYAFUQNrmgTIQhNvmbmntA3ymHBreP0+HOsmN4hwrF2
         /uZTElLgzGwyZLJAvUZ+HTkbXFo1yZKi0fqFIvQnaE3YPZeWO1UNex4nCmU/VhMWuQIw
         daw6rwjaZtbTJQU4tK9i3BKTMudooMvoGLFmXfm2FvDfmOkyQZKHkEE9fvuLCAna2RM+
         UW6sNFBWkPwje0KsgMDgDoETyu0DWHWqZwGMFlUvIh5rtUJSv/mPQKjLXidAYVXbPZFU
         35G90PW0lZTTiWwJuu1lKubEbycdU2FLH2NGhZM0H2nmunpCZYI46v5335cXdYlMx4U8
         5LCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:user-agent:in-reply-to:references
         :subject:cc:to:from:message-id:date:sender:dkim-signature;
        bh=29XFSW7cFu2EZ1chshFjjR57ixrJ8oyBeQWyTJU34pU=;
        b=j1y2B2m/wCCmsp2FPhAQiRtM/c5T2yocRFu409rqQLNVGOXMmwYKocm8P3i0EpcBVu
         njDZz8yElfm1mx1k6c3oNllJ1dxuk+K35U+Hpz0fIY12r1zyFglzUmb9s0BHVvB+4C1v
         eUg6qqMiYZ2djo09WE3mtm1XRdi8IqBCVoVn/G0ObDvwH7eXNFjBdE2cPhs32jZzE8dI
         gZ+DYJWd3bW/wL0ADIwVJ4/U2k5xix3MWhFnUPsTPcbuv0sugWKD9yKj2pQ++sTOkhwZ
         2vya69flpNWcQ0tasyLKfnhAnrEsFUqOo+rrIDBXTuttomoMHzYwpWpCjiEBMabQ6ACv
         VAEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:references:in-reply-to
         :user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=29XFSW7cFu2EZ1chshFjjR57ixrJ8oyBeQWyTJU34pU=;
        b=OqPOVL//RDKNEngcFh164pZYT/yJriKlTaDrqqyvhmWq8wBi+97fcacQF/PzrsVBhd
         Bol+L8q4X1+zuI5dpLdakW29OXF0lB4GIqvHqgBqpSrpRSrFEkv/FQXPAvekQH3X5i+R
         jCuWoabbObLRkFQz+aRv7MJJVSu1xa+B05YbFrsZ6Cj6gUjBHNrBwVpvKYSoS1HNHh2K
         1pTY5VVW+oWNGkdrIHv7Lqhd/6z/VeZJt4yKIaF+MLzgGUnvxm1z499yfe512tL0dPGY
         h8jX7/H4Ix9HwRtI9+SNqLSEDuMjgt29y3HXJmn+indr25EPTSgaRd/6B5BIKfCTLfQI
         HBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :references:in-reply-to:user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=29XFSW7cFu2EZ1chshFjjR57ixrJ8oyBeQWyTJU34pU=;
        b=QfSvZXd8FsO0NvNvSsUvvNMpDcEAGRipIOLtc6vGoDIUNtn3ffc8E0TP6ReHGD4LAF
         XZR/vrW8ODIrFQ6MDuxSfkq0CuoRo9XVpQDjx/ASzSX9L+61CiYkF1TF61PF76zM2ZgS
         aOso44rLMPFzhND94MG+qxGmsEdEpHTq9f74MqHExOte5ILa9lBTUt5FrVPieFQBhnVM
         kkNOx1ojbAGjfzWA1uk9bEuuVX2lFUdrarD1KechrKyAHkILfZvYhsIBqGoHuBm14y9A
         200mYCorH73fHj8ftmBst7tW3883+wAHhJTH9tYcjIBx2YfkD/h3rf22urWYA5SJdc6H
         31lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53387xf5eJa8rJ4cokQgOFOQAdaUXgMohnI/LnsfgqbGdXMwNiF0
	SqUWISAcBMq/bxVxpTNbvcU=
X-Google-Smtp-Source: ABdhPJxVFU4ZtRqad6IUEhGPv+q8mfV6XMNdm37Ib51Tu2YTdfRdDdXixjCTdrvbyqIwuaahtFEImg==
X-Received: by 2002:a19:dca:: with SMTP id 193mr5430676lfn.107.1605540223731;
        Mon, 16 Nov 2020 07:23:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:914c:: with SMTP id q12ls2467870ljg.8.gmail; Mon, 16 Nov
 2020 07:23:42 -0800 (PST)
X-Received: by 2002:a2e:7818:: with SMTP id t24mr6007045ljc.106.1605540222678;
        Mon, 16 Nov 2020 07:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605540222; cv=none;
        d=google.com; s=arc-20160816;
        b=yIv5CFYWrBkamvexD14qLMqPPD30GxHjTxHn2BbuJHWgp4PhW2qpXAAEb3aTweJbf9
         62FiG1p0+gGqVgJXEks3veZrebUFO+A1ANY5PnqsH5irM6r7Xh1RZCXxCJmXV23r/jbP
         JI/4hNPE92JsPYNpU9PNDDr8tBqrBzaRlP/TvejM7w9jat9kKZ2RotDbEgqI7jLZHh/X
         bki8Sb4kBspfsRKWY3wEBg6J+AU5wKKov/j6rtDYXnzTddizCk5fchKUB4iUQsSfJ7KB
         lhcgDpbSe9KEA+i/ufWEEJa8szeRZh3IP0QsaSuDT/GNt+KuIPl2OY9nUEvcwN1Aj35q
         0+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :user-agent:in-reply-to:references:subject:cc:to:from:message-id
         :date;
        bh=Fnl/KdBTBHDdBQK2QFPWLeWOGMZ2n0iVadvOQhZdUzs=;
        b=FvtHT1+fjR8Ku6bwtRfqaGt+7+9fWrcOeRXUyOAZlusVcvTtsZOGBDw5jxVboixU9u
         QNgz0QYF3Fe3rT5V3s2FEwhCXcpCNC73NO0FTOf8eJMh8zEXvHUt335s2xdDgY7xF6g9
         dR1kYlHQJLEatUI/DFq6E7oZEyuL/Q/2UdzkT06Sx5IdfzLEk/8jVIjekpyJrronFAsr
         Lsq34AvvLRnW40umIUY5kyCizhhsRwV/Hayqf0aNs1mh43zRNcSISTpuDrD5i9J5AVaX
         PqChCYyVOFJKWErHYiqgnTs65+H8zqsL78b0p4Xezjk04EwYug5/KiNifZkXI14ilYt3
         r+uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id j2si401314lfe.9.2020.11.16.07.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 07:23:42 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4CZXsN08X6z9twnc;
	Mon, 16 Nov 2020 16:23:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id 8q6JWAeXMjiq; Mon, 16 Nov 2020 16:23:35 +0100 (CET)
Received: from vm-hermes.si.c-s.fr (vm-hermes.si.c-s.fr [192.168.25.253])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4CZXsM6Ljpz9v13s;
	Mon, 16 Nov 2020 16:23:35 +0100 (CET)
Received: by vm-hermes.si.c-s.fr (Postfix, from userid 33)
	id 544032561; Mon, 16 Nov 2020 16:26:30 +0100 (CET)
Received: from 192.168.4.90 ([192.168.4.90]) by messagerie.c-s.fr (Horde
 Framework) with HTTP; Mon, 16 Nov 2020 16:26:30 +0100
Date: Mon, 16 Nov 2020 16:26:30 +0100
Message-ID: <20201116162630.Horde.ihSuzv-KmZ3hdBC3_dOsHA6@messagerie.c-s.fr>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Nick Desaulniers
 <ndesaulniers@google.com>, mihai.caraman@freescale.com, Nathan Chancellor
 <natechancellor@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>,
 =?utf-8?b?RsSBbmctcnXDrCA=?= =?utf-8?b?U8Oybmc=?= <maskray@google.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>, LKML
 <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: Error: invalid switch -me200
References: <202011131146.g8dPLQDD-lkp@intel.com>
 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86>
 <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
 <20201113200444.GA1496675@ubuntu-m3-large-x86>
 <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
 <20201114002037.GW2672@gate.crashing.org>
 <14e9ce2b-1a83-5353-44c7-b0709796c70e@csgroup.eu>
 <87h7pp4yzm.fsf@mpe.ellerman.id.au>
In-Reply-To: <87h7pp4yzm.fsf@mpe.ellerman.id.au>
User-Agent: Internet Messaging Program (IMP) H5 (6.2.3)
Content-Type: text/plain; charset="UTF-8"; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
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


Quoting Michael Ellerman <mpe@ellerman.id.au>:

> Christophe Leroy <christophe.leroy@csgroup.eu> writes:
>> Le 14/11/2020 =C3=A0 01:20, Segher Boessenkool a =C3=A9crit=C2=A0:
>>> On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
>>>>>>> Error: invalid switch -me200
>>>>>>> Error: unrecognized option -me200
>>>>>>
>>>>>> 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
>>>>>>
>>>>>> Are those all broken configs, or is Kconfig messed up such that
>>>>>> randconfig can select these when it should not?
>>>>>
>>>>> Hmmm, looks like this flag does not exist in mainline binutils? There=
 is
>>>>> a thread in 2010 about this that Segher commented on:
>>>>>
>>>>> https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391=
AB6E@kernel.crashing.org/
>>>>>
>>>>> Guess this config should be eliminated?
>>>
>>> The help text for this config options says that e200 is used in 55xx,
>>> and there *is* an -me5500 GAS flag (which probably does this same
>>> thing, too).  But is any of this tested, or useful, or wanted?
>>>
>>> Maybe Christophe knows, cc:ed.
>>>
>>
>> I don't have much clue on this.
>
> Me either.
>
>> But I see on wikipedia that e5500 is a 64 bits powerpc =20
>> (https://en.wikipedia.org/wiki/PowerPC_e5500)
>>
>> What I see is that NXP seems to provide a GCC version that includes =20
>> aditionnal cpu (e200z0 e200z2
>> e200z3 e200z4 e200z6 e200z7):
>>
>> valid arguments to '-mcpu=3D' are: 401 403 405 405fp 440 440fp 464 =20
>> 464fp 476 476fp 505 601 602 603
>> 603e 604 604e 620 630 740 7400 7450 750 801 821 823 8540 8548 860 =20
>> 970 G3 G4 G5 a2 cell e200z0 e200z2
>> e200z3 e200z4 e200z6 e200z7 e300c2 e300c3 e500mc e500mc64 e5500 =20
>> e6500 ec603e native power3 power4
>> power5 power5+ power6 power6x power7 power8 powerpc powerpc64 =20
>> powerpc64le rs64 titan "
>>
>> https://community.nxp.com/t5/MPC5xxx/GCC-generating-not-implemented-inst=
ructions/m-p/845049
>>
>> Apparently based on binutils 2.28
>>
>> https://www.nxp.com/docs/en/release-note/S32DS-POWER-v1-2-RN.pdf
>>
>> But that's not exactly -me200 though.
>>
>> Now, I can't see any defconfig that selects CONFIG_E200, so is that =20
>> worth keeping it in the kernel
>> at all ?
>
> There was a commit in 2014 that suggests it worked at least to some
> extent then:
>
>   3477e71d5319 ("powerpc/booke: Restrict SPE exception handlers to =20
> e200/e500 cores")

Not sure, that patch seems to be focussed on the new e500mc

>
>
> Presumably there was a non-upstream toolchain where it was supported?
>
> AFAICS the kernel builds OK with just the cpu-as modification removed:
>
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index a4d56f0a41d9..16b8336f91dd 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -248,7 +248,6 @@ KBUILD_CFLAGS               +=3D $(call =20
> cc-option,-mno-string)
>  cpu-as-$(CONFIG_40x)           +=3D -Wa,-m405
>  cpu-as-$(CONFIG_44x)           +=3D -Wa,-m440
>  cpu-as-$(CONFIG_ALTIVEC)       +=3D $(call as-option,-Wa$(comma)-maltive=
c)
> -cpu-as-$(CONFIG_E200)          +=3D -Wa,-me200
>  cpu-as-$(CONFIG_E500)          +=3D -Wa,-me500
>
>  # When using '-many -mpower4' gas will first try and find a matching pow=
er4
>
>
> So that seems like the obvious fix for now.

Or we could do

diff --git a/arch/powerpc/platforms/Kconfig.cputype =20
b/arch/powerpc/platforms/Kconfig.cputype
index c194c4ae8bc7..a11cf9431e1e 100644
--- a/arch/powerpc/platforms/Kconfig.cputype
+++ b/arch/powerpc/platforms/Kconfig.cputype
@@ -67,6 +67,7 @@ config 44x
  	select PHYS_64BIT

  config E200
+	depends on $(cc-option,-me200)
  	bool "Freescale e200"

  endchoice
---
Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201116162630.Horde.ihSuzv-KmZ3hdBC3_dOsHA6%40messagerie=
.c-s.fr.
