Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBQV7WLVAKGQEDH2SAJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B70686D02
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 00:18:43 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id i73sf70120236ywa.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 15:18:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565302722; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAVLC5hVzfX8fFnULSQCqke8NFThXUwQMN1efPHzf7WvmvBhs31r5EIwZL+vsKtTzI
         4opM9wtGKwijjT8rbu2/8anEqyeW+YJC5E9wTQrVMneGYN2ScY8KJ08i6pu2au4FY3aS
         0m3d6TOrfJu86H51BC5T455ykLUbm8pel+1/ToO/g2t3RV2tUKbSQyWddM4xaXcyep1D
         88q1bemvJHQrOJZQjwQDg88GOttGbe9L/1urO4klD09zScZKEyO8ZshlWSTClRDIlSSa
         Qk6XGIwS+Snuabp6NK4xpm1b6+PNSx60SUC2r1YnTl7thX6w1dV2AT3xlsxPwjgxgNAU
         dOcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=vNBEiOgsEA77BHIDRNg3dFZWtmLEqWhR976ILbVpxu0=;
        b=BYPWiNH0157DEQWnESdQo1bhukqsVhjSfOgCiQBbN1JwryIG8tVDuuVMXtfoyl0Tnz
         /3niLUoL/jl2h145CwADTX8KmR299PTqoSKpQjp3vLbAjjceMzGX/dLCQYk3MYEl83Ot
         kAXIrT5I7FUqKFAex6xDVTsp3WZXhzJQo/iZ73BiKlAQtQqwBdEv6h04yRS7UPaEP9jC
         SdBQ67Z3xbxMTJA1EOu+0Qtzhv5Z1HkPE/1cjD4WyjXlDMKIeygZoeDiDud1Ikmabbfy
         quD+xkhjHFPnO5m4ck6f+O13NgRthDobSm6kpvPV+13JKAOiZzJsr9dN36rM3G1EMgMv
         yqQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=kucOejN1;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNBEiOgsEA77BHIDRNg3dFZWtmLEqWhR976ILbVpxu0=;
        b=Ft+1VTOM4eyVlsIKCdJFepbIx0oXY21W0W3km/+CO5zEhfQs78MAZmjLrnMa9toOc+
         P3alaRH+8WKr1YpXjuNyslwrqt5fH5irFnGUuAkyQTwJ/YVN87iT93RCdQZbwlvpxHSb
         klGUVIPkXBVPVgil7suP/1R3/qufZ0b23qjRNtH3ia2ptpJVMURNlwO/NQlSEqlfiP9c
         7Bpmakl10EdoeitvhkDoFoPwEIpulSH9G/z52LccQwQ1zuAh95D1ry/fTAxtujBijgfI
         Fdi1y9+7rzBvRIC2meP3e6kWGFkw+24BYC7Lj4O6kJV2Nnok/Wq7ffioVwg2VJxUnFQS
         yaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vNBEiOgsEA77BHIDRNg3dFZWtmLEqWhR976ILbVpxu0=;
        b=ZQVydx+11+XVO0HpUTYrSnLn7CtQ8TD8Mt7Ou1euMa9gjoDli4hG18eDauTvbKFi5t
         gJiPkVC2SMeHRV1WBHdZHLltV2t+K8n/3mKelUEE2UmYwKtq8rIGbI6NdmTqdiEfcA45
         DCN1txUkuuA1HWgWmmORWFAyVSC6EXIqix9q/mzI8X3wOg4GGESXesCTwLfFUwDf2fUM
         g2Btu1DIS4eqjlLmX/+YuMDBZS+cP8sV9u4v9vNXEsqD2CTJZVjynlQoDb6Qff3K+nrx
         2/x2/ql86sxo/ZFHawrJJY8j3DZ0BbmqaghD+03IzbLMs8FTQ2CvQXUfCikrznAUfeLM
         S3MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU51TNDKwSItKpFcAU0QA0dJgzgGYOV+Zz7/igz9QlfDsVtTCzy
	gqdXB4fqNPKi36gKyyvnK3Y=
X-Google-Smtp-Source: APXvYqwB4AxoDnSyte7apYEQFPhX1YGCnhnKyiqeiLHFy+S53hmwgtvYe+rwqYKbkR0oCBNNoHDMeQ==
X-Received: by 2002:a0d:e856:: with SMTP id r83mr4647898ywe.471.1565302722301;
        Thu, 08 Aug 2019 15:18:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e4c2:: with SMTP id n185ls1616040ywe.1.gmail; Thu, 08
 Aug 2019 15:18:42 -0700 (PDT)
X-Received: by 2002:a81:3854:: with SMTP id f81mr9256679ywa.45.1565302722034;
        Thu, 08 Aug 2019 15:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565302722; cv=none;
        d=google.com; s=arc-20160816;
        b=NDlzZ/1kxKKA1pl1aABa33Iafx4GBeWan3bRTb82LLz9n1Lqy4wDm4qxPPUW6uSPFv
         RrOClX1lJnLmO1wFwTAIUSgJfz1Kgs93HrwEFLLUfAW99QprMyAhfIsPyKSGuH7w8hEY
         umseYvcdb/nx/wQHFptZxN+fXb5+4wzDyZuSr0rR2Q6K4af2v92z0i3Kn3uhE2PhJaOs
         UNo+oTifaWInvmJG30uB7EpWDs3jTKczPybSlRJakLBOoYu28Fpz4O1T/y5bd1AErEfk
         E8zRkc4sZO1EzoZEhNgrvvDXuPmA0bRA7XtTTkyvygpLQvJ0qSpgFiXWqdZukRD6yUuS
         eTqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=QLZzrW7ZdQW83kYujBZ//d/WvY4fqGhP4bcyYPW9Wjc=;
        b=vIK/3letQvdbt4L2KtshWOM5Wha9ys1d/g4TylV402RlPjIpjZG3a0N+VeF8w7cv4p
         CeHtLD33A0b7Y6EUYZF0CE33Jy3b+UoIYVwzQAiLz2EUkNxh2FssI9h3UZ3Nw7tD4TAG
         LYu2VPDpOgV5QtAFw2PHYfJD1xt8QIaIpqY2M8/sUpAJYiuwIpjw0xcb74WSmpUMa43l
         xTl7OHb4jErj2kyswArenp+Snj4ObUXBxmrMBLOPTyBSGWJopTHkY3E7m33pV1d1J2Vs
         RqGNisa10M6pFK/H+BxCQX4UkJBdqceYBHJ4KyEUjXCf7Xvm/3Nx9F2C1Htrow+n0NiN
         rnvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=kucOejN1;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id x5si3326994ybn.2.2019.08.08.15.18.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 15:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 201so70123292qkm.9
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 15:18:41 -0700 (PDT)
X-Received: by 2002:a05:620a:70f:: with SMTP id 15mr15546578qkc.171.1565302721558;
        Thu, 08 Aug 2019 15:18:41 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id u4sm41470668qkb.16.2019.08.08.15.18.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 15:18:40 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190808103808.GC46901@lakrids.cambridge.arm.com>
Date: Thu, 8 Aug 2019 18:18:39 -0400
Cc: Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
To: Mark Rutland <mark.rutland@arm.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=kucOejN1;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Aug 8, 2019, at 6:38 AM, Mark Rutland <mark.rutland@arm.com> wrote:
>=20
> On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
>> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
>> VIVT I-caches") introduced some compiation warnings from GCC (and
>> Clang) with -Winitializer-overrides),
>>=20
>> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
>> overwritten [-Woverride-init]
>> [ICACHE_POLICY_VIPT]  =3D "VIPT",
>>                        ^~~~~~
>> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
>> 'icache_policy_str[2]')
>> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
>> overwritten [-Woverride-init]
>> [ICACHE_POLICY_PIPT]  =3D "PIPT",
>>                        ^~~~~~
>> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
>> 'icache_policy_str[3]')
>> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
>> overwritten [-Woverride-init]
>> [ICACHE_POLICY_VPIPT]  =3D "VPIPT",
>>                         ^~~~~~~
>> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
>> 'icache_policy_str[0]')
>>=20
>> because it initializes icache_policy_str[0 ... 3] twice. Since
>> arm64 developers are keen to keep the style of initializing a static
>> array with a non-zero pattern first, just disable those warnings for
>> both GCC and Clang of this file.
>>=20
>> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT =
I-caches")
>> Signed-off-by: Qian Cai <cai@lca.pw>
>=20
> This is _not_ a fix, and should not require backporting to stable trees.

From my experience, the stable AI will pick up whatever they want to backpo=
rt
not matter if there Is a =E2=80=9CFixes=E2=80=9D tag or not unless it is on=
e of those subsystems like
Networking that exclusively manually flag for. backporting by the maintaine=
r. =20

>=20
> What about all the other instances that we have in mainline?

I have not had a chance to review all instances yet. It is not unusually to=
 fix one
warning at a time, and then go on fixing some more if time permit.

>=20
> I really don't think that we need to go down this road; we're just going
> to end up adding this to every file that happens to include a header
> using this scheme=E2=80=A6

How about disable them this way in a top level like arch/arm64/Makefile or
arch/arm64/kernel/Makefile? Therefore, there is no need to add this to
every file, but with a drawback that it could miss a few real issues there
in the future which probably not many people are checking for them of
the arm64 subsystem nowadays.

>=20
> Please just turn this off by default for clang.

As mentioned before, it is very valuable to run =E2=80=9Cmake W=3D1=E2=80=
=9D given it found
many real developer mistakes which will enable =E2=80=9C-Woverride-init=E2=
=80=9D for both
compilers. Even =E2=80=9C-Woverride-init=E2=80=9D itself is useful find rea=
l issues as in,

ae5e033d65a (=E2=80=9Cmfd: rk808: Fix RK818_IRQ_DISCHG_ILIM initializer=E2=
=80=9D)
32df34d875bb (=E2=80=9C[media] rc: img-ir: jvc: Remove unused no-leader tim=
ings=E2=80=9D)

Especially, to find redundant initializations in large structures. e.g.,

e6ea0b917875 (=E2=80=9C[media] dvb_frontend: Don't declare values twice at =
a table=E2=80=9D)

It is important to keep the noise-level as low as possible by keeping the
amount of false positives under control to be truly benefit from those
valuable compiler warnings.=20

>=20
> If we want to enable this, we need a mechanism to permit overridable
> assignments as we use range initializers for.

I am not sure that it is worth filling a RFE for compilers of that feature.
I feel like the range initializers just another way to initialize an array,=
 and
 it is just easier to make mistakes with unintended double-initializations.
The compiler developers probably recommend to enforce more of
=E2=80=9C-Woverride-init=E2=80=9D for  the range initializers rather than p=
ermitting it.

>=20
> Thanks,
> Mark.
>=20
>> ---
>> arch/arm64/kernel/Makefile | 3 +++
>> 1 file changed, 3 insertions(+)
>>=20
>> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
>> index 478491f07b4f..397ed5f7be1e 100644
>> --- a/arch/arm64/kernel/Makefile
>> +++ b/arch/arm64/kernel/Makefile
>> @@ -11,6 +11,9 @@ CFLAGS_REMOVE_ftrace.o =3D $(CC_FLAGS_FTRACE)
>> CFLAGS_REMOVE_insn.o =3D $(CC_FLAGS_FTRACE)
>> CFLAGS_REMOVE_return_address.o =3D $(CC_FLAGS_FTRACE)
>>=20
>> +CFLAGS_cpuinfo.o +=3D $(call cc-disable-warning, override-init)
>> +CFLAGS_cpuinfo.o +=3D $(call cc-disable-warning, initializer-overrides)
>> +
>> # Object file lists.
>> obj-y			:=3D debug-monitors.o entry.o irq.o fpsimd.o		\
>> 			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
>> --=20
>> 2.20.1 (Apple Git-117)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/D2A2F2B9-0563-4DF6-8E77-F191A768CE4E%40lca.pw.
