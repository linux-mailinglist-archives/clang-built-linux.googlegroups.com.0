Return-Path: <clang-built-linux+bncBAABBXEB5D7QKGQERFYLIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA0C2F0319
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 20:15:41 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id v7sf5489072wra.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 11:15:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610219741; cv=pass;
        d=google.com; s=arc-20160816;
        b=jr8KFt1CoE28P//Zo/gYfW3lH/9U60rhLmo4NImuIQ3KQIjJ8UbUAaBFphMep73xLf
         LD2i+VcP4SXsuc0943jW3ATCc7hLiP3nxDhVNvSTSvTc8m5rW3moyS7yG+UwkrR9ngOC
         lGFQSGdapwP5WFP/GRxtmfsPb7QJAt6IYKYdw/aN6y17EfCaY1XtpHPd2NCYBGSdVhQ3
         qk2g9MxnLHRn1QSdIEgvPRg9ejhaWHL6x00WBnZPUCtjeb6VG3UmUniEXuuZxNXc88Qv
         tNWGMFzdT1rfP99IkdgQlC1N+XXomXsYNlvk8MSHOvknKSjKHxTiinf5j6iOqNxRnp7t
         B7Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:reply-to:cc
         :from:to:date:dkim-signature;
        bh=K2EFu8VVY7Hz/Mrc7hQAjdzXhzOcKZdaMULY8Lse5po=;
        b=YsHrfMr6zyXIjnZgMxrfBlnW6DfKEFTyYoXt/Bv6NDoaMGK6VaLlcALWfdz4iIWcOZ
         zF5RT+qDTtedMy/D7pc1Vit+zPCUMxjW6li8NOw7w+pfvxmq0Yq/gnH5iMZtPyILFzbn
         PZizOasE7tKeiYFKIupY5EZXk+gjUtHWb4piGRiv9K1xPrgJmMP6Xml/kKHG5o7SW4Fu
         sdow/uYVKsLobU+Fh+qSgHj/wHKfE/ExhBwhr1Tajfa1IZJJ9eK4UWpin0d8x/9Palh4
         W2HzftAC+KtrAhbOfbZfWwDwqVNzp+dJlx4AOp4jSiYJpLH+8mBH4CkH1vqyz/YBn577
         nk8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=efJi1H69;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K2EFu8VVY7Hz/Mrc7hQAjdzXhzOcKZdaMULY8Lse5po=;
        b=VkvRl5dNx8hR5XZu3FKdmd1nbD/cC7zZ34dX6Z4PcwRBh/238DrOR9bEwmcW8b/hNn
         EwBybLPYqV9xBD8jmi78hRDtjftpzSb1LM4chYBU/C6c/zNM5QiFPfJpkD4fxeECdhtf
         9ISr/xuAXna/q5vJ+IVbL4WmEqNt+0AEvk62oJM8KQKsmlOx1zo+8S2xINGAdQ5+MveK
         Ime5yjHXEzNER3uSOips5emKRuO+WCINAM2YCVbugU7SmtDc/TWD9BJL8RqsUgC7oGbu
         lD+WbASA336fGDT8SXABl/eV/Uh+xRvfA2oS53XcEiwIAIyx3JZ/DSRAAgg3JLNC8oyO
         swww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K2EFu8VVY7Hz/Mrc7hQAjdzXhzOcKZdaMULY8Lse5po=;
        b=BL2USgGkmwHCyroHOUxXNaqYHZXAK//cLfPIPpp33yPEFRylnsTTm+OFKSIMmz6M4R
         mbIEEQe5/xKKK67uUcgnyALbGngmZoPYNQa91tFlDfZnMCleWdN8eYycFlFzgvvKaFp2
         VAmzQ6rM+lobE0yheLTAgTWkgwkXwTWY9kXMV5AnkDFiVUtYxY1idG4spegxlCQ5NOvM
         1DLZyHrAYs5YewB94kDCD1OJUdn8n7NaA7ebyK+XY21DX4EwDu3QBoOCtDZlOJdFV+OI
         gj6eBFkKE/ZS5qmNmFmM5EjlQcKu59GMPZAUwsaMybif80tIKJGVd/vNkagfjwo12czy
         uATQ==
X-Gm-Message-State: AOAM5323mV7PQ5gh5/kp+4TXCbd7JbC7PFq4Zt/GfTGLIq34hGdmsTNx
	W8ioh0DIWBbZm5zI+jrI6Jw=
X-Google-Smtp-Source: ABdhPJy2PtokVW/LLfjDScQqYyWNoL3hL4GSfOPrKI0XqCctLTK+ji0vZPpfy8buatdPwPyJkJgp7A==
X-Received: by 2002:a7b:cb04:: with SMTP id u4mr8057190wmj.117.1610219741003;
        Sat, 09 Jan 2021 11:15:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2094:: with SMTP id g142ls6227985wmg.2.gmail; Sat, 09
 Jan 2021 11:15:40 -0800 (PST)
X-Received: by 2002:a1c:e90b:: with SMTP id q11mr8299153wmc.102.1610219740345;
        Sat, 09 Jan 2021 11:15:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610219740; cv=none;
        d=google.com; s=arc-20160816;
        b=QeHwRgd2a1WjHZh9IYCjeyfL7xwNzSijCsy59cJkMz0trim2Tnmev8At8BOF8Jfurh
         HiczD8O7csJnuxVzrgpICO6pSnmijZv6hjujuKkd1p9tb54bSm2GG5YKhYled9I3NJVH
         H7gCIe2LUC2qq7hBqTS3IP66vv9uxRkHBp+5cJchkSRSyrCuMUYUybvFAd4GrzILj4f+
         CeWUODTlu8WEDYpukYn15NnwHc7EGrJCt8IGKMQ19KB+dgOJuOLkhaAB22sB6wDSgCrH
         9w020YVrm84taWgUDQgtc0B4BXj/Jk9ZO1LCIkm4Oi+dTOXF57v2eMNqSHId4BlW6XvK
         6YyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=HTNhGxaumyEfFhC9Rh9YxptEn03qWU8vZ3Aojfr4I3Y=;
        b=GOIixw7qjkwe3R3/cP0szbg3TWQ/ZyQwA0t8dKtYGIumL8IK3FiKe1AZ254+eg33EY
         dK8ve7QQtKsj+fGemE0/GT5luFhwkVj0FPiDRNyrMQzfQyTZHYbktnJyta1int/JpI7a
         7Jp/h6Vksa4wzD9YJ8i17DH9xyVDJteeCUNqjivm20iYt3mtg5ewDTQdEjCJ/gH9Bvrm
         dXu4H4O2LFVpL42QvHN61VxrXOeaSMbvggaRHFUd+TOYeArPu7K0X32REyzGyAerS8Z9
         LI4J5GxikXutAa826FUbXaDKhvgr2XNDYeWY1ERciTaLO2VCwu1udtNIBj7EQM7bDyUy
         heTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=efJi1H69;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id 18si602495wmg.2.2021.01.09.11.15.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 11:15:40 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Sat, 09 Jan 2021 19:15:31 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210109191457.786517-1-alobakin@pm.me>
In-Reply-To: <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com>
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=efJi1H69;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Sat, 9 Jan 2021 09:50:44 -0800

> On Sat, Jan 9, 2021 at 9:11 AM Alexander Lobakin <alobakin@pm.me> wrote:
>>
>> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
>>
>> While testing MIPS with LLVM, I found a weird and very rare bug with
>> MIPS relocs that LLVM emits into kernel modules. It happens on both
>> 11.0.0 and latest git snapshot and applies, as I can see, only to
>> references to static symbols.
>>
>> When the kernel loads the module, it allocates a space for every
>> section and then manually apply the relocations relative to the
>> new address.
>>
>> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
>> It's static and referenced only in phy_register_driver(), where it's
>> used to fill callback pointer in a structure.
>>
>> The real function address after module loading is 0xc06c1444, that
>> is observed in its ELF st_value field.
>> There are two relocs related to this usage in phy_register_driver():
>>
>> R_MIPS_HI16 refers to 0x3c010000
>> R_MIPS_LO16 refers to 0x24339444
>>
>> The address of .text is 0xc06b8000. So the destination is calculated
>> as follows:
>>
>> 0x00000000 from hi16;
>> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
>> 0xc06b8000 from base.
>>
>> =3D 0xc06b1444. The value is lower than the real phy_probe() address
>> (0xc06c1444) by 0x10000 and is lower than the base address of
>> module's .text, so it's 100% incorrect.
>>
>> This results in:
>>
>> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
>> address c06b1444, epc =3D=3D c06b1444, ra =3D=3D 803f1090
>>
>> The correct instructions should be:
>>
>> R_MIPS_HI16 0x3c010001
>> R_MIPS_LO16 0x24339444
>>
>> so there'll be 0x00010000 from hi16.
>>
>> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
>> if the destination is lower than the base address, which should never
>> happen), and seems like I have only 3 such places in libphy.ko (and
>> one in nf_tables.ko).
>> I don't think it should be handled somehow in mentioned source code
>> as it would look rather ugly and may break kernels build with GNU
>> stack, which seems to not produce such bad codes.
>>
>> If I should report this to any other resources, please let me know.
>> I chose clang-built-linux and LKML as it may not happen with userland
>> (didn't tried to catch).
>
> Thanks for the report.  Sounds like we may indeed be producing an
> incorrect relocation.  This is only seen for big endian triples?

Unfortunately I don't have a LE board to play with, so can confirm
only Big Endian.

(BTW, if someone can say if it's possible for MIPS (and how if it is)
to launch a LE kernel from BE-booted preloader and U-Boot, that would
be super cool)

> Getting a way for us to deterministically reproduce would be a good
> first step.  Which config or configs beyond defconfig, and which
> relocations specifically are you observing this with?

I use `make 32r2_defconfig` which combines several configs from
arch/mips/configs:
 - generic_defconfig;
 - generic/32r2.config;
 - generic/eb.config.

Aside from that, I enable a bunch of my WIP drivers and the
Netfilter. On my setup, this bug is always present in libphy.ko,
so CONFIG_PHYLIB=3Dm (with all deps) should be enough.

The three failed relocs belongs to this part of code: [0]

llvm-readelf on them:

Relocation section '.rel.text' at offset 0xbf60 contains 2281 entries:=C2=
=AC
[...]
00005740  00029305 R_MIPS_HI16            00000000   .text
00005744  00029306 R_MIPS_LO16            00000000   .text
00005720  00029305 R_MIPS_HI16            00000000   .text
00005748  00029306 R_MIPS_LO16            00000000   .text
0000573c  00029305 R_MIPS_HI16            00000000   .text
0000574c  00029306 R_MIPS_LO16            00000000   .text

The first pair is the one from my first mail:
0x3c010000 <-- should be 0x3c010001 to work properly
0x24339444

I'm planning to hunt for more now, will let you know.

[0] https://elixir.bootlin.com/linux/v5.11-rc2/source/drivers/net/phy/phy_d=
evice.c#L2989

> Thanks,
> ~Nick Desaulniers

Thanks,
Al

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210109191457.786517-1-alobakin%40pm.me.
