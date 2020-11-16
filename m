Return-Path: <clang-built-linux+bncBCR5PSMFZYORB25NZD6QKGQEV2PW7JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7992B3CC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:06:36 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id t4sf2399479oth.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:06:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605506795; cv=pass;
        d=google.com; s=arc-20160816;
        b=CwSXdGhrXjX3TMBMjmm9yTAc7nKKbDIFOCuC8RSzBoOIOID0cw599k8Fc+afOOOIfF
         Raj3qA6yjw3vDEVuRQm6/Gl68KVL7jRCn7oPPUF8IQ0HvQlkXQUyjWU+KTPO4sLXeZfn
         LQrXJhGITM0a7TZ1NVSkdY06NE2pOB/jbMB3aWsNhspvQ0ls/prEdYsfLd0SIR5URXjT
         7hwNMIcdnZlHGfDEk6E1b9MyiTwYZ2SoKN4bYd9QwTbaHgi32D9+4IylcoLUPzgLHr2Y
         DWne3UcUSyDa0rfaJCOhlfcfrGX5eHLwjspRG8FOZiq9sBv1BXhni/5HV8tbwe0M8Amw
         TcDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=zBa+NaS6cCAVAUwEgHSaS0q8QXQEDyzshmwFJfuaMsM=;
        b=b1u4ALmveh5U+k429U3wQ6n+MYiXeG/Ty6hvWH+ZF2uMQD0rMfNZPs+NGhRJNlbfTh
         BisuGnyYgsJ6jN/5njP3zy9G6ym/H1eHv7NZ4B7NO+Jn6D5HE+46KoEl64vbiryguPKj
         Zts74KDTwOSKDH4cGsNzzhGUsYya4k41BavfD41cIm3bbGytj0Js+SlBT0sA0Fuk0LBY
         ARbNsPRihJ57+QbJZGPlYhHISs3HovDV6HuY55nbLcpkvATroXA1a22u021jbTLleL70
         PJJ0WurVvLkl/4pZsknYQeqMe6xOB9TisR0K3ul575YomYW6dR7bUihrXsWWz2Ak36l2
         VUSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DuqXwDq6;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zBa+NaS6cCAVAUwEgHSaS0q8QXQEDyzshmwFJfuaMsM=;
        b=PA3WvgMFIck06YYa3kNJxe1EcvZbZySkT7JBPgSjqfsSBVmUMcyL5NBtfpf6oBo2wo
         YClljx1OGDmb3AxmPyIUVCTR1BEFCSmumyfsCnj+fVl2sHSQpb1Ug3yCkXKX8bd/HmVm
         yhmiQS0MSlqgydLR2im6L7VEMQ8oZSBgWgvZitBQxSeFkYL5yqPmNBvo3DjiF09VXCev
         q6UcXScraApc+oQvZs03KT/6GqfgJLL5MCUHIrzWJuDHQtyRzqUi25I3tnCFZ9kry4Yp
         nrqEFKPPbUFMHwuLnS9efMOcE0rU4zDU23mVVbkqlFuoNJPpEDDCZOgHbALzbJOkSdzo
         jRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zBa+NaS6cCAVAUwEgHSaS0q8QXQEDyzshmwFJfuaMsM=;
        b=Awga7bsQG3za/FIzYR2Ri9YnmXW7NseMXnyufr+/+9RC1Vs595L/5gio+U0Ys4RUNu
         5TkwVLByMq68vHqu5tpvgQfBDKGnwB1tD29zjK+Xw8ovDwkF8uqbBz0YK330jaUrEIYd
         s0L+Fr37trUIDmBJHndn8a6y9KGWMyXO3HOnEAI4NdrL67KAe1xRrpYLubjvKe8kO1Vx
         reDhogXB6KAtnPnQbEYiP/0VSqQDJRapmSCt79DuC4iT2FVkalUBiDR/ZIsQfG9y1KDD
         vTvmZOWNJPXqZWbO/kzK7VZ8g2DXqk/wh0txrjejICkMSoscIDzrtxQm5+2qNnPxPOnl
         PvEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eXLh4jpVOoFoSTSt+ip+YhCebNVDtD9rz9cQMAdcZ3RMLffNi
	pYOaW+XygDbGAS6GExFVOlk=
X-Google-Smtp-Source: ABdhPJwfn6j3Ijzo4QSt0muug47a8w1hcOrcutruEE+wG3goRKA+XlCZTESd/cWmtaP0Rj9qg4JRRg==
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr9046429oih.56.1605506795164;
        Sun, 15 Nov 2020 22:06:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls3027092otm.2.gmail; Sun, 15 Nov
 2020 22:06:34 -0800 (PST)
X-Received: by 2002:a05:6830:1e7a:: with SMTP id m26mr10083847otr.104.1605506794461;
        Sun, 15 Nov 2020 22:06:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605506794; cv=none;
        d=google.com; s=arc-20160816;
        b=cEFNIgxVLbSTlOVLXRcfGE6O25hw92gt0Qa63xJ6R1IkM9sYMMsZXiaSKJqfNJpVjy
         PsommE1RRXb1v5RYrbkn8/UYwluxCrRa3v+qwFW1WC8XPHC+mxi1qRR6G7v8HswM8mYV
         fQvwaPae2UNm8lflKe5bAEC/nl5ndL7jnMWmi65lFSECzLp0DjaXA6+nOr18zIfNURyy
         aGodofi1+yF7hjCObZAWuBWJbQdy6DDY2k19ojAR44oCJO5bO+0zdfu0uvQopL/VQkd4
         lLxi/WkRO8jNxd2q1VCJwqtt4gkPzPLSonayPdmgFVrcOV/tH+RPzwDI5YlEdGfJRc6F
         ISRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=ch299mk90KmXSAg70K0CKihxvg+MpWTVqz982X09CgQ=;
        b=a3XRxMJwblHpE4/kF61Xrm/8uMRqNIgBOhUmXvayaijHTbWNSCEBb+1W6I5XEQKtE/
         B+mfNwY4a7FaL7I1Wwap4p7MMDbKfLfUsoE3iURj8wbxfMOftVVnvVs5w2Ty1JdKR5tp
         3Nd0bcLdtqWBhYZJ0QXK96NwoPr1gKVHJNh0J2dwjcRI4NHYsC4TWkhr+q+pT+cGy9u7
         KBwcxCdF2FnAouXw81UGqncqzNq4ay2zyaPGT9PEgjJDo0kEuCYQ5DtiZ6rpwes4AjuZ
         H1BDxGOSYI6F6EIK10ZG06VD5dFUW4arr3bRu7M2/Clxc6oFZkCaKTVZNwEzhNIh+YGL
         xRKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DuqXwDq6;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id k134si831766oib.5.2020.11.15.22.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 22:06:33 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CZJVT5pSnz9sPB;
	Mon, 16 Nov 2020 17:06:24 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@csgroup.eu>, Segher Boessenkool <segher@kernel.crashing.org>, Nick Desaulniers <ndesaulniers@google.com>, mihai.caraman@freescale.com
Cc: Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>, Brian
 Cain <bcain@codeaurora.org>, =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?=
 <maskray@google.com>, kernel test robot <lkp@intel.com>,
 kbuild-all@lists.01.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, linuxppc-dev
 <linuxppc-dev@lists.ozlabs.org>
Subject: Re: Error: invalid switch -me200
In-Reply-To: <14e9ce2b-1a83-5353-44c7-b0709796c70e@csgroup.eu>
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com> <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com> <20201113200444.GA1496675@ubuntu-m3-large-x86> <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com> <20201114002037.GW2672@gate.crashing.org> <14e9ce2b-1a83-5353-44c7-b0709796c70e@csgroup.eu>
Date: Mon, 16 Nov 2020 17:06:21 +1100
Message-ID: <87h7pp4yzm.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=DuqXwDq6;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Christophe Leroy <christophe.leroy@csgroup.eu> writes:
> Le 14/11/2020 =C3=A0 01:20, Segher Boessenkool a =C3=A9crit=C2=A0:
>> On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
>>>>>> Error: invalid switch -me200
>>>>>> Error: unrecognized option -me200
>>>>>
>>>>> 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
>>>>>
>>>>> Are those all broken configs, or is Kconfig messed up such that
>>>>> randconfig can select these when it should not?
>>>>
>>>> Hmmm, looks like this flag does not exist in mainline binutils? There =
is
>>>> a thread in 2010 about this that Segher commented on:
>>>>
>>>> https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391A=
B6E@kernel.crashing.org/
>>>>
>>>> Guess this config should be eliminated?
>>=20
>> The help text for this config options says that e200 is used in 55xx,
>> and there *is* an -me5500 GAS flag (which probably does this same
>> thing, too).  But is any of this tested, or useful, or wanted?
>>=20
>> Maybe Christophe knows, cc:ed.
>>=20
>
> I don't have much clue on this.

Me either.

> But I see on wikipedia that e5500 is a 64 bits powerpc (https://en.wikipe=
dia.org/wiki/PowerPC_e5500)
>
> What I see is that NXP seems to provide a GCC version that includes aditi=
onnal cpu (e200z0 e200z2=20
> e200z3 e200z4 e200z6 e200z7):
>
> valid arguments to '-mcpu=3D' are: 401 403 405 405fp 440 440fp 464 464fp =
476 476fp 505 601 602 603=20
> 603e 604 604e 620 630 740 7400 7450 750 801 821 823 8540 8548 860 970 G3 =
G4 G5 a2 cell e200z0 e200z2=20
> e200z3 e200z4 e200z6 e200z7 e300c2 e300c3 e500mc e500mc64 e5500 e6500 ec6=
03e native power3 power4=20
> power5 power5+ power6 power6x power7 power8 powerpc powerpc64 powerpc64le=
 rs64 titan "
>
> https://community.nxp.com/t5/MPC5xxx/GCC-generating-not-implemented-instr=
uctions/m-p/845049
>
> Apparently based on binutils 2.28
>
> https://www.nxp.com/docs/en/release-note/S32DS-POWER-v1-2-RN.pdf
>
> But that's not exactly -me200 though.
>
> Now, I can't see any defconfig that selects CONFIG_E200, so is that worth=
 keeping it in the kernel=20
> at all ?

There was a commit in 2014 that suggests it worked at least to some
extent then:

  3477e71d5319 ("powerpc/booke: Restrict SPE exception handlers to e200/e50=
0 cores")


Presumably there was a non-upstream toolchain where it was supported?

AFAICS the kernel builds OK with just the cpu-as modification removed:

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index a4d56f0a41d9..16b8336f91dd 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -248,7 +248,6 @@ KBUILD_CFLAGS               +=3D $(call cc-option,-mno-=
string)
 cpu-as-$(CONFIG_40x)           +=3D -Wa,-m405
 cpu-as-$(CONFIG_44x)           +=3D -Wa,-m440
 cpu-as-$(CONFIG_ALTIVEC)       +=3D $(call as-option,-Wa$(comma)-maltivec)
-cpu-as-$(CONFIG_E200)          +=3D -Wa,-me200
 cpu-as-$(CONFIG_E500)          +=3D -Wa,-me500

 # When using '-many -mpower4' gas will first try and find a matching power=
4


So that seems like the obvious fix for now.

I tried booting the resulting kernel in qemu, but I get:

  $ qemu-system-ppc -M none -cpu e200 -kernel build\~/vmlinux
  Error: Trying to register SPR 574 (23e) twice !


Which is not related AFAIK and indicates the qemu support is broken.

Unless we hear from someone that they're using mainline on an e200 then
it seems like it's a candidate for removal.

cheers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87h7pp4yzm.fsf%40mpe.ellerman.id.au.
