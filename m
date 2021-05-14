Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBOVR66CAMGQEVHBOWBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B49380199
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 03:56:12 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id b7-20020a056e020487b02901bb31b56af8sf6659188ils.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 18:56:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620957371; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZ5/Pck5DmhWFGnXPtlkb9XZgWC6DvQoc2kFIKxLbUdEwFfCIyhGCHOADJJxD81pXK
         eSwFQQPglqAC9kjHBh/wm39icshrBRv5xQPTovYEwXRWRcFCFlKhFlJIf5c1VUqt26aa
         /GkkbvD9F23La/bX2bKlI1cB4fMunCoNlANnWONFIv9Z099nPEBouJaWxXBEAf/f+sU+
         zWhuZnCf00grySHbpuZRhm8gkYojuaezhXWT8C+zK+WTpGmJXxPR0yBM/6DnCt6y10Zq
         P2CdjSkLgebFcyL0EFbUXVCSuW1t9Kne0TCj5cjUyEgxjz2tyKHI1kgBXVednZZGSFkv
         /+6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=OoXYhJkAIpHi1MlsfB6vHWGHlG7nd3AuWRTrzb4RWiQ=;
        b=KgFWZLEVdPV5tX1QTTSVXqPdbfURIshtajoTS+18QJ0OqfXamvLu0nR7K3C5w30lRE
         /0ctf8TH5J8V2Ut9ZQ7mpgUizr23HJfHuDxnhJDzbyed5j62BRO170l+6de1rH1X6d+c
         juReEc/baTu2EGES/X81oogjuF3O5pNyEvlNBE0pJCbQit3+jsAvT+/0VXgO0JpPHkaU
         wU2f3c90Zi2vVIAtX4etGt2x9Dk+d0RuEcwfjvuLGPUsFnEbNBjLJF+PXm9yfRcFKmCY
         4BYa7fTeVoR1MFvTQKa3qRFeC7DupFD5Ew1o42Fxks5ktifKcLsZD9jC1mmPXLJlGEmp
         FG4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b="19J/++UR";
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OoXYhJkAIpHi1MlsfB6vHWGHlG7nd3AuWRTrzb4RWiQ=;
        b=bNRt7keW88X/NwXZuUKuymsFPahwFhs+9WUiVFSYv7mAKyhzPEqOU1w7o87lB8+0aP
         5NEx1/gERasAlqIITLMCLJZloIk1rOfskTfOsiZGWzC/xktvoQKtwItqyfEe5I3uw+qU
         I6y8p0FWmjmmT84Y/a/LRggYp6f5+0H00o7JK+GRQ7pEvYQp1gopo9NmQCZEYhh6BzuC
         TDfiEFwt2r3NXHW98m1GqFPydm5SqtwUadWybIhUWULJIWegQdRwK8Js3DdOEwQI8AOt
         t7h/1+Uk4QbtzsJ/DPcwGE56+B4G9V2x7VQxuunI/z90HvFovMf7IqKtmygVWuB3D3Zx
         bhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoXYhJkAIpHi1MlsfB6vHWGHlG7nd3AuWRTrzb4RWiQ=;
        b=Z6dlWfIeerIvrTYeO+J6DprPVNWgoNtBJKorWAHwaV08UlAMwgmDCkCRK6Z4nCHSwW
         8ayk2IacsaU5kpw/dffZOZLoigXcLQjgSm03Ayfvz/IJZgMgI4+2R3Yi221Fp9THD5F7
         4+j0FjOdnKSveYcFfbX2+EJTjCxrzGsfx2YoYOH2pbgWdoWujuWBPmrci0LlSIS1NcxW
         uLdP2W6MqYt3FYAclolGRgqbYD//lPZbjdxSGDB+fAKR3NgWa0sPl5COJcXNf0eNLvw2
         3uNQoP9kJGBiYsPVnsDAtmPK0Q32Cixi8vGV0TGY9+MrWYaGmRGCIRTZZh1vhf9D4geM
         7iLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eqBuXxl3WW8pnvJpPEp0n4DymUKbKvq/4QszDSJ3HmiOS1XEt
	SbwElw6ZT/uW+9XwZPUTTzA=
X-Google-Smtp-Source: ABdhPJyaDkEmDcbAo4qyBRen5SZ8wbJ81/HyZYStJGFRsM9WXR6cS1ef+/7ye4EG6+FrXyfpJEtq+A==
X-Received: by 2002:a05:6602:2e82:: with SMTP id m2mr31221114iow.190.1620957370792;
        Thu, 13 May 2021 18:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1689:: with SMTP id s9ls1186695iow.1.gmail; Thu, 13
 May 2021 18:56:10 -0700 (PDT)
X-Received: by 2002:a05:6602:72f:: with SMTP id g15mr33010144iox.5.1620957370266;
        Thu, 13 May 2021 18:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620957370; cv=none;
        d=google.com; s=arc-20160816;
        b=EITxOe4jOKei3w/ZHISwcysq00YnJcMwI94oFsu86+D8vR5n4mabaGSdf46HfBVFGL
         NJ+D8vAHVgNRxIj2NvPbrzf5XKLW1zp7rHeCMGBFZUVKaYQ2ZhU/Jkepe87zMQ1tIzVV
         7efO5dbF1ULK+4e6lrifEKMPnuVWLkPpD6vu3ds5vCUfNysYwfhV2K1+KLNTDfUuaiAU
         BAzMCUjyJB9/bFyoWBi57Z66PCtmMf3mryHJpLiamMqC3tt/mCFvwU1wMsjnUf1wJYLW
         McHRTLDLdpJzCsuHl7R4vFCDb1natDR29L7anYY87gb+bSYcDcZN/7Bu0H5m8YJxOf/y
         gHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=N2iyxhvY8HuVpNdOOBZq1NpZlD91R7+QI6hopy2Mk2Q=;
        b=X1y682GCbjVrZLkjMCmf83/mFzrDcF5URi5br3daSt1DMlqtSvIRrkQIFWXRcvhicb
         R8lLaPxXWtXwYHj6vhHhNWSQ0Pe8B1/lkfD2rJNxGzHAhcfhfc2i9UL0WTETcUHbKc7v
         /KA7I6/EmB+V9vxAsUofo8c3tGL4qrJPKEfIjRocWciIfDaNjR+Bll36qEFUahMYD/ug
         UTCucg/ynMzM+/ajfQ+9fQxDQgx2UFFgwLFdUSBT7AtR9viqIGBZyXmFOFIhHKhb8dGU
         KMFZa7xUYmdCbDRQ7gwtVmGYoSaNvN4aAvz2IzZ3krx8CXoSPhn7OKEcyd8ZiTTHXzMw
         gC8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b="19J/++UR";
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id m11si219696iov.0.2021.05.13.18.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 18:56:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id z4so5678308pgb.9
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 18:56:09 -0700 (PDT)
X-Received: by 2002:a63:b94b:: with SMTP id v11mr43699851pgo.76.1620957368493;
        Thu, 13 May 2021 18:56:08 -0700 (PDT)
Received: from localhost (ppp121-45-194-51.cbr-trn-nor-bras38.tpg.internode.on.net. [121.45.194.51])
        by smtp.gmail.com with UTF8SMTPSA id w127sm2937460pfw.4.2021.05.13.18.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 18:56:07 -0700 (PDT)
Message-ID: <af1e3d74-a373-09ae-ba61-8db2a906d71a@ozlabs.ru>
Date: Fri, 14 May 2021 11:56:01 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:88.0) Gecko/20100101
 Thunderbird/88.0
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
Content-Language: en-US
To: Nathan Chancellor <nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org
Cc: linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Michael Ellerman
 <mpe@ellerman.id.au>, Masahiro Yamada <masahiroy@kernel.org>,
 Segher Boessenkool <segher@kernel.crashing.org>
References: <20210513115904.519912-1-aik@ozlabs.ru>
 <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
From: Alexey Kardashevskiy <aik@ozlabs.ru>
In-Reply-To: <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b="19J/++UR";       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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



On 14/05/2021 04:59, Nathan Chancellor wrote:
> On 5/13/2021 4:59 AM, Alexey Kardashevskiy wrote:
>> The $(CPP) (do only preprocessing) macro is already defined in Makefile.
>> However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
>> in flags duplication. Which is not a big deal by itself except for
>> the flags which depend on other flags and the compiler checks them
>> as it parses the command line.
>>
>> Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
>> If clang+llvm+sanitizer are enabled, this results in
>>
>> -emit-llvm-bc -fno-lto -flto -fvisibility=3Dhidden \
>> =C2=A0 -fsanitize=3Dcfi-mfcall -fno-lto=C2=A0 ...
>>
>> in the clang command line and triggers error:
>>
>> clang-13: error: invalid argument '-fsanitize=3Dcfi-mfcall' only allowed=
=20
>> with '-flto'
>>
>> This removes unnecessary CPP redefinition. Which works fine as in most
>> place KBUILD_CFLAGS is passed to $CPP except
>> arch/powerpc/kernel/vdso64/vdso(32|64).lds. To fix vdso, this does:
>> 1. add -m(big|little)-endian to $CPP
>> 2. add target to $KBUILD_CPPFLAGS as otherwise clang ignores=20
>> -m(big|little)-endian if
>> the building platform does not support big endian (such as x86).
>>
>> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
>> ---
>> Changes:
>> v3:
>> * moved vdso cleanup in a separate patch
>> * only add target to KBUILD_CPPFLAGS for CLANG
>>
>> v2:
>> * fix KBUILD_CPPFLAGS
>> * add CLANG_FLAGS to CPPFLAGS
>> ---
>> =C2=A0 Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 arch/powerpc/Makefile | 3 ++-
>> =C2=A0 2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 15b6476d0f89..5b545bef7653 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -576,6 +576,7 @@ CC_VERSION_TEXT =3D $(subst $(pound),,$(shell $(CC)=
=20
>> --version 2>/dev/null | head -
>> =C2=A0 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>> =C2=A0 ifneq ($(CROSS_COMPILE),)
>> =C2=A0 CLANG_FLAGS=C2=A0=C2=A0=C2=A0 +=3D --target=3D$(notdir $(CROSS_CO=
MPILE:%-=3D%))
>> +KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D --target=3D$(notdir $(CROSS_COMP=
ILE:%-=3D%))
>=20
> You can avoid the duplication here by just doing:
>=20
> KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(CLANG_FLAGS)

This has potential of duplicating even more flags which is exactly what=20
I am trying to avoid here.


> I am still not super happy about the flag duplication but I am not sure=
=20
> I can think of a better solution. If KBUILD_CPPFLAGS are always included=
=20
> when building .o files,


My understanding is that KBUILD_CPPFLAGS should not be added for .o. Who=20
does know or decide for sure about what CPPFLAGS are for? :)


> maybe we should just add $(CLANG_FLAGS) to=20
> KBUILD_CPPFLAGS instead of KBUILD_CFLAGS?
>=20
>> =C2=A0 endif
>> =C2=A0 ifeq ($(LLVM_IAS),1)
>> =C2=A0 CLANG_FLAGS=C2=A0=C2=A0=C2=A0 +=3D -integrated-as
>> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
>> index 3212d076ac6a..306bfd2797ad 100644
>> --- a/arch/powerpc/Makefile
>> +++ b/arch/powerpc/Makefile
>> @@ -76,6 +76,7 @@ endif
>> =C2=A0 ifdef CONFIG_CPU_LITTLE_ENDIAN
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D -mlittle-endian
>> +KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D -mlittle-endian
>> =C2=A0 KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -EL
>> =C2=A0 LDEMULATION=C2=A0=C2=A0=C2=A0 :=3D lppc
>> =C2=A0 GNUTARGET=C2=A0=C2=A0=C2=A0 :=3D powerpcle
>> @@ -83,6 +84,7 @@ MULTIPLEWORD=C2=A0=C2=A0=C2=A0 :=3D -mno-multiple
>> =C2=A0 KBUILD_CFLAGS_MODULE +=3D $(call cc-option,-mno-save-toc-indirect=
)
>> =C2=A0 else
>> =C2=A0 KBUILD_CFLAGS +=3D $(call cc-option,-mbig-endian)
>> +KBUILD_CPPFLAGS +=3D $(call cc-option,-mbig-endian)
>> =C2=A0 KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -EB
>> =C2=A0 LDEMULATION=C2=A0=C2=A0=C2=A0 :=3D ppc
>> =C2=A0 GNUTARGET=C2=A0=C2=A0=C2=A0 :=3D powerpc
>> @@ -208,7 +210,6 @@ KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D -I $(srctree)=
/arch/$(ARCH)=20
>> $(asinstr)
>> =C2=A0 KBUILD_AFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(AFLAGS-y)
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(call cc-option,-msoft-floa=
t)
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D -pipe $(CFLAGS-y)
>> -CPP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D $(CC) -E $(KBUILD_CFL=
AGS)
>> =C2=A0 CHECKFLAGS=C2=A0=C2=A0=C2=A0 +=3D -m$(BITS) -D__powerpc__ -D__pow=
erpc$(BITS)__
>> =C2=A0 ifdef CONFIG_CPU_BIG_ENDIAN
>>
>=20

--=20
Alexey

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/af1e3d74-a373-09ae-ba61-8db2a906d71a%40ozlabs.ru.
